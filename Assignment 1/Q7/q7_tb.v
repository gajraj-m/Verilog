
module q7_tb;

wire f, t1, t2, y_c;
reg x, y, z;

not(y_c, y);
and(t1, x, y_c);
and(t2, y, z);

or(f, t1, t2);

initial begin

$monitor("T=%t | x=%b | y=%b | z=%b | f=%b", $time, x, y, z, f);

x = 1'b0; y = 1'b0; z = 1'b0;
#1 x = 1'b0; y = 1'b0; z = 1'b1;
#1 x = 1'b0; y = 1'b1; z = 1'b0;
#1 x = 1'b0; y = 1'b1; z = 1'b1;
#1 x = 1'b1; y = 1'b0; z = 1'b0;
#1 x = 1'b1; y = 1'b0; z = 1'b1;
#1 x = 1'b1; y = 1'b1; z = 1'b0;
#1 x = 1'b1; y = 1'b1; z = 1'b1;

end
endmodule
