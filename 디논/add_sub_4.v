
module add_sub(a, b, sub, sum);
input   [3:0] a, b;
input         sub; // when sub = 1 subtraction is performed.
output  [4:0] sum;
wire          cout;
wire    [3:0] b_bar;

adder_4   ADDER4 (.a(a), .b(b_bar), .cin(sub), .cout(cout), .sum(sum[3:0]));

assign b_bar = b ^ {4{sub}};
assign sum[4]= cout;

endmodule

