module decoder2_4(input x, y, en, output[3:0] d);

assign d[0] = ~x & ~y & en;
assign d[1] = ~x & y & en;
assign d[2] = x & ~y & en;
assign d[3] = x & y & en;

endmodule