module Mux2_Test_Bench;

// Define Test Bench variables

   reg [2:0] TstVec;   // Test Vectors (inputs)
   wire out;      // Output to verify
   
// Instatiate the module to test

   mux2 MX0(out,TstVec[2],TstVec[1],TstVec[0]);

// Test Vectors for the module under test

initial
      begin
         TstVec=3'b000;
         repeat(8)
         #10 TstVec=TstVec+1;
      end

// Report the Results

   initial
      $monitor($time, " in0 in1 select = %b", TstVec, " out = %b", out);

endmodule

// The 2-1 multiplexer model goes here

