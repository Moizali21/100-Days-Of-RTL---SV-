// A simple ALU //

module ALU (
  input     logic [7:0]   a_i,
  input     logic [7:0]   b_i,
  input     logic [2:0]   op_i,
  output    logic [7:0]   alu_o
);

  assign alu_o = (op_i==3'b000)?({1'b0, a_i} + {1'b0, b_i}):(op_i==3'b001)?(a_i - b_i):(op_i==3'b010)?(a_i << b_i[2:0]):(op_i==3'b011)?(a_i >> b_i[2:0]):(op_i==3'b100)?(a_i & b_i):(op_i==3'b101)?(a_i | b_i):(op_i==3'b110)?(a_i ^ b_i):(op_i==3'b111)?({7'h0, a_i == b_i}):8'b0;

endmodule

