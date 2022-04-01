module C_tb;

    reg a, b;
    wire y, a_comp;

    not(a_comp, a);
    xor(y, a_comp, b);

initial begin

$monitor("T=%t | a=%b | b=%b | y=%b", $time, a, b, y);

a = 1'b0; b = 1'b0;
#1 a = 1'b0; b = 1'b1;
#1 a = 1'b1; b = 1'b0;
#1 a = 1'b1; b = 1'b1;

end
endmodule