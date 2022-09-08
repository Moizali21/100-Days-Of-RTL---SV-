// Edge Detector Testbench //

module tb;
	logic sg;                                 
	logic clk;
    logic pe;
    logic ne;
  edge_det ed( .sg(sg),           
    		   .clk(clk),
               .pe(pe),
               .ne(ne));

	always #5 clk = ~clk;           
	
	initial begin
		clk <= 0;
		sg <= 0;
		#15 sg <= 1;
		#20 sg <= 0;
		#15 sg <= 1;
		#10 sg <= 0;
		#20 $finish;
	end	
  
  	initial begin
      $dumpvars(1);
      $dumpfile("dump.vcd");
    end
endmodule