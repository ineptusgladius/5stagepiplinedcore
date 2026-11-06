module Sign_Extend (In, ImmSrc, Imm_Ext);
    input [31:0] In;
    input [1:0] ImmSrc;
    output reg [31:0] Imm_Ext;

    always @(*) begin
        if (ImmSrc == 2'b00) begin
           
            Imm_Ext = { {20{In[31]}}, In[31:20] };
        end 
        else if (ImmSrc == 2'b01) begin
            Imm_Ext = { {20{In[31]}}, In[31:25], In[11:7] };
            
        end 
        else begin
           
            Imm_Ext = 32'h00000000;
        end
    end

endmodule
