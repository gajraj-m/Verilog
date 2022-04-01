// Full adder circuit developed in question 1.
// It returns the Generate and Propagate values for the 2 bits

module Full_adder_gp(output g, p, input a, b);

    and(g, a, b);
    xor(p, a, b);
    
endmodule