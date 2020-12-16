
module comparador(clk,fil,col,memo);

input clk;
input [3:0] fil;
input [3:0] col;

output reg [4:0] memo;
reg [4:0]num; 
 

always @(posedge clk) begin

	
if (col == 4'b0001) begin

	case(fil)
		4'b1000: num=4'hA;
		4'b0100: num=4'hB;
		4'b0010: num=4'hC;
		4'b0001: num=4'hD;
		default: num= 5'h10;
	endcase
end

if (col == 4'b0010) begin

	case(fil)
		4'b1000: num=4'h3;
		4'b0100: num=4'h6;
		4'b0010: num=4'h9;
		4'b0001: num=4'hE; //#
		default: num=5'h10;
	endcase
end

if (col == 4'b0100) begin

	case(fil)
		4'b1000: num=4'h2;
		4'b0100: num=4'h5;
		4'b0010: num=4'h8;
		4'b0001: num=4'h0;
		default: num=5'h10;
	endcase
end

if (col == 4'b1000) begin

	case(fil)
		4'b1000: num=4'h1;
		4'b0100: num=4'h4;
		4'b0010: num=4'h7;
		4'b0001: num=4'hF; // *
		default: num=5'h10;
	endcase
	end
	
if(num != 5'h10)
begin
memo = num;
end
end

endmodule
