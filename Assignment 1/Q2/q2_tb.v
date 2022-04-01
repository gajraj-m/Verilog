`include "q2_gate.v"
module q2_tb;

wire Q;
reg a, b, c;

q2_gate inst0(Q, a, b, c);

initial begin

$monitor("T=%t | a=%b | b=%b | c=%b | Q=%b", $time, a, b, c, Q);

a = 1'b0; b = 1'b0; c = 1'b0;
#1 a = 1'b0; b = 1'b0; c = 1'b1;
#1 a = 1'b0; b = 1'b1; c = 1'b0;
#1 a = 1'b0; b = 1'b1; c = 1'b1;
#1 a = 1'b1; b = 1'b0; c = 1'b0;
#1 a = 1'b1; b = 1'b0; c = 1'b1;
#1 a = 1'b1; b = 1'b1; c = 1'b0;
#1 a = 1'b1; b = 1'b1; c = 1'b1;

end
endmodule
