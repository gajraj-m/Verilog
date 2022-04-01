module mux4x1(output Q, input A, B, C, D, a, b);

    wire a_c, b_c, a_and, b_and, c_and, d_and;

    not(a_c, a);
    not(b_c, b);

    and(a_and, A, a_c, b_c);
    and(b_and, B, a, b_c);
    and(c_and, C, a_c, b);
    and(d_and, D, a, b);

    or(Q, a_and, b_and, c_and, d_and);

endmodule