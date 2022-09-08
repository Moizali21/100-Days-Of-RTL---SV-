
// D flip-flop //

module dff (clk, reset,
  d, q, qb);
  input      clk;
  input      reset;
  input      d;
  output     q;
  output     qb;

  reg        q;

  assign qb = ~q;

  always @(posedge clk or posedge reset)
  begin
    if (reset) begin
      
      q <= 1'b0;
    end else begin
    
      q <= d;
    end
  end
endmodule