// Mux //

module mux(s,A,B,o);
  input logic s;
  input logic A,B;
  output logic o;
  always@(*)begin
    if(s)begin
      o<=B;
    end
      else begin 
        o<=A;
      end
  end
endmodule


