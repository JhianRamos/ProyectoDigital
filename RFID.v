module RFID(RxData,rfid, Data);

input [7:0]RxData;
output reg[1:0] rfid;
output reg [7:0]Data;

always@(*)begin
Data=RxData;
if (RxData[3:0]==4'b0001) begin rfid=2'b10; end
else if (RxData[3:0]==4'b0010) begin rfid=2'b01; end
else begin rfid=0; end
end
endmodule
