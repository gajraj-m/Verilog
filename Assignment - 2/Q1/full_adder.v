`include "half_adder.v"
module full_adder(output sum, carry, input a, b, c_in);

    wire temp_sum, temp_carry_1,temp_carry_2;
    half_adder HA1(a, b, temp_sum, temp_carry_1);
    half_adder HA2(temp_sum, c_in, sum, temp_carry_2);
    or(carry, temp_carry_1, temp_carry_2);

endmodule