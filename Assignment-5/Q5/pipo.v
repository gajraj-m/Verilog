module pipo(out, in, clk, reset); //positive edge triggered PIPO register
input[3:0] in;
input clk, reset;
output reg[3:0] out;

    always @(posedge clk) begin
        if(reset) out = 4'b 0000;
        else out = in;
    end
endmodule