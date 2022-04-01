// The entire  NOR gates circuit can be simplified to this one

module q5_tb;

wire f, qr, pqr;
reg P, Q, R;

or(qr, Q, R);
or(pqr, P, Q, R);
nand(f, qr, pqr);

initial begin

$monitor("T=%t | P=%b | Q=%b | R=%b | f=%b", $time, P, Q, R, f);

P = 1'b0; Q = 1'b0; R = 1'b0;
#1 P = 1'b0; Q = 1'b0; R = 1'b1;
#1 P = 1'b0; Q = 1'b1; R = 1'b0;
#1 P = 1'b0; Q = 1'b1; R = 1'b1;
#1 P = 1'b1; Q = 1'b0; R = 1'b0;
#1 P = 1'b1; Q = 1'b0; R = 1'b1;
#1 P = 1'b1; Q = 1'b1; R = 1'b0;
#1 P = 1'b1; Q = 1'b1; R = 1'b1;

end
endmodule
