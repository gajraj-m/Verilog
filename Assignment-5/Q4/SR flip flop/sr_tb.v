`include "sr_ff.v"
module sr_tb;

reg S,R, CLK;
wire Q, QBAR;


sr_ff inst0(S, R, CLK, Q, QBAR);

initial begin
$monitor("T=%t | CLK = %b | S = %b | R = %b | Q = %b | QBAR = %b", $time, CLK, S, R, Q, QBAR);
$dumpfile("sr_dump.vcd");
$dumpvars();
end 

initial begin
        CLK = 0; R=0; S=0;
        #1 CLK = 1;
        #1 CLK = 0; R=0; S=1;
        #1 CLK = 1;
        #1 CLK = 0; R=1; S=0;
        #1 CLK = 1;
        #1 CLK = 0;
        #1 CLK = 1; R=1; S=1;
        #1 CLK = 0;
    end
endmodule