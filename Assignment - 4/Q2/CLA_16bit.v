`include "CLA_4bit.v"
module CLA_16bit(C16, Sum, A, B, C_in);

    output [15:0] Sum;
    output C16;
    input [15:0] A, B;
    input C_in;

    wire G0, G1, G2, G3, P0, P1, P2, P3, C0, C4, C8, C16;
    
    CLA_4bit cla0(G0,P0,Sum[3],Sum[2],Sum[1],Sum[0],A[3],A[2],A[1],A[0],B[3],B[2],B[1],B[0],C_in);
    assign C0 = G0 | (P0 & C_in);

    CLA_4bit cla1(G1,P1,Sum[7],Sum[6],Sum[5],Sum[4],A[7],A[6],A[5],A[4],B[7],B[6],B[5],B[4],C0);
    assign C4 = G1 | (P1 & C0);

    CLA_4bit cla2(G2,P2,Sum[11],Sum[10],Sum[9],Sum[8],A[11],A[10],A[9],A[8],B[11],B[10],B[9],B[8],C4);
    assign C8 = G2 | (P2 & C4);

    CLA_4bit cla3(G3,P3,Sum[15],Sum[14],Sum[13],Sum[12],A[15],A[14],A[13],A[12],B[15],B[14],B[13],B[12],C8);
    assign C16 = G3 | (P3 & C8);

endmodule