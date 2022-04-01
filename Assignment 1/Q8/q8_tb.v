
// The given circuit in q8 can be reduced to (a + b' + c')(a + b' + c)(a + b + c')

`include "gate.v"
module q8_tb;

wire y;
reg a, b, c;

gate inst0(y, a, b, c);

initial begin

$monitor("T=%t | a=%b | b=%b | c=%b | y=%b", $time, a, b, c, y);

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
