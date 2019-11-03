`timescale 1ns/1ns
 
module jkff(j,k,clk,q,qb);
 
input j,k, clk;
 
output q, qb;
 
reg q,qb;
 
initial
 
begin
 
q=0;
 
qb=1;
 
end
 



always@ (posedge (clk))
 
begin
 
if(j==0 && k==0)
 
     q=0;
 
else if(j==0 && j==1)
 
     q=0;
 
else if (j==1 && k==0)
 
     q=1;
 
else q=qb;
 
     qb=~q;
 
end 
 
endmodule
 



`timescale 1ns/1ns
 
module jkff_tb;
 
reg a,b,c;
 
wire y,yb;
 
jkff out (.j(a), .k(c),.clk(b), .q(y), .qb(yb));
 
initial
 
begin
 
c=0;
 
a=0;
 
b=0;
 
#100;
 



b=1;
 
#100;
 



a=1;
 
b=0;
 
#100;
 



b=1;
 
#100;
 



c=1;
 
a=0;
 
b=0;
 
#100;
 



a=0;
 
b=1;
 
#100;
 



a=1;
 
#100;
 



b=1;
 
#100;
 
end
 
endmodule