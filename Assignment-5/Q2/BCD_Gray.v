module BCD_Gray(bcd, en, gray);
input[3:0] bcd;
input en;
output reg [3:0] gray; 

always @ (bcd | en) begin 
        case(en)
            0 : gray = 4'b xxxx;
            1 : case(bcd)
                0 : gray = 0; 
                1 : gray = 1;
                2 : gray = 3; 
                3 : gray = 2; 
                4 : gray = 6; 
                5 : gray = 7; 
                6 : gray = 5; 
                7 : gray = 4; 
                8 : gray = 12; 
                9 : gray = 13; 
                // if input not BCD, then no need to convert
                default: gray = 4'b xxxx;
                endcase
        endcase
end
endmodule