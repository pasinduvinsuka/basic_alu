// alu module
module alu(
  input logic [3:0] a,b, //4 bit inputs for the addition
  input logic ci,s, //carry in and selection bit
  output logic [3:0] out, //final 4-bit output
  output logic co //carry out
);
  
  logic [3:0] sum;
  logic [3:0] zero = 0;
  
  
  ripple_carry_adder rca(
    .a(a),
    .b(b),
    .ci(ci),
    .co(co),
    .sum(sum)
  );
  
  mux mux_(
    .a(zero),.b(sum),.s(s),.out(out)
  );
  
endmodule