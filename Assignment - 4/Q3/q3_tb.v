`include "Full_sub_3bit.v"
module q1_tb;

wire D0, D1, D2;
reg  A2, A1, A0, B2, B1, B0;

Full_sub_3bit inst0(D0, D1, D2, A0, A1, A2, B0, B1, B2);

initial begin

$monitor("T=%t | A2=%b | A1=%b | A0=%b  | B2=%b | B1=%b | B0=%b | D2=%b | D1=%b | D0=%b", $time, A2, A1, A0, B2, B1, B0, D2, D1, D0);

A0 = 1'b0; A1 = 1'b0; A2 = 1'b0; B0 = 1'b0; B1 = 1'b0; B2 = 1'b1;
#1 A0 = 1'b0; A1 = 1'b0; A2 = 1'b0; B0 = 1'b0; B1 = 1'b1; B2 = 1'b1;
#1 A0 = 1'b0; A1 = 1'b0; A2 = 1'b1; B0 = 1'b1; B1 = 1'b1; B2 = 1'b0;
#1 A0 = 1'b0; A1 = 1'b0; A2 = 1'b1; B0 = 1'b0; B1 = 1'b1; B2 = 1'b1;
#1 A0 = 1'b0; A1 = 1'b1; A2 = 1'b0; B0 = 1'b1; B1 = 1'b1; B2 = 1'b0;
#1 A0 = 1'b0; A1 = 1'b1; A2 = 1'b0; B0 = 1'b0; B1 = 1'b1; B2 = 1'b0;
#1 A0 = 1'b0; A1 = 1'b1; A2 = 1'b1; B0 = 1'b0; B1 = 1'b0; B2 = 1'b0;
#1 A0 = 1'b0; A1 = 1'b1; A2 = 1'b1; B0 = 1'b0; B1 = 1'b0; B2 = 1'b0;
#1 A0 = 1'b1; A1 = 1'b0; A2 = 1'b0; B0 = 1'b0; B1 = 1'b1; B2 = 1'b0;
#1 A0 = 1'b1; A1 = 1'b0; A2 = 1'b0; B0 = 1'b0; B1 = 1'b0; B2 = 1'b0;
#1 A0 = 1'b1; A1 = 1'b0; A2 = 1'b1; B0 = 1'b1; B1 = 1'b1; B2 = 1'b1;
#1 A0 = 1'b1; A1 = 1'b0; A2 = 1'b1; B0 = 1'b0; B1 = 1'b1; B2 = 1'b0;
#1 A0 = 1'b1; A1 = 1'b1; A2 = 1'b0; B0 = 1'b1; B1 = 1'b1; B2 = 1'b0;
#1 A0 = 1'b1; A1 = 1'b1; A2 = 1'b0; B0 = 1'b1; B1 = 1'b1; B2 = 1'b1;
#1 A0 = 1'b1; A1 = 1'b1; A2 = 1'b1; B0 = 1'b1; B1 = 1'b1; B2 = 1'b0;
#1 A0 = 1'b1; A1 = 1'b1; A2 = 1'b1; B0 = 1'b0; B1 = 1'b0; B2 = 1'b1;

end
endmodule
