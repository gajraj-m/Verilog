module T_flipflop(output reg q, input t, clk, clr);

    always @ (posedge clk) begin
        if(clr) q = 0;
        else begin
        if(t)  q = ~q;
        end
    end
endmodule