//ripple carry adder
module ripple_carry_adder(
  input logic [3:0] a,b,
  input logic ci,
  output logic co,
  output logic [3:0] sum
);
  
  logic c[3:0];
  always_comb begin
    c[0] = ci;
    co = c[3];
  end
  
  genvar i;
  generate
    for(i=0; i < 4; i = i +1) begin:adder_block
      full_adder fa(.a(a[i]), .b(b[i]), .ci(c[i]), .sum(sum[i]), .co(c[i + 1]));
    end
   endgenerate
  
endmodule