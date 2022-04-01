module gate(output y, input a, b, c);

    wire b_c, c_c, or1, or2, or3;
    not(b_c, b);
    not(c_c, c);
    or(or1, a, b_c, c_c);
    or(or2, a, b_c, c);
    or(or3, a, b, c_c);
    and(y, or1, or2, or3);

endmodule