`include "ram_4x4.v"
module ram_tb;

    reg[3:0] data_in;
    reg[1:0] ad_in;
    reg en, rdwr, CLK;
    wire[3:0] data_out;

    ram_4x4 inst0(data_in, ad_in, en, CLK, rdwr, data_out);

    initial begin
    $monitor("T=%t | CLK = %b | Data Input = %b | Address Input = %b | Enable = %b | Read/Write = %b | Output = %b", $time, CLK, data_in, ad_in, en, rdwr, data_out);
    $dumpfile("ram.vcd");
    $dumpvars(0, ram_tb);
    end 

initial begin
        CLK = 0; data_in = 4'b1001; ad_in = 2'b01; rdwr = 1; en = 1;
        #1 CLK = 1;
        #1 CLK = 0; data_in = 4'b0101; ad_in = 2'b11; rdwr = 1; en = 0;
        #1 CLK = 1;
        #1 CLK = 0; data_in = 4'b1011; ad_in = 2'b10; rdwr = 0; en = 1;
        #1 CLK = 1;
        #1 CLK = 0; data_in = 4'b1001; ad_in = 2'b10; rdwr = 1; en = 1;
        #1 CLK = 1;
        #1 CLK = 0; data_in = 4'b1011; ad_in = 2'b10; rdwr = 1; en = 1;
        #1 CLK = 1;
        #1 CLK = 0;
        #1 CLK = 1; data_in = 4'b1001; ad_in = 2'b01; rdwr = 1; en = 1;
        #1 CLK = 0;
        #1 CLK = 1; data_in = 4'b1000; ad_in = 2'b11; rdwr = 0; en = 0;
        #1 CLK = 0;
        #1 CLK = 1; data_in = 4'b1011; ad_in = 2'b10; rdwr = 1; en = 1;
        #1 CLK = 0;
        #1 CLK = 1; data_in = 4'b0011; ad_in = 2'b00; rdwr = 1; en = 1;
        #1 CLK = 0;
    end

endmodule