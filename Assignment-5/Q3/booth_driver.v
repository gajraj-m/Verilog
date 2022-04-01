`include "booth.v"
module booth_driver(input[3:0] M, input[3:0] Q, output[7:0] Z);

wire[3:0] A_out1, A_out2, A_out3, A_out4;
wire[4:0] Q_out1, Q_out2, Q_out3, Q_out4;

booth b0(.A_in(4'b0000), .M(M), .Q_in({Q, 1'b0}), .A_out(A_out1), .Q_out(Q_out1));
booth b1(A_out1, M, Q_out1, A_out2, Q_out2);
booth b2(A_out2, M, Q_out2, A_out3, Q_out3);
booth b3(A_out3, M, Q_out3, A_out4, Q_out4);

assign Z = {A_out4, Q_out4[4:1]};

endmodule