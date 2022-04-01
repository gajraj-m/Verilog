`include "Full_adder_gp.v"
module CLA_4bit(output C_out, S3, S2, S1, S0, input A3, A2, A1, A0, B3, B2, B1, B0, c0);

    wire p0, p1, g0, g1, p2, g2, p3, g3, c3, c2, c1;

    Full_adder_gp fa0(g0, p0, A0, B0);
    Full_adder_gp fa1(g1, p1, A1, B1);
    Full_adder_gp fa2(g2, p2, A2, B2);
    Full_adder_gp fa3(g3, p3, A3, B3);

// Carry part
    assign c1 = g0 | (p0 & c0);
    assign c2 = g1 | (p1 & g0) | (p1 & p0 & c0);
    assign c3 = g2 | (p2 & g1) | (p2 & p1 & g0) | (p2 & p1 & p0 & c0);
    assign C_out = g3 | (p3 & g2) | (p3 & p2 & g1) | (p3 & p2 & p1 & g0) | (p3 & p2 & p1 & p0 & c0);

// Sum part
    xor(S0, p0, c0);
    xor(S1, p1, c1);
    xor(S2, p2, c2);
    xor(S3, p3, c3);

endmodule