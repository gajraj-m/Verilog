module t_ff(input t, clk,reset, output q, qbar);
reg q=0, qbar=1; 

always @ (posedge clk) begin
        if (reset)
               q = 0;
        else begin 
        if(t)
            q = ~q;                
        end
        qbar = ~q;
    end 
endmodule