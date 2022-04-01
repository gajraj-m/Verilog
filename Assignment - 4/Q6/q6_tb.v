`include "MUX4x1.v"
module q3_tb;

wire Y;
reg a, b, c, d, s0, s1;

MUX4x1 inst0(Y, a, b, c, d, s0, s1);

initial begin

$monitor("T=%t | a=%b | b=%b | c=%b | d=%b | s0=%b | s1=%b | Y=%b", $time, a, b, c, d, s0, s1, Y);

a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b1; s0 = 1'b0; s1 = 1'b1;
#1 a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b0; s0 = 1'b0; s1 = 1'b1;
#1 a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b0; s0 = 1'b1; s1 = 1'b0;
#1 a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b1; s0 = 1'b1; s1 = 1'b1;
#1 a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b0; s0 = 1'b0; s1 = 1'b0;
#1 a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0; s0 = 1'b0; s1 = 1'b1;
#1 a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b0; s0 = 1'b0; s1 = 1'b1;
#1 a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b1; s0 = 1'b1; s1 = 1'b0;
#1 a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b0; s0 = 1'b1; s1 = 1'b0;
#1 a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0; s0 = 1'b1; s1 = 1'b1;
#1 a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b1; s0 = 1'b0; s1 = 1'b1;

end
endmodule
