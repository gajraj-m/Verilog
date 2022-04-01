module priority_encoder(output y1, y0, input d3, d2, d1, d0);

    assign y1 = d3 | d2;
    assign y0 = d3 | (~d2 & d1);

endmodule