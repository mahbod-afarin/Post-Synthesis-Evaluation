
module file_1_0_SIZE8_1 ( requests, grants, grant_valid );
  input [7:0] requests;
  output [7:0] grants;
  output grant_valid;
  wire   n1, n2, n3, n4, n5;
  assign grants[0] = requests[0];

  NOR3X1 U1 ( .A(n1), .B(requests[6]), .C(n2), .Y(grants[7]) );
  NOR2X1 U2 ( .A(n2), .B(n3), .Y(grants[6]) );
  INVX1 U3 ( .A(n4), .Y(n2) );
  NOR3BX1 U4 ( .AN(requests[5]), .B(requests[4]), .C(n5), .Y(grants[5]) );
  NOR2BX1 U5 ( .AN(requests[4]), .B(n5), .Y(grants[4]) );
  NOR4BX1 U6 ( .AN(requests[3]), .B(requests[2]), .C(requests[1]), .D(
        requests[0]), .Y(grants[3]) );
  NOR3BX1 U7 ( .AN(requests[2]), .B(requests[1]), .C(requests[0]), .Y(
        grants[2]) );
  NOR2BX1 U8 ( .AN(requests[1]), .B(requests[0]), .Y(grants[1]) );
  NAND3X1 U9 ( .A(n3), .B(n1), .C(n4), .Y(grant_valid) );
  NOR3X1 U10 ( .A(requests[4]), .B(requests[5]), .C(n5), .Y(n4) );
  OR4X1 U11 ( .A(requests[2]), .B(requests[0]), .C(requests[1]), .D(
        requests[3]), .Y(n5) );
  INVX1 U12 ( .A(requests[7]), .Y(n1) );
  INVX1 U13 ( .A(requests[6]), .Y(n3) );
endmodule


module file_1_0_SIZE8_0 ( requests, grants, grant_valid );
  input [7:0] requests;
  output [7:0] grants;
  output grant_valid;
  wire   n1, n2, n3, n4, n5;
  assign grants[0] = requests[0];

  NOR3X1 U1 ( .A(n1), .B(requests[6]), .C(n2), .Y(grants[7]) );
  NOR2X1 U2 ( .A(n2), .B(n3), .Y(grants[6]) );
  INVX1 U3 ( .A(n4), .Y(n2) );
  NOR3BX1 U4 ( .AN(requests[5]), .B(requests[4]), .C(n5), .Y(grants[5]) );
  NOR2BX1 U5 ( .AN(requests[4]), .B(n5), .Y(grants[4]) );
  NOR4BX1 U6 ( .AN(requests[3]), .B(requests[2]), .C(requests[1]), .D(
        requests[0]), .Y(grants[3]) );
  NOR3BX1 U7 ( .AN(requests[2]), .B(requests[1]), .C(requests[0]), .Y(
        grants[2]) );
  NOR2BX1 U8 ( .AN(requests[1]), .B(requests[0]), .Y(grants[1]) );
  NAND3X1 U9 ( .A(n3), .B(n1), .C(n4), .Y(grant_valid) );
  NOR3X1 U10 ( .A(requests[4]), .B(requests[5]), .C(n5), .Y(n4) );
  OR4X1 U11 ( .A(requests[2]), .B(requests[0]), .C(requests[1]), .D(
        requests[3]), .Y(n5) );
  INVX1 U12 ( .A(requests[7]), .Y(n1) );
  INVX1 U13 ( .A(requests[6]), .Y(n3) );
endmodule


module file_1_1 ( ready, ready_urgent, sel, sel_valid, sel_valid_urgent );
  input [7:0] ready;
  input [7:0] ready_urgent;
  output [7:0] sel;
  output sel_valid, sel_valid_urgent;

  wire   [7:0] w_sel_normal;
  wire   [7:0] w_sel_urgent;

  MX2X1 U18 ( .A(w_sel_normal[7]), .B(w_sel_urgent[7]), .S0(sel_valid_urgent), 
        .Y(sel[7]) );
  MX2X1 U19 ( .A(w_sel_normal[6]), .B(w_sel_urgent[6]), .S0(sel_valid_urgent), 
        .Y(sel[6]) );
  MX2X1 U20 ( .A(w_sel_normal[5]), .B(w_sel_urgent[5]), .S0(sel_valid_urgent), 
        .Y(sel[5]) );
  MX2X1 U21 ( .A(w_sel_normal[4]), .B(w_sel_urgent[4]), .S0(sel_valid_urgent), 
        .Y(sel[4]) );
  MX2X1 U22 ( .A(w_sel_normal[3]), .B(w_sel_urgent[3]), .S0(sel_valid_urgent), 
        .Y(sel[3]) );
  MX2X1 U23 ( .A(w_sel_normal[2]), .B(w_sel_urgent[2]), .S0(sel_valid_urgent), 
        .Y(sel[2]) );
  MX2X1 U24 ( .A(w_sel_normal[1]), .B(w_sel_urgent[1]), .S0(sel_valid_urgent), 
        .Y(sel[1]) );
  MX2X1 U25 ( .A(w_sel_normal[0]), .B(w_sel_urgent[0]), .S0(sel_valid_urgent), 
        .Y(sel[0]) );
  file_1_0_SIZE8_1 file_1_0_u1 ( .requests(ready), .grants(w_sel_normal), 
        .grant_valid(sel_valid) );
  file_1_0_SIZE8_0 file_1_0_u2 ( .requests(ready_urgent), .grants(w_sel_urgent), .grant_valid(sel_valid_urgent) );
endmodule

