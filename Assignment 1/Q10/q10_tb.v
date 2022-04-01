`include "decoder2_4.v"
module q10_tb;

wire d3, d2, d1, d0;
reg i0, i1;

decoder2_4 inst0(d3, d2, d1, d0, i1, i0);

initial begin

$monitor("T=%t | i1=%b | i0=%b | d3=%b | d2=%b | d1=%b | d0=%b", $time, i1, i0, d3, d2, d1, d0);

i0 = 1'b0; i1 = 1'b0;
#1 i0 = 1'b0; i1 = 1'b1;
#1 i0 = 1'b1; i1 = 1'b0;
#1 i0 = 1'b1; i1 = 1'b1;

end
endmodule
