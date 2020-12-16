module Sensores(obst,obst2,sens);

input obst;
input obst2;
output reg [1:0] sens;

always @(*) begin 
	
	sens[0]=obst;
	sens[1]=obst2;
		
	end
	
endmodule
