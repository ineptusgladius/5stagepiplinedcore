
module Instruction_Memory(rst,A,RD);

  input rst;
  input [31:0]A;
  output [31:0]RD;

  reg [31:0] mem [1023:0];
  
  always @(*) begin
    
    if (rst == 1'b0) begin
        RD = 32'h00000000; 
    end 
   
    else begin
       
        RD = mem[A / 4]; 
    end
end

  initial begin
    $readmemh("memfile.hex",mem);
  end


endmodule
