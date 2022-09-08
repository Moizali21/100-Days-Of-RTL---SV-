//Mux Testbench//

module mux_tb;  //Declaration Testbench
  logic  s1;
  logic  A1;
  logic  B1;
  logic o1;
  mux Op(.s(s1),
         .o(o1),//Relate Testbench with Design
              .A(A1), 
              .B(B1)); 
  initial begin 
    $dumpfile("dump.vcd"); 
    $dumpvars(1); 
  end 
  initial begin 
    s1=1'b0;
    A1=1'b0;
    B1=1'b1;
    #2 s1=1'b1;
        A1=1'b0;
    B1=1'b1;
    #5 $stop();  //output after 5 ms delay
    #5 $finish(); 
  end 
endmodule

