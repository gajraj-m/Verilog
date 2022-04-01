`include "priority_encoder.v"
module q4_tb;

wire y1, y0;
reg d0, d1, d2, d3;

priority_encoder inst0(y1, y0, d3, d2, d1, d0);

initial begin

$monitor("T=%t | d3=%b | d2=%b | d1=%b | d0=%b | y1=%b | y0=%b", $time, d3, d2, d1, d0, y1, y0);

d0 = 1'b0; d1 = 1'b0; d2 = 1'b0; d3 = 1'b0;
#1 d0 = 1'b0; d1 = 1'b0; d2 = 1'b0; d3 = 1'b1;
#1 d0 = 1'b0; d1 = 1'b0; d2 = 1'b1; d3 = 1'b0;
#1 d0 = 1'b0; d1 = 1'b0; d2 = 1'b1; d3 = 1'b1;
#1 d0 = 1'b0; d1 = 1'b1; d2 = 1'b0; d3 = 1'b0;
#1 d0 = 1'b0; d1 = 1'b1; d2 = 1'b0; d3 = 1'b1;
#1 d0 = 1'b0; d1 = 1'b1; d2 = 1'b1; d3 = 1'b0;
#1 d0 = 1'b0; d1 = 1'b1; d2 = 1'b1; d3 = 1'b1;
#1 d0 = 1'b1; d1 = 1'b0; d2 = 1'b0; d3 = 1'b0;
#1 d0 = 1'b1; d1 = 1'b0; d2 = 1'b0; d3 = 1'b1;
#1 d0 = 1'b1; d1 = 1'b0; d2 = 1'b1; d3 = 1'b0;
#1 d0 = 1'b1; d1 = 1'b0; d2 = 1'b1; d3 = 1'b1;
#1 d0 = 1'b1; d1 = 1'b1; d2 = 1'b0; d3 = 1'b0;
#1 d0 = 1'b1; d1 = 1'b1; d2 = 1'b0; d3 = 1'b1;
#1 d0 = 1'b1; d1 = 1'b1; d2 = 1'b1; d3 = 1'b0;
#1 d0 = 1'b1; d1 = 1'b1; d2 = 1'b1; d3 = 1'b1;

end
endmodule
