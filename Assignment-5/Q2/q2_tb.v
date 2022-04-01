`include "BCD_Gray.v"
module q2_tb;

// Initialize Inputs 
reg[3:0] bcd;
reg en;
wire[3:0] gray;
BCD_Gray inst0(bcd, en, gray);

initial begin
// if Gray == 4'b xxxx then this is the error message
$monitor("T=%t | Binary=%b | Enable=%b | Gray=%b", $time, bcd, en, gray);
$dumpfile("q2_dump.vcd");
$dumpvars();
end 

initial begin

bcd = 4; en = 1;
#5; bcd = 10; en = 1;
#5; bcd = 1; en = 1;
#5; bcd = 6; en = 0;
#5; bcd = 9; en = 1;
#5; bcd = 8; en = 1;
#5; bcd = 0; en = 1;
end

endmodule