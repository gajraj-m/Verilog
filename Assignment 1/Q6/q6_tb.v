
module q6_tb;

wire f, t;
reg f1, f2, f3;

and(t, f1, f2);
or(f, t, f3);

initial begin

$monitor("T=%t | f1=%b | f2=%b | f3=%b | f=%b", $time, f1, f2, f3, f);

f1 = 1'b0; f2 = 1'b0; f3 = 1'b0;
#1 f1 = 1'b0; f2 = 1'b0; f3 = 1'b1;
#1 f1 = 1'b0; f2 = 1'b1; f3 = 1'b0;
#1 f1 = 1'b0; f2 = 1'b1; f3 = 1'b1;
#1 f1 = 1'b1; f2 = 1'b0; f3 = 1'b0;
#1 f1 = 1'b1; f2 = 1'b0; f3 = 1'b1;
#1 f1 = 1'b1; f2 = 1'b1; f3 = 1'b0;
#1 f1 = 1'b1; f2 = 1'b1; f3 = 1'b1;

end
endmodule
