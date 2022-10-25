module SPImaster 
(
	input wire clk, // clock
	input wire [7:0] data, // transmitted data

	output reg sck, // serial clock
	output wire mosi, // master output slave input
	output wire ss // slave select
);

enum int unsigned {IDLE, DELAY, DATA_R, DATA_W, DATA_LAST} state, next;

reg [7:0] shift; // shift register
reg [2:0] cntr; // counter for FSM


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

	state = next;
end


// finite state machine for master
always @(*)
begin	
	case (state)
		IDLE: 
		begin
			sck = 1'b0;
			ss = 1'b1;
			mosi = 1'b0;
			next = DELAY;
		end
		
		DELAY: 
		begin
			sck = 1'b0;
			ss = 1'b0;
			mosi = 1'b0;
			next = DATA_R;
		end
		
		DATA_R:
		begin 
			sck = 1'b1;
			ss = 1'b0;
			mosi = shift[7];
			next = (cntr == 7) ? DATA_LAST: DATA_W;
		end
		
		DATA_W:
		begin 
			sck = 1'b0;
			ss = 1'b0;
			mosi = shift[7];
			next = (cntr == 7) ? IDLE : DATA_R;
		end
		
		DATA_LAST:
		begin 
			sck = 1'b0;
			ss = 1'b0;
			mosi = shift[7];
			next = IDLE;
		end
	endcase
end

endmodule
