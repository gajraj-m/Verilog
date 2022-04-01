
// This is a 4-bit RIPPLE CARRY ADDER


`include "adder_4_bit.v"

module q2_tb;

wire C_out, S3, S2, S1, S0;
reg  A3, A2, A1, A0, B3, B2, B1, B0;

adder_4_bit inst0(C_out, S3, S2, S1, S0, A3, A2, A1, A0, B3, B2, B1, B0);

initial begin

$monitor("T=%t | A3=%b | A2=%b | A1=%b | A0=%b  | B3=%b | B2=%b | B1=%b | B0=%b | C_out=%b | S3=%b | S2=%b | S1=%b | S0=%b", $time, A3, A2, A1, A0, B3, B2, B1, B0, C_out, S3, S2, S1, S0);

A0 = 1'b0; A1 = 1'b0; A2 = 1'b0; A3 = 1'b0; B0 = 1'b0; B1 = 1'b0; B2 = 1'b1; B3 = 1'b0;
#1 A0 = 1'b0; A1 = 1'b0; A2 = 1'b0; A3 = 1'b1; B0 = 1'b0; B1 = 1'b1; B2 = 1'b1; B3 = 1'b1;
#1 A0 = 1'b0; A1 = 1'b0; A2 = 1'b1; A3 = 1'b0; B0 = 1'b1; B1 = 1'b1; B2 = 1'b0; B3 = 1'b0;
#1 A0 = 1'b0; A1 = 1'b0; A2 = 1'b1; A3 = 1'b1; B0 = 1'b0; B1 = 1'b1; B2 = 1'b1; B3 = 1'b1;
#1 A0 = 1'b0; A1 = 1'b1; A2 = 1'b0; A3 = 1'b0; B0 = 1'b1; B1 = 1'b1; B2 = 1'b0; B3 = 1'b0;
#1 A0 = 1'b0; A1 = 1'b1; A2 = 1'b0; A3 = 1'b1; B0 = 1'b0; B1 = 1'b1; B2 = 1'b0; B3 = 1'b1;
#1 A0 = 1'b0; A1 = 1'b1; A2 = 1'b1; A3 = 1'b0; B0 = 1'b0; B1 = 1'b0; B2 = 1'b0; B3 = 1'b1;
#1 A0 = 1'b0; A1 = 1'b1; A2 = 1'b1; A3 = 1'b1; B0 = 1'b0; B1 = 1'b0; B2 = 1'b0; B3 = 1'b1;
#1 A0 = 1'b1; A1 = 1'b0; A2 = 1'b0; A3 = 1'b0; B0 = 1'b0; B1 = 1'b1; B2 = 1'b0; B3 = 1'b1;
#1 A0 = 1'b1; A1 = 1'b0; A2 = 1'b0; A3 = 1'b1; B0 = 1'b0; B1 = 1'b0; B2 = 1'b0; B3 = 1'b1;
#1 A0 = 1'b1; A1 = 1'b0; A2 = 1'b1; A3 = 1'b0; B0 = 1'b1; B1 = 1'b1; B2 = 1'b1; B3 = 1'b1;
#1 A0 = 1'b1; A1 = 1'b0; A2 = 1'b1; A3 = 1'b1; B0 = 1'b0; B1 = 1'b1; B2 = 1'b0; B3 = 1'b1;
#1 A0 = 1'b1; A1 = 1'b1; A2 = 1'b0; A3 = 1'b0; B0 = 1'b1; B1 = 1'b1; B2 = 1'b0; B3 = 1'b0;
#1 A0 = 1'b1; A1 = 1'b1; A2 = 1'b0; A3 = 1'b1; B0 = 1'b1; B1 = 1'b1; B2 = 1'b1; B3 = 1'b1;
#1 A0 = 1'b1; A1 = 1'b1; A2 = 1'b1; A3 = 1'b0; B0 = 1'b1; B1 = 1'b1; B2 = 1'b0; B3 = 1'b0;
#1 A0 = 1'b1; A1 = 1'b1; A2 = 1'b1; A3 = 1'b1; B0 = 1'b0; B1 = 1'b0; B2 = 1'b1; B3 = 1'b0;

end
endmodule
