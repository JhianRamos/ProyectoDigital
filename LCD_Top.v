`timescale 1ns / 1ps
module LCD_Top(
                CLOCK_50,  //50 MZ
                 LCD_RW,   //LCD Read/Write Select, 0 = Write, 1 = Read
                 LCD_EN,   //LCD Enable
                 LCD_RS,   //LCD Command/Data Select, 0 = Command, 1 = Data
                 LCD_DATA, //LCD Data bus 8 bits
						mensaje
					  );


reg [8:0] Mostrar_10 = "H";
reg [8:0] Mostrar_11 = "O";
reg [8:0] Mostrar_12 = "L";
reg [8:0] Mostrar_13 = "A";
reg [8:0] Mostrar_14 = " ";
reg [8:0] Mostrar_15 = "M";
reg [8:0] Mostrar_16 = "U";
reg [8:0] Mostrar_17 = "N";
reg [8:0] Mostrar_18 = "D";
reg [8:0] Mostrar_19 = "O";
reg [8:0] Mostrar_110 = " ";
reg [8:0] Mostrar_111 = "L";
reg [8:0] Mostrar_112 = "I";
reg [8:0] Mostrar_113 = "N";
reg [8:0] Mostrar_114 = "E";
reg [8:0] Mostrar_115 = "1";
reg [8:0] Mostrar_20 = "P";
reg [8:0] Mostrar_21 = "R";
reg [8:0] Mostrar_22 = "U";
reg [8:0] Mostrar_23 = "E";
reg [8:0] Mostrar_24 = "B";
reg [8:0] Mostrar_25 = "A";
reg [8:0] Mostrar_26 = " ";
reg [8:0] Mostrar_27 = "L";
reg [8:0] Mostrar_28 = "I";
reg [8:0] Mostrar_29 = "N";
reg [8:0] Mostrar_210 = "E";
reg [8:0] Mostrar_211 = "A";
reg [8:0] Mostrar_212 = " ";
reg [8:0] Mostrar_213 = "2";
reg [8:0] Mostrar_214 = " ";
reg [8:0] Mostrar_215 = " ";               


input CLOCK_50;       //50 MHz
inout [7:0] LCD_DATA; //LCD Data bus 8 bits
input mensaje;
output LCD_RW;        //LCD Read/Write Select, 0 = Write, 1 = Read
output LCD_EN;        //LCD Enable
output LCD_RS;        //LCD Command/Data Select, 0 = Command, 1 = Data



wire DLY_RST;


Reset_Delay r0 ( .iCLK(CLOCK_50),.oRESET(DLY_RST)    );

always @ ( CLOCK_50)begin

case(mensaje)

	3'b000:begin
		Mostrar_10<=9'h120;//
      Mostrar_11<=9'h141;//A
      Mostrar_12<=9'h13A;//:
      Mostrar_13<=9'h149;//I
      Mostrar_14<=9'h16E;//n
      Mostrar_15<=9'h169;//i
      Mostrar_16<=9'h163;//c
      Mostrar_17<=9'h169;//i
      Mostrar_18<=9'h161;//a
      Mostrar_19<=9'h172;//r
      Mostrar_110<=9'h120;//
      Mostrar_111<=9'h120;//
      Mostrar_112<=9'h120;//
      Mostrar_113<=9'h120;//
      Mostrar_114<=9'h120;//
      Mostrar_115<=9'h120;//
      Mostrar_20<=9'h120;//
      Mostrar_21<=9'h142;//B
      Mostrar_22<=9'h13A;//:
      Mostrar_23<=9'h152;//R
      Mostrar_24<=9'h165;//e
      Mostrar_25<=9'h169;//i
      Mostrar_26<=9'h16E;//n
      Mostrar_27<=9'h169;//i
      Mostrar_28<=9'h163;//c
      Mostrar_29<=9'h169;//i
      Mostrar_210<=9'h161;//a
      Mostrar_211<=9'h172;//r
      Mostrar_212<=9'h120;//
      Mostrar_213<=9'h120;//
      Mostrar_214<=9'h120;//
      Mostrar_215<=9'h120;//
	   end

	3'b001:begin
		Mostrar_10<=9'h120;//
      Mostrar_11<=9'h147;//G
      Mostrar_12<=9'h161;//a
		Mostrar_13<=9'h174;//t
      Mostrar_14<=9'h16F;//o
      Mostrar_15<=9'h120;//
      Mostrar_16<=9'h131;//1
      Mostrar_17<=9'h120;//
      Mostrar_18<=9'h120;//
      Mostrar_19<=9'h150;//P
      Mostrar_110<=9'h165;//e
      Mostrar_111<=9'h173;//s
      Mostrar_112<=9'h16F;//0
      Mostrar_113<=9'h120;//
      Mostrar_114<=9'h120;//
      Mostrar_115<=9'h120;//
      Mostrar_20<=9'h120;//
      Mostrar_21<=9'h165;//e
      Mostrar_22<=9'h16E;//n
      Mostrar_23<=9'h120;//
      Mostrar_24<=9'h16B;//k
      Mostrar_25<=9'h167;//g
      Mostrar_26<=9'h13A;//:
      Mostrar_27<=9'h120;//
      Mostrar_28<=9'h120;//
      Mostrar_29<=9'h120;//
      Mostrar_210<=9'h120;//
      Mostrar_211<=9'h120;//
      Mostrar_212<=9'h120;//
      Mostrar_213<=9'h120;//
      Mostrar_214<=9'h120;//
      Mostrar_215<=9'h120;//
		end
		
	3'b010:begin
		Mostrar_10<=9'h120;//
      Mostrar_11<=9'h147;//G
      Mostrar_12<=9'h161;//a
		Mostrar_13<=9'h174;//t
      Mostrar_14<=9'h16F;//o
      Mostrar_15<=9'h120;//
      Mostrar_16<=9'h132;//2
      Mostrar_17<=9'h120;//
      Mostrar_18<=9'h120;//
      Mostrar_19<=9'h150;//P
      Mostrar_110<=9'h165;//e
      Mostrar_111<=9'h173;//s
      Mostrar_112<=9'h16F;//0
      Mostrar_113<=9'h120;//
      Mostrar_114<=9'h120;//
      Mostrar_115<=9'h120;//
      Mostrar_20<=9'h120;//
      Mostrar_21<=9'h165;//e
      Mostrar_22<=9'h16E;//n
      Mostrar_23<=9'h120;//
      Mostrar_24<=9'h16B;//k
      Mostrar_25<=9'h167;//g
      Mostrar_26<=9'h13A;//:
      Mostrar_27<=9'h120;//
      Mostrar_28<=9'h120;//
      Mostrar_29<=9'h120;//
      Mostrar_210<=9'h120;//
      Mostrar_211<=9'h120;//
      Mostrar_212<=9'h120;//
      Mostrar_213<=9'h120;//
      Mostrar_214<=9'h120;//
      Mostrar_215<=9'h120;//
	end
	
	3'b011:begin
		Mostrar_10<=9'h120;//
      Mostrar_11<=9'h145;//E
      Mostrar_12<=9'h173;//s
      Mostrar_13<=9'h170;//p
      Mostrar_14<=9'h165;//e
      Mostrar_15<=9'h172;//r
      Mostrar_16<=9'h161;//a
      Mostrar_17<=9'h16E;//n
      Mostrar_18<=9'h164;//d
      Mostrar_19<=9'h16F;//o
      Mostrar_110<=9'h120;//
      Mostrar_111<=9'h167;//g
      Mostrar_112<=9'h161;//a
      Mostrar_113<=9'h174;//t
      Mostrar_114<=9'h16F;//o
      Mostrar_115<=9'h120;//
      Mostrar_20<=9'h120;//
		Mostrar_21<=9'h142;//B
      Mostrar_22<=9'h13A;//:
      Mostrar_23<=9'h152;//R
      Mostrar_24<=9'h165;//e
      Mostrar_25<=9'h169;//i
      Mostrar_26<=9'h16E;//n
      Mostrar_27<=9'h169;//i
      Mostrar_28<=9'h163;//c
      Mostrar_29<=9'h169;//i
      Mostrar_210<=9'h161;//a
      Mostrar_211<=9'h172;//r
      Mostrar_212<=9'h120;//
      Mostrar_213<=9'h120;//
      Mostrar_214<=9'h120;//
      Mostrar_215<=9'h120;//
	end
	
	3'b100:begin
		Mostrar_10<=9'h120;//
      Mostrar_11<=9'h153;//S
      Mostrar_12<=9'h169;//i
      Mostrar_13<=9'h172;//r
      Mostrar_14<=9'h176;//v
      Mostrar_15<=9'h16C;//i
      Mostrar_16<=9'h165;//e
      Mostrar_17<=9'h16E;//n
      Mostrar_18<=9'h164;//d
      Mostrar_19<=9'h16F;//o
      Mostrar_110<=9'h120;//
      Mostrar_111<=9'h120;//
      Mostrar_112<=9'h120;//
      Mostrar_113<=9'h120;//
      Mostrar_114<=9'h120;//
      Mostrar_115<=9'h120;//
		
      Mostrar_20<=9'h120;//
      Mostrar_21<=9'h163;//C
      Mostrar_22<=9'h16F;//o
      Mostrar_23<=9'h16D;//m
      Mostrar_24<=9'h169;//i
      Mostrar_25<=9'h164;//d
      Mostrar_26<=9'h161;//a
      Mostrar_27<=9'h120;//
      Mostrar_28<=9'h120;//
      Mostrar_29<=9'h120;//
      Mostrar_210<=9'h120;//
      Mostrar_211<=9'h120;//
      Mostrar_212<=9'h120;//
      Mostrar_213<=9'h120;//
      Mostrar_214<=9'h120;//
      Mostrar_215<=9'h120;//
	end
	
	3'b101:begin
		Mostrar_10<=9'h120;//
      Mostrar_11<=9'h150;//P
      Mostrar_12<=9'h16C;//l
      Mostrar_13<=9'h161;//a
      Mostrar_14<=9'h174;//t
      Mostrar_15<=9'h16F;//o
      Mostrar_16<=9'h120;//
      Mostrar_17<=9'h14C;//L
      Mostrar_18<=9'h16C;//l
      Mostrar_19<=9'h165;//e
      Mostrar_110<=9'h16E;//n
      Mostrar_111<=9'h16F;//o
      Mostrar_112<=9'h120;//
      Mostrar_113<=9'h120;//
      Mostrar_114<=9'h120;//
      Mostrar_115<=9'h120;//
		
      Mostrar_20<=9'h120;//
      Mostrar_21<=9'h120;//
      Mostrar_22<=9'h120;//
      Mostrar_23<=9'h120;//
      Mostrar_24<=9'h120;//
      Mostrar_25<=9'h120;//
      Mostrar_26<=9'h120;//
      Mostrar_27<=9'h120;//
      Mostrar_28<=9'h120;//
      Mostrar_29<=9'h120;//
      Mostrar_210<=9'h120;//
      Mostrar_211<=9'h120;//
      Mostrar_212<=9'h120;//
      Mostrar_213<=9'h120;//
      Mostrar_214<=9'h120;//
      Mostrar_215<=9'h120;//
	end

endcase

end

LCD_TEST u5 (//Host Side
         .iCLK(CLOCK_50),
         .iRST_N(DLY_RST),
             //    LCD Side
         .LCD_DATA(LCD_DATA),
         .LCD_RW(LCD_RW),
         .LCD_EN(LCD_EN),
         .LCD_RS(LCD_RS),   
         .Mostrar_10(Mostrar_10),
		   .Mostrar_11(Mostrar_11),
			.Mostrar_12(Mostrar_12),
			.Mostrar_13(Mostrar_13),
			.Mostrar_14(Mostrar_14),
			.Mostrar_15(Mostrar_15),
			.Mostrar_16(Mostrar_16),
			.Mostrar_17(Mostrar_17),
			.Mostrar_18(Mostrar_18),
			.Mostrar_19(Mostrar_19),
			.Mostrar_110(Mostrar_110),
			.Mostrar_111(Mostrar_111),
			.Mostrar_112(Mostrar_112),
			.Mostrar_113(Mostrar_113),
			.Mostrar_114(Mostrar_114),
			.Mostrar_115(Mostrar_115),
			.Mostrar_20(Mostrar_20),
			.Mostrar_21(Mostrar_21),
			.Mostrar_22(Mostrar_22),
			.Mostrar_23(Mostrar_23),
			.Mostrar_24(Mostrar_24),
			.Mostrar_25(Mostrar_25),
			.Mostrar_26(Mostrar_26),
			.Mostrar_27(Mostrar_27),
			.Mostrar_28(Mostrar_28),
			.Mostrar_29(Mostrar_29),
			.Mostrar_210(Mostrar_210),
			.Mostrar_211(Mostrar_211),
			.Mostrar_212(Mostrar_212),
			.Mostrar_213(Mostrar_213),
			.Mostrar_214(Mostrar_214),
			.Mostrar_215(Mostrar_215)
             );

endmodule


