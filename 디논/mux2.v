module mux2(out,in0,in1,select);

   output out;
   input in0,in1,select;

   wire w0,w1,nselect;   // internal signals

   not(nselect,select);  // Verilog primitives
   and(w0,in0,nselect);
   and(w1,in1,select);
   or(out,w0,w1);

endmodule
