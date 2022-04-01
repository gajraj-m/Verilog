`include "xor_gate.v"
module q1_tb;

wire out_xy, out_zp, out;
reg x, y, z, p;

xor_gate gate1(out_xy, x, y);
xor_gate gate2(out_zp, z, p);
xor_gate gate3(out, out_xy, out_zp);

initial begin

$monitor("T=%t | x=%b | y=%b | z=%b | p=%b | C=%b", $time, x, y, z, p, out);

x = 1'b0; y = 1'b0; z = 1'b0; p = 1'b0;
#1 x = 1'b0; y = 1'b0; z = 1'b0; p = 1'b1;
#1 x = 1'b0; y = 1'b0; z = 1'b1; p = 1'b0;
#1 x = 1'b0; y = 1'b0; z = 1'b1; p = 1'b1;
#1 x = 1'b0; y = 1'b1; z = 1'b0; p = 1'b0;
#1 x = 1'b0; y = 1'b1; z = 1'b0; p = 1'b1;
#1 x = 1'b0; y = 1'b1; z = 1'b1; p = 1'b0;
#1 x = 1'b0; y = 1'b1; z = 1'b1; p = 1'b1;
#1 x = 1'b1; y = 1'b0; z = 1'b0; p = 1'b0;
#1 x = 1'b1; y = 1'b0; z = 1'b0; p = 1'b1;
#1 x = 1'b1; y = 1'b0; z = 1'b1; p = 1'b0;
#1 x = 1'b1; y = 1'b0; z = 1'b1; p = 1'b1;
#1 x = 1'b1; y = 1'b1; z = 1'b0; p = 1'b0;
#1 x = 1'b1; y = 1'b1; z = 1'b0; p = 1'b1;
#1 x = 1'b1; y = 1'b1; z = 1'b1; p = 1'b0;
#1 x = 1'b1; y = 1'b1; z = 1'b1; p = 1'b1;

end
endmodule
