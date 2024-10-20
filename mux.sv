// multiplexer
module mux(
  input logic [3:0] a, b,
  input logic s,
  output logic [3:0] out
);
  assign out = s ? b : a;
endmodule