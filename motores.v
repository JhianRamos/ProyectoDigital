module motores(clk,mot, mot1,mot2);

input clk;
input [1:0]mot;
output reg mot1;
output reg mot2;

reg [27:0]cont;
reg [27:0]cont2;

initial begin cont=0; cont2=0; end

always @(posedge clk) begin

if(mot[0])begin
if (cont<25000000) begin cont=cont+1; mot1=1; end
end
else begin mot1=0; cont=0; end

if(mot[1])begin
if (cont2<25000000) begin cont2=cont2+1; mot2=1; end
end
else begin cont2=0; mot2=0; end
end 

endmodule
