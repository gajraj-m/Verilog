module MUX2x1(output out, input a, b, s);
    wire and_1, and_2, s_comp;
    not (s_comp,s);
    and (and_1,a,s_comp);
    and (and_2,b,s);
    or (out,and_1,and_2);
endmodule