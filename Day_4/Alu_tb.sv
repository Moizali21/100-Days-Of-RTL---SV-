// Simple ALU TB //

module ALu_tb ();

  logic [7:0] a_i;
  logic [7:0] b_i;
  logic [2:0] op_i;
  logic [7:0] alu_o;

  ALU alu(.a_i(a_i),
          .b_i(b_i),
          .op_i(op_i),
          .alu_o(alu_o));
  initial begin
    for (int j =0; j<3; j++) begin
      for (int i =0; i<7; i++) begin
        a_i = $urandom_range(0, 8'hFF);
        b_i = $urandom_range(0, 8'hFF);
        op_i = 3'(i);
        #5;
      end
    end
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule

