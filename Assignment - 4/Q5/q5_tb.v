`include "decoder2_4.v"
module q5_tb;

wire d0, d1, d2, d3;
reg  a, b;

decoder2_4 inst0(a, b, d0, d1, d2, d3);

initial begin

$monitor("T=%t | A=%b | B=%b | D0=%b | D1=%b | D2=%b | D4=%b", $time, a, b, d0, d1, d2, d3);

a = 1'b0; b = 1'b0;
#1 a = 1'b0; b = 1'b1;
#1 a = 1'b1; b = 1'b0;
#1 a = 1'b1; b = 1'b1;

end
endmodule
