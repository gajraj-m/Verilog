`include "Full_subtractor.v"
module Full_sub_3bit(output d0, d1, d2, input a0, a1, a2, b0, b1, b2);

    wire b1_in, b2_in, b3_in;
    Full_subtractor fs0(d0, b1_in, a0, b0, 0);
    Full_subtractor fs1(d1, b2_in, a1, b1, b1_in);
    Full_subtractor fs2(d2, b3_in, a2, b2, b2_in);

endmodule