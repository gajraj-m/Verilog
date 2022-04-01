`include "MUX2x1.v"

module MUX4x1(output Y, input a, b, c, d, s0, s1);
    wire out_ab, out_cd;
    MUX2x1 mux_ab(out_ab, a, b, s0);
    MUX2x1 mux_cd(out_cd, c, d, s0);

    MUX2x1 mux_y(Y, out_ab, out_cd, s1);

endmodule