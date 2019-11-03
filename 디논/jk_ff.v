module myjkff(jk,clk,q,qb);
 
output q,qb;
 
input[1:0] jk;
 
input clk;
 
reg q,qb;
 



always @(posedge clk)
 
begin
 
      
 
                case(jk)
 
                        2'd1:q=0;
 
                        2'd2:q=1;
 
                        2'd3:q=~q;
 
                        2'd0:q=q;
 
                  endcase
 
          
 
         
 
          qb=~q;
 
     end
 
   endmodule