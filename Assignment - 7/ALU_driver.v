`include "ALU.v"
module ALU_driver;

    reg[2:0] s;
    reg[3:0] a=2, b=7;
    reg i;
    wire[7:0] out;

    ALU inst0(s, a, b, out);

    initial begin
    $monitor("T=%t | S=%b | A=%b | B=%b | Output=%b", $time, s, a, b, out);
    $dumpfile("ALU_dump.vcd");
    $dumpvars(0, ALU_driver);
    #40 $finish;
    end

initial begin
    s = 0;
    #5; s = 1;
    #5; s = 2;
    #5; s = 3;
    #5; s = 4;
    #5; s = 5;
    #5; s = 6;
    #5; s = 7;
end
endmodule