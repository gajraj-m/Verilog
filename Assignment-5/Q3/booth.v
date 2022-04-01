module booth(A_in, M, Q_in, A_out, Q_out);

    input[3:0] A_in, M;
    input[4:0] Q_in;
    output reg[3:0] A_out;
    output reg[4:0] Q_out;

wire[3:0] A_sum = A_in + M;
wire[3:0] A_diff = A_in - M; // adds 2's complement to subtract

always @ (A_in, M, Q_in, A_sum, A_diff) begin
  case(Q_in[1:0])
   
    2'b01 : begin // 0 1 means add
                A_out = {A_sum[3], A_sum[3:1]};
                Q_out = {A_sum[0], Q_in[4:1]};
            end
    2'b10 : begin // 1 0 means subtract
                A_out = {A_diff[3], A_diff[3:1]};
                Q_out = {A_diff[0], Q_in[4:1]};
            end
    default : begin // 00 or 11 case simply shift
                A_out = {A_in[3], A_in[3:1]};
                Q_out = {A_in[0], Q_in[4:1]};
              end
  endcase
end
endmodule