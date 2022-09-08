//Odd Counter//

module odd_counter(a,x,clk,count);
  input a,x,clk;
  output [6:0] count;
  logic [6:0] count=1; 
  always@(posedge clk)begin
    if (x) count<=7'b0;
    else if (a) 
      count<=count+2;
  end
endmodule