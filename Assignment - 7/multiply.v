module multiply(input[3:0] a, b, output[7:0] c);

wire x1, x2, x3, x4, x5, x6, x7, x8, x9, x10 , x11, x12, x13 , x14, x15, x16 ,x17;

assign c[0] = (a[0] & b[0]);             
HA ha1(c[1], x1, (a[1] & b[0]), (a[0] & b[1]));
FA fa1(x2, x3, (a[1] & b[1]), (a[0] & b[2]), x1);
FA fa2(x4, x5, (a[1] & b[2]), (a[0] & b[3]), x3);
HA ha2(x6, x7, (a[1] & b[3]), x5);
HA ha3(c[2], x15, x2, (a[2] & b[0]));
FA fa5(x14, x16, x4, (a[2] & b[1]), x15);
FA fa4(x13, x17, x6, (a[2] & b[2]), x16);
FA fa3(x9, x8, x7, (a[2] & b[3]), x17);
HA ha4(c[3], x12, x14, (a[3] & b[0]));
FA fa8(c[4], x11, x13,(a[3] & b[1]), x12);
FA fa7(c[5], x10, x9, (a[3] & b[2]), x11);
FA fa6(c[6], c[7], x8, (a[3] & b[3]), x10); 

endmodule


module HA(sout, cout, a, b);

output sout, cout;
input a, b;

assign sout = a ^ b;
assign cout = a & b;

endmodule


module FA(sout, cout, a, b, cin);

output sout, cout;
input a, b, cin;

assign sout = a ^ b ^ cin;
assign cout = (a & b) | (a & cin) | (b & cin);

endmodule