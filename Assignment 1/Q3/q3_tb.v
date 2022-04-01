`include "q3_gate.v"
module q3_tb;

wire F;
reg a, b, c, d;

q3_gate inst0(F, a, b, c, d);

initial begin

$monitor("T=%t | a=%b | b=%b | c=%b | d=%b | F=%b", $time, a, b, c, d, F);

a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0;
#1 a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b1;
#1 a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b0;
#1 a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b1;
#1 a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b0;
#1 a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b1;
#1 a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b0;
#1 a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b1;
#1 a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b0;
#1 a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b1;
#1 a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0;
#1 a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b1;
#1 a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b0;
#1 a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b1;
#1 a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b0;
#1 a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b1;

end
endmodule
