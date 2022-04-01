`include "binary_ram.v"
module br_tb;

    reg in, select, rdwr, CLK;
    wire out;

    binary_ram br0(in, select, CLK, rdwr, out);

    initial begin
    $monitor("T=%t | CLK = %b | Input = %b | Select = %b | Read/Write = %b | Output = %b", $time, CLK, in, select, rdwr, out);
    $dumpfile("bram.vcd");
    $dumpvars(0, br_tb);
    end 

initial begin
        CLK = 0; select = 1; rdwr = 0; in = 1;
        #1 CLK = 1;
        #1 CLK = 0; select = 1; rdwr = 1; in = 0;
        #1 CLK = 1;
        #1 CLK = 0; select = 1; rdwr = 0; in = 1;
        #1 CLK = 1;
        #1 CLK = 0;
        #1 CLK = 1; select = 1; rdwr = 1; in = 0;
        #1 CLK = 0;
        #1 CLK = 1; select = 0; rdwr = 0; in = 1;
        #1 CLK = 0;
        #1 CLK = 1; select = 1; rdwr = 0; in = 1;
        #1 CLK = 0;
        #1 CLK = 1; select = 0; rdwr = 1; in = 0;
        #1 CLK = 0;
    end
endmodule