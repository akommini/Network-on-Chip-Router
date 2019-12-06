module gshare(prdbit,brnch,adrs,sram,shft,in,clk);

output prdbit;
input [3:0]adrs;
input brnch,shft,in,clk;
input [15:0]sram;
reg prdbit;

reg [3:0]shfreg;
reg x1,x2,x3,x4;
wire [15:0]decout;

always @(posedge clk)
begin
if (shft)
begin  
shfreg[0]<=in;
shfreg[1]<=shfreg[0];
shfreg[2]<=shfreg[1];
shfreg[3]<=shfreg[2];
end
else 
shfreg <= shfreg;

x1= shfreg[3]^adrs[3];
x2= shfreg[2]^adrs[2];
x3= shfreg[1]^adrs[1];
x4= shfreg[0]^adrs[0];

if(brnch)
case({x4,x3,x2,x1})
4'b0000: prdbit<= sram[0];
4'b0001: prdbit<= sram[1];
4'b0010: prdbit<= sram[2];
4'b0011: prdbit<= sram[3];
4'b0100: prdbit<= sram[4];
4'b0101: prdbit<= sram[5];
4'b0110: prdbit<= sram[6];
4'b0111: prdbit<= sram[7];
4'b1000: prdbit<= sram[8];
4'b1001: prdbit<= sram[9];
4'b1010: prdbit<= sram[10];
4'b1011: prdbit<= sram[11];
4'b1100: prdbit<= sram[12];
4'b1101: prdbit<= sram[13];
4'b1110: prdbit<= sram[14];
4'b1111: prdbit<= sram[15];
default: prdbit<= 1'bz;
endcase
end
endmodule




