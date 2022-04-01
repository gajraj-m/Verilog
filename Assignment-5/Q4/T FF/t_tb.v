`include "t_ff.v"

module t_tb;
    reg t, clk, reset;
    wire q, qbar;

    t_ff inst0(t, clk, reset, q, qbar);

   
initial begin
$monitor("T=%t | CLK = %b | T = %b | reset = %b | Q = %b | QBAR = %b", $time, clk, t, reset, q, qbar);
$dumpfile("t_dump.vcd");
$dumpvars();
end 

    initial begin
        reset = 1; t = 1'b1; clk = 0;
        #1 clk = 1;
        #1 clk = 0; t = 1'b0;
        #1 clk = 1;
        #1 reset = 0; clk = 0;
        #1 clk = 1; t = 1'b1;
        #1 clk = 0; t = 1'b0;
        #1 clk = 1;
        #1 clk = 0; t = 1'b1;
        #1 clk = 1;
    end
endmodule