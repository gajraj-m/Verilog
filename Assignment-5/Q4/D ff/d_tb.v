`include "d_ff.v"

module d_tb;
    reg d, clk, reset;
    wire q, qbar;

    d_ff inst0(d, clk, reset, q, qbar);

   
initial begin
$monitor("T=%t | CLK = %b | D = %b | reset = %b | Q = %b | QBAR = %b", $time, clk, d, reset, q, qbar);
$dumpfile("d_dump.vcd");
$dumpvars(0, d_tb);
end 

    initial begin
        reset = 1; d = 1'b1; clk = 0;
        #1 clk = 1;
        #1 clk = 0; d = 1'b0;
        #1 clk = 1;
        #1 reset = 0; clk = 0;
        #1 clk = 1; d = 1'b1;
        #1 clk = 0; d = 1'b0;
        #1 clk = 1;
        #1 clk = 0; d = 1'b1;
        #1 clk = 1;
    end
endmodule