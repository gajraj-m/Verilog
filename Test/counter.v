`include "T_flipflop.v"
module counter(q, clk, clr);

    output wire [3:0] q;
    input clk, clr;
    T_flipflop t0(q[0], q[3], clk, clr);
    T_flipflop t1(q[1], q[2], clk, clr);
    T_flipflop t2(q[2], q[2], clk, clr);
    T_flipflop t3(q[3], ~q[3] | ~q[0], clk, clr);

endmodule

