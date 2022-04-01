`include "jk_ff.v"
module jk_tb;

reg J,K, CLK;
wire Q, QBAR;


jk_ff inst0(J, K, CLK, Q, QBAR);

initial begin
$monitor("T=%t | CLK = %b | J = %b | K = %b | Q = %b | QBAR = %b", $time, CLK, K, K, Q, QBAR);
$dumpfile("jk_dump.vcd");
$dumpvars();
end 

initial begin
        CLK = 0; J=0; K=0;
        #1 CLK = 1;
        #1 CLK = 0; J=0; K=1;
        #1 CLK = 1;
        #1 CLK = 0; J=1; K=0;
        #1 CLK = 1;
        #1 CLK = 0;
        #1 CLK = 1; J=1; K=1;
        #1 CLK = 0;
    end
endmodule