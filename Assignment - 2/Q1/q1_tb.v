`include "full_adder.v"
module q1_tb;

wire sum, carry;
reg a, b, c;

full_adder inst0(sum, carry, a, b, c);

initial begin

$monitor("T=%t | a=%b | b=%b | c=%b | Sum=%b | Carry=%b", $time, a, b, c, sum, carry);

a = 1'b0; b = 1'b0; c = 1'b0;
#1 a = 1'b0; b = 1'b0; c = 1'b1;
#1 a = 1'b0; b = 1'b1; c = 1'b0;
#1 a = 1'b0; b = 1'b1; c = 1'b1;
#1 a = 1'b1; b = 1'b0; c = 1'b0;
#1 a = 1'b1; b = 1'b0; c = 1'b1;
#1 a = 1'b1; b = 1'b1; c = 1'b0;
#1 a = 1'b1; b = 1'b1; c = 1'b1;

end
endmodule
