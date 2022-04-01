module T_flipflop(output reg q, input t, clk, clr);

    always @ (posedge clk)
    if(clr == 1'b1) begin
        q <= 1'b0;
    end

    else if(t == 1'b0) begin
        q <= q;
    end
    else begin
        q <= ~q;
    end

endmodule