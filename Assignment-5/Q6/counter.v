`include "jk_ff.v"
module counter(q, j, k, clk, clr);
output wire[2:0] q;
input j, k, clk, clr;
wire qb;

jk_ff jk0(j, k, clk, clr, q[0], qb);
jk_ff jk1(q[0], q[0], clk, clr, q[1], qb);
jk_ff jk2(q[0]&q[1], q[0]&q[1], clk, clr, q[2], qb);


endmodule