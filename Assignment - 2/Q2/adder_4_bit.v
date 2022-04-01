
// This is a 4-bit RIPPLE CARRY ADDER


`include "half_adder.v"
module adder_4_bit(output C_out, S3, S2, S1, S0, input A3, A2, A1, A0, B3, B2, B1, B0);

    // all lower case letters are temporary storage variable names
    wire c0, s1, c1, s2, c2, s3, c3, c4, c5, c6, in5, in6;

    half_adder HA0(S0, c0, A0, B0);
    half_adder HA1(s1, c1, A1, B1);
    half_adder HA2(s2, c2, A2, B2);
    half_adder HA3(s3, c3, A3, B3);

    half_adder HA4(S1, c4, s1, c0);
    or(in5, c1, c4);

    half_adder HA5(S2, c5, s2, in5);
    or(in6, c2, c5);

    half_adder HA6(S3, c6, s3, in6);
    or(C_out, c3, c6);

endmodule