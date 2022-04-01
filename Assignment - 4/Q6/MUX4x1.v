`include "MUX2x1.v"

module MUX4x1(output Y, input a, b, c, d, s0, s1);
    
    assign Y = s1 ? (s0 ? d : c) : (s0 ? b : a);

endmodule