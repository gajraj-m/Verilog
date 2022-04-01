// It returns the Generate and Propagate values for the 2 bits

module Full_Adder(output g, p, input a, b);

    assign g = a & b;
    assign p = a ^ b;
    
endmodule