module divfrec(clk, clk_1hz);

input clk;
output reg clk_1hz;

reg [27:0]counter;

initial begin
clk_1hz=0;
end 



always @(posedge clk)
begin
	if(counter < 50000)
		begin
			counter=counter+1;
		end
	else
		begin
			clk_1hz = !clk_1hz;
			counter = 0;
		end
end
endmodule
