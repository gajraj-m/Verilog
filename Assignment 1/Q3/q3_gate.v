module q3_gate(output out, input a, b, c, d);

wire out_bd, out_bc, out_adc, a_comp, b_comp, c_comp, d_comp;

not(a_comp, a);
not(b_comp, b);
not(c_comp, c);
not(d_comp, d);

and(out_bd, b_comp, d_comp);
and(out_bc, b_comp, c_comp);
and(out_adc, a_comp, d, c_comp);

or(out, out_bc, out_bd, out_adc);

endmodule