module Full_subtractor(output d, b_out, input a, b, b_in);

    assign d = a ^ b ^ b_in;
    assign b_out = b&b_in | ~a&b_in | ~a&b;

endmodule