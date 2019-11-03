module mux4x1 (d3, d2, d1, d0, sel, out);
input d3, d2, d1, d0;
input [1:0] sel;
output out;
assign out = d0 & (~sel[1] & ~sel[0]) |
d1 & (~sel[1] & sel[0]) |
d2 & ( sel[1] & ~sel[0]) |
d3 & ( sel[1] & sel[0]);
endmodule
