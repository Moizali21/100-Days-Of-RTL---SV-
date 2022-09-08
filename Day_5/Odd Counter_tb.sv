//Odd Counter Testbench //

module oddcount_tb;
  logic a;
  logic x;
  logic clk;
  logic [6:0] count;
  odd_counter OC(.clk(clk),
              .a(a),
              .x(x),
          .count(count));
  initial begin
    $dumpfile("test.vcd");
    $dumpvars(1);
  end
  initial begin
    a=1;
    x=0;
    clk=0;
    #50 $finish();
  end 
  always #25 a=a;
  always #1 clk=~clk;
endmodule
