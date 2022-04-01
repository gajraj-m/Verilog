`include "pipo.v"

module q5_tb;
    reg CLK, clr;
    reg [3:0] in;
    wire [3:0] out;
    integer k;

    pipo PIPO(out,in,CLK, clr);

    initial begin
        $monitor("%t| CLK = %b | Reset=%b | Input = %4b | Output = %4b", $time, CLK, clr, in, out);
        $dumpfile("q5_dump.vcd");
        $dumpvars(0,q5_tb);
    end

    initial begin
        CLK=0; in=4'b0000; clr=0;
        #1 CLK=1;
        #1 CLK=0;clr =1;
        #1 CLK=1; in=4'b0001;
        #1 CLK=0;
        #1 CLK=1; clr = 0;
        #1 CLK=0; in=4'b0010;
        #1 CLK=1;
        #1 CLK=0; clr = 1;
        #1 CLK=1; in=4'b0100; clr = 0;
        #1 CLK=0;clr = 1;
        #1 CLK=1; in=4'b1001;
        #1 CLK=0; clr = 0;
        #1 CLK=1;
        #1 CLK=0; in=4'b1111;
        #1;
    end
endmodule