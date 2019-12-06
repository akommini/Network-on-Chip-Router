
module gshare ( prdbit, brnch, adrs, sram, shft, in, clk );
  input [3:0] adrs;
  input [15:0] sram;
  input brnch, shft, in, clk;
  output prdbit;
  wire   \U3/DATA16_0 , \U3/DATA15_0 , \U3/DATA14_0 , \U3/DATA13_0 ,
         \U3/DATA12_0 , \U3/DATA11_0 , \U3/DATA10_0 , \U3/DATA9_0 ,
         \U3/DATA8_0 , \U3/DATA7_0 , \U3/DATA6_0 , \U3/DATA5_0 , \U3/DATA4_0 ,
         \U3/DATA3_0 , \U3/DATA2_0 , \U3/DATA1_0 , n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167;
  assign \U3/DATA16_0  = sram[15];
  assign \U3/DATA15_0  = sram[14];
  assign \U3/DATA14_0  = sram[13];
  assign \U3/DATA13_0  = sram[12];
  assign \U3/DATA12_0  = sram[11];
  assign \U3/DATA11_0  = sram[10];
  assign \U3/DATA10_0  = sram[9];
  assign \U3/DATA9_0  = sram[8];
  assign \U3/DATA8_0  = sram[7];
  assign \U3/DATA7_0  = sram[6];
  assign \U3/DATA6_0  = sram[5];
  assign \U3/DATA5_0  = sram[4];
  assign \U3/DATA4_0  = sram[3];
  assign \U3/DATA3_0  = sram[2];
  assign \U3/DATA2_0  = sram[1];
  assign \U3/DATA1_0  = sram[0];

  DFF_X1 \shfreg_reg[0]  ( .D(n135), .CK(clk), .Q(n167) );
  DFF_X1 \shfreg_reg[1]  ( .D(n134), .CK(clk), .Q(n166) );
  DFF_X1 \shfreg_reg[2]  ( .D(n133), .CK(clk), .Q(n165) );
  DFF_X1 \shfreg_reg[3]  ( .D(n132), .CK(clk), .Q(n164) );
  DFF_X1 prdbit_reg ( .D(n131), .CK(clk), .Q(prdbit) );
  MUX2_X1 U37 ( .A(n167), .B(in), .S(shft), .Z(n135) );
  MUX2_X1 U38 ( .A(n166), .B(n167), .S(shft), .Z(n134) );
  MUX2_X1 U39 ( .A(n165), .B(n166), .S(shft), .Z(n133) );
  MUX2_X1 U40 ( .A(n164), .B(n165), .S(shft), .Z(n132) );
  MUX2_X1 U41 ( .A(prdbit), .B(n136), .S(brnch), .Z(n131) );
  MUX2_X1 U42 ( .A(n137), .B(n138), .S(n167), .Z(n136) );
  MUX2_X1 U43 ( .A(n139), .B(n140), .S(adrs[0]), .Z(n138) );
  MUX2_X1 U44 ( .A(n140), .B(n139), .S(adrs[0]), .Z(n137) );
  INV_X1 U45 ( .A(n141), .ZN(n139) );
  MUX2_X1 U46 ( .A(n142), .B(n143), .S(n144), .Z(n141) );
  AOI221_X1 U47 ( .B1(\U3/DATA16_0 ), .B2(n145), .C1(\U3/DATA12_0 ), .C2(n146), 
        .A(n147), .ZN(n143) );
  INV_X1 U48 ( .A(n148), .ZN(n147) );
  AOI22_X1 U49 ( .A1(\U3/DATA15_0 ), .A2(n149), .B1(\U3/DATA11_0 ), .B2(n150), 
        .ZN(n148) );
  AOI221_X1 U50 ( .B1(\U3/DATA14_0 ), .B2(n145), .C1(\U3/DATA10_0 ), .C2(n146), 
        .A(n151), .ZN(n142) );
  INV_X1 U51 ( .A(n152), .ZN(n151) );
  AOI22_X1 U52 ( .A1(\U3/DATA13_0 ), .A2(n149), .B1(\U3/DATA9_0 ), .B2(n150), 
        .ZN(n152) );
  INV_X1 U53 ( .A(n153), .ZN(n140) );
  MUX2_X1 U54 ( .A(n154), .B(n155), .S(n144), .Z(n153) );
  XOR2_X1 U55 ( .A(n165), .B(adrs[2]), .Z(n144) );
  AOI221_X1 U56 ( .B1(\U3/DATA8_0 ), .B2(n145), .C1(\U3/DATA4_0 ), .C2(n146), 
        .A(n156), .ZN(n155) );
  INV_X1 U57 ( .A(n157), .ZN(n156) );
  AOI22_X1 U58 ( .A1(\U3/DATA7_0 ), .A2(n149), .B1(\U3/DATA3_0 ), .B2(n150), 
        .ZN(n157) );
  AOI221_X1 U59 ( .B1(\U3/DATA6_0 ), .B2(n145), .C1(\U3/DATA2_0 ), .C2(n146), 
        .A(n158), .ZN(n154) );
  INV_X1 U60 ( .A(n159), .ZN(n158) );
  AOI22_X1 U61 ( .A1(\U3/DATA5_0 ), .A2(n149), .B1(\U3/DATA1_0 ), .B2(n150), 
        .ZN(n159) );
  NOR2_X1 U62 ( .A1(n160), .A2(n161), .ZN(n150) );
  NOR2_X1 U63 ( .A1(n160), .A2(n162), .ZN(n149) );
  NOR2_X1 U64 ( .A1(n161), .A2(n163), .ZN(n146) );
  NOR2_X1 U65 ( .A1(n162), .A2(n163), .ZN(n145) );
  INV_X1 U66 ( .A(n160), .ZN(n163) );
  XOR2_X1 U67 ( .A(n164), .B(adrs[3]), .Z(n160) );
  INV_X1 U68 ( .A(n161), .ZN(n162) );
  XOR2_X1 U69 ( .A(n166), .B(adrs[1]), .Z(n161) );
endmodule

