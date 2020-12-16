module BCDA7SEG(num, sseg);

input [4:0] num;

output reg [6:0] sseg;

always @(*)begin 
	case(num)
			4'd0: sseg=7'b0000001;
			4'd1: sseg=7'b1001111;
			4'd2: sseg=7'b0010010;
			4'd3: sseg=7'b0000110;
			4'd4: sseg=7'b1001100;
			4'd5: sseg=7'b0100100;
			4'd6: sseg=7'b0100000;
			4'd7: sseg=7'b0001111;
			4'd8: sseg=7'b0000000;
			4'd9: sseg=7'b0000100;
			4'ha: sseg=7'b0001000;
			4'hb: sseg=7'b1100000;
			4'hc: sseg=7'b0110001;
			4'hd: sseg=7'b1000010;
			4'he: sseg=7'b0110000;
			4'hf: sseg=7'b0111000;
			5'h10: sseg=7'b1111111;
		
	default: 
		sseg = 7'b1111111;
	endcase 
end
endmodule 