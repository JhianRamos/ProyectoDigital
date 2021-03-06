module MaquinadeEstados(clk,mot,sens,msg,num,rfid);

input clk;
input [1:0]sens;
input [4:0]num;
input [1:0]rfid;

output reg[1:0]mot;
output reg[3:0]msg;

reg [2:0]state;
reg [3:0]peso1;
reg [3:0]peso2;

initial begin state=3'b000; end

always@(posedge clk) begin

case(state)
	
	3'b000: begin
		msg=3'b000;
		mot=0;
		if (num==4'hA)begin state=3'b001;end
	end
	
	3'b001: begin 
		msg=3'b001;
		mot=0;
		if (num == 4'hB) begin state=3'b000; end
		else if (num != 4'hA)begin
		peso1=num;
		state=3'b010;
		end
		end
		
	3'b010: begin
		msg=3'b010;
		mot=0;
		if (num == 4'hB) begin state=3'b000; end
		else if (num != peso1)begin
		peso2=num;
		state=3'b011;	
		end
		end
		
	3'b011: begin
		if (num == 4'hB) begin state=3'b000; end
		msg=3'b011;
		mot=0;
		if(rfid==2'b01)begin
		state=3'b100;
		end
		else if (rfid==2'b10) begin state=3'b101; end
		end
		
	3'b100: begin 
		if (sens==2'b11) begin msg= 3'b100; mot=2'b01; state = 3'b011; end
		if (sens==2'b10) begin msg= 3'b100; mot=2'b01; state = 3'b011; end
		if (sens==2'b00) begin msg=3'b101; state=3'b011; end
	   if (sens==2'b01) begin msg=3'b101; state=3'b011; end
		end
		
	3'b101: begin 
		if (sens==2'b11||sens==2'b01) begin msg= 3'b100; mot=2'b10; state = 3'b011; end
		else if (sens==2'b00||sens==2'b10) begin msg=3'b101; state=3'b011; end
		end
	endcase
	end


	
endmodule

