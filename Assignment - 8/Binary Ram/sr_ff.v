module sr_ff(s, r, clk, q);

input s,r,clk;
output reg q=0;

always @ (posedge clk) begin

    case({s,r})
        2'b 00 : q = q;
        2'b 01 : q = 1'b 0;
        2'b 10 : q = 1'b 1;
        default : q = 1'b x;
    endcase
end
endmodule