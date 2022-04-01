module twoipgates(input reg [1:0]a,reg [1:0]b,output wire [1:0]u);

and(u,a,b);

endmodule