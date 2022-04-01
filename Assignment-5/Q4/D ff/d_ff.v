module d_ff(d, clk, reset, q, qbar);

input d, clk, reset;
output reg q=0, qbar = 1;

always @ (posedge clk) begin

    if(reset == 1) q = 0;
    else q = d;
    
    qbar = ~q;
end
endmodule