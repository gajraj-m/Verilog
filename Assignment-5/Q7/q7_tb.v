`include "counter.v"
module q7_tb;

    reg en=0,reset=1,clk=0;
    wire [2:0] q;

    counter inst0(q, en, reset, clk);

    initial begin
        $dumpfile("q7_dump.vcd");
        $dumpvars(0,q7_tb);
        $monitor("%t| Enable=%b Reset=%b CLK=%b | Count=%3b", $time,en,reset,clk,q);
        #200 $finish;
    end

    always #5 clk = ~clk;

    initial begin
        #7 en = 1;
        #8 reset = 0;
        #133 reset = 1;
        #7 reset = 0;
        #28 en = 0;
    end

endmodule