`include "counter.v"
module counter_tb;

  reg clk, clr = 0;
  wire [3:0] q;

  counter c1 (q, clk, reset);

  initial begin
     $dumpfile("dctb.vcd");
     $dumpvars(0,counter_tb);
     $monitor("T=%t | count = %b | clear = %b | clock = %b", $time, q, clr, clk);
  end


    /* Make a regular pulsing clock. */
    always #1 clk = !clk;
    initial
    #100 $finish;
endmodule