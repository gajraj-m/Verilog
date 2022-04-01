module decoder2_4(output d3, d2, d1, d0, input i1, i0);

    wire i0_c, i1_c;
    
    not(i0_c, i0);
    not(i1_c, i1);

    and(d3, i1, i0);
    and(d2, i1, i0_c);
    and(d1, i1_c, i0);
    and(d0, i1_c, i0_c);

endmodule