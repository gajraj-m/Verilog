module q2_gate(output out, input a, b, c);

wire nand1, nor2;
nand(nand1, a, b);
nor(nor2, a, b);
and(out, nand1, nor2, c);

endmodule