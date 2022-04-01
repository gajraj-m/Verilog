module counter(q, en, reset, clk);

output reg[2:0] q;
input en, clk, reset;

always @ (en, reset, posedge clk) begin

    case(en)
        0 : q = 0;
        1 : case(reset)
                1 : q = 0;
                0 : case(q)
                        3'b 000 : q = 3'b 001;
                        3'b 001 : q = 3'b 011;
                        3'b 011 : q = 3'b 101;
                        3'b 101 : q = 3'b 111;
                        3'b 111 : q = 3'b 010;
                        3'b 010 : q = 3'b 000;
                    endcase
            endcase
    endcase

end

endmodule