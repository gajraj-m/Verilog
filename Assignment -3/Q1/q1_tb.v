`include "Full_adder_gp.v"
module q1_tb;

wire sum, gen, prop, carry, temp;
reg a, b, c;

Full_adder_gp inst0(gen, prop, a, b);

// Calculating sum and carry from the Gi, Pi values

and(temp, prop, c);
or(carry, gen, temp); // Ci+1 = Gi + Pi * Ci
xor(sum, prop, c);  // Si = Pi ^ Ci

initial begin

$monitor("T=%t | a=%b | b=%b | c=%b | Generate=%b | Propagate=%b | Sum=%b | Carry=%b", $time, a, b, c, gen, prop, sum, carry);

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
