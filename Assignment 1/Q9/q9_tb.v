`include "half_adder.v"
module q9_tb;

wire sum, carry;
reg a, b;

half_adder inst0(sum, carry, a, b);

initial begin

$monitor("T=%t | a=%b | b=%b | Sum=%b | Carry=%b", $time, a, b, sum, carry);

a = 1'b0; b = 1'b0;
#1 a = 1'b0; b = 1'b1;
#1 a = 1'b1; b = 1'b0;
#1 a = 1'b1; b = 1'b1;

end
endmodule
