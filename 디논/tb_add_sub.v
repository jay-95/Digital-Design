
`timescale 1ns/10ps
// testbench module
module adder4_tb;
  reg [3:0]A,B;
  reg SUB; //when SUB=1, subtraction is performed.
  wire [4:0] RESULT;
  integer i;
  
  add_sub ADDSUB4 (A,B,SUB,RESULT);
  
  initial begin
    A=5; B=6; SUB=0;
    #10A = 1; B=10;
    #10A = 4'hF;
    #10B = 4'hA;
    #10A = 10; B = 3; SUB = 1;
    #10A = 4'hF;
    #10B = 4'hA;
    #1000 $stop;
  end
  
  initial begin
    #100B=3;
    for(i=0;i<15;i=i+1)begin
      #10A=i;
      #30SUB=^A;
    end
  end
  
  initial begin
    #1000 $stop;
  end
endmodule