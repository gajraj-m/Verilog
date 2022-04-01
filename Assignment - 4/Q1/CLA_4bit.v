`include "Full_Adder.v"
module CLA_4bit(output C_out, S3, S2, S1, S0, input A3, A2, A1, A0, B3, B2, B1, B0, c0);

    wire p0, p1, g0, g1, p2, g2, p3, g3, c3, c2, c1;

    Full_Adder fa0(g0, p0, A0, B0);
    Full_Adder fa1(g1, p1, A1, B1);
    Full_Adder fa2(g2, p2, A2, B2);
    Full_Adder fa3(g3, p3, A3, B3);

// Carry part
    assign c1 = g0 | (p0 & c0);
    assign c2 = g1 | (p1 & g0) | (p1 & p0 & c0);
    assign c3 = g2 | (p2 & g1) | (p2 & p1 & g0) | (p2 & p1 & p0 & c0);
    assign C_out = g3 | (p3 & g2) | (p3 & p2 & g1) | (p3 & p2 & p1 & g0) | (p3 & p2 & p1 & p0 & c0);

// Sum part
    assign S0 = p0 ^ c0;
    assign S1 = p1 ^ c1;
    assign S2 = p2 ^ c2;
    assign S3 = p3 ^ c3;

endmodule