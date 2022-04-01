// First module is a D Flip Flop
module d_ff(q, qbar, clk, reset, d);

input d, clk, reset;
output reg q=0, qbar = 1;

always @ (posedge clk) begin

    if(reset == 1) q = 0;
    else q = d;
    
    qbar = ~q;
end
endmodule

module ms_ff(q, qbar, clk, rst, d);
	output q;
	output qbar;
	input clk, rst;
	input d;

	wire clk_bar, q1, q1bar; // inverted clock and intermediate q output of Master

	assign clk_bar = ~clk;
	assign qbar = ~q;

// master slave operation
	d_ff msf0(q1, q1bar, clk, rst, d);
	d_ff msf1(q, qbar, clk_bar, rst, q1);

endmodule