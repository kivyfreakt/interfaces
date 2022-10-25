module SPImaster
(
	input wire clk, // clock
	input wire [7:0] data, // transmitted data

	output reg sck, // serial clock
	output wire mosi, // master output slave input
	output wire ss // slave select
);

enum reg[1:0] {IDLE, DATA_R, DATA_W, DATA_LAST} state, next; // current and next states for FSM

reg [7:0] shift; // shift register
reg [2:0] cntr; // counter for num of writed data


// shift reg realisation
always @(posedge clk)
begin
	if (state == DATA_W)
		begin
			shift = {shift[6:0], 1'b0};
			cntr++;
		end
	else if (state == IDLE)
		begin
			shift = data;
			cntr = '0;	
		end
	else
		begin
			shift = shift;
			cntr = cntr;
		end

	state = next;
end


// FSM next states block and output block
always @(state, shift)
begin	
	case (state)
		IDLE: 
		begin
			sck = 1'b0;
			mosi = 1'b0;
			ss = 1'b1;
			next = DATA_R;
		end
		
		DATA_R:
		begin 
			sck = 1'b1;
			mosi = shift[7];
			ss = 1'b0;
			next = (cntr == 7) ? DATA_LAST: DATA_W;
		end
		
		DATA_W:
		begin 
			sck = 1'b0;
			mosi = shift[7];
			ss = 1'b0;
			next = (cntr == 7) ? IDLE : DATA_R;
		end
		
		DATA_LAST:
		begin 
			sck = 1'b0;
			mosi = shift[7];
			ss = 1'b0;
			next = IDLE;
		end
	endcase
end

endmodule
