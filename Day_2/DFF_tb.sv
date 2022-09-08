// DFF Testbench

// Testbench
module test;

  logic clk;
  logic reset;
  logic d;
  logic q;
  logic qb;
  
  // Instantiate design under test
  dff DFF(.clk(clk), .reset(reset),
          .d(d), .q(q), .qb(qb));
          
  initial begin
    // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(1);
    clk=0;
    reset=1;
    d=0;
    #10 $stop();  //output after 10 ms delay
    #10 $finish();
  end
  always #1 clk=~clk;
  always #1 reset=~reset;
  always #1 d=~d;
endmodule