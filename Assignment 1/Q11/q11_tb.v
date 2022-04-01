`include "mux4x1.v"
module q11_tb;

wire Q;
reg a, b, A, B, C, D;

mux4x1 inst0(Q, A, B, C, D, a, b);

initial begin

$monitor("T=%t | a=%b | b=%b | A=%b | B=%b | C=%b | D=%b | Q=%b", $time, a, b, A, B, C, D, Q);

A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0; a = 1'b0; b = 1'b0;
#1 A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b1; a = 1'b0; b = 1'b1;
#1 A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b0; a = 1'b1; b = 1'b0;
#1 A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b1; a = 1'b1; b = 1'b1;
#1 A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b0; a = 1'b0; b = 1'b0;
#1 A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b1; a = 1'b0; b = 1'b1;
#1 A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b0; a = 1'b1; b = 1'b0;
#1 A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b1; a = 1'b1; b = 1'b1;
#1 A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b0; a = 1'b0; b = 1'b0;
#1 A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b1; a = 1'b0; b = 1'b1;
#1 A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b0; a = 1'b1; b = 1'b0;
#1 A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b1; a = 1'b1; b = 1'b1;
#1 A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b0; a = 1'b0; b = 1'b0;
#1 A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b1; a = 1'b0; b = 1'b1;
#1 A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b0; a = 1'b1; b = 1'b0;
#1 A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b1; a = 1'b1; b = 1'b1;

end
endmodule
