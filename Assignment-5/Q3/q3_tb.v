`include "booth_driver.v"
module q3_tb;

    reg[3:0] M, Q;
    wire[7:0] Z;

    booth_driver inst0(M, Q, Z);

    initial begin
    $monitor("T=%t | M=%b | Q=%b | Z=%b", $time, M, Q, Z);
    $dumpfile("q3_dump.vcd");
    $dumpvars(0, q3_tb);
    end

    initial begin
    M = 0; Q = 0;
    #10 M = 4; Q = 6;
    #10 M = 7; Q = 7;
    #10 M = 7; Q = 11; // these are signed numbers ... 11 means 1011 so its treated as 2's complement
    #10 M = 10; Q = 10;// these are signed numbers ... 11 means 1011 so its treated as 2's complement
    end

endmodule