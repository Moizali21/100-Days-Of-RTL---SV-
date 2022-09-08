//Edge Detector //

module edge_det ( input sg,           
                      input clk,            
                      output pe,ne);     
 
    logic sg_dly;                 

  always @ (posedge clk) begin
    sg_dly <= sg;
  end
 
  assign pe = sg & ~sg_dly; 
  assign ne = ~sg & sg_dly;
endmodule 
 