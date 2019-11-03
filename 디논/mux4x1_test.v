`timescale 1ns/10ps

module mux4x1_test (d3,d2,d1,d0, sel, out);
input out;
output d3,d2,d1,d0;
output [1:0] sel;
reg d3,d2,d1,d0;
reg [1:0] sel;

initial
begin
d0 <= 1'b0;
d1 <= 1'b1;
d2 <= 1'b0;
d3 <= 1'b1;
sel <= 2'd0;
#100;
sel <= 2'd1;
#100;
sel <= 2'd2;
#100;
sel <= 2'd3;
#100;
d0 <= 1'b1;
d1 <= 1'b0;
d2 <= 1'b1;
d3 <= 1'b0;
sel <= 2'd0;
#100;
sel <= 2'd1;
#100;
sel <= 2'd2;
#100;
sel <= 2'd3;
#100;

end

endmodule