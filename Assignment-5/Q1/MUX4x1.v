module MUX4x1(output reg Y, input a, b, c, d, s0, s1);
    
    always @ (*)
    begin
        if(s1 == 1'b0 & s0 == 1'b0) Y <= a;
        else if(s1 == 1'b0 & s0 == 1'b1) Y <= b;
        else if(s1 == 1'b1 & s0 == 1'b0) Y <= c;
        else if(s1 == 1'b1 & s0 == 1'b1) Y <= d;
    end

endmodule