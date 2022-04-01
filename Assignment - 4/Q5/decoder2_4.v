module decoder2_4(input x, y, output d0, d1, d2, d3);

assign d0 = ~x & ~y;
assign d1 = ~x & y;
assign d2 = x & ~y;
assign d3 = x & y;

endmodule