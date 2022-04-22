`include "counter.v"
module counter_tb;

  // reg  [3:0] start;
  reg clk, clr;
  wire [3:0] q;

  counter c1(q, clk, clr);

  initial begin
    $monitor("T=%t | count = %b | clear = %b | clock = %b", $time, q, clr, clk);
    $dumpfile("dctb.vcd");
    $dumpvars(0,counter_tb);

    clr = 1; clk = 0;
        #1 clk = 1; 
        #1 clk = 0; clr = 0;
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

  end
endmodule