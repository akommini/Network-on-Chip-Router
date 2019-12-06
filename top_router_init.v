
module router_swarb ( Clk, Rst, N_sw_arb_req, N_sw_arb_grant, S_sw_arb_req, 
        S_sw_arb_grant, E_sw_arb_req, E_sw_arb_grant, W_sw_arb_req, 
        W_sw_arb_grant );
  input [14:0] N_sw_arb_req;
  output [14:0] N_sw_arb_grant;
  input [14:0] S_sw_arb_req;
  output [14:0] S_sw_arb_grant;
  input [14:0] E_sw_arb_req;
  output [14:0] E_sw_arb_grant;
  input [14:0] W_sw_arb_req;
  output [14:0] W_sw_arb_grant;
  input Clk, Rst;
  wire   n74, n75, n76, n77, n78, n80, n81, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n79, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120;

  INV_X1 U1 ( .A(n10), .ZN(n1) );
  CLKBUF_X1 U2 ( .A(n67), .Z(n2) );
  AND3_X2 U3 ( .A1(n89), .A2(n90), .A3(n3), .ZN(S_sw_arb_grant[13]) );
  INV_X32 U4 ( .A(n88), .ZN(n3) );
  NAND3_X1 U5 ( .A1(n5), .A2(n6), .A3(n81), .ZN(n4) );
  INV_X4 U6 ( .A(n4), .ZN(n80) );
  INV_X32 U7 ( .A(N_sw_arb_req[10]), .ZN(n5) );
  INV_X32 U8 ( .A(N_sw_arb_req[11]), .ZN(n6) );
  NOR3_X1 U9 ( .A1(n114), .A2(N_sw_arb_req[12]), .A3(n4), .ZN(
        N_sw_arb_grant[13]) );
  AND3_X1 U10 ( .A1(E_sw_arb_req[1]), .A2(n115), .A3(n8), .ZN(
        E_sw_arb_grant[1]) );
  AND3_X1 U11 ( .A1(W_sw_arb_req[1]), .A2(n117), .A3(n7), .ZN(
        W_sw_arb_grant[1]) );
  NOR3_X2 U12 ( .A1(N_sw_arb_req[6]), .A2(N_sw_arb_req[7]), .A3(n76), .ZN(n75)
         );
  NOR3_X2 U13 ( .A1(N_sw_arb_req[3]), .A2(N_sw_arb_req[4]), .A3(n78), .ZN(n77)
         );
  NOR2_X2 U14 ( .A1(n74), .A2(N_sw_arb_req[9]), .ZN(n81) );
  INV_X1 U15 ( .A(n81), .ZN(n96) );
  NOR2_X1 U16 ( .A1(n4), .A2(n113), .ZN(N_sw_arb_grant[12]) );
  NOR2_X1 U17 ( .A1(n96), .A2(n110), .ZN(N_sw_arb_grant[10]) );
  AND3_X1 U18 ( .A1(N_sw_arb_req[11]), .A2(n110), .A3(n81), .ZN(
        N_sw_arb_grant[11]) );
  AND2_X1 U19 ( .A1(n77), .A2(N_sw_arb_req[5]), .ZN(N_sw_arb_grant[5]) );
  AND2_X1 U20 ( .A1(n75), .A2(N_sw_arb_req[8]), .ZN(N_sw_arb_grant[8]) );
  NOR3_X1 U21 ( .A1(n100), .A2(N_sw_arb_req[3]), .A3(n78), .ZN(
        N_sw_arb_grant[4]) );
  INV_X1 U22 ( .A(N_sw_arb_req[4]), .ZN(n100) );
  NOR3_X1 U23 ( .A1(n105), .A2(N_sw_arb_req[6]), .A3(n76), .ZN(
        N_sw_arb_grant[7]) );
  INV_X1 U24 ( .A(N_sw_arb_req[7]), .ZN(n105) );
  INV_X1 U25 ( .A(S_sw_arb_req[0]), .ZN(n118) );
  OR2_X2 U26 ( .A1(n83), .A2(S_sw_arb_req[9]), .ZN(n84) );
  INV_X1 U27 ( .A(S_sw_arb_req[10]), .ZN(n112) );
  OR2_X2 U28 ( .A1(n71), .A2(S_sw_arb_req[6]), .ZN(n72) );
  OR2_X2 U29 ( .A1(n72), .A2(S_sw_arb_req[7]), .ZN(n73) );
  INV_X1 U30 ( .A(S_sw_arb_req[3]), .ZN(n98) );
  INV_X1 U31 ( .A(S_sw_arb_req[4]), .ZN(n102) );
  INV_X1 U32 ( .A(S_sw_arb_req[9]), .ZN(n108) );
  INV_X1 U33 ( .A(S_sw_arb_req[7]), .ZN(n106) );
  INV_X1 U34 ( .A(S_sw_arb_req[6]), .ZN(n104) );
  NOR2_X1 U35 ( .A1(n78), .A2(n97), .ZN(N_sw_arb_grant[3]) );
  INV_X1 U36 ( .A(N_sw_arb_req[3]), .ZN(n97) );
  NOR2_X1 U37 ( .A1(n76), .A2(n103), .ZN(N_sw_arb_grant[6]) );
  INV_X1 U38 ( .A(N_sw_arb_req[6]), .ZN(n103) );
  NOR2_X1 U39 ( .A1(n74), .A2(n107), .ZN(N_sw_arb_grant[9]) );
  INV_X1 U40 ( .A(N_sw_arb_req[9]), .ZN(n107) );
  OR2_X2 U41 ( .A1(n67), .A2(S_sw_arb_req[3]), .ZN(n68) );
  AND3_X1 U42 ( .A1(S_sw_arb_req[1]), .A2(n118), .A3(n7), .ZN(
        S_sw_arb_grant[1]) );
  INV_X1 U43 ( .A(N_sw_arb_req[10]), .ZN(n110) );
  INV_X1 U44 ( .A(N_sw_arb_req[12]), .ZN(n113) );
  INV_X1 U45 ( .A(E_sw_arb_req[0]), .ZN(n115) );
  INV_X1 U46 ( .A(E_sw_arb_req[10]), .ZN(n109) );
  INV_X1 U47 ( .A(W_sw_arb_req[0]), .ZN(n117) );
  INV_X1 U48 ( .A(W_sw_arb_req[10]), .ZN(n111) );
  INV_X1 U49 ( .A(N_sw_arb_req[0]), .ZN(n116) );
  AND3_X1 U50 ( .A1(N_sw_arb_req[1]), .A2(n116), .A3(n7), .ZN(
        N_sw_arb_grant[1]) );
  INV_X1 U51 ( .A(E_sw_arb_req[4]), .ZN(n99) );
  INV_X1 U52 ( .A(W_sw_arb_req[4]), .ZN(n101) );
  AND4_X1 U53 ( .A1(N_sw_arb_req[14]), .A2(n80), .A3(n113), .A4(n114), .ZN(
        N_sw_arb_grant[14]) );
  AND4_X1 U54 ( .A1(W_sw_arb_req[14]), .A2(n37), .A3(n36), .A4(n35), .ZN(
        W_sw_arb_grant[14]) );
  AND4_X1 U55 ( .A1(E_sw_arb_req[14]), .A2(n64), .A3(n63), .A4(n62), .ZN(
        E_sw_arb_grant[14]) );
  AND4_X1 U56 ( .A1(S_sw_arb_req[14]), .A2(n90), .A3(n89), .A4(n88), .ZN(
        S_sw_arb_grant[14]) );
  NAND2_X1 U57 ( .A1(n77), .A2(n120), .ZN(n76) );
  INV_X1 U58 ( .A(N_sw_arb_req[5]), .ZN(n120) );
  NAND2_X1 U59 ( .A1(n75), .A2(n119), .ZN(n74) );
  INV_X1 U60 ( .A(N_sw_arb_req[8]), .ZN(n119) );
  INV_X1 U61 ( .A(N_sw_arb_req[13]), .ZN(n114) );
  CLKBUF_X1 U62 ( .A(n1), .Z(n7) );
  CLKBUF_X1 U63 ( .A(Rst), .Z(n8) );
  CLKBUF_X1 U64 ( .A(Rst), .Z(n9) );
  INV_X1 U65 ( .A(n8), .ZN(n10) );
  NOR2_X1 U66 ( .A1(n117), .A2(n10), .ZN(W_sw_arb_grant[0]) );
  INV_X1 U67 ( .A(W_sw_arb_req[2]), .ZN(n12) );
  NOR4_X1 U68 ( .A1(W_sw_arb_req[1]), .A2(W_sw_arb_req[0]), .A3(n10), .A4(n12), 
        .ZN(W_sw_arb_grant[2]) );
  INV_X1 U69 ( .A(W_sw_arb_req[1]), .ZN(n11) );
  NAND4_X1 U70 ( .A1(n9), .A2(n117), .A3(n12), .A4(n11), .ZN(n15) );
  NOR2_X1 U71 ( .A1(n13), .A2(n15), .ZN(W_sw_arb_grant[3]) );
  INV_X1 U72 ( .A(n15), .ZN(n14) );
  INV_X1 U73 ( .A(W_sw_arb_req[3]), .ZN(n13) );
  NAND2_X1 U74 ( .A1(n14), .A2(n13), .ZN(n16) );
  NOR2_X1 U75 ( .A1(n101), .A2(n16), .ZN(W_sw_arb_grant[4]) );
  INV_X1 U76 ( .A(W_sw_arb_req[5]), .ZN(n18) );
  NOR4_X1 U77 ( .A1(W_sw_arb_req[4]), .A2(W_sw_arb_req[3]), .A3(n15), .A4(n18), 
        .ZN(W_sw_arb_grant[5]) );
  INV_X1 U78 ( .A(n16), .ZN(n17) );
  NAND3_X1 U79 ( .A1(n18), .A2(n101), .A3(n17), .ZN(n19) );
  NOR2_X1 U80 ( .A1(n20), .A2(n19), .ZN(W_sw_arb_grant[6]) );
  INV_X1 U81 ( .A(n19), .ZN(n21) );
  INV_X1 U82 ( .A(W_sw_arb_req[6]), .ZN(n20) );
  NAND2_X1 U83 ( .A1(n21), .A2(n20), .ZN(n22) );
  NOR2_X1 U84 ( .A1(n23), .A2(n22), .ZN(W_sw_arb_grant[7]) );
  INV_X1 U85 ( .A(n22), .ZN(n24) );
  INV_X1 U86 ( .A(W_sw_arb_req[7]), .ZN(n23) );
  NAND2_X1 U87 ( .A1(n24), .A2(n23), .ZN(n25) );
  INV_X1 U88 ( .A(W_sw_arb_req[8]), .ZN(n26) );
  NOR2_X1 U89 ( .A1(n25), .A2(n26), .ZN(W_sw_arb_grant[8]) );
  INV_X1 U90 ( .A(n25), .ZN(n27) );
  NAND2_X1 U91 ( .A1(n27), .A2(n26), .ZN(n28) );
  NOR2_X1 U92 ( .A1(n29), .A2(n28), .ZN(W_sw_arb_grant[9]) );
  INV_X1 U93 ( .A(n28), .ZN(n30) );
  INV_X1 U94 ( .A(W_sw_arb_req[9]), .ZN(n29) );
  NAND2_X1 U95 ( .A1(n30), .A2(n29), .ZN(n31) );
  NOR2_X1 U96 ( .A1(n111), .A2(n31), .ZN(W_sw_arb_grant[10]) );
  INV_X1 U97 ( .A(W_sw_arb_req[11]), .ZN(n32) );
  NOR3_X1 U98 ( .A1(n31), .A2(W_sw_arb_req[10]), .A3(n32), .ZN(
        W_sw_arb_grant[11]) );
  INV_X1 U99 ( .A(n31), .ZN(n33) );
  NAND3_X1 U100 ( .A1(n33), .A2(n111), .A3(n32), .ZN(n34) );
  INV_X1 U101 ( .A(W_sw_arb_req[12]), .ZN(n36) );
  NOR2_X1 U102 ( .A1(n34), .A2(n36), .ZN(W_sw_arb_grant[12]) );
  INV_X1 U103 ( .A(W_sw_arb_req[13]), .ZN(n35) );
  NOR3_X1 U104 ( .A1(W_sw_arb_req[12]), .A2(n34), .A3(n35), .ZN(
        W_sw_arb_grant[13]) );
  INV_X1 U105 ( .A(n34), .ZN(n37) );
  NOR2_X1 U106 ( .A1(n115), .A2(n10), .ZN(E_sw_arb_grant[0]) );
  INV_X1 U107 ( .A(E_sw_arb_req[2]), .ZN(n39) );
  NOR4_X1 U108 ( .A1(E_sw_arb_req[1]), .A2(E_sw_arb_req[0]), .A3(n10), .A4(n39), .ZN(E_sw_arb_grant[2]) );
  INV_X1 U109 ( .A(E_sw_arb_req[1]), .ZN(n38) );
  NAND4_X1 U110 ( .A1(n9), .A2(n115), .A3(n39), .A4(n38), .ZN(n42) );
  NOR2_X1 U111 ( .A1(n40), .A2(n42), .ZN(E_sw_arb_grant[3]) );
  INV_X1 U112 ( .A(n42), .ZN(n41) );
  INV_X1 U113 ( .A(E_sw_arb_req[3]), .ZN(n40) );
  NAND2_X1 U114 ( .A1(n41), .A2(n40), .ZN(n43) );
  NOR2_X1 U115 ( .A1(n99), .A2(n43), .ZN(E_sw_arb_grant[4]) );
  INV_X1 U116 ( .A(E_sw_arb_req[5]), .ZN(n45) );
  NOR4_X1 U117 ( .A1(E_sw_arb_req[4]), .A2(E_sw_arb_req[3]), .A3(n42), .A4(n45), .ZN(E_sw_arb_grant[5]) );
  INV_X1 U118 ( .A(n43), .ZN(n44) );
  NAND3_X1 U119 ( .A1(n45), .A2(n99), .A3(n44), .ZN(n46) );
  NOR2_X1 U120 ( .A1(n47), .A2(n46), .ZN(E_sw_arb_grant[6]) );
  INV_X1 U121 ( .A(n46), .ZN(n48) );
  INV_X1 U122 ( .A(E_sw_arb_req[6]), .ZN(n47) );
  NAND2_X1 U123 ( .A1(n48), .A2(n47), .ZN(n49) );
  NOR2_X1 U124 ( .A1(n50), .A2(n49), .ZN(E_sw_arb_grant[7]) );
  INV_X1 U125 ( .A(n49), .ZN(n51) );
  INV_X1 U126 ( .A(E_sw_arb_req[7]), .ZN(n50) );
  NAND2_X1 U127 ( .A1(n51), .A2(n50), .ZN(n52) );
  INV_X1 U128 ( .A(E_sw_arb_req[8]), .ZN(n53) );
  NOR2_X1 U129 ( .A1(n52), .A2(n53), .ZN(E_sw_arb_grant[8]) );
  INV_X1 U130 ( .A(n52), .ZN(n54) );
  NAND2_X1 U131 ( .A1(n54), .A2(n53), .ZN(n55) );
  NOR2_X1 U132 ( .A1(n56), .A2(n55), .ZN(E_sw_arb_grant[9]) );
  INV_X1 U133 ( .A(n55), .ZN(n57) );
  INV_X1 U134 ( .A(E_sw_arb_req[9]), .ZN(n56) );
  NAND2_X1 U135 ( .A1(n57), .A2(n56), .ZN(n58) );
  NOR2_X1 U136 ( .A1(n109), .A2(n58), .ZN(E_sw_arb_grant[10]) );
  INV_X1 U137 ( .A(E_sw_arb_req[11]), .ZN(n59) );
  NOR3_X1 U138 ( .A1(n58), .A2(E_sw_arb_req[10]), .A3(n59), .ZN(
        E_sw_arb_grant[11]) );
  INV_X1 U139 ( .A(n58), .ZN(n60) );
  NAND3_X1 U140 ( .A1(n60), .A2(n109), .A3(n59), .ZN(n61) );
  INV_X1 U141 ( .A(E_sw_arb_req[12]), .ZN(n63) );
  NOR2_X1 U142 ( .A1(n61), .A2(n63), .ZN(E_sw_arb_grant[12]) );
  INV_X1 U143 ( .A(E_sw_arb_req[13]), .ZN(n62) );
  NOR3_X1 U144 ( .A1(E_sw_arb_req[12]), .A2(n61), .A3(n62), .ZN(
        E_sw_arb_grant[13]) );
  INV_X1 U145 ( .A(n61), .ZN(n64) );
  NOR2_X1 U146 ( .A1(n118), .A2(n10), .ZN(S_sw_arb_grant[0]) );
  INV_X1 U147 ( .A(S_sw_arb_req[2]), .ZN(n66) );
  NOR4_X1 U148 ( .A1(S_sw_arb_req[1]), .A2(S_sw_arb_req[0]), .A3(n10), .A4(n66), .ZN(S_sw_arb_grant[2]) );
  INV_X1 U149 ( .A(S_sw_arb_req[1]), .ZN(n65) );
  NAND4_X1 U150 ( .A1(n9), .A2(n118), .A3(n66), .A4(n65), .ZN(n67) );
  NOR2_X1 U151 ( .A1(n98), .A2(n2), .ZN(S_sw_arb_grant[3]) );
  NOR2_X1 U152 ( .A1(n102), .A2(n68), .ZN(S_sw_arb_grant[4]) );
  INV_X1 U153 ( .A(S_sw_arb_req[5]), .ZN(n70) );
  NOR4_X1 U154 ( .A1(S_sw_arb_req[4]), .A2(S_sw_arb_req[3]), .A3(n2), .A4(n70), 
        .ZN(S_sw_arb_grant[5]) );
  INV_X1 U155 ( .A(n68), .ZN(n69) );
  NAND3_X1 U156 ( .A1(n70), .A2(n102), .A3(n69), .ZN(n71) );
  NOR2_X1 U157 ( .A1(n104), .A2(n71), .ZN(S_sw_arb_grant[6]) );
  NOR2_X1 U158 ( .A1(n106), .A2(n72), .ZN(S_sw_arb_grant[7]) );
  INV_X1 U159 ( .A(S_sw_arb_req[8]), .ZN(n79) );
  NOR2_X1 U160 ( .A1(n73), .A2(n79), .ZN(S_sw_arb_grant[8]) );
  INV_X1 U161 ( .A(n73), .ZN(n82) );
  NAND2_X1 U162 ( .A1(n82), .A2(n79), .ZN(n83) );
  NOR2_X1 U163 ( .A1(n108), .A2(n83), .ZN(S_sw_arb_grant[9]) );
  NOR2_X1 U164 ( .A1(n112), .A2(n84), .ZN(S_sw_arb_grant[10]) );
  INV_X1 U165 ( .A(S_sw_arb_req[11]), .ZN(n85) );
  NOR3_X1 U166 ( .A1(n84), .A2(S_sw_arb_req[10]), .A3(n85), .ZN(
        S_sw_arb_grant[11]) );
  INV_X1 U167 ( .A(n84), .ZN(n86) );
  NAND3_X1 U168 ( .A1(n86), .A2(n112), .A3(n85), .ZN(n87) );
  INV_X1 U169 ( .A(S_sw_arb_req[12]), .ZN(n89) );
  NOR2_X1 U170 ( .A1(n87), .A2(n89), .ZN(S_sw_arb_grant[12]) );
  INV_X1 U171 ( .A(S_sw_arb_req[13]), .ZN(n88) );
  INV_X1 U172 ( .A(n87), .ZN(n90) );
  NOR2_X1 U173 ( .A1(n116), .A2(n10), .ZN(N_sw_arb_grant[0]) );
  INV_X1 U174 ( .A(N_sw_arb_req[0]), .ZN(n92) );
  INV_X1 U175 ( .A(N_sw_arb_req[1]), .ZN(n91) );
  NAND2_X1 U176 ( .A1(n92), .A2(n91), .ZN(n94) );
  INV_X1 U177 ( .A(N_sw_arb_req[2]), .ZN(n93) );
  NOR3_X1 U178 ( .A1(n94), .A2(n10), .A3(n93), .ZN(N_sw_arb_grant[2]) );
  INV_X1 U179 ( .A(n94), .ZN(n95) );
  NAND3_X1 U180 ( .A1(n93), .A2(n8), .A3(n95), .ZN(n78) );
endmodule


module ram_dp_ar_aw_1 ( address_0, data_0, cs_0, we_0, oe_0, address_1, data_1, 
        cs_1, we_1, oe_1 );
  input [2:0] address_0;
  inout [11:0] data_0;
  input [2:0] address_1;
  inout [11:0] data_1;
  input cs_0, we_0, oe_0, cs_1, we_1, oe_1;
  wire   N37, N38, N39, N40, N41, N42, \mem[0][11] , \mem[0][10] , \mem[0][9] ,
         \mem[0][8] , \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , \mem[1][11] ,
         \mem[1][10] , \mem[1][9] , \mem[1][8] , \mem[1][7] , \mem[1][6] ,
         \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] , \mem[1][1] ,
         \mem[1][0] , \mem[2][11] , \mem[2][10] , \mem[2][9] , \mem[2][8] ,
         \mem[2][7] , \mem[2][6] , \mem[2][5] , \mem[2][4] , \mem[2][3] ,
         \mem[2][2] , \mem[2][1] , \mem[2][0] , \mem[3][11] , \mem[3][10] ,
         \mem[3][9] , \mem[3][8] , \mem[3][7] , \mem[3][6] , \mem[3][5] ,
         \mem[3][4] , \mem[3][3] , \mem[3][2] , \mem[3][1] , \mem[3][0] ,
         \mem[4][11] , \mem[4][10] , \mem[4][9] , \mem[4][8] , \mem[4][7] ,
         \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] , \mem[4][2] ,
         \mem[4][1] , \mem[4][0] , \mem[5][11] , \mem[5][10] , \mem[5][9] ,
         \mem[5][8] , \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] ,
         \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[6][11] ,
         \mem[6][10] , \mem[6][9] , \mem[6][8] , \mem[6][7] , \mem[6][6] ,
         \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] , \mem[6][1] ,
         \mem[6][0] , \mem[7][11] , \mem[7][10] , \mem[7][9] , \mem[7][8] ,
         \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] , \mem[7][3] ,
         \mem[7][2] , \mem[7][1] , \mem[7][0] , N47, N60, N73, N86, N99, N112,
         N125, N138, N157, N158, N159, N160, N161, N162, N163, N164, N165,
         N166, N167, N168, N173, N174, N175, N176, N177, N178, N179, N180,
         N181, N182, N183, N184, n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n18, n21, n23, n24, n25, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551;
  assign N37 = address_0[0];
  assign N38 = address_0[1];
  assign N39 = address_0[2];
  assign N40 = address_1[0];
  assign N41 = address_1[1];
  assign N42 = address_1[2];

  OAI33_X1 U40 ( .A1(n531), .A2(n18), .A3(n530), .B1(n533), .B2(n21), .B3(n532), .ZN(N99) );
  OAI33_X1 U41 ( .A1(n23), .A2(N41), .A3(N40), .B1(n24), .B2(N38), .B3(N37), 
        .ZN(N86) );
  OAI33_X1 U42 ( .A1(n23), .A2(N41), .A3(n530), .B1(n24), .B2(N38), .B3(n532), 
        .ZN(N73) );
  OAI33_X1 U43 ( .A1(n23), .A2(N40), .A3(n531), .B1(n24), .B2(N37), .B3(n533), 
        .ZN(N60) );
  OAI33_X1 U44 ( .A1(n23), .A2(n530), .A3(n531), .B1(n24), .B2(n532), .B3(n533), .ZN(N47) );
  OAI33_X1 U48 ( .A1(n18), .A2(N41), .A3(N40), .B1(n21), .B2(N38), .B3(N37), 
        .ZN(N138) );
  OAI33_X1 U49 ( .A1(n530), .A2(N41), .A3(n18), .B1(n532), .B2(N38), .B3(n21), 
        .ZN(N125) );
  OAI33_X1 U52 ( .A1(n531), .A2(N40), .A3(n18), .B1(n533), .B2(N37), .B3(n21), 
        .ZN(N112) );
  TBUF_X1 \data_0_tri[0]  ( .A(N168), .EN(n45), .Z(data_0[0]) );
  TBUF_X1 \data_0_tri[1]  ( .A(N167), .EN(n45), .Z(data_0[1]) );
  TBUF_X1 \data_0_tri[2]  ( .A(N166), .EN(n45), .Z(data_0[2]) );
  TBUF_X1 \data_0_tri[3]  ( .A(N165), .EN(n45), .Z(data_0[3]) );
  TBUF_X1 \data_0_tri[4]  ( .A(N164), .EN(n45), .Z(data_0[4]) );
  TBUF_X1 \data_0_tri[5]  ( .A(N163), .EN(n45), .Z(data_0[5]) );
  TBUF_X1 \data_0_tri[6]  ( .A(N162), .EN(n45), .Z(data_0[6]) );
  TBUF_X1 \data_0_tri[7]  ( .A(N161), .EN(n45), .Z(data_0[7]) );
  TBUF_X1 \data_1_tri[0]  ( .A(N184), .EN(n50), .Z(data_1[0]) );
  TBUF_X1 \data_1_tri[1]  ( .A(N183), .EN(n50), .Z(data_1[1]) );
  TBUF_X1 \data_1_tri[2]  ( .A(N182), .EN(n50), .Z(data_1[2]) );
  TBUF_X1 \data_1_tri[3]  ( .A(N181), .EN(n50), .Z(data_1[3]) );
  TBUF_X1 \data_1_tri[4]  ( .A(N180), .EN(n50), .Z(data_1[4]) );
  TBUF_X1 \data_1_tri[5]  ( .A(N179), .EN(n50), .Z(data_1[5]) );
  TBUF_X1 \data_1_tri[6]  ( .A(N178), .EN(n50), .Z(data_1[6]) );
  TBUF_X1 \data_1_tri[7]  ( .A(N177), .EN(n50), .Z(data_1[7]) );
  DLH_X1 \mem_reg[1][11]  ( .G(n378), .D(n534), .Q(\mem[1][11] ) );
  DLH_X1 \mem_reg[1][10]  ( .G(n378), .D(n535), .Q(\mem[1][10] ) );
  DLH_X1 \mem_reg[1][9]  ( .G(n378), .D(n536), .Q(\mem[1][9] ) );
  DLH_X1 \mem_reg[1][8]  ( .G(n378), .D(n537), .Q(\mem[1][8] ) );
  DLH_X1 \mem_reg[1][7]  ( .G(n378), .D(n538), .Q(\mem[1][7] ) );
  DLH_X1 \mem_reg[1][6]  ( .G(n378), .D(n539), .Q(\mem[1][6] ) );
  DLH_X1 \mem_reg[1][5]  ( .G(n378), .D(n540), .Q(\mem[1][5] ) );
  DLH_X1 \mem_reg[1][4]  ( .G(n378), .D(n541), .Q(\mem[1][4] ) );
  DLH_X1 \mem_reg[1][3]  ( .G(n378), .D(n542), .Q(\mem[1][3] ) );
  DLH_X1 \mem_reg[1][2]  ( .G(n378), .D(n543), .Q(\mem[1][2] ) );
  DLH_X1 \mem_reg[1][1]  ( .G(n378), .D(n544), .Q(\mem[1][1] ) );
  DLH_X1 \mem_reg[1][0]  ( .G(n378), .D(n545), .Q(\mem[1][0] ) );
  DLH_X1 \mem_reg[6][11]  ( .G(n377), .D(n534), .Q(\mem[6][11] ) );
  DLH_X1 \mem_reg[6][10]  ( .G(n377), .D(n535), .Q(\mem[6][10] ) );
  DLH_X1 \mem_reg[6][9]  ( .G(n377), .D(n536), .Q(\mem[6][9] ) );
  DLH_X1 \mem_reg[6][8]  ( .G(n377), .D(n537), .Q(\mem[6][8] ) );
  DLH_X1 \mem_reg[6][7]  ( .G(n377), .D(n538), .Q(\mem[6][7] ) );
  DLH_X1 \mem_reg[6][6]  ( .G(n377), .D(n539), .Q(\mem[6][6] ) );
  DLH_X1 \mem_reg[6][5]  ( .G(n377), .D(n540), .Q(\mem[6][5] ) );
  DLH_X1 \mem_reg[6][4]  ( .G(n377), .D(n541), .Q(\mem[6][4] ) );
  DLH_X1 \mem_reg[6][3]  ( .G(n377), .D(n542), .Q(\mem[6][3] ) );
  DLH_X1 \mem_reg[6][2]  ( .G(n377), .D(n543), .Q(\mem[6][2] ) );
  DLH_X1 \mem_reg[6][1]  ( .G(n377), .D(n544), .Q(\mem[6][1] ) );
  DLH_X1 \mem_reg[6][0]  ( .G(n377), .D(n545), .Q(\mem[6][0] ) );
  DLH_X1 \mem_reg[3][11]  ( .G(n376), .D(n534), .Q(\mem[3][11] ) );
  DLH_X1 \mem_reg[3][10]  ( .G(n376), .D(n535), .Q(\mem[3][10] ) );
  DLH_X1 \mem_reg[3][9]  ( .G(n376), .D(n536), .Q(\mem[3][9] ) );
  DLH_X1 \mem_reg[3][8]  ( .G(n376), .D(n537), .Q(\mem[3][8] ) );
  DLH_X1 \mem_reg[3][7]  ( .G(n376), .D(n538), .Q(\mem[3][7] ) );
  DLH_X1 \mem_reg[3][6]  ( .G(n376), .D(n539), .Q(\mem[3][6] ) );
  DLH_X1 \mem_reg[3][5]  ( .G(n376), .D(n540), .Q(\mem[3][5] ) );
  DLH_X1 \mem_reg[3][4]  ( .G(n376), .D(n541), .Q(\mem[3][4] ) );
  DLH_X1 \mem_reg[3][3]  ( .G(n376), .D(n542), .Q(\mem[3][3] ) );
  DLH_X1 \mem_reg[3][2]  ( .G(n376), .D(n543), .Q(\mem[3][2] ) );
  DLH_X1 \mem_reg[3][1]  ( .G(n376), .D(n544), .Q(\mem[3][1] ) );
  DLH_X1 \mem_reg[3][0]  ( .G(n376), .D(n545), .Q(\mem[3][0] ) );
  DLH_X1 \mem_reg[4][11]  ( .G(n375), .D(n534), .Q(\mem[4][11] ) );
  DLH_X1 \mem_reg[4][10]  ( .G(n375), .D(n535), .Q(\mem[4][10] ) );
  DLH_X1 \mem_reg[4][9]  ( .G(n375), .D(n536), .Q(\mem[4][9] ) );
  DLH_X1 \mem_reg[4][8]  ( .G(n375), .D(n537), .Q(\mem[4][8] ) );
  DLH_X1 \mem_reg[4][7]  ( .G(n375), .D(n538), .Q(\mem[4][7] ) );
  DLH_X1 \mem_reg[4][6]  ( .G(n375), .D(n539), .Q(\mem[4][6] ) );
  DLH_X1 \mem_reg[4][5]  ( .G(n375), .D(n540), .Q(\mem[4][5] ) );
  DLH_X1 \mem_reg[4][4]  ( .G(n375), .D(n541), .Q(\mem[4][4] ) );
  DLH_X1 \mem_reg[4][3]  ( .G(n375), .D(n542), .Q(\mem[4][3] ) );
  DLH_X1 \mem_reg[4][2]  ( .G(n375), .D(n543), .Q(\mem[4][2] ) );
  DLH_X1 \mem_reg[4][1]  ( .G(n375), .D(n544), .Q(\mem[4][1] ) );
  DLH_X1 \mem_reg[4][0]  ( .G(n375), .D(n545), .Q(\mem[4][0] ) );
  DLH_X1 \mem_reg[2][11]  ( .G(n374), .D(n534), .Q(\mem[2][11] ) );
  DLH_X1 \mem_reg[2][10]  ( .G(n374), .D(n535), .Q(\mem[2][10] ) );
  DLH_X1 \mem_reg[2][9]  ( .G(n374), .D(n536), .Q(\mem[2][9] ) );
  DLH_X1 \mem_reg[2][8]  ( .G(n374), .D(n537), .Q(\mem[2][8] ) );
  DLH_X1 \mem_reg[2][7]  ( .G(n374), .D(n538), .Q(\mem[2][7] ) );
  DLH_X1 \mem_reg[2][6]  ( .G(n374), .D(n539), .Q(\mem[2][6] ) );
  DLH_X1 \mem_reg[2][5]  ( .G(n374), .D(n540), .Q(\mem[2][5] ) );
  DLH_X1 \mem_reg[2][4]  ( .G(n374), .D(n541), .Q(\mem[2][4] ) );
  DLH_X1 \mem_reg[2][3]  ( .G(n374), .D(n542), .Q(\mem[2][3] ) );
  DLH_X1 \mem_reg[2][2]  ( .G(n374), .D(n543), .Q(\mem[2][2] ) );
  DLH_X1 \mem_reg[2][1]  ( .G(n374), .D(n544), .Q(\mem[2][1] ) );
  DLH_X1 \mem_reg[2][0]  ( .G(n374), .D(n545), .Q(\mem[2][0] ) );
  DLH_X1 \mem_reg[5][11]  ( .G(n373), .D(n534), .Q(\mem[5][11] ) );
  DLH_X1 \mem_reg[5][10]  ( .G(n373), .D(n535), .Q(\mem[5][10] ) );
  DLH_X1 \mem_reg[5][9]  ( .G(n373), .D(n536), .Q(\mem[5][9] ) );
  DLH_X1 \mem_reg[5][8]  ( .G(n373), .D(n537), .Q(\mem[5][8] ) );
  DLH_X1 \mem_reg[5][7]  ( .G(n373), .D(n538), .Q(\mem[5][7] ) );
  DLH_X1 \mem_reg[5][6]  ( .G(n373), .D(n539), .Q(\mem[5][6] ) );
  DLH_X1 \mem_reg[5][5]  ( .G(n373), .D(n540), .Q(\mem[5][5] ) );
  DLH_X1 \mem_reg[5][4]  ( .G(n373), .D(n541), .Q(\mem[5][4] ) );
  DLH_X1 \mem_reg[5][3]  ( .G(n373), .D(n542), .Q(\mem[5][3] ) );
  DLH_X1 \mem_reg[5][2]  ( .G(n373), .D(n543), .Q(\mem[5][2] ) );
  DLH_X1 \mem_reg[5][1]  ( .G(n373), .D(n544), .Q(\mem[5][1] ) );
  DLH_X1 \mem_reg[5][0]  ( .G(n373), .D(n545), .Q(\mem[5][0] ) );
  DLH_X1 \mem_reg[0][11]  ( .G(n372), .D(n534), .Q(\mem[0][11] ) );
  DLH_X1 \mem_reg[0][10]  ( .G(n372), .D(n535), .Q(\mem[0][10] ) );
  DLH_X1 \mem_reg[0][9]  ( .G(n372), .D(n536), .Q(\mem[0][9] ) );
  DLH_X1 \mem_reg[0][8]  ( .G(n372), .D(n537), .Q(\mem[0][8] ) );
  DLH_X1 \mem_reg[0][7]  ( .G(n372), .D(n538), .Q(\mem[0][7] ) );
  DLH_X1 \mem_reg[0][6]  ( .G(n372), .D(n539), .Q(\mem[0][6] ) );
  DLH_X1 \mem_reg[0][5]  ( .G(n372), .D(n540), .Q(\mem[0][5] ) );
  DLH_X1 \mem_reg[0][4]  ( .G(n372), .D(n541), .Q(\mem[0][4] ) );
  DLH_X1 \mem_reg[0][3]  ( .G(n372), .D(n542), .Q(\mem[0][3] ) );
  DLH_X1 \mem_reg[0][2]  ( .G(n372), .D(n543), .Q(\mem[0][2] ) );
  DLH_X1 \mem_reg[0][1]  ( .G(n372), .D(n544), .Q(\mem[0][1] ) );
  DLH_X1 \mem_reg[0][0]  ( .G(n372), .D(n545), .Q(\mem[0][0] ) );
  DLH_X1 \mem_reg[7][11]  ( .G(n371), .D(n534), .Q(\mem[7][11] ) );
  DLH_X1 \mem_reg[7][10]  ( .G(n371), .D(n535), .Q(\mem[7][10] ) );
  DLH_X1 \mem_reg[7][9]  ( .G(n371), .D(n536), .Q(\mem[7][9] ) );
  DLH_X1 \mem_reg[7][8]  ( .G(n371), .D(n537), .Q(\mem[7][8] ) );
  DLH_X1 \mem_reg[7][7]  ( .G(n371), .D(n538), .Q(\mem[7][7] ) );
  DLH_X1 \mem_reg[7][6]  ( .G(n371), .D(n539), .Q(\mem[7][6] ) );
  DLH_X1 \mem_reg[7][5]  ( .G(n371), .D(n540), .Q(\mem[7][5] ) );
  DLH_X1 \mem_reg[7][4]  ( .G(n371), .D(n541), .Q(\mem[7][4] ) );
  DLH_X1 \mem_reg[7][3]  ( .G(n371), .D(n542), .Q(\mem[7][3] ) );
  DLH_X1 \mem_reg[7][2]  ( .G(n371), .D(n543), .Q(\mem[7][2] ) );
  DLH_X1 \mem_reg[7][1]  ( .G(n371), .D(n544), .Q(\mem[7][1] ) );
  DLH_X1 \mem_reg[7][0]  ( .G(n371), .D(n545), .Q(\mem[7][0] ) );
  CLKBUF_X1 U2 ( .A(N47), .Z(n371) );
  CLKBUF_X1 U3 ( .A(N138), .Z(n372) );
  CLKBUF_X1 U4 ( .A(N73), .Z(n373) );
  CLKBUF_X1 U5 ( .A(N112), .Z(n374) );
  CLKBUF_X1 U6 ( .A(N86), .Z(n375) );
  CLKBUF_X1 U7 ( .A(N99), .Z(n376) );
  CLKBUF_X1 U8 ( .A(N60), .Z(n377) );
  CLKBUF_X1 U9 ( .A(N125), .Z(n378) );
  BUF_X1 U10 ( .A(N40), .Z(n529) );
  BUF_X1 U11 ( .A(N40), .Z(n528) );
  BUF_X1 U12 ( .A(N40), .Z(n527) );
  BUF_X1 U13 ( .A(N41), .Z(n526) );
  BUF_X1 U14 ( .A(N37), .Z(n453) );
  BUF_X1 U15 ( .A(N37), .Z(n452) );
  BUF_X1 U16 ( .A(N38), .Z(n451) );
  INV_X1 U17 ( .A(n50), .ZN(n546) );
  INV_X1 U18 ( .A(n45), .ZN(n548) );
  INV_X1 U19 ( .A(n25), .ZN(n550) );
  NAND3_X1 U20 ( .A1(cs_1), .A2(n547), .A3(oe_1), .ZN(n50) );
  INV_X1 U21 ( .A(we_1), .ZN(n547) );
  OAI22_X1 U22 ( .A1(1'b1), .A2(n546), .B1(n51), .B2(n50), .ZN(data_1[8]) );
  NAND2_X1 U23 ( .A1(N176), .A2(n546), .ZN(n51) );
  OAI22_X1 U24 ( .A1(1'b1), .A2(n546), .B1(n50), .B2(n49), .ZN(data_1[9]) );
  NAND2_X1 U25 ( .A1(N175), .A2(n546), .ZN(n49) );
  OAI22_X1 U26 ( .A1(1'b1), .A2(n546), .B1(n50), .B2(n48), .ZN(data_1[10]) );
  NAND2_X1 U27 ( .A1(N174), .A2(n546), .ZN(n48) );
  OAI22_X1 U28 ( .A1(1'b1), .A2(n546), .B1(n50), .B2(n47), .ZN(data_1[11]) );
  NAND2_X1 U29 ( .A1(N173), .A2(n546), .ZN(n47) );
  INV_X1 U30 ( .A(N40), .ZN(n530) );
  INV_X1 U31 ( .A(N41), .ZN(n531) );
  AND3_X1 U32 ( .A1(cs_1), .A2(n25), .A3(we_1), .ZN(n2) );
  NAND3_X1 U33 ( .A1(cs_0), .A2(n551), .A3(oe_0), .ZN(n45) );
  INV_X1 U34 ( .A(we_0), .ZN(n551) );
  NAND2_X1 U35 ( .A1(N42), .A2(n2), .ZN(n23) );
  NAND2_X1 U36 ( .A1(N39), .A2(n550), .ZN(n24) );
  NAND2_X1 U37 ( .A1(we_0), .A2(cs_0), .ZN(n25) );
  INV_X1 U38 ( .A(n6), .ZN(n537) );
  AOI22_X1 U39 ( .A1(data_1[8]), .A2(n2), .B1(data_0[8]), .B2(n550), .ZN(n6)
         );
  OAI22_X1 U45 ( .A1(1'b1), .A2(n548), .B1(n46), .B2(n45), .ZN(data_0[8]) );
  NAND2_X1 U46 ( .A1(N160), .A2(n548), .ZN(n46) );
  INV_X1 U47 ( .A(n5), .ZN(n536) );
  AOI22_X1 U50 ( .A1(data_1[9]), .A2(n2), .B1(data_0[9]), .B2(n550), .ZN(n5)
         );
  OAI22_X1 U51 ( .A1(1'b1), .A2(n548), .B1(n45), .B2(n44), .ZN(data_0[9]) );
  NAND2_X1 U53 ( .A1(N159), .A2(n548), .ZN(n44) );
  INV_X1 U54 ( .A(n4), .ZN(n535) );
  AOI22_X1 U55 ( .A1(data_1[10]), .A2(n2), .B1(data_0[10]), .B2(n550), .ZN(n4)
         );
  OAI22_X1 U56 ( .A1(1'b1), .A2(n548), .B1(n45), .B2(n43), .ZN(data_0[10]) );
  NAND2_X1 U57 ( .A1(N158), .A2(n548), .ZN(n43) );
  INV_X1 U58 ( .A(n1), .ZN(n534) );
  AOI22_X1 U59 ( .A1(data_1[11]), .A2(n2), .B1(data_0[11]), .B2(n550), .ZN(n1)
         );
  OAI22_X1 U60 ( .A1(1'b1), .A2(n548), .B1(n45), .B2(n42), .ZN(data_0[11]) );
  NAND2_X1 U61 ( .A1(N157), .A2(n548), .ZN(n42) );
  INV_X1 U62 ( .A(n14), .ZN(n545) );
  AOI22_X1 U63 ( .A1(data_1[0]), .A2(n2), .B1(data_0[0]), .B2(n550), .ZN(n14)
         );
  INV_X1 U64 ( .A(n13), .ZN(n544) );
  AOI22_X1 U65 ( .A1(data_1[1]), .A2(n2), .B1(data_0[1]), .B2(n550), .ZN(n13)
         );
  INV_X1 U66 ( .A(n12), .ZN(n543) );
  AOI22_X1 U67 ( .A1(data_1[2]), .A2(n2), .B1(data_0[2]), .B2(n550), .ZN(n12)
         );
  INV_X1 U69 ( .A(n11), .ZN(n542) );
  AOI22_X1 U70 ( .A1(data_1[3]), .A2(n2), .B1(data_0[3]), .B2(n550), .ZN(n11)
         );
  INV_X1 U71 ( .A(n10), .ZN(n541) );
  AOI22_X1 U72 ( .A1(data_1[4]), .A2(n2), .B1(data_0[4]), .B2(n550), .ZN(n10)
         );
  INV_X1 U73 ( .A(n9), .ZN(n540) );
  AOI22_X1 U74 ( .A1(data_1[5]), .A2(n2), .B1(data_0[5]), .B2(n550), .ZN(n9)
         );
  INV_X1 U75 ( .A(n8), .ZN(n539) );
  AOI22_X1 U76 ( .A1(data_1[6]), .A2(n2), .B1(data_0[6]), .B2(n550), .ZN(n8)
         );
  INV_X1 U77 ( .A(n7), .ZN(n538) );
  AOI22_X1 U78 ( .A1(data_1[7]), .A2(n2), .B1(data_0[7]), .B2(n550), .ZN(n7)
         );
  NAND2_X1 U79 ( .A1(n2), .A2(n549), .ZN(n18) );
  INV_X1 U80 ( .A(N42), .ZN(n549) );
  INV_X1 U81 ( .A(N37), .ZN(n532) );
  INV_X1 U82 ( .A(N38), .ZN(n533) );
  OR2_X1 U83 ( .A1(n25), .A2(N39), .ZN(n21) );
  MUX2_X1 U84 ( .A(\mem[6][0] ), .B(\mem[7][0] ), .S(N37), .Z(n379) );
  MUX2_X1 U85 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .S(N37), .Z(n380) );
  MUX2_X1 U86 ( .A(n380), .B(n379), .S(N38), .Z(n381) );
  MUX2_X1 U87 ( .A(\mem[2][0] ), .B(\mem[3][0] ), .S(N37), .Z(n382) );
  MUX2_X1 U88 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .S(N37), .Z(n383) );
  MUX2_X1 U89 ( .A(n383), .B(n382), .S(N38), .Z(n384) );
  MUX2_X1 U90 ( .A(n384), .B(n381), .S(N39), .Z(N168) );
  MUX2_X1 U91 ( .A(\mem[6][1] ), .B(\mem[7][1] ), .S(N37), .Z(n385) );
  MUX2_X1 U92 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .S(N37), .Z(n386) );
  MUX2_X1 U93 ( .A(n386), .B(n385), .S(N38), .Z(n387) );
  MUX2_X1 U94 ( .A(\mem[2][1] ), .B(\mem[3][1] ), .S(n453), .Z(n388) );
  MUX2_X1 U95 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .S(n452), .Z(n389) );
  MUX2_X1 U96 ( .A(n389), .B(n388), .S(N38), .Z(n390) );
  MUX2_X1 U97 ( .A(n390), .B(n387), .S(N39), .Z(N167) );
  MUX2_X1 U98 ( .A(\mem[6][2] ), .B(\mem[7][2] ), .S(n452), .Z(n391) );
  MUX2_X1 U99 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .S(N37), .Z(n392) );
  MUX2_X1 U100 ( .A(n392), .B(n391), .S(N38), .Z(n393) );
  MUX2_X1 U101 ( .A(\mem[2][2] ), .B(\mem[3][2] ), .S(n453), .Z(n394) );
  MUX2_X1 U102 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .S(n452), .Z(n395) );
  MUX2_X1 U103 ( .A(n395), .B(n394), .S(N38), .Z(n396) );
  MUX2_X1 U104 ( .A(n396), .B(n393), .S(N39), .Z(N166) );
  MUX2_X1 U105 ( .A(\mem[6][3] ), .B(\mem[7][3] ), .S(N37), .Z(n397) );
  MUX2_X1 U106 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .S(N37), .Z(n398) );
  MUX2_X1 U107 ( .A(n398), .B(n397), .S(n451), .Z(n399) );
  MUX2_X1 U108 ( .A(\mem[2][3] ), .B(\mem[3][3] ), .S(n453), .Z(n400) );
  MUX2_X1 U109 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .S(n452), .Z(n401) );
  MUX2_X1 U110 ( .A(n401), .B(n400), .S(N38), .Z(n402) );
  MUX2_X1 U111 ( .A(n402), .B(n399), .S(N39), .Z(N165) );
  MUX2_X1 U112 ( .A(\mem[6][4] ), .B(\mem[7][4] ), .S(N37), .Z(n403) );
  MUX2_X1 U113 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .S(n453), .Z(n404) );
  MUX2_X1 U114 ( .A(n404), .B(n403), .S(n451), .Z(n405) );
  MUX2_X1 U115 ( .A(\mem[2][4] ), .B(\mem[3][4] ), .S(n452), .Z(n406) );
  MUX2_X1 U116 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .S(N37), .Z(n407) );
  MUX2_X1 U117 ( .A(n407), .B(n406), .S(N38), .Z(n408) );
  MUX2_X1 U118 ( .A(n408), .B(n405), .S(N39), .Z(N164) );
  MUX2_X1 U119 ( .A(\mem[6][5] ), .B(\mem[7][5] ), .S(n453), .Z(n409) );
  MUX2_X1 U120 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .S(n452), .Z(n410) );
  MUX2_X1 U121 ( .A(n410), .B(n409), .S(n451), .Z(n411) );
  MUX2_X1 U122 ( .A(\mem[2][5] ), .B(\mem[3][5] ), .S(N37), .Z(n412) );
  MUX2_X1 U123 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .S(n453), .Z(n413) );
  MUX2_X1 U124 ( .A(n413), .B(n412), .S(N38), .Z(n414) );
  MUX2_X1 U125 ( .A(n414), .B(n411), .S(N39), .Z(N163) );
  MUX2_X1 U126 ( .A(\mem[6][6] ), .B(\mem[7][6] ), .S(n452), .Z(n415) );
  MUX2_X1 U127 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .S(n452), .Z(n416) );
  MUX2_X1 U128 ( .A(n416), .B(n415), .S(n451), .Z(n417) );
  MUX2_X1 U129 ( .A(\mem[2][6] ), .B(\mem[3][6] ), .S(n452), .Z(n418) );
  MUX2_X1 U130 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .S(n452), .Z(n419) );
  MUX2_X1 U131 ( .A(n419), .B(n418), .S(n451), .Z(n420) );
  MUX2_X1 U132 ( .A(n420), .B(n417), .S(N39), .Z(N162) );
  MUX2_X1 U133 ( .A(\mem[6][7] ), .B(\mem[7][7] ), .S(n452), .Z(n421) );
  MUX2_X1 U134 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .S(n452), .Z(n422) );
  MUX2_X1 U135 ( .A(n422), .B(n421), .S(n451), .Z(n423) );
  MUX2_X1 U136 ( .A(\mem[2][7] ), .B(\mem[3][7] ), .S(n452), .Z(n424) );
  MUX2_X1 U137 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .S(n452), .Z(n425) );
  MUX2_X1 U138 ( .A(n425), .B(n424), .S(n451), .Z(n426) );
  MUX2_X1 U139 ( .A(n426), .B(n423), .S(N39), .Z(N161) );
  MUX2_X1 U140 ( .A(\mem[6][8] ), .B(\mem[7][8] ), .S(n452), .Z(n427) );
  MUX2_X1 U141 ( .A(\mem[4][8] ), .B(\mem[5][8] ), .S(n452), .Z(n428) );
  MUX2_X1 U142 ( .A(n428), .B(n427), .S(n451), .Z(n429) );
  MUX2_X1 U143 ( .A(\mem[2][8] ), .B(\mem[3][8] ), .S(n452), .Z(n430) );
  MUX2_X1 U144 ( .A(\mem[0][8] ), .B(\mem[1][8] ), .S(n452), .Z(n431) );
  MUX2_X1 U145 ( .A(n431), .B(n430), .S(n451), .Z(n432) );
  MUX2_X1 U146 ( .A(n432), .B(n429), .S(N39), .Z(N160) );
  MUX2_X1 U147 ( .A(\mem[6][9] ), .B(\mem[7][9] ), .S(n453), .Z(n433) );
  MUX2_X1 U148 ( .A(\mem[4][9] ), .B(\mem[5][9] ), .S(n453), .Z(n434) );
  MUX2_X1 U149 ( .A(n434), .B(n433), .S(n451), .Z(n435) );
  MUX2_X1 U150 ( .A(\mem[2][9] ), .B(\mem[3][9] ), .S(n453), .Z(n436) );
  MUX2_X1 U151 ( .A(\mem[0][9] ), .B(\mem[1][9] ), .S(n453), .Z(n437) );
  MUX2_X1 U152 ( .A(n437), .B(n436), .S(n451), .Z(n438) );
  MUX2_X1 U153 ( .A(n438), .B(n435), .S(N39), .Z(N159) );
  MUX2_X1 U154 ( .A(\mem[6][10] ), .B(\mem[7][10] ), .S(n453), .Z(n439) );
  MUX2_X1 U155 ( .A(\mem[4][10] ), .B(\mem[5][10] ), .S(n453), .Z(n440) );
  MUX2_X1 U156 ( .A(n440), .B(n439), .S(n451), .Z(n441) );
  MUX2_X1 U157 ( .A(\mem[2][10] ), .B(\mem[3][10] ), .S(n453), .Z(n442) );
  MUX2_X1 U158 ( .A(\mem[0][10] ), .B(\mem[1][10] ), .S(n453), .Z(n443) );
  MUX2_X1 U159 ( .A(n443), .B(n442), .S(n451), .Z(n444) );
  MUX2_X1 U160 ( .A(n444), .B(n441), .S(N39), .Z(N158) );
  MUX2_X1 U161 ( .A(\mem[6][11] ), .B(\mem[7][11] ), .S(n453), .Z(n445) );
  MUX2_X1 U162 ( .A(\mem[4][11] ), .B(\mem[5][11] ), .S(n453), .Z(n446) );
  MUX2_X1 U163 ( .A(n446), .B(n445), .S(n451), .Z(n447) );
  MUX2_X1 U164 ( .A(\mem[2][11] ), .B(\mem[3][11] ), .S(n453), .Z(n448) );
  MUX2_X1 U165 ( .A(\mem[0][11] ), .B(\mem[1][11] ), .S(n453), .Z(n449) );
  MUX2_X1 U166 ( .A(n449), .B(n448), .S(n451), .Z(n450) );
  MUX2_X1 U167 ( .A(n450), .B(n447), .S(N39), .Z(N157) );
  MUX2_X1 U168 ( .A(\mem[6][0] ), .B(\mem[7][0] ), .S(N40), .Z(n454) );
  MUX2_X1 U169 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .S(N40), .Z(n455) );
  MUX2_X1 U170 ( .A(n455), .B(n454), .S(N41), .Z(n456) );
  MUX2_X1 U171 ( .A(\mem[2][0] ), .B(\mem[3][0] ), .S(N40), .Z(n457) );
  MUX2_X1 U172 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .S(N40), .Z(n458) );
  MUX2_X1 U173 ( .A(n458), .B(n457), .S(N41), .Z(n459) );
  MUX2_X1 U174 ( .A(n459), .B(n456), .S(N42), .Z(N184) );
  MUX2_X1 U175 ( .A(\mem[6][1] ), .B(\mem[7][1] ), .S(N40), .Z(n460) );
  MUX2_X1 U176 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .S(N40), .Z(n461) );
  MUX2_X1 U177 ( .A(n461), .B(n460), .S(N41), .Z(n462) );
  MUX2_X1 U178 ( .A(\mem[2][1] ), .B(\mem[3][1] ), .S(N40), .Z(n463) );
  MUX2_X1 U179 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .S(N40), .Z(n464) );
  MUX2_X1 U180 ( .A(n464), .B(n463), .S(N41), .Z(n465) );
  MUX2_X1 U181 ( .A(n465), .B(n462), .S(N42), .Z(N183) );
  MUX2_X1 U182 ( .A(\mem[6][2] ), .B(\mem[7][2] ), .S(N40), .Z(n466) );
  MUX2_X1 U183 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .S(N40), .Z(n467) );
  MUX2_X1 U184 ( .A(n467), .B(n466), .S(N41), .Z(n468) );
  MUX2_X1 U185 ( .A(\mem[2][2] ), .B(\mem[3][2] ), .S(N40), .Z(n469) );
  MUX2_X1 U186 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .S(N40), .Z(n470) );
  MUX2_X1 U187 ( .A(n470), .B(n469), .S(N41), .Z(n471) );
  MUX2_X1 U188 ( .A(n471), .B(n468), .S(N42), .Z(N182) );
  MUX2_X1 U189 ( .A(\mem[6][3] ), .B(\mem[7][3] ), .S(n527), .Z(n472) );
  MUX2_X1 U190 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .S(n527), .Z(n473) );
  MUX2_X1 U191 ( .A(n473), .B(n472), .S(N41), .Z(n474) );
  MUX2_X1 U192 ( .A(\mem[2][3] ), .B(\mem[3][3] ), .S(n527), .Z(n475) );
  MUX2_X1 U193 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .S(n527), .Z(n476) );
  MUX2_X1 U194 ( .A(n476), .B(n475), .S(N41), .Z(n477) );
  MUX2_X1 U195 ( .A(n477), .B(n474), .S(N42), .Z(N181) );
  MUX2_X1 U196 ( .A(\mem[6][4] ), .B(\mem[7][4] ), .S(n527), .Z(n478) );
  MUX2_X1 U197 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .S(n527), .Z(n479) );
  MUX2_X1 U198 ( .A(n479), .B(n478), .S(N41), .Z(n480) );
  MUX2_X1 U199 ( .A(\mem[2][4] ), .B(\mem[3][4] ), .S(n527), .Z(n481) );
  MUX2_X1 U200 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .S(n527), .Z(n482) );
  MUX2_X1 U201 ( .A(n482), .B(n481), .S(N41), .Z(n483) );
  MUX2_X1 U202 ( .A(n483), .B(n480), .S(N42), .Z(N180) );
  MUX2_X1 U203 ( .A(\mem[6][5] ), .B(\mem[7][5] ), .S(n527), .Z(n484) );
  MUX2_X1 U204 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .S(n527), .Z(n485) );
  MUX2_X1 U205 ( .A(n485), .B(n484), .S(N41), .Z(n486) );
  MUX2_X1 U206 ( .A(\mem[2][5] ), .B(\mem[3][5] ), .S(n527), .Z(n487) );
  MUX2_X1 U207 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .S(n527), .Z(n488) );
  MUX2_X1 U208 ( .A(n488), .B(n487), .S(N41), .Z(n489) );
  MUX2_X1 U209 ( .A(n489), .B(n486), .S(N42), .Z(N179) );
  MUX2_X1 U210 ( .A(\mem[6][6] ), .B(\mem[7][6] ), .S(n528), .Z(n490) );
  MUX2_X1 U211 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .S(n528), .Z(n491) );
  MUX2_X1 U212 ( .A(n491), .B(n490), .S(n526), .Z(n492) );
  MUX2_X1 U213 ( .A(\mem[2][6] ), .B(\mem[3][6] ), .S(n528), .Z(n493) );
  MUX2_X1 U214 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .S(n528), .Z(n494) );
  MUX2_X1 U215 ( .A(n494), .B(n493), .S(n526), .Z(n495) );
  MUX2_X1 U216 ( .A(n495), .B(n492), .S(N42), .Z(N178) );
  MUX2_X1 U217 ( .A(\mem[6][7] ), .B(\mem[7][7] ), .S(n528), .Z(n496) );
  MUX2_X1 U218 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .S(n528), .Z(n497) );
  MUX2_X1 U219 ( .A(n497), .B(n496), .S(n526), .Z(n498) );
  MUX2_X1 U220 ( .A(\mem[2][7] ), .B(\mem[3][7] ), .S(n528), .Z(n499) );
  MUX2_X1 U221 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .S(n528), .Z(n500) );
  MUX2_X1 U222 ( .A(n500), .B(n499), .S(n526), .Z(n501) );
  MUX2_X1 U223 ( .A(n501), .B(n498), .S(N42), .Z(N177) );
  MUX2_X1 U224 ( .A(\mem[6][8] ), .B(\mem[7][8] ), .S(n528), .Z(n502) );
  MUX2_X1 U225 ( .A(\mem[4][8] ), .B(\mem[5][8] ), .S(n528), .Z(n503) );
  MUX2_X1 U226 ( .A(n503), .B(n502), .S(n526), .Z(n504) );
  MUX2_X1 U227 ( .A(\mem[2][8] ), .B(\mem[3][8] ), .S(n528), .Z(n505) );
  MUX2_X1 U228 ( .A(\mem[0][8] ), .B(\mem[1][8] ), .S(n528), .Z(n506) );
  MUX2_X1 U229 ( .A(n506), .B(n505), .S(n526), .Z(n507) );
  MUX2_X1 U230 ( .A(n507), .B(n504), .S(N42), .Z(N176) );
  MUX2_X1 U231 ( .A(\mem[6][9] ), .B(\mem[7][9] ), .S(n529), .Z(n508) );
  MUX2_X1 U232 ( .A(\mem[4][9] ), .B(\mem[5][9] ), .S(n529), .Z(n509) );
  MUX2_X1 U233 ( .A(n509), .B(n508), .S(n526), .Z(n510) );
  MUX2_X1 U234 ( .A(\mem[2][9] ), .B(\mem[3][9] ), .S(n529), .Z(n511) );
  MUX2_X1 U235 ( .A(\mem[0][9] ), .B(\mem[1][9] ), .S(n529), .Z(n512) );
  MUX2_X1 U236 ( .A(n512), .B(n511), .S(n526), .Z(n513) );
  MUX2_X1 U237 ( .A(n513), .B(n510), .S(N42), .Z(N175) );
  MUX2_X1 U238 ( .A(\mem[6][10] ), .B(\mem[7][10] ), .S(n529), .Z(n514) );
  MUX2_X1 U239 ( .A(\mem[4][10] ), .B(\mem[5][10] ), .S(n529), .Z(n515) );
  MUX2_X1 U240 ( .A(n515), .B(n514), .S(n526), .Z(n516) );
  MUX2_X1 U241 ( .A(\mem[2][10] ), .B(\mem[3][10] ), .S(n529), .Z(n517) );
  MUX2_X1 U242 ( .A(\mem[0][10] ), .B(\mem[1][10] ), .S(n529), .Z(n518) );
  MUX2_X1 U243 ( .A(n518), .B(n517), .S(n526), .Z(n519) );
  MUX2_X1 U244 ( .A(n519), .B(n516), .S(N42), .Z(N174) );
  MUX2_X1 U245 ( .A(\mem[6][11] ), .B(\mem[7][11] ), .S(n529), .Z(n520) );
  MUX2_X1 U246 ( .A(\mem[4][11] ), .B(\mem[5][11] ), .S(n529), .Z(n521) );
  MUX2_X1 U247 ( .A(n521), .B(n520), .S(n526), .Z(n522) );
  MUX2_X1 U248 ( .A(\mem[2][11] ), .B(\mem[3][11] ), .S(n529), .Z(n523) );
  MUX2_X1 U249 ( .A(\mem[0][11] ), .B(\mem[1][11] ), .S(n529), .Z(n524) );
  MUX2_X1 U250 ( .A(n524), .B(n523), .S(n526), .Z(n525) );
  MUX2_X1 U251 ( .A(n525), .B(n522), .S(N42), .Z(N173) );
endmodule


module syn_fifo_1 ( clk, rst, wr_cs, rd_cs, data_in, rd_en, wr_en, data_out, 
        empty, full );
  input [11:0] data_in;
  output [11:0] data_out;
  input clk, rst, wr_cs, rd_cs, rd_en, wr_en;
  output empty, full;
  wire   N33, N40, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n20, n22, n23, n25, n28, n30, n31, n33, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112;
  wire   [3:0] status_cnt;
  wire   [2:0] wr_pointer;
  wire   [2:0] rd_pointer;
  wire   [11:0] data_ram;
  assign empty = N33;
  assign full = N40;

  DFFR_X1 \wr_pointer_reg[1]  ( .D(n72), .CK(clk), .RN(n106), .Q(wr_pointer[1]) );
  DFFR_X1 \rd_pointer_reg[0]  ( .D(n70), .CK(clk), .RN(n106), .Q(rd_pointer[0]) );
  DFFR_X1 \rd_pointer_reg[1]  ( .D(n69), .CK(clk), .RN(n106), .Q(rd_pointer[1]) );
  DFFR_X1 \rd_pointer_reg[2]  ( .D(n68), .CK(clk), .RN(n106), .Q(rd_pointer[2]), .QN(n55) );
  DFFR_X1 \data_out_reg[11]  ( .D(n67), .CK(clk), .RN(n106), .Q(data_out[11]), 
        .QN(n53) );
  DFFR_X1 \data_out_reg[10]  ( .D(n66), .CK(clk), .RN(n106), .Q(data_out[10]), 
        .QN(n52) );
  DFFR_X1 \data_out_reg[9]  ( .D(n65), .CK(clk), .RN(n106), .Q(data_out[9]), 
        .QN(n51) );
  DFFR_X1 \data_out_reg[8]  ( .D(n64), .CK(clk), .RN(n106), .Q(data_out[8]), 
        .QN(n50) );
  DFFR_X1 \data_out_reg[0]  ( .D(n56), .CK(clk), .RN(n107), .Q(data_out[0]), 
        .QN(n42) );
  DFFR_X1 \status_cnt_reg[0]  ( .D(n77), .CK(clk), .RN(n107), .Q(status_cnt[0]), .QN(n99) );
  DFFR_X1 \status_cnt_reg[3]  ( .D(n74), .CK(clk), .RN(n107), .Q(status_cnt[3]), .QN(n100) );
  DFFR_X1 \status_cnt_reg[1]  ( .D(n76), .CK(clk), .RN(n107), .Q(status_cnt[1]), .QN(n101) );
  DFFR_X1 \status_cnt_reg[2]  ( .D(n75), .CK(clk), .RN(n107), .Q(status_cnt[2]), .QN(n102) );
  XOR2_X1 U27 ( .A(n55), .B(n15), .Z(n68) );
  XOR2_X1 U29 ( .A(rd_pointer[1]), .B(n16), .Z(n69) );
  XOR2_X1 U31 ( .A(rd_pointer[0]), .B(n112), .Z(n70) );
  XOR2_X1 U32 ( .A(n54), .B(n17), .Z(n71) );
  XOR2_X1 U34 ( .A(wr_pointer[1]), .B(n18), .Z(n72) );
  XOR2_X1 U36 ( .A(n105), .B(n20), .Z(n73) );
  NAND3_X1 U49 ( .A1(n99), .A2(n101), .A3(n111), .ZN(n33) );
  NAND3_X1 U50 ( .A1(n25), .A2(n101), .A3(status_cnt[0]), .ZN(n38) );
  XOR2_X1 U53 ( .A(n39), .B(n99), .Z(n77) );
  NAND3_X1 U58 ( .A1(n20), .A2(n41), .A3(n112), .ZN(n36) );
  NAND4_X1 U63 ( .A1(status_cnt[2]), .A2(status_cnt[1]), .A3(status_cnt[0]), 
        .A4(n100), .ZN(n22) );
  ram_dp_ar_aw_1 DP_RAM ( .address_0(wr_pointer), .data_0(data_in), .cs_0(
        wr_cs), .we_0(wr_en), .oe_0(1'b0), .address_1(rd_pointer), .data_1(
        data_ram), .cs_1(rd_cs), .we_1(1'b0), .oe_1(rd_en) );
  DFFR_X1 \wr_pointer_reg[0]  ( .D(n73), .CK(clk), .RN(rst), .Q(wr_pointer[0]), 
        .QN(n105) );
  DFFR_X1 \wr_pointer_reg[2]  ( .D(n71), .CK(clk), .RN(n106), .Q(wr_pointer[2]), .QN(n54) );
  DFFR_X1 \data_out_reg[7]  ( .D(n63), .CK(clk), .RN(n106), .Q(data_out[7]), 
        .QN(n49) );
  DFFR_X1 \data_out_reg[6]  ( .D(n62), .CK(clk), .RN(n106), .Q(data_out[6]), 
        .QN(n48) );
  DFFR_X1 \data_out_reg[5]  ( .D(n61), .CK(clk), .RN(n107), .Q(data_out[5]), 
        .QN(n47) );
  DFFR_X1 \data_out_reg[4]  ( .D(n60), .CK(clk), .RN(n107), .Q(data_out[4]), 
        .QN(n46) );
  DFFR_X1 \data_out_reg[3]  ( .D(n59), .CK(clk), .RN(n107), .Q(data_out[3]), 
        .QN(n45) );
  DFFR_X1 \data_out_reg[2]  ( .D(n58), .CK(clk), .RN(n107), .Q(data_out[2]), 
        .QN(n44) );
  DFFR_X1 \data_out_reg[1]  ( .D(n57), .CK(clk), .RN(n107), .Q(data_out[1]), 
        .QN(n43) );
  AOI211_X4 U3 ( .C1(n40), .C2(status_cnt[3]), .A(n112), .B(n20), .ZN(n25) );
  INV_X4 U4 ( .A(n2), .ZN(n112) );
  NOR3_X1 U5 ( .A1(n103), .A2(n104), .A3(n39), .ZN(n37) );
  AND2_X1 U6 ( .A1(n99), .A2(n25), .ZN(n103) );
  AND2_X1 U7 ( .A1(n111), .A2(status_cnt[0]), .ZN(n104) );
  INV_X1 U8 ( .A(n36), .ZN(n111) );
  CLKBUF_X1 U9 ( .A(rst), .Z(n106) );
  CLKBUF_X1 U10 ( .A(rst), .Z(n107) );
  INV_X1 U11 ( .A(n41), .ZN(N33) );
  INV_X1 U12 ( .A(n33), .ZN(n110) );
  NOR2_X1 U13 ( .A1(n111), .A2(n25), .ZN(n39) );
  NAND2_X1 U14 ( .A1(n40), .A2(n100), .ZN(n41) );
  INV_X1 U15 ( .A(n25), .ZN(n109) );
  OAI21_X1 U16 ( .B1(n108), .B2(n102), .A(n30), .ZN(n75) );
  OAI21_X1 U17 ( .B1(n31), .B2(n110), .A(n102), .ZN(n30) );
  INV_X1 U18 ( .A(n28), .ZN(n108) );
  NOR3_X1 U19 ( .A1(n101), .A2(n109), .A3(n99), .ZN(n31) );
  NOR2_X1 U20 ( .A1(n105), .A2(n20), .ZN(n18) );
  NAND2_X1 U21 ( .A1(rd_en), .A2(rd_cs), .ZN(n2) );
  OAI221_X1 U22 ( .B1(status_cnt[1]), .B2(n109), .C1(n36), .C2(n101), .A(n37), 
        .ZN(n28) );
  NOR3_X1 U23 ( .A1(status_cnt[1]), .A2(status_cnt[2]), .A3(status_cnt[0]), 
        .ZN(n40) );
  OAI22_X1 U24 ( .A1(n109), .A2(n22), .B1(n23), .B2(n100), .ZN(n74) );
  AOI221_X1 U25 ( .B1(n25), .B2(n102), .C1(status_cnt[2]), .C2(n111), .A(n28), 
        .ZN(n23) );
  INV_X1 U26 ( .A(n22), .ZN(N40) );
  OAI22_X1 U28 ( .A1(n42), .A2(n112), .B1(n2), .B2(n3), .ZN(n56) );
  INV_X1 U30 ( .A(data_ram[0]), .ZN(n3) );
  OAI22_X1 U33 ( .A1(n43), .A2(n112), .B1(n2), .B2(n4), .ZN(n57) );
  INV_X1 U35 ( .A(data_ram[1]), .ZN(n4) );
  OAI22_X1 U37 ( .A1(n44), .A2(n112), .B1(n2), .B2(n5), .ZN(n58) );
  INV_X1 U38 ( .A(data_ram[2]), .ZN(n5) );
  OAI22_X1 U39 ( .A1(n45), .A2(n112), .B1(n2), .B2(n6), .ZN(n59) );
  INV_X1 U40 ( .A(data_ram[3]), .ZN(n6) );
  OAI22_X1 U41 ( .A1(n46), .A2(n112), .B1(n2), .B2(n7), .ZN(n60) );
  INV_X1 U42 ( .A(data_ram[4]), .ZN(n7) );
  OAI22_X1 U43 ( .A1(n47), .A2(n112), .B1(n2), .B2(n8), .ZN(n61) );
  INV_X1 U44 ( .A(data_ram[5]), .ZN(n8) );
  OAI22_X1 U45 ( .A1(n48), .A2(n112), .B1(n2), .B2(n9), .ZN(n62) );
  INV_X1 U46 ( .A(data_ram[6]), .ZN(n9) );
  OAI22_X1 U47 ( .A1(n49), .A2(n112), .B1(n2), .B2(n10), .ZN(n63) );
  INV_X1 U48 ( .A(data_ram[7]), .ZN(n10) );
  OAI22_X1 U51 ( .A1(n51), .A2(n112), .B1(n2), .B2(n12), .ZN(n65) );
  INV_X1 U52 ( .A(data_ram[9]), .ZN(n12) );
  OAI22_X1 U54 ( .A1(n52), .A2(n112), .B1(n2), .B2(n13), .ZN(n66) );
  INV_X1 U55 ( .A(data_ram[10]), .ZN(n13) );
  OAI22_X1 U56 ( .A1(n53), .A2(n112), .B1(n2), .B2(n14), .ZN(n67) );
  INV_X1 U57 ( .A(data_ram[11]), .ZN(n14) );
  OAI22_X1 U59 ( .A1(n50), .A2(n112), .B1(n2), .B2(n11), .ZN(n64) );
  INV_X1 U60 ( .A(data_ram[8]), .ZN(n11) );
  NAND2_X1 U61 ( .A1(rd_pointer[1]), .A2(n16), .ZN(n15) );
  NAND2_X1 U62 ( .A1(wr_en), .A2(wr_cs), .ZN(n20) );
  OAI211_X1 U64 ( .C1(n37), .C2(n101), .A(n38), .B(n33), .ZN(n76) );
  AND2_X1 U65 ( .A1(rd_pointer[0]), .A2(n112), .ZN(n16) );
  NAND2_X1 U66 ( .A1(wr_pointer[1]), .A2(n18), .ZN(n17) );
endmodule


module ram_dp_ar_aw_9 ( address_0, data_0, cs_0, we_0, oe_0, address_1, data_1, 
        cs_1, we_1, oe_1 );
  input [2:0] address_0;
  inout [11:0] data_0;
  input [2:0] address_1;
  inout [11:0] data_1;
  input cs_0, we_0, oe_0, cs_1, we_1, oe_1;
  wire   N37, N38, N39, N40, N41, N42, \mem[0][11] , \mem[0][10] , \mem[0][9] ,
         \mem[0][8] , \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , \mem[1][11] ,
         \mem[1][10] , \mem[1][9] , \mem[1][8] , \mem[1][7] , \mem[1][6] ,
         \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] , \mem[1][1] ,
         \mem[1][0] , \mem[2][11] , \mem[2][10] , \mem[2][9] , \mem[2][8] ,
         \mem[2][7] , \mem[2][6] , \mem[2][5] , \mem[2][4] , \mem[2][3] ,
         \mem[2][2] , \mem[2][1] , \mem[2][0] , \mem[3][11] , \mem[3][10] ,
         \mem[3][9] , \mem[3][8] , \mem[3][7] , \mem[3][6] , \mem[3][5] ,
         \mem[3][4] , \mem[3][3] , \mem[3][2] , \mem[3][1] , \mem[3][0] ,
         \mem[4][11] , \mem[4][10] , \mem[4][9] , \mem[4][8] , \mem[4][7] ,
         \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] , \mem[4][2] ,
         \mem[4][1] , \mem[4][0] , \mem[5][11] , \mem[5][10] , \mem[5][9] ,
         \mem[5][8] , \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] ,
         \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[6][11] ,
         \mem[6][10] , \mem[6][9] , \mem[6][8] , \mem[6][7] , \mem[6][6] ,
         \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] , \mem[6][1] ,
         \mem[6][0] , \mem[7][11] , \mem[7][10] , \mem[7][9] , \mem[7][8] ,
         \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] , \mem[7][3] ,
         \mem[7][2] , \mem[7][1] , \mem[7][0] , N47, N60, N73, N86, N99, N112,
         N125, N138, N157, N158, N159, N160, N161, N162, N163, N164, N165,
         N166, N167, N168, N173, N174, N175, N176, N177, N178, N179, N180,
         N181, N182, N183, N184, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476,
         n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487,
         n488, n489, n490, n491, n492, n493, n494, n495, n496, n497, n498,
         n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
         n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520,
         n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542,
         n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, n553,
         n554, n555, n556, n557, n558, n559, n560, n561, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580;
  assign N37 = address_0[0];
  assign N38 = address_0[1];
  assign N39 = address_0[2];
  assign N40 = address_1[0];
  assign N41 = address_1[1];
  assign N42 = address_1[2];

  OAI33_X1 U40 ( .A1(n531), .A2(n567), .A3(n530), .B1(n533), .B2(n566), .B3(
        n532), .ZN(N99) );
  OAI33_X1 U41 ( .A1(n565), .A2(N41), .A3(N40), .B1(n564), .B2(N38), .B3(N37), 
        .ZN(N86) );
  OAI33_X1 U42 ( .A1(n565), .A2(N41), .A3(n530), .B1(n564), .B2(N38), .B3(n532), .ZN(N73) );
  OAI33_X1 U43 ( .A1(n565), .A2(N40), .A3(n531), .B1(n564), .B2(N37), .B3(n533), .ZN(N60) );
  OAI33_X1 U44 ( .A1(n565), .A2(n530), .A3(n531), .B1(n564), .B2(n532), .B3(
        n533), .ZN(N47) );
  OAI33_X1 U48 ( .A1(n567), .A2(N41), .A3(N40), .B1(n566), .B2(N38), .B3(N37), 
        .ZN(N138) );
  OAI33_X1 U49 ( .A1(n530), .A2(N41), .A3(n567), .B1(n532), .B2(N38), .B3(n566), .ZN(N125) );
  OAI33_X1 U52 ( .A1(n531), .A2(N40), .A3(n567), .B1(n533), .B2(N37), .B3(n566), .ZN(N112) );
  TBUF_X1 \data_0_tri[0]  ( .A(N168), .EN(n558), .Z(data_0[0]) );
  TBUF_X1 \data_0_tri[1]  ( .A(N167), .EN(n558), .Z(data_0[1]) );
  TBUF_X1 \data_0_tri[2]  ( .A(N166), .EN(n558), .Z(data_0[2]) );
  TBUF_X1 \data_0_tri[3]  ( .A(N165), .EN(n558), .Z(data_0[3]) );
  TBUF_X1 \data_0_tri[4]  ( .A(N164), .EN(n558), .Z(data_0[4]) );
  TBUF_X1 \data_0_tri[5]  ( .A(N163), .EN(n558), .Z(data_0[5]) );
  TBUF_X1 \data_0_tri[6]  ( .A(N162), .EN(n558), .Z(data_0[6]) );
  TBUF_X1 \data_0_tri[7]  ( .A(N161), .EN(n558), .Z(data_0[7]) );
  TBUF_X1 \data_1_tri[0]  ( .A(N184), .EN(n553), .Z(data_1[0]) );
  TBUF_X1 \data_1_tri[1]  ( .A(N183), .EN(n553), .Z(data_1[1]) );
  TBUF_X1 \data_1_tri[2]  ( .A(N182), .EN(n553), .Z(data_1[2]) );
  TBUF_X1 \data_1_tri[3]  ( .A(N181), .EN(n553), .Z(data_1[3]) );
  TBUF_X1 \data_1_tri[4]  ( .A(N180), .EN(n553), .Z(data_1[4]) );
  TBUF_X1 \data_1_tri[5]  ( .A(N179), .EN(n553), .Z(data_1[5]) );
  TBUF_X1 \data_1_tri[6]  ( .A(N178), .EN(n553), .Z(data_1[6]) );
  TBUF_X1 \data_1_tri[7]  ( .A(N177), .EN(n553), .Z(data_1[7]) );
  DLH_X1 \mem_reg[1][11]  ( .G(n378), .D(n534), .Q(\mem[1][11] ) );
  DLH_X1 \mem_reg[1][10]  ( .G(n378), .D(n535), .Q(\mem[1][10] ) );
  DLH_X1 \mem_reg[1][9]  ( .G(n378), .D(n536), .Q(\mem[1][9] ) );
  DLH_X1 \mem_reg[1][8]  ( .G(n378), .D(n537), .Q(\mem[1][8] ) );
  DLH_X1 \mem_reg[1][7]  ( .G(n378), .D(n538), .Q(\mem[1][7] ) );
  DLH_X1 \mem_reg[1][6]  ( .G(n378), .D(n539), .Q(\mem[1][6] ) );
  DLH_X1 \mem_reg[1][5]  ( .G(n378), .D(n540), .Q(\mem[1][5] ) );
  DLH_X1 \mem_reg[1][4]  ( .G(n378), .D(n541), .Q(\mem[1][4] ) );
  DLH_X1 \mem_reg[1][3]  ( .G(n378), .D(n542), .Q(\mem[1][3] ) );
  DLH_X1 \mem_reg[1][2]  ( .G(n378), .D(n543), .Q(\mem[1][2] ) );
  DLH_X1 \mem_reg[1][1]  ( .G(n378), .D(n544), .Q(\mem[1][1] ) );
  DLH_X1 \mem_reg[1][0]  ( .G(n378), .D(n545), .Q(\mem[1][0] ) );
  DLH_X1 \mem_reg[6][11]  ( .G(n377), .D(n534), .Q(\mem[6][11] ) );
  DLH_X1 \mem_reg[6][10]  ( .G(n377), .D(n535), .Q(\mem[6][10] ) );
  DLH_X1 \mem_reg[6][9]  ( .G(n377), .D(n536), .Q(\mem[6][9] ) );
  DLH_X1 \mem_reg[6][8]  ( .G(n377), .D(n537), .Q(\mem[6][8] ) );
  DLH_X1 \mem_reg[6][7]  ( .G(n377), .D(n538), .Q(\mem[6][7] ) );
  DLH_X1 \mem_reg[6][6]  ( .G(n377), .D(n539), .Q(\mem[6][6] ) );
  DLH_X1 \mem_reg[6][5]  ( .G(n377), .D(n540), .Q(\mem[6][5] ) );
  DLH_X1 \mem_reg[6][4]  ( .G(n377), .D(n541), .Q(\mem[6][4] ) );
  DLH_X1 \mem_reg[6][3]  ( .G(n377), .D(n542), .Q(\mem[6][3] ) );
  DLH_X1 \mem_reg[6][2]  ( .G(n377), .D(n543), .Q(\mem[6][2] ) );
  DLH_X1 \mem_reg[6][1]  ( .G(n377), .D(n544), .Q(\mem[6][1] ) );
  DLH_X1 \mem_reg[6][0]  ( .G(n377), .D(n545), .Q(\mem[6][0] ) );
  DLH_X1 \mem_reg[3][11]  ( .G(n376), .D(n534), .Q(\mem[3][11] ) );
  DLH_X1 \mem_reg[3][10]  ( .G(n376), .D(n535), .Q(\mem[3][10] ) );
  DLH_X1 \mem_reg[3][9]  ( .G(n376), .D(n536), .Q(\mem[3][9] ) );
  DLH_X1 \mem_reg[3][8]  ( .G(n376), .D(n537), .Q(\mem[3][8] ) );
  DLH_X1 \mem_reg[3][7]  ( .G(n376), .D(n538), .Q(\mem[3][7] ) );
  DLH_X1 \mem_reg[3][6]  ( .G(n376), .D(n539), .Q(\mem[3][6] ) );
  DLH_X1 \mem_reg[3][5]  ( .G(n376), .D(n540), .Q(\mem[3][5] ) );
  DLH_X1 \mem_reg[3][4]  ( .G(n376), .D(n541), .Q(\mem[3][4] ) );
  DLH_X1 \mem_reg[3][3]  ( .G(n376), .D(n542), .Q(\mem[3][3] ) );
  DLH_X1 \mem_reg[3][2]  ( .G(n376), .D(n543), .Q(\mem[3][2] ) );
  DLH_X1 \mem_reg[3][1]  ( .G(n376), .D(n544), .Q(\mem[3][1] ) );
  DLH_X1 \mem_reg[3][0]  ( .G(n376), .D(n545), .Q(\mem[3][0] ) );
  DLH_X1 \mem_reg[4][11]  ( .G(n375), .D(n534), .Q(\mem[4][11] ) );
  DLH_X1 \mem_reg[4][10]  ( .G(n375), .D(n535), .Q(\mem[4][10] ) );
  DLH_X1 \mem_reg[4][9]  ( .G(n375), .D(n536), .Q(\mem[4][9] ) );
  DLH_X1 \mem_reg[4][8]  ( .G(n375), .D(n537), .Q(\mem[4][8] ) );
  DLH_X1 \mem_reg[4][7]  ( .G(n375), .D(n538), .Q(\mem[4][7] ) );
  DLH_X1 \mem_reg[4][6]  ( .G(n375), .D(n539), .Q(\mem[4][6] ) );
  DLH_X1 \mem_reg[4][5]  ( .G(n375), .D(n540), .Q(\mem[4][5] ) );
  DLH_X1 \mem_reg[4][4]  ( .G(n375), .D(n541), .Q(\mem[4][4] ) );
  DLH_X1 \mem_reg[4][3]  ( .G(n375), .D(n542), .Q(\mem[4][3] ) );
  DLH_X1 \mem_reg[4][2]  ( .G(n375), .D(n543), .Q(\mem[4][2] ) );
  DLH_X1 \mem_reg[4][1]  ( .G(n375), .D(n544), .Q(\mem[4][1] ) );
  DLH_X1 \mem_reg[4][0]  ( .G(n375), .D(n545), .Q(\mem[4][0] ) );
  DLH_X1 \mem_reg[2][11]  ( .G(n374), .D(n534), .Q(\mem[2][11] ) );
  DLH_X1 \mem_reg[2][10]  ( .G(n374), .D(n535), .Q(\mem[2][10] ) );
  DLH_X1 \mem_reg[2][9]  ( .G(n374), .D(n536), .Q(\mem[2][9] ) );
  DLH_X1 \mem_reg[2][8]  ( .G(n374), .D(n537), .Q(\mem[2][8] ) );
  DLH_X1 \mem_reg[2][7]  ( .G(n374), .D(n538), .Q(\mem[2][7] ) );
  DLH_X1 \mem_reg[2][6]  ( .G(n374), .D(n539), .Q(\mem[2][6] ) );
  DLH_X1 \mem_reg[2][5]  ( .G(n374), .D(n540), .Q(\mem[2][5] ) );
  DLH_X1 \mem_reg[2][4]  ( .G(n374), .D(n541), .Q(\mem[2][4] ) );
  DLH_X1 \mem_reg[2][3]  ( .G(n374), .D(n542), .Q(\mem[2][3] ) );
  DLH_X1 \mem_reg[2][2]  ( .G(n374), .D(n543), .Q(\mem[2][2] ) );
  DLH_X1 \mem_reg[2][1]  ( .G(n374), .D(n544), .Q(\mem[2][1] ) );
  DLH_X1 \mem_reg[2][0]  ( .G(n374), .D(n545), .Q(\mem[2][0] ) );
  DLH_X1 \mem_reg[5][11]  ( .G(n373), .D(n534), .Q(\mem[5][11] ) );
  DLH_X1 \mem_reg[5][10]  ( .G(n373), .D(n535), .Q(\mem[5][10] ) );
  DLH_X1 \mem_reg[5][9]  ( .G(n373), .D(n536), .Q(\mem[5][9] ) );
  DLH_X1 \mem_reg[5][8]  ( .G(n373), .D(n537), .Q(\mem[5][8] ) );
  DLH_X1 \mem_reg[5][7]  ( .G(n373), .D(n538), .Q(\mem[5][7] ) );
  DLH_X1 \mem_reg[5][6]  ( .G(n373), .D(n539), .Q(\mem[5][6] ) );
  DLH_X1 \mem_reg[5][5]  ( .G(n373), .D(n540), .Q(\mem[5][5] ) );
  DLH_X1 \mem_reg[5][4]  ( .G(n373), .D(n541), .Q(\mem[5][4] ) );
  DLH_X1 \mem_reg[5][3]  ( .G(n373), .D(n542), .Q(\mem[5][3] ) );
  DLH_X1 \mem_reg[5][2]  ( .G(n373), .D(n543), .Q(\mem[5][2] ) );
  DLH_X1 \mem_reg[5][1]  ( .G(n373), .D(n544), .Q(\mem[5][1] ) );
  DLH_X1 \mem_reg[5][0]  ( .G(n373), .D(n545), .Q(\mem[5][0] ) );
  DLH_X1 \mem_reg[0][11]  ( .G(n372), .D(n534), .Q(\mem[0][11] ) );
  DLH_X1 \mem_reg[0][10]  ( .G(n372), .D(n535), .Q(\mem[0][10] ) );
  DLH_X1 \mem_reg[0][9]  ( .G(n372), .D(n536), .Q(\mem[0][9] ) );
  DLH_X1 \mem_reg[0][8]  ( .G(n372), .D(n537), .Q(\mem[0][8] ) );
  DLH_X1 \mem_reg[0][7]  ( .G(n372), .D(n538), .Q(\mem[0][7] ) );
  DLH_X1 \mem_reg[0][6]  ( .G(n372), .D(n539), .Q(\mem[0][6] ) );
  DLH_X1 \mem_reg[0][5]  ( .G(n372), .D(n540), .Q(\mem[0][5] ) );
  DLH_X1 \mem_reg[0][4]  ( .G(n372), .D(n541), .Q(\mem[0][4] ) );
  DLH_X1 \mem_reg[0][3]  ( .G(n372), .D(n542), .Q(\mem[0][3] ) );
  DLH_X1 \mem_reg[0][2]  ( .G(n372), .D(n543), .Q(\mem[0][2] ) );
  DLH_X1 \mem_reg[0][1]  ( .G(n372), .D(n544), .Q(\mem[0][1] ) );
  DLH_X1 \mem_reg[0][0]  ( .G(n372), .D(n545), .Q(\mem[0][0] ) );
  DLH_X1 \mem_reg[7][11]  ( .G(n371), .D(n534), .Q(\mem[7][11] ) );
  DLH_X1 \mem_reg[7][10]  ( .G(n371), .D(n535), .Q(\mem[7][10] ) );
  DLH_X1 \mem_reg[7][9]  ( .G(n371), .D(n536), .Q(\mem[7][9] ) );
  DLH_X1 \mem_reg[7][8]  ( .G(n371), .D(n537), .Q(\mem[7][8] ) );
  DLH_X1 \mem_reg[7][7]  ( .G(n371), .D(n538), .Q(\mem[7][7] ) );
  DLH_X1 \mem_reg[7][6]  ( .G(n371), .D(n539), .Q(\mem[7][6] ) );
  DLH_X1 \mem_reg[7][5]  ( .G(n371), .D(n540), .Q(\mem[7][5] ) );
  DLH_X1 \mem_reg[7][4]  ( .G(n371), .D(n541), .Q(\mem[7][4] ) );
  DLH_X1 \mem_reg[7][3]  ( .G(n371), .D(n542), .Q(\mem[7][3] ) );
  DLH_X1 \mem_reg[7][2]  ( .G(n371), .D(n543), .Q(\mem[7][2] ) );
  DLH_X1 \mem_reg[7][1]  ( .G(n371), .D(n544), .Q(\mem[7][1] ) );
  DLH_X1 \mem_reg[7][0]  ( .G(n371), .D(n545), .Q(\mem[7][0] ) );
  CLKBUF_X1 U2 ( .A(N47), .Z(n371) );
  CLKBUF_X1 U3 ( .A(N138), .Z(n372) );
  CLKBUF_X1 U4 ( .A(N73), .Z(n373) );
  CLKBUF_X1 U5 ( .A(N112), .Z(n374) );
  CLKBUF_X1 U6 ( .A(N86), .Z(n375) );
  CLKBUF_X1 U7 ( .A(N99), .Z(n376) );
  CLKBUF_X1 U8 ( .A(N60), .Z(n377) );
  CLKBUF_X1 U9 ( .A(N125), .Z(n378) );
  BUF_X1 U10 ( .A(N40), .Z(n529) );
  BUF_X1 U11 ( .A(N40), .Z(n528) );
  BUF_X1 U12 ( .A(N40), .Z(n527) );
  BUF_X1 U13 ( .A(N41), .Z(n526) );
  BUF_X1 U14 ( .A(N37), .Z(n453) );
  BUF_X1 U15 ( .A(N37), .Z(n452) );
  BUF_X1 U16 ( .A(N38), .Z(n451) );
  INV_X1 U17 ( .A(n553), .ZN(n546) );
  INV_X1 U18 ( .A(n558), .ZN(n548) );
  INV_X1 U19 ( .A(n563), .ZN(n550) );
  NAND3_X1 U20 ( .A1(cs_1), .A2(n547), .A3(oe_1), .ZN(n553) );
  INV_X1 U21 ( .A(we_1), .ZN(n547) );
  OAI22_X1 U22 ( .A1(1'b1), .A2(n546), .B1(n552), .B2(n553), .ZN(data_1[8]) );
  NAND2_X1 U23 ( .A1(N176), .A2(n546), .ZN(n552) );
  INV_X1 U24 ( .A(N40), .ZN(n530) );
  INV_X1 U25 ( .A(N41), .ZN(n531) );
  OAI22_X1 U26 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n554), .ZN(data_1[9]) );
  NAND2_X1 U27 ( .A1(N175), .A2(n546), .ZN(n554) );
  OAI22_X1 U28 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n555), .ZN(data_1[10])
         );
  NAND2_X1 U29 ( .A1(N174), .A2(n546), .ZN(n555) );
  OAI22_X1 U30 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n556), .ZN(data_1[11])
         );
  NAND2_X1 U31 ( .A1(N173), .A2(n546), .ZN(n556) );
  AND3_X1 U32 ( .A1(cs_1), .A2(n563), .A3(we_1), .ZN(n579) );
  NAND3_X1 U33 ( .A1(cs_0), .A2(n551), .A3(oe_0), .ZN(n558) );
  INV_X1 U34 ( .A(we_0), .ZN(n551) );
  NAND2_X1 U35 ( .A1(N42), .A2(n579), .ZN(n565) );
  NAND2_X1 U36 ( .A1(N39), .A2(n550), .ZN(n564) );
  NAND2_X1 U37 ( .A1(we_0), .A2(cs_0), .ZN(n563) );
  INV_X1 U38 ( .A(n576), .ZN(n537) );
  AOI22_X1 U39 ( .A1(data_1[8]), .A2(n579), .B1(data_0[8]), .B2(n550), .ZN(
        n576) );
  OAI22_X1 U45 ( .A1(1'b1), .A2(n548), .B1(n557), .B2(n558), .ZN(data_0[8]) );
  NAND2_X1 U46 ( .A1(N160), .A2(n548), .ZN(n557) );
  INV_X1 U47 ( .A(n577), .ZN(n536) );
  AOI22_X1 U50 ( .A1(data_1[9]), .A2(n579), .B1(data_0[9]), .B2(n550), .ZN(
        n577) );
  OAI22_X1 U51 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n559), .ZN(data_0[9]) );
  NAND2_X1 U53 ( .A1(N159), .A2(n548), .ZN(n559) );
  INV_X1 U54 ( .A(n578), .ZN(n535) );
  AOI22_X1 U55 ( .A1(data_1[10]), .A2(n579), .B1(data_0[10]), .B2(n550), .ZN(
        n578) );
  OAI22_X1 U56 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n560), .ZN(data_0[10])
         );
  NAND2_X1 U57 ( .A1(N158), .A2(n548), .ZN(n560) );
  INV_X1 U58 ( .A(n580), .ZN(n534) );
  AOI22_X1 U59 ( .A1(data_1[11]), .A2(n579), .B1(data_0[11]), .B2(n550), .ZN(
        n580) );
  OAI22_X1 U60 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n561), .ZN(data_0[11])
         );
  NAND2_X1 U61 ( .A1(N157), .A2(n548), .ZN(n561) );
  INV_X1 U62 ( .A(n568), .ZN(n545) );
  AOI22_X1 U63 ( .A1(data_1[0]), .A2(n579), .B1(data_0[0]), .B2(n550), .ZN(
        n568) );
  INV_X1 U64 ( .A(n569), .ZN(n544) );
  AOI22_X1 U65 ( .A1(data_1[1]), .A2(n579), .B1(data_0[1]), .B2(n550), .ZN(
        n569) );
  INV_X1 U66 ( .A(n570), .ZN(n543) );
  AOI22_X1 U67 ( .A1(data_1[2]), .A2(n579), .B1(data_0[2]), .B2(n550), .ZN(
        n570) );
  INV_X1 U69 ( .A(n571), .ZN(n542) );
  AOI22_X1 U70 ( .A1(data_1[3]), .A2(n579), .B1(data_0[3]), .B2(n550), .ZN(
        n571) );
  INV_X1 U71 ( .A(n572), .ZN(n541) );
  AOI22_X1 U72 ( .A1(data_1[4]), .A2(n579), .B1(data_0[4]), .B2(n550), .ZN(
        n572) );
  INV_X1 U73 ( .A(n573), .ZN(n540) );
  AOI22_X1 U74 ( .A1(data_1[5]), .A2(n579), .B1(data_0[5]), .B2(n550), .ZN(
        n573) );
  INV_X1 U75 ( .A(n574), .ZN(n539) );
  AOI22_X1 U76 ( .A1(data_1[6]), .A2(n579), .B1(data_0[6]), .B2(n550), .ZN(
        n574) );
  INV_X1 U77 ( .A(n575), .ZN(n538) );
  AOI22_X1 U78 ( .A1(data_1[7]), .A2(n579), .B1(data_0[7]), .B2(n550), .ZN(
        n575) );
  NAND2_X1 U79 ( .A1(n579), .A2(n549), .ZN(n567) );
  INV_X1 U80 ( .A(N42), .ZN(n549) );
  INV_X1 U81 ( .A(N37), .ZN(n532) );
  INV_X1 U82 ( .A(N38), .ZN(n533) );
  OR2_X1 U83 ( .A1(n563), .A2(N39), .ZN(n566) );
  MUX2_X1 U84 ( .A(\mem[6][0] ), .B(\mem[7][0] ), .S(N37), .Z(n379) );
  MUX2_X1 U85 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .S(n453), .Z(n380) );
  MUX2_X1 U86 ( .A(n380), .B(n379), .S(N38), .Z(n381) );
  MUX2_X1 U87 ( .A(\mem[2][0] ), .B(\mem[3][0] ), .S(n452), .Z(n382) );
  MUX2_X1 U88 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .S(N37), .Z(n383) );
  MUX2_X1 U89 ( .A(n383), .B(n382), .S(N38), .Z(n384) );
  MUX2_X1 U90 ( .A(n384), .B(n381), .S(N39), .Z(N168) );
  MUX2_X1 U91 ( .A(\mem[6][1] ), .B(\mem[7][1] ), .S(n453), .Z(n385) );
  MUX2_X1 U92 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .S(n452), .Z(n386) );
  MUX2_X1 U93 ( .A(n386), .B(n385), .S(N38), .Z(n387) );
  MUX2_X1 U94 ( .A(\mem[2][1] ), .B(\mem[3][1] ), .S(N37), .Z(n388) );
  MUX2_X1 U95 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .S(n453), .Z(n389) );
  MUX2_X1 U96 ( .A(n389), .B(n388), .S(N38), .Z(n390) );
  MUX2_X1 U97 ( .A(n390), .B(n387), .S(N39), .Z(N167) );
  MUX2_X1 U98 ( .A(\mem[6][2] ), .B(\mem[7][2] ), .S(n452), .Z(n391) );
  MUX2_X1 U99 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .S(N37), .Z(n392) );
  MUX2_X1 U100 ( .A(n392), .B(n391), .S(N38), .Z(n393) );
  MUX2_X1 U101 ( .A(\mem[2][2] ), .B(\mem[3][2] ), .S(n453), .Z(n394) );
  MUX2_X1 U102 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .S(n452), .Z(n395) );
  MUX2_X1 U103 ( .A(n395), .B(n394), .S(N38), .Z(n396) );
  MUX2_X1 U104 ( .A(n396), .B(n393), .S(N39), .Z(N166) );
  MUX2_X1 U105 ( .A(\mem[6][3] ), .B(\mem[7][3] ), .S(n452), .Z(n397) );
  MUX2_X1 U106 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .S(n452), .Z(n398) );
  MUX2_X1 U107 ( .A(n398), .B(n397), .S(n451), .Z(n399) );
  MUX2_X1 U108 ( .A(\mem[2][3] ), .B(\mem[3][3] ), .S(n452), .Z(n400) );
  MUX2_X1 U109 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .S(n452), .Z(n401) );
  MUX2_X1 U110 ( .A(n401), .B(n400), .S(N38), .Z(n402) );
  MUX2_X1 U111 ( .A(n402), .B(n399), .S(N39), .Z(N165) );
  MUX2_X1 U112 ( .A(\mem[6][4] ), .B(\mem[7][4] ), .S(n452), .Z(n403) );
  MUX2_X1 U113 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .S(n452), .Z(n404) );
  MUX2_X1 U114 ( .A(n404), .B(n403), .S(n451), .Z(n405) );
  MUX2_X1 U115 ( .A(\mem[2][4] ), .B(\mem[3][4] ), .S(n452), .Z(n406) );
  MUX2_X1 U116 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .S(n452), .Z(n407) );
  MUX2_X1 U117 ( .A(n407), .B(n406), .S(N38), .Z(n408) );
  MUX2_X1 U118 ( .A(n408), .B(n405), .S(N39), .Z(N164) );
  MUX2_X1 U119 ( .A(\mem[6][5] ), .B(\mem[7][5] ), .S(n452), .Z(n409) );
  MUX2_X1 U120 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .S(n452), .Z(n410) );
  MUX2_X1 U121 ( .A(n410), .B(n409), .S(n451), .Z(n411) );
  MUX2_X1 U122 ( .A(\mem[2][5] ), .B(\mem[3][5] ), .S(n452), .Z(n412) );
  MUX2_X1 U123 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .S(n452), .Z(n413) );
  MUX2_X1 U124 ( .A(n413), .B(n412), .S(N38), .Z(n414) );
  MUX2_X1 U125 ( .A(n414), .B(n411), .S(N39), .Z(N163) );
  MUX2_X1 U126 ( .A(\mem[6][6] ), .B(\mem[7][6] ), .S(n453), .Z(n415) );
  MUX2_X1 U127 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .S(n453), .Z(n416) );
  MUX2_X1 U128 ( .A(n416), .B(n415), .S(n451), .Z(n417) );
  MUX2_X1 U129 ( .A(\mem[2][6] ), .B(\mem[3][6] ), .S(n453), .Z(n418) );
  MUX2_X1 U130 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .S(n453), .Z(n419) );
  MUX2_X1 U131 ( .A(n419), .B(n418), .S(n451), .Z(n420) );
  MUX2_X1 U132 ( .A(n420), .B(n417), .S(N39), .Z(N162) );
  MUX2_X1 U133 ( .A(\mem[6][7] ), .B(\mem[7][7] ), .S(n453), .Z(n421) );
  MUX2_X1 U134 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .S(n453), .Z(n422) );
  MUX2_X1 U135 ( .A(n422), .B(n421), .S(n451), .Z(n423) );
  MUX2_X1 U136 ( .A(\mem[2][7] ), .B(\mem[3][7] ), .S(n453), .Z(n424) );
  MUX2_X1 U137 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .S(n453), .Z(n425) );
  MUX2_X1 U138 ( .A(n425), .B(n424), .S(n451), .Z(n426) );
  MUX2_X1 U139 ( .A(n426), .B(n423), .S(N39), .Z(N161) );
  MUX2_X1 U140 ( .A(\mem[6][8] ), .B(\mem[7][8] ), .S(n453), .Z(n427) );
  MUX2_X1 U141 ( .A(\mem[4][8] ), .B(\mem[5][8] ), .S(n453), .Z(n428) );
  MUX2_X1 U142 ( .A(n428), .B(n427), .S(n451), .Z(n429) );
  MUX2_X1 U143 ( .A(\mem[2][8] ), .B(\mem[3][8] ), .S(n453), .Z(n430) );
  MUX2_X1 U144 ( .A(\mem[0][8] ), .B(\mem[1][8] ), .S(n453), .Z(n431) );
  MUX2_X1 U145 ( .A(n431), .B(n430), .S(n451), .Z(n432) );
  MUX2_X1 U146 ( .A(n432), .B(n429), .S(N39), .Z(N160) );
  MUX2_X1 U147 ( .A(\mem[6][9] ), .B(\mem[7][9] ), .S(N37), .Z(n433) );
  MUX2_X1 U148 ( .A(\mem[4][9] ), .B(\mem[5][9] ), .S(N37), .Z(n434) );
  MUX2_X1 U149 ( .A(n434), .B(n433), .S(n451), .Z(n435) );
  MUX2_X1 U150 ( .A(\mem[2][9] ), .B(\mem[3][9] ), .S(N37), .Z(n436) );
  MUX2_X1 U151 ( .A(\mem[0][9] ), .B(\mem[1][9] ), .S(N37), .Z(n437) );
  MUX2_X1 U152 ( .A(n437), .B(n436), .S(n451), .Z(n438) );
  MUX2_X1 U153 ( .A(n438), .B(n435), .S(N39), .Z(N159) );
  MUX2_X1 U154 ( .A(\mem[6][10] ), .B(\mem[7][10] ), .S(N37), .Z(n439) );
  MUX2_X1 U155 ( .A(\mem[4][10] ), .B(\mem[5][10] ), .S(N37), .Z(n440) );
  MUX2_X1 U156 ( .A(n440), .B(n439), .S(n451), .Z(n441) );
  MUX2_X1 U157 ( .A(\mem[2][10] ), .B(\mem[3][10] ), .S(n453), .Z(n442) );
  MUX2_X1 U158 ( .A(\mem[0][10] ), .B(\mem[1][10] ), .S(n452), .Z(n443) );
  MUX2_X1 U159 ( .A(n443), .B(n442), .S(n451), .Z(n444) );
  MUX2_X1 U160 ( .A(n444), .B(n441), .S(N39), .Z(N158) );
  MUX2_X1 U161 ( .A(\mem[6][11] ), .B(\mem[7][11] ), .S(N37), .Z(n445) );
  MUX2_X1 U162 ( .A(\mem[4][11] ), .B(\mem[5][11] ), .S(N37), .Z(n446) );
  MUX2_X1 U163 ( .A(n446), .B(n445), .S(n451), .Z(n447) );
  MUX2_X1 U164 ( .A(\mem[2][11] ), .B(\mem[3][11] ), .S(n453), .Z(n448) );
  MUX2_X1 U165 ( .A(\mem[0][11] ), .B(\mem[1][11] ), .S(n452), .Z(n449) );
  MUX2_X1 U166 ( .A(n449), .B(n448), .S(n451), .Z(n450) );
  MUX2_X1 U167 ( .A(n450), .B(n447), .S(N39), .Z(N157) );
  MUX2_X1 U168 ( .A(\mem[6][0] ), .B(\mem[7][0] ), .S(N40), .Z(n454) );
  MUX2_X1 U169 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .S(N40), .Z(n455) );
  MUX2_X1 U170 ( .A(n455), .B(n454), .S(n526), .Z(n456) );
  MUX2_X1 U171 ( .A(\mem[2][0] ), .B(\mem[3][0] ), .S(N40), .Z(n457) );
  MUX2_X1 U172 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .S(N40), .Z(n458) );
  MUX2_X1 U173 ( .A(n458), .B(n457), .S(n526), .Z(n459) );
  MUX2_X1 U174 ( .A(n459), .B(n456), .S(N42), .Z(N184) );
  MUX2_X1 U175 ( .A(\mem[6][1] ), .B(\mem[7][1] ), .S(N40), .Z(n460) );
  MUX2_X1 U176 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .S(N40), .Z(n461) );
  MUX2_X1 U177 ( .A(n461), .B(n460), .S(n526), .Z(n462) );
  MUX2_X1 U178 ( .A(\mem[2][1] ), .B(\mem[3][1] ), .S(N40), .Z(n463) );
  MUX2_X1 U179 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .S(N40), .Z(n464) );
  MUX2_X1 U180 ( .A(n464), .B(n463), .S(n526), .Z(n465) );
  MUX2_X1 U181 ( .A(n465), .B(n462), .S(N42), .Z(N183) );
  MUX2_X1 U182 ( .A(\mem[6][2] ), .B(\mem[7][2] ), .S(N40), .Z(n466) );
  MUX2_X1 U183 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .S(N40), .Z(n467) );
  MUX2_X1 U184 ( .A(n467), .B(n466), .S(n526), .Z(n468) );
  MUX2_X1 U185 ( .A(\mem[2][2] ), .B(\mem[3][2] ), .S(N40), .Z(n469) );
  MUX2_X1 U186 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .S(N40), .Z(n470) );
  MUX2_X1 U187 ( .A(n470), .B(n469), .S(n526), .Z(n471) );
  MUX2_X1 U188 ( .A(n471), .B(n468), .S(N42), .Z(N182) );
  MUX2_X1 U189 ( .A(\mem[6][3] ), .B(\mem[7][3] ), .S(n527), .Z(n472) );
  MUX2_X1 U190 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .S(n527), .Z(n473) );
  MUX2_X1 U191 ( .A(n473), .B(n472), .S(n526), .Z(n474) );
  MUX2_X1 U192 ( .A(\mem[2][3] ), .B(\mem[3][3] ), .S(n527), .Z(n475) );
  MUX2_X1 U193 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .S(n527), .Z(n476) );
  MUX2_X1 U194 ( .A(n476), .B(n475), .S(n526), .Z(n477) );
  MUX2_X1 U195 ( .A(n477), .B(n474), .S(N42), .Z(N181) );
  MUX2_X1 U196 ( .A(\mem[6][4] ), .B(\mem[7][4] ), .S(n527), .Z(n478) );
  MUX2_X1 U197 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .S(n527), .Z(n479) );
  MUX2_X1 U198 ( .A(n479), .B(n478), .S(n526), .Z(n480) );
  MUX2_X1 U199 ( .A(\mem[2][4] ), .B(\mem[3][4] ), .S(n527), .Z(n481) );
  MUX2_X1 U200 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .S(n527), .Z(n482) );
  MUX2_X1 U201 ( .A(n482), .B(n481), .S(n526), .Z(n483) );
  MUX2_X1 U202 ( .A(n483), .B(n480), .S(N42), .Z(N180) );
  MUX2_X1 U203 ( .A(\mem[6][5] ), .B(\mem[7][5] ), .S(n527), .Z(n484) );
  MUX2_X1 U204 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .S(n527), .Z(n485) );
  MUX2_X1 U205 ( .A(n485), .B(n484), .S(n526), .Z(n486) );
  MUX2_X1 U206 ( .A(\mem[2][5] ), .B(\mem[3][5] ), .S(n527), .Z(n487) );
  MUX2_X1 U207 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .S(n527), .Z(n488) );
  MUX2_X1 U208 ( .A(n488), .B(n487), .S(n526), .Z(n489) );
  MUX2_X1 U209 ( .A(n489), .B(n486), .S(N42), .Z(N179) );
  MUX2_X1 U210 ( .A(\mem[6][6] ), .B(\mem[7][6] ), .S(n528), .Z(n490) );
  MUX2_X1 U211 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .S(n528), .Z(n491) );
  MUX2_X1 U212 ( .A(n491), .B(n490), .S(N41), .Z(n492) );
  MUX2_X1 U213 ( .A(\mem[2][6] ), .B(\mem[3][6] ), .S(n528), .Z(n493) );
  MUX2_X1 U214 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .S(n528), .Z(n494) );
  MUX2_X1 U215 ( .A(n494), .B(n493), .S(N41), .Z(n495) );
  MUX2_X1 U216 ( .A(n495), .B(n492), .S(N42), .Z(N178) );
  MUX2_X1 U217 ( .A(\mem[6][7] ), .B(\mem[7][7] ), .S(n528), .Z(n496) );
  MUX2_X1 U218 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .S(n528), .Z(n497) );
  MUX2_X1 U219 ( .A(n497), .B(n496), .S(N41), .Z(n498) );
  MUX2_X1 U220 ( .A(\mem[2][7] ), .B(\mem[3][7] ), .S(n528), .Z(n499) );
  MUX2_X1 U221 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .S(n528), .Z(n500) );
  MUX2_X1 U222 ( .A(n500), .B(n499), .S(N41), .Z(n501) );
  MUX2_X1 U223 ( .A(n501), .B(n498), .S(N42), .Z(N177) );
  MUX2_X1 U224 ( .A(\mem[6][8] ), .B(\mem[7][8] ), .S(n528), .Z(n502) );
  MUX2_X1 U225 ( .A(\mem[4][8] ), .B(\mem[5][8] ), .S(n528), .Z(n503) );
  MUX2_X1 U226 ( .A(n503), .B(n502), .S(N41), .Z(n504) );
  MUX2_X1 U227 ( .A(\mem[2][8] ), .B(\mem[3][8] ), .S(n528), .Z(n505) );
  MUX2_X1 U228 ( .A(\mem[0][8] ), .B(\mem[1][8] ), .S(n528), .Z(n506) );
  MUX2_X1 U229 ( .A(n506), .B(n505), .S(N41), .Z(n507) );
  MUX2_X1 U230 ( .A(n507), .B(n504), .S(N42), .Z(N176) );
  MUX2_X1 U231 ( .A(\mem[6][9] ), .B(\mem[7][9] ), .S(n529), .Z(n508) );
  MUX2_X1 U232 ( .A(\mem[4][9] ), .B(\mem[5][9] ), .S(n529), .Z(n509) );
  MUX2_X1 U233 ( .A(n509), .B(n508), .S(N41), .Z(n510) );
  MUX2_X1 U234 ( .A(\mem[2][9] ), .B(\mem[3][9] ), .S(n529), .Z(n511) );
  MUX2_X1 U235 ( .A(\mem[0][9] ), .B(\mem[1][9] ), .S(n529), .Z(n512) );
  MUX2_X1 U236 ( .A(n512), .B(n511), .S(N41), .Z(n513) );
  MUX2_X1 U237 ( .A(n513), .B(n510), .S(N42), .Z(N175) );
  MUX2_X1 U238 ( .A(\mem[6][10] ), .B(\mem[7][10] ), .S(n529), .Z(n514) );
  MUX2_X1 U239 ( .A(\mem[4][10] ), .B(\mem[5][10] ), .S(n529), .Z(n515) );
  MUX2_X1 U240 ( .A(n515), .B(n514), .S(N41), .Z(n516) );
  MUX2_X1 U241 ( .A(\mem[2][10] ), .B(\mem[3][10] ), .S(n529), .Z(n517) );
  MUX2_X1 U242 ( .A(\mem[0][10] ), .B(\mem[1][10] ), .S(n529), .Z(n518) );
  MUX2_X1 U243 ( .A(n518), .B(n517), .S(N41), .Z(n519) );
  MUX2_X1 U244 ( .A(n519), .B(n516), .S(N42), .Z(N174) );
  MUX2_X1 U245 ( .A(\mem[6][11] ), .B(\mem[7][11] ), .S(n529), .Z(n520) );
  MUX2_X1 U246 ( .A(\mem[4][11] ), .B(\mem[5][11] ), .S(n529), .Z(n521) );
  MUX2_X1 U247 ( .A(n521), .B(n520), .S(N41), .Z(n522) );
  MUX2_X1 U248 ( .A(\mem[2][11] ), .B(\mem[3][11] ), .S(n529), .Z(n523) );
  MUX2_X1 U249 ( .A(\mem[0][11] ), .B(\mem[1][11] ), .S(n529), .Z(n524) );
  MUX2_X1 U250 ( .A(n524), .B(n523), .S(N41), .Z(n525) );
  MUX2_X1 U251 ( .A(n525), .B(n522), .S(N42), .Z(N173) );
endmodule


module syn_fifo_9 ( clk, rst, wr_cs, rd_cs, data_in, rd_en, wr_en, data_out, 
        empty, full );
  input [11:0] data_in;
  output [11:0] data_out;
  input clk, rst, wr_cs, rd_cs, rd_en, wr_en;
  output empty, full;
  wire   N33, N40, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177;
  wire   [3:0] status_cnt;
  wire   [2:0] wr_pointer;
  wire   [2:0] rd_pointer;
  wire   [11:0] data_ram;
  assign empty = N33;
  assign full = N40;

  DFFR_X1 \wr_pointer_reg[2]  ( .D(n117), .CK(clk), .RN(n102), .Q(
        wr_pointer[2]), .QN(n134) );
  DFFR_X1 \rd_pointer_reg[2]  ( .D(n120), .CK(clk), .RN(n102), .Q(
        rd_pointer[2]), .QN(n133) );
  DFFR_X1 \data_out_reg[11]  ( .D(n121), .CK(clk), .RN(n102), .Q(data_out[11]), 
        .QN(n135) );
  DFFR_X1 \data_out_reg[10]  ( .D(n122), .CK(clk), .RN(n102), .Q(data_out[10]), 
        .QN(n136) );
  DFFR_X1 \data_out_reg[9]  ( .D(n123), .CK(clk), .RN(n102), .Q(data_out[9]), 
        .QN(n137) );
  DFFR_X1 \data_out_reg[8]  ( .D(n124), .CK(clk), .RN(n102), .Q(data_out[8]), 
        .QN(n138) );
  DFFR_X1 \data_out_reg[7]  ( .D(n125), .CK(clk), .RN(n102), .Q(data_out[7]), 
        .QN(n139) );
  DFFR_X1 \data_out_reg[6]  ( .D(n126), .CK(clk), .RN(n102), .Q(data_out[6]), 
        .QN(n140) );
  DFFR_X1 \data_out_reg[5]  ( .D(n127), .CK(clk), .RN(n103), .Q(data_out[5]), 
        .QN(n141) );
  DFFR_X1 \data_out_reg[4]  ( .D(n128), .CK(clk), .RN(n103), .Q(data_out[4]), 
        .QN(n142) );
  DFFR_X1 \data_out_reg[3]  ( .D(n129), .CK(clk), .RN(n103), .Q(data_out[3]), 
        .QN(n143) );
  DFFR_X1 \data_out_reg[2]  ( .D(n130), .CK(clk), .RN(n103), .Q(data_out[2]), 
        .QN(n144) );
  DFFR_X1 \data_out_reg[1]  ( .D(n131), .CK(clk), .RN(n103), .Q(data_out[1]), 
        .QN(n145) );
  DFFR_X1 \data_out_reg[0]  ( .D(n132), .CK(clk), .RN(n103), .Q(data_out[0]), 
        .QN(n146) );
  DFFR_X1 \status_cnt_reg[0]  ( .D(n111), .CK(clk), .RN(n103), .Q(
        status_cnt[0]), .QN(n99) );
  DFFR_X1 \status_cnt_reg[1]  ( .D(n112), .CK(clk), .RN(n103), .Q(
        status_cnt[1]), .QN(n100) );
  XOR2_X1 U27 ( .A(n133), .B(n164), .Z(n120) );
  XOR2_X1 U29 ( .A(rd_pointer[1]), .B(n163), .Z(n119) );
  XOR2_X1 U31 ( .A(rd_pointer[0]), .B(n108), .Z(n118) );
  XOR2_X1 U32 ( .A(n134), .B(n162), .Z(n117) );
  XOR2_X1 U34 ( .A(wr_pointer[1]), .B(n161), .Z(n116) );
  XOR2_X1 U36 ( .A(n101), .B(n160), .Z(n115) );
  NAND3_X1 U49 ( .A1(n99), .A2(n100), .A3(n107), .ZN(n153) );
  NAND3_X1 U50 ( .A1(n157), .A2(n100), .A3(status_cnt[0]), .ZN(n150) );
  XOR2_X1 U53 ( .A(n149), .B(n99), .Z(n111) );
  NAND3_X1 U58 ( .A1(n160), .A2(n147), .A3(n108), .ZN(n152) );
  NAND4_X1 U63 ( .A1(status_cnt[2]), .A2(status_cnt[1]), .A3(status_cnt[0]), 
        .A4(n109), .ZN(n159) );
  ram_dp_ar_aw_9 DP_RAM ( .address_0(wr_pointer), .data_0(data_in), .cs_0(
        wr_cs), .we_0(wr_en), .oe_0(1'b0), .address_1(rd_pointer), .data_1(
        data_ram), .cs_1(rd_cs), .we_1(1'b0), .oe_1(rd_en) );
  DFFR_X1 \wr_pointer_reg[0]  ( .D(n115), .CK(clk), .RN(n102), .Q(
        wr_pointer[0]), .QN(n101) );
  DFFR_X1 \wr_pointer_reg[1]  ( .D(n116), .CK(clk), .RN(n102), .Q(
        wr_pointer[1]) );
  DFFR_X1 \rd_pointer_reg[0]  ( .D(n118), .CK(clk), .RN(n102), .Q(
        rd_pointer[0]) );
  DFFR_X1 \rd_pointer_reg[1]  ( .D(n119), .CK(clk), .RN(n102), .Q(
        rd_pointer[1]) );
  DFFR_X1 \status_cnt_reg[2]  ( .D(n113), .CK(clk), .RN(n103), .Q(
        status_cnt[2]), .QN(n110) );
  DFFR_X1 \status_cnt_reg[3]  ( .D(n114), .CK(clk), .RN(n103), .Q(
        status_cnt[3]), .QN(n109) );
  NAND2_X2 U3 ( .A1(rd_en), .A2(rd_cs), .ZN(n177) );
  AOI211_X4 U4 ( .C1(n148), .C2(status_cnt[3]), .A(n108), .B(n160), .ZN(n157)
         );
  INV_X4 U5 ( .A(n177), .ZN(n108) );
  INV_X1 U6 ( .A(n147), .ZN(N33) );
  INV_X1 U7 ( .A(n153), .ZN(n106) );
  CLKBUF_X1 U8 ( .A(rst), .Z(n102) );
  CLKBUF_X1 U9 ( .A(rst), .Z(n103) );
  NOR2_X1 U10 ( .A1(n107), .A2(n157), .ZN(n149) );
  NAND2_X1 U11 ( .A1(n148), .A2(n109), .ZN(n147) );
  INV_X1 U12 ( .A(n157), .ZN(n105) );
  OAI21_X1 U13 ( .B1(n104), .B2(n110), .A(n155), .ZN(n113) );
  OAI21_X1 U14 ( .B1(n154), .B2(n106), .A(n110), .ZN(n155) );
  INV_X1 U15 ( .A(n156), .ZN(n104) );
  NOR3_X1 U16 ( .A1(n100), .A2(n105), .A3(n99), .ZN(n154) );
  NOR2_X1 U17 ( .A1(n101), .A2(n160), .ZN(n161) );
  AOI221_X1 U18 ( .B1(n99), .B2(n157), .C1(n107), .C2(status_cnt[0]), .A(n149), 
        .ZN(n151) );
  OAI221_X1 U19 ( .B1(status_cnt[1]), .B2(n105), .C1(n152), .C2(n100), .A(n151), .ZN(n156) );
  NOR3_X1 U20 ( .A1(status_cnt[1]), .A2(status_cnt[2]), .A3(status_cnt[0]), 
        .ZN(n148) );
  OAI22_X1 U21 ( .A1(n105), .A2(n159), .B1(n158), .B2(n109), .ZN(n114) );
  AOI221_X1 U22 ( .B1(n157), .B2(n110), .C1(status_cnt[2]), .C2(n107), .A(n156), .ZN(n158) );
  INV_X1 U23 ( .A(n159), .ZN(N40) );
  OAI22_X1 U24 ( .A1(n146), .A2(n108), .B1(n177), .B2(n176), .ZN(n132) );
  INV_X1 U25 ( .A(data_ram[0]), .ZN(n176) );
  OAI22_X1 U26 ( .A1(n145), .A2(n108), .B1(n177), .B2(n175), .ZN(n131) );
  INV_X1 U28 ( .A(data_ram[1]), .ZN(n175) );
  OAI22_X1 U30 ( .A1(n144), .A2(n108), .B1(n177), .B2(n174), .ZN(n130) );
  INV_X1 U33 ( .A(data_ram[2]), .ZN(n174) );
  OAI22_X1 U35 ( .A1(n143), .A2(n108), .B1(n177), .B2(n173), .ZN(n129) );
  INV_X1 U37 ( .A(data_ram[3]), .ZN(n173) );
  OAI22_X1 U38 ( .A1(n142), .A2(n108), .B1(n177), .B2(n172), .ZN(n128) );
  INV_X1 U39 ( .A(data_ram[4]), .ZN(n172) );
  OAI22_X1 U40 ( .A1(n141), .A2(n108), .B1(n177), .B2(n171), .ZN(n127) );
  INV_X1 U41 ( .A(data_ram[5]), .ZN(n171) );
  OAI22_X1 U42 ( .A1(n140), .A2(n108), .B1(n177), .B2(n170), .ZN(n126) );
  INV_X1 U43 ( .A(data_ram[6]), .ZN(n170) );
  OAI22_X1 U44 ( .A1(n139), .A2(n108), .B1(n177), .B2(n169), .ZN(n125) );
  INV_X1 U45 ( .A(data_ram[7]), .ZN(n169) );
  OAI22_X1 U46 ( .A1(n137), .A2(n108), .B1(n177), .B2(n167), .ZN(n123) );
  INV_X1 U47 ( .A(data_ram[9]), .ZN(n167) );
  OAI22_X1 U48 ( .A1(n136), .A2(n108), .B1(n177), .B2(n166), .ZN(n122) );
  INV_X1 U51 ( .A(data_ram[10]), .ZN(n166) );
  OAI22_X1 U52 ( .A1(n135), .A2(n108), .B1(n177), .B2(n165), .ZN(n121) );
  INV_X1 U54 ( .A(data_ram[11]), .ZN(n165) );
  OAI22_X1 U55 ( .A1(n138), .A2(n108), .B1(n177), .B2(n168), .ZN(n124) );
  INV_X1 U56 ( .A(data_ram[8]), .ZN(n168) );
  NAND2_X1 U57 ( .A1(rd_pointer[1]), .A2(n163), .ZN(n164) );
  NAND2_X1 U59 ( .A1(wr_en), .A2(wr_cs), .ZN(n160) );
  OAI211_X1 U60 ( .C1(n151), .C2(n100), .A(n150), .B(n153), .ZN(n112) );
  AND2_X1 U61 ( .A1(rd_pointer[0]), .A2(n108), .ZN(n163) );
  NAND2_X1 U62 ( .A1(wr_pointer[1]), .A2(n161), .ZN(n162) );
  INV_X2 U64 ( .A(n152), .ZN(n107) );
endmodule


module ram_dp_ar_aw_8 ( address_0, data_0, cs_0, we_0, oe_0, address_1, data_1, 
        cs_1, we_1, oe_1 );
  input [2:0] address_0;
  inout [11:0] data_0;
  input [2:0] address_1;
  inout [11:0] data_1;
  input cs_0, we_0, oe_0, cs_1, we_1, oe_1;
  wire   N37, N38, N39, N40, N41, N42, \mem[0][11] , \mem[0][10] , \mem[0][9] ,
         \mem[0][8] , \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , \mem[1][11] ,
         \mem[1][10] , \mem[1][9] , \mem[1][8] , \mem[1][7] , \mem[1][6] ,
         \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] , \mem[1][1] ,
         \mem[1][0] , \mem[2][11] , \mem[2][10] , \mem[2][9] , \mem[2][8] ,
         \mem[2][7] , \mem[2][6] , \mem[2][5] , \mem[2][4] , \mem[2][3] ,
         \mem[2][2] , \mem[2][1] , \mem[2][0] , \mem[3][11] , \mem[3][10] ,
         \mem[3][9] , \mem[3][8] , \mem[3][7] , \mem[3][6] , \mem[3][5] ,
         \mem[3][4] , \mem[3][3] , \mem[3][2] , \mem[3][1] , \mem[3][0] ,
         \mem[4][11] , \mem[4][10] , \mem[4][9] , \mem[4][8] , \mem[4][7] ,
         \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] , \mem[4][2] ,
         \mem[4][1] , \mem[4][0] , \mem[5][11] , \mem[5][10] , \mem[5][9] ,
         \mem[5][8] , \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] ,
         \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[6][11] ,
         \mem[6][10] , \mem[6][9] , \mem[6][8] , \mem[6][7] , \mem[6][6] ,
         \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] , \mem[6][1] ,
         \mem[6][0] , \mem[7][11] , \mem[7][10] , \mem[7][9] , \mem[7][8] ,
         \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] , \mem[7][3] ,
         \mem[7][2] , \mem[7][1] , \mem[7][0] , N47, N60, N73, N86, N99, N112,
         N125, N138, N157, N158, N159, N160, N161, N162, N163, N164, N165,
         N166, N167, N168, N173, N174, N175, N176, N177, N178, N179, N180,
         N181, N182, N183, N184, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476,
         n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487,
         n488, n489, n490, n491, n492, n493, n494, n495, n496, n497, n498,
         n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
         n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520,
         n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542,
         n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, n553,
         n554, n555, n556, n557, n558, n559, n560, n561, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580;
  assign N37 = address_0[0];
  assign N38 = address_0[1];
  assign N39 = address_0[2];
  assign N40 = address_1[0];
  assign N41 = address_1[1];
  assign N42 = address_1[2];

  OAI33_X1 U40 ( .A1(n531), .A2(n567), .A3(n530), .B1(n533), .B2(n566), .B3(
        n532), .ZN(N99) );
  OAI33_X1 U41 ( .A1(n565), .A2(N41), .A3(N40), .B1(n564), .B2(N38), .B3(N37), 
        .ZN(N86) );
  OAI33_X1 U42 ( .A1(n565), .A2(N41), .A3(n530), .B1(n564), .B2(N38), .B3(n532), .ZN(N73) );
  OAI33_X1 U43 ( .A1(n565), .A2(N40), .A3(n531), .B1(n564), .B2(N37), .B3(n533), .ZN(N60) );
  OAI33_X1 U44 ( .A1(n565), .A2(n530), .A3(n531), .B1(n564), .B2(n532), .B3(
        n533), .ZN(N47) );
  OAI33_X1 U48 ( .A1(n567), .A2(N41), .A3(N40), .B1(n566), .B2(N38), .B3(N37), 
        .ZN(N138) );
  OAI33_X1 U49 ( .A1(n530), .A2(N41), .A3(n567), .B1(n532), .B2(N38), .B3(n566), .ZN(N125) );
  OAI33_X1 U52 ( .A1(n531), .A2(N40), .A3(n567), .B1(n533), .B2(N37), .B3(n566), .ZN(N112) );
  TBUF_X1 \data_0_tri[0]  ( .A(N168), .EN(n558), .Z(data_0[0]) );
  TBUF_X1 \data_0_tri[1]  ( .A(N167), .EN(n558), .Z(data_0[1]) );
  TBUF_X1 \data_0_tri[2]  ( .A(N166), .EN(n558), .Z(data_0[2]) );
  TBUF_X1 \data_0_tri[3]  ( .A(N165), .EN(n558), .Z(data_0[3]) );
  TBUF_X1 \data_0_tri[4]  ( .A(N164), .EN(n558), .Z(data_0[4]) );
  TBUF_X1 \data_0_tri[5]  ( .A(N163), .EN(n558), .Z(data_0[5]) );
  TBUF_X1 \data_0_tri[6]  ( .A(N162), .EN(n558), .Z(data_0[6]) );
  TBUF_X1 \data_0_tri[7]  ( .A(N161), .EN(n558), .Z(data_0[7]) );
  TBUF_X1 \data_1_tri[0]  ( .A(N184), .EN(n553), .Z(data_1[0]) );
  TBUF_X1 \data_1_tri[1]  ( .A(N183), .EN(n553), .Z(data_1[1]) );
  TBUF_X1 \data_1_tri[2]  ( .A(N182), .EN(n553), .Z(data_1[2]) );
  TBUF_X1 \data_1_tri[3]  ( .A(N181), .EN(n553), .Z(data_1[3]) );
  TBUF_X1 \data_1_tri[4]  ( .A(N180), .EN(n553), .Z(data_1[4]) );
  TBUF_X1 \data_1_tri[5]  ( .A(N179), .EN(n553), .Z(data_1[5]) );
  TBUF_X1 \data_1_tri[6]  ( .A(N178), .EN(n553), .Z(data_1[6]) );
  TBUF_X1 \data_1_tri[7]  ( .A(N177), .EN(n553), .Z(data_1[7]) );
  DLH_X1 \mem_reg[1][11]  ( .G(n378), .D(n534), .Q(\mem[1][11] ) );
  DLH_X1 \mem_reg[1][10]  ( .G(n378), .D(n535), .Q(\mem[1][10] ) );
  DLH_X1 \mem_reg[1][9]  ( .G(n378), .D(n536), .Q(\mem[1][9] ) );
  DLH_X1 \mem_reg[1][8]  ( .G(n378), .D(n537), .Q(\mem[1][8] ) );
  DLH_X1 \mem_reg[1][7]  ( .G(n378), .D(n538), .Q(\mem[1][7] ) );
  DLH_X1 \mem_reg[1][6]  ( .G(n378), .D(n539), .Q(\mem[1][6] ) );
  DLH_X1 \mem_reg[1][5]  ( .G(n378), .D(n540), .Q(\mem[1][5] ) );
  DLH_X1 \mem_reg[1][4]  ( .G(n378), .D(n541), .Q(\mem[1][4] ) );
  DLH_X1 \mem_reg[1][3]  ( .G(n378), .D(n542), .Q(\mem[1][3] ) );
  DLH_X1 \mem_reg[1][2]  ( .G(n378), .D(n543), .Q(\mem[1][2] ) );
  DLH_X1 \mem_reg[1][1]  ( .G(n378), .D(n544), .Q(\mem[1][1] ) );
  DLH_X1 \mem_reg[1][0]  ( .G(n378), .D(n545), .Q(\mem[1][0] ) );
  DLH_X1 \mem_reg[6][11]  ( .G(n377), .D(n534), .Q(\mem[6][11] ) );
  DLH_X1 \mem_reg[6][10]  ( .G(n377), .D(n535), .Q(\mem[6][10] ) );
  DLH_X1 \mem_reg[6][9]  ( .G(n377), .D(n536), .Q(\mem[6][9] ) );
  DLH_X1 \mem_reg[6][8]  ( .G(n377), .D(n537), .Q(\mem[6][8] ) );
  DLH_X1 \mem_reg[6][7]  ( .G(n377), .D(n538), .Q(\mem[6][7] ) );
  DLH_X1 \mem_reg[6][6]  ( .G(n377), .D(n539), .Q(\mem[6][6] ) );
  DLH_X1 \mem_reg[6][5]  ( .G(n377), .D(n540), .Q(\mem[6][5] ) );
  DLH_X1 \mem_reg[6][4]  ( .G(n377), .D(n541), .Q(\mem[6][4] ) );
  DLH_X1 \mem_reg[6][3]  ( .G(n377), .D(n542), .Q(\mem[6][3] ) );
  DLH_X1 \mem_reg[6][2]  ( .G(n377), .D(n543), .Q(\mem[6][2] ) );
  DLH_X1 \mem_reg[6][1]  ( .G(n377), .D(n544), .Q(\mem[6][1] ) );
  DLH_X1 \mem_reg[6][0]  ( .G(n377), .D(n545), .Q(\mem[6][0] ) );
  DLH_X1 \mem_reg[3][11]  ( .G(n376), .D(n534), .Q(\mem[3][11] ) );
  DLH_X1 \mem_reg[3][10]  ( .G(n376), .D(n535), .Q(\mem[3][10] ) );
  DLH_X1 \mem_reg[3][9]  ( .G(n376), .D(n536), .Q(\mem[3][9] ) );
  DLH_X1 \mem_reg[3][8]  ( .G(n376), .D(n537), .Q(\mem[3][8] ) );
  DLH_X1 \mem_reg[3][7]  ( .G(n376), .D(n538), .Q(\mem[3][7] ) );
  DLH_X1 \mem_reg[3][6]  ( .G(n376), .D(n539), .Q(\mem[3][6] ) );
  DLH_X1 \mem_reg[3][5]  ( .G(n376), .D(n540), .Q(\mem[3][5] ) );
  DLH_X1 \mem_reg[3][4]  ( .G(n376), .D(n541), .Q(\mem[3][4] ) );
  DLH_X1 \mem_reg[3][3]  ( .G(n376), .D(n542), .Q(\mem[3][3] ) );
  DLH_X1 \mem_reg[3][2]  ( .G(n376), .D(n543), .Q(\mem[3][2] ) );
  DLH_X1 \mem_reg[3][1]  ( .G(n376), .D(n544), .Q(\mem[3][1] ) );
  DLH_X1 \mem_reg[3][0]  ( .G(n376), .D(n545), .Q(\mem[3][0] ) );
  DLH_X1 \mem_reg[4][11]  ( .G(n375), .D(n534), .Q(\mem[4][11] ) );
  DLH_X1 \mem_reg[4][10]  ( .G(n375), .D(n535), .Q(\mem[4][10] ) );
  DLH_X1 \mem_reg[4][9]  ( .G(n375), .D(n536), .Q(\mem[4][9] ) );
  DLH_X1 \mem_reg[4][8]  ( .G(n375), .D(n537), .Q(\mem[4][8] ) );
  DLH_X1 \mem_reg[4][7]  ( .G(n375), .D(n538), .Q(\mem[4][7] ) );
  DLH_X1 \mem_reg[4][6]  ( .G(n375), .D(n539), .Q(\mem[4][6] ) );
  DLH_X1 \mem_reg[4][5]  ( .G(n375), .D(n540), .Q(\mem[4][5] ) );
  DLH_X1 \mem_reg[4][4]  ( .G(n375), .D(n541), .Q(\mem[4][4] ) );
  DLH_X1 \mem_reg[4][3]  ( .G(n375), .D(n542), .Q(\mem[4][3] ) );
  DLH_X1 \mem_reg[4][2]  ( .G(n375), .D(n543), .Q(\mem[4][2] ) );
  DLH_X1 \mem_reg[4][1]  ( .G(n375), .D(n544), .Q(\mem[4][1] ) );
  DLH_X1 \mem_reg[4][0]  ( .G(n375), .D(n545), .Q(\mem[4][0] ) );
  DLH_X1 \mem_reg[2][11]  ( .G(n374), .D(n534), .Q(\mem[2][11] ) );
  DLH_X1 \mem_reg[2][10]  ( .G(n374), .D(n535), .Q(\mem[2][10] ) );
  DLH_X1 \mem_reg[2][9]  ( .G(n374), .D(n536), .Q(\mem[2][9] ) );
  DLH_X1 \mem_reg[2][8]  ( .G(n374), .D(n537), .Q(\mem[2][8] ) );
  DLH_X1 \mem_reg[2][7]  ( .G(n374), .D(n538), .Q(\mem[2][7] ) );
  DLH_X1 \mem_reg[2][6]  ( .G(n374), .D(n539), .Q(\mem[2][6] ) );
  DLH_X1 \mem_reg[2][5]  ( .G(n374), .D(n540), .Q(\mem[2][5] ) );
  DLH_X1 \mem_reg[2][4]  ( .G(n374), .D(n541), .Q(\mem[2][4] ) );
  DLH_X1 \mem_reg[2][3]  ( .G(n374), .D(n542), .Q(\mem[2][3] ) );
  DLH_X1 \mem_reg[2][2]  ( .G(n374), .D(n543), .Q(\mem[2][2] ) );
  DLH_X1 \mem_reg[2][1]  ( .G(n374), .D(n544), .Q(\mem[2][1] ) );
  DLH_X1 \mem_reg[2][0]  ( .G(n374), .D(n545), .Q(\mem[2][0] ) );
  DLH_X1 \mem_reg[5][11]  ( .G(n373), .D(n534), .Q(\mem[5][11] ) );
  DLH_X1 \mem_reg[5][10]  ( .G(n373), .D(n535), .Q(\mem[5][10] ) );
  DLH_X1 \mem_reg[5][9]  ( .G(n373), .D(n536), .Q(\mem[5][9] ) );
  DLH_X1 \mem_reg[5][8]  ( .G(n373), .D(n537), .Q(\mem[5][8] ) );
  DLH_X1 \mem_reg[5][7]  ( .G(n373), .D(n538), .Q(\mem[5][7] ) );
  DLH_X1 \mem_reg[5][6]  ( .G(n373), .D(n539), .Q(\mem[5][6] ) );
  DLH_X1 \mem_reg[5][5]  ( .G(n373), .D(n540), .Q(\mem[5][5] ) );
  DLH_X1 \mem_reg[5][4]  ( .G(n373), .D(n541), .Q(\mem[5][4] ) );
  DLH_X1 \mem_reg[5][3]  ( .G(n373), .D(n542), .Q(\mem[5][3] ) );
  DLH_X1 \mem_reg[5][2]  ( .G(n373), .D(n543), .Q(\mem[5][2] ) );
  DLH_X1 \mem_reg[5][1]  ( .G(n373), .D(n544), .Q(\mem[5][1] ) );
  DLH_X1 \mem_reg[5][0]  ( .G(n373), .D(n545), .Q(\mem[5][0] ) );
  DLH_X1 \mem_reg[0][11]  ( .G(n372), .D(n534), .Q(\mem[0][11] ) );
  DLH_X1 \mem_reg[0][10]  ( .G(n372), .D(n535), .Q(\mem[0][10] ) );
  DLH_X1 \mem_reg[0][9]  ( .G(n372), .D(n536), .Q(\mem[0][9] ) );
  DLH_X1 \mem_reg[0][8]  ( .G(n372), .D(n537), .Q(\mem[0][8] ) );
  DLH_X1 \mem_reg[0][7]  ( .G(n372), .D(n538), .Q(\mem[0][7] ) );
  DLH_X1 \mem_reg[0][6]  ( .G(n372), .D(n539), .Q(\mem[0][6] ) );
  DLH_X1 \mem_reg[0][5]  ( .G(n372), .D(n540), .Q(\mem[0][5] ) );
  DLH_X1 \mem_reg[0][4]  ( .G(n372), .D(n541), .Q(\mem[0][4] ) );
  DLH_X1 \mem_reg[0][3]  ( .G(n372), .D(n542), .Q(\mem[0][3] ) );
  DLH_X1 \mem_reg[0][2]  ( .G(n372), .D(n543), .Q(\mem[0][2] ) );
  DLH_X1 \mem_reg[0][1]  ( .G(n372), .D(n544), .Q(\mem[0][1] ) );
  DLH_X1 \mem_reg[0][0]  ( .G(n372), .D(n545), .Q(\mem[0][0] ) );
  DLH_X1 \mem_reg[7][11]  ( .G(n371), .D(n534), .Q(\mem[7][11] ) );
  DLH_X1 \mem_reg[7][10]  ( .G(n371), .D(n535), .Q(\mem[7][10] ) );
  DLH_X1 \mem_reg[7][9]  ( .G(n371), .D(n536), .Q(\mem[7][9] ) );
  DLH_X1 \mem_reg[7][8]  ( .G(n371), .D(n537), .Q(\mem[7][8] ) );
  DLH_X1 \mem_reg[7][7]  ( .G(n371), .D(n538), .Q(\mem[7][7] ) );
  DLH_X1 \mem_reg[7][6]  ( .G(n371), .D(n539), .Q(\mem[7][6] ) );
  DLH_X1 \mem_reg[7][5]  ( .G(n371), .D(n540), .Q(\mem[7][5] ) );
  DLH_X1 \mem_reg[7][4]  ( .G(n371), .D(n541), .Q(\mem[7][4] ) );
  DLH_X1 \mem_reg[7][3]  ( .G(n371), .D(n542), .Q(\mem[7][3] ) );
  DLH_X1 \mem_reg[7][2]  ( .G(n371), .D(n543), .Q(\mem[7][2] ) );
  DLH_X1 \mem_reg[7][1]  ( .G(n371), .D(n544), .Q(\mem[7][1] ) );
  DLH_X1 \mem_reg[7][0]  ( .G(n371), .D(n545), .Q(\mem[7][0] ) );
  CLKBUF_X1 U2 ( .A(N47), .Z(n371) );
  CLKBUF_X1 U3 ( .A(N138), .Z(n372) );
  CLKBUF_X1 U4 ( .A(N73), .Z(n373) );
  CLKBUF_X1 U5 ( .A(N112), .Z(n374) );
  CLKBUF_X1 U6 ( .A(N86), .Z(n375) );
  CLKBUF_X1 U7 ( .A(N99), .Z(n376) );
  CLKBUF_X1 U8 ( .A(N60), .Z(n377) );
  CLKBUF_X1 U9 ( .A(N125), .Z(n378) );
  BUF_X1 U10 ( .A(N40), .Z(n529) );
  BUF_X1 U11 ( .A(N40), .Z(n528) );
  BUF_X1 U12 ( .A(N40), .Z(n527) );
  BUF_X1 U13 ( .A(N41), .Z(n526) );
  BUF_X1 U14 ( .A(N37), .Z(n453) );
  BUF_X1 U15 ( .A(N37), .Z(n452) );
  BUF_X1 U16 ( .A(N38), .Z(n451) );
  INV_X1 U17 ( .A(n553), .ZN(n546) );
  INV_X1 U18 ( .A(n558), .ZN(n548) );
  INV_X1 U19 ( .A(n563), .ZN(n550) );
  NAND3_X1 U20 ( .A1(cs_1), .A2(n547), .A3(oe_1), .ZN(n553) );
  INV_X1 U21 ( .A(we_1), .ZN(n547) );
  OAI22_X1 U22 ( .A1(1'b1), .A2(n546), .B1(n552), .B2(n553), .ZN(data_1[8]) );
  NAND2_X1 U23 ( .A1(N176), .A2(n546), .ZN(n552) );
  INV_X1 U24 ( .A(N40), .ZN(n530) );
  INV_X1 U25 ( .A(N41), .ZN(n531) );
  OAI22_X1 U26 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n554), .ZN(data_1[9]) );
  NAND2_X1 U27 ( .A1(N175), .A2(n546), .ZN(n554) );
  OAI22_X1 U28 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n555), .ZN(data_1[10])
         );
  NAND2_X1 U29 ( .A1(N174), .A2(n546), .ZN(n555) );
  OAI22_X1 U30 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n556), .ZN(data_1[11])
         );
  NAND2_X1 U31 ( .A1(N173), .A2(n546), .ZN(n556) );
  AND3_X1 U32 ( .A1(cs_1), .A2(n563), .A3(we_1), .ZN(n579) );
  NAND3_X1 U33 ( .A1(cs_0), .A2(n551), .A3(oe_0), .ZN(n558) );
  INV_X1 U34 ( .A(we_0), .ZN(n551) );
  NAND2_X1 U35 ( .A1(N42), .A2(n579), .ZN(n565) );
  NAND2_X1 U36 ( .A1(N39), .A2(n550), .ZN(n564) );
  NAND2_X1 U37 ( .A1(we_0), .A2(cs_0), .ZN(n563) );
  INV_X1 U38 ( .A(n576), .ZN(n537) );
  AOI22_X1 U39 ( .A1(data_1[8]), .A2(n579), .B1(data_0[8]), .B2(n550), .ZN(
        n576) );
  OAI22_X1 U45 ( .A1(1'b1), .A2(n548), .B1(n557), .B2(n558), .ZN(data_0[8]) );
  NAND2_X1 U46 ( .A1(N160), .A2(n548), .ZN(n557) );
  INV_X1 U47 ( .A(n577), .ZN(n536) );
  AOI22_X1 U50 ( .A1(data_1[9]), .A2(n579), .B1(data_0[9]), .B2(n550), .ZN(
        n577) );
  OAI22_X1 U51 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n559), .ZN(data_0[9]) );
  NAND2_X1 U53 ( .A1(N159), .A2(n548), .ZN(n559) );
  INV_X1 U54 ( .A(n578), .ZN(n535) );
  AOI22_X1 U55 ( .A1(data_1[10]), .A2(n579), .B1(data_0[10]), .B2(n550), .ZN(
        n578) );
  OAI22_X1 U56 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n560), .ZN(data_0[10])
         );
  NAND2_X1 U57 ( .A1(N158), .A2(n548), .ZN(n560) );
  INV_X1 U58 ( .A(n580), .ZN(n534) );
  AOI22_X1 U59 ( .A1(data_1[11]), .A2(n579), .B1(data_0[11]), .B2(n550), .ZN(
        n580) );
  OAI22_X1 U60 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n561), .ZN(data_0[11])
         );
  NAND2_X1 U61 ( .A1(N157), .A2(n548), .ZN(n561) );
  INV_X1 U62 ( .A(n568), .ZN(n545) );
  AOI22_X1 U63 ( .A1(data_1[0]), .A2(n579), .B1(data_0[0]), .B2(n550), .ZN(
        n568) );
  INV_X1 U64 ( .A(n569), .ZN(n544) );
  AOI22_X1 U65 ( .A1(data_1[1]), .A2(n579), .B1(data_0[1]), .B2(n550), .ZN(
        n569) );
  INV_X1 U66 ( .A(n570), .ZN(n543) );
  AOI22_X1 U67 ( .A1(data_1[2]), .A2(n579), .B1(data_0[2]), .B2(n550), .ZN(
        n570) );
  INV_X1 U69 ( .A(n571), .ZN(n542) );
  AOI22_X1 U70 ( .A1(data_1[3]), .A2(n579), .B1(data_0[3]), .B2(n550), .ZN(
        n571) );
  INV_X1 U71 ( .A(n572), .ZN(n541) );
  AOI22_X1 U72 ( .A1(data_1[4]), .A2(n579), .B1(data_0[4]), .B2(n550), .ZN(
        n572) );
  INV_X1 U73 ( .A(n573), .ZN(n540) );
  AOI22_X1 U74 ( .A1(data_1[5]), .A2(n579), .B1(data_0[5]), .B2(n550), .ZN(
        n573) );
  INV_X1 U75 ( .A(n574), .ZN(n539) );
  AOI22_X1 U76 ( .A1(data_1[6]), .A2(n579), .B1(data_0[6]), .B2(n550), .ZN(
        n574) );
  INV_X1 U77 ( .A(n575), .ZN(n538) );
  AOI22_X1 U78 ( .A1(data_1[7]), .A2(n579), .B1(data_0[7]), .B2(n550), .ZN(
        n575) );
  NAND2_X1 U79 ( .A1(n579), .A2(n549), .ZN(n567) );
  INV_X1 U80 ( .A(N42), .ZN(n549) );
  INV_X1 U81 ( .A(N37), .ZN(n532) );
  INV_X1 U82 ( .A(N38), .ZN(n533) );
  OR2_X1 U83 ( .A1(n563), .A2(N39), .ZN(n566) );
  MUX2_X1 U84 ( .A(\mem[6][0] ), .B(\mem[7][0] ), .S(N37), .Z(n379) );
  MUX2_X1 U85 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .S(N37), .Z(n380) );
  MUX2_X1 U86 ( .A(n380), .B(n379), .S(N38), .Z(n381) );
  MUX2_X1 U87 ( .A(\mem[2][0] ), .B(\mem[3][0] ), .S(N37), .Z(n382) );
  MUX2_X1 U88 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .S(N37), .Z(n383) );
  MUX2_X1 U89 ( .A(n383), .B(n382), .S(N38), .Z(n384) );
  MUX2_X1 U90 ( .A(n384), .B(n381), .S(N39), .Z(N168) );
  MUX2_X1 U91 ( .A(\mem[6][1] ), .B(\mem[7][1] ), .S(N37), .Z(n385) );
  MUX2_X1 U92 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .S(N37), .Z(n386) );
  MUX2_X1 U93 ( .A(n386), .B(n385), .S(N38), .Z(n387) );
  MUX2_X1 U94 ( .A(\mem[2][1] ), .B(\mem[3][1] ), .S(n453), .Z(n388) );
  MUX2_X1 U95 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .S(n452), .Z(n389) );
  MUX2_X1 U96 ( .A(n389), .B(n388), .S(N38), .Z(n390) );
  MUX2_X1 U97 ( .A(n390), .B(n387), .S(N39), .Z(N167) );
  MUX2_X1 U98 ( .A(\mem[6][2] ), .B(\mem[7][2] ), .S(n452), .Z(n391) );
  MUX2_X1 U99 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .S(N37), .Z(n392) );
  MUX2_X1 U100 ( .A(n392), .B(n391), .S(N38), .Z(n393) );
  MUX2_X1 U101 ( .A(\mem[2][2] ), .B(\mem[3][2] ), .S(n453), .Z(n394) );
  MUX2_X1 U102 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .S(n452), .Z(n395) );
  MUX2_X1 U103 ( .A(n395), .B(n394), .S(N38), .Z(n396) );
  MUX2_X1 U104 ( .A(n396), .B(n393), .S(N39), .Z(N166) );
  MUX2_X1 U105 ( .A(\mem[6][3] ), .B(\mem[7][3] ), .S(N37), .Z(n397) );
  MUX2_X1 U106 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .S(N37), .Z(n398) );
  MUX2_X1 U107 ( .A(n398), .B(n397), .S(n451), .Z(n399) );
  MUX2_X1 U108 ( .A(\mem[2][3] ), .B(\mem[3][3] ), .S(n453), .Z(n400) );
  MUX2_X1 U109 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .S(n452), .Z(n401) );
  MUX2_X1 U110 ( .A(n401), .B(n400), .S(N38), .Z(n402) );
  MUX2_X1 U111 ( .A(n402), .B(n399), .S(N39), .Z(N165) );
  MUX2_X1 U112 ( .A(\mem[6][4] ), .B(\mem[7][4] ), .S(N37), .Z(n403) );
  MUX2_X1 U113 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .S(n453), .Z(n404) );
  MUX2_X1 U114 ( .A(n404), .B(n403), .S(n451), .Z(n405) );
  MUX2_X1 U115 ( .A(\mem[2][4] ), .B(\mem[3][4] ), .S(n452), .Z(n406) );
  MUX2_X1 U116 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .S(N37), .Z(n407) );
  MUX2_X1 U117 ( .A(n407), .B(n406), .S(N38), .Z(n408) );
  MUX2_X1 U118 ( .A(n408), .B(n405), .S(N39), .Z(N164) );
  MUX2_X1 U119 ( .A(\mem[6][5] ), .B(\mem[7][5] ), .S(n453), .Z(n409) );
  MUX2_X1 U120 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .S(n452), .Z(n410) );
  MUX2_X1 U121 ( .A(n410), .B(n409), .S(n451), .Z(n411) );
  MUX2_X1 U122 ( .A(\mem[2][5] ), .B(\mem[3][5] ), .S(N37), .Z(n412) );
  MUX2_X1 U123 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .S(n453), .Z(n413) );
  MUX2_X1 U124 ( .A(n413), .B(n412), .S(N38), .Z(n414) );
  MUX2_X1 U125 ( .A(n414), .B(n411), .S(N39), .Z(N163) );
  MUX2_X1 U126 ( .A(\mem[6][6] ), .B(\mem[7][6] ), .S(n452), .Z(n415) );
  MUX2_X1 U127 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .S(n452), .Z(n416) );
  MUX2_X1 U128 ( .A(n416), .B(n415), .S(n451), .Z(n417) );
  MUX2_X1 U129 ( .A(\mem[2][6] ), .B(\mem[3][6] ), .S(n452), .Z(n418) );
  MUX2_X1 U130 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .S(n452), .Z(n419) );
  MUX2_X1 U131 ( .A(n419), .B(n418), .S(n451), .Z(n420) );
  MUX2_X1 U132 ( .A(n420), .B(n417), .S(N39), .Z(N162) );
  MUX2_X1 U133 ( .A(\mem[6][7] ), .B(\mem[7][7] ), .S(n452), .Z(n421) );
  MUX2_X1 U134 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .S(n452), .Z(n422) );
  MUX2_X1 U135 ( .A(n422), .B(n421), .S(n451), .Z(n423) );
  MUX2_X1 U136 ( .A(\mem[2][7] ), .B(\mem[3][7] ), .S(n452), .Z(n424) );
  MUX2_X1 U137 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .S(n452), .Z(n425) );
  MUX2_X1 U138 ( .A(n425), .B(n424), .S(n451), .Z(n426) );
  MUX2_X1 U139 ( .A(n426), .B(n423), .S(N39), .Z(N161) );
  MUX2_X1 U140 ( .A(\mem[6][8] ), .B(\mem[7][8] ), .S(n452), .Z(n427) );
  MUX2_X1 U141 ( .A(\mem[4][8] ), .B(\mem[5][8] ), .S(n452), .Z(n428) );
  MUX2_X1 U142 ( .A(n428), .B(n427), .S(n451), .Z(n429) );
  MUX2_X1 U143 ( .A(\mem[2][8] ), .B(\mem[3][8] ), .S(n452), .Z(n430) );
  MUX2_X1 U144 ( .A(\mem[0][8] ), .B(\mem[1][8] ), .S(n452), .Z(n431) );
  MUX2_X1 U145 ( .A(n431), .B(n430), .S(n451), .Z(n432) );
  MUX2_X1 U146 ( .A(n432), .B(n429), .S(N39), .Z(N160) );
  MUX2_X1 U147 ( .A(\mem[6][9] ), .B(\mem[7][9] ), .S(n453), .Z(n433) );
  MUX2_X1 U148 ( .A(\mem[4][9] ), .B(\mem[5][9] ), .S(n453), .Z(n434) );
  MUX2_X1 U149 ( .A(n434), .B(n433), .S(n451), .Z(n435) );
  MUX2_X1 U150 ( .A(\mem[2][9] ), .B(\mem[3][9] ), .S(n453), .Z(n436) );
  MUX2_X1 U151 ( .A(\mem[0][9] ), .B(\mem[1][9] ), .S(n453), .Z(n437) );
  MUX2_X1 U152 ( .A(n437), .B(n436), .S(n451), .Z(n438) );
  MUX2_X1 U153 ( .A(n438), .B(n435), .S(N39), .Z(N159) );
  MUX2_X1 U154 ( .A(\mem[6][10] ), .B(\mem[7][10] ), .S(n453), .Z(n439) );
  MUX2_X1 U155 ( .A(\mem[4][10] ), .B(\mem[5][10] ), .S(n453), .Z(n440) );
  MUX2_X1 U156 ( .A(n440), .B(n439), .S(n451), .Z(n441) );
  MUX2_X1 U157 ( .A(\mem[2][10] ), .B(\mem[3][10] ), .S(n453), .Z(n442) );
  MUX2_X1 U158 ( .A(\mem[0][10] ), .B(\mem[1][10] ), .S(n453), .Z(n443) );
  MUX2_X1 U159 ( .A(n443), .B(n442), .S(n451), .Z(n444) );
  MUX2_X1 U160 ( .A(n444), .B(n441), .S(N39), .Z(N158) );
  MUX2_X1 U161 ( .A(\mem[6][11] ), .B(\mem[7][11] ), .S(n453), .Z(n445) );
  MUX2_X1 U162 ( .A(\mem[4][11] ), .B(\mem[5][11] ), .S(n453), .Z(n446) );
  MUX2_X1 U163 ( .A(n446), .B(n445), .S(n451), .Z(n447) );
  MUX2_X1 U164 ( .A(\mem[2][11] ), .B(\mem[3][11] ), .S(n453), .Z(n448) );
  MUX2_X1 U165 ( .A(\mem[0][11] ), .B(\mem[1][11] ), .S(n453), .Z(n449) );
  MUX2_X1 U166 ( .A(n449), .B(n448), .S(n451), .Z(n450) );
  MUX2_X1 U167 ( .A(n450), .B(n447), .S(N39), .Z(N157) );
  MUX2_X1 U168 ( .A(\mem[6][0] ), .B(\mem[7][0] ), .S(N40), .Z(n454) );
  MUX2_X1 U169 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .S(N40), .Z(n455) );
  MUX2_X1 U170 ( .A(n455), .B(n454), .S(N41), .Z(n456) );
  MUX2_X1 U171 ( .A(\mem[2][0] ), .B(\mem[3][0] ), .S(N40), .Z(n457) );
  MUX2_X1 U172 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .S(N40), .Z(n458) );
  MUX2_X1 U173 ( .A(n458), .B(n457), .S(N41), .Z(n459) );
  MUX2_X1 U174 ( .A(n459), .B(n456), .S(N42), .Z(N184) );
  MUX2_X1 U175 ( .A(\mem[6][1] ), .B(\mem[7][1] ), .S(N40), .Z(n460) );
  MUX2_X1 U176 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .S(N40), .Z(n461) );
  MUX2_X1 U177 ( .A(n461), .B(n460), .S(N41), .Z(n462) );
  MUX2_X1 U178 ( .A(\mem[2][1] ), .B(\mem[3][1] ), .S(N40), .Z(n463) );
  MUX2_X1 U179 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .S(N40), .Z(n464) );
  MUX2_X1 U180 ( .A(n464), .B(n463), .S(N41), .Z(n465) );
  MUX2_X1 U181 ( .A(n465), .B(n462), .S(N42), .Z(N183) );
  MUX2_X1 U182 ( .A(\mem[6][2] ), .B(\mem[7][2] ), .S(N40), .Z(n466) );
  MUX2_X1 U183 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .S(N40), .Z(n467) );
  MUX2_X1 U184 ( .A(n467), .B(n466), .S(N41), .Z(n468) );
  MUX2_X1 U185 ( .A(\mem[2][2] ), .B(\mem[3][2] ), .S(N40), .Z(n469) );
  MUX2_X1 U186 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .S(N40), .Z(n470) );
  MUX2_X1 U187 ( .A(n470), .B(n469), .S(N41), .Z(n471) );
  MUX2_X1 U188 ( .A(n471), .B(n468), .S(N42), .Z(N182) );
  MUX2_X1 U189 ( .A(\mem[6][3] ), .B(\mem[7][3] ), .S(n527), .Z(n472) );
  MUX2_X1 U190 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .S(n527), .Z(n473) );
  MUX2_X1 U191 ( .A(n473), .B(n472), .S(N41), .Z(n474) );
  MUX2_X1 U192 ( .A(\mem[2][3] ), .B(\mem[3][3] ), .S(n527), .Z(n475) );
  MUX2_X1 U193 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .S(n527), .Z(n476) );
  MUX2_X1 U194 ( .A(n476), .B(n475), .S(N41), .Z(n477) );
  MUX2_X1 U195 ( .A(n477), .B(n474), .S(N42), .Z(N181) );
  MUX2_X1 U196 ( .A(\mem[6][4] ), .B(\mem[7][4] ), .S(n527), .Z(n478) );
  MUX2_X1 U197 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .S(n527), .Z(n479) );
  MUX2_X1 U198 ( .A(n479), .B(n478), .S(N41), .Z(n480) );
  MUX2_X1 U199 ( .A(\mem[2][4] ), .B(\mem[3][4] ), .S(n527), .Z(n481) );
  MUX2_X1 U200 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .S(n527), .Z(n482) );
  MUX2_X1 U201 ( .A(n482), .B(n481), .S(N41), .Z(n483) );
  MUX2_X1 U202 ( .A(n483), .B(n480), .S(N42), .Z(N180) );
  MUX2_X1 U203 ( .A(\mem[6][5] ), .B(\mem[7][5] ), .S(n527), .Z(n484) );
  MUX2_X1 U204 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .S(n527), .Z(n485) );
  MUX2_X1 U205 ( .A(n485), .B(n484), .S(N41), .Z(n486) );
  MUX2_X1 U206 ( .A(\mem[2][5] ), .B(\mem[3][5] ), .S(n527), .Z(n487) );
  MUX2_X1 U207 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .S(n527), .Z(n488) );
  MUX2_X1 U208 ( .A(n488), .B(n487), .S(N41), .Z(n489) );
  MUX2_X1 U209 ( .A(n489), .B(n486), .S(N42), .Z(N179) );
  MUX2_X1 U210 ( .A(\mem[6][6] ), .B(\mem[7][6] ), .S(n528), .Z(n490) );
  MUX2_X1 U211 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .S(n528), .Z(n491) );
  MUX2_X1 U212 ( .A(n491), .B(n490), .S(n526), .Z(n492) );
  MUX2_X1 U213 ( .A(\mem[2][6] ), .B(\mem[3][6] ), .S(n528), .Z(n493) );
  MUX2_X1 U214 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .S(n528), .Z(n494) );
  MUX2_X1 U215 ( .A(n494), .B(n493), .S(n526), .Z(n495) );
  MUX2_X1 U216 ( .A(n495), .B(n492), .S(N42), .Z(N178) );
  MUX2_X1 U217 ( .A(\mem[6][7] ), .B(\mem[7][7] ), .S(n528), .Z(n496) );
  MUX2_X1 U218 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .S(n528), .Z(n497) );
  MUX2_X1 U219 ( .A(n497), .B(n496), .S(n526), .Z(n498) );
  MUX2_X1 U220 ( .A(\mem[2][7] ), .B(\mem[3][7] ), .S(n528), .Z(n499) );
  MUX2_X1 U221 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .S(n528), .Z(n500) );
  MUX2_X1 U222 ( .A(n500), .B(n499), .S(n526), .Z(n501) );
  MUX2_X1 U223 ( .A(n501), .B(n498), .S(N42), .Z(N177) );
  MUX2_X1 U224 ( .A(\mem[6][8] ), .B(\mem[7][8] ), .S(n528), .Z(n502) );
  MUX2_X1 U225 ( .A(\mem[4][8] ), .B(\mem[5][8] ), .S(n528), .Z(n503) );
  MUX2_X1 U226 ( .A(n503), .B(n502), .S(n526), .Z(n504) );
  MUX2_X1 U227 ( .A(\mem[2][8] ), .B(\mem[3][8] ), .S(n528), .Z(n505) );
  MUX2_X1 U228 ( .A(\mem[0][8] ), .B(\mem[1][8] ), .S(n528), .Z(n506) );
  MUX2_X1 U229 ( .A(n506), .B(n505), .S(n526), .Z(n507) );
  MUX2_X1 U230 ( .A(n507), .B(n504), .S(N42), .Z(N176) );
  MUX2_X1 U231 ( .A(\mem[6][9] ), .B(\mem[7][9] ), .S(n529), .Z(n508) );
  MUX2_X1 U232 ( .A(\mem[4][9] ), .B(\mem[5][9] ), .S(n529), .Z(n509) );
  MUX2_X1 U233 ( .A(n509), .B(n508), .S(n526), .Z(n510) );
  MUX2_X1 U234 ( .A(\mem[2][9] ), .B(\mem[3][9] ), .S(n529), .Z(n511) );
  MUX2_X1 U235 ( .A(\mem[0][9] ), .B(\mem[1][9] ), .S(n529), .Z(n512) );
  MUX2_X1 U236 ( .A(n512), .B(n511), .S(n526), .Z(n513) );
  MUX2_X1 U237 ( .A(n513), .B(n510), .S(N42), .Z(N175) );
  MUX2_X1 U238 ( .A(\mem[6][10] ), .B(\mem[7][10] ), .S(n529), .Z(n514) );
  MUX2_X1 U239 ( .A(\mem[4][10] ), .B(\mem[5][10] ), .S(n529), .Z(n515) );
  MUX2_X1 U240 ( .A(n515), .B(n514), .S(n526), .Z(n516) );
  MUX2_X1 U241 ( .A(\mem[2][10] ), .B(\mem[3][10] ), .S(n529), .Z(n517) );
  MUX2_X1 U242 ( .A(\mem[0][10] ), .B(\mem[1][10] ), .S(n529), .Z(n518) );
  MUX2_X1 U243 ( .A(n518), .B(n517), .S(n526), .Z(n519) );
  MUX2_X1 U244 ( .A(n519), .B(n516), .S(N42), .Z(N174) );
  MUX2_X1 U245 ( .A(\mem[6][11] ), .B(\mem[7][11] ), .S(n529), .Z(n520) );
  MUX2_X1 U246 ( .A(\mem[4][11] ), .B(\mem[5][11] ), .S(n529), .Z(n521) );
  MUX2_X1 U247 ( .A(n521), .B(n520), .S(n526), .Z(n522) );
  MUX2_X1 U248 ( .A(\mem[2][11] ), .B(\mem[3][11] ), .S(n529), .Z(n523) );
  MUX2_X1 U249 ( .A(\mem[0][11] ), .B(\mem[1][11] ), .S(n529), .Z(n524) );
  MUX2_X1 U250 ( .A(n524), .B(n523), .S(n526), .Z(n525) );
  MUX2_X1 U251 ( .A(n525), .B(n522), .S(N42), .Z(N173) );
endmodule


module syn_fifo_8 ( clk, rst, wr_cs, rd_cs, data_in, rd_en, wr_en, data_out, 
        empty, full );
  input [11:0] data_in;
  output [11:0] data_out;
  input clk, rst, wr_cs, rd_cs, rd_en, wr_en;
  output empty, full;
  wire   N40, n99, n100, n101, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183;
  wire   [3:0] status_cnt;
  wire   [2:0] wr_pointer;
  wire   [2:0] rd_pointer;
  wire   [11:0] data_ram;
  assign full = N40;

  DFFR_X1 \wr_pointer_reg[2]  ( .D(n123), .CK(clk), .RN(n106), .Q(
        wr_pointer[2]), .QN(n140) );
  DFFR_X1 \rd_pointer_reg[2]  ( .D(n126), .CK(clk), .RN(n106), .Q(
        rd_pointer[2]), .QN(n139) );
  DFFR_X1 \data_out_reg[11]  ( .D(n127), .CK(clk), .RN(n106), .Q(data_out[11]), 
        .QN(n141) );
  DFFR_X1 \data_out_reg[10]  ( .D(n128), .CK(clk), .RN(n106), .Q(data_out[10]), 
        .QN(n142) );
  DFFR_X1 \data_out_reg[9]  ( .D(n129), .CK(clk), .RN(n106), .Q(data_out[9]), 
        .QN(n143) );
  DFFR_X1 \data_out_reg[8]  ( .D(n130), .CK(clk), .RN(n106), .Q(data_out[8]), 
        .QN(n144) );
  DFFR_X1 \data_out_reg[7]  ( .D(n131), .CK(clk), .RN(n106), .Q(data_out[7]), 
        .QN(n145) );
  DFFR_X1 \data_out_reg[6]  ( .D(n132), .CK(clk), .RN(n106), .Q(data_out[6]), 
        .QN(n146) );
  DFFR_X1 \data_out_reg[5]  ( .D(n133), .CK(clk), .RN(n107), .Q(data_out[5]), 
        .QN(n147) );
  DFFR_X1 \data_out_reg[4]  ( .D(n134), .CK(clk), .RN(n107), .Q(data_out[4]), 
        .QN(n148) );
  DFFR_X1 \data_out_reg[3]  ( .D(n135), .CK(clk), .RN(n107), .Q(data_out[3]), 
        .QN(n149) );
  DFFR_X1 \data_out_reg[2]  ( .D(n136), .CK(clk), .RN(n107), .Q(data_out[2]), 
        .QN(n150) );
  DFFR_X1 \data_out_reg[1]  ( .D(n137), .CK(clk), .RN(n107), .Q(data_out[1]), 
        .QN(n151) );
  DFFR_X1 \data_out_reg[0]  ( .D(n138), .CK(clk), .RN(n107), .Q(data_out[0]), 
        .QN(n152) );
  DFFR_X1 \status_cnt_reg[0]  ( .D(n117), .CK(clk), .RN(n107), .Q(
        status_cnt[0]), .QN(n101) );
  DFFR_X1 \status_cnt_reg[1]  ( .D(n118), .CK(clk), .RN(n107), .Q(
        status_cnt[1]), .QN(n99) );
  DFFR_X1 \status_cnt_reg[2]  ( .D(n119), .CK(clk), .RN(n107), .Q(
        status_cnt[2]), .QN(n100) );
  XOR2_X1 U27 ( .A(n139), .B(n170), .Z(n126) );
  XOR2_X1 U29 ( .A(rd_pointer[1]), .B(n169), .Z(n125) );
  XOR2_X1 U31 ( .A(rd_pointer[0]), .B(n112), .Z(n124) );
  XOR2_X1 U32 ( .A(n140), .B(n168), .Z(n123) );
  XOR2_X1 U34 ( .A(wr_pointer[1]), .B(n167), .Z(n122) );
  XOR2_X1 U36 ( .A(n105), .B(n166), .Z(n121) );
  NAND3_X1 U49 ( .A1(n113), .A2(n115), .A3(n111), .ZN(n159) );
  NAND3_X1 U50 ( .A1(n163), .A2(n115), .A3(status_cnt[0]), .ZN(n156) );
  XOR2_X1 U53 ( .A(n155), .B(n113), .Z(n117) );
  NAND3_X1 U58 ( .A1(n166), .A2(n153), .A3(n112), .ZN(n158) );
  NAND4_X1 U63 ( .A1(status_cnt[2]), .A2(status_cnt[1]), .A3(status_cnt[0]), 
        .A4(n114), .ZN(n165) );
  ram_dp_ar_aw_8 DP_RAM ( .address_0(wr_pointer), .data_0(data_in), .cs_0(
        wr_cs), .we_0(wr_en), .oe_0(1'b0), .address_1(rd_pointer), .data_1(
        data_ram), .cs_1(rd_cs), .we_1(1'b0), .oe_1(rd_en) );
  DFFR_X1 \wr_pointer_reg[0]  ( .D(n121), .CK(clk), .RN(n106), .Q(
        wr_pointer[0]), .QN(n105) );
  DFFR_X1 \wr_pointer_reg[1]  ( .D(n122), .CK(clk), .RN(n106), .Q(
        wr_pointer[1]) );
  DFFR_X1 \rd_pointer_reg[0]  ( .D(n124), .CK(clk), .RN(n106), .Q(
        rd_pointer[0]) );
  DFFR_X1 \rd_pointer_reg[1]  ( .D(n125), .CK(clk), .RN(n106), .Q(
        rd_pointer[1]) );
  DFFR_X1 \status_cnt_reg[3]  ( .D(n120), .CK(clk), .RN(n107), .Q(
        status_cnt[3]), .QN(n114) );
  AND3_X2 U3 ( .A1(n99), .A2(n100), .A3(n101), .ZN(n154) );
  INV_X2 U4 ( .A(n183), .ZN(n112) );
  NOR3_X1 U5 ( .A1(n103), .A2(n104), .A3(n155), .ZN(n157) );
  AND2_X2 U6 ( .A1(n154), .A2(n114), .ZN(empty) );
  AND2_X1 U7 ( .A1(n113), .A2(n163), .ZN(n103) );
  AND2_X1 U8 ( .A1(n111), .A2(status_cnt[0]), .ZN(n104) );
  AOI211_X1 U9 ( .C1(n154), .C2(status_cnt[3]), .A(n112), .B(n166), .ZN(n163)
         );
  INV_X1 U10 ( .A(n158), .ZN(n111) );
  BUF_X1 U11 ( .A(rst), .Z(n106) );
  BUF_X1 U12 ( .A(rst), .Z(n107) );
  INV_X1 U13 ( .A(n159), .ZN(n110) );
  NOR2_X1 U14 ( .A1(n111), .A2(n163), .ZN(n155) );
  NAND2_X1 U15 ( .A1(n154), .A2(n114), .ZN(n153) );
  INV_X1 U16 ( .A(n163), .ZN(n109) );
  OAI21_X1 U17 ( .B1(n108), .B2(n116), .A(n161), .ZN(n119) );
  OAI21_X1 U18 ( .B1(n160), .B2(n110), .A(n116), .ZN(n161) );
  INV_X1 U19 ( .A(n162), .ZN(n108) );
  NOR3_X1 U20 ( .A1(n115), .A2(n109), .A3(n113), .ZN(n160) );
  NOR2_X1 U21 ( .A1(n105), .A2(n166), .ZN(n167) );
  NAND2_X1 U22 ( .A1(rd_en), .A2(rd_cs), .ZN(n183) );
  OAI221_X1 U23 ( .B1(status_cnt[1]), .B2(n109), .C1(n158), .C2(n115), .A(n157), .ZN(n162) );
  OAI22_X1 U24 ( .A1(n109), .A2(n165), .B1(n164), .B2(n114), .ZN(n120) );
  AOI221_X1 U25 ( .B1(n163), .B2(n116), .C1(status_cnt[2]), .C2(n111), .A(n162), .ZN(n164) );
  INV_X1 U26 ( .A(n165), .ZN(N40) );
  OAI22_X1 U28 ( .A1(n152), .A2(n112), .B1(n183), .B2(n182), .ZN(n138) );
  INV_X1 U30 ( .A(data_ram[0]), .ZN(n182) );
  OAI22_X1 U33 ( .A1(n151), .A2(n112), .B1(n183), .B2(n181), .ZN(n137) );
  INV_X1 U35 ( .A(data_ram[1]), .ZN(n181) );
  OAI22_X1 U37 ( .A1(n150), .A2(n112), .B1(n183), .B2(n180), .ZN(n136) );
  INV_X1 U38 ( .A(data_ram[2]), .ZN(n180) );
  OAI22_X1 U39 ( .A1(n149), .A2(n112), .B1(n183), .B2(n179), .ZN(n135) );
  INV_X1 U40 ( .A(data_ram[3]), .ZN(n179) );
  OAI22_X1 U41 ( .A1(n148), .A2(n112), .B1(n183), .B2(n178), .ZN(n134) );
  INV_X1 U42 ( .A(data_ram[4]), .ZN(n178) );
  OAI22_X1 U43 ( .A1(n147), .A2(n112), .B1(n183), .B2(n177), .ZN(n133) );
  INV_X1 U44 ( .A(data_ram[5]), .ZN(n177) );
  OAI22_X1 U45 ( .A1(n146), .A2(n112), .B1(n183), .B2(n176), .ZN(n132) );
  INV_X1 U46 ( .A(data_ram[6]), .ZN(n176) );
  OAI22_X1 U47 ( .A1(n145), .A2(n112), .B1(n183), .B2(n175), .ZN(n131) );
  INV_X1 U48 ( .A(data_ram[7]), .ZN(n175) );
  OAI22_X1 U51 ( .A1(n143), .A2(n112), .B1(n183), .B2(n173), .ZN(n129) );
  INV_X1 U52 ( .A(data_ram[9]), .ZN(n173) );
  OAI22_X1 U54 ( .A1(n142), .A2(n112), .B1(n183), .B2(n172), .ZN(n128) );
  INV_X1 U55 ( .A(data_ram[10]), .ZN(n172) );
  OAI22_X1 U56 ( .A1(n141), .A2(n112), .B1(n183), .B2(n171), .ZN(n127) );
  INV_X1 U57 ( .A(data_ram[11]), .ZN(n171) );
  OAI22_X1 U59 ( .A1(n144), .A2(n112), .B1(n183), .B2(n174), .ZN(n130) );
  INV_X1 U60 ( .A(data_ram[8]), .ZN(n174) );
  NAND2_X1 U61 ( .A1(rd_pointer[1]), .A2(n169), .ZN(n170) );
  NAND2_X1 U62 ( .A1(wr_en), .A2(wr_cs), .ZN(n166) );
  OAI211_X1 U64 ( .C1(n157), .C2(n115), .A(n156), .B(n159), .ZN(n118) );
  INV_X1 U65 ( .A(status_cnt[0]), .ZN(n113) );
  AND2_X1 U66 ( .A1(rd_pointer[0]), .A2(n112), .ZN(n169) );
  NAND2_X1 U67 ( .A1(wr_pointer[1]), .A2(n167), .ZN(n168) );
  INV_X1 U68 ( .A(status_cnt[1]), .ZN(n115) );
  INV_X1 U69 ( .A(status_cnt[2]), .ZN(n116) );
endmodule


module ram_dp_ar_aw_7 ( address_0, data_0, cs_0, we_0, oe_0, address_1, data_1, 
        cs_1, we_1, oe_1 );
  input [2:0] address_0;
  inout [11:0] data_0;
  input [2:0] address_1;
  inout [11:0] data_1;
  input cs_0, we_0, oe_0, cs_1, we_1, oe_1;
  wire   N37, N38, N39, N40, N41, N42, \mem[0][11] , \mem[0][10] , \mem[0][9] ,
         \mem[0][8] , \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , \mem[1][11] ,
         \mem[1][10] , \mem[1][9] , \mem[1][8] , \mem[1][7] , \mem[1][6] ,
         \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] , \mem[1][1] ,
         \mem[1][0] , \mem[2][11] , \mem[2][10] , \mem[2][9] , \mem[2][8] ,
         \mem[2][7] , \mem[2][6] , \mem[2][5] , \mem[2][4] , \mem[2][3] ,
         \mem[2][2] , \mem[2][1] , \mem[2][0] , \mem[3][11] , \mem[3][10] ,
         \mem[3][9] , \mem[3][8] , \mem[3][7] , \mem[3][6] , \mem[3][5] ,
         \mem[3][4] , \mem[3][3] , \mem[3][2] , \mem[3][1] , \mem[3][0] ,
         \mem[4][11] , \mem[4][10] , \mem[4][9] , \mem[4][8] , \mem[4][7] ,
         \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] , \mem[4][2] ,
         \mem[4][1] , \mem[4][0] , \mem[5][11] , \mem[5][10] , \mem[5][9] ,
         \mem[5][8] , \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] ,
         \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[6][11] ,
         \mem[6][10] , \mem[6][9] , \mem[6][8] , \mem[6][7] , \mem[6][6] ,
         \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] , \mem[6][1] ,
         \mem[6][0] , \mem[7][11] , \mem[7][10] , \mem[7][9] , \mem[7][8] ,
         \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] , \mem[7][3] ,
         \mem[7][2] , \mem[7][1] , \mem[7][0] , N47, N60, N73, N86, N99, N112,
         N125, N138, N157, N158, N159, N160, N161, N162, N163, N164, N165,
         N166, N167, N168, N173, N174, N175, N176, N177, N178, N179, N180,
         N181, N182, N183, N184, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476,
         n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487,
         n488, n489, n490, n491, n492, n493, n494, n495, n496, n497, n498,
         n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
         n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520,
         n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542,
         n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, n553,
         n554, n555, n556, n557, n558, n559, n560, n561, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580;
  assign N37 = address_0[0];
  assign N38 = address_0[1];
  assign N39 = address_0[2];
  assign N40 = address_1[0];
  assign N41 = address_1[1];
  assign N42 = address_1[2];

  OAI33_X1 U40 ( .A1(n531), .A2(n567), .A3(n530), .B1(n533), .B2(n566), .B3(
        n532), .ZN(N99) );
  OAI33_X1 U41 ( .A1(n565), .A2(N41), .A3(N40), .B1(n564), .B2(N38), .B3(N37), 
        .ZN(N86) );
  OAI33_X1 U42 ( .A1(n565), .A2(N41), .A3(n530), .B1(n564), .B2(N38), .B3(n532), .ZN(N73) );
  OAI33_X1 U43 ( .A1(n565), .A2(N40), .A3(n531), .B1(n564), .B2(N37), .B3(n533), .ZN(N60) );
  OAI33_X1 U44 ( .A1(n565), .A2(n530), .A3(n531), .B1(n564), .B2(n532), .B3(
        n533), .ZN(N47) );
  OAI33_X1 U48 ( .A1(n567), .A2(N41), .A3(N40), .B1(n566), .B2(N38), .B3(N37), 
        .ZN(N138) );
  OAI33_X1 U49 ( .A1(n530), .A2(N41), .A3(n567), .B1(n532), .B2(N38), .B3(n566), .ZN(N125) );
  OAI33_X1 U52 ( .A1(n531), .A2(N40), .A3(n567), .B1(n533), .B2(N37), .B3(n566), .ZN(N112) );
  TBUF_X1 \data_0_tri[0]  ( .A(N168), .EN(n558), .Z(data_0[0]) );
  TBUF_X1 \data_0_tri[1]  ( .A(N167), .EN(n558), .Z(data_0[1]) );
  TBUF_X1 \data_0_tri[2]  ( .A(N166), .EN(n558), .Z(data_0[2]) );
  TBUF_X1 \data_0_tri[3]  ( .A(N165), .EN(n558), .Z(data_0[3]) );
  TBUF_X1 \data_0_tri[4]  ( .A(N164), .EN(n558), .Z(data_0[4]) );
  TBUF_X1 \data_0_tri[5]  ( .A(N163), .EN(n558), .Z(data_0[5]) );
  TBUF_X1 \data_0_tri[6]  ( .A(N162), .EN(n558), .Z(data_0[6]) );
  TBUF_X1 \data_0_tri[7]  ( .A(N161), .EN(n558), .Z(data_0[7]) );
  TBUF_X1 \data_1_tri[0]  ( .A(N184), .EN(n553), .Z(data_1[0]) );
  TBUF_X1 \data_1_tri[1]  ( .A(N183), .EN(n553), .Z(data_1[1]) );
  TBUF_X1 \data_1_tri[2]  ( .A(N182), .EN(n553), .Z(data_1[2]) );
  TBUF_X1 \data_1_tri[3]  ( .A(N181), .EN(n553), .Z(data_1[3]) );
  TBUF_X1 \data_1_tri[4]  ( .A(N180), .EN(n553), .Z(data_1[4]) );
  TBUF_X1 \data_1_tri[5]  ( .A(N179), .EN(n553), .Z(data_1[5]) );
  TBUF_X1 \data_1_tri[6]  ( .A(N178), .EN(n553), .Z(data_1[6]) );
  TBUF_X1 \data_1_tri[7]  ( .A(N177), .EN(n553), .Z(data_1[7]) );
  DLH_X1 \mem_reg[1][11]  ( .G(n378), .D(n534), .Q(\mem[1][11] ) );
  DLH_X1 \mem_reg[1][10]  ( .G(n378), .D(n535), .Q(\mem[1][10] ) );
  DLH_X1 \mem_reg[1][9]  ( .G(n378), .D(n536), .Q(\mem[1][9] ) );
  DLH_X1 \mem_reg[1][8]  ( .G(n378), .D(n537), .Q(\mem[1][8] ) );
  DLH_X1 \mem_reg[1][7]  ( .G(n378), .D(n538), .Q(\mem[1][7] ) );
  DLH_X1 \mem_reg[1][6]  ( .G(n378), .D(n539), .Q(\mem[1][6] ) );
  DLH_X1 \mem_reg[1][5]  ( .G(n378), .D(n540), .Q(\mem[1][5] ) );
  DLH_X1 \mem_reg[1][4]  ( .G(n378), .D(n541), .Q(\mem[1][4] ) );
  DLH_X1 \mem_reg[1][3]  ( .G(n378), .D(n542), .Q(\mem[1][3] ) );
  DLH_X1 \mem_reg[1][2]  ( .G(n378), .D(n543), .Q(\mem[1][2] ) );
  DLH_X1 \mem_reg[1][1]  ( .G(n378), .D(n544), .Q(\mem[1][1] ) );
  DLH_X1 \mem_reg[1][0]  ( .G(n378), .D(n545), .Q(\mem[1][0] ) );
  DLH_X1 \mem_reg[6][11]  ( .G(n377), .D(n534), .Q(\mem[6][11] ) );
  DLH_X1 \mem_reg[6][10]  ( .G(n377), .D(n535), .Q(\mem[6][10] ) );
  DLH_X1 \mem_reg[6][9]  ( .G(n377), .D(n536), .Q(\mem[6][9] ) );
  DLH_X1 \mem_reg[6][8]  ( .G(n377), .D(n537), .Q(\mem[6][8] ) );
  DLH_X1 \mem_reg[6][7]  ( .G(n377), .D(n538), .Q(\mem[6][7] ) );
  DLH_X1 \mem_reg[6][6]  ( .G(n377), .D(n539), .Q(\mem[6][6] ) );
  DLH_X1 \mem_reg[6][5]  ( .G(n377), .D(n540), .Q(\mem[6][5] ) );
  DLH_X1 \mem_reg[6][4]  ( .G(n377), .D(n541), .Q(\mem[6][4] ) );
  DLH_X1 \mem_reg[6][3]  ( .G(n377), .D(n542), .Q(\mem[6][3] ) );
  DLH_X1 \mem_reg[6][2]  ( .G(n377), .D(n543), .Q(\mem[6][2] ) );
  DLH_X1 \mem_reg[6][1]  ( .G(n377), .D(n544), .Q(\mem[6][1] ) );
  DLH_X1 \mem_reg[6][0]  ( .G(n377), .D(n545), .Q(\mem[6][0] ) );
  DLH_X1 \mem_reg[3][11]  ( .G(n376), .D(n534), .Q(\mem[3][11] ) );
  DLH_X1 \mem_reg[3][10]  ( .G(n376), .D(n535), .Q(\mem[3][10] ) );
  DLH_X1 \mem_reg[3][9]  ( .G(n376), .D(n536), .Q(\mem[3][9] ) );
  DLH_X1 \mem_reg[3][8]  ( .G(n376), .D(n537), .Q(\mem[3][8] ) );
  DLH_X1 \mem_reg[3][7]  ( .G(n376), .D(n538), .Q(\mem[3][7] ) );
  DLH_X1 \mem_reg[3][6]  ( .G(n376), .D(n539), .Q(\mem[3][6] ) );
  DLH_X1 \mem_reg[3][5]  ( .G(n376), .D(n540), .Q(\mem[3][5] ) );
  DLH_X1 \mem_reg[3][4]  ( .G(n376), .D(n541), .Q(\mem[3][4] ) );
  DLH_X1 \mem_reg[3][3]  ( .G(n376), .D(n542), .Q(\mem[3][3] ) );
  DLH_X1 \mem_reg[3][2]  ( .G(n376), .D(n543), .Q(\mem[3][2] ) );
  DLH_X1 \mem_reg[3][1]  ( .G(n376), .D(n544), .Q(\mem[3][1] ) );
  DLH_X1 \mem_reg[3][0]  ( .G(n376), .D(n545), .Q(\mem[3][0] ) );
  DLH_X1 \mem_reg[4][11]  ( .G(n375), .D(n534), .Q(\mem[4][11] ) );
  DLH_X1 \mem_reg[4][10]  ( .G(n375), .D(n535), .Q(\mem[4][10] ) );
  DLH_X1 \mem_reg[4][9]  ( .G(n375), .D(n536), .Q(\mem[4][9] ) );
  DLH_X1 \mem_reg[4][8]  ( .G(n375), .D(n537), .Q(\mem[4][8] ) );
  DLH_X1 \mem_reg[4][7]  ( .G(n375), .D(n538), .Q(\mem[4][7] ) );
  DLH_X1 \mem_reg[4][6]  ( .G(n375), .D(n539), .Q(\mem[4][6] ) );
  DLH_X1 \mem_reg[4][5]  ( .G(n375), .D(n540), .Q(\mem[4][5] ) );
  DLH_X1 \mem_reg[4][4]  ( .G(n375), .D(n541), .Q(\mem[4][4] ) );
  DLH_X1 \mem_reg[4][3]  ( .G(n375), .D(n542), .Q(\mem[4][3] ) );
  DLH_X1 \mem_reg[4][2]  ( .G(n375), .D(n543), .Q(\mem[4][2] ) );
  DLH_X1 \mem_reg[4][1]  ( .G(n375), .D(n544), .Q(\mem[4][1] ) );
  DLH_X1 \mem_reg[4][0]  ( .G(n375), .D(n545), .Q(\mem[4][0] ) );
  DLH_X1 \mem_reg[2][11]  ( .G(n374), .D(n534), .Q(\mem[2][11] ) );
  DLH_X1 \mem_reg[2][10]  ( .G(n374), .D(n535), .Q(\mem[2][10] ) );
  DLH_X1 \mem_reg[2][9]  ( .G(n374), .D(n536), .Q(\mem[2][9] ) );
  DLH_X1 \mem_reg[2][8]  ( .G(n374), .D(n537), .Q(\mem[2][8] ) );
  DLH_X1 \mem_reg[2][7]  ( .G(n374), .D(n538), .Q(\mem[2][7] ) );
  DLH_X1 \mem_reg[2][6]  ( .G(n374), .D(n539), .Q(\mem[2][6] ) );
  DLH_X1 \mem_reg[2][5]  ( .G(n374), .D(n540), .Q(\mem[2][5] ) );
  DLH_X1 \mem_reg[2][4]  ( .G(n374), .D(n541), .Q(\mem[2][4] ) );
  DLH_X1 \mem_reg[2][3]  ( .G(n374), .D(n542), .Q(\mem[2][3] ) );
  DLH_X1 \mem_reg[2][2]  ( .G(n374), .D(n543), .Q(\mem[2][2] ) );
  DLH_X1 \mem_reg[2][1]  ( .G(n374), .D(n544), .Q(\mem[2][1] ) );
  DLH_X1 \mem_reg[2][0]  ( .G(n374), .D(n545), .Q(\mem[2][0] ) );
  DLH_X1 \mem_reg[5][11]  ( .G(n373), .D(n534), .Q(\mem[5][11] ) );
  DLH_X1 \mem_reg[5][10]  ( .G(n373), .D(n535), .Q(\mem[5][10] ) );
  DLH_X1 \mem_reg[5][9]  ( .G(n373), .D(n536), .Q(\mem[5][9] ) );
  DLH_X1 \mem_reg[5][8]  ( .G(n373), .D(n537), .Q(\mem[5][8] ) );
  DLH_X1 \mem_reg[5][7]  ( .G(n373), .D(n538), .Q(\mem[5][7] ) );
  DLH_X1 \mem_reg[5][6]  ( .G(n373), .D(n539), .Q(\mem[5][6] ) );
  DLH_X1 \mem_reg[5][5]  ( .G(n373), .D(n540), .Q(\mem[5][5] ) );
  DLH_X1 \mem_reg[5][4]  ( .G(n373), .D(n541), .Q(\mem[5][4] ) );
  DLH_X1 \mem_reg[5][3]  ( .G(n373), .D(n542), .Q(\mem[5][3] ) );
  DLH_X1 \mem_reg[5][2]  ( .G(n373), .D(n543), .Q(\mem[5][2] ) );
  DLH_X1 \mem_reg[5][1]  ( .G(n373), .D(n544), .Q(\mem[5][1] ) );
  DLH_X1 \mem_reg[5][0]  ( .G(n373), .D(n545), .Q(\mem[5][0] ) );
  DLH_X1 \mem_reg[0][11]  ( .G(n372), .D(n534), .Q(\mem[0][11] ) );
  DLH_X1 \mem_reg[0][10]  ( .G(n372), .D(n535), .Q(\mem[0][10] ) );
  DLH_X1 \mem_reg[0][9]  ( .G(n372), .D(n536), .Q(\mem[0][9] ) );
  DLH_X1 \mem_reg[0][8]  ( .G(n372), .D(n537), .Q(\mem[0][8] ) );
  DLH_X1 \mem_reg[0][7]  ( .G(n372), .D(n538), .Q(\mem[0][7] ) );
  DLH_X1 \mem_reg[0][6]  ( .G(n372), .D(n539), .Q(\mem[0][6] ) );
  DLH_X1 \mem_reg[0][5]  ( .G(n372), .D(n540), .Q(\mem[0][5] ) );
  DLH_X1 \mem_reg[0][4]  ( .G(n372), .D(n541), .Q(\mem[0][4] ) );
  DLH_X1 \mem_reg[0][3]  ( .G(n372), .D(n542), .Q(\mem[0][3] ) );
  DLH_X1 \mem_reg[0][2]  ( .G(n372), .D(n543), .Q(\mem[0][2] ) );
  DLH_X1 \mem_reg[0][1]  ( .G(n372), .D(n544), .Q(\mem[0][1] ) );
  DLH_X1 \mem_reg[0][0]  ( .G(n372), .D(n545), .Q(\mem[0][0] ) );
  DLH_X1 \mem_reg[7][11]  ( .G(n371), .D(n534), .Q(\mem[7][11] ) );
  DLH_X1 \mem_reg[7][10]  ( .G(n371), .D(n535), .Q(\mem[7][10] ) );
  DLH_X1 \mem_reg[7][9]  ( .G(n371), .D(n536), .Q(\mem[7][9] ) );
  DLH_X1 \mem_reg[7][8]  ( .G(n371), .D(n537), .Q(\mem[7][8] ) );
  DLH_X1 \mem_reg[7][7]  ( .G(n371), .D(n538), .Q(\mem[7][7] ) );
  DLH_X1 \mem_reg[7][6]  ( .G(n371), .D(n539), .Q(\mem[7][6] ) );
  DLH_X1 \mem_reg[7][5]  ( .G(n371), .D(n540), .Q(\mem[7][5] ) );
  DLH_X1 \mem_reg[7][4]  ( .G(n371), .D(n541), .Q(\mem[7][4] ) );
  DLH_X1 \mem_reg[7][3]  ( .G(n371), .D(n542), .Q(\mem[7][3] ) );
  DLH_X1 \mem_reg[7][2]  ( .G(n371), .D(n543), .Q(\mem[7][2] ) );
  DLH_X1 \mem_reg[7][1]  ( .G(n371), .D(n544), .Q(\mem[7][1] ) );
  DLH_X1 \mem_reg[7][0]  ( .G(n371), .D(n545), .Q(\mem[7][0] ) );
  CLKBUF_X1 U2 ( .A(N47), .Z(n371) );
  CLKBUF_X1 U3 ( .A(N138), .Z(n372) );
  CLKBUF_X1 U4 ( .A(N73), .Z(n373) );
  CLKBUF_X1 U5 ( .A(N112), .Z(n374) );
  CLKBUF_X1 U6 ( .A(N86), .Z(n375) );
  CLKBUF_X1 U7 ( .A(N99), .Z(n376) );
  CLKBUF_X1 U8 ( .A(N60), .Z(n377) );
  CLKBUF_X1 U9 ( .A(N125), .Z(n378) );
  BUF_X1 U10 ( .A(N40), .Z(n529) );
  BUF_X1 U11 ( .A(N40), .Z(n528) );
  BUF_X1 U12 ( .A(N40), .Z(n527) );
  BUF_X1 U13 ( .A(N41), .Z(n526) );
  BUF_X1 U14 ( .A(N37), .Z(n453) );
  BUF_X1 U15 ( .A(N37), .Z(n452) );
  BUF_X1 U16 ( .A(N38), .Z(n451) );
  INV_X1 U17 ( .A(n553), .ZN(n546) );
  INV_X1 U18 ( .A(n558), .ZN(n548) );
  INV_X1 U19 ( .A(n563), .ZN(n550) );
  NAND3_X1 U20 ( .A1(cs_1), .A2(n547), .A3(oe_1), .ZN(n553) );
  INV_X1 U21 ( .A(we_1), .ZN(n547) );
  OAI22_X1 U22 ( .A1(1'b1), .A2(n546), .B1(n552), .B2(n553), .ZN(data_1[8]) );
  NAND2_X1 U23 ( .A1(N176), .A2(n546), .ZN(n552) );
  INV_X1 U24 ( .A(N40), .ZN(n530) );
  INV_X1 U25 ( .A(N41), .ZN(n531) );
  OAI22_X1 U26 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n554), .ZN(data_1[9]) );
  NAND2_X1 U27 ( .A1(N175), .A2(n546), .ZN(n554) );
  OAI22_X1 U28 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n555), .ZN(data_1[10])
         );
  NAND2_X1 U29 ( .A1(N174), .A2(n546), .ZN(n555) );
  OAI22_X1 U30 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n556), .ZN(data_1[11])
         );
  NAND2_X1 U31 ( .A1(N173), .A2(n546), .ZN(n556) );
  AND3_X1 U32 ( .A1(cs_1), .A2(n563), .A3(we_1), .ZN(n579) );
  NAND3_X1 U33 ( .A1(cs_0), .A2(n551), .A3(oe_0), .ZN(n558) );
  INV_X1 U34 ( .A(we_0), .ZN(n551) );
  NAND2_X1 U35 ( .A1(N42), .A2(n579), .ZN(n565) );
  NAND2_X1 U36 ( .A1(N39), .A2(n550), .ZN(n564) );
  NAND2_X1 U37 ( .A1(we_0), .A2(cs_0), .ZN(n563) );
  INV_X1 U38 ( .A(n576), .ZN(n537) );
  AOI22_X1 U39 ( .A1(data_1[8]), .A2(n579), .B1(data_0[8]), .B2(n550), .ZN(
        n576) );
  OAI22_X1 U45 ( .A1(1'b1), .A2(n548), .B1(n557), .B2(n558), .ZN(data_0[8]) );
  NAND2_X1 U46 ( .A1(N160), .A2(n548), .ZN(n557) );
  INV_X1 U47 ( .A(n577), .ZN(n536) );
  AOI22_X1 U50 ( .A1(data_1[9]), .A2(n579), .B1(data_0[9]), .B2(n550), .ZN(
        n577) );
  OAI22_X1 U51 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n559), .ZN(data_0[9]) );
  NAND2_X1 U53 ( .A1(N159), .A2(n548), .ZN(n559) );
  INV_X1 U54 ( .A(n578), .ZN(n535) );
  AOI22_X1 U55 ( .A1(data_1[10]), .A2(n579), .B1(data_0[10]), .B2(n550), .ZN(
        n578) );
  OAI22_X1 U56 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n560), .ZN(data_0[10])
         );
  NAND2_X1 U57 ( .A1(N158), .A2(n548), .ZN(n560) );
  INV_X1 U58 ( .A(n580), .ZN(n534) );
  AOI22_X1 U59 ( .A1(data_1[11]), .A2(n579), .B1(data_0[11]), .B2(n550), .ZN(
        n580) );
  OAI22_X1 U60 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n561), .ZN(data_0[11])
         );
  NAND2_X1 U61 ( .A1(N157), .A2(n548), .ZN(n561) );
  INV_X1 U62 ( .A(n568), .ZN(n545) );
  AOI22_X1 U63 ( .A1(data_1[0]), .A2(n579), .B1(data_0[0]), .B2(n550), .ZN(
        n568) );
  INV_X1 U64 ( .A(n569), .ZN(n544) );
  AOI22_X1 U65 ( .A1(data_1[1]), .A2(n579), .B1(data_0[1]), .B2(n550), .ZN(
        n569) );
  INV_X1 U66 ( .A(n570), .ZN(n543) );
  AOI22_X1 U67 ( .A1(data_1[2]), .A2(n579), .B1(data_0[2]), .B2(n550), .ZN(
        n570) );
  INV_X1 U69 ( .A(n571), .ZN(n542) );
  AOI22_X1 U70 ( .A1(data_1[3]), .A2(n579), .B1(data_0[3]), .B2(n550), .ZN(
        n571) );
  INV_X1 U71 ( .A(n572), .ZN(n541) );
  AOI22_X1 U72 ( .A1(data_1[4]), .A2(n579), .B1(data_0[4]), .B2(n550), .ZN(
        n572) );
  INV_X1 U73 ( .A(n573), .ZN(n540) );
  AOI22_X1 U74 ( .A1(data_1[5]), .A2(n579), .B1(data_0[5]), .B2(n550), .ZN(
        n573) );
  INV_X1 U75 ( .A(n574), .ZN(n539) );
  AOI22_X1 U76 ( .A1(data_1[6]), .A2(n579), .B1(data_0[6]), .B2(n550), .ZN(
        n574) );
  INV_X1 U77 ( .A(n575), .ZN(n538) );
  AOI22_X1 U78 ( .A1(data_1[7]), .A2(n579), .B1(data_0[7]), .B2(n550), .ZN(
        n575) );
  NAND2_X1 U79 ( .A1(n579), .A2(n549), .ZN(n567) );
  INV_X1 U80 ( .A(N42), .ZN(n549) );
  INV_X1 U81 ( .A(N37), .ZN(n532) );
  INV_X1 U82 ( .A(N38), .ZN(n533) );
  OR2_X1 U83 ( .A1(n563), .A2(N39), .ZN(n566) );
  MUX2_X1 U84 ( .A(\mem[6][0] ), .B(\mem[7][0] ), .S(N37), .Z(n379) );
  MUX2_X1 U85 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .S(N37), .Z(n380) );
  MUX2_X1 U86 ( .A(n380), .B(n379), .S(N38), .Z(n381) );
  MUX2_X1 U87 ( .A(\mem[2][0] ), .B(\mem[3][0] ), .S(N37), .Z(n382) );
  MUX2_X1 U88 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .S(N37), .Z(n383) );
  MUX2_X1 U89 ( .A(n383), .B(n382), .S(N38), .Z(n384) );
  MUX2_X1 U90 ( .A(n384), .B(n381), .S(N39), .Z(N168) );
  MUX2_X1 U91 ( .A(\mem[6][1] ), .B(\mem[7][1] ), .S(N37), .Z(n385) );
  MUX2_X1 U92 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .S(N37), .Z(n386) );
  MUX2_X1 U93 ( .A(n386), .B(n385), .S(N38), .Z(n387) );
  MUX2_X1 U94 ( .A(\mem[2][1] ), .B(\mem[3][1] ), .S(n453), .Z(n388) );
  MUX2_X1 U95 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .S(n452), .Z(n389) );
  MUX2_X1 U96 ( .A(n389), .B(n388), .S(N38), .Z(n390) );
  MUX2_X1 U97 ( .A(n390), .B(n387), .S(N39), .Z(N167) );
  MUX2_X1 U98 ( .A(\mem[6][2] ), .B(\mem[7][2] ), .S(n452), .Z(n391) );
  MUX2_X1 U99 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .S(N37), .Z(n392) );
  MUX2_X1 U100 ( .A(n392), .B(n391), .S(N38), .Z(n393) );
  MUX2_X1 U101 ( .A(\mem[2][2] ), .B(\mem[3][2] ), .S(n453), .Z(n394) );
  MUX2_X1 U102 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .S(n452), .Z(n395) );
  MUX2_X1 U103 ( .A(n395), .B(n394), .S(N38), .Z(n396) );
  MUX2_X1 U104 ( .A(n396), .B(n393), .S(N39), .Z(N166) );
  MUX2_X1 U105 ( .A(\mem[6][3] ), .B(\mem[7][3] ), .S(N37), .Z(n397) );
  MUX2_X1 U106 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .S(N37), .Z(n398) );
  MUX2_X1 U107 ( .A(n398), .B(n397), .S(n451), .Z(n399) );
  MUX2_X1 U108 ( .A(\mem[2][3] ), .B(\mem[3][3] ), .S(n453), .Z(n400) );
  MUX2_X1 U109 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .S(n452), .Z(n401) );
  MUX2_X1 U110 ( .A(n401), .B(n400), .S(N38), .Z(n402) );
  MUX2_X1 U111 ( .A(n402), .B(n399), .S(N39), .Z(N165) );
  MUX2_X1 U112 ( .A(\mem[6][4] ), .B(\mem[7][4] ), .S(N37), .Z(n403) );
  MUX2_X1 U113 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .S(n453), .Z(n404) );
  MUX2_X1 U114 ( .A(n404), .B(n403), .S(n451), .Z(n405) );
  MUX2_X1 U115 ( .A(\mem[2][4] ), .B(\mem[3][4] ), .S(n452), .Z(n406) );
  MUX2_X1 U116 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .S(N37), .Z(n407) );
  MUX2_X1 U117 ( .A(n407), .B(n406), .S(N38), .Z(n408) );
  MUX2_X1 U118 ( .A(n408), .B(n405), .S(N39), .Z(N164) );
  MUX2_X1 U119 ( .A(\mem[6][5] ), .B(\mem[7][5] ), .S(n453), .Z(n409) );
  MUX2_X1 U120 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .S(n452), .Z(n410) );
  MUX2_X1 U121 ( .A(n410), .B(n409), .S(n451), .Z(n411) );
  MUX2_X1 U122 ( .A(\mem[2][5] ), .B(\mem[3][5] ), .S(N37), .Z(n412) );
  MUX2_X1 U123 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .S(n453), .Z(n413) );
  MUX2_X1 U124 ( .A(n413), .B(n412), .S(N38), .Z(n414) );
  MUX2_X1 U125 ( .A(n414), .B(n411), .S(N39), .Z(N163) );
  MUX2_X1 U126 ( .A(\mem[6][6] ), .B(\mem[7][6] ), .S(n452), .Z(n415) );
  MUX2_X1 U127 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .S(n452), .Z(n416) );
  MUX2_X1 U128 ( .A(n416), .B(n415), .S(n451), .Z(n417) );
  MUX2_X1 U129 ( .A(\mem[2][6] ), .B(\mem[3][6] ), .S(n452), .Z(n418) );
  MUX2_X1 U130 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .S(n452), .Z(n419) );
  MUX2_X1 U131 ( .A(n419), .B(n418), .S(n451), .Z(n420) );
  MUX2_X1 U132 ( .A(n420), .B(n417), .S(N39), .Z(N162) );
  MUX2_X1 U133 ( .A(\mem[6][7] ), .B(\mem[7][7] ), .S(n452), .Z(n421) );
  MUX2_X1 U134 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .S(n452), .Z(n422) );
  MUX2_X1 U135 ( .A(n422), .B(n421), .S(n451), .Z(n423) );
  MUX2_X1 U136 ( .A(\mem[2][7] ), .B(\mem[3][7] ), .S(n452), .Z(n424) );
  MUX2_X1 U137 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .S(n452), .Z(n425) );
  MUX2_X1 U138 ( .A(n425), .B(n424), .S(n451), .Z(n426) );
  MUX2_X1 U139 ( .A(n426), .B(n423), .S(N39), .Z(N161) );
  MUX2_X1 U140 ( .A(\mem[6][8] ), .B(\mem[7][8] ), .S(n452), .Z(n427) );
  MUX2_X1 U141 ( .A(\mem[4][8] ), .B(\mem[5][8] ), .S(n452), .Z(n428) );
  MUX2_X1 U142 ( .A(n428), .B(n427), .S(n451), .Z(n429) );
  MUX2_X1 U143 ( .A(\mem[2][8] ), .B(\mem[3][8] ), .S(n452), .Z(n430) );
  MUX2_X1 U144 ( .A(\mem[0][8] ), .B(\mem[1][8] ), .S(n452), .Z(n431) );
  MUX2_X1 U145 ( .A(n431), .B(n430), .S(n451), .Z(n432) );
  MUX2_X1 U146 ( .A(n432), .B(n429), .S(N39), .Z(N160) );
  MUX2_X1 U147 ( .A(\mem[6][9] ), .B(\mem[7][9] ), .S(n453), .Z(n433) );
  MUX2_X1 U148 ( .A(\mem[4][9] ), .B(\mem[5][9] ), .S(n453), .Z(n434) );
  MUX2_X1 U149 ( .A(n434), .B(n433), .S(n451), .Z(n435) );
  MUX2_X1 U150 ( .A(\mem[2][9] ), .B(\mem[3][9] ), .S(n453), .Z(n436) );
  MUX2_X1 U151 ( .A(\mem[0][9] ), .B(\mem[1][9] ), .S(n453), .Z(n437) );
  MUX2_X1 U152 ( .A(n437), .B(n436), .S(n451), .Z(n438) );
  MUX2_X1 U153 ( .A(n438), .B(n435), .S(N39), .Z(N159) );
  MUX2_X1 U154 ( .A(\mem[6][10] ), .B(\mem[7][10] ), .S(n453), .Z(n439) );
  MUX2_X1 U155 ( .A(\mem[4][10] ), .B(\mem[5][10] ), .S(n453), .Z(n440) );
  MUX2_X1 U156 ( .A(n440), .B(n439), .S(n451), .Z(n441) );
  MUX2_X1 U157 ( .A(\mem[2][10] ), .B(\mem[3][10] ), .S(n453), .Z(n442) );
  MUX2_X1 U158 ( .A(\mem[0][10] ), .B(\mem[1][10] ), .S(n453), .Z(n443) );
  MUX2_X1 U159 ( .A(n443), .B(n442), .S(n451), .Z(n444) );
  MUX2_X1 U160 ( .A(n444), .B(n441), .S(N39), .Z(N158) );
  MUX2_X1 U161 ( .A(\mem[6][11] ), .B(\mem[7][11] ), .S(n453), .Z(n445) );
  MUX2_X1 U162 ( .A(\mem[4][11] ), .B(\mem[5][11] ), .S(n453), .Z(n446) );
  MUX2_X1 U163 ( .A(n446), .B(n445), .S(n451), .Z(n447) );
  MUX2_X1 U164 ( .A(\mem[2][11] ), .B(\mem[3][11] ), .S(n453), .Z(n448) );
  MUX2_X1 U165 ( .A(\mem[0][11] ), .B(\mem[1][11] ), .S(n453), .Z(n449) );
  MUX2_X1 U166 ( .A(n449), .B(n448), .S(n451), .Z(n450) );
  MUX2_X1 U167 ( .A(n450), .B(n447), .S(N39), .Z(N157) );
  MUX2_X1 U168 ( .A(\mem[6][0] ), .B(\mem[7][0] ), .S(N40), .Z(n454) );
  MUX2_X1 U169 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .S(N40), .Z(n455) );
  MUX2_X1 U170 ( .A(n455), .B(n454), .S(N41), .Z(n456) );
  MUX2_X1 U171 ( .A(\mem[2][0] ), .B(\mem[3][0] ), .S(N40), .Z(n457) );
  MUX2_X1 U172 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .S(N40), .Z(n458) );
  MUX2_X1 U173 ( .A(n458), .B(n457), .S(N41), .Z(n459) );
  MUX2_X1 U174 ( .A(n459), .B(n456), .S(N42), .Z(N184) );
  MUX2_X1 U175 ( .A(\mem[6][1] ), .B(\mem[7][1] ), .S(N40), .Z(n460) );
  MUX2_X1 U176 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .S(N40), .Z(n461) );
  MUX2_X1 U177 ( .A(n461), .B(n460), .S(N41), .Z(n462) );
  MUX2_X1 U178 ( .A(\mem[2][1] ), .B(\mem[3][1] ), .S(N40), .Z(n463) );
  MUX2_X1 U179 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .S(N40), .Z(n464) );
  MUX2_X1 U180 ( .A(n464), .B(n463), .S(N41), .Z(n465) );
  MUX2_X1 U181 ( .A(n465), .B(n462), .S(N42), .Z(N183) );
  MUX2_X1 U182 ( .A(\mem[6][2] ), .B(\mem[7][2] ), .S(N40), .Z(n466) );
  MUX2_X1 U183 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .S(N40), .Z(n467) );
  MUX2_X1 U184 ( .A(n467), .B(n466), .S(N41), .Z(n468) );
  MUX2_X1 U185 ( .A(\mem[2][2] ), .B(\mem[3][2] ), .S(N40), .Z(n469) );
  MUX2_X1 U186 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .S(N40), .Z(n470) );
  MUX2_X1 U187 ( .A(n470), .B(n469), .S(N41), .Z(n471) );
  MUX2_X1 U188 ( .A(n471), .B(n468), .S(N42), .Z(N182) );
  MUX2_X1 U189 ( .A(\mem[6][3] ), .B(\mem[7][3] ), .S(n527), .Z(n472) );
  MUX2_X1 U190 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .S(n527), .Z(n473) );
  MUX2_X1 U191 ( .A(n473), .B(n472), .S(N41), .Z(n474) );
  MUX2_X1 U192 ( .A(\mem[2][3] ), .B(\mem[3][3] ), .S(n527), .Z(n475) );
  MUX2_X1 U193 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .S(n527), .Z(n476) );
  MUX2_X1 U194 ( .A(n476), .B(n475), .S(N41), .Z(n477) );
  MUX2_X1 U195 ( .A(n477), .B(n474), .S(N42), .Z(N181) );
  MUX2_X1 U196 ( .A(\mem[6][4] ), .B(\mem[7][4] ), .S(n527), .Z(n478) );
  MUX2_X1 U197 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .S(n527), .Z(n479) );
  MUX2_X1 U198 ( .A(n479), .B(n478), .S(N41), .Z(n480) );
  MUX2_X1 U199 ( .A(\mem[2][4] ), .B(\mem[3][4] ), .S(n527), .Z(n481) );
  MUX2_X1 U200 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .S(n527), .Z(n482) );
  MUX2_X1 U201 ( .A(n482), .B(n481), .S(N41), .Z(n483) );
  MUX2_X1 U202 ( .A(n483), .B(n480), .S(N42), .Z(N180) );
  MUX2_X1 U203 ( .A(\mem[6][5] ), .B(\mem[7][5] ), .S(n527), .Z(n484) );
  MUX2_X1 U204 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .S(n527), .Z(n485) );
  MUX2_X1 U205 ( .A(n485), .B(n484), .S(N41), .Z(n486) );
  MUX2_X1 U206 ( .A(\mem[2][5] ), .B(\mem[3][5] ), .S(n527), .Z(n487) );
  MUX2_X1 U207 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .S(n527), .Z(n488) );
  MUX2_X1 U208 ( .A(n488), .B(n487), .S(N41), .Z(n489) );
  MUX2_X1 U209 ( .A(n489), .B(n486), .S(N42), .Z(N179) );
  MUX2_X1 U210 ( .A(\mem[6][6] ), .B(\mem[7][6] ), .S(n528), .Z(n490) );
  MUX2_X1 U211 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .S(n528), .Z(n491) );
  MUX2_X1 U212 ( .A(n491), .B(n490), .S(n526), .Z(n492) );
  MUX2_X1 U213 ( .A(\mem[2][6] ), .B(\mem[3][6] ), .S(n528), .Z(n493) );
  MUX2_X1 U214 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .S(n528), .Z(n494) );
  MUX2_X1 U215 ( .A(n494), .B(n493), .S(n526), .Z(n495) );
  MUX2_X1 U216 ( .A(n495), .B(n492), .S(N42), .Z(N178) );
  MUX2_X1 U217 ( .A(\mem[6][7] ), .B(\mem[7][7] ), .S(n528), .Z(n496) );
  MUX2_X1 U218 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .S(n528), .Z(n497) );
  MUX2_X1 U219 ( .A(n497), .B(n496), .S(n526), .Z(n498) );
  MUX2_X1 U220 ( .A(\mem[2][7] ), .B(\mem[3][7] ), .S(n528), .Z(n499) );
  MUX2_X1 U221 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .S(n528), .Z(n500) );
  MUX2_X1 U222 ( .A(n500), .B(n499), .S(n526), .Z(n501) );
  MUX2_X1 U223 ( .A(n501), .B(n498), .S(N42), .Z(N177) );
  MUX2_X1 U224 ( .A(\mem[6][8] ), .B(\mem[7][8] ), .S(n528), .Z(n502) );
  MUX2_X1 U225 ( .A(\mem[4][8] ), .B(\mem[5][8] ), .S(n528), .Z(n503) );
  MUX2_X1 U226 ( .A(n503), .B(n502), .S(n526), .Z(n504) );
  MUX2_X1 U227 ( .A(\mem[2][8] ), .B(\mem[3][8] ), .S(n528), .Z(n505) );
  MUX2_X1 U228 ( .A(\mem[0][8] ), .B(\mem[1][8] ), .S(n528), .Z(n506) );
  MUX2_X1 U229 ( .A(n506), .B(n505), .S(n526), .Z(n507) );
  MUX2_X1 U230 ( .A(n507), .B(n504), .S(N42), .Z(N176) );
  MUX2_X1 U231 ( .A(\mem[6][9] ), .B(\mem[7][9] ), .S(n529), .Z(n508) );
  MUX2_X1 U232 ( .A(\mem[4][9] ), .B(\mem[5][9] ), .S(n529), .Z(n509) );
  MUX2_X1 U233 ( .A(n509), .B(n508), .S(n526), .Z(n510) );
  MUX2_X1 U234 ( .A(\mem[2][9] ), .B(\mem[3][9] ), .S(n529), .Z(n511) );
  MUX2_X1 U235 ( .A(\mem[0][9] ), .B(\mem[1][9] ), .S(n529), .Z(n512) );
  MUX2_X1 U236 ( .A(n512), .B(n511), .S(n526), .Z(n513) );
  MUX2_X1 U237 ( .A(n513), .B(n510), .S(N42), .Z(N175) );
  MUX2_X1 U238 ( .A(\mem[6][10] ), .B(\mem[7][10] ), .S(n529), .Z(n514) );
  MUX2_X1 U239 ( .A(\mem[4][10] ), .B(\mem[5][10] ), .S(n529), .Z(n515) );
  MUX2_X1 U240 ( .A(n515), .B(n514), .S(n526), .Z(n516) );
  MUX2_X1 U241 ( .A(\mem[2][10] ), .B(\mem[3][10] ), .S(n529), .Z(n517) );
  MUX2_X1 U242 ( .A(\mem[0][10] ), .B(\mem[1][10] ), .S(n529), .Z(n518) );
  MUX2_X1 U243 ( .A(n518), .B(n517), .S(n526), .Z(n519) );
  MUX2_X1 U244 ( .A(n519), .B(n516), .S(N42), .Z(N174) );
  MUX2_X1 U245 ( .A(\mem[6][11] ), .B(\mem[7][11] ), .S(n529), .Z(n520) );
  MUX2_X1 U246 ( .A(\mem[4][11] ), .B(\mem[5][11] ), .S(n529), .Z(n521) );
  MUX2_X1 U247 ( .A(n521), .B(n520), .S(n526), .Z(n522) );
  MUX2_X1 U248 ( .A(\mem[2][11] ), .B(\mem[3][11] ), .S(n529), .Z(n523) );
  MUX2_X1 U249 ( .A(\mem[0][11] ), .B(\mem[1][11] ), .S(n529), .Z(n524) );
  MUX2_X1 U250 ( .A(n524), .B(n523), .S(n526), .Z(n525) );
  MUX2_X1 U251 ( .A(n525), .B(n522), .S(N42), .Z(N173) );
endmodule


module syn_fifo_7 ( clk, rst, wr_cs, rd_cs, data_in, rd_en, wr_en, data_out, 
        empty, full );
  input [11:0] data_in;
  output [11:0] data_out;
  input clk, rst, wr_cs, rd_cs, rd_en, wr_en;
  output empty, full;
  wire   N40, n99, n100, n101, n102, n103, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181;
  wire   [3:0] status_cnt;
  wire   [2:0] wr_pointer;
  wire   [2:0] rd_pointer;
  wire   [11:0] data_ram;
  assign full = N40;

  DFFR_X1 \wr_pointer_reg[2]  ( .D(n121), .CK(clk), .RN(n108), .Q(
        wr_pointer[2]), .QN(n138) );
  DFFR_X1 \rd_pointer_reg[2]  ( .D(n124), .CK(clk), .RN(n108), .Q(
        rd_pointer[2]), .QN(n137) );
  DFFR_X1 \data_out_reg[11]  ( .D(n125), .CK(clk), .RN(n108), .Q(data_out[11]), 
        .QN(n139) );
  DFFR_X1 \data_out_reg[10]  ( .D(n126), .CK(clk), .RN(n108), .Q(data_out[10]), 
        .QN(n140) );
  DFFR_X1 \data_out_reg[9]  ( .D(n127), .CK(clk), .RN(n108), .Q(data_out[9]), 
        .QN(n141) );
  DFFR_X1 \data_out_reg[8]  ( .D(n128), .CK(clk), .RN(n108), .Q(data_out[8]), 
        .QN(n142) );
  DFFR_X1 \data_out_reg[7]  ( .D(n129), .CK(clk), .RN(n108), .Q(data_out[7]), 
        .QN(n143) );
  DFFR_X1 \data_out_reg[6]  ( .D(n130), .CK(clk), .RN(n108), .Q(data_out[6]), 
        .QN(n144) );
  DFFR_X1 \data_out_reg[5]  ( .D(n131), .CK(clk), .RN(n108), .Q(data_out[5]), 
        .QN(n145) );
  DFFR_X1 \data_out_reg[4]  ( .D(n132), .CK(clk), .RN(n108), .Q(data_out[4]), 
        .QN(n146) );
  DFFR_X1 \data_out_reg[3]  ( .D(n133), .CK(clk), .RN(n108), .Q(data_out[3]), 
        .QN(n147) );
  DFFR_X1 \data_out_reg[2]  ( .D(n134), .CK(clk), .RN(n108), .Q(data_out[2]), 
        .QN(n148) );
  DFFR_X1 \data_out_reg[1]  ( .D(n135), .CK(clk), .RN(n108), .Q(data_out[1]), 
        .QN(n149) );
  DFFR_X1 \data_out_reg[0]  ( .D(n136), .CK(clk), .RN(n108), .Q(data_out[0]), 
        .QN(n150) );
  DFFR_X1 \status_cnt_reg[0]  ( .D(n115), .CK(clk), .RN(n108), .Q(
        status_cnt[0]), .QN(n100) );
  DFFR_X1 \status_cnt_reg[1]  ( .D(n116), .CK(clk), .RN(n108), .Q(
        status_cnt[1]), .QN(n99) );
  DFFR_X1 \status_cnt_reg[2]  ( .D(n117), .CK(clk), .RN(n108), .Q(
        status_cnt[2]), .QN(n101) );
  XOR2_X1 U27 ( .A(n137), .B(n168), .Z(n124) );
  XOR2_X1 U29 ( .A(rd_pointer[1]), .B(n167), .Z(n123) );
  XOR2_X1 U31 ( .A(rd_pointer[0]), .B(n113), .Z(n122) );
  XOR2_X1 U32 ( .A(n138), .B(n166), .Z(n121) );
  XOR2_X1 U34 ( .A(wr_pointer[1]), .B(n165), .Z(n120) );
  XOR2_X1 U36 ( .A(n107), .B(n164), .Z(n119) );
  NAND3_X1 U49 ( .A1(n100), .A2(n99), .A3(n112), .ZN(n157) );
  NAND3_X1 U50 ( .A1(n161), .A2(n99), .A3(status_cnt[0]), .ZN(n154) );
  XOR2_X1 U53 ( .A(n153), .B(n100), .Z(n115) );
  NAND3_X1 U58 ( .A1(n164), .A2(n151), .A3(n113), .ZN(n156) );
  NAND4_X1 U63 ( .A1(status_cnt[2]), .A2(status_cnt[1]), .A3(status_cnt[0]), 
        .A4(n114), .ZN(n163) );
  ram_dp_ar_aw_7 DP_RAM ( .address_0(wr_pointer), .data_0(data_in), .cs_0(
        wr_cs), .we_0(wr_en), .oe_0(1'b0), .address_1(rd_pointer), .data_1(
        data_ram), .cs_1(rd_cs), .we_1(1'b0), .oe_1(rd_en) );
  DFFR_X1 \wr_pointer_reg[0]  ( .D(n119), .CK(clk), .RN(n108), .Q(
        wr_pointer[0]), .QN(n107) );
  DFFR_X1 \wr_pointer_reg[1]  ( .D(n120), .CK(clk), .RN(n108), .Q(
        wr_pointer[1]) );
  DFFR_X1 \rd_pointer_reg[0]  ( .D(n122), .CK(clk), .RN(n108), .Q(
        rd_pointer[0]) );
  DFFR_X1 \rd_pointer_reg[1]  ( .D(n123), .CK(clk), .RN(n108), .Q(
        rd_pointer[1]) );
  DFFR_X1 \status_cnt_reg[3]  ( .D(n118), .CK(clk), .RN(rst), .Q(status_cnt[3]), .QN(n114) );
  AOI211_X4 U3 ( .C1(n152), .C2(status_cnt[3]), .A(n113), .B(n164), .ZN(n161)
         );
  INV_X4 U4 ( .A(n181), .ZN(n113) );
  NOR3_X2 U5 ( .A1(n105), .A2(n106), .A3(n153), .ZN(n155) );
  OR2_X1 U6 ( .A1(status_cnt[1]), .A2(n110), .ZN(n102) );
  OR2_X1 U7 ( .A1(n156), .A2(n99), .ZN(n103) );
  NAND3_X1 U8 ( .A1(n102), .A2(n103), .A3(n155), .ZN(n160) );
  AND2_X1 U9 ( .A1(n152), .A2(n114), .ZN(empty) );
  AND2_X1 U10 ( .A1(n100), .A2(n161), .ZN(n105) );
  AND2_X1 U11 ( .A1(n112), .A2(status_cnt[0]), .ZN(n106) );
  INV_X1 U12 ( .A(n156), .ZN(n112) );
  CLKBUF_X1 U13 ( .A(rst), .Z(n108) );
  INV_X1 U14 ( .A(n157), .ZN(n111) );
  NOR2_X1 U15 ( .A1(n112), .A2(n161), .ZN(n153) );
  NAND2_X1 U16 ( .A1(n152), .A2(n114), .ZN(n151) );
  INV_X1 U17 ( .A(n161), .ZN(n110) );
  OAI21_X1 U18 ( .B1(n109), .B2(n101), .A(n159), .ZN(n117) );
  OAI21_X1 U19 ( .B1(n158), .B2(n111), .A(n101), .ZN(n159) );
  INV_X1 U20 ( .A(n160), .ZN(n109) );
  NOR3_X1 U21 ( .A1(n99), .A2(n110), .A3(n100), .ZN(n158) );
  NOR2_X1 U22 ( .A1(n107), .A2(n164), .ZN(n165) );
  NAND2_X1 U23 ( .A1(rd_en), .A2(rd_cs), .ZN(n181) );
  NOR3_X1 U24 ( .A1(status_cnt[1]), .A2(status_cnt[2]), .A3(status_cnt[0]), 
        .ZN(n152) );
  OAI22_X1 U25 ( .A1(n110), .A2(n163), .B1(n162), .B2(n114), .ZN(n118) );
  AOI221_X1 U26 ( .B1(n161), .B2(n101), .C1(status_cnt[2]), .C2(n112), .A(n160), .ZN(n162) );
  INV_X1 U28 ( .A(n163), .ZN(N40) );
  OAI22_X1 U30 ( .A1(n150), .A2(n113), .B1(n181), .B2(n180), .ZN(n136) );
  INV_X1 U33 ( .A(data_ram[0]), .ZN(n180) );
  OAI22_X1 U35 ( .A1(n149), .A2(n113), .B1(n181), .B2(n179), .ZN(n135) );
  INV_X1 U37 ( .A(data_ram[1]), .ZN(n179) );
  OAI22_X1 U38 ( .A1(n148), .A2(n113), .B1(n181), .B2(n178), .ZN(n134) );
  INV_X1 U39 ( .A(data_ram[2]), .ZN(n178) );
  OAI22_X1 U40 ( .A1(n147), .A2(n113), .B1(n181), .B2(n177), .ZN(n133) );
  INV_X1 U41 ( .A(data_ram[3]), .ZN(n177) );
  OAI22_X1 U42 ( .A1(n146), .A2(n113), .B1(n181), .B2(n176), .ZN(n132) );
  INV_X1 U43 ( .A(data_ram[4]), .ZN(n176) );
  OAI22_X1 U44 ( .A1(n145), .A2(n113), .B1(n181), .B2(n175), .ZN(n131) );
  INV_X1 U45 ( .A(data_ram[5]), .ZN(n175) );
  OAI22_X1 U46 ( .A1(n144), .A2(n113), .B1(n181), .B2(n174), .ZN(n130) );
  INV_X1 U47 ( .A(data_ram[6]), .ZN(n174) );
  OAI22_X1 U48 ( .A1(n143), .A2(n113), .B1(n181), .B2(n173), .ZN(n129) );
  INV_X1 U51 ( .A(data_ram[7]), .ZN(n173) );
  OAI22_X1 U52 ( .A1(n141), .A2(n113), .B1(n181), .B2(n171), .ZN(n127) );
  INV_X1 U54 ( .A(data_ram[9]), .ZN(n171) );
  OAI22_X1 U55 ( .A1(n140), .A2(n113), .B1(n181), .B2(n170), .ZN(n126) );
  INV_X1 U56 ( .A(data_ram[10]), .ZN(n170) );
  OAI22_X1 U57 ( .A1(n139), .A2(n113), .B1(n181), .B2(n169), .ZN(n125) );
  INV_X1 U59 ( .A(data_ram[11]), .ZN(n169) );
  OAI22_X1 U60 ( .A1(n142), .A2(n113), .B1(n181), .B2(n172), .ZN(n128) );
  INV_X1 U61 ( .A(data_ram[8]), .ZN(n172) );
  NAND2_X1 U62 ( .A1(rd_pointer[1]), .A2(n167), .ZN(n168) );
  NAND2_X1 U64 ( .A1(wr_en), .A2(wr_cs), .ZN(n164) );
  OAI211_X1 U65 ( .C1(n155), .C2(n99), .A(n154), .B(n157), .ZN(n116) );
  AND2_X1 U66 ( .A1(rd_pointer[0]), .A2(n113), .ZN(n167) );
  NAND2_X1 U67 ( .A1(wr_pointer[1]), .A2(n165), .ZN(n166) );
endmodule


module ram_dp_ar_aw_6 ( address_0, data_0, cs_0, we_0, oe_0, address_1, data_1, 
        cs_1, we_1, oe_1 );
  input [2:0] address_0;
  inout [11:0] data_0;
  input [2:0] address_1;
  inout [11:0] data_1;
  input cs_0, we_0, oe_0, cs_1, we_1, oe_1;
  wire   N37, N38, N39, N40, N41, N42, \mem[0][11] , \mem[0][10] , \mem[0][9] ,
         \mem[0][8] , \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , \mem[1][11] ,
         \mem[1][10] , \mem[1][9] , \mem[1][8] , \mem[1][7] , \mem[1][6] ,
         \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] , \mem[1][1] ,
         \mem[1][0] , \mem[2][11] , \mem[2][10] , \mem[2][9] , \mem[2][8] ,
         \mem[2][7] , \mem[2][6] , \mem[2][5] , \mem[2][4] , \mem[2][3] ,
         \mem[2][2] , \mem[2][1] , \mem[2][0] , \mem[3][11] , \mem[3][10] ,
         \mem[3][9] , \mem[3][8] , \mem[3][7] , \mem[3][6] , \mem[3][5] ,
         \mem[3][4] , \mem[3][3] , \mem[3][2] , \mem[3][1] , \mem[3][0] ,
         \mem[4][11] , \mem[4][10] , \mem[4][9] , \mem[4][8] , \mem[4][7] ,
         \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] , \mem[4][2] ,
         \mem[4][1] , \mem[4][0] , \mem[5][11] , \mem[5][10] , \mem[5][9] ,
         \mem[5][8] , \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] ,
         \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[6][11] ,
         \mem[6][10] , \mem[6][9] , \mem[6][8] , \mem[6][7] , \mem[6][6] ,
         \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] , \mem[6][1] ,
         \mem[6][0] , \mem[7][11] , \mem[7][10] , \mem[7][9] , \mem[7][8] ,
         \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] , \mem[7][3] ,
         \mem[7][2] , \mem[7][1] , \mem[7][0] , N47, N60, N73, N86, N99, N112,
         N125, N138, N157, N158, N159, N160, N161, N162, N163, N164, N165,
         N166, N167, N168, N173, N174, N175, N176, N177, N178, N179, N180,
         N181, N182, N183, N184, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476,
         n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487,
         n488, n489, n490, n491, n492, n493, n494, n495, n496, n497, n498,
         n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
         n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520,
         n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542,
         n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, n553,
         n554, n555, n556, n557, n558, n559, n560, n561, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580;
  assign N37 = address_0[0];
  assign N38 = address_0[1];
  assign N39 = address_0[2];
  assign N40 = address_1[0];
  assign N41 = address_1[1];
  assign N42 = address_1[2];

  OAI33_X1 U40 ( .A1(n531), .A2(n567), .A3(n530), .B1(n533), .B2(n566), .B3(
        n532), .ZN(N99) );
  OAI33_X1 U41 ( .A1(n565), .A2(N41), .A3(N40), .B1(n564), .B2(N38), .B3(N37), 
        .ZN(N86) );
  OAI33_X1 U42 ( .A1(n565), .A2(N41), .A3(n530), .B1(n564), .B2(N38), .B3(n532), .ZN(N73) );
  OAI33_X1 U43 ( .A1(n565), .A2(N40), .A3(n531), .B1(n564), .B2(N37), .B3(n533), .ZN(N60) );
  OAI33_X1 U44 ( .A1(n565), .A2(n530), .A3(n531), .B1(n564), .B2(n532), .B3(
        n533), .ZN(N47) );
  OAI33_X1 U48 ( .A1(n567), .A2(N41), .A3(N40), .B1(n566), .B2(N38), .B3(N37), 
        .ZN(N138) );
  OAI33_X1 U49 ( .A1(n530), .A2(N41), .A3(n567), .B1(n532), .B2(N38), .B3(n566), .ZN(N125) );
  OAI33_X1 U52 ( .A1(n531), .A2(N40), .A3(n567), .B1(n533), .B2(N37), .B3(n566), .ZN(N112) );
  TBUF_X1 \data_0_tri[0]  ( .A(N168), .EN(n558), .Z(data_0[0]) );
  TBUF_X1 \data_0_tri[1]  ( .A(N167), .EN(n558), .Z(data_0[1]) );
  TBUF_X1 \data_0_tri[2]  ( .A(N166), .EN(n558), .Z(data_0[2]) );
  TBUF_X1 \data_0_tri[3]  ( .A(N165), .EN(n558), .Z(data_0[3]) );
  TBUF_X1 \data_0_tri[4]  ( .A(N164), .EN(n558), .Z(data_0[4]) );
  TBUF_X1 \data_0_tri[5]  ( .A(N163), .EN(n558), .Z(data_0[5]) );
  TBUF_X1 \data_0_tri[6]  ( .A(N162), .EN(n558), .Z(data_0[6]) );
  TBUF_X1 \data_0_tri[7]  ( .A(N161), .EN(n558), .Z(data_0[7]) );
  TBUF_X1 \data_1_tri[0]  ( .A(N184), .EN(n553), .Z(data_1[0]) );
  TBUF_X1 \data_1_tri[1]  ( .A(N183), .EN(n553), .Z(data_1[1]) );
  TBUF_X1 \data_1_tri[2]  ( .A(N182), .EN(n553), .Z(data_1[2]) );
  TBUF_X1 \data_1_tri[3]  ( .A(N181), .EN(n553), .Z(data_1[3]) );
  TBUF_X1 \data_1_tri[4]  ( .A(N180), .EN(n553), .Z(data_1[4]) );
  TBUF_X1 \data_1_tri[5]  ( .A(N179), .EN(n553), .Z(data_1[5]) );
  TBUF_X1 \data_1_tri[6]  ( .A(N178), .EN(n553), .Z(data_1[6]) );
  TBUF_X1 \data_1_tri[7]  ( .A(N177), .EN(n553), .Z(data_1[7]) );
  DLH_X1 \mem_reg[1][11]  ( .G(n378), .D(n534), .Q(\mem[1][11] ) );
  DLH_X1 \mem_reg[1][10]  ( .G(n378), .D(n535), .Q(\mem[1][10] ) );
  DLH_X1 \mem_reg[1][9]  ( .G(n378), .D(n536), .Q(\mem[1][9] ) );
  DLH_X1 \mem_reg[1][8]  ( .G(n378), .D(n537), .Q(\mem[1][8] ) );
  DLH_X1 \mem_reg[1][7]  ( .G(n378), .D(n538), .Q(\mem[1][7] ) );
  DLH_X1 \mem_reg[1][6]  ( .G(n378), .D(n539), .Q(\mem[1][6] ) );
  DLH_X1 \mem_reg[1][5]  ( .G(n378), .D(n540), .Q(\mem[1][5] ) );
  DLH_X1 \mem_reg[1][4]  ( .G(n378), .D(n541), .Q(\mem[1][4] ) );
  DLH_X1 \mem_reg[1][3]  ( .G(n378), .D(n542), .Q(\mem[1][3] ) );
  DLH_X1 \mem_reg[1][2]  ( .G(n378), .D(n543), .Q(\mem[1][2] ) );
  DLH_X1 \mem_reg[1][1]  ( .G(n378), .D(n544), .Q(\mem[1][1] ) );
  DLH_X1 \mem_reg[1][0]  ( .G(n378), .D(n545), .Q(\mem[1][0] ) );
  DLH_X1 \mem_reg[6][11]  ( .G(n377), .D(n534), .Q(\mem[6][11] ) );
  DLH_X1 \mem_reg[6][10]  ( .G(n377), .D(n535), .Q(\mem[6][10] ) );
  DLH_X1 \mem_reg[6][9]  ( .G(n377), .D(n536), .Q(\mem[6][9] ) );
  DLH_X1 \mem_reg[6][8]  ( .G(n377), .D(n537), .Q(\mem[6][8] ) );
  DLH_X1 \mem_reg[6][7]  ( .G(n377), .D(n538), .Q(\mem[6][7] ) );
  DLH_X1 \mem_reg[6][6]  ( .G(n377), .D(n539), .Q(\mem[6][6] ) );
  DLH_X1 \mem_reg[6][5]  ( .G(n377), .D(n540), .Q(\mem[6][5] ) );
  DLH_X1 \mem_reg[6][4]  ( .G(n377), .D(n541), .Q(\mem[6][4] ) );
  DLH_X1 \mem_reg[6][3]  ( .G(n377), .D(n542), .Q(\mem[6][3] ) );
  DLH_X1 \mem_reg[6][2]  ( .G(n377), .D(n543), .Q(\mem[6][2] ) );
  DLH_X1 \mem_reg[6][1]  ( .G(n377), .D(n544), .Q(\mem[6][1] ) );
  DLH_X1 \mem_reg[6][0]  ( .G(n377), .D(n545), .Q(\mem[6][0] ) );
  DLH_X1 \mem_reg[3][11]  ( .G(n376), .D(n534), .Q(\mem[3][11] ) );
  DLH_X1 \mem_reg[3][10]  ( .G(n376), .D(n535), .Q(\mem[3][10] ) );
  DLH_X1 \mem_reg[3][9]  ( .G(n376), .D(n536), .Q(\mem[3][9] ) );
  DLH_X1 \mem_reg[3][8]  ( .G(n376), .D(n537), .Q(\mem[3][8] ) );
  DLH_X1 \mem_reg[3][7]  ( .G(n376), .D(n538), .Q(\mem[3][7] ) );
  DLH_X1 \mem_reg[3][6]  ( .G(n376), .D(n539), .Q(\mem[3][6] ) );
  DLH_X1 \mem_reg[3][5]  ( .G(n376), .D(n540), .Q(\mem[3][5] ) );
  DLH_X1 \mem_reg[3][4]  ( .G(n376), .D(n541), .Q(\mem[3][4] ) );
  DLH_X1 \mem_reg[3][3]  ( .G(n376), .D(n542), .Q(\mem[3][3] ) );
  DLH_X1 \mem_reg[3][2]  ( .G(n376), .D(n543), .Q(\mem[3][2] ) );
  DLH_X1 \mem_reg[3][1]  ( .G(n376), .D(n544), .Q(\mem[3][1] ) );
  DLH_X1 \mem_reg[3][0]  ( .G(n376), .D(n545), .Q(\mem[3][0] ) );
  DLH_X1 \mem_reg[4][11]  ( .G(n375), .D(n534), .Q(\mem[4][11] ) );
  DLH_X1 \mem_reg[4][10]  ( .G(n375), .D(n535), .Q(\mem[4][10] ) );
  DLH_X1 \mem_reg[4][9]  ( .G(n375), .D(n536), .Q(\mem[4][9] ) );
  DLH_X1 \mem_reg[4][8]  ( .G(n375), .D(n537), .Q(\mem[4][8] ) );
  DLH_X1 \mem_reg[4][7]  ( .G(n375), .D(n538), .Q(\mem[4][7] ) );
  DLH_X1 \mem_reg[4][6]  ( .G(n375), .D(n539), .Q(\mem[4][6] ) );
  DLH_X1 \mem_reg[4][5]  ( .G(n375), .D(n540), .Q(\mem[4][5] ) );
  DLH_X1 \mem_reg[4][4]  ( .G(n375), .D(n541), .Q(\mem[4][4] ) );
  DLH_X1 \mem_reg[4][3]  ( .G(n375), .D(n542), .Q(\mem[4][3] ) );
  DLH_X1 \mem_reg[4][2]  ( .G(n375), .D(n543), .Q(\mem[4][2] ) );
  DLH_X1 \mem_reg[4][1]  ( .G(n375), .D(n544), .Q(\mem[4][1] ) );
  DLH_X1 \mem_reg[4][0]  ( .G(n375), .D(n545), .Q(\mem[4][0] ) );
  DLH_X1 \mem_reg[2][11]  ( .G(n374), .D(n534), .Q(\mem[2][11] ) );
  DLH_X1 \mem_reg[2][10]  ( .G(n374), .D(n535), .Q(\mem[2][10] ) );
  DLH_X1 \mem_reg[2][9]  ( .G(n374), .D(n536), .Q(\mem[2][9] ) );
  DLH_X1 \mem_reg[2][8]  ( .G(n374), .D(n537), .Q(\mem[2][8] ) );
  DLH_X1 \mem_reg[2][7]  ( .G(n374), .D(n538), .Q(\mem[2][7] ) );
  DLH_X1 \mem_reg[2][6]  ( .G(n374), .D(n539), .Q(\mem[2][6] ) );
  DLH_X1 \mem_reg[2][5]  ( .G(n374), .D(n540), .Q(\mem[2][5] ) );
  DLH_X1 \mem_reg[2][4]  ( .G(n374), .D(n541), .Q(\mem[2][4] ) );
  DLH_X1 \mem_reg[2][3]  ( .G(n374), .D(n542), .Q(\mem[2][3] ) );
  DLH_X1 \mem_reg[2][2]  ( .G(n374), .D(n543), .Q(\mem[2][2] ) );
  DLH_X1 \mem_reg[2][1]  ( .G(n374), .D(n544), .Q(\mem[2][1] ) );
  DLH_X1 \mem_reg[2][0]  ( .G(n374), .D(n545), .Q(\mem[2][0] ) );
  DLH_X1 \mem_reg[5][11]  ( .G(n373), .D(n534), .Q(\mem[5][11] ) );
  DLH_X1 \mem_reg[5][10]  ( .G(n373), .D(n535), .Q(\mem[5][10] ) );
  DLH_X1 \mem_reg[5][9]  ( .G(n373), .D(n536), .Q(\mem[5][9] ) );
  DLH_X1 \mem_reg[5][8]  ( .G(n373), .D(n537), .Q(\mem[5][8] ) );
  DLH_X1 \mem_reg[5][7]  ( .G(n373), .D(n538), .Q(\mem[5][7] ) );
  DLH_X1 \mem_reg[5][6]  ( .G(n373), .D(n539), .Q(\mem[5][6] ) );
  DLH_X1 \mem_reg[5][5]  ( .G(n373), .D(n540), .Q(\mem[5][5] ) );
  DLH_X1 \mem_reg[5][4]  ( .G(n373), .D(n541), .Q(\mem[5][4] ) );
  DLH_X1 \mem_reg[5][3]  ( .G(n373), .D(n542), .Q(\mem[5][3] ) );
  DLH_X1 \mem_reg[5][2]  ( .G(n373), .D(n543), .Q(\mem[5][2] ) );
  DLH_X1 \mem_reg[5][1]  ( .G(n373), .D(n544), .Q(\mem[5][1] ) );
  DLH_X1 \mem_reg[5][0]  ( .G(n373), .D(n545), .Q(\mem[5][0] ) );
  DLH_X1 \mem_reg[0][11]  ( .G(n372), .D(n534), .Q(\mem[0][11] ) );
  DLH_X1 \mem_reg[0][10]  ( .G(n372), .D(n535), .Q(\mem[0][10] ) );
  DLH_X1 \mem_reg[0][9]  ( .G(n372), .D(n536), .Q(\mem[0][9] ) );
  DLH_X1 \mem_reg[0][8]  ( .G(n372), .D(n537), .Q(\mem[0][8] ) );
  DLH_X1 \mem_reg[0][7]  ( .G(n372), .D(n538), .Q(\mem[0][7] ) );
  DLH_X1 \mem_reg[0][6]  ( .G(n372), .D(n539), .Q(\mem[0][6] ) );
  DLH_X1 \mem_reg[0][5]  ( .G(n372), .D(n540), .Q(\mem[0][5] ) );
  DLH_X1 \mem_reg[0][4]  ( .G(n372), .D(n541), .Q(\mem[0][4] ) );
  DLH_X1 \mem_reg[0][3]  ( .G(n372), .D(n542), .Q(\mem[0][3] ) );
  DLH_X1 \mem_reg[0][2]  ( .G(n372), .D(n543), .Q(\mem[0][2] ) );
  DLH_X1 \mem_reg[0][1]  ( .G(n372), .D(n544), .Q(\mem[0][1] ) );
  DLH_X1 \mem_reg[0][0]  ( .G(n372), .D(n545), .Q(\mem[0][0] ) );
  DLH_X1 \mem_reg[7][11]  ( .G(n371), .D(n534), .Q(\mem[7][11] ) );
  DLH_X1 \mem_reg[7][10]  ( .G(n371), .D(n535), .Q(\mem[7][10] ) );
  DLH_X1 \mem_reg[7][9]  ( .G(n371), .D(n536), .Q(\mem[7][9] ) );
  DLH_X1 \mem_reg[7][8]  ( .G(n371), .D(n537), .Q(\mem[7][8] ) );
  DLH_X1 \mem_reg[7][7]  ( .G(n371), .D(n538), .Q(\mem[7][7] ) );
  DLH_X1 \mem_reg[7][6]  ( .G(n371), .D(n539), .Q(\mem[7][6] ) );
  DLH_X1 \mem_reg[7][5]  ( .G(n371), .D(n540), .Q(\mem[7][5] ) );
  DLH_X1 \mem_reg[7][4]  ( .G(n371), .D(n541), .Q(\mem[7][4] ) );
  DLH_X1 \mem_reg[7][3]  ( .G(n371), .D(n542), .Q(\mem[7][3] ) );
  DLH_X1 \mem_reg[7][2]  ( .G(n371), .D(n543), .Q(\mem[7][2] ) );
  DLH_X1 \mem_reg[7][1]  ( .G(n371), .D(n544), .Q(\mem[7][1] ) );
  DLH_X1 \mem_reg[7][0]  ( .G(n371), .D(n545), .Q(\mem[7][0] ) );
  CLKBUF_X1 U2 ( .A(N47), .Z(n371) );
  CLKBUF_X1 U3 ( .A(N138), .Z(n372) );
  CLKBUF_X1 U4 ( .A(N73), .Z(n373) );
  CLKBUF_X1 U5 ( .A(N112), .Z(n374) );
  CLKBUF_X1 U6 ( .A(N86), .Z(n375) );
  CLKBUF_X1 U7 ( .A(N99), .Z(n376) );
  CLKBUF_X1 U8 ( .A(N60), .Z(n377) );
  CLKBUF_X1 U9 ( .A(N125), .Z(n378) );
  BUF_X1 U10 ( .A(N40), .Z(n529) );
  BUF_X1 U11 ( .A(N40), .Z(n528) );
  BUF_X1 U12 ( .A(N40), .Z(n527) );
  BUF_X1 U13 ( .A(N41), .Z(n526) );
  BUF_X1 U14 ( .A(N37), .Z(n453) );
  BUF_X1 U15 ( .A(N37), .Z(n452) );
  BUF_X1 U16 ( .A(N38), .Z(n451) );
  INV_X1 U17 ( .A(n553), .ZN(n546) );
  INV_X1 U18 ( .A(n558), .ZN(n548) );
  INV_X1 U19 ( .A(n563), .ZN(n550) );
  NAND3_X1 U20 ( .A1(cs_1), .A2(n547), .A3(oe_1), .ZN(n553) );
  INV_X1 U21 ( .A(we_1), .ZN(n547) );
  OAI22_X1 U22 ( .A1(1'b1), .A2(n546), .B1(n552), .B2(n553), .ZN(data_1[8]) );
  NAND2_X1 U23 ( .A1(N176), .A2(n546), .ZN(n552) );
  INV_X1 U24 ( .A(N40), .ZN(n530) );
  INV_X1 U25 ( .A(N41), .ZN(n531) );
  OAI22_X1 U26 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n554), .ZN(data_1[9]) );
  NAND2_X1 U27 ( .A1(N175), .A2(n546), .ZN(n554) );
  OAI22_X1 U28 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n555), .ZN(data_1[10])
         );
  NAND2_X1 U29 ( .A1(N174), .A2(n546), .ZN(n555) );
  OAI22_X1 U30 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n556), .ZN(data_1[11])
         );
  NAND2_X1 U31 ( .A1(N173), .A2(n546), .ZN(n556) );
  AND3_X1 U32 ( .A1(cs_1), .A2(n563), .A3(we_1), .ZN(n579) );
  NAND3_X1 U33 ( .A1(cs_0), .A2(n551), .A3(oe_0), .ZN(n558) );
  INV_X1 U34 ( .A(we_0), .ZN(n551) );
  NAND2_X1 U35 ( .A1(N42), .A2(n579), .ZN(n565) );
  NAND2_X1 U36 ( .A1(N39), .A2(n550), .ZN(n564) );
  NAND2_X1 U37 ( .A1(we_0), .A2(cs_0), .ZN(n563) );
  INV_X1 U38 ( .A(n576), .ZN(n537) );
  AOI22_X1 U39 ( .A1(data_1[8]), .A2(n579), .B1(data_0[8]), .B2(n550), .ZN(
        n576) );
  OAI22_X1 U45 ( .A1(1'b1), .A2(n548), .B1(n557), .B2(n558), .ZN(data_0[8]) );
  NAND2_X1 U46 ( .A1(N160), .A2(n548), .ZN(n557) );
  INV_X1 U47 ( .A(n577), .ZN(n536) );
  AOI22_X1 U50 ( .A1(data_1[9]), .A2(n579), .B1(data_0[9]), .B2(n550), .ZN(
        n577) );
  OAI22_X1 U51 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n559), .ZN(data_0[9]) );
  NAND2_X1 U53 ( .A1(N159), .A2(n548), .ZN(n559) );
  INV_X1 U54 ( .A(n578), .ZN(n535) );
  AOI22_X1 U55 ( .A1(data_1[10]), .A2(n579), .B1(data_0[10]), .B2(n550), .ZN(
        n578) );
  OAI22_X1 U56 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n560), .ZN(data_0[10])
         );
  NAND2_X1 U57 ( .A1(N158), .A2(n548), .ZN(n560) );
  INV_X1 U58 ( .A(n580), .ZN(n534) );
  AOI22_X1 U59 ( .A1(data_1[11]), .A2(n579), .B1(data_0[11]), .B2(n550), .ZN(
        n580) );
  OAI22_X1 U60 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n561), .ZN(data_0[11])
         );
  NAND2_X1 U61 ( .A1(N157), .A2(n548), .ZN(n561) );
  INV_X1 U62 ( .A(n568), .ZN(n545) );
  AOI22_X1 U63 ( .A1(data_1[0]), .A2(n579), .B1(data_0[0]), .B2(n550), .ZN(
        n568) );
  INV_X1 U64 ( .A(n569), .ZN(n544) );
  AOI22_X1 U65 ( .A1(data_1[1]), .A2(n579), .B1(data_0[1]), .B2(n550), .ZN(
        n569) );
  INV_X1 U66 ( .A(n570), .ZN(n543) );
  AOI22_X1 U67 ( .A1(data_1[2]), .A2(n579), .B1(data_0[2]), .B2(n550), .ZN(
        n570) );
  INV_X1 U69 ( .A(n571), .ZN(n542) );
  AOI22_X1 U70 ( .A1(data_1[3]), .A2(n579), .B1(data_0[3]), .B2(n550), .ZN(
        n571) );
  INV_X1 U71 ( .A(n572), .ZN(n541) );
  AOI22_X1 U72 ( .A1(data_1[4]), .A2(n579), .B1(data_0[4]), .B2(n550), .ZN(
        n572) );
  INV_X1 U73 ( .A(n573), .ZN(n540) );
  AOI22_X1 U74 ( .A1(data_1[5]), .A2(n579), .B1(data_0[5]), .B2(n550), .ZN(
        n573) );
  INV_X1 U75 ( .A(n574), .ZN(n539) );
  AOI22_X1 U76 ( .A1(data_1[6]), .A2(n579), .B1(data_0[6]), .B2(n550), .ZN(
        n574) );
  INV_X1 U77 ( .A(n575), .ZN(n538) );
  AOI22_X1 U78 ( .A1(data_1[7]), .A2(n579), .B1(data_0[7]), .B2(n550), .ZN(
        n575) );
  NAND2_X1 U79 ( .A1(n579), .A2(n549), .ZN(n567) );
  INV_X1 U80 ( .A(N42), .ZN(n549) );
  INV_X1 U81 ( .A(N37), .ZN(n532) );
  INV_X1 U82 ( .A(N38), .ZN(n533) );
  OR2_X1 U83 ( .A1(n563), .A2(N39), .ZN(n566) );
  MUX2_X1 U84 ( .A(\mem[6][0] ), .B(\mem[7][0] ), .S(N37), .Z(n379) );
  MUX2_X1 U85 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .S(N37), .Z(n380) );
  MUX2_X1 U86 ( .A(n380), .B(n379), .S(N38), .Z(n381) );
  MUX2_X1 U87 ( .A(\mem[2][0] ), .B(\mem[3][0] ), .S(N37), .Z(n382) );
  MUX2_X1 U88 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .S(N37), .Z(n383) );
  MUX2_X1 U89 ( .A(n383), .B(n382), .S(N38), .Z(n384) );
  MUX2_X1 U90 ( .A(n384), .B(n381), .S(N39), .Z(N168) );
  MUX2_X1 U91 ( .A(\mem[6][1] ), .B(\mem[7][1] ), .S(N37), .Z(n385) );
  MUX2_X1 U92 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .S(N37), .Z(n386) );
  MUX2_X1 U93 ( .A(n386), .B(n385), .S(N38), .Z(n387) );
  MUX2_X1 U94 ( .A(\mem[2][1] ), .B(\mem[3][1] ), .S(n453), .Z(n388) );
  MUX2_X1 U95 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .S(n452), .Z(n389) );
  MUX2_X1 U96 ( .A(n389), .B(n388), .S(N38), .Z(n390) );
  MUX2_X1 U97 ( .A(n390), .B(n387), .S(N39), .Z(N167) );
  MUX2_X1 U98 ( .A(\mem[6][2] ), .B(\mem[7][2] ), .S(n452), .Z(n391) );
  MUX2_X1 U99 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .S(N37), .Z(n392) );
  MUX2_X1 U100 ( .A(n392), .B(n391), .S(N38), .Z(n393) );
  MUX2_X1 U101 ( .A(\mem[2][2] ), .B(\mem[3][2] ), .S(n453), .Z(n394) );
  MUX2_X1 U102 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .S(n452), .Z(n395) );
  MUX2_X1 U103 ( .A(n395), .B(n394), .S(N38), .Z(n396) );
  MUX2_X1 U104 ( .A(n396), .B(n393), .S(N39), .Z(N166) );
  MUX2_X1 U105 ( .A(\mem[6][3] ), .B(\mem[7][3] ), .S(N37), .Z(n397) );
  MUX2_X1 U106 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .S(N37), .Z(n398) );
  MUX2_X1 U107 ( .A(n398), .B(n397), .S(n451), .Z(n399) );
  MUX2_X1 U108 ( .A(\mem[2][3] ), .B(\mem[3][3] ), .S(n453), .Z(n400) );
  MUX2_X1 U109 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .S(n452), .Z(n401) );
  MUX2_X1 U110 ( .A(n401), .B(n400), .S(N38), .Z(n402) );
  MUX2_X1 U111 ( .A(n402), .B(n399), .S(N39), .Z(N165) );
  MUX2_X1 U112 ( .A(\mem[6][4] ), .B(\mem[7][4] ), .S(N37), .Z(n403) );
  MUX2_X1 U113 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .S(n453), .Z(n404) );
  MUX2_X1 U114 ( .A(n404), .B(n403), .S(n451), .Z(n405) );
  MUX2_X1 U115 ( .A(\mem[2][4] ), .B(\mem[3][4] ), .S(n452), .Z(n406) );
  MUX2_X1 U116 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .S(N37), .Z(n407) );
  MUX2_X1 U117 ( .A(n407), .B(n406), .S(N38), .Z(n408) );
  MUX2_X1 U118 ( .A(n408), .B(n405), .S(N39), .Z(N164) );
  MUX2_X1 U119 ( .A(\mem[6][5] ), .B(\mem[7][5] ), .S(n453), .Z(n409) );
  MUX2_X1 U120 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .S(n452), .Z(n410) );
  MUX2_X1 U121 ( .A(n410), .B(n409), .S(n451), .Z(n411) );
  MUX2_X1 U122 ( .A(\mem[2][5] ), .B(\mem[3][5] ), .S(N37), .Z(n412) );
  MUX2_X1 U123 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .S(n453), .Z(n413) );
  MUX2_X1 U124 ( .A(n413), .B(n412), .S(N38), .Z(n414) );
  MUX2_X1 U125 ( .A(n414), .B(n411), .S(N39), .Z(N163) );
  MUX2_X1 U126 ( .A(\mem[6][6] ), .B(\mem[7][6] ), .S(n452), .Z(n415) );
  MUX2_X1 U127 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .S(n452), .Z(n416) );
  MUX2_X1 U128 ( .A(n416), .B(n415), .S(n451), .Z(n417) );
  MUX2_X1 U129 ( .A(\mem[2][6] ), .B(\mem[3][6] ), .S(n452), .Z(n418) );
  MUX2_X1 U130 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .S(n452), .Z(n419) );
  MUX2_X1 U131 ( .A(n419), .B(n418), .S(n451), .Z(n420) );
  MUX2_X1 U132 ( .A(n420), .B(n417), .S(N39), .Z(N162) );
  MUX2_X1 U133 ( .A(\mem[6][7] ), .B(\mem[7][7] ), .S(n452), .Z(n421) );
  MUX2_X1 U134 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .S(n452), .Z(n422) );
  MUX2_X1 U135 ( .A(n422), .B(n421), .S(n451), .Z(n423) );
  MUX2_X1 U136 ( .A(\mem[2][7] ), .B(\mem[3][7] ), .S(n452), .Z(n424) );
  MUX2_X1 U137 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .S(n452), .Z(n425) );
  MUX2_X1 U138 ( .A(n425), .B(n424), .S(n451), .Z(n426) );
  MUX2_X1 U139 ( .A(n426), .B(n423), .S(N39), .Z(N161) );
  MUX2_X1 U140 ( .A(\mem[6][8] ), .B(\mem[7][8] ), .S(n452), .Z(n427) );
  MUX2_X1 U141 ( .A(\mem[4][8] ), .B(\mem[5][8] ), .S(n452), .Z(n428) );
  MUX2_X1 U142 ( .A(n428), .B(n427), .S(n451), .Z(n429) );
  MUX2_X1 U143 ( .A(\mem[2][8] ), .B(\mem[3][8] ), .S(n452), .Z(n430) );
  MUX2_X1 U144 ( .A(\mem[0][8] ), .B(\mem[1][8] ), .S(n452), .Z(n431) );
  MUX2_X1 U145 ( .A(n431), .B(n430), .S(n451), .Z(n432) );
  MUX2_X1 U146 ( .A(n432), .B(n429), .S(N39), .Z(N160) );
  MUX2_X1 U147 ( .A(\mem[6][9] ), .B(\mem[7][9] ), .S(n453), .Z(n433) );
  MUX2_X1 U148 ( .A(\mem[4][9] ), .B(\mem[5][9] ), .S(n453), .Z(n434) );
  MUX2_X1 U149 ( .A(n434), .B(n433), .S(n451), .Z(n435) );
  MUX2_X1 U150 ( .A(\mem[2][9] ), .B(\mem[3][9] ), .S(n453), .Z(n436) );
  MUX2_X1 U151 ( .A(\mem[0][9] ), .B(\mem[1][9] ), .S(n453), .Z(n437) );
  MUX2_X1 U152 ( .A(n437), .B(n436), .S(n451), .Z(n438) );
  MUX2_X1 U153 ( .A(n438), .B(n435), .S(N39), .Z(N159) );
  MUX2_X1 U154 ( .A(\mem[6][10] ), .B(\mem[7][10] ), .S(n453), .Z(n439) );
  MUX2_X1 U155 ( .A(\mem[4][10] ), .B(\mem[5][10] ), .S(n453), .Z(n440) );
  MUX2_X1 U156 ( .A(n440), .B(n439), .S(n451), .Z(n441) );
  MUX2_X1 U157 ( .A(\mem[2][10] ), .B(\mem[3][10] ), .S(n453), .Z(n442) );
  MUX2_X1 U158 ( .A(\mem[0][10] ), .B(\mem[1][10] ), .S(n453), .Z(n443) );
  MUX2_X1 U159 ( .A(n443), .B(n442), .S(n451), .Z(n444) );
  MUX2_X1 U160 ( .A(n444), .B(n441), .S(N39), .Z(N158) );
  MUX2_X1 U161 ( .A(\mem[6][11] ), .B(\mem[7][11] ), .S(n453), .Z(n445) );
  MUX2_X1 U162 ( .A(\mem[4][11] ), .B(\mem[5][11] ), .S(n453), .Z(n446) );
  MUX2_X1 U163 ( .A(n446), .B(n445), .S(n451), .Z(n447) );
  MUX2_X1 U164 ( .A(\mem[2][11] ), .B(\mem[3][11] ), .S(n453), .Z(n448) );
  MUX2_X1 U165 ( .A(\mem[0][11] ), .B(\mem[1][11] ), .S(n453), .Z(n449) );
  MUX2_X1 U166 ( .A(n449), .B(n448), .S(n451), .Z(n450) );
  MUX2_X1 U167 ( .A(n450), .B(n447), .S(N39), .Z(N157) );
  MUX2_X1 U168 ( .A(\mem[6][0] ), .B(\mem[7][0] ), .S(N40), .Z(n454) );
  MUX2_X1 U169 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .S(N40), .Z(n455) );
  MUX2_X1 U170 ( .A(n455), .B(n454), .S(N41), .Z(n456) );
  MUX2_X1 U171 ( .A(\mem[2][0] ), .B(\mem[3][0] ), .S(N40), .Z(n457) );
  MUX2_X1 U172 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .S(N40), .Z(n458) );
  MUX2_X1 U173 ( .A(n458), .B(n457), .S(N41), .Z(n459) );
  MUX2_X1 U174 ( .A(n459), .B(n456), .S(N42), .Z(N184) );
  MUX2_X1 U175 ( .A(\mem[6][1] ), .B(\mem[7][1] ), .S(N40), .Z(n460) );
  MUX2_X1 U176 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .S(N40), .Z(n461) );
  MUX2_X1 U177 ( .A(n461), .B(n460), .S(N41), .Z(n462) );
  MUX2_X1 U178 ( .A(\mem[2][1] ), .B(\mem[3][1] ), .S(N40), .Z(n463) );
  MUX2_X1 U179 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .S(N40), .Z(n464) );
  MUX2_X1 U180 ( .A(n464), .B(n463), .S(N41), .Z(n465) );
  MUX2_X1 U181 ( .A(n465), .B(n462), .S(N42), .Z(N183) );
  MUX2_X1 U182 ( .A(\mem[6][2] ), .B(\mem[7][2] ), .S(N40), .Z(n466) );
  MUX2_X1 U183 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .S(N40), .Z(n467) );
  MUX2_X1 U184 ( .A(n467), .B(n466), .S(N41), .Z(n468) );
  MUX2_X1 U185 ( .A(\mem[2][2] ), .B(\mem[3][2] ), .S(N40), .Z(n469) );
  MUX2_X1 U186 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .S(N40), .Z(n470) );
  MUX2_X1 U187 ( .A(n470), .B(n469), .S(N41), .Z(n471) );
  MUX2_X1 U188 ( .A(n471), .B(n468), .S(N42), .Z(N182) );
  MUX2_X1 U189 ( .A(\mem[6][3] ), .B(\mem[7][3] ), .S(n527), .Z(n472) );
  MUX2_X1 U190 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .S(n527), .Z(n473) );
  MUX2_X1 U191 ( .A(n473), .B(n472), .S(N41), .Z(n474) );
  MUX2_X1 U192 ( .A(\mem[2][3] ), .B(\mem[3][3] ), .S(n527), .Z(n475) );
  MUX2_X1 U193 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .S(n527), .Z(n476) );
  MUX2_X1 U194 ( .A(n476), .B(n475), .S(N41), .Z(n477) );
  MUX2_X1 U195 ( .A(n477), .B(n474), .S(N42), .Z(N181) );
  MUX2_X1 U196 ( .A(\mem[6][4] ), .B(\mem[7][4] ), .S(n527), .Z(n478) );
  MUX2_X1 U197 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .S(n527), .Z(n479) );
  MUX2_X1 U198 ( .A(n479), .B(n478), .S(N41), .Z(n480) );
  MUX2_X1 U199 ( .A(\mem[2][4] ), .B(\mem[3][4] ), .S(n527), .Z(n481) );
  MUX2_X1 U200 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .S(n527), .Z(n482) );
  MUX2_X1 U201 ( .A(n482), .B(n481), .S(N41), .Z(n483) );
  MUX2_X1 U202 ( .A(n483), .B(n480), .S(N42), .Z(N180) );
  MUX2_X1 U203 ( .A(\mem[6][5] ), .B(\mem[7][5] ), .S(n527), .Z(n484) );
  MUX2_X1 U204 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .S(n527), .Z(n485) );
  MUX2_X1 U205 ( .A(n485), .B(n484), .S(N41), .Z(n486) );
  MUX2_X1 U206 ( .A(\mem[2][5] ), .B(\mem[3][5] ), .S(n527), .Z(n487) );
  MUX2_X1 U207 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .S(n527), .Z(n488) );
  MUX2_X1 U208 ( .A(n488), .B(n487), .S(N41), .Z(n489) );
  MUX2_X1 U209 ( .A(n489), .B(n486), .S(N42), .Z(N179) );
  MUX2_X1 U210 ( .A(\mem[6][6] ), .B(\mem[7][6] ), .S(n528), .Z(n490) );
  MUX2_X1 U211 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .S(n528), .Z(n491) );
  MUX2_X1 U212 ( .A(n491), .B(n490), .S(n526), .Z(n492) );
  MUX2_X1 U213 ( .A(\mem[2][6] ), .B(\mem[3][6] ), .S(n528), .Z(n493) );
  MUX2_X1 U214 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .S(n528), .Z(n494) );
  MUX2_X1 U215 ( .A(n494), .B(n493), .S(n526), .Z(n495) );
  MUX2_X1 U216 ( .A(n495), .B(n492), .S(N42), .Z(N178) );
  MUX2_X1 U217 ( .A(\mem[6][7] ), .B(\mem[7][7] ), .S(n528), .Z(n496) );
  MUX2_X1 U218 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .S(n528), .Z(n497) );
  MUX2_X1 U219 ( .A(n497), .B(n496), .S(n526), .Z(n498) );
  MUX2_X1 U220 ( .A(\mem[2][7] ), .B(\mem[3][7] ), .S(n528), .Z(n499) );
  MUX2_X1 U221 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .S(n528), .Z(n500) );
  MUX2_X1 U222 ( .A(n500), .B(n499), .S(n526), .Z(n501) );
  MUX2_X1 U223 ( .A(n501), .B(n498), .S(N42), .Z(N177) );
  MUX2_X1 U224 ( .A(\mem[6][8] ), .B(\mem[7][8] ), .S(n528), .Z(n502) );
  MUX2_X1 U225 ( .A(\mem[4][8] ), .B(\mem[5][8] ), .S(n528), .Z(n503) );
  MUX2_X1 U226 ( .A(n503), .B(n502), .S(n526), .Z(n504) );
  MUX2_X1 U227 ( .A(\mem[2][8] ), .B(\mem[3][8] ), .S(n528), .Z(n505) );
  MUX2_X1 U228 ( .A(\mem[0][8] ), .B(\mem[1][8] ), .S(n528), .Z(n506) );
  MUX2_X1 U229 ( .A(n506), .B(n505), .S(n526), .Z(n507) );
  MUX2_X1 U230 ( .A(n507), .B(n504), .S(N42), .Z(N176) );
  MUX2_X1 U231 ( .A(\mem[6][9] ), .B(\mem[7][9] ), .S(n529), .Z(n508) );
  MUX2_X1 U232 ( .A(\mem[4][9] ), .B(\mem[5][9] ), .S(n529), .Z(n509) );
  MUX2_X1 U233 ( .A(n509), .B(n508), .S(n526), .Z(n510) );
  MUX2_X1 U234 ( .A(\mem[2][9] ), .B(\mem[3][9] ), .S(n529), .Z(n511) );
  MUX2_X1 U235 ( .A(\mem[0][9] ), .B(\mem[1][9] ), .S(n529), .Z(n512) );
  MUX2_X1 U236 ( .A(n512), .B(n511), .S(n526), .Z(n513) );
  MUX2_X1 U237 ( .A(n513), .B(n510), .S(N42), .Z(N175) );
  MUX2_X1 U238 ( .A(\mem[6][10] ), .B(\mem[7][10] ), .S(n529), .Z(n514) );
  MUX2_X1 U239 ( .A(\mem[4][10] ), .B(\mem[5][10] ), .S(n529), .Z(n515) );
  MUX2_X1 U240 ( .A(n515), .B(n514), .S(n526), .Z(n516) );
  MUX2_X1 U241 ( .A(\mem[2][10] ), .B(\mem[3][10] ), .S(n529), .Z(n517) );
  MUX2_X1 U242 ( .A(\mem[0][10] ), .B(\mem[1][10] ), .S(n529), .Z(n518) );
  MUX2_X1 U243 ( .A(n518), .B(n517), .S(n526), .Z(n519) );
  MUX2_X1 U244 ( .A(n519), .B(n516), .S(N42), .Z(N174) );
  MUX2_X1 U245 ( .A(\mem[6][11] ), .B(\mem[7][11] ), .S(n529), .Z(n520) );
  MUX2_X1 U246 ( .A(\mem[4][11] ), .B(\mem[5][11] ), .S(n529), .Z(n521) );
  MUX2_X1 U247 ( .A(n521), .B(n520), .S(n526), .Z(n522) );
  MUX2_X1 U248 ( .A(\mem[2][11] ), .B(\mem[3][11] ), .S(n529), .Z(n523) );
  MUX2_X1 U249 ( .A(\mem[0][11] ), .B(\mem[1][11] ), .S(n529), .Z(n524) );
  MUX2_X1 U250 ( .A(n524), .B(n523), .S(n526), .Z(n525) );
  MUX2_X1 U251 ( .A(n525), .B(n522), .S(N42), .Z(N173) );
endmodule


module syn_fifo_6 ( clk, rst, wr_cs, rd_cs, data_in, rd_en, wr_en, data_out, 
        empty, full );
  input [11:0] data_in;
  output [11:0] data_out;
  input clk, rst, wr_cs, rd_cs, rd_en, wr_en;
  output empty, full;
  wire   N40, n99, n100, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179;
  wire   [3:0] status_cnt;
  wire   [2:0] wr_pointer;
  wire   [2:0] rd_pointer;
  wire   [11:0] data_ram;
  assign full = N40;

  DFFR_X1 \wr_pointer_reg[2]  ( .D(n119), .CK(clk), .RN(rst), .Q(wr_pointer[2]), .QN(n136) );
  DFFR_X1 \rd_pointer_reg[2]  ( .D(n122), .CK(clk), .RN(n105), .Q(
        rd_pointer[2]), .QN(n135) );
  DFFR_X1 \data_out_reg[11]  ( .D(n123), .CK(clk), .RN(n105), .Q(data_out[11]), 
        .QN(n137) );
  DFFR_X1 \data_out_reg[10]  ( .D(n124), .CK(clk), .RN(n105), .Q(data_out[10]), 
        .QN(n138) );
  DFFR_X1 \data_out_reg[9]  ( .D(n125), .CK(clk), .RN(n105), .Q(data_out[9]), 
        .QN(n139) );
  DFFR_X1 \data_out_reg[8]  ( .D(n126), .CK(clk), .RN(n105), .Q(data_out[8]), 
        .QN(n140) );
  DFFR_X1 \data_out_reg[7]  ( .D(n127), .CK(clk), .RN(n105), .Q(data_out[7]), 
        .QN(n141) );
  DFFR_X1 \data_out_reg[6]  ( .D(n128), .CK(clk), .RN(n105), .Q(data_out[6]), 
        .QN(n142) );
  DFFR_X1 \data_out_reg[5]  ( .D(n129), .CK(clk), .RN(n105), .Q(data_out[5]), 
        .QN(n143) );
  DFFR_X1 \data_out_reg[4]  ( .D(n130), .CK(clk), .RN(n105), .Q(data_out[4]), 
        .QN(n144) );
  DFFR_X1 \data_out_reg[3]  ( .D(n131), .CK(clk), .RN(n105), .Q(data_out[3]), 
        .QN(n145) );
  DFFR_X1 \data_out_reg[2]  ( .D(n132), .CK(clk), .RN(n105), .Q(data_out[2]), 
        .QN(n146) );
  DFFR_X1 \data_out_reg[1]  ( .D(n133), .CK(clk), .RN(n105), .Q(data_out[1]), 
        .QN(n147) );
  DFFR_X1 \data_out_reg[0]  ( .D(n134), .CK(clk), .RN(n105), .Q(data_out[0]), 
        .QN(n148) );
  DFFR_X1 \status_cnt_reg[0]  ( .D(n113), .CK(clk), .RN(n105), .Q(
        status_cnt[0]), .QN(n99) );
  DFFR_X1 \status_cnt_reg[1]  ( .D(n114), .CK(clk), .RN(n105), .Q(
        status_cnt[1]), .QN(n100) );
  XOR2_X1 U27 ( .A(n135), .B(n166), .Z(n122) );
  XOR2_X1 U29 ( .A(rd_pointer[1]), .B(n165), .Z(n121) );
  XOR2_X1 U31 ( .A(rd_pointer[0]), .B(n110), .Z(n120) );
  XOR2_X1 U32 ( .A(n136), .B(n164), .Z(n119) );
  XOR2_X1 U34 ( .A(wr_pointer[1]), .B(n163), .Z(n118) );
  XOR2_X1 U36 ( .A(n104), .B(n162), .Z(n117) );
  NAND3_X1 U49 ( .A1(n99), .A2(n100), .A3(n109), .ZN(n155) );
  NAND3_X1 U50 ( .A1(n159), .A2(n100), .A3(status_cnt[0]), .ZN(n152) );
  XOR2_X1 U53 ( .A(n151), .B(n99), .Z(n113) );
  NAND3_X1 U58 ( .A1(n162), .A2(n149), .A3(n110), .ZN(n154) );
  NAND4_X1 U63 ( .A1(status_cnt[2]), .A2(status_cnt[1]), .A3(status_cnt[0]), 
        .A4(n111), .ZN(n161) );
  ram_dp_ar_aw_6 DP_RAM ( .address_0(wr_pointer), .data_0(data_in), .cs_0(
        wr_cs), .we_0(wr_en), .oe_0(1'b0), .address_1(rd_pointer), .data_1(
        data_ram), .cs_1(rd_cs), .we_1(1'b0), .oe_1(rd_en) );
  DFFR_X1 \wr_pointer_reg[0]  ( .D(n117), .CK(clk), .RN(n105), .Q(
        wr_pointer[0]), .QN(n104) );
  DFFR_X1 \wr_pointer_reg[1]  ( .D(n118), .CK(clk), .RN(n105), .Q(
        wr_pointer[1]) );
  DFFR_X1 \rd_pointer_reg[0]  ( .D(n120), .CK(clk), .RN(n105), .Q(
        rd_pointer[0]) );
  DFFR_X1 \rd_pointer_reg[1]  ( .D(n121), .CK(clk), .RN(n105), .Q(
        rd_pointer[1]) );
  DFFR_X1 \status_cnt_reg[2]  ( .D(n115), .CK(clk), .RN(rst), .Q(status_cnt[2]), .QN(n112) );
  DFFR_X1 \status_cnt_reg[3]  ( .D(n116), .CK(clk), .RN(n105), .Q(
        status_cnt[3]), .QN(n111) );
  AND2_X1 U3 ( .A1(n150), .A2(n111), .ZN(empty) );
  NOR3_X2 U4 ( .A1(n102), .A2(n103), .A3(n151), .ZN(n153) );
  AOI211_X4 U5 ( .C1(n150), .C2(status_cnt[3]), .A(n110), .B(n162), .ZN(n159)
         );
  INV_X4 U6 ( .A(n179), .ZN(n110) );
  AND2_X1 U7 ( .A1(n99), .A2(n159), .ZN(n102) );
  AND2_X1 U8 ( .A1(n109), .A2(status_cnt[0]), .ZN(n103) );
  INV_X1 U9 ( .A(n154), .ZN(n109) );
  BUF_X1 U10 ( .A(rst), .Z(n105) );
  INV_X1 U11 ( .A(n155), .ZN(n108) );
  NOR2_X1 U12 ( .A1(n109), .A2(n159), .ZN(n151) );
  NAND2_X1 U13 ( .A1(n150), .A2(n111), .ZN(n149) );
  INV_X1 U14 ( .A(n159), .ZN(n107) );
  OAI21_X1 U15 ( .B1(n106), .B2(n112), .A(n157), .ZN(n115) );
  OAI21_X1 U16 ( .B1(n156), .B2(n108), .A(n112), .ZN(n157) );
  INV_X1 U17 ( .A(n158), .ZN(n106) );
  NOR3_X1 U18 ( .A1(n100), .A2(n107), .A3(n99), .ZN(n156) );
  NOR2_X1 U19 ( .A1(n104), .A2(n162), .ZN(n163) );
  NAND2_X1 U20 ( .A1(rd_en), .A2(rd_cs), .ZN(n179) );
  OAI221_X1 U21 ( .B1(status_cnt[1]), .B2(n107), .C1(n154), .C2(n100), .A(n153), .ZN(n158) );
  NOR3_X1 U22 ( .A1(status_cnt[1]), .A2(status_cnt[2]), .A3(status_cnt[0]), 
        .ZN(n150) );
  OAI22_X1 U23 ( .A1(n107), .A2(n161), .B1(n160), .B2(n111), .ZN(n116) );
  AOI221_X1 U24 ( .B1(n159), .B2(n112), .C1(status_cnt[2]), .C2(n109), .A(n158), .ZN(n160) );
  INV_X1 U25 ( .A(n161), .ZN(N40) );
  OAI22_X1 U26 ( .A1(n148), .A2(n110), .B1(n179), .B2(n178), .ZN(n134) );
  INV_X1 U28 ( .A(data_ram[0]), .ZN(n178) );
  OAI22_X1 U30 ( .A1(n147), .A2(n110), .B1(n179), .B2(n177), .ZN(n133) );
  INV_X1 U33 ( .A(data_ram[1]), .ZN(n177) );
  OAI22_X1 U35 ( .A1(n146), .A2(n110), .B1(n179), .B2(n176), .ZN(n132) );
  INV_X1 U37 ( .A(data_ram[2]), .ZN(n176) );
  OAI22_X1 U38 ( .A1(n145), .A2(n110), .B1(n179), .B2(n175), .ZN(n131) );
  INV_X1 U39 ( .A(data_ram[3]), .ZN(n175) );
  OAI22_X1 U40 ( .A1(n144), .A2(n110), .B1(n179), .B2(n174), .ZN(n130) );
  INV_X1 U41 ( .A(data_ram[4]), .ZN(n174) );
  OAI22_X1 U42 ( .A1(n143), .A2(n110), .B1(n179), .B2(n173), .ZN(n129) );
  INV_X1 U43 ( .A(data_ram[5]), .ZN(n173) );
  OAI22_X1 U44 ( .A1(n142), .A2(n110), .B1(n179), .B2(n172), .ZN(n128) );
  INV_X1 U45 ( .A(data_ram[6]), .ZN(n172) );
  OAI22_X1 U46 ( .A1(n141), .A2(n110), .B1(n179), .B2(n171), .ZN(n127) );
  INV_X1 U47 ( .A(data_ram[7]), .ZN(n171) );
  OAI22_X1 U48 ( .A1(n139), .A2(n110), .B1(n179), .B2(n169), .ZN(n125) );
  INV_X1 U51 ( .A(data_ram[9]), .ZN(n169) );
  OAI22_X1 U52 ( .A1(n138), .A2(n110), .B1(n179), .B2(n168), .ZN(n124) );
  INV_X1 U54 ( .A(data_ram[10]), .ZN(n168) );
  OAI22_X1 U55 ( .A1(n137), .A2(n110), .B1(n179), .B2(n167), .ZN(n123) );
  INV_X1 U56 ( .A(data_ram[11]), .ZN(n167) );
  OAI22_X1 U57 ( .A1(n140), .A2(n110), .B1(n179), .B2(n170), .ZN(n126) );
  INV_X1 U59 ( .A(data_ram[8]), .ZN(n170) );
  NAND2_X1 U60 ( .A1(rd_pointer[1]), .A2(n165), .ZN(n166) );
  NAND2_X1 U61 ( .A1(wr_en), .A2(wr_cs), .ZN(n162) );
  OAI211_X1 U62 ( .C1(n153), .C2(n100), .A(n152), .B(n155), .ZN(n114) );
  AND2_X1 U64 ( .A1(rd_pointer[0]), .A2(n110), .ZN(n165) );
  NAND2_X1 U65 ( .A1(wr_pointer[1]), .A2(n163), .ZN(n164) );
endmodule


module ram_dp_ar_aw_5 ( address_0, data_0, cs_0, we_0, oe_0, address_1, data_1, 
        cs_1, we_1, oe_1 );
  input [2:0] address_0;
  inout [11:0] data_0;
  input [2:0] address_1;
  inout [11:0] data_1;
  input cs_0, we_0, oe_0, cs_1, we_1, oe_1;
  wire   N37, N38, N39, N40, N41, N42, \mem[0][11] , \mem[0][10] , \mem[0][9] ,
         \mem[0][8] , \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , \mem[1][11] ,
         \mem[1][10] , \mem[1][9] , \mem[1][8] , \mem[1][7] , \mem[1][6] ,
         \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] , \mem[1][1] ,
         \mem[1][0] , \mem[2][11] , \mem[2][10] , \mem[2][9] , \mem[2][8] ,
         \mem[2][7] , \mem[2][6] , \mem[2][5] , \mem[2][4] , \mem[2][3] ,
         \mem[2][2] , \mem[2][1] , \mem[2][0] , \mem[3][11] , \mem[3][10] ,
         \mem[3][9] , \mem[3][8] , \mem[3][7] , \mem[3][6] , \mem[3][5] ,
         \mem[3][4] , \mem[3][3] , \mem[3][2] , \mem[3][1] , \mem[3][0] ,
         \mem[4][11] , \mem[4][10] , \mem[4][9] , \mem[4][8] , \mem[4][7] ,
         \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] , \mem[4][2] ,
         \mem[4][1] , \mem[4][0] , \mem[5][11] , \mem[5][10] , \mem[5][9] ,
         \mem[5][8] , \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] ,
         \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[6][11] ,
         \mem[6][10] , \mem[6][9] , \mem[6][8] , \mem[6][7] , \mem[6][6] ,
         \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] , \mem[6][1] ,
         \mem[6][0] , \mem[7][11] , \mem[7][10] , \mem[7][9] , \mem[7][8] ,
         \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] , \mem[7][3] ,
         \mem[7][2] , \mem[7][1] , \mem[7][0] , N47, N60, N73, N86, N99, N112,
         N125, N138, N157, N158, N159, N160, N161, N162, N163, N164, N165,
         N166, N167, N168, N173, N174, N175, N176, N177, N178, N179, N180,
         N181, N182, N183, N184, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476,
         n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487,
         n488, n489, n490, n491, n492, n493, n494, n495, n496, n497, n498,
         n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
         n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520,
         n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542,
         n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, n553,
         n554, n555, n556, n557, n558, n559, n560, n561, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580;
  assign N37 = address_0[0];
  assign N38 = address_0[1];
  assign N39 = address_0[2];
  assign N40 = address_1[0];
  assign N41 = address_1[1];
  assign N42 = address_1[2];

  OAI33_X1 U40 ( .A1(n531), .A2(n567), .A3(n530), .B1(n533), .B2(n566), .B3(
        n532), .ZN(N99) );
  OAI33_X1 U41 ( .A1(n565), .A2(N41), .A3(N40), .B1(n564), .B2(N38), .B3(N37), 
        .ZN(N86) );
  OAI33_X1 U42 ( .A1(n565), .A2(N41), .A3(n530), .B1(n564), .B2(N38), .B3(n532), .ZN(N73) );
  OAI33_X1 U43 ( .A1(n565), .A2(N40), .A3(n531), .B1(n564), .B2(N37), .B3(n533), .ZN(N60) );
  OAI33_X1 U44 ( .A1(n565), .A2(n530), .A3(n531), .B1(n564), .B2(n532), .B3(
        n533), .ZN(N47) );
  OAI33_X1 U48 ( .A1(n567), .A2(N41), .A3(N40), .B1(n566), .B2(N38), .B3(N37), 
        .ZN(N138) );
  OAI33_X1 U49 ( .A1(n530), .A2(N41), .A3(n567), .B1(n532), .B2(N38), .B3(n566), .ZN(N125) );
  OAI33_X1 U52 ( .A1(n531), .A2(N40), .A3(n567), .B1(n533), .B2(N37), .B3(n566), .ZN(N112) );
  TBUF_X1 \data_0_tri[0]  ( .A(N168), .EN(n558), .Z(data_0[0]) );
  TBUF_X1 \data_0_tri[1]  ( .A(N167), .EN(n558), .Z(data_0[1]) );
  TBUF_X1 \data_0_tri[2]  ( .A(N166), .EN(n558), .Z(data_0[2]) );
  TBUF_X1 \data_0_tri[3]  ( .A(N165), .EN(n558), .Z(data_0[3]) );
  TBUF_X1 \data_0_tri[4]  ( .A(N164), .EN(n558), .Z(data_0[4]) );
  TBUF_X1 \data_0_tri[5]  ( .A(N163), .EN(n558), .Z(data_0[5]) );
  TBUF_X1 \data_0_tri[6]  ( .A(N162), .EN(n558), .Z(data_0[6]) );
  TBUF_X1 \data_0_tri[7]  ( .A(N161), .EN(n558), .Z(data_0[7]) );
  TBUF_X1 \data_1_tri[0]  ( .A(N184), .EN(n553), .Z(data_1[0]) );
  TBUF_X1 \data_1_tri[1]  ( .A(N183), .EN(n553), .Z(data_1[1]) );
  TBUF_X1 \data_1_tri[2]  ( .A(N182), .EN(n553), .Z(data_1[2]) );
  TBUF_X1 \data_1_tri[3]  ( .A(N181), .EN(n553), .Z(data_1[3]) );
  TBUF_X1 \data_1_tri[4]  ( .A(N180), .EN(n553), .Z(data_1[4]) );
  TBUF_X1 \data_1_tri[5]  ( .A(N179), .EN(n553), .Z(data_1[5]) );
  TBUF_X1 \data_1_tri[6]  ( .A(N178), .EN(n553), .Z(data_1[6]) );
  TBUF_X1 \data_1_tri[7]  ( .A(N177), .EN(n553), .Z(data_1[7]) );
  DLH_X1 \mem_reg[1][11]  ( .G(n378), .D(n534), .Q(\mem[1][11] ) );
  DLH_X1 \mem_reg[1][10]  ( .G(n378), .D(n535), .Q(\mem[1][10] ) );
  DLH_X1 \mem_reg[1][9]  ( .G(n378), .D(n536), .Q(\mem[1][9] ) );
  DLH_X1 \mem_reg[1][8]  ( .G(n378), .D(n537), .Q(\mem[1][8] ) );
  DLH_X1 \mem_reg[1][7]  ( .G(n378), .D(n538), .Q(\mem[1][7] ) );
  DLH_X1 \mem_reg[1][6]  ( .G(n378), .D(n539), .Q(\mem[1][6] ) );
  DLH_X1 \mem_reg[1][5]  ( .G(n378), .D(n540), .Q(\mem[1][5] ) );
  DLH_X1 \mem_reg[1][4]  ( .G(n378), .D(n541), .Q(\mem[1][4] ) );
  DLH_X1 \mem_reg[1][3]  ( .G(n378), .D(n542), .Q(\mem[1][3] ) );
  DLH_X1 \mem_reg[1][2]  ( .G(n378), .D(n543), .Q(\mem[1][2] ) );
  DLH_X1 \mem_reg[1][1]  ( .G(n378), .D(n544), .Q(\mem[1][1] ) );
  DLH_X1 \mem_reg[1][0]  ( .G(n378), .D(n545), .Q(\mem[1][0] ) );
  DLH_X1 \mem_reg[6][11]  ( .G(n377), .D(n534), .Q(\mem[6][11] ) );
  DLH_X1 \mem_reg[6][10]  ( .G(n377), .D(n535), .Q(\mem[6][10] ) );
  DLH_X1 \mem_reg[6][9]  ( .G(n377), .D(n536), .Q(\mem[6][9] ) );
  DLH_X1 \mem_reg[6][8]  ( .G(n377), .D(n537), .Q(\mem[6][8] ) );
  DLH_X1 \mem_reg[6][7]  ( .G(n377), .D(n538), .Q(\mem[6][7] ) );
  DLH_X1 \mem_reg[6][6]  ( .G(n377), .D(n539), .Q(\mem[6][6] ) );
  DLH_X1 \mem_reg[6][5]  ( .G(n377), .D(n540), .Q(\mem[6][5] ) );
  DLH_X1 \mem_reg[6][4]  ( .G(n377), .D(n541), .Q(\mem[6][4] ) );
  DLH_X1 \mem_reg[6][3]  ( .G(n377), .D(n542), .Q(\mem[6][3] ) );
  DLH_X1 \mem_reg[6][2]  ( .G(n377), .D(n543), .Q(\mem[6][2] ) );
  DLH_X1 \mem_reg[6][1]  ( .G(n377), .D(n544), .Q(\mem[6][1] ) );
  DLH_X1 \mem_reg[6][0]  ( .G(n377), .D(n545), .Q(\mem[6][0] ) );
  DLH_X1 \mem_reg[3][11]  ( .G(n376), .D(n534), .Q(\mem[3][11] ) );
  DLH_X1 \mem_reg[3][10]  ( .G(n376), .D(n535), .Q(\mem[3][10] ) );
  DLH_X1 \mem_reg[3][9]  ( .G(n376), .D(n536), .Q(\mem[3][9] ) );
  DLH_X1 \mem_reg[3][8]  ( .G(n376), .D(n537), .Q(\mem[3][8] ) );
  DLH_X1 \mem_reg[3][7]  ( .G(n376), .D(n538), .Q(\mem[3][7] ) );
  DLH_X1 \mem_reg[3][6]  ( .G(n376), .D(n539), .Q(\mem[3][6] ) );
  DLH_X1 \mem_reg[3][5]  ( .G(n376), .D(n540), .Q(\mem[3][5] ) );
  DLH_X1 \mem_reg[3][4]  ( .G(n376), .D(n541), .Q(\mem[3][4] ) );
  DLH_X1 \mem_reg[3][3]  ( .G(n376), .D(n542), .Q(\mem[3][3] ) );
  DLH_X1 \mem_reg[3][2]  ( .G(n376), .D(n543), .Q(\mem[3][2] ) );
  DLH_X1 \mem_reg[3][1]  ( .G(n376), .D(n544), .Q(\mem[3][1] ) );
  DLH_X1 \mem_reg[3][0]  ( .G(n376), .D(n545), .Q(\mem[3][0] ) );
  DLH_X1 \mem_reg[4][11]  ( .G(n375), .D(n534), .Q(\mem[4][11] ) );
  DLH_X1 \mem_reg[4][10]  ( .G(n375), .D(n535), .Q(\mem[4][10] ) );
  DLH_X1 \mem_reg[4][9]  ( .G(n375), .D(n536), .Q(\mem[4][9] ) );
  DLH_X1 \mem_reg[4][8]  ( .G(n375), .D(n537), .Q(\mem[4][8] ) );
  DLH_X1 \mem_reg[4][7]  ( .G(n375), .D(n538), .Q(\mem[4][7] ) );
  DLH_X1 \mem_reg[4][6]  ( .G(n375), .D(n539), .Q(\mem[4][6] ) );
  DLH_X1 \mem_reg[4][5]  ( .G(n375), .D(n540), .Q(\mem[4][5] ) );
  DLH_X1 \mem_reg[4][4]  ( .G(n375), .D(n541), .Q(\mem[4][4] ) );
  DLH_X1 \mem_reg[4][3]  ( .G(n375), .D(n542), .Q(\mem[4][3] ) );
  DLH_X1 \mem_reg[4][2]  ( .G(n375), .D(n543), .Q(\mem[4][2] ) );
  DLH_X1 \mem_reg[4][1]  ( .G(n375), .D(n544), .Q(\mem[4][1] ) );
  DLH_X1 \mem_reg[4][0]  ( .G(n375), .D(n545), .Q(\mem[4][0] ) );
  DLH_X1 \mem_reg[2][11]  ( .G(n374), .D(n534), .Q(\mem[2][11] ) );
  DLH_X1 \mem_reg[2][10]  ( .G(n374), .D(n535), .Q(\mem[2][10] ) );
  DLH_X1 \mem_reg[2][9]  ( .G(n374), .D(n536), .Q(\mem[2][9] ) );
  DLH_X1 \mem_reg[2][8]  ( .G(n374), .D(n537), .Q(\mem[2][8] ) );
  DLH_X1 \mem_reg[2][7]  ( .G(n374), .D(n538), .Q(\mem[2][7] ) );
  DLH_X1 \mem_reg[2][6]  ( .G(n374), .D(n539), .Q(\mem[2][6] ) );
  DLH_X1 \mem_reg[2][5]  ( .G(n374), .D(n540), .Q(\mem[2][5] ) );
  DLH_X1 \mem_reg[2][4]  ( .G(n374), .D(n541), .Q(\mem[2][4] ) );
  DLH_X1 \mem_reg[2][3]  ( .G(n374), .D(n542), .Q(\mem[2][3] ) );
  DLH_X1 \mem_reg[2][2]  ( .G(n374), .D(n543), .Q(\mem[2][2] ) );
  DLH_X1 \mem_reg[2][1]  ( .G(n374), .D(n544), .Q(\mem[2][1] ) );
  DLH_X1 \mem_reg[2][0]  ( .G(n374), .D(n545), .Q(\mem[2][0] ) );
  DLH_X1 \mem_reg[5][11]  ( .G(n373), .D(n534), .Q(\mem[5][11] ) );
  DLH_X1 \mem_reg[5][10]  ( .G(n373), .D(n535), .Q(\mem[5][10] ) );
  DLH_X1 \mem_reg[5][9]  ( .G(n373), .D(n536), .Q(\mem[5][9] ) );
  DLH_X1 \mem_reg[5][8]  ( .G(n373), .D(n537), .Q(\mem[5][8] ) );
  DLH_X1 \mem_reg[5][7]  ( .G(n373), .D(n538), .Q(\mem[5][7] ) );
  DLH_X1 \mem_reg[5][6]  ( .G(n373), .D(n539), .Q(\mem[5][6] ) );
  DLH_X1 \mem_reg[5][5]  ( .G(n373), .D(n540), .Q(\mem[5][5] ) );
  DLH_X1 \mem_reg[5][4]  ( .G(n373), .D(n541), .Q(\mem[5][4] ) );
  DLH_X1 \mem_reg[5][3]  ( .G(n373), .D(n542), .Q(\mem[5][3] ) );
  DLH_X1 \mem_reg[5][2]  ( .G(n373), .D(n543), .Q(\mem[5][2] ) );
  DLH_X1 \mem_reg[5][1]  ( .G(n373), .D(n544), .Q(\mem[5][1] ) );
  DLH_X1 \mem_reg[5][0]  ( .G(n373), .D(n545), .Q(\mem[5][0] ) );
  DLH_X1 \mem_reg[0][11]  ( .G(n372), .D(n534), .Q(\mem[0][11] ) );
  DLH_X1 \mem_reg[0][10]  ( .G(n372), .D(n535), .Q(\mem[0][10] ) );
  DLH_X1 \mem_reg[0][9]  ( .G(n372), .D(n536), .Q(\mem[0][9] ) );
  DLH_X1 \mem_reg[0][8]  ( .G(n372), .D(n537), .Q(\mem[0][8] ) );
  DLH_X1 \mem_reg[0][7]  ( .G(n372), .D(n538), .Q(\mem[0][7] ) );
  DLH_X1 \mem_reg[0][6]  ( .G(n372), .D(n539), .Q(\mem[0][6] ) );
  DLH_X1 \mem_reg[0][5]  ( .G(n372), .D(n540), .Q(\mem[0][5] ) );
  DLH_X1 \mem_reg[0][4]  ( .G(n372), .D(n541), .Q(\mem[0][4] ) );
  DLH_X1 \mem_reg[0][3]  ( .G(n372), .D(n542), .Q(\mem[0][3] ) );
  DLH_X1 \mem_reg[0][2]  ( .G(n372), .D(n543), .Q(\mem[0][2] ) );
  DLH_X1 \mem_reg[0][1]  ( .G(n372), .D(n544), .Q(\mem[0][1] ) );
  DLH_X1 \mem_reg[0][0]  ( .G(n372), .D(n545), .Q(\mem[0][0] ) );
  DLH_X1 \mem_reg[7][11]  ( .G(n371), .D(n534), .Q(\mem[7][11] ) );
  DLH_X1 \mem_reg[7][10]  ( .G(n371), .D(n535), .Q(\mem[7][10] ) );
  DLH_X1 \mem_reg[7][9]  ( .G(n371), .D(n536), .Q(\mem[7][9] ) );
  DLH_X1 \mem_reg[7][8]  ( .G(n371), .D(n537), .Q(\mem[7][8] ) );
  DLH_X1 \mem_reg[7][7]  ( .G(n371), .D(n538), .Q(\mem[7][7] ) );
  DLH_X1 \mem_reg[7][6]  ( .G(n371), .D(n539), .Q(\mem[7][6] ) );
  DLH_X1 \mem_reg[7][5]  ( .G(n371), .D(n540), .Q(\mem[7][5] ) );
  DLH_X1 \mem_reg[7][4]  ( .G(n371), .D(n541), .Q(\mem[7][4] ) );
  DLH_X1 \mem_reg[7][3]  ( .G(n371), .D(n542), .Q(\mem[7][3] ) );
  DLH_X1 \mem_reg[7][2]  ( .G(n371), .D(n543), .Q(\mem[7][2] ) );
  DLH_X1 \mem_reg[7][1]  ( .G(n371), .D(n544), .Q(\mem[7][1] ) );
  DLH_X1 \mem_reg[7][0]  ( .G(n371), .D(n545), .Q(\mem[7][0] ) );
  CLKBUF_X1 U2 ( .A(N47), .Z(n371) );
  CLKBUF_X1 U3 ( .A(N138), .Z(n372) );
  CLKBUF_X1 U4 ( .A(N73), .Z(n373) );
  CLKBUF_X1 U5 ( .A(N112), .Z(n374) );
  CLKBUF_X1 U6 ( .A(N86), .Z(n375) );
  CLKBUF_X1 U7 ( .A(N99), .Z(n376) );
  CLKBUF_X1 U8 ( .A(N60), .Z(n377) );
  CLKBUF_X1 U9 ( .A(N125), .Z(n378) );
  BUF_X1 U10 ( .A(N40), .Z(n529) );
  BUF_X1 U11 ( .A(N40), .Z(n528) );
  BUF_X1 U12 ( .A(N40), .Z(n527) );
  BUF_X1 U13 ( .A(N41), .Z(n526) );
  BUF_X1 U14 ( .A(N37), .Z(n453) );
  BUF_X1 U15 ( .A(N37), .Z(n452) );
  BUF_X1 U16 ( .A(N38), .Z(n451) );
  INV_X1 U17 ( .A(n553), .ZN(n546) );
  INV_X1 U18 ( .A(n558), .ZN(n548) );
  INV_X1 U19 ( .A(n563), .ZN(n550) );
  NAND3_X1 U20 ( .A1(cs_1), .A2(n547), .A3(oe_1), .ZN(n553) );
  INV_X1 U21 ( .A(we_1), .ZN(n547) );
  OAI22_X1 U22 ( .A1(1'b1), .A2(n546), .B1(n552), .B2(n553), .ZN(data_1[8]) );
  NAND2_X1 U23 ( .A1(N176), .A2(n546), .ZN(n552) );
  OAI22_X1 U24 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n554), .ZN(data_1[9]) );
  NAND2_X1 U25 ( .A1(N175), .A2(n546), .ZN(n554) );
  OAI22_X1 U26 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n555), .ZN(data_1[10])
         );
  NAND2_X1 U27 ( .A1(N174), .A2(n546), .ZN(n555) );
  OAI22_X1 U28 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n556), .ZN(data_1[11])
         );
  NAND2_X1 U29 ( .A1(N173), .A2(n546), .ZN(n556) );
  INV_X1 U30 ( .A(N40), .ZN(n530) );
  INV_X1 U31 ( .A(N41), .ZN(n531) );
  AND3_X1 U32 ( .A1(cs_1), .A2(n563), .A3(we_1), .ZN(n579) );
  NAND3_X1 U33 ( .A1(cs_0), .A2(n551), .A3(oe_0), .ZN(n558) );
  INV_X1 U34 ( .A(we_0), .ZN(n551) );
  NAND2_X1 U35 ( .A1(N42), .A2(n579), .ZN(n565) );
  NAND2_X1 U36 ( .A1(N39), .A2(n550), .ZN(n564) );
  NAND2_X1 U37 ( .A1(we_0), .A2(cs_0), .ZN(n563) );
  INV_X1 U38 ( .A(n576), .ZN(n537) );
  AOI22_X1 U39 ( .A1(data_1[8]), .A2(n579), .B1(data_0[8]), .B2(n550), .ZN(
        n576) );
  OAI22_X1 U45 ( .A1(1'b1), .A2(n548), .B1(n557), .B2(n558), .ZN(data_0[8]) );
  NAND2_X1 U46 ( .A1(N160), .A2(n548), .ZN(n557) );
  INV_X1 U47 ( .A(n577), .ZN(n536) );
  AOI22_X1 U50 ( .A1(data_1[9]), .A2(n579), .B1(data_0[9]), .B2(n550), .ZN(
        n577) );
  OAI22_X1 U51 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n559), .ZN(data_0[9]) );
  NAND2_X1 U53 ( .A1(N159), .A2(n548), .ZN(n559) );
  INV_X1 U54 ( .A(n578), .ZN(n535) );
  AOI22_X1 U55 ( .A1(data_1[10]), .A2(n579), .B1(data_0[10]), .B2(n550), .ZN(
        n578) );
  OAI22_X1 U56 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n560), .ZN(data_0[10])
         );
  NAND2_X1 U57 ( .A1(N158), .A2(n548), .ZN(n560) );
  INV_X1 U58 ( .A(n580), .ZN(n534) );
  AOI22_X1 U59 ( .A1(data_1[11]), .A2(n579), .B1(data_0[11]), .B2(n550), .ZN(
        n580) );
  OAI22_X1 U60 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n561), .ZN(data_0[11])
         );
  NAND2_X1 U61 ( .A1(N157), .A2(n548), .ZN(n561) );
  INV_X1 U62 ( .A(n568), .ZN(n545) );
  AOI22_X1 U63 ( .A1(data_1[0]), .A2(n579), .B1(data_0[0]), .B2(n550), .ZN(
        n568) );
  INV_X1 U64 ( .A(n569), .ZN(n544) );
  AOI22_X1 U65 ( .A1(data_1[1]), .A2(n579), .B1(data_0[1]), .B2(n550), .ZN(
        n569) );
  INV_X1 U66 ( .A(n570), .ZN(n543) );
  AOI22_X1 U67 ( .A1(data_1[2]), .A2(n579), .B1(data_0[2]), .B2(n550), .ZN(
        n570) );
  INV_X1 U69 ( .A(n571), .ZN(n542) );
  AOI22_X1 U70 ( .A1(data_1[3]), .A2(n579), .B1(data_0[3]), .B2(n550), .ZN(
        n571) );
  INV_X1 U71 ( .A(n572), .ZN(n541) );
  AOI22_X1 U72 ( .A1(data_1[4]), .A2(n579), .B1(data_0[4]), .B2(n550), .ZN(
        n572) );
  INV_X1 U73 ( .A(n573), .ZN(n540) );
  AOI22_X1 U74 ( .A1(data_1[5]), .A2(n579), .B1(data_0[5]), .B2(n550), .ZN(
        n573) );
  INV_X1 U75 ( .A(n574), .ZN(n539) );
  AOI22_X1 U76 ( .A1(data_1[6]), .A2(n579), .B1(data_0[6]), .B2(n550), .ZN(
        n574) );
  INV_X1 U77 ( .A(n575), .ZN(n538) );
  AOI22_X1 U78 ( .A1(data_1[7]), .A2(n579), .B1(data_0[7]), .B2(n550), .ZN(
        n575) );
  NAND2_X1 U79 ( .A1(n579), .A2(n549), .ZN(n567) );
  INV_X1 U80 ( .A(N42), .ZN(n549) );
  INV_X1 U81 ( .A(N37), .ZN(n532) );
  INV_X1 U82 ( .A(N38), .ZN(n533) );
  OR2_X1 U83 ( .A1(n563), .A2(N39), .ZN(n566) );
  MUX2_X1 U84 ( .A(\mem[6][0] ), .B(\mem[7][0] ), .S(N37), .Z(n379) );
  MUX2_X1 U85 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .S(n453), .Z(n380) );
  MUX2_X1 U86 ( .A(n380), .B(n379), .S(N38), .Z(n381) );
  MUX2_X1 U87 ( .A(\mem[2][0] ), .B(\mem[3][0] ), .S(n452), .Z(n382) );
  MUX2_X1 U88 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .S(N37), .Z(n383) );
  MUX2_X1 U89 ( .A(n383), .B(n382), .S(N38), .Z(n384) );
  MUX2_X1 U90 ( .A(n384), .B(n381), .S(N39), .Z(N168) );
  MUX2_X1 U91 ( .A(\mem[6][1] ), .B(\mem[7][1] ), .S(n453), .Z(n385) );
  MUX2_X1 U92 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .S(n452), .Z(n386) );
  MUX2_X1 U93 ( .A(n386), .B(n385), .S(N38), .Z(n387) );
  MUX2_X1 U94 ( .A(\mem[2][1] ), .B(\mem[3][1] ), .S(N37), .Z(n388) );
  MUX2_X1 U95 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .S(n453), .Z(n389) );
  MUX2_X1 U96 ( .A(n389), .B(n388), .S(N38), .Z(n390) );
  MUX2_X1 U97 ( .A(n390), .B(n387), .S(N39), .Z(N167) );
  MUX2_X1 U98 ( .A(\mem[6][2] ), .B(\mem[7][2] ), .S(n452), .Z(n391) );
  MUX2_X1 U99 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .S(N37), .Z(n392) );
  MUX2_X1 U100 ( .A(n392), .B(n391), .S(N38), .Z(n393) );
  MUX2_X1 U101 ( .A(\mem[2][2] ), .B(\mem[3][2] ), .S(n453), .Z(n394) );
  MUX2_X1 U102 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .S(n452), .Z(n395) );
  MUX2_X1 U103 ( .A(n395), .B(n394), .S(N38), .Z(n396) );
  MUX2_X1 U104 ( .A(n396), .B(n393), .S(N39), .Z(N166) );
  MUX2_X1 U105 ( .A(\mem[6][3] ), .B(\mem[7][3] ), .S(n452), .Z(n397) );
  MUX2_X1 U106 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .S(n452), .Z(n398) );
  MUX2_X1 U107 ( .A(n398), .B(n397), .S(n451), .Z(n399) );
  MUX2_X1 U108 ( .A(\mem[2][3] ), .B(\mem[3][3] ), .S(n452), .Z(n400) );
  MUX2_X1 U109 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .S(n452), .Z(n401) );
  MUX2_X1 U110 ( .A(n401), .B(n400), .S(N38), .Z(n402) );
  MUX2_X1 U111 ( .A(n402), .B(n399), .S(N39), .Z(N165) );
  MUX2_X1 U112 ( .A(\mem[6][4] ), .B(\mem[7][4] ), .S(n452), .Z(n403) );
  MUX2_X1 U113 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .S(n452), .Z(n404) );
  MUX2_X1 U114 ( .A(n404), .B(n403), .S(n451), .Z(n405) );
  MUX2_X1 U115 ( .A(\mem[2][4] ), .B(\mem[3][4] ), .S(n452), .Z(n406) );
  MUX2_X1 U116 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .S(n452), .Z(n407) );
  MUX2_X1 U117 ( .A(n407), .B(n406), .S(N38), .Z(n408) );
  MUX2_X1 U118 ( .A(n408), .B(n405), .S(N39), .Z(N164) );
  MUX2_X1 U119 ( .A(\mem[6][5] ), .B(\mem[7][5] ), .S(n452), .Z(n409) );
  MUX2_X1 U120 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .S(n452), .Z(n410) );
  MUX2_X1 U121 ( .A(n410), .B(n409), .S(n451), .Z(n411) );
  MUX2_X1 U122 ( .A(\mem[2][5] ), .B(\mem[3][5] ), .S(n452), .Z(n412) );
  MUX2_X1 U123 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .S(n452), .Z(n413) );
  MUX2_X1 U124 ( .A(n413), .B(n412), .S(N38), .Z(n414) );
  MUX2_X1 U125 ( .A(n414), .B(n411), .S(N39), .Z(N163) );
  MUX2_X1 U126 ( .A(\mem[6][6] ), .B(\mem[7][6] ), .S(n453), .Z(n415) );
  MUX2_X1 U127 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .S(n453), .Z(n416) );
  MUX2_X1 U128 ( .A(n416), .B(n415), .S(n451), .Z(n417) );
  MUX2_X1 U129 ( .A(\mem[2][6] ), .B(\mem[3][6] ), .S(n453), .Z(n418) );
  MUX2_X1 U130 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .S(n453), .Z(n419) );
  MUX2_X1 U131 ( .A(n419), .B(n418), .S(n451), .Z(n420) );
  MUX2_X1 U132 ( .A(n420), .B(n417), .S(N39), .Z(N162) );
  MUX2_X1 U133 ( .A(\mem[6][7] ), .B(\mem[7][7] ), .S(n453), .Z(n421) );
  MUX2_X1 U134 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .S(n453), .Z(n422) );
  MUX2_X1 U135 ( .A(n422), .B(n421), .S(n451), .Z(n423) );
  MUX2_X1 U136 ( .A(\mem[2][7] ), .B(\mem[3][7] ), .S(n453), .Z(n424) );
  MUX2_X1 U137 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .S(n453), .Z(n425) );
  MUX2_X1 U138 ( .A(n425), .B(n424), .S(n451), .Z(n426) );
  MUX2_X1 U139 ( .A(n426), .B(n423), .S(N39), .Z(N161) );
  MUX2_X1 U140 ( .A(\mem[6][8] ), .B(\mem[7][8] ), .S(n453), .Z(n427) );
  MUX2_X1 U141 ( .A(\mem[4][8] ), .B(\mem[5][8] ), .S(n453), .Z(n428) );
  MUX2_X1 U142 ( .A(n428), .B(n427), .S(n451), .Z(n429) );
  MUX2_X1 U143 ( .A(\mem[2][8] ), .B(\mem[3][8] ), .S(n453), .Z(n430) );
  MUX2_X1 U144 ( .A(\mem[0][8] ), .B(\mem[1][8] ), .S(n453), .Z(n431) );
  MUX2_X1 U145 ( .A(n431), .B(n430), .S(n451), .Z(n432) );
  MUX2_X1 U146 ( .A(n432), .B(n429), .S(N39), .Z(N160) );
  MUX2_X1 U147 ( .A(\mem[6][9] ), .B(\mem[7][9] ), .S(N37), .Z(n433) );
  MUX2_X1 U148 ( .A(\mem[4][9] ), .B(\mem[5][9] ), .S(N37), .Z(n434) );
  MUX2_X1 U149 ( .A(n434), .B(n433), .S(n451), .Z(n435) );
  MUX2_X1 U150 ( .A(\mem[2][9] ), .B(\mem[3][9] ), .S(N37), .Z(n436) );
  MUX2_X1 U151 ( .A(\mem[0][9] ), .B(\mem[1][9] ), .S(N37), .Z(n437) );
  MUX2_X1 U152 ( .A(n437), .B(n436), .S(n451), .Z(n438) );
  MUX2_X1 U153 ( .A(n438), .B(n435), .S(N39), .Z(N159) );
  MUX2_X1 U154 ( .A(\mem[6][10] ), .B(\mem[7][10] ), .S(N37), .Z(n439) );
  MUX2_X1 U155 ( .A(\mem[4][10] ), .B(\mem[5][10] ), .S(N37), .Z(n440) );
  MUX2_X1 U156 ( .A(n440), .B(n439), .S(n451), .Z(n441) );
  MUX2_X1 U157 ( .A(\mem[2][10] ), .B(\mem[3][10] ), .S(n453), .Z(n442) );
  MUX2_X1 U158 ( .A(\mem[0][10] ), .B(\mem[1][10] ), .S(n452), .Z(n443) );
  MUX2_X1 U159 ( .A(n443), .B(n442), .S(n451), .Z(n444) );
  MUX2_X1 U160 ( .A(n444), .B(n441), .S(N39), .Z(N158) );
  MUX2_X1 U161 ( .A(\mem[6][11] ), .B(\mem[7][11] ), .S(N37), .Z(n445) );
  MUX2_X1 U162 ( .A(\mem[4][11] ), .B(\mem[5][11] ), .S(N37), .Z(n446) );
  MUX2_X1 U163 ( .A(n446), .B(n445), .S(n451), .Z(n447) );
  MUX2_X1 U164 ( .A(\mem[2][11] ), .B(\mem[3][11] ), .S(n453), .Z(n448) );
  MUX2_X1 U165 ( .A(\mem[0][11] ), .B(\mem[1][11] ), .S(n452), .Z(n449) );
  MUX2_X1 U166 ( .A(n449), .B(n448), .S(n451), .Z(n450) );
  MUX2_X1 U167 ( .A(n450), .B(n447), .S(N39), .Z(N157) );
  MUX2_X1 U168 ( .A(\mem[6][0] ), .B(\mem[7][0] ), .S(N40), .Z(n454) );
  MUX2_X1 U169 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .S(N40), .Z(n455) );
  MUX2_X1 U170 ( .A(n455), .B(n454), .S(N41), .Z(n456) );
  MUX2_X1 U171 ( .A(\mem[2][0] ), .B(\mem[3][0] ), .S(N40), .Z(n457) );
  MUX2_X1 U172 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .S(N40), .Z(n458) );
  MUX2_X1 U173 ( .A(n458), .B(n457), .S(N41), .Z(n459) );
  MUX2_X1 U174 ( .A(n459), .B(n456), .S(N42), .Z(N184) );
  MUX2_X1 U175 ( .A(\mem[6][1] ), .B(\mem[7][1] ), .S(N40), .Z(n460) );
  MUX2_X1 U176 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .S(N40), .Z(n461) );
  MUX2_X1 U177 ( .A(n461), .B(n460), .S(N41), .Z(n462) );
  MUX2_X1 U178 ( .A(\mem[2][1] ), .B(\mem[3][1] ), .S(N40), .Z(n463) );
  MUX2_X1 U179 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .S(N40), .Z(n464) );
  MUX2_X1 U180 ( .A(n464), .B(n463), .S(N41), .Z(n465) );
  MUX2_X1 U181 ( .A(n465), .B(n462), .S(N42), .Z(N183) );
  MUX2_X1 U182 ( .A(\mem[6][2] ), .B(\mem[7][2] ), .S(N40), .Z(n466) );
  MUX2_X1 U183 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .S(N40), .Z(n467) );
  MUX2_X1 U184 ( .A(n467), .B(n466), .S(N41), .Z(n468) );
  MUX2_X1 U185 ( .A(\mem[2][2] ), .B(\mem[3][2] ), .S(N40), .Z(n469) );
  MUX2_X1 U186 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .S(N40), .Z(n470) );
  MUX2_X1 U187 ( .A(n470), .B(n469), .S(N41), .Z(n471) );
  MUX2_X1 U188 ( .A(n471), .B(n468), .S(N42), .Z(N182) );
  MUX2_X1 U189 ( .A(\mem[6][3] ), .B(\mem[7][3] ), .S(n527), .Z(n472) );
  MUX2_X1 U190 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .S(n527), .Z(n473) );
  MUX2_X1 U191 ( .A(n473), .B(n472), .S(N41), .Z(n474) );
  MUX2_X1 U192 ( .A(\mem[2][3] ), .B(\mem[3][3] ), .S(n527), .Z(n475) );
  MUX2_X1 U193 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .S(n527), .Z(n476) );
  MUX2_X1 U194 ( .A(n476), .B(n475), .S(N41), .Z(n477) );
  MUX2_X1 U195 ( .A(n477), .B(n474), .S(N42), .Z(N181) );
  MUX2_X1 U196 ( .A(\mem[6][4] ), .B(\mem[7][4] ), .S(n527), .Z(n478) );
  MUX2_X1 U197 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .S(n527), .Z(n479) );
  MUX2_X1 U198 ( .A(n479), .B(n478), .S(N41), .Z(n480) );
  MUX2_X1 U199 ( .A(\mem[2][4] ), .B(\mem[3][4] ), .S(n527), .Z(n481) );
  MUX2_X1 U200 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .S(n527), .Z(n482) );
  MUX2_X1 U201 ( .A(n482), .B(n481), .S(N41), .Z(n483) );
  MUX2_X1 U202 ( .A(n483), .B(n480), .S(N42), .Z(N180) );
  MUX2_X1 U203 ( .A(\mem[6][5] ), .B(\mem[7][5] ), .S(n527), .Z(n484) );
  MUX2_X1 U204 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .S(n527), .Z(n485) );
  MUX2_X1 U205 ( .A(n485), .B(n484), .S(N41), .Z(n486) );
  MUX2_X1 U206 ( .A(\mem[2][5] ), .B(\mem[3][5] ), .S(n527), .Z(n487) );
  MUX2_X1 U207 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .S(n527), .Z(n488) );
  MUX2_X1 U208 ( .A(n488), .B(n487), .S(N41), .Z(n489) );
  MUX2_X1 U209 ( .A(n489), .B(n486), .S(N42), .Z(N179) );
  MUX2_X1 U210 ( .A(\mem[6][6] ), .B(\mem[7][6] ), .S(n528), .Z(n490) );
  MUX2_X1 U211 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .S(n528), .Z(n491) );
  MUX2_X1 U212 ( .A(n491), .B(n490), .S(n526), .Z(n492) );
  MUX2_X1 U213 ( .A(\mem[2][6] ), .B(\mem[3][6] ), .S(n528), .Z(n493) );
  MUX2_X1 U214 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .S(n528), .Z(n494) );
  MUX2_X1 U215 ( .A(n494), .B(n493), .S(n526), .Z(n495) );
  MUX2_X1 U216 ( .A(n495), .B(n492), .S(N42), .Z(N178) );
  MUX2_X1 U217 ( .A(\mem[6][7] ), .B(\mem[7][7] ), .S(n528), .Z(n496) );
  MUX2_X1 U218 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .S(n528), .Z(n497) );
  MUX2_X1 U219 ( .A(n497), .B(n496), .S(n526), .Z(n498) );
  MUX2_X1 U220 ( .A(\mem[2][7] ), .B(\mem[3][7] ), .S(n528), .Z(n499) );
  MUX2_X1 U221 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .S(n528), .Z(n500) );
  MUX2_X1 U222 ( .A(n500), .B(n499), .S(n526), .Z(n501) );
  MUX2_X1 U223 ( .A(n501), .B(n498), .S(N42), .Z(N177) );
  MUX2_X1 U224 ( .A(\mem[6][8] ), .B(\mem[7][8] ), .S(n528), .Z(n502) );
  MUX2_X1 U225 ( .A(\mem[4][8] ), .B(\mem[5][8] ), .S(n528), .Z(n503) );
  MUX2_X1 U226 ( .A(n503), .B(n502), .S(n526), .Z(n504) );
  MUX2_X1 U227 ( .A(\mem[2][8] ), .B(\mem[3][8] ), .S(n528), .Z(n505) );
  MUX2_X1 U228 ( .A(\mem[0][8] ), .B(\mem[1][8] ), .S(n528), .Z(n506) );
  MUX2_X1 U229 ( .A(n506), .B(n505), .S(n526), .Z(n507) );
  MUX2_X1 U230 ( .A(n507), .B(n504), .S(N42), .Z(N176) );
  MUX2_X1 U231 ( .A(\mem[6][9] ), .B(\mem[7][9] ), .S(n529), .Z(n508) );
  MUX2_X1 U232 ( .A(\mem[4][9] ), .B(\mem[5][9] ), .S(n529), .Z(n509) );
  MUX2_X1 U233 ( .A(n509), .B(n508), .S(n526), .Z(n510) );
  MUX2_X1 U234 ( .A(\mem[2][9] ), .B(\mem[3][9] ), .S(n529), .Z(n511) );
  MUX2_X1 U235 ( .A(\mem[0][9] ), .B(\mem[1][9] ), .S(n529), .Z(n512) );
  MUX2_X1 U236 ( .A(n512), .B(n511), .S(n526), .Z(n513) );
  MUX2_X1 U237 ( .A(n513), .B(n510), .S(N42), .Z(N175) );
  MUX2_X1 U238 ( .A(\mem[6][10] ), .B(\mem[7][10] ), .S(n529), .Z(n514) );
  MUX2_X1 U239 ( .A(\mem[4][10] ), .B(\mem[5][10] ), .S(n529), .Z(n515) );
  MUX2_X1 U240 ( .A(n515), .B(n514), .S(n526), .Z(n516) );
  MUX2_X1 U241 ( .A(\mem[2][10] ), .B(\mem[3][10] ), .S(n529), .Z(n517) );
  MUX2_X1 U242 ( .A(\mem[0][10] ), .B(\mem[1][10] ), .S(n529), .Z(n518) );
  MUX2_X1 U243 ( .A(n518), .B(n517), .S(n526), .Z(n519) );
  MUX2_X1 U244 ( .A(n519), .B(n516), .S(N42), .Z(N174) );
  MUX2_X1 U245 ( .A(\mem[6][11] ), .B(\mem[7][11] ), .S(n529), .Z(n520) );
  MUX2_X1 U246 ( .A(\mem[4][11] ), .B(\mem[5][11] ), .S(n529), .Z(n521) );
  MUX2_X1 U247 ( .A(n521), .B(n520), .S(n526), .Z(n522) );
  MUX2_X1 U248 ( .A(\mem[2][11] ), .B(\mem[3][11] ), .S(n529), .Z(n523) );
  MUX2_X1 U249 ( .A(\mem[0][11] ), .B(\mem[1][11] ), .S(n529), .Z(n524) );
  MUX2_X1 U250 ( .A(n524), .B(n523), .S(n526), .Z(n525) );
  MUX2_X1 U251 ( .A(n525), .B(n522), .S(N42), .Z(N173) );
endmodule


module syn_fifo_5 ( clk, rst, wr_cs, rd_cs, data_in, rd_en, wr_en, data_out, 
        empty, full );
  input [11:0] data_in;
  output [11:0] data_out;
  input clk, rst, wr_cs, rd_cs, rd_en, wr_en;
  output empty, full;
  wire   N33, N40, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179;
  wire   [3:0] status_cnt;
  wire   [2:0] wr_pointer;
  wire   [2:0] rd_pointer;
  wire   [11:0] data_ram;
  assign empty = N33;
  assign full = N40;

  DFFR_X1 \wr_pointer_reg[2]  ( .D(n119), .CK(clk), .RN(n105), .Q(
        wr_pointer[2]), .QN(n136) );
  DFFR_X1 \rd_pointer_reg[2]  ( .D(n122), .CK(clk), .RN(n105), .Q(
        rd_pointer[2]), .QN(n135) );
  DFFR_X1 \data_out_reg[11]  ( .D(n123), .CK(clk), .RN(n105), .Q(data_out[11]), 
        .QN(n137) );
  DFFR_X1 \data_out_reg[10]  ( .D(n124), .CK(clk), .RN(n105), .Q(data_out[10]), 
        .QN(n138) );
  DFFR_X1 \data_out_reg[9]  ( .D(n125), .CK(clk), .RN(n105), .Q(data_out[9]), 
        .QN(n139) );
  DFFR_X1 \data_out_reg[8]  ( .D(n126), .CK(clk), .RN(n105), .Q(data_out[8]), 
        .QN(n140) );
  DFFR_X1 \data_out_reg[7]  ( .D(n127), .CK(clk), .RN(n105), .Q(data_out[7]), 
        .QN(n141) );
  DFFR_X1 \data_out_reg[6]  ( .D(n128), .CK(clk), .RN(n105), .Q(data_out[6]), 
        .QN(n142) );
  DFFR_X1 \data_out_reg[5]  ( .D(n129), .CK(clk), .RN(n106), .Q(data_out[5]), 
        .QN(n143) );
  DFFR_X1 \data_out_reg[4]  ( .D(n130), .CK(clk), .RN(n106), .Q(data_out[4]), 
        .QN(n144) );
  DFFR_X1 \data_out_reg[3]  ( .D(n131), .CK(clk), .RN(n106), .Q(data_out[3]), 
        .QN(n145) );
  DFFR_X1 \data_out_reg[2]  ( .D(n132), .CK(clk), .RN(n106), .Q(data_out[2]), 
        .QN(n146) );
  DFFR_X1 \data_out_reg[1]  ( .D(n133), .CK(clk), .RN(n106), .Q(data_out[1]), 
        .QN(n147) );
  DFFR_X1 \data_out_reg[0]  ( .D(n134), .CK(clk), .RN(n106), .Q(data_out[0]), 
        .QN(n148) );
  DFFR_X1 \status_cnt_reg[0]  ( .D(n113), .CK(clk), .RN(n106), .Q(
        status_cnt[0]), .QN(n99) );
  DFFR_X1 \status_cnt_reg[1]  ( .D(n114), .CK(clk), .RN(n106), .Q(
        status_cnt[1]), .QN(n100) );
  DFFR_X1 \status_cnt_reg[2]  ( .D(n115), .CK(clk), .RN(n106), .Q(
        status_cnt[2]), .QN(n101) );
  XOR2_X1 U27 ( .A(n135), .B(n166), .Z(n122) );
  XOR2_X1 U29 ( .A(rd_pointer[1]), .B(n165), .Z(n121) );
  XOR2_X1 U31 ( .A(rd_pointer[0]), .B(n111), .Z(n120) );
  XOR2_X1 U32 ( .A(n136), .B(n164), .Z(n119) );
  XOR2_X1 U34 ( .A(wr_pointer[1]), .B(n163), .Z(n118) );
  XOR2_X1 U36 ( .A(n104), .B(n162), .Z(n117) );
  NAND3_X1 U49 ( .A1(n99), .A2(n100), .A3(n110), .ZN(n155) );
  NAND3_X1 U50 ( .A1(n159), .A2(n100), .A3(status_cnt[0]), .ZN(n152) );
  XOR2_X1 U53 ( .A(n151), .B(n99), .Z(n113) );
  NAND3_X1 U58 ( .A1(n162), .A2(n149), .A3(n111), .ZN(n154) );
  NAND4_X1 U63 ( .A1(status_cnt[2]), .A2(status_cnt[1]), .A3(status_cnt[0]), 
        .A4(n112), .ZN(n161) );
  ram_dp_ar_aw_5 DP_RAM ( .address_0(wr_pointer), .data_0(data_in), .cs_0(
        wr_cs), .we_0(wr_en), .oe_0(1'b0), .address_1(rd_pointer), .data_1(
        data_ram), .cs_1(rd_cs), .we_1(1'b0), .oe_1(rd_en) );
  DFFR_X1 \wr_pointer_reg[0]  ( .D(n117), .CK(clk), .RN(rst), .Q(wr_pointer[0]), .QN(n104) );
  DFFR_X1 \wr_pointer_reg[1]  ( .D(n118), .CK(clk), .RN(n105), .Q(
        wr_pointer[1]) );
  DFFR_X1 \rd_pointer_reg[0]  ( .D(n120), .CK(clk), .RN(n105), .Q(
        rd_pointer[0]) );
  DFFR_X1 \rd_pointer_reg[1]  ( .D(n121), .CK(clk), .RN(n105), .Q(
        rd_pointer[1]) );
  DFFR_X1 \status_cnt_reg[3]  ( .D(n116), .CK(clk), .RN(n106), .Q(
        status_cnt[3]), .QN(n112) );
  NOR3_X2 U3 ( .A1(n102), .A2(n103), .A3(n151), .ZN(n153) );
  AOI211_X4 U4 ( .C1(n150), .C2(status_cnt[3]), .A(n111), .B(n162), .ZN(n159)
         );
  INV_X4 U5 ( .A(n179), .ZN(n111) );
  AND2_X1 U6 ( .A1(n99), .A2(n159), .ZN(n102) );
  AND2_X1 U7 ( .A1(n110), .A2(status_cnt[0]), .ZN(n103) );
  INV_X1 U8 ( .A(n154), .ZN(n110) );
  INV_X1 U9 ( .A(n149), .ZN(N33) );
  INV_X1 U10 ( .A(n155), .ZN(n109) );
  CLKBUF_X1 U11 ( .A(rst), .Z(n105) );
  CLKBUF_X1 U12 ( .A(rst), .Z(n106) );
  NOR2_X1 U13 ( .A1(n110), .A2(n159), .ZN(n151) );
  NAND2_X1 U14 ( .A1(n150), .A2(n112), .ZN(n149) );
  INV_X1 U15 ( .A(n159), .ZN(n108) );
  OAI21_X1 U16 ( .B1(n107), .B2(n101), .A(n157), .ZN(n115) );
  OAI21_X1 U17 ( .B1(n156), .B2(n109), .A(n101), .ZN(n157) );
  INV_X1 U18 ( .A(n158), .ZN(n107) );
  NOR3_X1 U19 ( .A1(n100), .A2(n108), .A3(n99), .ZN(n156) );
  NOR2_X1 U20 ( .A1(n104), .A2(n162), .ZN(n163) );
  NAND2_X1 U21 ( .A1(rd_en), .A2(rd_cs), .ZN(n179) );
  OAI221_X1 U22 ( .B1(status_cnt[1]), .B2(n108), .C1(n154), .C2(n100), .A(n153), .ZN(n158) );
  NOR3_X1 U23 ( .A1(status_cnt[1]), .A2(status_cnt[2]), .A3(status_cnt[0]), 
        .ZN(n150) );
  OAI22_X1 U24 ( .A1(n108), .A2(n161), .B1(n160), .B2(n112), .ZN(n116) );
  AOI221_X1 U25 ( .B1(n159), .B2(n101), .C1(status_cnt[2]), .C2(n110), .A(n158), .ZN(n160) );
  INV_X1 U26 ( .A(n161), .ZN(N40) );
  OAI22_X1 U28 ( .A1(n148), .A2(n111), .B1(n179), .B2(n178), .ZN(n134) );
  INV_X1 U30 ( .A(data_ram[0]), .ZN(n178) );
  OAI22_X1 U33 ( .A1(n147), .A2(n111), .B1(n179), .B2(n177), .ZN(n133) );
  INV_X1 U35 ( .A(data_ram[1]), .ZN(n177) );
  OAI22_X1 U37 ( .A1(n146), .A2(n111), .B1(n179), .B2(n176), .ZN(n132) );
  INV_X1 U38 ( .A(data_ram[2]), .ZN(n176) );
  OAI22_X1 U39 ( .A1(n145), .A2(n111), .B1(n179), .B2(n175), .ZN(n131) );
  INV_X1 U40 ( .A(data_ram[3]), .ZN(n175) );
  OAI22_X1 U41 ( .A1(n144), .A2(n111), .B1(n179), .B2(n174), .ZN(n130) );
  INV_X1 U42 ( .A(data_ram[4]), .ZN(n174) );
  OAI22_X1 U43 ( .A1(n143), .A2(n111), .B1(n179), .B2(n173), .ZN(n129) );
  INV_X1 U44 ( .A(data_ram[5]), .ZN(n173) );
  OAI22_X1 U45 ( .A1(n142), .A2(n111), .B1(n179), .B2(n172), .ZN(n128) );
  INV_X1 U46 ( .A(data_ram[6]), .ZN(n172) );
  OAI22_X1 U47 ( .A1(n141), .A2(n111), .B1(n179), .B2(n171), .ZN(n127) );
  INV_X1 U48 ( .A(data_ram[7]), .ZN(n171) );
  OAI22_X1 U51 ( .A1(n139), .A2(n111), .B1(n179), .B2(n169), .ZN(n125) );
  INV_X1 U52 ( .A(data_ram[9]), .ZN(n169) );
  OAI22_X1 U54 ( .A1(n138), .A2(n111), .B1(n179), .B2(n168), .ZN(n124) );
  INV_X1 U55 ( .A(data_ram[10]), .ZN(n168) );
  OAI22_X1 U56 ( .A1(n137), .A2(n111), .B1(n179), .B2(n167), .ZN(n123) );
  INV_X1 U57 ( .A(data_ram[11]), .ZN(n167) );
  OAI22_X1 U59 ( .A1(n140), .A2(n111), .B1(n179), .B2(n170), .ZN(n126) );
  INV_X1 U60 ( .A(data_ram[8]), .ZN(n170) );
  NAND2_X1 U61 ( .A1(rd_pointer[1]), .A2(n165), .ZN(n166) );
  NAND2_X1 U62 ( .A1(wr_en), .A2(wr_cs), .ZN(n162) );
  OAI211_X1 U64 ( .C1(n153), .C2(n100), .A(n152), .B(n155), .ZN(n114) );
  AND2_X1 U65 ( .A1(rd_pointer[0]), .A2(n111), .ZN(n165) );
  NAND2_X1 U66 ( .A1(wr_pointer[1]), .A2(n163), .ZN(n164) );
endmodule


module ram_dp_ar_aw_4 ( address_0, data_0, cs_0, we_0, oe_0, address_1, data_1, 
        cs_1, we_1, oe_1 );
  input [2:0] address_0;
  inout [11:0] data_0;
  input [2:0] address_1;
  inout [11:0] data_1;
  input cs_0, we_0, oe_0, cs_1, we_1, oe_1;
  wire   N37, N38, N39, N40, N41, N42, \mem[0][11] , \mem[0][10] , \mem[0][9] ,
         \mem[0][8] , \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , \mem[1][11] ,
         \mem[1][10] , \mem[1][9] , \mem[1][8] , \mem[1][7] , \mem[1][6] ,
         \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] , \mem[1][1] ,
         \mem[1][0] , \mem[2][11] , \mem[2][10] , \mem[2][9] , \mem[2][8] ,
         \mem[2][7] , \mem[2][6] , \mem[2][5] , \mem[2][4] , \mem[2][3] ,
         \mem[2][2] , \mem[2][1] , \mem[2][0] , \mem[3][11] , \mem[3][10] ,
         \mem[3][9] , \mem[3][8] , \mem[3][7] , \mem[3][6] , \mem[3][5] ,
         \mem[3][4] , \mem[3][3] , \mem[3][2] , \mem[3][1] , \mem[3][0] ,
         \mem[4][11] , \mem[4][10] , \mem[4][9] , \mem[4][8] , \mem[4][7] ,
         \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] , \mem[4][2] ,
         \mem[4][1] , \mem[4][0] , \mem[5][11] , \mem[5][10] , \mem[5][9] ,
         \mem[5][8] , \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] ,
         \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[6][11] ,
         \mem[6][10] , \mem[6][9] , \mem[6][8] , \mem[6][7] , \mem[6][6] ,
         \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] , \mem[6][1] ,
         \mem[6][0] , \mem[7][11] , \mem[7][10] , \mem[7][9] , \mem[7][8] ,
         \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] , \mem[7][3] ,
         \mem[7][2] , \mem[7][1] , \mem[7][0] , N47, N60, N73, N86, N99, N112,
         N125, N138, N157, N158, N159, N160, N161, N162, N163, N164, N165,
         N166, N167, N168, N173, N174, N175, N176, N177, N178, N179, N180,
         N181, N182, N183, N184, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476,
         n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487,
         n488, n489, n490, n491, n492, n493, n494, n495, n496, n497, n498,
         n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
         n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520,
         n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542,
         n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, n553,
         n554, n555, n556, n557, n558, n559, n560, n561, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580;
  assign N37 = address_0[0];
  assign N38 = address_0[1];
  assign N39 = address_0[2];
  assign N40 = address_1[0];
  assign N41 = address_1[1];
  assign N42 = address_1[2];

  OAI33_X1 U40 ( .A1(n531), .A2(n567), .A3(n530), .B1(n533), .B2(n566), .B3(
        n532), .ZN(N99) );
  OAI33_X1 U41 ( .A1(n565), .A2(N41), .A3(N40), .B1(n564), .B2(N38), .B3(N37), 
        .ZN(N86) );
  OAI33_X1 U42 ( .A1(n565), .A2(N41), .A3(n530), .B1(n564), .B2(N38), .B3(n532), .ZN(N73) );
  OAI33_X1 U43 ( .A1(n565), .A2(N40), .A3(n531), .B1(n564), .B2(N37), .B3(n533), .ZN(N60) );
  OAI33_X1 U44 ( .A1(n565), .A2(n530), .A3(n531), .B1(n564), .B2(n532), .B3(
        n533), .ZN(N47) );
  OAI33_X1 U48 ( .A1(n567), .A2(N41), .A3(N40), .B1(n566), .B2(N38), .B3(N37), 
        .ZN(N138) );
  OAI33_X1 U49 ( .A1(n530), .A2(N41), .A3(n567), .B1(n532), .B2(N38), .B3(n566), .ZN(N125) );
  OAI33_X1 U52 ( .A1(n531), .A2(N40), .A3(n567), .B1(n533), .B2(N37), .B3(n566), .ZN(N112) );
  TBUF_X1 \data_0_tri[0]  ( .A(N168), .EN(n558), .Z(data_0[0]) );
  TBUF_X1 \data_0_tri[1]  ( .A(N167), .EN(n558), .Z(data_0[1]) );
  TBUF_X1 \data_0_tri[2]  ( .A(N166), .EN(n558), .Z(data_0[2]) );
  TBUF_X1 \data_0_tri[3]  ( .A(N165), .EN(n558), .Z(data_0[3]) );
  TBUF_X1 \data_0_tri[4]  ( .A(N164), .EN(n558), .Z(data_0[4]) );
  TBUF_X1 \data_0_tri[5]  ( .A(N163), .EN(n558), .Z(data_0[5]) );
  TBUF_X1 \data_0_tri[6]  ( .A(N162), .EN(n558), .Z(data_0[6]) );
  TBUF_X1 \data_0_tri[7]  ( .A(N161), .EN(n558), .Z(data_0[7]) );
  TBUF_X1 \data_1_tri[0]  ( .A(N184), .EN(n553), .Z(data_1[0]) );
  TBUF_X1 \data_1_tri[1]  ( .A(N183), .EN(n553), .Z(data_1[1]) );
  TBUF_X1 \data_1_tri[2]  ( .A(N182), .EN(n553), .Z(data_1[2]) );
  TBUF_X1 \data_1_tri[3]  ( .A(N181), .EN(n553), .Z(data_1[3]) );
  TBUF_X1 \data_1_tri[4]  ( .A(N180), .EN(n553), .Z(data_1[4]) );
  TBUF_X1 \data_1_tri[5]  ( .A(N179), .EN(n553), .Z(data_1[5]) );
  TBUF_X1 \data_1_tri[6]  ( .A(N178), .EN(n553), .Z(data_1[6]) );
  TBUF_X1 \data_1_tri[7]  ( .A(N177), .EN(n553), .Z(data_1[7]) );
  DLH_X1 \mem_reg[1][11]  ( .G(n378), .D(n534), .Q(\mem[1][11] ) );
  DLH_X1 \mem_reg[1][10]  ( .G(n378), .D(n535), .Q(\mem[1][10] ) );
  DLH_X1 \mem_reg[1][9]  ( .G(n378), .D(n536), .Q(\mem[1][9] ) );
  DLH_X1 \mem_reg[1][8]  ( .G(n378), .D(n537), .Q(\mem[1][8] ) );
  DLH_X1 \mem_reg[1][7]  ( .G(n378), .D(n538), .Q(\mem[1][7] ) );
  DLH_X1 \mem_reg[1][6]  ( .G(n378), .D(n539), .Q(\mem[1][6] ) );
  DLH_X1 \mem_reg[1][5]  ( .G(n378), .D(n540), .Q(\mem[1][5] ) );
  DLH_X1 \mem_reg[1][4]  ( .G(n378), .D(n541), .Q(\mem[1][4] ) );
  DLH_X1 \mem_reg[1][3]  ( .G(n378), .D(n542), .Q(\mem[1][3] ) );
  DLH_X1 \mem_reg[1][2]  ( .G(n378), .D(n543), .Q(\mem[1][2] ) );
  DLH_X1 \mem_reg[1][1]  ( .G(n378), .D(n544), .Q(\mem[1][1] ) );
  DLH_X1 \mem_reg[1][0]  ( .G(n378), .D(n545), .Q(\mem[1][0] ) );
  DLH_X1 \mem_reg[6][11]  ( .G(n377), .D(n534), .Q(\mem[6][11] ) );
  DLH_X1 \mem_reg[6][10]  ( .G(n377), .D(n535), .Q(\mem[6][10] ) );
  DLH_X1 \mem_reg[6][9]  ( .G(n377), .D(n536), .Q(\mem[6][9] ) );
  DLH_X1 \mem_reg[6][8]  ( .G(n377), .D(n537), .Q(\mem[6][8] ) );
  DLH_X1 \mem_reg[6][7]  ( .G(n377), .D(n538), .Q(\mem[6][7] ) );
  DLH_X1 \mem_reg[6][6]  ( .G(n377), .D(n539), .Q(\mem[6][6] ) );
  DLH_X1 \mem_reg[6][5]  ( .G(n377), .D(n540), .Q(\mem[6][5] ) );
  DLH_X1 \mem_reg[6][4]  ( .G(n377), .D(n541), .Q(\mem[6][4] ) );
  DLH_X1 \mem_reg[6][3]  ( .G(n377), .D(n542), .Q(\mem[6][3] ) );
  DLH_X1 \mem_reg[6][2]  ( .G(n377), .D(n543), .Q(\mem[6][2] ) );
  DLH_X1 \mem_reg[6][1]  ( .G(n377), .D(n544), .Q(\mem[6][1] ) );
  DLH_X1 \mem_reg[6][0]  ( .G(n377), .D(n545), .Q(\mem[6][0] ) );
  DLH_X1 \mem_reg[3][11]  ( .G(n376), .D(n534), .Q(\mem[3][11] ) );
  DLH_X1 \mem_reg[3][10]  ( .G(n376), .D(n535), .Q(\mem[3][10] ) );
  DLH_X1 \mem_reg[3][9]  ( .G(n376), .D(n536), .Q(\mem[3][9] ) );
  DLH_X1 \mem_reg[3][8]  ( .G(n376), .D(n537), .Q(\mem[3][8] ) );
  DLH_X1 \mem_reg[3][7]  ( .G(n376), .D(n538), .Q(\mem[3][7] ) );
  DLH_X1 \mem_reg[3][6]  ( .G(n376), .D(n539), .Q(\mem[3][6] ) );
  DLH_X1 \mem_reg[3][5]  ( .G(n376), .D(n540), .Q(\mem[3][5] ) );
  DLH_X1 \mem_reg[3][4]  ( .G(n376), .D(n541), .Q(\mem[3][4] ) );
  DLH_X1 \mem_reg[3][3]  ( .G(n376), .D(n542), .Q(\mem[3][3] ) );
  DLH_X1 \mem_reg[3][2]  ( .G(n376), .D(n543), .Q(\mem[3][2] ) );
  DLH_X1 \mem_reg[3][1]  ( .G(n376), .D(n544), .Q(\mem[3][1] ) );
  DLH_X1 \mem_reg[3][0]  ( .G(n376), .D(n545), .Q(\mem[3][0] ) );
  DLH_X1 \mem_reg[4][11]  ( .G(n375), .D(n534), .Q(\mem[4][11] ) );
  DLH_X1 \mem_reg[4][10]  ( .G(n375), .D(n535), .Q(\mem[4][10] ) );
  DLH_X1 \mem_reg[4][9]  ( .G(n375), .D(n536), .Q(\mem[4][9] ) );
  DLH_X1 \mem_reg[4][8]  ( .G(n375), .D(n537), .Q(\mem[4][8] ) );
  DLH_X1 \mem_reg[4][7]  ( .G(n375), .D(n538), .Q(\mem[4][7] ) );
  DLH_X1 \mem_reg[4][6]  ( .G(n375), .D(n539), .Q(\mem[4][6] ) );
  DLH_X1 \mem_reg[4][5]  ( .G(n375), .D(n540), .Q(\mem[4][5] ) );
  DLH_X1 \mem_reg[4][4]  ( .G(n375), .D(n541), .Q(\mem[4][4] ) );
  DLH_X1 \mem_reg[4][3]  ( .G(n375), .D(n542), .Q(\mem[4][3] ) );
  DLH_X1 \mem_reg[4][2]  ( .G(n375), .D(n543), .Q(\mem[4][2] ) );
  DLH_X1 \mem_reg[4][1]  ( .G(n375), .D(n544), .Q(\mem[4][1] ) );
  DLH_X1 \mem_reg[4][0]  ( .G(n375), .D(n545), .Q(\mem[4][0] ) );
  DLH_X1 \mem_reg[2][11]  ( .G(n374), .D(n534), .Q(\mem[2][11] ) );
  DLH_X1 \mem_reg[2][10]  ( .G(n374), .D(n535), .Q(\mem[2][10] ) );
  DLH_X1 \mem_reg[2][9]  ( .G(n374), .D(n536), .Q(\mem[2][9] ) );
  DLH_X1 \mem_reg[2][8]  ( .G(n374), .D(n537), .Q(\mem[2][8] ) );
  DLH_X1 \mem_reg[2][7]  ( .G(n374), .D(n538), .Q(\mem[2][7] ) );
  DLH_X1 \mem_reg[2][6]  ( .G(n374), .D(n539), .Q(\mem[2][6] ) );
  DLH_X1 \mem_reg[2][5]  ( .G(n374), .D(n540), .Q(\mem[2][5] ) );
  DLH_X1 \mem_reg[2][4]  ( .G(n374), .D(n541), .Q(\mem[2][4] ) );
  DLH_X1 \mem_reg[2][3]  ( .G(n374), .D(n542), .Q(\mem[2][3] ) );
  DLH_X1 \mem_reg[2][2]  ( .G(n374), .D(n543), .Q(\mem[2][2] ) );
  DLH_X1 \mem_reg[2][1]  ( .G(n374), .D(n544), .Q(\mem[2][1] ) );
  DLH_X1 \mem_reg[2][0]  ( .G(n374), .D(n545), .Q(\mem[2][0] ) );
  DLH_X1 \mem_reg[5][11]  ( .G(n373), .D(n534), .Q(\mem[5][11] ) );
  DLH_X1 \mem_reg[5][10]  ( .G(n373), .D(n535), .Q(\mem[5][10] ) );
  DLH_X1 \mem_reg[5][9]  ( .G(n373), .D(n536), .Q(\mem[5][9] ) );
  DLH_X1 \mem_reg[5][8]  ( .G(n373), .D(n537), .Q(\mem[5][8] ) );
  DLH_X1 \mem_reg[5][7]  ( .G(n373), .D(n538), .Q(\mem[5][7] ) );
  DLH_X1 \mem_reg[5][6]  ( .G(n373), .D(n539), .Q(\mem[5][6] ) );
  DLH_X1 \mem_reg[5][5]  ( .G(n373), .D(n540), .Q(\mem[5][5] ) );
  DLH_X1 \mem_reg[5][4]  ( .G(n373), .D(n541), .Q(\mem[5][4] ) );
  DLH_X1 \mem_reg[5][3]  ( .G(n373), .D(n542), .Q(\mem[5][3] ) );
  DLH_X1 \mem_reg[5][2]  ( .G(n373), .D(n543), .Q(\mem[5][2] ) );
  DLH_X1 \mem_reg[5][1]  ( .G(n373), .D(n544), .Q(\mem[5][1] ) );
  DLH_X1 \mem_reg[5][0]  ( .G(n373), .D(n545), .Q(\mem[5][0] ) );
  DLH_X1 \mem_reg[0][11]  ( .G(n372), .D(n534), .Q(\mem[0][11] ) );
  DLH_X1 \mem_reg[0][10]  ( .G(n372), .D(n535), .Q(\mem[0][10] ) );
  DLH_X1 \mem_reg[0][9]  ( .G(n372), .D(n536), .Q(\mem[0][9] ) );
  DLH_X1 \mem_reg[0][8]  ( .G(n372), .D(n537), .Q(\mem[0][8] ) );
  DLH_X1 \mem_reg[0][7]  ( .G(n372), .D(n538), .Q(\mem[0][7] ) );
  DLH_X1 \mem_reg[0][6]  ( .G(n372), .D(n539), .Q(\mem[0][6] ) );
  DLH_X1 \mem_reg[0][5]  ( .G(n372), .D(n540), .Q(\mem[0][5] ) );
  DLH_X1 \mem_reg[0][4]  ( .G(n372), .D(n541), .Q(\mem[0][4] ) );
  DLH_X1 \mem_reg[0][3]  ( .G(n372), .D(n542), .Q(\mem[0][3] ) );
  DLH_X1 \mem_reg[0][2]  ( .G(n372), .D(n543), .Q(\mem[0][2] ) );
  DLH_X1 \mem_reg[0][1]  ( .G(n372), .D(n544), .Q(\mem[0][1] ) );
  DLH_X1 \mem_reg[0][0]  ( .G(n372), .D(n545), .Q(\mem[0][0] ) );
  DLH_X1 \mem_reg[7][11]  ( .G(n371), .D(n534), .Q(\mem[7][11] ) );
  DLH_X1 \mem_reg[7][10]  ( .G(n371), .D(n535), .Q(\mem[7][10] ) );
  DLH_X1 \mem_reg[7][9]  ( .G(n371), .D(n536), .Q(\mem[7][9] ) );
  DLH_X1 \mem_reg[7][8]  ( .G(n371), .D(n537), .Q(\mem[7][8] ) );
  DLH_X1 \mem_reg[7][7]  ( .G(n371), .D(n538), .Q(\mem[7][7] ) );
  DLH_X1 \mem_reg[7][6]  ( .G(n371), .D(n539), .Q(\mem[7][6] ) );
  DLH_X1 \mem_reg[7][5]  ( .G(n371), .D(n540), .Q(\mem[7][5] ) );
  DLH_X1 \mem_reg[7][4]  ( .G(n371), .D(n541), .Q(\mem[7][4] ) );
  DLH_X1 \mem_reg[7][3]  ( .G(n371), .D(n542), .Q(\mem[7][3] ) );
  DLH_X1 \mem_reg[7][2]  ( .G(n371), .D(n543), .Q(\mem[7][2] ) );
  DLH_X1 \mem_reg[7][1]  ( .G(n371), .D(n544), .Q(\mem[7][1] ) );
  DLH_X1 \mem_reg[7][0]  ( .G(n371), .D(n545), .Q(\mem[7][0] ) );
  CLKBUF_X1 U2 ( .A(N47), .Z(n371) );
  CLKBUF_X1 U3 ( .A(N138), .Z(n372) );
  CLKBUF_X1 U4 ( .A(N73), .Z(n373) );
  CLKBUF_X1 U5 ( .A(N112), .Z(n374) );
  CLKBUF_X1 U6 ( .A(N86), .Z(n375) );
  CLKBUF_X1 U7 ( .A(N99), .Z(n376) );
  CLKBUF_X1 U8 ( .A(N60), .Z(n377) );
  CLKBUF_X1 U9 ( .A(N125), .Z(n378) );
  BUF_X1 U10 ( .A(N40), .Z(n529) );
  BUF_X1 U11 ( .A(N40), .Z(n528) );
  BUF_X1 U12 ( .A(N40), .Z(n527) );
  BUF_X1 U13 ( .A(N41), .Z(n526) );
  BUF_X1 U14 ( .A(N37), .Z(n453) );
  BUF_X1 U15 ( .A(N37), .Z(n452) );
  BUF_X1 U16 ( .A(N38), .Z(n451) );
  INV_X1 U17 ( .A(n553), .ZN(n546) );
  INV_X1 U18 ( .A(n558), .ZN(n548) );
  INV_X1 U19 ( .A(n563), .ZN(n550) );
  NAND3_X1 U20 ( .A1(cs_1), .A2(n547), .A3(oe_1), .ZN(n553) );
  INV_X1 U21 ( .A(we_1), .ZN(n547) );
  OAI22_X1 U22 ( .A1(1'b1), .A2(n546), .B1(n552), .B2(n553), .ZN(data_1[8]) );
  NAND2_X1 U23 ( .A1(N176), .A2(n546), .ZN(n552) );
  INV_X1 U24 ( .A(N40), .ZN(n530) );
  INV_X1 U25 ( .A(N41), .ZN(n531) );
  OAI22_X1 U26 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n554), .ZN(data_1[9]) );
  NAND2_X1 U27 ( .A1(N175), .A2(n546), .ZN(n554) );
  OAI22_X1 U28 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n555), .ZN(data_1[10])
         );
  NAND2_X1 U29 ( .A1(N174), .A2(n546), .ZN(n555) );
  OAI22_X1 U30 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n556), .ZN(data_1[11])
         );
  NAND2_X1 U31 ( .A1(N173), .A2(n546), .ZN(n556) );
  AND3_X1 U32 ( .A1(cs_1), .A2(n563), .A3(we_1), .ZN(n579) );
  NAND3_X1 U33 ( .A1(cs_0), .A2(n551), .A3(oe_0), .ZN(n558) );
  INV_X1 U34 ( .A(we_0), .ZN(n551) );
  NAND2_X1 U35 ( .A1(N42), .A2(n579), .ZN(n565) );
  NAND2_X1 U36 ( .A1(N39), .A2(n550), .ZN(n564) );
  NAND2_X1 U37 ( .A1(we_0), .A2(cs_0), .ZN(n563) );
  INV_X1 U38 ( .A(n576), .ZN(n537) );
  AOI22_X1 U39 ( .A1(data_1[8]), .A2(n579), .B1(data_0[8]), .B2(n550), .ZN(
        n576) );
  OAI22_X1 U45 ( .A1(1'b1), .A2(n548), .B1(n557), .B2(n558), .ZN(data_0[8]) );
  NAND2_X1 U46 ( .A1(N160), .A2(n548), .ZN(n557) );
  INV_X1 U47 ( .A(n577), .ZN(n536) );
  AOI22_X1 U50 ( .A1(data_1[9]), .A2(n579), .B1(data_0[9]), .B2(n550), .ZN(
        n577) );
  OAI22_X1 U51 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n559), .ZN(data_0[9]) );
  NAND2_X1 U53 ( .A1(N159), .A2(n548), .ZN(n559) );
  INV_X1 U54 ( .A(n578), .ZN(n535) );
  AOI22_X1 U55 ( .A1(data_1[10]), .A2(n579), .B1(data_0[10]), .B2(n550), .ZN(
        n578) );
  OAI22_X1 U56 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n560), .ZN(data_0[10])
         );
  NAND2_X1 U57 ( .A1(N158), .A2(n548), .ZN(n560) );
  INV_X1 U58 ( .A(n580), .ZN(n534) );
  AOI22_X1 U59 ( .A1(data_1[11]), .A2(n579), .B1(data_0[11]), .B2(n550), .ZN(
        n580) );
  OAI22_X1 U60 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n561), .ZN(data_0[11])
         );
  NAND2_X1 U61 ( .A1(N157), .A2(n548), .ZN(n561) );
  INV_X1 U62 ( .A(n568), .ZN(n545) );
  AOI22_X1 U63 ( .A1(data_1[0]), .A2(n579), .B1(data_0[0]), .B2(n550), .ZN(
        n568) );
  INV_X1 U64 ( .A(n569), .ZN(n544) );
  AOI22_X1 U65 ( .A1(data_1[1]), .A2(n579), .B1(data_0[1]), .B2(n550), .ZN(
        n569) );
  INV_X1 U66 ( .A(n570), .ZN(n543) );
  AOI22_X1 U67 ( .A1(data_1[2]), .A2(n579), .B1(data_0[2]), .B2(n550), .ZN(
        n570) );
  INV_X1 U69 ( .A(n571), .ZN(n542) );
  AOI22_X1 U70 ( .A1(data_1[3]), .A2(n579), .B1(data_0[3]), .B2(n550), .ZN(
        n571) );
  INV_X1 U71 ( .A(n572), .ZN(n541) );
  AOI22_X1 U72 ( .A1(data_1[4]), .A2(n579), .B1(data_0[4]), .B2(n550), .ZN(
        n572) );
  INV_X1 U73 ( .A(n573), .ZN(n540) );
  AOI22_X1 U74 ( .A1(data_1[5]), .A2(n579), .B1(data_0[5]), .B2(n550), .ZN(
        n573) );
  INV_X1 U75 ( .A(n574), .ZN(n539) );
  AOI22_X1 U76 ( .A1(data_1[6]), .A2(n579), .B1(data_0[6]), .B2(n550), .ZN(
        n574) );
  INV_X1 U77 ( .A(n575), .ZN(n538) );
  AOI22_X1 U78 ( .A1(data_1[7]), .A2(n579), .B1(data_0[7]), .B2(n550), .ZN(
        n575) );
  NAND2_X1 U79 ( .A1(n579), .A2(n549), .ZN(n567) );
  INV_X1 U80 ( .A(N42), .ZN(n549) );
  INV_X1 U81 ( .A(N37), .ZN(n532) );
  INV_X1 U82 ( .A(N38), .ZN(n533) );
  OR2_X1 U83 ( .A1(n563), .A2(N39), .ZN(n566) );
  MUX2_X1 U84 ( .A(\mem[6][0] ), .B(\mem[7][0] ), .S(n452), .Z(n379) );
  MUX2_X1 U85 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .S(n452), .Z(n380) );
  MUX2_X1 U86 ( .A(n380), .B(n379), .S(N38), .Z(n381) );
  MUX2_X1 U87 ( .A(\mem[2][0] ), .B(\mem[3][0] ), .S(n452), .Z(n382) );
  MUX2_X1 U88 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .S(n452), .Z(n383) );
  MUX2_X1 U89 ( .A(n383), .B(n382), .S(N38), .Z(n384) );
  MUX2_X1 U90 ( .A(n384), .B(n381), .S(N39), .Z(N168) );
  MUX2_X1 U91 ( .A(\mem[6][1] ), .B(\mem[7][1] ), .S(n452), .Z(n385) );
  MUX2_X1 U92 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .S(n452), .Z(n386) );
  MUX2_X1 U93 ( .A(n386), .B(n385), .S(N38), .Z(n387) );
  MUX2_X1 U94 ( .A(\mem[2][1] ), .B(\mem[3][1] ), .S(n452), .Z(n388) );
  MUX2_X1 U95 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .S(n452), .Z(n389) );
  MUX2_X1 U96 ( .A(n389), .B(n388), .S(N38), .Z(n390) );
  MUX2_X1 U97 ( .A(n390), .B(n387), .S(N39), .Z(N167) );
  MUX2_X1 U98 ( .A(\mem[6][2] ), .B(\mem[7][2] ), .S(n452), .Z(n391) );
  MUX2_X1 U99 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .S(n452), .Z(n392) );
  MUX2_X1 U100 ( .A(n392), .B(n391), .S(N38), .Z(n393) );
  MUX2_X1 U101 ( .A(\mem[2][2] ), .B(\mem[3][2] ), .S(n452), .Z(n394) );
  MUX2_X1 U102 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .S(n452), .Z(n395) );
  MUX2_X1 U103 ( .A(n395), .B(n394), .S(N38), .Z(n396) );
  MUX2_X1 U104 ( .A(n396), .B(n393), .S(N39), .Z(N166) );
  MUX2_X1 U105 ( .A(\mem[6][3] ), .B(\mem[7][3] ), .S(N37), .Z(n397) );
  MUX2_X1 U106 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .S(N37), .Z(n398) );
  MUX2_X1 U107 ( .A(n398), .B(n397), .S(n451), .Z(n399) );
  MUX2_X1 U108 ( .A(\mem[2][3] ), .B(\mem[3][3] ), .S(N37), .Z(n400) );
  MUX2_X1 U109 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .S(N37), .Z(n401) );
  MUX2_X1 U110 ( .A(n401), .B(n400), .S(N38), .Z(n402) );
  MUX2_X1 U111 ( .A(n402), .B(n399), .S(N39), .Z(N165) );
  MUX2_X1 U112 ( .A(\mem[6][4] ), .B(\mem[7][4] ), .S(N37), .Z(n403) );
  MUX2_X1 U113 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .S(N37), .Z(n404) );
  MUX2_X1 U114 ( .A(n404), .B(n403), .S(n451), .Z(n405) );
  MUX2_X1 U115 ( .A(\mem[2][4] ), .B(\mem[3][4] ), .S(n453), .Z(n406) );
  MUX2_X1 U116 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .S(n453), .Z(n407) );
  MUX2_X1 U117 ( .A(n407), .B(n406), .S(N38), .Z(n408) );
  MUX2_X1 U118 ( .A(n408), .B(n405), .S(N39), .Z(N164) );
  MUX2_X1 U119 ( .A(\mem[6][5] ), .B(\mem[7][5] ), .S(n452), .Z(n409) );
  MUX2_X1 U120 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .S(N37), .Z(n410) );
  MUX2_X1 U121 ( .A(n410), .B(n409), .S(n451), .Z(n411) );
  MUX2_X1 U122 ( .A(\mem[2][5] ), .B(\mem[3][5] ), .S(n453), .Z(n412) );
  MUX2_X1 U123 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .S(n452), .Z(n413) );
  MUX2_X1 U124 ( .A(n413), .B(n412), .S(N38), .Z(n414) );
  MUX2_X1 U125 ( .A(n414), .B(n411), .S(N39), .Z(N163) );
  MUX2_X1 U126 ( .A(\mem[6][6] ), .B(\mem[7][6] ), .S(N37), .Z(n415) );
  MUX2_X1 U127 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .S(n452), .Z(n416) );
  MUX2_X1 U128 ( .A(n416), .B(n415), .S(n451), .Z(n417) );
  MUX2_X1 U129 ( .A(\mem[2][6] ), .B(\mem[3][6] ), .S(N37), .Z(n418) );
  MUX2_X1 U130 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .S(n453), .Z(n419) );
  MUX2_X1 U131 ( .A(n419), .B(n418), .S(n451), .Z(n420) );
  MUX2_X1 U132 ( .A(n420), .B(n417), .S(N39), .Z(N162) );
  MUX2_X1 U133 ( .A(\mem[6][7] ), .B(\mem[7][7] ), .S(n452), .Z(n421) );
  MUX2_X1 U134 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .S(N37), .Z(n422) );
  MUX2_X1 U135 ( .A(n422), .B(n421), .S(n451), .Z(n423) );
  MUX2_X1 U136 ( .A(\mem[2][7] ), .B(\mem[3][7] ), .S(n453), .Z(n424) );
  MUX2_X1 U137 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .S(n452), .Z(n425) );
  MUX2_X1 U138 ( .A(n425), .B(n424), .S(n451), .Z(n426) );
  MUX2_X1 U139 ( .A(n426), .B(n423), .S(N39), .Z(N161) );
  MUX2_X1 U140 ( .A(\mem[6][8] ), .B(\mem[7][8] ), .S(N37), .Z(n427) );
  MUX2_X1 U141 ( .A(\mem[4][8] ), .B(\mem[5][8] ), .S(n453), .Z(n428) );
  MUX2_X1 U142 ( .A(n428), .B(n427), .S(n451), .Z(n429) );
  MUX2_X1 U143 ( .A(\mem[2][8] ), .B(\mem[3][8] ), .S(n452), .Z(n430) );
  MUX2_X1 U144 ( .A(\mem[0][8] ), .B(\mem[1][8] ), .S(N37), .Z(n431) );
  MUX2_X1 U145 ( .A(n431), .B(n430), .S(n451), .Z(n432) );
  MUX2_X1 U146 ( .A(n432), .B(n429), .S(N39), .Z(N160) );
  MUX2_X1 U147 ( .A(\mem[6][9] ), .B(\mem[7][9] ), .S(n453), .Z(n433) );
  MUX2_X1 U148 ( .A(\mem[4][9] ), .B(\mem[5][9] ), .S(n453), .Z(n434) );
  MUX2_X1 U149 ( .A(n434), .B(n433), .S(n451), .Z(n435) );
  MUX2_X1 U150 ( .A(\mem[2][9] ), .B(\mem[3][9] ), .S(n453), .Z(n436) );
  MUX2_X1 U151 ( .A(\mem[0][9] ), .B(\mem[1][9] ), .S(n453), .Z(n437) );
  MUX2_X1 U152 ( .A(n437), .B(n436), .S(n451), .Z(n438) );
  MUX2_X1 U153 ( .A(n438), .B(n435), .S(N39), .Z(N159) );
  MUX2_X1 U154 ( .A(\mem[6][10] ), .B(\mem[7][10] ), .S(n453), .Z(n439) );
  MUX2_X1 U155 ( .A(\mem[4][10] ), .B(\mem[5][10] ), .S(n453), .Z(n440) );
  MUX2_X1 U156 ( .A(n440), .B(n439), .S(n451), .Z(n441) );
  MUX2_X1 U157 ( .A(\mem[2][10] ), .B(\mem[3][10] ), .S(n453), .Z(n442) );
  MUX2_X1 U158 ( .A(\mem[0][10] ), .B(\mem[1][10] ), .S(n453), .Z(n443) );
  MUX2_X1 U159 ( .A(n443), .B(n442), .S(n451), .Z(n444) );
  MUX2_X1 U160 ( .A(n444), .B(n441), .S(N39), .Z(N158) );
  MUX2_X1 U161 ( .A(\mem[6][11] ), .B(\mem[7][11] ), .S(n453), .Z(n445) );
  MUX2_X1 U162 ( .A(\mem[4][11] ), .B(\mem[5][11] ), .S(n453), .Z(n446) );
  MUX2_X1 U163 ( .A(n446), .B(n445), .S(n451), .Z(n447) );
  MUX2_X1 U164 ( .A(\mem[2][11] ), .B(\mem[3][11] ), .S(n453), .Z(n448) );
  MUX2_X1 U165 ( .A(\mem[0][11] ), .B(\mem[1][11] ), .S(n453), .Z(n449) );
  MUX2_X1 U166 ( .A(n449), .B(n448), .S(n451), .Z(n450) );
  MUX2_X1 U167 ( .A(n450), .B(n447), .S(N39), .Z(N157) );
  MUX2_X1 U168 ( .A(\mem[6][0] ), .B(\mem[7][0] ), .S(N40), .Z(n454) );
  MUX2_X1 U169 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .S(N40), .Z(n455) );
  MUX2_X1 U170 ( .A(n455), .B(n454), .S(N41), .Z(n456) );
  MUX2_X1 U171 ( .A(\mem[2][0] ), .B(\mem[3][0] ), .S(N40), .Z(n457) );
  MUX2_X1 U172 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .S(N40), .Z(n458) );
  MUX2_X1 U173 ( .A(n458), .B(n457), .S(N41), .Z(n459) );
  MUX2_X1 U174 ( .A(n459), .B(n456), .S(N42), .Z(N184) );
  MUX2_X1 U175 ( .A(\mem[6][1] ), .B(\mem[7][1] ), .S(N40), .Z(n460) );
  MUX2_X1 U176 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .S(N40), .Z(n461) );
  MUX2_X1 U177 ( .A(n461), .B(n460), .S(N41), .Z(n462) );
  MUX2_X1 U178 ( .A(\mem[2][1] ), .B(\mem[3][1] ), .S(N40), .Z(n463) );
  MUX2_X1 U179 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .S(N40), .Z(n464) );
  MUX2_X1 U180 ( .A(n464), .B(n463), .S(N41), .Z(n465) );
  MUX2_X1 U181 ( .A(n465), .B(n462), .S(N42), .Z(N183) );
  MUX2_X1 U182 ( .A(\mem[6][2] ), .B(\mem[7][2] ), .S(N40), .Z(n466) );
  MUX2_X1 U183 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .S(N40), .Z(n467) );
  MUX2_X1 U184 ( .A(n467), .B(n466), .S(N41), .Z(n468) );
  MUX2_X1 U185 ( .A(\mem[2][2] ), .B(\mem[3][2] ), .S(N40), .Z(n469) );
  MUX2_X1 U186 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .S(N40), .Z(n470) );
  MUX2_X1 U187 ( .A(n470), .B(n469), .S(N41), .Z(n471) );
  MUX2_X1 U188 ( .A(n471), .B(n468), .S(N42), .Z(N182) );
  MUX2_X1 U189 ( .A(\mem[6][3] ), .B(\mem[7][3] ), .S(n527), .Z(n472) );
  MUX2_X1 U190 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .S(n527), .Z(n473) );
  MUX2_X1 U191 ( .A(n473), .B(n472), .S(N41), .Z(n474) );
  MUX2_X1 U192 ( .A(\mem[2][3] ), .B(\mem[3][3] ), .S(n527), .Z(n475) );
  MUX2_X1 U193 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .S(n527), .Z(n476) );
  MUX2_X1 U194 ( .A(n476), .B(n475), .S(N41), .Z(n477) );
  MUX2_X1 U195 ( .A(n477), .B(n474), .S(N42), .Z(N181) );
  MUX2_X1 U196 ( .A(\mem[6][4] ), .B(\mem[7][4] ), .S(n527), .Z(n478) );
  MUX2_X1 U197 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .S(n527), .Z(n479) );
  MUX2_X1 U198 ( .A(n479), .B(n478), .S(N41), .Z(n480) );
  MUX2_X1 U199 ( .A(\mem[2][4] ), .B(\mem[3][4] ), .S(n527), .Z(n481) );
  MUX2_X1 U200 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .S(n527), .Z(n482) );
  MUX2_X1 U201 ( .A(n482), .B(n481), .S(N41), .Z(n483) );
  MUX2_X1 U202 ( .A(n483), .B(n480), .S(N42), .Z(N180) );
  MUX2_X1 U203 ( .A(\mem[6][5] ), .B(\mem[7][5] ), .S(n527), .Z(n484) );
  MUX2_X1 U204 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .S(n527), .Z(n485) );
  MUX2_X1 U205 ( .A(n485), .B(n484), .S(N41), .Z(n486) );
  MUX2_X1 U206 ( .A(\mem[2][5] ), .B(\mem[3][5] ), .S(n527), .Z(n487) );
  MUX2_X1 U207 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .S(n527), .Z(n488) );
  MUX2_X1 U208 ( .A(n488), .B(n487), .S(N41), .Z(n489) );
  MUX2_X1 U209 ( .A(n489), .B(n486), .S(N42), .Z(N179) );
  MUX2_X1 U210 ( .A(\mem[6][6] ), .B(\mem[7][6] ), .S(n528), .Z(n490) );
  MUX2_X1 U211 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .S(n528), .Z(n491) );
  MUX2_X1 U212 ( .A(n491), .B(n490), .S(n526), .Z(n492) );
  MUX2_X1 U213 ( .A(\mem[2][6] ), .B(\mem[3][6] ), .S(n528), .Z(n493) );
  MUX2_X1 U214 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .S(n528), .Z(n494) );
  MUX2_X1 U215 ( .A(n494), .B(n493), .S(n526), .Z(n495) );
  MUX2_X1 U216 ( .A(n495), .B(n492), .S(N42), .Z(N178) );
  MUX2_X1 U217 ( .A(\mem[6][7] ), .B(\mem[7][7] ), .S(n528), .Z(n496) );
  MUX2_X1 U218 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .S(n528), .Z(n497) );
  MUX2_X1 U219 ( .A(n497), .B(n496), .S(n526), .Z(n498) );
  MUX2_X1 U220 ( .A(\mem[2][7] ), .B(\mem[3][7] ), .S(n528), .Z(n499) );
  MUX2_X1 U221 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .S(n528), .Z(n500) );
  MUX2_X1 U222 ( .A(n500), .B(n499), .S(n526), .Z(n501) );
  MUX2_X1 U223 ( .A(n501), .B(n498), .S(N42), .Z(N177) );
  MUX2_X1 U224 ( .A(\mem[6][8] ), .B(\mem[7][8] ), .S(n528), .Z(n502) );
  MUX2_X1 U225 ( .A(\mem[4][8] ), .B(\mem[5][8] ), .S(n528), .Z(n503) );
  MUX2_X1 U226 ( .A(n503), .B(n502), .S(n526), .Z(n504) );
  MUX2_X1 U227 ( .A(\mem[2][8] ), .B(\mem[3][8] ), .S(n528), .Z(n505) );
  MUX2_X1 U228 ( .A(\mem[0][8] ), .B(\mem[1][8] ), .S(n528), .Z(n506) );
  MUX2_X1 U229 ( .A(n506), .B(n505), .S(n526), .Z(n507) );
  MUX2_X1 U230 ( .A(n507), .B(n504), .S(N42), .Z(N176) );
  MUX2_X1 U231 ( .A(\mem[6][9] ), .B(\mem[7][9] ), .S(n529), .Z(n508) );
  MUX2_X1 U232 ( .A(\mem[4][9] ), .B(\mem[5][9] ), .S(n529), .Z(n509) );
  MUX2_X1 U233 ( .A(n509), .B(n508), .S(n526), .Z(n510) );
  MUX2_X1 U234 ( .A(\mem[2][9] ), .B(\mem[3][9] ), .S(n529), .Z(n511) );
  MUX2_X1 U235 ( .A(\mem[0][9] ), .B(\mem[1][9] ), .S(n529), .Z(n512) );
  MUX2_X1 U236 ( .A(n512), .B(n511), .S(n526), .Z(n513) );
  MUX2_X1 U237 ( .A(n513), .B(n510), .S(N42), .Z(N175) );
  MUX2_X1 U238 ( .A(\mem[6][10] ), .B(\mem[7][10] ), .S(n529), .Z(n514) );
  MUX2_X1 U239 ( .A(\mem[4][10] ), .B(\mem[5][10] ), .S(n529), .Z(n515) );
  MUX2_X1 U240 ( .A(n515), .B(n514), .S(n526), .Z(n516) );
  MUX2_X1 U241 ( .A(\mem[2][10] ), .B(\mem[3][10] ), .S(n529), .Z(n517) );
  MUX2_X1 U242 ( .A(\mem[0][10] ), .B(\mem[1][10] ), .S(n529), .Z(n518) );
  MUX2_X1 U243 ( .A(n518), .B(n517), .S(n526), .Z(n519) );
  MUX2_X1 U244 ( .A(n519), .B(n516), .S(N42), .Z(N174) );
  MUX2_X1 U245 ( .A(\mem[6][11] ), .B(\mem[7][11] ), .S(n529), .Z(n520) );
  MUX2_X1 U246 ( .A(\mem[4][11] ), .B(\mem[5][11] ), .S(n529), .Z(n521) );
  MUX2_X1 U247 ( .A(n521), .B(n520), .S(n526), .Z(n522) );
  MUX2_X1 U248 ( .A(\mem[2][11] ), .B(\mem[3][11] ), .S(n529), .Z(n523) );
  MUX2_X1 U249 ( .A(\mem[0][11] ), .B(\mem[1][11] ), .S(n529), .Z(n524) );
  MUX2_X1 U250 ( .A(n524), .B(n523), .S(n526), .Z(n525) );
  MUX2_X1 U251 ( .A(n525), .B(n522), .S(N42), .Z(N173) );
endmodule


module syn_fifo_4 ( clk, rst, wr_cs, rd_cs, data_in, rd_en, wr_en, data_out, 
        empty, full );
  input [11:0] data_in;
  output [11:0] data_out;
  input clk, rst, wr_cs, rd_cs, rd_en, wr_en;
  output empty, full;
  wire   N33, N40, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179;
  wire   [3:0] status_cnt;
  wire   [2:0] wr_pointer;
  wire   [2:0] rd_pointer;
  wire   [11:0] data_ram;
  assign empty = N33;
  assign full = N40;

  DFFR_X1 \wr_pointer_reg[2]  ( .D(n119), .CK(clk), .RN(n105), .Q(
        wr_pointer[2]), .QN(n136) );
  DFFR_X1 \rd_pointer_reg[2]  ( .D(n122), .CK(clk), .RN(n105), .Q(
        rd_pointer[2]), .QN(n135) );
  DFFR_X1 \data_out_reg[11]  ( .D(n123), .CK(clk), .RN(n105), .Q(data_out[11]), 
        .QN(n137) );
  DFFR_X1 \data_out_reg[10]  ( .D(n124), .CK(clk), .RN(n105), .Q(data_out[10]), 
        .QN(n138) );
  DFFR_X1 \data_out_reg[9]  ( .D(n125), .CK(clk), .RN(n105), .Q(data_out[9]), 
        .QN(n139) );
  DFFR_X1 \data_out_reg[8]  ( .D(n126), .CK(clk), .RN(n105), .Q(data_out[8]), 
        .QN(n140) );
  DFFR_X1 \data_out_reg[7]  ( .D(n127), .CK(clk), .RN(n105), .Q(data_out[7]), 
        .QN(n141) );
  DFFR_X1 \data_out_reg[6]  ( .D(n128), .CK(clk), .RN(n105), .Q(data_out[6]), 
        .QN(n142) );
  DFFR_X1 \data_out_reg[5]  ( .D(n129), .CK(clk), .RN(n106), .Q(data_out[5]), 
        .QN(n143) );
  DFFR_X1 \data_out_reg[4]  ( .D(n130), .CK(clk), .RN(n106), .Q(data_out[4]), 
        .QN(n144) );
  DFFR_X1 \data_out_reg[3]  ( .D(n131), .CK(clk), .RN(n106), .Q(data_out[3]), 
        .QN(n145) );
  DFFR_X1 \data_out_reg[2]  ( .D(n132), .CK(clk), .RN(n106), .Q(data_out[2]), 
        .QN(n146) );
  DFFR_X1 \data_out_reg[1]  ( .D(n133), .CK(clk), .RN(n106), .Q(data_out[1]), 
        .QN(n147) );
  DFFR_X1 \data_out_reg[0]  ( .D(n134), .CK(clk), .RN(n106), .Q(data_out[0]), 
        .QN(n148) );
  DFFR_X1 \status_cnt_reg[0]  ( .D(n113), .CK(clk), .RN(n106), .Q(
        status_cnt[0]), .QN(n99) );
  DFFR_X1 \status_cnt_reg[1]  ( .D(n114), .CK(clk), .RN(n106), .Q(
        status_cnt[1]), .QN(n100) );
  DFFR_X1 \status_cnt_reg[2]  ( .D(n115), .CK(clk), .RN(n106), .Q(
        status_cnt[2]), .QN(n101) );
  XOR2_X1 U27 ( .A(n135), .B(n166), .Z(n122) );
  XOR2_X1 U29 ( .A(rd_pointer[1]), .B(n165), .Z(n121) );
  XOR2_X1 U31 ( .A(rd_pointer[0]), .B(n111), .Z(n120) );
  XOR2_X1 U32 ( .A(n136), .B(n164), .Z(n119) );
  XOR2_X1 U34 ( .A(wr_pointer[1]), .B(n163), .Z(n118) );
  XOR2_X1 U36 ( .A(n104), .B(n162), .Z(n117) );
  NAND3_X1 U49 ( .A1(n99), .A2(n100), .A3(n110), .ZN(n155) );
  NAND3_X1 U50 ( .A1(n159), .A2(n100), .A3(status_cnt[0]), .ZN(n152) );
  XOR2_X1 U53 ( .A(n151), .B(n99), .Z(n113) );
  NAND3_X1 U58 ( .A1(n162), .A2(n149), .A3(n111), .ZN(n154) );
  NAND4_X1 U63 ( .A1(status_cnt[2]), .A2(status_cnt[1]), .A3(status_cnt[0]), 
        .A4(n112), .ZN(n161) );
  ram_dp_ar_aw_4 DP_RAM ( .address_0(wr_pointer), .data_0(data_in), .cs_0(
        wr_cs), .we_0(wr_en), .oe_0(1'b0), .address_1(rd_pointer), .data_1(
        data_ram), .cs_1(rd_cs), .we_1(1'b0), .oe_1(rd_en) );
  DFFR_X1 \wr_pointer_reg[0]  ( .D(n117), .CK(clk), .RN(n105), .Q(
        wr_pointer[0]), .QN(n104) );
  DFFR_X1 \wr_pointer_reg[1]  ( .D(n118), .CK(clk), .RN(n105), .Q(
        wr_pointer[1]) );
  DFFR_X1 \rd_pointer_reg[0]  ( .D(n120), .CK(clk), .RN(n105), .Q(
        rd_pointer[0]) );
  DFFR_X1 \rd_pointer_reg[1]  ( .D(n121), .CK(clk), .RN(n105), .Q(
        rd_pointer[1]) );
  DFFR_X1 \status_cnt_reg[3]  ( .D(n116), .CK(clk), .RN(n106), .Q(
        status_cnt[3]), .QN(n112) );
  NOR3_X2 U3 ( .A1(n102), .A2(n103), .A3(n151), .ZN(n153) );
  AOI211_X4 U4 ( .C1(n150), .C2(status_cnt[3]), .A(n111), .B(n162), .ZN(n159)
         );
  INV_X4 U5 ( .A(n179), .ZN(n111) );
  AND2_X1 U6 ( .A1(n99), .A2(n159), .ZN(n102) );
  AND2_X1 U7 ( .A1(n110), .A2(status_cnt[0]), .ZN(n103) );
  INV_X1 U8 ( .A(n154), .ZN(n110) );
  BUF_X1 U9 ( .A(rst), .Z(n105) );
  BUF_X1 U10 ( .A(rst), .Z(n106) );
  INV_X1 U11 ( .A(n149), .ZN(N33) );
  INV_X1 U12 ( .A(n155), .ZN(n109) );
  NOR2_X1 U13 ( .A1(n110), .A2(n159), .ZN(n151) );
  NAND2_X1 U14 ( .A1(n150), .A2(n112), .ZN(n149) );
  INV_X1 U15 ( .A(n159), .ZN(n108) );
  OAI21_X1 U16 ( .B1(n107), .B2(n101), .A(n157), .ZN(n115) );
  OAI21_X1 U17 ( .B1(n156), .B2(n109), .A(n101), .ZN(n157) );
  INV_X1 U18 ( .A(n158), .ZN(n107) );
  NOR3_X1 U19 ( .A1(n100), .A2(n108), .A3(n99), .ZN(n156) );
  NOR2_X1 U20 ( .A1(n104), .A2(n162), .ZN(n163) );
  NAND2_X1 U21 ( .A1(rd_en), .A2(rd_cs), .ZN(n179) );
  OAI221_X1 U22 ( .B1(status_cnt[1]), .B2(n108), .C1(n154), .C2(n100), .A(n153), .ZN(n158) );
  NOR3_X1 U23 ( .A1(status_cnt[1]), .A2(status_cnt[2]), .A3(status_cnt[0]), 
        .ZN(n150) );
  OAI22_X1 U24 ( .A1(n108), .A2(n161), .B1(n160), .B2(n112), .ZN(n116) );
  AOI221_X1 U25 ( .B1(n159), .B2(n101), .C1(status_cnt[2]), .C2(n110), .A(n158), .ZN(n160) );
  INV_X1 U26 ( .A(n161), .ZN(N40) );
  OAI22_X1 U28 ( .A1(n148), .A2(n111), .B1(n179), .B2(n178), .ZN(n134) );
  INV_X1 U30 ( .A(data_ram[0]), .ZN(n178) );
  OAI22_X1 U33 ( .A1(n147), .A2(n111), .B1(n179), .B2(n177), .ZN(n133) );
  INV_X1 U35 ( .A(data_ram[1]), .ZN(n177) );
  OAI22_X1 U37 ( .A1(n146), .A2(n111), .B1(n179), .B2(n176), .ZN(n132) );
  INV_X1 U38 ( .A(data_ram[2]), .ZN(n176) );
  OAI22_X1 U39 ( .A1(n145), .A2(n111), .B1(n179), .B2(n175), .ZN(n131) );
  INV_X1 U40 ( .A(data_ram[3]), .ZN(n175) );
  OAI22_X1 U41 ( .A1(n144), .A2(n111), .B1(n179), .B2(n174), .ZN(n130) );
  INV_X1 U42 ( .A(data_ram[4]), .ZN(n174) );
  OAI22_X1 U43 ( .A1(n143), .A2(n111), .B1(n179), .B2(n173), .ZN(n129) );
  INV_X1 U44 ( .A(data_ram[5]), .ZN(n173) );
  OAI22_X1 U45 ( .A1(n142), .A2(n111), .B1(n179), .B2(n172), .ZN(n128) );
  INV_X1 U46 ( .A(data_ram[6]), .ZN(n172) );
  OAI22_X1 U47 ( .A1(n141), .A2(n111), .B1(n179), .B2(n171), .ZN(n127) );
  INV_X1 U48 ( .A(data_ram[7]), .ZN(n171) );
  OAI22_X1 U51 ( .A1(n139), .A2(n111), .B1(n179), .B2(n169), .ZN(n125) );
  INV_X1 U52 ( .A(data_ram[9]), .ZN(n169) );
  OAI22_X1 U54 ( .A1(n138), .A2(n111), .B1(n179), .B2(n168), .ZN(n124) );
  INV_X1 U55 ( .A(data_ram[10]), .ZN(n168) );
  OAI22_X1 U56 ( .A1(n137), .A2(n111), .B1(n179), .B2(n167), .ZN(n123) );
  INV_X1 U57 ( .A(data_ram[11]), .ZN(n167) );
  OAI22_X1 U59 ( .A1(n140), .A2(n111), .B1(n179), .B2(n170), .ZN(n126) );
  INV_X1 U60 ( .A(data_ram[8]), .ZN(n170) );
  NAND2_X1 U61 ( .A1(rd_pointer[1]), .A2(n165), .ZN(n166) );
  NAND2_X1 U62 ( .A1(wr_en), .A2(wr_cs), .ZN(n162) );
  OAI211_X1 U64 ( .C1(n153), .C2(n100), .A(n152), .B(n155), .ZN(n114) );
  AND2_X1 U65 ( .A1(rd_pointer[0]), .A2(n111), .ZN(n165) );
  NAND2_X1 U66 ( .A1(wr_pointer[1]), .A2(n163), .ZN(n164) );
endmodule


module ram_dp_ar_aw_3 ( address_0, data_0, cs_0, we_0, oe_0, address_1, data_1, 
        cs_1, we_1, oe_1 );
  input [2:0] address_0;
  inout [11:0] data_0;
  input [2:0] address_1;
  inout [11:0] data_1;
  input cs_0, we_0, oe_0, cs_1, we_1, oe_1;
  wire   N37, N38, N39, N40, N41, N42, \mem[0][11] , \mem[0][10] , \mem[0][9] ,
         \mem[0][8] , \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , \mem[1][11] ,
         \mem[1][10] , \mem[1][9] , \mem[1][8] , \mem[1][7] , \mem[1][6] ,
         \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] , \mem[1][1] ,
         \mem[1][0] , \mem[2][11] , \mem[2][10] , \mem[2][9] , \mem[2][8] ,
         \mem[2][7] , \mem[2][6] , \mem[2][5] , \mem[2][4] , \mem[2][3] ,
         \mem[2][2] , \mem[2][1] , \mem[2][0] , \mem[3][11] , \mem[3][10] ,
         \mem[3][9] , \mem[3][8] , \mem[3][7] , \mem[3][6] , \mem[3][5] ,
         \mem[3][4] , \mem[3][3] , \mem[3][2] , \mem[3][1] , \mem[3][0] ,
         \mem[4][11] , \mem[4][10] , \mem[4][9] , \mem[4][8] , \mem[4][7] ,
         \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] , \mem[4][2] ,
         \mem[4][1] , \mem[4][0] , \mem[5][11] , \mem[5][10] , \mem[5][9] ,
         \mem[5][8] , \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] ,
         \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[6][11] ,
         \mem[6][10] , \mem[6][9] , \mem[6][8] , \mem[6][7] , \mem[6][6] ,
         \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] , \mem[6][1] ,
         \mem[6][0] , \mem[7][11] , \mem[7][10] , \mem[7][9] , \mem[7][8] ,
         \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] , \mem[7][3] ,
         \mem[7][2] , \mem[7][1] , \mem[7][0] , N47, N60, N73, N86, N99, N112,
         N125, N138, N157, N158, N159, N160, N161, N162, N163, N164, N165,
         N166, N167, N168, N173, N174, N175, N176, N177, N178, N179, N180,
         N181, N182, N183, N184, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476,
         n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487,
         n488, n489, n490, n491, n492, n493, n494, n495, n496, n497, n498,
         n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
         n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520,
         n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542,
         n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, n553,
         n554, n555, n556, n557, n558, n559, n560, n561, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580;
  assign N37 = address_0[0];
  assign N38 = address_0[1];
  assign N39 = address_0[2];
  assign N40 = address_1[0];
  assign N41 = address_1[1];
  assign N42 = address_1[2];

  OAI33_X1 U40 ( .A1(n531), .A2(n567), .A3(n530), .B1(n533), .B2(n566), .B3(
        n532), .ZN(N99) );
  OAI33_X1 U41 ( .A1(n565), .A2(N41), .A3(N40), .B1(n564), .B2(N38), .B3(N37), 
        .ZN(N86) );
  OAI33_X1 U42 ( .A1(n565), .A2(N41), .A3(n530), .B1(n564), .B2(N38), .B3(n532), .ZN(N73) );
  OAI33_X1 U43 ( .A1(n565), .A2(N40), .A3(n531), .B1(n564), .B2(N37), .B3(n533), .ZN(N60) );
  OAI33_X1 U44 ( .A1(n565), .A2(n530), .A3(n531), .B1(n564), .B2(n532), .B3(
        n533), .ZN(N47) );
  OAI33_X1 U48 ( .A1(n567), .A2(N41), .A3(N40), .B1(n566), .B2(N38), .B3(N37), 
        .ZN(N138) );
  OAI33_X1 U49 ( .A1(n530), .A2(N41), .A3(n567), .B1(n532), .B2(N38), .B3(n566), .ZN(N125) );
  OAI33_X1 U52 ( .A1(n531), .A2(N40), .A3(n567), .B1(n533), .B2(N37), .B3(n566), .ZN(N112) );
  TBUF_X1 \data_0_tri[0]  ( .A(N168), .EN(n558), .Z(data_0[0]) );
  TBUF_X1 \data_0_tri[1]  ( .A(N167), .EN(n558), .Z(data_0[1]) );
  TBUF_X1 \data_0_tri[2]  ( .A(N166), .EN(n558), .Z(data_0[2]) );
  TBUF_X1 \data_0_tri[3]  ( .A(N165), .EN(n558), .Z(data_0[3]) );
  TBUF_X1 \data_0_tri[4]  ( .A(N164), .EN(n558), .Z(data_0[4]) );
  TBUF_X1 \data_0_tri[5]  ( .A(N163), .EN(n558), .Z(data_0[5]) );
  TBUF_X1 \data_0_tri[6]  ( .A(N162), .EN(n558), .Z(data_0[6]) );
  TBUF_X1 \data_0_tri[7]  ( .A(N161), .EN(n558), .Z(data_0[7]) );
  TBUF_X1 \data_1_tri[0]  ( .A(N184), .EN(n553), .Z(data_1[0]) );
  TBUF_X1 \data_1_tri[1]  ( .A(N183), .EN(n553), .Z(data_1[1]) );
  TBUF_X1 \data_1_tri[2]  ( .A(N182), .EN(n553), .Z(data_1[2]) );
  TBUF_X1 \data_1_tri[3]  ( .A(N181), .EN(n553), .Z(data_1[3]) );
  TBUF_X1 \data_1_tri[4]  ( .A(N180), .EN(n553), .Z(data_1[4]) );
  TBUF_X1 \data_1_tri[5]  ( .A(N179), .EN(n553), .Z(data_1[5]) );
  TBUF_X1 \data_1_tri[6]  ( .A(N178), .EN(n553), .Z(data_1[6]) );
  TBUF_X1 \data_1_tri[7]  ( .A(N177), .EN(n553), .Z(data_1[7]) );
  DLH_X1 \mem_reg[1][11]  ( .G(n378), .D(n534), .Q(\mem[1][11] ) );
  DLH_X1 \mem_reg[1][10]  ( .G(n378), .D(n535), .Q(\mem[1][10] ) );
  DLH_X1 \mem_reg[1][9]  ( .G(n378), .D(n536), .Q(\mem[1][9] ) );
  DLH_X1 \mem_reg[1][8]  ( .G(n378), .D(n537), .Q(\mem[1][8] ) );
  DLH_X1 \mem_reg[1][7]  ( .G(n378), .D(n538), .Q(\mem[1][7] ) );
  DLH_X1 \mem_reg[1][6]  ( .G(n378), .D(n539), .Q(\mem[1][6] ) );
  DLH_X1 \mem_reg[1][5]  ( .G(n378), .D(n540), .Q(\mem[1][5] ) );
  DLH_X1 \mem_reg[1][4]  ( .G(n378), .D(n541), .Q(\mem[1][4] ) );
  DLH_X1 \mem_reg[1][3]  ( .G(n378), .D(n542), .Q(\mem[1][3] ) );
  DLH_X1 \mem_reg[1][2]  ( .G(n378), .D(n543), .Q(\mem[1][2] ) );
  DLH_X1 \mem_reg[1][1]  ( .G(n378), .D(n544), .Q(\mem[1][1] ) );
  DLH_X1 \mem_reg[1][0]  ( .G(n378), .D(n545), .Q(\mem[1][0] ) );
  DLH_X1 \mem_reg[6][11]  ( .G(n377), .D(n534), .Q(\mem[6][11] ) );
  DLH_X1 \mem_reg[6][10]  ( .G(n377), .D(n535), .Q(\mem[6][10] ) );
  DLH_X1 \mem_reg[6][9]  ( .G(n377), .D(n536), .Q(\mem[6][9] ) );
  DLH_X1 \mem_reg[6][8]  ( .G(n377), .D(n537), .Q(\mem[6][8] ) );
  DLH_X1 \mem_reg[6][7]  ( .G(n377), .D(n538), .Q(\mem[6][7] ) );
  DLH_X1 \mem_reg[6][6]  ( .G(n377), .D(n539), .Q(\mem[6][6] ) );
  DLH_X1 \mem_reg[6][5]  ( .G(n377), .D(n540), .Q(\mem[6][5] ) );
  DLH_X1 \mem_reg[6][4]  ( .G(n377), .D(n541), .Q(\mem[6][4] ) );
  DLH_X1 \mem_reg[6][3]  ( .G(n377), .D(n542), .Q(\mem[6][3] ) );
  DLH_X1 \mem_reg[6][2]  ( .G(n377), .D(n543), .Q(\mem[6][2] ) );
  DLH_X1 \mem_reg[6][1]  ( .G(n377), .D(n544), .Q(\mem[6][1] ) );
  DLH_X1 \mem_reg[6][0]  ( .G(n377), .D(n545), .Q(\mem[6][0] ) );
  DLH_X1 \mem_reg[3][11]  ( .G(n376), .D(n534), .Q(\mem[3][11] ) );
  DLH_X1 \mem_reg[3][10]  ( .G(n376), .D(n535), .Q(\mem[3][10] ) );
  DLH_X1 \mem_reg[3][9]  ( .G(n376), .D(n536), .Q(\mem[3][9] ) );
  DLH_X1 \mem_reg[3][8]  ( .G(n376), .D(n537), .Q(\mem[3][8] ) );
  DLH_X1 \mem_reg[3][7]  ( .G(n376), .D(n538), .Q(\mem[3][7] ) );
  DLH_X1 \mem_reg[3][6]  ( .G(n376), .D(n539), .Q(\mem[3][6] ) );
  DLH_X1 \mem_reg[3][5]  ( .G(n376), .D(n540), .Q(\mem[3][5] ) );
  DLH_X1 \mem_reg[3][4]  ( .G(n376), .D(n541), .Q(\mem[3][4] ) );
  DLH_X1 \mem_reg[3][3]  ( .G(n376), .D(n542), .Q(\mem[3][3] ) );
  DLH_X1 \mem_reg[3][2]  ( .G(n376), .D(n543), .Q(\mem[3][2] ) );
  DLH_X1 \mem_reg[3][1]  ( .G(n376), .D(n544), .Q(\mem[3][1] ) );
  DLH_X1 \mem_reg[3][0]  ( .G(n376), .D(n545), .Q(\mem[3][0] ) );
  DLH_X1 \mem_reg[4][11]  ( .G(n375), .D(n534), .Q(\mem[4][11] ) );
  DLH_X1 \mem_reg[4][10]  ( .G(n375), .D(n535), .Q(\mem[4][10] ) );
  DLH_X1 \mem_reg[4][9]  ( .G(n375), .D(n536), .Q(\mem[4][9] ) );
  DLH_X1 \mem_reg[4][8]  ( .G(n375), .D(n537), .Q(\mem[4][8] ) );
  DLH_X1 \mem_reg[4][7]  ( .G(n375), .D(n538), .Q(\mem[4][7] ) );
  DLH_X1 \mem_reg[4][6]  ( .G(n375), .D(n539), .Q(\mem[4][6] ) );
  DLH_X1 \mem_reg[4][5]  ( .G(n375), .D(n540), .Q(\mem[4][5] ) );
  DLH_X1 \mem_reg[4][4]  ( .G(n375), .D(n541), .Q(\mem[4][4] ) );
  DLH_X1 \mem_reg[4][3]  ( .G(n375), .D(n542), .Q(\mem[4][3] ) );
  DLH_X1 \mem_reg[4][2]  ( .G(n375), .D(n543), .Q(\mem[4][2] ) );
  DLH_X1 \mem_reg[4][1]  ( .G(n375), .D(n544), .Q(\mem[4][1] ) );
  DLH_X1 \mem_reg[4][0]  ( .G(n375), .D(n545), .Q(\mem[4][0] ) );
  DLH_X1 \mem_reg[2][11]  ( .G(n374), .D(n534), .Q(\mem[2][11] ) );
  DLH_X1 \mem_reg[2][10]  ( .G(n374), .D(n535), .Q(\mem[2][10] ) );
  DLH_X1 \mem_reg[2][9]  ( .G(n374), .D(n536), .Q(\mem[2][9] ) );
  DLH_X1 \mem_reg[2][8]  ( .G(n374), .D(n537), .Q(\mem[2][8] ) );
  DLH_X1 \mem_reg[2][7]  ( .G(n374), .D(n538), .Q(\mem[2][7] ) );
  DLH_X1 \mem_reg[2][6]  ( .G(n374), .D(n539), .Q(\mem[2][6] ) );
  DLH_X1 \mem_reg[2][5]  ( .G(n374), .D(n540), .Q(\mem[2][5] ) );
  DLH_X1 \mem_reg[2][4]  ( .G(n374), .D(n541), .Q(\mem[2][4] ) );
  DLH_X1 \mem_reg[2][3]  ( .G(n374), .D(n542), .Q(\mem[2][3] ) );
  DLH_X1 \mem_reg[2][2]  ( .G(n374), .D(n543), .Q(\mem[2][2] ) );
  DLH_X1 \mem_reg[2][1]  ( .G(n374), .D(n544), .Q(\mem[2][1] ) );
  DLH_X1 \mem_reg[2][0]  ( .G(n374), .D(n545), .Q(\mem[2][0] ) );
  DLH_X1 \mem_reg[5][11]  ( .G(n373), .D(n534), .Q(\mem[5][11] ) );
  DLH_X1 \mem_reg[5][10]  ( .G(n373), .D(n535), .Q(\mem[5][10] ) );
  DLH_X1 \mem_reg[5][9]  ( .G(n373), .D(n536), .Q(\mem[5][9] ) );
  DLH_X1 \mem_reg[5][8]  ( .G(n373), .D(n537), .Q(\mem[5][8] ) );
  DLH_X1 \mem_reg[5][7]  ( .G(n373), .D(n538), .Q(\mem[5][7] ) );
  DLH_X1 \mem_reg[5][6]  ( .G(n373), .D(n539), .Q(\mem[5][6] ) );
  DLH_X1 \mem_reg[5][5]  ( .G(n373), .D(n540), .Q(\mem[5][5] ) );
  DLH_X1 \mem_reg[5][4]  ( .G(n373), .D(n541), .Q(\mem[5][4] ) );
  DLH_X1 \mem_reg[5][3]  ( .G(n373), .D(n542), .Q(\mem[5][3] ) );
  DLH_X1 \mem_reg[5][2]  ( .G(n373), .D(n543), .Q(\mem[5][2] ) );
  DLH_X1 \mem_reg[5][1]  ( .G(n373), .D(n544), .Q(\mem[5][1] ) );
  DLH_X1 \mem_reg[5][0]  ( .G(n373), .D(n545), .Q(\mem[5][0] ) );
  DLH_X1 \mem_reg[0][11]  ( .G(n372), .D(n534), .Q(\mem[0][11] ) );
  DLH_X1 \mem_reg[0][10]  ( .G(n372), .D(n535), .Q(\mem[0][10] ) );
  DLH_X1 \mem_reg[0][9]  ( .G(n372), .D(n536), .Q(\mem[0][9] ) );
  DLH_X1 \mem_reg[0][8]  ( .G(n372), .D(n537), .Q(\mem[0][8] ) );
  DLH_X1 \mem_reg[0][7]  ( .G(n372), .D(n538), .Q(\mem[0][7] ) );
  DLH_X1 \mem_reg[0][6]  ( .G(n372), .D(n539), .Q(\mem[0][6] ) );
  DLH_X1 \mem_reg[0][5]  ( .G(n372), .D(n540), .Q(\mem[0][5] ) );
  DLH_X1 \mem_reg[0][4]  ( .G(n372), .D(n541), .Q(\mem[0][4] ) );
  DLH_X1 \mem_reg[0][3]  ( .G(n372), .D(n542), .Q(\mem[0][3] ) );
  DLH_X1 \mem_reg[0][2]  ( .G(n372), .D(n543), .Q(\mem[0][2] ) );
  DLH_X1 \mem_reg[0][1]  ( .G(n372), .D(n544), .Q(\mem[0][1] ) );
  DLH_X1 \mem_reg[0][0]  ( .G(n372), .D(n545), .Q(\mem[0][0] ) );
  DLH_X1 \mem_reg[7][11]  ( .G(n371), .D(n534), .Q(\mem[7][11] ) );
  DLH_X1 \mem_reg[7][10]  ( .G(n371), .D(n535), .Q(\mem[7][10] ) );
  DLH_X1 \mem_reg[7][9]  ( .G(n371), .D(n536), .Q(\mem[7][9] ) );
  DLH_X1 \mem_reg[7][8]  ( .G(n371), .D(n537), .Q(\mem[7][8] ) );
  DLH_X1 \mem_reg[7][7]  ( .G(n371), .D(n538), .Q(\mem[7][7] ) );
  DLH_X1 \mem_reg[7][6]  ( .G(n371), .D(n539), .Q(\mem[7][6] ) );
  DLH_X1 \mem_reg[7][5]  ( .G(n371), .D(n540), .Q(\mem[7][5] ) );
  DLH_X1 \mem_reg[7][4]  ( .G(n371), .D(n541), .Q(\mem[7][4] ) );
  DLH_X1 \mem_reg[7][3]  ( .G(n371), .D(n542), .Q(\mem[7][3] ) );
  DLH_X1 \mem_reg[7][2]  ( .G(n371), .D(n543), .Q(\mem[7][2] ) );
  DLH_X1 \mem_reg[7][1]  ( .G(n371), .D(n544), .Q(\mem[7][1] ) );
  DLH_X1 \mem_reg[7][0]  ( .G(n371), .D(n545), .Q(\mem[7][0] ) );
  CLKBUF_X1 U2 ( .A(N47), .Z(n371) );
  CLKBUF_X1 U3 ( .A(N138), .Z(n372) );
  CLKBUF_X1 U4 ( .A(N73), .Z(n373) );
  CLKBUF_X1 U5 ( .A(N112), .Z(n374) );
  CLKBUF_X1 U6 ( .A(N86), .Z(n375) );
  CLKBUF_X1 U7 ( .A(N99), .Z(n376) );
  CLKBUF_X1 U8 ( .A(N60), .Z(n377) );
  CLKBUF_X1 U9 ( .A(N125), .Z(n378) );
  BUF_X1 U10 ( .A(N40), .Z(n529) );
  BUF_X1 U11 ( .A(N40), .Z(n528) );
  BUF_X1 U12 ( .A(N40), .Z(n527) );
  BUF_X1 U13 ( .A(N41), .Z(n526) );
  BUF_X1 U14 ( .A(N37), .Z(n453) );
  BUF_X1 U15 ( .A(N37), .Z(n452) );
  BUF_X1 U16 ( .A(N38), .Z(n451) );
  INV_X1 U17 ( .A(n553), .ZN(n546) );
  INV_X1 U18 ( .A(n558), .ZN(n548) );
  INV_X1 U19 ( .A(n563), .ZN(n550) );
  NAND3_X1 U20 ( .A1(cs_1), .A2(n547), .A3(oe_1), .ZN(n553) );
  INV_X1 U21 ( .A(we_1), .ZN(n547) );
  OAI22_X1 U22 ( .A1(1'b1), .A2(n546), .B1(n552), .B2(n553), .ZN(data_1[8]) );
  NAND2_X1 U23 ( .A1(N176), .A2(n546), .ZN(n552) );
  INV_X1 U24 ( .A(N40), .ZN(n530) );
  INV_X1 U25 ( .A(N41), .ZN(n531) );
  OAI22_X1 U26 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n554), .ZN(data_1[9]) );
  NAND2_X1 U27 ( .A1(N175), .A2(n546), .ZN(n554) );
  OAI22_X1 U28 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n555), .ZN(data_1[10])
         );
  NAND2_X1 U29 ( .A1(N174), .A2(n546), .ZN(n555) );
  OAI22_X1 U30 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n556), .ZN(data_1[11])
         );
  NAND2_X1 U31 ( .A1(N173), .A2(n546), .ZN(n556) );
  AND3_X1 U32 ( .A1(cs_1), .A2(n563), .A3(we_1), .ZN(n579) );
  NAND3_X1 U33 ( .A1(cs_0), .A2(n551), .A3(oe_0), .ZN(n558) );
  INV_X1 U34 ( .A(we_0), .ZN(n551) );
  NAND2_X1 U35 ( .A1(N42), .A2(n579), .ZN(n565) );
  NAND2_X1 U36 ( .A1(N39), .A2(n550), .ZN(n564) );
  NAND2_X1 U37 ( .A1(we_0), .A2(cs_0), .ZN(n563) );
  INV_X1 U38 ( .A(n576), .ZN(n537) );
  AOI22_X1 U39 ( .A1(data_1[8]), .A2(n579), .B1(data_0[8]), .B2(n550), .ZN(
        n576) );
  OAI22_X1 U45 ( .A1(1'b1), .A2(n548), .B1(n557), .B2(n558), .ZN(data_0[8]) );
  NAND2_X1 U46 ( .A1(N160), .A2(n548), .ZN(n557) );
  INV_X1 U47 ( .A(n577), .ZN(n536) );
  AOI22_X1 U50 ( .A1(data_1[9]), .A2(n579), .B1(data_0[9]), .B2(n550), .ZN(
        n577) );
  OAI22_X1 U51 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n559), .ZN(data_0[9]) );
  NAND2_X1 U53 ( .A1(N159), .A2(n548), .ZN(n559) );
  INV_X1 U54 ( .A(n578), .ZN(n535) );
  AOI22_X1 U55 ( .A1(data_1[10]), .A2(n579), .B1(data_0[10]), .B2(n550), .ZN(
        n578) );
  OAI22_X1 U56 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n560), .ZN(data_0[10])
         );
  NAND2_X1 U57 ( .A1(N158), .A2(n548), .ZN(n560) );
  INV_X1 U58 ( .A(n580), .ZN(n534) );
  AOI22_X1 U59 ( .A1(data_1[11]), .A2(n579), .B1(data_0[11]), .B2(n550), .ZN(
        n580) );
  OAI22_X1 U60 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n561), .ZN(data_0[11])
         );
  NAND2_X1 U61 ( .A1(N157), .A2(n548), .ZN(n561) );
  INV_X1 U62 ( .A(n568), .ZN(n545) );
  AOI22_X1 U63 ( .A1(data_1[0]), .A2(n579), .B1(data_0[0]), .B2(n550), .ZN(
        n568) );
  INV_X1 U64 ( .A(n569), .ZN(n544) );
  AOI22_X1 U65 ( .A1(data_1[1]), .A2(n579), .B1(data_0[1]), .B2(n550), .ZN(
        n569) );
  INV_X1 U66 ( .A(n570), .ZN(n543) );
  AOI22_X1 U67 ( .A1(data_1[2]), .A2(n579), .B1(data_0[2]), .B2(n550), .ZN(
        n570) );
  INV_X1 U69 ( .A(n571), .ZN(n542) );
  AOI22_X1 U70 ( .A1(data_1[3]), .A2(n579), .B1(data_0[3]), .B2(n550), .ZN(
        n571) );
  INV_X1 U71 ( .A(n572), .ZN(n541) );
  AOI22_X1 U72 ( .A1(data_1[4]), .A2(n579), .B1(data_0[4]), .B2(n550), .ZN(
        n572) );
  INV_X1 U73 ( .A(n573), .ZN(n540) );
  AOI22_X1 U74 ( .A1(data_1[5]), .A2(n579), .B1(data_0[5]), .B2(n550), .ZN(
        n573) );
  INV_X1 U75 ( .A(n574), .ZN(n539) );
  AOI22_X1 U76 ( .A1(data_1[6]), .A2(n579), .B1(data_0[6]), .B2(n550), .ZN(
        n574) );
  INV_X1 U77 ( .A(n575), .ZN(n538) );
  AOI22_X1 U78 ( .A1(data_1[7]), .A2(n579), .B1(data_0[7]), .B2(n550), .ZN(
        n575) );
  NAND2_X1 U79 ( .A1(n579), .A2(n549), .ZN(n567) );
  INV_X1 U80 ( .A(N42), .ZN(n549) );
  INV_X1 U81 ( .A(N37), .ZN(n532) );
  INV_X1 U82 ( .A(N38), .ZN(n533) );
  OR2_X1 U83 ( .A1(n563), .A2(N39), .ZN(n566) );
  MUX2_X1 U84 ( .A(\mem[6][0] ), .B(\mem[7][0] ), .S(n452), .Z(n379) );
  MUX2_X1 U85 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .S(n452), .Z(n380) );
  MUX2_X1 U86 ( .A(n380), .B(n379), .S(N38), .Z(n381) );
  MUX2_X1 U87 ( .A(\mem[2][0] ), .B(\mem[3][0] ), .S(n452), .Z(n382) );
  MUX2_X1 U88 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .S(n452), .Z(n383) );
  MUX2_X1 U89 ( .A(n383), .B(n382), .S(N38), .Z(n384) );
  MUX2_X1 U90 ( .A(n384), .B(n381), .S(N39), .Z(N168) );
  MUX2_X1 U91 ( .A(\mem[6][1] ), .B(\mem[7][1] ), .S(n452), .Z(n385) );
  MUX2_X1 U92 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .S(n452), .Z(n386) );
  MUX2_X1 U93 ( .A(n386), .B(n385), .S(N38), .Z(n387) );
  MUX2_X1 U94 ( .A(\mem[2][1] ), .B(\mem[3][1] ), .S(n452), .Z(n388) );
  MUX2_X1 U95 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .S(n452), .Z(n389) );
  MUX2_X1 U96 ( .A(n389), .B(n388), .S(N38), .Z(n390) );
  MUX2_X1 U97 ( .A(n390), .B(n387), .S(N39), .Z(N167) );
  MUX2_X1 U98 ( .A(\mem[6][2] ), .B(\mem[7][2] ), .S(n452), .Z(n391) );
  MUX2_X1 U99 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .S(n452), .Z(n392) );
  MUX2_X1 U100 ( .A(n392), .B(n391), .S(N38), .Z(n393) );
  MUX2_X1 U101 ( .A(\mem[2][2] ), .B(\mem[3][2] ), .S(n452), .Z(n394) );
  MUX2_X1 U102 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .S(n452), .Z(n395) );
  MUX2_X1 U103 ( .A(n395), .B(n394), .S(N38), .Z(n396) );
  MUX2_X1 U104 ( .A(n396), .B(n393), .S(N39), .Z(N166) );
  MUX2_X1 U105 ( .A(\mem[6][3] ), .B(\mem[7][3] ), .S(n453), .Z(n397) );
  MUX2_X1 U106 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .S(n453), .Z(n398) );
  MUX2_X1 U107 ( .A(n398), .B(n397), .S(n451), .Z(n399) );
  MUX2_X1 U108 ( .A(\mem[2][3] ), .B(\mem[3][3] ), .S(n453), .Z(n400) );
  MUX2_X1 U109 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .S(n453), .Z(n401) );
  MUX2_X1 U110 ( .A(n401), .B(n400), .S(N38), .Z(n402) );
  MUX2_X1 U111 ( .A(n402), .B(n399), .S(N39), .Z(N165) );
  MUX2_X1 U112 ( .A(\mem[6][4] ), .B(\mem[7][4] ), .S(n453), .Z(n403) );
  MUX2_X1 U113 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .S(n453), .Z(n404) );
  MUX2_X1 U114 ( .A(n404), .B(n403), .S(n451), .Z(n405) );
  MUX2_X1 U115 ( .A(\mem[2][4] ), .B(\mem[3][4] ), .S(n453), .Z(n406) );
  MUX2_X1 U116 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .S(n453), .Z(n407) );
  MUX2_X1 U117 ( .A(n407), .B(n406), .S(N38), .Z(n408) );
  MUX2_X1 U118 ( .A(n408), .B(n405), .S(N39), .Z(N164) );
  MUX2_X1 U119 ( .A(\mem[6][5] ), .B(\mem[7][5] ), .S(n453), .Z(n409) );
  MUX2_X1 U120 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .S(n453), .Z(n410) );
  MUX2_X1 U121 ( .A(n410), .B(n409), .S(n451), .Z(n411) );
  MUX2_X1 U122 ( .A(\mem[2][5] ), .B(\mem[3][5] ), .S(n453), .Z(n412) );
  MUX2_X1 U123 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .S(n453), .Z(n413) );
  MUX2_X1 U124 ( .A(n413), .B(n412), .S(N38), .Z(n414) );
  MUX2_X1 U125 ( .A(n414), .B(n411), .S(N39), .Z(N163) );
  MUX2_X1 U126 ( .A(\mem[6][6] ), .B(\mem[7][6] ), .S(N37), .Z(n415) );
  MUX2_X1 U127 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .S(N37), .Z(n416) );
  MUX2_X1 U128 ( .A(n416), .B(n415), .S(n451), .Z(n417) );
  MUX2_X1 U129 ( .A(\mem[2][6] ), .B(\mem[3][6] ), .S(N37), .Z(n418) );
  MUX2_X1 U130 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .S(N37), .Z(n419) );
  MUX2_X1 U131 ( .A(n419), .B(n418), .S(n451), .Z(n420) );
  MUX2_X1 U132 ( .A(n420), .B(n417), .S(N39), .Z(N162) );
  MUX2_X1 U133 ( .A(\mem[6][7] ), .B(\mem[7][7] ), .S(N37), .Z(n421) );
  MUX2_X1 U134 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .S(N37), .Z(n422) );
  MUX2_X1 U135 ( .A(n422), .B(n421), .S(n451), .Z(n423) );
  MUX2_X1 U136 ( .A(\mem[2][7] ), .B(\mem[3][7] ), .S(n453), .Z(n424) );
  MUX2_X1 U137 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .S(n453), .Z(n425) );
  MUX2_X1 U138 ( .A(n425), .B(n424), .S(n451), .Z(n426) );
  MUX2_X1 U139 ( .A(n426), .B(n423), .S(N39), .Z(N161) );
  MUX2_X1 U140 ( .A(\mem[6][8] ), .B(\mem[7][8] ), .S(n452), .Z(n427) );
  MUX2_X1 U141 ( .A(\mem[4][8] ), .B(\mem[5][8] ), .S(N37), .Z(n428) );
  MUX2_X1 U142 ( .A(n428), .B(n427), .S(n451), .Z(n429) );
  MUX2_X1 U143 ( .A(\mem[2][8] ), .B(\mem[3][8] ), .S(n452), .Z(n430) );
  MUX2_X1 U144 ( .A(\mem[0][8] ), .B(\mem[1][8] ), .S(n453), .Z(n431) );
  MUX2_X1 U145 ( .A(n431), .B(n430), .S(n451), .Z(n432) );
  MUX2_X1 U146 ( .A(n432), .B(n429), .S(N39), .Z(N160) );
  MUX2_X1 U147 ( .A(\mem[6][9] ), .B(\mem[7][9] ), .S(N37), .Z(n433) );
  MUX2_X1 U148 ( .A(\mem[4][9] ), .B(\mem[5][9] ), .S(n452), .Z(n434) );
  MUX2_X1 U149 ( .A(n434), .B(n433), .S(n451), .Z(n435) );
  MUX2_X1 U150 ( .A(\mem[2][9] ), .B(\mem[3][9] ), .S(N37), .Z(n436) );
  MUX2_X1 U151 ( .A(\mem[0][9] ), .B(\mem[1][9] ), .S(n453), .Z(n437) );
  MUX2_X1 U152 ( .A(n437), .B(n436), .S(n451), .Z(n438) );
  MUX2_X1 U153 ( .A(n438), .B(n435), .S(N39), .Z(N159) );
  MUX2_X1 U154 ( .A(\mem[6][10] ), .B(\mem[7][10] ), .S(n452), .Z(n439) );
  MUX2_X1 U155 ( .A(\mem[4][10] ), .B(\mem[5][10] ), .S(N37), .Z(n440) );
  MUX2_X1 U156 ( .A(n440), .B(n439), .S(n451), .Z(n441) );
  MUX2_X1 U157 ( .A(\mem[2][10] ), .B(\mem[3][10] ), .S(n453), .Z(n442) );
  MUX2_X1 U158 ( .A(\mem[0][10] ), .B(\mem[1][10] ), .S(n452), .Z(n443) );
  MUX2_X1 U159 ( .A(n443), .B(n442), .S(n451), .Z(n444) );
  MUX2_X1 U160 ( .A(n444), .B(n441), .S(N39), .Z(N158) );
  MUX2_X1 U161 ( .A(\mem[6][11] ), .B(\mem[7][11] ), .S(N37), .Z(n445) );
  MUX2_X1 U162 ( .A(\mem[4][11] ), .B(\mem[5][11] ), .S(n453), .Z(n446) );
  MUX2_X1 U163 ( .A(n446), .B(n445), .S(n451), .Z(n447) );
  MUX2_X1 U164 ( .A(\mem[2][11] ), .B(\mem[3][11] ), .S(n452), .Z(n448) );
  MUX2_X1 U165 ( .A(\mem[0][11] ), .B(\mem[1][11] ), .S(N37), .Z(n449) );
  MUX2_X1 U166 ( .A(n449), .B(n448), .S(n451), .Z(n450) );
  MUX2_X1 U167 ( .A(n450), .B(n447), .S(N39), .Z(N157) );
  MUX2_X1 U168 ( .A(\mem[6][0] ), .B(\mem[7][0] ), .S(N40), .Z(n454) );
  MUX2_X1 U169 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .S(N40), .Z(n455) );
  MUX2_X1 U170 ( .A(n455), .B(n454), .S(N41), .Z(n456) );
  MUX2_X1 U171 ( .A(\mem[2][0] ), .B(\mem[3][0] ), .S(N40), .Z(n457) );
  MUX2_X1 U172 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .S(N40), .Z(n458) );
  MUX2_X1 U173 ( .A(n458), .B(n457), .S(N41), .Z(n459) );
  MUX2_X1 U174 ( .A(n459), .B(n456), .S(N42), .Z(N184) );
  MUX2_X1 U175 ( .A(\mem[6][1] ), .B(\mem[7][1] ), .S(N40), .Z(n460) );
  MUX2_X1 U176 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .S(N40), .Z(n461) );
  MUX2_X1 U177 ( .A(n461), .B(n460), .S(N41), .Z(n462) );
  MUX2_X1 U178 ( .A(\mem[2][1] ), .B(\mem[3][1] ), .S(N40), .Z(n463) );
  MUX2_X1 U179 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .S(N40), .Z(n464) );
  MUX2_X1 U180 ( .A(n464), .B(n463), .S(N41), .Z(n465) );
  MUX2_X1 U181 ( .A(n465), .B(n462), .S(N42), .Z(N183) );
  MUX2_X1 U182 ( .A(\mem[6][2] ), .B(\mem[7][2] ), .S(N40), .Z(n466) );
  MUX2_X1 U183 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .S(N40), .Z(n467) );
  MUX2_X1 U184 ( .A(n467), .B(n466), .S(N41), .Z(n468) );
  MUX2_X1 U185 ( .A(\mem[2][2] ), .B(\mem[3][2] ), .S(N40), .Z(n469) );
  MUX2_X1 U186 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .S(N40), .Z(n470) );
  MUX2_X1 U187 ( .A(n470), .B(n469), .S(N41), .Z(n471) );
  MUX2_X1 U188 ( .A(n471), .B(n468), .S(N42), .Z(N182) );
  MUX2_X1 U189 ( .A(\mem[6][3] ), .B(\mem[7][3] ), .S(n527), .Z(n472) );
  MUX2_X1 U190 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .S(n527), .Z(n473) );
  MUX2_X1 U191 ( .A(n473), .B(n472), .S(N41), .Z(n474) );
  MUX2_X1 U192 ( .A(\mem[2][3] ), .B(\mem[3][3] ), .S(n527), .Z(n475) );
  MUX2_X1 U193 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .S(n527), .Z(n476) );
  MUX2_X1 U194 ( .A(n476), .B(n475), .S(N41), .Z(n477) );
  MUX2_X1 U195 ( .A(n477), .B(n474), .S(N42), .Z(N181) );
  MUX2_X1 U196 ( .A(\mem[6][4] ), .B(\mem[7][4] ), .S(n527), .Z(n478) );
  MUX2_X1 U197 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .S(n527), .Z(n479) );
  MUX2_X1 U198 ( .A(n479), .B(n478), .S(N41), .Z(n480) );
  MUX2_X1 U199 ( .A(\mem[2][4] ), .B(\mem[3][4] ), .S(n527), .Z(n481) );
  MUX2_X1 U200 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .S(n527), .Z(n482) );
  MUX2_X1 U201 ( .A(n482), .B(n481), .S(N41), .Z(n483) );
  MUX2_X1 U202 ( .A(n483), .B(n480), .S(N42), .Z(N180) );
  MUX2_X1 U203 ( .A(\mem[6][5] ), .B(\mem[7][5] ), .S(n527), .Z(n484) );
  MUX2_X1 U204 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .S(n527), .Z(n485) );
  MUX2_X1 U205 ( .A(n485), .B(n484), .S(N41), .Z(n486) );
  MUX2_X1 U206 ( .A(\mem[2][5] ), .B(\mem[3][5] ), .S(n527), .Z(n487) );
  MUX2_X1 U207 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .S(n527), .Z(n488) );
  MUX2_X1 U208 ( .A(n488), .B(n487), .S(N41), .Z(n489) );
  MUX2_X1 U209 ( .A(n489), .B(n486), .S(N42), .Z(N179) );
  MUX2_X1 U210 ( .A(\mem[6][6] ), .B(\mem[7][6] ), .S(n528), .Z(n490) );
  MUX2_X1 U211 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .S(n528), .Z(n491) );
  MUX2_X1 U212 ( .A(n491), .B(n490), .S(n526), .Z(n492) );
  MUX2_X1 U213 ( .A(\mem[2][6] ), .B(\mem[3][6] ), .S(n528), .Z(n493) );
  MUX2_X1 U214 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .S(n528), .Z(n494) );
  MUX2_X1 U215 ( .A(n494), .B(n493), .S(n526), .Z(n495) );
  MUX2_X1 U216 ( .A(n495), .B(n492), .S(N42), .Z(N178) );
  MUX2_X1 U217 ( .A(\mem[6][7] ), .B(\mem[7][7] ), .S(n528), .Z(n496) );
  MUX2_X1 U218 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .S(n528), .Z(n497) );
  MUX2_X1 U219 ( .A(n497), .B(n496), .S(n526), .Z(n498) );
  MUX2_X1 U220 ( .A(\mem[2][7] ), .B(\mem[3][7] ), .S(n528), .Z(n499) );
  MUX2_X1 U221 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .S(n528), .Z(n500) );
  MUX2_X1 U222 ( .A(n500), .B(n499), .S(n526), .Z(n501) );
  MUX2_X1 U223 ( .A(n501), .B(n498), .S(N42), .Z(N177) );
  MUX2_X1 U224 ( .A(\mem[6][8] ), .B(\mem[7][8] ), .S(n528), .Z(n502) );
  MUX2_X1 U225 ( .A(\mem[4][8] ), .B(\mem[5][8] ), .S(n528), .Z(n503) );
  MUX2_X1 U226 ( .A(n503), .B(n502), .S(n526), .Z(n504) );
  MUX2_X1 U227 ( .A(\mem[2][8] ), .B(\mem[3][8] ), .S(n528), .Z(n505) );
  MUX2_X1 U228 ( .A(\mem[0][8] ), .B(\mem[1][8] ), .S(n528), .Z(n506) );
  MUX2_X1 U229 ( .A(n506), .B(n505), .S(n526), .Z(n507) );
  MUX2_X1 U230 ( .A(n507), .B(n504), .S(N42), .Z(N176) );
  MUX2_X1 U231 ( .A(\mem[6][9] ), .B(\mem[7][9] ), .S(n529), .Z(n508) );
  MUX2_X1 U232 ( .A(\mem[4][9] ), .B(\mem[5][9] ), .S(n529), .Z(n509) );
  MUX2_X1 U233 ( .A(n509), .B(n508), .S(n526), .Z(n510) );
  MUX2_X1 U234 ( .A(\mem[2][9] ), .B(\mem[3][9] ), .S(n529), .Z(n511) );
  MUX2_X1 U235 ( .A(\mem[0][9] ), .B(\mem[1][9] ), .S(n529), .Z(n512) );
  MUX2_X1 U236 ( .A(n512), .B(n511), .S(n526), .Z(n513) );
  MUX2_X1 U237 ( .A(n513), .B(n510), .S(N42), .Z(N175) );
  MUX2_X1 U238 ( .A(\mem[6][10] ), .B(\mem[7][10] ), .S(n529), .Z(n514) );
  MUX2_X1 U239 ( .A(\mem[4][10] ), .B(\mem[5][10] ), .S(n529), .Z(n515) );
  MUX2_X1 U240 ( .A(n515), .B(n514), .S(n526), .Z(n516) );
  MUX2_X1 U241 ( .A(\mem[2][10] ), .B(\mem[3][10] ), .S(n529), .Z(n517) );
  MUX2_X1 U242 ( .A(\mem[0][10] ), .B(\mem[1][10] ), .S(n529), .Z(n518) );
  MUX2_X1 U243 ( .A(n518), .B(n517), .S(n526), .Z(n519) );
  MUX2_X1 U244 ( .A(n519), .B(n516), .S(N42), .Z(N174) );
  MUX2_X1 U245 ( .A(\mem[6][11] ), .B(\mem[7][11] ), .S(n529), .Z(n520) );
  MUX2_X1 U246 ( .A(\mem[4][11] ), .B(\mem[5][11] ), .S(n529), .Z(n521) );
  MUX2_X1 U247 ( .A(n521), .B(n520), .S(n526), .Z(n522) );
  MUX2_X1 U248 ( .A(\mem[2][11] ), .B(\mem[3][11] ), .S(n529), .Z(n523) );
  MUX2_X1 U249 ( .A(\mem[0][11] ), .B(\mem[1][11] ), .S(n529), .Z(n524) );
  MUX2_X1 U250 ( .A(n524), .B(n523), .S(n526), .Z(n525) );
  MUX2_X1 U251 ( .A(n525), .B(n522), .S(N42), .Z(N173) );
endmodule


module syn_fifo_3 ( clk, rst, wr_cs, rd_cs, data_in, rd_en, wr_en, data_out, 
        empty, full );
  input [11:0] data_in;
  output [11:0] data_out;
  input clk, rst, wr_cs, rd_cs, rd_en, wr_en;
  output empty, full;
  wire   N33, N40, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178;
  wire   [3:0] status_cnt;
  wire   [2:0] wr_pointer;
  wire   [2:0] rd_pointer;
  wire   [11:0] data_ram;
  assign empty = N33;
  assign full = N40;

  DFFR_X1 \wr_pointer_reg[2]  ( .D(n118), .CK(clk), .RN(n105), .Q(
        wr_pointer[2]), .QN(n135) );
  DFFR_X1 \rd_pointer_reg[2]  ( .D(n121), .CK(clk), .RN(n105), .Q(
        rd_pointer[2]), .QN(n134) );
  DFFR_X1 \data_out_reg[11]  ( .D(n122), .CK(clk), .RN(n105), .Q(data_out[11]), 
        .QN(n136) );
  DFFR_X1 \data_out_reg[10]  ( .D(n123), .CK(clk), .RN(n105), .Q(data_out[10]), 
        .QN(n137) );
  DFFR_X1 \data_out_reg[9]  ( .D(n124), .CK(clk), .RN(n105), .Q(data_out[9]), 
        .QN(n138) );
  DFFR_X1 \data_out_reg[8]  ( .D(n125), .CK(clk), .RN(n105), .Q(data_out[8]), 
        .QN(n139) );
  DFFR_X1 \data_out_reg[7]  ( .D(n126), .CK(clk), .RN(n105), .Q(data_out[7]), 
        .QN(n140) );
  DFFR_X1 \data_out_reg[6]  ( .D(n127), .CK(clk), .RN(n105), .Q(data_out[6]), 
        .QN(n141) );
  DFFR_X1 \data_out_reg[5]  ( .D(n128), .CK(clk), .RN(n105), .Q(data_out[5]), 
        .QN(n142) );
  DFFR_X1 \data_out_reg[4]  ( .D(n129), .CK(clk), .RN(n105), .Q(data_out[4]), 
        .QN(n143) );
  DFFR_X1 \data_out_reg[3]  ( .D(n130), .CK(clk), .RN(n105), .Q(data_out[3]), 
        .QN(n144) );
  DFFR_X1 \data_out_reg[2]  ( .D(n131), .CK(clk), .RN(n105), .Q(data_out[2]), 
        .QN(n145) );
  DFFR_X1 \data_out_reg[1]  ( .D(n132), .CK(clk), .RN(n105), .Q(data_out[1]), 
        .QN(n146) );
  DFFR_X1 \data_out_reg[0]  ( .D(n133), .CK(clk), .RN(n105), .Q(data_out[0]), 
        .QN(n147) );
  DFFR_X1 \status_cnt_reg[0]  ( .D(n112), .CK(clk), .RN(n105), .Q(
        status_cnt[0]), .QN(n99) );
  DFFR_X1 \status_cnt_reg[1]  ( .D(n113), .CK(clk), .RN(n105), .Q(
        status_cnt[1]), .QN(n100) );
  DFFR_X1 \status_cnt_reg[2]  ( .D(n114), .CK(clk), .RN(n105), .Q(
        status_cnt[2]), .QN(n101) );
  XOR2_X1 U27 ( .A(n134), .B(n165), .Z(n121) );
  XOR2_X1 U29 ( .A(rd_pointer[1]), .B(n164), .Z(n120) );
  XOR2_X1 U31 ( .A(rd_pointer[0]), .B(n110), .Z(n119) );
  XOR2_X1 U32 ( .A(n135), .B(n163), .Z(n118) );
  XOR2_X1 U34 ( .A(wr_pointer[1]), .B(n162), .Z(n117) );
  XOR2_X1 U36 ( .A(n104), .B(n161), .Z(n116) );
  NAND3_X1 U49 ( .A1(n99), .A2(n100), .A3(n109), .ZN(n154) );
  NAND3_X1 U50 ( .A1(n158), .A2(n100), .A3(status_cnt[0]), .ZN(n151) );
  XOR2_X1 U53 ( .A(n150), .B(n99), .Z(n112) );
  NAND3_X1 U58 ( .A1(n161), .A2(n148), .A3(n110), .ZN(n153) );
  NAND4_X1 U63 ( .A1(status_cnt[2]), .A2(status_cnt[1]), .A3(status_cnt[0]), 
        .A4(n111), .ZN(n160) );
  ram_dp_ar_aw_3 DP_RAM ( .address_0(wr_pointer), .data_0(data_in), .cs_0(
        wr_cs), .we_0(wr_en), .oe_0(1'b0), .address_1(rd_pointer), .data_1(
        data_ram), .cs_1(rd_cs), .we_1(1'b0), .oe_1(rd_en) );
  DFFR_X1 \wr_pointer_reg[0]  ( .D(n116), .CK(clk), .RN(n105), .Q(
        wr_pointer[0]), .QN(n104) );
  DFFR_X1 \wr_pointer_reg[1]  ( .D(n117), .CK(clk), .RN(n105), .Q(
        wr_pointer[1]) );
  DFFR_X1 \rd_pointer_reg[0]  ( .D(n119), .CK(clk), .RN(n105), .Q(
        rd_pointer[0]) );
  DFFR_X1 \rd_pointer_reg[1]  ( .D(n120), .CK(clk), .RN(n105), .Q(
        rd_pointer[1]) );
  DFFR_X1 \status_cnt_reg[3]  ( .D(n115), .CK(clk), .RN(rst), .Q(status_cnt[3]), .QN(n111) );
  NOR3_X2 U3 ( .A1(n102), .A2(n103), .A3(n150), .ZN(n152) );
  AOI211_X4 U4 ( .C1(n149), .C2(status_cnt[3]), .A(n110), .B(n161), .ZN(n158)
         );
  INV_X4 U5 ( .A(n178), .ZN(n110) );
  AND2_X1 U6 ( .A1(n99), .A2(n158), .ZN(n102) );
  AND2_X1 U7 ( .A1(n109), .A2(status_cnt[0]), .ZN(n103) );
  INV_X1 U8 ( .A(n153), .ZN(n109) );
  CLKBUF_X1 U9 ( .A(rst), .Z(n105) );
  INV_X1 U10 ( .A(n148), .ZN(N33) );
  INV_X1 U11 ( .A(n154), .ZN(n108) );
  NOR2_X1 U12 ( .A1(n109), .A2(n158), .ZN(n150) );
  NAND2_X1 U13 ( .A1(n149), .A2(n111), .ZN(n148) );
  INV_X1 U14 ( .A(n158), .ZN(n107) );
  OAI21_X1 U15 ( .B1(n106), .B2(n101), .A(n156), .ZN(n114) );
  OAI21_X1 U16 ( .B1(n155), .B2(n108), .A(n101), .ZN(n156) );
  INV_X1 U17 ( .A(n157), .ZN(n106) );
  NOR3_X1 U18 ( .A1(n100), .A2(n107), .A3(n99), .ZN(n155) );
  NOR2_X1 U19 ( .A1(n104), .A2(n161), .ZN(n162) );
  NAND2_X1 U20 ( .A1(rd_en), .A2(rd_cs), .ZN(n178) );
  OAI221_X1 U21 ( .B1(status_cnt[1]), .B2(n107), .C1(n153), .C2(n100), .A(n152), .ZN(n157) );
  NOR3_X1 U22 ( .A1(status_cnt[1]), .A2(status_cnt[2]), .A3(status_cnt[0]), 
        .ZN(n149) );
  OAI22_X1 U23 ( .A1(n107), .A2(n160), .B1(n159), .B2(n111), .ZN(n115) );
  AOI221_X1 U24 ( .B1(n158), .B2(n101), .C1(status_cnt[2]), .C2(n109), .A(n157), .ZN(n159) );
  INV_X1 U25 ( .A(n160), .ZN(N40) );
  OAI22_X1 U26 ( .A1(n147), .A2(n110), .B1(n178), .B2(n177), .ZN(n133) );
  INV_X1 U28 ( .A(data_ram[0]), .ZN(n177) );
  OAI22_X1 U30 ( .A1(n146), .A2(n110), .B1(n178), .B2(n176), .ZN(n132) );
  INV_X1 U33 ( .A(data_ram[1]), .ZN(n176) );
  OAI22_X1 U35 ( .A1(n145), .A2(n110), .B1(n178), .B2(n175), .ZN(n131) );
  INV_X1 U37 ( .A(data_ram[2]), .ZN(n175) );
  OAI22_X1 U38 ( .A1(n144), .A2(n110), .B1(n178), .B2(n174), .ZN(n130) );
  INV_X1 U39 ( .A(data_ram[3]), .ZN(n174) );
  OAI22_X1 U40 ( .A1(n143), .A2(n110), .B1(n178), .B2(n173), .ZN(n129) );
  INV_X1 U41 ( .A(data_ram[4]), .ZN(n173) );
  OAI22_X1 U42 ( .A1(n142), .A2(n110), .B1(n178), .B2(n172), .ZN(n128) );
  INV_X1 U43 ( .A(data_ram[5]), .ZN(n172) );
  OAI22_X1 U44 ( .A1(n141), .A2(n110), .B1(n178), .B2(n171), .ZN(n127) );
  INV_X1 U45 ( .A(data_ram[6]), .ZN(n171) );
  OAI22_X1 U46 ( .A1(n140), .A2(n110), .B1(n178), .B2(n170), .ZN(n126) );
  INV_X1 U47 ( .A(data_ram[7]), .ZN(n170) );
  OAI22_X1 U48 ( .A1(n138), .A2(n110), .B1(n178), .B2(n168), .ZN(n124) );
  INV_X1 U51 ( .A(data_ram[9]), .ZN(n168) );
  OAI22_X1 U52 ( .A1(n137), .A2(n110), .B1(n178), .B2(n167), .ZN(n123) );
  INV_X1 U54 ( .A(data_ram[10]), .ZN(n167) );
  OAI22_X1 U55 ( .A1(n136), .A2(n110), .B1(n178), .B2(n166), .ZN(n122) );
  INV_X1 U56 ( .A(data_ram[11]), .ZN(n166) );
  OAI22_X1 U57 ( .A1(n139), .A2(n110), .B1(n178), .B2(n169), .ZN(n125) );
  INV_X1 U59 ( .A(data_ram[8]), .ZN(n169) );
  NAND2_X1 U60 ( .A1(rd_pointer[1]), .A2(n164), .ZN(n165) );
  NAND2_X1 U61 ( .A1(wr_en), .A2(wr_cs), .ZN(n161) );
  OAI211_X1 U62 ( .C1(n152), .C2(n100), .A(n151), .B(n154), .ZN(n113) );
  AND2_X1 U64 ( .A1(rd_pointer[0]), .A2(n110), .ZN(n164) );
  NAND2_X1 U65 ( .A1(wr_pointer[1]), .A2(n162), .ZN(n163) );
endmodule


module ram_dp_ar_aw_2 ( address_0, data_0, cs_0, we_0, oe_0, address_1, data_1, 
        cs_1, we_1, oe_1 );
  input [2:0] address_0;
  inout [11:0] data_0;
  input [2:0] address_1;
  inout [11:0] data_1;
  input cs_0, we_0, oe_0, cs_1, we_1, oe_1;
  wire   N37, N38, N39, N40, N41, N42, \mem[0][11] , \mem[0][10] , \mem[0][9] ,
         \mem[0][8] , \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , \mem[1][11] ,
         \mem[1][10] , \mem[1][9] , \mem[1][8] , \mem[1][7] , \mem[1][6] ,
         \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] , \mem[1][1] ,
         \mem[1][0] , \mem[2][11] , \mem[2][10] , \mem[2][9] , \mem[2][8] ,
         \mem[2][7] , \mem[2][6] , \mem[2][5] , \mem[2][4] , \mem[2][3] ,
         \mem[2][2] , \mem[2][1] , \mem[2][0] , \mem[3][11] , \mem[3][10] ,
         \mem[3][9] , \mem[3][8] , \mem[3][7] , \mem[3][6] , \mem[3][5] ,
         \mem[3][4] , \mem[3][3] , \mem[3][2] , \mem[3][1] , \mem[3][0] ,
         \mem[4][11] , \mem[4][10] , \mem[4][9] , \mem[4][8] , \mem[4][7] ,
         \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] , \mem[4][2] ,
         \mem[4][1] , \mem[4][0] , \mem[5][11] , \mem[5][10] , \mem[5][9] ,
         \mem[5][8] , \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] ,
         \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[6][11] ,
         \mem[6][10] , \mem[6][9] , \mem[6][8] , \mem[6][7] , \mem[6][6] ,
         \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] , \mem[6][1] ,
         \mem[6][0] , \mem[7][11] , \mem[7][10] , \mem[7][9] , \mem[7][8] ,
         \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] , \mem[7][3] ,
         \mem[7][2] , \mem[7][1] , \mem[7][0] , N47, N60, N73, N86, N99, N112,
         N125, N138, N157, N158, N159, N160, N161, N162, N163, N164, N165,
         N166, N167, N168, N173, N174, N175, N176, N177, N178, N179, N180,
         N181, N182, N183, N184, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476,
         n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487,
         n488, n489, n490, n491, n492, n493, n494, n495, n496, n497, n498,
         n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
         n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520,
         n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542,
         n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, n553,
         n554, n555, n556, n557, n558, n559, n560, n561, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580;
  assign N37 = address_0[0];
  assign N38 = address_0[1];
  assign N39 = address_0[2];
  assign N40 = address_1[0];
  assign N41 = address_1[1];
  assign N42 = address_1[2];

  OAI33_X1 U40 ( .A1(n531), .A2(n567), .A3(n530), .B1(n533), .B2(n566), .B3(
        n532), .ZN(N99) );
  OAI33_X1 U41 ( .A1(n565), .A2(N41), .A3(N40), .B1(n564), .B2(N38), .B3(N37), 
        .ZN(N86) );
  OAI33_X1 U42 ( .A1(n565), .A2(N41), .A3(n530), .B1(n564), .B2(N38), .B3(n532), .ZN(N73) );
  OAI33_X1 U43 ( .A1(n565), .A2(N40), .A3(n531), .B1(n564), .B2(N37), .B3(n533), .ZN(N60) );
  OAI33_X1 U44 ( .A1(n565), .A2(n530), .A3(n531), .B1(n564), .B2(n532), .B3(
        n533), .ZN(N47) );
  OAI33_X1 U48 ( .A1(n567), .A2(N41), .A3(N40), .B1(n566), .B2(N38), .B3(N37), 
        .ZN(N138) );
  OAI33_X1 U49 ( .A1(n530), .A2(N41), .A3(n567), .B1(n532), .B2(N38), .B3(n566), .ZN(N125) );
  OAI33_X1 U52 ( .A1(n531), .A2(N40), .A3(n567), .B1(n533), .B2(N37), .B3(n566), .ZN(N112) );
  TBUF_X1 \data_0_tri[0]  ( .A(N168), .EN(n558), .Z(data_0[0]) );
  TBUF_X1 \data_0_tri[1]  ( .A(N167), .EN(n558), .Z(data_0[1]) );
  TBUF_X1 \data_0_tri[2]  ( .A(N166), .EN(n558), .Z(data_0[2]) );
  TBUF_X1 \data_0_tri[3]  ( .A(N165), .EN(n558), .Z(data_0[3]) );
  TBUF_X1 \data_0_tri[4]  ( .A(N164), .EN(n558), .Z(data_0[4]) );
  TBUF_X1 \data_0_tri[5]  ( .A(N163), .EN(n558), .Z(data_0[5]) );
  TBUF_X1 \data_0_tri[6]  ( .A(N162), .EN(n558), .Z(data_0[6]) );
  TBUF_X1 \data_0_tri[7]  ( .A(N161), .EN(n558), .Z(data_0[7]) );
  TBUF_X1 \data_1_tri[0]  ( .A(N184), .EN(n553), .Z(data_1[0]) );
  TBUF_X1 \data_1_tri[1]  ( .A(N183), .EN(n553), .Z(data_1[1]) );
  TBUF_X1 \data_1_tri[2]  ( .A(N182), .EN(n553), .Z(data_1[2]) );
  TBUF_X1 \data_1_tri[3]  ( .A(N181), .EN(n553), .Z(data_1[3]) );
  TBUF_X1 \data_1_tri[4]  ( .A(N180), .EN(n553), .Z(data_1[4]) );
  TBUF_X1 \data_1_tri[5]  ( .A(N179), .EN(n553), .Z(data_1[5]) );
  TBUF_X1 \data_1_tri[6]  ( .A(N178), .EN(n553), .Z(data_1[6]) );
  TBUF_X1 \data_1_tri[7]  ( .A(N177), .EN(n553), .Z(data_1[7]) );
  DLH_X1 \mem_reg[1][11]  ( .G(n378), .D(n534), .Q(\mem[1][11] ) );
  DLH_X1 \mem_reg[1][10]  ( .G(n378), .D(n535), .Q(\mem[1][10] ) );
  DLH_X1 \mem_reg[1][9]  ( .G(n378), .D(n536), .Q(\mem[1][9] ) );
  DLH_X1 \mem_reg[1][8]  ( .G(n378), .D(n537), .Q(\mem[1][8] ) );
  DLH_X1 \mem_reg[1][7]  ( .G(n378), .D(n538), .Q(\mem[1][7] ) );
  DLH_X1 \mem_reg[1][6]  ( .G(n378), .D(n539), .Q(\mem[1][6] ) );
  DLH_X1 \mem_reg[1][5]  ( .G(n378), .D(n540), .Q(\mem[1][5] ) );
  DLH_X1 \mem_reg[1][4]  ( .G(n378), .D(n541), .Q(\mem[1][4] ) );
  DLH_X1 \mem_reg[1][3]  ( .G(n378), .D(n542), .Q(\mem[1][3] ) );
  DLH_X1 \mem_reg[1][2]  ( .G(n378), .D(n543), .Q(\mem[1][2] ) );
  DLH_X1 \mem_reg[1][1]  ( .G(n378), .D(n544), .Q(\mem[1][1] ) );
  DLH_X1 \mem_reg[1][0]  ( .G(n378), .D(n545), .Q(\mem[1][0] ) );
  DLH_X1 \mem_reg[6][11]  ( .G(n377), .D(n534), .Q(\mem[6][11] ) );
  DLH_X1 \mem_reg[6][10]  ( .G(n377), .D(n535), .Q(\mem[6][10] ) );
  DLH_X1 \mem_reg[6][9]  ( .G(n377), .D(n536), .Q(\mem[6][9] ) );
  DLH_X1 \mem_reg[6][8]  ( .G(n377), .D(n537), .Q(\mem[6][8] ) );
  DLH_X1 \mem_reg[6][7]  ( .G(n377), .D(n538), .Q(\mem[6][7] ) );
  DLH_X1 \mem_reg[6][6]  ( .G(n377), .D(n539), .Q(\mem[6][6] ) );
  DLH_X1 \mem_reg[6][5]  ( .G(n377), .D(n540), .Q(\mem[6][5] ) );
  DLH_X1 \mem_reg[6][4]  ( .G(n377), .D(n541), .Q(\mem[6][4] ) );
  DLH_X1 \mem_reg[6][3]  ( .G(n377), .D(n542), .Q(\mem[6][3] ) );
  DLH_X1 \mem_reg[6][2]  ( .G(n377), .D(n543), .Q(\mem[6][2] ) );
  DLH_X1 \mem_reg[6][1]  ( .G(n377), .D(n544), .Q(\mem[6][1] ) );
  DLH_X1 \mem_reg[6][0]  ( .G(n377), .D(n545), .Q(\mem[6][0] ) );
  DLH_X1 \mem_reg[3][11]  ( .G(n376), .D(n534), .Q(\mem[3][11] ) );
  DLH_X1 \mem_reg[3][10]  ( .G(n376), .D(n535), .Q(\mem[3][10] ) );
  DLH_X1 \mem_reg[3][9]  ( .G(n376), .D(n536), .Q(\mem[3][9] ) );
  DLH_X1 \mem_reg[3][8]  ( .G(n376), .D(n537), .Q(\mem[3][8] ) );
  DLH_X1 \mem_reg[3][7]  ( .G(n376), .D(n538), .Q(\mem[3][7] ) );
  DLH_X1 \mem_reg[3][6]  ( .G(n376), .D(n539), .Q(\mem[3][6] ) );
  DLH_X1 \mem_reg[3][5]  ( .G(n376), .D(n540), .Q(\mem[3][5] ) );
  DLH_X1 \mem_reg[3][4]  ( .G(n376), .D(n541), .Q(\mem[3][4] ) );
  DLH_X1 \mem_reg[3][3]  ( .G(n376), .D(n542), .Q(\mem[3][3] ) );
  DLH_X1 \mem_reg[3][2]  ( .G(n376), .D(n543), .Q(\mem[3][2] ) );
  DLH_X1 \mem_reg[3][1]  ( .G(n376), .D(n544), .Q(\mem[3][1] ) );
  DLH_X1 \mem_reg[3][0]  ( .G(n376), .D(n545), .Q(\mem[3][0] ) );
  DLH_X1 \mem_reg[4][11]  ( .G(n375), .D(n534), .Q(\mem[4][11] ) );
  DLH_X1 \mem_reg[4][10]  ( .G(n375), .D(n535), .Q(\mem[4][10] ) );
  DLH_X1 \mem_reg[4][9]  ( .G(n375), .D(n536), .Q(\mem[4][9] ) );
  DLH_X1 \mem_reg[4][8]  ( .G(n375), .D(n537), .Q(\mem[4][8] ) );
  DLH_X1 \mem_reg[4][7]  ( .G(n375), .D(n538), .Q(\mem[4][7] ) );
  DLH_X1 \mem_reg[4][6]  ( .G(n375), .D(n539), .Q(\mem[4][6] ) );
  DLH_X1 \mem_reg[4][5]  ( .G(n375), .D(n540), .Q(\mem[4][5] ) );
  DLH_X1 \mem_reg[4][4]  ( .G(n375), .D(n541), .Q(\mem[4][4] ) );
  DLH_X1 \mem_reg[4][3]  ( .G(n375), .D(n542), .Q(\mem[4][3] ) );
  DLH_X1 \mem_reg[4][2]  ( .G(n375), .D(n543), .Q(\mem[4][2] ) );
  DLH_X1 \mem_reg[4][1]  ( .G(n375), .D(n544), .Q(\mem[4][1] ) );
  DLH_X1 \mem_reg[4][0]  ( .G(n375), .D(n545), .Q(\mem[4][0] ) );
  DLH_X1 \mem_reg[2][11]  ( .G(n374), .D(n534), .Q(\mem[2][11] ) );
  DLH_X1 \mem_reg[2][10]  ( .G(n374), .D(n535), .Q(\mem[2][10] ) );
  DLH_X1 \mem_reg[2][9]  ( .G(n374), .D(n536), .Q(\mem[2][9] ) );
  DLH_X1 \mem_reg[2][8]  ( .G(n374), .D(n537), .Q(\mem[2][8] ) );
  DLH_X1 \mem_reg[2][7]  ( .G(n374), .D(n538), .Q(\mem[2][7] ) );
  DLH_X1 \mem_reg[2][6]  ( .G(n374), .D(n539), .Q(\mem[2][6] ) );
  DLH_X1 \mem_reg[2][5]  ( .G(n374), .D(n540), .Q(\mem[2][5] ) );
  DLH_X1 \mem_reg[2][4]  ( .G(n374), .D(n541), .Q(\mem[2][4] ) );
  DLH_X1 \mem_reg[2][3]  ( .G(n374), .D(n542), .Q(\mem[2][3] ) );
  DLH_X1 \mem_reg[2][2]  ( .G(n374), .D(n543), .Q(\mem[2][2] ) );
  DLH_X1 \mem_reg[2][1]  ( .G(n374), .D(n544), .Q(\mem[2][1] ) );
  DLH_X1 \mem_reg[2][0]  ( .G(n374), .D(n545), .Q(\mem[2][0] ) );
  DLH_X1 \mem_reg[5][11]  ( .G(n373), .D(n534), .Q(\mem[5][11] ) );
  DLH_X1 \mem_reg[5][10]  ( .G(n373), .D(n535), .Q(\mem[5][10] ) );
  DLH_X1 \mem_reg[5][9]  ( .G(n373), .D(n536), .Q(\mem[5][9] ) );
  DLH_X1 \mem_reg[5][8]  ( .G(n373), .D(n537), .Q(\mem[5][8] ) );
  DLH_X1 \mem_reg[5][7]  ( .G(n373), .D(n538), .Q(\mem[5][7] ) );
  DLH_X1 \mem_reg[5][6]  ( .G(n373), .D(n539), .Q(\mem[5][6] ) );
  DLH_X1 \mem_reg[5][5]  ( .G(n373), .D(n540), .Q(\mem[5][5] ) );
  DLH_X1 \mem_reg[5][4]  ( .G(n373), .D(n541), .Q(\mem[5][4] ) );
  DLH_X1 \mem_reg[5][3]  ( .G(n373), .D(n542), .Q(\mem[5][3] ) );
  DLH_X1 \mem_reg[5][2]  ( .G(n373), .D(n543), .Q(\mem[5][2] ) );
  DLH_X1 \mem_reg[5][1]  ( .G(n373), .D(n544), .Q(\mem[5][1] ) );
  DLH_X1 \mem_reg[5][0]  ( .G(n373), .D(n545), .Q(\mem[5][0] ) );
  DLH_X1 \mem_reg[0][11]  ( .G(n372), .D(n534), .Q(\mem[0][11] ) );
  DLH_X1 \mem_reg[0][10]  ( .G(n372), .D(n535), .Q(\mem[0][10] ) );
  DLH_X1 \mem_reg[0][9]  ( .G(n372), .D(n536), .Q(\mem[0][9] ) );
  DLH_X1 \mem_reg[0][8]  ( .G(n372), .D(n537), .Q(\mem[0][8] ) );
  DLH_X1 \mem_reg[0][7]  ( .G(n372), .D(n538), .Q(\mem[0][7] ) );
  DLH_X1 \mem_reg[0][6]  ( .G(n372), .D(n539), .Q(\mem[0][6] ) );
  DLH_X1 \mem_reg[0][5]  ( .G(n372), .D(n540), .Q(\mem[0][5] ) );
  DLH_X1 \mem_reg[0][4]  ( .G(n372), .D(n541), .Q(\mem[0][4] ) );
  DLH_X1 \mem_reg[0][3]  ( .G(n372), .D(n542), .Q(\mem[0][3] ) );
  DLH_X1 \mem_reg[0][2]  ( .G(n372), .D(n543), .Q(\mem[0][2] ) );
  DLH_X1 \mem_reg[0][1]  ( .G(n372), .D(n544), .Q(\mem[0][1] ) );
  DLH_X1 \mem_reg[0][0]  ( .G(n372), .D(n545), .Q(\mem[0][0] ) );
  DLH_X1 \mem_reg[7][11]  ( .G(n371), .D(n534), .Q(\mem[7][11] ) );
  DLH_X1 \mem_reg[7][10]  ( .G(n371), .D(n535), .Q(\mem[7][10] ) );
  DLH_X1 \mem_reg[7][9]  ( .G(n371), .D(n536), .Q(\mem[7][9] ) );
  DLH_X1 \mem_reg[7][8]  ( .G(n371), .D(n537), .Q(\mem[7][8] ) );
  DLH_X1 \mem_reg[7][7]  ( .G(n371), .D(n538), .Q(\mem[7][7] ) );
  DLH_X1 \mem_reg[7][6]  ( .G(n371), .D(n539), .Q(\mem[7][6] ) );
  DLH_X1 \mem_reg[7][5]  ( .G(n371), .D(n540), .Q(\mem[7][5] ) );
  DLH_X1 \mem_reg[7][4]  ( .G(n371), .D(n541), .Q(\mem[7][4] ) );
  DLH_X1 \mem_reg[7][3]  ( .G(n371), .D(n542), .Q(\mem[7][3] ) );
  DLH_X1 \mem_reg[7][2]  ( .G(n371), .D(n543), .Q(\mem[7][2] ) );
  DLH_X1 \mem_reg[7][1]  ( .G(n371), .D(n544), .Q(\mem[7][1] ) );
  DLH_X1 \mem_reg[7][0]  ( .G(n371), .D(n545), .Q(\mem[7][0] ) );
  CLKBUF_X1 U2 ( .A(N47), .Z(n371) );
  CLKBUF_X1 U3 ( .A(N138), .Z(n372) );
  CLKBUF_X1 U4 ( .A(N73), .Z(n373) );
  CLKBUF_X1 U5 ( .A(N112), .Z(n374) );
  CLKBUF_X1 U6 ( .A(N86), .Z(n375) );
  CLKBUF_X1 U7 ( .A(N99), .Z(n376) );
  CLKBUF_X1 U8 ( .A(N60), .Z(n377) );
  CLKBUF_X1 U9 ( .A(N125), .Z(n378) );
  BUF_X1 U10 ( .A(N40), .Z(n529) );
  BUF_X1 U11 ( .A(N40), .Z(n528) );
  BUF_X1 U12 ( .A(N40), .Z(n527) );
  BUF_X1 U13 ( .A(N41), .Z(n526) );
  BUF_X1 U14 ( .A(N37), .Z(n453) );
  BUF_X1 U15 ( .A(N37), .Z(n452) );
  BUF_X1 U16 ( .A(N38), .Z(n451) );
  INV_X1 U17 ( .A(n553), .ZN(n546) );
  INV_X1 U18 ( .A(n558), .ZN(n548) );
  INV_X1 U19 ( .A(n563), .ZN(n550) );
  NAND3_X1 U20 ( .A1(cs_1), .A2(n547), .A3(oe_1), .ZN(n553) );
  INV_X1 U21 ( .A(we_1), .ZN(n547) );
  OAI22_X1 U22 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n554), .ZN(data_1[9]) );
  NAND2_X1 U23 ( .A1(N175), .A2(n546), .ZN(n554) );
  OAI22_X1 U24 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n555), .ZN(data_1[10])
         );
  NAND2_X1 U25 ( .A1(N174), .A2(n546), .ZN(n555) );
  OAI22_X1 U26 ( .A1(1'b1), .A2(n546), .B1(n553), .B2(n556), .ZN(data_1[11])
         );
  NAND2_X1 U27 ( .A1(N173), .A2(n546), .ZN(n556) );
  INV_X1 U28 ( .A(N40), .ZN(n530) );
  INV_X1 U29 ( .A(N41), .ZN(n531) );
  OAI22_X1 U30 ( .A1(1'b1), .A2(n546), .B1(n552), .B2(n553), .ZN(data_1[8]) );
  NAND2_X1 U31 ( .A1(N176), .A2(n546), .ZN(n552) );
  AND3_X1 U32 ( .A1(cs_1), .A2(n563), .A3(we_1), .ZN(n579) );
  NAND3_X1 U33 ( .A1(cs_0), .A2(n551), .A3(oe_0), .ZN(n558) );
  INV_X1 U34 ( .A(we_0), .ZN(n551) );
  NAND2_X1 U35 ( .A1(N42), .A2(n579), .ZN(n565) );
  NAND2_X1 U36 ( .A1(N39), .A2(n550), .ZN(n564) );
  NAND2_X1 U37 ( .A1(we_0), .A2(cs_0), .ZN(n563) );
  INV_X1 U38 ( .A(n576), .ZN(n537) );
  AOI22_X1 U39 ( .A1(data_1[8]), .A2(n579), .B1(data_0[8]), .B2(n550), .ZN(
        n576) );
  OAI22_X1 U45 ( .A1(1'b1), .A2(n548), .B1(n557), .B2(n558), .ZN(data_0[8]) );
  NAND2_X1 U46 ( .A1(N160), .A2(n548), .ZN(n557) );
  INV_X1 U47 ( .A(n577), .ZN(n536) );
  AOI22_X1 U50 ( .A1(data_1[9]), .A2(n579), .B1(data_0[9]), .B2(n550), .ZN(
        n577) );
  OAI22_X1 U51 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n559), .ZN(data_0[9]) );
  NAND2_X1 U53 ( .A1(N159), .A2(n548), .ZN(n559) );
  INV_X1 U54 ( .A(n578), .ZN(n535) );
  AOI22_X1 U55 ( .A1(data_1[10]), .A2(n579), .B1(data_0[10]), .B2(n550), .ZN(
        n578) );
  OAI22_X1 U56 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n560), .ZN(data_0[10])
         );
  NAND2_X1 U57 ( .A1(N158), .A2(n548), .ZN(n560) );
  INV_X1 U58 ( .A(n580), .ZN(n534) );
  AOI22_X1 U59 ( .A1(data_1[11]), .A2(n579), .B1(data_0[11]), .B2(n550), .ZN(
        n580) );
  OAI22_X1 U60 ( .A1(1'b1), .A2(n548), .B1(n558), .B2(n561), .ZN(data_0[11])
         );
  NAND2_X1 U61 ( .A1(N157), .A2(n548), .ZN(n561) );
  INV_X1 U62 ( .A(n568), .ZN(n545) );
  AOI22_X1 U63 ( .A1(data_1[0]), .A2(n579), .B1(data_0[0]), .B2(n550), .ZN(
        n568) );
  INV_X1 U64 ( .A(n569), .ZN(n544) );
  AOI22_X1 U65 ( .A1(data_1[1]), .A2(n579), .B1(data_0[1]), .B2(n550), .ZN(
        n569) );
  INV_X1 U66 ( .A(n570), .ZN(n543) );
  AOI22_X1 U67 ( .A1(data_1[2]), .A2(n579), .B1(data_0[2]), .B2(n550), .ZN(
        n570) );
  INV_X1 U69 ( .A(n571), .ZN(n542) );
  AOI22_X1 U70 ( .A1(data_1[3]), .A2(n579), .B1(data_0[3]), .B2(n550), .ZN(
        n571) );
  INV_X1 U71 ( .A(n572), .ZN(n541) );
  AOI22_X1 U72 ( .A1(data_1[4]), .A2(n579), .B1(data_0[4]), .B2(n550), .ZN(
        n572) );
  INV_X1 U73 ( .A(n573), .ZN(n540) );
  AOI22_X1 U74 ( .A1(data_1[5]), .A2(n579), .B1(data_0[5]), .B2(n550), .ZN(
        n573) );
  INV_X1 U75 ( .A(n574), .ZN(n539) );
  AOI22_X1 U76 ( .A1(data_1[6]), .A2(n579), .B1(data_0[6]), .B2(n550), .ZN(
        n574) );
  INV_X1 U77 ( .A(n575), .ZN(n538) );
  AOI22_X1 U78 ( .A1(data_1[7]), .A2(n579), .B1(data_0[7]), .B2(n550), .ZN(
        n575) );
  NAND2_X1 U79 ( .A1(n579), .A2(n549), .ZN(n567) );
  INV_X1 U80 ( .A(N42), .ZN(n549) );
  INV_X1 U81 ( .A(N37), .ZN(n532) );
  INV_X1 U82 ( .A(N38), .ZN(n533) );
  OR2_X1 U83 ( .A1(n563), .A2(N39), .ZN(n566) );
  MUX2_X1 U84 ( .A(\mem[6][0] ), .B(\mem[7][0] ), .S(N37), .Z(n379) );
  MUX2_X1 U85 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .S(N37), .Z(n380) );
  MUX2_X1 U86 ( .A(n380), .B(n379), .S(N38), .Z(n381) );
  MUX2_X1 U87 ( .A(\mem[2][0] ), .B(\mem[3][0] ), .S(N37), .Z(n382) );
  MUX2_X1 U88 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .S(N37), .Z(n383) );
  MUX2_X1 U89 ( .A(n383), .B(n382), .S(N38), .Z(n384) );
  MUX2_X1 U90 ( .A(n384), .B(n381), .S(N39), .Z(N168) );
  MUX2_X1 U91 ( .A(\mem[6][1] ), .B(\mem[7][1] ), .S(N37), .Z(n385) );
  MUX2_X1 U92 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .S(N37), .Z(n386) );
  MUX2_X1 U93 ( .A(n386), .B(n385), .S(N38), .Z(n387) );
  MUX2_X1 U94 ( .A(\mem[2][1] ), .B(\mem[3][1] ), .S(n453), .Z(n388) );
  MUX2_X1 U95 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .S(n452), .Z(n389) );
  MUX2_X1 U96 ( .A(n389), .B(n388), .S(N38), .Z(n390) );
  MUX2_X1 U97 ( .A(n390), .B(n387), .S(N39), .Z(N167) );
  MUX2_X1 U98 ( .A(\mem[6][2] ), .B(\mem[7][2] ), .S(n452), .Z(n391) );
  MUX2_X1 U99 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .S(N37), .Z(n392) );
  MUX2_X1 U100 ( .A(n392), .B(n391), .S(N38), .Z(n393) );
  MUX2_X1 U101 ( .A(\mem[2][2] ), .B(\mem[3][2] ), .S(n453), .Z(n394) );
  MUX2_X1 U102 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .S(n452), .Z(n395) );
  MUX2_X1 U103 ( .A(n395), .B(n394), .S(N38), .Z(n396) );
  MUX2_X1 U104 ( .A(n396), .B(n393), .S(N39), .Z(N166) );
  MUX2_X1 U105 ( .A(\mem[6][3] ), .B(\mem[7][3] ), .S(N37), .Z(n397) );
  MUX2_X1 U106 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .S(N37), .Z(n398) );
  MUX2_X1 U107 ( .A(n398), .B(n397), .S(n451), .Z(n399) );
  MUX2_X1 U108 ( .A(\mem[2][3] ), .B(\mem[3][3] ), .S(n453), .Z(n400) );
  MUX2_X1 U109 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .S(n452), .Z(n401) );
  MUX2_X1 U110 ( .A(n401), .B(n400), .S(N38), .Z(n402) );
  MUX2_X1 U111 ( .A(n402), .B(n399), .S(N39), .Z(N165) );
  MUX2_X1 U112 ( .A(\mem[6][4] ), .B(\mem[7][4] ), .S(N37), .Z(n403) );
  MUX2_X1 U113 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .S(n453), .Z(n404) );
  MUX2_X1 U114 ( .A(n404), .B(n403), .S(n451), .Z(n405) );
  MUX2_X1 U115 ( .A(\mem[2][4] ), .B(\mem[3][4] ), .S(n452), .Z(n406) );
  MUX2_X1 U116 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .S(N37), .Z(n407) );
  MUX2_X1 U117 ( .A(n407), .B(n406), .S(N38), .Z(n408) );
  MUX2_X1 U118 ( .A(n408), .B(n405), .S(N39), .Z(N164) );
  MUX2_X1 U119 ( .A(\mem[6][5] ), .B(\mem[7][5] ), .S(n453), .Z(n409) );
  MUX2_X1 U120 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .S(n452), .Z(n410) );
  MUX2_X1 U121 ( .A(n410), .B(n409), .S(n451), .Z(n411) );
  MUX2_X1 U122 ( .A(\mem[2][5] ), .B(\mem[3][5] ), .S(N37), .Z(n412) );
  MUX2_X1 U123 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .S(n453), .Z(n413) );
  MUX2_X1 U124 ( .A(n413), .B(n412), .S(N38), .Z(n414) );
  MUX2_X1 U125 ( .A(n414), .B(n411), .S(N39), .Z(N163) );
  MUX2_X1 U126 ( .A(\mem[6][6] ), .B(\mem[7][6] ), .S(n452), .Z(n415) );
  MUX2_X1 U127 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .S(n452), .Z(n416) );
  MUX2_X1 U128 ( .A(n416), .B(n415), .S(n451), .Z(n417) );
  MUX2_X1 U129 ( .A(\mem[2][6] ), .B(\mem[3][6] ), .S(n452), .Z(n418) );
  MUX2_X1 U130 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .S(n452), .Z(n419) );
  MUX2_X1 U131 ( .A(n419), .B(n418), .S(n451), .Z(n420) );
  MUX2_X1 U132 ( .A(n420), .B(n417), .S(N39), .Z(N162) );
  MUX2_X1 U133 ( .A(\mem[6][7] ), .B(\mem[7][7] ), .S(n452), .Z(n421) );
  MUX2_X1 U134 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .S(n452), .Z(n422) );
  MUX2_X1 U135 ( .A(n422), .B(n421), .S(n451), .Z(n423) );
  MUX2_X1 U136 ( .A(\mem[2][7] ), .B(\mem[3][7] ), .S(n452), .Z(n424) );
  MUX2_X1 U137 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .S(n452), .Z(n425) );
  MUX2_X1 U138 ( .A(n425), .B(n424), .S(n451), .Z(n426) );
  MUX2_X1 U139 ( .A(n426), .B(n423), .S(N39), .Z(N161) );
  MUX2_X1 U140 ( .A(\mem[6][8] ), .B(\mem[7][8] ), .S(n452), .Z(n427) );
  MUX2_X1 U141 ( .A(\mem[4][8] ), .B(\mem[5][8] ), .S(n452), .Z(n428) );
  MUX2_X1 U142 ( .A(n428), .B(n427), .S(n451), .Z(n429) );
  MUX2_X1 U143 ( .A(\mem[2][8] ), .B(\mem[3][8] ), .S(n452), .Z(n430) );
  MUX2_X1 U144 ( .A(\mem[0][8] ), .B(\mem[1][8] ), .S(n452), .Z(n431) );
  MUX2_X1 U145 ( .A(n431), .B(n430), .S(n451), .Z(n432) );
  MUX2_X1 U146 ( .A(n432), .B(n429), .S(N39), .Z(N160) );
  MUX2_X1 U147 ( .A(\mem[6][9] ), .B(\mem[7][9] ), .S(n453), .Z(n433) );
  MUX2_X1 U148 ( .A(\mem[4][9] ), .B(\mem[5][9] ), .S(n453), .Z(n434) );
  MUX2_X1 U149 ( .A(n434), .B(n433), .S(n451), .Z(n435) );
  MUX2_X1 U150 ( .A(\mem[2][9] ), .B(\mem[3][9] ), .S(n453), .Z(n436) );
  MUX2_X1 U151 ( .A(\mem[0][9] ), .B(\mem[1][9] ), .S(n453), .Z(n437) );
  MUX2_X1 U152 ( .A(n437), .B(n436), .S(n451), .Z(n438) );
  MUX2_X1 U153 ( .A(n438), .B(n435), .S(N39), .Z(N159) );
  MUX2_X1 U154 ( .A(\mem[6][10] ), .B(\mem[7][10] ), .S(n453), .Z(n439) );
  MUX2_X1 U155 ( .A(\mem[4][10] ), .B(\mem[5][10] ), .S(n453), .Z(n440) );
  MUX2_X1 U156 ( .A(n440), .B(n439), .S(n451), .Z(n441) );
  MUX2_X1 U157 ( .A(\mem[2][10] ), .B(\mem[3][10] ), .S(n453), .Z(n442) );
  MUX2_X1 U158 ( .A(\mem[0][10] ), .B(\mem[1][10] ), .S(n453), .Z(n443) );
  MUX2_X1 U159 ( .A(n443), .B(n442), .S(n451), .Z(n444) );
  MUX2_X1 U160 ( .A(n444), .B(n441), .S(N39), .Z(N158) );
  MUX2_X1 U161 ( .A(\mem[6][11] ), .B(\mem[7][11] ), .S(n453), .Z(n445) );
  MUX2_X1 U162 ( .A(\mem[4][11] ), .B(\mem[5][11] ), .S(n453), .Z(n446) );
  MUX2_X1 U163 ( .A(n446), .B(n445), .S(n451), .Z(n447) );
  MUX2_X1 U164 ( .A(\mem[2][11] ), .B(\mem[3][11] ), .S(n453), .Z(n448) );
  MUX2_X1 U165 ( .A(\mem[0][11] ), .B(\mem[1][11] ), .S(n453), .Z(n449) );
  MUX2_X1 U166 ( .A(n449), .B(n448), .S(n451), .Z(n450) );
  MUX2_X1 U167 ( .A(n450), .B(n447), .S(N39), .Z(N157) );
  MUX2_X1 U168 ( .A(\mem[6][0] ), .B(\mem[7][0] ), .S(N40), .Z(n454) );
  MUX2_X1 U169 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .S(N40), .Z(n455) );
  MUX2_X1 U170 ( .A(n455), .B(n454), .S(n526), .Z(n456) );
  MUX2_X1 U171 ( .A(\mem[2][0] ), .B(\mem[3][0] ), .S(N40), .Z(n457) );
  MUX2_X1 U172 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .S(N40), .Z(n458) );
  MUX2_X1 U173 ( .A(n458), .B(n457), .S(n526), .Z(n459) );
  MUX2_X1 U174 ( .A(n459), .B(n456), .S(N42), .Z(N184) );
  MUX2_X1 U175 ( .A(\mem[6][1] ), .B(\mem[7][1] ), .S(N40), .Z(n460) );
  MUX2_X1 U176 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .S(N40), .Z(n461) );
  MUX2_X1 U177 ( .A(n461), .B(n460), .S(n526), .Z(n462) );
  MUX2_X1 U178 ( .A(\mem[2][1] ), .B(\mem[3][1] ), .S(N40), .Z(n463) );
  MUX2_X1 U179 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .S(N40), .Z(n464) );
  MUX2_X1 U180 ( .A(n464), .B(n463), .S(n526), .Z(n465) );
  MUX2_X1 U181 ( .A(n465), .B(n462), .S(N42), .Z(N183) );
  MUX2_X1 U182 ( .A(\mem[6][2] ), .B(\mem[7][2] ), .S(N40), .Z(n466) );
  MUX2_X1 U183 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .S(N40), .Z(n467) );
  MUX2_X1 U184 ( .A(n467), .B(n466), .S(n526), .Z(n468) );
  MUX2_X1 U185 ( .A(\mem[2][2] ), .B(\mem[3][2] ), .S(N40), .Z(n469) );
  MUX2_X1 U186 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .S(N40), .Z(n470) );
  MUX2_X1 U187 ( .A(n470), .B(n469), .S(n526), .Z(n471) );
  MUX2_X1 U188 ( .A(n471), .B(n468), .S(N42), .Z(N182) );
  MUX2_X1 U189 ( .A(\mem[6][3] ), .B(\mem[7][3] ), .S(n527), .Z(n472) );
  MUX2_X1 U190 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .S(n527), .Z(n473) );
  MUX2_X1 U191 ( .A(n473), .B(n472), .S(n526), .Z(n474) );
  MUX2_X1 U192 ( .A(\mem[2][3] ), .B(\mem[3][3] ), .S(n527), .Z(n475) );
  MUX2_X1 U193 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .S(n527), .Z(n476) );
  MUX2_X1 U194 ( .A(n476), .B(n475), .S(n526), .Z(n477) );
  MUX2_X1 U195 ( .A(n477), .B(n474), .S(N42), .Z(N181) );
  MUX2_X1 U196 ( .A(\mem[6][4] ), .B(\mem[7][4] ), .S(n527), .Z(n478) );
  MUX2_X1 U197 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .S(n527), .Z(n479) );
  MUX2_X1 U198 ( .A(n479), .B(n478), .S(n526), .Z(n480) );
  MUX2_X1 U199 ( .A(\mem[2][4] ), .B(\mem[3][4] ), .S(n527), .Z(n481) );
  MUX2_X1 U200 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .S(n527), .Z(n482) );
  MUX2_X1 U201 ( .A(n482), .B(n481), .S(n526), .Z(n483) );
  MUX2_X1 U202 ( .A(n483), .B(n480), .S(N42), .Z(N180) );
  MUX2_X1 U203 ( .A(\mem[6][5] ), .B(\mem[7][5] ), .S(n527), .Z(n484) );
  MUX2_X1 U204 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .S(n527), .Z(n485) );
  MUX2_X1 U205 ( .A(n485), .B(n484), .S(n526), .Z(n486) );
  MUX2_X1 U206 ( .A(\mem[2][5] ), .B(\mem[3][5] ), .S(n527), .Z(n487) );
  MUX2_X1 U207 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .S(n527), .Z(n488) );
  MUX2_X1 U208 ( .A(n488), .B(n487), .S(n526), .Z(n489) );
  MUX2_X1 U209 ( .A(n489), .B(n486), .S(N42), .Z(N179) );
  MUX2_X1 U210 ( .A(\mem[6][6] ), .B(\mem[7][6] ), .S(n528), .Z(n490) );
  MUX2_X1 U211 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .S(n528), .Z(n491) );
  MUX2_X1 U212 ( .A(n491), .B(n490), .S(N41), .Z(n492) );
  MUX2_X1 U213 ( .A(\mem[2][6] ), .B(\mem[3][6] ), .S(n528), .Z(n493) );
  MUX2_X1 U214 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .S(n528), .Z(n494) );
  MUX2_X1 U215 ( .A(n494), .B(n493), .S(N41), .Z(n495) );
  MUX2_X1 U216 ( .A(n495), .B(n492), .S(N42), .Z(N178) );
  MUX2_X1 U217 ( .A(\mem[6][7] ), .B(\mem[7][7] ), .S(n528), .Z(n496) );
  MUX2_X1 U218 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .S(n528), .Z(n497) );
  MUX2_X1 U219 ( .A(n497), .B(n496), .S(N41), .Z(n498) );
  MUX2_X1 U220 ( .A(\mem[2][7] ), .B(\mem[3][7] ), .S(n528), .Z(n499) );
  MUX2_X1 U221 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .S(n528), .Z(n500) );
  MUX2_X1 U222 ( .A(n500), .B(n499), .S(N41), .Z(n501) );
  MUX2_X1 U223 ( .A(n501), .B(n498), .S(N42), .Z(N177) );
  MUX2_X1 U224 ( .A(\mem[6][8] ), .B(\mem[7][8] ), .S(n528), .Z(n502) );
  MUX2_X1 U225 ( .A(\mem[4][8] ), .B(\mem[5][8] ), .S(n528), .Z(n503) );
  MUX2_X1 U226 ( .A(n503), .B(n502), .S(N41), .Z(n504) );
  MUX2_X1 U227 ( .A(\mem[2][8] ), .B(\mem[3][8] ), .S(n528), .Z(n505) );
  MUX2_X1 U228 ( .A(\mem[0][8] ), .B(\mem[1][8] ), .S(n528), .Z(n506) );
  MUX2_X1 U229 ( .A(n506), .B(n505), .S(N41), .Z(n507) );
  MUX2_X1 U230 ( .A(n507), .B(n504), .S(N42), .Z(N176) );
  MUX2_X1 U231 ( .A(\mem[6][9] ), .B(\mem[7][9] ), .S(n529), .Z(n508) );
  MUX2_X1 U232 ( .A(\mem[4][9] ), .B(\mem[5][9] ), .S(n529), .Z(n509) );
  MUX2_X1 U233 ( .A(n509), .B(n508), .S(N41), .Z(n510) );
  MUX2_X1 U234 ( .A(\mem[2][9] ), .B(\mem[3][9] ), .S(n529), .Z(n511) );
  MUX2_X1 U235 ( .A(\mem[0][9] ), .B(\mem[1][9] ), .S(n529), .Z(n512) );
  MUX2_X1 U236 ( .A(n512), .B(n511), .S(N41), .Z(n513) );
  MUX2_X1 U237 ( .A(n513), .B(n510), .S(N42), .Z(N175) );
  MUX2_X1 U238 ( .A(\mem[6][10] ), .B(\mem[7][10] ), .S(n529), .Z(n514) );
  MUX2_X1 U239 ( .A(\mem[4][10] ), .B(\mem[5][10] ), .S(n529), .Z(n515) );
  MUX2_X1 U240 ( .A(n515), .B(n514), .S(N41), .Z(n516) );
  MUX2_X1 U241 ( .A(\mem[2][10] ), .B(\mem[3][10] ), .S(n529), .Z(n517) );
  MUX2_X1 U242 ( .A(\mem[0][10] ), .B(\mem[1][10] ), .S(n529), .Z(n518) );
  MUX2_X1 U243 ( .A(n518), .B(n517), .S(N41), .Z(n519) );
  MUX2_X1 U244 ( .A(n519), .B(n516), .S(N42), .Z(N174) );
  MUX2_X1 U245 ( .A(\mem[6][11] ), .B(\mem[7][11] ), .S(n529), .Z(n520) );
  MUX2_X1 U246 ( .A(\mem[4][11] ), .B(\mem[5][11] ), .S(n529), .Z(n521) );
  MUX2_X1 U247 ( .A(n521), .B(n520), .S(N41), .Z(n522) );
  MUX2_X1 U248 ( .A(\mem[2][11] ), .B(\mem[3][11] ), .S(n529), .Z(n523) );
  MUX2_X1 U249 ( .A(\mem[0][11] ), .B(\mem[1][11] ), .S(n529), .Z(n524) );
  MUX2_X1 U250 ( .A(n524), .B(n523), .S(N41), .Z(n525) );
  MUX2_X1 U251 ( .A(n525), .B(n522), .S(N42), .Z(N173) );
endmodule


module syn_fifo_2 ( clk, rst, wr_cs, rd_cs, data_in, rd_en, wr_en, data_out, 
        empty, full );
  input [11:0] data_in;
  output [11:0] data_out;
  input clk, rst, wr_cs, rd_cs, rd_en, wr_en;
  output empty, full;
  wire   N33, N40, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176;
  wire   [3:0] status_cnt;
  wire   [2:0] wr_pointer;
  wire   [2:0] rd_pointer;
  wire   [11:0] data_ram;
  assign empty = N33;
  assign full = N40;

  DFFR_X1 \wr_pointer_reg[2]  ( .D(n116), .CK(clk), .RN(n101), .Q(
        wr_pointer[2]), .QN(n133) );
  DFFR_X1 \rd_pointer_reg[2]  ( .D(n119), .CK(clk), .RN(n101), .Q(
        rd_pointer[2]), .QN(n132) );
  DFFR_X1 \data_out_reg[11]  ( .D(n120), .CK(clk), .RN(n101), .Q(data_out[11]), 
        .QN(n134) );
  DFFR_X1 \data_out_reg[10]  ( .D(n121), .CK(clk), .RN(n101), .Q(data_out[10]), 
        .QN(n135) );
  DFFR_X1 \data_out_reg[9]  ( .D(n122), .CK(clk), .RN(n101), .Q(data_out[9]), 
        .QN(n136) );
  DFFR_X1 \data_out_reg[8]  ( .D(n123), .CK(clk), .RN(n101), .Q(data_out[8]), 
        .QN(n137) );
  DFFR_X1 \data_out_reg[7]  ( .D(n124), .CK(clk), .RN(n101), .Q(data_out[7]), 
        .QN(n138) );
  DFFR_X1 \data_out_reg[6]  ( .D(n125), .CK(clk), .RN(n101), .Q(data_out[6]), 
        .QN(n139) );
  DFFR_X1 \data_out_reg[5]  ( .D(n126), .CK(clk), .RN(n101), .Q(data_out[5]), 
        .QN(n140) );
  DFFR_X1 \data_out_reg[4]  ( .D(n127), .CK(clk), .RN(n101), .Q(data_out[4]), 
        .QN(n141) );
  DFFR_X1 \data_out_reg[3]  ( .D(n128), .CK(clk), .RN(n101), .Q(data_out[3]), 
        .QN(n142) );
  DFFR_X1 \data_out_reg[2]  ( .D(n129), .CK(clk), .RN(n101), .Q(data_out[2]), 
        .QN(n143) );
  DFFR_X1 \data_out_reg[1]  ( .D(n130), .CK(clk), .RN(n101), .Q(data_out[1]), 
        .QN(n144) );
  DFFR_X1 \data_out_reg[0]  ( .D(n131), .CK(clk), .RN(n101), .Q(data_out[0]), 
        .QN(n145) );
  DFFR_X1 \status_cnt_reg[0]  ( .D(n110), .CK(clk), .RN(n101), .Q(
        status_cnt[0]), .QN(n99) );
  XOR2_X1 U27 ( .A(n132), .B(n163), .Z(n119) );
  XOR2_X1 U29 ( .A(rd_pointer[1]), .B(n162), .Z(n118) );
  XOR2_X1 U31 ( .A(rd_pointer[0]), .B(n106), .Z(n117) );
  XOR2_X1 U32 ( .A(n133), .B(n161), .Z(n116) );
  XOR2_X1 U34 ( .A(wr_pointer[1]), .B(n160), .Z(n115) );
  XOR2_X1 U36 ( .A(n100), .B(n159), .Z(n114) );
  NAND3_X1 U49 ( .A1(n99), .A2(n108), .A3(n105), .ZN(n152) );
  NAND3_X1 U50 ( .A1(n156), .A2(n108), .A3(status_cnt[0]), .ZN(n149) );
  XOR2_X1 U53 ( .A(n148), .B(n99), .Z(n110) );
  NAND3_X1 U58 ( .A1(n159), .A2(n146), .A3(n106), .ZN(n151) );
  NAND4_X1 U63 ( .A1(status_cnt[2]), .A2(status_cnt[1]), .A3(status_cnt[0]), 
        .A4(n107), .ZN(n158) );
  AOI211_X2 U56 ( .C1(n147), .C2(status_cnt[3]), .A(n106), .B(n159), .ZN(n156)
         );
  NAND2_X2 U60 ( .A1(rd_en), .A2(rd_cs), .ZN(n176) );
  ram_dp_ar_aw_2 DP_RAM ( .address_0(wr_pointer), .data_0(data_in), .cs_0(
        wr_cs), .we_0(wr_en), .oe_0(1'b0), .address_1(rd_pointer), .data_1(
        data_ram), .cs_1(rd_cs), .we_1(1'b0), .oe_1(rd_en) );
  DFFR_X1 \wr_pointer_reg[0]  ( .D(n114), .CK(clk), .RN(n101), .Q(
        wr_pointer[0]), .QN(n100) );
  DFFR_X1 \wr_pointer_reg[1]  ( .D(n115), .CK(clk), .RN(n101), .Q(
        wr_pointer[1]) );
  DFFR_X1 \rd_pointer_reg[0]  ( .D(n117), .CK(clk), .RN(n101), .Q(
        rd_pointer[0]) );
  DFFR_X1 \rd_pointer_reg[1]  ( .D(n118), .CK(clk), .RN(n101), .Q(
        rd_pointer[1]) );
  DFFR_X1 \status_cnt_reg[1]  ( .D(n111), .CK(clk), .RN(rst), .Q(status_cnt[1]), .QN(n108) );
  DFFR_X1 \status_cnt_reg[2]  ( .D(n112), .CK(clk), .RN(n101), .Q(
        status_cnt[2]), .QN(n109) );
  DFFR_X1 \status_cnt_reg[3]  ( .D(n113), .CK(clk), .RN(n101), .Q(
        status_cnt[3]), .QN(n107) );
  BUF_X1 U3 ( .A(rst), .Z(n101) );
  INV_X1 U4 ( .A(n151), .ZN(n105) );
  INV_X1 U5 ( .A(n146), .ZN(N33) );
  INV_X1 U6 ( .A(n152), .ZN(n102) );
  NOR2_X1 U7 ( .A1(n105), .A2(n156), .ZN(n148) );
  INV_X1 U8 ( .A(n156), .ZN(n104) );
  OAI21_X1 U9 ( .B1(n103), .B2(n109), .A(n154), .ZN(n112) );
  OAI21_X1 U10 ( .B1(n153), .B2(n102), .A(n109), .ZN(n154) );
  INV_X1 U11 ( .A(n155), .ZN(n103) );
  NOR3_X1 U12 ( .A1(n108), .A2(n104), .A3(n99), .ZN(n153) );
  NAND2_X1 U13 ( .A1(n147), .A2(n107), .ZN(n146) );
  NOR2_X1 U14 ( .A1(n100), .A2(n159), .ZN(n160) );
  AOI221_X1 U15 ( .B1(n99), .B2(n156), .C1(n105), .C2(status_cnt[0]), .A(n148), 
        .ZN(n150) );
  INV_X1 U16 ( .A(n158), .ZN(N40) );
  OAI221_X1 U17 ( .B1(status_cnt[1]), .B2(n104), .C1(n151), .C2(n108), .A(n150), .ZN(n155) );
  NOR3_X1 U18 ( .A1(status_cnt[1]), .A2(status_cnt[2]), .A3(status_cnt[0]), 
        .ZN(n147) );
  OAI22_X1 U19 ( .A1(n137), .A2(n106), .B1(n176), .B2(n167), .ZN(n123) );
  INV_X1 U20 ( .A(data_ram[8]), .ZN(n167) );
  OAI22_X1 U21 ( .A1(n136), .A2(n106), .B1(n176), .B2(n166), .ZN(n122) );
  INV_X1 U22 ( .A(data_ram[9]), .ZN(n166) );
  OAI22_X1 U23 ( .A1(n135), .A2(n106), .B1(n176), .B2(n165), .ZN(n121) );
  INV_X1 U24 ( .A(data_ram[10]), .ZN(n165) );
  OAI22_X1 U25 ( .A1(n134), .A2(n106), .B1(n176), .B2(n164), .ZN(n120) );
  INV_X1 U26 ( .A(data_ram[11]), .ZN(n164) );
  OAI22_X1 U28 ( .A1(n145), .A2(n106), .B1(n176), .B2(n175), .ZN(n131) );
  INV_X1 U30 ( .A(data_ram[0]), .ZN(n175) );
  OAI22_X1 U33 ( .A1(n144), .A2(n106), .B1(n176), .B2(n174), .ZN(n130) );
  INV_X1 U35 ( .A(data_ram[1]), .ZN(n174) );
  OAI22_X1 U37 ( .A1(n143), .A2(n106), .B1(n176), .B2(n173), .ZN(n129) );
  INV_X1 U38 ( .A(data_ram[2]), .ZN(n173) );
  OAI22_X1 U39 ( .A1(n142), .A2(n106), .B1(n176), .B2(n172), .ZN(n128) );
  INV_X1 U40 ( .A(data_ram[3]), .ZN(n172) );
  OAI22_X1 U41 ( .A1(n141), .A2(n106), .B1(n176), .B2(n171), .ZN(n127) );
  INV_X1 U42 ( .A(data_ram[4]), .ZN(n171) );
  OAI22_X1 U43 ( .A1(n140), .A2(n106), .B1(n176), .B2(n170), .ZN(n126) );
  INV_X1 U44 ( .A(data_ram[5]), .ZN(n170) );
  OAI22_X1 U45 ( .A1(n139), .A2(n106), .B1(n176), .B2(n169), .ZN(n125) );
  INV_X1 U46 ( .A(data_ram[6]), .ZN(n169) );
  OAI22_X1 U47 ( .A1(n138), .A2(n106), .B1(n176), .B2(n168), .ZN(n124) );
  INV_X1 U48 ( .A(data_ram[7]), .ZN(n168) );
  OAI22_X1 U51 ( .A1(n104), .A2(n158), .B1(n157), .B2(n107), .ZN(n113) );
  AOI221_X1 U52 ( .B1(n156), .B2(n109), .C1(status_cnt[2]), .C2(n105), .A(n155), .ZN(n157) );
  NAND2_X1 U54 ( .A1(rd_pointer[1]), .A2(n162), .ZN(n163) );
  NAND2_X1 U55 ( .A1(wr_en), .A2(wr_cs), .ZN(n159) );
  OAI211_X1 U57 ( .C1(n150), .C2(n108), .A(n149), .B(n152), .ZN(n111) );
  AND2_X1 U59 ( .A1(rd_pointer[0]), .A2(n106), .ZN(n162) );
  NAND2_X1 U61 ( .A1(wr_pointer[1]), .A2(n160), .ZN(n161) );
  INV_X2 U62 ( .A(n176), .ZN(n106) );
endmodule


module ram_dp_ar_aw_0 ( address_0, data_0, cs_0, we_0, oe_0, address_1, data_1, 
        cs_1, we_1, oe_1 );
  input [2:0] address_0;
  inout [11:0] data_0;
  input [2:0] address_1;
  inout [11:0] data_1;
  input cs_0, we_0, oe_0, cs_1, we_1, oe_1;
  wire   n287, n286, n285, n284, n283, n282, n281, n280, n279, n278, n277,
         n276, n275, n274, n273, n272, n271, n270, n269, n268, n267, n266,
         n265, n264, n263, n262, n261, n260, n259, n258, n257, n256, n255,
         n254, n253, n252, n251, n250, n249, n248, n247, n246, n245, n244,
         n243, n242, n241, n240, n239, n238, n237, n236, n235, n234, n233,
         n232, n231, n230, n229, n228, n227, n226, n225, n224, n223, n222,
         n221, n220, n219, n218, n217, n216, n215, n214, n213, n212, n211,
         n210, n209, n208, n207, n206, n205, n204, n203, n202, n201, n200,
         n199, n198, n197, n196, n195, n194, n193, n192, \U8/Z_0 , \U8/Z_1 ,
         \U8/Z_2 , \U8/Z_3 , \U8/Z_4 , \U8/Z_5 , \U8/Z_6 , \U8/Z_7 ,
         \U7/DATA2_0 , \U7/DATA2_1 , \U7/DATA2_2 , \U7/DATA2_3 , \U7/DATA2_4 ,
         \U7/DATA2_5 , \U7/DATA2_6 , \U7/DATA2_7 , \U7/DATA2_8 , \U7/DATA2_9 ,
         \U7/DATA2_10 , \U7/DATA2_11 , \U7/DATA1_0 , \U7/DATA1_1 ,
         \U7/DATA1_2 , \U7/DATA1_3 , \U7/DATA1_4 , \U7/DATA1_5 , \U7/DATA1_6 ,
         \U7/DATA1_7 , n1, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n24, n25, n26, n35, n36, n37, n40, n45, n46,
         n47, n50, n55, n56, n57, n60, n63, n64, n67, n68, n69, n70, n71, n74,
         n75, n76, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n99, n100, n101, n102, n103, n104, n108,
         n109, n110, n114, n115, n116, n120, n121, n122, n126, n127, n128,
         n132, n133, n134, n138, n139, n140, n144, n145, n146, n147, n148,
         n149, n150, n153, n154, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n289, n290, n291, n292, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n328, n329, n330, n332, n333, n334, n335, n337,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458;
wand  \U7/DATA1_8 ;
wand  \U7/DATA1_9 ;
wand  \U7/DATA1_10 ;
wand  \U7/DATA1_11 ;
  assign data_1[0] = \U7/DATA2_0 ;
  assign data_1[1] = \U7/DATA2_1 ;
  assign data_1[2] = \U7/DATA2_2 ;
  assign data_1[3] = \U7/DATA2_3 ;
  assign data_1[4] = \U7/DATA2_4 ;
  assign data_1[5] = \U7/DATA2_5 ;
  assign data_1[6] = \U7/DATA2_6 ;
  assign data_1[7] = \U7/DATA2_7 ;
  assign data_1[8] = \U7/DATA2_8 ;
  assign data_1[9] = \U7/DATA2_9 ;
  assign data_1[10] = \U7/DATA2_10 ;
  assign data_1[11] = \U7/DATA2_11 ;
  assign data_0[0] = \U7/DATA1_0 ;
  assign data_0[1] = \U7/DATA1_1 ;
  assign data_0[2] = \U7/DATA1_2 ;
  assign data_0[3] = \U7/DATA1_3 ;
  assign data_0[4] = \U7/DATA1_4 ;
  assign data_0[5] = \U7/DATA1_5 ;
  assign data_0[6] = \U7/DATA1_6 ;
  assign data_0[7] = \U7/DATA1_7 ;
  assign data_0[8] = \U7/DATA1_8 ;
  assign data_0[9] = \U7/DATA1_9 ;
  assign data_0[10] = \U7/DATA1_10 ;
  assign data_0[11] = \U7/DATA1_11 ;

  DLH_X1 \mem_reg[7][11]  ( .G(\U8/Z_0 ), .D(n377), .Q(n203) );
  DLH_X1 \mem_reg[1][11]  ( .G(\U8/Z_6 ), .D(n377), .Q(n275) );
  DLH_X1 \mem_reg[3][11]  ( .G(\U8/Z_4 ), .D(n377), .Q(n251) );
  DLH_X1 \mem_reg[5][11]  ( .G(\U8/Z_2 ), .D(n377), .Q(n227) );
  DLH_X1 \mem_reg[6][11]  ( .G(\U8/Z_1 ), .D(n377), .Q(n215) );
  DLH_X1 \mem_reg[4][11]  ( .G(\U8/Z_3 ), .D(n377), .Q(n239) );
  DLH_X1 \mem_reg[2][11]  ( .G(\U8/Z_5 ), .D(n377), .Q(n263) );
  DLH_X1 \mem_reg[0][11]  ( .G(\U8/Z_7 ), .D(n377), .Q(n287) );
  DLH_X1 \mem_reg[7][10]  ( .G(\U8/Z_0 ), .D(n378), .Q(n202) );
  DLH_X1 \mem_reg[1][10]  ( .G(\U8/Z_6 ), .D(n378), .Q(n274) );
  DLH_X1 \mem_reg[3][10]  ( .G(\U8/Z_4 ), .D(n378), .Q(n250) );
  DLH_X1 \mem_reg[5][10]  ( .G(\U8/Z_2 ), .D(n378), .Q(n226) );
  DLH_X1 \mem_reg[6][10]  ( .G(\U8/Z_1 ), .D(n378), .Q(n214) );
  DLH_X1 \mem_reg[4][10]  ( .G(\U8/Z_3 ), .D(n378), .Q(n238) );
  DLH_X1 \mem_reg[2][10]  ( .G(\U8/Z_5 ), .D(n378), .Q(n262) );
  DLH_X1 \mem_reg[0][10]  ( .G(\U8/Z_7 ), .D(n378), .Q(n286) );
  DLH_X1 \mem_reg[7][9]  ( .G(\U8/Z_0 ), .D(n379), .Q(n201) );
  DLH_X1 \mem_reg[2][9]  ( .G(\U8/Z_5 ), .D(n379), .Q(n261) );
  DLH_X1 \mem_reg[4][9]  ( .G(\U8/Z_3 ), .D(n379), .Q(n237) );
  DLH_X1 \mem_reg[6][9]  ( .G(\U8/Z_1 ), .D(n379), .Q(n213) );
  DLH_X1 \mem_reg[5][9]  ( .G(\U8/Z_2 ), .D(n379), .Q(n225) );
  DLH_X1 \mem_reg[3][9]  ( .G(\U8/Z_4 ), .D(n379), .Q(n249) );
  DLH_X1 \mem_reg[1][9]  ( .G(\U8/Z_6 ), .D(n379), .Q(n273) );
  DLH_X1 \mem_reg[0][9]  ( .G(\U8/Z_7 ), .D(n379), .Q(n285) );
  DLH_X1 \mem_reg[7][8]  ( .G(\U8/Z_0 ), .D(n380), .Q(n200) );
  DLH_X1 \mem_reg[1][8]  ( .G(\U8/Z_6 ), .D(n380), .Q(n272) );
  DLH_X1 \mem_reg[2][8]  ( .G(\U8/Z_5 ), .D(n380), .Q(n260) );
  DLH_X1 \mem_reg[4][8]  ( .G(\U8/Z_3 ), .D(n380), .Q(n236) );
  DLH_X1 \mem_reg[6][8]  ( .G(\U8/Z_1 ), .D(n380), .Q(n212) );
  DLH_X1 \mem_reg[5][8]  ( .G(\U8/Z_2 ), .D(n380), .Q(n224) );
  DLH_X1 \mem_reg[3][8]  ( .G(\U8/Z_4 ), .D(n380), .Q(n248) );
  DLH_X1 \mem_reg[0][8]  ( .G(\U8/Z_7 ), .D(n380), .Q(n284) );
  DLH_X1 \mem_reg[7][7]  ( .G(\U8/Z_0 ), .D(n381), .Q(n199) );
  DLH_X1 \mem_reg[1][7]  ( .G(\U8/Z_6 ), .D(n381), .Q(n271) );
  DLH_X1 \mem_reg[2][7]  ( .G(\U8/Z_5 ), .D(n381), .Q(n259) );
  DLH_X1 \mem_reg[4][7]  ( .G(\U8/Z_3 ), .D(n381), .Q(n235) );
  DLH_X1 \mem_reg[6][7]  ( .G(\U8/Z_1 ), .D(n381), .Q(n211) );
  DLH_X1 \mem_reg[5][7]  ( .G(\U8/Z_2 ), .D(n381), .Q(n223) );
  DLH_X1 \mem_reg[3][7]  ( .G(\U8/Z_4 ), .D(n381), .Q(n247) );
  DLH_X1 \mem_reg[0][7]  ( .G(\U8/Z_7 ), .D(n381), .Q(n283) );
  DLH_X1 \mem_reg[7][6]  ( .G(\U8/Z_0 ), .D(n385), .Q(n198) );
  DLH_X1 \mem_reg[1][6]  ( .G(\U8/Z_6 ), .D(n385), .Q(n270) );
  DLH_X1 \mem_reg[4][6]  ( .G(\U8/Z_3 ), .D(n385), .Q(n234) );
  DLH_X1 \mem_reg[6][6]  ( .G(\U8/Z_1 ), .D(n385), .Q(n210) );
  DLH_X1 \mem_reg[5][6]  ( .G(\U8/Z_2 ), .D(n385), .Q(n222) );
  DLH_X1 \mem_reg[3][6]  ( .G(\U8/Z_4 ), .D(n385), .Q(n246) );
  DLH_X1 \mem_reg[2][6]  ( .G(\U8/Z_5 ), .D(n385), .Q(n258) );
  DLH_X1 \mem_reg[0][6]  ( .G(\U8/Z_7 ), .D(n385), .Q(n282) );
  DLH_X1 \mem_reg[7][5]  ( .G(\U8/Z_0 ), .D(n382), .Q(n197) );
  DLH_X1 \mem_reg[1][5]  ( .G(\U8/Z_6 ), .D(n382), .Q(n269) );
  DLH_X1 \mem_reg[3][5]  ( .G(\U8/Z_4 ), .D(n382), .Q(n245) );
  DLH_X1 \mem_reg[4][5]  ( .G(\U8/Z_3 ), .D(n382), .Q(n233) );
  DLH_X1 \mem_reg[6][5]  ( .G(\U8/Z_1 ), .D(n382), .Q(n209) );
  DLH_X1 \mem_reg[5][5]  ( .G(\U8/Z_2 ), .D(n382), .Q(n221) );
  DLH_X1 \mem_reg[2][5]  ( .G(\U8/Z_5 ), .D(n382), .Q(n257) );
  DLH_X1 \mem_reg[0][5]  ( .G(\U8/Z_7 ), .D(n382), .Q(n281) );
  DLH_X1 \mem_reg[7][4]  ( .G(\U8/Z_0 ), .D(n386), .Q(n196) );
  DLH_X1 \mem_reg[1][4]  ( .G(\U8/Z_6 ), .D(n386), .Q(n268) );
  DLH_X1 \mem_reg[3][4]  ( .G(\U8/Z_4 ), .D(n386), .Q(n244) );
  DLH_X1 \mem_reg[6][4]  ( .G(\U8/Z_1 ), .D(n386), .Q(n208) );
  DLH_X1 \mem_reg[5][4]  ( .G(\U8/Z_2 ), .D(n386), .Q(n220) );
  DLH_X1 \mem_reg[4][4]  ( .G(\U8/Z_3 ), .D(n386), .Q(n232) );
  DLH_X1 \mem_reg[2][4]  ( .G(\U8/Z_5 ), .D(n386), .Q(n256) );
  DLH_X1 \mem_reg[0][4]  ( .G(\U8/Z_7 ), .D(n386), .Q(n280) );
  DLH_X1 \mem_reg[7][3]  ( .G(\U8/Z_0 ), .D(n383), .Q(n195) );
  DLH_X1 \mem_reg[1][3]  ( .G(\U8/Z_6 ), .D(n383), .Q(n267) );
  DLH_X1 \mem_reg[3][3]  ( .G(\U8/Z_4 ), .D(n383), .Q(n243) );
  DLH_X1 \mem_reg[6][3]  ( .G(\U8/Z_1 ), .D(n383), .Q(n207) );
  DLH_X1 \mem_reg[5][3]  ( .G(\U8/Z_2 ), .D(n383), .Q(n219) );
  DLH_X1 \mem_reg[4][3]  ( .G(\U8/Z_3 ), .D(n383), .Q(n231) );
  DLH_X1 \mem_reg[2][3]  ( .G(\U8/Z_5 ), .D(n383), .Q(n255) );
  DLH_X1 \mem_reg[0][3]  ( .G(\U8/Z_7 ), .D(n383), .Q(n279) );
  DLH_X1 \mem_reg[7][2]  ( .G(\U8/Z_0 ), .D(n387), .Q(n194) );
  DLH_X1 \mem_reg[1][2]  ( .G(\U8/Z_6 ), .D(n387), .Q(n266) );
  DLH_X1 \mem_reg[3][2]  ( .G(\U8/Z_4 ), .D(n387), .Q(n242) );
  DLH_X1 \mem_reg[5][2]  ( .G(\U8/Z_2 ), .D(n387), .Q(n218) );
  DLH_X1 \mem_reg[6][2]  ( .G(\U8/Z_1 ), .D(n387), .Q(n206) );
  DLH_X1 \mem_reg[4][2]  ( .G(\U8/Z_3 ), .D(n387), .Q(n230) );
  DLH_X1 \mem_reg[2][2]  ( .G(\U8/Z_5 ), .D(n387), .Q(n254) );
  DLH_X1 \mem_reg[0][2]  ( .G(\U8/Z_7 ), .D(n387), .Q(n278) );
  DLH_X1 \mem_reg[7][1]  ( .G(\U8/Z_0 ), .D(n384), .Q(n193) );
  DLH_X1 \mem_reg[1][1]  ( .G(\U8/Z_6 ), .D(n384), .Q(n265) );
  DLH_X1 \mem_reg[3][1]  ( .G(\U8/Z_4 ), .D(n384), .Q(n241) );
  DLH_X1 \mem_reg[5][1]  ( .G(\U8/Z_2 ), .D(n384), .Q(n217) );
  DLH_X1 \mem_reg[6][1]  ( .G(\U8/Z_1 ), .D(n384), .Q(n205) );
  DLH_X1 \mem_reg[4][1]  ( .G(\U8/Z_3 ), .D(n384), .Q(n229) );
  DLH_X1 \mem_reg[2][1]  ( .G(\U8/Z_5 ), .D(n384), .Q(n253) );
  DLH_X1 \mem_reg[0][1]  ( .G(\U8/Z_7 ), .D(n384), .Q(n277) );
  DLH_X1 \mem_reg[7][0]  ( .G(\U8/Z_0 ), .D(n388), .Q(n192) );
  DLH_X1 \mem_reg[1][0]  ( .G(\U8/Z_6 ), .D(n388), .Q(n264) );
  DLH_X1 \mem_reg[3][0]  ( .G(\U8/Z_4 ), .D(n388), .Q(n240) );
  DLH_X1 \mem_reg[5][0]  ( .G(\U8/Z_2 ), .D(n388), .Q(n216) );
  DLH_X1 \mem_reg[6][0]  ( .G(\U8/Z_1 ), .D(n388), .Q(n204) );
  DLH_X1 \mem_reg[4][0]  ( .G(\U8/Z_3 ), .D(n388), .Q(n228) );
  DLH_X1 \mem_reg[2][0]  ( .G(\U8/Z_5 ), .D(n388), .Q(n252) );
  DLH_X1 \mem_reg[0][0]  ( .G(\U8/Z_7 ), .D(n388), .Q(n276) );
  NAND3_X1 U30 ( .A1(n17), .A2(n18), .A3(n19), .ZN(n328) );
  NAND3_X1 U35 ( .A1(n35), .A2(n36), .A3(n37), .ZN(n329) );
  NAND3_X1 U40 ( .A1(n45), .A2(n46), .A3(n47), .ZN(n330) );
  NAND3_X1 U45 ( .A1(n55), .A2(n56), .A3(n57), .ZN(n332) );
  NAND3_X1 U54 ( .A1(n69), .A2(n70), .A3(n71), .ZN(n333) );
  NAND3_X1 U65 ( .A1(n81), .A2(n82), .A3(n83), .ZN(n334) );
  NAND3_X1 U76 ( .A1(n85), .A2(n86), .A3(n87), .ZN(n335) );
  NAND3_X1 U87 ( .A1(n89), .A2(n90), .A3(n91), .ZN(n337) );
  TBUF_X1 \data_0_tri[0]  ( .A(n304), .EN(n376), .Z(\U7/DATA1_0 ) );
  TBUF_X1 \data_0_tri[1]  ( .A(n303), .EN(n376), .Z(\U7/DATA1_1 ) );
  TBUF_X1 \data_0_tri[2]  ( .A(n302), .EN(n376), .Z(\U7/DATA1_2 ) );
  TBUF_X1 \data_0_tri[3]  ( .A(n301), .EN(n376), .Z(\U7/DATA1_3 ) );
  TBUF_X1 \data_0_tri[4]  ( .A(n300), .EN(n376), .Z(\U7/DATA1_4 ) );
  TBUF_X1 \data_0_tri[5]  ( .A(n299), .EN(n376), .Z(\U7/DATA1_5 ) );
  TBUF_X1 \data_0_tri[6]  ( .A(n298), .EN(n376), .Z(\U7/DATA1_6 ) );
  TBUF_X1 \data_0_tri[7]  ( .A(n297), .EN(n376), .Z(\U7/DATA1_7 ) );
  TBUF_X1 \data_1_tri[0]  ( .A(n312), .EN(n374), .Z(\U7/DATA2_0 ) );
  TBUF_X1 \data_1_tri[1]  ( .A(n311), .EN(n374), .Z(\U7/DATA2_1 ) );
  TBUF_X1 \data_1_tri[2]  ( .A(n310), .EN(n374), .Z(\U7/DATA2_2 ) );
  TBUF_X1 \data_1_tri[3]  ( .A(n309), .EN(n374), .Z(\U7/DATA2_3 ) );
  TBUF_X1 \data_1_tri[4]  ( .A(n308), .EN(n374), .Z(\U7/DATA2_4 ) );
  TBUF_X1 \data_1_tri[5]  ( .A(n307), .EN(n374), .Z(\U7/DATA2_5 ) );
  TBUF_X1 \data_1_tri[6]  ( .A(n306), .EN(n374), .Z(\U7/DATA2_6 ) );
  TBUF_X1 \data_1_tri[7]  ( .A(n305), .EN(n374), .Z(\U7/DATA2_7 ) );
  AND3_X2 U2 ( .A1(cs_1), .A2(n437), .A3(oe_1), .ZN(n371) );
  AND3_X1 U3 ( .A1(cs_0), .A2(n458), .A3(oe_0), .ZN(n372) );
  INV_X4 U4 ( .A(n371), .ZN(n373) );
  NAND2_X1 U5 ( .A1(n146), .A2(n149), .ZN(n97) );
  INV_X1 U6 ( .A(n154), .ZN(n448) );
  INV_X1 U7 ( .A(n371), .ZN(n374) );
  INV_X1 U8 ( .A(n94), .ZN(n450) );
  INV_X1 U9 ( .A(n93), .ZN(n449) );
  NAND2_X1 U10 ( .A1(n184), .A2(n187), .ZN(n157) );
  INV_X1 U11 ( .A(n372), .ZN(n375) );
  INV_X1 U12 ( .A(n190), .ZN(n439) );
  INV_X1 U13 ( .A(n372), .ZN(n376) );
  INV_X1 U14 ( .A(n64), .ZN(n441) );
  INV_X1 U15 ( .A(n63), .ZN(n440) );
  NAND2_X1 U16 ( .A1(n289), .A2(n451), .ZN(n76) );
  NOR2_X1 U17 ( .A1(n455), .A2(n456), .ZN(n149) );
  AOI221_X1 U18 ( .B1(n450), .B2(n404), .C1(n449), .C2(n403), .A(n373), .ZN(
        n86) );
  AOI221_X1 U19 ( .B1(n450), .B2(n398), .C1(n449), .C2(n399), .A(n373), .ZN(
        n82) );
  AOI221_X1 U20 ( .B1(n450), .B2(n392), .C1(n449), .C2(n393), .A(n373), .ZN(
        n70) );
  AOI221_X1 U21 ( .B1(n450), .B2(n410), .C1(n449), .C2(n409), .A(n373), .ZN(
        n90) );
  AND2_X1 U22 ( .A1(n148), .A2(n147), .ZN(n102) );
  AND2_X1 U23 ( .A1(n146), .A2(n147), .ZN(n103) );
  AND2_X1 U24 ( .A1(n148), .A2(n149), .ZN(n101) );
  INV_X1 U25 ( .A(n153), .ZN(n452) );
  NOR2_X1 U26 ( .A1(n451), .A2(n373), .ZN(n146) );
  INV_X1 U27 ( .A(n96), .ZN(n453) );
  INV_X1 U28 ( .A(n95), .ZN(n454) );
  NAND2_X1 U29 ( .A1(n291), .A2(n451), .ZN(n154) );
  NAND2_X1 U31 ( .A1(n149), .A2(n451), .ZN(n94) );
  NAND2_X1 U32 ( .A1(n147), .A2(n451), .ZN(n93) );
  OAI22_X1 U33 ( .A1(n15), .A2(n190), .B1(n16), .B2(n154), .ZN(\U8/Z_5 ) );
  OAI22_X1 U34 ( .A1(n16), .A2(n93), .B1(n15), .B2(n63), .ZN(\U8/Z_3 ) );
  OAI22_X1 U36 ( .A1(n16), .A2(n94), .B1(n15), .B2(n64), .ZN(\U8/Z_1 ) );
  OAI22_X1 U37 ( .A1(n15), .A2(n189), .B1(n16), .B2(n153), .ZN(\U8/Z_4 ) );
  OAI22_X1 U38 ( .A1(n16), .A2(n96), .B1(n15), .B2(n68), .ZN(\U8/Z_2 ) );
  OAI22_X1 U39 ( .A1(n16), .A2(n95), .B1(n15), .B2(n67), .ZN(\U8/Z_0 ) );
  OAI22_X1 U41 ( .A1(n15), .A2(n25), .B1(n16), .B2(n75), .ZN(\U8/Z_6 ) );
  OAI22_X1 U42 ( .A1(n15), .A2(n26), .B1(n16), .B2(n76), .ZN(\U8/Z_7 ) );
  NAND2_X1 U43 ( .A1(n290), .A2(n442), .ZN(n26) );
  INV_X1 U44 ( .A(n15), .ZN(n457) );
  NOR2_X1 U46 ( .A1(n446), .A2(n447), .ZN(n187) );
  AOI221_X1 U47 ( .B1(n441), .B2(n410), .C1(n440), .C2(n409), .A(n375), .ZN(
        n56) );
  AOI221_X1 U48 ( .B1(n441), .B2(n404), .C1(n440), .C2(n403), .A(n375), .ZN(
        n46) );
  AOI221_X1 U49 ( .B1(n441), .B2(n398), .C1(n440), .C2(n399), .A(n375), .ZN(
        n36) );
  AOI221_X1 U50 ( .B1(n441), .B2(n392), .C1(n440), .C2(n393), .A(n375), .ZN(
        n18) );
  AND2_X1 U51 ( .A1(n186), .A2(n187), .ZN(n160) );
  AND2_X1 U52 ( .A1(n186), .A2(n185), .ZN(n161) );
  AND2_X1 U53 ( .A1(n184), .A2(n185), .ZN(n162) );
  INV_X1 U55 ( .A(n16), .ZN(n438) );
  INV_X1 U56 ( .A(n189), .ZN(n443) );
  NOR2_X1 U57 ( .A1(n442), .A2(n375), .ZN(n184) );
  AOI22_X1 U58 ( .A1(n444), .A2(n411), .B1(n445), .B2(n407), .ZN(n55) );
  AOI22_X1 U59 ( .A1(n444), .A2(n405), .B1(n445), .B2(n401), .ZN(n45) );
  AOI22_X1 U60 ( .A1(n444), .A2(n397), .B1(n445), .B2(n395), .ZN(n35) );
  AOI22_X1 U61 ( .A1(n444), .A2(n391), .B1(n445), .B2(n389), .ZN(n17) );
  INV_X1 U62 ( .A(n68), .ZN(n444) );
  INV_X1 U63 ( .A(n67), .ZN(n445) );
  NAND2_X1 U64 ( .A1(n292), .A2(n442), .ZN(n190) );
  NAND2_X1 U66 ( .A1(n187), .A2(n442), .ZN(n64) );
  NAND2_X1 U67 ( .A1(n185), .A2(n442), .ZN(n63) );
  OAI22_X1 U68 ( .A1(1'b1), .A2(n371), .B1(n373), .B2(n335), .ZN(\U7/DATA2_9 )
         );
  AOI22_X1 U69 ( .A1(n453), .A2(n405), .B1(n454), .B2(n401), .ZN(n85) );
  AOI221_X1 U70 ( .B1(n448), .B2(n402), .C1(n452), .C2(n406), .A(n88), .ZN(n87) );
  OAI22_X1 U71 ( .A1(1'b1), .A2(n371), .B1(n373), .B2(n334), .ZN(\U7/DATA2_10 ) );
  AOI22_X1 U72 ( .A1(n453), .A2(n397), .B1(n454), .B2(n395), .ZN(n81) );
  AOI221_X1 U73 ( .B1(n448), .B2(n400), .C1(n452), .C2(n396), .A(n84), .ZN(n83) );
  OAI22_X1 U74 ( .A1(1'b1), .A2(n371), .B1(n373), .B2(n333), .ZN(\U7/DATA2_11 ) );
  AOI22_X1 U75 ( .A1(n453), .A2(n391), .B1(n454), .B2(n389), .ZN(n69) );
  AOI221_X1 U77 ( .B1(n448), .B2(n394), .C1(n452), .C2(n390), .A(n74), .ZN(n71) );
  OAI22_X1 U78 ( .A1(1'b1), .A2(n371), .B1(n337), .B2(n373), .ZN(\U7/DATA2_8 )
         );
  AOI22_X1 U79 ( .A1(n453), .A2(n411), .B1(n454), .B2(n407), .ZN(n89) );
  AOI221_X1 U80 ( .B1(n448), .B2(n408), .C1(n452), .C2(n412), .A(n92), .ZN(n91) );
  NOR2_X1 U81 ( .A1(n456), .A2(address_1[1]), .ZN(n147) );
  OAI221_X1 U82 ( .B1(n97), .B2(n413), .C1(n374), .C2(n99), .A(n100), .ZN(n305) );
  AOI221_X1 U83 ( .B1(n259), .B2(n448), .C1(n247), .C2(n452), .A(n104), .ZN(
        n99) );
  AOI222_X1 U84 ( .A1(n211), .A2(n101), .B1(n235), .B2(n102), .C1(n223), .C2(
        n103), .ZN(n100) );
  OAI22_X1 U85 ( .A1(n75), .A2(n414), .B1(n76), .B2(n415), .ZN(n104) );
  OAI221_X1 U86 ( .B1(n97), .B2(n416), .C1(n374), .C2(n108), .A(n109), .ZN(
        n306) );
  AOI221_X1 U88 ( .B1(n258), .B2(n448), .C1(n246), .C2(n452), .A(n110), .ZN(
        n108) );
  AOI222_X1 U89 ( .A1(n210), .A2(n101), .B1(n234), .B2(n102), .C1(n222), .C2(
        n103), .ZN(n109) );
  OAI22_X1 U90 ( .A1(n75), .A2(n417), .B1(n76), .B2(n418), .ZN(n110) );
  OAI221_X1 U91 ( .B1(n97), .B2(n419), .C1(n374), .C2(n114), .A(n115), .ZN(
        n307) );
  AOI221_X1 U92 ( .B1(n257), .B2(n448), .C1(n245), .C2(n452), .A(n116), .ZN(
        n114) );
  AOI222_X1 U93 ( .A1(n209), .A2(n101), .B1(n233), .B2(n102), .C1(n221), .C2(
        n103), .ZN(n115) );
  OAI22_X1 U94 ( .A1(n75), .A2(n420), .B1(n76), .B2(n421), .ZN(n116) );
  OAI221_X1 U95 ( .B1(n97), .B2(n422), .C1(n374), .C2(n120), .A(n121), .ZN(
        n308) );
  AOI221_X1 U96 ( .B1(n256), .B2(n448), .C1(n244), .C2(n452), .A(n122), .ZN(
        n120) );
  AOI222_X1 U97 ( .A1(n208), .A2(n101), .B1(n232), .B2(n102), .C1(n220), .C2(
        n103), .ZN(n121) );
  OAI22_X1 U98 ( .A1(n75), .A2(n423), .B1(n76), .B2(n424), .ZN(n122) );
  OAI221_X1 U99 ( .B1(n97), .B2(n425), .C1(n374), .C2(n126), .A(n127), .ZN(
        n309) );
  AOI221_X1 U100 ( .B1(n255), .B2(n448), .C1(n243), .C2(n452), .A(n128), .ZN(
        n126) );
  AOI222_X1 U101 ( .A1(n207), .A2(n101), .B1(n231), .B2(n102), .C1(n219), .C2(
        n103), .ZN(n127) );
  OAI22_X1 U102 ( .A1(n75), .A2(n426), .B1(n76), .B2(n427), .ZN(n128) );
  OAI221_X1 U103 ( .B1(n97), .B2(n428), .C1(n373), .C2(n132), .A(n133), .ZN(
        n310) );
  AOI221_X1 U104 ( .B1(n254), .B2(n448), .C1(n242), .C2(n452), .A(n134), .ZN(
        n132) );
  AOI222_X1 U105 ( .A1(n206), .A2(n101), .B1(n230), .B2(n102), .C1(n218), .C2(
        n103), .ZN(n133) );
  OAI22_X1 U106 ( .A1(n75), .A2(n429), .B1(n76), .B2(n430), .ZN(n134) );
  OAI221_X1 U107 ( .B1(n97), .B2(n431), .C1(n373), .C2(n138), .A(n139), .ZN(
        n311) );
  AOI221_X1 U108 ( .B1(n253), .B2(n448), .C1(n241), .C2(n452), .A(n140), .ZN(
        n138) );
  AOI222_X1 U109 ( .A1(n205), .A2(n101), .B1(n229), .B2(n102), .C1(n217), .C2(
        n103), .ZN(n139) );
  OAI22_X1 U110 ( .A1(n75), .A2(n432), .B1(n76), .B2(n433), .ZN(n140) );
  OAI221_X1 U111 ( .B1(n97), .B2(n434), .C1(n373), .C2(n144), .A(n145), .ZN(
        n312) );
  AOI221_X1 U112 ( .B1(n252), .B2(n448), .C1(n240), .C2(n452), .A(n150), .ZN(
        n144) );
  AOI222_X1 U113 ( .A1(n204), .A2(n101), .B1(n228), .B2(n102), .C1(n216), .C2(
        n103), .ZN(n145) );
  OAI22_X1 U114 ( .A1(n75), .A2(n435), .B1(n76), .B2(n436), .ZN(n150) );
  NOR2_X1 U115 ( .A1(address_1[1]), .A2(address_1[2]), .ZN(n289) );
  NAND2_X1 U116 ( .A1(n289), .A2(address_1[0]), .ZN(n75) );
  OAI22_X1 U117 ( .A1(n272), .A2(n75), .B1(n284), .B2(n76), .ZN(n92) );
  OAI22_X1 U118 ( .A1(n273), .A2(n75), .B1(n285), .B2(n76), .ZN(n88) );
  OAI22_X1 U119 ( .A1(n274), .A2(n75), .B1(n286), .B2(n76), .ZN(n84) );
  OAI22_X1 U120 ( .A1(n275), .A2(n75), .B1(n287), .B2(n76), .ZN(n74) );
  NOR2_X1 U121 ( .A1(n455), .A2(address_1[2]), .ZN(n291) );
  INV_X1 U122 ( .A(address_1[0]), .ZN(n451) );
  INV_X1 U123 ( .A(we_1), .ZN(n437) );
  NOR2_X1 U124 ( .A1(n373), .A2(address_1[0]), .ZN(n148) );
  NAND2_X1 U125 ( .A1(address_1[0]), .A2(n149), .ZN(n95) );
  NAND2_X1 U126 ( .A1(address_1[0]), .A2(n147), .ZN(n96) );
  NAND2_X1 U127 ( .A1(n291), .A2(address_1[0]), .ZN(n153) );
  INV_X1 U128 ( .A(address_1[2]), .ZN(n456) );
  INV_X1 U129 ( .A(address_1[1]), .ZN(n455) );
  NAND2_X1 U130 ( .A1(we_0), .A2(cs_0), .ZN(n15) );
  AOI221_X1 U131 ( .B1(n439), .B2(n408), .C1(n443), .C2(n412), .A(n60), .ZN(
        n57) );
  OAI22_X1 U132 ( .A1(n272), .A2(n25), .B1(n284), .B2(n26), .ZN(n60) );
  AOI221_X1 U133 ( .B1(n439), .B2(n402), .C1(n443), .C2(n406), .A(n50), .ZN(
        n47) );
  OAI22_X1 U134 ( .A1(n273), .A2(n25), .B1(n285), .B2(n26), .ZN(n50) );
  AOI221_X1 U135 ( .B1(n439), .B2(n400), .C1(n443), .C2(n396), .A(n40), .ZN(
        n37) );
  OAI22_X1 U136 ( .A1(n274), .A2(n25), .B1(n286), .B2(n26), .ZN(n40) );
  AOI221_X1 U137 ( .B1(n439), .B2(n394), .C1(n443), .C2(n390), .A(n24), .ZN(
        n19) );
  OAI22_X1 U138 ( .A1(n275), .A2(n25), .B1(n287), .B2(n26), .ZN(n24) );
  NOR2_X1 U139 ( .A1(n447), .A2(address_0[1]), .ZN(n185) );
  OAI221_X1 U140 ( .B1(n413), .B2(n157), .C1(n376), .C2(n158), .A(n159), .ZN(
        n297) );
  AOI221_X1 U141 ( .B1(n259), .B2(n439), .C1(n247), .C2(n443), .A(n163), .ZN(
        n158) );
  AOI222_X1 U142 ( .A1(n160), .A2(n211), .B1(n161), .B2(n235), .C1(n162), .C2(
        n223), .ZN(n159) );
  OAI22_X1 U143 ( .A1(n25), .A2(n414), .B1(n26), .B2(n415), .ZN(n163) );
  OAI221_X1 U144 ( .B1(n416), .B2(n157), .C1(n376), .C2(n164), .A(n165), .ZN(
        n298) );
  AOI221_X1 U145 ( .B1(n258), .B2(n439), .C1(n246), .C2(n443), .A(n166), .ZN(
        n164) );
  AOI222_X1 U146 ( .A1(n160), .A2(n210), .B1(n161), .B2(n234), .C1(n162), .C2(
        n222), .ZN(n165) );
  OAI22_X1 U147 ( .A1(n25), .A2(n417), .B1(n26), .B2(n418), .ZN(n166) );
  OAI221_X1 U148 ( .B1(n419), .B2(n157), .C1(n376), .C2(n167), .A(n168), .ZN(
        n299) );
  AOI221_X1 U149 ( .B1(n257), .B2(n439), .C1(n245), .C2(n443), .A(n169), .ZN(
        n167) );
  AOI222_X1 U150 ( .A1(n160), .A2(n209), .B1(n161), .B2(n233), .C1(n162), .C2(
        n221), .ZN(n168) );
  OAI22_X1 U151 ( .A1(n25), .A2(n420), .B1(n26), .B2(n421), .ZN(n169) );
  OAI221_X1 U152 ( .B1(n422), .B2(n157), .C1(n376), .C2(n170), .A(n171), .ZN(
        n300) );
  AOI221_X1 U153 ( .B1(n256), .B2(n439), .C1(n244), .C2(n443), .A(n172), .ZN(
        n170) );
  AOI222_X1 U154 ( .A1(n160), .A2(n208), .B1(n161), .B2(n232), .C1(n162), .C2(
        n220), .ZN(n171) );
  OAI22_X1 U155 ( .A1(n25), .A2(n423), .B1(n26), .B2(n424), .ZN(n172) );
  OAI221_X1 U156 ( .B1(n425), .B2(n157), .C1(n376), .C2(n173), .A(n174), .ZN(
        n301) );
  AOI221_X1 U157 ( .B1(n255), .B2(n439), .C1(n243), .C2(n443), .A(n175), .ZN(
        n173) );
  AOI222_X1 U158 ( .A1(n160), .A2(n207), .B1(n161), .B2(n231), .C1(n162), .C2(
        n219), .ZN(n174) );
  OAI22_X1 U159 ( .A1(n25), .A2(n426), .B1(n26), .B2(n427), .ZN(n175) );
  OAI221_X1 U160 ( .B1(n428), .B2(n157), .C1(n375), .C2(n176), .A(n177), .ZN(
        n302) );
  AOI221_X1 U161 ( .B1(n254), .B2(n439), .C1(n242), .C2(n443), .A(n178), .ZN(
        n176) );
  AOI222_X1 U162 ( .A1(n160), .A2(n206), .B1(n161), .B2(n230), .C1(n162), .C2(
        n218), .ZN(n177) );
  OAI22_X1 U163 ( .A1(n25), .A2(n429), .B1(n26), .B2(n430), .ZN(n178) );
  OAI221_X1 U164 ( .B1(n431), .B2(n157), .C1(n375), .C2(n179), .A(n180), .ZN(
        n303) );
  AOI221_X1 U165 ( .B1(n253), .B2(n439), .C1(n241), .C2(n443), .A(n181), .ZN(
        n179) );
  AOI222_X1 U166 ( .A1(n160), .A2(n205), .B1(n161), .B2(n229), .C1(n162), .C2(
        n217), .ZN(n180) );
  OAI22_X1 U167 ( .A1(n25), .A2(n432), .B1(n26), .B2(n433), .ZN(n181) );
  OAI221_X1 U168 ( .B1(n434), .B2(n157), .C1(n375), .C2(n182), .A(n183), .ZN(
        n304) );
  AOI221_X1 U169 ( .B1(n252), .B2(n439), .C1(n240), .C2(n443), .A(n188), .ZN(
        n182) );
  AOI222_X1 U170 ( .A1(n160), .A2(n204), .B1(n161), .B2(n228), .C1(n162), .C2(
        n216), .ZN(n183) );
  OAI22_X1 U171 ( .A1(n25), .A2(n435), .B1(n26), .B2(n436), .ZN(n188) );
  NAND2_X1 U172 ( .A1(n290), .A2(address_0[0]), .ZN(n25) );
  NOR2_X1 U173 ( .A1(address_0[1]), .A2(address_0[2]), .ZN(n290) );
  NAND3_X1 U174 ( .A1(cs_1), .A2(n15), .A3(we_1), .ZN(n16) );
  NOR2_X1 U175 ( .A1(n446), .A2(address_0[2]), .ZN(n292) );
  INV_X1 U176 ( .A(address_0[0]), .ZN(n442) );
  INV_X1 U177 ( .A(we_0), .ZN(n458) );
  NOR2_X1 U178 ( .A1(n375), .A2(address_0[0]), .ZN(n186) );
  NAND2_X1 U179 ( .A1(address_0[0]), .A2(n185), .ZN(n68) );
  NAND2_X1 U180 ( .A1(address_0[0]), .A2(n187), .ZN(n67) );
  NAND2_X1 U181 ( .A1(n292), .A2(address_0[0]), .ZN(n189) );
  INV_X1 U182 ( .A(n5), .ZN(n379) );
  AOI22_X1 U183 ( .A1(\U7/DATA2_9 ), .A2(n438), .B1(\U7/DATA1_9 ), .B2(n457), 
        .ZN(n5) );
  OAI22_X1 U184 ( .A1(1'b1), .A2(n372), .B1(n375), .B2(n330), .ZN(\U7/DATA1_9 ) );
  INV_X1 U185 ( .A(n4), .ZN(n378) );
  AOI22_X1 U186 ( .A1(\U7/DATA2_10 ), .A2(n438), .B1(\U7/DATA1_10 ), .B2(n457), 
        .ZN(n4) );
  OAI22_X1 U187 ( .A1(1'b1), .A2(n372), .B1(n375), .B2(n329), .ZN(
        \U7/DATA1_10 ) );
  INV_X1 U188 ( .A(n1), .ZN(n377) );
  AOI22_X1 U189 ( .A1(\U7/DATA2_11 ), .A2(n438), .B1(\U7/DATA1_11 ), .B2(n457), 
        .ZN(n1) );
  OAI22_X1 U190 ( .A1(1'b1), .A2(n372), .B1(n375), .B2(n328), .ZN(
        \U7/DATA1_11 ) );
  INV_X1 U191 ( .A(n6), .ZN(n380) );
  AOI22_X1 U192 ( .A1(\U7/DATA2_8 ), .A2(n438), .B1(\U7/DATA1_8 ), .B2(n457), 
        .ZN(n6) );
  OAI22_X1 U193 ( .A1(1'b1), .A2(n372), .B1(n332), .B2(n375), .ZN(\U7/DATA1_8 ) );
  INV_X1 U194 ( .A(n14), .ZN(n388) );
  AOI22_X1 U195 ( .A1(\U7/DATA2_0 ), .A2(n438), .B1(\U7/DATA1_0 ), .B2(n457), 
        .ZN(n14) );
  INV_X1 U196 ( .A(n13), .ZN(n384) );
  AOI22_X1 U197 ( .A1(\U7/DATA2_1 ), .A2(n438), .B1(\U7/DATA1_1 ), .B2(n457), 
        .ZN(n13) );
  INV_X1 U198 ( .A(n12), .ZN(n387) );
  AOI22_X1 U199 ( .A1(\U7/DATA2_2 ), .A2(n438), .B1(\U7/DATA1_2 ), .B2(n457), 
        .ZN(n12) );
  INV_X1 U200 ( .A(n11), .ZN(n383) );
  AOI22_X1 U201 ( .A1(\U7/DATA2_3 ), .A2(n438), .B1(\U7/DATA1_3 ), .B2(n457), 
        .ZN(n11) );
  INV_X1 U202 ( .A(n10), .ZN(n386) );
  AOI22_X1 U203 ( .A1(\U7/DATA2_4 ), .A2(n438), .B1(\U7/DATA1_4 ), .B2(n457), 
        .ZN(n10) );
  INV_X1 U204 ( .A(n9), .ZN(n382) );
  AOI22_X1 U205 ( .A1(\U7/DATA2_5 ), .A2(n438), .B1(\U7/DATA1_5 ), .B2(n457), 
        .ZN(n9) );
  INV_X1 U206 ( .A(n8), .ZN(n385) );
  AOI22_X1 U207 ( .A1(\U7/DATA2_6 ), .A2(n438), .B1(\U7/DATA1_6 ), .B2(n457), 
        .ZN(n8) );
  INV_X1 U208 ( .A(n7), .ZN(n381) );
  AOI22_X1 U209 ( .A1(\U7/DATA2_7 ), .A2(n438), .B1(\U7/DATA1_7 ), .B2(n457), 
        .ZN(n7) );
  INV_X1 U210 ( .A(n271), .ZN(n414) );
  INV_X1 U211 ( .A(n270), .ZN(n417) );
  INV_X1 U212 ( .A(n269), .ZN(n420) );
  INV_X1 U213 ( .A(n268), .ZN(n423) );
  INV_X1 U214 ( .A(n267), .ZN(n426) );
  INV_X1 U215 ( .A(n266), .ZN(n429) );
  INV_X1 U216 ( .A(n265), .ZN(n432) );
  INV_X1 U217 ( .A(n264), .ZN(n435) );
  INV_X1 U218 ( .A(n200), .ZN(n407) );
  INV_X1 U219 ( .A(n201), .ZN(n401) );
  INV_X1 U220 ( .A(n202), .ZN(n395) );
  INV_X1 U221 ( .A(n203), .ZN(n389) );
  INV_X1 U222 ( .A(n283), .ZN(n415) );
  INV_X1 U223 ( .A(n282), .ZN(n418) );
  INV_X1 U224 ( .A(n281), .ZN(n421) );
  INV_X1 U225 ( .A(n280), .ZN(n424) );
  INV_X1 U226 ( .A(n279), .ZN(n427) );
  INV_X1 U227 ( .A(n278), .ZN(n430) );
  INV_X1 U228 ( .A(n277), .ZN(n433) );
  INV_X1 U229 ( .A(n276), .ZN(n436) );
  INV_X1 U230 ( .A(n224), .ZN(n411) );
  INV_X1 U231 ( .A(n225), .ZN(n405) );
  INV_X1 U232 ( .A(n226), .ZN(n397) );
  INV_X1 U233 ( .A(n227), .ZN(n391) );
  INV_X1 U234 ( .A(n236), .ZN(n409) );
  INV_X1 U235 ( .A(n248), .ZN(n412) );
  INV_X1 U236 ( .A(n237), .ZN(n403) );
  INV_X1 U237 ( .A(n249), .ZN(n406) );
  INV_X1 U238 ( .A(n238), .ZN(n399) );
  INV_X1 U239 ( .A(n250), .ZN(n396) );
  INV_X1 U240 ( .A(n239), .ZN(n393) );
  INV_X1 U241 ( .A(n251), .ZN(n390) );
  INV_X1 U242 ( .A(address_0[2]), .ZN(n447) );
  INV_X1 U243 ( .A(n199), .ZN(n413) );
  INV_X1 U244 ( .A(n198), .ZN(n416) );
  INV_X1 U245 ( .A(n197), .ZN(n419) );
  INV_X1 U246 ( .A(n196), .ZN(n422) );
  INV_X1 U247 ( .A(n195), .ZN(n425) );
  INV_X1 U248 ( .A(n194), .ZN(n428) );
  INV_X1 U249 ( .A(n193), .ZN(n431) );
  INV_X1 U250 ( .A(n192), .ZN(n434) );
  INV_X1 U251 ( .A(n212), .ZN(n410) );
  INV_X1 U252 ( .A(n260), .ZN(n408) );
  INV_X1 U253 ( .A(n213), .ZN(n404) );
  INV_X1 U254 ( .A(n261), .ZN(n402) );
  INV_X1 U255 ( .A(n214), .ZN(n398) );
  INV_X1 U256 ( .A(n262), .ZN(n400) );
  INV_X1 U257 ( .A(n215), .ZN(n392) );
  INV_X1 U259 ( .A(n263), .ZN(n394) );
  INV_X1 U260 ( .A(address_0[1]), .ZN(n446) );
endmodule


module syn_fifo_0 ( clk, rst, wr_cs, rd_cs, data_in, rd_en, wr_en, data_out, 
        empty, full );
  input [11:0] data_in;
  output [11:0] data_out;
  input clk, rst, wr_cs, rd_cs, rd_en, wr_en;
  output empty, full;
  wire   n46, n45, n44, n43, n42, n41, n40, n39, n38, n37, n36, n35,
         \r315/A[0] , \r315/A[1] , \r315/A[2] , \r315/A[3] , \add_53/A[0] ,
         \add_53/A[1] , \add_53/A[2] , \add_62/A[0] , \add_62/A[1] ,
         \add_62/A[2] , n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n18, n19, n21, n22, n23, n24, n25, n27, n28, n31, n32,
         n33, n47, n48, n49, n50, n52, n53, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n69, n70, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109;

  DFFR_X1 \data_out_reg[11]  ( .D(n84), .CK(clk), .RN(n103), .Q(data_out[11]), 
        .QN(n66) );
  DFFR_X1 \data_out_reg[10]  ( .D(n83), .CK(clk), .RN(n103), .Q(data_out[10]), 
        .QN(n65) );
  DFFR_X1 \data_out_reg[9]  ( .D(n82), .CK(clk), .RN(n103), .Q(data_out[9]), 
        .QN(n64) );
  DFFR_X1 \data_out_reg[8]  ( .D(n81), .CK(clk), .RN(n103), .Q(data_out[8]), 
        .QN(n63) );
  DFFR_X1 \data_out_reg[7]  ( .D(n80), .CK(clk), .RN(n103), .Q(data_out[7]), 
        .QN(n62) );
  DFFR_X1 \data_out_reg[6]  ( .D(n79), .CK(clk), .RN(n103), .Q(data_out[6]), 
        .QN(n61) );
  DFFR_X1 \data_out_reg[5]  ( .D(n78), .CK(clk), .RN(n103), .Q(data_out[5]), 
        .QN(n60) );
  DFFR_X1 \data_out_reg[4]  ( .D(n77), .CK(clk), .RN(n103), .Q(data_out[4]), 
        .QN(n59) );
  DFFR_X1 \data_out_reg[3]  ( .D(n76), .CK(clk), .RN(n103), .Q(data_out[3]), 
        .QN(n58) );
  DFFR_X1 \data_out_reg[2]  ( .D(n75), .CK(clk), .RN(n103), .Q(data_out[2]), 
        .QN(n57) );
  DFFR_X1 \data_out_reg[1]  ( .D(n74), .CK(clk), .RN(n103), .Q(data_out[1]), 
        .QN(n56) );
  DFFR_X1 \data_out_reg[0]  ( .D(n73), .CK(clk), .RN(n103), .Q(data_out[0]), 
        .QN(n55) );
  DFFR_X1 \status_cnt_reg[0]  ( .D(n94), .CK(clk), .RN(n103), .Q(\r315/A[0] ), 
        .QN(n101) );
  DFFR_X1 \status_cnt_reg[1]  ( .D(n92), .CK(clk), .RN(n103), .Q(\r315/A[1] )
         );
  DFFR_X1 \status_cnt_reg[2]  ( .D(n91), .CK(clk), .RN(n103), .Q(\r315/A[2] )
         );
  DFFR_X1 \status_cnt_reg[3]  ( .D(n93), .CK(clk), .RN(n103), .Q(\r315/A[3] ), 
        .QN(n100) );
  XOR2_X1 U28 ( .A(n15), .B(n67), .Z(n85) );
  XOR2_X1 U30 ( .A(\add_62/A[1] ), .B(n16), .Z(n86) );
  XOR2_X1 U33 ( .A(n2), .B(n69), .Z(n87) );
  XOR2_X1 U34 ( .A(n18), .B(n70), .Z(n88) );
  XOR2_X1 U36 ( .A(n19), .B(\add_53/A[1] ), .Z(n89) );
  XOR2_X1 U39 ( .A(n21), .B(n72), .Z(n90) );
  XOR2_X1 U42 ( .A(n25), .B(n107), .Z(n23) );
  XOR2_X1 U45 ( .A(n101), .B(n25), .Z(n28) );
  XOR2_X1 U46 ( .A(n31), .B(n100), .Z(n93) );
  XOR2_X1 U48 ( .A(n33), .B(n25), .Z(n32) );
  XOR2_X1 U57 ( .A(n24), .B(\r315/A[0] ), .Z(n94) );
  NAND2_X2 U62 ( .A1(rd_en), .A2(rd_cs), .ZN(n2) );
  ram_dp_ar_aw_0 DP_RAM ( .address_0({\add_53/A[2] , \add_53/A[1] , 
        \add_53/A[0] }), .data_0(data_in), .cs_0(wr_cs), .we_0(wr_en), .oe_0(
        1'b0), .address_1({\add_62/A[2] , \add_62/A[1] , \add_62/A[0] }), 
        .data_1({n46, n45, n44, n43, n42, n41, n40, n39, n38, n37, n36, n35}), 
        .cs_1(rd_cs), .we_1(1'b0), .oe_1(rd_en) );
  DFFR_X1 \wr_pointer_reg[0]  ( .D(n90), .CK(clk), .RN(n104), .Q(\add_53/A[0] ), .QN(n72) );
  DFFR_X1 \wr_pointer_reg[1]  ( .D(n89), .CK(clk), .RN(n104), .Q(\add_53/A[1] ) );
  DFFR_X1 \wr_pointer_reg[2]  ( .D(n88), .CK(clk), .RN(n104), .Q(\add_53/A[2] ), .QN(n70) );
  DFFR_X1 \rd_pointer_reg[0]  ( .D(n87), .CK(clk), .RN(n104), .Q(\add_62/A[0] ), .QN(n69) );
  DFFR_X1 \rd_pointer_reg[1]  ( .D(n86), .CK(clk), .RN(n104), .Q(\add_62/A[1] ) );
  DFFR_X1 \rd_pointer_reg[2]  ( .D(n85), .CK(clk), .RN(n104), .Q(\add_62/A[2] ), .QN(n67) );
  INV_X1 U3 ( .A(n107), .ZN(n99) );
  AOI21_X1 U4 ( .B1(n101), .B2(n25), .A(n49), .ZN(n47) );
  OR2_X1 U5 ( .A1(empty), .A2(n109), .ZN(n102) );
  NOR2_X2 U6 ( .A1(n2), .A2(n102), .ZN(n50) );
  NAND2_X2 U7 ( .A1(n103), .A2(n50), .ZN(n25) );
  OR3_X1 U8 ( .A1(\r315/A[1] ), .A2(\r315/A[2] ), .A3(\r315/A[0] ), .ZN(n53)
         );
  INV_X1 U9 ( .A(n25), .ZN(n108) );
  NOR2_X1 U10 ( .A1(n107), .A2(n25), .ZN(n48) );
  CLKBUF_X1 U11 ( .A(rst), .Z(n103) );
  CLKBUF_X1 U12 ( .A(rst), .Z(n104) );
  INV_X1 U13 ( .A(n2), .ZN(n105) );
  NAND2_X1 U14 ( .A1(n106), .A2(n52), .ZN(n24) );
  OAI211_X1 U15 ( .C1(n53), .C2(n100), .A(n2), .B(n109), .ZN(n52) );
  INV_X1 U16 ( .A(n50), .ZN(n106) );
  INV_X1 U17 ( .A(n21), .ZN(n109) );
  INV_X1 U18 ( .A(n47), .ZN(n107) );
  AND4_X1 U19 ( .A1(n100), .A2(\r315/A[0] ), .A3(\r315/A[2] ), .A4(\r315/A[1] ), .ZN(full) );
  NOR2_X1 U20 ( .A1(n53), .A2(\r315/A[3] ), .ZN(empty) );
  NOR2_X1 U21 ( .A1(n2), .A2(n69), .ZN(n16) );
  OAI22_X1 U22 ( .A1(n55), .A2(n105), .B1(n2), .B2(n3), .ZN(n73) );
  INV_X1 U23 ( .A(n35), .ZN(n3) );
  OAI22_X1 U24 ( .A1(n56), .A2(n105), .B1(n2), .B2(n4), .ZN(n74) );
  INV_X1 U25 ( .A(n36), .ZN(n4) );
  OAI22_X1 U26 ( .A1(n57), .A2(n105), .B1(n2), .B2(n5), .ZN(n75) );
  INV_X1 U27 ( .A(n37), .ZN(n5) );
  OAI22_X1 U29 ( .A1(n58), .A2(n105), .B1(n2), .B2(n6), .ZN(n76) );
  INV_X1 U31 ( .A(n38), .ZN(n6) );
  OAI22_X1 U32 ( .A1(n59), .A2(n105), .B1(n2), .B2(n7), .ZN(n77) );
  INV_X1 U35 ( .A(n39), .ZN(n7) );
  OAI22_X1 U37 ( .A1(n60), .A2(n105), .B1(n2), .B2(n8), .ZN(n78) );
  INV_X1 U38 ( .A(n40), .ZN(n8) );
  OAI22_X1 U40 ( .A1(n61), .A2(n105), .B1(n2), .B2(n9), .ZN(n79) );
  INV_X1 U41 ( .A(n41), .ZN(n9) );
  OAI22_X1 U43 ( .A1(n62), .A2(n105), .B1(n2), .B2(n10), .ZN(n80) );
  INV_X1 U44 ( .A(n42), .ZN(n10) );
  OAI22_X1 U47 ( .A1(n64), .A2(n105), .B1(n2), .B2(n12), .ZN(n82) );
  INV_X1 U49 ( .A(n44), .ZN(n12) );
  OAI22_X1 U50 ( .A1(n65), .A2(n105), .B1(n2), .B2(n13), .ZN(n83) );
  INV_X1 U51 ( .A(n45), .ZN(n13) );
  OAI22_X1 U52 ( .A1(n66), .A2(n105), .B1(n2), .B2(n14), .ZN(n84) );
  INV_X1 U53 ( .A(n46), .ZN(n14) );
  OAI22_X1 U54 ( .A1(n63), .A2(n105), .B1(n2), .B2(n11), .ZN(n81) );
  INV_X1 U55 ( .A(n43), .ZN(n11) );
  AOI21_X1 U56 ( .B1(n108), .B2(\r315/A[0] ), .A(\r315/A[1] ), .ZN(n49) );
  NAND2_X1 U58 ( .A1(n32), .A2(n24), .ZN(n31) );
  OAI22_X1 U59 ( .A1(n108), .A2(n99), .B1(n48), .B2(\r315/A[2] ), .ZN(n33) );
  NAND2_X1 U60 ( .A1(wr_en), .A2(wr_cs), .ZN(n21) );
  XNOR2_X1 U61 ( .A(\r315/A[1] ), .B(n27), .ZN(n92) );
  NAND2_X1 U63 ( .A1(n28), .A2(n24), .ZN(n27) );
  XNOR2_X1 U64 ( .A(\r315/A[2] ), .B(n22), .ZN(n91) );
  NAND2_X1 U65 ( .A1(n23), .A2(n24), .ZN(n22) );
  NAND2_X1 U66 ( .A1(n16), .A2(\add_62/A[1] ), .ZN(n15) );
  NOR2_X1 U67 ( .A1(n21), .A2(n72), .ZN(n19) );
  NAND2_X1 U68 ( .A1(n19), .A2(\add_53/A[1] ), .ZN(n18) );
endmodule


module router_vcarb_0 ( Rst, Port_vc0_arb_req, Port_vc1_arb_req, 
        Port_vc0_arb_grant, Port_vc1_arb_grant, Port_vc0_usage, Port_vc1_usage
 );
  input [14:0] Port_vc0_arb_req;
  input [14:0] Port_vc1_arb_req;
  output [14:0] Port_vc0_arb_grant;
  output [14:0] Port_vc1_arb_grant;
  input Rst;
  output Port_vc0_usage, Port_vc1_usage;
  wire   n22, n24, n39, n1, n2, n3, n4, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n23, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115;

  NAND4_X1 U82 ( .A1(n24), .A2(n110), .A3(n115), .A4(n114), .ZN(n39) );
  AND2_X2 U1 ( .A1(n78), .A2(n79), .ZN(n48) );
  CLKBUF_X1 U2 ( .A(n67), .Z(n1) );
  NOR3_X1 U3 ( .A1(n56), .A2(n38), .A3(n40), .ZN(n59) );
  INV_X1 U4 ( .A(Port_vc0_arb_req[6]), .ZN(n2) );
  INV_X1 U5 ( .A(n4), .ZN(n3) );
  INV_X1 U6 ( .A(Port_vc0_arb_req[9]), .ZN(n100) );
  CLKBUF_X1 U7 ( .A(Port_vc0_arb_req[9]), .Z(n4) );
  AND2_X1 U8 ( .A1(n44), .A2(n9), .ZN(Port_vc1_arb_grant[11]) );
  AND4_X2 U9 ( .A1(n63), .A2(n64), .A3(n67), .A4(n66), .ZN(n11) );
  NAND2_X1 U10 ( .A1(n82), .A2(n52), .ZN(n107) );
  AND3_X1 U11 ( .A1(n20), .A2(Port_vc1_arb_req[5]), .A3(n41), .ZN(
        Port_vc1_arb_grant[5]) );
  AND2_X1 U12 ( .A1(n72), .A2(n71), .ZN(n7) );
  AND2_X1 U13 ( .A1(n66), .A2(n64), .ZN(n8) );
  INV_X1 U14 ( .A(Port_vc1_arb_req[0]), .ZN(n10) );
  NAND3_X1 U15 ( .A1(n63), .A2(n8), .A3(n67), .ZN(n17) );
  CLKBUF_X1 U16 ( .A(n42), .Z(n9) );
  AND4_X2 U17 ( .A1(n11), .A2(Port_vc1_arb_req[12]), .A3(n10), .A4(n7), .ZN(
        n47) );
  BUF_X4 U18 ( .A(Rst), .Z(n41) );
  AND2_X1 U19 ( .A1(n46), .A2(n45), .ZN(n28) );
  NOR2_X1 U20 ( .A1(Port_vc0_arb_req[3]), .A2(n23), .ZN(n52) );
  NOR4_X1 U21 ( .A1(Port_vc0_arb_req[9]), .A2(Port_vc0_arb_req[8]), .A3(
        Port_vc0_arb_req[10]), .A4(Port_vc0_arb_req[7]), .ZN(n12) );
  NAND4_X1 U22 ( .A1(n48), .A2(n51), .A3(n50), .A4(n49), .ZN(Port_vc1_usage)
         );
  CLKBUF_X1 U23 ( .A(Port_vc1_arb_req[13]), .Z(n13) );
  INV_X1 U24 ( .A(n19), .ZN(n14) );
  CLKBUF_X1 U25 ( .A(n104), .Z(n15) );
  NAND4_X1 U26 ( .A1(n63), .A2(n64), .A3(n67), .A4(n66), .ZN(n16) );
  CLKBUF_X1 U27 ( .A(n20), .Z(n18) );
  INV_X1 U28 ( .A(n82), .ZN(n19) );
  AND4_X1 U29 ( .A1(n12), .A2(n2), .A3(n94), .A4(Port_vc0_arb_req[11]), .ZN(
        n53) );
  NOR2_X1 U30 ( .A1(n16), .A2(Port_vc1_arb_req[0]), .ZN(n20) );
  NOR2_X1 U31 ( .A1(n17), .A2(Port_vc1_arb_req[0]), .ZN(n27) );
  INV_X1 U32 ( .A(n32), .ZN(n21) );
  CLKBUF_X1 U33 ( .A(n91), .Z(n37) );
  CLKBUF_X1 U34 ( .A(n90), .Z(n26) );
  NAND3_X1 U35 ( .A1(n84), .A2(n85), .A3(n88), .ZN(n23) );
  NAND2_X1 U36 ( .A1(n87), .A2(n25), .ZN(n57) );
  INV_X1 U37 ( .A(n23), .ZN(n25) );
  INV_X1 U38 ( .A(n107), .ZN(n91) );
  OAI21_X1 U39 ( .B1(Port_vc1_arb_req[14]), .B2(Port_vc1_arb_req[13]), .A(n41), 
        .ZN(n49) );
  OAI21_X1 U40 ( .B1(n33), .B2(Port_vc1_arb_req[6]), .A(n41), .ZN(n50) );
  INV_X1 U41 ( .A(n13), .ZN(n22) );
  OR2_X1 U42 ( .A1(n76), .A2(Port_vc1_arb_req[8]), .ZN(n77) );
  INV_X1 U43 ( .A(Port_vc1_arb_req[8]), .ZN(n115) );
  INV_X1 U44 ( .A(Port_vc1_arb_req[9]), .ZN(n114) );
  INV_X1 U45 ( .A(Port_vc0_arb_req[13]), .ZN(n112) );
  INV_X1 U46 ( .A(Port_vc1_arb_req[14]), .ZN(n113) );
  INV_X1 U47 ( .A(Port_vc0_arb_req[14]), .ZN(n111) );
  AND4_X2 U48 ( .A1(n27), .A2(n45), .A3(n7), .A4(Port_vc1_arb_req[11]), .ZN(
        n44) );
  INV_X1 U49 ( .A(n54), .ZN(n29) );
  AND2_X1 U50 ( .A1(n41), .A2(n16), .ZN(n30) );
  NOR2_X1 U51 ( .A1(n43), .A2(n30), .ZN(n51) );
  NAND4_X2 U52 ( .A1(n100), .A2(n98), .A3(n101), .A4(n97), .ZN(n105) );
  CLKBUF_X1 U53 ( .A(n24), .Z(n31) );
  CLKBUF_X1 U54 ( .A(n87), .Z(n32) );
  NOR4_X2 U55 ( .A1(n54), .A2(n106), .A3(Port_vc0_arb_req[11]), .A4(n105), 
        .ZN(n55) );
  INV_X1 U56 ( .A(n45), .ZN(n33) );
  CLKBUF_X1 U57 ( .A(n79), .Z(n34) );
  NAND2_X1 U58 ( .A1(n69), .A2(n61), .ZN(n43) );
  CLKBUF_X1 U59 ( .A(n63), .Z(n35) );
  INV_X1 U60 ( .A(n35), .ZN(n36) );
  AND2_X1 U61 ( .A1(n41), .A2(n58), .ZN(n38) );
  AND2_X1 U62 ( .A1(n41), .A2(n57), .ZN(n40) );
  CLKBUF_X1 U63 ( .A(n41), .Z(n42) );
  INV_X1 U64 ( .A(Port_vc1_arb_req[3]), .ZN(n66) );
  INV_X1 U65 ( .A(Port_vc1_arb_req[2]), .ZN(n64) );
  INV_X1 U66 ( .A(Port_vc1_arb_req[4]), .ZN(n67) );
  INV_X1 U67 ( .A(Port_vc1_arb_req[1]), .ZN(n63) );
  NAND2_X1 U68 ( .A1(Port_vc1_arb_req[0]), .A2(n41), .ZN(n61) );
  NAND3_X1 U69 ( .A1(n20), .A2(Port_vc1_arb_req[5]), .A3(n41), .ZN(n69) );
  INV_X1 U70 ( .A(Port_vc1_arb_req[5]), .ZN(n72) );
  INV_X1 U71 ( .A(Port_vc1_arb_req[6]), .ZN(n71) );
  INV_X1 U72 ( .A(Port_vc1_arb_req[11]), .ZN(n46) );
  NAND2_X1 U73 ( .A1(n44), .A2(n41), .ZN(n78) );
  INV_X1 U74 ( .A(n39), .ZN(n45) );
  NAND3_X1 U75 ( .A1(n47), .A2(n28), .A3(n41), .ZN(n79) );
  INV_X1 U76 ( .A(Port_vc0_arb_req[7]), .ZN(n97) );
  INV_X1 U77 ( .A(Port_vc0_arb_req[8]), .ZN(n98) );
  INV_X1 U78 ( .A(Port_vc0_arb_req[10]), .ZN(n101) );
  INV_X1 U79 ( .A(Port_vc0_arb_req[4]), .ZN(n88) );
  INV_X1 U80 ( .A(Port_vc0_arb_req[2]), .ZN(n85) );
  INV_X1 U81 ( .A(Port_vc0_arb_req[1]), .ZN(n84) );
  INV_X1 U83 ( .A(Port_vc0_arb_req[3]), .ZN(n87) );
  INV_X1 U84 ( .A(Port_vc0_arb_req[0]), .ZN(n82) );
  NAND3_X1 U85 ( .A1(n53), .A2(n37), .A3(n41), .ZN(n103) );
  INV_X1 U86 ( .A(Port_vc0_arb_req[5]), .ZN(n94) );
  INV_X1 U87 ( .A(Port_vc0_arb_req[6]), .ZN(n93) );
  NAND2_X1 U88 ( .A1(n94), .A2(n2), .ZN(n106) );
  INV_X1 U89 ( .A(Port_vc0_arb_req[12]), .ZN(n54) );
  NAND3_X1 U90 ( .A1(n55), .A2(n37), .A3(n41), .ZN(n104) );
  OAI21_X1 U91 ( .B1(Port_vc0_arb_req[14]), .B2(Port_vc0_arb_req[13]), .A(n42), 
        .ZN(n60) );
  NAND2_X1 U92 ( .A1(n12), .A2(n93), .ZN(n58) );
  NAND2_X1 U93 ( .A1(n19), .A2(n41), .ZN(n81) );
  NAND3_X1 U94 ( .A1(n91), .A2(Port_vc0_arb_req[5]), .A3(n41), .ZN(n90) );
  NAND2_X1 U95 ( .A1(n90), .A2(n81), .ZN(n56) );
  NAND4_X1 U96 ( .A1(n59), .A2(n104), .A3(n60), .A4(n103), .ZN(Port_vc0_usage)
         );
  INV_X1 U97 ( .A(n61), .ZN(Port_vc1_arb_grant[0]) );
  NAND2_X1 U98 ( .A1(n9), .A2(n10), .ZN(n62) );
  NOR2_X1 U99 ( .A1(n62), .A2(n35), .ZN(Port_vc1_arb_grant[1]) );
  NOR3_X1 U100 ( .A1(n36), .A2(n62), .A3(n64), .ZN(Port_vc1_arb_grant[2]) );
  INV_X1 U101 ( .A(n62), .ZN(n65) );
  NAND3_X1 U102 ( .A1(n65), .A2(n64), .A3(n35), .ZN(n68) );
  NOR2_X1 U103 ( .A1(n68), .A2(n66), .ZN(Port_vc1_arb_grant[3]) );
  NOR3_X1 U104 ( .A1(Port_vc1_arb_req[3]), .A2(n68), .A3(n1), .ZN(
        Port_vc1_arb_grant[4]) );
  NAND2_X1 U105 ( .A1(n18), .A2(n9), .ZN(n70) );
  NOR3_X1 U106 ( .A1(Port_vc1_arb_req[5]), .A2(n70), .A3(n71), .ZN(
        Port_vc1_arb_grant[6]) );
  INV_X1 U107 ( .A(Port_vc1_arb_req[7]), .ZN(n110) );
  INV_X1 U108 ( .A(n70), .ZN(n73) );
  NAND3_X1 U109 ( .A1(n73), .A2(n72), .A3(n71), .ZN(n74) );
  NOR2_X1 U110 ( .A1(n110), .A2(n74), .ZN(Port_vc1_arb_grant[7]) );
  INV_X1 U111 ( .A(n74), .ZN(n75) );
  NAND2_X1 U112 ( .A1(n75), .A2(n110), .ZN(n76) );
  NOR2_X1 U113 ( .A1(n115), .A2(n76), .ZN(Port_vc1_arb_grant[8]) );
  NOR2_X1 U114 ( .A1(n114), .A2(n77), .ZN(Port_vc1_arb_grant[9]) );
  INV_X1 U115 ( .A(Port_vc1_arb_req[10]), .ZN(n24) );
  NOR3_X1 U116 ( .A1(Port_vc1_arb_req[9]), .A2(n31), .A3(n77), .ZN(
        Port_vc1_arb_grant[10]) );
  INV_X1 U117 ( .A(n34), .ZN(Port_vc1_arb_grant[12]) );
  NAND4_X1 U118 ( .A1(n28), .A2(n7), .A3(n18), .A4(n9), .ZN(n80) );
  NOR3_X1 U119 ( .A1(n22), .A2(Port_vc1_arb_req[12]), .A3(n80), .ZN(
        Port_vc1_arb_grant[13]) );
  NOR4_X1 U120 ( .A1(n13), .A2(Port_vc1_arb_req[12]), .A3(n113), .A4(n80), 
        .ZN(Port_vc1_arb_grant[14]) );
  INV_X1 U121 ( .A(n81), .ZN(Port_vc0_arb_grant[0]) );
  NAND2_X1 U122 ( .A1(n9), .A2(n14), .ZN(n83) );
  NOR2_X1 U123 ( .A1(n83), .A2(n84), .ZN(Port_vc0_arb_grant[1]) );
  NOR3_X1 U124 ( .A1(Port_vc0_arb_req[1]), .A2(n83), .A3(n85), .ZN(
        Port_vc0_arb_grant[2]) );
  INV_X1 U125 ( .A(n83), .ZN(n86) );
  NAND3_X1 U126 ( .A1(n86), .A2(n85), .A3(n84), .ZN(n89) );
  NOR2_X1 U127 ( .A1(n89), .A2(n32), .ZN(Port_vc0_arb_grant[3]) );
  NOR3_X1 U128 ( .A1(n21), .A2(n89), .A3(n88), .ZN(Port_vc0_arb_grant[4]) );
  INV_X1 U129 ( .A(n26), .ZN(Port_vc0_arb_grant[5]) );
  NAND2_X1 U130 ( .A1(n9), .A2(n37), .ZN(n92) );
  NOR3_X1 U131 ( .A1(Port_vc0_arb_req[5]), .A2(n92), .A3(n2), .ZN(
        Port_vc0_arb_grant[6]) );
  INV_X1 U132 ( .A(n92), .ZN(n95) );
  NAND3_X1 U133 ( .A1(n95), .A2(n94), .A3(n2), .ZN(n96) );
  NOR2_X1 U134 ( .A1(n96), .A2(n97), .ZN(Port_vc0_arb_grant[7]) );
  NOR3_X1 U135 ( .A1(Port_vc0_arb_req[7]), .A2(n96), .A3(n98), .ZN(
        Port_vc0_arb_grant[8]) );
  INV_X1 U136 ( .A(n96), .ZN(n99) );
  NAND3_X1 U137 ( .A1(n99), .A2(n98), .A3(n97), .ZN(n102) );
  NOR2_X1 U138 ( .A1(n102), .A2(n3), .ZN(Port_vc0_arb_grant[9]) );
  NOR3_X1 U139 ( .A1(n4), .A2(n102), .A3(n101), .ZN(Port_vc0_arb_grant[10]) );
  INV_X1 U140 ( .A(n103), .ZN(Port_vc0_arb_grant[11]) );
  INV_X1 U141 ( .A(n15), .ZN(Port_vc0_arb_grant[12]) );
  NOR4_X1 U142 ( .A1(n107), .A2(n106), .A3(Port_vc0_arb_req[11]), .A4(n105), 
        .ZN(n108) );
  NAND2_X1 U143 ( .A1(n9), .A2(n108), .ZN(n109) );
  NOR3_X1 U144 ( .A1(n112), .A2(n29), .A3(n109), .ZN(Port_vc0_arb_grant[13])
         );
  NOR4_X1 U145 ( .A1(Port_vc0_arb_req[13]), .A2(n29), .A3(n111), .A4(n109), 
        .ZN(Port_vc0_arb_grant[14]) );
endmodule


module router_vcarb_3 ( Rst, Port_vc0_arb_req, Port_vc1_arb_req, 
        Port_vc0_arb_grant, Port_vc1_arb_grant, Port_vc0_usage, Port_vc1_usage
 );
  input [14:0] Port_vc0_arb_req;
  input [14:0] Port_vc1_arb_req;
  output [14:0] Port_vc0_arb_grant;
  output [14:0] Port_vc1_arb_grant;
  input Rst;
  output Port_vc0_usage, Port_vc1_usage;
  wire   n5, n6, n9, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n50, n51, n52, n53, n54,
         n55, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90;

  NOR2_X2 U46 ( .A1(n13), .A2(Port_vc0_arb_req[0]), .ZN(n85) );
  NAND4_X1 U84 ( .A1(n90), .A2(n89), .A3(n88), .A4(n87), .ZN(Port_vc0_usage)
         );
  AND2_X1 U1 ( .A1(Port_vc1_arb_req[0]), .A2(n12), .ZN(Port_vc1_arb_grant[0])
         );
  AND4_X1 U2 ( .A1(n44), .A2(n5), .A3(Port_vc1_arb_req[11]), .A4(n16), .ZN(
        Port_vc1_arb_grant[11]) );
  AND4_X1 U3 ( .A1(Port_vc0_arb_req[11]), .A2(n65), .A3(n74), .A4(n76), .ZN(
        Port_vc0_arb_grant[11]) );
  AND3_X1 U4 ( .A1(Port_vc1_arb_req[5]), .A2(n29), .A3(n44), .ZN(
        Port_vc1_arb_grant[5]) );
  NOR4_X2 U5 ( .A1(Port_vc0_arb_grant[5]), .A2(Port_vc0_arb_grant[6]), .A3(
        Port_vc0_arb_grant[11]), .A4(Port_vc0_arb_grant[12]), .ZN(n87) );
  NOR4_X2 U6 ( .A1(Port_vc1_arb_grant[11]), .A2(Port_vc1_arb_grant[5]), .A3(
        Port_vc1_arb_grant[0]), .A4(Port_vc1_arb_grant[12]), .ZN(n25) );
  AND3_X2 U7 ( .A1(n68), .A2(n69), .A3(Port_vc0_arb_req[12]), .ZN(
        Port_vc0_arb_grant[12]) );
  AND4_X1 U8 ( .A1(n42), .A2(n41), .A3(n38), .A4(n39), .ZN(n5) );
  AND2_X1 U9 ( .A1(n14), .A2(n31), .ZN(n6) );
  NOR3_X1 U10 ( .A1(n81), .A2(Port_vc0_arb_req[3]), .A3(n86), .ZN(
        Port_vc0_arb_grant[4]) );
  AND4_X1 U11 ( .A1(n85), .A2(n76), .A3(Port_vc0_arb_req[5]), .A4(n77), .ZN(
        Port_vc0_arb_grant[5]) );
  AND3_X1 U12 ( .A1(n85), .A2(n77), .A3(n55), .ZN(n9) );
  AND3_X1 U13 ( .A1(n77), .A2(n55), .A3(n54), .ZN(Port_vc0_arb_grant[6]) );
  AND4_X1 U14 ( .A1(Port_vc1_arb_req[12]), .A2(n5), .A3(n45), .A4(n19), .ZN(
        Port_vc1_arb_grant[12]) );
  INV_X1 U15 ( .A(Port_vc0_arb_req[13]), .ZN(n83) );
  INV_X1 U16 ( .A(Port_vc1_arb_req[14]), .ZN(n84) );
  INV_X1 U17 ( .A(Port_vc0_arb_req[14]), .ZN(n82) );
  INV_X1 U18 ( .A(n13), .ZN(n12) );
  INV_X1 U19 ( .A(Rst), .ZN(n13) );
  INV_X1 U20 ( .A(Port_vc1_arb_req[3]), .ZN(n30) );
  INV_X1 U21 ( .A(Port_vc1_arb_req[2]), .ZN(n28) );
  NAND2_X1 U22 ( .A1(n30), .A2(n28), .ZN(n18) );
  INV_X1 U23 ( .A(n18), .ZN(n14) );
  INV_X1 U24 ( .A(Port_vc1_arb_req[4]), .ZN(n31) );
  INV_X1 U25 ( .A(Port_vc1_arb_req[1]), .ZN(n27) );
  NAND2_X1 U26 ( .A1(n6), .A2(n27), .ZN(n23) );
  INV_X1 U27 ( .A(n23), .ZN(n44) );
  INV_X1 U28 ( .A(Port_vc1_arb_req[10]), .ZN(n42) );
  INV_X1 U29 ( .A(Port_vc1_arb_req[9]), .ZN(n41) );
  INV_X1 U30 ( .A(Port_vc1_arb_req[7]), .ZN(n38) );
  INV_X1 U31 ( .A(Port_vc1_arb_req[8]), .ZN(n39) );
  INV_X1 U32 ( .A(Port_vc1_arb_req[0]), .ZN(n15) );
  NAND2_X1 U33 ( .A1(n12), .A2(n15), .ZN(n26) );
  NOR3_X1 U34 ( .A1(Port_vc1_arb_req[6]), .A2(Port_vc1_arb_req[5]), .A3(n26), 
        .ZN(n16) );
  INV_X1 U35 ( .A(n26), .ZN(n29) );
  INV_X1 U36 ( .A(Port_vc1_arb_req[11]), .ZN(n17) );
  INV_X1 U37 ( .A(Port_vc1_arb_req[5]), .ZN(n35) );
  INV_X1 U38 ( .A(Port_vc1_arb_req[6]), .ZN(n34) );
  NAND4_X1 U39 ( .A1(n29), .A2(n17), .A3(n35), .A4(n34), .ZN(n20) );
  INV_X1 U40 ( .A(n20), .ZN(n45) );
  NOR3_X1 U41 ( .A1(n18), .A2(Port_vc1_arb_req[4]), .A3(Port_vc1_arb_req[1]), 
        .ZN(n19) );
  NAND3_X1 U42 ( .A1(n6), .A2(n29), .A3(n27), .ZN(n33) );
  INV_X1 U43 ( .A(n33), .ZN(n36) );
  NAND2_X1 U44 ( .A1(n5), .A2(n34), .ZN(n22) );
  INV_X1 U45 ( .A(Port_vc1_arb_req[13]), .ZN(n50) );
  AOI21_X1 U47 ( .B1(n50), .B2(n84), .A(n20), .ZN(n21) );
  AOI221_X1 U48 ( .B1(n23), .B2(n12), .C1(n36), .C2(n22), .A(n21), .ZN(n24) );
  NAND2_X1 U49 ( .A1(n25), .A2(n24), .ZN(Port_vc1_usage) );
  NOR2_X1 U50 ( .A1(n26), .A2(n27), .ZN(Port_vc1_arb_grant[1]) );
  NOR3_X1 U51 ( .A1(Port_vc1_arb_req[1]), .A2(n26), .A3(n28), .ZN(
        Port_vc1_arb_grant[2]) );
  NAND3_X1 U52 ( .A1(n29), .A2(n28), .A3(n27), .ZN(n32) );
  NOR2_X1 U53 ( .A1(n32), .A2(n30), .ZN(Port_vc1_arb_grant[3]) );
  NOR3_X1 U54 ( .A1(Port_vc1_arb_req[3]), .A2(n32), .A3(n31), .ZN(
        Port_vc1_arb_grant[4]) );
  NOR3_X1 U55 ( .A1(Port_vc1_arb_req[5]), .A2(n33), .A3(n34), .ZN(
        Port_vc1_arb_grant[6]) );
  NAND3_X1 U56 ( .A1(n36), .A2(n35), .A3(n34), .ZN(n37) );
  NOR2_X1 U57 ( .A1(n37), .A2(n38), .ZN(Port_vc1_arb_grant[7]) );
  NOR3_X1 U58 ( .A1(Port_vc1_arb_req[7]), .A2(n37), .A3(n39), .ZN(
        Port_vc1_arb_grant[8]) );
  INV_X1 U59 ( .A(n37), .ZN(n40) );
  NAND3_X1 U60 ( .A1(n40), .A2(n39), .A3(n38), .ZN(n43) );
  NOR2_X1 U61 ( .A1(n43), .A2(n41), .ZN(Port_vc1_arb_grant[9]) );
  NOR3_X1 U62 ( .A1(Port_vc1_arb_req[9]), .A2(n43), .A3(n42), .ZN(
        Port_vc1_arb_grant[10]) );
  NAND3_X1 U63 ( .A1(n5), .A2(n45), .A3(n44), .ZN(n51) );
  NOR3_X1 U64 ( .A1(Port_vc1_arb_req[12]), .A2(n51), .A3(n50), .ZN(
        Port_vc1_arb_grant[13]) );
  NOR4_X1 U65 ( .A1(Port_vc1_arb_req[13]), .A2(Port_vc1_arb_req[12]), .A3(n84), 
        .A4(n51), .ZN(Port_vc1_arb_grant[14]) );
  NAND2_X1 U66 ( .A1(Port_vc0_arb_req[0]), .A2(n12), .ZN(n89) );
  INV_X1 U67 ( .A(n89), .ZN(Port_vc0_arb_grant[0]) );
  INV_X1 U68 ( .A(n85), .ZN(n73) );
  INV_X1 U69 ( .A(Port_vc0_arb_req[1]), .ZN(n53) );
  NOR2_X1 U70 ( .A1(n73), .A2(n53), .ZN(Port_vc0_arb_grant[1]) );
  INV_X1 U71 ( .A(Port_vc0_arb_req[2]), .ZN(n52) );
  NOR3_X1 U72 ( .A1(Port_vc0_arb_req[1]), .A2(n73), .A3(n52), .ZN(
        Port_vc0_arb_grant[2]) );
  NAND3_X1 U73 ( .A1(n85), .A2(n53), .A3(n52), .ZN(n86) );
  INV_X1 U74 ( .A(Port_vc0_arb_req[3]), .ZN(n76) );
  NOR2_X1 U75 ( .A1(n86), .A2(n76), .ZN(Port_vc0_arb_grant[3]) );
  INV_X1 U76 ( .A(Port_vc0_arb_req[4]), .ZN(n81) );
  NAND3_X1 U77 ( .A1(n53), .A2(n81), .A3(n52), .ZN(n75) );
  INV_X1 U78 ( .A(n75), .ZN(n77) );
  INV_X1 U79 ( .A(Port_vc0_arb_req[5]), .ZN(n55) );
  INV_X1 U80 ( .A(Port_vc0_arb_req[6]), .ZN(n60) );
  NOR3_X1 U81 ( .A1(n73), .A2(Port_vc0_arb_req[3]), .A3(n60), .ZN(n54) );
  NAND3_X1 U82 ( .A1(n9), .A2(n76), .A3(n60), .ZN(n58) );
  INV_X1 U83 ( .A(Port_vc0_arb_req[7]), .ZN(n62) );
  NOR2_X1 U85 ( .A1(n58), .A2(n62), .ZN(Port_vc0_arb_grant[7]) );
  INV_X1 U86 ( .A(Port_vc0_arb_req[8]), .ZN(n61) );
  NOR3_X1 U87 ( .A1(Port_vc0_arb_req[7]), .A2(n58), .A3(n61), .ZN(
        Port_vc0_arb_grant[8]) );
  INV_X1 U88 ( .A(n58), .ZN(n70) );
  NAND3_X1 U89 ( .A1(n70), .A2(n61), .A3(n62), .ZN(n59) );
  INV_X1 U90 ( .A(Port_vc0_arb_req[9]), .ZN(n64) );
  NOR2_X1 U91 ( .A1(n59), .A2(n64), .ZN(Port_vc0_arb_grant[9]) );
  INV_X1 U92 ( .A(Port_vc0_arb_req[10]), .ZN(n63) );
  NOR3_X1 U93 ( .A1(Port_vc0_arb_req[9]), .A2(n59), .A3(n63), .ZN(
        Port_vc0_arb_grant[10]) );
  NAND2_X1 U94 ( .A1(n9), .A2(n60), .ZN(n67) );
  INV_X1 U95 ( .A(n67), .ZN(n65) );
  NAND4_X1 U96 ( .A1(n64), .A2(n63), .A3(n62), .A4(n61), .ZN(n66) );
  INV_X1 U97 ( .A(n66), .ZN(n74) );
  INV_X1 U98 ( .A(Port_vc0_arb_req[11]), .ZN(n69) );
  NOR3_X1 U99 ( .A1(Port_vc0_arb_req[3]), .A2(n67), .A3(n66), .ZN(n68) );
  NAND3_X1 U100 ( .A1(n70), .A2(n74), .A3(n69), .ZN(n71) );
  NOR3_X1 U101 ( .A1(n83), .A2(Port_vc0_arb_req[12]), .A3(n71), .ZN(
        Port_vc0_arb_grant[13]) );
  NOR4_X1 U102 ( .A1(n82), .A2(Port_vc0_arb_req[12]), .A3(Port_vc0_arb_req[13]), .A4(n71), .ZN(Port_vc0_arb_grant[14]) );
  INV_X1 U103 ( .A(n71), .ZN(n72) );
  OAI21_X1 U104 ( .B1(Port_vc0_arb_req[14]), .B2(Port_vc0_arb_req[13]), .A(n72), .ZN(n90) );
  NOR3_X1 U105 ( .A1(n75), .A2(n74), .A3(n73), .ZN(n80) );
  NOR2_X1 U106 ( .A1(Port_vc0_arb_req[5]), .A2(Port_vc0_arb_req[3]), .ZN(n79)
         );
  NAND2_X1 U107 ( .A1(n77), .A2(n76), .ZN(n78) );
  AOI22_X1 U108 ( .A1(n80), .A2(n79), .B1(n78), .B2(n12), .ZN(n88) );
endmodule


module router_vcarb_2 ( Rst, Port_vc0_arb_req, Port_vc1_arb_req, 
        Port_vc0_arb_grant, Port_vc1_arb_grant, Port_vc0_usage, Port_vc1_usage
 );
  input [14:0] Port_vc0_arb_req;
  input [14:0] Port_vc1_arb_req;
  output [14:0] Port_vc0_arb_grant;
  output [14:0] Port_vc1_arb_grant;
  input Rst;
  output Port_vc0_usage, Port_vc1_usage;
  wire   n5, n6, n10, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n50, n51, n52, n53, n54,
         n55, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89;

  NOR2_X2 U46 ( .A1(n12), .A2(Port_vc0_arb_req[0]), .ZN(n84) );
  NAND4_X1 U84 ( .A1(n89), .A2(n88), .A3(n87), .A4(n86), .ZN(Port_vc0_usage)
         );
  AND2_X1 U1 ( .A1(Port_vc1_arb_req[0]), .A2(Rst), .ZN(Port_vc1_arb_grant[0])
         );
  AND4_X1 U2 ( .A1(n43), .A2(n5), .A3(Port_vc1_arb_req[11]), .A4(n15), .ZN(
        Port_vc1_arb_grant[11]) );
  AND4_X1 U3 ( .A1(Port_vc0_arb_req[11]), .A2(n64), .A3(n73), .A4(n75), .ZN(
        Port_vc0_arb_grant[11]) );
  AND3_X1 U4 ( .A1(Port_vc1_arb_req[5]), .A2(n28), .A3(n43), .ZN(
        Port_vc1_arb_grant[5]) );
  AND4_X1 U5 ( .A1(n41), .A2(n40), .A3(n37), .A4(n38), .ZN(n5) );
  AND2_X1 U6 ( .A1(n13), .A2(n30), .ZN(n6) );
  NOR3_X1 U7 ( .A1(n80), .A2(Port_vc0_arb_req[3]), .A3(n85), .ZN(
        Port_vc0_arb_grant[4]) );
  AND4_X1 U8 ( .A1(n84), .A2(n75), .A3(Port_vc0_arb_req[5]), .A4(n76), .ZN(
        Port_vc0_arb_grant[5]) );
  AND3_X1 U9 ( .A1(n76), .A2(n54), .A3(n53), .ZN(Port_vc0_arb_grant[6]) );
  AND3_X1 U10 ( .A1(Port_vc0_arb_req[12]), .A2(n68), .A3(n67), .ZN(
        Port_vc0_arb_grant[12]) );
  AND3_X1 U11 ( .A1(n84), .A2(n76), .A3(n54), .ZN(n10) );
  AND4_X1 U12 ( .A1(Port_vc1_arb_req[12]), .A2(n5), .A3(n44), .A4(n18), .ZN(
        Port_vc1_arb_grant[12]) );
  INV_X1 U13 ( .A(Port_vc0_arb_req[13]), .ZN(n82) );
  INV_X1 U14 ( .A(Port_vc1_arb_req[14]), .ZN(n83) );
  INV_X1 U15 ( .A(Port_vc0_arb_req[14]), .ZN(n81) );
  INV_X1 U16 ( .A(Rst), .ZN(n12) );
  INV_X1 U17 ( .A(Port_vc1_arb_req[3]), .ZN(n29) );
  INV_X1 U18 ( .A(Port_vc1_arb_req[2]), .ZN(n27) );
  NAND2_X1 U19 ( .A1(n29), .A2(n27), .ZN(n17) );
  INV_X1 U20 ( .A(n17), .ZN(n13) );
  INV_X1 U21 ( .A(Port_vc1_arb_req[4]), .ZN(n30) );
  INV_X1 U22 ( .A(Port_vc1_arb_req[1]), .ZN(n26) );
  NAND2_X1 U23 ( .A1(n6), .A2(n26), .ZN(n22) );
  INV_X1 U24 ( .A(n22), .ZN(n43) );
  INV_X1 U25 ( .A(Port_vc1_arb_req[10]), .ZN(n41) );
  INV_X1 U26 ( .A(Port_vc1_arb_req[9]), .ZN(n40) );
  INV_X1 U27 ( .A(Port_vc1_arb_req[7]), .ZN(n37) );
  INV_X1 U28 ( .A(Port_vc1_arb_req[8]), .ZN(n38) );
  INV_X1 U29 ( .A(Port_vc1_arb_req[0]), .ZN(n14) );
  NAND2_X1 U30 ( .A1(Rst), .A2(n14), .ZN(n25) );
  NOR3_X1 U31 ( .A1(Port_vc1_arb_req[6]), .A2(Port_vc1_arb_req[5]), .A3(n25), 
        .ZN(n15) );
  INV_X1 U32 ( .A(n25), .ZN(n28) );
  INV_X1 U33 ( .A(Port_vc1_arb_req[11]), .ZN(n16) );
  INV_X1 U34 ( .A(Port_vc1_arb_req[5]), .ZN(n34) );
  INV_X1 U35 ( .A(Port_vc1_arb_req[6]), .ZN(n33) );
  NAND4_X1 U36 ( .A1(n28), .A2(n16), .A3(n34), .A4(n33), .ZN(n19) );
  INV_X1 U37 ( .A(n19), .ZN(n44) );
  NOR3_X1 U38 ( .A1(n17), .A2(Port_vc1_arb_req[4]), .A3(Port_vc1_arb_req[1]), 
        .ZN(n18) );
  NOR4_X1 U39 ( .A1(Port_vc1_arb_grant[11]), .A2(Port_vc1_arb_grant[5]), .A3(
        Port_vc1_arb_grant[12]), .A4(Port_vc1_arb_grant[0]), .ZN(n24) );
  NAND3_X1 U40 ( .A1(n6), .A2(n28), .A3(n26), .ZN(n32) );
  INV_X1 U41 ( .A(n32), .ZN(n35) );
  NAND2_X1 U42 ( .A1(n5), .A2(n33), .ZN(n21) );
  INV_X1 U43 ( .A(Port_vc1_arb_req[13]), .ZN(n45) );
  AOI21_X1 U44 ( .B1(n45), .B2(n83), .A(n19), .ZN(n20) );
  AOI221_X1 U45 ( .B1(n22), .B2(Rst), .C1(n35), .C2(n21), .A(n20), .ZN(n23) );
  NAND2_X1 U47 ( .A1(n24), .A2(n23), .ZN(Port_vc1_usage) );
  NOR2_X1 U48 ( .A1(n25), .A2(n26), .ZN(Port_vc1_arb_grant[1]) );
  NOR3_X1 U49 ( .A1(Port_vc1_arb_req[1]), .A2(n25), .A3(n27), .ZN(
        Port_vc1_arb_grant[2]) );
  NAND3_X1 U50 ( .A1(n28), .A2(n27), .A3(n26), .ZN(n31) );
  NOR2_X1 U51 ( .A1(n31), .A2(n29), .ZN(Port_vc1_arb_grant[3]) );
  NOR3_X1 U52 ( .A1(Port_vc1_arb_req[3]), .A2(n31), .A3(n30), .ZN(
        Port_vc1_arb_grant[4]) );
  NOR3_X1 U53 ( .A1(Port_vc1_arb_req[5]), .A2(n32), .A3(n33), .ZN(
        Port_vc1_arb_grant[6]) );
  NAND3_X1 U54 ( .A1(n35), .A2(n34), .A3(n33), .ZN(n36) );
  NOR2_X1 U55 ( .A1(n36), .A2(n37), .ZN(Port_vc1_arb_grant[7]) );
  NOR3_X1 U56 ( .A1(Port_vc1_arb_req[7]), .A2(n36), .A3(n38), .ZN(
        Port_vc1_arb_grant[8]) );
  INV_X1 U57 ( .A(n36), .ZN(n39) );
  NAND3_X1 U58 ( .A1(n39), .A2(n38), .A3(n37), .ZN(n42) );
  NOR2_X1 U59 ( .A1(n42), .A2(n40), .ZN(Port_vc1_arb_grant[9]) );
  NOR3_X1 U60 ( .A1(Port_vc1_arb_req[9]), .A2(n42), .A3(n41), .ZN(
        Port_vc1_arb_grant[10]) );
  NAND3_X1 U61 ( .A1(n5), .A2(n44), .A3(n43), .ZN(n50) );
  NOR3_X1 U62 ( .A1(Port_vc1_arb_req[12]), .A2(n50), .A3(n45), .ZN(
        Port_vc1_arb_grant[13]) );
  NOR4_X1 U63 ( .A1(Port_vc1_arb_req[13]), .A2(Port_vc1_arb_req[12]), .A3(n83), 
        .A4(n50), .ZN(Port_vc1_arb_grant[14]) );
  NAND2_X1 U64 ( .A1(Port_vc0_arb_req[0]), .A2(Rst), .ZN(n88) );
  INV_X1 U65 ( .A(n88), .ZN(Port_vc0_arb_grant[0]) );
  INV_X1 U66 ( .A(n84), .ZN(n72) );
  INV_X1 U67 ( .A(Port_vc0_arb_req[1]), .ZN(n52) );
  NOR2_X1 U68 ( .A1(n72), .A2(n52), .ZN(Port_vc0_arb_grant[1]) );
  INV_X1 U69 ( .A(Port_vc0_arb_req[2]), .ZN(n51) );
  NOR3_X1 U70 ( .A1(Port_vc0_arb_req[1]), .A2(n72), .A3(n51), .ZN(
        Port_vc0_arb_grant[2]) );
  NAND3_X1 U71 ( .A1(n84), .A2(n52), .A3(n51), .ZN(n85) );
  INV_X1 U72 ( .A(Port_vc0_arb_req[3]), .ZN(n75) );
  NOR2_X1 U73 ( .A1(n85), .A2(n75), .ZN(Port_vc0_arb_grant[3]) );
  INV_X1 U74 ( .A(Port_vc0_arb_req[4]), .ZN(n80) );
  NAND3_X1 U75 ( .A1(n52), .A2(n80), .A3(n51), .ZN(n74) );
  INV_X1 U76 ( .A(n74), .ZN(n76) );
  INV_X1 U77 ( .A(Port_vc0_arb_req[5]), .ZN(n54) );
  INV_X1 U78 ( .A(Port_vc0_arb_req[6]), .ZN(n59) );
  NOR3_X1 U79 ( .A1(n72), .A2(Port_vc0_arb_req[3]), .A3(n59), .ZN(n53) );
  NAND3_X1 U80 ( .A1(n10), .A2(n75), .A3(n59), .ZN(n55) );
  INV_X1 U81 ( .A(Port_vc0_arb_req[7]), .ZN(n61) );
  NOR2_X1 U82 ( .A1(n55), .A2(n61), .ZN(Port_vc0_arb_grant[7]) );
  INV_X1 U83 ( .A(Port_vc0_arb_req[8]), .ZN(n60) );
  NOR3_X1 U85 ( .A1(Port_vc0_arb_req[7]), .A2(n55), .A3(n60), .ZN(
        Port_vc0_arb_grant[8]) );
  INV_X1 U86 ( .A(n55), .ZN(n69) );
  NAND3_X1 U87 ( .A1(n69), .A2(n60), .A3(n61), .ZN(n58) );
  INV_X1 U88 ( .A(Port_vc0_arb_req[9]), .ZN(n63) );
  NOR2_X1 U89 ( .A1(n58), .A2(n63), .ZN(Port_vc0_arb_grant[9]) );
  INV_X1 U90 ( .A(Port_vc0_arb_req[10]), .ZN(n62) );
  NOR3_X1 U91 ( .A1(Port_vc0_arb_req[9]), .A2(n58), .A3(n62), .ZN(
        Port_vc0_arb_grant[10]) );
  NAND2_X1 U92 ( .A1(n10), .A2(n59), .ZN(n66) );
  INV_X1 U93 ( .A(n66), .ZN(n64) );
  NAND4_X1 U94 ( .A1(n63), .A2(n62), .A3(n61), .A4(n60), .ZN(n65) );
  INV_X1 U95 ( .A(n65), .ZN(n73) );
  INV_X1 U96 ( .A(Port_vc0_arb_req[11]), .ZN(n68) );
  NOR3_X1 U97 ( .A1(Port_vc0_arb_req[3]), .A2(n66), .A3(n65), .ZN(n67) );
  NAND3_X1 U98 ( .A1(n69), .A2(n73), .A3(n68), .ZN(n70) );
  NOR3_X1 U99 ( .A1(n82), .A2(Port_vc0_arb_req[12]), .A3(n70), .ZN(
        Port_vc0_arb_grant[13]) );
  NOR4_X1 U100 ( .A1(n81), .A2(Port_vc0_arb_req[12]), .A3(Port_vc0_arb_req[13]), .A4(n70), .ZN(Port_vc0_arb_grant[14]) );
  INV_X1 U101 ( .A(n70), .ZN(n71) );
  OAI21_X1 U102 ( .B1(Port_vc0_arb_req[14]), .B2(Port_vc0_arb_req[13]), .A(n71), .ZN(n89) );
  NOR3_X1 U103 ( .A1(n74), .A2(n73), .A3(n72), .ZN(n79) );
  NOR2_X1 U104 ( .A1(Port_vc0_arb_req[5]), .A2(Port_vc0_arb_req[3]), .ZN(n78)
         );
  NAND2_X1 U105 ( .A1(n76), .A2(n75), .ZN(n77) );
  AOI22_X1 U106 ( .A1(n79), .A2(n78), .B1(n77), .B2(Rst), .ZN(n87) );
  NOR4_X1 U107 ( .A1(Port_vc0_arb_grant[5]), .A2(Port_vc0_arb_grant[6]), .A3(
        Port_vc0_arb_grant[11]), .A4(Port_vc0_arb_grant[12]), .ZN(n86) );
endmodule


module router_vcarb_1 ( Rst, Port_vc0_arb_req, Port_vc1_arb_req, 
        Port_vc0_arb_grant, Port_vc1_arb_grant, Port_vc0_usage, Port_vc1_usage
 );
  input [14:0] Port_vc0_arb_req;
  input [14:0] Port_vc1_arb_req;
  output [14:0] Port_vc0_arb_grant;
  output [14:0] Port_vc1_arb_grant;
  input Rst;
  output Port_vc0_usage, Port_vc1_usage;
  wire   n1, n2, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n18,
         n20, n21, n22, n23, n24, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n47, n50, n51, n52,
         n53, n54, n55, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96;

  NOR2_X2 U46 ( .A1(n26), .A2(Port_vc0_arb_req[0]), .ZN(n91) );
  NAND4_X1 U84 ( .A1(n95), .A2(n24), .A3(n94), .A4(n93), .ZN(Port_vc0_usage)
         );
  CLKBUF_X1 U1 ( .A(Port_vc0_arb_req[12]), .Z(n1) );
  INV_X1 U2 ( .A(n14), .ZN(n2) );
  INV_X1 U3 ( .A(n11), .ZN(n3) );
  INV_X2 U4 ( .A(Port_vc1_arb_req[1]), .ZN(n11) );
  AND4_X1 U5 ( .A1(n53), .A2(Port_vc1_arb_req[11]), .A3(n47), .A4(n55), .ZN(
        n36) );
  INV_X2 U6 ( .A(Port_vc1_arb_req[7]), .ZN(n53) );
  AND3_X1 U7 ( .A1(n77), .A2(n75), .A3(n76), .ZN(n4) );
  AND2_X2 U8 ( .A1(n74), .A2(n4), .ZN(n20) );
  INV_X1 U9 ( .A(n7), .ZN(n72) );
  AND3_X1 U10 ( .A1(n15), .A2(n71), .A3(n14), .ZN(Port_vc0_arb_grant[6]) );
  AND3_X1 U11 ( .A1(n15), .A2(n71), .A3(n14), .ZN(n23) );
  AND3_X2 U12 ( .A1(n53), .A2(n55), .A3(n22), .ZN(n6) );
  BUF_X2 U13 ( .A(n85), .Z(n14) );
  AND4_X1 U14 ( .A1(Port_vc0_arb_req[12]), .A2(n78), .A3(n20), .A4(n7), .ZN(
        Port_vc0_arb_grant[12]) );
  AND3_X2 U15 ( .A1(n70), .A2(n71), .A3(n85), .ZN(n7) );
  CLKBUF_X1 U16 ( .A(n74), .Z(n8) );
  OAI211_X1 U17 ( .C1(n45), .C2(n6), .A(n30), .B(n9), .ZN(n10) );
  INV_X1 U18 ( .A(n33), .ZN(n9) );
  INV_X1 U19 ( .A(n10), .ZN(n38) );
  INV_X1 U20 ( .A(n53), .ZN(n12) );
  INV_X1 U21 ( .A(n8), .ZN(n13) );
  INV_X1 U22 ( .A(n70), .ZN(n15) );
  AND3_X2 U23 ( .A1(n7), .A2(n20), .A3(Port_vc0_arb_req[11]), .ZN(
        Port_vc0_arb_grant[11]) );
  AND2_X2 U24 ( .A1(Port_vc0_arb_req[0]), .A2(Rst), .ZN(Port_vc0_arb_grant[0])
         );
  AND2_X1 U25 ( .A1(n28), .A2(n41), .ZN(n18) );
  AND2_X1 U26 ( .A1(n14), .A2(n66), .ZN(Port_vc0_arb_grant[5]) );
  INV_X1 U27 ( .A(n96), .ZN(Port_vc1_arb_grant[0]) );
  AND2_X1 U28 ( .A1(n22), .A2(n34), .ZN(n21) );
  AND3_X2 U29 ( .A1(n54), .A2(n52), .A3(n29), .ZN(n22) );
  INV_X1 U30 ( .A(Port_vc0_arb_req[13]), .ZN(n89) );
  INV_X1 U31 ( .A(Port_vc1_arb_req[14]), .ZN(n90) );
  INV_X1 U32 ( .A(Port_vc0_arb_req[14]), .ZN(n88) );
  NOR3_X1 U33 ( .A1(n87), .A2(n2), .A3(n92), .ZN(Port_vc0_arb_grant[4]) );
  NAND2_X1 U34 ( .A1(Port_vc0_arb_req[0]), .A2(Rst), .ZN(n24) );
  NOR4_X2 U35 ( .A1(Port_vc0_arb_grant[12]), .A2(n23), .A3(
        Port_vc0_arb_grant[11]), .A4(Port_vc0_arb_grant[5]), .ZN(n93) );
  INV_X1 U36 ( .A(Rst), .ZN(n26) );
  NAND2_X1 U37 ( .A1(Port_vc1_arb_req[0]), .A2(Rst), .ZN(n96) );
  INV_X1 U38 ( .A(Port_vc1_arb_req[2]), .ZN(n40) );
  INV_X1 U39 ( .A(Port_vc1_arb_req[3]), .ZN(n42) );
  NAND2_X1 U40 ( .A1(n40), .A2(n42), .ZN(n31) );
  INV_X1 U41 ( .A(n31), .ZN(n28) );
  INV_X1 U42 ( .A(Port_vc1_arb_req[0]), .ZN(n27) );
  NAND2_X1 U43 ( .A1(Rst), .A2(n27), .ZN(n39) );
  INV_X1 U44 ( .A(n39), .ZN(n41) );
  INV_X1 U45 ( .A(Port_vc1_arb_req[4]), .ZN(n43) );
  NAND3_X1 U47 ( .A1(n18), .A2(n11), .A3(n43), .ZN(n45) );
  INV_X1 U48 ( .A(n45), .ZN(n62) );
  INV_X1 U49 ( .A(Port_vc1_arb_req[6]), .ZN(n55) );
  INV_X1 U50 ( .A(Port_vc1_arb_req[8]), .ZN(n54) );
  INV_X1 U51 ( .A(Port_vc1_arb_req[9]), .ZN(n52) );
  INV_X1 U52 ( .A(Port_vc1_arb_req[10]), .ZN(n29) );
  NAND4_X1 U53 ( .A1(Port_vc1_arb_req[5]), .A2(n11), .A3(n18), .A4(n43), .ZN(
        n30) );
  INV_X1 U54 ( .A(n30), .ZN(Port_vc1_arb_grant[5]) );
  OAI21_X1 U55 ( .B1(Port_vc1_arb_req[4]), .B2(n31), .A(Rst), .ZN(n32) );
  OAI211_X1 U56 ( .C1(n26), .C2(n11), .A(n96), .B(n32), .ZN(n33) );
  NOR4_X1 U57 ( .A1(Port_vc1_arb_req[7]), .A2(Port_vc1_arb_req[6]), .A3(
        Port_vc1_arb_req[11]), .A4(Port_vc1_arb_req[5]), .ZN(n34) );
  NAND3_X1 U58 ( .A1(Port_vc1_arb_req[12]), .A2(n21), .A3(n62), .ZN(n61) );
  OAI21_X1 U59 ( .B1(Port_vc1_arb_req[14]), .B2(Port_vc1_arb_req[13]), .A(n62), 
        .ZN(n37) );
  NAND3_X1 U60 ( .A1(n36), .A2(n22), .A3(n62), .ZN(n60) );
  NAND4_X1 U61 ( .A1(n38), .A2(n61), .A3(n37), .A4(n60), .ZN(Port_vc1_usage)
         );
  NOR2_X1 U62 ( .A1(n39), .A2(n11), .ZN(Port_vc1_arb_grant[1]) );
  NOR3_X1 U63 ( .A1(n3), .A2(n39), .A3(n40), .ZN(Port_vc1_arb_grant[2]) );
  NAND3_X1 U64 ( .A1(n41), .A2(n40), .A3(n11), .ZN(n44) );
  NOR2_X1 U65 ( .A1(n44), .A2(n42), .ZN(Port_vc1_arb_grant[3]) );
  NOR3_X1 U66 ( .A1(Port_vc1_arb_req[3]), .A2(n44), .A3(n43), .ZN(
        Port_vc1_arb_grant[4]) );
  NOR3_X1 U67 ( .A1(Port_vc1_arb_req[5]), .A2(n45), .A3(n55), .ZN(
        Port_vc1_arb_grant[6]) );
  INV_X1 U68 ( .A(Port_vc1_arb_req[5]), .ZN(n47) );
  NAND2_X1 U69 ( .A1(n62), .A2(n47), .ZN(n59) );
  INV_X1 U70 ( .A(n59), .ZN(n50) );
  NAND2_X1 U71 ( .A1(n50), .A2(n55), .ZN(n51) );
  NOR2_X1 U72 ( .A1(n51), .A2(n53), .ZN(Port_vc1_arb_grant[7]) );
  NOR3_X1 U73 ( .A1(n12), .A2(n51), .A3(n54), .ZN(Port_vc1_arb_grant[8]) );
  NOR4_X1 U74 ( .A1(n52), .A2(n12), .A3(Port_vc1_arb_req[8]), .A4(n51), .ZN(
        Port_vc1_arb_grant[9]) );
  NAND4_X1 U75 ( .A1(n55), .A2(n54), .A3(Port_vc1_arb_req[10]), .A4(n53), .ZN(
        n58) );
  NOR3_X1 U76 ( .A1(Port_vc1_arb_req[9]), .A2(n59), .A3(n58), .ZN(
        Port_vc1_arb_grant[10]) );
  INV_X1 U77 ( .A(n60), .ZN(Port_vc1_arb_grant[11]) );
  INV_X1 U78 ( .A(n61), .ZN(Port_vc1_arb_grant[12]) );
  NAND2_X1 U79 ( .A1(n21), .A2(n62), .ZN(n64) );
  INV_X1 U80 ( .A(Port_vc1_arb_req[13]), .ZN(n63) );
  NOR3_X1 U81 ( .A1(Port_vc1_arb_req[12]), .A2(n64), .A3(n63), .ZN(
        Port_vc1_arb_grant[13]) );
  NOR4_X1 U82 ( .A1(Port_vc1_arb_req[13]), .A2(Port_vc1_arb_req[12]), .A3(n90), 
        .A4(n64), .ZN(Port_vc1_arb_grant[14]) );
  INV_X1 U83 ( .A(n91), .ZN(n65) );
  INV_X1 U85 ( .A(Port_vc0_arb_req[1]), .ZN(n83) );
  NOR2_X1 U86 ( .A1(n65), .A2(n83), .ZN(Port_vc0_arb_grant[1]) );
  INV_X1 U87 ( .A(Port_vc0_arb_req[2]), .ZN(n82) );
  NOR3_X1 U88 ( .A1(Port_vc0_arb_req[1]), .A2(n65), .A3(n82), .ZN(
        Port_vc0_arb_grant[2]) );
  NAND3_X1 U89 ( .A1(n91), .A2(n83), .A3(n82), .ZN(n92) );
  INV_X1 U90 ( .A(Port_vc0_arb_req[3]), .ZN(n85) );
  NOR2_X1 U91 ( .A1(n92), .A2(n14), .ZN(Port_vc0_arb_grant[3]) );
  NAND2_X1 U92 ( .A1(n83), .A2(n82), .ZN(n67) );
  INV_X1 U93 ( .A(Port_vc0_arb_req[5]), .ZN(n69) );
  NOR4_X1 U94 ( .A1(n67), .A2(Port_vc0_arb_req[4]), .A3(n65), .A4(n69), .ZN(
        n66) );
  INV_X1 U95 ( .A(Port_vc0_arb_req[4]), .ZN(n87) );
  INV_X1 U96 ( .A(n67), .ZN(n68) );
  NAND4_X1 U97 ( .A1(n91), .A2(n69), .A3(n87), .A4(n68), .ZN(n81) );
  INV_X1 U98 ( .A(n81), .ZN(n71) );
  INV_X1 U99 ( .A(Port_vc0_arb_req[6]), .ZN(n70) );
  INV_X1 U100 ( .A(Port_vc0_arb_req[7]), .ZN(n77) );
  NOR2_X1 U101 ( .A1(n72), .A2(n77), .ZN(Port_vc0_arb_grant[7]) );
  INV_X1 U102 ( .A(Port_vc0_arb_req[8]), .ZN(n75) );
  NOR3_X1 U103 ( .A1(Port_vc0_arb_req[7]), .A2(n72), .A3(n75), .ZN(
        Port_vc0_arb_grant[8]) );
  NAND3_X1 U104 ( .A1(n7), .A2(n75), .A3(n77), .ZN(n73) );
  INV_X1 U105 ( .A(Port_vc0_arb_req[9]), .ZN(n74) );
  NOR2_X1 U106 ( .A1(n73), .A2(n8), .ZN(Port_vc0_arb_grant[9]) );
  INV_X1 U107 ( .A(Port_vc0_arb_req[10]), .ZN(n76) );
  NOR3_X1 U108 ( .A1(n13), .A2(n73), .A3(n76), .ZN(Port_vc0_arb_grant[10]) );
  INV_X1 U109 ( .A(Port_vc0_arb_req[11]), .ZN(n78) );
  NAND3_X1 U110 ( .A1(n20), .A2(n78), .A3(n7), .ZN(n79) );
  NOR3_X1 U111 ( .A1(n89), .A2(n1), .A3(n79), .ZN(Port_vc0_arb_grant[13]) );
  NOR4_X1 U112 ( .A1(n88), .A2(n1), .A3(Port_vc0_arb_req[13]), .A4(n79), .ZN(
        Port_vc0_arb_grant[14]) );
  INV_X1 U113 ( .A(n79), .ZN(n80) );
  OAI21_X1 U114 ( .B1(Port_vc0_arb_req[14]), .B2(Port_vc0_arb_req[13]), .A(n80), .ZN(n95) );
  NOR2_X1 U115 ( .A1(n20), .A2(n81), .ZN(n86) );
  NAND4_X1 U116 ( .A1(n14), .A2(n87), .A3(n82), .A4(n83), .ZN(n84) );
  AOI22_X1 U117 ( .A1(n86), .A2(n14), .B1(n84), .B2(Rst), .ZN(n94) );
endmodule


module routing_table_1 ( router_address_x, router_address_y, flit_desn_x, 
        flit_desn_y, next_hop, read_request );
  input [2:0] router_address_x;
  input [2:0] router_address_y;
  input [2:0] flit_desn_x;
  input [2:0] flit_desn_y;
  output [2:0] next_hop;
  input read_request;
  wire   n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48;

  OAI221_X2 U3 ( .B1(n22), .B2(n23), .C1(read_request), .C2(n24), .A(n25), 
        .ZN(next_hop[0]) );
  INV_X2 U4 ( .A(next_hop[0]), .ZN(n24) );
  OAI221_X2 U6 ( .B1(n26), .B2(n27), .C1(read_request), .C2(n28), .A(n25), 
        .ZN(next_hop[1]) );
  INV_X2 U7 ( .A(next_hop[1]), .ZN(n28) );
  INV_X2 U14 ( .A(n37), .ZN(next_hop[2]) );
  AOI22_X2 U15 ( .A1(n47), .A2(next_hop[2]), .B1(n29), .B2(read_request), .ZN(
        n37) );
  NAND3_X1 U27 ( .A1(n43), .A2(n26), .A3(read_request), .ZN(n25) );
  NAND3_X1 U28 ( .A1(n33), .A2(n48), .A3(flit_desn_x[1]), .ZN(n30) );
  NAND3_X1 U29 ( .A1(n34), .A2(n35), .A3(n36), .ZN(n26) );
  NAND4_X1 U30 ( .A1(n34), .A2(flit_desn_y[0]), .A3(n35), .A4(n42), .ZN(n39)
         );
  NAND3_X1 U31 ( .A1(n35), .A2(n41), .A3(flit_desn_y[1]), .ZN(n38) );
  INV_X1 U5 ( .A(read_request), .ZN(n47) );
  INV_X1 U8 ( .A(n29), .ZN(n43) );
  NAND2_X1 U9 ( .A1(router_address_x[2]), .A2(n46), .ZN(n33) );
  NOR2_X1 U10 ( .A1(router_address_x[0]), .A2(n45), .ZN(n32) );
  INV_X1 U11 ( .A(n33), .ZN(n45) );
  NAND2_X1 U12 ( .A1(read_request), .A2(n22), .ZN(n27) );
  OR2_X1 U13 ( .A1(n26), .A2(n47), .ZN(n23) );
  OAI211_X1 U16 ( .C1(router_address_x[2]), .C2(n46), .A(n30), .B(n31), .ZN(
        n22) );
  OAI211_X1 U17 ( .C1(flit_desn_x[1]), .C2(n48), .A(flit_desn_x[0]), .B(n32), 
        .ZN(n31) );
  INV_X1 U18 ( .A(router_address_x[1]), .ZN(n48) );
  OAI211_X1 U19 ( .C1(router_address_y[2]), .C2(n44), .A(n38), .B(n39), .ZN(
        n29) );
  INV_X1 U20 ( .A(flit_desn_y[2]), .ZN(n44) );
  XNOR2_X1 U21 ( .A(flit_desn_y[2]), .B(router_address_y[2]), .ZN(n35) );
  XOR2_X1 U22 ( .A(flit_desn_y[0]), .B(n42), .Z(n36) );
  XOR2_X1 U23 ( .A(flit_desn_y[1]), .B(n41), .Z(n34) );
  INV_X1 U24 ( .A(flit_desn_x[2]), .ZN(n46) );
  INV_X1 U25 ( .A(router_address_y[1]), .ZN(n41) );
  INV_X1 U26 ( .A(router_address_y[0]), .ZN(n42) );
endmodule


module node_controller_1 ( Clk, Rst, N_usage, S_usage, E_usage, W_usage, 
        rst_N_usage, rst_S_usage, rst_E_usage, rst_W_usage, flit_data, 
        fifo_full, fifo_empty, router_address_x, router_address_y, rd_en, 
        N_vc_arb_req, S_vc_arb_req, E_vc_arb_req, W_vc_arb_req, N_vc_arb_gnt, 
        S_vc_arb_gnt, E_vc_arb_gnt, W_vc_arb_gnt, dec_N_buff_count, 
        dec_S_buff_count, dec_E_buff_count, dec_W_buff_count, N_buff_count, 
        S_buff_count, E_buff_count, W_buff_count, N_sw_arb_req, S_sw_arb_req, 
        E_sw_arb_req, W_sw_arb_req, N_sw_arb_gnt, S_sw_arb_gnt, E_sw_arb_gnt, 
        W_sw_arb_gnt, flit_out );
  input [11:0] flit_data;
  input [2:0] router_address_x;
  input [2:0] router_address_y;
  input [7:0] N_buff_count;
  input [7:0] S_buff_count;
  input [7:0] E_buff_count;
  input [7:0] W_buff_count;
  output [11:0] flit_out;
  input Clk, Rst, N_usage, S_usage, E_usage, W_usage, fifo_full, fifo_empty,
         N_vc_arb_gnt, S_vc_arb_gnt, E_vc_arb_gnt, W_vc_arb_gnt, N_sw_arb_gnt,
         S_sw_arb_gnt, E_sw_arb_gnt, W_sw_arb_gnt;
  output rst_N_usage, rst_S_usage, rst_E_usage, rst_W_usage, rd_en,
         N_vc_arb_req, S_vc_arb_req, E_vc_arb_req, W_vc_arb_req,
         dec_N_buff_count, dec_S_buff_count, dec_E_buff_count,
         dec_W_buff_count, N_sw_arb_req, S_sw_arb_req, E_sw_arb_req,
         W_sw_arb_req;
  wire   \next_hop[0] , N55, N56, N57, N58, N60, N62, N64, N77, n33, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n59, n60, n63,
         n65, n68, n69, n70, n77, n81, n83, n86, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371;
  wire   [2:0] next_hop_out;
  wire   [2:0] state;
  wire   [2:0] sw_arb_port;
  wire   [2:0] next_state;
  wire   [2:0] sw_arb_port_next;
  wire   [11:0] flit_out_next;

  DFFR_X1 \state_reg[1]  ( .D(next_state[1]), .CK(Clk), .RN(n329), .Q(state[1]), .QN(n318) );
  DFFR_X1 \state_reg[2]  ( .D(next_state[2]), .CK(Clk), .RN(n329), .Q(state[2]), .QN(n317) );
  DFFR_X1 \next_hop_reg[2]  ( .D(next_hop_out[2]), .CK(Clk), .RN(n328), .QN(
        n332) );
  DFFR_X1 \next_hop_reg[1]  ( .D(next_hop_out[1]), .CK(Clk), .RN(n328), .QN(
        n333) );
  DFFR_X1 \next_hop_reg[0]  ( .D(next_hop_out[0]), .CK(Clk), .RN(n328), .Q(
        \next_hop[0] ), .QN(n316) );
  DLL_X1 \sw_arb_port_next_reg[2]  ( .D(N57), .GN(n133), .Q(
        sw_arb_port_next[2]) );
  DFFR_X1 \sw_arb_port_reg[2]  ( .D(sw_arb_port_next[2]), .CK(Clk), .RN(n328), 
        .Q(sw_arb_port[2]), .QN(n314) );
  DLL_X1 \sw_arb_port_next_reg[1]  ( .D(N56), .GN(n133), .Q(
        sw_arb_port_next[1]) );
  DFFR_X1 \sw_arb_port_reg[1]  ( .D(sw_arb_port_next[1]), .CK(Clk), .RN(n328), 
        .Q(n106), .QN(n313) );
  DLL_X1 \sw_arb_port_next_reg[0]  ( .D(N55), .GN(n133), .Q(
        sw_arb_port_next[0]) );
  DFFR_X1 \sw_arb_port_reg[0]  ( .D(sw_arb_port_next[0]), .CK(Clk), .RN(n328), 
        .Q(sw_arb_port[0]), .QN(n312) );
  DFF_X1 dec_W_buff_count_reg ( .D(n131), .CK(Clk), .Q(dec_W_buff_count), .QN(
        n107) );
  DFF_X1 W_usage_out_reg ( .D(n130), .CK(Clk), .Q(rst_W_usage), .QN(n108) );
  DFF_X1 dec_N_buff_count_reg ( .D(n129), .CK(Clk), .Q(dec_N_buff_count), .QN(
        n105) );
  DFF_X1 N_usage_out_reg ( .D(n128), .CK(Clk), .Q(rst_N_usage), .QN(n109) );
  DFF_X1 dec_S_buff_count_reg ( .D(n127), .CK(Clk), .Q(dec_S_buff_count), .QN(
        n104) );
  DFF_X1 S_usage_out_reg ( .D(n126), .CK(Clk), .Q(rst_S_usage), .QN(n110) );
  DFF_X1 E_usage_out_reg ( .D(n125), .CK(Clk), .Q(rst_E_usage), .QN(n111) );
  DFF_X1 dec_E_buff_count_reg ( .D(n124), .CK(Clk), .Q(dec_E_buff_count), .QN(
        n103) );
  DLH_X1 \flit_out_next_reg[11]  ( .G(N77), .D(flit_data[11]), .Q(
        flit_out_next[11]) );
  DFF_X1 \flit_out_reg[11]  ( .D(n123), .CK(Clk), .Q(flit_out[11]), .QN(n102)
         );
  DLH_X1 \flit_out_next_reg[10]  ( .G(N77), .D(flit_data[10]), .Q(
        flit_out_next[10]) );
  DFF_X1 \flit_out_reg[10]  ( .D(n122), .CK(Clk), .Q(flit_out[10]), .QN(n101)
         );
  DLH_X1 \flit_out_next_reg[9]  ( .G(N77), .D(flit_data[9]), .Q(
        flit_out_next[9]) );
  DFF_X1 \flit_out_reg[9]  ( .D(n121), .CK(Clk), .Q(flit_out[9]), .QN(n100) );
  DLH_X1 \flit_out_next_reg[8]  ( .G(N77), .D(flit_data[8]), .Q(
        flit_out_next[8]) );
  DFF_X1 \flit_out_reg[8]  ( .D(n120), .CK(Clk), .Q(flit_out[8]), .QN(n99) );
  DLH_X1 \flit_out_next_reg[7]  ( .G(N77), .D(flit_data[7]), .Q(
        flit_out_next[7]) );
  DFF_X1 \flit_out_reg[7]  ( .D(n119), .CK(Clk), .Q(flit_out[7]), .QN(n98) );
  DLH_X1 \flit_out_next_reg[6]  ( .G(N77), .D(flit_data[6]), .Q(
        flit_out_next[6]) );
  DFF_X1 \flit_out_reg[6]  ( .D(n118), .CK(Clk), .Q(flit_out[6]), .QN(n97) );
  DLH_X1 \flit_out_next_reg[5]  ( .G(N77), .D(flit_data[5]), .Q(
        flit_out_next[5]) );
  DFF_X1 \flit_out_reg[5]  ( .D(n117), .CK(Clk), .Q(flit_out[5]), .QN(n96) );
  DLH_X1 \flit_out_next_reg[4]  ( .G(N77), .D(flit_data[4]), .Q(
        flit_out_next[4]) );
  DFF_X1 \flit_out_reg[4]  ( .D(n116), .CK(Clk), .Q(flit_out[4]), .QN(n95) );
  DLH_X1 \flit_out_next_reg[3]  ( .G(N77), .D(flit_data[3]), .Q(
        flit_out_next[3]) );
  DFF_X1 \flit_out_reg[3]  ( .D(n115), .CK(Clk), .Q(flit_out[3]), .QN(n94) );
  DLH_X1 \flit_out_next_reg[2]  ( .G(N77), .D(flit_data[2]), .Q(
        flit_out_next[2]) );
  DFF_X1 \flit_out_reg[2]  ( .D(n114), .CK(Clk), .Q(flit_out[2]), .QN(n93) );
  DLH_X1 \flit_out_next_reg[1]  ( .G(N77), .D(flit_data[1]), .Q(
        flit_out_next[1]) );
  DFF_X1 \flit_out_reg[1]  ( .D(n113), .CK(Clk), .Q(flit_out[1]), .QN(n92) );
  DLH_X1 \flit_out_next_reg[0]  ( .G(N77), .D(flit_data[0]), .Q(
        flit_out_next[0]) );
  DFF_X1 \flit_out_reg[0]  ( .D(n112), .CK(Clk), .Q(flit_out[0]), .QN(n91) );
  NAND3_X1 U55 ( .A1(n322), .A2(n312), .A3(n106), .ZN(n60) );
  NAND3_X1 U58 ( .A1(n322), .A2(n313), .A3(sw_arb_port[0]), .ZN(n63) );
  NAND3_X1 U61 ( .A1(n106), .A2(n322), .A3(sw_arb_port[0]), .ZN(n65) );
  XOR2_X1 U69 ( .A(router_address_x[0]), .B(flit_data[5]), .Z(n69) );
  XOR2_X1 U70 ( .A(router_address_y[0]), .B(flit_data[2]), .Z(n68) );
  NOR3_X2 U79 ( .A1(n77), .A2(N_usage), .A3(n33), .ZN(N_vc_arb_req) );
  AND3_X2 U80 ( .A1(n324), .A2(n313), .A3(N58), .ZN(N_sw_arb_req) );
  routing_table_1 router0 ( .router_address_x(router_address_x), 
        .router_address_y(router_address_y), .flit_desn_x({1'b0, 1'b0, 
        flit_data[5]}), .flit_desn_y({1'b0, 1'b0, flit_data[5]}), .next_hop(
        next_hop_out), .read_request(n132) );
  DFFR_X2 \state_reg[0]  ( .D(next_state[0]), .CK(Clk), .RN(n328), .Q(state[0]), .QN(n320) );
  NOR4_X2 U3 ( .A1(n335), .A2(n334), .A3(S_usage), .A4(n333), .ZN(S_vc_arb_req) );
  OR2_X1 U4 ( .A1(n334), .A2(n77), .ZN(n315) );
  NOR4_X2 U5 ( .A1(n331), .A2(n334), .A3(E_usage), .A4(n332), .ZN(E_vc_arb_req) );
  NOR4_X2 U6 ( .A1(N_buff_count[3]), .A2(N_buff_count[2]), .A3(N_buff_count[1]), .A4(N_buff_count[0]), .ZN(n364) );
  NOR4_X2 U7 ( .A1(N_buff_count[7]), .A2(N_buff_count[6]), .A3(N_buff_count[5]), .A4(N_buff_count[4]), .ZN(n363) );
  OAI21_X2 U8 ( .B1(N_usage), .B2(n77), .A(n353), .ZN(n334) );
  INV_X1 U9 ( .A(n318), .ZN(n319) );
  NOR2_X2 U10 ( .A1(W_usage), .A2(n315), .ZN(W_vc_arb_req) );
  BUF_X1 U11 ( .A(Rst), .Z(n327) );
  BUF_X1 U12 ( .A(Rst), .Z(n328) );
  BUF_X1 U13 ( .A(Rst), .Z(n329) );
  NOR4_X1 U14 ( .A1(E_sw_arb_gnt), .A2(W_sw_arb_gnt), .A3(N_sw_arb_gnt), .A4(
        S_sw_arb_gnt), .ZN(n321) );
  NOR2_X1 U15 ( .A1(n314), .A2(n86), .ZN(n59) );
  AND3_X1 U16 ( .A1(n314), .A2(n329), .A3(n349), .ZN(n322) );
  NAND2_X1 U17 ( .A1(n312), .A2(n313), .ZN(n86) );
  INV_X1 U18 ( .A(n59), .ZN(n371) );
  NAND2_X1 U19 ( .A1(n86), .A2(n314), .ZN(n83) );
  NAND2_X1 U20 ( .A1(N60), .A2(n106), .ZN(n81) );
  OR3_X1 U21 ( .A1(router_address_y[2]), .A2(router_address_y[1]), .A3(
        router_address_x[2]), .ZN(n70) );
  AND3_X1 U22 ( .A1(state[0]), .A2(n358), .A3(n317), .ZN(n323) );
  OAI21_X1 U23 ( .B1(n328), .B2(n111), .A(n57), .ZN(n125) );
  OAI21_X1 U24 ( .B1(n328), .B2(n110), .A(n60), .ZN(n126) );
  OAI21_X1 U25 ( .B1(n328), .B2(n109), .A(n63), .ZN(n128) );
  OAI21_X1 U26 ( .B1(n328), .B2(n108), .A(n65), .ZN(n130) );
  OAI21_X1 U27 ( .B1(n91), .B2(n327), .A(n45), .ZN(n112) );
  NAND2_X1 U28 ( .A1(flit_out_next[0]), .A2(n328), .ZN(n45) );
  OAI21_X1 U29 ( .B1(n92), .B2(n327), .A(n46), .ZN(n113) );
  NAND2_X1 U30 ( .A1(flit_out_next[1]), .A2(n327), .ZN(n46) );
  OAI21_X1 U31 ( .B1(n93), .B2(n327), .A(n47), .ZN(n114) );
  NAND2_X1 U32 ( .A1(flit_out_next[2]), .A2(n328), .ZN(n47) );
  OAI21_X1 U33 ( .B1(n94), .B2(n327), .A(n48), .ZN(n115) );
  NAND2_X1 U34 ( .A1(flit_out_next[3]), .A2(n328), .ZN(n48) );
  OAI21_X1 U35 ( .B1(n95), .B2(n327), .A(n49), .ZN(n116) );
  NAND2_X1 U36 ( .A1(flit_out_next[4]), .A2(n328), .ZN(n49) );
  OAI21_X1 U37 ( .B1(n96), .B2(n327), .A(n50), .ZN(n117) );
  NAND2_X1 U38 ( .A1(flit_out_next[5]), .A2(n329), .ZN(n50) );
  OAI21_X1 U39 ( .B1(n101), .B2(n327), .A(n55), .ZN(n122) );
  NAND2_X1 U40 ( .A1(flit_out_next[10]), .A2(n327), .ZN(n55) );
  OAI21_X1 U41 ( .B1(n102), .B2(n327), .A(n56), .ZN(n123) );
  NAND2_X1 U42 ( .A1(flit_out_next[11]), .A2(n329), .ZN(n56) );
  OAI21_X1 U43 ( .B1(n103), .B2(n327), .A(n57), .ZN(n124) );
  OAI21_X1 U44 ( .B1(n104), .B2(n327), .A(n60), .ZN(n127) );
  OAI21_X1 U45 ( .B1(n105), .B2(n327), .A(n63), .ZN(n129) );
  OAI21_X1 U46 ( .B1(n107), .B2(n327), .A(n65), .ZN(n131) );
  OAI21_X1 U47 ( .B1(n97), .B2(n328), .A(n51), .ZN(n118) );
  NAND2_X1 U48 ( .A1(flit_out_next[6]), .A2(n327), .ZN(n51) );
  OAI21_X1 U49 ( .B1(n98), .B2(n329), .A(n52), .ZN(n119) );
  NAND2_X1 U50 ( .A1(flit_out_next[7]), .A2(n327), .ZN(n52) );
  OAI21_X1 U51 ( .B1(n99), .B2(n327), .A(n53), .ZN(n120) );
  NAND2_X1 U52 ( .A1(flit_out_next[8]), .A2(n327), .ZN(n53) );
  OAI21_X1 U53 ( .B1(n100), .B2(n328), .A(n54), .ZN(n121) );
  NAND2_X1 U54 ( .A1(flit_out_next[9]), .A2(n329), .ZN(n54) );
  AND3_X1 U56 ( .A1(n324), .A2(n106), .A3(N64), .ZN(W_sw_arb_req) );
  AND3_X1 U57 ( .A1(n350), .A2(n314), .A3(sw_arb_port[0]), .ZN(n324) );
  CLKBUF_X1 U59 ( .A(n362), .Z(n325) );
  INV_X1 U60 ( .A(n325), .ZN(n326) );
  OR4_X1 U62 ( .A1(router_address_x[1]), .A2(n70), .A3(n69), .A4(n68), .ZN(
        n342) );
  INV_X1 U63 ( .A(flit_data[0]), .ZN(n347) );
  INV_X1 U64 ( .A(flit_data[1]), .ZN(n343) );
  NAND3_X1 U65 ( .A1(n342), .A2(n347), .A3(n343), .ZN(n357) );
  INV_X1 U66 ( .A(n357), .ZN(n330) );
  INV_X1 U67 ( .A(state[1]), .ZN(n358) );
  NAND2_X1 U68 ( .A1(n330), .A2(n323), .ZN(n351) );
  INV_X1 U71 ( .A(n351), .ZN(n132) );
  NAND3_X1 U72 ( .A1(state[0]), .A2(state[1]), .A3(n317), .ZN(n346) );
  INV_X1 U73 ( .A(n346), .ZN(n350) );
  NAND3_X1 U74 ( .A1(\next_hop[0] ), .A2(n333), .A3(n332), .ZN(n77) );
  NAND3_X1 U75 ( .A1(n319), .A2(n317), .A3(n320), .ZN(n33) );
  NAND3_X1 U76 ( .A1(state[2]), .A2(n358), .A3(n320), .ZN(n336) );
  INV_X1 U77 ( .A(n336), .ZN(n349) );
  NAND3_X1 U78 ( .A1(n59), .A2(n329), .A3(n349), .ZN(n57) );
  AND3_X1 U81 ( .A1(N62), .A2(n59), .A3(n350), .ZN(E_sw_arb_req) );
  NOR4_X1 U82 ( .A1(sw_arb_port[0]), .A2(sw_arb_port[2]), .A3(n81), .A4(n346), 
        .ZN(S_sw_arb_req) );
  INV_X1 U83 ( .A(n33), .ZN(n353) );
  NAND2_X1 U84 ( .A1(n333), .A2(n316), .ZN(n331) );
  NAND2_X1 U85 ( .A1(n316), .A2(n332), .ZN(n335) );
  NOR4_X1 U86 ( .A1(state[2]), .A2(state[0]), .A3(fifo_empty), .A4(state[1]), 
        .ZN(rd_en) );
  AOI21_X1 U87 ( .B1(n83), .B2(n371), .A(n336), .ZN(N77) );
  INV_X1 U88 ( .A(E_vc_arb_gnt), .ZN(n341) );
  NAND2_X1 U89 ( .A1(n326), .A2(n341), .ZN(n340) );
  INV_X1 U90 ( .A(N_vc_arb_gnt), .ZN(n337) );
  OAI21_X1 U91 ( .B1(S_vc_arb_gnt), .B2(n340), .A(n337), .ZN(N55) );
  INV_X1 U92 ( .A(W_vc_arb_gnt), .ZN(n362) );
  INV_X1 U93 ( .A(S_vc_arb_gnt), .ZN(n339) );
  NAND4_X1 U94 ( .A1(n341), .A2(n325), .A3(n337), .A4(n339), .ZN(n338) );
  NAND2_X1 U95 ( .A1(n353), .A2(n338), .ZN(n133) );
  AOI21_X1 U96 ( .B1(n340), .B2(n339), .A(N_vc_arb_gnt), .ZN(N56) );
  NOR3_X1 U97 ( .A1(N_vc_arb_gnt), .A2(S_vc_arb_gnt), .A3(n341), .ZN(N57) );
  INV_X1 U98 ( .A(n342), .ZN(n344) );
  NAND4_X1 U99 ( .A1(n347), .A2(n344), .A3(n323), .A4(n343), .ZN(n345) );
  OAI21_X1 U100 ( .B1(n321), .B2(n346), .A(n345), .ZN(next_state[2]) );
  NAND2_X1 U101 ( .A1(flit_data[1]), .A2(n347), .ZN(n354) );
  INV_X1 U102 ( .A(fifo_empty), .ZN(n348) );
  NAND3_X1 U103 ( .A1(n349), .A2(n354), .A3(n348), .ZN(n352) );
  NAND2_X1 U104 ( .A1(n321), .A2(n350), .ZN(n355) );
  NAND4_X1 U105 ( .A1(n352), .A2(n33), .A3(n351), .A4(n355), .ZN(next_state[1]) );
  AOI222_X1 U106 ( .A1(N_vc_arb_gnt), .A2(n353), .B1(E_vc_arb_gnt), .B2(n353), 
        .C1(S_vc_arb_gnt), .C2(n353), .ZN(n361) );
  AOI21_X1 U107 ( .B1(state[0]), .B2(n354), .A(fifo_empty), .ZN(n359) );
  INV_X1 U108 ( .A(n355), .ZN(n356) );
  AOI221_X1 U109 ( .B1(n359), .B2(n358), .C1(n323), .C2(n357), .A(n356), .ZN(
        n360) );
  OAI211_X1 U110 ( .C1(n362), .C2(n33), .A(n360), .B(n361), .ZN(next_state[0])
         );
  NAND2_X1 U111 ( .A1(n364), .A2(n363), .ZN(N58) );
  NOR4_X1 U112 ( .A1(S_buff_count[3]), .A2(S_buff_count[2]), .A3(
        S_buff_count[1]), .A4(S_buff_count[0]), .ZN(n366) );
  NOR4_X1 U113 ( .A1(S_buff_count[7]), .A2(S_buff_count[6]), .A3(
        S_buff_count[5]), .A4(S_buff_count[4]), .ZN(n365) );
  NAND2_X1 U114 ( .A1(n366), .A2(n365), .ZN(N60) );
  NOR4_X1 U115 ( .A1(E_buff_count[3]), .A2(E_buff_count[2]), .A3(
        E_buff_count[1]), .A4(E_buff_count[0]), .ZN(n368) );
  NOR4_X1 U116 ( .A1(E_buff_count[7]), .A2(E_buff_count[6]), .A3(
        E_buff_count[5]), .A4(E_buff_count[4]), .ZN(n367) );
  NAND2_X1 U117 ( .A1(n368), .A2(n367), .ZN(N62) );
  NOR4_X1 U118 ( .A1(W_buff_count[3]), .A2(W_buff_count[2]), .A3(
        W_buff_count[1]), .A4(W_buff_count[0]), .ZN(n370) );
  NOR4_X1 U119 ( .A1(W_buff_count[7]), .A2(W_buff_count[6]), .A3(
        W_buff_count[5]), .A4(W_buff_count[4]), .ZN(n369) );
  NAND2_X1 U120 ( .A1(n370), .A2(n369), .ZN(N64) );
endmodule


module routing_table_9 ( router_address_x, router_address_y, flit_desn_x, 
        flit_desn_y, next_hop, read_request );
  input [2:0] router_address_x;
  input [2:0] router_address_y;
  input [2:0] flit_desn_x;
  input [2:0] flit_desn_y;
  output [2:0] next_hop;
  input read_request;
  wire   n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66;

  OAI221_X2 U3 ( .B1(n66), .B2(n65), .C1(read_request), .C2(n64), .A(n63), 
        .ZN(next_hop[0]) );
  INV_X2 U4 ( .A(next_hop[0]), .ZN(n64) );
  OAI221_X2 U6 ( .B1(n62), .B2(n61), .C1(read_request), .C2(n60), .A(n63), 
        .ZN(next_hop[1]) );
  INV_X2 U7 ( .A(next_hop[1]), .ZN(n60) );
  INV_X2 U14 ( .A(n51), .ZN(next_hop[2]) );
  AOI22_X2 U15 ( .A1(n47), .A2(next_hop[2]), .B1(n59), .B2(read_request), .ZN(
        n51) );
  NAND3_X1 U27 ( .A1(n43), .A2(n62), .A3(read_request), .ZN(n63) );
  NAND3_X1 U28 ( .A1(n55), .A2(n48), .A3(flit_desn_x[1]), .ZN(n58) );
  NAND3_X1 U29 ( .A1(n54), .A2(n53), .A3(n52), .ZN(n62) );
  NAND4_X1 U30 ( .A1(n54), .A2(flit_desn_y[0]), .A3(n53), .A4(n42), .ZN(n49)
         );
  NAND3_X1 U31 ( .A1(n53), .A2(n41), .A3(flit_desn_y[1]), .ZN(n50) );
  INV_X1 U5 ( .A(read_request), .ZN(n47) );
  INV_X1 U8 ( .A(n59), .ZN(n43) );
  NAND2_X1 U9 ( .A1(router_address_x[2]), .A2(n46), .ZN(n55) );
  NOR2_X1 U10 ( .A1(router_address_x[0]), .A2(n45), .ZN(n56) );
  INV_X1 U11 ( .A(n55), .ZN(n45) );
  NAND2_X1 U12 ( .A1(read_request), .A2(n66), .ZN(n61) );
  OR2_X1 U13 ( .A1(n62), .A2(n47), .ZN(n65) );
  OAI211_X1 U16 ( .C1(router_address_x[2]), .C2(n46), .A(n58), .B(n57), .ZN(
        n66) );
  OAI211_X1 U17 ( .C1(flit_desn_x[1]), .C2(n48), .A(flit_desn_x[0]), .B(n56), 
        .ZN(n57) );
  INV_X1 U18 ( .A(router_address_x[1]), .ZN(n48) );
  OAI211_X1 U19 ( .C1(router_address_y[2]), .C2(n44), .A(n50), .B(n49), .ZN(
        n59) );
  INV_X1 U20 ( .A(flit_desn_y[2]), .ZN(n44) );
  XNOR2_X1 U21 ( .A(flit_desn_y[2]), .B(router_address_y[2]), .ZN(n53) );
  XOR2_X1 U22 ( .A(flit_desn_y[0]), .B(n42), .Z(n52) );
  XOR2_X1 U23 ( .A(flit_desn_y[1]), .B(n41), .Z(n54) );
  INV_X1 U24 ( .A(flit_desn_x[2]), .ZN(n46) );
  INV_X1 U25 ( .A(router_address_y[1]), .ZN(n41) );
  INV_X1 U26 ( .A(router_address_y[0]), .ZN(n42) );
endmodule


module node_controller_9 ( Clk, Rst, N_usage, S_usage, E_usage, W_usage, 
        rst_N_usage, rst_S_usage, rst_E_usage, rst_W_usage, flit_data, 
        fifo_full, fifo_empty, router_address_x, router_address_y, rd_en, 
        N_vc_arb_req, S_vc_arb_req, E_vc_arb_req, W_vc_arb_req, N_vc_arb_gnt, 
        S_vc_arb_gnt, E_vc_arb_gnt, W_vc_arb_gnt, dec_N_buff_count, 
        dec_S_buff_count, dec_E_buff_count, dec_W_buff_count, N_buff_count, 
        S_buff_count, E_buff_count, W_buff_count, N_sw_arb_req, S_sw_arb_req, 
        E_sw_arb_req, W_sw_arb_req, N_sw_arb_gnt, S_sw_arb_gnt, E_sw_arb_gnt, 
        W_sw_arb_gnt, flit_out );
  input [11:0] flit_data;
  input [2:0] router_address_x;
  input [2:0] router_address_y;
  input [7:0] N_buff_count;
  input [7:0] S_buff_count;
  input [7:0] E_buff_count;
  input [7:0] W_buff_count;
  output [11:0] flit_out;
  input Clk, Rst, N_usage, S_usage, E_usage, W_usage, fifo_full, fifo_empty,
         N_vc_arb_gnt, S_vc_arb_gnt, E_vc_arb_gnt, W_vc_arb_gnt, N_sw_arb_gnt,
         S_sw_arb_gnt, E_sw_arb_gnt, W_sw_arb_gnt;
  output rst_N_usage, rst_S_usage, rst_E_usage, rst_W_usage, rd_en,
         N_vc_arb_req, S_vc_arb_req, E_vc_arb_req, W_vc_arb_req,
         dec_N_buff_count, dec_S_buff_count, dec_E_buff_count,
         dec_W_buff_count, N_sw_arb_req, S_sw_arb_req, E_sw_arb_req,
         W_sw_arb_req;
  wire   N55, N56, N57, N58, N60, N62, N64, N77, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433;
  wire   [2:0] next_hop_out;
  wire   [2:0] state;
  wire   [2:0] next_hop;
  wire   [2:0] sw_arb_port;
  wire   [2:0] next_state;
  wire   [2:0] sw_arb_port_next;
  wire   [11:0] flit_out_next;

  DFFR_X1 \state_reg[0]  ( .D(next_state[0]), .CK(Clk), .RN(n326), .Q(state[0]), .QN(n325) );
  DFFR_X1 \state_reg[1]  ( .D(next_state[1]), .CK(Clk), .RN(n327), .Q(state[1]), .QN(n350) );
  DFFR_X1 \state_reg[2]  ( .D(next_state[2]), .CK(Clk), .RN(n327), .Q(state[2]), .QN(n322) );
  DFFR_X1 \next_hop_reg[2]  ( .D(next_hop_out[2]), .CK(Clk), .RN(n327), .Q(
        next_hop[2]), .QN(n324) );
  DFFR_X1 \next_hop_reg[1]  ( .D(next_hop_out[1]), .CK(Clk), .RN(n327), .Q(
        next_hop[1]), .QN(n323) );
  DFFR_X1 \next_hop_reg[0]  ( .D(next_hop_out[0]), .CK(Clk), .RN(n326), .Q(
        next_hop[0]), .QN(n320) );
  DLL_X1 \sw_arb_port_next_reg[2]  ( .D(N57), .GN(n366), .Q(
        sw_arb_port_next[2]) );
  DFFR_X1 \sw_arb_port_reg[2]  ( .D(sw_arb_port_next[2]), .CK(Clk), .RN(n327), 
        .Q(sw_arb_port[2]), .QN(n314) );
  DLL_X1 \sw_arb_port_next_reg[1]  ( .D(N56), .GN(n366), .Q(
        sw_arb_port_next[1]) );
  DFFR_X1 \sw_arb_port_reg[1]  ( .D(sw_arb_port_next[1]), .CK(Clk), .RN(n327), 
        .Q(n393), .QN(n313) );
  DLL_X1 \sw_arb_port_next_reg[0]  ( .D(N55), .GN(n366), .Q(
        sw_arb_port_next[0]) );
  DFFR_X1 \sw_arb_port_reg[0]  ( .D(sw_arb_port_next[0]), .CK(Clk), .RN(n326), 
        .Q(sw_arb_port[0]), .QN(n312) );
  DFF_X1 dec_W_buff_count_reg ( .D(n368), .CK(Clk), .Q(dec_W_buff_count), .QN(
        n392) );
  DFF_X1 W_usage_out_reg ( .D(n369), .CK(Clk), .Q(rst_W_usage), .QN(n391) );
  DFF_X1 dec_N_buff_count_reg ( .D(n370), .CK(Clk), .Q(dec_N_buff_count), .QN(
        n394) );
  DFF_X1 N_usage_out_reg ( .D(n371), .CK(Clk), .Q(rst_N_usage), .QN(n390) );
  DFF_X1 dec_S_buff_count_reg ( .D(n372), .CK(Clk), .Q(dec_S_buff_count), .QN(
        n395) );
  DFF_X1 S_usage_out_reg ( .D(n373), .CK(Clk), .Q(rst_S_usage), .QN(n389) );
  DFF_X1 E_usage_out_reg ( .D(n374), .CK(Clk), .Q(rst_E_usage), .QN(n388) );
  DFF_X1 dec_E_buff_count_reg ( .D(n375), .CK(Clk), .Q(dec_E_buff_count), .QN(
        n396) );
  DLH_X1 \flit_out_next_reg[11]  ( .G(N77), .D(flit_data[11]), .Q(
        flit_out_next[11]) );
  DFF_X1 \flit_out_reg[11]  ( .D(n376), .CK(Clk), .Q(flit_out[11]), .QN(n397)
         );
  DLH_X1 \flit_out_next_reg[10]  ( .G(N77), .D(flit_data[10]), .Q(
        flit_out_next[10]) );
  DFF_X1 \flit_out_reg[10]  ( .D(n377), .CK(Clk), .Q(flit_out[10]), .QN(n398)
         );
  DLH_X1 \flit_out_next_reg[9]  ( .G(N77), .D(flit_data[9]), .Q(
        flit_out_next[9]) );
  DFF_X1 \flit_out_reg[9]  ( .D(n378), .CK(Clk), .Q(flit_out[9]), .QN(n399) );
  DLH_X1 \flit_out_next_reg[8]  ( .G(N77), .D(flit_data[8]), .Q(
        flit_out_next[8]) );
  DFF_X1 \flit_out_reg[8]  ( .D(n379), .CK(Clk), .Q(flit_out[8]), .QN(n400) );
  DLH_X1 \flit_out_next_reg[7]  ( .G(N77), .D(flit_data[7]), .Q(
        flit_out_next[7]) );
  DFF_X1 \flit_out_reg[7]  ( .D(n380), .CK(Clk), .Q(flit_out[7]), .QN(n401) );
  DLH_X1 \flit_out_next_reg[6]  ( .G(N77), .D(flit_data[6]), .Q(
        flit_out_next[6]) );
  DFF_X1 \flit_out_reg[6]  ( .D(n381), .CK(Clk), .Q(flit_out[6]), .QN(n402) );
  DLH_X1 \flit_out_next_reg[5]  ( .G(N77), .D(flit_data[5]), .Q(
        flit_out_next[5]) );
  DFF_X1 \flit_out_reg[5]  ( .D(n382), .CK(Clk), .Q(flit_out[5]), .QN(n403) );
  DLH_X1 \flit_out_next_reg[4]  ( .G(N77), .D(flit_data[4]), .Q(
        flit_out_next[4]) );
  DFF_X1 \flit_out_reg[4]  ( .D(n383), .CK(Clk), .Q(flit_out[4]), .QN(n404) );
  DLH_X1 \flit_out_next_reg[3]  ( .G(N77), .D(flit_data[3]), .Q(
        flit_out_next[3]) );
  DFF_X1 \flit_out_reg[3]  ( .D(n384), .CK(Clk), .Q(flit_out[3]), .QN(n405) );
  DLH_X1 \flit_out_next_reg[2]  ( .G(N77), .D(flit_data[2]), .Q(
        flit_out_next[2]) );
  DFF_X1 \flit_out_reg[2]  ( .D(n385), .CK(Clk), .Q(flit_out[2]), .QN(n406) );
  DLH_X1 \flit_out_next_reg[1]  ( .G(N77), .D(flit_data[1]), .Q(
        flit_out_next[1]) );
  DFF_X1 \flit_out_reg[1]  ( .D(n386), .CK(Clk), .Q(flit_out[1]), .QN(n407) );
  DLH_X1 \flit_out_next_reg[0]  ( .G(N77), .D(flit_data[0]), .Q(
        flit_out_next[0]) );
  DFF_X1 \flit_out_reg[0]  ( .D(n387), .CK(Clk), .Q(flit_out[0]), .QN(n408) );
  NAND3_X1 U55 ( .A1(n317), .A2(n312), .A3(n393), .ZN(n418) );
  NAND3_X1 U58 ( .A1(n317), .A2(n313), .A3(sw_arb_port[0]), .ZN(n417) );
  NAND3_X1 U61 ( .A1(n393), .A2(n317), .A3(sw_arb_port[0]), .ZN(n416) );
  XOR2_X1 U69 ( .A(router_address_x[0]), .B(flit_data[5]), .Z(n414) );
  XOR2_X1 U70 ( .A(router_address_y[0]), .B(flit_data[2]), .Z(n415) );
  NOR3_X2 U73 ( .A1(n356), .A2(W_usage), .A3(n412), .ZN(W_vc_arb_req) );
  NOR4_X4 U75 ( .A1(n355), .A2(S_usage), .A3(next_hop[2]), .A4(next_hop[0]), 
        .ZN(S_vc_arb_req) );
  NOR3_X2 U79 ( .A1(n412), .A2(N_usage), .A3(n433), .ZN(N_vc_arb_req) );
  NOR4_X4 U97 ( .A1(n354), .A2(E_usage), .A3(next_hop[1]), .A4(next_hop[0]), 
        .ZN(E_vc_arb_req) );
  routing_table_9 router0 ( .router_address_x(router_address_x), 
        .router_address_y(router_address_y), .flit_desn_x({1'b0, 1'b0, 
        flit_data[5]}), .flit_desn_y({1'b0, 1'b0, flit_data[5]}), .next_hop(
        next_hop_out), .read_request(n367) );
  NOR4_X2 U3 ( .A1(state[2]), .A2(state[0]), .A3(fifo_empty), .A4(n315), .ZN(
        rd_en) );
  NOR4_X2 U4 ( .A1(N_buff_count[3]), .A2(N_buff_count[2]), .A3(N_buff_count[1]), .A4(N_buff_count[0]), .ZN(n358) );
  NAND3_X2 U5 ( .A1(state[1]), .A2(n322), .A3(n325), .ZN(n433) );
  INV_X1 U6 ( .A(n350), .ZN(n315) );
  NOR4_X2 U7 ( .A1(N_buff_count[7]), .A2(N_buff_count[6]), .A3(N_buff_count[5]), .A4(N_buff_count[4]), .ZN(n357) );
  BUF_X1 U8 ( .A(Rst), .Z(n326) );
  BUF_X1 U9 ( .A(Rst), .Z(n327) );
  NOR2_X1 U10 ( .A1(n314), .A2(n409), .ZN(n419) );
  NAND2_X1 U11 ( .A1(n312), .A2(n313), .ZN(n409) );
  NOR4_X1 U12 ( .A1(E_sw_arb_gnt), .A2(W_sw_arb_gnt), .A3(N_sw_arb_gnt), .A4(
        S_sw_arb_gnt), .ZN(n316) );
  AND3_X1 U13 ( .A1(n314), .A2(Rst), .A3(n344), .ZN(n317) );
  INV_X1 U14 ( .A(n419), .ZN(n365) );
  NAND2_X1 U15 ( .A1(n409), .A2(n314), .ZN(n410) );
  OR3_X1 U16 ( .A1(router_address_y[2]), .A2(router_address_y[1]), .A3(
        router_address_x[2]), .ZN(n413) );
  OAI21_X1 U17 ( .B1(n327), .B2(n388), .A(n420), .ZN(n374) );
  OAI21_X1 U18 ( .B1(n326), .B2(n389), .A(n418), .ZN(n373) );
  OAI21_X1 U19 ( .B1(n327), .B2(n390), .A(n417), .ZN(n371) );
  OAI21_X1 U20 ( .B1(n326), .B2(n391), .A(n416), .ZN(n369) );
  NAND2_X1 U21 ( .A1(N60), .A2(n393), .ZN(n411) );
  OAI21_X1 U22 ( .B1(n408), .B2(n326), .A(n432), .ZN(n387) );
  NAND2_X1 U23 ( .A1(flit_out_next[0]), .A2(n327), .ZN(n432) );
  OAI21_X1 U24 ( .B1(n407), .B2(n326), .A(n431), .ZN(n386) );
  NAND2_X1 U25 ( .A1(flit_out_next[1]), .A2(n327), .ZN(n431) );
  OAI21_X1 U26 ( .B1(n406), .B2(n326), .A(n430), .ZN(n385) );
  NAND2_X1 U27 ( .A1(flit_out_next[2]), .A2(Rst), .ZN(n430) );
  OAI21_X1 U28 ( .B1(n405), .B2(n326), .A(n429), .ZN(n384) );
  NAND2_X1 U29 ( .A1(flit_out_next[3]), .A2(n327), .ZN(n429) );
  OAI21_X1 U30 ( .B1(n404), .B2(n326), .A(n428), .ZN(n383) );
  NAND2_X1 U31 ( .A1(flit_out_next[4]), .A2(n326), .ZN(n428) );
  OAI21_X1 U32 ( .B1(n403), .B2(n326), .A(n427), .ZN(n382) );
  NAND2_X1 U33 ( .A1(flit_out_next[5]), .A2(n327), .ZN(n427) );
  OAI21_X1 U34 ( .B1(n398), .B2(n326), .A(n422), .ZN(n377) );
  NAND2_X1 U35 ( .A1(flit_out_next[10]), .A2(n327), .ZN(n422) );
  OAI21_X1 U36 ( .B1(n397), .B2(n326), .A(n421), .ZN(n376) );
  NAND2_X1 U37 ( .A1(flit_out_next[11]), .A2(n327), .ZN(n421) );
  OAI21_X1 U38 ( .B1(n396), .B2(n326), .A(n420), .ZN(n375) );
  OAI21_X1 U39 ( .B1(n395), .B2(n326), .A(n418), .ZN(n372) );
  OAI21_X1 U40 ( .B1(n394), .B2(n326), .A(n417), .ZN(n370) );
  OAI21_X1 U41 ( .B1(n392), .B2(n326), .A(n416), .ZN(n368) );
  OAI21_X1 U42 ( .B1(n402), .B2(n327), .A(n426), .ZN(n381) );
  NAND2_X1 U43 ( .A1(flit_out_next[6]), .A2(n327), .ZN(n426) );
  OAI21_X1 U44 ( .B1(n401), .B2(n327), .A(n425), .ZN(n380) );
  NAND2_X1 U45 ( .A1(flit_out_next[7]), .A2(n327), .ZN(n425) );
  OAI21_X1 U46 ( .B1(n400), .B2(n327), .A(n424), .ZN(n379) );
  NAND2_X1 U47 ( .A1(flit_out_next[8]), .A2(n327), .ZN(n424) );
  OAI21_X1 U48 ( .B1(n399), .B2(n327), .A(n423), .ZN(n378) );
  NAND2_X1 U49 ( .A1(flit_out_next[9]), .A2(n327), .ZN(n423) );
  AND3_X1 U50 ( .A1(state[0]), .A2(n350), .A3(n322), .ZN(n318) );
  AND3_X1 U51 ( .A1(n319), .A2(n393), .A3(N64), .ZN(W_sw_arb_req) );
  AND3_X1 U52 ( .A1(n345), .A2(n314), .A3(sw_arb_port[0]), .ZN(n319) );
  AND3_X1 U53 ( .A1(n319), .A2(n313), .A3(N58), .ZN(N_sw_arb_req) );
  INV_X1 U54 ( .A(n320), .ZN(n321) );
  OR4_X1 U56 ( .A1(router_address_x[1]), .A2(n413), .A3(n414), .A4(n415), .ZN(
        n337) );
  INV_X1 U57 ( .A(flit_data[0]), .ZN(n342) );
  INV_X1 U59 ( .A(flit_data[1]), .ZN(n338) );
  NAND3_X1 U60 ( .A1(n337), .A2(n342), .A3(n338), .ZN(n349) );
  INV_X1 U62 ( .A(n349), .ZN(n328) );
  NAND2_X1 U63 ( .A1(n328), .A2(n318), .ZN(n346) );
  INV_X1 U64 ( .A(n346), .ZN(n367) );
  INV_X1 U65 ( .A(n433), .ZN(n332) );
  NAND2_X1 U66 ( .A1(next_hop[2]), .A2(n332), .ZN(n354) );
  NAND3_X1 U67 ( .A1(n315), .A2(state[0]), .A3(n322), .ZN(n341) );
  INV_X1 U68 ( .A(n341), .ZN(n345) );
  NAND3_X1 U71 ( .A1(n321), .A2(n323), .A3(n324), .ZN(n412) );
  NAND2_X1 U72 ( .A1(next_hop[1]), .A2(n332), .ZN(n355) );
  OAI21_X1 U74 ( .B1(N_usage), .B2(n412), .A(n332), .ZN(n356) );
  NAND3_X1 U76 ( .A1(state[2]), .A2(n350), .A3(n325), .ZN(n329) );
  INV_X1 U77 ( .A(n329), .ZN(n344) );
  NAND3_X1 U78 ( .A1(n419), .A2(n326), .A3(n344), .ZN(n420) );
  AND3_X1 U80 ( .A1(N62), .A2(n419), .A3(n345), .ZN(E_sw_arb_req) );
  NOR4_X1 U81 ( .A1(sw_arb_port[0]), .A2(sw_arb_port[2]), .A3(n411), .A4(n341), 
        .ZN(S_sw_arb_req) );
  AOI21_X1 U82 ( .B1(n410), .B2(n365), .A(n329), .ZN(N77) );
  INV_X1 U83 ( .A(E_vc_arb_gnt), .ZN(n336) );
  NAND2_X1 U84 ( .A1(W_vc_arb_gnt), .A2(n336), .ZN(n335) );
  INV_X1 U85 ( .A(N_vc_arb_gnt), .ZN(n330) );
  OAI21_X1 U86 ( .B1(S_vc_arb_gnt), .B2(n335), .A(n330), .ZN(N55) );
  INV_X1 U87 ( .A(W_vc_arb_gnt), .ZN(n331) );
  INV_X1 U88 ( .A(S_vc_arb_gnt), .ZN(n334) );
  NAND4_X1 U89 ( .A1(n336), .A2(n331), .A3(n330), .A4(n334), .ZN(n333) );
  NAND2_X1 U90 ( .A1(n333), .A2(n332), .ZN(n366) );
  AOI21_X1 U91 ( .B1(n335), .B2(n334), .A(N_vc_arb_gnt), .ZN(N56) );
  NOR3_X1 U92 ( .A1(N_vc_arb_gnt), .A2(S_vc_arb_gnt), .A3(n336), .ZN(N57) );
  INV_X1 U93 ( .A(n337), .ZN(n339) );
  NAND4_X1 U94 ( .A1(n342), .A2(n339), .A3(n318), .A4(n338), .ZN(n340) );
  OAI21_X1 U95 ( .B1(n316), .B2(n341), .A(n340), .ZN(next_state[2]) );
  NAND2_X1 U96 ( .A1(flit_data[1]), .A2(n342), .ZN(n348) );
  INV_X1 U98 ( .A(fifo_empty), .ZN(n343) );
  NAND3_X1 U99 ( .A1(n344), .A2(n348), .A3(n343), .ZN(n347) );
  NAND2_X1 U100 ( .A1(n316), .A2(n345), .ZN(n353) );
  NAND4_X1 U101 ( .A1(n347), .A2(n433), .A3(n346), .A4(n353), .ZN(
        next_state[1]) );
  AOI21_X1 U102 ( .B1(state[0]), .B2(n348), .A(fifo_empty), .ZN(n351) );
  AOI22_X1 U103 ( .A1(n351), .A2(n350), .B1(n318), .B2(n349), .ZN(n352) );
  NAND3_X1 U104 ( .A1(n353), .A2(n366), .A3(n352), .ZN(next_state[0]) );
  NAND2_X1 U105 ( .A1(n358), .A2(n357), .ZN(N58) );
  NOR4_X1 U106 ( .A1(S_buff_count[3]), .A2(S_buff_count[2]), .A3(
        S_buff_count[1]), .A4(S_buff_count[0]), .ZN(n360) );
  NOR4_X1 U107 ( .A1(S_buff_count[7]), .A2(S_buff_count[6]), .A3(
        S_buff_count[5]), .A4(S_buff_count[4]), .ZN(n359) );
  NAND2_X1 U108 ( .A1(n360), .A2(n359), .ZN(N60) );
  NOR4_X1 U109 ( .A1(E_buff_count[3]), .A2(E_buff_count[2]), .A3(
        E_buff_count[1]), .A4(E_buff_count[0]), .ZN(n362) );
  NOR4_X1 U110 ( .A1(E_buff_count[7]), .A2(E_buff_count[6]), .A3(
        E_buff_count[5]), .A4(E_buff_count[4]), .ZN(n361) );
  NAND2_X1 U111 ( .A1(n362), .A2(n361), .ZN(N62) );
  NOR4_X1 U112 ( .A1(W_buff_count[3]), .A2(W_buff_count[2]), .A3(
        W_buff_count[1]), .A4(W_buff_count[0]), .ZN(n364) );
  NOR4_X1 U113 ( .A1(W_buff_count[7]), .A2(W_buff_count[6]), .A3(
        W_buff_count[5]), .A4(W_buff_count[4]), .ZN(n363) );
  NAND2_X1 U114 ( .A1(n364), .A2(n363), .ZN(N64) );
endmodule


module routing_table_8 ( router_address_x, router_address_y, flit_desn_x, 
        flit_desn_y, next_hop, read_request );
  input [2:0] router_address_x;
  input [2:0] router_address_y;
  input [2:0] flit_desn_x;
  input [2:0] flit_desn_y;
  output [2:0] next_hop;
  input read_request;
  wire   n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66;

  OAI221_X2 U3 ( .B1(n66), .B2(n65), .C1(read_request), .C2(n64), .A(n63), 
        .ZN(next_hop[0]) );
  INV_X2 U4 ( .A(next_hop[0]), .ZN(n64) );
  OAI221_X2 U6 ( .B1(n62), .B2(n61), .C1(read_request), .C2(n60), .A(n63), 
        .ZN(next_hop[1]) );
  INV_X2 U7 ( .A(next_hop[1]), .ZN(n60) );
  INV_X2 U14 ( .A(n51), .ZN(next_hop[2]) );
  AOI22_X2 U15 ( .A1(n47), .A2(next_hop[2]), .B1(n59), .B2(read_request), .ZN(
        n51) );
  NAND3_X1 U27 ( .A1(n43), .A2(n62), .A3(read_request), .ZN(n63) );
  NAND3_X1 U28 ( .A1(n55), .A2(n48), .A3(flit_desn_x[1]), .ZN(n58) );
  NAND3_X1 U29 ( .A1(n54), .A2(n53), .A3(n52), .ZN(n62) );
  NAND4_X1 U30 ( .A1(n54), .A2(flit_desn_y[0]), .A3(n53), .A4(n42), .ZN(n49)
         );
  NAND3_X1 U31 ( .A1(n53), .A2(n41), .A3(flit_desn_y[1]), .ZN(n50) );
  INV_X1 U5 ( .A(read_request), .ZN(n47) );
  INV_X1 U8 ( .A(n59), .ZN(n43) );
  NOR2_X1 U9 ( .A1(router_address_x[0]), .A2(n45), .ZN(n56) );
  INV_X1 U10 ( .A(n55), .ZN(n45) );
  NAND2_X1 U11 ( .A1(router_address_x[2]), .A2(n46), .ZN(n55) );
  NAND2_X1 U12 ( .A1(read_request), .A2(n66), .ZN(n61) );
  OR2_X1 U13 ( .A1(n62), .A2(n47), .ZN(n65) );
  OAI211_X1 U16 ( .C1(router_address_x[2]), .C2(n46), .A(n58), .B(n57), .ZN(
        n66) );
  OAI211_X1 U17 ( .C1(flit_desn_x[1]), .C2(n48), .A(flit_desn_x[0]), .B(n56), 
        .ZN(n57) );
  INV_X1 U18 ( .A(router_address_x[1]), .ZN(n48) );
  OAI211_X1 U19 ( .C1(router_address_y[2]), .C2(n44), .A(n50), .B(n49), .ZN(
        n59) );
  INV_X1 U20 ( .A(flit_desn_y[2]), .ZN(n44) );
  XNOR2_X1 U21 ( .A(flit_desn_y[2]), .B(router_address_y[2]), .ZN(n53) );
  XOR2_X1 U22 ( .A(flit_desn_y[0]), .B(n42), .Z(n52) );
  XOR2_X1 U23 ( .A(flit_desn_y[1]), .B(n41), .Z(n54) );
  INV_X1 U24 ( .A(flit_desn_x[2]), .ZN(n46) );
  INV_X1 U25 ( .A(router_address_y[1]), .ZN(n41) );
  INV_X1 U26 ( .A(router_address_y[0]), .ZN(n42) );
endmodule


module node_controller_8 ( Clk, Rst, N_usage, S_usage, E_usage, W_usage, 
        rst_N_usage, rst_S_usage, rst_E_usage, rst_W_usage, flit_data, 
        fifo_full, fifo_empty, router_address_x, router_address_y, rd_en, 
        N_vc_arb_req, S_vc_arb_req, E_vc_arb_req, W_vc_arb_req, N_vc_arb_gnt, 
        S_vc_arb_gnt, E_vc_arb_gnt, W_vc_arb_gnt, dec_N_buff_count, 
        dec_S_buff_count, dec_E_buff_count, dec_W_buff_count, N_buff_count, 
        S_buff_count, E_buff_count, W_buff_count, N_sw_arb_req, S_sw_arb_req, 
        E_sw_arb_req, W_sw_arb_req, N_sw_arb_gnt, S_sw_arb_gnt, E_sw_arb_gnt, 
        W_sw_arb_gnt, flit_out );
  input [11:0] flit_data;
  input [2:0] router_address_x;
  input [2:0] router_address_y;
  input [7:0] N_buff_count;
  input [7:0] S_buff_count;
  input [7:0] E_buff_count;
  input [7:0] W_buff_count;
  output [11:0] flit_out;
  input Clk, Rst, N_usage, S_usage, E_usage, W_usage, fifo_full, fifo_empty,
         N_vc_arb_gnt, S_vc_arb_gnt, E_vc_arb_gnt, W_vc_arb_gnt, N_sw_arb_gnt,
         S_sw_arb_gnt, E_sw_arb_gnt, W_sw_arb_gnt;
  output rst_N_usage, rst_S_usage, rst_E_usage, rst_W_usage, rd_en,
         N_vc_arb_req, S_vc_arb_req, E_vc_arb_req, W_vc_arb_req,
         dec_N_buff_count, dec_S_buff_count, dec_E_buff_count,
         dec_W_buff_count, N_sw_arb_req, S_sw_arb_req, E_sw_arb_req,
         W_sw_arb_req;
  wire   N55, N56, N57, N58, N60, N62, N64, N77, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n436;
  wire   [2:0] next_hop_out;
  wire   [2:0] state;
  wire   [2:0] next_hop;
  wire   [2:0] sw_arb_port;
  wire   [2:0] next_state;
  wire   [2:0] sw_arb_port_next;
  wire   [11:0] flit_out_next;

  DFFR_X1 \state_reg[0]  ( .D(next_state[0]), .CK(Clk), .RN(n330), .Q(state[0]), .QN(n328) );
  DFFR_X1 \state_reg[1]  ( .D(next_state[1]), .CK(Clk), .RN(n331), .Q(state[1]), .QN(n323) );
  DFFR_X1 \state_reg[2]  ( .D(next_state[2]), .CK(Clk), .RN(n331), .Q(state[2]), .QN(n318) );
  DFFR_X1 \next_hop_reg[2]  ( .D(next_hop_out[2]), .CK(Clk), .RN(n330), .Q(
        next_hop[2]), .QN(n321) );
  DFFR_X1 \next_hop_reg[1]  ( .D(next_hop_out[1]), .CK(Clk), .RN(n330), .Q(
        next_hop[1]), .QN(n320) );
  DFFR_X1 \next_hop_reg[0]  ( .D(next_hop_out[0]), .CK(Clk), .RN(n330), .Q(
        next_hop[0]), .QN(n315) );
  DLL_X1 \sw_arb_port_next_reg[2]  ( .D(N57), .GN(n369), .Q(
        sw_arb_port_next[2]) );
  DFFR_X1 \sw_arb_port_reg[2]  ( .D(sw_arb_port_next[2]), .CK(Clk), .RN(n330), 
        .Q(sw_arb_port[2]), .QN(n314) );
  DLL_X1 \sw_arb_port_next_reg[1]  ( .D(N56), .GN(n369), .Q(
        sw_arb_port_next[1]) );
  DFFR_X1 \sw_arb_port_reg[1]  ( .D(sw_arb_port_next[1]), .CK(Clk), .RN(n330), 
        .Q(n396), .QN(n313) );
  DLL_X1 \sw_arb_port_next_reg[0]  ( .D(N55), .GN(n369), .Q(
        sw_arb_port_next[0]) );
  DFFR_X1 \sw_arb_port_reg[0]  ( .D(sw_arb_port_next[0]), .CK(Clk), .RN(n330), 
        .Q(sw_arb_port[0]), .QN(n312) );
  DFF_X1 dec_W_buff_count_reg ( .D(n371), .CK(Clk), .Q(dec_W_buff_count), .QN(
        n395) );
  DFF_X1 W_usage_out_reg ( .D(n372), .CK(Clk), .Q(rst_W_usage), .QN(n394) );
  DFF_X1 dec_N_buff_count_reg ( .D(n373), .CK(Clk), .Q(dec_N_buff_count), .QN(
        n397) );
  DFF_X1 N_usage_out_reg ( .D(n374), .CK(Clk), .Q(rst_N_usage), .QN(n393) );
  DFF_X1 dec_S_buff_count_reg ( .D(n375), .CK(Clk), .Q(dec_S_buff_count), .QN(
        n398) );
  DFF_X1 S_usage_out_reg ( .D(n376), .CK(Clk), .Q(rst_S_usage), .QN(n392) );
  DFF_X1 E_usage_out_reg ( .D(n377), .CK(Clk), .Q(rst_E_usage), .QN(n391) );
  DFF_X1 dec_E_buff_count_reg ( .D(n378), .CK(Clk), .Q(dec_E_buff_count), .QN(
        n399) );
  DLH_X1 \flit_out_next_reg[11]  ( .G(N77), .D(flit_data[11]), .Q(
        flit_out_next[11]) );
  DFF_X1 \flit_out_reg[11]  ( .D(n379), .CK(Clk), .Q(flit_out[11]), .QN(n400)
         );
  DLH_X1 \flit_out_next_reg[10]  ( .G(N77), .D(flit_data[10]), .Q(
        flit_out_next[10]) );
  DFF_X1 \flit_out_reg[10]  ( .D(n380), .CK(Clk), .Q(flit_out[10]), .QN(n401)
         );
  DLH_X1 \flit_out_next_reg[9]  ( .G(N77), .D(flit_data[9]), .Q(
        flit_out_next[9]) );
  DFF_X1 \flit_out_reg[9]  ( .D(n381), .CK(Clk), .Q(flit_out[9]), .QN(n402) );
  DLH_X1 \flit_out_next_reg[8]  ( .G(N77), .D(flit_data[8]), .Q(
        flit_out_next[8]) );
  DFF_X1 \flit_out_reg[8]  ( .D(n382), .CK(Clk), .Q(flit_out[8]), .QN(n403) );
  DLH_X1 \flit_out_next_reg[7]  ( .G(N77), .D(flit_data[7]), .Q(
        flit_out_next[7]) );
  DFF_X1 \flit_out_reg[7]  ( .D(n383), .CK(Clk), .Q(flit_out[7]), .QN(n404) );
  DLH_X1 \flit_out_next_reg[6]  ( .G(N77), .D(flit_data[6]), .Q(
        flit_out_next[6]) );
  DFF_X1 \flit_out_reg[6]  ( .D(n384), .CK(Clk), .Q(flit_out[6]), .QN(n405) );
  DLH_X1 \flit_out_next_reg[5]  ( .G(N77), .D(flit_data[5]), .Q(
        flit_out_next[5]) );
  DFF_X1 \flit_out_reg[5]  ( .D(n385), .CK(Clk), .Q(flit_out[5]), .QN(n406) );
  DLH_X1 \flit_out_next_reg[4]  ( .G(N77), .D(flit_data[4]), .Q(
        flit_out_next[4]) );
  DFF_X1 \flit_out_reg[4]  ( .D(n386), .CK(Clk), .Q(flit_out[4]), .QN(n407) );
  DLH_X1 \flit_out_next_reg[3]  ( .G(N77), .D(flit_data[3]), .Q(
        flit_out_next[3]) );
  DFF_X1 \flit_out_reg[3]  ( .D(n387), .CK(Clk), .Q(flit_out[3]), .QN(n408) );
  DLH_X1 \flit_out_next_reg[2]  ( .G(N77), .D(flit_data[2]), .Q(
        flit_out_next[2]) );
  DFF_X1 \flit_out_reg[2]  ( .D(n388), .CK(Clk), .Q(flit_out[2]), .QN(n409) );
  DLH_X1 \flit_out_next_reg[1]  ( .G(N77), .D(flit_data[1]), .Q(
        flit_out_next[1]) );
  DFF_X1 \flit_out_reg[1]  ( .D(n389), .CK(Clk), .Q(flit_out[1]), .QN(n410) );
  DLH_X1 \flit_out_next_reg[0]  ( .G(N77), .D(flit_data[0]), .Q(
        flit_out_next[0]) );
  DFF_X1 \flit_out_reg[0]  ( .D(n390), .CK(Clk), .Q(flit_out[0]), .QN(n411) );
  NAND3_X1 U55 ( .A1(n325), .A2(n312), .A3(n396), .ZN(n421) );
  NAND3_X1 U58 ( .A1(n325), .A2(n313), .A3(sw_arb_port[0]), .ZN(n420) );
  NAND3_X1 U61 ( .A1(n396), .A2(n325), .A3(sw_arb_port[0]), .ZN(n419) );
  XOR2_X1 U69 ( .A(router_address_x[0]), .B(flit_data[5]), .Z(n417) );
  XOR2_X1 U70 ( .A(router_address_y[0]), .B(flit_data[2]), .Z(n418) );
  NOR3_X2 U73 ( .A1(n359), .A2(W_usage), .A3(n415), .ZN(W_vc_arb_req) );
  NOR4_X4 U75 ( .A1(n358), .A2(S_usage), .A3(next_hop[2]), .A4(next_hop[0]), 
        .ZN(S_vc_arb_req) );
  NOR3_X2 U79 ( .A1(n415), .A2(N_usage), .A3(n436), .ZN(N_vc_arb_req) );
  AND3_X2 U80 ( .A1(n327), .A2(n313), .A3(N58), .ZN(N_sw_arb_req) );
  NOR4_X4 U97 ( .A1(n357), .A2(E_usage), .A3(next_hop[1]), .A4(next_hop[0]), 
        .ZN(E_vc_arb_req) );
  routing_table_8 router0 ( .router_address_x(router_address_x), 
        .router_address_y(router_address_y), .flit_desn_x({1'b0, 1'b0, 
        flit_data[5]}), .flit_desn_y({1'b0, 1'b0, flit_data[5]}), .next_hop(
        next_hop_out), .read_request(n370) );
  INV_X1 U3 ( .A(n315), .ZN(n316) );
  INV_X1 U4 ( .A(state[1]), .ZN(n317) );
  INV_X1 U5 ( .A(n323), .ZN(n319) );
  CLKBUF_X1 U6 ( .A(n436), .Z(n322) );
  NAND3_X1 U7 ( .A1(n319), .A2(n318), .A3(n328), .ZN(n436) );
  CLKBUF_X1 U8 ( .A(Rst), .Z(n329) );
  CLKBUF_X1 U9 ( .A(Rst), .Z(n330) );
  CLKBUF_X1 U10 ( .A(Rst), .Z(n331) );
  NOR4_X1 U11 ( .A1(E_sw_arb_gnt), .A2(W_sw_arb_gnt), .A3(N_sw_arb_gnt), .A4(
        S_sw_arb_gnt), .ZN(n324) );
  NOR2_X1 U12 ( .A1(n314), .A2(n412), .ZN(n422) );
  AND3_X1 U13 ( .A1(n314), .A2(n331), .A3(n348), .ZN(n325) );
  NAND2_X1 U14 ( .A1(n312), .A2(n313), .ZN(n412) );
  INV_X1 U15 ( .A(n436), .ZN(n336) );
  INV_X1 U16 ( .A(n422), .ZN(n368) );
  NAND2_X1 U17 ( .A1(n412), .A2(n314), .ZN(n413) );
  NAND2_X1 U18 ( .A1(N60), .A2(n396), .ZN(n414) );
  OR3_X1 U19 ( .A1(router_address_y[2]), .A2(router_address_y[1]), .A3(
        router_address_x[2]), .ZN(n416) );
  AND3_X1 U20 ( .A1(state[0]), .A2(n317), .A3(n318), .ZN(n326) );
  OAI21_X1 U21 ( .B1(n330), .B2(n391), .A(n423), .ZN(n377) );
  OAI21_X1 U22 ( .B1(n330), .B2(n392), .A(n421), .ZN(n376) );
  OAI21_X1 U23 ( .B1(n330), .B2(n393), .A(n420), .ZN(n374) );
  OAI21_X1 U24 ( .B1(n330), .B2(n394), .A(n419), .ZN(n372) );
  OAI21_X1 U25 ( .B1(n411), .B2(n329), .A(n435), .ZN(n390) );
  NAND2_X1 U26 ( .A1(flit_out_next[0]), .A2(n330), .ZN(n435) );
  OAI21_X1 U27 ( .B1(n410), .B2(n329), .A(n434), .ZN(n389) );
  NAND2_X1 U28 ( .A1(flit_out_next[1]), .A2(n329), .ZN(n434) );
  OAI21_X1 U29 ( .B1(n409), .B2(n329), .A(n433), .ZN(n388) );
  NAND2_X1 U30 ( .A1(flit_out_next[2]), .A2(n330), .ZN(n433) );
  OAI21_X1 U31 ( .B1(n408), .B2(n331), .A(n432), .ZN(n387) );
  NAND2_X1 U32 ( .A1(flit_out_next[3]), .A2(n330), .ZN(n432) );
  OAI21_X1 U33 ( .B1(n407), .B2(n329), .A(n431), .ZN(n386) );
  NAND2_X1 U34 ( .A1(flit_out_next[4]), .A2(n330), .ZN(n431) );
  OAI21_X1 U35 ( .B1(n406), .B2(Rst), .A(n430), .ZN(n385) );
  NAND2_X1 U36 ( .A1(flit_out_next[5]), .A2(n329), .ZN(n430) );
  OAI21_X1 U37 ( .B1(n401), .B2(Rst), .A(n425), .ZN(n380) );
  NAND2_X1 U38 ( .A1(flit_out_next[10]), .A2(n329), .ZN(n425) );
  OAI21_X1 U39 ( .B1(n400), .B2(n331), .A(n424), .ZN(n379) );
  NAND2_X1 U40 ( .A1(flit_out_next[11]), .A2(n329), .ZN(n424) );
  OAI21_X1 U41 ( .B1(n399), .B2(n330), .A(n423), .ZN(n378) );
  OAI21_X1 U42 ( .B1(n398), .B2(n329), .A(n421), .ZN(n375) );
  OAI21_X1 U43 ( .B1(n397), .B2(n331), .A(n420), .ZN(n373) );
  OAI21_X1 U44 ( .B1(n395), .B2(n330), .A(n419), .ZN(n371) );
  OAI21_X1 U45 ( .B1(n405), .B2(n329), .A(n429), .ZN(n384) );
  NAND2_X1 U46 ( .A1(flit_out_next[6]), .A2(n329), .ZN(n429) );
  OAI21_X1 U47 ( .B1(n404), .B2(n329), .A(n428), .ZN(n383) );
  NAND2_X1 U48 ( .A1(flit_out_next[7]), .A2(n329), .ZN(n428) );
  OAI21_X1 U49 ( .B1(n403), .B2(n329), .A(n427), .ZN(n382) );
  NAND2_X1 U50 ( .A1(flit_out_next[8]), .A2(n329), .ZN(n427) );
  OAI21_X1 U51 ( .B1(n402), .B2(n329), .A(n426), .ZN(n381) );
  NAND2_X1 U52 ( .A1(flit_out_next[9]), .A2(n329), .ZN(n426) );
  AND3_X1 U53 ( .A1(n327), .A2(n396), .A3(N64), .ZN(W_sw_arb_req) );
  AND3_X1 U54 ( .A1(n349), .A2(n314), .A3(sw_arb_port[0]), .ZN(n327) );
  NAND3_X2 U56 ( .A1(n316), .A2(n320), .A3(n321), .ZN(n415) );
  OR4_X1 U57 ( .A1(router_address_x[1]), .A2(n416), .A3(n417), .A4(n418), .ZN(
        n341) );
  INV_X1 U59 ( .A(flit_data[0]), .ZN(n346) );
  INV_X1 U60 ( .A(flit_data[1]), .ZN(n342) );
  NAND3_X1 U62 ( .A1(n341), .A2(n346), .A3(n342), .ZN(n353) );
  INV_X1 U63 ( .A(n353), .ZN(n332) );
  NAND2_X1 U64 ( .A1(n332), .A2(n326), .ZN(n350) );
  INV_X1 U65 ( .A(n350), .ZN(n370) );
  NAND2_X1 U66 ( .A1(next_hop[2]), .A2(n336), .ZN(n357) );
  NAND3_X1 U67 ( .A1(state[1]), .A2(state[0]), .A3(n318), .ZN(n345) );
  INV_X1 U68 ( .A(n345), .ZN(n349) );
  NAND2_X1 U71 ( .A1(next_hop[1]), .A2(n336), .ZN(n358) );
  OAI21_X1 U72 ( .B1(N_usage), .B2(n415), .A(n336), .ZN(n359) );
  NAND3_X1 U74 ( .A1(state[2]), .A2(n317), .A3(n328), .ZN(n333) );
  INV_X1 U76 ( .A(n333), .ZN(n348) );
  NAND3_X1 U77 ( .A1(n422), .A2(n331), .A3(n348), .ZN(n423) );
  AND3_X1 U78 ( .A1(N62), .A2(n422), .A3(n349), .ZN(E_sw_arb_req) );
  NOR4_X1 U81 ( .A1(sw_arb_port[0]), .A2(sw_arb_port[2]), .A3(n414), .A4(n345), 
        .ZN(S_sw_arb_req) );
  NOR4_X1 U82 ( .A1(state[2]), .A2(state[0]), .A3(fifo_empty), .A4(state[1]), 
        .ZN(rd_en) );
  AOI21_X1 U83 ( .B1(n413), .B2(n368), .A(n333), .ZN(N77) );
  INV_X1 U84 ( .A(E_vc_arb_gnt), .ZN(n340) );
  NAND2_X1 U85 ( .A1(W_vc_arb_gnt), .A2(n340), .ZN(n339) );
  INV_X1 U86 ( .A(N_vc_arb_gnt), .ZN(n334) );
  OAI21_X1 U87 ( .B1(S_vc_arb_gnt), .B2(n339), .A(n334), .ZN(N55) );
  INV_X1 U88 ( .A(W_vc_arb_gnt), .ZN(n335) );
  INV_X1 U89 ( .A(S_vc_arb_gnt), .ZN(n338) );
  NAND4_X1 U90 ( .A1(n340), .A2(n335), .A3(n334), .A4(n338), .ZN(n337) );
  NAND2_X1 U91 ( .A1(n337), .A2(n336), .ZN(n369) );
  AOI21_X1 U92 ( .B1(n339), .B2(n338), .A(N_vc_arb_gnt), .ZN(N56) );
  NOR3_X1 U93 ( .A1(N_vc_arb_gnt), .A2(S_vc_arb_gnt), .A3(n340), .ZN(N57) );
  INV_X1 U94 ( .A(n341), .ZN(n343) );
  NAND4_X1 U95 ( .A1(n346), .A2(n343), .A3(n326), .A4(n342), .ZN(n344) );
  OAI21_X1 U96 ( .B1(n324), .B2(n345), .A(n344), .ZN(next_state[2]) );
  NAND2_X1 U98 ( .A1(flit_data[1]), .A2(n346), .ZN(n352) );
  INV_X1 U99 ( .A(fifo_empty), .ZN(n347) );
  NAND3_X1 U100 ( .A1(n348), .A2(n352), .A3(n347), .ZN(n351) );
  NAND2_X1 U101 ( .A1(n324), .A2(n349), .ZN(n356) );
  NAND4_X1 U102 ( .A1(n351), .A2(n322), .A3(n350), .A4(n356), .ZN(
        next_state[1]) );
  AOI21_X1 U103 ( .B1(state[0]), .B2(n352), .A(fifo_empty), .ZN(n354) );
  AOI22_X1 U104 ( .A1(n354), .A2(n317), .B1(n326), .B2(n353), .ZN(n355) );
  NAND3_X1 U105 ( .A1(n356), .A2(n369), .A3(n355), .ZN(next_state[0]) );
  NOR4_X1 U106 ( .A1(N_buff_count[3]), .A2(N_buff_count[2]), .A3(
        N_buff_count[1]), .A4(N_buff_count[0]), .ZN(n361) );
  NOR4_X1 U107 ( .A1(N_buff_count[7]), .A2(N_buff_count[6]), .A3(
        N_buff_count[5]), .A4(N_buff_count[4]), .ZN(n360) );
  NAND2_X1 U108 ( .A1(n361), .A2(n360), .ZN(N58) );
  NOR4_X1 U109 ( .A1(S_buff_count[3]), .A2(S_buff_count[2]), .A3(
        S_buff_count[1]), .A4(S_buff_count[0]), .ZN(n363) );
  NOR4_X1 U110 ( .A1(S_buff_count[7]), .A2(S_buff_count[6]), .A3(
        S_buff_count[5]), .A4(S_buff_count[4]), .ZN(n362) );
  NAND2_X1 U111 ( .A1(n363), .A2(n362), .ZN(N60) );
  NOR4_X1 U112 ( .A1(E_buff_count[3]), .A2(E_buff_count[2]), .A3(
        E_buff_count[1]), .A4(E_buff_count[0]), .ZN(n365) );
  NOR4_X1 U113 ( .A1(E_buff_count[7]), .A2(E_buff_count[6]), .A3(
        E_buff_count[5]), .A4(E_buff_count[4]), .ZN(n364) );
  NAND2_X1 U114 ( .A1(n365), .A2(n364), .ZN(N62) );
  NOR4_X1 U115 ( .A1(W_buff_count[3]), .A2(W_buff_count[2]), .A3(
        W_buff_count[1]), .A4(W_buff_count[0]), .ZN(n367) );
  NOR4_X1 U116 ( .A1(W_buff_count[7]), .A2(W_buff_count[6]), .A3(
        W_buff_count[5]), .A4(W_buff_count[4]), .ZN(n366) );
  NAND2_X1 U117 ( .A1(n367), .A2(n366), .ZN(N64) );
endmodule


module routing_table_7 ( router_address_x, router_address_y, flit_desn_x, 
        flit_desn_y, next_hop, read_request );
  input [2:0] router_address_x;
  input [2:0] router_address_y;
  input [2:0] flit_desn_x;
  input [2:0] flit_desn_y;
  output [2:0] next_hop;
  input read_request;
  wire   n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66;

  OAI221_X2 U3 ( .B1(n66), .B2(n65), .C1(read_request), .C2(n64), .A(n63), 
        .ZN(next_hop[0]) );
  INV_X2 U4 ( .A(next_hop[0]), .ZN(n64) );
  OAI221_X2 U6 ( .B1(n62), .B2(n61), .C1(read_request), .C2(n60), .A(n63), 
        .ZN(next_hop[1]) );
  INV_X2 U7 ( .A(next_hop[1]), .ZN(n60) );
  INV_X2 U14 ( .A(n51), .ZN(next_hop[2]) );
  AOI22_X2 U15 ( .A1(n47), .A2(next_hop[2]), .B1(n59), .B2(read_request), .ZN(
        n51) );
  NAND3_X1 U27 ( .A1(n43), .A2(n62), .A3(read_request), .ZN(n63) );
  NAND3_X1 U28 ( .A1(n55), .A2(n48), .A3(flit_desn_x[1]), .ZN(n58) );
  NAND3_X1 U29 ( .A1(n54), .A2(n53), .A3(n52), .ZN(n62) );
  NAND4_X1 U30 ( .A1(n54), .A2(flit_desn_y[0]), .A3(n53), .A4(n42), .ZN(n49)
         );
  NAND3_X1 U31 ( .A1(n53), .A2(n41), .A3(flit_desn_y[1]), .ZN(n50) );
  INV_X1 U5 ( .A(read_request), .ZN(n47) );
  INV_X1 U8 ( .A(n59), .ZN(n43) );
  NOR2_X1 U9 ( .A1(router_address_x[0]), .A2(n45), .ZN(n56) );
  INV_X1 U10 ( .A(n55), .ZN(n45) );
  NAND2_X1 U11 ( .A1(router_address_x[2]), .A2(n46), .ZN(n55) );
  NAND2_X1 U12 ( .A1(read_request), .A2(n66), .ZN(n61) );
  OR2_X1 U13 ( .A1(n62), .A2(n47), .ZN(n65) );
  OAI211_X1 U16 ( .C1(router_address_x[2]), .C2(n46), .A(n58), .B(n57), .ZN(
        n66) );
  OAI211_X1 U17 ( .C1(flit_desn_x[1]), .C2(n48), .A(flit_desn_x[0]), .B(n56), 
        .ZN(n57) );
  INV_X1 U18 ( .A(router_address_x[1]), .ZN(n48) );
  OAI211_X1 U19 ( .C1(router_address_y[2]), .C2(n44), .A(n50), .B(n49), .ZN(
        n59) );
  INV_X1 U20 ( .A(flit_desn_y[2]), .ZN(n44) );
  XNOR2_X1 U21 ( .A(flit_desn_y[2]), .B(router_address_y[2]), .ZN(n53) );
  XOR2_X1 U22 ( .A(flit_desn_y[0]), .B(n42), .Z(n52) );
  XOR2_X1 U23 ( .A(flit_desn_y[1]), .B(n41), .Z(n54) );
  INV_X1 U24 ( .A(flit_desn_x[2]), .ZN(n46) );
  INV_X1 U25 ( .A(router_address_y[1]), .ZN(n41) );
  INV_X1 U26 ( .A(router_address_y[0]), .ZN(n42) );
endmodule


module node_controller_7 ( Clk, Rst, N_usage, S_usage, E_usage, W_usage, 
        rst_N_usage, rst_S_usage, rst_E_usage, rst_W_usage, flit_data, 
        fifo_full, fifo_empty, router_address_x, router_address_y, rd_en, 
        N_vc_arb_req, S_vc_arb_req, E_vc_arb_req, W_vc_arb_req, N_vc_arb_gnt, 
        S_vc_arb_gnt, E_vc_arb_gnt, W_vc_arb_gnt, dec_N_buff_count, 
        dec_S_buff_count, dec_E_buff_count, dec_W_buff_count, N_buff_count, 
        S_buff_count, E_buff_count, W_buff_count, N_sw_arb_req, S_sw_arb_req, 
        E_sw_arb_req, W_sw_arb_req, N_sw_arb_gnt, S_sw_arb_gnt, E_sw_arb_gnt, 
        W_sw_arb_gnt, flit_out );
  input [11:0] flit_data;
  input [2:0] router_address_x;
  input [2:0] router_address_y;
  input [7:0] N_buff_count;
  input [7:0] S_buff_count;
  input [7:0] E_buff_count;
  input [7:0] W_buff_count;
  output [11:0] flit_out;
  input Clk, Rst, N_usage, S_usage, E_usage, W_usage, fifo_full, fifo_empty,
         N_vc_arb_gnt, S_vc_arb_gnt, E_vc_arb_gnt, W_vc_arb_gnt, N_sw_arb_gnt,
         S_sw_arb_gnt, E_sw_arb_gnt, W_sw_arb_gnt;
  output rst_N_usage, rst_S_usage, rst_E_usage, rst_W_usage, rd_en,
         N_vc_arb_req, S_vc_arb_req, E_vc_arb_req, W_vc_arb_req,
         dec_N_buff_count, dec_S_buff_count, dec_E_buff_count,
         dec_W_buff_count, N_sw_arb_req, S_sw_arb_req, E_sw_arb_req,
         W_sw_arb_req;
  wire   N55, N56, N57, N58, N60, N62, N64, N77, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434;
  wire   [2:0] next_hop_out;
  wire   [2:0] state;
  wire   [2:0] next_hop;
  wire   [2:0] sw_arb_port;
  wire   [2:0] next_state;
  wire   [2:0] sw_arb_port_next;
  wire   [11:0] flit_out_next;

  DFFR_X1 \state_reg[0]  ( .D(next_state[0]), .CK(Clk), .RN(n328), .Q(state[0]), .QN(n326) );
  DFFR_X1 \state_reg[1]  ( .D(next_state[1]), .CK(Clk), .RN(n328), .Q(state[1]), .QN(n315) );
  DFFR_X1 \state_reg[2]  ( .D(next_state[2]), .CK(Clk), .RN(n328), .Q(state[2]), .QN(n323) );
  DFFR_X1 \next_hop_reg[2]  ( .D(next_hop_out[2]), .CK(Clk), .RN(n327), .Q(
        next_hop[2]), .QN(n325) );
  DFFR_X1 \next_hop_reg[1]  ( .D(next_hop_out[1]), .CK(Clk), .RN(n328), .Q(
        next_hop[1]), .QN(n324) );
  DLL_X1 \sw_arb_port_next_reg[2]  ( .D(N57), .GN(n367), .Q(
        sw_arb_port_next[2]) );
  DFFR_X1 \sw_arb_port_reg[2]  ( .D(sw_arb_port_next[2]), .CK(Clk), .RN(n328), 
        .Q(sw_arb_port[2]), .QN(n314) );
  DLL_X1 \sw_arb_port_next_reg[1]  ( .D(N56), .GN(n367), .Q(
        sw_arb_port_next[1]) );
  DFFR_X1 \sw_arb_port_reg[1]  ( .D(sw_arb_port_next[1]), .CK(Clk), .RN(n328), 
        .Q(n394), .QN(n313) );
  DLL_X1 \sw_arb_port_next_reg[0]  ( .D(N55), .GN(n367), .Q(
        sw_arb_port_next[0]) );
  DFFR_X1 \sw_arb_port_reg[0]  ( .D(sw_arb_port_next[0]), .CK(Clk), .RN(n327), 
        .Q(sw_arb_port[0]), .QN(n312) );
  DFF_X1 dec_W_buff_count_reg ( .D(n369), .CK(Clk), .Q(dec_W_buff_count), .QN(
        n393) );
  DFF_X1 W_usage_out_reg ( .D(n370), .CK(Clk), .Q(rst_W_usage), .QN(n392) );
  DFF_X1 dec_N_buff_count_reg ( .D(n371), .CK(Clk), .Q(dec_N_buff_count), .QN(
        n395) );
  DFF_X1 N_usage_out_reg ( .D(n372), .CK(Clk), .Q(rst_N_usage), .QN(n391) );
  DFF_X1 dec_S_buff_count_reg ( .D(n373), .CK(Clk), .Q(dec_S_buff_count), .QN(
        n396) );
  DFF_X1 S_usage_out_reg ( .D(n374), .CK(Clk), .Q(rst_S_usage), .QN(n390) );
  DFF_X1 E_usage_out_reg ( .D(n375), .CK(Clk), .Q(rst_E_usage), .QN(n389) );
  DFF_X1 dec_E_buff_count_reg ( .D(n376), .CK(Clk), .Q(dec_E_buff_count), .QN(
        n397) );
  DLH_X1 \flit_out_next_reg[11]  ( .G(N77), .D(flit_data[11]), .Q(
        flit_out_next[11]) );
  DFF_X1 \flit_out_reg[11]  ( .D(n377), .CK(Clk), .Q(flit_out[11]), .QN(n398)
         );
  DLH_X1 \flit_out_next_reg[10]  ( .G(N77), .D(flit_data[10]), .Q(
        flit_out_next[10]) );
  DFF_X1 \flit_out_reg[10]  ( .D(n378), .CK(Clk), .Q(flit_out[10]), .QN(n399)
         );
  DLH_X1 \flit_out_next_reg[9]  ( .G(N77), .D(flit_data[9]), .Q(
        flit_out_next[9]) );
  DFF_X1 \flit_out_reg[9]  ( .D(n379), .CK(Clk), .Q(flit_out[9]), .QN(n400) );
  DLH_X1 \flit_out_next_reg[8]  ( .G(N77), .D(flit_data[8]), .Q(
        flit_out_next[8]) );
  DFF_X1 \flit_out_reg[8]  ( .D(n380), .CK(Clk), .Q(flit_out[8]), .QN(n401) );
  DLH_X1 \flit_out_next_reg[7]  ( .G(N77), .D(flit_data[7]), .Q(
        flit_out_next[7]) );
  DFF_X1 \flit_out_reg[7]  ( .D(n381), .CK(Clk), .Q(flit_out[7]), .QN(n402) );
  DLH_X1 \flit_out_next_reg[6]  ( .G(N77), .D(flit_data[6]), .Q(
        flit_out_next[6]) );
  DFF_X1 \flit_out_reg[6]  ( .D(n382), .CK(Clk), .Q(flit_out[6]), .QN(n403) );
  DLH_X1 \flit_out_next_reg[5]  ( .G(N77), .D(flit_data[5]), .Q(
        flit_out_next[5]) );
  DFF_X1 \flit_out_reg[5]  ( .D(n383), .CK(Clk), .Q(flit_out[5]), .QN(n404) );
  DLH_X1 \flit_out_next_reg[4]  ( .G(N77), .D(flit_data[4]), .Q(
        flit_out_next[4]) );
  DFF_X1 \flit_out_reg[4]  ( .D(n384), .CK(Clk), .Q(flit_out[4]), .QN(n405) );
  DLH_X1 \flit_out_next_reg[3]  ( .G(N77), .D(flit_data[3]), .Q(
        flit_out_next[3]) );
  DFF_X1 \flit_out_reg[3]  ( .D(n385), .CK(Clk), .Q(flit_out[3]), .QN(n406) );
  DLH_X1 \flit_out_next_reg[2]  ( .G(N77), .D(flit_data[2]), .Q(
        flit_out_next[2]) );
  DFF_X1 \flit_out_reg[2]  ( .D(n386), .CK(Clk), .Q(flit_out[2]), .QN(n407) );
  DLH_X1 \flit_out_next_reg[1]  ( .G(N77), .D(flit_data[1]), .Q(
        flit_out_next[1]) );
  DFF_X1 \flit_out_reg[1]  ( .D(n387), .CK(Clk), .Q(flit_out[1]), .QN(n408) );
  DLH_X1 \flit_out_next_reg[0]  ( .G(N77), .D(flit_data[0]), .Q(
        flit_out_next[0]) );
  DFF_X1 \flit_out_reg[0]  ( .D(n388), .CK(Clk), .Q(flit_out[0]), .QN(n409) );
  NAND3_X1 U55 ( .A1(n318), .A2(n312), .A3(n394), .ZN(n419) );
  NAND3_X1 U58 ( .A1(n318), .A2(n313), .A3(sw_arb_port[0]), .ZN(n418) );
  NAND3_X1 U61 ( .A1(n394), .A2(n318), .A3(sw_arb_port[0]), .ZN(n417) );
  XOR2_X1 U69 ( .A(router_address_x[0]), .B(flit_data[5]), .Z(n415) );
  XOR2_X1 U70 ( .A(router_address_y[0]), .B(flit_data[2]), .Z(n416) );
  NOR3_X2 U73 ( .A1(n357), .A2(W_usage), .A3(n413), .ZN(W_vc_arb_req) );
  NOR4_X4 U75 ( .A1(n356), .A2(S_usage), .A3(next_hop[2]), .A4(next_hop[0]), 
        .ZN(S_vc_arb_req) );
  NOR3_X2 U79 ( .A1(n413), .A2(N_usage), .A3(n434), .ZN(N_vc_arb_req) );
  AND3_X2 U80 ( .A1(n320), .A2(n313), .A3(N58), .ZN(N_sw_arb_req) );
  NOR4_X4 U97 ( .A1(n355), .A2(E_usage), .A3(next_hop[1]), .A4(next_hop[0]), 
        .ZN(E_vc_arb_req) );
  routing_table_7 router0 ( .router_address_x(router_address_x), 
        .router_address_y(router_address_y), .flit_desn_x({1'b0, 1'b0, 
        flit_data[5]}), .flit_desn_y({1'b0, 1'b0, flit_data[5]}), .next_hop(
        next_hop_out), .read_request(n368) );
  DFFR_X1 \next_hop_reg[0]  ( .D(next_hop_out[0]), .CK(Clk), .RN(n327), .Q(
        next_hop[0]), .QN(n321) );
  NAND3_X2 U3 ( .A1(n316), .A2(n323), .A3(n326), .ZN(n434) );
  INV_X1 U4 ( .A(n315), .ZN(n316) );
  BUF_X1 U5 ( .A(Rst), .Z(n327) );
  BUF_X1 U6 ( .A(Rst), .Z(n328) );
  NOR4_X1 U7 ( .A1(E_sw_arb_gnt), .A2(W_sw_arb_gnt), .A3(N_sw_arb_gnt), .A4(
        S_sw_arb_gnt), .ZN(n317) );
  NOR2_X1 U8 ( .A1(n314), .A2(n410), .ZN(n420) );
  AND3_X1 U9 ( .A1(n314), .A2(Rst), .A3(n345), .ZN(n318) );
  NAND2_X1 U10 ( .A1(n312), .A2(n313), .ZN(n410) );
  INV_X1 U11 ( .A(n420), .ZN(n366) );
  NAND2_X1 U12 ( .A1(n410), .A2(n314), .ZN(n411) );
  NAND3_X1 U13 ( .A1(n322), .A2(n324), .A3(n325), .ZN(n413) );
  NAND2_X1 U14 ( .A1(N60), .A2(n394), .ZN(n412) );
  OR3_X1 U15 ( .A1(router_address_y[2]), .A2(router_address_y[1]), .A3(
        router_address_x[2]), .ZN(n414) );
  OAI21_X1 U16 ( .B1(n328), .B2(n389), .A(n421), .ZN(n375) );
  OAI21_X1 U17 ( .B1(n327), .B2(n390), .A(n419), .ZN(n374) );
  OAI21_X1 U18 ( .B1(n328), .B2(n391), .A(n418), .ZN(n372) );
  OAI21_X1 U19 ( .B1(n327), .B2(n392), .A(n417), .ZN(n370) );
  OAI21_X1 U20 ( .B1(n409), .B2(n327), .A(n433), .ZN(n388) );
  NAND2_X1 U21 ( .A1(flit_out_next[0]), .A2(n328), .ZN(n433) );
  OAI21_X1 U22 ( .B1(n408), .B2(n327), .A(n432), .ZN(n387) );
  NAND2_X1 U23 ( .A1(flit_out_next[1]), .A2(n328), .ZN(n432) );
  OAI21_X1 U24 ( .B1(n407), .B2(n327), .A(n431), .ZN(n386) );
  NAND2_X1 U25 ( .A1(flit_out_next[2]), .A2(Rst), .ZN(n431) );
  OAI21_X1 U26 ( .B1(n406), .B2(n327), .A(n430), .ZN(n385) );
  NAND2_X1 U27 ( .A1(flit_out_next[3]), .A2(n328), .ZN(n430) );
  OAI21_X1 U28 ( .B1(n405), .B2(n327), .A(n429), .ZN(n384) );
  NAND2_X1 U29 ( .A1(flit_out_next[4]), .A2(n327), .ZN(n429) );
  OAI21_X1 U30 ( .B1(n404), .B2(n327), .A(n428), .ZN(n383) );
  NAND2_X1 U31 ( .A1(flit_out_next[5]), .A2(n328), .ZN(n428) );
  OAI21_X1 U32 ( .B1(n399), .B2(n327), .A(n423), .ZN(n378) );
  NAND2_X1 U33 ( .A1(flit_out_next[10]), .A2(n328), .ZN(n423) );
  OAI21_X1 U34 ( .B1(n398), .B2(n327), .A(n422), .ZN(n377) );
  NAND2_X1 U35 ( .A1(flit_out_next[11]), .A2(n328), .ZN(n422) );
  OAI21_X1 U36 ( .B1(n397), .B2(n327), .A(n421), .ZN(n376) );
  OAI21_X1 U37 ( .B1(n396), .B2(n327), .A(n419), .ZN(n373) );
  OAI21_X1 U38 ( .B1(n395), .B2(n327), .A(n418), .ZN(n371) );
  OAI21_X1 U39 ( .B1(n393), .B2(n327), .A(n417), .ZN(n369) );
  OAI21_X1 U40 ( .B1(n403), .B2(n328), .A(n427), .ZN(n382) );
  NAND2_X1 U41 ( .A1(flit_out_next[6]), .A2(n328), .ZN(n427) );
  OAI21_X1 U42 ( .B1(n402), .B2(n328), .A(n426), .ZN(n381) );
  NAND2_X1 U43 ( .A1(flit_out_next[7]), .A2(n328), .ZN(n426) );
  OAI21_X1 U44 ( .B1(n401), .B2(n328), .A(n425), .ZN(n380) );
  NAND2_X1 U45 ( .A1(flit_out_next[8]), .A2(n328), .ZN(n425) );
  OAI21_X1 U46 ( .B1(n400), .B2(n328), .A(n424), .ZN(n379) );
  NAND2_X1 U47 ( .A1(flit_out_next[9]), .A2(n328), .ZN(n424) );
  AND3_X1 U48 ( .A1(n320), .A2(n394), .A3(N64), .ZN(W_sw_arb_req) );
  AND3_X1 U49 ( .A1(state[0]), .A2(n351), .A3(n323), .ZN(n319) );
  AND3_X1 U50 ( .A1(n346), .A2(n314), .A3(sw_arb_port[0]), .ZN(n320) );
  INV_X1 U51 ( .A(n321), .ZN(n322) );
  OR4_X1 U52 ( .A1(router_address_x[1]), .A2(n414), .A3(n415), .A4(n416), .ZN(
        n338) );
  INV_X1 U53 ( .A(flit_data[0]), .ZN(n343) );
  INV_X1 U54 ( .A(flit_data[1]), .ZN(n339) );
  NAND3_X1 U56 ( .A1(n338), .A2(n343), .A3(n339), .ZN(n350) );
  INV_X1 U57 ( .A(n350), .ZN(n329) );
  INV_X1 U59 ( .A(state[1]), .ZN(n351) );
  NAND2_X1 U60 ( .A1(n329), .A2(n319), .ZN(n347) );
  INV_X1 U62 ( .A(n347), .ZN(n368) );
  INV_X1 U63 ( .A(n434), .ZN(n333) );
  NAND2_X1 U64 ( .A1(next_hop[2]), .A2(n333), .ZN(n355) );
  NAND3_X1 U65 ( .A1(state[1]), .A2(state[0]), .A3(n323), .ZN(n342) );
  INV_X1 U66 ( .A(n342), .ZN(n346) );
  NAND2_X1 U67 ( .A1(next_hop[1]), .A2(n333), .ZN(n356) );
  OAI21_X1 U68 ( .B1(N_usage), .B2(n413), .A(n333), .ZN(n357) );
  NAND3_X1 U71 ( .A1(state[2]), .A2(n351), .A3(n326), .ZN(n330) );
  INV_X1 U72 ( .A(n330), .ZN(n345) );
  NAND3_X1 U74 ( .A1(n420), .A2(n327), .A3(n345), .ZN(n421) );
  AND3_X1 U76 ( .A1(N62), .A2(n420), .A3(n346), .ZN(E_sw_arb_req) );
  NOR4_X1 U77 ( .A1(sw_arb_port[0]), .A2(sw_arb_port[2]), .A3(n412), .A4(n342), 
        .ZN(S_sw_arb_req) );
  NOR4_X1 U78 ( .A1(state[2]), .A2(state[0]), .A3(fifo_empty), .A4(state[1]), 
        .ZN(rd_en) );
  AOI21_X1 U81 ( .B1(n411), .B2(n366), .A(n330), .ZN(N77) );
  INV_X1 U82 ( .A(E_vc_arb_gnt), .ZN(n337) );
  NAND2_X1 U83 ( .A1(W_vc_arb_gnt), .A2(n337), .ZN(n336) );
  INV_X1 U84 ( .A(N_vc_arb_gnt), .ZN(n331) );
  OAI21_X1 U85 ( .B1(S_vc_arb_gnt), .B2(n336), .A(n331), .ZN(N55) );
  INV_X1 U86 ( .A(W_vc_arb_gnt), .ZN(n332) );
  INV_X1 U87 ( .A(S_vc_arb_gnt), .ZN(n335) );
  NAND4_X1 U88 ( .A1(n337), .A2(n332), .A3(n331), .A4(n335), .ZN(n334) );
  NAND2_X1 U89 ( .A1(n334), .A2(n333), .ZN(n367) );
  AOI21_X1 U90 ( .B1(n336), .B2(n335), .A(N_vc_arb_gnt), .ZN(N56) );
  NOR3_X1 U91 ( .A1(N_vc_arb_gnt), .A2(S_vc_arb_gnt), .A3(n337), .ZN(N57) );
  INV_X1 U92 ( .A(n338), .ZN(n340) );
  NAND4_X1 U93 ( .A1(n343), .A2(n340), .A3(n319), .A4(n339), .ZN(n341) );
  OAI21_X1 U94 ( .B1(n317), .B2(n342), .A(n341), .ZN(next_state[2]) );
  NAND2_X1 U95 ( .A1(flit_data[1]), .A2(n343), .ZN(n349) );
  INV_X1 U96 ( .A(fifo_empty), .ZN(n344) );
  NAND3_X1 U98 ( .A1(n345), .A2(n349), .A3(n344), .ZN(n348) );
  NAND2_X1 U99 ( .A1(n317), .A2(n346), .ZN(n354) );
  NAND4_X1 U100 ( .A1(n348), .A2(n434), .A3(n347), .A4(n354), .ZN(
        next_state[1]) );
  AOI21_X1 U101 ( .B1(state[0]), .B2(n349), .A(fifo_empty), .ZN(n352) );
  AOI22_X1 U102 ( .A1(n352), .A2(n351), .B1(n319), .B2(n350), .ZN(n353) );
  NAND3_X1 U103 ( .A1(n354), .A2(n367), .A3(n353), .ZN(next_state[0]) );
  NOR4_X1 U104 ( .A1(N_buff_count[3]), .A2(N_buff_count[2]), .A3(
        N_buff_count[1]), .A4(N_buff_count[0]), .ZN(n359) );
  NOR4_X1 U105 ( .A1(N_buff_count[7]), .A2(N_buff_count[6]), .A3(
        N_buff_count[5]), .A4(N_buff_count[4]), .ZN(n358) );
  NAND2_X1 U106 ( .A1(n359), .A2(n358), .ZN(N58) );
  NOR4_X1 U107 ( .A1(S_buff_count[3]), .A2(S_buff_count[2]), .A3(
        S_buff_count[1]), .A4(S_buff_count[0]), .ZN(n361) );
  NOR4_X1 U108 ( .A1(S_buff_count[7]), .A2(S_buff_count[6]), .A3(
        S_buff_count[5]), .A4(S_buff_count[4]), .ZN(n360) );
  NAND2_X1 U109 ( .A1(n361), .A2(n360), .ZN(N60) );
  NOR4_X1 U110 ( .A1(E_buff_count[3]), .A2(E_buff_count[2]), .A3(
        E_buff_count[1]), .A4(E_buff_count[0]), .ZN(n363) );
  NOR4_X1 U111 ( .A1(E_buff_count[7]), .A2(E_buff_count[6]), .A3(
        E_buff_count[5]), .A4(E_buff_count[4]), .ZN(n362) );
  NAND2_X1 U112 ( .A1(n363), .A2(n362), .ZN(N62) );
  NOR4_X1 U113 ( .A1(W_buff_count[3]), .A2(W_buff_count[2]), .A3(
        W_buff_count[1]), .A4(W_buff_count[0]), .ZN(n365) );
  NOR4_X1 U114 ( .A1(W_buff_count[7]), .A2(W_buff_count[6]), .A3(
        W_buff_count[5]), .A4(W_buff_count[4]), .ZN(n364) );
  NAND2_X1 U115 ( .A1(n365), .A2(n364), .ZN(N64) );
endmodule


module routing_table_6 ( router_address_x, router_address_y, flit_desn_x, 
        flit_desn_y, next_hop, read_request );
  input [2:0] router_address_x;
  input [2:0] router_address_y;
  input [2:0] flit_desn_x;
  input [2:0] flit_desn_y;
  output [2:0] next_hop;
  input read_request;
  wire   n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66;

  OAI221_X2 U3 ( .B1(n66), .B2(n65), .C1(read_request), .C2(n64), .A(n63), 
        .ZN(next_hop[0]) );
  INV_X2 U4 ( .A(next_hop[0]), .ZN(n64) );
  OAI221_X2 U6 ( .B1(n62), .B2(n61), .C1(read_request), .C2(n60), .A(n63), 
        .ZN(next_hop[1]) );
  INV_X2 U7 ( .A(next_hop[1]), .ZN(n60) );
  INV_X2 U14 ( .A(n51), .ZN(next_hop[2]) );
  AOI22_X2 U15 ( .A1(n47), .A2(next_hop[2]), .B1(n59), .B2(read_request), .ZN(
        n51) );
  NAND3_X1 U27 ( .A1(n43), .A2(n62), .A3(read_request), .ZN(n63) );
  NAND3_X1 U28 ( .A1(n55), .A2(n48), .A3(flit_desn_x[1]), .ZN(n58) );
  NAND3_X1 U29 ( .A1(n54), .A2(n53), .A3(n52), .ZN(n62) );
  NAND4_X1 U30 ( .A1(n54), .A2(flit_desn_y[0]), .A3(n53), .A4(n42), .ZN(n49)
         );
  NAND3_X1 U31 ( .A1(n53), .A2(n41), .A3(flit_desn_y[1]), .ZN(n50) );
  INV_X1 U5 ( .A(read_request), .ZN(n47) );
  INV_X1 U8 ( .A(n59), .ZN(n43) );
  NOR2_X1 U9 ( .A1(router_address_x[0]), .A2(n45), .ZN(n56) );
  INV_X1 U10 ( .A(n55), .ZN(n45) );
  NAND2_X1 U11 ( .A1(router_address_x[2]), .A2(n46), .ZN(n55) );
  NAND2_X1 U12 ( .A1(read_request), .A2(n66), .ZN(n61) );
  OR2_X1 U13 ( .A1(n62), .A2(n47), .ZN(n65) );
  OAI211_X1 U16 ( .C1(router_address_x[2]), .C2(n46), .A(n58), .B(n57), .ZN(
        n66) );
  OAI211_X1 U17 ( .C1(flit_desn_x[1]), .C2(n48), .A(flit_desn_x[0]), .B(n56), 
        .ZN(n57) );
  INV_X1 U18 ( .A(router_address_x[1]), .ZN(n48) );
  OAI211_X1 U19 ( .C1(router_address_y[2]), .C2(n44), .A(n50), .B(n49), .ZN(
        n59) );
  INV_X1 U20 ( .A(flit_desn_y[2]), .ZN(n44) );
  XNOR2_X1 U21 ( .A(flit_desn_y[2]), .B(router_address_y[2]), .ZN(n53) );
  XOR2_X1 U22 ( .A(flit_desn_y[0]), .B(n42), .Z(n52) );
  XOR2_X1 U23 ( .A(flit_desn_y[1]), .B(n41), .Z(n54) );
  INV_X1 U24 ( .A(flit_desn_x[2]), .ZN(n46) );
  INV_X1 U25 ( .A(router_address_y[1]), .ZN(n41) );
  INV_X1 U26 ( .A(router_address_y[0]), .ZN(n42) );
endmodule


module node_controller_6 ( Clk, Rst, N_usage, S_usage, E_usage, W_usage, 
        rst_N_usage, rst_S_usage, rst_E_usage, rst_W_usage, flit_data, 
        fifo_full, fifo_empty, router_address_x, router_address_y, rd_en, 
        N_vc_arb_req, S_vc_arb_req, E_vc_arb_req, W_vc_arb_req, N_vc_arb_gnt, 
        S_vc_arb_gnt, E_vc_arb_gnt, W_vc_arb_gnt, dec_N_buff_count, 
        dec_S_buff_count, dec_E_buff_count, dec_W_buff_count, N_buff_count, 
        S_buff_count, E_buff_count, W_buff_count, N_sw_arb_req, S_sw_arb_req, 
        E_sw_arb_req, W_sw_arb_req, N_sw_arb_gnt, S_sw_arb_gnt, E_sw_arb_gnt, 
        W_sw_arb_gnt, flit_out );
  input [11:0] flit_data;
  input [2:0] router_address_x;
  input [2:0] router_address_y;
  input [7:0] N_buff_count;
  input [7:0] S_buff_count;
  input [7:0] E_buff_count;
  input [7:0] W_buff_count;
  output [11:0] flit_out;
  input Clk, Rst, N_usage, S_usage, E_usage, W_usage, fifo_full, fifo_empty,
         N_vc_arb_gnt, S_vc_arb_gnt, E_vc_arb_gnt, W_vc_arb_gnt, N_sw_arb_gnt,
         S_sw_arb_gnt, E_sw_arb_gnt, W_sw_arb_gnt;
  output rst_N_usage, rst_S_usage, rst_E_usage, rst_W_usage, rd_en,
         N_vc_arb_req, S_vc_arb_req, E_vc_arb_req, W_vc_arb_req,
         dec_N_buff_count, dec_S_buff_count, dec_E_buff_count,
         dec_W_buff_count, N_sw_arb_req, S_sw_arb_req, E_sw_arb_req,
         W_sw_arb_req;
  wire   N55, N56, N57, N58, N60, N62, N64, N77, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434;
  wire   [2:0] next_hop_out;
  wire   [2:0] state;
  wire   [2:0] next_hop;
  wire   [2:0] sw_arb_port;
  wire   [2:0] next_state;
  wire   [2:0] sw_arb_port_next;
  wire   [11:0] flit_out_next;

  DFFR_X1 \state_reg[0]  ( .D(next_state[0]), .CK(Clk), .RN(n326), .Q(state[0]), .QN(n324) );
  DFFR_X1 \state_reg[2]  ( .D(next_state[2]), .CK(Clk), .RN(n327), .Q(state[2]), .QN(n329) );
  DFFR_X1 \next_hop_reg[2]  ( .D(next_hop_out[2]), .CK(Clk), .RN(n327), .Q(
        next_hop[2]), .QN(n316) );
  DFFR_X1 \next_hop_reg[1]  ( .D(next_hop_out[1]), .CK(Clk), .RN(n325), .Q(
        next_hop[1]), .QN(n318) );
  DFFR_X1 \next_hop_reg[0]  ( .D(next_hop_out[0]), .CK(Clk), .RN(n325), .Q(
        next_hop[0]), .QN(n321) );
  DLL_X1 \sw_arb_port_next_reg[2]  ( .D(N57), .GN(n365), .Q(
        sw_arb_port_next[2]) );
  DFFR_X1 \sw_arb_port_reg[2]  ( .D(sw_arb_port_next[2]), .CK(Clk), .RN(n325), 
        .Q(sw_arb_port[2]), .QN(n314) );
  DLL_X1 \sw_arb_port_next_reg[1]  ( .D(N56), .GN(n365), .Q(
        sw_arb_port_next[1]) );
  DFFR_X1 \sw_arb_port_reg[1]  ( .D(sw_arb_port_next[1]), .CK(Clk), .RN(n326), 
        .Q(n392), .QN(n312) );
  DLL_X1 \sw_arb_port_next_reg[0]  ( .D(N55), .GN(n365), .Q(
        sw_arb_port_next[0]) );
  DFFR_X1 \sw_arb_port_reg[0]  ( .D(sw_arb_port_next[0]), .CK(Clk), .RN(n327), 
        .Q(sw_arb_port[0]), .QN(n313) );
  DFF_X1 dec_W_buff_count_reg ( .D(n367), .CK(Clk), .Q(dec_W_buff_count), .QN(
        n391) );
  DFF_X1 W_usage_out_reg ( .D(n368), .CK(Clk), .Q(rst_W_usage), .QN(n390) );
  DFF_X1 dec_N_buff_count_reg ( .D(n369), .CK(Clk), .Q(dec_N_buff_count), .QN(
        n393) );
  DFF_X1 N_usage_out_reg ( .D(n370), .CK(Clk), .Q(rst_N_usage), .QN(n389) );
  DFF_X1 dec_S_buff_count_reg ( .D(n371), .CK(Clk), .Q(dec_S_buff_count), .QN(
        n394) );
  DFF_X1 S_usage_out_reg ( .D(n372), .CK(Clk), .Q(rst_S_usage), .QN(n388) );
  DFF_X1 E_usage_out_reg ( .D(n373), .CK(Clk), .Q(rst_E_usage), .QN(n387) );
  DFF_X1 dec_E_buff_count_reg ( .D(n374), .CK(Clk), .Q(dec_E_buff_count), .QN(
        n395) );
  DLH_X1 \flit_out_next_reg[11]  ( .G(N77), .D(flit_data[11]), .Q(
        flit_out_next[11]) );
  DFF_X1 \flit_out_reg[11]  ( .D(n375), .CK(Clk), .Q(flit_out[11]), .QN(n396)
         );
  DLH_X1 \flit_out_next_reg[10]  ( .G(N77), .D(flit_data[10]), .Q(
        flit_out_next[10]) );
  DFF_X1 \flit_out_reg[10]  ( .D(n376), .CK(Clk), .Q(flit_out[10]), .QN(n397)
         );
  DLH_X1 \flit_out_next_reg[9]  ( .G(N77), .D(flit_data[9]), .Q(
        flit_out_next[9]) );
  DFF_X1 \flit_out_reg[9]  ( .D(n377), .CK(Clk), .Q(flit_out[9]), .QN(n398) );
  DLH_X1 \flit_out_next_reg[8]  ( .G(N77), .D(flit_data[8]), .Q(
        flit_out_next[8]) );
  DFF_X1 \flit_out_reg[8]  ( .D(n378), .CK(Clk), .Q(flit_out[8]), .QN(n399) );
  DLH_X1 \flit_out_next_reg[7]  ( .G(N77), .D(flit_data[7]), .Q(
        flit_out_next[7]) );
  DFF_X1 \flit_out_reg[7]  ( .D(n379), .CK(Clk), .Q(flit_out[7]), .QN(n400) );
  DLH_X1 \flit_out_next_reg[6]  ( .G(N77), .D(flit_data[6]), .Q(
        flit_out_next[6]) );
  DFF_X1 \flit_out_reg[6]  ( .D(n380), .CK(Clk), .Q(flit_out[6]), .QN(n401) );
  DLH_X1 \flit_out_next_reg[5]  ( .G(N77), .D(flit_data[5]), .Q(
        flit_out_next[5]) );
  DFF_X1 \flit_out_reg[5]  ( .D(n381), .CK(Clk), .Q(flit_out[5]), .QN(n402) );
  DLH_X1 \flit_out_next_reg[4]  ( .G(N77), .D(flit_data[4]), .Q(
        flit_out_next[4]) );
  DFF_X1 \flit_out_reg[4]  ( .D(n382), .CK(Clk), .Q(flit_out[4]), .QN(n403) );
  DLH_X1 \flit_out_next_reg[3]  ( .G(N77), .D(flit_data[3]), .Q(
        flit_out_next[3]) );
  DFF_X1 \flit_out_reg[3]  ( .D(n383), .CK(Clk), .Q(flit_out[3]), .QN(n404) );
  DLH_X1 \flit_out_next_reg[2]  ( .G(N77), .D(flit_data[2]), .Q(
        flit_out_next[2]) );
  DFF_X1 \flit_out_reg[2]  ( .D(n384), .CK(Clk), .Q(flit_out[2]), .QN(n405) );
  DLH_X1 \flit_out_next_reg[1]  ( .G(N77), .D(flit_data[1]), .Q(
        flit_out_next[1]) );
  DFF_X1 \flit_out_reg[1]  ( .D(n385), .CK(Clk), .Q(flit_out[1]), .QN(n406) );
  DLH_X1 \flit_out_next_reg[0]  ( .G(N77), .D(flit_data[0]), .Q(
        flit_out_next[0]) );
  DFF_X1 \flit_out_reg[0]  ( .D(n386), .CK(Clk), .Q(flit_out[0]), .QN(n407) );
  NAND3_X1 U55 ( .A1(n315), .A2(n313), .A3(n392), .ZN(n419) );
  NAND3_X1 U58 ( .A1(n315), .A2(n312), .A3(sw_arb_port[0]), .ZN(n418) );
  NAND3_X1 U61 ( .A1(n392), .A2(n315), .A3(sw_arb_port[0]), .ZN(n417) );
  XOR2_X1 U69 ( .A(router_address_x[0]), .B(flit_data[5]), .Z(n415) );
  XOR2_X1 U70 ( .A(router_address_y[0]), .B(flit_data[2]), .Z(n416) );
  NOR3_X2 U73 ( .A1(n355), .A2(W_usage), .A3(n413), .ZN(W_vc_arb_req) );
  NOR4_X4 U75 ( .A1(n412), .A2(S_usage), .A3(next_hop[2]), .A4(next_hop[0]), 
        .ZN(S_vc_arb_req) );
  NOR3_X2 U79 ( .A1(n413), .A2(N_usage), .A3(n434), .ZN(N_vc_arb_req) );
  NOR4_X4 U97 ( .A1(n408), .A2(E_usage), .A3(next_hop[1]), .A4(next_hop[0]), 
        .ZN(E_vc_arb_req) );
  routing_table_6 router0 ( .router_address_x(router_address_x), 
        .router_address_y(router_address_y), .flit_desn_x({1'b0, 1'b0, 
        flit_data[5]}), .flit_desn_y({1'b0, 1'b0, flit_data[5]}), .next_hop(
        next_hop_out), .read_request(n366) );
  DFFR_X1 \state_reg[1]  ( .D(next_state[1]), .CK(Clk), .RN(n327), .Q(state[1]), .QN(n351) );
  OAI21_X2 U3 ( .B1(N_usage), .B2(n413), .A(n333), .ZN(n355) );
  AND3_X1 U4 ( .A1(n323), .A2(n312), .A3(N58), .ZN(N_sw_arb_req) );
  AND3_X1 U5 ( .A1(n314), .A2(n327), .A3(n345), .ZN(n315) );
  NAND3_X2 U6 ( .A1(state[1]), .A2(n329), .A3(n324), .ZN(n434) );
  INV_X1 U7 ( .A(n316), .ZN(n317) );
  INV_X1 U8 ( .A(n318), .ZN(n319) );
  OR3_X2 U9 ( .A1(n317), .A2(n319), .A3(n321), .ZN(n413) );
  CLKBUF_X1 U10 ( .A(Rst), .Z(n325) );
  CLKBUF_X1 U11 ( .A(Rst), .Z(n326) );
  CLKBUF_X1 U12 ( .A(Rst), .Z(n327) );
  NOR4_X1 U13 ( .A1(E_sw_arb_gnt), .A2(W_sw_arb_gnt), .A3(N_sw_arb_gnt), .A4(
        S_sw_arb_gnt), .ZN(n320) );
  NOR2_X1 U14 ( .A1(n314), .A2(n409), .ZN(n420) );
  NAND2_X1 U15 ( .A1(n313), .A2(n312), .ZN(n409) );
  INV_X1 U16 ( .A(n434), .ZN(n333) );
  INV_X1 U17 ( .A(n420), .ZN(n364) );
  NAND2_X1 U18 ( .A1(n409), .A2(n314), .ZN(n410) );
  NAND2_X1 U19 ( .A1(N60), .A2(n392), .ZN(n411) );
  OR3_X1 U20 ( .A1(router_address_y[2]), .A2(router_address_y[1]), .A3(
        router_address_x[2]), .ZN(n414) );
  OAI21_X1 U21 ( .B1(n325), .B2(n387), .A(n421), .ZN(n373) );
  OAI21_X1 U22 ( .B1(n327), .B2(n388), .A(n419), .ZN(n372) );
  OAI21_X1 U23 ( .B1(n326), .B2(n389), .A(n418), .ZN(n370) );
  OAI21_X1 U24 ( .B1(n327), .B2(n390), .A(n417), .ZN(n368) );
  OAI21_X1 U25 ( .B1(n407), .B2(n325), .A(n433), .ZN(n386) );
  NAND2_X1 U26 ( .A1(flit_out_next[0]), .A2(n325), .ZN(n433) );
  OAI21_X1 U27 ( .B1(n406), .B2(n325), .A(n432), .ZN(n385) );
  NAND2_X1 U28 ( .A1(flit_out_next[1]), .A2(n326), .ZN(n432) );
  OAI21_X1 U29 ( .B1(n405), .B2(n325), .A(n431), .ZN(n384) );
  NAND2_X1 U30 ( .A1(flit_out_next[2]), .A2(n326), .ZN(n431) );
  OAI21_X1 U31 ( .B1(n404), .B2(n325), .A(n430), .ZN(n383) );
  NAND2_X1 U32 ( .A1(flit_out_next[3]), .A2(n325), .ZN(n430) );
  OAI21_X1 U33 ( .B1(n403), .B2(n325), .A(n429), .ZN(n382) );
  NAND2_X1 U34 ( .A1(flit_out_next[4]), .A2(n326), .ZN(n429) );
  OAI21_X1 U35 ( .B1(n402), .B2(n325), .A(n428), .ZN(n381) );
  NAND2_X1 U36 ( .A1(flit_out_next[5]), .A2(n326), .ZN(n428) );
  OAI21_X1 U37 ( .B1(n401), .B2(n326), .A(n427), .ZN(n380) );
  NAND2_X1 U38 ( .A1(flit_out_next[6]), .A2(n326), .ZN(n427) );
  OAI21_X1 U39 ( .B1(n400), .B2(n326), .A(n426), .ZN(n379) );
  NAND2_X1 U40 ( .A1(flit_out_next[7]), .A2(n326), .ZN(n426) );
  OAI21_X1 U41 ( .B1(n399), .B2(n326), .A(n425), .ZN(n378) );
  NAND2_X1 U42 ( .A1(flit_out_next[8]), .A2(n326), .ZN(n425) );
  OAI21_X1 U43 ( .B1(n398), .B2(n326), .A(n424), .ZN(n377) );
  NAND2_X1 U44 ( .A1(flit_out_next[9]), .A2(n326), .ZN(n424) );
  OAI21_X1 U45 ( .B1(n397), .B2(n325), .A(n423), .ZN(n376) );
  NAND2_X1 U46 ( .A1(flit_out_next[10]), .A2(n326), .ZN(n423) );
  OAI21_X1 U47 ( .B1(n396), .B2(n325), .A(n422), .ZN(n375) );
  NAND2_X1 U48 ( .A1(flit_out_next[11]), .A2(n326), .ZN(n422) );
  OAI21_X1 U49 ( .B1(n395), .B2(n325), .A(n421), .ZN(n374) );
  OAI21_X1 U50 ( .B1(n394), .B2(n325), .A(n419), .ZN(n371) );
  OAI21_X1 U51 ( .B1(n393), .B2(n325), .A(n418), .ZN(n369) );
  OAI21_X1 U52 ( .B1(n391), .B2(n325), .A(n417), .ZN(n367) );
  AND3_X1 U53 ( .A1(state[0]), .A2(n351), .A3(n329), .ZN(n322) );
  AND3_X1 U54 ( .A1(n346), .A2(n314), .A3(sw_arb_port[0]), .ZN(n323) );
  AND3_X1 U56 ( .A1(n323), .A2(n392), .A3(N64), .ZN(W_sw_arb_req) );
  OR4_X1 U57 ( .A1(router_address_x[1]), .A2(n414), .A3(n415), .A4(n416), .ZN(
        n338) );
  INV_X1 U59 ( .A(flit_data[0]), .ZN(n343) );
  INV_X1 U60 ( .A(flit_data[1]), .ZN(n339) );
  NAND3_X1 U62 ( .A1(n338), .A2(n343), .A3(n339), .ZN(n350) );
  INV_X1 U63 ( .A(n350), .ZN(n328) );
  NAND2_X1 U64 ( .A1(n328), .A2(n322), .ZN(n347) );
  INV_X1 U65 ( .A(n347), .ZN(n366) );
  NAND2_X1 U66 ( .A1(next_hop[2]), .A2(n333), .ZN(n408) );
  NAND3_X1 U67 ( .A1(state[1]), .A2(state[0]), .A3(n329), .ZN(n342) );
  INV_X1 U68 ( .A(n342), .ZN(n346) );
  NAND2_X1 U71 ( .A1(next_hop[1]), .A2(n333), .ZN(n412) );
  NAND3_X1 U72 ( .A1(state[2]), .A2(n351), .A3(n324), .ZN(n330) );
  INV_X1 U74 ( .A(n330), .ZN(n345) );
  NAND3_X1 U76 ( .A1(n420), .A2(n327), .A3(n345), .ZN(n421) );
  AND3_X1 U77 ( .A1(N62), .A2(n420), .A3(n346), .ZN(E_sw_arb_req) );
  NOR4_X1 U78 ( .A1(sw_arb_port[0]), .A2(sw_arb_port[2]), .A3(n411), .A4(n342), 
        .ZN(S_sw_arb_req) );
  NOR4_X1 U80 ( .A1(state[2]), .A2(state[0]), .A3(fifo_empty), .A4(state[1]), 
        .ZN(rd_en) );
  AOI21_X1 U81 ( .B1(n410), .B2(n364), .A(n330), .ZN(N77) );
  INV_X1 U82 ( .A(E_vc_arb_gnt), .ZN(n337) );
  NAND2_X1 U83 ( .A1(W_vc_arb_gnt), .A2(n337), .ZN(n336) );
  INV_X1 U84 ( .A(N_vc_arb_gnt), .ZN(n331) );
  OAI21_X1 U85 ( .B1(S_vc_arb_gnt), .B2(n336), .A(n331), .ZN(N55) );
  INV_X1 U86 ( .A(W_vc_arb_gnt), .ZN(n332) );
  INV_X1 U87 ( .A(S_vc_arb_gnt), .ZN(n335) );
  NAND4_X1 U88 ( .A1(n337), .A2(n332), .A3(n331), .A4(n335), .ZN(n334) );
  NAND2_X1 U89 ( .A1(n334), .A2(n333), .ZN(n365) );
  AOI21_X1 U90 ( .B1(n336), .B2(n335), .A(N_vc_arb_gnt), .ZN(N56) );
  NOR3_X1 U91 ( .A1(N_vc_arb_gnt), .A2(S_vc_arb_gnt), .A3(n337), .ZN(N57) );
  INV_X1 U92 ( .A(n338), .ZN(n340) );
  NAND4_X1 U93 ( .A1(n343), .A2(n340), .A3(n322), .A4(n339), .ZN(n341) );
  OAI21_X1 U94 ( .B1(n320), .B2(n342), .A(n341), .ZN(next_state[2]) );
  NAND2_X1 U95 ( .A1(flit_data[1]), .A2(n343), .ZN(n349) );
  INV_X1 U96 ( .A(fifo_empty), .ZN(n344) );
  NAND3_X1 U98 ( .A1(n345), .A2(n349), .A3(n344), .ZN(n348) );
  NAND2_X1 U99 ( .A1(n320), .A2(n346), .ZN(n354) );
  NAND4_X1 U100 ( .A1(n348), .A2(n434), .A3(n347), .A4(n354), .ZN(
        next_state[1]) );
  AOI21_X1 U101 ( .B1(state[0]), .B2(n349), .A(fifo_empty), .ZN(n352) );
  AOI22_X1 U102 ( .A1(n352), .A2(n351), .B1(n322), .B2(n350), .ZN(n353) );
  NAND3_X1 U103 ( .A1(n354), .A2(n365), .A3(n353), .ZN(next_state[0]) );
  NOR4_X1 U104 ( .A1(N_buff_count[3]), .A2(N_buff_count[2]), .A3(
        N_buff_count[1]), .A4(N_buff_count[0]), .ZN(n357) );
  NOR4_X1 U105 ( .A1(N_buff_count[7]), .A2(N_buff_count[6]), .A3(
        N_buff_count[5]), .A4(N_buff_count[4]), .ZN(n356) );
  NAND2_X1 U106 ( .A1(n357), .A2(n356), .ZN(N58) );
  NOR4_X1 U107 ( .A1(S_buff_count[3]), .A2(S_buff_count[2]), .A3(
        S_buff_count[1]), .A4(S_buff_count[0]), .ZN(n359) );
  NOR4_X1 U108 ( .A1(S_buff_count[7]), .A2(S_buff_count[6]), .A3(
        S_buff_count[5]), .A4(S_buff_count[4]), .ZN(n358) );
  NAND2_X1 U109 ( .A1(n359), .A2(n358), .ZN(N60) );
  NOR4_X1 U110 ( .A1(E_buff_count[3]), .A2(E_buff_count[2]), .A3(
        E_buff_count[1]), .A4(E_buff_count[0]), .ZN(n361) );
  NOR4_X1 U111 ( .A1(E_buff_count[7]), .A2(E_buff_count[6]), .A3(
        E_buff_count[5]), .A4(E_buff_count[4]), .ZN(n360) );
  NAND2_X1 U112 ( .A1(n361), .A2(n360), .ZN(N62) );
  NOR4_X1 U113 ( .A1(W_buff_count[3]), .A2(W_buff_count[2]), .A3(
        W_buff_count[1]), .A4(W_buff_count[0]), .ZN(n363) );
  NOR4_X1 U114 ( .A1(W_buff_count[7]), .A2(W_buff_count[6]), .A3(
        W_buff_count[5]), .A4(W_buff_count[4]), .ZN(n362) );
  NAND2_X1 U115 ( .A1(n363), .A2(n362), .ZN(N64) );
endmodule


module routing_table_5 ( router_address_x, router_address_y, flit_desn_x, 
        flit_desn_y, next_hop, read_request );
  input [2:0] router_address_x;
  input [2:0] router_address_y;
  input [2:0] flit_desn_x;
  input [2:0] flit_desn_y;
  output [2:0] next_hop;
  input read_request;
  wire   n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66;

  OAI221_X2 U3 ( .B1(n66), .B2(n65), .C1(read_request), .C2(n64), .A(n63), 
        .ZN(next_hop[0]) );
  INV_X2 U4 ( .A(next_hop[0]), .ZN(n64) );
  OAI221_X2 U6 ( .B1(n62), .B2(n61), .C1(read_request), .C2(n60), .A(n63), 
        .ZN(next_hop[1]) );
  INV_X2 U7 ( .A(next_hop[1]), .ZN(n60) );
  INV_X2 U14 ( .A(n51), .ZN(next_hop[2]) );
  AOI22_X2 U15 ( .A1(n47), .A2(next_hop[2]), .B1(n59), .B2(read_request), .ZN(
        n51) );
  NAND3_X1 U27 ( .A1(n43), .A2(n62), .A3(read_request), .ZN(n63) );
  NAND3_X1 U28 ( .A1(n55), .A2(n48), .A3(flit_desn_x[1]), .ZN(n58) );
  NAND3_X1 U29 ( .A1(n54), .A2(n53), .A3(n52), .ZN(n62) );
  NAND4_X1 U30 ( .A1(n54), .A2(flit_desn_y[0]), .A3(n53), .A4(n42), .ZN(n49)
         );
  NAND3_X1 U31 ( .A1(n53), .A2(n41), .A3(flit_desn_y[1]), .ZN(n50) );
  INV_X1 U5 ( .A(read_request), .ZN(n47) );
  INV_X1 U8 ( .A(n59), .ZN(n43) );
  NAND2_X1 U9 ( .A1(router_address_x[2]), .A2(n46), .ZN(n55) );
  NOR2_X1 U10 ( .A1(router_address_x[0]), .A2(n45), .ZN(n56) );
  INV_X1 U11 ( .A(n55), .ZN(n45) );
  NAND2_X1 U12 ( .A1(read_request), .A2(n66), .ZN(n61) );
  OR2_X1 U13 ( .A1(n62), .A2(n47), .ZN(n65) );
  OAI211_X1 U16 ( .C1(router_address_x[2]), .C2(n46), .A(n58), .B(n57), .ZN(
        n66) );
  OAI211_X1 U17 ( .C1(flit_desn_x[1]), .C2(n48), .A(flit_desn_x[0]), .B(n56), 
        .ZN(n57) );
  INV_X1 U18 ( .A(router_address_x[1]), .ZN(n48) );
  OAI211_X1 U19 ( .C1(router_address_y[2]), .C2(n44), .A(n50), .B(n49), .ZN(
        n59) );
  INV_X1 U20 ( .A(flit_desn_y[2]), .ZN(n44) );
  XNOR2_X1 U21 ( .A(flit_desn_y[2]), .B(router_address_y[2]), .ZN(n53) );
  XOR2_X1 U22 ( .A(flit_desn_y[0]), .B(n42), .Z(n52) );
  XOR2_X1 U23 ( .A(flit_desn_y[1]), .B(n41), .Z(n54) );
  INV_X1 U24 ( .A(flit_desn_x[2]), .ZN(n46) );
  INV_X1 U25 ( .A(router_address_y[1]), .ZN(n41) );
  INV_X1 U26 ( .A(router_address_y[0]), .ZN(n42) );
endmodule


module node_controller_5 ( Clk, Rst, N_usage, S_usage, E_usage, W_usage, 
        rst_N_usage, rst_S_usage, rst_E_usage, rst_W_usage, flit_data, 
        fifo_full, fifo_empty, router_address_x, router_address_y, rd_en, 
        N_vc_arb_req, S_vc_arb_req, E_vc_arb_req, W_vc_arb_req, N_vc_arb_gnt, 
        S_vc_arb_gnt, E_vc_arb_gnt, W_vc_arb_gnt, dec_N_buff_count, 
        dec_S_buff_count, dec_E_buff_count, dec_W_buff_count, N_buff_count, 
        S_buff_count, E_buff_count, W_buff_count, N_sw_arb_req, S_sw_arb_req, 
        E_sw_arb_req, W_sw_arb_req, N_sw_arb_gnt, S_sw_arb_gnt, E_sw_arb_gnt, 
        W_sw_arb_gnt, flit_out );
  input [11:0] flit_data;
  input [2:0] router_address_x;
  input [2:0] router_address_y;
  input [7:0] N_buff_count;
  input [7:0] S_buff_count;
  input [7:0] E_buff_count;
  input [7:0] W_buff_count;
  output [11:0] flit_out;
  input Clk, Rst, N_usage, S_usage, E_usage, W_usage, fifo_full, fifo_empty,
         N_vc_arb_gnt, S_vc_arb_gnt, E_vc_arb_gnt, W_vc_arb_gnt, N_sw_arb_gnt,
         S_sw_arb_gnt, E_sw_arb_gnt, W_sw_arb_gnt;
  output rst_N_usage, rst_S_usage, rst_E_usage, rst_W_usage, rd_en,
         N_vc_arb_req, S_vc_arb_req, E_vc_arb_req, W_vc_arb_req,
         dec_N_buff_count, dec_S_buff_count, dec_E_buff_count,
         dec_W_buff_count, N_sw_arb_req, S_sw_arb_req, E_sw_arb_req,
         W_sw_arb_req;
  wire   N55, N56, N57, N58, N60, N62, N64, N77, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429;
  wire   [2:0] next_hop_out;
  wire   [2:0] state;
  wire   [2:0] next_hop;
  wire   [2:0] sw_arb_port;
  wire   [2:0] next_state;
  wire   [2:0] sw_arb_port_next;
  wire   [11:0] flit_out_next;

  DFFR_X1 \state_reg[2]  ( .D(next_state[2]), .CK(Clk), .RN(n322), .Q(state[2]), .QN(n316) );
  DFFR_X1 \next_hop_reg[2]  ( .D(next_hop_out[2]), .CK(Clk), .RN(n321), .Q(
        next_hop[2]) );
  DFFR_X1 \next_hop_reg[1]  ( .D(next_hop_out[1]), .CK(Clk), .RN(n322), .Q(
        next_hop[1]) );
  DFFR_X1 \next_hop_reg[0]  ( .D(next_hop_out[0]), .CK(Clk), .RN(n321), .Q(
        next_hop[0]), .QN(n318) );
  DLL_X1 \sw_arb_port_next_reg[2]  ( .D(N57), .GN(n363), .Q(
        sw_arb_port_next[2]) );
  DFFR_X1 \sw_arb_port_reg[2]  ( .D(sw_arb_port_next[2]), .CK(Clk), .RN(n322), 
        .Q(sw_arb_port[2]), .QN(n314) );
  DLL_X1 \sw_arb_port_next_reg[1]  ( .D(N56), .GN(n363), .Q(
        sw_arb_port_next[1]) );
  DFFR_X1 \sw_arb_port_reg[1]  ( .D(sw_arb_port_next[1]), .CK(Clk), .RN(n321), 
        .Q(n390), .QN(n312) );
  DLL_X1 \sw_arb_port_next_reg[0]  ( .D(N55), .GN(n363), .Q(
        sw_arb_port_next[0]) );
  DFFR_X1 \sw_arb_port_reg[0]  ( .D(sw_arb_port_next[0]), .CK(Clk), .RN(n322), 
        .Q(sw_arb_port[0]), .QN(n313) );
  DFF_X1 dec_W_buff_count_reg ( .D(n365), .CK(Clk), .Q(dec_W_buff_count), .QN(
        n389) );
  DFF_X1 W_usage_out_reg ( .D(n366), .CK(Clk), .Q(rst_W_usage), .QN(n388) );
  DFF_X1 dec_N_buff_count_reg ( .D(n367), .CK(Clk), .Q(dec_N_buff_count), .QN(
        n391) );
  DFF_X1 N_usage_out_reg ( .D(n368), .CK(Clk), .Q(rst_N_usage), .QN(n387) );
  DFF_X1 dec_S_buff_count_reg ( .D(n369), .CK(Clk), .Q(dec_S_buff_count), .QN(
        n392) );
  DFF_X1 S_usage_out_reg ( .D(n370), .CK(Clk), .Q(rst_S_usage), .QN(n386) );
  DFF_X1 E_usage_out_reg ( .D(n371), .CK(Clk), .Q(rst_E_usage), .QN(n385) );
  DFF_X1 dec_E_buff_count_reg ( .D(n372), .CK(Clk), .Q(dec_E_buff_count), .QN(
        n393) );
  DLH_X1 \flit_out_next_reg[11]  ( .G(N77), .D(flit_data[11]), .Q(
        flit_out_next[11]) );
  DFF_X1 \flit_out_reg[11]  ( .D(n373), .CK(Clk), .Q(flit_out[11]), .QN(n394)
         );
  DLH_X1 \flit_out_next_reg[10]  ( .G(N77), .D(flit_data[10]), .Q(
        flit_out_next[10]) );
  DFF_X1 \flit_out_reg[10]  ( .D(n374), .CK(Clk), .Q(flit_out[10]), .QN(n395)
         );
  DLH_X1 \flit_out_next_reg[9]  ( .G(N77), .D(flit_data[9]), .Q(
        flit_out_next[9]) );
  DFF_X1 \flit_out_reg[9]  ( .D(n375), .CK(Clk), .Q(flit_out[9]), .QN(n396) );
  DLH_X1 \flit_out_next_reg[8]  ( .G(N77), .D(flit_data[8]), .Q(
        flit_out_next[8]) );
  DFF_X1 \flit_out_reg[8]  ( .D(n376), .CK(Clk), .Q(flit_out[8]), .QN(n397) );
  DLH_X1 \flit_out_next_reg[7]  ( .G(N77), .D(flit_data[7]), .Q(
        flit_out_next[7]) );
  DFF_X1 \flit_out_reg[7]  ( .D(n377), .CK(Clk), .Q(flit_out[7]), .QN(n398) );
  DLH_X1 \flit_out_next_reg[6]  ( .G(N77), .D(flit_data[6]), .Q(
        flit_out_next[6]) );
  DFF_X1 \flit_out_reg[6]  ( .D(n378), .CK(Clk), .Q(flit_out[6]), .QN(n399) );
  DLH_X1 \flit_out_next_reg[5]  ( .G(N77), .D(flit_data[5]), .Q(
        flit_out_next[5]) );
  DFF_X1 \flit_out_reg[5]  ( .D(n379), .CK(Clk), .Q(flit_out[5]), .QN(n400) );
  DLH_X1 \flit_out_next_reg[4]  ( .G(N77), .D(flit_data[4]), .Q(
        flit_out_next[4]) );
  DFF_X1 \flit_out_reg[4]  ( .D(n380), .CK(Clk), .Q(flit_out[4]), .QN(n401) );
  DLH_X1 \flit_out_next_reg[3]  ( .G(N77), .D(flit_data[3]), .Q(
        flit_out_next[3]) );
  DFF_X1 \flit_out_reg[3]  ( .D(n381), .CK(Clk), .Q(flit_out[3]), .QN(n402) );
  DLH_X1 \flit_out_next_reg[2]  ( .G(N77), .D(flit_data[2]), .Q(
        flit_out_next[2]) );
  DFF_X1 \flit_out_reg[2]  ( .D(n382), .CK(Clk), .Q(flit_out[2]), .QN(n403) );
  DLH_X1 \flit_out_next_reg[1]  ( .G(N77), .D(flit_data[1]), .Q(
        flit_out_next[1]) );
  DFF_X1 \flit_out_reg[1]  ( .D(n383), .CK(Clk), .Q(flit_out[1]), .QN(n404) );
  DLH_X1 \flit_out_next_reg[0]  ( .G(N77), .D(flit_data[0]), .Q(
        flit_out_next[0]) );
  DFF_X1 \flit_out_reg[0]  ( .D(n384), .CK(Clk), .Q(flit_out[0]), .QN(n405) );
  NAND3_X1 U55 ( .A1(n315), .A2(n313), .A3(n390), .ZN(n415) );
  NAND3_X1 U58 ( .A1(n315), .A2(n312), .A3(sw_arb_port[0]), .ZN(n414) );
  NAND3_X1 U61 ( .A1(n390), .A2(n315), .A3(sw_arb_port[0]), .ZN(n413) );
  XOR2_X1 U69 ( .A(router_address_x[0]), .B(flit_data[5]), .Z(n411) );
  XOR2_X1 U70 ( .A(router_address_y[0]), .B(flit_data[2]), .Z(n412) );
  NOR3_X2 U73 ( .A1(n353), .A2(W_usage), .A3(n409), .ZN(W_vc_arb_req) );
  NOR4_X4 U75 ( .A1(n352), .A2(S_usage), .A3(next_hop[2]), .A4(next_hop[0]), 
        .ZN(S_vc_arb_req) );
  NOR4_X4 U97 ( .A1(n351), .A2(E_usage), .A3(next_hop[1]), .A4(next_hop[0]), 
        .ZN(E_vc_arb_req) );
  routing_table_5 router0 ( .router_address_x(router_address_x), 
        .router_address_y(router_address_y), .flit_desn_x({1'b0, 1'b0, 
        flit_data[5]}), .flit_desn_y({1'b0, 1'b0, flit_data[5]}), .next_hop(
        next_hop_out), .read_request(n364) );
  DFFR_X1 \state_reg[1]  ( .D(next_state[1]), .CK(Clk), .RN(n322), .Q(state[1]), .QN(n347) );
  DFFR_X1 \state_reg[0]  ( .D(next_state[0]), .CK(Clk), .RN(n322), .Q(state[0]), .QN(n324) );
  AND3_X1 U3 ( .A1(n320), .A2(n312), .A3(N58), .ZN(N_sw_arb_req) );
  AND3_X1 U4 ( .A1(n314), .A2(Rst), .A3(n340), .ZN(n315) );
  BUF_X1 U5 ( .A(Rst), .Z(n321) );
  BUF_X1 U6 ( .A(Rst), .Z(n322) );
  NOR4_X1 U7 ( .A1(E_sw_arb_gnt), .A2(W_sw_arb_gnt), .A3(N_sw_arb_gnt), .A4(
        S_sw_arb_gnt), .ZN(n317) );
  NOR2_X1 U8 ( .A1(n314), .A2(n406), .ZN(n416) );
  NAND2_X1 U9 ( .A1(n313), .A2(n312), .ZN(n406) );
  INV_X1 U10 ( .A(n416), .ZN(n362) );
  NAND2_X1 U11 ( .A1(n406), .A2(n314), .ZN(n407) );
  OR3_X1 U12 ( .A1(n318), .A2(next_hop[1]), .A3(next_hop[2]), .ZN(n409) );
  OR3_X1 U13 ( .A1(router_address_y[2]), .A2(router_address_y[1]), .A3(
        router_address_x[2]), .ZN(n410) );
  AND3_X1 U14 ( .A1(state[0]), .A2(n347), .A3(n316), .ZN(n319) );
  OAI21_X1 U15 ( .B1(n322), .B2(n385), .A(n417), .ZN(n371) );
  OAI21_X1 U16 ( .B1(n321), .B2(n386), .A(n415), .ZN(n370) );
  OAI21_X1 U17 ( .B1(n322), .B2(n387), .A(n414), .ZN(n368) );
  OAI21_X1 U18 ( .B1(n321), .B2(n388), .A(n413), .ZN(n366) );
  NAND2_X1 U19 ( .A1(N60), .A2(n390), .ZN(n408) );
  OAI21_X1 U20 ( .B1(n405), .B2(n321), .A(n429), .ZN(n384) );
  NAND2_X1 U21 ( .A1(flit_out_next[0]), .A2(n322), .ZN(n429) );
  OAI21_X1 U22 ( .B1(n404), .B2(n321), .A(n428), .ZN(n383) );
  NAND2_X1 U23 ( .A1(flit_out_next[1]), .A2(n322), .ZN(n428) );
  OAI21_X1 U24 ( .B1(n403), .B2(n321), .A(n427), .ZN(n382) );
  NAND2_X1 U25 ( .A1(flit_out_next[2]), .A2(Rst), .ZN(n427) );
  OAI21_X1 U26 ( .B1(n402), .B2(n321), .A(n426), .ZN(n381) );
  NAND2_X1 U27 ( .A1(flit_out_next[3]), .A2(n322), .ZN(n426) );
  OAI21_X1 U28 ( .B1(n401), .B2(n321), .A(n425), .ZN(n380) );
  NAND2_X1 U29 ( .A1(flit_out_next[4]), .A2(n321), .ZN(n425) );
  OAI21_X1 U30 ( .B1(n400), .B2(n321), .A(n424), .ZN(n379) );
  NAND2_X1 U31 ( .A1(flit_out_next[5]), .A2(n322), .ZN(n424) );
  OAI21_X1 U32 ( .B1(n395), .B2(n321), .A(n419), .ZN(n374) );
  NAND2_X1 U33 ( .A1(flit_out_next[10]), .A2(n322), .ZN(n419) );
  OAI21_X1 U34 ( .B1(n394), .B2(n321), .A(n418), .ZN(n373) );
  NAND2_X1 U35 ( .A1(flit_out_next[11]), .A2(n322), .ZN(n418) );
  OAI21_X1 U36 ( .B1(n393), .B2(n321), .A(n417), .ZN(n372) );
  OAI21_X1 U37 ( .B1(n392), .B2(n321), .A(n415), .ZN(n369) );
  OAI21_X1 U38 ( .B1(n391), .B2(n321), .A(n414), .ZN(n367) );
  OAI21_X1 U39 ( .B1(n389), .B2(n321), .A(n413), .ZN(n365) );
  OAI21_X1 U40 ( .B1(n399), .B2(n322), .A(n423), .ZN(n378) );
  NAND2_X1 U41 ( .A1(flit_out_next[6]), .A2(n322), .ZN(n423) );
  OAI21_X1 U42 ( .B1(n398), .B2(n322), .A(n422), .ZN(n377) );
  NAND2_X1 U43 ( .A1(flit_out_next[7]), .A2(n322), .ZN(n422) );
  OAI21_X1 U44 ( .B1(n397), .B2(n322), .A(n421), .ZN(n376) );
  NAND2_X1 U45 ( .A1(flit_out_next[8]), .A2(n322), .ZN(n421) );
  OAI21_X1 U46 ( .B1(n396), .B2(n322), .A(n420), .ZN(n375) );
  NAND2_X1 U47 ( .A1(flit_out_next[9]), .A2(n322), .ZN(n420) );
  AND3_X1 U48 ( .A1(n341), .A2(n314), .A3(sw_arb_port[0]), .ZN(n320) );
  AND3_X1 U49 ( .A1(n320), .A2(n390), .A3(N64), .ZN(W_sw_arb_req) );
  OR4_X1 U50 ( .A1(router_address_x[1]), .A2(n410), .A3(n411), .A4(n412), .ZN(
        n333) );
  INV_X1 U51 ( .A(flit_data[0]), .ZN(n338) );
  INV_X1 U52 ( .A(flit_data[1]), .ZN(n334) );
  NAND3_X1 U53 ( .A1(n333), .A2(n338), .A3(n334), .ZN(n346) );
  INV_X1 U54 ( .A(n346), .ZN(n323) );
  NAND2_X1 U56 ( .A1(n323), .A2(n319), .ZN(n342) );
  INV_X1 U57 ( .A(n342), .ZN(n364) );
  NAND3_X1 U59 ( .A1(state[1]), .A2(n316), .A3(n324), .ZN(n343) );
  INV_X1 U60 ( .A(n343), .ZN(n329) );
  NAND2_X1 U62 ( .A1(next_hop[2]), .A2(n329), .ZN(n351) );
  NAND3_X1 U63 ( .A1(state[1]), .A2(state[0]), .A3(n316), .ZN(n337) );
  INV_X1 U64 ( .A(n337), .ZN(n341) );
  NAND2_X1 U65 ( .A1(next_hop[1]), .A2(n329), .ZN(n352) );
  OAI21_X1 U66 ( .B1(N_usage), .B2(n409), .A(n329), .ZN(n353) );
  NAND3_X1 U67 ( .A1(state[2]), .A2(n347), .A3(n324), .ZN(n325) );
  INV_X1 U68 ( .A(n325), .ZN(n340) );
  NAND3_X1 U71 ( .A1(n416), .A2(n321), .A3(n340), .ZN(n417) );
  AND3_X1 U72 ( .A1(N62), .A2(n416), .A3(n341), .ZN(E_sw_arb_req) );
  NOR4_X1 U74 ( .A1(sw_arb_port[0]), .A2(sw_arb_port[2]), .A3(n408), .A4(n337), 
        .ZN(S_sw_arb_req) );
  NOR3_X1 U76 ( .A1(N_usage), .A2(n409), .A3(n343), .ZN(N_vc_arb_req) );
  NOR4_X1 U77 ( .A1(state[2]), .A2(state[0]), .A3(fifo_empty), .A4(state[1]), 
        .ZN(rd_en) );
  AOI21_X1 U78 ( .B1(n407), .B2(n362), .A(n325), .ZN(N77) );
  INV_X1 U79 ( .A(E_vc_arb_gnt), .ZN(n332) );
  NAND2_X1 U80 ( .A1(W_vc_arb_gnt), .A2(n332), .ZN(n331) );
  INV_X1 U81 ( .A(N_vc_arb_gnt), .ZN(n326) );
  OAI21_X1 U82 ( .B1(S_vc_arb_gnt), .B2(n331), .A(n326), .ZN(N55) );
  INV_X1 U83 ( .A(W_vc_arb_gnt), .ZN(n327) );
  INV_X1 U84 ( .A(S_vc_arb_gnt), .ZN(n330) );
  NAND4_X1 U85 ( .A1(n332), .A2(n327), .A3(n326), .A4(n330), .ZN(n328) );
  NAND2_X1 U86 ( .A1(n329), .A2(n328), .ZN(n363) );
  AOI21_X1 U87 ( .B1(n331), .B2(n330), .A(N_vc_arb_gnt), .ZN(N56) );
  NOR3_X1 U88 ( .A1(N_vc_arb_gnt), .A2(S_vc_arb_gnt), .A3(n332), .ZN(N57) );
  INV_X1 U89 ( .A(n333), .ZN(n335) );
  NAND4_X1 U90 ( .A1(n338), .A2(n335), .A3(n319), .A4(n334), .ZN(n336) );
  OAI21_X1 U91 ( .B1(n317), .B2(n337), .A(n336), .ZN(next_state[2]) );
  NAND2_X1 U92 ( .A1(flit_data[1]), .A2(n338), .ZN(n345) );
  INV_X1 U93 ( .A(fifo_empty), .ZN(n339) );
  NAND3_X1 U94 ( .A1(n340), .A2(n345), .A3(n339), .ZN(n344) );
  NAND2_X1 U95 ( .A1(n317), .A2(n341), .ZN(n350) );
  NAND4_X1 U96 ( .A1(n344), .A2(n343), .A3(n342), .A4(n350), .ZN(next_state[1]) );
  AOI21_X1 U98 ( .B1(state[0]), .B2(n345), .A(fifo_empty), .ZN(n348) );
  AOI22_X1 U99 ( .A1(n348), .A2(n347), .B1(n319), .B2(n346), .ZN(n349) );
  NAND3_X1 U100 ( .A1(n350), .A2(n363), .A3(n349), .ZN(next_state[0]) );
  NOR4_X1 U101 ( .A1(N_buff_count[3]), .A2(N_buff_count[2]), .A3(
        N_buff_count[1]), .A4(N_buff_count[0]), .ZN(n355) );
  NOR4_X1 U102 ( .A1(N_buff_count[7]), .A2(N_buff_count[6]), .A3(
        N_buff_count[5]), .A4(N_buff_count[4]), .ZN(n354) );
  NAND2_X1 U103 ( .A1(n355), .A2(n354), .ZN(N58) );
  NOR4_X1 U104 ( .A1(S_buff_count[3]), .A2(S_buff_count[2]), .A3(
        S_buff_count[1]), .A4(S_buff_count[0]), .ZN(n357) );
  NOR4_X1 U105 ( .A1(S_buff_count[7]), .A2(S_buff_count[6]), .A3(
        S_buff_count[5]), .A4(S_buff_count[4]), .ZN(n356) );
  NAND2_X1 U106 ( .A1(n357), .A2(n356), .ZN(N60) );
  NOR4_X1 U107 ( .A1(E_buff_count[3]), .A2(E_buff_count[2]), .A3(
        E_buff_count[1]), .A4(E_buff_count[0]), .ZN(n359) );
  NOR4_X1 U108 ( .A1(E_buff_count[7]), .A2(E_buff_count[6]), .A3(
        E_buff_count[5]), .A4(E_buff_count[4]), .ZN(n358) );
  NAND2_X1 U109 ( .A1(n359), .A2(n358), .ZN(N62) );
  NOR4_X1 U110 ( .A1(W_buff_count[3]), .A2(W_buff_count[2]), .A3(
        W_buff_count[1]), .A4(W_buff_count[0]), .ZN(n361) );
  NOR4_X1 U111 ( .A1(W_buff_count[7]), .A2(W_buff_count[6]), .A3(
        W_buff_count[5]), .A4(W_buff_count[4]), .ZN(n360) );
  NAND2_X1 U112 ( .A1(n361), .A2(n360), .ZN(N64) );
endmodule


module routing_table_4 ( router_address_x, router_address_y, flit_desn_x, 
        flit_desn_y, next_hop, read_request );
  input [2:0] router_address_x;
  input [2:0] router_address_y;
  input [2:0] flit_desn_x;
  input [2:0] flit_desn_y;
  output [2:0] next_hop;
  input read_request;
  wire   n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66;

  OAI221_X2 U3 ( .B1(n66), .B2(n65), .C1(read_request), .C2(n64), .A(n63), 
        .ZN(next_hop[0]) );
  INV_X2 U4 ( .A(next_hop[0]), .ZN(n64) );
  OAI221_X2 U6 ( .B1(n62), .B2(n61), .C1(read_request), .C2(n60), .A(n63), 
        .ZN(next_hop[1]) );
  INV_X2 U7 ( .A(next_hop[1]), .ZN(n60) );
  INV_X2 U14 ( .A(n51), .ZN(next_hop[2]) );
  AOI22_X2 U15 ( .A1(n47), .A2(next_hop[2]), .B1(n59), .B2(read_request), .ZN(
        n51) );
  NAND3_X1 U27 ( .A1(n43), .A2(n62), .A3(read_request), .ZN(n63) );
  NAND3_X1 U28 ( .A1(n55), .A2(n48), .A3(flit_desn_x[1]), .ZN(n58) );
  NAND3_X1 U29 ( .A1(n54), .A2(n53), .A3(n52), .ZN(n62) );
  NAND4_X1 U30 ( .A1(n54), .A2(flit_desn_y[0]), .A3(n53), .A4(n42), .ZN(n49)
         );
  NAND3_X1 U31 ( .A1(n53), .A2(n41), .A3(flit_desn_y[1]), .ZN(n50) );
  INV_X1 U5 ( .A(read_request), .ZN(n47) );
  INV_X1 U8 ( .A(n59), .ZN(n43) );
  NAND2_X1 U9 ( .A1(router_address_x[2]), .A2(n46), .ZN(n55) );
  NOR2_X1 U10 ( .A1(router_address_x[0]), .A2(n45), .ZN(n56) );
  INV_X1 U11 ( .A(n55), .ZN(n45) );
  NAND2_X1 U12 ( .A1(read_request), .A2(n66), .ZN(n61) );
  OR2_X1 U13 ( .A1(n62), .A2(n47), .ZN(n65) );
  OAI211_X1 U16 ( .C1(router_address_x[2]), .C2(n46), .A(n58), .B(n57), .ZN(
        n66) );
  OAI211_X1 U17 ( .C1(flit_desn_x[1]), .C2(n48), .A(flit_desn_x[0]), .B(n56), 
        .ZN(n57) );
  INV_X1 U18 ( .A(router_address_x[1]), .ZN(n48) );
  OAI211_X1 U19 ( .C1(router_address_y[2]), .C2(n44), .A(n50), .B(n49), .ZN(
        n59) );
  INV_X1 U20 ( .A(flit_desn_y[2]), .ZN(n44) );
  XNOR2_X1 U21 ( .A(flit_desn_y[2]), .B(router_address_y[2]), .ZN(n53) );
  XOR2_X1 U22 ( .A(flit_desn_y[0]), .B(n42), .Z(n52) );
  XOR2_X1 U23 ( .A(flit_desn_y[1]), .B(n41), .Z(n54) );
  INV_X1 U24 ( .A(flit_desn_x[2]), .ZN(n46) );
  INV_X1 U25 ( .A(router_address_y[1]), .ZN(n41) );
  INV_X1 U26 ( .A(router_address_y[0]), .ZN(n42) );
endmodule


module node_controller_4 ( Clk, Rst, N_usage, S_usage, E_usage, W_usage, 
        rst_N_usage, rst_S_usage, rst_E_usage, rst_W_usage, flit_data, 
        fifo_full, fifo_empty, router_address_x, router_address_y, rd_en, 
        N_vc_arb_req, S_vc_arb_req, E_vc_arb_req, W_vc_arb_req, N_vc_arb_gnt, 
        S_vc_arb_gnt, E_vc_arb_gnt, W_vc_arb_gnt, dec_N_buff_count, 
        dec_S_buff_count, dec_E_buff_count, dec_W_buff_count, N_buff_count, 
        S_buff_count, E_buff_count, W_buff_count, N_sw_arb_req, S_sw_arb_req, 
        E_sw_arb_req, W_sw_arb_req, N_sw_arb_gnt, S_sw_arb_gnt, E_sw_arb_gnt, 
        W_sw_arb_gnt, flit_out );
  input [11:0] flit_data;
  input [2:0] router_address_x;
  input [2:0] router_address_y;
  input [7:0] N_buff_count;
  input [7:0] S_buff_count;
  input [7:0] E_buff_count;
  input [7:0] W_buff_count;
  output [11:0] flit_out;
  input Clk, Rst, N_usage, S_usage, E_usage, W_usage, fifo_full, fifo_empty,
         N_vc_arb_gnt, S_vc_arb_gnt, E_vc_arb_gnt, W_vc_arb_gnt, N_sw_arb_gnt,
         S_sw_arb_gnt, E_sw_arb_gnt, W_sw_arb_gnt;
  output rst_N_usage, rst_S_usage, rst_E_usage, rst_W_usage, rd_en,
         N_vc_arb_req, S_vc_arb_req, E_vc_arb_req, W_vc_arb_req,
         dec_N_buff_count, dec_S_buff_count, dec_E_buff_count,
         dec_W_buff_count, N_sw_arb_req, S_sw_arb_req, E_sw_arb_req,
         W_sw_arb_req;
  wire   N55, N56, N57, N58, N60, N62, N64, N77, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437;
  wire   [2:0] next_hop_out;
  wire   [2:0] state;
  wire   [2:0] next_hop;
  wire   [2:0] sw_arb_port;
  wire   [2:0] next_state;
  wire   [2:0] sw_arb_port_next;
  wire   [11:0] flit_out_next;

  DFFR_X1 \state_reg[0]  ( .D(next_state[0]), .CK(Clk), .RN(n332), .Q(state[0]), .QN(n329) );
  DFFR_X1 \state_reg[1]  ( .D(next_state[1]), .CK(Clk), .RN(n331), .Q(state[1]), .QN(n324) );
  DFFR_X1 \state_reg[2]  ( .D(next_state[2]), .CK(Clk), .RN(n331), .Q(state[2]), .QN(n323) );
  DFFR_X1 \next_hop_reg[2]  ( .D(next_hop_out[2]), .CK(Clk), .RN(n332), .Q(
        next_hop[2]), .QN(n328) );
  DFFR_X1 \next_hop_reg[1]  ( .D(next_hop_out[1]), .CK(Clk), .RN(n332), .Q(
        next_hop[1]), .QN(n322) );
  DFFR_X1 \next_hop_reg[0]  ( .D(next_hop_out[0]), .CK(Clk), .RN(n332), .Q(
        next_hop[0]), .QN(n320) );
  DLL_X1 \sw_arb_port_next_reg[2]  ( .D(N57), .GN(n368), .Q(
        sw_arb_port_next[2]) );
  DFFR_X1 \sw_arb_port_reg[2]  ( .D(sw_arb_port_next[2]), .CK(Clk), .RN(n332), 
        .Q(sw_arb_port[2]), .QN(n315) );
  DLL_X1 \sw_arb_port_next_reg[1]  ( .D(N56), .GN(n368), .Q(
        sw_arb_port_next[1]) );
  DFFR_X1 \sw_arb_port_reg[1]  ( .D(sw_arb_port_next[1]), .CK(Clk), .RN(n332), 
        .Q(n395), .QN(n316) );
  DLL_X1 \sw_arb_port_next_reg[0]  ( .D(N55), .GN(n368), .Q(
        sw_arb_port_next[0]) );
  DFFR_X1 \sw_arb_port_reg[0]  ( .D(sw_arb_port_next[0]), .CK(Clk), .RN(n332), 
        .Q(sw_arb_port[0]), .QN(n314) );
  DFF_X1 dec_W_buff_count_reg ( .D(n370), .CK(Clk), .Q(dec_W_buff_count), .QN(
        n394) );
  DFF_X1 W_usage_out_reg ( .D(n371), .CK(Clk), .Q(rst_W_usage), .QN(n393) );
  DFF_X1 dec_N_buff_count_reg ( .D(n372), .CK(Clk), .Q(dec_N_buff_count), .QN(
        n396) );
  DFF_X1 N_usage_out_reg ( .D(n373), .CK(Clk), .Q(rst_N_usage), .QN(n392) );
  DFF_X1 dec_S_buff_count_reg ( .D(n374), .CK(Clk), .Q(dec_S_buff_count), .QN(
        n397) );
  DFF_X1 S_usage_out_reg ( .D(n375), .CK(Clk), .Q(rst_S_usage), .QN(n391) );
  DFF_X1 E_usage_out_reg ( .D(n376), .CK(Clk), .Q(rst_E_usage), .QN(n390) );
  DFF_X1 dec_E_buff_count_reg ( .D(n377), .CK(Clk), .Q(dec_E_buff_count), .QN(
        n398) );
  DLH_X1 \flit_out_next_reg[11]  ( .G(N77), .D(flit_data[11]), .Q(
        flit_out_next[11]) );
  DFF_X1 \flit_out_reg[11]  ( .D(n378), .CK(Clk), .Q(flit_out[11]), .QN(n399)
         );
  DLH_X1 \flit_out_next_reg[10]  ( .G(N77), .D(flit_data[10]), .Q(
        flit_out_next[10]) );
  DFF_X1 \flit_out_reg[10]  ( .D(n379), .CK(Clk), .Q(flit_out[10]), .QN(n400)
         );
  DLH_X1 \flit_out_next_reg[9]  ( .G(N77), .D(flit_data[9]), .Q(
        flit_out_next[9]) );
  DFF_X1 \flit_out_reg[9]  ( .D(n380), .CK(Clk), .Q(flit_out[9]), .QN(n401) );
  DLH_X1 \flit_out_next_reg[8]  ( .G(N77), .D(flit_data[8]), .Q(
        flit_out_next[8]) );
  DFF_X1 \flit_out_reg[8]  ( .D(n381), .CK(Clk), .Q(flit_out[8]), .QN(n402) );
  DLH_X1 \flit_out_next_reg[7]  ( .G(N77), .D(flit_data[7]), .Q(
        flit_out_next[7]) );
  DFF_X1 \flit_out_reg[7]  ( .D(n382), .CK(Clk), .Q(flit_out[7]), .QN(n403) );
  DLH_X1 \flit_out_next_reg[6]  ( .G(N77), .D(flit_data[6]), .Q(
        flit_out_next[6]) );
  DFF_X1 \flit_out_reg[6]  ( .D(n383), .CK(Clk), .Q(flit_out[6]), .QN(n404) );
  DLH_X1 \flit_out_next_reg[5]  ( .G(N77), .D(flit_data[5]), .Q(
        flit_out_next[5]) );
  DFF_X1 \flit_out_reg[5]  ( .D(n384), .CK(Clk), .Q(flit_out[5]), .QN(n405) );
  DLH_X1 \flit_out_next_reg[4]  ( .G(N77), .D(flit_data[4]), .Q(
        flit_out_next[4]) );
  DFF_X1 \flit_out_reg[4]  ( .D(n385), .CK(Clk), .Q(flit_out[4]), .QN(n406) );
  DLH_X1 \flit_out_next_reg[3]  ( .G(N77), .D(flit_data[3]), .Q(
        flit_out_next[3]) );
  DFF_X1 \flit_out_reg[3]  ( .D(n386), .CK(Clk), .Q(flit_out[3]), .QN(n407) );
  DLH_X1 \flit_out_next_reg[2]  ( .G(N77), .D(flit_data[2]), .Q(
        flit_out_next[2]) );
  DFF_X1 \flit_out_reg[2]  ( .D(n387), .CK(Clk), .Q(flit_out[2]), .QN(n408) );
  DLH_X1 \flit_out_next_reg[1]  ( .G(N77), .D(flit_data[1]), .Q(
        flit_out_next[1]) );
  DFF_X1 \flit_out_reg[1]  ( .D(n388), .CK(Clk), .Q(flit_out[1]), .QN(n409) );
  DLH_X1 \flit_out_next_reg[0]  ( .G(N77), .D(flit_data[0]), .Q(
        flit_out_next[0]) );
  DFF_X1 \flit_out_reg[0]  ( .D(n389), .CK(Clk), .Q(flit_out[0]), .QN(n410) );
  NAND3_X1 U55 ( .A1(n312), .A2(n314), .A3(n395), .ZN(n422) );
  NAND3_X1 U58 ( .A1(n312), .A2(n316), .A3(sw_arb_port[0]), .ZN(n421) );
  NAND3_X1 U61 ( .A1(n395), .A2(n312), .A3(sw_arb_port[0]), .ZN(n420) );
  XOR2_X1 U69 ( .A(router_address_x[0]), .B(flit_data[5]), .Z(n418) );
  XOR2_X1 U70 ( .A(router_address_y[0]), .B(flit_data[2]), .Z(n419) );
  NOR3_X2 U73 ( .A1(n358), .A2(W_usage), .A3(n325), .ZN(W_vc_arb_req) );
  NOR4_X4 U75 ( .A1(n415), .A2(S_usage), .A3(next_hop[2]), .A4(next_hop[0]), 
        .ZN(S_vc_arb_req) );
  NOR3_X2 U79 ( .A1(n416), .A2(N_usage), .A3(n437), .ZN(N_vc_arb_req) );
  NOR4_X4 U97 ( .A1(n411), .A2(E_usage), .A3(next_hop[1]), .A4(next_hop[0]), 
        .ZN(E_vc_arb_req) );
  routing_table_4 router0 ( .router_address_x(router_address_x), 
        .router_address_y(router_address_y), .flit_desn_x({1'b0, 1'b0, 
        flit_data[5]}), .flit_desn_y({1'b0, 1'b0, flit_data[5]}), .next_hop(
        next_hop_out), .read_request(n369) );
  AND3_X1 U3 ( .A1(n315), .A2(Rst), .A3(n349), .ZN(n312) );
  AND3_X1 U4 ( .A1(n350), .A2(n315), .A3(sw_arb_port[0]), .ZN(n313) );
  INV_X1 U5 ( .A(state[2]), .ZN(n317) );
  OAI21_X1 U6 ( .B1(N_usage), .B2(n416), .A(n337), .ZN(n358) );
  INV_X1 U7 ( .A(n437), .ZN(n337) );
  INV_X1 U8 ( .A(state[0]), .ZN(n318) );
  INV_X1 U9 ( .A(n324), .ZN(n319) );
  INV_X1 U10 ( .A(n320), .ZN(n321) );
  NAND3_X2 U11 ( .A1(state[1]), .A2(n323), .A3(n329), .ZN(n437) );
  CLKBUF_X1 U12 ( .A(n416), .Z(n325) );
  BUF_X1 U13 ( .A(Rst), .Z(n330) );
  BUF_X1 U14 ( .A(Rst), .Z(n331) );
  BUF_X1 U15 ( .A(Rst), .Z(n332) );
  NOR4_X1 U16 ( .A1(E_sw_arb_gnt), .A2(W_sw_arb_gnt), .A3(N_sw_arb_gnt), .A4(
        S_sw_arb_gnt), .ZN(n326) );
  NOR2_X1 U17 ( .A1(n315), .A2(n412), .ZN(n423) );
  NAND2_X1 U18 ( .A1(n314), .A2(n316), .ZN(n412) );
  INV_X1 U19 ( .A(n423), .ZN(n367) );
  NAND2_X1 U20 ( .A1(n412), .A2(n315), .ZN(n413) );
  NAND3_X1 U21 ( .A1(n321), .A2(n322), .A3(n328), .ZN(n416) );
  NAND2_X1 U22 ( .A1(N60), .A2(n395), .ZN(n414) );
  OR3_X1 U23 ( .A1(router_address_y[2]), .A2(router_address_y[1]), .A3(
        router_address_x[2]), .ZN(n417) );
  AND3_X1 U24 ( .A1(state[0]), .A2(n324), .A3(n317), .ZN(n327) );
  OAI21_X1 U25 ( .B1(n332), .B2(n390), .A(n424), .ZN(n376) );
  OAI21_X1 U26 ( .B1(n332), .B2(n391), .A(n422), .ZN(n375) );
  OAI21_X1 U27 ( .B1(n332), .B2(n392), .A(n421), .ZN(n373) );
  OAI21_X1 U28 ( .B1(n332), .B2(n393), .A(n420), .ZN(n371) );
  OAI21_X1 U29 ( .B1(n410), .B2(n330), .A(n436), .ZN(n389) );
  NAND2_X1 U30 ( .A1(flit_out_next[0]), .A2(n332), .ZN(n436) );
  OAI21_X1 U31 ( .B1(n409), .B2(n330), .A(n435), .ZN(n388) );
  NAND2_X1 U32 ( .A1(flit_out_next[1]), .A2(n331), .ZN(n435) );
  OAI21_X1 U33 ( .B1(n408), .B2(n330), .A(n434), .ZN(n387) );
  NAND2_X1 U34 ( .A1(flit_out_next[2]), .A2(n332), .ZN(n434) );
  OAI21_X1 U35 ( .B1(n407), .B2(n330), .A(n433), .ZN(n386) );
  NAND2_X1 U36 ( .A1(flit_out_next[3]), .A2(n332), .ZN(n433) );
  OAI21_X1 U37 ( .B1(n406), .B2(n330), .A(n432), .ZN(n385) );
  NAND2_X1 U38 ( .A1(flit_out_next[4]), .A2(n332), .ZN(n432) );
  OAI21_X1 U39 ( .B1(n405), .B2(n330), .A(n431), .ZN(n384) );
  NAND2_X1 U40 ( .A1(flit_out_next[5]), .A2(n331), .ZN(n431) );
  OAI21_X1 U41 ( .B1(n400), .B2(n330), .A(n426), .ZN(n379) );
  NAND2_X1 U42 ( .A1(flit_out_next[10]), .A2(n331), .ZN(n426) );
  OAI21_X1 U43 ( .B1(n399), .B2(n330), .A(n425), .ZN(n378) );
  NAND2_X1 U44 ( .A1(flit_out_next[11]), .A2(n331), .ZN(n425) );
  OAI21_X1 U45 ( .B1(n398), .B2(n330), .A(n424), .ZN(n377) );
  OAI21_X1 U46 ( .B1(n397), .B2(n330), .A(n422), .ZN(n374) );
  OAI21_X1 U47 ( .B1(n396), .B2(n330), .A(n421), .ZN(n372) );
  OAI21_X1 U48 ( .B1(n394), .B2(n330), .A(n420), .ZN(n370) );
  OAI21_X1 U49 ( .B1(n404), .B2(n331), .A(n430), .ZN(n383) );
  NAND2_X1 U50 ( .A1(flit_out_next[6]), .A2(n331), .ZN(n430) );
  OAI21_X1 U51 ( .B1(n403), .B2(n331), .A(n429), .ZN(n382) );
  NAND2_X1 U52 ( .A1(flit_out_next[7]), .A2(n331), .ZN(n429) );
  OAI21_X1 U53 ( .B1(n402), .B2(n331), .A(n428), .ZN(n381) );
  NAND2_X1 U54 ( .A1(flit_out_next[8]), .A2(n331), .ZN(n428) );
  OAI21_X1 U56 ( .B1(n401), .B2(n331), .A(n427), .ZN(n380) );
  NAND2_X1 U57 ( .A1(flit_out_next[9]), .A2(n331), .ZN(n427) );
  AND3_X1 U59 ( .A1(n313), .A2(n316), .A3(N58), .ZN(N_sw_arb_req) );
  AND3_X1 U60 ( .A1(n313), .A2(n395), .A3(N64), .ZN(W_sw_arb_req) );
  OR4_X1 U62 ( .A1(router_address_x[1]), .A2(n417), .A3(n418), .A4(n419), .ZN(
        n342) );
  INV_X1 U63 ( .A(flit_data[0]), .ZN(n347) );
  INV_X1 U64 ( .A(flit_data[1]), .ZN(n343) );
  NAND3_X1 U65 ( .A1(n342), .A2(n347), .A3(n343), .ZN(n354) );
  INV_X1 U66 ( .A(n354), .ZN(n333) );
  NAND2_X1 U67 ( .A1(n333), .A2(n327), .ZN(n351) );
  INV_X1 U68 ( .A(n351), .ZN(n369) );
  NAND2_X1 U71 ( .A1(next_hop[2]), .A2(n337), .ZN(n411) );
  NAND3_X1 U72 ( .A1(n319), .A2(state[0]), .A3(n317), .ZN(n346) );
  INV_X1 U74 ( .A(n346), .ZN(n350) );
  NAND2_X1 U76 ( .A1(next_hop[1]), .A2(n337), .ZN(n415) );
  NAND3_X1 U77 ( .A1(state[2]), .A2(n324), .A3(n318), .ZN(n334) );
  INV_X1 U78 ( .A(n334), .ZN(n349) );
  NAND3_X1 U80 ( .A1(n423), .A2(n330), .A3(n349), .ZN(n424) );
  AND3_X1 U81 ( .A1(N62), .A2(n423), .A3(n350), .ZN(E_sw_arb_req) );
  NOR4_X1 U82 ( .A1(sw_arb_port[0]), .A2(sw_arb_port[2]), .A3(n414), .A4(n346), 
        .ZN(S_sw_arb_req) );
  NOR4_X1 U83 ( .A1(state[2]), .A2(state[0]), .A3(fifo_empty), .A4(n319), .ZN(
        rd_en) );
  AOI21_X1 U84 ( .B1(n413), .B2(n367), .A(n334), .ZN(N77) );
  INV_X1 U85 ( .A(E_vc_arb_gnt), .ZN(n341) );
  NAND2_X1 U86 ( .A1(W_vc_arb_gnt), .A2(n341), .ZN(n340) );
  INV_X1 U87 ( .A(N_vc_arb_gnt), .ZN(n335) );
  OAI21_X1 U88 ( .B1(S_vc_arb_gnt), .B2(n340), .A(n335), .ZN(N55) );
  INV_X1 U89 ( .A(W_vc_arb_gnt), .ZN(n336) );
  INV_X1 U90 ( .A(S_vc_arb_gnt), .ZN(n339) );
  NAND4_X1 U91 ( .A1(n341), .A2(n336), .A3(n335), .A4(n339), .ZN(n338) );
  NAND2_X1 U92 ( .A1(n338), .A2(n337), .ZN(n368) );
  AOI21_X1 U93 ( .B1(n340), .B2(n339), .A(N_vc_arb_gnt), .ZN(N56) );
  NOR3_X1 U94 ( .A1(N_vc_arb_gnt), .A2(S_vc_arb_gnt), .A3(n341), .ZN(N57) );
  INV_X1 U95 ( .A(n342), .ZN(n344) );
  NAND4_X1 U96 ( .A1(n347), .A2(n344), .A3(n327), .A4(n343), .ZN(n345) );
  OAI21_X1 U98 ( .B1(n326), .B2(n346), .A(n345), .ZN(next_state[2]) );
  NAND2_X1 U99 ( .A1(flit_data[1]), .A2(n347), .ZN(n353) );
  INV_X1 U100 ( .A(fifo_empty), .ZN(n348) );
  NAND3_X1 U101 ( .A1(n349), .A2(n353), .A3(n348), .ZN(n352) );
  NAND2_X1 U102 ( .A1(n326), .A2(n350), .ZN(n357) );
  NAND4_X1 U103 ( .A1(n352), .A2(n437), .A3(n351), .A4(n357), .ZN(
        next_state[1]) );
  AOI21_X1 U104 ( .B1(state[0]), .B2(n353), .A(fifo_empty), .ZN(n355) );
  AOI22_X1 U105 ( .A1(n355), .A2(n324), .B1(n327), .B2(n354), .ZN(n356) );
  NAND3_X1 U106 ( .A1(n357), .A2(n368), .A3(n356), .ZN(next_state[0]) );
  NOR4_X1 U107 ( .A1(N_buff_count[3]), .A2(N_buff_count[2]), .A3(
        N_buff_count[1]), .A4(N_buff_count[0]), .ZN(n360) );
  NOR4_X1 U108 ( .A1(N_buff_count[7]), .A2(N_buff_count[6]), .A3(
        N_buff_count[5]), .A4(N_buff_count[4]), .ZN(n359) );
  NAND2_X1 U109 ( .A1(n360), .A2(n359), .ZN(N58) );
  NOR4_X1 U110 ( .A1(S_buff_count[3]), .A2(S_buff_count[2]), .A3(
        S_buff_count[1]), .A4(S_buff_count[0]), .ZN(n362) );
  NOR4_X1 U111 ( .A1(S_buff_count[7]), .A2(S_buff_count[6]), .A3(
        S_buff_count[5]), .A4(S_buff_count[4]), .ZN(n361) );
  NAND2_X1 U112 ( .A1(n362), .A2(n361), .ZN(N60) );
  NOR4_X1 U113 ( .A1(E_buff_count[3]), .A2(E_buff_count[2]), .A3(
        E_buff_count[1]), .A4(E_buff_count[0]), .ZN(n364) );
  NOR4_X1 U114 ( .A1(E_buff_count[7]), .A2(E_buff_count[6]), .A3(
        E_buff_count[5]), .A4(E_buff_count[4]), .ZN(n363) );
  NAND2_X1 U115 ( .A1(n364), .A2(n363), .ZN(N62) );
  NOR4_X1 U116 ( .A1(W_buff_count[3]), .A2(W_buff_count[2]), .A3(
        W_buff_count[1]), .A4(W_buff_count[0]), .ZN(n366) );
  NOR4_X1 U117 ( .A1(W_buff_count[7]), .A2(W_buff_count[6]), .A3(
        W_buff_count[5]), .A4(W_buff_count[4]), .ZN(n365) );
  NAND2_X1 U118 ( .A1(n366), .A2(n365), .ZN(N64) );
endmodule


module routing_table_3 ( router_address_x, router_address_y, flit_desn_x, 
        flit_desn_y, next_hop, read_request );
  input [2:0] router_address_x;
  input [2:0] router_address_y;
  input [2:0] flit_desn_x;
  input [2:0] flit_desn_y;
  output [2:0] next_hop;
  input read_request;
  wire   n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66;

  OAI221_X2 U3 ( .B1(n66), .B2(n65), .C1(read_request), .C2(n64), .A(n63), 
        .ZN(next_hop[0]) );
  INV_X2 U4 ( .A(next_hop[0]), .ZN(n64) );
  OAI221_X2 U6 ( .B1(n62), .B2(n61), .C1(read_request), .C2(n60), .A(n63), 
        .ZN(next_hop[1]) );
  INV_X2 U7 ( .A(next_hop[1]), .ZN(n60) );
  INV_X2 U14 ( .A(n51), .ZN(next_hop[2]) );
  AOI22_X2 U15 ( .A1(n47), .A2(next_hop[2]), .B1(n59), .B2(read_request), .ZN(
        n51) );
  NAND3_X1 U27 ( .A1(n43), .A2(n62), .A3(read_request), .ZN(n63) );
  NAND3_X1 U28 ( .A1(n55), .A2(n48), .A3(flit_desn_x[1]), .ZN(n58) );
  NAND3_X1 U29 ( .A1(n54), .A2(n53), .A3(n52), .ZN(n62) );
  NAND4_X1 U30 ( .A1(n54), .A2(flit_desn_y[0]), .A3(n53), .A4(n42), .ZN(n49)
         );
  NAND3_X1 U31 ( .A1(n53), .A2(n41), .A3(flit_desn_y[1]), .ZN(n50) );
  INV_X1 U5 ( .A(read_request), .ZN(n47) );
  INV_X1 U8 ( .A(n59), .ZN(n43) );
  NAND2_X1 U9 ( .A1(router_address_x[2]), .A2(n46), .ZN(n55) );
  NOR2_X1 U10 ( .A1(router_address_x[0]), .A2(n45), .ZN(n56) );
  INV_X1 U11 ( .A(n55), .ZN(n45) );
  NAND2_X1 U12 ( .A1(read_request), .A2(n66), .ZN(n61) );
  OR2_X1 U13 ( .A1(n62), .A2(n47), .ZN(n65) );
  OAI211_X1 U16 ( .C1(router_address_x[2]), .C2(n46), .A(n58), .B(n57), .ZN(
        n66) );
  OAI211_X1 U17 ( .C1(flit_desn_x[1]), .C2(n48), .A(flit_desn_x[0]), .B(n56), 
        .ZN(n57) );
  INV_X1 U18 ( .A(router_address_x[1]), .ZN(n48) );
  OAI211_X1 U19 ( .C1(router_address_y[2]), .C2(n44), .A(n50), .B(n49), .ZN(
        n59) );
  INV_X1 U20 ( .A(flit_desn_y[2]), .ZN(n44) );
  XNOR2_X1 U21 ( .A(flit_desn_y[2]), .B(router_address_y[2]), .ZN(n53) );
  XOR2_X1 U22 ( .A(flit_desn_y[0]), .B(n42), .Z(n52) );
  XOR2_X1 U23 ( .A(flit_desn_y[1]), .B(n41), .Z(n54) );
  INV_X1 U24 ( .A(flit_desn_x[2]), .ZN(n46) );
  INV_X1 U25 ( .A(router_address_y[1]), .ZN(n41) );
  INV_X1 U26 ( .A(router_address_y[0]), .ZN(n42) );
endmodule


module node_controller_3 ( Clk, Rst, N_usage, S_usage, E_usage, W_usage, 
        rst_N_usage, rst_S_usage, rst_E_usage, rst_W_usage, flit_data, 
        fifo_full, fifo_empty, router_address_x, router_address_y, rd_en, 
        N_vc_arb_req, S_vc_arb_req, E_vc_arb_req, W_vc_arb_req, N_vc_arb_gnt, 
        S_vc_arb_gnt, E_vc_arb_gnt, W_vc_arb_gnt, dec_N_buff_count, 
        dec_S_buff_count, dec_E_buff_count, dec_W_buff_count, N_buff_count, 
        S_buff_count, E_buff_count, W_buff_count, N_sw_arb_req, S_sw_arb_req, 
        E_sw_arb_req, W_sw_arb_req, N_sw_arb_gnt, S_sw_arb_gnt, E_sw_arb_gnt, 
        W_sw_arb_gnt, flit_out );
  input [11:0] flit_data;
  input [2:0] router_address_x;
  input [2:0] router_address_y;
  input [7:0] N_buff_count;
  input [7:0] S_buff_count;
  input [7:0] E_buff_count;
  input [7:0] W_buff_count;
  output [11:0] flit_out;
  input Clk, Rst, N_usage, S_usage, E_usage, W_usage, fifo_full, fifo_empty,
         N_vc_arb_gnt, S_vc_arb_gnt, E_vc_arb_gnt, W_vc_arb_gnt, N_sw_arb_gnt,
         S_sw_arb_gnt, E_sw_arb_gnt, W_sw_arb_gnt;
  output rst_N_usage, rst_S_usage, rst_E_usage, rst_W_usage, rd_en,
         N_vc_arb_req, S_vc_arb_req, E_vc_arb_req, W_vc_arb_req,
         dec_N_buff_count, dec_S_buff_count, dec_E_buff_count,
         dec_W_buff_count, N_sw_arb_req, S_sw_arb_req, E_sw_arb_req,
         W_sw_arb_req;
  wire   N55, N56, N57, N58, N60, N62, N64, N77, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434;
  wire   [2:0] next_hop_out;
  wire   [2:0] state;
  wire   [2:0] next_hop;
  wire   [2:0] sw_arb_port;
  wire   [2:0] next_state;
  wire   [2:0] sw_arb_port_next;
  wire   [11:0] flit_out_next;

  DFFR_X1 \state_reg[0]  ( .D(next_state[0]), .CK(Clk), .RN(n327), .Q(state[0]), .QN(n325) );
  DFFR_X1 \state_reg[1]  ( .D(next_state[1]), .CK(Clk), .RN(n326), .Q(state[1]), .QN(n317) );
  DFFR_X1 \state_reg[2]  ( .D(next_state[2]), .CK(Clk), .RN(n327), .Q(state[2]), .QN(n329) );
  DFFR_X1 \next_hop_reg[2]  ( .D(next_hop_out[2]), .CK(Clk), .RN(n327), .Q(
        next_hop[2]), .QN(n324) );
  DFFR_X1 \next_hop_reg[1]  ( .D(next_hop_out[1]), .CK(Clk), .RN(n327), .Q(
        next_hop[1]), .QN(n323) );
  DLL_X1 \sw_arb_port_next_reg[2]  ( .D(N57), .GN(n365), .Q(
        sw_arb_port_next[2]) );
  DFFR_X1 \sw_arb_port_reg[2]  ( .D(sw_arb_port_next[2]), .CK(Clk), .RN(n327), 
        .Q(sw_arb_port[2]), .QN(n315) );
  DLL_X1 \sw_arb_port_next_reg[1]  ( .D(N56), .GN(n365), .Q(
        sw_arb_port_next[1]) );
  DFFR_X1 \sw_arb_port_reg[1]  ( .D(sw_arb_port_next[1]), .CK(Clk), .RN(n327), 
        .Q(n392), .QN(n316) );
  DLL_X1 \sw_arb_port_next_reg[0]  ( .D(N55), .GN(n365), .Q(
        sw_arb_port_next[0]) );
  DFFR_X1 \sw_arb_port_reg[0]  ( .D(sw_arb_port_next[0]), .CK(Clk), .RN(n327), 
        .Q(sw_arb_port[0]), .QN(n314) );
  DFF_X1 dec_W_buff_count_reg ( .D(n367), .CK(Clk), .Q(dec_W_buff_count), .QN(
        n391) );
  DFF_X1 W_usage_out_reg ( .D(n368), .CK(Clk), .Q(rst_W_usage), .QN(n390) );
  DFF_X1 dec_N_buff_count_reg ( .D(n369), .CK(Clk), .Q(dec_N_buff_count), .QN(
        n393) );
  DFF_X1 N_usage_out_reg ( .D(n370), .CK(Clk), .Q(rst_N_usage), .QN(n389) );
  DFF_X1 dec_S_buff_count_reg ( .D(n371), .CK(Clk), .Q(dec_S_buff_count), .QN(
        n394) );
  DFF_X1 S_usage_out_reg ( .D(n372), .CK(Clk), .Q(rst_S_usage), .QN(n388) );
  DFF_X1 E_usage_out_reg ( .D(n373), .CK(Clk), .Q(rst_E_usage), .QN(n387) );
  DFF_X1 dec_E_buff_count_reg ( .D(n374), .CK(Clk), .Q(dec_E_buff_count), .QN(
        n395) );
  DLH_X1 \flit_out_next_reg[11]  ( .G(N77), .D(flit_data[11]), .Q(
        flit_out_next[11]) );
  DFF_X1 \flit_out_reg[11]  ( .D(n375), .CK(Clk), .Q(flit_out[11]), .QN(n396)
         );
  DLH_X1 \flit_out_next_reg[10]  ( .G(N77), .D(flit_data[10]), .Q(
        flit_out_next[10]) );
  DFF_X1 \flit_out_reg[10]  ( .D(n376), .CK(Clk), .Q(flit_out[10]), .QN(n397)
         );
  DLH_X1 \flit_out_next_reg[9]  ( .G(N77), .D(flit_data[9]), .Q(
        flit_out_next[9]) );
  DFF_X1 \flit_out_reg[9]  ( .D(n377), .CK(Clk), .Q(flit_out[9]), .QN(n398) );
  DLH_X1 \flit_out_next_reg[8]  ( .G(N77), .D(flit_data[8]), .Q(
        flit_out_next[8]) );
  DFF_X1 \flit_out_reg[8]  ( .D(n378), .CK(Clk), .Q(flit_out[8]), .QN(n399) );
  DLH_X1 \flit_out_next_reg[7]  ( .G(N77), .D(flit_data[7]), .Q(
        flit_out_next[7]) );
  DFF_X1 \flit_out_reg[7]  ( .D(n379), .CK(Clk), .Q(flit_out[7]), .QN(n400) );
  DLH_X1 \flit_out_next_reg[6]  ( .G(N77), .D(flit_data[6]), .Q(
        flit_out_next[6]) );
  DFF_X1 \flit_out_reg[6]  ( .D(n380), .CK(Clk), .Q(flit_out[6]), .QN(n401) );
  DLH_X1 \flit_out_next_reg[5]  ( .G(N77), .D(flit_data[5]), .Q(
        flit_out_next[5]) );
  DFF_X1 \flit_out_reg[5]  ( .D(n381), .CK(Clk), .Q(flit_out[5]), .QN(n402) );
  DLH_X1 \flit_out_next_reg[4]  ( .G(N77), .D(flit_data[4]), .Q(
        flit_out_next[4]) );
  DFF_X1 \flit_out_reg[4]  ( .D(n382), .CK(Clk), .Q(flit_out[4]), .QN(n403) );
  DLH_X1 \flit_out_next_reg[3]  ( .G(N77), .D(flit_data[3]), .Q(
        flit_out_next[3]) );
  DFF_X1 \flit_out_reg[3]  ( .D(n383), .CK(Clk), .Q(flit_out[3]), .QN(n404) );
  DLH_X1 \flit_out_next_reg[2]  ( .G(N77), .D(flit_data[2]), .Q(
        flit_out_next[2]) );
  DFF_X1 \flit_out_reg[2]  ( .D(n384), .CK(Clk), .Q(flit_out[2]), .QN(n405) );
  DLH_X1 \flit_out_next_reg[1]  ( .G(N77), .D(flit_data[1]), .Q(
        flit_out_next[1]) );
  DFF_X1 \flit_out_reg[1]  ( .D(n385), .CK(Clk), .Q(flit_out[1]), .QN(n406) );
  DLH_X1 \flit_out_next_reg[0]  ( .G(N77), .D(flit_data[0]), .Q(
        flit_out_next[0]) );
  DFF_X1 \flit_out_reg[0]  ( .D(n386), .CK(Clk), .Q(flit_out[0]), .QN(n407) );
  NAND3_X1 U55 ( .A1(n312), .A2(n314), .A3(n392), .ZN(n419) );
  NAND3_X1 U58 ( .A1(n312), .A2(n316), .A3(sw_arb_port[0]), .ZN(n418) );
  NAND3_X1 U61 ( .A1(n392), .A2(n312), .A3(sw_arb_port[0]), .ZN(n417) );
  XOR2_X1 U69 ( .A(router_address_x[0]), .B(flit_data[5]), .Z(n415) );
  XOR2_X1 U70 ( .A(router_address_y[0]), .B(flit_data[2]), .Z(n416) );
  NOR3_X2 U73 ( .A1(n355), .A2(W_usage), .A3(n413), .ZN(W_vc_arb_req) );
  NOR4_X4 U75 ( .A1(n412), .A2(S_usage), .A3(next_hop[2]), .A4(next_hop[0]), 
        .ZN(S_vc_arb_req) );
  NOR3_X2 U79 ( .A1(n413), .A2(N_usage), .A3(n434), .ZN(N_vc_arb_req) );
  NOR4_X4 U97 ( .A1(n408), .A2(E_usage), .A3(next_hop[1]), .A4(next_hop[0]), 
        .ZN(E_vc_arb_req) );
  routing_table_3 router0 ( .router_address_x(router_address_x), 
        .router_address_y(router_address_y), .flit_desn_x({1'b0, 1'b0, 
        flit_data[5]}), .flit_desn_y({1'b0, 1'b0, flit_data[5]}), .next_hop(
        next_hop_out), .read_request(n366) );
  DFFR_X1 \next_hop_reg[0]  ( .D(next_hop_out[0]), .CK(Clk), .RN(n327), .Q(
        next_hop[0]), .QN(n319) );
  OAI21_X2 U3 ( .B1(N_usage), .B2(n413), .A(n333), .ZN(n355) );
  AND3_X1 U4 ( .A1(n315), .A2(Rst), .A3(n345), .ZN(n312) );
  AND3_X1 U5 ( .A1(n346), .A2(n315), .A3(sw_arb_port[0]), .ZN(n313) );
  INV_X1 U6 ( .A(n317), .ZN(n318) );
  INV_X1 U7 ( .A(n319), .ZN(n320) );
  BUF_X1 U8 ( .A(Rst), .Z(n326) );
  BUF_X1 U9 ( .A(Rst), .Z(n327) );
  NOR4_X1 U10 ( .A1(E_sw_arb_gnt), .A2(W_sw_arb_gnt), .A3(N_sw_arb_gnt), .A4(
        S_sw_arb_gnt), .ZN(n321) );
  NOR2_X1 U11 ( .A1(n315), .A2(n409), .ZN(n420) );
  NAND2_X1 U12 ( .A1(n314), .A2(n316), .ZN(n409) );
  INV_X1 U13 ( .A(n420), .ZN(n364) );
  NAND2_X1 U14 ( .A1(n409), .A2(n315), .ZN(n410) );
  NAND3_X1 U15 ( .A1(n320), .A2(n323), .A3(n324), .ZN(n413) );
  NAND3_X1 U16 ( .A1(n318), .A2(n329), .A3(n325), .ZN(n434) );
  NAND2_X1 U17 ( .A1(N60), .A2(n392), .ZN(n411) );
  OR3_X1 U18 ( .A1(router_address_y[2]), .A2(router_address_y[1]), .A3(
        router_address_x[2]), .ZN(n414) );
  OAI21_X1 U19 ( .B1(n327), .B2(n387), .A(n421), .ZN(n373) );
  OAI21_X1 U20 ( .B1(n327), .B2(n388), .A(n419), .ZN(n372) );
  OAI21_X1 U21 ( .B1(n327), .B2(n389), .A(n418), .ZN(n370) );
  OAI21_X1 U22 ( .B1(n327), .B2(n390), .A(n417), .ZN(n368) );
  OAI21_X1 U23 ( .B1(n407), .B2(n326), .A(n433), .ZN(n386) );
  NAND2_X1 U24 ( .A1(flit_out_next[0]), .A2(n327), .ZN(n433) );
  OAI21_X1 U25 ( .B1(n406), .B2(n326), .A(n432), .ZN(n385) );
  NAND2_X1 U26 ( .A1(flit_out_next[1]), .A2(n326), .ZN(n432) );
  OAI21_X1 U27 ( .B1(n405), .B2(n326), .A(n431), .ZN(n384) );
  NAND2_X1 U28 ( .A1(flit_out_next[2]), .A2(n327), .ZN(n431) );
  OAI21_X1 U29 ( .B1(n404), .B2(n326), .A(n430), .ZN(n383) );
  NAND2_X1 U30 ( .A1(flit_out_next[3]), .A2(n327), .ZN(n430) );
  OAI21_X1 U31 ( .B1(n403), .B2(n326), .A(n429), .ZN(n382) );
  NAND2_X1 U32 ( .A1(flit_out_next[4]), .A2(n327), .ZN(n429) );
  OAI21_X1 U33 ( .B1(n402), .B2(n326), .A(n428), .ZN(n381) );
  NAND2_X1 U34 ( .A1(flit_out_next[5]), .A2(n327), .ZN(n428) );
  OAI21_X1 U35 ( .B1(n397), .B2(n326), .A(n423), .ZN(n376) );
  NAND2_X1 U36 ( .A1(flit_out_next[10]), .A2(n326), .ZN(n423) );
  OAI21_X1 U37 ( .B1(n396), .B2(n326), .A(n422), .ZN(n375) );
  NAND2_X1 U38 ( .A1(flit_out_next[11]), .A2(n327), .ZN(n422) );
  OAI21_X1 U39 ( .B1(n395), .B2(n326), .A(n421), .ZN(n374) );
  OAI21_X1 U40 ( .B1(n394), .B2(n326), .A(n419), .ZN(n371) );
  OAI21_X1 U41 ( .B1(n393), .B2(n326), .A(n418), .ZN(n369) );
  OAI21_X1 U42 ( .B1(n391), .B2(n326), .A(n417), .ZN(n367) );
  OAI21_X1 U43 ( .B1(n401), .B2(n326), .A(n427), .ZN(n380) );
  NAND2_X1 U44 ( .A1(flit_out_next[6]), .A2(Rst), .ZN(n427) );
  OAI21_X1 U45 ( .B1(n400), .B2(n327), .A(n426), .ZN(n379) );
  NAND2_X1 U46 ( .A1(flit_out_next[7]), .A2(n327), .ZN(n426) );
  OAI21_X1 U47 ( .B1(n399), .B2(n326), .A(n425), .ZN(n378) );
  NAND2_X1 U48 ( .A1(flit_out_next[8]), .A2(n326), .ZN(n425) );
  OAI21_X1 U49 ( .B1(n398), .B2(n327), .A(n424), .ZN(n377) );
  NAND2_X1 U50 ( .A1(flit_out_next[9]), .A2(n327), .ZN(n424) );
  AND3_X1 U51 ( .A1(n313), .A2(n316), .A3(N58), .ZN(N_sw_arb_req) );
  AND3_X1 U52 ( .A1(state[0]), .A2(n351), .A3(n329), .ZN(n322) );
  AND3_X1 U53 ( .A1(n313), .A2(n392), .A3(N64), .ZN(W_sw_arb_req) );
  OR4_X1 U54 ( .A1(router_address_x[1]), .A2(n414), .A3(n415), .A4(n416), .ZN(
        n338) );
  INV_X1 U56 ( .A(flit_data[0]), .ZN(n343) );
  INV_X1 U57 ( .A(flit_data[1]), .ZN(n339) );
  NAND3_X1 U59 ( .A1(n338), .A2(n343), .A3(n339), .ZN(n350) );
  INV_X1 U60 ( .A(n350), .ZN(n328) );
  INV_X1 U62 ( .A(state[1]), .ZN(n351) );
  NAND2_X1 U63 ( .A1(n328), .A2(n322), .ZN(n347) );
  INV_X1 U64 ( .A(n347), .ZN(n366) );
  INV_X1 U65 ( .A(n434), .ZN(n333) );
  NAND2_X1 U66 ( .A1(next_hop[2]), .A2(n333), .ZN(n408) );
  NAND3_X1 U67 ( .A1(state[1]), .A2(state[0]), .A3(n329), .ZN(n342) );
  INV_X1 U68 ( .A(n342), .ZN(n346) );
  NAND2_X1 U71 ( .A1(next_hop[1]), .A2(n333), .ZN(n412) );
  NAND3_X1 U72 ( .A1(state[2]), .A2(n351), .A3(n325), .ZN(n330) );
  INV_X1 U74 ( .A(n330), .ZN(n345) );
  NAND3_X1 U76 ( .A1(n420), .A2(n326), .A3(n345), .ZN(n421) );
  AND3_X1 U77 ( .A1(N62), .A2(n420), .A3(n346), .ZN(E_sw_arb_req) );
  NOR4_X1 U78 ( .A1(sw_arb_port[0]), .A2(sw_arb_port[2]), .A3(n411), .A4(n342), 
        .ZN(S_sw_arb_req) );
  NOR4_X1 U80 ( .A1(state[2]), .A2(state[0]), .A3(fifo_empty), .A4(state[1]), 
        .ZN(rd_en) );
  AOI21_X1 U81 ( .B1(n410), .B2(n364), .A(n330), .ZN(N77) );
  INV_X1 U82 ( .A(E_vc_arb_gnt), .ZN(n337) );
  NAND2_X1 U83 ( .A1(W_vc_arb_gnt), .A2(n337), .ZN(n336) );
  INV_X1 U84 ( .A(N_vc_arb_gnt), .ZN(n331) );
  OAI21_X1 U85 ( .B1(S_vc_arb_gnt), .B2(n336), .A(n331), .ZN(N55) );
  INV_X1 U86 ( .A(W_vc_arb_gnt), .ZN(n332) );
  INV_X1 U87 ( .A(S_vc_arb_gnt), .ZN(n335) );
  NAND4_X1 U88 ( .A1(n337), .A2(n332), .A3(n331), .A4(n335), .ZN(n334) );
  NAND2_X1 U89 ( .A1(n334), .A2(n333), .ZN(n365) );
  AOI21_X1 U90 ( .B1(n336), .B2(n335), .A(N_vc_arb_gnt), .ZN(N56) );
  NOR3_X1 U91 ( .A1(N_vc_arb_gnt), .A2(S_vc_arb_gnt), .A3(n337), .ZN(N57) );
  INV_X1 U92 ( .A(n338), .ZN(n340) );
  NAND4_X1 U93 ( .A1(n343), .A2(n340), .A3(n322), .A4(n339), .ZN(n341) );
  OAI21_X1 U94 ( .B1(n321), .B2(n342), .A(n341), .ZN(next_state[2]) );
  NAND2_X1 U95 ( .A1(flit_data[1]), .A2(n343), .ZN(n349) );
  INV_X1 U96 ( .A(fifo_empty), .ZN(n344) );
  NAND3_X1 U98 ( .A1(n345), .A2(n349), .A3(n344), .ZN(n348) );
  NAND2_X1 U99 ( .A1(n321), .A2(n346), .ZN(n354) );
  NAND4_X1 U100 ( .A1(n348), .A2(n434), .A3(n347), .A4(n354), .ZN(
        next_state[1]) );
  AOI21_X1 U101 ( .B1(state[0]), .B2(n349), .A(fifo_empty), .ZN(n352) );
  AOI22_X1 U102 ( .A1(n352), .A2(n351), .B1(n322), .B2(n350), .ZN(n353) );
  NAND3_X1 U103 ( .A1(n354), .A2(n365), .A3(n353), .ZN(next_state[0]) );
  NOR4_X1 U104 ( .A1(N_buff_count[3]), .A2(N_buff_count[2]), .A3(
        N_buff_count[1]), .A4(N_buff_count[0]), .ZN(n357) );
  NOR4_X1 U105 ( .A1(N_buff_count[7]), .A2(N_buff_count[6]), .A3(
        N_buff_count[5]), .A4(N_buff_count[4]), .ZN(n356) );
  NAND2_X1 U106 ( .A1(n357), .A2(n356), .ZN(N58) );
  NOR4_X1 U107 ( .A1(S_buff_count[3]), .A2(S_buff_count[2]), .A3(
        S_buff_count[1]), .A4(S_buff_count[0]), .ZN(n359) );
  NOR4_X1 U108 ( .A1(S_buff_count[7]), .A2(S_buff_count[6]), .A3(
        S_buff_count[5]), .A4(S_buff_count[4]), .ZN(n358) );
  NAND2_X1 U109 ( .A1(n359), .A2(n358), .ZN(N60) );
  NOR4_X1 U110 ( .A1(E_buff_count[3]), .A2(E_buff_count[2]), .A3(
        E_buff_count[1]), .A4(E_buff_count[0]), .ZN(n361) );
  NOR4_X1 U111 ( .A1(E_buff_count[7]), .A2(E_buff_count[6]), .A3(
        E_buff_count[5]), .A4(E_buff_count[4]), .ZN(n360) );
  NAND2_X1 U112 ( .A1(n361), .A2(n360), .ZN(N62) );
  NOR4_X1 U113 ( .A1(W_buff_count[3]), .A2(W_buff_count[2]), .A3(
        W_buff_count[1]), .A4(W_buff_count[0]), .ZN(n363) );
  NOR4_X1 U114 ( .A1(W_buff_count[7]), .A2(W_buff_count[6]), .A3(
        W_buff_count[5]), .A4(W_buff_count[4]), .ZN(n362) );
  NAND2_X1 U115 ( .A1(n363), .A2(n362), .ZN(N64) );
endmodule


module routing_table_2 ( router_address_x, router_address_y, flit_desn_x, 
        flit_desn_y, next_hop, read_request );
  input [2:0] router_address_x;
  input [2:0] router_address_y;
  input [2:0] flit_desn_x;
  input [2:0] flit_desn_y;
  output [2:0] next_hop;
  input read_request;
  wire   n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66;

  OAI221_X2 U3 ( .B1(n66), .B2(n65), .C1(read_request), .C2(n64), .A(n63), 
        .ZN(next_hop[0]) );
  INV_X2 U4 ( .A(next_hop[0]), .ZN(n64) );
  OAI221_X2 U6 ( .B1(n62), .B2(n61), .C1(read_request), .C2(n60), .A(n63), 
        .ZN(next_hop[1]) );
  INV_X2 U7 ( .A(next_hop[1]), .ZN(n60) );
  INV_X2 U14 ( .A(n51), .ZN(next_hop[2]) );
  AOI22_X2 U15 ( .A1(n47), .A2(next_hop[2]), .B1(n59), .B2(read_request), .ZN(
        n51) );
  NAND3_X1 U27 ( .A1(n43), .A2(n62), .A3(read_request), .ZN(n63) );
  NAND3_X1 U28 ( .A1(n55), .A2(n48), .A3(flit_desn_x[1]), .ZN(n58) );
  NAND3_X1 U29 ( .A1(n54), .A2(n53), .A3(n52), .ZN(n62) );
  NAND4_X1 U30 ( .A1(n54), .A2(flit_desn_y[0]), .A3(n53), .A4(n42), .ZN(n49)
         );
  NAND3_X1 U31 ( .A1(n53), .A2(n41), .A3(flit_desn_y[1]), .ZN(n50) );
  INV_X1 U5 ( .A(read_request), .ZN(n47) );
  INV_X1 U8 ( .A(n59), .ZN(n43) );
  NAND2_X1 U9 ( .A1(router_address_x[2]), .A2(n46), .ZN(n55) );
  NOR2_X1 U10 ( .A1(router_address_x[0]), .A2(n45), .ZN(n56) );
  INV_X1 U11 ( .A(n55), .ZN(n45) );
  NAND2_X1 U12 ( .A1(read_request), .A2(n66), .ZN(n61) );
  OR2_X1 U13 ( .A1(n62), .A2(n47), .ZN(n65) );
  OAI211_X1 U16 ( .C1(router_address_x[2]), .C2(n46), .A(n58), .B(n57), .ZN(
        n66) );
  OAI211_X1 U17 ( .C1(flit_desn_x[1]), .C2(n48), .A(flit_desn_x[0]), .B(n56), 
        .ZN(n57) );
  INV_X1 U18 ( .A(router_address_x[1]), .ZN(n48) );
  OAI211_X1 U19 ( .C1(router_address_y[2]), .C2(n44), .A(n50), .B(n49), .ZN(
        n59) );
  INV_X1 U20 ( .A(flit_desn_y[2]), .ZN(n44) );
  XNOR2_X1 U21 ( .A(flit_desn_y[2]), .B(router_address_y[2]), .ZN(n53) );
  XOR2_X1 U22 ( .A(flit_desn_y[0]), .B(n42), .Z(n52) );
  XOR2_X1 U23 ( .A(flit_desn_y[1]), .B(n41), .Z(n54) );
  INV_X1 U24 ( .A(flit_desn_x[2]), .ZN(n46) );
  INV_X1 U25 ( .A(router_address_y[1]), .ZN(n41) );
  INV_X1 U26 ( .A(router_address_y[0]), .ZN(n42) );
endmodule


module node_controller_2 ( Clk, Rst, N_usage, S_usage, E_usage, W_usage, 
        rst_N_usage, rst_S_usage, rst_E_usage, rst_W_usage, flit_data, 
        fifo_full, fifo_empty, router_address_x, router_address_y, rd_en, 
        N_vc_arb_req, S_vc_arb_req, E_vc_arb_req, W_vc_arb_req, N_vc_arb_gnt, 
        S_vc_arb_gnt, E_vc_arb_gnt, W_vc_arb_gnt, dec_N_buff_count, 
        dec_S_buff_count, dec_E_buff_count, dec_W_buff_count, N_buff_count, 
        S_buff_count, E_buff_count, W_buff_count, N_sw_arb_req, S_sw_arb_req, 
        E_sw_arb_req, W_sw_arb_req, N_sw_arb_gnt, S_sw_arb_gnt, E_sw_arb_gnt, 
        W_sw_arb_gnt, flit_out );
  input [11:0] flit_data;
  input [2:0] router_address_x;
  input [2:0] router_address_y;
  input [7:0] N_buff_count;
  input [7:0] S_buff_count;
  input [7:0] E_buff_count;
  input [7:0] W_buff_count;
  output [11:0] flit_out;
  input Clk, Rst, N_usage, S_usage, E_usage, W_usage, fifo_full, fifo_empty,
         N_vc_arb_gnt, S_vc_arb_gnt, E_vc_arb_gnt, W_vc_arb_gnt, N_sw_arb_gnt,
         S_sw_arb_gnt, E_sw_arb_gnt, W_sw_arb_gnt;
  output rst_N_usage, rst_S_usage, rst_E_usage, rst_W_usage, rd_en,
         N_vc_arb_req, S_vc_arb_req, E_vc_arb_req, W_vc_arb_req,
         dec_N_buff_count, dec_S_buff_count, dec_E_buff_count,
         dec_W_buff_count, N_sw_arb_req, S_sw_arb_req, E_sw_arb_req,
         W_sw_arb_req;
  wire   N55, N56, N57, N58, N60, N62, N64, N77, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432;
  wire   [2:0] next_hop_out;
  wire   [2:0] state;
  wire   [2:0] next_hop;
  wire   [2:0] sw_arb_port;
  wire   [2:0] next_state;
  wire   [2:0] sw_arb_port_next;
  wire   [11:0] flit_out_next;

  DFFR_X1 \state_reg[0]  ( .D(next_state[0]), .CK(Clk), .RN(n326), .Q(state[0]), .QN(n321) );
  DFFR_X1 \state_reg[1]  ( .D(next_state[1]), .CK(Clk), .RN(n327), .Q(state[1]), .QN(n322) );
  DFFR_X1 \state_reg[2]  ( .D(next_state[2]), .CK(Clk), .RN(n327), .Q(state[2]), .QN(n320) );
  DFFR_X1 \next_hop_reg[2]  ( .D(next_hop_out[2]), .CK(Clk), .RN(n327), .Q(
        next_hop[2]), .QN(n317) );
  DFFR_X1 \next_hop_reg[1]  ( .D(next_hop_out[1]), .CK(Clk), .RN(n327), .Q(
        next_hop[1]), .QN(n315) );
  DLL_X1 \sw_arb_port_next_reg[2]  ( .D(N57), .GN(n362), .Q(
        sw_arb_port_next[2]) );
  DFFR_X1 \sw_arb_port_reg[2]  ( .D(sw_arb_port_next[2]), .CK(Clk), .RN(n326), 
        .Q(sw_arb_port[2]), .QN(n318) );
  DLL_X1 \sw_arb_port_next_reg[1]  ( .D(N56), .GN(n362), .Q(
        sw_arb_port_next[1]) );
  DFFR_X1 \sw_arb_port_reg[1]  ( .D(sw_arb_port_next[1]), .CK(Clk), .RN(n326), 
        .Q(n389), .QN(n316) );
  DLL_X1 \sw_arb_port_next_reg[0]  ( .D(N55), .GN(n362), .Q(
        sw_arb_port_next[0]) );
  DFFR_X1 \sw_arb_port_reg[0]  ( .D(sw_arb_port_next[0]), .CK(Clk), .RN(n327), 
        .Q(sw_arb_port[0]), .QN(n314) );
  DFF_X1 dec_W_buff_count_reg ( .D(n364), .CK(Clk), .Q(dec_W_buff_count), .QN(
        n388) );
  DFF_X1 W_usage_out_reg ( .D(n365), .CK(Clk), .Q(rst_W_usage), .QN(n387) );
  DFF_X1 dec_N_buff_count_reg ( .D(n366), .CK(Clk), .Q(dec_N_buff_count), .QN(
        n390) );
  DFF_X1 N_usage_out_reg ( .D(n367), .CK(Clk), .Q(rst_N_usage), .QN(n386) );
  DFF_X1 dec_S_buff_count_reg ( .D(n368), .CK(Clk), .Q(dec_S_buff_count), .QN(
        n391) );
  DFF_X1 S_usage_out_reg ( .D(n369), .CK(Clk), .Q(rst_S_usage), .QN(n385) );
  DFF_X1 E_usage_out_reg ( .D(n370), .CK(Clk), .Q(rst_E_usage), .QN(n384) );
  DFF_X1 dec_E_buff_count_reg ( .D(n371), .CK(Clk), .Q(dec_E_buff_count), .QN(
        n392) );
  DLH_X1 \flit_out_next_reg[11]  ( .G(N77), .D(flit_data[11]), .Q(
        flit_out_next[11]) );
  DFF_X1 \flit_out_reg[11]  ( .D(n372), .CK(Clk), .Q(flit_out[11]), .QN(n393)
         );
  DLH_X1 \flit_out_next_reg[10]  ( .G(N77), .D(flit_data[10]), .Q(
        flit_out_next[10]) );
  DFF_X1 \flit_out_reg[10]  ( .D(n373), .CK(Clk), .Q(flit_out[10]), .QN(n394)
         );
  DLH_X1 \flit_out_next_reg[9]  ( .G(N77), .D(flit_data[9]), .Q(
        flit_out_next[9]) );
  DFF_X1 \flit_out_reg[9]  ( .D(n374), .CK(Clk), .Q(flit_out[9]), .QN(n395) );
  DLH_X1 \flit_out_next_reg[8]  ( .G(N77), .D(flit_data[8]), .Q(
        flit_out_next[8]) );
  DFF_X1 \flit_out_reg[8]  ( .D(n375), .CK(Clk), .Q(flit_out[8]), .QN(n396) );
  DLH_X1 \flit_out_next_reg[7]  ( .G(N77), .D(flit_data[7]), .Q(
        flit_out_next[7]) );
  DFF_X1 \flit_out_reg[7]  ( .D(n376), .CK(Clk), .Q(flit_out[7]), .QN(n397) );
  DLH_X1 \flit_out_next_reg[6]  ( .G(N77), .D(flit_data[6]), .Q(
        flit_out_next[6]) );
  DFF_X1 \flit_out_reg[6]  ( .D(n377), .CK(Clk), .Q(flit_out[6]), .QN(n398) );
  DLH_X1 \flit_out_next_reg[5]  ( .G(N77), .D(flit_data[5]), .Q(
        flit_out_next[5]) );
  DFF_X1 \flit_out_reg[5]  ( .D(n378), .CK(Clk), .Q(flit_out[5]), .QN(n399) );
  DLH_X1 \flit_out_next_reg[4]  ( .G(N77), .D(flit_data[4]), .Q(
        flit_out_next[4]) );
  DFF_X1 \flit_out_reg[4]  ( .D(n379), .CK(Clk), .Q(flit_out[4]), .QN(n400) );
  DLH_X1 \flit_out_next_reg[3]  ( .G(N77), .D(flit_data[3]), .Q(
        flit_out_next[3]) );
  DFF_X1 \flit_out_reg[3]  ( .D(n380), .CK(Clk), .Q(flit_out[3]), .QN(n401) );
  DLH_X1 \flit_out_next_reg[2]  ( .G(N77), .D(flit_data[2]), .Q(
        flit_out_next[2]) );
  DFF_X1 \flit_out_reg[2]  ( .D(n381), .CK(Clk), .Q(flit_out[2]), .QN(n402) );
  DLH_X1 \flit_out_next_reg[1]  ( .G(N77), .D(flit_data[1]), .Q(
        flit_out_next[1]) );
  DFF_X1 \flit_out_reg[1]  ( .D(n382), .CK(Clk), .Q(flit_out[1]), .QN(n403) );
  DLH_X1 \flit_out_next_reg[0]  ( .G(N77), .D(flit_data[0]), .Q(
        flit_out_next[0]) );
  DFF_X1 \flit_out_reg[0]  ( .D(n383), .CK(Clk), .Q(flit_out[0]), .QN(n404) );
  NAND3_X1 U55 ( .A1(n312), .A2(n314), .A3(n389), .ZN(n417) );
  NAND3_X1 U58 ( .A1(n312), .A2(n316), .A3(sw_arb_port[0]), .ZN(n416) );
  NAND3_X1 U61 ( .A1(n389), .A2(n312), .A3(sw_arb_port[0]), .ZN(n415) );
  XOR2_X1 U69 ( .A(router_address_x[0]), .B(flit_data[5]), .Z(n413) );
  XOR2_X1 U70 ( .A(router_address_y[0]), .B(flit_data[2]), .Z(n414) );
  NOR3_X2 U73 ( .A1(n411), .A2(W_usage), .A3(n410), .ZN(W_vc_arb_req) );
  NOR4_X4 U75 ( .A1(n409), .A2(S_usage), .A3(next_hop[2]), .A4(n325), .ZN(
        S_vc_arb_req) );
  NOR3_X2 U79 ( .A1(n410), .A2(N_usage), .A3(n432), .ZN(N_vc_arb_req) );
  NOR4_X4 U97 ( .A1(n405), .A2(E_usage), .A3(next_hop[1]), .A4(n325), .ZN(
        E_vc_arb_req) );
  routing_table_2 router0 ( .router_address_x(router_address_x), 
        .router_address_y(router_address_y), .flit_desn_x({1'b0, 1'b0, 
        flit_data[5]}), .flit_desn_y({1'b0, 1'b0, flit_data[5]}), .next_hop(
        next_hop_out), .read_request(n363) );
  DFFR_X1 \next_hop_reg[0]  ( .D(next_hop_out[0]), .CK(Clk), .RN(n326), .Q(
        next_hop[0]) );
  AND3_X1 U3 ( .A1(n318), .A2(Rst), .A3(n344), .ZN(n312) );
  AND3_X1 U4 ( .A1(n345), .A2(n318), .A3(sw_arb_port[0]), .ZN(n313) );
  NOR4_X2 U5 ( .A1(state[2]), .A2(state[0]), .A3(fifo_empty), .A4(n319), .ZN(
        rd_en) );
  OAI21_X2 U6 ( .B1(N_usage), .B2(n410), .A(n332), .ZN(n411) );
  INV_X1 U7 ( .A(n322), .ZN(n319) );
  NAND3_X2 U8 ( .A1(state[1]), .A2(n320), .A3(n321), .ZN(n432) );
  CLKBUF_X1 U9 ( .A(next_hop[0]), .Z(n325) );
  BUF_X1 U10 ( .A(Rst), .Z(n326) );
  BUF_X1 U11 ( .A(Rst), .Z(n327) );
  NOR4_X1 U12 ( .A1(E_sw_arb_gnt), .A2(W_sw_arb_gnt), .A3(N_sw_arb_gnt), .A4(
        S_sw_arb_gnt), .ZN(n323) );
  NOR2_X1 U13 ( .A1(n318), .A2(n406), .ZN(n418) );
  NAND2_X1 U14 ( .A1(n314), .A2(n316), .ZN(n406) );
  INV_X1 U15 ( .A(n418), .ZN(n361) );
  NAND2_X1 U16 ( .A1(n406), .A2(n318), .ZN(n407) );
  NAND3_X1 U17 ( .A1(next_hop[0]), .A2(n315), .A3(n317), .ZN(n410) );
  NAND2_X1 U18 ( .A1(N60), .A2(n389), .ZN(n408) );
  OR3_X1 U19 ( .A1(router_address_y[2]), .A2(router_address_y[1]), .A3(
        router_address_x[2]), .ZN(n412) );
  AND3_X1 U20 ( .A1(state[0]), .A2(n322), .A3(n320), .ZN(n324) );
  OAI21_X1 U21 ( .B1(n326), .B2(n384), .A(n419), .ZN(n370) );
  OAI21_X1 U22 ( .B1(n327), .B2(n385), .A(n417), .ZN(n369) );
  OAI21_X1 U23 ( .B1(n326), .B2(n386), .A(n416), .ZN(n367) );
  OAI21_X1 U24 ( .B1(n327), .B2(n387), .A(n415), .ZN(n365) );
  OAI21_X1 U25 ( .B1(n404), .B2(n326), .A(n431), .ZN(n383) );
  NAND2_X1 U26 ( .A1(flit_out_next[0]), .A2(n327), .ZN(n431) );
  OAI21_X1 U27 ( .B1(n403), .B2(n326), .A(n430), .ZN(n382) );
  NAND2_X1 U28 ( .A1(flit_out_next[1]), .A2(n327), .ZN(n430) );
  OAI21_X1 U29 ( .B1(n402), .B2(n326), .A(n429), .ZN(n381) );
  NAND2_X1 U30 ( .A1(flit_out_next[2]), .A2(n327), .ZN(n429) );
  OAI21_X1 U31 ( .B1(n401), .B2(n326), .A(n428), .ZN(n380) );
  NAND2_X1 U32 ( .A1(flit_out_next[3]), .A2(n326), .ZN(n428) );
  OAI21_X1 U33 ( .B1(n400), .B2(n326), .A(n427), .ZN(n379) );
  NAND2_X1 U34 ( .A1(flit_out_next[4]), .A2(n327), .ZN(n427) );
  OAI21_X1 U35 ( .B1(n399), .B2(n326), .A(n426), .ZN(n378) );
  NAND2_X1 U36 ( .A1(flit_out_next[5]), .A2(n327), .ZN(n426) );
  OAI21_X1 U37 ( .B1(n398), .B2(n327), .A(n425), .ZN(n377) );
  NAND2_X1 U38 ( .A1(flit_out_next[6]), .A2(n327), .ZN(n425) );
  OAI21_X1 U39 ( .B1(n397), .B2(n327), .A(n424), .ZN(n376) );
  NAND2_X1 U40 ( .A1(flit_out_next[7]), .A2(n327), .ZN(n424) );
  OAI21_X1 U41 ( .B1(n396), .B2(n327), .A(n423), .ZN(n375) );
  NAND2_X1 U42 ( .A1(flit_out_next[8]), .A2(n327), .ZN(n423) );
  OAI21_X1 U43 ( .B1(n395), .B2(n327), .A(n422), .ZN(n374) );
  NAND2_X1 U44 ( .A1(flit_out_next[9]), .A2(n327), .ZN(n422) );
  OAI21_X1 U45 ( .B1(n394), .B2(n326), .A(n421), .ZN(n373) );
  NAND2_X1 U46 ( .A1(flit_out_next[10]), .A2(n327), .ZN(n421) );
  OAI21_X1 U47 ( .B1(n393), .B2(n326), .A(n420), .ZN(n372) );
  NAND2_X1 U48 ( .A1(flit_out_next[11]), .A2(n327), .ZN(n420) );
  OAI21_X1 U49 ( .B1(n392), .B2(n326), .A(n419), .ZN(n371) );
  OAI21_X1 U50 ( .B1(n391), .B2(n326), .A(n417), .ZN(n368) );
  OAI21_X1 U51 ( .B1(n390), .B2(n326), .A(n416), .ZN(n366) );
  OAI21_X1 U52 ( .B1(n388), .B2(n326), .A(n415), .ZN(n364) );
  AND3_X1 U53 ( .A1(n313), .A2(n316), .A3(N58), .ZN(N_sw_arb_req) );
  AND3_X1 U54 ( .A1(n313), .A2(n389), .A3(N64), .ZN(W_sw_arb_req) );
  OR4_X1 U56 ( .A1(router_address_x[1]), .A2(n412), .A3(n413), .A4(n414), .ZN(
        n337) );
  INV_X1 U57 ( .A(flit_data[0]), .ZN(n342) );
  INV_X1 U59 ( .A(flit_data[1]), .ZN(n338) );
  NAND3_X1 U60 ( .A1(n337), .A2(n342), .A3(n338), .ZN(n349) );
  INV_X1 U62 ( .A(n349), .ZN(n328) );
  NAND2_X1 U63 ( .A1(n328), .A2(n324), .ZN(n346) );
  INV_X1 U64 ( .A(n346), .ZN(n363) );
  INV_X1 U65 ( .A(n432), .ZN(n332) );
  NAND2_X1 U66 ( .A1(next_hop[2]), .A2(n332), .ZN(n405) );
  NAND3_X1 U67 ( .A1(n319), .A2(state[0]), .A3(n320), .ZN(n341) );
  INV_X1 U68 ( .A(n341), .ZN(n345) );
  NAND2_X1 U71 ( .A1(next_hop[1]), .A2(n332), .ZN(n409) );
  NAND3_X1 U72 ( .A1(state[2]), .A2(n322), .A3(n321), .ZN(n329) );
  INV_X1 U74 ( .A(n329), .ZN(n344) );
  NAND3_X1 U76 ( .A1(n418), .A2(n326), .A3(n344), .ZN(n419) );
  AND3_X1 U77 ( .A1(N62), .A2(n418), .A3(n345), .ZN(E_sw_arb_req) );
  NOR4_X1 U78 ( .A1(sw_arb_port[0]), .A2(sw_arb_port[2]), .A3(n408), .A4(n341), 
        .ZN(S_sw_arb_req) );
  AOI21_X1 U80 ( .B1(n407), .B2(n361), .A(n329), .ZN(N77) );
  INV_X1 U81 ( .A(E_vc_arb_gnt), .ZN(n336) );
  NAND2_X1 U82 ( .A1(W_vc_arb_gnt), .A2(n336), .ZN(n335) );
  INV_X1 U83 ( .A(N_vc_arb_gnt), .ZN(n330) );
  OAI21_X1 U84 ( .B1(S_vc_arb_gnt), .B2(n335), .A(n330), .ZN(N55) );
  INV_X1 U85 ( .A(W_vc_arb_gnt), .ZN(n331) );
  INV_X1 U86 ( .A(S_vc_arb_gnt), .ZN(n334) );
  NAND4_X1 U87 ( .A1(n336), .A2(n331), .A3(n330), .A4(n334), .ZN(n333) );
  NAND2_X1 U88 ( .A1(n333), .A2(n332), .ZN(n362) );
  AOI21_X1 U89 ( .B1(n335), .B2(n334), .A(N_vc_arb_gnt), .ZN(N56) );
  NOR3_X1 U90 ( .A1(N_vc_arb_gnt), .A2(S_vc_arb_gnt), .A3(n336), .ZN(N57) );
  INV_X1 U91 ( .A(n337), .ZN(n339) );
  NAND4_X1 U92 ( .A1(n342), .A2(n339), .A3(n324), .A4(n338), .ZN(n340) );
  OAI21_X1 U93 ( .B1(n323), .B2(n341), .A(n340), .ZN(next_state[2]) );
  NAND2_X1 U94 ( .A1(flit_data[1]), .A2(n342), .ZN(n348) );
  INV_X1 U95 ( .A(fifo_empty), .ZN(n343) );
  NAND3_X1 U96 ( .A1(n344), .A2(n348), .A3(n343), .ZN(n347) );
  NAND2_X1 U98 ( .A1(n323), .A2(n345), .ZN(n352) );
  NAND4_X1 U99 ( .A1(n347), .A2(n432), .A3(n346), .A4(n352), .ZN(next_state[1]) );
  AOI21_X1 U100 ( .B1(state[0]), .B2(n348), .A(fifo_empty), .ZN(n350) );
  AOI22_X1 U101 ( .A1(n350), .A2(n322), .B1(n324), .B2(n349), .ZN(n351) );
  NAND3_X1 U102 ( .A1(n352), .A2(n362), .A3(n351), .ZN(next_state[0]) );
  NOR4_X1 U103 ( .A1(N_buff_count[3]), .A2(N_buff_count[2]), .A3(
        N_buff_count[1]), .A4(N_buff_count[0]), .ZN(n354) );
  NOR4_X1 U104 ( .A1(N_buff_count[7]), .A2(N_buff_count[6]), .A3(
        N_buff_count[5]), .A4(N_buff_count[4]), .ZN(n353) );
  NAND2_X1 U105 ( .A1(n354), .A2(n353), .ZN(N58) );
  NOR4_X1 U106 ( .A1(S_buff_count[3]), .A2(S_buff_count[2]), .A3(
        S_buff_count[1]), .A4(S_buff_count[0]), .ZN(n356) );
  NOR4_X1 U107 ( .A1(S_buff_count[7]), .A2(S_buff_count[6]), .A3(
        S_buff_count[5]), .A4(S_buff_count[4]), .ZN(n355) );
  NAND2_X1 U108 ( .A1(n356), .A2(n355), .ZN(N60) );
  NOR4_X1 U109 ( .A1(E_buff_count[3]), .A2(E_buff_count[2]), .A3(
        E_buff_count[1]), .A4(E_buff_count[0]), .ZN(n358) );
  NOR4_X1 U110 ( .A1(E_buff_count[7]), .A2(E_buff_count[6]), .A3(
        E_buff_count[5]), .A4(E_buff_count[4]), .ZN(n357) );
  NAND2_X1 U111 ( .A1(n358), .A2(n357), .ZN(N62) );
  NOR4_X1 U112 ( .A1(W_buff_count[3]), .A2(W_buff_count[2]), .A3(
        W_buff_count[1]), .A4(W_buff_count[0]), .ZN(n360) );
  NOR4_X1 U113 ( .A1(W_buff_count[7]), .A2(W_buff_count[6]), .A3(
        W_buff_count[5]), .A4(W_buff_count[4]), .ZN(n359) );
  NAND2_X1 U114 ( .A1(n360), .A2(n359), .ZN(N64) );
endmodule


module routing_table_0 ( router_address_x, router_address_y, flit_desn_x, 
        flit_desn_y, next_hop, read_request );
  input [2:0] router_address_x;
  input [2:0] router_address_y;
  input [2:0] flit_desn_x;
  input [2:0] flit_desn_y;
  output [2:0] next_hop;
  input read_request;
  wire   \U9/Z_0 , \U9/Z_1 , \U9/Z_2 , \gt_28/A[2] , \gt_28/A[1] ,
         \gt_28/A[0] , \gt_28/B[2] , \gt_28/B[1] , \gt_28/B[0] , \r303/A[2] ,
         \r303/A[1] , \r303/A[0] , \r303/B[2] , \r303/B[1] , \r303/B[0] , n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50;
  assign next_hop[0] = \U9/Z_0 ;
  assign next_hop[1] = \U9/Z_1 ;
  assign next_hop[2] = \U9/Z_2 ;
  assign \gt_28/A[2]  = flit_desn_x[2];
  assign \gt_28/A[1]  = flit_desn_x[1];
  assign \gt_28/A[0]  = flit_desn_x[0];
  assign \gt_28/B[2]  = router_address_x[2];
  assign \gt_28/B[1]  = router_address_x[1];
  assign \gt_28/B[0]  = router_address_x[0];
  assign \r303/A[2]  = flit_desn_y[2];
  assign \r303/A[1]  = flit_desn_y[1];
  assign \r303/A[0]  = flit_desn_y[0];
  assign \r303/B[2]  = router_address_y[2];
  assign \r303/B[1]  = router_address_y[1];
  assign \r303/B[0]  = router_address_y[0];

  OAI22_X2 U3 ( .A1(read_request), .A2(n14), .B1(n15), .B2(n47), .ZN(\U9/Z_0 )
         );
  INV_X2 U5 ( .A(\U9/Z_0 ), .ZN(n14) );
  OAI22_X2 U6 ( .A1(read_request), .A2(n18), .B1(n19), .B2(n47), .ZN(\U9/Z_1 )
         );
  INV_X2 U13 ( .A(\U9/Z_1 ), .ZN(n18) );
  OAI22_X2 U14 ( .A1(read_request), .A2(n29), .B1(n20), .B2(n47), .ZN(\U9/Z_2 ) );
  INV_X2 U19 ( .A(\U9/Z_2 ), .ZN(n29) );
  NAND3_X1 U30 ( .A1(n25), .A2(n50), .A3(\gt_28/A[1] ), .ZN(n22) );
  NAND3_X1 U31 ( .A1(n26), .A2(n27), .A3(n28), .ZN(n21) );
  XOR2_X1 U32 ( .A(n45), .B(\r303/B[0] ), .Z(n28) );
  XOR2_X1 U33 ( .A(\r303/A[1] ), .B(n42), .Z(n26) );
  INV_X1 U4 ( .A(read_request), .ZN(n47) );
  AOI21_X1 U7 ( .B1(n46), .B2(n43), .A(n16), .ZN(n15) );
  INV_X1 U8 ( .A(n17), .ZN(n46) );
  AOI21_X1 U9 ( .B1(n43), .B2(n17), .A(n16), .ZN(n19) );
  NOR2_X1 U10 ( .A1(\gt_28/B[0] ), .A2(n48), .ZN(n24) );
  INV_X1 U11 ( .A(n25), .ZN(n48) );
  NAND2_X1 U12 ( .A1(\gt_28/B[2] ), .A2(n49), .ZN(n25) );
  INV_X1 U15 ( .A(n21), .ZN(n43) );
  AND2_X1 U16 ( .A1(n20), .A2(n21), .ZN(n16) );
  OAI211_X1 U17 ( .C1(\gt_28/B[2] ), .C2(n49), .A(n22), .B(n23), .ZN(n17) );
  OAI211_X1 U18 ( .C1(\gt_28/A[1] ), .C2(n50), .A(\gt_28/A[0] ), .B(n24), .ZN(
        n23) );
  INV_X1 U20 ( .A(\gt_28/B[1] ), .ZN(n50) );
  AOI22_X1 U21 ( .A1(n41), .A2(\r303/A[2] ), .B1(n44), .B2(n27), .ZN(n20) );
  INV_X1 U22 ( .A(n30), .ZN(n44) );
  AOI22_X1 U23 ( .A1(n31), .A2(n26), .B1(\r303/A[1] ), .B2(n42), .ZN(n30) );
  NOR2_X1 U24 ( .A1(\r303/B[0] ), .A2(n45), .ZN(n31) );
  XOR2_X1 U25 ( .A(\r303/A[2] ), .B(n41), .Z(n27) );
  INV_X1 U26 ( .A(\r303/A[0] ), .ZN(n45) );
  INV_X1 U27 ( .A(\gt_28/A[2] ), .ZN(n49) );
  INV_X1 U28 ( .A(\r303/B[2] ), .ZN(n41) );
  INV_X1 U29 ( .A(\r303/B[1] ), .ZN(n42) );
endmodule


module node_controller_0 ( Clk, Rst, N_usage, S_usage, E_usage, W_usage, 
        rst_N_usage, rst_S_usage, rst_E_usage, rst_W_usage, flit_data, 
        fifo_full, fifo_empty, router_address_x, router_address_y, rd_en, 
        N_vc_arb_req, S_vc_arb_req, E_vc_arb_req, W_vc_arb_req, N_vc_arb_gnt, 
        S_vc_arb_gnt, E_vc_arb_gnt, W_vc_arb_gnt, dec_N_buff_count, 
        dec_S_buff_count, dec_E_buff_count, dec_W_buff_count, N_buff_count, 
        S_buff_count, E_buff_count, W_buff_count, N_sw_arb_req, S_sw_arb_req, 
        E_sw_arb_req, W_sw_arb_req, N_sw_arb_gnt, S_sw_arb_gnt, E_sw_arb_gnt, 
        W_sw_arb_gnt, flit_out );
  input [11:0] flit_data;
  input [2:0] router_address_x;
  input [2:0] router_address_y;
  input [7:0] N_buff_count;
  input [7:0] S_buff_count;
  input [7:0] E_buff_count;
  input [7:0] W_buff_count;
  output [11:0] flit_out;
  input Clk, Rst, N_usage, S_usage, E_usage, W_usage, fifo_full, fifo_empty,
         N_vc_arb_gnt, S_vc_arb_gnt, E_vc_arb_gnt, W_vc_arb_gnt, N_sw_arb_gnt,
         S_sw_arb_gnt, E_sw_arb_gnt, W_sw_arb_gnt;
  output rst_N_usage, rst_S_usage, rst_E_usage, rst_W_usage, rd_en,
         N_vc_arb_req, S_vc_arb_req, E_vc_arb_req, W_vc_arb_req,
         dec_N_buff_count, dec_S_buff_count, dec_E_buff_count,
         dec_W_buff_count, N_sw_arb_req, S_sw_arb_req, E_sw_arb_req,
         W_sw_arb_req;
  wire   n124, n125, n126, n179, n178, n177, n176, n175, n174, n173, n172,
         n171, n170, n169, n168, n182, n181, n180, n199, n198, n197,
         \U3/U1/DATA2_0 , \U3/U1/DATA2_1 , \U3/U1/DATA2_2 , \U3/U1/DATA2_3 ,
         \U3/U1/DATA2_4 , \U3/U1/DATA2_5 , \U3/U1/DATA2_6 , \U3/U1/DATA2_7 ,
         \U3/U1/DATA1_0 , \U3/U1/DATA1_1 , \U3/U1/DATA1_2 , \U3/U2/DATA1_0 ,
         \U3/U3/DATA2_0 , \U3/U3/DATA2_1 , \U3/U3/DATA2_2 , \U3/U3/DATA2_3 ,
         \U3/U3/DATA2_4 , \U3/U3/DATA2_5 , \U3/U3/DATA2_6 , \U3/U3/DATA2_7 ,
         \U3/U3/DATA1_0 , \U3/U3/DATA1_1 , \U3/U3/DATA1_2 , \U3/U4/DATA1_0 ,
         \U29/Z_0 , \U28/Z_0 , \U27/Z_0 , \U26/Z_0 , \U25/Z_0 , \U24/Z_0 ,
         \U23/Z_0 , \U22/Z_0 , \U21/Z_0 , \U16/Z_0 , \U15/Z_0 , \U14/Z_0 ,
         \U12/Z_0 , \gt_317/A[7] , \gt_317/A[6] , \gt_317/A[5] , \gt_317/A[4] ,
         \gt_317/A[3] , \gt_317/A[2] , \gt_317/A[1] , \gt_317/A[0] ,
         \gt_325/A[7] , \gt_325/A[6] , \gt_325/A[5] , \gt_325/A[4] ,
         \gt_325/A[3] , \gt_325/A[2] , \gt_325/A[1] , \gt_325/A[0] , n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16, n18, n19,
         n21, n22, n24, n25, n27, n31, n32, n33, n34, n35, n36, n38, n39, n40,
         n41, n42, n43, n45, n49, n50, n51, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n127, n128, n129, n130, n131, n132, n133, n134, n135, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364;
  assign \U3/U1/DATA2_0  = E_buff_count[0];
  assign \U3/U1/DATA2_1  = E_buff_count[1];
  assign \U3/U1/DATA2_2  = E_buff_count[2];
  assign \U3/U1/DATA2_3  = E_buff_count[3];
  assign \U3/U1/DATA2_4  = E_buff_count[4];
  assign \U3/U1/DATA2_5  = E_buff_count[5];
  assign \U3/U1/DATA2_6  = E_buff_count[6];
  assign \U3/U1/DATA2_7  = E_buff_count[7];
  assign \U3/U1/DATA1_0  = router_address_y[0];
  assign \U3/U1/DATA1_1  = router_address_y[1];
  assign \U3/U1/DATA1_2  = router_address_y[2];
  assign \U3/U2/DATA1_0  = flit_data[2];
  assign \U3/U3/DATA2_0  = W_buff_count[0];
  assign \U3/U3/DATA2_1  = W_buff_count[1];
  assign \U3/U3/DATA2_2  = W_buff_count[2];
  assign \U3/U3/DATA2_3  = W_buff_count[3];
  assign \U3/U3/DATA2_4  = W_buff_count[4];
  assign \U3/U3/DATA2_5  = W_buff_count[5];
  assign \U3/U3/DATA2_6  = W_buff_count[6];
  assign \U3/U3/DATA2_7  = W_buff_count[7];
  assign \U3/U3/DATA1_0  = router_address_x[0];
  assign \U3/U3/DATA1_1  = router_address_x[1];
  assign \U3/U3/DATA1_2  = router_address_x[2];
  assign \U3/U4/DATA1_0  = flit_data[5];
  assign rd_en = \U29/Z_0 ;
  assign N_vc_arb_req = \U28/Z_0 ;
  assign S_vc_arb_req = \U27/Z_0 ;
  assign E_vc_arb_req = \U26/Z_0 ;
  assign W_vc_arb_req = \U25/Z_0 ;
  assign N_sw_arb_req = \U24/Z_0 ;
  assign S_sw_arb_req = \U23/Z_0 ;
  assign E_sw_arb_req = \U22/Z_0 ;
  assign W_sw_arb_req = \U21/Z_0 ;
  assign \gt_317/A[7]  = N_buff_count[7];
  assign \gt_317/A[6]  = N_buff_count[6];
  assign \gt_317/A[5]  = N_buff_count[5];
  assign \gt_317/A[4]  = N_buff_count[4];
  assign \gt_317/A[3]  = N_buff_count[3];
  assign \gt_317/A[2]  = N_buff_count[2];
  assign \gt_317/A[1]  = N_buff_count[1];
  assign \gt_317/A[0]  = N_buff_count[0];
  assign \gt_325/A[7]  = S_buff_count[7];
  assign \gt_325/A[6]  = S_buff_count[6];
  assign \gt_325/A[5]  = S_buff_count[5];
  assign \gt_325/A[4]  = S_buff_count[4];
  assign \gt_325/A[3]  = S_buff_count[3];
  assign \gt_325/A[2]  = S_buff_count[2];
  assign \gt_325/A[1]  = S_buff_count[1];
  assign \gt_325/A[0]  = S_buff_count[0];

  DFFR_X1 \state_reg[1]  ( .D(\U15/Z_0 ), .CK(Clk), .RN(n319), .Q(n338), .QN(
        n128) );
  DFFR_X1 \next_hop_reg[0]  ( .D(n197), .CK(Clk), .RN(n318), .QN(n132) );
  DFFR_X1 \sw_arb_port_reg[2]  ( .D(n182), .CK(Clk), .RN(n318), .QN(n133) );
  DFFR_X1 \sw_arb_port_reg[1]  ( .D(n181), .CK(Clk), .RN(n319), .Q(n313), .QN(
        n99) );
  DFFR_X1 \sw_arb_port_reg[0]  ( .D(n180), .CK(Clk), .RN(n319), .Q(n314), .QN(
        n134) );
  DFF_X1 N_usage_out_reg ( .D(n123), .CK(Clk), .Q(rst_N_usage), .QN(n100) );
  DFF_X1 dec_N_buff_count_reg ( .D(n122), .CK(Clk), .Q(dec_N_buff_count), .QN(
        n97) );
  DFF_X1 W_usage_out_reg ( .D(n121), .CK(Clk), .Q(rst_W_usage), .QN(n101) );
  DFF_X1 dec_W_buff_count_reg ( .D(n120), .CK(Clk), .Q(dec_W_buff_count), .QN(
        n96) );
  DFF_X1 S_usage_out_reg ( .D(n119), .CK(Clk), .Q(rst_S_usage), .QN(n102) );
  DFF_X1 dec_S_buff_count_reg ( .D(n118), .CK(Clk), .Q(dec_S_buff_count), .QN(
        n95) );
  DFF_X1 E_usage_out_reg ( .D(n117), .CK(Clk), .Q(rst_E_usage), .QN(n103) );
  DFF_X1 dec_E_buff_count_reg ( .D(n116), .CK(Clk), .Q(dec_E_buff_count), .QN(
        n94) );
  DLH_X1 \flit_out_next_reg[11]  ( .G(\U12/Z_0 ), .D(flit_data[11]), .Q(n179)
         );
  DFF_X1 \flit_out_reg[11]  ( .D(n115), .CK(Clk), .Q(flit_out[11]), .QN(n93)
         );
  DLH_X1 \flit_out_next_reg[10]  ( .G(\U12/Z_0 ), .D(flit_data[10]), .Q(n178)
         );
  DFF_X1 \flit_out_reg[10]  ( .D(n114), .CK(Clk), .Q(flit_out[10]), .QN(n92)
         );
  DLH_X1 \flit_out_next_reg[9]  ( .G(\U12/Z_0 ), .D(flit_data[9]), .Q(n177) );
  DFF_X1 \flit_out_reg[9]  ( .D(n113), .CK(Clk), .Q(flit_out[9]), .QN(n91) );
  DLH_X1 \flit_out_next_reg[8]  ( .G(\U12/Z_0 ), .D(flit_data[8]), .Q(n176) );
  DFF_X1 \flit_out_reg[8]  ( .D(n112), .CK(Clk), .Q(flit_out[8]), .QN(n90) );
  DLH_X1 \flit_out_next_reg[7]  ( .G(\U12/Z_0 ), .D(flit_data[7]), .Q(n175) );
  DFF_X1 \flit_out_reg[7]  ( .D(n111), .CK(Clk), .Q(flit_out[7]), .QN(n89) );
  DLH_X1 \flit_out_next_reg[6]  ( .G(\U12/Z_0 ), .D(flit_data[6]), .Q(n174) );
  DFF_X1 \flit_out_reg[6]  ( .D(n110), .CK(Clk), .Q(flit_out[6]), .QN(n88) );
  DLH_X1 \flit_out_next_reg[5]  ( .G(\U12/Z_0 ), .D(\U3/U4/DATA1_0 ), .Q(n173)
         );
  DFF_X1 \flit_out_reg[5]  ( .D(n109), .CK(Clk), .Q(flit_out[5]), .QN(n87) );
  DLH_X1 \flit_out_next_reg[4]  ( .G(\U12/Z_0 ), .D(flit_data[4]), .Q(n172) );
  DFF_X1 \flit_out_reg[4]  ( .D(n108), .CK(Clk), .Q(flit_out[4]), .QN(n86) );
  DLH_X1 \flit_out_next_reg[3]  ( .G(\U12/Z_0 ), .D(flit_data[3]), .Q(n171) );
  DFF_X1 \flit_out_reg[3]  ( .D(n107), .CK(Clk), .Q(flit_out[3]), .QN(n85) );
  DLH_X1 \flit_out_next_reg[2]  ( .G(\U12/Z_0 ), .D(\U3/U2/DATA1_0 ), .Q(n170)
         );
  DFF_X1 \flit_out_reg[2]  ( .D(n106), .CK(Clk), .Q(flit_out[2]), .QN(n84) );
  DLH_X1 \flit_out_next_reg[1]  ( .G(\U12/Z_0 ), .D(flit_data[1]), .Q(n169) );
  DFF_X1 \flit_out_reg[1]  ( .D(n105), .CK(Clk), .Q(flit_out[1]), .QN(n83) );
  DLH_X1 \flit_out_next_reg[0]  ( .G(\U12/Z_0 ), .D(flit_data[0]), .Q(n168) );
  DFF_X1 \flit_out_reg[0]  ( .D(n104), .CK(Clk), .Q(flit_out[0]), .QN(n82) );
  NAND3_X1 U29 ( .A1(n14), .A2(n318), .A3(n363), .ZN(n13) );
  NAND3_X1 U32 ( .A1(n134), .A2(n313), .A3(n18), .ZN(n16) );
  NAND3_X1 U35 ( .A1(n314), .A2(n313), .A3(n18), .ZN(n19) );
  NAND3_X1 U38 ( .A1(n99), .A2(n314), .A3(n18), .ZN(n21) );
  NAND3_X1 U42 ( .A1(n25), .A2(n344), .A3(n315), .ZN(n24) );
  NOR4_X4 U50 ( .A1(n132), .A2(N_usage), .A3(n31), .A4(n32), .ZN(\U28/Z_0 ) );
  NOR4_X4 U51 ( .A1(n33), .A2(n31), .A3(n131), .A4(S_usage), .ZN(\U27/Z_0 ) );
  NOR4_X4 U53 ( .A1(n34), .A2(n31), .A3(n130), .A4(E_usage), .ZN(\U26/Z_0 ) );
  NOR4_X4 U55 ( .A1(n35), .A2(n36), .A3(n132), .A4(W_usage), .ZN(\U25/Z_0 ) );
  routing_table_0 router0 ( .router_address_x({\U3/U3/DATA1_2 , 
        \U3/U3/DATA1_1 , \U3/U3/DATA1_0 }), .router_address_y({\U3/U1/DATA1_2 , 
        \U3/U1/DATA1_1 , \U3/U1/DATA1_0 }), .flit_desn_x({1'b0, 1'b0, 
        \U3/U4/DATA1_0 }), .flit_desn_y({1'b0, 1'b0, \U3/U4/DATA1_0 }), 
        .next_hop({n199, n198, n197}), .read_request(n127) );
  DFFR_X1 \next_hop_reg[2]  ( .D(n199), .CK(Clk), .RN(n319), .QN(n130) );
  DFFR_X1 \next_hop_reg[1]  ( .D(n198), .CK(Clk), .RN(n318), .QN(n131) );
  DFFR_X1 \state_reg[2]  ( .D(\U14/Z_0 ), .CK(Clk), .RN(n319), .Q(n356), .QN(
        n98) );
  DFFR_X1 \state_reg[0]  ( .D(\U16/Z_0 ), .CK(Clk), .RN(n319), .Q(n357), .QN(
        n129) );
  DLL_X1 \sw_arb_port_next_reg[1]  ( .D(n125), .GN(n135), .Q(n181) );
  DLL_X1 \sw_arb_port_next_reg[0]  ( .D(n126), .GN(n135), .Q(n180) );
  DLL_X1 \sw_arb_port_next_reg[2]  ( .D(n124), .GN(n135), .Q(n182) );
  NAND2_X1 U3 ( .A1(n316), .A2(n352), .ZN(n312) );
  INV_X1 U4 ( .A(n345), .ZN(n315) );
  NAND3_X2 U5 ( .A1(n129), .A2(n98), .A3(n338), .ZN(n31) );
  BUF_X1 U6 ( .A(Rst), .Z(n318) );
  BUF_X1 U7 ( .A(Rst), .Z(n319) );
  INV_X1 U8 ( .A(n22), .ZN(n363) );
  NOR4_X1 U9 ( .A1(S_sw_arb_gnt), .A2(W_sw_arb_gnt), .A3(N_sw_arb_gnt), .A4(
        E_sw_arb_gnt), .ZN(n316) );
  NOR3_X1 U10 ( .A1(n25), .A2(S_vc_arb_gnt), .A3(N_vc_arb_gnt), .ZN(n124) );
  NOR2_X1 U11 ( .A1(N_vc_arb_gnt), .A2(n27), .ZN(n125) );
  AOI21_X1 U12 ( .B1(n315), .B2(n25), .A(S_vc_arb_gnt), .ZN(n27) );
  INV_X1 U13 ( .A(E_vc_arb_gnt), .ZN(n25) );
  NAND2_X1 U14 ( .A1(n343), .A2(n24), .ZN(n126) );
  NOR4_X1 U15 ( .A1(\gt_317/A[7] ), .A2(\gt_317/A[6] ), .A3(\gt_317/A[5] ), 
        .A4(\gt_317/A[4] ), .ZN(n40) );
  INV_X1 U16 ( .A(n14), .ZN(n364) );
  NOR2_X1 U17 ( .A1(n81), .A2(n133), .ZN(n14) );
  OAI21_X1 U18 ( .B1(n319), .B2(n103), .A(n13), .ZN(n117) );
  OAI21_X1 U19 ( .B1(n318), .B2(n102), .A(n16), .ZN(n119) );
  OAI21_X1 U20 ( .B1(n319), .B2(n101), .A(n19), .ZN(n121) );
  OAI21_X1 U21 ( .B1(n318), .B2(n100), .A(n21), .ZN(n123) );
  OAI21_X1 U22 ( .B1(n82), .B2(n318), .A(n1), .ZN(n104) );
  NAND2_X1 U23 ( .A1(n168), .A2(n318), .ZN(n1) );
  OAI21_X1 U24 ( .B1(n87), .B2(n318), .A(n6), .ZN(n109) );
  NAND2_X1 U25 ( .A1(n173), .A2(n319), .ZN(n6) );
  OAI21_X1 U26 ( .B1(n88), .B2(n318), .A(n7), .ZN(n110) );
  NAND2_X1 U27 ( .A1(n174), .A2(n319), .ZN(n7) );
  OAI21_X1 U28 ( .B1(n89), .B2(n318), .A(n8), .ZN(n111) );
  NAND2_X1 U30 ( .A1(n175), .A2(n319), .ZN(n8) );
  OAI21_X1 U31 ( .B1(n90), .B2(n318), .A(n9), .ZN(n112) );
  NAND2_X1 U33 ( .A1(n176), .A2(n319), .ZN(n9) );
  OAI21_X1 U34 ( .B1(n91), .B2(n318), .A(n10), .ZN(n113) );
  NAND2_X1 U36 ( .A1(n177), .A2(n319), .ZN(n10) );
  OAI21_X1 U37 ( .B1(n92), .B2(n318), .A(n11), .ZN(n114) );
  NAND2_X1 U39 ( .A1(n178), .A2(n319), .ZN(n11) );
  OAI21_X1 U40 ( .B1(n93), .B2(n318), .A(n12), .ZN(n115) );
  NAND2_X1 U41 ( .A1(n179), .A2(n319), .ZN(n12) );
  OAI21_X1 U43 ( .B1(n94), .B2(n318), .A(n13), .ZN(n116) );
  OAI21_X1 U44 ( .B1(n95), .B2(n318), .A(n16), .ZN(n118) );
  OAI21_X1 U45 ( .B1(n96), .B2(n318), .A(n19), .ZN(n120) );
  OAI21_X1 U46 ( .B1(n97), .B2(n318), .A(n21), .ZN(n122) );
  OAI21_X1 U47 ( .B1(n83), .B2(n319), .A(n2), .ZN(n105) );
  NAND2_X1 U48 ( .A1(n169), .A2(n319), .ZN(n2) );
  OAI21_X1 U49 ( .B1(n84), .B2(n319), .A(n3), .ZN(n106) );
  NAND2_X1 U52 ( .A1(n170), .A2(n319), .ZN(n3) );
  OAI21_X1 U54 ( .B1(n85), .B2(n319), .A(n4), .ZN(n107) );
  NAND2_X1 U56 ( .A1(n171), .A2(Rst), .ZN(n4) );
  OAI21_X1 U57 ( .B1(n86), .B2(n319), .A(n5), .ZN(n108) );
  NAND2_X1 U58 ( .A1(n172), .A2(n319), .ZN(n5) );
  NAND2_X1 U59 ( .A1(n132), .A2(n131), .ZN(n34) );
  NAND2_X1 U60 ( .A1(n132), .A2(n130), .ZN(n33) );
  NAND2_X1 U61 ( .A1(n99), .A2(n134), .ZN(n81) );
  AND3_X1 U62 ( .A1(n363), .A2(Rst), .A3(n133), .ZN(n18) );
  AOI211_X1 U63 ( .C1(n49), .C2(n50), .A(n43), .B(n134), .ZN(\U21/Z_0 ) );
  NOR3_X1 U64 ( .A1(\U3/U3/DATA2_5 ), .A2(\U3/U3/DATA2_7 ), .A3(
        \U3/U3/DATA2_6 ), .ZN(n50) );
  NOR3_X1 U65 ( .A1(n51), .A2(\U3/U3/DATA2_4 ), .A3(\U3/U3/DATA2_3 ), .ZN(n49)
         );
  AOI211_X1 U66 ( .C1(n41), .C2(n42), .A(n43), .B(n314), .ZN(\U23/Z_0 ) );
  NOR4_X1 U67 ( .A1(\gt_325/A[3] ), .A2(\gt_325/A[2] ), .A3(\gt_325/A[1] ), 
        .A4(\gt_325/A[0] ), .ZN(n41) );
  NOR4_X1 U68 ( .A1(\gt_325/A[7] ), .A2(\gt_325/A[6] ), .A3(\gt_325/A[5] ), 
        .A4(\gt_325/A[4] ), .ZN(n42) );
  AND3_X1 U69 ( .A1(n333), .A2(n332), .A3(n331), .ZN(n317) );
  NOR3_X1 U70 ( .A1(\U3/U1/DATA2_5 ), .A2(\U3/U1/DATA2_7 ), .A3(
        \U3/U1/DATA2_6 ), .ZN(n45) );
  AOI211_X1 U71 ( .C1(n39), .C2(n40), .A(n313), .B(n134), .ZN(n38) );
  NOR4_X1 U72 ( .A1(\gt_317/A[3] ), .A2(\gt_317/A[2] ), .A3(\gt_317/A[1] ), 
        .A4(\gt_317/A[0] ), .ZN(n39) );
  NOR2_X1 U73 ( .A1(n80), .A2(n22), .ZN(\U12/Z_0 ) );
  AOI21_X1 U74 ( .B1(n133), .B2(n81), .A(n14), .ZN(n80) );
  NAND3_X1 U75 ( .A1(n98), .A2(n357), .A3(n338), .ZN(n349) );
  INV_X1 U76 ( .A(n349), .ZN(n352) );
  OAI21_X1 U77 ( .B1(\U3/U3/DATA2_1 ), .B2(\U3/U3/DATA2_2 ), .A(n352), .ZN(
        n326) );
  INV_X1 U78 ( .A(flit_data[1]), .ZN(n321) );
  NOR3_X1 U79 ( .A1(flit_data[0]), .A2(n356), .A3(n338), .ZN(n320) );
  NAND3_X1 U80 ( .A1(n321), .A2(n357), .A3(n320), .ZN(n348) );
  INV_X1 U81 ( .A(n348), .ZN(n336) );
  OAI21_X1 U82 ( .B1(\U3/U3/DATA1_1 ), .B2(\U3/U3/DATA1_2 ), .A(n336), .ZN(
        n325) );
  INV_X1 U83 ( .A(\U3/U4/DATA1_0 ), .ZN(n323) );
  AOI22_X1 U84 ( .A1(\U3/U3/DATA2_0 ), .A2(n352), .B1(\U3/U3/DATA1_0 ), .B2(
        n336), .ZN(n327) );
  INV_X1 U85 ( .A(n327), .ZN(n322) );
  OAI21_X1 U86 ( .B1(n348), .B2(n323), .A(n322), .ZN(n324) );
  NAND3_X1 U87 ( .A1(n326), .A2(n325), .A3(n324), .ZN(n51) );
  AOI22_X1 U88 ( .A1(\U3/U1/DATA2_0 ), .A2(n352), .B1(\U3/U1/DATA1_0 ), .B2(
        n336), .ZN(n328) );
  AOI22_X1 U89 ( .A1(n327), .A2(\U3/U4/DATA1_0 ), .B1(n328), .B2(
        \U3/U2/DATA1_0 ), .ZN(n335) );
  OAI21_X1 U90 ( .B1(\U3/U1/DATA2_1 ), .B2(\U3/U1/DATA2_2 ), .A(n352), .ZN(
        n333) );
  OAI21_X1 U91 ( .B1(\U3/U1/DATA1_1 ), .B2(\U3/U1/DATA1_2 ), .A(n336), .ZN(
        n332) );
  INV_X1 U92 ( .A(\U3/U2/DATA1_0 ), .ZN(n330) );
  INV_X1 U93 ( .A(n328), .ZN(n329) );
  OAI21_X1 U94 ( .B1(n348), .B2(n330), .A(n329), .ZN(n331) );
  INV_X1 U95 ( .A(n51), .ZN(n334) );
  OAI211_X1 U96 ( .C1(n335), .C2(n348), .A(n317), .B(n334), .ZN(n355) );
  NAND2_X1 U97 ( .A1(n336), .A2(n355), .ZN(n353) );
  INV_X1 U98 ( .A(n353), .ZN(n127) );
  NAND2_X1 U99 ( .A1(n128), .A2(n129), .ZN(n342) );
  INV_X1 U100 ( .A(n342), .ZN(n337) );
  NAND2_X1 U101 ( .A1(n337), .A2(n356), .ZN(n22) );
  NAND3_X1 U102 ( .A1(n313), .A2(n133), .A3(n352), .ZN(n43) );
  NAND2_X1 U103 ( .A1(n131), .A2(n130), .ZN(n32) );
  INV_X1 U104 ( .A(n31), .ZN(n346) );
  INV_X1 U105 ( .A(n32), .ZN(n339) );
  NAND2_X1 U106 ( .A1(n346), .A2(n339), .ZN(n35) );
  INV_X1 U107 ( .A(N_usage), .ZN(n36) );
  NAND2_X1 U108 ( .A1(n45), .A2(n317), .ZN(n340) );
  NOR3_X1 U109 ( .A1(n340), .A2(\U3/U1/DATA2_4 ), .A3(\U3/U1/DATA2_3 ), .ZN(
        n341) );
  NOR3_X1 U110 ( .A1(n364), .A2(n341), .A3(n349), .ZN(\U22/Z_0 ) );
  AND3_X1 U111 ( .A1(n38), .A2(n133), .A3(n352), .ZN(\U24/Z_0 ) );
  NOR3_X1 U112 ( .A1(n342), .A2(fifo_empty), .A3(n356), .ZN(\U29/Z_0 ) );
  INV_X1 U113 ( .A(W_vc_arb_gnt), .ZN(n345) );
  INV_X1 U114 ( .A(S_vc_arb_gnt), .ZN(n344) );
  INV_X1 U115 ( .A(N_vc_arb_gnt), .ZN(n343) );
  NAND4_X1 U116 ( .A1(n345), .A2(n25), .A3(n344), .A4(n343), .ZN(n347) );
  NAND2_X1 U117 ( .A1(n347), .A2(n346), .ZN(n135) );
  OAI22_X1 U118 ( .A1(n316), .A2(n349), .B1(n348), .B2(n355), .ZN(\U14/Z_0 )
         );
  INV_X1 U119 ( .A(flit_data[0]), .ZN(n350) );
  NAND2_X1 U120 ( .A1(flit_data[1]), .A2(n350), .ZN(n358) );
  INV_X1 U121 ( .A(fifo_empty), .ZN(n351) );
  NAND3_X1 U122 ( .A1(n358), .A2(n363), .A3(n351), .ZN(n354) );
  NAND2_X1 U123 ( .A1(n316), .A2(n352), .ZN(n361) );
  NAND4_X1 U124 ( .A1(n361), .A2(n31), .A3(n353), .A4(n354), .ZN(\U15/Z_0 ) );
  NOR3_X1 U125 ( .A1(n129), .A2(n356), .A3(n355), .ZN(n360) );
  AOI21_X1 U126 ( .B1(n358), .B2(n357), .A(fifo_empty), .ZN(n359) );
  OAI21_X1 U127 ( .B1(n360), .B2(n359), .A(n128), .ZN(n362) );
  NAND3_X1 U128 ( .A1(n312), .A2(n362), .A3(n135), .ZN(\U16/Z_0 ) );
endmodule


module top_router ( router_address_x, router_address_y, i_out0, i_out1, n_in, 
        n_out0, n_out1, n_vc_in, s_in, s_out0, s_out1, s_vc_in, i_in, i_vc_in, 
        e_in, e_out0, e_out1, e_vc_in, w_in, w_out0, w_out1, w_vc_in, Clk, Rst
 );
  input [2:0] router_address_x;
  input [2:0] router_address_y;
  output [11:0] i_out0;
  output [11:0] i_out1;
  input [11:0] n_in;
  output [11:0] n_out0;
  output [11:0] n_out1;
  input [0:0] n_vc_in;
  input [11:0] s_in;
  output [11:0] s_out0;
  output [11:0] s_out1;
  input [0:0] s_vc_in;
  input [11:0] i_in;
  input [0:0] i_vc_in;
  input [11:0] e_in;
  output [11:0] e_out0;
  output [11:0] e_out1;
  input [0:0] e_vc_in;
  input [11:0] w_in;
  output [11:0] w_out0;
  output [11:0] w_out1;
  input [0:0] w_vc_in;
  input Clk, Rst;
  wire   n80, n77, n74, n71, n68, n94, n91, n88, n85, n82, n110, n107, n104,
         n101, n98, n124, n121, n118, n115, n112, n140, n137, n134, n131, n128,
         n154, n151, n148, n145, n142, n170, n167, n164, n161, n158, n184,
         n181, n178, n175, n172, n200, n197, n194, n191, n188, n214, n211,
         n208, n205, n202, n230, n227, n224, n221, n218, n244, n241, n238,
         n235, n232, n260, n257, n254, n251, n248, n274, n271, n268, n265,
         n262, n290, n287, n284, n281, n278, n304, n301, n298, n295, n292,
         n330, n329, n328, n327, n326, n325, n324, n323, n322, n321, n320,
         n319, n318, n317, n316, n315, n314, n313, n312, n311, n310, n309,
         n308, n307, n332, n331, n334, n333, n358, n357, n356, n355, n354,
         n353, n352, n351, n350, n349, n348, n347, n346, n345, n344, n343,
         n342, n341, n340, n339, n338, n337, n336, n335, n360, n359, n362,
         n361, n386, n385, n384, n383, n382, n381, n380, n379, n378, n377,
         n376, n375, n374, n373, n372, n371, n370, n369, n368, n367, n366,
         n365, n364, n363, n388, n387, n390, n389, n414, n413, n412, n411,
         n410, n409, n408, n407, n406, n405, n404, n403, n402, n401, n400,
         n399, n398, n397, n396, n395, n394, n393, n392, n391, n416, n415,
         n418, n417, n442, n441, n440, n439, n438, n437, n436, n435, n434,
         n433, n432, n431, n430, n429, n428, n427, n426, n425, n424, n423,
         n422, n421, n420, n419, n444, n443, n446, n445, n450, n456, n465,
         n471, n480, n486, n495, n501, n583, n582, n581, n580, n588, n587,
         n586, n585, n609, n608, n607, n606, n614, n613, n612, n611, n635,
         n634, n633, n632, n640, n639, n638, n637, n661, n660, n659, n658,
         n666, n665, n664, n663, n728, n727, n726, n725, n724, n723, n722,
         n721, n716, n715, n714, n713, n712, n711, n710, n709, n734, n733,
         n754, n753, n752, n751, n750, n749, n748, n747, n742, n741, n740,
         n739, n738, n737, n736, n735, n760, n759, n780, n779, n778, n777,
         n776, n775, n774, n773, n768, n767, n766, n765, n764, n763, n762,
         n761, n786, n785, n806, n805, n804, n803, n802, n801, n800, n799,
         n794, n793, n792, n791, n790, n789, n788, n787, n812, n811, n832,
         n831, n830, n829, n828, n827, n826, n825, n820, n819, n818, n817,
         n816, n815, n814, n813, n838, n837, n840, n839, n842, n841, n844,
         n843, n846, n845, n848, n847, n862, n861, n859, n858, n856, n855,
         n853, n852, n850, n849, n877, n876, n874, n873, n871, n870, n868,
         n867, n865, n864, n892, n891, n889, n888, n886, n885, n883, n882,
         n880, n879, n907, n906, n904, n903, n901, n900, n898, n897, n895,
         n894, n922, n921, n919, n918, n916, n915, n913, n912, n910, n909,
         n937, n936, n934, n933, n931, n930, n928, n927, n925, n924, n952,
         n951, n949, n948, n946, n945, n943, n942, n940, n939, n967, n966,
         n964, n963, n961, n960, n958, n957, n955, n954,
         \sub_408_aco/carry[1] , \sub_408_aco/carry[2] ,
         \sub_408_aco/carry[3] , \sub_408_aco/carry[4] ,
         \sub_408_aco/carry[5] , \sub_408_aco/carry[6] ,
         \sub_408_aco/carry[7] , \sub_408_aco/DIFF[0] , \sub_408_aco/DIFF[1] ,
         \sub_408_aco/DIFF[2] , \sub_408_aco/DIFF[3] , \sub_408_aco/DIFF[4] ,
         \sub_408_aco/DIFF[5] , \sub_408_aco/DIFF[6] , \sub_408_aco/DIFF[7] ,
         \sub_408_aco/A[0] , \sub_408_aco/A[1] , \sub_408_aco/A[2] ,
         \sub_408_aco/A[3] , \sub_408_aco/A[4] , \sub_408_aco/A[5] ,
         \sub_408_aco/A[6] , \sub_408_aco/A[7] , \sub_402_aco/carry[1] ,
         \sub_402_aco/carry[2] , \sub_402_aco/carry[3] ,
         \sub_402_aco/carry[4] , \sub_402_aco/carry[5] ,
         \sub_402_aco/carry[6] , \sub_402_aco/carry[7] , \sub_402_aco/DIFF[0] ,
         \sub_402_aco/DIFF[1] , \sub_402_aco/DIFF[2] , \sub_402_aco/DIFF[3] ,
         \sub_402_aco/DIFF[4] , \sub_402_aco/DIFF[5] , \sub_402_aco/DIFF[6] ,
         \sub_402_aco/DIFF[7] , \sub_402_aco/A[0] , \sub_402_aco/A[1] ,
         \sub_402_aco/A[2] , \sub_402_aco/A[3] , \sub_402_aco/A[4] ,
         \sub_402_aco/A[5] , \sub_402_aco/A[6] , \sub_402_aco/A[7] ,
         \sub_395_aco/carry[1] , \sub_395_aco/carry[2] ,
         \sub_395_aco/carry[3] , \sub_395_aco/carry[4] ,
         \sub_395_aco/carry[5] , \sub_395_aco/carry[6] ,
         \sub_395_aco/carry[7] , \sub_395_aco/DIFF[0] , \sub_395_aco/DIFF[1] ,
         \sub_395_aco/DIFF[2] , \sub_395_aco/DIFF[3] , \sub_395_aco/DIFF[4] ,
         \sub_395_aco/DIFF[5] , \sub_395_aco/DIFF[6] , \sub_395_aco/DIFF[7] ,
         \sub_395_aco/A[0] , \sub_395_aco/A[1] , \sub_395_aco/A[2] ,
         \sub_395_aco/A[3] , \sub_395_aco/A[4] , \sub_395_aco/A[5] ,
         \sub_395_aco/A[6] , \sub_395_aco/A[7] , \sub_389_aco/carry[1] ,
         \sub_389_aco/carry[2] , \sub_389_aco/carry[3] ,
         \sub_389_aco/carry[4] , \sub_389_aco/carry[5] ,
         \sub_389_aco/carry[6] , \sub_389_aco/carry[7] , \sub_389_aco/DIFF[0] ,
         \sub_389_aco/DIFF[1] , \sub_389_aco/DIFF[2] , \sub_389_aco/DIFF[3] ,
         \sub_389_aco/DIFF[4] , \sub_389_aco/DIFF[5] , \sub_389_aco/DIFF[6] ,
         \sub_389_aco/DIFF[7] , \sub_389_aco/A[0] , \sub_389_aco/A[1] ,
         \sub_389_aco/A[2] , \sub_389_aco/A[3] , \sub_389_aco/A[4] ,
         \sub_389_aco/A[5] , \sub_389_aco/A[6] , \sub_389_aco/A[7] ,
         \sub_382_aco/carry[1] , \sub_382_aco/carry[2] ,
         \sub_382_aco/carry[3] , \sub_382_aco/carry[4] ,
         \sub_382_aco/carry[5] , \sub_382_aco/carry[6] ,
         \sub_382_aco/carry[7] , \sub_382_aco/DIFF[0] , \sub_382_aco/DIFF[1] ,
         \sub_382_aco/DIFF[2] , \sub_382_aco/DIFF[3] , \sub_382_aco/DIFF[4] ,
         \sub_382_aco/DIFF[5] , \sub_382_aco/DIFF[6] , \sub_382_aco/DIFF[7] ,
         \sub_382_aco/A[0] , \sub_382_aco/A[1] , \sub_382_aco/A[2] ,
         \sub_382_aco/A[3] , \sub_382_aco/A[4] , \sub_382_aco/A[5] ,
         \sub_382_aco/A[6] , \sub_382_aco/A[7] , \sub_376_aco/carry[1] ,
         \sub_376_aco/carry[2] , \sub_376_aco/carry[3] ,
         \sub_376_aco/carry[4] , \sub_376_aco/carry[5] ,
         \sub_376_aco/carry[6] , \sub_376_aco/carry[7] , \sub_376_aco/DIFF[0] ,
         \sub_376_aco/DIFF[1] , \sub_376_aco/DIFF[2] , \sub_376_aco/DIFF[3] ,
         \sub_376_aco/DIFF[4] , \sub_376_aco/DIFF[5] , \sub_376_aco/DIFF[6] ,
         \sub_376_aco/DIFF[7] , \sub_376_aco/A[0] , \sub_376_aco/A[1] ,
         \sub_376_aco/A[2] , \sub_376_aco/A[3] , \sub_376_aco/A[4] ,
         \sub_376_aco/A[5] , \sub_376_aco/A[6] , \sub_376_aco/A[7] ,
         \sub_368_aco/carry[1] , \sub_368_aco/carry[2] ,
         \sub_368_aco/carry[3] , \sub_368_aco/carry[4] ,
         \sub_368_aco/carry[5] , \sub_368_aco/carry[6] ,
         \sub_368_aco/carry[7] , \sub_368_aco/DIFF[0] , \sub_368_aco/DIFF[1] ,
         \sub_368_aco/DIFF[2] , \sub_368_aco/DIFF[3] , \sub_368_aco/DIFF[4] ,
         \sub_368_aco/DIFF[5] , \sub_368_aco/DIFF[6] , \sub_368_aco/DIFF[7] ,
         \sub_368_aco/A[0] , \sub_368_aco/A[1] , \sub_368_aco/A[2] ,
         \sub_368_aco/A[3] , \sub_368_aco/A[4] , \sub_368_aco/A[5] ,
         \sub_368_aco/A[6] , \sub_368_aco/A[7] , \sub_362_aco/carry[1] ,
         \sub_362_aco/carry[2] , \sub_362_aco/carry[3] ,
         \sub_362_aco/carry[4] , \sub_362_aco/carry[5] ,
         \sub_362_aco/carry[6] , \sub_362_aco/carry[7] , \sub_362_aco/DIFF[0] ,
         \sub_362_aco/DIFF[1] , \sub_362_aco/DIFF[2] , \sub_362_aco/DIFF[3] ,
         \sub_362_aco/DIFF[4] , \sub_362_aco/DIFF[5] , \sub_362_aco/DIFF[6] ,
         \sub_362_aco/DIFF[7] , \sub_362_aco/A[0] , \sub_362_aco/A[1] ,
         \sub_362_aco/A[2] , \sub_362_aco/A[3] , \sub_362_aco/A[4] ,
         \sub_362_aco/A[5] , \sub_362_aco/A[6] , \sub_362_aco/A[7] , n1176,
         n1181, n1184, n1189, n1192, n1197, n1200, n1205, n1208, n1213, n1215,
         n1217, n1219, n1221, n1223, n1225, n1227, n1229, n1231, n1233, n1235,
         n1237, n1239, n1241, n1243, n1245, n1247, n1249, n1251, n1253, n1255,
         n1257, n1259, n1261, n1263, n1265, n1267, n1269, n1271, n1273, n1275,
         n1277, n1279, n1281, n1283, n1285, n1287, n1289, n1291, n1293, n1294,
         n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1303, n1304, n1305,
         n1306, n1307, n1308, n1309, n1310, n1312, n1313, n1314, n1315, n1316,
         n1317, n1318, n1319, n1321, n1322, n1323, n1324, n1325, n1326, n1327,
         n1328, n1330, n1331, n1332, n1333, n1334, n1335, n1336, n1337, n1344,
         n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353, n1354,
         n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363, n1364,
         n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372, n1373, n1374,
         n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382, n1383, n1384,
         n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392, n1393, n1394,
         n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402, n1403, n1404,
         n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412, n1413, n1414,
         n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422, n1423, n1424,
         n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432, n1433, n1434,
         n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442, n1443, n1444,
         n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452, n1453, n1454,
         n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462, n1463, n1464,
         n1465, n1466, n1467, n1468, n1469, n1470, n1471, n1472, n1473, n1474,
         n1475, n1476, n1477, n1478, n1479, n1480, n1481, n1482, n1483, n1484,
         n1485, n1486, n1487, n1488, n1489, n1490, n1491, n1492, n1493, n1494,
         n1495, n1496, n1497, n1498, n1499, n1500, n1501, n1502, n1503, n1504,
         n1505, n1506, n1507, n1508, n1509, n1510, n1511, n1512, n1513, n1514,
         n1515, n1516, n1517, n1518, n1519, n1520, n1521, n1522, n1523, n1524,
         n1525, n1526, n1527, n1528, n1529, n1530, n1531, n1533, n1534, n1535,
         n1536, n1537, n1538, n1539, n1540, n1541, n1542, n1543, n1544, n1545,
         n1546, n1547, n1548, n1549, n1550, n1551, n1552, n1553, n1554, n1555,
         n1556, n1557, n1558, n1559, n1560, n1561, n1562, n1563, n1564, n1565,
         n1566, n1567, n1568, n1569, n1570, n1571, n1572, n1573, n1574, n1575,
         n1576, n1577, n1578, n1579, n1580, n1581, n1582, n1583, n1584, n1585,
         n1586, n1587, n1588, n1589, n1590, n1591, n1592, n1593, n1594, n1595,
         n1596, n1597, n1598, n1599, n1600, n1601, n1602, n1603, n1604, n1605,
         n1606, n1607, n1608, n1609, n1610, n1611, n1612, n1613, n1614, n1615,
         n1616, n1617, n1618, n1619, n1620, n1621, n1622, n1623, n1624, n1625,
         n1626, n1627, n1628, n1629, n1630, n1631, n1632, n1633, n1634, n1635,
         n1636, n1637, n1638, n1639, n1640, n1641, n1642, n1643, n1644, n1645,
         n1646, n1647, n1648, n1649, n1650, n1651, n1652, n1653, n1654, n1655,
         n1656, n1657, n1658, n1659, n1660;
wand  n732;
wand  n731;
wand  n730;
wand  n729;
wand  n720;
wand  n719;
wand  n718;
wand  n717;
wand  n758;
wand  n757;
wand  n756;
wand  n755;
wand  n746;
wand  n745;
wand  n744;
wand  n743;
wand  n784;
wand  n783;
wand  n782;
wand  n781;
wand  n772;
wand  n771;
wand  n770;
wand  n769;
wand  n810;
wand  n809;
wand  n808;
wand  n807;
wand  n798;
wand  n797;
wand  n796;
wand  n795;
wand  n836;
wand  n835;
wand  n834;
wand  n833;
wand  n824;
wand  n823;
wand  n822;
wand  n821;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76, SYNOPSYS_UNCONNECTED__77, 
        SYNOPSYS_UNCONNECTED__78, SYNOPSYS_UNCONNECTED__79, 
        SYNOPSYS_UNCONNECTED__80, SYNOPSYS_UNCONNECTED__81, 
        SYNOPSYS_UNCONNECTED__82, SYNOPSYS_UNCONNECTED__83, 
        SYNOPSYS_UNCONNECTED__84, SYNOPSYS_UNCONNECTED__85, 
        SYNOPSYS_UNCONNECTED__86, SYNOPSYS_UNCONNECTED__87, 
        SYNOPSYS_UNCONNECTED__88, SYNOPSYS_UNCONNECTED__89, 
        SYNOPSYS_UNCONNECTED__90, SYNOPSYS_UNCONNECTED__91, 
        SYNOPSYS_UNCONNECTED__92, SYNOPSYS_UNCONNECTED__93, 
        SYNOPSYS_UNCONNECTED__94, SYNOPSYS_UNCONNECTED__95, 
        SYNOPSYS_UNCONNECTED__96, SYNOPSYS_UNCONNECTED__97, 
        SYNOPSYS_UNCONNECTED__98, SYNOPSYS_UNCONNECTED__99;

  DFFR_X1 \S_port_counter_reg[0][0]  ( .D(\sub_376_aco/DIFF[0] ), .CK(Clk), 
        .RN(n1576), .Q(\sub_376_aco/A[0] ) );
  DFFR_X1 \S_port_counter_reg[0][1]  ( .D(\sub_376_aco/DIFF[1] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_376_aco/A[1] ) );
  DFFR_X1 \S_port_counter_reg[0][2]  ( .D(\sub_376_aco/DIFF[2] ), .CK(Clk), 
        .RN(n1576), .Q(\sub_376_aco/A[2] ) );
  DFFS_X1 \S_port_counter_reg[0][3]  ( .D(\sub_376_aco/DIFF[3] ), .CK(Clk), 
        .SN(n1566), .Q(\sub_376_aco/A[3] ) );
  DFFR_X1 \S_port_counter_reg[0][4]  ( .D(\sub_376_aco/DIFF[4] ), .CK(Clk), 
        .RN(n1576), .Q(\sub_376_aco/A[4] ) );
  DFFR_X1 \S_port_counter_reg[0][5]  ( .D(\sub_376_aco/DIFF[5] ), .CK(Clk), 
        .RN(n1576), .Q(\sub_376_aco/A[5] ) );
  DFFR_X1 \S_port_counter_reg[0][6]  ( .D(\sub_376_aco/DIFF[6] ), .CK(Clk), 
        .RN(n1576), .Q(\sub_376_aco/A[6] ), .QN(n1542) );
  DFFR_X1 \S_port_counter_reg[0][7]  ( .D(\sub_376_aco/DIFF[7] ), .CK(Clk), 
        .RN(n1576), .Q(\sub_376_aco/A[7] ) );
  DFFR_X1 \N_port_counter_reg[1][0]  ( .D(\sub_368_aco/DIFF[0] ), .CK(Clk), 
        .RN(n1576), .Q(\sub_368_aco/A[0] ) );
  DFFR_X1 \N_port_counter_reg[1][1]  ( .D(\sub_368_aco/DIFF[1] ), .CK(Clk), 
        .RN(n1576), .Q(\sub_368_aco/A[1] ) );
  DFFR_X1 \N_port_counter_reg[1][2]  ( .D(\sub_368_aco/DIFF[2] ), .CK(Clk), 
        .RN(n1576), .Q(\sub_368_aco/A[2] ) );
  DFFS_X1 \N_port_counter_reg[1][3]  ( .D(\sub_368_aco/DIFF[3] ), .CK(Clk), 
        .SN(n1566), .Q(\sub_368_aco/A[3] ) );
  DFFR_X1 \N_port_counter_reg[1][4]  ( .D(\sub_368_aco/DIFF[4] ), .CK(Clk), 
        .RN(n1576), .Q(\sub_368_aco/A[4] ) );
  DFFR_X1 \N_port_counter_reg[1][5]  ( .D(\sub_368_aco/DIFF[5] ), .CK(Clk), 
        .RN(n1576), .Q(\sub_368_aco/A[5] ) );
  DFFR_X1 \N_port_counter_reg[1][6]  ( .D(\sub_368_aco/DIFF[6] ), .CK(Clk), 
        .RN(n1576), .Q(\sub_368_aco/A[6] ), .QN(n1535) );
  DFFR_X1 \N_port_counter_reg[1][7]  ( .D(\sub_368_aco/DIFF[7] ), .CK(Clk), 
        .RN(n1576), .Q(\sub_368_aco/A[7] ) );
  DFFR_X1 \S_port_counter_reg[1][0]  ( .D(\sub_382_aco/DIFF[0] ), .CK(Clk), 
        .RN(n1576), .Q(\sub_382_aco/A[0] ) );
  DFFR_X1 \S_port_counter_reg[1][1]  ( .D(\sub_382_aco/DIFF[1] ), .CK(Clk), 
        .RN(n1576), .Q(\sub_382_aco/A[1] ) );
  DFFR_X1 \S_port_counter_reg[1][2]  ( .D(\sub_382_aco/DIFF[2] ), .CK(Clk), 
        .RN(n1576), .Q(\sub_382_aco/A[2] ) );
  DFFS_X1 \S_port_counter_reg[1][3]  ( .D(\sub_382_aco/DIFF[3] ), .CK(Clk), 
        .SN(n1566), .Q(\sub_382_aco/A[3] ) );
  DFFR_X1 \S_port_counter_reg[1][4]  ( .D(\sub_382_aco/DIFF[4] ), .CK(Clk), 
        .RN(n1576), .Q(\sub_382_aco/A[4] ) );
  DFFR_X1 \S_port_counter_reg[1][5]  ( .D(\sub_382_aco/DIFF[5] ), .CK(Clk), 
        .RN(n1576), .Q(\sub_382_aco/A[5] ) );
  DFFR_X1 \S_port_counter_reg[1][6]  ( .D(\sub_382_aco/DIFF[6] ), .CK(Clk), 
        .RN(n1576), .Q(\sub_382_aco/A[6] ), .QN(n1539) );
  DFFR_X1 \S_port_counter_reg[1][7]  ( .D(\sub_382_aco/DIFF[7] ), .CK(Clk), 
        .RN(n1576), .Q(\sub_382_aco/A[7] ) );
  DFFR_X1 \E_port_counter_reg[1][0]  ( .D(\sub_395_aco/DIFF[0] ), .CK(Clk), 
        .RN(n1576), .Q(\sub_395_aco/A[0] ) );
  DFFR_X1 \E_port_counter_reg[1][1]  ( .D(\sub_395_aco/DIFF[1] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_395_aco/A[1] ) );
  DFFR_X1 \E_port_counter_reg[1][2]  ( .D(\sub_395_aco/DIFF[2] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_395_aco/A[2] ) );
  DFFS_X1 \E_port_counter_reg[1][3]  ( .D(\sub_395_aco/DIFF[3] ), .CK(Clk), 
        .SN(n1566), .Q(\sub_395_aco/A[3] ) );
  DFFR_X1 \E_port_counter_reg[1][4]  ( .D(\sub_395_aco/DIFF[4] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_395_aco/A[4] ) );
  DFFR_X1 \E_port_counter_reg[1][5]  ( .D(\sub_395_aco/DIFF[5] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_395_aco/A[5] ) );
  DFFR_X1 \E_port_counter_reg[1][6]  ( .D(\sub_395_aco/DIFF[6] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_395_aco/A[6] ), .QN(n1538) );
  DFFR_X1 \E_port_counter_reg[1][7]  ( .D(\sub_395_aco/DIFF[7] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_395_aco/A[7] ) );
  DFFR_X1 \W_port_counter_reg[1][0]  ( .D(\sub_408_aco/DIFF[0] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_408_aco/A[0] ) );
  DFFR_X1 \W_port_counter_reg[1][1]  ( .D(\sub_408_aco/DIFF[1] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_408_aco/A[1] ) );
  DFFR_X1 \W_port_counter_reg[1][2]  ( .D(\sub_408_aco/DIFF[2] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_408_aco/A[2] ) );
  DFFS_X1 \W_port_counter_reg[1][3]  ( .D(\sub_408_aco/DIFF[3] ), .CK(Clk), 
        .SN(n1566), .Q(\sub_408_aco/A[3] ) );
  DFFR_X1 \W_port_counter_reg[1][4]  ( .D(\sub_408_aco/DIFF[4] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_408_aco/A[4] ) );
  DFFR_X1 \W_port_counter_reg[1][5]  ( .D(\sub_408_aco/DIFF[5] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_408_aco/A[5] ) );
  DFFR_X1 \W_port_counter_reg[1][6]  ( .D(\sub_408_aco/DIFF[6] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_408_aco/A[6] ), .QN(n1537) );
  DFFR_X1 \W_port_counter_reg[1][7]  ( .D(\sub_408_aco/DIFF[7] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_408_aco/A[7] ) );
  DFFR_X1 \S_data_in_reg[1][7]  ( .D(n1483), .CK(Clk), .RN(n1576), .Q(n780) );
  DFFR_X1 \S_data_in_reg[1][6]  ( .D(n1482), .CK(Clk), .RN(n1576), .Q(n779) );
  DFFR_X1 \S_data_in_reg[1][5]  ( .D(n1481), .CK(Clk), .RN(n1576), .Q(n778) );
  DFFR_X1 \S_data_in_reg[1][4]  ( .D(n1480), .CK(Clk), .RN(n1576), .Q(n777) );
  DFFR_X1 \S_data_in_reg[1][3]  ( .D(n1479), .CK(Clk), .RN(n1576), .Q(n776) );
  DFFR_X1 \S_data_in_reg[1][2]  ( .D(n1478), .CK(Clk), .RN(n1576), .Q(n775) );
  DFFR_X1 \S_data_in_reg[1][1]  ( .D(n1477), .CK(Clk), .RN(n1576), .Q(n774) );
  DFFR_X1 \S_data_in_reg[1][0]  ( .D(n1476), .CK(Clk), .RN(n1576), .Q(n773) );
  DFFR_X1 \N_data_in_reg[1][7]  ( .D(n1474), .CK(Clk), .RN(n1576), .Q(n806) );
  DFFR_X1 \N_data_in_reg[1][6]  ( .D(n1473), .CK(Clk), .RN(n1576), .Q(n805) );
  DFFR_X1 \N_data_in_reg[1][5]  ( .D(n1472), .CK(Clk), .RN(n1576), .Q(n804) );
  DFFR_X1 \N_data_in_reg[1][4]  ( .D(n1471), .CK(Clk), .RN(n1576), .Q(n803) );
  DFFR_X1 \N_data_in_reg[1][3]  ( .D(n1470), .CK(Clk), .RN(n1576), .Q(n802) );
  DFFR_X1 \N_data_in_reg[1][2]  ( .D(n1469), .CK(Clk), .RN(n1576), .Q(n801) );
  DFFR_X1 \N_data_in_reg[1][1]  ( .D(n1468), .CK(Clk), .RN(n1576), .Q(n800) );
  DFFR_X1 \N_data_in_reg[1][0]  ( .D(n1467), .CK(Clk), .RN(n1576), .Q(n799) );
  DFFR_X1 \I_data_in_reg[1][7]  ( .D(n1465), .CK(Clk), .RN(n1576), .Q(n832) );
  DFFR_X1 \I_data_in_reg[1][6]  ( .D(n1464), .CK(Clk), .RN(n1576), .Q(n831) );
  DFFR_X1 \I_data_in_reg[1][5]  ( .D(n1463), .CK(Clk), .RN(n1576), .Q(n830) );
  DFFR_X1 \I_data_in_reg[1][4]  ( .D(n1462), .CK(Clk), .RN(n1576), .Q(n829) );
  DFFR_X1 \I_data_in_reg[1][3]  ( .D(n1461), .CK(Clk), .RN(n1576), .Q(n828) );
  DFFR_X1 \I_data_in_reg[1][2]  ( .D(n1460), .CK(Clk), .RN(n1576), .Q(n827) );
  DFFR_X1 \I_data_in_reg[1][1]  ( .D(n1459), .CK(Clk), .RN(n1576), .Q(n826) );
  DFFR_X1 \I_data_in_reg[1][0]  ( .D(n1458), .CK(Clk), .RN(n1576), .Q(n825) );
  DFFR_X1 \E_data_in_reg[1][7]  ( .D(n1456), .CK(Clk), .RN(n1576), .Q(n754) );
  DFFR_X1 \E_data_in_reg[1][6]  ( .D(n1455), .CK(Clk), .RN(n1576), .Q(n753) );
  DFFR_X1 \E_data_in_reg[1][5]  ( .D(n1454), .CK(Clk), .RN(n1576), .Q(n752) );
  DFFR_X1 \E_data_in_reg[1][4]  ( .D(n1453), .CK(Clk), .RN(n1576), .Q(n751) );
  DFFR_X1 \E_data_in_reg[1][3]  ( .D(n1452), .CK(Clk), .RN(n1576), .Q(n750) );
  DFFR_X1 \E_data_in_reg[1][2]  ( .D(n1451), .CK(Clk), .RN(n1576), .Q(n749) );
  DFFR_X1 \E_data_in_reg[1][1]  ( .D(n1450), .CK(Clk), .RN(n1576), .Q(n748) );
  DFFR_X1 \E_data_in_reg[1][0]  ( .D(n1449), .CK(Clk), .RN(n1576), .Q(n747) );
  DFFR_X1 \W_data_in_reg[1][7]  ( .D(n1447), .CK(Clk), .RN(n1576), .Q(n728) );
  DFFR_X1 \W_data_in_reg[1][6]  ( .D(n1446), .CK(Clk), .RN(n1576), .Q(n727) );
  DFFR_X1 \W_data_in_reg[1][5]  ( .D(n1445), .CK(Clk), .RN(n1576), .Q(n726) );
  DFFR_X1 \W_data_in_reg[1][4]  ( .D(n1444), .CK(Clk), .RN(n1576), .Q(n725) );
  DFFR_X1 \W_data_in_reg[1][3]  ( .D(n1443), .CK(Clk), .RN(n1576), .Q(n724) );
  DFFR_X1 \W_data_in_reg[1][2]  ( .D(n1442), .CK(Clk), .RN(n1576), .Q(n723) );
  DFFR_X1 \W_data_in_reg[1][1]  ( .D(n1441), .CK(Clk), .RN(n1576), .Q(n722) );
  DFFR_X1 \W_data_in_reg[1][0]  ( .D(n1440), .CK(Clk), .RN(n1576), .Q(n721) );
  DFFR_X1 \W_port_counter_reg[0][0]  ( .D(\sub_402_aco/DIFF[0] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_402_aco/A[0] ) );
  DFFR_X1 \W_port_counter_reg[0][1]  ( .D(\sub_402_aco/DIFF[1] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_402_aco/A[1] ) );
  DFFR_X1 \W_port_counter_reg[0][2]  ( .D(\sub_402_aco/DIFF[2] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_402_aco/A[2] ) );
  DFFS_X1 \W_port_counter_reg[0][3]  ( .D(\sub_402_aco/DIFF[3] ), .CK(Clk), 
        .SN(n1566), .Q(\sub_402_aco/A[3] ) );
  DFFR_X1 \W_port_counter_reg[0][4]  ( .D(\sub_402_aco/DIFF[4] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_402_aco/A[4] ) );
  DFFR_X1 \W_port_counter_reg[0][5]  ( .D(\sub_402_aco/DIFF[5] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_402_aco/A[5] ) );
  DFFR_X1 \W_port_counter_reg[0][6]  ( .D(\sub_402_aco/DIFF[6] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_402_aco/A[6] ), .QN(n1541) );
  DFFR_X1 \W_port_counter_reg[0][7]  ( .D(\sub_402_aco/DIFF[7] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_402_aco/A[7] ) );
  DFFR_X1 \E_port_counter_reg[0][0]  ( .D(\sub_389_aco/DIFF[0] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_389_aco/A[0] ) );
  DFFR_X1 \E_port_counter_reg[0][1]  ( .D(\sub_389_aco/DIFF[1] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_389_aco/A[1] ) );
  DFFR_X1 \E_port_counter_reg[0][2]  ( .D(\sub_389_aco/DIFF[2] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_389_aco/A[2] ) );
  DFFS_X1 \E_port_counter_reg[0][3]  ( .D(\sub_389_aco/DIFF[3] ), .CK(Clk), 
        .SN(n1566), .Q(\sub_389_aco/A[3] ) );
  DFFR_X1 \E_port_counter_reg[0][4]  ( .D(\sub_389_aco/DIFF[4] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_389_aco/A[4] ) );
  DFFR_X1 \E_port_counter_reg[0][5]  ( .D(\sub_389_aco/DIFF[5] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_389_aco/A[5] ) );
  DFFR_X1 \E_port_counter_reg[0][6]  ( .D(\sub_389_aco/DIFF[6] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_389_aco/A[6] ), .QN(n1540) );
  DFFR_X1 \E_port_counter_reg[0][7]  ( .D(\sub_389_aco/DIFF[7] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_389_aco/A[7] ) );
  DFFR_X1 \N_port_counter_reg[0][0]  ( .D(\sub_362_aco/DIFF[0] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_362_aco/A[0] ) );
  DFFR_X1 \N_port_counter_reg[0][1]  ( .D(\sub_362_aco/DIFF[1] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_362_aco/A[1] ) );
  DFFR_X1 \N_port_counter_reg[0][2]  ( .D(\sub_362_aco/DIFF[2] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_362_aco/A[2] ) );
  DFFS_X1 \N_port_counter_reg[0][3]  ( .D(\sub_362_aco/DIFF[3] ), .CK(Clk), 
        .SN(n1566), .Q(\sub_362_aco/A[3] ) );
  DFFR_X1 \N_port_counter_reg[0][4]  ( .D(\sub_362_aco/DIFF[4] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_362_aco/A[4] ) );
  DFFR_X1 \N_port_counter_reg[0][5]  ( .D(\sub_362_aco/DIFF[5] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_362_aco/A[5] ) );
  DFFR_X1 \N_port_counter_reg[0][6]  ( .D(\sub_362_aco/DIFF[6] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_362_aco/A[6] ), .QN(n1536) );
  DFFR_X1 \N_port_counter_reg[0][7]  ( .D(\sub_362_aco/DIFF[7] ), .CK(Clk), 
        .RN(n1575), .Q(\sub_362_aco/A[7] ) );
  DFFR_X1 \N_data_in_reg[0][7]  ( .D(n1438), .CK(Clk), .RN(n1576), .Q(n794) );
  DFFR_X1 \N_data_in_reg[0][6]  ( .D(n1437), .CK(Clk), .RN(n1576), .Q(n793) );
  DFFR_X1 \N_data_in_reg[0][5]  ( .D(n1436), .CK(Clk), .RN(n1576), .Q(n792) );
  DFFR_X1 \N_data_in_reg[0][4]  ( .D(n1435), .CK(Clk), .RN(n1576), .Q(n791) );
  DFFR_X1 \N_data_in_reg[0][3]  ( .D(n1434), .CK(Clk), .RN(n1576), .Q(n790) );
  DFFR_X1 \N_data_in_reg[0][2]  ( .D(n1433), .CK(Clk), .RN(n1576), .Q(n789) );
  DFFR_X1 \N_data_in_reg[0][1]  ( .D(n1432), .CK(Clk), .RN(n1576), .Q(n788) );
  DFFR_X1 \N_data_in_reg[0][0]  ( .D(n1431), .CK(Clk), .RN(n1564), .Q(n787) );
  DFFR_X1 \S_data_in_reg[0][7]  ( .D(n1429), .CK(Clk), .RN(n1566), .Q(n768) );
  DFFR_X1 \S_data_in_reg[0][6]  ( .D(n1428), .CK(Clk), .RN(n1566), .Q(n767) );
  DFFR_X1 \S_data_in_reg[0][5]  ( .D(n1427), .CK(Clk), .RN(n1566), .Q(n766) );
  DFFR_X1 \S_data_in_reg[0][4]  ( .D(n1426), .CK(Clk), .RN(n1566), .Q(n765) );
  DFFR_X1 \S_data_in_reg[0][3]  ( .D(n1425), .CK(Clk), .RN(n1566), .Q(n764) );
  DFFR_X1 \S_data_in_reg[0][2]  ( .D(n1424), .CK(Clk), .RN(n1566), .Q(n763) );
  DFFR_X1 \S_data_in_reg[0][1]  ( .D(n1423), .CK(Clk), .RN(n1566), .Q(n762) );
  DFFR_X1 \S_data_in_reg[0][0]  ( .D(n1422), .CK(Clk), .RN(n1566), .Q(n761) );
  DFFR_X1 \E_data_in_reg[0][7]  ( .D(n1420), .CK(Clk), .RN(n1566), .Q(n742) );
  DFFR_X1 \E_data_in_reg[0][6]  ( .D(n1419), .CK(Clk), .RN(n1565), .Q(n741) );
  DFFR_X1 \E_data_in_reg[0][5]  ( .D(n1418), .CK(Clk), .RN(n1565), .Q(n740) );
  DFFR_X1 \E_data_in_reg[0][4]  ( .D(n1417), .CK(Clk), .RN(n1565), .Q(n739) );
  DFFR_X1 \E_data_in_reg[0][3]  ( .D(n1416), .CK(Clk), .RN(n1565), .Q(n738) );
  DFFR_X1 \E_data_in_reg[0][2]  ( .D(n1415), .CK(Clk), .RN(n1565), .Q(n737) );
  DFFR_X1 \E_data_in_reg[0][1]  ( .D(n1414), .CK(Clk), .RN(n1565), .Q(n736) );
  DFFR_X1 \E_data_in_reg[0][0]  ( .D(n1413), .CK(Clk), .RN(n1565), .Q(n735) );
  DFFR_X1 \W_data_in_reg[0][7]  ( .D(n1411), .CK(Clk), .RN(n1565), .Q(n716) );
  DFFR_X1 \W_data_in_reg[0][6]  ( .D(n1410), .CK(Clk), .RN(n1565), .Q(n715) );
  DFFR_X1 \W_data_in_reg[0][5]  ( .D(n1409), .CK(Clk), .RN(n1565), .Q(n714) );
  DFFR_X1 \W_data_in_reg[0][4]  ( .D(n1408), .CK(Clk), .RN(n1565), .Q(n713) );
  DFFR_X1 \W_data_in_reg[0][3]  ( .D(n1407), .CK(Clk), .RN(n1565), .Q(n712) );
  DFFR_X1 \W_data_in_reg[0][2]  ( .D(n1406), .CK(Clk), .RN(n1565), .Q(n711) );
  DFFR_X1 \W_data_in_reg[0][1]  ( .D(n1405), .CK(Clk), .RN(n1565), .Q(n710) );
  DFFR_X1 \W_data_in_reg[0][0]  ( .D(n1404), .CK(Clk), .RN(n1565), .Q(n709) );
  DFFR_X1 \I_data_in_reg[0][7]  ( .D(n1402), .CK(Clk), .RN(n1565), .Q(n820) );
  DFFR_X1 \I_data_in_reg[0][6]  ( .D(n1401), .CK(Clk), .RN(n1564), .Q(n819) );
  DFFR_X1 \I_data_in_reg[0][5]  ( .D(n1400), .CK(Clk), .RN(n1565), .Q(n818) );
  DFFR_X1 \I_data_in_reg[0][4]  ( .D(n1399), .CK(Clk), .RN(n1564), .Q(n817) );
  DFFR_X1 \I_data_in_reg[0][3]  ( .D(n1398), .CK(Clk), .RN(n1564), .Q(n816) );
  DFFR_X1 \I_data_in_reg[0][2]  ( .D(n1397), .CK(Clk), .RN(n1564), .Q(n815) );
  DFFR_X1 \I_data_in_reg[0][1]  ( .D(n1396), .CK(Clk), .RN(n1564), .Q(n814) );
  DFFR_X1 \I_data_in_reg[0][0]  ( .D(n1395), .CK(Clk), .RN(n1564), .Q(n813) );
  router_swarb switch ( .Clk(Clk), .Rst(n1544), .N_sw_arb_req({1'b0, n967, 
        n966, 1'b0, n964, n963, 1'b0, n961, n960, 1'b0, n958, n957, 1'b0, n955, 
        n954}), .N_sw_arb_grant({SYNOPSYS_UNCONNECTED__0, n952, n951, 
        SYNOPSYS_UNCONNECTED__1, n949, n948, SYNOPSYS_UNCONNECTED__2, n946, 
        n945, SYNOPSYS_UNCONNECTED__3, n943, n942, SYNOPSYS_UNCONNECTED__4, 
        n940, n939}), .S_sw_arb_req({1'b0, n937, n936, 1'b0, n934, n933, 1'b0, 
        n931, n930, 1'b0, n928, n927, 1'b0, n925, n924}), .S_sw_arb_grant({
        SYNOPSYS_UNCONNECTED__5, n922, n921, SYNOPSYS_UNCONNECTED__6, n919, 
        n918, SYNOPSYS_UNCONNECTED__7, n916, n915, SYNOPSYS_UNCONNECTED__8, 
        n913, n912, SYNOPSYS_UNCONNECTED__9, n910, n909}), .E_sw_arb_req({1'b0, 
        n907, n906, 1'b0, n904, n903, 1'b0, n901, n900, 1'b0, n898, n897, 1'b0, 
        n895, n894}), .E_sw_arb_grant({SYNOPSYS_UNCONNECTED__10, n892, n891, 
        SYNOPSYS_UNCONNECTED__11, n889, n888, SYNOPSYS_UNCONNECTED__12, n886, 
        n885, SYNOPSYS_UNCONNECTED__13, n883, n882, SYNOPSYS_UNCONNECTED__14, 
        n880, n879}), .W_sw_arb_req({1'b0, n877, n876, 1'b0, n874, n873, 1'b0, 
        n871, n870, 1'b0, n868, n867, 1'b0, n865, n864}), .W_sw_arb_grant({
        SYNOPSYS_UNCONNECTED__15, n862, n861, SYNOPSYS_UNCONNECTED__16, n859, 
        n858, SYNOPSYS_UNCONNECTED__17, n856, n855, SYNOPSYS_UNCONNECTED__18, 
        n853, n852, SYNOPSYS_UNCONNECTED__19, n850, n849}) );
  syn_fifo_1 I_Input_Buffer_vc0 ( .clk(Clk), .rst(n1576), .wr_cs(1'b1), 
        .rd_cs(1'b1), .data_in({n824, n823, n822, n821, n820, n819, n818, n817, 
        n816, n815, n814, n813}), .rd_en(n445), .wr_en(n837), .data_out({n430, 
        n429, n428, n427, n426, n425, n424, n423, n422, n421, n420, n419}), 
        .empty(n443), .full(n847) );
  syn_fifo_9 I_Input_Buffer_vc1 ( .clk(Clk), .rst(n1577), .wr_cs(1'b1), 
        .rd_cs(1'b1), .data_in({n836, n835, n834, n833, n832, n831, n830, n829, 
        n828, n827, n826, n825}), .rd_en(n446), .wr_en(n838), .data_out({n442, 
        n441, n440, n439, n438, n437, n436, n435, n434, n433, n432, n431}), 
        .empty(n444), .full(n848) );
  syn_fifo_8 N_Input_Buffer_vc0 ( .clk(Clk), .rst(n1576), .wr_cs(1'b1), 
        .rd_cs(1'b1), .data_in({n798, n797, n796, n795, n794, n793, n792, n791, 
        n790, n789, n788, n787}), .rd_en(n417), .wr_en(n811), .data_out({n402, 
        n401, n400, n399, n398, n397, n396, n395, n394, n393, n392, n391}), 
        .empty(n415), .full(n845) );
  syn_fifo_7 N_Input_Buffer_vc1 ( .clk(Clk), .rst(n1565), .wr_cs(1'b1), 
        .rd_cs(1'b1), .data_in({n810, n809, n808, n807, n806, n805, n804, n803, 
        n802, n801, n800, n799}), .rd_en(n418), .wr_en(n812), .data_out({n414, 
        n413, n412, n411, n410, n409, n408, n407, n406, n405, n404, n403}), 
        .empty(n416), .full(n846) );
  syn_fifo_6 S_Input_Buffer_vc0 ( .clk(Clk), .rst(n1565), .wr_cs(1'b1), 
        .rd_cs(1'b1), .data_in({n772, n771, n770, n769, n768, n767, n766, n765, 
        n764, n763, n762, n761}), .rd_en(n389), .wr_en(n785), .data_out({n374, 
        n373, n372, n371, n370, n369, n368, n367, n366, n365, n364, n363}), 
        .empty(n387), .full(n843) );
  syn_fifo_5 S_Input_Buffer_vc1 ( .clk(Clk), .rst(n1577), .wr_cs(1'b1), 
        .rd_cs(1'b1), .data_in({n784, n783, n782, n781, n780, n779, n778, n777, 
        n776, n775, n774, n773}), .rd_en(n390), .wr_en(n786), .data_out({n386, 
        n385, n384, n383, n382, n381, n380, n379, n378, n377, n376, n375}), 
        .empty(n388), .full(n844) );
  syn_fifo_4 E_Input_Buffer_vc0 ( .clk(Clk), .rst(n1575), .wr_cs(1'b1), 
        .rd_cs(1'b1), .data_in({n746, n745, n744, n743, n742, n741, n740, n739, 
        n738, n737, n736, n735}), .rd_en(n361), .wr_en(n759), .data_out({n346, 
        n345, n344, n343, n342, n341, n340, n339, n338, n337, n336, n335}), 
        .empty(n359), .full(n841) );
  syn_fifo_3 E_Input_Buffer_vc1 ( .clk(Clk), .rst(n1565), .wr_cs(1'b1), 
        .rd_cs(1'b1), .data_in({n758, n757, n756, n755, n754, n753, n752, n751, 
        n750, n749, n748, n747}), .rd_en(n362), .wr_en(n760), .data_out({n358, 
        n357, n356, n355, n354, n353, n352, n351, n350, n349, n348, n347}), 
        .empty(n360), .full(n842) );
  syn_fifo_2 W_Input_Buffer_vc1 ( .clk(Clk), .rst(n1575), .wr_cs(1'b1), 
        .rd_cs(1'b1), .data_in({n732, n731, n730, n729, n728, n727, n726, n725, 
        n724, n723, n722, n721}), .rd_en(n334), .wr_en(n734), .data_out({n330, 
        n329, n328, n327, n326, n325, n324, n323, n322, n321, n320, n319}), 
        .empty(n332), .full(n840) );
  syn_fifo_0 W_Input_Buffer_vc0 ( .clk(Clk), .rst(n1577), .wr_cs(1'b1), 
        .rd_cs(1'b1), .data_in({n720, n719, n718, n717, n716, n715, n714, n713, 
        n712, n711, n710, n709}), .rd_en(n333), .wr_en(n733), .data_out({n318, 
        n317, n316, n315, n314, n313, n312, n311, n310, n309, n308, n307}), 
        .empty(n331), .full(n839) );
  router_vcarb_0 north_arbiter ( .Rst(Rst), .Port_vc0_arb_req({1'b0, 1'b0, 
        n304, 1'b0, 1'b0, n301, 1'b0, 1'b0, n298, 1'b0, 1'b0, n295, 1'b0, 1'b0, 
        n292}), .Port_vc1_arb_req({1'b0, n290, 1'b0, 1'b0, n287, 1'b0, 1'b0, 
        n284, 1'b0, 1'b0, n281, 1'b0, 1'b0, n278, 1'b0}), .Port_vc0_arb_grant(
        {SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, n274, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, n271, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, n268, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, n265, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, n262}), 
        .Port_vc1_arb_grant({SYNOPSYS_UNCONNECTED__30, n260, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, n257, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, n254, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, n251, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, n248, 
        SYNOPSYS_UNCONNECTED__39}), .Port_vc0_usage(n501), .Port_vc1_usage(
        n495) );
  router_vcarb_3 south_arbiter ( .Rst(n1544), .Port_vc0_arb_req({1'b0, 1'b0, 
        n244, 1'b0, 1'b0, n241, 1'b0, 1'b0, n238, 1'b0, 1'b0, n235, 1'b0, 1'b0, 
        n232}), .Port_vc1_arb_req({1'b0, n230, 1'b0, 1'b0, n227, 1'b0, 1'b0, 
        n224, 1'b0, 1'b0, n221, 1'b0, 1'b0, n218, 1'b0}), .Port_vc0_arb_grant(
        {SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, n214, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, n211, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, n208, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, n205, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, n202}), 
        .Port_vc1_arb_grant({SYNOPSYS_UNCONNECTED__50, n200, 
        SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52, n197, 
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, n194, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56, n191, 
        SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58, n188, 
        SYNOPSYS_UNCONNECTED__59}), .Port_vc0_usage(n486), .Port_vc1_usage(
        n480) );
  router_vcarb_2 east_arbiter ( .Rst(n1544), .Port_vc0_arb_req({1'b0, 1'b0, 
        n184, 1'b0, 1'b0, n181, 1'b0, 1'b0, n178, 1'b0, 1'b0, n175, 1'b0, 1'b0, 
        n172}), .Port_vc1_arb_req({1'b0, n170, 1'b0, 1'b0, n167, 1'b0, 1'b0, 
        n164, 1'b0, 1'b0, n161, 1'b0, 1'b0, n158, 1'b0}), .Port_vc0_arb_grant(
        {SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, n154, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, n151, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, n148, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, n145, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, n142}), 
        .Port_vc1_arb_grant({SYNOPSYS_UNCONNECTED__70, n140, 
        SYNOPSYS_UNCONNECTED__71, SYNOPSYS_UNCONNECTED__72, n137, 
        SYNOPSYS_UNCONNECTED__73, SYNOPSYS_UNCONNECTED__74, n134, 
        SYNOPSYS_UNCONNECTED__75, SYNOPSYS_UNCONNECTED__76, n131, 
        SYNOPSYS_UNCONNECTED__77, SYNOPSYS_UNCONNECTED__78, n128, 
        SYNOPSYS_UNCONNECTED__79}), .Port_vc0_usage(n471), .Port_vc1_usage(
        n465) );
  router_vcarb_1 west_arbiter ( .Rst(n1577), .Port_vc0_arb_req({1'b0, 1'b0, 
        n124, 1'b0, 1'b0, n121, 1'b0, 1'b0, n118, 1'b0, 1'b0, n115, 1'b0, 1'b0, 
        n112}), .Port_vc1_arb_req({1'b0, n110, 1'b0, 1'b0, n107, 1'b0, 1'b0, 
        n104, 1'b0, 1'b0, n101, 1'b0, 1'b0, n98, 1'b0}), .Port_vc0_arb_grant({
        SYNOPSYS_UNCONNECTED__80, SYNOPSYS_UNCONNECTED__81, n94, 
        SYNOPSYS_UNCONNECTED__82, SYNOPSYS_UNCONNECTED__83, n91, 
        SYNOPSYS_UNCONNECTED__84, SYNOPSYS_UNCONNECTED__85, n88, 
        SYNOPSYS_UNCONNECTED__86, SYNOPSYS_UNCONNECTED__87, n85, 
        SYNOPSYS_UNCONNECTED__88, SYNOPSYS_UNCONNECTED__89, n82}), 
        .Port_vc1_arb_grant({SYNOPSYS_UNCONNECTED__90, n80, 
        SYNOPSYS_UNCONNECTED__91, SYNOPSYS_UNCONNECTED__92, n77, 
        SYNOPSYS_UNCONNECTED__93, SYNOPSYS_UNCONNECTED__94, n74, 
        SYNOPSYS_UNCONNECTED__95, SYNOPSYS_UNCONNECTED__96, n71, 
        SYNOPSYS_UNCONNECTED__97, SYNOPSYS_UNCONNECTED__98, n68, 
        SYNOPSYS_UNCONNECTED__99}), .Port_vc0_usage(n456), .Port_vc1_usage(
        n450) );
  node_controller_1 I_vc0_controller ( .Clk(Clk), .Rst(n1575), .N_usage(n1551), 
        .S_usage(n1584), .E_usage(n1585), .W_usage(n1583), .flit_data({n430, 
        n429, n428, n427, n426, n425, n424, n423, n422, n421, n420, n419}), 
        .fifo_full(n847), .fifo_empty(n443), .router_address_x({n1570, 
        router_address_x[1], n1569}), .router_address_y({n1572, n1574, 
        router_address_y[0]}), .rd_en(n445), .N_vc_arb_req(n292), 
        .S_vc_arb_req(n232), .E_vc_arb_req(n172), .W_vc_arb_req(n112), 
        .N_vc_arb_gnt(n262), .S_vc_arb_gnt(n202), .E_vc_arb_gnt(n142), 
        .W_vc_arb_gnt(n82), .dec_N_buff_count(n663), .dec_S_buff_count(n637), 
        .dec_E_buff_count(n611), .dec_W_buff_count(n585), .N_buff_count({
        \sub_362_aco/A[7] , \sub_362_aco/A[6] , \sub_362_aco/A[5] , 
        \sub_362_aco/A[4] , \sub_362_aco/A[3] , \sub_362_aco/A[2] , 
        \sub_362_aco/A[1] , \sub_362_aco/A[0] }), .S_buff_count({
        \sub_376_aco/A[7] , \sub_376_aco/A[6] , \sub_376_aco/A[5] , 
        \sub_376_aco/A[4] , \sub_376_aco/A[3] , \sub_376_aco/A[2] , 
        \sub_376_aco/A[1] , \sub_376_aco/A[0] }), .E_buff_count({
        \sub_389_aco/A[7] , \sub_389_aco/A[6] , \sub_389_aco/A[5] , 
        \sub_389_aco/A[4] , \sub_389_aco/A[3] , \sub_389_aco/A[2] , 
        \sub_389_aco/A[1] , \sub_389_aco/A[0] }), .W_buff_count({
        \sub_402_aco/A[7] , \sub_402_aco/A[6] , \sub_402_aco/A[5] , 
        \sub_402_aco/A[4] , \sub_402_aco/A[3] , \sub_402_aco/A[2] , 
        \sub_402_aco/A[1] , \sub_402_aco/A[0] }), .N_sw_arb_req(n954), 
        .S_sw_arb_req(n924), .E_sw_arb_req(n894), .W_sw_arb_req(n864), 
        .N_sw_arb_gnt(n939), .S_sw_arb_gnt(n909), .E_sw_arb_gnt(n879), 
        .W_sw_arb_gnt(n849), .flit_out(i_out0) );
  node_controller_9 I_vc1_controller ( .Clk(Clk), .Rst(n1576), .N_usage(n1546), 
        .S_usage(n1549), .E_usage(n1547), .W_usage(n1555), .flit_data({n442, 
        n441, n440, n439, n438, n437, n436, n435, n434, n433, n432, n431}), 
        .fifo_full(n848), .fifo_empty(n444), .router_address_x({n1570, 
        router_address_x[1], n1569}), .router_address_y({n1572, n1574, 
        router_address_y[0]}), .rd_en(n446), .N_vc_arb_req(n278), 
        .S_vc_arb_req(n218), .E_vc_arb_req(n158), .W_vc_arb_req(n98), 
        .N_vc_arb_gnt(n248), .S_vc_arb_gnt(n188), .E_vc_arb_gnt(n128), 
        .W_vc_arb_gnt(n68), .dec_N_buff_count(n658), .dec_S_buff_count(n632), 
        .dec_E_buff_count(n606), .dec_W_buff_count(n580), .N_buff_count({
        \sub_368_aco/A[7] , \sub_368_aco/A[6] , \sub_368_aco/A[5] , 
        \sub_368_aco/A[4] , \sub_368_aco/A[3] , \sub_368_aco/A[2] , 
        \sub_368_aco/A[1] , \sub_368_aco/A[0] }), .S_buff_count({
        \sub_382_aco/A[7] , \sub_382_aco/A[6] , \sub_382_aco/A[5] , 
        \sub_382_aco/A[4] , \sub_382_aco/A[3] , \sub_382_aco/A[2] , 
        \sub_382_aco/A[1] , \sub_382_aco/A[0] }), .E_buff_count({
        \sub_395_aco/A[7] , \sub_395_aco/A[6] , \sub_395_aco/A[5] , 
        \sub_395_aco/A[4] , \sub_395_aco/A[3] , \sub_395_aco/A[2] , 
        \sub_395_aco/A[1] , \sub_395_aco/A[0] }), .W_buff_count({
        \sub_408_aco/A[7] , \sub_408_aco/A[6] , \sub_408_aco/A[5] , 
        \sub_408_aco/A[4] , \sub_408_aco/A[3] , \sub_408_aco/A[2] , 
        \sub_408_aco/A[1] , \sub_408_aco/A[0] }), .N_sw_arb_req(n955), 
        .S_sw_arb_req(n925), .E_sw_arb_req(n895), .W_sw_arb_req(n865), 
        .N_sw_arb_gnt(n940), .S_sw_arb_gnt(n910), .E_sw_arb_gnt(n880), 
        .W_sw_arb_gnt(n850), .flit_out(i_out1) );
  node_controller_8 N_vc0_controller ( .Clk(Clk), .Rst(n1576), .N_usage(n1554), 
        .S_usage(n1549), .E_usage(n1547), .W_usage(n1555), .flit_data({n402, 
        n401, n400, n399, n398, n397, n396, n395, n394, n393, n392, n391}), 
        .fifo_full(n845), .fifo_empty(n415), .router_address_x({n1571, 
        router_address_x[1], n1569}), .router_address_y({n1573, n1574, 
        router_address_y[0]}), .rd_en(n417), .N_vc_arb_req(n295), 
        .S_vc_arb_req(n235), .E_vc_arb_req(n175), .W_vc_arb_req(n115), 
        .N_vc_arb_gnt(n265), .S_vc_arb_gnt(n205), .E_vc_arb_gnt(n145), 
        .W_vc_arb_gnt(n85), .dec_N_buff_count(n664), .dec_S_buff_count(n638), 
        .dec_E_buff_count(n612), .dec_W_buff_count(n586), .N_buff_count({
        \sub_362_aco/A[7] , \sub_362_aco/A[6] , \sub_362_aco/A[5] , 
        \sub_362_aco/A[4] , \sub_362_aco/A[3] , \sub_362_aco/A[2] , 
        \sub_362_aco/A[1] , \sub_362_aco/A[0] }), .S_buff_count({
        \sub_376_aco/A[7] , \sub_376_aco/A[6] , \sub_376_aco/A[5] , 
        \sub_376_aco/A[4] , \sub_376_aco/A[3] , \sub_376_aco/A[2] , 
        \sub_376_aco/A[1] , \sub_376_aco/A[0] }), .E_buff_count({
        \sub_389_aco/A[7] , \sub_389_aco/A[6] , \sub_389_aco/A[5] , 
        \sub_389_aco/A[4] , \sub_389_aco/A[3] , \sub_389_aco/A[2] , 
        \sub_389_aco/A[1] , \sub_389_aco/A[0] }), .W_buff_count({
        \sub_402_aco/A[7] , \sub_402_aco/A[6] , \sub_402_aco/A[5] , 
        \sub_402_aco/A[4] , \sub_402_aco/A[3] , \sub_402_aco/A[2] , 
        \sub_402_aco/A[1] , \sub_402_aco/A[0] }), .N_sw_arb_req(n957), 
        .S_sw_arb_req(n927), .E_sw_arb_req(n897), .W_sw_arb_req(n867), 
        .N_sw_arb_gnt(n942), .S_sw_arb_gnt(n912), .E_sw_arb_gnt(n882), 
        .W_sw_arb_gnt(n852), .flit_out(n_out0) );
  node_controller_7 N_vc1_controller ( .Clk(Clk), .Rst(n1575), .N_usage(n1545), 
        .S_usage(n1549), .E_usage(n1547), .W_usage(n1555), .flit_data({n414, 
        n413, n412, n411, n410, n409, n408, n407, n406, n405, n404, n403}), 
        .fifo_full(n846), .fifo_empty(n416), .router_address_x({n1571, 
        router_address_x[1], n1569}), .router_address_y({n1573, n1574, 
        router_address_y[0]}), .rd_en(n418), .N_vc_arb_req(n281), 
        .S_vc_arb_req(n221), .E_vc_arb_req(n161), .W_vc_arb_req(n101), 
        .N_vc_arb_gnt(n251), .S_vc_arb_gnt(n191), .E_vc_arb_gnt(n131), 
        .W_vc_arb_gnt(n71), .dec_N_buff_count(n659), .dec_S_buff_count(n633), 
        .dec_E_buff_count(n607), .dec_W_buff_count(n581), .N_buff_count({
        \sub_368_aco/A[7] , \sub_368_aco/A[6] , \sub_368_aco/A[5] , 
        \sub_368_aco/A[4] , \sub_368_aco/A[3] , \sub_368_aco/A[2] , 
        \sub_368_aco/A[1] , \sub_368_aco/A[0] }), .S_buff_count({
        \sub_382_aco/A[7] , \sub_382_aco/A[6] , \sub_382_aco/A[5] , 
        \sub_382_aco/A[4] , \sub_382_aco/A[3] , \sub_382_aco/A[2] , 
        \sub_382_aco/A[1] , \sub_382_aco/A[0] }), .E_buff_count({
        \sub_395_aco/A[7] , \sub_395_aco/A[6] , \sub_395_aco/A[5] , 
        \sub_395_aco/A[4] , \sub_395_aco/A[3] , \sub_395_aco/A[2] , 
        \sub_395_aco/A[1] , \sub_395_aco/A[0] }), .W_buff_count({
        \sub_408_aco/A[7] , \sub_408_aco/A[6] , \sub_408_aco/A[5] , 
        \sub_408_aco/A[4] , \sub_408_aco/A[3] , \sub_408_aco/A[2] , 
        \sub_408_aco/A[1] , \sub_408_aco/A[0] }), .N_sw_arb_req(n958), 
        .S_sw_arb_req(n928), .E_sw_arb_req(n898), .W_sw_arb_req(n868), 
        .N_sw_arb_gnt(n943), .S_sw_arb_gnt(n913), .E_sw_arb_gnt(n883), 
        .W_sw_arb_gnt(n853), .flit_out(n_out1) );
  node_controller_6 S_vc0_controller ( .Clk(Clk), .Rst(n1576), .N_usage(n1553), 
        .S_usage(n1549), .E_usage(n1547), .W_usage(n1555), .flit_data({n374, 
        n373, n372, n371, n370, n369, n368, n367, n366, n365, n364, n363}), 
        .fifo_full(n843), .fifo_empty(n387), .router_address_x({n1571, 
        router_address_x[1], n1569}), .router_address_y({n1573, n1574, 
        router_address_y[0]}), .rd_en(n389), .N_vc_arb_req(n298), 
        .S_vc_arb_req(n238), .E_vc_arb_req(n178), .W_vc_arb_req(n118), 
        .N_vc_arb_gnt(n268), .S_vc_arb_gnt(n208), .E_vc_arb_gnt(n148), 
        .W_vc_arb_gnt(n88), .dec_N_buff_count(n665), .dec_S_buff_count(n639), 
        .dec_E_buff_count(n613), .dec_W_buff_count(n587), .N_buff_count({
        \sub_362_aco/A[7] , \sub_362_aco/A[6] , \sub_362_aco/A[5] , 
        \sub_362_aco/A[4] , \sub_362_aco/A[3] , \sub_362_aco/A[2] , 
        \sub_362_aco/A[1] , \sub_362_aco/A[0] }), .S_buff_count({
        \sub_376_aco/A[7] , \sub_376_aco/A[6] , \sub_376_aco/A[5] , 
        \sub_376_aco/A[4] , \sub_376_aco/A[3] , \sub_376_aco/A[2] , 
        \sub_376_aco/A[1] , \sub_376_aco/A[0] }), .E_buff_count({
        \sub_389_aco/A[7] , \sub_389_aco/A[6] , \sub_389_aco/A[5] , 
        \sub_389_aco/A[4] , \sub_389_aco/A[3] , \sub_389_aco/A[2] , 
        \sub_389_aco/A[1] , \sub_389_aco/A[0] }), .W_buff_count({
        \sub_402_aco/A[7] , \sub_402_aco/A[6] , \sub_402_aco/A[5] , 
        \sub_402_aco/A[4] , \sub_402_aco/A[3] , \sub_402_aco/A[2] , 
        \sub_402_aco/A[1] , \sub_402_aco/A[0] }), .N_sw_arb_req(n960), 
        .S_sw_arb_req(n930), .E_sw_arb_req(n900), .W_sw_arb_req(n870), 
        .N_sw_arb_gnt(n945), .S_sw_arb_gnt(n915), .E_sw_arb_gnt(n885), 
        .W_sw_arb_gnt(n855), .flit_out(s_out0) );
  node_controller_5 S_vc1_controller ( .Clk(Clk), .Rst(n1575), .N_usage(n1545), 
        .S_usage(n1548), .E_usage(n1547), .W_usage(n1555), .flit_data({n386, 
        n385, n384, n383, n382, n381, n380, n379, n378, n377, n376, n375}), 
        .fifo_full(n844), .fifo_empty(n388), .router_address_x({n1570, 
        router_address_x[1], n1569}), .router_address_y({n1573, n1574, 
        router_address_y[0]}), .rd_en(n390), .N_vc_arb_req(n284), 
        .S_vc_arb_req(n224), .E_vc_arb_req(n164), .W_vc_arb_req(n104), 
        .N_vc_arb_gnt(n254), .S_vc_arb_gnt(n194), .E_vc_arb_gnt(n134), 
        .W_vc_arb_gnt(n74), .dec_N_buff_count(n660), .dec_S_buff_count(n634), 
        .dec_E_buff_count(n608), .dec_W_buff_count(n582), .N_buff_count({
        \sub_368_aco/A[7] , \sub_368_aco/A[6] , \sub_368_aco/A[5] , 
        \sub_368_aco/A[4] , \sub_368_aco/A[3] , \sub_368_aco/A[2] , 
        \sub_368_aco/A[1] , \sub_368_aco/A[0] }), .S_buff_count({
        \sub_382_aco/A[7] , \sub_382_aco/A[6] , \sub_382_aco/A[5] , 
        \sub_382_aco/A[4] , \sub_382_aco/A[3] , \sub_382_aco/A[2] , 
        \sub_382_aco/A[1] , \sub_382_aco/A[0] }), .E_buff_count({
        \sub_395_aco/A[7] , \sub_395_aco/A[6] , \sub_395_aco/A[5] , 
        \sub_395_aco/A[4] , \sub_395_aco/A[3] , \sub_395_aco/A[2] , 
        \sub_395_aco/A[1] , \sub_395_aco/A[0] }), .W_buff_count({
        \sub_408_aco/A[7] , \sub_408_aco/A[6] , \sub_408_aco/A[5] , 
        \sub_408_aco/A[4] , \sub_408_aco/A[3] , \sub_408_aco/A[2] , 
        \sub_408_aco/A[1] , \sub_408_aco/A[0] }), .N_sw_arb_req(n961), 
        .S_sw_arb_req(n931), .E_sw_arb_req(n901), .W_sw_arb_req(n871), 
        .N_sw_arb_gnt(n946), .S_sw_arb_gnt(n916), .E_sw_arb_gnt(n886), 
        .W_sw_arb_gnt(n856), .flit_out(s_out1) );
  node_controller_4 E_vc0_controller ( .Clk(Clk), .Rst(n1576), .N_usage(n1546), 
        .S_usage(n1548), .E_usage(n1547), .W_usage(n1555), .flit_data({n346, 
        n345, n344, n343, n342, n341, n340, n339, n338, n337, n336, n335}), 
        .fifo_full(n841), .fifo_empty(n359), .router_address_x({n1570, 
        router_address_x[1], n1569}), .router_address_y({n1572, n1574, 
        router_address_y[0]}), .rd_en(n361), .N_vc_arb_req(n301), 
        .S_vc_arb_req(n241), .E_vc_arb_req(n181), .W_vc_arb_req(n121), 
        .N_vc_arb_gnt(n271), .S_vc_arb_gnt(n211), .E_vc_arb_gnt(n151), 
        .W_vc_arb_gnt(n91), .dec_N_buff_count(n666), .dec_S_buff_count(n640), 
        .dec_E_buff_count(n614), .dec_W_buff_count(n588), .N_buff_count({
        \sub_362_aco/A[7] , \sub_362_aco/A[6] , \sub_362_aco/A[5] , 
        \sub_362_aco/A[4] , \sub_362_aco/A[3] , \sub_362_aco/A[2] , 
        \sub_362_aco/A[1] , \sub_362_aco/A[0] }), .S_buff_count({
        \sub_376_aco/A[7] , \sub_376_aco/A[6] , \sub_376_aco/A[5] , 
        \sub_376_aco/A[4] , \sub_376_aco/A[3] , \sub_376_aco/A[2] , 
        \sub_376_aco/A[1] , \sub_376_aco/A[0] }), .E_buff_count({
        \sub_389_aco/A[7] , \sub_389_aco/A[6] , \sub_389_aco/A[5] , 
        \sub_389_aco/A[4] , \sub_389_aco/A[3] , \sub_389_aco/A[2] , 
        \sub_389_aco/A[1] , \sub_389_aco/A[0] }), .W_buff_count({
        \sub_402_aco/A[7] , \sub_402_aco/A[6] , \sub_402_aco/A[5] , 
        \sub_402_aco/A[4] , \sub_402_aco/A[3] , \sub_402_aco/A[2] , 
        \sub_402_aco/A[1] , \sub_402_aco/A[0] }), .N_sw_arb_req(n963), 
        .S_sw_arb_req(n933), .E_sw_arb_req(n903), .W_sw_arb_req(n873), 
        .N_sw_arb_gnt(n948), .S_sw_arb_gnt(n918), .E_sw_arb_gnt(n888), 
        .W_sw_arb_gnt(n858), .flit_out(e_out0) );
  node_controller_3 E_vc1_controller ( .Clk(Clk), .Rst(n1576), .N_usage(n1545), 
        .S_usage(n1548), .E_usage(n1547), .W_usage(n1555), .flit_data({n358, 
        n357, n356, n355, n354, n353, n352, n351, n350, n349, n348, n347}), 
        .fifo_full(n842), .fifo_empty(n360), .router_address_x({n1570, 
        router_address_x[1], n1569}), .router_address_y({n1572, n1574, 
        router_address_y[0]}), .rd_en(n362), .N_vc_arb_req(n287), 
        .S_vc_arb_req(n227), .E_vc_arb_req(n167), .W_vc_arb_req(n107), 
        .N_vc_arb_gnt(n257), .S_vc_arb_gnt(n197), .E_vc_arb_gnt(n137), 
        .W_vc_arb_gnt(n77), .dec_N_buff_count(n661), .dec_S_buff_count(n635), 
        .dec_E_buff_count(n609), .dec_W_buff_count(n583), .N_buff_count({
        \sub_368_aco/A[7] , \sub_368_aco/A[6] , \sub_368_aco/A[5] , 
        \sub_368_aco/A[4] , \sub_368_aco/A[3] , \sub_368_aco/A[2] , 
        \sub_368_aco/A[1] , \sub_368_aco/A[0] }), .S_buff_count({
        \sub_382_aco/A[7] , \sub_382_aco/A[6] , \sub_382_aco/A[5] , 
        \sub_382_aco/A[4] , \sub_382_aco/A[3] , \sub_382_aco/A[2] , 
        \sub_382_aco/A[1] , \sub_382_aco/A[0] }), .E_buff_count({
        \sub_395_aco/A[7] , \sub_395_aco/A[6] , \sub_395_aco/A[5] , 
        \sub_395_aco/A[4] , \sub_395_aco/A[3] , \sub_395_aco/A[2] , 
        \sub_395_aco/A[1] , \sub_395_aco/A[0] }), .W_buff_count({
        \sub_408_aco/A[7] , \sub_408_aco/A[6] , \sub_408_aco/A[5] , 
        \sub_408_aco/A[4] , \sub_408_aco/A[3] , \sub_408_aco/A[2] , 
        \sub_408_aco/A[1] , \sub_408_aco/A[0] }), .N_sw_arb_req(n964), 
        .S_sw_arb_req(n934), .E_sw_arb_req(n904), .W_sw_arb_req(n874), 
        .N_sw_arb_gnt(n949), .S_sw_arb_gnt(n919), .E_sw_arb_gnt(n889), 
        .W_sw_arb_gnt(n859), .flit_out(e_out1) );
  node_controller_2 W_vc0_controller ( .Clk(Clk), .Rst(n1576), .N_usage(n1533), 
        .S_usage(n1549), .E_usage(n1547), .W_usage(n1555), .flit_data({n318, 
        n317, n316, n315, n314, n313, n312, n311, n310, n309, n308, n307}), 
        .fifo_full(n839), .fifo_empty(n331), .router_address_x({n1570, 
        router_address_x[1], n1569}), .router_address_y({n1572, n1574, 
        router_address_y[0]}), .rd_en(n333), .N_vc_arb_req(n304), 
        .S_vc_arb_req(n244), .E_vc_arb_req(n184), .W_vc_arb_req(n124), 
        .N_vc_arb_gnt(n274), .S_vc_arb_gnt(n214), .E_vc_arb_gnt(n154), 
        .W_vc_arb_gnt(n94), .N_buff_count({\sub_362_aco/A[7] , 
        \sub_362_aco/A[6] , \sub_362_aco/A[5] , \sub_362_aco/A[4] , 
        \sub_362_aco/A[3] , \sub_362_aco/A[2] , \sub_362_aco/A[1] , 
        \sub_362_aco/A[0] }), .S_buff_count({\sub_376_aco/A[7] , 
        \sub_376_aco/A[6] , \sub_376_aco/A[5] , \sub_376_aco/A[4] , 
        \sub_376_aco/A[3] , \sub_376_aco/A[2] , \sub_376_aco/A[1] , 
        \sub_376_aco/A[0] }), .E_buff_count({\sub_389_aco/A[7] , 
        \sub_389_aco/A[6] , \sub_389_aco/A[5] , \sub_389_aco/A[4] , 
        \sub_389_aco/A[3] , \sub_389_aco/A[2] , \sub_389_aco/A[1] , 
        \sub_389_aco/A[0] }), .W_buff_count({\sub_402_aco/A[7] , 
        \sub_402_aco/A[6] , \sub_402_aco/A[5] , \sub_402_aco/A[4] , 
        \sub_402_aco/A[3] , \sub_402_aco/A[2] , \sub_402_aco/A[1] , 
        \sub_402_aco/A[0] }), .N_sw_arb_req(n966), .S_sw_arb_req(n936), 
        .E_sw_arb_req(n906), .W_sw_arb_req(n876), .N_sw_arb_gnt(n951), 
        .S_sw_arb_gnt(n921), .E_sw_arb_gnt(n891), .W_sw_arb_gnt(n861), 
        .flit_out(w_out0) );
  node_controller_0 W_vc1_controller ( .Clk(Clk), .Rst(n1575), .N_usage(n1534), 
        .S_usage(n1548), .E_usage(n1547), .W_usage(n1555), .flit_data({n330, 
        n329, n328, n327, n326, n325, n324, n323, n322, n321, n320, n319}), 
        .fifo_full(n840), .fifo_empty(n332), .router_address_x({n1571, 
        router_address_x[1], n1569}), .router_address_y({n1573, n1574, 
        router_address_y[0]}), .rd_en(n334), .N_vc_arb_req(n290), 
        .S_vc_arb_req(n230), .E_vc_arb_req(n170), .W_vc_arb_req(n110), 
        .N_vc_arb_gnt(n260), .S_vc_arb_gnt(n200), .E_vc_arb_gnt(n140), 
        .W_vc_arb_gnt(n80), .N_buff_count({\sub_368_aco/A[7] , 
        \sub_368_aco/A[6] , \sub_368_aco/A[5] , \sub_368_aco/A[4] , 
        \sub_368_aco/A[3] , \sub_368_aco/A[2] , \sub_368_aco/A[1] , 
        \sub_368_aco/A[0] }), .S_buff_count({\sub_382_aco/A[7] , 
        \sub_382_aco/A[6] , \sub_382_aco/A[5] , \sub_382_aco/A[4] , 
        \sub_382_aco/A[3] , \sub_382_aco/A[2] , \sub_382_aco/A[1] , 
        \sub_382_aco/A[0] }), .E_buff_count({\sub_395_aco/A[7] , 
        \sub_395_aco/A[6] , \sub_395_aco/A[5] , \sub_395_aco/A[4] , 
        \sub_395_aco/A[3] , \sub_395_aco/A[2] , \sub_395_aco/A[1] , 
        \sub_395_aco/A[0] }), .W_buff_count({\sub_408_aco/A[7] , 
        \sub_408_aco/A[6] , \sub_408_aco/A[5] , \sub_408_aco/A[4] , 
        \sub_408_aco/A[3] , \sub_408_aco/A[2] , \sub_408_aco/A[1] , 
        \sub_408_aco/A[0] }), .N_sw_arb_req(n967), .S_sw_arb_req(n937), 
        .E_sw_arb_req(n907), .W_sw_arb_req(n877), .N_sw_arb_gnt(n952), 
        .S_sw_arb_gnt(n922), .E_sw_arb_gnt(n892), .W_sw_arb_gnt(n862), 
        .flit_out(w_out1) );
  DFFR_X1 \W_wr_en_reg[0]  ( .D(n1403), .CK(Clk), .RN(n1564), .Q(n733), .QN(
        n1385) );
  DFFR_X1 \S_wr_en_reg[0]  ( .D(n1421), .CK(Clk), .RN(n1575), .Q(n785), .QN(
        n1387) );
  DFFR_X1 \N_wr_en_reg[0]  ( .D(n1430), .CK(Clk), .RN(n1575), .Q(n811), .QN(
        n1388) );
  DFFR_X1 \I_wr_en_reg[0]  ( .D(n1394), .CK(Clk), .RN(n1564), .Q(n837), .QN(
        n1384) );
  DFFR_X1 \E_wr_en_reg[0]  ( .D(n1412), .CK(Clk), .RN(n1575), .Q(n759), .QN(
        n1386) );
  DFFR_X1 \W_wr_en_reg[1]  ( .D(n1439), .CK(Clk), .RN(n1575), .Q(n734), .QN(
        n1389) );
  DFFR_X1 \S_wr_en_reg[1]  ( .D(n1475), .CK(Clk), .RN(n1575), .Q(n786), .QN(
        n1393) );
  DFFR_X1 \N_wr_en_reg[1]  ( .D(n1466), .CK(Clk), .RN(n1575), .Q(n812), .QN(
        n1392) );
  DFFR_X1 \I_wr_en_reg[1]  ( .D(n1457), .CK(Clk), .RN(n1575), .Q(n838), .QN(
        n1391) );
  DFFR_X1 \E_wr_en_reg[1]  ( .D(n1448), .CK(Clk), .RN(n1575), .Q(n760), .QN(
        n1390) );
  DFFR_X1 \W_data_in_reg[0][11]  ( .D(n1515), .CK(Clk), .RN(n1564), .Q(n720), 
        .QN(n1352) );
  DFFR_X1 \W_data_in_reg[0][10]  ( .D(n1514), .CK(Clk), .RN(n1564), .Q(n719), 
        .QN(n1353) );
  DFFR_X1 \W_data_in_reg[0][9]  ( .D(n1513), .CK(Clk), .RN(n1564), .Q(n718), 
        .QN(n1354) );
  DFFR_X1 \W_data_in_reg[0][8]  ( .D(n1512), .CK(Clk), .RN(n1564), .Q(n717), 
        .QN(n1355) );
  DFFR_X1 \S_data_in_reg[0][11]  ( .D(n1499), .CK(Clk), .RN(n1575), .Q(n772), 
        .QN(n1368) );
  DFFR_X1 \S_data_in_reg[0][10]  ( .D(n1498), .CK(Clk), .RN(n1575), .Q(n771), 
        .QN(n1369) );
  DFFR_X1 \S_data_in_reg[0][9]  ( .D(n1497), .CK(Clk), .RN(n1575), .Q(n770), 
        .QN(n1370) );
  DFFR_X1 \S_data_in_reg[0][8]  ( .D(n1496), .CK(Clk), .RN(n1575), .Q(n769), 
        .QN(n1371) );
  DFFR_X1 \N_data_in_reg[0][11]  ( .D(n1491), .CK(Clk), .RN(n1575), .Q(n798), 
        .QN(n1376) );
  DFFR_X1 \N_data_in_reg[0][10]  ( .D(n1490), .CK(Clk), .RN(n1575), .Q(n797), 
        .QN(n1377) );
  DFFR_X1 \N_data_in_reg[0][9]  ( .D(n1489), .CK(Clk), .RN(n1575), .Q(n796), 
        .QN(n1378) );
  DFFR_X1 \N_data_in_reg[0][8]  ( .D(n1488), .CK(Clk), .RN(n1575), .Q(n795), 
        .QN(n1379) );
  DFFR_X1 \I_data_in_reg[0][11]  ( .D(n1523), .CK(Clk), .RN(n1564), .Q(n824), 
        .QN(n1344) );
  DFFR_X1 \I_data_in_reg[0][10]  ( .D(n1522), .CK(Clk), .RN(n1564), .Q(n823), 
        .QN(n1345) );
  DFFR_X1 \I_data_in_reg[0][9]  ( .D(n1521), .CK(Clk), .RN(n1564), .Q(n822), 
        .QN(n1346) );
  DFFR_X1 \I_data_in_reg[0][8]  ( .D(n1520), .CK(Clk), .RN(n1564), .Q(n821), 
        .QN(n1347) );
  DFFR_X1 \E_data_in_reg[0][11]  ( .D(n1507), .CK(Clk), .RN(n1565), .Q(n746), 
        .QN(n1360) );
  DFFR_X1 \E_data_in_reg[0][10]  ( .D(n1506), .CK(Clk), .RN(n1575), .Q(n745), 
        .QN(n1361) );
  DFFR_X1 \E_data_in_reg[0][9]  ( .D(n1505), .CK(Clk), .RN(n1575), .Q(n744), 
        .QN(n1362) );
  DFFR_X1 \E_data_in_reg[0][8]  ( .D(n1504), .CK(Clk), .RN(n1575), .Q(n743), 
        .QN(n1363) );
  DFFR_X1 \W_data_in_reg[1][11]  ( .D(n1511), .CK(Clk), .RN(n1575), .Q(n732), 
        .QN(n1356) );
  DFFR_X1 \W_data_in_reg[1][10]  ( .D(n1510), .CK(Clk), .RN(n1575), .Q(n731), 
        .QN(n1357) );
  DFFR_X1 \W_data_in_reg[1][9]  ( .D(n1509), .CK(Clk), .RN(n1575), .Q(n730), 
        .QN(n1358) );
  DFFR_X1 \W_data_in_reg[1][8]  ( .D(n1508), .CK(Clk), .RN(n1575), .Q(n729), 
        .QN(n1359) );
  DFFR_X1 \S_data_in_reg[1][11]  ( .D(n1495), .CK(Clk), .RN(n1575), .Q(n784), 
        .QN(n1372) );
  DFFR_X1 \S_data_in_reg[1][10]  ( .D(n1494), .CK(Clk), .RN(n1575), .Q(n783), 
        .QN(n1373) );
  DFFR_X1 \S_data_in_reg[1][9]  ( .D(n1493), .CK(Clk), .RN(n1575), .Q(n782), 
        .QN(n1374) );
  DFFR_X1 \S_data_in_reg[1][8]  ( .D(n1492), .CK(Clk), .RN(n1575), .Q(n781), 
        .QN(n1375) );
  DFFR_X1 \N_data_in_reg[1][11]  ( .D(n1487), .CK(Clk), .RN(n1575), .Q(n810), 
        .QN(n1380) );
  DFFR_X1 \N_data_in_reg[1][10]  ( .D(n1486), .CK(Clk), .RN(n1575), .Q(n809), 
        .QN(n1381) );
  DFFR_X1 \N_data_in_reg[1][9]  ( .D(n1485), .CK(Clk), .RN(n1575), .Q(n808), 
        .QN(n1382) );
  DFFR_X1 \N_data_in_reg[1][8]  ( .D(n1484), .CK(Clk), .RN(n1575), .Q(n807), 
        .QN(n1383) );
  DFFR_X1 \I_data_in_reg[1][11]  ( .D(n1519), .CK(Clk), .RN(n1575), .Q(n836), 
        .QN(n1348) );
  DFFR_X1 \I_data_in_reg[1][10]  ( .D(n1518), .CK(Clk), .RN(n1575), .Q(n835), 
        .QN(n1349) );
  DFFR_X1 \I_data_in_reg[1][9]  ( .D(n1517), .CK(Clk), .RN(n1575), .Q(n834), 
        .QN(n1350) );
  DFFR_X1 \I_data_in_reg[1][8]  ( .D(n1516), .CK(Clk), .RN(n1575), .Q(n833), 
        .QN(n1351) );
  DFFR_X1 \E_data_in_reg[1][11]  ( .D(n1503), .CK(Clk), .RN(n1575), .Q(n758), 
        .QN(n1364) );
  DFFR_X1 \E_data_in_reg[1][10]  ( .D(n1502), .CK(Clk), .RN(n1575), .Q(n757), 
        .QN(n1365) );
  DFFR_X1 \E_data_in_reg[1][9]  ( .D(n1501), .CK(Clk), .RN(n1575), .Q(n756), 
        .QN(n1366) );
  DFFR_X1 \E_data_in_reg[1][8]  ( .D(n1500), .CK(Clk), .RN(n1575), .Q(n755), 
        .QN(n1367) );
  INV_X1 U316 ( .A(n1550), .ZN(n1533) );
  INV_X1 U317 ( .A(n1550), .ZN(n1534) );
  INV_X1 U318 ( .A(n1550), .ZN(n1551) );
  INV_X2 U319 ( .A(n1553), .ZN(n1550) );
  INV_X1 U320 ( .A(Rst), .ZN(n1578) );
  OAI21_X1 U321 ( .B1(n465), .B2(n471), .A(n1566), .ZN(n1579) );
  CLKBUF_X1 U322 ( .A(n1584), .Z(n1549) );
  BUF_X1 U323 ( .A(n1578), .Z(n1568) );
  INV_X2 U324 ( .A(n1578), .ZN(n1544) );
  OAI21_X1 U325 ( .B1(n501), .B2(n495), .A(n1564), .ZN(n1543) );
  OAI21_X1 U326 ( .B1(n501), .B2(n495), .A(n1564), .ZN(n1581) );
  INV_X1 U327 ( .A(n1543), .ZN(n1545) );
  INV_X1 U328 ( .A(n1581), .ZN(n1546) );
  INV_X1 U329 ( .A(n1581), .ZN(n1554) );
  INV_X2 U330 ( .A(n1579), .ZN(n1547) );
  INV_X1 U331 ( .A(n1579), .ZN(n1585) );
  BUF_X1 U332 ( .A(n1584), .Z(n1548) );
  INV_X1 U333 ( .A(n1580), .ZN(n1584) );
  CLKBUF_X1 U334 ( .A(n456), .Z(n1552) );
  INV_X1 U335 ( .A(n1543), .ZN(n1553) );
  BUF_X4 U336 ( .A(n1544), .Z(n1564) );
  CLKBUF_X1 U337 ( .A(n1544), .Z(n1566) );
  CLKBUF_X1 U338 ( .A(n1577), .Z(n1565) );
  BUF_X1 U339 ( .A(router_address_x[2]), .Z(n1571) );
  INV_X1 U340 ( .A(n1578), .ZN(n1577) );
  INV_X1 U341 ( .A(n1205), .ZN(n1594) );
  INV_X1 U342 ( .A(n1189), .ZN(n1589) );
  INV_X1 U343 ( .A(n1181), .ZN(n1587) );
  INV_X1 U344 ( .A(n1213), .ZN(n1595) );
  INV_X1 U345 ( .A(n1197), .ZN(n1591) );
  INV_X1 U346 ( .A(n1200), .ZN(n1593) );
  INV_X1 U347 ( .A(n1192), .ZN(n1592) );
  INV_X1 U348 ( .A(n1208), .ZN(n1586) );
  INV_X1 U349 ( .A(n1176), .ZN(n1588) );
  INV_X1 U350 ( .A(n1184), .ZN(n1590) );
  BUF_X1 U351 ( .A(router_address_x[2]), .Z(n1570) );
  BUF_X1 U352 ( .A(router_address_y[2]), .Z(n1572) );
  BUF_X1 U353 ( .A(router_address_y[2]), .Z(n1573) );
  NOR2_X1 U354 ( .A1(n847), .A2(i_vc_in[0]), .ZN(n1213) );
  NOR2_X1 U355 ( .A1(n841), .A2(e_vc_in[0]), .ZN(n1197) );
  NOR2_X1 U356 ( .A1(s_vc_in[0]), .A2(n843), .ZN(n1189) );
  NOR2_X1 U357 ( .A1(n_vc_in[0]), .A2(n845), .ZN(n1181) );
  NOR2_X1 U358 ( .A1(w_vc_in[0]), .A2(n839), .ZN(n1205) );
  NOR2_X1 U359 ( .A1(n842), .A2(n1647), .ZN(n1192) );
  INV_X1 U360 ( .A(e_vc_in[0]), .ZN(n1647) );
  NOR2_X1 U361 ( .A1(n848), .A2(n1634), .ZN(n1208) );
  INV_X1 U362 ( .A(i_vc_in[0]), .ZN(n1634) );
  NOR2_X1 U363 ( .A1(n840), .A2(n1660), .ZN(n1200) );
  INV_X1 U364 ( .A(w_vc_in[0]), .ZN(n1660) );
  NOR2_X1 U365 ( .A1(n846), .A2(n1608), .ZN(n1176) );
  INV_X1 U366 ( .A(n_vc_in[0]), .ZN(n1608) );
  NOR2_X1 U367 ( .A1(n844), .A2(n1621), .ZN(n1184) );
  INV_X1 U368 ( .A(s_vc_in[0]), .ZN(n1621) );
  OAI22_X1 U369 ( .A1(n1622), .A2(n1595), .B1(n1344), .B2(n1213), .ZN(n1523)
         );
  OAI22_X1 U370 ( .A1(n1623), .A2(n1595), .B1(n1345), .B2(n1213), .ZN(n1522)
         );
  OAI22_X1 U371 ( .A1(n1624), .A2(n1595), .B1(n1346), .B2(n1213), .ZN(n1521)
         );
  OAI22_X1 U372 ( .A1(n1625), .A2(n1595), .B1(n1347), .B2(n1213), .ZN(n1520)
         );
  OAI22_X1 U373 ( .A1(n1648), .A2(n1594), .B1(n1352), .B2(n1205), .ZN(n1515)
         );
  OAI22_X1 U374 ( .A1(n1649), .A2(n1594), .B1(n1353), .B2(n1205), .ZN(n1514)
         );
  OAI22_X1 U375 ( .A1(n1650), .A2(n1594), .B1(n1354), .B2(n1205), .ZN(n1513)
         );
  OAI22_X1 U376 ( .A1(n1651), .A2(n1594), .B1(n1355), .B2(n1205), .ZN(n1512)
         );
  OAI22_X1 U377 ( .A1(n1635), .A2(n1591), .B1(n1360), .B2(n1197), .ZN(n1507)
         );
  OAI22_X1 U378 ( .A1(n1636), .A2(n1591), .B1(n1361), .B2(n1197), .ZN(n1506)
         );
  OAI22_X1 U379 ( .A1(n1637), .A2(n1591), .B1(n1362), .B2(n1197), .ZN(n1505)
         );
  OAI22_X1 U380 ( .A1(n1638), .A2(n1591), .B1(n1363), .B2(n1197), .ZN(n1504)
         );
  OAI22_X1 U381 ( .A1(n1609), .A2(n1589), .B1(n1368), .B2(n1189), .ZN(n1499)
         );
  OAI22_X1 U382 ( .A1(n1610), .A2(n1589), .B1(n1369), .B2(n1189), .ZN(n1498)
         );
  OAI22_X1 U383 ( .A1(n1611), .A2(n1589), .B1(n1370), .B2(n1189), .ZN(n1497)
         );
  OAI22_X1 U384 ( .A1(n1612), .A2(n1589), .B1(n1371), .B2(n1189), .ZN(n1496)
         );
  OAI22_X1 U385 ( .A1(n1596), .A2(n1587), .B1(n1376), .B2(n1181), .ZN(n1491)
         );
  OAI22_X1 U386 ( .A1(n1597), .A2(n1587), .B1(n1377), .B2(n1181), .ZN(n1490)
         );
  OAI22_X1 U387 ( .A1(n1598), .A2(n1587), .B1(n1378), .B2(n1181), .ZN(n1489)
         );
  OAI22_X1 U388 ( .A1(n1599), .A2(n1587), .B1(n1379), .B2(n1181), .ZN(n1488)
         );
  OAI22_X1 U389 ( .A1(n1593), .A2(n1648), .B1(n1356), .B2(n1200), .ZN(n1511)
         );
  OAI22_X1 U390 ( .A1(n1593), .A2(n1649), .B1(n1357), .B2(n1200), .ZN(n1510)
         );
  OAI22_X1 U391 ( .A1(n1593), .A2(n1650), .B1(n1358), .B2(n1200), .ZN(n1509)
         );
  OAI22_X1 U392 ( .A1(n1593), .A2(n1651), .B1(n1359), .B2(n1200), .ZN(n1508)
         );
  OAI22_X1 U393 ( .A1(n1592), .A2(n1635), .B1(n1364), .B2(n1192), .ZN(n1503)
         );
  OAI22_X1 U394 ( .A1(n1592), .A2(n1636), .B1(n1365), .B2(n1192), .ZN(n1502)
         );
  OAI22_X1 U395 ( .A1(n1592), .A2(n1637), .B1(n1366), .B2(n1192), .ZN(n1501)
         );
  OAI22_X1 U396 ( .A1(n1592), .A2(n1638), .B1(n1367), .B2(n1192), .ZN(n1500)
         );
  OAI22_X1 U397 ( .A1(n1586), .A2(n1622), .B1(n1348), .B2(n1208), .ZN(n1519)
         );
  OAI22_X1 U398 ( .A1(n1586), .A2(n1623), .B1(n1349), .B2(n1208), .ZN(n1518)
         );
  OAI22_X1 U399 ( .A1(n1586), .A2(n1624), .B1(n1350), .B2(n1208), .ZN(n1517)
         );
  OAI22_X1 U400 ( .A1(n1586), .A2(n1625), .B1(n1351), .B2(n1208), .ZN(n1516)
         );
  OAI22_X1 U401 ( .A1(n1588), .A2(n1596), .B1(n1380), .B2(n1176), .ZN(n1487)
         );
  OAI22_X1 U402 ( .A1(n1588), .A2(n1597), .B1(n1381), .B2(n1176), .ZN(n1486)
         );
  OAI22_X1 U403 ( .A1(n1588), .A2(n1598), .B1(n1382), .B2(n1176), .ZN(n1485)
         );
  OAI22_X1 U404 ( .A1(n1588), .A2(n1599), .B1(n1383), .B2(n1176), .ZN(n1484)
         );
  OAI22_X1 U405 ( .A1(n1590), .A2(n1609), .B1(n1372), .B2(n1184), .ZN(n1495)
         );
  OAI22_X1 U406 ( .A1(n1590), .A2(n1610), .B1(n1373), .B2(n1184), .ZN(n1494)
         );
  OAI22_X1 U407 ( .A1(n1590), .A2(n1611), .B1(n1374), .B2(n1184), .ZN(n1493)
         );
  OAI22_X1 U408 ( .A1(n1590), .A2(n1612), .B1(n1375), .B2(n1184), .ZN(n1492)
         );
  BUF_X2 U409 ( .A(router_address_y[1]), .Z(n1574) );
  OAI21_X1 U410 ( .B1(n1594), .B2(n1659), .A(n1231), .ZN(n1404) );
  NAND2_X1 U411 ( .A1(n709), .A2(n1594), .ZN(n1231) );
  OAI21_X1 U412 ( .B1(n1594), .B2(n1658), .A(n1233), .ZN(n1405) );
  NAND2_X1 U413 ( .A1(n710), .A2(n1594), .ZN(n1233) );
  OAI21_X1 U414 ( .B1(n1594), .B2(n1657), .A(n1235), .ZN(n1406) );
  NAND2_X1 U415 ( .A1(n711), .A2(n1594), .ZN(n1235) );
  OAI21_X1 U416 ( .B1(n1594), .B2(n1656), .A(n1237), .ZN(n1407) );
  NAND2_X1 U417 ( .A1(n712), .A2(n1594), .ZN(n1237) );
  OAI21_X1 U418 ( .B1(n1594), .B2(n1655), .A(n1239), .ZN(n1408) );
  NAND2_X1 U419 ( .A1(n713), .A2(n1594), .ZN(n1239) );
  OAI21_X1 U420 ( .B1(n1594), .B2(n1654), .A(n1241), .ZN(n1409) );
  NAND2_X1 U421 ( .A1(n714), .A2(n1594), .ZN(n1241) );
  OAI21_X1 U422 ( .B1(n1594), .B2(n1653), .A(n1243), .ZN(n1410) );
  NAND2_X1 U423 ( .A1(n715), .A2(n1594), .ZN(n1243) );
  OAI21_X1 U424 ( .B1(n1594), .B2(n1652), .A(n1245), .ZN(n1411) );
  NAND2_X1 U425 ( .A1(n716), .A2(n1594), .ZN(n1245) );
  OAI21_X1 U426 ( .B1(n1589), .B2(n1620), .A(n1263), .ZN(n1422) );
  NAND2_X1 U427 ( .A1(n761), .A2(n1589), .ZN(n1263) );
  OAI21_X1 U428 ( .B1(n1589), .B2(n1619), .A(n1265), .ZN(n1423) );
  NAND2_X1 U429 ( .A1(n762), .A2(n1589), .ZN(n1265) );
  OAI21_X1 U430 ( .B1(n1589), .B2(n1618), .A(n1267), .ZN(n1424) );
  NAND2_X1 U431 ( .A1(n763), .A2(n1589), .ZN(n1267) );
  OAI21_X1 U432 ( .B1(n1589), .B2(n1617), .A(n1269), .ZN(n1425) );
  NAND2_X1 U433 ( .A1(n764), .A2(n1589), .ZN(n1269) );
  OAI21_X1 U434 ( .B1(n1589), .B2(n1616), .A(n1271), .ZN(n1426) );
  NAND2_X1 U435 ( .A1(n765), .A2(n1589), .ZN(n1271) );
  OAI21_X1 U436 ( .B1(n1589), .B2(n1615), .A(n1273), .ZN(n1427) );
  NAND2_X1 U437 ( .A1(n766), .A2(n1589), .ZN(n1273) );
  OAI21_X1 U438 ( .B1(n1589), .B2(n1614), .A(n1275), .ZN(n1428) );
  NAND2_X1 U439 ( .A1(n767), .A2(n1589), .ZN(n1275) );
  OAI21_X1 U440 ( .B1(n1589), .B2(n1613), .A(n1277), .ZN(n1429) );
  NAND2_X1 U441 ( .A1(n768), .A2(n1589), .ZN(n1277) );
  OAI21_X1 U442 ( .B1(n1587), .B2(n1607), .A(n1279), .ZN(n1431) );
  NAND2_X1 U443 ( .A1(n787), .A2(n1587), .ZN(n1279) );
  OAI21_X1 U444 ( .B1(n1587), .B2(n1606), .A(n1281), .ZN(n1432) );
  NAND2_X1 U445 ( .A1(n788), .A2(n1587), .ZN(n1281) );
  OAI21_X1 U446 ( .B1(n1587), .B2(n1605), .A(n1283), .ZN(n1433) );
  NAND2_X1 U447 ( .A1(n789), .A2(n1587), .ZN(n1283) );
  OAI21_X1 U448 ( .B1(n1587), .B2(n1604), .A(n1285), .ZN(n1434) );
  NAND2_X1 U449 ( .A1(n790), .A2(n1587), .ZN(n1285) );
  OAI21_X1 U450 ( .B1(n1587), .B2(n1603), .A(n1287), .ZN(n1435) );
  NAND2_X1 U451 ( .A1(n791), .A2(n1587), .ZN(n1287) );
  OAI21_X1 U452 ( .B1(n1587), .B2(n1602), .A(n1289), .ZN(n1436) );
  NAND2_X1 U453 ( .A1(n792), .A2(n1587), .ZN(n1289) );
  OAI21_X1 U454 ( .B1(n1587), .B2(n1601), .A(n1291), .ZN(n1437) );
  NAND2_X1 U455 ( .A1(n793), .A2(n1587), .ZN(n1291) );
  OAI21_X1 U456 ( .B1(n1587), .B2(n1600), .A(n1293), .ZN(n1438) );
  NAND2_X1 U457 ( .A1(n794), .A2(n1587), .ZN(n1293) );
  OAI21_X1 U458 ( .B1(n1595), .B2(n1633), .A(n1215), .ZN(n1395) );
  NAND2_X1 U459 ( .A1(n813), .A2(n1595), .ZN(n1215) );
  OAI21_X1 U460 ( .B1(n1595), .B2(n1632), .A(n1217), .ZN(n1396) );
  NAND2_X1 U461 ( .A1(n814), .A2(n1595), .ZN(n1217) );
  OAI21_X1 U462 ( .B1(n1595), .B2(n1631), .A(n1219), .ZN(n1397) );
  NAND2_X1 U463 ( .A1(n815), .A2(n1595), .ZN(n1219) );
  OAI21_X1 U464 ( .B1(n1595), .B2(n1630), .A(n1221), .ZN(n1398) );
  NAND2_X1 U465 ( .A1(n816), .A2(n1595), .ZN(n1221) );
  OAI21_X1 U466 ( .B1(n1595), .B2(n1629), .A(n1223), .ZN(n1399) );
  NAND2_X1 U467 ( .A1(n817), .A2(n1595), .ZN(n1223) );
  OAI21_X1 U468 ( .B1(n1595), .B2(n1628), .A(n1225), .ZN(n1400) );
  NAND2_X1 U469 ( .A1(n818), .A2(n1595), .ZN(n1225) );
  OAI21_X1 U470 ( .B1(n1595), .B2(n1627), .A(n1227), .ZN(n1401) );
  NAND2_X1 U471 ( .A1(n819), .A2(n1595), .ZN(n1227) );
  OAI21_X1 U472 ( .B1(n1595), .B2(n1626), .A(n1229), .ZN(n1402) );
  NAND2_X1 U473 ( .A1(n820), .A2(n1595), .ZN(n1229) );
  OAI21_X1 U474 ( .B1(n1591), .B2(n1646), .A(n1247), .ZN(n1413) );
  NAND2_X1 U475 ( .A1(n735), .A2(n1591), .ZN(n1247) );
  OAI21_X1 U476 ( .B1(n1591), .B2(n1645), .A(n1249), .ZN(n1414) );
  NAND2_X1 U477 ( .A1(n736), .A2(n1591), .ZN(n1249) );
  OAI21_X1 U478 ( .B1(n1591), .B2(n1644), .A(n1251), .ZN(n1415) );
  NAND2_X1 U479 ( .A1(n737), .A2(n1591), .ZN(n1251) );
  OAI21_X1 U480 ( .B1(n1591), .B2(n1643), .A(n1253), .ZN(n1416) );
  NAND2_X1 U481 ( .A1(n738), .A2(n1591), .ZN(n1253) );
  OAI21_X1 U482 ( .B1(n1591), .B2(n1642), .A(n1255), .ZN(n1417) );
  NAND2_X1 U483 ( .A1(n739), .A2(n1591), .ZN(n1255) );
  OAI21_X1 U484 ( .B1(n1591), .B2(n1641), .A(n1257), .ZN(n1418) );
  NAND2_X1 U485 ( .A1(n740), .A2(n1591), .ZN(n1257) );
  OAI21_X1 U486 ( .B1(n1591), .B2(n1640), .A(n1259), .ZN(n1419) );
  NAND2_X1 U487 ( .A1(n741), .A2(n1591), .ZN(n1259) );
  OAI21_X1 U488 ( .B1(n1591), .B2(n1639), .A(n1261), .ZN(n1420) );
  NAND2_X1 U489 ( .A1(n742), .A2(n1591), .ZN(n1261) );
  OAI21_X1 U490 ( .B1(n1593), .B2(n1659), .A(n1294), .ZN(n1440) );
  NAND2_X1 U491 ( .A1(n721), .A2(n1593), .ZN(n1294) );
  OAI21_X1 U492 ( .B1(n1593), .B2(n1658), .A(n1295), .ZN(n1441) );
  NAND2_X1 U493 ( .A1(n722), .A2(n1593), .ZN(n1295) );
  OAI21_X1 U494 ( .B1(n1593), .B2(n1657), .A(n1296), .ZN(n1442) );
  NAND2_X1 U495 ( .A1(n723), .A2(n1593), .ZN(n1296) );
  OAI21_X1 U496 ( .B1(n1593), .B2(n1656), .A(n1297), .ZN(n1443) );
  NAND2_X1 U497 ( .A1(n724), .A2(n1593), .ZN(n1297) );
  OAI21_X1 U498 ( .B1(n1593), .B2(n1655), .A(n1298), .ZN(n1444) );
  NAND2_X1 U499 ( .A1(n725), .A2(n1593), .ZN(n1298) );
  OAI21_X1 U500 ( .B1(n1593), .B2(n1654), .A(n1299), .ZN(n1445) );
  NAND2_X1 U501 ( .A1(n726), .A2(n1593), .ZN(n1299) );
  OAI21_X1 U502 ( .B1(n1593), .B2(n1653), .A(n1300), .ZN(n1446) );
  NAND2_X1 U503 ( .A1(n727), .A2(n1593), .ZN(n1300) );
  OAI21_X1 U504 ( .B1(n1593), .B2(n1652), .A(n1301), .ZN(n1447) );
  NAND2_X1 U505 ( .A1(n728), .A2(n1593), .ZN(n1301) );
  OAI21_X1 U506 ( .B1(n1592), .B2(n1646), .A(n1303), .ZN(n1449) );
  NAND2_X1 U507 ( .A1(n747), .A2(n1592), .ZN(n1303) );
  OAI21_X1 U508 ( .B1(n1592), .B2(n1645), .A(n1304), .ZN(n1450) );
  NAND2_X1 U509 ( .A1(n748), .A2(n1592), .ZN(n1304) );
  OAI21_X1 U510 ( .B1(n1592), .B2(n1644), .A(n1305), .ZN(n1451) );
  NAND2_X1 U511 ( .A1(n749), .A2(n1592), .ZN(n1305) );
  OAI21_X1 U512 ( .B1(n1592), .B2(n1643), .A(n1306), .ZN(n1452) );
  NAND2_X1 U513 ( .A1(n750), .A2(n1592), .ZN(n1306) );
  OAI21_X1 U514 ( .B1(n1592), .B2(n1642), .A(n1307), .ZN(n1453) );
  NAND2_X1 U515 ( .A1(n751), .A2(n1592), .ZN(n1307) );
  OAI21_X1 U516 ( .B1(n1592), .B2(n1641), .A(n1308), .ZN(n1454) );
  NAND2_X1 U517 ( .A1(n752), .A2(n1592), .ZN(n1308) );
  OAI21_X1 U518 ( .B1(n1592), .B2(n1640), .A(n1309), .ZN(n1455) );
  NAND2_X1 U519 ( .A1(n753), .A2(n1592), .ZN(n1309) );
  OAI21_X1 U520 ( .B1(n1592), .B2(n1639), .A(n1310), .ZN(n1456) );
  NAND2_X1 U521 ( .A1(n754), .A2(n1592), .ZN(n1310) );
  OAI21_X1 U522 ( .B1(n1586), .B2(n1633), .A(n1312), .ZN(n1458) );
  NAND2_X1 U523 ( .A1(n825), .A2(n1586), .ZN(n1312) );
  OAI21_X1 U524 ( .B1(n1586), .B2(n1632), .A(n1313), .ZN(n1459) );
  NAND2_X1 U525 ( .A1(n826), .A2(n1586), .ZN(n1313) );
  OAI21_X1 U526 ( .B1(n1586), .B2(n1631), .A(n1314), .ZN(n1460) );
  NAND2_X1 U527 ( .A1(n827), .A2(n1586), .ZN(n1314) );
  OAI21_X1 U528 ( .B1(n1586), .B2(n1630), .A(n1315), .ZN(n1461) );
  NAND2_X1 U529 ( .A1(n828), .A2(n1586), .ZN(n1315) );
  OAI21_X1 U530 ( .B1(n1586), .B2(n1629), .A(n1316), .ZN(n1462) );
  NAND2_X1 U531 ( .A1(n829), .A2(n1586), .ZN(n1316) );
  OAI21_X1 U532 ( .B1(n1586), .B2(n1628), .A(n1317), .ZN(n1463) );
  NAND2_X1 U533 ( .A1(n830), .A2(n1586), .ZN(n1317) );
  OAI21_X1 U534 ( .B1(n1586), .B2(n1627), .A(n1318), .ZN(n1464) );
  NAND2_X1 U535 ( .A1(n831), .A2(n1586), .ZN(n1318) );
  OAI21_X1 U536 ( .B1(n1586), .B2(n1626), .A(n1319), .ZN(n1465) );
  NAND2_X1 U537 ( .A1(n832), .A2(n1586), .ZN(n1319) );
  OAI21_X1 U538 ( .B1(n1588), .B2(n1607), .A(n1321), .ZN(n1467) );
  NAND2_X1 U539 ( .A1(n799), .A2(n1588), .ZN(n1321) );
  OAI21_X1 U540 ( .B1(n1588), .B2(n1606), .A(n1322), .ZN(n1468) );
  NAND2_X1 U541 ( .A1(n800), .A2(n1588), .ZN(n1322) );
  OAI21_X1 U542 ( .B1(n1588), .B2(n1605), .A(n1323), .ZN(n1469) );
  NAND2_X1 U543 ( .A1(n801), .A2(n1588), .ZN(n1323) );
  OAI21_X1 U544 ( .B1(n1588), .B2(n1604), .A(n1324), .ZN(n1470) );
  NAND2_X1 U545 ( .A1(n802), .A2(n1588), .ZN(n1324) );
  OAI21_X1 U546 ( .B1(n1588), .B2(n1603), .A(n1325), .ZN(n1471) );
  NAND2_X1 U547 ( .A1(n803), .A2(n1588), .ZN(n1325) );
  OAI21_X1 U548 ( .B1(n1588), .B2(n1602), .A(n1326), .ZN(n1472) );
  NAND2_X1 U549 ( .A1(n804), .A2(n1588), .ZN(n1326) );
  OAI21_X1 U550 ( .B1(n1588), .B2(n1601), .A(n1327), .ZN(n1473) );
  NAND2_X1 U551 ( .A1(n805), .A2(n1588), .ZN(n1327) );
  OAI21_X1 U552 ( .B1(n1588), .B2(n1600), .A(n1328), .ZN(n1474) );
  NAND2_X1 U553 ( .A1(n806), .A2(n1588), .ZN(n1328) );
  OAI21_X1 U554 ( .B1(n1590), .B2(n1620), .A(n1330), .ZN(n1476) );
  NAND2_X1 U555 ( .A1(n773), .A2(n1590), .ZN(n1330) );
  OAI21_X1 U556 ( .B1(n1590), .B2(n1619), .A(n1331), .ZN(n1477) );
  NAND2_X1 U557 ( .A1(n774), .A2(n1590), .ZN(n1331) );
  OAI21_X1 U558 ( .B1(n1590), .B2(n1618), .A(n1332), .ZN(n1478) );
  NAND2_X1 U559 ( .A1(n775), .A2(n1590), .ZN(n1332) );
  OAI21_X1 U560 ( .B1(n1590), .B2(n1617), .A(n1333), .ZN(n1479) );
  NAND2_X1 U561 ( .A1(n776), .A2(n1590), .ZN(n1333) );
  OAI21_X1 U562 ( .B1(n1590), .B2(n1616), .A(n1334), .ZN(n1480) );
  NAND2_X1 U563 ( .A1(n777), .A2(n1590), .ZN(n1334) );
  OAI21_X1 U564 ( .B1(n1590), .B2(n1615), .A(n1335), .ZN(n1481) );
  NAND2_X1 U565 ( .A1(n778), .A2(n1590), .ZN(n1335) );
  OAI21_X1 U566 ( .B1(n1590), .B2(n1614), .A(n1336), .ZN(n1482) );
  NAND2_X1 U567 ( .A1(n779), .A2(n1590), .ZN(n1336) );
  OAI21_X1 U568 ( .B1(n1590), .B2(n1613), .A(n1337), .ZN(n1483) );
  NAND2_X1 U569 ( .A1(n780), .A2(n1590), .ZN(n1337) );
  OR2_X1 U570 ( .A1(n1527), .A2(\sub_362_aco/A[0] ), .ZN(
        \sub_362_aco/carry[1] ) );
  OR2_X1 U571 ( .A1(n1525), .A2(\sub_389_aco/A[0] ), .ZN(
        \sub_389_aco/carry[1] ) );
  OR2_X1 U572 ( .A1(n1524), .A2(\sub_402_aco/A[0] ), .ZN(
        \sub_402_aco/carry[1] ) );
  OR2_X1 U573 ( .A1(n1528), .A2(\sub_408_aco/A[0] ), .ZN(
        \sub_408_aco/carry[1] ) );
  OR2_X1 U574 ( .A1(n1529), .A2(\sub_395_aco/A[0] ), .ZN(
        \sub_395_aco/carry[1] ) );
  OR2_X1 U575 ( .A1(n1526), .A2(\sub_376_aco/A[0] ), .ZN(
        \sub_376_aco/carry[1] ) );
  OR2_X1 U576 ( .A1(\sub_362_aco/A[1] ), .A2(\sub_362_aco/carry[1] ), .ZN(
        \sub_362_aco/carry[2] ) );
  OR2_X1 U577 ( .A1(\sub_389_aco/A[1] ), .A2(\sub_389_aco/carry[1] ), .ZN(
        \sub_389_aco/carry[2] ) );
  OR2_X1 U578 ( .A1(\sub_402_aco/A[1] ), .A2(\sub_402_aco/carry[1] ), .ZN(
        \sub_402_aco/carry[2] ) );
  OR2_X1 U579 ( .A1(\sub_408_aco/A[1] ), .A2(\sub_408_aco/carry[1] ), .ZN(
        \sub_408_aco/carry[2] ) );
  OR2_X1 U580 ( .A1(\sub_395_aco/A[1] ), .A2(\sub_395_aco/carry[1] ), .ZN(
        \sub_395_aco/carry[2] ) );
  OR2_X1 U581 ( .A1(\sub_376_aco/A[1] ), .A2(\sub_376_aco/carry[1] ), .ZN(
        \sub_376_aco/carry[2] ) );
  OR2_X1 U582 ( .A1(\sub_362_aco/A[2] ), .A2(\sub_362_aco/carry[2] ), .ZN(
        \sub_362_aco/carry[3] ) );
  OR2_X1 U583 ( .A1(\sub_389_aco/A[2] ), .A2(\sub_389_aco/carry[2] ), .ZN(
        \sub_389_aco/carry[3] ) );
  OR2_X1 U584 ( .A1(\sub_402_aco/A[2] ), .A2(\sub_402_aco/carry[2] ), .ZN(
        \sub_402_aco/carry[3] ) );
  OR2_X1 U585 ( .A1(\sub_408_aco/A[2] ), .A2(\sub_408_aco/carry[2] ), .ZN(
        \sub_408_aco/carry[3] ) );
  OR2_X1 U586 ( .A1(\sub_395_aco/A[2] ), .A2(\sub_395_aco/carry[2] ), .ZN(
        \sub_395_aco/carry[3] ) );
  OR2_X1 U587 ( .A1(\sub_382_aco/A[2] ), .A2(\sub_382_aco/carry[2] ), .ZN(
        \sub_382_aco/carry[3] ) );
  OR2_X1 U588 ( .A1(\sub_368_aco/A[2] ), .A2(\sub_368_aco/carry[2] ), .ZN(
        \sub_368_aco/carry[3] ) );
  OR2_X1 U589 ( .A1(\sub_376_aco/A[2] ), .A2(\sub_376_aco/carry[2] ), .ZN(
        \sub_376_aco/carry[3] ) );
  OR2_X1 U590 ( .A1(\sub_362_aco/A[3] ), .A2(\sub_362_aco/carry[3] ), .ZN(
        \sub_362_aco/carry[4] ) );
  OR2_X1 U591 ( .A1(\sub_389_aco/A[3] ), .A2(\sub_389_aco/carry[3] ), .ZN(
        \sub_389_aco/carry[4] ) );
  OR2_X1 U592 ( .A1(\sub_402_aco/A[3] ), .A2(\sub_402_aco/carry[3] ), .ZN(
        \sub_402_aco/carry[4] ) );
  OR2_X1 U593 ( .A1(\sub_408_aco/A[3] ), .A2(\sub_408_aco/carry[3] ), .ZN(
        \sub_408_aco/carry[4] ) );
  OR2_X1 U594 ( .A1(\sub_395_aco/A[3] ), .A2(\sub_395_aco/carry[3] ), .ZN(
        \sub_395_aco/carry[4] ) );
  OR2_X1 U595 ( .A1(\sub_382_aco/A[3] ), .A2(\sub_382_aco/carry[3] ), .ZN(
        \sub_382_aco/carry[4] ) );
  OR2_X1 U596 ( .A1(\sub_368_aco/A[3] ), .A2(\sub_368_aco/carry[3] ), .ZN(
        \sub_368_aco/carry[4] ) );
  OR2_X1 U597 ( .A1(\sub_376_aco/A[3] ), .A2(\sub_376_aco/carry[3] ), .ZN(
        \sub_376_aco/carry[4] ) );
  OR2_X1 U598 ( .A1(\sub_362_aco/A[4] ), .A2(\sub_362_aco/carry[4] ), .ZN(
        \sub_362_aco/carry[5] ) );
  OR2_X1 U599 ( .A1(\sub_389_aco/A[4] ), .A2(\sub_389_aco/carry[4] ), .ZN(
        \sub_389_aco/carry[5] ) );
  OR2_X1 U600 ( .A1(\sub_402_aco/A[4] ), .A2(\sub_402_aco/carry[4] ), .ZN(
        \sub_402_aco/carry[5] ) );
  OR2_X1 U601 ( .A1(\sub_408_aco/A[4] ), .A2(\sub_408_aco/carry[4] ), .ZN(
        \sub_408_aco/carry[5] ) );
  OR2_X1 U602 ( .A1(\sub_395_aco/A[4] ), .A2(\sub_395_aco/carry[4] ), .ZN(
        \sub_395_aco/carry[5] ) );
  OR2_X1 U603 ( .A1(\sub_382_aco/A[4] ), .A2(\sub_382_aco/carry[4] ), .ZN(
        \sub_382_aco/carry[5] ) );
  OR2_X1 U604 ( .A1(\sub_368_aco/A[4] ), .A2(\sub_368_aco/carry[4] ), .ZN(
        \sub_368_aco/carry[5] ) );
  OR2_X1 U605 ( .A1(\sub_376_aco/A[4] ), .A2(\sub_376_aco/carry[4] ), .ZN(
        \sub_376_aco/carry[5] ) );
  OR2_X1 U606 ( .A1(\sub_362_aco/A[5] ), .A2(\sub_362_aco/carry[5] ), .ZN(
        \sub_362_aco/carry[6] ) );
  OR2_X1 U607 ( .A1(\sub_389_aco/A[5] ), .A2(\sub_389_aco/carry[5] ), .ZN(
        \sub_389_aco/carry[6] ) );
  OR2_X1 U608 ( .A1(\sub_402_aco/A[5] ), .A2(\sub_402_aco/carry[5] ), .ZN(
        \sub_402_aco/carry[6] ) );
  OR2_X1 U609 ( .A1(\sub_408_aco/A[5] ), .A2(\sub_408_aco/carry[5] ), .ZN(
        \sub_408_aco/carry[6] ) );
  OR2_X1 U610 ( .A1(\sub_395_aco/A[5] ), .A2(\sub_395_aco/carry[5] ), .ZN(
        \sub_395_aco/carry[6] ) );
  OR2_X1 U611 ( .A1(\sub_382_aco/A[5] ), .A2(\sub_382_aco/carry[5] ), .ZN(
        \sub_382_aco/carry[6] ) );
  OR2_X1 U612 ( .A1(\sub_368_aco/A[5] ), .A2(\sub_368_aco/carry[5] ), .ZN(
        \sub_368_aco/carry[6] ) );
  OR2_X1 U613 ( .A1(\sub_376_aco/A[5] ), .A2(\sub_376_aco/carry[5] ), .ZN(
        \sub_376_aco/carry[6] ) );
  AND4_X1 U614 ( .A1(n666), .A2(n665), .A3(n664), .A4(n663), .ZN(n1527) );
  AND4_X1 U615 ( .A1(n614), .A2(n613), .A3(n612), .A4(n611), .ZN(n1525) );
  AND4_X1 U616 ( .A1(n588), .A2(n587), .A3(n586), .A4(n585), .ZN(n1524) );
  AND4_X1 U617 ( .A1(n583), .A2(n582), .A3(n581), .A4(n580), .ZN(n1528) );
  AND4_X1 U618 ( .A1(n609), .A2(n608), .A3(n607), .A4(n606), .ZN(n1529) );
  AND4_X1 U619 ( .A1(n635), .A2(n634), .A3(n633), .A4(n632), .ZN(n1530) );
  AND4_X1 U620 ( .A1(n661), .A2(n660), .A3(n659), .A4(n658), .ZN(n1531) );
  AND4_X1 U621 ( .A1(n640), .A2(n639), .A3(n638), .A4(n637), .ZN(n1526) );
  XNOR2_X1 U622 ( .A(\sub_382_aco/A[6] ), .B(\sub_382_aco/carry[6] ), .ZN(
        \sub_382_aco/DIFF[6] ) );
  XNOR2_X1 U623 ( .A(\sub_368_aco/A[6] ), .B(\sub_368_aco/carry[6] ), .ZN(
        \sub_368_aco/DIFF[6] ) );
  XNOR2_X1 U624 ( .A(\sub_382_aco/A[5] ), .B(\sub_382_aco/carry[5] ), .ZN(
        \sub_382_aco/DIFF[5] ) );
  XNOR2_X1 U625 ( .A(\sub_368_aco/A[5] ), .B(\sub_368_aco/carry[5] ), .ZN(
        \sub_368_aco/DIFF[5] ) );
  XNOR2_X1 U626 ( .A(\sub_362_aco/A[6] ), .B(\sub_362_aco/carry[6] ), .ZN(
        \sub_362_aco/DIFF[6] ) );
  XNOR2_X1 U627 ( .A(\sub_362_aco/A[5] ), .B(\sub_362_aco/carry[5] ), .ZN(
        \sub_362_aco/DIFF[5] ) );
  XNOR2_X1 U628 ( .A(\sub_389_aco/A[6] ), .B(\sub_389_aco/carry[6] ), .ZN(
        \sub_389_aco/DIFF[6] ) );
  XNOR2_X1 U629 ( .A(\sub_389_aco/A[5] ), .B(\sub_389_aco/carry[5] ), .ZN(
        \sub_389_aco/DIFF[5] ) );
  XNOR2_X1 U630 ( .A(\sub_402_aco/A[6] ), .B(\sub_402_aco/carry[6] ), .ZN(
        \sub_402_aco/DIFF[6] ) );
  XNOR2_X1 U631 ( .A(\sub_402_aco/A[5] ), .B(\sub_402_aco/carry[5] ), .ZN(
        \sub_402_aco/DIFF[5] ) );
  XNOR2_X1 U632 ( .A(\sub_408_aco/A[6] ), .B(\sub_408_aco/carry[6] ), .ZN(
        \sub_408_aco/DIFF[6] ) );
  XNOR2_X1 U633 ( .A(\sub_408_aco/A[5] ), .B(\sub_408_aco/carry[5] ), .ZN(
        \sub_408_aco/DIFF[5] ) );
  XNOR2_X1 U634 ( .A(\sub_395_aco/A[6] ), .B(\sub_395_aco/carry[6] ), .ZN(
        \sub_395_aco/DIFF[6] ) );
  XNOR2_X1 U635 ( .A(\sub_395_aco/A[5] ), .B(\sub_395_aco/carry[5] ), .ZN(
        \sub_395_aco/DIFF[5] ) );
  XNOR2_X1 U636 ( .A(\sub_376_aco/A[6] ), .B(\sub_376_aco/carry[6] ), .ZN(
        \sub_376_aco/DIFF[6] ) );
  XNOR2_X1 U637 ( .A(\sub_376_aco/A[5] ), .B(\sub_376_aco/carry[5] ), .ZN(
        \sub_376_aco/DIFF[5] ) );
  XNOR2_X1 U638 ( .A(\sub_382_aco/A[7] ), .B(\sub_382_aco/carry[7] ), .ZN(
        \sub_382_aco/DIFF[7] ) );
  NAND2_X1 U639 ( .A1(n1539), .A2(n1559), .ZN(\sub_382_aco/carry[7] ) );
  INV_X1 U640 ( .A(\sub_382_aco/carry[6] ), .ZN(n1559) );
  XNOR2_X1 U641 ( .A(\sub_368_aco/A[7] ), .B(\sub_368_aco/carry[7] ), .ZN(
        \sub_368_aco/DIFF[7] ) );
  NAND2_X1 U642 ( .A1(n1535), .A2(n1557), .ZN(\sub_368_aco/carry[7] ) );
  INV_X1 U643 ( .A(\sub_368_aco/carry[6] ), .ZN(n1557) );
  XNOR2_X1 U644 ( .A(\sub_408_aco/A[7] ), .B(\sub_408_aco/carry[7] ), .ZN(
        \sub_408_aco/DIFF[7] ) );
  NAND2_X1 U645 ( .A1(n1537), .A2(n1563), .ZN(\sub_408_aco/carry[7] ) );
  INV_X1 U646 ( .A(\sub_408_aco/carry[6] ), .ZN(n1563) );
  XNOR2_X1 U647 ( .A(\sub_395_aco/A[7] ), .B(\sub_395_aco/carry[7] ), .ZN(
        \sub_395_aco/DIFF[7] ) );
  NAND2_X1 U648 ( .A1(n1538), .A2(n1561), .ZN(\sub_395_aco/carry[7] ) );
  INV_X1 U649 ( .A(\sub_395_aco/carry[6] ), .ZN(n1561) );
  XNOR2_X1 U650 ( .A(\sub_362_aco/A[7] ), .B(\sub_362_aco/carry[7] ), .ZN(
        \sub_362_aco/DIFF[7] ) );
  NAND2_X1 U651 ( .A1(n1536), .A2(n1556), .ZN(\sub_362_aco/carry[7] ) );
  INV_X1 U652 ( .A(\sub_362_aco/carry[6] ), .ZN(n1556) );
  XNOR2_X1 U653 ( .A(\sub_389_aco/A[7] ), .B(\sub_389_aco/carry[7] ), .ZN(
        \sub_389_aco/DIFF[7] ) );
  NAND2_X1 U654 ( .A1(n1540), .A2(n1560), .ZN(\sub_389_aco/carry[7] ) );
  INV_X1 U655 ( .A(\sub_389_aco/carry[6] ), .ZN(n1560) );
  XNOR2_X1 U656 ( .A(\sub_402_aco/A[7] ), .B(\sub_402_aco/carry[7] ), .ZN(
        \sub_402_aco/DIFF[7] ) );
  NAND2_X1 U657 ( .A1(n1541), .A2(n1562), .ZN(\sub_402_aco/carry[7] ) );
  INV_X1 U658 ( .A(\sub_402_aco/carry[6] ), .ZN(n1562) );
  XNOR2_X1 U659 ( .A(\sub_376_aco/A[7] ), .B(\sub_376_aco/carry[7] ), .ZN(
        \sub_376_aco/DIFF[7] ) );
  NAND2_X1 U660 ( .A1(n1542), .A2(n1558), .ZN(\sub_376_aco/carry[7] ) );
  INV_X1 U661 ( .A(\sub_376_aco/carry[6] ), .ZN(n1558) );
  NAND2_X1 U662 ( .A1(n1385), .A2(n1594), .ZN(n1403) );
  NAND2_X1 U663 ( .A1(n1387), .A2(n1589), .ZN(n1421) );
  NAND2_X1 U664 ( .A1(n1388), .A2(n1587), .ZN(n1430) );
  NAND2_X1 U665 ( .A1(n1384), .A2(n1595), .ZN(n1394) );
  NAND2_X1 U666 ( .A1(n1386), .A2(n1591), .ZN(n1412) );
  NAND2_X1 U667 ( .A1(n1389), .A2(n1593), .ZN(n1439) );
  NAND2_X1 U668 ( .A1(n1390), .A2(n1592), .ZN(n1448) );
  NAND2_X1 U669 ( .A1(n1391), .A2(n1586), .ZN(n1457) );
  NAND2_X1 U670 ( .A1(n1392), .A2(n1588), .ZN(n1466) );
  NAND2_X1 U671 ( .A1(n1393), .A2(n1590), .ZN(n1475) );
  OR2_X1 U672 ( .A1(n1530), .A2(\sub_382_aco/A[0] ), .ZN(
        \sub_382_aco/carry[1] ) );
  OR2_X1 U673 ( .A1(n1531), .A2(\sub_368_aco/A[0] ), .ZN(
        \sub_368_aco/carry[1] ) );
  BUF_X2 U674 ( .A(router_address_x[0]), .Z(n1569) );
  OR2_X1 U675 ( .A1(\sub_382_aco/A[1] ), .A2(\sub_382_aco/carry[1] ), .ZN(
        \sub_382_aco/carry[2] ) );
  OR2_X1 U676 ( .A1(\sub_368_aco/A[1] ), .A2(\sub_368_aco/carry[1] ), .ZN(
        \sub_368_aco/carry[2] ) );
  XNOR2_X1 U677 ( .A(n1530), .B(\sub_382_aco/A[0] ), .ZN(\sub_382_aco/DIFF[0] ) );
  XNOR2_X1 U678 ( .A(n1531), .B(\sub_368_aco/A[0] ), .ZN(\sub_368_aco/DIFF[0] ) );
  XNOR2_X1 U679 ( .A(\sub_382_aco/A[3] ), .B(\sub_382_aco/carry[3] ), .ZN(
        \sub_382_aco/DIFF[3] ) );
  XNOR2_X1 U680 ( .A(\sub_368_aco/A[3] ), .B(\sub_368_aco/carry[3] ), .ZN(
        \sub_368_aco/DIFF[3] ) );
  XNOR2_X1 U681 ( .A(n1528), .B(\sub_408_aco/A[0] ), .ZN(\sub_408_aco/DIFF[0] ) );
  XNOR2_X1 U682 ( .A(n1529), .B(\sub_395_aco/A[0] ), .ZN(\sub_395_aco/DIFF[0] ) );
  XNOR2_X1 U683 ( .A(n1527), .B(\sub_362_aco/A[0] ), .ZN(\sub_362_aco/DIFF[0] ) );
  XNOR2_X1 U684 ( .A(n1525), .B(\sub_389_aco/A[0] ), .ZN(\sub_389_aco/DIFF[0] ) );
  XNOR2_X1 U685 ( .A(n1524), .B(\sub_402_aco/A[0] ), .ZN(\sub_402_aco/DIFF[0] ) );
  XNOR2_X1 U686 ( .A(n1526), .B(\sub_376_aco/A[0] ), .ZN(\sub_376_aco/DIFF[0] ) );
  XNOR2_X1 U687 ( .A(\sub_382_aco/A[4] ), .B(\sub_382_aco/carry[4] ), .ZN(
        \sub_382_aco/DIFF[4] ) );
  XNOR2_X1 U688 ( .A(\sub_368_aco/A[4] ), .B(\sub_368_aco/carry[4] ), .ZN(
        \sub_368_aco/DIFF[4] ) );
  XNOR2_X1 U689 ( .A(\sub_382_aco/A[2] ), .B(\sub_382_aco/carry[2] ), .ZN(
        \sub_382_aco/DIFF[2] ) );
  XNOR2_X1 U690 ( .A(\sub_368_aco/A[2] ), .B(\sub_368_aco/carry[2] ), .ZN(
        \sub_368_aco/DIFF[2] ) );
  XNOR2_X1 U691 ( .A(\sub_382_aco/A[1] ), .B(\sub_382_aco/carry[1] ), .ZN(
        \sub_382_aco/DIFF[1] ) );
  XNOR2_X1 U692 ( .A(\sub_368_aco/A[1] ), .B(\sub_368_aco/carry[1] ), .ZN(
        \sub_368_aco/DIFF[1] ) );
  XNOR2_X1 U693 ( .A(\sub_362_aco/A[3] ), .B(\sub_362_aco/carry[3] ), .ZN(
        \sub_362_aco/DIFF[3] ) );
  XNOR2_X1 U694 ( .A(\sub_389_aco/A[3] ), .B(\sub_389_aco/carry[3] ), .ZN(
        \sub_389_aco/DIFF[3] ) );
  XNOR2_X1 U695 ( .A(\sub_402_aco/A[3] ), .B(\sub_402_aco/carry[3] ), .ZN(
        \sub_402_aco/DIFF[3] ) );
  XNOR2_X1 U696 ( .A(\sub_408_aco/A[3] ), .B(\sub_408_aco/carry[3] ), .ZN(
        \sub_408_aco/DIFF[3] ) );
  XNOR2_X1 U697 ( .A(\sub_395_aco/A[3] ), .B(\sub_395_aco/carry[3] ), .ZN(
        \sub_395_aco/DIFF[3] ) );
  XNOR2_X1 U698 ( .A(\sub_376_aco/A[3] ), .B(\sub_376_aco/carry[3] ), .ZN(
        \sub_376_aco/DIFF[3] ) );
  XNOR2_X1 U699 ( .A(\sub_362_aco/A[4] ), .B(\sub_362_aco/carry[4] ), .ZN(
        \sub_362_aco/DIFF[4] ) );
  XNOR2_X1 U700 ( .A(\sub_362_aco/A[2] ), .B(\sub_362_aco/carry[2] ), .ZN(
        \sub_362_aco/DIFF[2] ) );
  XNOR2_X1 U701 ( .A(\sub_389_aco/A[4] ), .B(\sub_389_aco/carry[4] ), .ZN(
        \sub_389_aco/DIFF[4] ) );
  XNOR2_X1 U702 ( .A(\sub_389_aco/A[2] ), .B(\sub_389_aco/carry[2] ), .ZN(
        \sub_389_aco/DIFF[2] ) );
  XNOR2_X1 U703 ( .A(\sub_402_aco/A[4] ), .B(\sub_402_aco/carry[4] ), .ZN(
        \sub_402_aco/DIFF[4] ) );
  XNOR2_X1 U704 ( .A(\sub_402_aco/A[2] ), .B(\sub_402_aco/carry[2] ), .ZN(
        \sub_402_aco/DIFF[2] ) );
  XNOR2_X1 U705 ( .A(\sub_408_aco/A[4] ), .B(\sub_408_aco/carry[4] ), .ZN(
        \sub_408_aco/DIFF[4] ) );
  XNOR2_X1 U706 ( .A(\sub_408_aco/A[2] ), .B(\sub_408_aco/carry[2] ), .ZN(
        \sub_408_aco/DIFF[2] ) );
  XNOR2_X1 U707 ( .A(\sub_395_aco/A[4] ), .B(\sub_395_aco/carry[4] ), .ZN(
        \sub_395_aco/DIFF[4] ) );
  XNOR2_X1 U708 ( .A(\sub_395_aco/A[2] ), .B(\sub_395_aco/carry[2] ), .ZN(
        \sub_395_aco/DIFF[2] ) );
  XNOR2_X1 U709 ( .A(\sub_376_aco/A[4] ), .B(\sub_376_aco/carry[4] ), .ZN(
        \sub_376_aco/DIFF[4] ) );
  XNOR2_X1 U710 ( .A(\sub_376_aco/A[2] ), .B(\sub_376_aco/carry[2] ), .ZN(
        \sub_376_aco/DIFF[2] ) );
  XNOR2_X1 U711 ( .A(\sub_362_aco/A[1] ), .B(\sub_362_aco/carry[1] ), .ZN(
        \sub_362_aco/DIFF[1] ) );
  XNOR2_X1 U712 ( .A(\sub_389_aco/A[1] ), .B(\sub_389_aco/carry[1] ), .ZN(
        \sub_389_aco/DIFF[1] ) );
  XNOR2_X1 U713 ( .A(\sub_402_aco/A[1] ), .B(\sub_402_aco/carry[1] ), .ZN(
        \sub_402_aco/DIFF[1] ) );
  XNOR2_X1 U714 ( .A(\sub_408_aco/A[1] ), .B(\sub_408_aco/carry[1] ), .ZN(
        \sub_408_aco/DIFF[1] ) );
  XNOR2_X1 U715 ( .A(\sub_395_aco/A[1] ), .B(\sub_395_aco/carry[1] ), .ZN(
        \sub_395_aco/DIFF[1] ) );
  XNOR2_X1 U716 ( .A(\sub_376_aco/A[1] ), .B(\sub_376_aco/carry[1] ), .ZN(
        \sub_376_aco/DIFF[1] ) );
  INV_X1 U717 ( .A(w_in[0]), .ZN(n1659) );
  INV_X1 U718 ( .A(w_in[1]), .ZN(n1658) );
  INV_X1 U719 ( .A(w_in[2]), .ZN(n1657) );
  INV_X1 U720 ( .A(w_in[3]), .ZN(n1656) );
  INV_X1 U721 ( .A(w_in[4]), .ZN(n1655) );
  INV_X1 U722 ( .A(w_in[5]), .ZN(n1654) );
  INV_X1 U723 ( .A(w_in[6]), .ZN(n1653) );
  INV_X1 U724 ( .A(w_in[7]), .ZN(n1652) );
  INV_X1 U725 ( .A(e_in[0]), .ZN(n1646) );
  INV_X1 U726 ( .A(e_in[1]), .ZN(n1645) );
  INV_X1 U727 ( .A(e_in[2]), .ZN(n1644) );
  INV_X1 U728 ( .A(e_in[3]), .ZN(n1643) );
  INV_X1 U729 ( .A(e_in[4]), .ZN(n1642) );
  INV_X1 U730 ( .A(e_in[5]), .ZN(n1641) );
  INV_X1 U731 ( .A(e_in[6]), .ZN(n1640) );
  INV_X1 U732 ( .A(e_in[7]), .ZN(n1639) );
  INV_X1 U733 ( .A(i_in[0]), .ZN(n1633) );
  INV_X1 U734 ( .A(i_in[1]), .ZN(n1632) );
  INV_X1 U735 ( .A(i_in[2]), .ZN(n1631) );
  INV_X1 U736 ( .A(i_in[3]), .ZN(n1630) );
  INV_X1 U737 ( .A(i_in[4]), .ZN(n1629) );
  INV_X1 U738 ( .A(i_in[5]), .ZN(n1628) );
  INV_X1 U739 ( .A(i_in[6]), .ZN(n1627) );
  INV_X1 U740 ( .A(i_in[7]), .ZN(n1626) );
  INV_X1 U741 ( .A(n_in[0]), .ZN(n1607) );
  INV_X1 U742 ( .A(n_in[1]), .ZN(n1606) );
  INV_X1 U743 ( .A(n_in[2]), .ZN(n1605) );
  INV_X1 U744 ( .A(n_in[3]), .ZN(n1604) );
  INV_X1 U745 ( .A(n_in[4]), .ZN(n1603) );
  INV_X1 U746 ( .A(n_in[5]), .ZN(n1602) );
  INV_X1 U747 ( .A(n_in[6]), .ZN(n1601) );
  INV_X1 U748 ( .A(n_in[7]), .ZN(n1600) );
  INV_X1 U749 ( .A(s_in[0]), .ZN(n1620) );
  INV_X1 U750 ( .A(s_in[1]), .ZN(n1619) );
  INV_X1 U751 ( .A(s_in[2]), .ZN(n1618) );
  INV_X1 U752 ( .A(s_in[3]), .ZN(n1617) );
  INV_X1 U753 ( .A(s_in[4]), .ZN(n1616) );
  INV_X1 U754 ( .A(s_in[5]), .ZN(n1615) );
  INV_X1 U755 ( .A(s_in[6]), .ZN(n1614) );
  INV_X1 U756 ( .A(s_in[7]), .ZN(n1613) );
  INV_X1 U757 ( .A(w_in[11]), .ZN(n1648) );
  INV_X1 U758 ( .A(w_in[10]), .ZN(n1649) );
  INV_X1 U759 ( .A(w_in[9]), .ZN(n1650) );
  INV_X1 U760 ( .A(w_in[8]), .ZN(n1651) );
  INV_X1 U761 ( .A(e_in[11]), .ZN(n1635) );
  INV_X1 U762 ( .A(e_in[10]), .ZN(n1636) );
  INV_X1 U763 ( .A(e_in[9]), .ZN(n1637) );
  INV_X1 U764 ( .A(e_in[8]), .ZN(n1638) );
  INV_X1 U765 ( .A(i_in[11]), .ZN(n1622) );
  INV_X1 U766 ( .A(i_in[10]), .ZN(n1623) );
  INV_X1 U767 ( .A(i_in[9]), .ZN(n1624) );
  INV_X1 U768 ( .A(i_in[8]), .ZN(n1625) );
  INV_X1 U769 ( .A(n_in[11]), .ZN(n1596) );
  INV_X1 U770 ( .A(n_in[10]), .ZN(n1597) );
  INV_X1 U771 ( .A(n_in[9]), .ZN(n1598) );
  INV_X1 U772 ( .A(n_in[8]), .ZN(n1599) );
  INV_X1 U773 ( .A(s_in[11]), .ZN(n1609) );
  INV_X1 U774 ( .A(s_in[10]), .ZN(n1610) );
  INV_X1 U775 ( .A(s_in[9]), .ZN(n1611) );
  INV_X1 U776 ( .A(s_in[8]), .ZN(n1612) );
  AND2_X1 U777 ( .A1(n1566), .A2(n1582), .ZN(n1555) );
  OR2_X1 U778 ( .A1(n1552), .A2(n450), .ZN(n1582) );
  NOR2_X1 U779 ( .A1(n456), .A2(n450), .ZN(n1567) );
  INV_X4 U780 ( .A(n1568), .ZN(n1575) );
  INV_X4 U781 ( .A(n1568), .ZN(n1576) );
  OAI21_X1 U782 ( .B1(n480), .B2(n486), .A(n1566), .ZN(n1580) );
  NOR2_X1 U783 ( .A1(n1567), .A2(n1568), .ZN(n1583) );
endmodule

