module keyboard (clk,filas,columnas, num);

input clk;
input  [3:0]filas;
output [3:0]columnas; 
output [4:0]num;

wire clk_1;

divfrec div(.clk(clk), .clk_1hz(clk_1));
barrido bar(.clk(clk_1), .columna(columnas));
comparador comp (.clk(clk_1),.fil(filas),.col(columnas),.memo(num));

endmodule 