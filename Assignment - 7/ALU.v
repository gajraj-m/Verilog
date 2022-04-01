`include "multiply.v"
module ALU(s, a, b, out);

    input[2:0] s;
    input[3:0] a, b;
    output reg[7:0] out;
    wire[7:0] temp, out_mul, temp_add, temp_sub;
    wire[3:0] b_2comp;

    assign b_2comp = ~b + 1;

    multiply b2(b, 4'b0010, temp);
    multiply mul(a, b, out_mul);

    always @ (s) begin
        case(s)
            0 : out = a + b;
            1 : out = a - b;
            2 : out = a + temp;
            3 : out = a - temp;
            4 : out = out_mul;
            5 : out = (a > b) ? b : a;
            6 : out = a;
            7 : out = b;
            default : out = a + b;
        endcase
    end

endmodule