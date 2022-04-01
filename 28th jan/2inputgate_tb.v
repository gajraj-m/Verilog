`include "2inputgate.vl"

module input2gate_tb;

wire [1:0]t_u;
reg [1:0]t_b, [1:0]t_a;

twoipgates my_gate(.b(t_b),.a(t_a), .u(t_u));

initial
begin

$monitor("T=%t | a=%b | b=%b | u=%b", $time,t_a, t_b, t_u);

  t_a = 2'b00;
  t_b = 2'b00;
  
 #1 
  t_a = 2'b00;
  t_b = 2'b11;

 #1 
  t_a = 2'b11;
  t_b = 2'b00;
  
 #1 
  t_a = 2'b11;
  t_b = 2'b11;
  
end
endmodule