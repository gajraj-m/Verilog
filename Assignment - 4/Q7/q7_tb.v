`include "q7.v"
module q7_tb;

wire y;
reg a, b, c;

q7 inst0(y, a, b, c);

initial begin

$monitor("T=%t | c=%b | b=%b | a=%b | y=%b", $time, a, b, c, y);

c = 1'b0; b = 1'b0; a = 1'b0;
#1 c = 1'b0; b = 1'b0; a = 1'b1;
#1 c = 1'b0; b = 1'b1; a = 1'b0;
#1 c = 1'b0; b = 1'b1; a = 1'b1;
#1 c = 1'b1; b = 1'b0; a = 1'b0;
#1 c = 1'b1; b = 1'b0; a = 1'b1;
#1 c = 1'b1; b = 1'b1; a = 1'b0;
#1 c = 1'b1; b = 1'b1; a = 1'b1;

end
endmodule
