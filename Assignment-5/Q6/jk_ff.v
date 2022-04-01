module jk_ff(j, k, clk, clr, q, qbar);

input j, k, clk, clr;
output reg q=0, qbar=1;

always @ (posedge clk) begin

    case(clr)
        1 : q = 0;
        0 : case({j,k})
            2'b 00 : q = q;
            2'b 01 : q = 1'b 0;
            2'b 10 : q = 1'b 1;
            2'b 11 : q = ~q;
            default : q = 1'b x;
            endcase
    endcase
    qbar = ~q;
end
endmodule