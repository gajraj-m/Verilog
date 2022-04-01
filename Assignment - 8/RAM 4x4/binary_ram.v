`include "sr_ff.v"
// when rdwr = 1 => read. because it stops the input signal from reaching the FF. so only read => output is activated
//    rdwr = 0 => write
module binary_ram(in, select, clk, rdwr, out);

    input in, select, rdwr, clk;
    output out;

    wire s, r, q;
    assign s = select & in & ~rdwr;
    assign r = select & ~in & ~rdwr;
    sr_ff inst0(s, r, clk, q);
    assign out = q & select & rdwr;

endmodule