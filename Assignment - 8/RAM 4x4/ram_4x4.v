`include "decoder2_4.v"
`include "binary_ram.v"

module ram_4x4(data_in, ad_in, en, clk, rdwr, data_out);

    input[3:0] data_in;
    input[1:0] ad_in;
    input en, rdwr, clk;
    output [3:0] data_out;
    wire[3:0] decoded_out;
    wire br1, br2, br3, br4, br5, br6, br7, br8, br9, br10, br11, br12, br13, br14, br15, br16;

    decoder2_4 dec(ad_in[1], ad_in[0], en, decoded_out);
    
    binary_ram bc1(data_in[0], decoded_out[0], clk, rdwr, br1);
    binary_ram bc2(data_in[1], decoded_out[0], clk, rdwr, br2);
    binary_ram bc3(data_in[2], decoded_out[0], clk, rdwr, br3);
    binary_ram bc4(data_in[3], decoded_out[0], clk, rdwr, br4);
    binary_ram bc5(data_in[0], decoded_out[1], clk, rdwr, br5);
    binary_ram bc6(data_in[1], decoded_out[1], clk, rdwr, br6);
    binary_ram bc7(data_in[2], decoded_out[1], clk, rdwr, br7);
    binary_ram bc8(data_in[3], decoded_out[1], clk, rdwr, br8);
    binary_ram bc9(data_in[0], decoded_out[2], clk, rdwr, br9);
    binary_ram bc10(data_in[1], decoded_out[2], clk, rdwr, br10);
    binary_ram bc11(data_in[2], decoded_out[2], clk, rdwr, br11);
    binary_ram bc12(data_in[3], decoded_out[2], clk, rdwr, br12);
    binary_ram bc13(data_in[0], decoded_out[3], clk, rdwr, br13);
    binary_ram bc14(data_in[1], decoded_out[3], clk, rdwr, br14);
    binary_ram bc15(data_in[2], decoded_out[3], clk, rdwr, br15);
    binary_ram bc16(data_in[3], decoded_out[3], clk, rdwr, br16);

    assign data_out[0] = br1 | br5 | br9 | br13;
    assign data_out[1] = br2 | br6 | br10 | br14;
    assign data_out[2] = br3 | br7 | br11 | br15;
    assign data_out[3] = br4 | br8 | br12 | br16;

endmodule