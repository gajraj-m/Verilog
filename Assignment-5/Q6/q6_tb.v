`include "counter.v"
module q6_tb;

    reg j = 1, k = 1, clk, reset;
    wire[2:0] q;

    counter inst0(q, j, k, clk, reset);

    initial begin
    $monitor("T=%t | CLK=%b | reset=%b | Q=%b", $time, clk, reset, q);
    $dumpfile("q6_dump.vcd");
    $dumpvars(0, q6_tb);
    end

initial begin
        reset = 0; clk = 0;
        #1 clk = 1;
        #1 clk = 0;
        #1 clk = 1;
        #1 clk = 0; reset = 1;
        #1 clk = 1;
        #1 clk = 0;
        #1 clk = 1;
        #1 clk = 0; reset = 0;
        #1 clk = 1;
        #1 clk = 0;
        #1 clk = 1;
        #1 clk = 0;
        #1 clk = 1;
        #1 clk = 0;
        #1 clk = 1;
        #1 clk = 0;
        #1 clk = 1;
        #1 clk = 0;
        #1 clk = 1;
        #1 clk = 0;
        #1 clk = 1;
        #1 clk = 0;
        #1 clk = 1;
        #1 clk = 0;
        #1 clk = 1;
        #1 clk = 0;
        #1 clk = 1;
        #1 clk = 0;
        #1;
    end
endmodule