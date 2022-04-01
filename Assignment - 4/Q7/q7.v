module q7(output y, input a, b, c);

    assign y = ~a&~b | ~b&~c | ~c&~a;

endmodule