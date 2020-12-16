module barrido (clk, columna);

input  clk;
output reg [3:0]columna;


reg [1:0]count;


always @ (posedge clk)
	begin		
		 count =count+1;		 
		case(count)
			2'd0 : begin  columna = 4'b0001; end
			2'd1 : begin  columna = 4'b0010; end
			2'd2 : begin  columna = 4'b0100; end
			2'd3 : begin  columna = 4'b1000; end		
		endcase
	end 
endmodule 