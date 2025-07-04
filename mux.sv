// Code your design here
module mux
  (
    input [3:0] a,b,c,d, ////input data port have size of 4-bit
    input [1:0] sel,     ////control port have size of 2-bit
    output reg [3:0] y 
  );
  
  always@(*)
    begin
      case(sel)
        2'b00: y = a;
        2'b01: y = b;
        2'b10: y = c;
        2'b11: y = d;
      endcase
    end
  
  
endmodule
interface mux_if();
logic [3:0] a;
logic [3:0] b;
logic [3:0] c;
logic [3:0] d;
logic [1:0] sel;
logic [3:0] y;
endinterface