/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Fri Dec 23 02:46:51 2022
/////////////////////////////////////////////////////////////


module G_Cell_0 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_168 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_167 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_166 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_165 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw5_0 ( A, B, Cin, Sum, Cout );
  input [5:1] A;
  input [5:1] B;
  output [5:1] Sum;
  input Cin;
  output Cout;

  wire   [5:1] G;
  wire   [5:1] P;
  wire   [4:1] GG;

  AND2X1_RVT U11 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U12 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U13 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U14 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U15 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_0 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_168 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_167 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_166 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_165 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U2 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U3 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U4 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U6 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U7 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U8 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U9 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U10 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
endmodule


module G_Cell_164 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_163 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_162 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_161 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_160 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw5_1 ( A, B, Cin, Sum, Cout );
  input [5:1] A;
  input [5:1] B;
  output [5:1] Sum;
  input Cin;
  output Cout;

  wire   [5:1] G;
  wire   [5:1] P;
  wire   [4:1] GG;

  AND2X1_RVT U11 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U12 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U13 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U14 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U15 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_164 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_163 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_162 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_161 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_160 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U2 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U3 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U4 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U5 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U6 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U7 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U8 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U9 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U10 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
endmodule


module biasAdder ( A, B, out, shift, cout );
  input [4:0] A;
  input [4:0] B;
  output [4:0] out;
  input shift;
  output cout;
  wire   o1, o2;
  wire   [4:0] temp;

  OR2X1_RVT U3 ( .A1(o1), .A2(o2), .Y(cout) );
  RCA_bw5_0 badder1 ( .A(A), .B(B), .Cin(1'b1), .Sum(temp), .Cout(o1) );
  RCA_bw5_1 badder2 ( .A(temp), .B({1'b1, 1'b0, 1'b0, 1'b0, 1'b0}), .Cin(shift), .Sum(out), .Cout(o2) );
endmodule


module half_adder_0 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_72 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_71 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_70 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_0 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n1;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n1), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n1), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
endmodule


module Adder2_0 ( a, b, c, add, lsb, msb );
  output [1:0] msb;
  input a, b, c, add;
  output lsb;

  wire   [1:0] temp;
  wire   [2:0] carry;

  half_adder_72 u0 ( .A(a), .B(b), .sum(temp[0]), .cout(carry[0]) );
  half_adder_71 u1 ( .A(c), .B(add), .sum(temp[1]), .cout(carry[1]) );
  half_adder_70 u2 ( .A(temp[0]), .B(temp[1]), .sum(lsb), .cout(carry[2]) );
  full_adder_0 u3 ( .A(carry[0]), .B(carry[1]), .cin(carry[2]), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module half_adder_69 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_95 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module half_adder_68 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_67 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_94 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder3_0 ( a, b, c, d, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c, d;
  output lsb;

  wire   [1:0] st0;
  wire   [3:0] st1;
  wire   [1:0] st2;

  OR2X1_RVT U1 ( .A1(st2[0]), .A2(st2[1]), .Y(msb[1]) );
  half_adder_69 u0 ( .A(c), .B(d), .sum(st0[0]), .cout(st1[0]) );
  full_adder_95 u1 ( .A(a), .B(b), .cin(add[0]), .sum(st0[1]), .cout(st1[1])
         );
  half_adder_68 u2 ( .A(st0[0]), .B(st0[1]), .sum(lsb), .cout(st1[2]) );
  half_adder_67 u3 ( .A(st1[0]), .B(add[1]), .sum(st1[3]), .cout(st2[0]) );
  full_adder_94 u4 ( .A(st1[3]), .B(st1[2]), .cin(st1[1]), .sum(msb[0]), 
        .cout(st2[1]) );
endmodule


module full_adder_93 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module full_adder_92 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_91 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder4_0 ( a, b, c, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c;
  output lsb;
  wire   \carry[0] ;
  wire   [1:0] temp;

  full_adder_93 u0 ( .A(a), .B(b), .cin(c), .sum(temp[0]), .cout(temp[1]) );
  full_adder_92 u1 ( .A(temp[0]), .B(add[0]), .cin(1'b0), .sum(lsb), .cout(
        \carry[0] ) );
  full_adder_91 u2 ( .A(temp[1]), .B(add[1]), .cin(\carry[0] ), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module full_adder_90 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module full_adder_89 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder5_0 ( a, b, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b;
  output lsb;
  wire   \carry[0] ;

  full_adder_90 u0 ( .A(a), .B(b), .cin(add[0]), .sum(lsb), .cout(\carry[0] )
         );
  full_adder_89 u1 ( .A(add[1]), .B(\carry[0] ), .cin(1'b0), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module vedic_4bit_0 ( a, b, out );
  input [3:0] a;
  input [3:0] b;
  output [7:0] out;
  wire   _0_net_, _1_net_, \add[5][1] , \add[5][0] , \add[4][1] , \add[4][0] ,
         \add[3][1] , \add[3][0] , \add[2][1] , \add[2][0] , \add[1][0] ,
         _3_net_, _4_net_, _5_net_, _7_net_, _8_net_, _9_net_, _10_net_,
         _11_net_, _12_net_, _13_net_, _14_net_, _15_net_, n1, n2;

  OR2X1_RVT U2 ( .A1(n1), .A2(\add[5][1] ), .Y(out[7]) );
  AND3X1_RVT U3 ( .A1(\add[5][0] ), .A2(a[3]), .A3(b[3]), .Y(n1) );
  NAND2X0_RVT U4 ( .A1(b[3]), .A2(a[3]), .Y(n2) );
  AND2X1_RVT U5 ( .A1(b[0]), .A2(a[0]), .Y(out[0]) );
  AND2X1_RVT U6 ( .A1(b[1]), .A2(a[2]), .Y(_9_net_) );
  AND2X1_RVT U7 ( .A1(b[2]), .A2(a[1]), .Y(_8_net_) );
  AND2X1_RVT U8 ( .A1(a[0]), .A2(b[3]), .Y(_7_net_) );
  AND2X1_RVT U9 ( .A1(a[2]), .A2(b[0]), .Y(_5_net_) );
  AND2X1_RVT U10 ( .A1(a[1]), .A2(b[1]), .Y(_4_net_) );
  AND2X1_RVT U11 ( .A1(b[2]), .A2(a[0]), .Y(_3_net_) );
  AND2X1_RVT U12 ( .A1(a[1]), .A2(b[0]), .Y(_1_net_) );
  AND2X1_RVT U13 ( .A1(a[2]), .A2(b[3]), .Y(_15_net_) );
  AND2X1_RVT U14 ( .A1(b[2]), .A2(a[3]), .Y(_14_net_) );
  AND2X1_RVT U15 ( .A1(a[1]), .A2(b[3]), .Y(_13_net_) );
  AND2X1_RVT U16 ( .A1(b[2]), .A2(a[2]), .Y(_12_net_) );
  AND2X1_RVT U17 ( .A1(b[1]), .A2(a[3]), .Y(_11_net_) );
  AND2X1_RVT U18 ( .A1(b[0]), .A2(a[3]), .Y(_10_net_) );
  AND2X1_RVT U19 ( .A1(b[1]), .A2(a[0]), .Y(_0_net_) );
  half_adder_0 adder1 ( .A(_0_net_), .B(_1_net_), .sum(out[1]), .cout(
        \add[1][0] ) );
  Adder2_0 adder2 ( .a(_3_net_), .b(_4_net_), .c(_5_net_), .add(\add[1][0] ), 
        .lsb(out[2]), .msb({\add[2][1] , \add[2][0] }) );
  Adder3_0 adder3 ( .a(_7_net_), .b(_8_net_), .c(_9_net_), .d(_10_net_), .add(
        {\add[2][1] , \add[2][0] }), .lsb(out[3]), .msb({\add[3][1] , 
        \add[3][0] }) );
  Adder4_0 adder4 ( .a(_11_net_), .b(_12_net_), .c(_13_net_), .add({
        \add[3][1] , \add[3][0] }), .lsb(out[4]), .msb({\add[4][1] , 
        \add[4][0] }) );
  Adder5_0 adder5 ( .a(_14_net_), .b(_15_net_), .add({\add[4][1] , \add[4][0] }), .lsb(out[5]), .msb({\add[5][1] , \add[5][0] }) );
  XNOR2X1_RVT U1 ( .A1(\add[5][0] ), .A2(n2), .Y(out[6]) );
endmodule


module half_adder_83 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_66 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_65 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_64 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_88 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module Adder2_11 ( a, b, c, add, lsb, msb );
  output [1:0] msb;
  input a, b, c, add;
  output lsb;

  wire   [1:0] temp;
  wire   [2:0] carry;

  half_adder_66 u0 ( .A(a), .B(b), .sum(temp[0]), .cout(carry[0]) );
  half_adder_65 u1 ( .A(c), .B(add), .sum(temp[1]), .cout(carry[1]) );
  half_adder_64 u2 ( .A(temp[0]), .B(temp[1]), .sum(lsb), .cout(carry[2]) );
  full_adder_88 u3 ( .A(carry[0]), .B(carry[1]), .cin(carry[2]), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module half_adder_63 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_87 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module half_adder_62 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_61 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_86 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder3_11 ( a, b, c, d, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c, d;
  output lsb;

  wire   [1:0] st0;
  wire   [3:0] st1;
  wire   [1:0] st2;

  OR2X1_RVT U1 ( .A1(st2[0]), .A2(st2[1]), .Y(msb[1]) );
  half_adder_63 u0 ( .A(c), .B(d), .sum(st0[0]), .cout(st1[0]) );
  full_adder_87 u1 ( .A(a), .B(b), .cin(add[0]), .sum(st0[1]), .cout(st1[1])
         );
  half_adder_62 u2 ( .A(st0[0]), .B(st0[1]), .sum(lsb), .cout(st1[2]) );
  half_adder_61 u3 ( .A(st1[0]), .B(add[1]), .sum(st1[3]), .cout(st2[0]) );
  full_adder_86 u4 ( .A(st1[3]), .B(st1[2]), .cin(st1[1]), .sum(msb[0]), 
        .cout(st2[1]) );
endmodule


module full_adder_85 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_84 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_83 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder4_11 ( a, b, c, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c;
  output lsb;
  wire   \carry[0] ;
  wire   [1:0] temp;

  full_adder_85 u0 ( .A(a), .B(b), .cin(c), .sum(temp[0]), .cout(temp[1]) );
  full_adder_84 u1 ( .A(temp[0]), .B(add[0]), .cin(1'b0), .sum(lsb), .cout(
        \carry[0] ) );
  full_adder_83 u2 ( .A(temp[1]), .B(add[1]), .cin(\carry[0] ), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module full_adder_82 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module full_adder_81 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder5_11 ( a, b, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b;
  output lsb;
  wire   \carry[0] ;

  full_adder_82 u0 ( .A(a), .B(b), .cin(add[0]), .sum(lsb), .cout(\carry[0] )
         );
  full_adder_81 u1 ( .A(add[1]), .B(\carry[0] ), .cin(1'b0), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module vedic_4bit_11 ( a, b, out );
  input [3:0] a;
  input [3:0] b;
  output [7:0] out;
  wire   _0_net_, _1_net_, \add[5][1] , \add[5][0] , \add[4][1] , \add[4][0] ,
         \add[3][1] , \add[3][0] , \add[2][1] , \add[2][0] , \add[1][0] ,
         _3_net_, _4_net_, _5_net_, _7_net_, _8_net_, _9_net_, _10_net_,
         _11_net_, _12_net_, _13_net_, _14_net_, _15_net_, n3, n4;

  OR2X1_RVT U2 ( .A1(n4), .A2(\add[5][1] ), .Y(out[7]) );
  AND3X1_RVT U3 ( .A1(\add[5][0] ), .A2(a[3]), .A3(b[3]), .Y(n4) );
  NAND2X0_RVT U4 ( .A1(b[3]), .A2(a[3]), .Y(n3) );
  AND2X1_RVT U5 ( .A1(b[0]), .A2(a[0]), .Y(out[0]) );
  AND2X1_RVT U6 ( .A1(b[1]), .A2(a[2]), .Y(_9_net_) );
  AND2X1_RVT U7 ( .A1(b[2]), .A2(a[1]), .Y(_8_net_) );
  AND2X1_RVT U8 ( .A1(a[0]), .A2(b[3]), .Y(_7_net_) );
  AND2X1_RVT U9 ( .A1(a[2]), .A2(b[0]), .Y(_5_net_) );
  AND2X1_RVT U10 ( .A1(a[1]), .A2(b[1]), .Y(_4_net_) );
  AND2X1_RVT U11 ( .A1(b[2]), .A2(a[0]), .Y(_3_net_) );
  AND2X1_RVT U12 ( .A1(a[1]), .A2(b[0]), .Y(_1_net_) );
  AND2X1_RVT U13 ( .A1(a[2]), .A2(b[3]), .Y(_15_net_) );
  AND2X1_RVT U14 ( .A1(b[2]), .A2(a[3]), .Y(_14_net_) );
  AND2X1_RVT U15 ( .A1(a[1]), .A2(b[3]), .Y(_13_net_) );
  AND2X1_RVT U16 ( .A1(b[2]), .A2(a[2]), .Y(_12_net_) );
  AND2X1_RVT U17 ( .A1(b[1]), .A2(a[3]), .Y(_11_net_) );
  AND2X1_RVT U18 ( .A1(b[0]), .A2(a[3]), .Y(_10_net_) );
  AND2X1_RVT U19 ( .A1(b[1]), .A2(a[0]), .Y(_0_net_) );
  half_adder_83 adder1 ( .A(_0_net_), .B(_1_net_), .sum(out[1]), .cout(
        \add[1][0] ) );
  Adder2_11 adder2 ( .a(_3_net_), .b(_4_net_), .c(_5_net_), .add(\add[1][0] ), 
        .lsb(out[2]), .msb({\add[2][1] , \add[2][0] }) );
  Adder3_11 adder3 ( .a(_7_net_), .b(_8_net_), .c(_9_net_), .d(_10_net_), 
        .add({\add[2][1] , \add[2][0] }), .lsb(out[3]), .msb({\add[3][1] , 
        \add[3][0] }) );
  Adder4_11 adder4 ( .a(_11_net_), .b(_12_net_), .c(_13_net_), .add({
        \add[3][1] , \add[3][0] }), .lsb(out[4]), .msb({\add[4][1] , 
        \add[4][0] }) );
  Adder5_11 adder5 ( .a(_14_net_), .b(_15_net_), .add({\add[4][1] , 
        \add[4][0] }), .lsb(out[5]), .msb({\add[5][1] , \add[5][0] }) );
  XNOR2X1_RVT U1 ( .A1(\add[5][0] ), .A2(n3), .Y(out[6]) );
endmodule


module G_Cell_132 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_131 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_130 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_129 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw4_0 ( A, B, Cin, Sum, Cout );
  input [4:1] A;
  input [4:1] B;
  output [4:1] Sum;
  input Cin;
  output Cout;

  wire   [4:1] G;
  wire   [4:1] P;
  wire   [3:1] GG;

  AND2X1_RVT U9 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U10 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U11 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U12 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_132 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_131 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_130 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_129 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U2 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U3 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U4 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U5 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U6 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U7 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U8 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
endmodule


module G_Cell_128 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_127 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_126 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_125 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw4_7 ( A, B, Cin, Sum, Cout );
  input [4:1] A;
  input [4:1] B;
  output [4:1] Sum;
  input Cin;
  output Cout;

  wire   [4:1] G;
  wire   [4:1] P;
  wire   [3:1] GG;

  AND2X1_RVT U9 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U10 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U11 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U12 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_128 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_127 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_126 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_125 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U2 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U3 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U4 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U5 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U6 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U7 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U8 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
endmodule


module half_adder_82 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_60 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_59 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_58 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_80 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module Adder2_10 ( a, b, c, add, lsb, msb );
  output [1:0] msb;
  input a, b, c, add;
  output lsb;

  wire   [1:0] temp;
  wire   [2:0] carry;

  half_adder_60 u0 ( .A(a), .B(b), .sum(temp[0]), .cout(carry[0]) );
  half_adder_59 u1 ( .A(c), .B(add), .sum(temp[1]), .cout(carry[1]) );
  half_adder_58 u2 ( .A(temp[0]), .B(temp[1]), .sum(lsb), .cout(carry[2]) );
  full_adder_80 u3 ( .A(carry[0]), .B(carry[1]), .cin(carry[2]), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module half_adder_57 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_79 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module half_adder_56 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_55 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_78 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder3_10 ( a, b, c, d, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c, d;
  output lsb;

  wire   [1:0] st0;
  wire   [3:0] st1;
  wire   [1:0] st2;

  OR2X1_RVT U1 ( .A1(st2[0]), .A2(st2[1]), .Y(msb[1]) );
  half_adder_57 u0 ( .A(c), .B(d), .sum(st0[0]), .cout(st1[0]) );
  full_adder_79 u1 ( .A(a), .B(b), .cin(add[0]), .sum(st0[1]), .cout(st1[1])
         );
  half_adder_56 u2 ( .A(st0[0]), .B(st0[1]), .sum(lsb), .cout(st1[2]) );
  half_adder_55 u3 ( .A(st1[0]), .B(add[1]), .sum(st1[3]), .cout(st2[0]) );
  full_adder_78 u4 ( .A(st1[3]), .B(st1[2]), .cin(st1[1]), .sum(msb[0]), 
        .cout(st2[1]) );
endmodule


module full_adder_77 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_76 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_75 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder4_10 ( a, b, c, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c;
  output lsb;
  wire   \carry[0] ;
  wire   [1:0] temp;

  full_adder_77 u0 ( .A(a), .B(b), .cin(c), .sum(temp[0]), .cout(temp[1]) );
  full_adder_76 u1 ( .A(temp[0]), .B(add[0]), .cin(1'b0), .sum(lsb), .cout(
        \carry[0] ) );
  full_adder_75 u2 ( .A(temp[1]), .B(add[1]), .cin(\carry[0] ), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module full_adder_74 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_73 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder5_10 ( a, b, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b;
  output lsb;
  wire   \carry[0] ;

  full_adder_74 u0 ( .A(a), .B(b), .cin(add[0]), .sum(lsb), .cout(\carry[0] )
         );
  full_adder_73 u1 ( .A(add[1]), .B(\carry[0] ), .cin(1'b0), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module vedic_4bit_10 ( a, b, out );
  input [3:0] a;
  input [3:0] b;
  output [7:0] out;
  wire   _0_net_, _1_net_, \add[5][1] , \add[5][0] , \add[4][1] , \add[4][0] ,
         \add[3][1] , \add[3][0] , \add[2][1] , \add[2][0] , \add[1][0] ,
         _3_net_, _4_net_, _5_net_, _7_net_, _8_net_, _9_net_, _10_net_,
         _11_net_, _12_net_, _13_net_, _14_net_, _15_net_, n3, n4;

  OR2X1_RVT U2 ( .A1(n4), .A2(\add[5][1] ), .Y(out[7]) );
  AND3X1_RVT U3 ( .A1(\add[5][0] ), .A2(a[3]), .A3(b[3]), .Y(n4) );
  NAND2X0_RVT U4 ( .A1(b[3]), .A2(a[3]), .Y(n3) );
  AND2X1_RVT U5 ( .A1(b[0]), .A2(a[0]), .Y(out[0]) );
  AND2X1_RVT U6 ( .A1(b[1]), .A2(a[2]), .Y(_9_net_) );
  AND2X1_RVT U7 ( .A1(b[2]), .A2(a[1]), .Y(_8_net_) );
  AND2X1_RVT U8 ( .A1(a[0]), .A2(b[3]), .Y(_7_net_) );
  AND2X1_RVT U9 ( .A1(a[2]), .A2(b[0]), .Y(_5_net_) );
  AND2X1_RVT U10 ( .A1(a[1]), .A2(b[1]), .Y(_4_net_) );
  AND2X1_RVT U11 ( .A1(b[2]), .A2(a[0]), .Y(_3_net_) );
  AND2X1_RVT U12 ( .A1(a[1]), .A2(b[0]), .Y(_1_net_) );
  AND2X1_RVT U13 ( .A1(a[2]), .A2(b[3]), .Y(_15_net_) );
  AND2X1_RVT U14 ( .A1(b[2]), .A2(a[3]), .Y(_14_net_) );
  AND2X1_RVT U15 ( .A1(a[1]), .A2(b[3]), .Y(_13_net_) );
  AND2X1_RVT U16 ( .A1(b[2]), .A2(a[2]), .Y(_12_net_) );
  AND2X1_RVT U17 ( .A1(b[1]), .A2(a[3]), .Y(_11_net_) );
  AND2X1_RVT U18 ( .A1(b[0]), .A2(a[3]), .Y(_10_net_) );
  AND2X1_RVT U19 ( .A1(b[1]), .A2(a[0]), .Y(_0_net_) );
  half_adder_82 adder1 ( .A(_0_net_), .B(_1_net_), .sum(out[1]), .cout(
        \add[1][0] ) );
  Adder2_10 adder2 ( .a(_3_net_), .b(_4_net_), .c(_5_net_), .add(\add[1][0] ), 
        .lsb(out[2]), .msb({\add[2][1] , \add[2][0] }) );
  Adder3_10 adder3 ( .a(_7_net_), .b(_8_net_), .c(_9_net_), .d(_10_net_), 
        .add({\add[2][1] , \add[2][0] }), .lsb(out[3]), .msb({\add[3][1] , 
        \add[3][0] }) );
  Adder4_10 adder4 ( .a(_11_net_), .b(_12_net_), .c(_13_net_), .add({
        \add[3][1] , \add[3][0] }), .lsb(out[4]), .msb({\add[4][1] , 
        \add[4][0] }) );
  Adder5_10 adder5 ( .a(_14_net_), .b(_15_net_), .add({\add[4][1] , 
        \add[4][0] }), .lsb(out[5]), .msb({\add[5][1] , \add[5][0] }) );
  XNOR2X1_RVT U1 ( .A1(\add[5][0] ), .A2(n3), .Y(out[6]) );
endmodule


module G_Cell_124 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_123 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_122 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_121 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_120 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_119 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_118 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_117 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw8_0 ( A, B, Cin, Sum, Cout );
  input [8:1] A;
  input [8:1] B;
  output [8:1] Sum;
  input Cin;
  output Cout;

  wire   [8:1] G;
  wire   [8:1] P;
  wire   [7:1] GG;

  AND2X1_RVT U17 ( .A1(A[8]), .A2(B[8]), .Y(G[8]) );
  AND2X1_RVT U18 ( .A1(A[7]), .A2(B[7]), .Y(G[7]) );
  AND2X1_RVT U19 ( .A1(A[6]), .A2(B[6]), .Y(G[6]) );
  AND2X1_RVT U20 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U21 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U22 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U23 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U24 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_124 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_123 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_122 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_121 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_120 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        GG[5]) );
  G_Cell_119 \loop_1[5].genblk1.U1  ( .G0(GG[5]), .G1(G[6]), .P1(P[6]), .GG(
        GG[6]) );
  G_Cell_118 \loop_1[6].genblk1.U1  ( .G0(GG[6]), .G1(G[7]), .P1(P[7]), .GG(
        GG[7]) );
  G_Cell_117 \loop_1[7].genblk1.U1  ( .G0(GG[7]), .G1(G[8]), .P1(P[8]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U2 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U3 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U4 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U5 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U6 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U7 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U8 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U9 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U10 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U11 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U12 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U13 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U14 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U15 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U16 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
endmodule


module G_Cell_116 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_115 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_114 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_113 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_112 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_111 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_110 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_109 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw8_7 ( A, B, Cin, Sum, Cout );
  input [8:1] A;
  input [8:1] B;
  output [8:1] Sum;
  input Cin;
  output Cout;

  wire   [8:1] G;
  wire   [8:1] P;
  wire   [7:1] GG;

  AND2X1_RVT U17 ( .A1(A[8]), .A2(B[8]), .Y(G[8]) );
  AND2X1_RVT U18 ( .A1(A[7]), .A2(B[7]), .Y(G[7]) );
  AND2X1_RVT U19 ( .A1(A[6]), .A2(B[6]), .Y(G[6]) );
  AND2X1_RVT U20 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U21 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U22 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U23 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U24 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_116 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_115 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_114 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_113 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_112 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        GG[5]) );
  G_Cell_111 \loop_1[5].genblk1.U1  ( .G0(GG[5]), .G1(G[6]), .P1(P[6]), .GG(
        GG[6]) );
  G_Cell_110 \loop_1[6].genblk1.U1  ( .G0(GG[6]), .G1(G[7]), .P1(P[7]), .GG(
        GG[7]) );
  G_Cell_109 \loop_1[7].genblk1.U1  ( .G0(GG[7]), .G1(G[8]), .P1(P[8]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U2 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U3 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U4 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U5 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U6 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U7 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U8 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U9 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U10 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U11 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U12 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U13 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U14 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U15 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U16 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
endmodule


module G_Cell_108 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_107 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_106 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_105 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_104 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_103 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_102 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_101 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_100 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw9_0 ( A, B, Cin, Sum, Cout );
  input [9:1] A;
  input [9:1] B;
  output [9:1] Sum;
  input Cin;
  output Cout;

  wire   [9:1] G;
  wire   [9:1] P;
  wire   [8:1] GG;

  AND2X1_RVT U19 ( .A1(A[9]), .A2(B[9]), .Y(G[9]) );
  AND2X1_RVT U20 ( .A1(A[8]), .A2(B[8]), .Y(G[8]) );
  AND2X1_RVT U21 ( .A1(A[7]), .A2(B[7]), .Y(G[7]) );
  AND2X1_RVT U22 ( .A1(A[6]), .A2(B[6]), .Y(G[6]) );
  AND2X1_RVT U23 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U24 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U25 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U26 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U27 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_108 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_107 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_106 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_105 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_104 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        GG[5]) );
  G_Cell_103 \loop_1[5].genblk1.U1  ( .G0(GG[5]), .G1(G[6]), .P1(P[6]), .GG(
        GG[6]) );
  G_Cell_102 \loop_1[6].genblk1.U1  ( .G0(GG[6]), .G1(G[7]), .P1(P[7]), .GG(
        GG[7]) );
  G_Cell_101 \loop_1[7].genblk1.U1  ( .G0(GG[7]), .G1(G[8]), .P1(P[8]), .GG(
        GG[8]) );
  G_Cell_100 \loop_1[8].genblk1.U1  ( .G0(GG[8]), .G1(G[9]), .P1(P[9]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U2 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U3 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U4 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U5 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U6 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U7 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U8 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U9 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U10 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U11 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U12 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U13 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U14 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U15 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U16 ( .A1(GG[8]), .A2(P[9]), .Y(Sum[9]) );
  XOR2X1_RVT U17 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U18 ( .A1(A[9]), .A2(B[9]), .Y(P[9]) );
endmodule


module karastuba_6bit_0 ( a, b, out );
  input [5:0] a;
  input [5:0] b;
  output [11:0] out;
  wire   \tsum[1][3] , \tsum[1][2] , \tsum[1][1] , \tsum[1][0] , \tsum[0][3] ,
         \tsum[0][2] , \tsum[0][1] , \tsum[0][0] , n1, n2, n3, n4, n5, n6, n7,
         n8;
  wire   [7:0] xy;
  wire   [7:3] r;
  wire   [7:0] mid;
  wire   [7:0] temp;
  wire   [7:0] mid3;

  vedic_4bit_0 u0 ( .a({1'b0, a[5:3]}), .b({1'b0, b[5:3]}), .out(xy) );
  vedic_4bit_11 u1 ( .a({1'b0, a[2:0]}), .b({1'b0, b[2:0]}), .out({r, out[2:0]}) );
  RCA_bw4_0 rca1 ( .A({1'b0, a[5:3]}), .B({1'b0, a[2:0]}), .Cin(1'b0), .Sum({
        \tsum[0][3] , \tsum[0][2] , \tsum[0][1] , \tsum[0][0] }) );
  RCA_bw4_7 rca2 ( .A({1'b0, b[5:3]}), .B({1'b0, b[2:0]}), .Cin(1'b0), .Sum({
        \tsum[1][3] , \tsum[1][2] , \tsum[1][1] , \tsum[1][0] }) );
  vedic_4bit_10 u2 ( .a({\tsum[0][3] , \tsum[0][2] , \tsum[0][1] , 
        \tsum[0][0] }), .b({\tsum[1][3] , \tsum[1][2] , \tsum[1][1] , 
        \tsum[1][0] }), .out(mid) );
  RCA_bw8_0 add_mid ( .A(xy), .B({r, out[2:0]}), .Cin(1'b0), .Sum(temp) );
  RCA_bw8_7 sub_mid ( .A({n1, n2, n3, n4, n5, n6, n7, n8}), .B(mid), .Cin(1'b1), .Sum(mid3) );
  RCA_bw9_0 add1 ( .A({xy[5:0], r[5:3]}), .B({1'b0, mid3}), .Cin(1'b0), .Sum(
        out[11:3]) );
  INVX1_RVT U3 ( .A(temp[7]), .Y(n1) );
  INVX1_RVT U4 ( .A(temp[6]), .Y(n2) );
  INVX1_RVT U5 ( .A(temp[5]), .Y(n3) );
  INVX1_RVT U6 ( .A(temp[4]), .Y(n4) );
  INVX1_RVT U7 ( .A(temp[3]), .Y(n5) );
  INVX1_RVT U8 ( .A(temp[2]), .Y(n6) );
  INVX1_RVT U9 ( .A(temp[1]), .Y(n7) );
  INVX1_RVT U10 ( .A(temp[0]), .Y(n8) );
endmodule


module half_adder_81 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_54 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_53 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_52 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_72 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module Adder2_9 ( a, b, c, add, lsb, msb );
  output [1:0] msb;
  input a, b, c, add;
  output lsb;

  wire   [1:0] temp;
  wire   [2:0] carry;

  half_adder_54 u0 ( .A(a), .B(b), .sum(temp[0]), .cout(carry[0]) );
  half_adder_53 u1 ( .A(c), .B(add), .sum(temp[1]), .cout(carry[1]) );
  half_adder_52 u2 ( .A(temp[0]), .B(temp[1]), .sum(lsb), .cout(carry[2]) );
  full_adder_72 u3 ( .A(carry[0]), .B(carry[1]), .cin(carry[2]), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module half_adder_51 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_71 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module half_adder_50 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_49 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_70 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder3_9 ( a, b, c, d, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c, d;
  output lsb;

  wire   [1:0] st0;
  wire   [3:0] st1;
  wire   [1:0] st2;

  OR2X1_RVT U1 ( .A1(st2[0]), .A2(st2[1]), .Y(msb[1]) );
  half_adder_51 u0 ( .A(c), .B(d), .sum(st0[0]), .cout(st1[0]) );
  full_adder_71 u1 ( .A(a), .B(b), .cin(add[0]), .sum(st0[1]), .cout(st1[1])
         );
  half_adder_50 u2 ( .A(st0[0]), .B(st0[1]), .sum(lsb), .cout(st1[2]) );
  half_adder_49 u3 ( .A(st1[0]), .B(add[1]), .sum(st1[3]), .cout(st2[0]) );
  full_adder_70 u4 ( .A(st1[3]), .B(st1[2]), .cin(st1[1]), .sum(msb[0]), 
        .cout(st2[1]) );
endmodule


module full_adder_69 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_68 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_67 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder4_9 ( a, b, c, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c;
  output lsb;
  wire   \carry[0] ;
  wire   [1:0] temp;

  full_adder_69 u0 ( .A(a), .B(b), .cin(c), .sum(temp[0]), .cout(temp[1]) );
  full_adder_68 u1 ( .A(temp[0]), .B(add[0]), .cin(1'b0), .sum(lsb), .cout(
        \carry[0] ) );
  full_adder_67 u2 ( .A(temp[1]), .B(add[1]), .cin(\carry[0] ), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module full_adder_66 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module full_adder_65 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder5_9 ( a, b, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b;
  output lsb;
  wire   \carry[0] ;

  full_adder_66 u0 ( .A(a), .B(b), .cin(add[0]), .sum(lsb), .cout(\carry[0] )
         );
  full_adder_65 u1 ( .A(add[1]), .B(\carry[0] ), .cin(1'b0), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module vedic_4bit_9 ( a, b, out );
  input [3:0] a;
  input [3:0] b;
  output [7:0] out;
  wire   _0_net_, _1_net_, \add[5][1] , \add[5][0] , \add[4][1] , \add[4][0] ,
         \add[3][1] , \add[3][0] , \add[2][1] , \add[2][0] , \add[1][0] ,
         _3_net_, _4_net_, _5_net_, _7_net_, _8_net_, _9_net_, _10_net_,
         _11_net_, _12_net_, _13_net_, _14_net_, _15_net_, n3, n4;

  OR2X1_RVT U2 ( .A1(n4), .A2(\add[5][1] ), .Y(out[7]) );
  AND3X1_RVT U3 ( .A1(\add[5][0] ), .A2(a[3]), .A3(b[3]), .Y(n4) );
  NAND2X0_RVT U4 ( .A1(b[3]), .A2(a[3]), .Y(n3) );
  AND2X1_RVT U5 ( .A1(b[0]), .A2(a[0]), .Y(out[0]) );
  AND2X1_RVT U6 ( .A1(b[1]), .A2(a[2]), .Y(_9_net_) );
  AND2X1_RVT U7 ( .A1(b[2]), .A2(a[1]), .Y(_8_net_) );
  AND2X1_RVT U8 ( .A1(a[0]), .A2(b[3]), .Y(_7_net_) );
  AND2X1_RVT U9 ( .A1(a[2]), .A2(b[0]), .Y(_5_net_) );
  AND2X1_RVT U10 ( .A1(a[1]), .A2(b[1]), .Y(_4_net_) );
  AND2X1_RVT U11 ( .A1(b[2]), .A2(a[0]), .Y(_3_net_) );
  AND2X1_RVT U12 ( .A1(a[1]), .A2(b[0]), .Y(_1_net_) );
  AND2X1_RVT U13 ( .A1(a[2]), .A2(b[3]), .Y(_15_net_) );
  AND2X1_RVT U14 ( .A1(b[2]), .A2(a[3]), .Y(_14_net_) );
  AND2X1_RVT U15 ( .A1(a[1]), .A2(b[3]), .Y(_13_net_) );
  AND2X1_RVT U16 ( .A1(b[2]), .A2(a[2]), .Y(_12_net_) );
  AND2X1_RVT U17 ( .A1(b[1]), .A2(a[3]), .Y(_11_net_) );
  AND2X1_RVT U18 ( .A1(b[0]), .A2(a[3]), .Y(_10_net_) );
  AND2X1_RVT U19 ( .A1(b[1]), .A2(a[0]), .Y(_0_net_) );
  half_adder_81 adder1 ( .A(_0_net_), .B(_1_net_), .sum(out[1]), .cout(
        \add[1][0] ) );
  Adder2_9 adder2 ( .a(_3_net_), .b(_4_net_), .c(_5_net_), .add(\add[1][0] ), 
        .lsb(out[2]), .msb({\add[2][1] , \add[2][0] }) );
  Adder3_9 adder3 ( .a(_7_net_), .b(_8_net_), .c(_9_net_), .d(_10_net_), .add(
        {\add[2][1] , \add[2][0] }), .lsb(out[3]), .msb({\add[3][1] , 
        \add[3][0] }) );
  Adder4_9 adder4 ( .a(_11_net_), .b(_12_net_), .c(_13_net_), .add({
        \add[3][1] , \add[3][0] }), .lsb(out[4]), .msb({\add[4][1] , 
        \add[4][0] }) );
  Adder5_9 adder5 ( .a(_14_net_), .b(_15_net_), .add({\add[4][1] , \add[4][0] }), .lsb(out[5]), .msb({\add[5][1] , \add[5][0] }) );
  XNOR2X1_RVT U1 ( .A1(\add[5][0] ), .A2(n3), .Y(out[6]) );
endmodule


module half_adder_80 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_48 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_47 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_46 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_64 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module Adder2_8 ( a, b, c, add, lsb, msb );
  output [1:0] msb;
  input a, b, c, add;
  output lsb;

  wire   [1:0] temp;
  wire   [2:0] carry;

  half_adder_48 u0 ( .A(a), .B(b), .sum(temp[0]), .cout(carry[0]) );
  half_adder_47 u1 ( .A(c), .B(add), .sum(temp[1]), .cout(carry[1]) );
  half_adder_46 u2 ( .A(temp[0]), .B(temp[1]), .sum(lsb), .cout(carry[2]) );
  full_adder_64 u3 ( .A(carry[0]), .B(carry[1]), .cin(carry[2]), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module half_adder_45 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_63 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module half_adder_44 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_43 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_62 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder3_8 ( a, b, c, d, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c, d;
  output lsb;

  wire   [1:0] st0;
  wire   [3:0] st1;
  wire   [1:0] st2;

  OR2X1_RVT U1 ( .A1(st2[0]), .A2(st2[1]), .Y(msb[1]) );
  half_adder_45 u0 ( .A(c), .B(d), .sum(st0[0]), .cout(st1[0]) );
  full_adder_63 u1 ( .A(a), .B(b), .cin(add[0]), .sum(st0[1]), .cout(st1[1])
         );
  half_adder_44 u2 ( .A(st0[0]), .B(st0[1]), .sum(lsb), .cout(st1[2]) );
  half_adder_43 u3 ( .A(st1[0]), .B(add[1]), .sum(st1[3]), .cout(st2[0]) );
  full_adder_62 u4 ( .A(st1[3]), .B(st1[2]), .cin(st1[1]), .sum(msb[0]), 
        .cout(st2[1]) );
endmodule


module full_adder_61 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_60 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_59 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder4_8 ( a, b, c, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c;
  output lsb;
  wire   \carry[0] ;
  wire   [1:0] temp;

  full_adder_61 u0 ( .A(a), .B(b), .cin(c), .sum(temp[0]), .cout(temp[1]) );
  full_adder_60 u1 ( .A(temp[0]), .B(add[0]), .cin(1'b0), .sum(lsb), .cout(
        \carry[0] ) );
  full_adder_59 u2 ( .A(temp[1]), .B(add[1]), .cin(\carry[0] ), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module full_adder_58 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module full_adder_57 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder5_8 ( a, b, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b;
  output lsb;
  wire   \carry[0] ;

  full_adder_58 u0 ( .A(a), .B(b), .cin(add[0]), .sum(lsb), .cout(\carry[0] )
         );
  full_adder_57 u1 ( .A(add[1]), .B(\carry[0] ), .cin(1'b0), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module vedic_4bit_8 ( a, b, out );
  input [3:0] a;
  input [3:0] b;
  output [7:0] out;
  wire   _0_net_, _1_net_, \add[5][1] , \add[5][0] , \add[4][1] , \add[4][0] ,
         \add[3][1] , \add[3][0] , \add[2][1] , \add[2][0] , \add[1][0] ,
         _3_net_, _4_net_, _5_net_, _7_net_, _8_net_, _9_net_, _10_net_,
         _11_net_, _12_net_, _13_net_, _14_net_, _15_net_, n3, n4;

  OR2X1_RVT U2 ( .A1(n4), .A2(\add[5][1] ), .Y(out[7]) );
  AND3X1_RVT U3 ( .A1(\add[5][0] ), .A2(a[3]), .A3(b[3]), .Y(n4) );
  NAND2X0_RVT U4 ( .A1(b[3]), .A2(a[3]), .Y(n3) );
  AND2X1_RVT U5 ( .A1(b[0]), .A2(a[0]), .Y(out[0]) );
  AND2X1_RVT U6 ( .A1(b[1]), .A2(a[2]), .Y(_9_net_) );
  AND2X1_RVT U7 ( .A1(b[2]), .A2(a[1]), .Y(_8_net_) );
  AND2X1_RVT U8 ( .A1(a[0]), .A2(b[3]), .Y(_7_net_) );
  AND2X1_RVT U9 ( .A1(a[2]), .A2(b[0]), .Y(_5_net_) );
  AND2X1_RVT U10 ( .A1(a[1]), .A2(b[1]), .Y(_4_net_) );
  AND2X1_RVT U11 ( .A1(b[2]), .A2(a[0]), .Y(_3_net_) );
  AND2X1_RVT U12 ( .A1(a[1]), .A2(b[0]), .Y(_1_net_) );
  AND2X1_RVT U13 ( .A1(a[2]), .A2(b[3]), .Y(_15_net_) );
  AND2X1_RVT U14 ( .A1(b[2]), .A2(a[3]), .Y(_14_net_) );
  AND2X1_RVT U15 ( .A1(a[1]), .A2(b[3]), .Y(_13_net_) );
  AND2X1_RVT U16 ( .A1(b[2]), .A2(a[2]), .Y(_12_net_) );
  AND2X1_RVT U17 ( .A1(b[1]), .A2(a[3]), .Y(_11_net_) );
  AND2X1_RVT U18 ( .A1(b[0]), .A2(a[3]), .Y(_10_net_) );
  AND2X1_RVT U19 ( .A1(b[1]), .A2(a[0]), .Y(_0_net_) );
  half_adder_80 adder1 ( .A(_0_net_), .B(_1_net_), .sum(out[1]), .cout(
        \add[1][0] ) );
  Adder2_8 adder2 ( .a(_3_net_), .b(_4_net_), .c(_5_net_), .add(\add[1][0] ), 
        .lsb(out[2]), .msb({\add[2][1] , \add[2][0] }) );
  Adder3_8 adder3 ( .a(_7_net_), .b(_8_net_), .c(_9_net_), .d(_10_net_), .add(
        {\add[2][1] , \add[2][0] }), .lsb(out[3]), .msb({\add[3][1] , 
        \add[3][0] }) );
  Adder4_8 adder4 ( .a(_11_net_), .b(_12_net_), .c(_13_net_), .add({
        \add[3][1] , \add[3][0] }), .lsb(out[4]), .msb({\add[4][1] , 
        \add[4][0] }) );
  Adder5_8 adder5 ( .a(_14_net_), .b(_15_net_), .add({\add[4][1] , \add[4][0] }), .lsb(out[5]), .msb({\add[5][1] , \add[5][0] }) );
  XNOR2X1_RVT U1 ( .A1(\add[5][0] ), .A2(n3), .Y(out[6]) );
endmodule


module G_Cell_99 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_98 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_97 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_96 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw4_6 ( A, B, Cin, Sum, Cout );
  input [4:1] A;
  input [4:1] B;
  output [4:1] Sum;
  input Cin;
  output Cout;

  wire   [4:1] G;
  wire   [4:1] P;
  wire   [3:1] GG;

  AND2X1_RVT U9 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U10 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U11 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U12 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_99 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_98 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_97 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_96 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U2 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U3 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U4 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U5 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U6 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U7 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U8 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
endmodule


module G_Cell_95 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_94 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_93 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_92 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw4_5 ( A, B, Cin, Sum, Cout );
  input [4:1] A;
  input [4:1] B;
  output [4:1] Sum;
  input Cin;
  output Cout;

  wire   [4:1] G;
  wire   [4:1] P;
  wire   [3:1] GG;

  AND2X1_RVT U9 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U10 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U11 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U12 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_95 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_94 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_93 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_92 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U2 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U3 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U4 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U5 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U6 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U7 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U8 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
endmodule


module half_adder_79 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_42 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_41 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_40 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_56 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module Adder2_7 ( a, b, c, add, lsb, msb );
  output [1:0] msb;
  input a, b, c, add;
  output lsb;

  wire   [1:0] temp;
  wire   [2:0] carry;

  half_adder_42 u0 ( .A(a), .B(b), .sum(temp[0]), .cout(carry[0]) );
  half_adder_41 u1 ( .A(c), .B(add), .sum(temp[1]), .cout(carry[1]) );
  half_adder_40 u2 ( .A(temp[0]), .B(temp[1]), .sum(lsb), .cout(carry[2]) );
  full_adder_56 u3 ( .A(carry[0]), .B(carry[1]), .cin(carry[2]), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module half_adder_39 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_55 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module half_adder_38 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_37 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_54 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder3_7 ( a, b, c, d, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c, d;
  output lsb;

  wire   [1:0] st0;
  wire   [3:0] st1;
  wire   [1:0] st2;

  OR2X1_RVT U1 ( .A1(st2[0]), .A2(st2[1]), .Y(msb[1]) );
  half_adder_39 u0 ( .A(c), .B(d), .sum(st0[0]), .cout(st1[0]) );
  full_adder_55 u1 ( .A(a), .B(b), .cin(add[0]), .sum(st0[1]), .cout(st1[1])
         );
  half_adder_38 u2 ( .A(st0[0]), .B(st0[1]), .sum(lsb), .cout(st1[2]) );
  half_adder_37 u3 ( .A(st1[0]), .B(add[1]), .sum(st1[3]), .cout(st2[0]) );
  full_adder_54 u4 ( .A(st1[3]), .B(st1[2]), .cin(st1[1]), .sum(msb[0]), 
        .cout(st2[1]) );
endmodule


module full_adder_53 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_52 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_51 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder4_7 ( a, b, c, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c;
  output lsb;
  wire   \carry[0] ;
  wire   [1:0] temp;

  full_adder_53 u0 ( .A(a), .B(b), .cin(c), .sum(temp[0]), .cout(temp[1]) );
  full_adder_52 u1 ( .A(temp[0]), .B(add[0]), .cin(1'b0), .sum(lsb), .cout(
        \carry[0] ) );
  full_adder_51 u2 ( .A(temp[1]), .B(add[1]), .cin(\carry[0] ), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module full_adder_50 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_49 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder5_7 ( a, b, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b;
  output lsb;
  wire   \carry[0] ;

  full_adder_50 u0 ( .A(a), .B(b), .cin(add[0]), .sum(lsb), .cout(\carry[0] )
         );
  full_adder_49 u1 ( .A(add[1]), .B(\carry[0] ), .cin(1'b0), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module vedic_4bit_7 ( a, b, out );
  input [3:0] a;
  input [3:0] b;
  output [7:0] out;
  wire   _0_net_, _1_net_, \add[5][1] , \add[5][0] , \add[4][1] , \add[4][0] ,
         \add[3][1] , \add[3][0] , \add[2][1] , \add[2][0] , \add[1][0] ,
         _3_net_, _4_net_, _5_net_, _7_net_, _8_net_, _9_net_, _10_net_,
         _11_net_, _12_net_, _13_net_, _14_net_, _15_net_, n3, n4;

  OR2X1_RVT U2 ( .A1(n4), .A2(\add[5][1] ), .Y(out[7]) );
  AND3X1_RVT U3 ( .A1(\add[5][0] ), .A2(a[3]), .A3(b[3]), .Y(n4) );
  NAND2X0_RVT U4 ( .A1(b[3]), .A2(a[3]), .Y(n3) );
  AND2X1_RVT U5 ( .A1(b[0]), .A2(a[0]), .Y(out[0]) );
  AND2X1_RVT U6 ( .A1(b[1]), .A2(a[2]), .Y(_9_net_) );
  AND2X1_RVT U7 ( .A1(b[2]), .A2(a[1]), .Y(_8_net_) );
  AND2X1_RVT U8 ( .A1(a[0]), .A2(b[3]), .Y(_7_net_) );
  AND2X1_RVT U9 ( .A1(a[2]), .A2(b[0]), .Y(_5_net_) );
  AND2X1_RVT U10 ( .A1(a[1]), .A2(b[1]), .Y(_4_net_) );
  AND2X1_RVT U11 ( .A1(b[2]), .A2(a[0]), .Y(_3_net_) );
  AND2X1_RVT U12 ( .A1(a[1]), .A2(b[0]), .Y(_1_net_) );
  AND2X1_RVT U13 ( .A1(a[2]), .A2(b[3]), .Y(_15_net_) );
  AND2X1_RVT U14 ( .A1(b[2]), .A2(a[3]), .Y(_14_net_) );
  AND2X1_RVT U15 ( .A1(a[1]), .A2(b[3]), .Y(_13_net_) );
  AND2X1_RVT U16 ( .A1(b[2]), .A2(a[2]), .Y(_12_net_) );
  AND2X1_RVT U17 ( .A1(b[1]), .A2(a[3]), .Y(_11_net_) );
  AND2X1_RVT U18 ( .A1(b[0]), .A2(a[3]), .Y(_10_net_) );
  AND2X1_RVT U19 ( .A1(b[1]), .A2(a[0]), .Y(_0_net_) );
  half_adder_79 adder1 ( .A(_0_net_), .B(_1_net_), .sum(out[1]), .cout(
        \add[1][0] ) );
  Adder2_7 adder2 ( .a(_3_net_), .b(_4_net_), .c(_5_net_), .add(\add[1][0] ), 
        .lsb(out[2]), .msb({\add[2][1] , \add[2][0] }) );
  Adder3_7 adder3 ( .a(_7_net_), .b(_8_net_), .c(_9_net_), .d(_10_net_), .add(
        {\add[2][1] , \add[2][0] }), .lsb(out[3]), .msb({\add[3][1] , 
        \add[3][0] }) );
  Adder4_7 adder4 ( .a(_11_net_), .b(_12_net_), .c(_13_net_), .add({
        \add[3][1] , \add[3][0] }), .lsb(out[4]), .msb({\add[4][1] , 
        \add[4][0] }) );
  Adder5_7 adder5 ( .a(_14_net_), .b(_15_net_), .add({\add[4][1] , \add[4][0] }), .lsb(out[5]), .msb({\add[5][1] , \add[5][0] }) );
  XNOR2X1_RVT U1 ( .A1(\add[5][0] ), .A2(n3), .Y(out[6]) );
endmodule


module G_Cell_91 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_90 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_89 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_88 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_87 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_86 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_85 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_84 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw8_6 ( A, B, Cin, Sum, Cout );
  input [8:1] A;
  input [8:1] B;
  output [8:1] Sum;
  input Cin;
  output Cout;

  wire   [8:1] G;
  wire   [8:1] P;
  wire   [7:1] GG;

  AND2X1_RVT U17 ( .A1(A[8]), .A2(B[8]), .Y(G[8]) );
  AND2X1_RVT U18 ( .A1(A[7]), .A2(B[7]), .Y(G[7]) );
  AND2X1_RVT U19 ( .A1(A[6]), .A2(B[6]), .Y(G[6]) );
  AND2X1_RVT U20 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U21 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U22 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U23 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U24 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_91 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_90 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_89 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_88 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_87 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        GG[5]) );
  G_Cell_86 \loop_1[5].genblk1.U1  ( .G0(GG[5]), .G1(G[6]), .P1(P[6]), .GG(
        GG[6]) );
  G_Cell_85 \loop_1[6].genblk1.U1  ( .G0(GG[6]), .G1(G[7]), .P1(P[7]), .GG(
        GG[7]) );
  G_Cell_84 \loop_1[7].genblk1.U1  ( .G0(GG[7]), .G1(G[8]), .P1(P[8]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U2 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U3 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U4 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U5 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U6 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U7 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U8 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U9 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U10 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U11 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U12 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U13 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U14 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U15 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U16 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
endmodule


module G_Cell_83 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_82 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_81 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_80 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_79 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_78 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_77 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_76 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw8_5 ( A, B, Cin, Sum, Cout );
  input [8:1] A;
  input [8:1] B;
  output [8:1] Sum;
  input Cin;
  output Cout;

  wire   [8:1] G;
  wire   [8:1] P;
  wire   [7:1] GG;

  AND2X1_RVT U17 ( .A1(A[8]), .A2(B[8]), .Y(G[8]) );
  AND2X1_RVT U18 ( .A1(A[7]), .A2(B[7]), .Y(G[7]) );
  AND2X1_RVT U19 ( .A1(A[6]), .A2(B[6]), .Y(G[6]) );
  AND2X1_RVT U20 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U21 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U22 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U23 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U24 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_83 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_82 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_81 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_80 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_79 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        GG[5]) );
  G_Cell_78 \loop_1[5].genblk1.U1  ( .G0(GG[5]), .G1(G[6]), .P1(P[6]), .GG(
        GG[6]) );
  G_Cell_77 \loop_1[6].genblk1.U1  ( .G0(GG[6]), .G1(G[7]), .P1(P[7]), .GG(
        GG[7]) );
  G_Cell_76 \loop_1[7].genblk1.U1  ( .G0(GG[7]), .G1(G[8]), .P1(P[8]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U2 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U3 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U4 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U5 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U6 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U7 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U8 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U9 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U10 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U11 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U12 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U13 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U14 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U15 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U16 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
endmodule


module G_Cell_75 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_74 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_73 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_72 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_71 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_70 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_69 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_68 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_67 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw9_3 ( A, B, Cin, Sum, Cout );
  input [9:1] A;
  input [9:1] B;
  output [9:1] Sum;
  input Cin;
  output Cout;

  wire   [9:1] G;
  wire   [9:1] P;
  wire   [8:1] GG;

  AND2X1_RVT U19 ( .A1(A[9]), .A2(B[9]), .Y(G[9]) );
  AND2X1_RVT U20 ( .A1(A[8]), .A2(B[8]), .Y(G[8]) );
  AND2X1_RVT U21 ( .A1(A[7]), .A2(B[7]), .Y(G[7]) );
  AND2X1_RVT U22 ( .A1(A[6]), .A2(B[6]), .Y(G[6]) );
  AND2X1_RVT U23 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U24 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U25 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U26 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U27 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_75 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_74 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_73 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_72 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_71 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        GG[5]) );
  G_Cell_70 \loop_1[5].genblk1.U1  ( .G0(GG[5]), .G1(G[6]), .P1(P[6]), .GG(
        GG[6]) );
  G_Cell_69 \loop_1[6].genblk1.U1  ( .G0(GG[6]), .G1(G[7]), .P1(P[7]), .GG(
        GG[7]) );
  G_Cell_68 \loop_1[7].genblk1.U1  ( .G0(GG[7]), .G1(G[8]), .P1(P[8]), .GG(
        GG[8]) );
  G_Cell_67 \loop_1[8].genblk1.U1  ( .G0(GG[8]), .G1(G[9]), .P1(P[9]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U2 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U3 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U4 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U5 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U6 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U7 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U8 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U9 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U10 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U11 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U12 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U13 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U14 ( .A1(GG[8]), .A2(P[9]), .Y(Sum[9]) );
  XOR2X1_RVT U15 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U16 ( .A1(A[9]), .A2(B[9]), .Y(P[9]) );
  XOR2X1_RVT U17 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U18 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
endmodule


module karastuba_6bit_3 ( a, b, out );
  input [5:0] a;
  input [5:0] b;
  output [11:0] out;
  wire   \tsum[1][3] , \tsum[1][2] , \tsum[1][1] , \tsum[1][0] , \tsum[0][3] ,
         \tsum[0][2] , \tsum[0][1] , \tsum[0][0] , n1, n2, n3, n4, n5, n6, n7,
         n8;
  wire   [7:0] xy;
  wire   [7:3] r;
  wire   [7:0] mid;
  wire   [7:0] temp;
  wire   [7:0] mid3;

  vedic_4bit_9 u0 ( .a({1'b0, a[5:3]}), .b({1'b0, b[5:3]}), .out(xy) );
  vedic_4bit_8 u1 ( .a({1'b0, a[2:0]}), .b({1'b0, b[2:0]}), .out({r, out[2:0]}) );
  RCA_bw4_6 rca1 ( .A({1'b0, a[5:3]}), .B({1'b0, a[2:0]}), .Cin(1'b0), .Sum({
        \tsum[0][3] , \tsum[0][2] , \tsum[0][1] , \tsum[0][0] }) );
  RCA_bw4_5 rca2 ( .A({1'b0, b[5:3]}), .B({1'b0, b[2:0]}), .Cin(1'b0), .Sum({
        \tsum[1][3] , \tsum[1][2] , \tsum[1][1] , \tsum[1][0] }) );
  vedic_4bit_7 u2 ( .a({\tsum[0][3] , \tsum[0][2] , \tsum[0][1] , \tsum[0][0] }), .b({\tsum[1][3] , \tsum[1][2] , \tsum[1][1] , \tsum[1][0] }), .out(mid) );
  RCA_bw8_6 add_mid ( .A(xy), .B({r, out[2:0]}), .Cin(1'b0), .Sum(temp) );
  RCA_bw8_5 sub_mid ( .A({n1, n2, n3, n4, n5, n6, n7, n8}), .B(mid), .Cin(1'b1), .Sum(mid3) );
  RCA_bw9_3 add1 ( .A({xy[5:0], r[5:3]}), .B({1'b0, mid3}), .Cin(1'b0), .Sum(
        out[11:3]) );
  INVX1_RVT U3 ( .A(temp[7]), .Y(n1) );
  INVX1_RVT U4 ( .A(temp[6]), .Y(n2) );
  INVX1_RVT U5 ( .A(temp[5]), .Y(n3) );
  INVX1_RVT U6 ( .A(temp[4]), .Y(n4) );
  INVX1_RVT U7 ( .A(temp[3]), .Y(n5) );
  INVX1_RVT U8 ( .A(temp[2]), .Y(n6) );
  INVX1_RVT U9 ( .A(temp[1]), .Y(n7) );
  INVX1_RVT U10 ( .A(temp[0]), .Y(n8) );
endmodule


module half_adder_78 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_36 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_35 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_34 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_48 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module Adder2_6 ( a, b, c, add, lsb, msb );
  output [1:0] msb;
  input a, b, c, add;
  output lsb;

  wire   [1:0] temp;
  wire   [2:0] carry;

  half_adder_36 u0 ( .A(a), .B(b), .sum(temp[0]), .cout(carry[0]) );
  half_adder_35 u1 ( .A(c), .B(add), .sum(temp[1]), .cout(carry[1]) );
  half_adder_34 u2 ( .A(temp[0]), .B(temp[1]), .sum(lsb), .cout(carry[2]) );
  full_adder_48 u3 ( .A(carry[0]), .B(carry[1]), .cin(carry[2]), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module half_adder_33 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_47 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module half_adder_32 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_31 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_46 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder3_6 ( a, b, c, d, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c, d;
  output lsb;

  wire   [1:0] st0;
  wire   [3:0] st1;
  wire   [1:0] st2;

  OR2X1_RVT U1 ( .A1(st2[0]), .A2(st2[1]), .Y(msb[1]) );
  half_adder_33 u0 ( .A(c), .B(d), .sum(st0[0]), .cout(st1[0]) );
  full_adder_47 u1 ( .A(a), .B(b), .cin(add[0]), .sum(st0[1]), .cout(st1[1])
         );
  half_adder_32 u2 ( .A(st0[0]), .B(st0[1]), .sum(lsb), .cout(st1[2]) );
  half_adder_31 u3 ( .A(st1[0]), .B(add[1]), .sum(st1[3]), .cout(st2[0]) );
  full_adder_46 u4 ( .A(st1[3]), .B(st1[2]), .cin(st1[1]), .sum(msb[0]), 
        .cout(st2[1]) );
endmodule


module full_adder_45 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_44 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_43 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder4_6 ( a, b, c, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c;
  output lsb;
  wire   \carry[0] ;
  wire   [1:0] temp;

  full_adder_45 u0 ( .A(a), .B(b), .cin(c), .sum(temp[0]), .cout(temp[1]) );
  full_adder_44 u1 ( .A(temp[0]), .B(add[0]), .cin(1'b0), .sum(lsb), .cout(
        \carry[0] ) );
  full_adder_43 u2 ( .A(temp[1]), .B(add[1]), .cin(\carry[0] ), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module full_adder_42 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module full_adder_41 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder5_6 ( a, b, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b;
  output lsb;
  wire   \carry[0] ;

  full_adder_42 u0 ( .A(a), .B(b), .cin(add[0]), .sum(lsb), .cout(\carry[0] )
         );
  full_adder_41 u1 ( .A(add[1]), .B(\carry[0] ), .cin(1'b0), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module vedic_4bit_6 ( a, b, out );
  input [3:0] a;
  input [3:0] b;
  output [7:0] out;
  wire   _0_net_, _1_net_, \add[5][1] , \add[5][0] , \add[4][1] , \add[4][0] ,
         \add[3][1] , \add[3][0] , \add[2][1] , \add[2][0] , \add[1][0] ,
         _3_net_, _4_net_, _5_net_, _7_net_, _8_net_, _9_net_, _10_net_,
         _11_net_, _12_net_, _13_net_, _14_net_, _15_net_, n3, n4;

  OR2X1_RVT U2 ( .A1(n4), .A2(\add[5][1] ), .Y(out[7]) );
  AND3X1_RVT U3 ( .A1(\add[5][0] ), .A2(a[3]), .A3(b[3]), .Y(n4) );
  NAND2X0_RVT U4 ( .A1(b[3]), .A2(a[3]), .Y(n3) );
  AND2X1_RVT U5 ( .A1(b[0]), .A2(a[0]), .Y(out[0]) );
  AND2X1_RVT U6 ( .A1(b[1]), .A2(a[2]), .Y(_9_net_) );
  AND2X1_RVT U7 ( .A1(b[2]), .A2(a[1]), .Y(_8_net_) );
  AND2X1_RVT U8 ( .A1(a[0]), .A2(b[3]), .Y(_7_net_) );
  AND2X1_RVT U9 ( .A1(a[2]), .A2(b[0]), .Y(_5_net_) );
  AND2X1_RVT U10 ( .A1(a[1]), .A2(b[1]), .Y(_4_net_) );
  AND2X1_RVT U11 ( .A1(b[2]), .A2(a[0]), .Y(_3_net_) );
  AND2X1_RVT U12 ( .A1(a[1]), .A2(b[0]), .Y(_1_net_) );
  AND2X1_RVT U13 ( .A1(a[2]), .A2(b[3]), .Y(_15_net_) );
  AND2X1_RVT U14 ( .A1(b[2]), .A2(a[3]), .Y(_14_net_) );
  AND2X1_RVT U15 ( .A1(a[1]), .A2(b[3]), .Y(_13_net_) );
  AND2X1_RVT U16 ( .A1(b[2]), .A2(a[2]), .Y(_12_net_) );
  AND2X1_RVT U17 ( .A1(b[1]), .A2(a[3]), .Y(_11_net_) );
  AND2X1_RVT U18 ( .A1(b[0]), .A2(a[3]), .Y(_10_net_) );
  AND2X1_RVT U19 ( .A1(b[1]), .A2(a[0]), .Y(_0_net_) );
  half_adder_78 adder1 ( .A(_0_net_), .B(_1_net_), .sum(out[1]), .cout(
        \add[1][0] ) );
  Adder2_6 adder2 ( .a(_3_net_), .b(_4_net_), .c(_5_net_), .add(\add[1][0] ), 
        .lsb(out[2]), .msb({\add[2][1] , \add[2][0] }) );
  Adder3_6 adder3 ( .a(_7_net_), .b(_8_net_), .c(_9_net_), .d(_10_net_), .add(
        {\add[2][1] , \add[2][0] }), .lsb(out[3]), .msb({\add[3][1] , 
        \add[3][0] }) );
  Adder4_6 adder4 ( .a(_11_net_), .b(_12_net_), .c(_13_net_), .add({
        \add[3][1] , \add[3][0] }), .lsb(out[4]), .msb({\add[4][1] , 
        \add[4][0] }) );
  Adder5_6 adder5 ( .a(_14_net_), .b(_15_net_), .add({\add[4][1] , \add[4][0] }), .lsb(out[5]), .msb({\add[5][1] , \add[5][0] }) );
  XNOR2X1_RVT U1 ( .A1(\add[5][0] ), .A2(n3), .Y(out[6]) );
endmodule


module half_adder_77 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_30 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_29 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_28 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_40 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module Adder2_5 ( a, b, c, add, lsb, msb );
  output [1:0] msb;
  input a, b, c, add;
  output lsb;

  wire   [1:0] temp;
  wire   [2:0] carry;

  half_adder_30 u0 ( .A(a), .B(b), .sum(temp[0]), .cout(carry[0]) );
  half_adder_29 u1 ( .A(c), .B(add), .sum(temp[1]), .cout(carry[1]) );
  half_adder_28 u2 ( .A(temp[0]), .B(temp[1]), .sum(lsb), .cout(carry[2]) );
  full_adder_40 u3 ( .A(carry[0]), .B(carry[1]), .cin(carry[2]), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module half_adder_27 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_39 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module half_adder_26 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_25 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_38 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder3_5 ( a, b, c, d, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c, d;
  output lsb;

  wire   [1:0] st0;
  wire   [3:0] st1;
  wire   [1:0] st2;

  OR2X1_RVT U1 ( .A1(st2[0]), .A2(st2[1]), .Y(msb[1]) );
  half_adder_27 u0 ( .A(c), .B(d), .sum(st0[0]), .cout(st1[0]) );
  full_adder_39 u1 ( .A(a), .B(b), .cin(add[0]), .sum(st0[1]), .cout(st1[1])
         );
  half_adder_26 u2 ( .A(st0[0]), .B(st0[1]), .sum(lsb), .cout(st1[2]) );
  half_adder_25 u3 ( .A(st1[0]), .B(add[1]), .sum(st1[3]), .cout(st2[0]) );
  full_adder_38 u4 ( .A(st1[3]), .B(st1[2]), .cin(st1[1]), .sum(msb[0]), 
        .cout(st2[1]) );
endmodule


module full_adder_37 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_36 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_35 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder4_5 ( a, b, c, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c;
  output lsb;
  wire   \carry[0] ;
  wire   [1:0] temp;

  full_adder_37 u0 ( .A(a), .B(b), .cin(c), .sum(temp[0]), .cout(temp[1]) );
  full_adder_36 u1 ( .A(temp[0]), .B(add[0]), .cin(1'b0), .sum(lsb), .cout(
        \carry[0] ) );
  full_adder_35 u2 ( .A(temp[1]), .B(add[1]), .cin(\carry[0] ), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module full_adder_34 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module full_adder_33 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder5_5 ( a, b, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b;
  output lsb;
  wire   \carry[0] ;

  full_adder_34 u0 ( .A(a), .B(b), .cin(add[0]), .sum(lsb), .cout(\carry[0] )
         );
  full_adder_33 u1 ( .A(add[1]), .B(\carry[0] ), .cin(1'b0), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module vedic_4bit_5 ( a, b, out );
  input [3:0] a;
  input [3:0] b;
  output [7:0] out;
  wire   _0_net_, _1_net_, \add[5][1] , \add[5][0] , \add[4][1] , \add[4][0] ,
         \add[3][1] , \add[3][0] , \add[2][1] , \add[2][0] , \add[1][0] ,
         _3_net_, _4_net_, _5_net_, _7_net_, _8_net_, _9_net_, _10_net_,
         _11_net_, _12_net_, _13_net_, _14_net_, _15_net_, n3, n4;

  OR2X1_RVT U2 ( .A1(n4), .A2(\add[5][1] ), .Y(out[7]) );
  AND3X1_RVT U3 ( .A1(\add[5][0] ), .A2(a[3]), .A3(b[3]), .Y(n4) );
  NAND2X0_RVT U4 ( .A1(b[3]), .A2(a[3]), .Y(n3) );
  AND2X1_RVT U5 ( .A1(b[0]), .A2(a[0]), .Y(out[0]) );
  AND2X1_RVT U6 ( .A1(b[1]), .A2(a[2]), .Y(_9_net_) );
  AND2X1_RVT U7 ( .A1(b[2]), .A2(a[1]), .Y(_8_net_) );
  AND2X1_RVT U8 ( .A1(a[0]), .A2(b[3]), .Y(_7_net_) );
  AND2X1_RVT U9 ( .A1(a[2]), .A2(b[0]), .Y(_5_net_) );
  AND2X1_RVT U10 ( .A1(a[1]), .A2(b[1]), .Y(_4_net_) );
  AND2X1_RVT U11 ( .A1(b[2]), .A2(a[0]), .Y(_3_net_) );
  AND2X1_RVT U12 ( .A1(a[1]), .A2(b[0]), .Y(_1_net_) );
  AND2X1_RVT U13 ( .A1(a[2]), .A2(b[3]), .Y(_15_net_) );
  AND2X1_RVT U14 ( .A1(b[2]), .A2(a[3]), .Y(_14_net_) );
  AND2X1_RVT U15 ( .A1(a[1]), .A2(b[3]), .Y(_13_net_) );
  AND2X1_RVT U16 ( .A1(b[2]), .A2(a[2]), .Y(_12_net_) );
  AND2X1_RVT U17 ( .A1(b[1]), .A2(a[3]), .Y(_11_net_) );
  AND2X1_RVT U18 ( .A1(b[0]), .A2(a[3]), .Y(_10_net_) );
  AND2X1_RVT U19 ( .A1(b[1]), .A2(a[0]), .Y(_0_net_) );
  half_adder_77 adder1 ( .A(_0_net_), .B(_1_net_), .sum(out[1]), .cout(
        \add[1][0] ) );
  Adder2_5 adder2 ( .a(_3_net_), .b(_4_net_), .c(_5_net_), .add(\add[1][0] ), 
        .lsb(out[2]), .msb({\add[2][1] , \add[2][0] }) );
  Adder3_5 adder3 ( .a(_7_net_), .b(_8_net_), .c(_9_net_), .d(_10_net_), .add(
        {\add[2][1] , \add[2][0] }), .lsb(out[3]), .msb({\add[3][1] , 
        \add[3][0] }) );
  Adder4_5 adder4 ( .a(_11_net_), .b(_12_net_), .c(_13_net_), .add({
        \add[3][1] , \add[3][0] }), .lsb(out[4]), .msb({\add[4][1] , 
        \add[4][0] }) );
  Adder5_5 adder5 ( .a(_14_net_), .b(_15_net_), .add({\add[4][1] , \add[4][0] }), .lsb(out[5]), .msb({\add[5][1] , \add[5][0] }) );
  XNOR2X1_RVT U1 ( .A1(\add[5][0] ), .A2(n3), .Y(out[6]) );
endmodule


module G_Cell_66 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_65 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_64 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_63 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw4_4 ( A, B, Cin, Sum, Cout );
  input [4:1] A;
  input [4:1] B;
  output [4:1] Sum;
  input Cin;
  output Cout;

  wire   [4:1] G;
  wire   [4:1] P;
  wire   [3:1] GG;

  AND2X1_RVT U9 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U10 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U11 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U12 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_66 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_65 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_64 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_63 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U2 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U3 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U4 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U5 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U6 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U7 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U8 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
endmodule


module G_Cell_62 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_61 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_60 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_59 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw4_3 ( A, B, Cin, Sum, Cout );
  input [4:1] A;
  input [4:1] B;
  output [4:1] Sum;
  input Cin;
  output Cout;

  wire   [4:1] G;
  wire   [4:1] P;
  wire   [3:1] GG;

  AND2X1_RVT U9 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U10 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U11 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U12 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_62 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_61 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_60 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_59 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U2 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U3 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U4 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U5 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U6 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U7 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U8 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
endmodule


module half_adder_76 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_24 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_23 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_22 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_32 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module Adder2_4 ( a, b, c, add, lsb, msb );
  output [1:0] msb;
  input a, b, c, add;
  output lsb;

  wire   [1:0] temp;
  wire   [2:0] carry;

  half_adder_24 u0 ( .A(a), .B(b), .sum(temp[0]), .cout(carry[0]) );
  half_adder_23 u1 ( .A(c), .B(add), .sum(temp[1]), .cout(carry[1]) );
  half_adder_22 u2 ( .A(temp[0]), .B(temp[1]), .sum(lsb), .cout(carry[2]) );
  full_adder_32 u3 ( .A(carry[0]), .B(carry[1]), .cin(carry[2]), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module half_adder_21 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_31 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module half_adder_20 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_19 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_30 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder3_4 ( a, b, c, d, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c, d;
  output lsb;

  wire   [1:0] st0;
  wire   [3:0] st1;
  wire   [1:0] st2;

  OR2X1_RVT U1 ( .A1(st2[0]), .A2(st2[1]), .Y(msb[1]) );
  half_adder_21 u0 ( .A(c), .B(d), .sum(st0[0]), .cout(st1[0]) );
  full_adder_31 u1 ( .A(a), .B(b), .cin(add[0]), .sum(st0[1]), .cout(st1[1])
         );
  half_adder_20 u2 ( .A(st0[0]), .B(st0[1]), .sum(lsb), .cout(st1[2]) );
  half_adder_19 u3 ( .A(st1[0]), .B(add[1]), .sum(st1[3]), .cout(st2[0]) );
  full_adder_30 u4 ( .A(st1[3]), .B(st1[2]), .cin(st1[1]), .sum(msb[0]), 
        .cout(st2[1]) );
endmodule


module full_adder_29 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_28 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_27 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder4_4 ( a, b, c, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c;
  output lsb;
  wire   \carry[0] ;
  wire   [1:0] temp;

  full_adder_29 u0 ( .A(a), .B(b), .cin(c), .sum(temp[0]), .cout(temp[1]) );
  full_adder_28 u1 ( .A(temp[0]), .B(add[0]), .cin(1'b0), .sum(lsb), .cout(
        \carry[0] ) );
  full_adder_27 u2 ( .A(temp[1]), .B(add[1]), .cin(\carry[0] ), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module full_adder_26 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_25 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder5_4 ( a, b, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b;
  output lsb;
  wire   \carry[0] ;

  full_adder_26 u0 ( .A(a), .B(b), .cin(add[0]), .sum(lsb), .cout(\carry[0] )
         );
  full_adder_25 u1 ( .A(add[1]), .B(\carry[0] ), .cin(1'b0), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module vedic_4bit_4 ( a, b, out );
  input [3:0] a;
  input [3:0] b;
  output [7:0] out;
  wire   _0_net_, _1_net_, \add[5][1] , \add[5][0] , \add[4][1] , \add[4][0] ,
         \add[3][1] , \add[3][0] , \add[2][1] , \add[2][0] , \add[1][0] ,
         _3_net_, _4_net_, _5_net_, _7_net_, _8_net_, _9_net_, _10_net_,
         _11_net_, _12_net_, _13_net_, _14_net_, _15_net_, n3, n4;

  OR2X1_RVT U2 ( .A1(n4), .A2(\add[5][1] ), .Y(out[7]) );
  AND3X1_RVT U3 ( .A1(\add[5][0] ), .A2(a[3]), .A3(b[3]), .Y(n4) );
  NAND2X0_RVT U4 ( .A1(b[3]), .A2(a[3]), .Y(n3) );
  AND2X1_RVT U5 ( .A1(b[0]), .A2(a[0]), .Y(out[0]) );
  AND2X1_RVT U6 ( .A1(b[1]), .A2(a[2]), .Y(_9_net_) );
  AND2X1_RVT U7 ( .A1(b[2]), .A2(a[1]), .Y(_8_net_) );
  AND2X1_RVT U8 ( .A1(a[0]), .A2(b[3]), .Y(_7_net_) );
  AND2X1_RVT U9 ( .A1(a[2]), .A2(b[0]), .Y(_5_net_) );
  AND2X1_RVT U10 ( .A1(a[1]), .A2(b[1]), .Y(_4_net_) );
  AND2X1_RVT U11 ( .A1(b[2]), .A2(a[0]), .Y(_3_net_) );
  AND2X1_RVT U12 ( .A1(a[1]), .A2(b[0]), .Y(_1_net_) );
  AND2X1_RVT U13 ( .A1(a[2]), .A2(b[3]), .Y(_15_net_) );
  AND2X1_RVT U14 ( .A1(b[2]), .A2(a[3]), .Y(_14_net_) );
  AND2X1_RVT U15 ( .A1(a[1]), .A2(b[3]), .Y(_13_net_) );
  AND2X1_RVT U16 ( .A1(b[2]), .A2(a[2]), .Y(_12_net_) );
  AND2X1_RVT U17 ( .A1(b[1]), .A2(a[3]), .Y(_11_net_) );
  AND2X1_RVT U18 ( .A1(b[0]), .A2(a[3]), .Y(_10_net_) );
  AND2X1_RVT U19 ( .A1(b[1]), .A2(a[0]), .Y(_0_net_) );
  half_adder_76 adder1 ( .A(_0_net_), .B(_1_net_), .sum(out[1]), .cout(
        \add[1][0] ) );
  Adder2_4 adder2 ( .a(_3_net_), .b(_4_net_), .c(_5_net_), .add(\add[1][0] ), 
        .lsb(out[2]), .msb({\add[2][1] , \add[2][0] }) );
  Adder3_4 adder3 ( .a(_7_net_), .b(_8_net_), .c(_9_net_), .d(_10_net_), .add(
        {\add[2][1] , \add[2][0] }), .lsb(out[3]), .msb({\add[3][1] , 
        \add[3][0] }) );
  Adder4_4 adder4 ( .a(_11_net_), .b(_12_net_), .c(_13_net_), .add({
        \add[3][1] , \add[3][0] }), .lsb(out[4]), .msb({\add[4][1] , 
        \add[4][0] }) );
  Adder5_4 adder5 ( .a(_14_net_), .b(_15_net_), .add({\add[4][1] , \add[4][0] }), .lsb(out[5]), .msb({\add[5][1] , \add[5][0] }) );
  XNOR2X1_RVT U1 ( .A1(\add[5][0] ), .A2(n3), .Y(out[6]) );
endmodule


module G_Cell_58 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_57 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_56 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_55 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_54 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_53 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_52 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_51 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw8_4 ( A, B, Cin, Sum, Cout );
  input [8:1] A;
  input [8:1] B;
  output [8:1] Sum;
  input Cin;
  output Cout;

  wire   [8:1] G;
  wire   [8:1] P;
  wire   [7:1] GG;

  AND2X1_RVT U17 ( .A1(A[8]), .A2(B[8]), .Y(G[8]) );
  AND2X1_RVT U18 ( .A1(A[7]), .A2(B[7]), .Y(G[7]) );
  AND2X1_RVT U19 ( .A1(A[6]), .A2(B[6]), .Y(G[6]) );
  AND2X1_RVT U20 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U21 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U22 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U23 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U24 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_58 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_57 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_56 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_55 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_54 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        GG[5]) );
  G_Cell_53 \loop_1[5].genblk1.U1  ( .G0(GG[5]), .G1(G[6]), .P1(P[6]), .GG(
        GG[6]) );
  G_Cell_52 \loop_1[6].genblk1.U1  ( .G0(GG[6]), .G1(G[7]), .P1(P[7]), .GG(
        GG[7]) );
  G_Cell_51 \loop_1[7].genblk1.U1  ( .G0(GG[7]), .G1(G[8]), .P1(P[8]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U2 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U3 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U4 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U5 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U6 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U7 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U8 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U9 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U10 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U11 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U12 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U13 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U14 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U15 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U16 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
endmodule


module G_Cell_50 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_49 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_48 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_47 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_46 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_45 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_44 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_43 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw8_3 ( A, B, Cin, Sum, Cout );
  input [8:1] A;
  input [8:1] B;
  output [8:1] Sum;
  input Cin;
  output Cout;

  wire   [8:1] G;
  wire   [8:1] P;
  wire   [7:1] GG;

  AND2X1_RVT U17 ( .A1(A[8]), .A2(B[8]), .Y(G[8]) );
  AND2X1_RVT U18 ( .A1(A[7]), .A2(B[7]), .Y(G[7]) );
  AND2X1_RVT U19 ( .A1(A[6]), .A2(B[6]), .Y(G[6]) );
  AND2X1_RVT U20 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U21 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U22 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U23 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U24 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_50 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_49 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_48 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_47 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_46 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        GG[5]) );
  G_Cell_45 \loop_1[5].genblk1.U1  ( .G0(GG[5]), .G1(G[6]), .P1(P[6]), .GG(
        GG[6]) );
  G_Cell_44 \loop_1[6].genblk1.U1  ( .G0(GG[6]), .G1(G[7]), .P1(P[7]), .GG(
        GG[7]) );
  G_Cell_43 \loop_1[7].genblk1.U1  ( .G0(GG[7]), .G1(G[8]), .P1(P[8]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U2 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U3 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U4 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U5 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U6 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U7 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U8 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U9 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U10 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U11 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U12 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U13 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U14 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U15 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U16 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
endmodule


module G_Cell_42 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_41 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_40 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_39 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_38 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_37 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_36 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_35 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_34 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw9_2 ( A, B, Cin, Sum, Cout );
  input [9:1] A;
  input [9:1] B;
  output [9:1] Sum;
  input Cin;
  output Cout;

  wire   [9:1] G;
  wire   [9:1] P;
  wire   [8:1] GG;

  AND2X1_RVT U19 ( .A1(A[9]), .A2(B[9]), .Y(G[9]) );
  AND2X1_RVT U20 ( .A1(A[8]), .A2(B[8]), .Y(G[8]) );
  AND2X1_RVT U21 ( .A1(A[7]), .A2(B[7]), .Y(G[7]) );
  AND2X1_RVT U22 ( .A1(A[6]), .A2(B[6]), .Y(G[6]) );
  AND2X1_RVT U23 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U24 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U25 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U26 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U27 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_42 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_41 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_40 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_39 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_38 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        GG[5]) );
  G_Cell_37 \loop_1[5].genblk1.U1  ( .G0(GG[5]), .G1(G[6]), .P1(P[6]), .GG(
        GG[6]) );
  G_Cell_36 \loop_1[6].genblk1.U1  ( .G0(GG[6]), .G1(G[7]), .P1(P[7]), .GG(
        GG[7]) );
  G_Cell_35 \loop_1[7].genblk1.U1  ( .G0(GG[7]), .G1(G[8]), .P1(P[8]), .GG(
        GG[8]) );
  G_Cell_34 \loop_1[8].genblk1.U1  ( .G0(GG[8]), .G1(G[9]), .P1(P[9]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U2 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U3 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U4 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U5 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U6 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U7 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U8 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U9 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U10 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U11 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U12 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U13 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U14 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U15 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U16 ( .A1(GG[8]), .A2(P[9]), .Y(Sum[9]) );
  XOR2X1_RVT U17 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U18 ( .A1(A[9]), .A2(B[9]), .Y(P[9]) );
endmodule


module karastuba_6bit_2 ( a, b, out );
  input [5:0] a;
  input [5:0] b;
  output [11:0] out;
  wire   \tsum[1][3] , \tsum[1][2] , \tsum[1][1] , \tsum[1][0] , \tsum[0][3] ,
         \tsum[0][2] , \tsum[0][1] , \tsum[0][0] , n1, n2, n3, n4, n5, n6, n7,
         n8;
  wire   [7:0] xy;
  wire   [7:3] r;
  wire   [7:0] mid;
  wire   [7:0] temp;
  wire   [7:0] mid3;

  vedic_4bit_6 u0 ( .a({1'b0, a[5:3]}), .b({1'b0, b[5:3]}), .out(xy) );
  vedic_4bit_5 u1 ( .a({1'b0, a[2:0]}), .b({1'b0, b[2:0]}), .out({r, out[2:0]}) );
  RCA_bw4_4 rca1 ( .A({1'b0, a[5:3]}), .B({1'b0, a[2:0]}), .Cin(1'b0), .Sum({
        \tsum[0][3] , \tsum[0][2] , \tsum[0][1] , \tsum[0][0] }) );
  RCA_bw4_3 rca2 ( .A({1'b0, b[5:3]}), .B({1'b0, b[2:0]}), .Cin(1'b0), .Sum({
        \tsum[1][3] , \tsum[1][2] , \tsum[1][1] , \tsum[1][0] }) );
  vedic_4bit_4 u2 ( .a({\tsum[0][3] , \tsum[0][2] , \tsum[0][1] , \tsum[0][0] }), .b({\tsum[1][3] , \tsum[1][2] , \tsum[1][1] , \tsum[1][0] }), .out(mid) );
  RCA_bw8_4 add_mid ( .A(xy), .B({r, out[2:0]}), .Cin(1'b0), .Sum(temp) );
  RCA_bw8_3 sub_mid ( .A({n1, n2, n3, n4, n5, n6, n7, n8}), .B(mid), .Cin(1'b1), .Sum(mid3) );
  RCA_bw9_2 add1 ( .A({xy[5:0], r[5:3]}), .B({1'b0, mid3}), .Cin(1'b0), .Sum(
        out[11:3]) );
  INVX1_RVT U3 ( .A(temp[7]), .Y(n1) );
  INVX1_RVT U4 ( .A(temp[6]), .Y(n2) );
  INVX1_RVT U5 ( .A(temp[5]), .Y(n3) );
  INVX1_RVT U6 ( .A(temp[4]), .Y(n4) );
  INVX1_RVT U7 ( .A(temp[3]), .Y(n5) );
  INVX1_RVT U8 ( .A(temp[2]), .Y(n6) );
  INVX1_RVT U9 ( .A(temp[1]), .Y(n7) );
  INVX1_RVT U10 ( .A(temp[0]), .Y(n8) );
endmodule


module half_adder_75 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_18 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_17 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_16 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_24 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module Adder2_3 ( a, b, c, add, lsb, msb );
  output [1:0] msb;
  input a, b, c, add;
  output lsb;

  wire   [1:0] temp;
  wire   [2:0] carry;

  half_adder_18 u0 ( .A(a), .B(b), .sum(temp[0]), .cout(carry[0]) );
  half_adder_17 u1 ( .A(c), .B(add), .sum(temp[1]), .cout(carry[1]) );
  half_adder_16 u2 ( .A(temp[0]), .B(temp[1]), .sum(lsb), .cout(carry[2]) );
  full_adder_24 u3 ( .A(carry[0]), .B(carry[1]), .cin(carry[2]), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module half_adder_15 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_23 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module half_adder_14 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_13 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_22 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder3_3 ( a, b, c, d, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c, d;
  output lsb;

  wire   [1:0] st0;
  wire   [3:0] st1;
  wire   [1:0] st2;

  OR2X1_RVT U1 ( .A1(st2[0]), .A2(st2[1]), .Y(msb[1]) );
  half_adder_15 u0 ( .A(c), .B(d), .sum(st0[0]), .cout(st1[0]) );
  full_adder_23 u1 ( .A(a), .B(b), .cin(add[0]), .sum(st0[1]), .cout(st1[1])
         );
  half_adder_14 u2 ( .A(st0[0]), .B(st0[1]), .sum(lsb), .cout(st1[2]) );
  half_adder_13 u3 ( .A(st1[0]), .B(add[1]), .sum(st1[3]), .cout(st2[0]) );
  full_adder_22 u4 ( .A(st1[3]), .B(st1[2]), .cin(st1[1]), .sum(msb[0]), 
        .cout(st2[1]) );
endmodule


module full_adder_21 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module full_adder_20 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_19 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder4_3 ( a, b, c, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c;
  output lsb;
  wire   \carry[0] ;
  wire   [1:0] temp;

  full_adder_21 u0 ( .A(a), .B(b), .cin(c), .sum(temp[0]), .cout(temp[1]) );
  full_adder_20 u1 ( .A(temp[0]), .B(add[0]), .cin(1'b0), .sum(lsb), .cout(
        \carry[0] ) );
  full_adder_19 u2 ( .A(temp[1]), .B(add[1]), .cin(\carry[0] ), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module full_adder_18 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module full_adder_17 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder5_3 ( a, b, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b;
  output lsb;
  wire   \carry[0] ;

  full_adder_18 u0 ( .A(a), .B(b), .cin(add[0]), .sum(lsb), .cout(\carry[0] )
         );
  full_adder_17 u1 ( .A(add[1]), .B(\carry[0] ), .cin(1'b0), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module vedic_4bit_3 ( a, b, out );
  input [3:0] a;
  input [3:0] b;
  output [7:0] out;
  wire   _0_net_, _1_net_, \add[5][1] , \add[5][0] , \add[4][1] , \add[4][0] ,
         \add[3][1] , \add[3][0] , \add[2][1] , \add[2][0] , \add[1][0] ,
         _3_net_, _4_net_, _5_net_, _7_net_, _8_net_, _9_net_, _10_net_,
         _11_net_, _12_net_, _13_net_, _14_net_, _15_net_, n3, n4;

  OR2X1_RVT U2 ( .A1(n4), .A2(\add[5][1] ), .Y(out[7]) );
  AND3X1_RVT U3 ( .A1(\add[5][0] ), .A2(a[3]), .A3(b[3]), .Y(n4) );
  NAND2X0_RVT U4 ( .A1(b[3]), .A2(a[3]), .Y(n3) );
  AND2X1_RVT U5 ( .A1(b[0]), .A2(a[0]), .Y(out[0]) );
  AND2X1_RVT U6 ( .A1(b[1]), .A2(a[2]), .Y(_9_net_) );
  AND2X1_RVT U7 ( .A1(b[2]), .A2(a[1]), .Y(_8_net_) );
  AND2X1_RVT U8 ( .A1(a[0]), .A2(b[3]), .Y(_7_net_) );
  AND2X1_RVT U9 ( .A1(a[2]), .A2(b[0]), .Y(_5_net_) );
  AND2X1_RVT U10 ( .A1(a[1]), .A2(b[1]), .Y(_4_net_) );
  AND2X1_RVT U11 ( .A1(b[2]), .A2(a[0]), .Y(_3_net_) );
  AND2X1_RVT U12 ( .A1(a[1]), .A2(b[0]), .Y(_1_net_) );
  AND2X1_RVT U13 ( .A1(a[2]), .A2(b[3]), .Y(_15_net_) );
  AND2X1_RVT U14 ( .A1(b[2]), .A2(a[3]), .Y(_14_net_) );
  AND2X1_RVT U15 ( .A1(a[1]), .A2(b[3]), .Y(_13_net_) );
  AND2X1_RVT U16 ( .A1(b[2]), .A2(a[2]), .Y(_12_net_) );
  AND2X1_RVT U17 ( .A1(b[1]), .A2(a[3]), .Y(_11_net_) );
  AND2X1_RVT U18 ( .A1(b[0]), .A2(a[3]), .Y(_10_net_) );
  AND2X1_RVT U19 ( .A1(b[1]), .A2(a[0]), .Y(_0_net_) );
  half_adder_75 adder1 ( .A(_0_net_), .B(_1_net_), .sum(out[1]), .cout(
        \add[1][0] ) );
  Adder2_3 adder2 ( .a(_3_net_), .b(_4_net_), .c(_5_net_), .add(\add[1][0] ), 
        .lsb(out[2]), .msb({\add[2][1] , \add[2][0] }) );
  Adder3_3 adder3 ( .a(_7_net_), .b(_8_net_), .c(_9_net_), .d(_10_net_), .add(
        {\add[2][1] , \add[2][0] }), .lsb(out[3]), .msb({\add[3][1] , 
        \add[3][0] }) );
  Adder4_3 adder4 ( .a(_11_net_), .b(_12_net_), .c(_13_net_), .add({
        \add[3][1] , \add[3][0] }), .lsb(out[4]), .msb({\add[4][1] , 
        \add[4][0] }) );
  Adder5_3 adder5 ( .a(_14_net_), .b(_15_net_), .add({\add[4][1] , \add[4][0] }), .lsb(out[5]), .msb({\add[5][1] , \add[5][0] }) );
  XNOR2X1_RVT U1 ( .A1(\add[5][0] ), .A2(n3), .Y(out[6]) );
endmodule


module half_adder_74 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_12 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_11 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_10 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_16 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module Adder2_2 ( a, b, c, add, lsb, msb );
  output [1:0] msb;
  input a, b, c, add;
  output lsb;

  wire   [1:0] temp;
  wire   [2:0] carry;

  half_adder_12 u0 ( .A(a), .B(b), .sum(temp[0]), .cout(carry[0]) );
  half_adder_11 u1 ( .A(c), .B(add), .sum(temp[1]), .cout(carry[1]) );
  half_adder_10 u2 ( .A(temp[0]), .B(temp[1]), .sum(lsb), .cout(carry[2]) );
  full_adder_16 u3 ( .A(carry[0]), .B(carry[1]), .cin(carry[2]), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module half_adder_9 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_15 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module half_adder_8 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_7 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_14 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder3_2 ( a, b, c, d, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c, d;
  output lsb;

  wire   [1:0] st0;
  wire   [3:0] st1;
  wire   [1:0] st2;

  OR2X1_RVT U1 ( .A1(st2[0]), .A2(st2[1]), .Y(msb[1]) );
  half_adder_9 u0 ( .A(c), .B(d), .sum(st0[0]), .cout(st1[0]) );
  full_adder_15 u1 ( .A(a), .B(b), .cin(add[0]), .sum(st0[1]), .cout(st1[1])
         );
  half_adder_8 u2 ( .A(st0[0]), .B(st0[1]), .sum(lsb), .cout(st1[2]) );
  half_adder_7 u3 ( .A(st1[0]), .B(add[1]), .sum(st1[3]), .cout(st2[0]) );
  full_adder_14 u4 ( .A(st1[3]), .B(st1[2]), .cin(st1[1]), .sum(msb[0]), 
        .cout(st2[1]) );
endmodule


module full_adder_13 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_12 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_11 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder4_2 ( a, b, c, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c;
  output lsb;
  wire   \carry[0] ;
  wire   [1:0] temp;

  full_adder_13 u0 ( .A(a), .B(b), .cin(c), .sum(temp[0]), .cout(temp[1]) );
  full_adder_12 u1 ( .A(temp[0]), .B(add[0]), .cin(1'b0), .sum(lsb), .cout(
        \carry[0] ) );
  full_adder_11 u2 ( .A(temp[1]), .B(add[1]), .cin(\carry[0] ), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module full_adder_10 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module full_adder_9 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder5_2 ( a, b, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b;
  output lsb;
  wire   \carry[0] ;

  full_adder_10 u0 ( .A(a), .B(b), .cin(add[0]), .sum(lsb), .cout(\carry[0] )
         );
  full_adder_9 u1 ( .A(add[1]), .B(\carry[0] ), .cin(1'b0), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module vedic_4bit_2 ( a, b, out );
  input [3:0] a;
  input [3:0] b;
  output [7:0] out;
  wire   _0_net_, _1_net_, \add[5][1] , \add[5][0] , \add[4][1] , \add[4][0] ,
         \add[3][1] , \add[3][0] , \add[2][1] , \add[2][0] , \add[1][0] ,
         _3_net_, _4_net_, _5_net_, _7_net_, _8_net_, _9_net_, _10_net_,
         _11_net_, _12_net_, _13_net_, _14_net_, _15_net_, n3, n4;

  OR2X1_RVT U2 ( .A1(n4), .A2(\add[5][1] ), .Y(out[7]) );
  AND3X1_RVT U3 ( .A1(\add[5][0] ), .A2(a[3]), .A3(b[3]), .Y(n4) );
  NAND2X0_RVT U4 ( .A1(b[3]), .A2(a[3]), .Y(n3) );
  AND2X1_RVT U5 ( .A1(b[0]), .A2(a[0]), .Y(out[0]) );
  AND2X1_RVT U6 ( .A1(b[1]), .A2(a[2]), .Y(_9_net_) );
  AND2X1_RVT U7 ( .A1(b[2]), .A2(a[1]), .Y(_8_net_) );
  AND2X1_RVT U8 ( .A1(a[0]), .A2(b[3]), .Y(_7_net_) );
  AND2X1_RVT U9 ( .A1(a[2]), .A2(b[0]), .Y(_5_net_) );
  AND2X1_RVT U10 ( .A1(a[1]), .A2(b[1]), .Y(_4_net_) );
  AND2X1_RVT U11 ( .A1(b[2]), .A2(a[0]), .Y(_3_net_) );
  AND2X1_RVT U12 ( .A1(a[1]), .A2(b[0]), .Y(_1_net_) );
  AND2X1_RVT U13 ( .A1(a[2]), .A2(b[3]), .Y(_15_net_) );
  AND2X1_RVT U14 ( .A1(b[2]), .A2(a[3]), .Y(_14_net_) );
  AND2X1_RVT U15 ( .A1(a[1]), .A2(b[3]), .Y(_13_net_) );
  AND2X1_RVT U16 ( .A1(b[2]), .A2(a[2]), .Y(_12_net_) );
  AND2X1_RVT U17 ( .A1(b[1]), .A2(a[3]), .Y(_11_net_) );
  AND2X1_RVT U18 ( .A1(b[0]), .A2(a[3]), .Y(_10_net_) );
  AND2X1_RVT U19 ( .A1(b[1]), .A2(a[0]), .Y(_0_net_) );
  half_adder_74 adder1 ( .A(_0_net_), .B(_1_net_), .sum(out[1]), .cout(
        \add[1][0] ) );
  Adder2_2 adder2 ( .a(_3_net_), .b(_4_net_), .c(_5_net_), .add(\add[1][0] ), 
        .lsb(out[2]), .msb({\add[2][1] , \add[2][0] }) );
  Adder3_2 adder3 ( .a(_7_net_), .b(_8_net_), .c(_9_net_), .d(_10_net_), .add(
        {\add[2][1] , \add[2][0] }), .lsb(out[3]), .msb({\add[3][1] , 
        \add[3][0] }) );
  Adder4_2 adder4 ( .a(_11_net_), .b(_12_net_), .c(_13_net_), .add({
        \add[3][1] , \add[3][0] }), .lsb(out[4]), .msb({\add[4][1] , 
        \add[4][0] }) );
  Adder5_2 adder5 ( .a(_14_net_), .b(_15_net_), .add({\add[4][1] , \add[4][0] }), .lsb(out[5]), .msb({\add[5][1] , \add[5][0] }) );
  XNOR2X1_RVT U1 ( .A1(\add[5][0] ), .A2(n3), .Y(out[6]) );
endmodule


module G_Cell_33 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_32 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_31 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_30 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw4_2 ( A, B, Cin, Sum, Cout );
  input [4:1] A;
  input [4:1] B;
  output [4:1] Sum;
  input Cin;
  output Cout;

  wire   [4:1] G;
  wire   [4:1] P;
  wire   [3:1] GG;

  AND2X1_RVT U9 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U10 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U11 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U12 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_33 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_32 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_31 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_30 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U2 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U3 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U4 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U5 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U6 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U7 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U8 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
endmodule


module G_Cell_29 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_28 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_27 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_26 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw4_1 ( A, B, Cin, Sum, Cout );
  input [4:1] A;
  input [4:1] B;
  output [4:1] Sum;
  input Cin;
  output Cout;

  wire   [4:1] G;
  wire   [4:1] P;
  wire   [3:1] GG;

  AND2X1_RVT U9 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U10 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U11 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U12 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_29 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_28 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_27 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_26 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U2 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U3 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U4 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U5 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U6 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U7 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U8 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
endmodule


module half_adder_73 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_6 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_5 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_4 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_8 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module Adder2_1 ( a, b, c, add, lsb, msb );
  output [1:0] msb;
  input a, b, c, add;
  output lsb;

  wire   [1:0] temp;
  wire   [2:0] carry;

  half_adder_6 u0 ( .A(a), .B(b), .sum(temp[0]), .cout(carry[0]) );
  half_adder_5 u1 ( .A(c), .B(add), .sum(temp[1]), .cout(carry[1]) );
  half_adder_4 u2 ( .A(temp[0]), .B(temp[1]), .sum(lsb), .cout(carry[2]) );
  full_adder_8 u3 ( .A(carry[0]), .B(carry[1]), .cin(carry[2]), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module half_adder_3 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_7 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(sum) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module half_adder_2 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module half_adder_1 ( A, B, sum, cout );
  input A, B;
  output sum, cout;


  AND2X1_RVT U2 ( .A1(A), .A2(B), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(sum) );
endmodule


module full_adder_6 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder3_1 ( a, b, c, d, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c, d;
  output lsb;

  wire   [1:0] st0;
  wire   [3:0] st1;
  wire   [1:0] st2;

  OR2X1_RVT U1 ( .A1(st2[0]), .A2(st2[1]), .Y(msb[1]) );
  half_adder_3 u0 ( .A(c), .B(d), .sum(st0[0]), .cout(st1[0]) );
  full_adder_7 u1 ( .A(a), .B(b), .cin(add[0]), .sum(st0[1]), .cout(st1[1]) );
  half_adder_2 u2 ( .A(st0[0]), .B(st0[1]), .sum(lsb), .cout(st1[2]) );
  half_adder_1 u3 ( .A(st1[0]), .B(add[1]), .sum(st1[3]), .cout(st2[0]) );
  full_adder_6 u4 ( .A(st1[3]), .B(st1[2]), .cin(st1[1]), .sum(msb[0]), .cout(
        st2[1]) );
endmodule


module full_adder_5 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_4 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_3 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder4_1 ( a, b, c, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b, c;
  output lsb;
  wire   \carry[0] ;
  wire   [1:0] temp;

  full_adder_5 u0 ( .A(a), .B(b), .cin(c), .sum(temp[0]), .cout(temp[1]) );
  full_adder_4 u1 ( .A(temp[0]), .B(add[0]), .cin(1'b0), .sum(lsb), .cout(
        \carry[0] ) );
  full_adder_3 u2 ( .A(temp[1]), .B(add[1]), .cin(\carry[0] ), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module full_adder_2 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module full_adder_1 ( A, B, cin, sum, cout );
  input A, B, cin;
  output sum, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n2), .Y(sum) );
endmodule


module Adder5_1 ( a, b, add, lsb, msb );
  input [1:0] add;
  output [1:0] msb;
  input a, b;
  output lsb;
  wire   \carry[0] ;

  full_adder_2 u0 ( .A(a), .B(b), .cin(add[0]), .sum(lsb), .cout(\carry[0] )
         );
  full_adder_1 u1 ( .A(add[1]), .B(\carry[0] ), .cin(1'b0), .sum(msb[0]), 
        .cout(msb[1]) );
endmodule


module vedic_4bit_1 ( a, b, out );
  input [3:0] a;
  input [3:0] b;
  output [7:0] out;
  wire   _0_net_, _1_net_, \add[5][1] , \add[5][0] , \add[4][1] , \add[4][0] ,
         \add[3][1] , \add[3][0] , \add[2][1] , \add[2][0] , \add[1][0] ,
         _3_net_, _4_net_, _5_net_, _7_net_, _8_net_, _9_net_, _10_net_,
         _11_net_, _12_net_, _13_net_, _14_net_, _15_net_, n3, n4;

  OR2X1_RVT U2 ( .A1(n4), .A2(\add[5][1] ), .Y(out[7]) );
  AND3X1_RVT U3 ( .A1(\add[5][0] ), .A2(a[3]), .A3(b[3]), .Y(n4) );
  NAND2X0_RVT U4 ( .A1(b[3]), .A2(a[3]), .Y(n3) );
  AND2X1_RVT U5 ( .A1(b[0]), .A2(a[0]), .Y(out[0]) );
  AND2X1_RVT U6 ( .A1(b[1]), .A2(a[2]), .Y(_9_net_) );
  AND2X1_RVT U7 ( .A1(b[2]), .A2(a[1]), .Y(_8_net_) );
  AND2X1_RVT U8 ( .A1(a[0]), .A2(b[3]), .Y(_7_net_) );
  AND2X1_RVT U9 ( .A1(a[2]), .A2(b[0]), .Y(_5_net_) );
  AND2X1_RVT U10 ( .A1(a[1]), .A2(b[1]), .Y(_4_net_) );
  AND2X1_RVT U11 ( .A1(b[2]), .A2(a[0]), .Y(_3_net_) );
  AND2X1_RVT U12 ( .A1(a[1]), .A2(b[0]), .Y(_1_net_) );
  AND2X1_RVT U13 ( .A1(a[2]), .A2(b[3]), .Y(_15_net_) );
  AND2X1_RVT U14 ( .A1(b[2]), .A2(a[3]), .Y(_14_net_) );
  AND2X1_RVT U15 ( .A1(a[1]), .A2(b[3]), .Y(_13_net_) );
  AND2X1_RVT U16 ( .A1(b[2]), .A2(a[2]), .Y(_12_net_) );
  AND2X1_RVT U17 ( .A1(b[1]), .A2(a[3]), .Y(_11_net_) );
  AND2X1_RVT U18 ( .A1(b[0]), .A2(a[3]), .Y(_10_net_) );
  AND2X1_RVT U19 ( .A1(b[1]), .A2(a[0]), .Y(_0_net_) );
  half_adder_73 adder1 ( .A(_0_net_), .B(_1_net_), .sum(out[1]), .cout(
        \add[1][0] ) );
  Adder2_1 adder2 ( .a(_3_net_), .b(_4_net_), .c(_5_net_), .add(\add[1][0] ), 
        .lsb(out[2]), .msb({\add[2][1] , \add[2][0] }) );
  Adder3_1 adder3 ( .a(_7_net_), .b(_8_net_), .c(_9_net_), .d(_10_net_), .add(
        {\add[2][1] , \add[2][0] }), .lsb(out[3]), .msb({\add[3][1] , 
        \add[3][0] }) );
  Adder4_1 adder4 ( .a(_11_net_), .b(_12_net_), .c(_13_net_), .add({
        \add[3][1] , \add[3][0] }), .lsb(out[4]), .msb({\add[4][1] , 
        \add[4][0] }) );
  Adder5_1 adder5 ( .a(_14_net_), .b(_15_net_), .add({\add[4][1] , \add[4][0] }), .lsb(out[5]), .msb({\add[5][1] , \add[5][0] }) );
  XNOR2X1_RVT U1 ( .A1(\add[5][0] ), .A2(n3), .Y(out[6]) );
endmodule


module G_Cell_25 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_24 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_23 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_22 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_21 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_20 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_19 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_18 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw8_2 ( A, B, Cin, Sum, Cout );
  input [8:1] A;
  input [8:1] B;
  output [8:1] Sum;
  input Cin;
  output Cout;

  wire   [8:1] G;
  wire   [8:1] P;
  wire   [7:1] GG;

  AND2X1_RVT U17 ( .A1(A[8]), .A2(B[8]), .Y(G[8]) );
  AND2X1_RVT U18 ( .A1(A[7]), .A2(B[7]), .Y(G[7]) );
  AND2X1_RVT U19 ( .A1(A[6]), .A2(B[6]), .Y(G[6]) );
  AND2X1_RVT U20 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U21 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U22 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U23 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U24 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_25 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_24 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_23 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_22 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_21 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        GG[5]) );
  G_Cell_20 \loop_1[5].genblk1.U1  ( .G0(GG[5]), .G1(G[6]), .P1(P[6]), .GG(
        GG[6]) );
  G_Cell_19 \loop_1[6].genblk1.U1  ( .G0(GG[6]), .G1(G[7]), .P1(P[7]), .GG(
        GG[7]) );
  G_Cell_18 \loop_1[7].genblk1.U1  ( .G0(GG[7]), .G1(G[8]), .P1(P[8]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U2 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U3 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U4 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U5 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U6 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U7 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U8 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U9 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U10 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U11 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U12 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U13 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U14 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U15 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U16 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
endmodule


module G_Cell_17 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_16 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_15 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_14 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_13 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_12 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_11 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_10 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw8_1 ( A, B, Cin, Sum, Cout );
  input [8:1] A;
  input [8:1] B;
  output [8:1] Sum;
  input Cin;
  output Cout;

  wire   [8:1] G;
  wire   [8:1] P;
  wire   [7:1] GG;

  AND2X1_RVT U17 ( .A1(A[8]), .A2(B[8]), .Y(G[8]) );
  AND2X1_RVT U18 ( .A1(A[7]), .A2(B[7]), .Y(G[7]) );
  AND2X1_RVT U19 ( .A1(A[6]), .A2(B[6]), .Y(G[6]) );
  AND2X1_RVT U20 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U21 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U22 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U23 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U24 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_17 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_16 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_15 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_14 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_13 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        GG[5]) );
  G_Cell_12 \loop_1[5].genblk1.U1  ( .G0(GG[5]), .G1(G[6]), .P1(P[6]), .GG(
        GG[6]) );
  G_Cell_11 \loop_1[6].genblk1.U1  ( .G0(GG[6]), .G1(G[7]), .P1(P[7]), .GG(
        GG[7]) );
  G_Cell_10 \loop_1[7].genblk1.U1  ( .G0(GG[7]), .G1(G[8]), .P1(P[8]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U2 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U3 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U4 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U5 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U6 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U7 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U8 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U9 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U10 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U11 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U12 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U13 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U14 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U15 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U16 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
endmodule


module G_Cell_9 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_8 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_7 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_6 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_5 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_4 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_3 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_2 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_1 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw9_1 ( A, B, Cin, Sum, Cout );
  input [9:1] A;
  input [9:1] B;
  output [9:1] Sum;
  input Cin;
  output Cout;

  wire   [9:1] G;
  wire   [9:1] P;
  wire   [8:1] GG;

  AND2X1_RVT U19 ( .A1(A[9]), .A2(B[9]), .Y(G[9]) );
  AND2X1_RVT U20 ( .A1(A[8]), .A2(B[8]), .Y(G[8]) );
  AND2X1_RVT U21 ( .A1(A[7]), .A2(B[7]), .Y(G[7]) );
  AND2X1_RVT U22 ( .A1(A[6]), .A2(B[6]), .Y(G[6]) );
  AND2X1_RVT U23 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U24 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U25 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U26 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U27 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_9 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_8 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_7 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_6 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_5 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        GG[5]) );
  G_Cell_4 \loop_1[5].genblk1.U1  ( .G0(GG[5]), .G1(G[6]), .P1(P[6]), .GG(
        GG[6]) );
  G_Cell_3 \loop_1[6].genblk1.U1  ( .G0(GG[6]), .G1(G[7]), .P1(P[7]), .GG(
        GG[7]) );
  G_Cell_2 \loop_1[7].genblk1.U1  ( .G0(GG[7]), .G1(G[8]), .P1(P[8]), .GG(
        GG[8]) );
  G_Cell_1 \loop_1[8].genblk1.U1  ( .G0(GG[8]), .G1(G[9]), .P1(P[9]), .GG(Cout) );
  XOR2X1_RVT U1 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U2 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U3 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U4 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U5 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U6 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U7 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U8 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U9 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U10 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U11 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U12 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U13 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U14 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U15 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U16 ( .A1(GG[8]), .A2(P[9]), .Y(Sum[9]) );
  XOR2X1_RVT U17 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U18 ( .A1(A[9]), .A2(B[9]), .Y(P[9]) );
endmodule


module karastuba_6bit_1 ( a, b, out );
  input [5:0] a;
  input [5:0] b;
  output [11:0] out;
  wire   \tsum[1][3] , \tsum[1][2] , \tsum[1][1] , \tsum[1][0] , \tsum[0][3] ,
         \tsum[0][2] , \tsum[0][1] , \tsum[0][0] , n1, n2, n3, n4, n5, n6, n7,
         n8;
  wire   [7:0] xy;
  wire   [7:3] r;
  wire   [7:0] mid;
  wire   [7:0] temp;
  wire   [7:0] mid3;

  vedic_4bit_3 u0 ( .a({1'b0, a[5:3]}), .b({1'b0, b[5:3]}), .out(xy) );
  vedic_4bit_2 u1 ( .a({1'b0, a[2:0]}), .b({1'b0, b[2:0]}), .out({r, out[2:0]}) );
  RCA_bw4_2 rca1 ( .A({1'b0, a[5:3]}), .B({1'b0, a[2:0]}), .Cin(1'b0), .Sum({
        \tsum[0][3] , \tsum[0][2] , \tsum[0][1] , \tsum[0][0] }) );
  RCA_bw4_1 rca2 ( .A({1'b0, b[5:3]}), .B({1'b0, b[2:0]}), .Cin(1'b0), .Sum({
        \tsum[1][3] , \tsum[1][2] , \tsum[1][1] , \tsum[1][0] }) );
  vedic_4bit_1 u2 ( .a({\tsum[0][3] , \tsum[0][2] , \tsum[0][1] , \tsum[0][0] }), .b({\tsum[1][3] , \tsum[1][2] , \tsum[1][1] , \tsum[1][0] }), .out(mid) );
  RCA_bw8_2 add_mid ( .A(xy), .B({r, out[2:0]}), .Cin(1'b0), .Sum(temp) );
  RCA_bw8_1 sub_mid ( .A({n1, n2, n3, n4, n5, n6, n7, n8}), .B(mid), .Cin(1'b1), .Sum(mid3) );
  RCA_bw9_1 add1 ( .A({xy[5:0], r[5:3]}), .B({1'b0, mid3}), .Cin(1'b0), .Sum(
        out[11:3]) );
  INVX1_RVT U3 ( .A(temp[7]), .Y(n1) );
  INVX1_RVT U4 ( .A(temp[6]), .Y(n2) );
  INVX1_RVT U5 ( .A(temp[5]), .Y(n3) );
  INVX1_RVT U6 ( .A(temp[4]), .Y(n4) );
  INVX1_RVT U7 ( .A(temp[3]), .Y(n5) );
  INVX1_RVT U8 ( .A(temp[2]), .Y(n6) );
  INVX1_RVT U9 ( .A(temp[1]), .Y(n7) );
  INVX1_RVT U10 ( .A(temp[0]), .Y(n8) );
endmodule


module G_Cell_159 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_158 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_157 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_156 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_155 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_154 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_153 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_152 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_151 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_150 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_149 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw11 ( A, B, Cin, Sum, Cout );
  input [11:1] A;
  input [11:1] B;
  output [11:1] Sum;
  input Cin;
  output Cout;

  wire   [11:1] G;
  wire   [11:1] P;
  wire   [10:1] GG;

  AND2X1_RVT U23 ( .A1(A[9]), .A2(B[9]), .Y(G[9]) );
  AND2X1_RVT U24 ( .A1(A[8]), .A2(B[8]), .Y(G[8]) );
  AND2X1_RVT U25 ( .A1(A[7]), .A2(B[7]), .Y(G[7]) );
  AND2X1_RVT U26 ( .A1(A[6]), .A2(B[6]), .Y(G[6]) );
  AND2X1_RVT U27 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U28 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U29 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U30 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U31 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  AND2X1_RVT U32 ( .A1(A[11]), .A2(B[11]), .Y(G[11]) );
  AND2X1_RVT U33 ( .A1(A[10]), .A2(B[10]), .Y(G[10]) );
  G_Cell_159 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_158 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_157 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_156 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_155 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        GG[5]) );
  G_Cell_154 \loop_1[5].genblk1.U1  ( .G0(GG[5]), .G1(G[6]), .P1(P[6]), .GG(
        GG[6]) );
  G_Cell_153 \loop_1[6].genblk1.U1  ( .G0(GG[6]), .G1(G[7]), .P1(P[7]), .GG(
        GG[7]) );
  G_Cell_152 \loop_1[7].genblk1.U1  ( .G0(GG[7]), .G1(G[8]), .P1(P[8]), .GG(
        GG[8]) );
  G_Cell_151 \loop_1[8].genblk1.U1  ( .G0(GG[8]), .G1(G[9]), .P1(P[9]), .GG(
        GG[9]) );
  G_Cell_150 \loop_1[9].genblk1.U1  ( .G0(GG[9]), .G1(G[10]), .P1(P[10]), .GG(
        GG[10]) );
  G_Cell_149 \loop_1[10].genblk1.U1  ( .G0(GG[10]), .G1(G[11]), .P1(P[11]), 
        .GG(Cout) );
  XOR2X1_RVT U1 ( .A1(A[10]), .A2(B[10]), .Y(P[10]) );
  XOR2X1_RVT U2 ( .A1(GG[9]), .A2(P[10]), .Y(Sum[10]) );
  XOR2X1_RVT U3 ( .A1(A[9]), .A2(B[9]), .Y(P[9]) );
  XOR2X1_RVT U4 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U5 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U6 ( .A1(GG[8]), .A2(P[9]), .Y(Sum[9]) );
  XOR2X1_RVT U7 ( .A1(GG[10]), .A2(P[11]), .Y(Sum[11]) );
  XOR2X1_RVT U8 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U9 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U10 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U11 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U12 ( .A1(A[11]), .A2(B[11]), .Y(P[11]) );
  XOR2X1_RVT U13 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U14 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U15 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U16 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U17 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U18 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U19 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U20 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U21 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U22 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
endmodule


module G_Cell_148 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_147 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_146 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_145 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_144 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_143 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_142 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_141 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_140 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_139 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_138 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_137 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_136 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_135 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_134 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_133 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw16 ( A, B, Cin, Sum, Cout );
  input [16:1] A;
  input [16:1] B;
  output [16:1] Sum;
  input Cin;
  output Cout;

  wire   [16:1] G;
  wire   [16:1] P;
  wire   [15:1] GG;

  AND2X1_RVT U33 ( .A1(A[9]), .A2(B[9]), .Y(G[9]) );
  AND2X1_RVT U34 ( .A1(A[8]), .A2(B[8]), .Y(G[8]) );
  AND2X1_RVT U35 ( .A1(A[7]), .A2(B[7]), .Y(G[7]) );
  AND2X1_RVT U36 ( .A1(A[6]), .A2(B[6]), .Y(G[6]) );
  AND2X1_RVT U37 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U38 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U39 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U40 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U41 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  AND2X1_RVT U42 ( .A1(A[16]), .A2(B[16]), .Y(G[16]) );
  AND2X1_RVT U43 ( .A1(A[15]), .A2(B[15]), .Y(G[15]) );
  AND2X1_RVT U44 ( .A1(A[14]), .A2(B[14]), .Y(G[14]) );
  AND2X1_RVT U45 ( .A1(A[13]), .A2(B[13]), .Y(G[13]) );
  AND2X1_RVT U46 ( .A1(A[12]), .A2(B[12]), .Y(G[12]) );
  AND2X1_RVT U47 ( .A1(A[11]), .A2(B[11]), .Y(G[11]) );
  AND2X1_RVT U48 ( .A1(A[10]), .A2(B[10]), .Y(G[10]) );
  G_Cell_148 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_147 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_146 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_145 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_144 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        GG[5]) );
  G_Cell_143 \loop_1[5].genblk1.U1  ( .G0(GG[5]), .G1(G[6]), .P1(P[6]), .GG(
        GG[6]) );
  G_Cell_142 \loop_1[6].genblk1.U1  ( .G0(GG[6]), .G1(G[7]), .P1(P[7]), .GG(
        GG[7]) );
  G_Cell_141 \loop_1[7].genblk1.U1  ( .G0(GG[7]), .G1(G[8]), .P1(P[8]), .GG(
        GG[8]) );
  G_Cell_140 \loop_1[8].genblk1.U1  ( .G0(GG[8]), .G1(G[9]), .P1(P[9]), .GG(
        GG[9]) );
  G_Cell_139 \loop_1[9].genblk1.U1  ( .G0(GG[9]), .G1(G[10]), .P1(P[10]), .GG(
        GG[10]) );
  G_Cell_138 \loop_1[10].genblk1.U1  ( .G0(GG[10]), .G1(G[11]), .P1(P[11]), 
        .GG(GG[11]) );
  G_Cell_137 \loop_1[11].genblk1.U1  ( .G0(GG[11]), .G1(G[12]), .P1(P[12]), 
        .GG(GG[12]) );
  G_Cell_136 \loop_1[12].genblk1.U1  ( .G0(GG[12]), .G1(G[13]), .P1(P[13]), 
        .GG(GG[13]) );
  G_Cell_135 \loop_1[13].genblk1.U1  ( .G0(GG[13]), .G1(G[14]), .P1(P[14]), 
        .GG(GG[14]) );
  G_Cell_134 \loop_1[14].genblk1.U1  ( .G0(GG[14]), .G1(G[15]), .P1(P[15]), 
        .GG(GG[15]) );
  G_Cell_133 \loop_1[15].genblk1.U1  ( .G0(GG[15]), .G1(G[16]), .P1(P[16]), 
        .GG(Cout) );
  XOR2X1_RVT U1 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U2 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U3 ( .A1(A[9]), .A2(B[9]), .Y(P[9]) );
  XOR2X1_RVT U4 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U5 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U6 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U7 ( .A1(A[12]), .A2(B[12]), .Y(P[12]) );
  XOR2X1_RVT U8 ( .A1(GG[8]), .A2(P[9]), .Y(Sum[9]) );
  XOR2X1_RVT U9 ( .A1(GG[11]), .A2(P[12]), .Y(Sum[12]) );
  XOR2X1_RVT U10 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U11 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U12 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U13 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U14 ( .A1(A[11]), .A2(B[11]), .Y(P[11]) );
  XOR2X1_RVT U15 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U16 ( .A1(GG[9]), .A2(P[10]), .Y(Sum[10]) );
  XOR2X1_RVT U17 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U18 ( .A1(GG[10]), .A2(P[11]), .Y(Sum[11]) );
  XOR2X1_RVT U19 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U20 ( .A1(GG[15]), .A2(P[16]), .Y(Sum[16]) );
  XOR2X1_RVT U21 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U22 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U23 ( .A1(A[10]), .A2(B[10]), .Y(P[10]) );
  XOR2X1_RVT U24 ( .A1(GG[14]), .A2(P[15]), .Y(Sum[15]) );
  XOR2X1_RVT U25 ( .A1(GG[13]), .A2(P[14]), .Y(Sum[14]) );
  XOR2X1_RVT U26 ( .A1(GG[12]), .A2(P[13]), .Y(Sum[13]) );
  XOR2X1_RVT U27 ( .A1(A[14]), .A2(B[14]), .Y(P[14]) );
  XOR2X1_RVT U28 ( .A1(A[13]), .A2(B[13]), .Y(P[13]) );
  XOR2X1_RVT U29 ( .A1(A[15]), .A2(B[15]), .Y(P[15]) );
  XOR2X1_RVT U30 ( .A1(A[16]), .A2(B[16]), .Y(P[16]) );
  XOR2X1_RVT U31 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U32 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
endmodule


module karastuba_11bit ( a, b, out );
  input [10:0] a;
  input [10:0] b;
  output [21:0] out;

  wire   [11:0] xy;
  wire   [11:6] r;
  wire   [11:0] x1;
  wire   [11:0] x2;
  wire   [11:0] tsum;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  karastuba_6bit_0 km0 ( .a({1'b0, a[10:6]}), .b({1'b0, b[10:6]}), .out({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, xy[9:0]}) );
  karastuba_6bit_3 km1 ( .a(a[5:0]), .b(b[5:0]), .out({r, out[5:0]}) );
  karastuba_6bit_2 km2 ( .a({1'b0, a[10:6]}), .b(b[5:0]), .out({
        SYNOPSYS_UNCONNECTED__2, x1[10:0]}) );
  karastuba_6bit_1 km3 ( .a(a[5:0]), .b({1'b0, b[10:6]}), .out({
        SYNOPSYS_UNCONNECTED__3, x2[10:0]}) );
  RCA_bw11 rca1 ( .A(x1[10:0]), .B(x2[10:0]), .Cin(1'b0), .Sum(tsum[10:0]), 
        .Cout(tsum[11]) );
  RCA_bw16 add1 ( .A({xy[9:0], r}), .B({1'b0, 1'b0, 1'b0, 1'b0, tsum}), .Cin(
        1'b0), .Sum(out[21:6]) );
endmodule


module G_cell_0 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;
  wire   P;
  assign PPP = P;

  AO21X1_RVT U1 ( .A1(P), .A2(GG), .A3(G), .Y(GGG) );
endmodule


module B_cell_0 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_24 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_23 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_22 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_21 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_20 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_19 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_18 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_17 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_16 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_15 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module buffer_0 ( G, P, GGG, PPP );
  input G, P;
  output GGG, PPP;
  wire   G, P;
  assign GGG = G;
  assign PPP = P;

endmodule


module G_cell_11 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;
  wire   P;
  assign PPP = P;

  AO21X1_RVT U1 ( .A1(P), .A2(GG), .A3(G), .Y(GGG) );
endmodule


module G_cell_10 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;
  wire   P;
  assign PPP = P;

  AO21X1_RVT U1 ( .A1(P), .A2(GG), .A3(G), .Y(GGG) );
endmodule


module B_cell_14 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_13 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_12 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_11 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_10 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_9 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_8 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_7 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_6 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module buffer_6 ( G, P, GGG, PPP );
  input G, P;
  output GGG, PPP;
  wire   G, P;
  assign GGG = G;
  assign PPP = P;

endmodule


module buffer_5 ( G, P, GGG, PPP );
  input G, P;
  output GGG, PPP;
  wire   G, P;
  assign GGG = G;
  assign PPP = P;

endmodule


module G_cell_9 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;
  wire   P;
  assign PPP = P;

  AO21X1_RVT U1 ( .A1(P), .A2(GG), .A3(G), .Y(GGG) );
endmodule


module G_cell_8 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;
  wire   P;
  assign PPP = P;

  AO21X1_RVT U1 ( .A1(P), .A2(GG), .A3(G), .Y(GGG) );
endmodule


module G_cell_7 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;
  wire   P;
  assign PPP = P;

  AO21X1_RVT U1 ( .A1(P), .A2(GG), .A3(G), .Y(GGG) );
endmodule


module G_cell_6 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;
  wire   P;
  assign PPP = P;

  AO21X1_RVT U1 ( .A1(P), .A2(GG), .A3(G), .Y(GGG) );
endmodule


module B_cell_5 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_4 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_3 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_2 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module B_cell_1 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;


  AND2X1_RVT U1 ( .A1(PP), .A2(P), .Y(PPP) );
  AO21X1_RVT U2 ( .A1(GG), .A2(P), .A3(G), .Y(GGG) );
endmodule


module buffer_4 ( G, P, GGG, PPP );
  input G, P;
  output GGG, PPP;
  wire   G, P;
  assign GGG = G;
  assign PPP = P;

endmodule


module buffer_3 ( G, P, GGG, PPP );
  input G, P;
  output GGG, PPP;
  wire   G, P;
  assign GGG = G;
  assign PPP = P;

endmodule


module buffer_2 ( G, P, GGG, PPP );
  input G, P;
  output GGG, PPP;
  wire   G, P;
  assign GGG = G;
  assign PPP = P;

endmodule


module buffer_1 ( G, P, GGG, PPP );
  input G, P;
  output GGG, PPP;
  wire   G, P;
  assign GGG = G;
  assign PPP = P;

endmodule


module G_cell_5 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;
  wire   P;
  assign PPP = P;

  AO21X1_RVT U1 ( .A1(P), .A2(GG), .A3(G), .Y(GGG) );
endmodule


module G_cell_4 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;
  wire   P;
  assign PPP = P;

  AO21X1_RVT U1 ( .A1(P), .A2(GG), .A3(G), .Y(GGG) );
endmodule


module G_cell_3 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;
  wire   P;
  assign PPP = P;

  AO21X1_RVT U1 ( .A1(P), .A2(GG), .A3(G), .Y(GGG) );
endmodule


module G_cell_2 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;
  wire   P;
  assign PPP = P;

  AO21X1_RVT U1 ( .A1(P), .A2(GG), .A3(G), .Y(GGG) );
endmodule


module G_cell_1 ( G, P, GG, PP, GGG, PPP );
  input G, P, GG, PP;
  output GGG, PPP;
  wire   P;
  assign PPP = P;

  AO21X1_RVT U1 ( .A1(P), .A2(GG), .A3(G), .Y(GGG) );
endmodule


module kogge_stone_Nbit_NOCLK_bw12 ( A, B, Cin, Sum, Cout );
  input [12:1] A;
  input [12:1] B;
  output [12:1] Sum;
  input Cin;
  output Cout;
  wire   GG_63, GG_62, GG_61, GG_60, GG_59, GG_38, GG_37, GG_36, GG_35, GG_34,
         GG_33, GG_32, GG_31, GG_30, GG_29, GG_28, GG_27, GG_25, GG_24, GG_23,
         GG_22, GG_21, GG_20, GG_19, GG_18, GG_17, GG_16, GG_15, GG_14, GG_12,
         GG_11, GG_10, GG_9, GG_8, GG_7, GG_6, GG_5, GG_4, GG_3, GG_2, GG_1,
         PP_38, PP_37, PP_36, PP_35, PP_34, PP_33, PP_32, PP_31, PP_30, PP_29,
         PP_28, PP_27, PP_25, PP_24, PP_23, PP_22, PP_21, PP_20, PP_19, PP_18,
         PP_17, PP_16, PP_15, PP_14, PP_12, PP_11, PP_10, PP_9, PP_8, PP_7,
         PP_6, PP_5, PP_4, PP_3, PP_2, PP_1;
  wire   [51:40] GG;
  wire   [51:40] PP;

  AND2X1_RVT U26 ( .A1(A[9]), .A2(B[9]), .Y(GG_9) );
  AND2X1_RVT U27 ( .A1(A[8]), .A2(B[8]), .Y(GG_8) );
  AND2X1_RVT U28 ( .A1(A[7]), .A2(B[7]), .Y(GG_7) );
  AND2X1_RVT U29 ( .A1(A[6]), .A2(B[6]), .Y(GG_6) );
  AND2X1_RVT U30 ( .A1(A[5]), .A2(B[5]), .Y(GG_5) );
  AND2X1_RVT U31 ( .A1(A[4]), .A2(B[4]), .Y(GG_4) );
  AND2X1_RVT U32 ( .A1(A[3]), .A2(B[3]), .Y(GG_3) );
  AND2X1_RVT U33 ( .A1(A[2]), .A2(B[2]), .Y(GG_2) );
  AND2X1_RVT U34 ( .A1(A[12]), .A2(B[12]), .Y(GG_12) );
  AND2X1_RVT U35 ( .A1(A[11]), .A2(B[11]), .Y(GG_11) );
  AND2X1_RVT U36 ( .A1(A[10]), .A2(B[10]), .Y(GG_10) );
  AND2X1_RVT U37 ( .A1(A[1]), .A2(B[1]), .Y(GG_1) );
  G_cell_0 \loop_1[1].loop_3[1].genblk1.U1  ( .G(GG_1), .P(PP_1), .GG(Cin), 
        .PP(1'b0), .GGG(GG_14), .PPP(PP_14) );
  B_cell_0 \loop_1[1].loop_3[2].genblk1.U2  ( .G(GG_2), .P(PP_2), .GG(GG_1), 
        .PP(PP_1), .GGG(GG_15), .PPP(PP_15) );
  B_cell_24 \loop_1[1].loop_3[3].genblk1.U2  ( .G(GG_3), .P(PP_3), .GG(GG_2), 
        .PP(PP_2), .GGG(GG_16), .PPP(PP_16) );
  B_cell_23 \loop_1[1].loop_3[4].genblk1.U2  ( .G(GG_4), .P(PP_4), .GG(GG_3), 
        .PP(PP_3), .GGG(GG_17), .PPP(PP_17) );
  B_cell_22 \loop_1[1].loop_3[5].genblk1.U2  ( .G(GG_5), .P(PP_5), .GG(GG_4), 
        .PP(PP_4), .GGG(GG_18), .PPP(PP_18) );
  B_cell_21 \loop_1[1].loop_3[6].genblk1.U2  ( .G(GG_6), .P(PP_6), .GG(GG_5), 
        .PP(PP_5), .GGG(GG_19), .PPP(PP_19) );
  B_cell_20 \loop_1[1].loop_3[7].genblk1.U2  ( .G(GG_7), .P(PP_7), .GG(GG_6), 
        .PP(PP_6), .GGG(GG_20), .PPP(PP_20) );
  B_cell_19 \loop_1[1].loop_3[8].genblk1.U2  ( .G(GG_8), .P(PP_8), .GG(GG_7), 
        .PP(PP_7), .GGG(GG_21), .PPP(PP_21) );
  B_cell_18 \loop_1[1].loop_3[9].genblk1.U2  ( .G(GG_9), .P(PP_9), .GG(GG_8), 
        .PP(PP_8), .GGG(GG_22), .PPP(PP_22) );
  B_cell_17 \loop_1[1].loop_3[10].genblk1.U2  ( .G(GG_10), .P(PP_10), .GG(GG_9), .PP(PP_9), .GGG(GG_23), .PPP(PP_23) );
  B_cell_16 \loop_1[1].loop_3[11].genblk1.U2  ( .G(GG_11), .P(PP_11), .GG(
        GG_10), .PP(PP_10), .GGG(GG_24), .PPP(PP_24) );
  B_cell_15 \loop_1[1].loop_3[12].genblk1.U2  ( .G(GG_12), .P(PP_12), .GG(
        GG_11), .PP(PP_11), .GGG(GG_25), .PPP(PP_25) );
  buffer_0 \loop_1[2].genblk1.loop_2[1].genblk1.U0  ( .G(GG_14), .P(PP_14), 
        .GGG(GG_27), .PPP(PP_27) );
  G_cell_11 \loop_1[2].loop_3[2].genblk1.U1  ( .G(GG_15), .P(PP_15), .GG(Cin), 
        .PP(1'b0), .GGG(GG_28), .PPP(PP_28) );
  G_cell_10 \loop_1[2].loop_3[3].genblk1.U1  ( .G(GG_16), .P(PP_16), .GG(GG_14), .PP(PP_14), .GGG(GG_29), .PPP(PP_29) );
  B_cell_14 \loop_1[2].loop_3[4].genblk1.U2  ( .G(GG_17), .P(PP_17), .GG(GG_15), .PP(PP_15), .GGG(GG_30), .PPP(PP_30) );
  B_cell_13 \loop_1[2].loop_3[5].genblk1.U2  ( .G(GG_18), .P(PP_18), .GG(GG_16), .PP(PP_16), .GGG(GG_31), .PPP(PP_31) );
  B_cell_12 \loop_1[2].loop_3[6].genblk1.U2  ( .G(GG_19), .P(PP_19), .GG(GG_17), .PP(PP_17), .GGG(GG_32), .PPP(PP_32) );
  B_cell_11 \loop_1[2].loop_3[7].genblk1.U2  ( .G(GG_20), .P(PP_20), .GG(GG_18), .PP(PP_18), .GGG(GG_33), .PPP(PP_33) );
  B_cell_10 \loop_1[2].loop_3[8].genblk1.U2  ( .G(GG_21), .P(PP_21), .GG(GG_19), .PP(PP_19), .GGG(GG_34), .PPP(PP_34) );
  B_cell_9 \loop_1[2].loop_3[9].genblk1.U2  ( .G(GG_22), .P(PP_22), .GG(GG_20), 
        .PP(PP_20), .GGG(GG_35), .PPP(PP_35) );
  B_cell_8 \loop_1[2].loop_3[10].genblk1.U2  ( .G(GG_23), .P(PP_23), .GG(GG_21), .PP(PP_21), .GGG(GG_36), .PPP(PP_36) );
  B_cell_7 \loop_1[2].loop_3[11].genblk1.U2  ( .G(GG_24), .P(PP_24), .GG(GG_22), .PP(PP_22), .GGG(GG_37), .PPP(PP_37) );
  B_cell_6 \loop_1[2].loop_3[12].genblk1.U2  ( .G(GG_25), .P(PP_25), .GG(GG_23), .PP(PP_23), .GGG(GG_38), .PPP(PP_38) );
  buffer_6 \loop_1[3].genblk1.loop_2[2].genblk1.U0  ( .G(GG_28), .P(PP_28), 
        .GGG(GG[41]), .PPP(PP[41]) );
  buffer_5 \loop_1[3].genblk1.loop_2[3].genblk1.U0  ( .G(GG_29), .P(PP_29), 
        .GGG(GG[42]), .PPP(PP[42]) );
  G_cell_9 \loop_1[3].loop_3[4].genblk1.U1  ( .G(GG_30), .P(PP_30), .GG(Cin), 
        .PP(1'b0), .GGG(GG[43]), .PPP(PP[43]) );
  G_cell_8 \loop_1[3].loop_3[5].genblk1.U1  ( .G(GG_31), .P(PP_31), .GG(GG_27), 
        .PP(PP_27), .GGG(GG[44]), .PPP(PP[44]) );
  G_cell_7 \loop_1[3].loop_3[6].genblk1.U1  ( .G(GG_32), .P(PP_32), .GG(GG_28), 
        .PP(PP_28), .GGG(GG[45]), .PPP(PP[45]) );
  G_cell_6 \loop_1[3].loop_3[7].genblk1.U1  ( .G(GG_33), .P(PP_33), .GG(GG_29), 
        .PP(PP_29), .GGG(GG[46]), .PPP(PP[46]) );
  B_cell_5 \loop_1[3].loop_3[8].genblk1.U2  ( .G(GG_34), .P(PP_34), .GG(GG_30), 
        .PP(PP_30), .GGG(GG[47]), .PPP(PP[47]) );
  B_cell_4 \loop_1[3].loop_3[9].genblk1.U2  ( .G(GG_35), .P(PP_35), .GG(GG_31), 
        .PP(PP_31), .GGG(GG[48]), .PPP(PP[48]) );
  B_cell_3 \loop_1[3].loop_3[10].genblk1.U2  ( .G(GG_36), .P(PP_36), .GG(GG_32), .PP(PP_32), .GGG(GG[49]), .PPP(PP[49]) );
  B_cell_2 \loop_1[3].loop_3[11].genblk1.U2  ( .G(GG_37), .P(PP_37), .GG(GG_33), .PP(PP_33), .GGG(GG[50]), .PPP(PP[50]) );
  B_cell_1 \loop_1[3].loop_3[12].genblk1.U2  ( .G(GG_38), .P(PP_38), .GG(GG_34), .PP(PP_34), .GGG(GG[51]), .PPP(PP[51]) );
  buffer_4 \loop_1[4].genblk1.loop_2[4].genblk1.U0  ( .G(GG[43]), .P(PP[43])
         );
  buffer_3 \loop_1[4].genblk1.loop_2[5].genblk1.U0  ( .G(GG[44]), .P(PP[44])
         );
  buffer_2 \loop_1[4].genblk1.loop_2[6].genblk1.U0  ( .G(GG[45]), .P(PP[45])
         );
  buffer_1 \loop_1[4].genblk1.loop_2[7].genblk1.U0  ( .G(GG[46]), .P(PP[46]), 
        .GGG(GG_59) );
  G_cell_5 \loop_1[4].loop_3[8].genblk1.U1  ( .G(GG[47]), .P(PP[47]), .GG(Cin), 
        .PP(1'b0), .GGG(GG_60) );
  G_cell_4 \loop_1[4].loop_3[9].genblk1.U1  ( .G(GG[48]), .P(PP[48]), .GG(1'b0), .PP(1'b0), .GGG(GG_61) );
  G_cell_3 \loop_1[4].loop_3[10].genblk1.U1  ( .G(GG[49]), .P(PP[49]), .GG(
        GG[41]), .PP(PP[41]), .GGG(GG_62) );
  G_cell_2 \loop_1[4].loop_3[11].genblk1.U1  ( .G(GG[50]), .P(PP[50]), .GG(
        GG[42]), .PP(PP[42]), .GGG(GG_63) );
  G_cell_1 \loop_1[4].loop_3[12].genblk1.U1  ( .G(GG[51]), .P(PP[51]), .GG(
        GG[43]), .PP(PP[43]), .GGG(Cout) );
  XOR2X1_RVT U2 ( .A1(GG_63), .A2(PP_12), .Y(Sum[12]) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(PP_1), .Y(Sum[1]) );
  XOR2X1_RVT U4 ( .A1(GG_27), .A2(PP_2), .Y(Sum[2]) );
  XOR2X1_RVT U5 ( .A1(GG[42]), .A2(PP_4), .Y(Sum[4]) );
  XOR2X1_RVT U6 ( .A1(GG_28), .A2(PP_3), .Y(Sum[3]) );
  XOR2X1_RVT U7 ( .A1(GG[43]), .A2(PP_5), .Y(Sum[5]) );
  XOR2X1_RVT U8 ( .A1(GG[44]), .A2(PP_6), .Y(Sum[6]) );
  XOR2X1_RVT U9 ( .A1(GG_59), .A2(PP_8), .Y(Sum[8]) );
  XOR2X1_RVT U10 ( .A1(GG[45]), .A2(PP_7), .Y(Sum[7]) );
  XOR2X1_RVT U11 ( .A1(GG_60), .A2(PP_9), .Y(Sum[9]) );
  XOR2X1_RVT U12 ( .A1(GG_62), .A2(PP_11), .Y(Sum[11]) );
  XOR2X1_RVT U13 ( .A1(A[2]), .A2(B[2]), .Y(PP_2) );
  XOR2X1_RVT U14 ( .A1(A[4]), .A2(B[4]), .Y(PP_4) );
  XOR2X1_RVT U15 ( .A1(A[6]), .A2(B[6]), .Y(PP_6) );
  XOR2X1_RVT U16 ( .A1(A[5]), .A2(B[5]), .Y(PP_5) );
  XOR2X1_RVT U17 ( .A1(A[11]), .A2(B[11]), .Y(PP_11) );
  XOR2X1_RVT U18 ( .A1(A[10]), .A2(B[10]), .Y(PP_10) );
  XOR2X1_RVT U19 ( .A1(A[9]), .A2(B[9]), .Y(PP_9) );
  XOR2X1_RVT U20 ( .A1(A[8]), .A2(B[8]), .Y(PP_8) );
  XOR2X1_RVT U21 ( .A1(A[7]), .A2(B[7]), .Y(PP_7) );
  XOR2X1_RVT U22 ( .A1(A[3]), .A2(B[3]), .Y(PP_3) );
  XOR2X1_RVT U23 ( .A1(A[12]), .A2(B[12]), .Y(PP_12) );
  XOR2X1_RVT U24 ( .A1(A[1]), .A2(B[1]), .Y(PP_1) );
  XOR2X1_RVT U25 ( .A1(GG_61), .A2(PP_10), .Y(Sum[10]) );
endmodule


module menMult ( a, b, out, cout );
  input [9:0] a;
  input [9:0] b;
  output [9:0] out;
  output cout;
  wire   rndup, n3, n4, n5, n6, n7, n1, n2;
  wire   [23:2] multi;
  wire   [10:0] rnd_p;

  NOR4X1_RVT U3 ( .A1(n6), .A2(multi[4]), .A3(multi[6]), .A4(multi[5]), .Y(n4)
         );
  NOR4X1_RVT U4 ( .A1(n7), .A2(multi[10]), .A3(multi[3]), .A4(multi[2]), .Y(n3) );
  AOI21X1_RVT U7 ( .A1(n3), .A2(n4), .A3(n5), .Y(rndup) );
  AOI22X1_RVT U8 ( .A1(n2), .A2(multi[11]), .A3(multi[12]), .A4(multi[23]), 
        .Y(n5) );
  OR3X1_RVT U9 ( .A1(multi[9]), .A2(multi[8]), .A3(multi[7]), .Y(n6) );
  AO222X1_RVT U10 ( .A1(multi[23]), .A2(multi[13]), .A3(multi[12]), .A4(n2), 
        .A5(multi[11]), .A6(multi[23]), .Y(n7) );
  AO22X1_RVT U11 ( .A1(rnd_p[10]), .A2(cout), .A3(rnd_p[9]), .A4(n1), .Y(
        out[9]) );
  AO22X1_RVT U12 ( .A1(cout), .A2(rnd_p[9]), .A3(rnd_p[8]), .A4(n1), .Y(out[8]) );
  AO22X1_RVT U13 ( .A1(rnd_p[8]), .A2(cout), .A3(rnd_p[7]), .A4(n1), .Y(out[7]) );
  AO22X1_RVT U14 ( .A1(rnd_p[7]), .A2(cout), .A3(rnd_p[6]), .A4(n1), .Y(out[6]) );
  AO22X1_RVT U15 ( .A1(rnd_p[6]), .A2(cout), .A3(rnd_p[5]), .A4(n1), .Y(out[5]) );
  AO22X1_RVT U16 ( .A1(rnd_p[5]), .A2(cout), .A3(rnd_p[4]), .A4(n1), .Y(out[4]) );
  AO22X1_RVT U17 ( .A1(rnd_p[4]), .A2(cout), .A3(rnd_p[3]), .A4(n1), .Y(out[3]) );
  AO22X1_RVT U18 ( .A1(rnd_p[3]), .A2(cout), .A3(rnd_p[2]), .A4(n1), .Y(out[2]) );
  AO22X1_RVT U19 ( .A1(rnd_p[2]), .A2(cout), .A3(rnd_p[1]), .A4(n1), .Y(out[1]) );
  AO22X1_RVT U20 ( .A1(rnd_p[1]), .A2(cout), .A3(rnd_p[0]), .A4(n1), .Y(out[0]) );
  karastuba_11bit menti ( .a({1'b1, a}), .b({1'b1, b}), .out(multi) );
  kogge_stone_Nbit_NOCLK_bw12 rnd_add ( .A(multi[23:12]), .B({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Cin(rndup), 
        .Sum({cout, rnd_p}) );
  INVX1_RVT U5 ( .A(cout), .Y(n1) );
  INVX1_RVT U6 ( .A(multi[23]), .Y(n2) );
endmodule


module encoder ( A, B, product, out );
  input [14:0] A;
  input [14:0] B;
  input [14:0] product;
  output [14:0] out;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n1, n2, n3, n4;

  NOR4X1_RVT U4 ( .A1(B[1]), .A2(B[0]), .A3(n18), .A4(n19), .Y(n10) );
  NOR4X1_RVT U5 ( .A1(A[1]), .A2(A[0]), .A3(n22), .A4(n23), .Y(n12) );
  AND2X1_RVT U10 ( .A1(product[9]), .A2(n5), .Y(out[9]) );
  AND2X1_RVT U11 ( .A1(product[8]), .A2(n5), .Y(out[8]) );
  AND2X1_RVT U12 ( .A1(product[7]), .A2(n5), .Y(out[7]) );
  AND2X1_RVT U13 ( .A1(product[6]), .A2(n5), .Y(out[6]) );
  AND2X1_RVT U14 ( .A1(product[5]), .A2(n5), .Y(out[5]) );
  AND2X1_RVT U15 ( .A1(product[4]), .A2(n5), .Y(out[4]) );
  AND2X1_RVT U16 ( .A1(product[3]), .A2(n5), .Y(out[3]) );
  AND2X1_RVT U17 ( .A1(product[2]), .A2(n5), .Y(out[2]) );
  AND2X1_RVT U18 ( .A1(product[1]), .A2(n5), .Y(out[1]) );
  AO21X1_RVT U19 ( .A1(product[14]), .A2(n5), .A3(n6), .Y(out[14]) );
  AO21X1_RVT U20 ( .A1(product[13]), .A2(n5), .A3(n6), .Y(out[13]) );
  AO21X1_RVT U21 ( .A1(product[12]), .A2(n5), .A3(n6), .Y(out[12]) );
  AO21X1_RVT U22 ( .A1(product[11]), .A2(n5), .A3(n6), .Y(out[11]) );
  AO21X1_RVT U23 ( .A1(product[10]), .A2(n5), .A3(n6), .Y(out[10]) );
  AO221X1_RVT U24 ( .A1(n7), .A2(n6), .A3(product[0]), .A4(n5), .A5(n8), .Y(
        out[0]) );
  NAND2X0_RVT U26 ( .A1(n9), .A2(n11), .Y(n6) );
  NAND4X0_RVT U27 ( .A1(A[11]), .A2(A[10]), .A3(A[12]), .A4(n13), .Y(n11) );
  AND2X1_RVT U28 ( .A1(A[14]), .A2(A[13]), .Y(n13) );
  NAND4X0_RVT U29 ( .A1(B[11]), .A2(B[10]), .A3(B[12]), .A4(n14), .Y(n9) );
  AND2X1_RVT U30 ( .A1(B[14]), .A2(B[13]), .Y(n14) );
  NAND2X0_RVT U31 ( .A1(n15), .A2(n16), .Y(n7) );
  NAND4X0_RVT U32 ( .A1(n4), .A2(n3), .A3(n10), .A4(n17), .Y(n16) );
  NOR3X0_RVT U33 ( .A1(B[13]), .A2(B[14]), .A3(B[12]), .Y(n17) );
  OR3X1_RVT U34 ( .A1(B[6]), .A2(B[5]), .A3(n20), .Y(n19) );
  OR3X1_RVT U35 ( .A1(B[9]), .A2(B[8]), .A3(B[7]), .Y(n20) );
  OR3X1_RVT U36 ( .A1(B[4]), .A2(B[3]), .A3(B[2]), .Y(n18) );
  NAND4X0_RVT U37 ( .A1(n2), .A2(n1), .A3(n12), .A4(n21), .Y(n15) );
  NOR3X0_RVT U38 ( .A1(A[13]), .A2(A[14]), .A3(A[12]), .Y(n21) );
  OR3X1_RVT U39 ( .A1(A[6]), .A2(A[5]), .A3(n24), .Y(n23) );
  OR3X1_RVT U40 ( .A1(A[9]), .A2(A[8]), .A3(A[7]), .Y(n24) );
  OR3X1_RVT U41 ( .A1(A[4]), .A2(A[3]), .A3(A[2]), .Y(n22) );
  OAI22X1_RVT U3 ( .A1(n9), .A2(n10), .A3(n11), .A4(n12), .Y(n8) );
  NOR2X1_RVT U6 ( .A1(n6), .A2(n7), .Y(n5) );
  INVX1_RVT U7 ( .A(A[11]), .Y(n1) );
  INVX1_RVT U8 ( .A(A[10]), .Y(n2) );
  INVX1_RVT U9 ( .A(B[11]), .Y(n3) );
  INVX1_RVT U25 ( .A(B[10]), .Y(n4) );
endmodule


module fp16multiplier ( A, B, CLK, RESETn, out );
  input [15:0] A;
  input [15:0] B;
  output [15:0] out;
  input CLK, RESETn;
  wire   sign, cout, n1;
  wire   [14:0] product;
  wire   [14:0] bmp;

  DFFARX1_RVT \out_reg[15]  ( .D(sign), .CLK(CLK), .RSTB(n1), .Q(out[15]) );
  DFFARX1_RVT \out_reg[9]  ( .D(product[9]), .CLK(CLK), .RSTB(n1), .Q(out[9])
         );
  DFFARX1_RVT \out_reg[6]  ( .D(product[6]), .CLK(CLK), .RSTB(n1), .Q(out[6])
         );
  DFFARX1_RVT \out_reg[4]  ( .D(product[4]), .CLK(CLK), .RSTB(n1), .Q(out[4])
         );
  biasAdder U0 ( .A(A[14:10]), .B(B[14:10]), .out(bmp[14:10]), .shift(cout) );
  menMult U1 ( .a(A[9:0]), .b(B[9:0]), .out(bmp[9:0]), .cout(cout) );
  encoder U2 ( .A(A[14:0]), .B(B[14:0]), .product(bmp), .out(product) );
  DFFARX1_RVT \out_reg[0]  ( .D(product[0]), .CLK(CLK), .RSTB(RESETn), .Q(
        out[0]) );
  DFFARX1_RVT \out_reg[1]  ( .D(product[1]), .CLK(CLK), .RSTB(RESETn), .Q(
        out[1]) );
  DFFARX1_RVT \out_reg[2]  ( .D(product[2]), .CLK(CLK), .RSTB(RESETn), .Q(
        out[2]) );
  DFFARX1_RVT \out_reg[3]  ( .D(product[3]), .CLK(CLK), .RSTB(n1), .Q(out[3])
         );
  DFFARX1_RVT \out_reg[5]  ( .D(product[5]), .CLK(CLK), .RSTB(n1), .Q(out[5])
         );
  DFFARX1_RVT \out_reg[7]  ( .D(product[7]), .CLK(CLK), .RSTB(n1), .Q(out[7])
         );
  DFFARX1_RVT \out_reg[8]  ( .D(product[8]), .CLK(CLK), .RSTB(n1), .Q(out[8])
         );
  DFFARX1_RVT \out_reg[14]  ( .D(product[14]), .CLK(CLK), .RSTB(RESETn), .Q(
        out[14]) );
  DFFARX1_RVT \out_reg[13]  ( .D(product[13]), .CLK(CLK), .RSTB(n1), .Q(
        out[13]) );
  DFFARX1_RVT \out_reg[12]  ( .D(product[12]), .CLK(CLK), .RSTB(n1), .Q(
        out[12]) );
  DFFARX1_RVT \out_reg[11]  ( .D(product[11]), .CLK(CLK), .RSTB(n1), .Q(
        out[11]) );
  DFFARX1_RVT \out_reg[10]  ( .D(product[10]), .CLK(CLK), .RSTB(n1), .Q(
        out[10]) );
  NBUFFX2_RVT U5 ( .A(RESETn), .Y(n1) );
  XOR2X1_RVT U6 ( .A1(B[15]), .A2(A[15]), .Y(sign) );
endmodule


module encoder_add ( A, B, product, out );
  input [15:0] A;
  input [15:0] B;
  input [15:0] product;
  output [15:0] out;
  wire   n13, n14, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n1, n3, n4, n5, n6, n7, n8, n9, n10, n12, n15, n42, n43, n44, n45,
         n46, n47, n48;

  NOR4X1_RVT U4 ( .A1(B[13]), .A2(B[14]), .A3(B[12]), .A4(n29), .Y(n28) );
  NOR4X1_RVT U5 ( .A1(A[13]), .A2(A[14]), .A3(A[12]), .A4(n31), .Y(n30) );
  AO222X1_RVT U16 ( .A1(A[8]), .A2(n1), .A3(product[8]), .A4(n4), .A5(B[8]), 
        .A6(n3), .Y(out[8]) );
  AO222X1_RVT U17 ( .A1(A[7]), .A2(n1), .A3(product[7]), .A4(n4), .A5(B[7]), 
        .A6(n3), .Y(out[7]) );
  AO222X1_RVT U18 ( .A1(A[6]), .A2(n1), .A3(product[6]), .A4(n4), .A5(B[6]), 
        .A6(n3), .Y(out[6]) );
  AO222X1_RVT U19 ( .A1(A[5]), .A2(n1), .A3(product[5]), .A4(n4), .A5(B[5]), 
        .A6(n3), .Y(out[5]) );
  AO222X1_RVT U20 ( .A1(A[4]), .A2(n1), .A3(product[4]), .A4(n4), .A5(B[4]), 
        .A6(n3), .Y(out[4]) );
  AO222X1_RVT U22 ( .A1(A[2]), .A2(n1), .A3(product[2]), .A4(n4), .A5(B[2]), 
        .A6(n3), .Y(out[2]) );
  AO21X1_RVT U25 ( .A1(n42), .A2(n14), .A3(n1), .Y(n13) );
  AO21X1_RVT U29 ( .A1(n3), .A2(B[13]), .A3(n16), .Y(n17) );
  AO221X1_RVT U30 ( .A1(product[12]), .A2(n4), .A3(n1), .A4(A[12]), .A5(n18), 
        .Y(out[12]) );
  AO21X1_RVT U31 ( .A1(n3), .A2(B[12]), .A3(n16), .Y(n18) );
  AO21X1_RVT U33 ( .A1(n3), .A2(B[11]), .A3(n16), .Y(n19) );
  AO21X1_RVT U35 ( .A1(n3), .A2(B[10]), .A3(n16), .Y(n20) );
  NAND3X0_RVT U37 ( .A1(n24), .A2(n23), .A3(n21), .Y(out[0]) );
  NAND3X0_RVT U41 ( .A1(n46), .A2(n43), .A3(n21), .Y(n27) );
  OR2X1_RVT U43 ( .A1(B[10]), .A2(B[11]), .Y(n29) );
  NAND2X0_RVT U44 ( .A1(B[0]), .A2(n3), .Y(n23) );
  OR2X1_RVT U46 ( .A1(A[10]), .A2(A[11]), .Y(n31) );
  OA22X1_RVT U47 ( .A1(n26), .A2(n32), .A3(n25), .A4(n33), .Y(n21) );
  AND4X1_RVT U48 ( .A1(n48), .A2(n47), .A3(n34), .A4(n35), .Y(n33) );
  NOR3X0_RVT U49 ( .A1(B[5]), .A2(B[6]), .A3(n36), .Y(n35) );
  OR3X1_RVT U50 ( .A1(B[8]), .A2(B[9]), .A3(B[7]), .Y(n36) );
  NOR3X0_RVT U51 ( .A1(B[3]), .A2(B[4]), .A3(B[2]), .Y(n34) );
  AND2X1_RVT U53 ( .A1(B[14]), .A2(B[13]), .Y(n37) );
  AND4X1_RVT U54 ( .A1(n45), .A2(n44), .A3(n38), .A4(n39), .Y(n32) );
  NOR3X0_RVT U55 ( .A1(A[5]), .A2(A[6]), .A3(n40), .Y(n39) );
  OR3X1_RVT U56 ( .A1(A[8]), .A2(A[9]), .A3(A[7]), .Y(n40) );
  NOR3X0_RVT U57 ( .A1(A[3]), .A2(A[4]), .A3(A[2]), .Y(n38) );
  NAND4X0_RVT U58 ( .A1(A[11]), .A2(A[10]), .A3(A[12]), .A4(n41), .Y(n26) );
  AND2X1_RVT U59 ( .A1(A[14]), .A2(A[13]), .Y(n41) );
  AND3X1_RVT U3 ( .A1(n21), .A2(n43), .A3(n28), .Y(n1) );
  AO222X1_RVT U6 ( .A1(product[15]), .A2(n4), .A3(A[15]), .A4(n13), .A5(B[15]), 
        .A6(n3), .Y(out[15]) );
  NAND2X0_RVT U7 ( .A1(n21), .A2(n22), .Y(n16) );
  NAND2X0_RVT U8 ( .A1(product[14]), .A2(n4), .Y(n9) );
  NAND2X0_RVT U9 ( .A1(B[9]), .A2(n3), .Y(n8) );
  AND2X1_RVT U10 ( .A1(n30), .A2(n21), .Y(n3) );
  AND3X1_RVT U11 ( .A1(n25), .A2(n26), .A3(n15), .Y(n4) );
  AOI21X1_RVT U12 ( .A1(n3), .A2(B[14]), .A3(n16), .Y(n5) );
  NAND2X0_RVT U13 ( .A1(A[9]), .A2(n1), .Y(n6) );
  NAND2X0_RVT U14 ( .A1(product[9]), .A2(n4), .Y(n7) );
  NAND3X0_RVT U15 ( .A1(n6), .A2(n7), .A3(n8), .Y(out[9]) );
  NAND2X0_RVT U21 ( .A1(n1), .A2(A[14]), .Y(n10) );
  NAND3X0_RVT U23 ( .A1(n9), .A2(n10), .A3(n5), .Y(out[14]) );
  AO21X1_RVT U24 ( .A1(n25), .A2(n26), .A3(n27), .Y(n22) );
  NAND4X0_RVT U26 ( .A1(B[11]), .A2(B[10]), .A3(B[12]), .A4(n37), .Y(n25) );
  AOI222X1_RVT U27 ( .A1(A[0]), .A2(n1), .A3(n42), .A4(n12), .A5(product[0]), 
        .A6(n4), .Y(n24) );
  AO222X1_RVT U28 ( .A1(A[1]), .A2(n1), .A3(product[1]), .A4(n4), .A5(B[1]), 
        .A6(n3), .Y(out[1]) );
  AO221X1_RVT U32 ( .A1(n4), .A2(product[11]), .A3(n1), .A4(A[11]), .A5(n19), 
        .Y(out[11]) );
  AO221X1_RVT U34 ( .A1(n4), .A2(product[10]), .A3(n1), .A4(A[10]), .A5(n20), 
        .Y(out[10]) );
  AO221X1_RVT U36 ( .A1(n4), .A2(product[13]), .A3(n1), .A4(A[13]), .A5(n17), 
        .Y(out[13]) );
  XNOR2X1_RVT U38 ( .A1(A[15]), .A2(B[15]), .Y(n14) );
  AO222X1_RVT U39 ( .A1(A[3]), .A2(n1), .A3(product[3]), .A4(n4), .A5(B[3]), 
        .A6(n3), .Y(out[3]) );
  INVX1_RVT U40 ( .A(n14), .Y(n12) );
  INVX1_RVT U42 ( .A(n27), .Y(n15) );
  INVX1_RVT U45 ( .A(n22), .Y(n42) );
  INVX1_RVT U52 ( .A(n30), .Y(n43) );
  INVX1_RVT U60 ( .A(A[1]), .Y(n44) );
  INVX1_RVT U61 ( .A(A[0]), .Y(n45) );
  INVX1_RVT U62 ( .A(n28), .Y(n46) );
  INVX1_RVT U63 ( .A(B[1]), .Y(n47) );
  INVX1_RVT U64 ( .A(B[0]), .Y(n48) );
endmodule


module fp16adder_DW01_inc_0 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;
  wire   n1, n3, n4, n6, n7;
  wire   [11:2] carry;

  HADDX1_RVT U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1_RVT U1_1_9 ( .A0(A[9]), .B0(n3), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1_RVT U1_1_7 ( .A0(A[7]), .B0(n4), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_RVT U1 ( .A(carry[5]), .Y(n6) );
  XOR2X1_RVT U2 ( .A1(A[8]), .A2(carry[8]), .Y(SUM[8]) );
  INVX1_RVT U3 ( .A(carry[11]), .Y(n7) );
  XNOR2X1_RVT U4 ( .A1(n7), .A2(A[11]), .Y(SUM[11]) );
  AND2X1_RVT U5 ( .A1(A[5]), .A2(carry[5]), .Y(n1) );
  AND2X1_RVT U6 ( .A1(A[8]), .A2(carry[8]), .Y(n3) );
  AND2X1_RVT U7 ( .A1(A[6]), .A2(n1), .Y(n4) );
  XNOR2X1_RVT U8 ( .A1(A[5]), .A2(n6), .Y(SUM[5]) );
  XOR2X1_RVT U9 ( .A1(A[6]), .A2(n1), .Y(SUM[6]) );
  INVX1_RVT U10 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module fp16adder_DW01_add_1 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19;
  wire   [11:1] carry;

  FADDX1_RVT U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(
        SUM[8]) );
  FADDX1_RVT U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(
        SUM[3]) );
  FADDX1_RVT U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(
        SUM[2]) );
  FADDX1_RVT U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(
        SUM[1]) );
  FADDX1_RVT U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(
        SUM[6]) );
  INVX1_RVT U1 ( .A(n8), .Y(carry[1]) );
  XOR2X2_RVT U2 ( .A1(B[0]), .A2(A[0]), .Y(SUM[0]) );
  XOR3X1_RVT U3 ( .A1(carry[5]), .A2(A[5]), .A3(B[5]), .Y(SUM[5]) );
  XOR3X1_RVT U4 ( .A1(carry[7]), .A2(A[7]), .A3(B[7]), .Y(SUM[7]) );
  INVX1_RVT U5 ( .A(carry[10]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n1), .A2(n2), .Y(n4) );
  INVX1_RVT U7 ( .A(B[10]), .Y(n1) );
  OR2X1_RVT U8 ( .A1(carry[10]), .A2(B[10]), .Y(SUM[11]) );
  NAND2X0_RVT U9 ( .A1(B[10]), .A2(carry[10]), .Y(n3) );
  NAND2X0_RVT U10 ( .A1(n3), .A2(n4), .Y(SUM[10]) );
  NAND2X0_RVT U11 ( .A1(B[5]), .A2(carry[5]), .Y(n5) );
  NAND2X0_RVT U12 ( .A1(A[5]), .A2(carry[5]), .Y(n6) );
  NAND2X0_RVT U13 ( .A1(A[5]), .A2(B[5]), .Y(n7) );
  NAND3X0_RVT U14 ( .A1(n7), .A2(n6), .A3(n5), .Y(carry[6]) );
  NAND2X0_RVT U15 ( .A1(A[0]), .A2(B[0]), .Y(n8) );
  XOR2X1_RVT U16 ( .A1(B[4]), .A2(A[4]), .Y(n9) );
  XOR2X1_RVT U17 ( .A1(carry[4]), .A2(n9), .Y(SUM[4]) );
  NAND2X0_RVT U18 ( .A1(B[4]), .A2(carry[4]), .Y(n10) );
  NAND2X0_RVT U19 ( .A1(A[4]), .A2(carry[4]), .Y(n11) );
  NAND2X0_RVT U20 ( .A1(A[4]), .A2(B[4]), .Y(n12) );
  NAND3X0_RVT U21 ( .A1(n12), .A2(n11), .A3(n10), .Y(carry[5]) );
  NAND2X0_RVT U22 ( .A1(B[7]), .A2(carry[7]), .Y(n13) );
  NAND2X0_RVT U23 ( .A1(A[7]), .A2(carry[7]), .Y(n14) );
  NAND2X0_RVT U24 ( .A1(A[7]), .A2(B[7]), .Y(n15) );
  NAND3X0_RVT U25 ( .A1(n15), .A2(n14), .A3(n13), .Y(carry[8]) );
  XOR2X1_RVT U26 ( .A1(B[9]), .A2(A[9]), .Y(n16) );
  XOR2X1_RVT U27 ( .A1(carry[9]), .A2(n16), .Y(SUM[9]) );
  NAND2X0_RVT U28 ( .A1(B[9]), .A2(carry[9]), .Y(n17) );
  NAND2X0_RVT U29 ( .A1(A[9]), .A2(carry[9]), .Y(n18) );
  NAND2X0_RVT U30 ( .A1(A[9]), .A2(B[9]), .Y(n19) );
  NAND3X0_RVT U31 ( .A1(n19), .A2(n18), .A3(n17), .Y(carry[10]) );
endmodule


module fp16adder_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;
  wire   [12:0] carry;

  FADDX1_RVT U2_8 ( .A(A[8]), .B(n21), .CI(carry[8]), .CO(carry[9]), .S(
        DIFF[8]) );
  FADDX1_RVT U2_7 ( .A(A[7]), .B(n26), .CI(carry[7]), .CO(carry[8]), .S(
        DIFF[7]) );
  FADDX1_RVT U2_3 ( .A(A[3]), .B(n18), .CI(carry[3]), .CO(carry[4]), .S(
        DIFF[3]) );
  FADDX1_RVT U2_2 ( .A(A[2]), .B(n20), .CI(carry[2]), .CO(carry[3]), .S(
        DIFF[2]) );
  FADDX1_RVT U2_1 ( .A(A[1]), .B(n24), .CI(carry[1]), .CO(carry[2]), .S(
        DIFF[1]) );
  XNOR2X1_RVT U1 ( .A1(A[0]), .A2(n19), .Y(DIFF[0]) );
  XOR3X1_RVT U2 ( .A1(carry[4]), .A2(A[4]), .A3(n22), .Y(DIFF[4]) );
  XOR3X1_RVT U3 ( .A1(carry[5]), .A2(A[5]), .A3(n25), .Y(DIFF[5]) );
  INVX1_RVT U4 ( .A(B[4]), .Y(n22) );
  INVX1_RVT U5 ( .A(B[5]), .Y(n25) );
  XOR3X1_RVT U6 ( .A1(carry[6]), .A2(A[6]), .A3(n23), .Y(DIFF[6]) );
  XOR3X1_RVT U7 ( .A1(carry[9]), .A2(A[9]), .A3(n27), .Y(DIFF[9]) );
  INVX1_RVT U8 ( .A(B[6]), .Y(n23) );
  NAND2X0_RVT U9 ( .A1(B[10]), .A2(n2), .Y(n4) );
  INVX1_RVT U10 ( .A(carry[10]), .Y(n2) );
  INVX1_RVT U11 ( .A(B[7]), .Y(n26) );
  INVX1_RVT U12 ( .A(B[8]), .Y(n21) );
  INVX1_RVT U13 ( .A(B[9]), .Y(n27) );
  INVX1_RVT U14 ( .A(B[0]), .Y(n19) );
  INVX1_RVT U15 ( .A(B[3]), .Y(n18) );
  NOR2X1_RVT U16 ( .A1(carry[10]), .A2(n17), .Y(DIFF[11]) );
  NAND2X0_RVT U17 ( .A1(n3), .A2(n4), .Y(DIFF[10]) );
  NAND2X0_RVT U18 ( .A1(n17), .A2(carry[10]), .Y(n3) );
  NAND2X0_RVT U19 ( .A1(n23), .A2(carry[6]), .Y(n5) );
  NAND2X0_RVT U20 ( .A1(A[6]), .A2(carry[6]), .Y(n6) );
  NAND2X0_RVT U21 ( .A1(A[6]), .A2(n23), .Y(n7) );
  NAND3X0_RVT U22 ( .A1(n7), .A2(n6), .A3(n5), .Y(carry[7]) );
  NAND2X0_RVT U23 ( .A1(n25), .A2(carry[5]), .Y(n8) );
  NAND2X0_RVT U24 ( .A1(A[5]), .A2(carry[5]), .Y(n9) );
  NAND2X0_RVT U25 ( .A1(A[5]), .A2(n25), .Y(n10) );
  NAND3X0_RVT U26 ( .A1(n10), .A2(n9), .A3(n8), .Y(carry[6]) );
  NAND2X0_RVT U27 ( .A1(n22), .A2(carry[4]), .Y(n11) );
  NAND2X0_RVT U28 ( .A1(A[4]), .A2(carry[4]), .Y(n12) );
  NAND2X0_RVT U29 ( .A1(A[4]), .A2(n22), .Y(n13) );
  NAND3X0_RVT U30 ( .A1(n13), .A2(n12), .A3(n11), .Y(carry[5]) );
  NAND2X0_RVT U31 ( .A1(n27), .A2(carry[9]), .Y(n14) );
  NAND2X0_RVT U32 ( .A1(A[9]), .A2(carry[9]), .Y(n15) );
  NAND2X0_RVT U33 ( .A1(A[9]), .A2(n27), .Y(n16) );
  NAND3X0_RVT U34 ( .A1(n16), .A2(n15), .A3(n14), .Y(carry[10]) );
  INVX0_RVT U35 ( .A(B[10]), .Y(n17) );
  OR2X1_RVT U36 ( .A1(n19), .A2(A[0]), .Y(carry[1]) );
  INVX0_RVT U37 ( .A(B[1]), .Y(n24) );
  INVX1_RVT U38 ( .A(B[2]), .Y(n20) );
endmodule


module fp16adder ( A, B, CLK, RESETn, sum );
  input [15:0] A;
  input [15:0] B;
  output [15:0] sum;
  input CLK, RESETn;
  wire   \Sum[15] , N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N21, N22,
         N23, N24, N25, N33, N34, N35, N36, N45, N47, N48, N49, N50, N51, N52,
         N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66,
         N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85,
         N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N114, N115, N116,
         N117, N118, N119, N120, N121, N122, N123, N124, N125, \mmts[11][10] ,
         \mmts[11][9] , \mmts[11][8] , \mmts[11][7] , \mmts[11][6] ,
         \mmts[11][5] , \mmts[11][4] , \mmts[11][3] , \mmts[11][2] ,
         \mmts[11][1] , \mmts[11][0] , \mmts[10][11] , \mmts[10][10] ,
         \mmts[10][9] , \mmts[10][8] , \mmts[10][7] , \mmts[10][6] ,
         \mmts[10][5] , \mmts[10][4] , \mmts[10][3] , \mmts[10][2] ,
         \mmts[10][1] , \mmts[10][0] , \mmts[9][11] , \mmts[9][10] ,
         \mmts[9][9] , \mmts[9][8] , \mmts[9][7] , \mmts[9][6] , \mmts[9][5] ,
         \mmts[9][4] , \mmts[9][3] , \mmts[9][2] , \mmts[9][1] , \mmts[9][0] ,
         \mmts[8][11] , \mmts[8][10] , \mmts[8][9] , \mmts[8][8] ,
         \mmts[8][7] , \mmts[8][6] , \mmts[8][5] , \mmts[8][4] , \mmts[8][3] ,
         \mmts[8][2] , \mmts[8][1] , \mmts[8][0] , \mmts[7][11] ,
         \mmts[7][10] , \mmts[7][9] , \mmts[7][8] , \mmts[7][7] , \mmts[7][6] ,
         \mmts[7][5] , \mmts[7][4] , \mmts[7][3] , \mmts[7][2] , \mmts[7][1] ,
         \mmts[7][0] , \mmts[6][11] , \mmts[6][10] , \mmts[6][9] ,
         \mmts[6][8] , \mmts[6][7] , \mmts[6][6] , \mmts[6][5] , \mmts[6][4] ,
         \mmts[6][3] , \mmts[6][2] , \mmts[6][1] , \mmts[6][0] , \mmts[5][11] ,
         \mmts[5][10] , \mmts[5][9] , \mmts[5][8] , \mmts[5][7] , \mmts[5][6] ,
         \mmts[5][5] , \mmts[5][4] , \mmts[5][3] , \mmts[5][2] , \mmts[5][1] ,
         \mmts[4][11] , \mmts[4][10] , \mmts[4][9] , \mmts[4][8] ,
         \mmts[4][7] , \mmts[4][6] , \mmts[4][5] , \mmts[4][4] , \mmts[4][3] ,
         \mmts[4][2] , \mmts[4][1] , \mmts[3][11] , \mmts[3][10] ,
         \mmts[3][9] , \mmts[3][8] , \mmts[3][7] , \mmts[3][6] , \mmts[3][5] ,
         \mmts[3][4] , \mmts[3][2] , \mmts[3][1] , \mmts[3][0] , \mmts[2][11] ,
         \mmts[2][10] , \mmts[2][9] , \mmts[2][8] , \mmts[2][7] , \mmts[2][6] ,
         \mmts[2][5] , \mmts[2][4] , \mmts[2][3] , \mmts[2][2] , \mmts[2][1] ,
         \mmts[2][0] , \mmts[1][11] , \mmts[1][10] , \mmts[1][9] ,
         \mmts[1][8] , \mmts[1][7] , \mmts[1][6] , \mmts[1][5] , \mmts[1][4] ,
         \mmts[1][3] , \mmts[1][2] , \mmts[1][1] , \mmts[1][0] , \ee[11][4] ,
         \ee[11][3] , \ee[11][2] , \ee[11][1] , \ee[11][0] , n71, n72, n73,
         n75, n81, n84, n85, n86, n88, n89, n90, \ee[6][1] , \ee[6][0] ,
         \ee[5][1] , \ee[4][1] , \ee[4][0] , \ee[3][1] , \ee[3][0] ,
         \ee[2][4] , \ee[2][3] , \ee[2][2] , \ee[2][1] , \ee[2][0] ,
         \ee[1][2] , \ee[1][1] , \ee[1][0] , \add_192/carry[9] ,
         \add_192/carry[8] , \add_192/carry[7] , \add_192/carry[6] ,
         \add_192/carry[5] , \add_192/carry[4] , \add_192/carry[3] ,
         \add_192/carry[2] , \add_145_3/carry[4] , \add_145_3/carry[3] ,
         \add_145_3/carry[2] , \sub_144_2/carry[4] , \sub_144_2/carry[3] ,
         \sub_144_2/carry[2] , \sub_144_2/carry[1] , \sub_144/carry[4] ,
         \sub_144/carry[3] , \sub_144/carry[2] , \sub_144/carry[1] ,
         \r427/carry[4] , \r427/carry[3] , \r427/carry[2] , \sub_112/carry[5] ,
         \sub_112/carry[4] , \sub_112/carry[3] , \sub_112/carry[2] ,
         \sub_112/carry[1] , \sub_0_root_sub_4_root_sub_182_G11_ni/carry[4] ,
         \sub_0_root_sub_4_root_sub_182_G11_ni/carry[3] ,
         \sub_0_root_sub_4_root_sub_182_G11_ni/carry[2] ,
         \sub_0_root_sub_4_root_sub_182_G11_ni/carry[1] ,
         \add_1_root_sub_4_root_sub_182_G11_ni/carry[1] ,
         \add_1_root_sub_4_root_sub_182_G11_ni/carry[2] ,
         \add_5_root_sub_4_root_sub_182_G11_ni/A[0] ,
         \sub_3_root_sub_4_root_sub_182_G11_ni/carry[4] ,
         \sub_3_root_sub_4_root_sub_182_G11_ni/carry[3] ,
         \sub_3_root_sub_4_root_sub_182_G11_ni/carry[2] ,
         \sub_3_root_sub_4_root_sub_182_G11_ni/carry[1] ,
         \sub_3_root_sub_4_root_sub_182_G11_ni/CI ,
         \sub_3_root_sub_4_root_sub_182_G11_ni/B[0] ,
         \add_2_root_sub_4_root_sub_182_G11_ni/carry[1] ,
         \add_4_root_sub_4_root_sub_182_G11_ni/CI ,
         \add_6_root_sub_4_root_sub_182_G11_ni/CI ,
         \add_6_root_sub_4_root_sub_182_G11_ni/B[0] , n1, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n74, n76, n77, n78, n79, n80, n82, n83,
         n87, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199;
  wire   [15:0] en_sum;
  wire   [5:0] ex;
  wire   [4:0] Difference;
  wire   [4:0] expA_R;
  wire   [9:0] mtsA_R;
  wire   [10:0] mtsB_R;
  wire   [11:0] mts_temp;
  wire   [10:1] mts_rnd;

  DFFARX1_RVT \sum_reg[7]  ( .D(en_sum[7]), .CLK(CLK), .RSTB(n109), .Q(sum[7])
         );
  NOR4X1_RVT U3 ( .A1(ex[2]), .A2(ex[1]), .A3(ex[0]), .A4(n88), .Y(n85) );
  AO22X1_RVT U44 ( .A1(N123), .A2(n83), .A3(n106), .A4(n73), .Y(mts_temp[9])
         );
  OA22X1_RVT U45 ( .A1(N81), .A2(n105), .A3(N93), .A4(n84), .Y(n73) );
  AO22X1_RVT U46 ( .A1(N122), .A2(n83), .A3(n106), .A4(n94), .Y(mts_temp[8])
         );
  AO22X1_RVT U48 ( .A1(N121), .A2(n83), .A3(n106), .A4(n75), .Y(mts_temp[7])
         );
  OA22X1_RVT U49 ( .A1(N79), .A2(n105), .A3(N91), .A4(n84), .Y(n75) );
  AO22X1_RVT U50 ( .A1(N120), .A2(n83), .A3(n106), .A4(n63), .Y(mts_temp[6])
         );
  AO22X1_RVT U52 ( .A1(N119), .A2(n83), .A3(n106), .A4(n64), .Y(mts_temp[5])
         );
  AO22X1_RVT U54 ( .A1(N118), .A2(n83), .A3(n106), .A4(n7), .Y(mts_temp[4]) );
  AO22X1_RVT U58 ( .A1(N116), .A2(n83), .A3(n106), .A4(n78), .Y(mts_temp[2])
         );
  AO22X1_RVT U60 ( .A1(N115), .A2(n83), .A3(n106), .A4(n81), .Y(mts_temp[1])
         );
  OA22X1_RVT U61 ( .A1(N73), .A2(n105), .A3(N85), .A4(n84), .Y(n81) );
  AO222X1_RVT U68 ( .A1(N53), .A2(n132), .A3(N64), .A4(n107), .A5(B[8]), .A6(
        n85), .Y(mtsB_R[8]) );
  AO222X1_RVT U69 ( .A1(N52), .A2(n132), .A3(N63), .A4(n107), .A5(B[7]), .A6(
        n85), .Y(mtsB_R[7]) );
  AO222X1_RVT U70 ( .A1(N51), .A2(n132), .A3(N62), .A4(n107), .A5(B[6]), .A6(
        n85), .Y(mtsB_R[6]) );
  AO222X1_RVT U71 ( .A1(N50), .A2(n132), .A3(N61), .A4(n107), .A5(B[5]), .A6(
        n85), .Y(mtsB_R[5]) );
  AO222X1_RVT U72 ( .A1(N49), .A2(n132), .A3(N60), .A4(n107), .A5(B[4]), .A6(
        n85), .Y(mtsB_R[4]) );
  AO222X1_RVT U73 ( .A1(N48), .A2(n132), .A3(N59), .A4(n107), .A5(B[3]), .A6(
        n85), .Y(mtsB_R[3]) );
  AO222X1_RVT U75 ( .A1(n10), .A2(n132), .A3(N57), .A4(n107), .A5(B[1]), .A6(
        n85), .Y(mtsB_R[1]) );
  AO221X1_RVT U76 ( .A1(N66), .A2(n107), .A3(N55), .A4(n132), .A5(n85), .Y(
        mtsB_R[10]) );
  AO22X1_RVT U78 ( .A1(B[9]), .A2(n99), .A3(A[9]), .A4(n70), .Y(mtsA_R[9]) );
  AO22X1_RVT U79 ( .A1(B[8]), .A2(n108), .A3(A[8]), .A4(n70), .Y(mtsA_R[8]) );
  AO22X1_RVT U81 ( .A1(B[6]), .A2(n108), .A3(A[6]), .A4(n70), .Y(mtsA_R[6]) );
  AO22X1_RVT U84 ( .A1(B[3]), .A2(n108), .A3(A[3]), .A4(n70), .Y(mtsA_R[3]) );
  AO22X1_RVT U85 ( .A1(B[2]), .A2(n99), .A3(A[2]), .A4(n70), .Y(mtsA_R[2]) );
  AO22X1_RVT U86 ( .A1(B[1]), .A2(n99), .A3(A[1]), .A4(n70), .Y(mtsA_R[1]) );
  AO22X1_RVT U88 ( .A1(N36), .A2(n99), .A3(N25), .A4(n70), .Y(expA_R[4]) );
  AO22X1_RVT U89 ( .A1(N35), .A2(n99), .A3(N24), .A4(n70), .Y(expA_R[3]) );
  AO22X1_RVT U90 ( .A1(N34), .A2(n99), .A3(N23), .A4(n70), .Y(expA_R[2]) );
  AO22X1_RVT U91 ( .A1(N33), .A2(n99), .A3(N22), .A4(n70), .Y(expA_R[1]) );
  AO22X1_RVT U92 ( .A1(n115), .A2(n99), .A3(N21), .A4(n70), .Y(expA_R[0]) );
  NAND2X0_RVT U94 ( .A1(n133), .A2(\sub_112/carry[5] ), .Y(n86) );
  OR3X1_RVT U95 ( .A1(n107), .A2(ex[4]), .A3(ex[3]), .Y(n88) );
  AO22X1_RVT U96 ( .A1(n99), .A2(n89), .A3(n90), .A4(\sub_112/carry[5] ), .Y(
        \Sum[15] ) );
  AO22X1_RVT U98 ( .A1(N83), .A2(n84), .A3(N95), .A4(n105), .Y(n71) );
  AO22X1_RVT U101 ( .A1(N16), .A2(n99), .A3(N11), .A4(\sub_112/carry[5] ), .Y(
        Difference[2]) );
  encoder_add en ( .A(A), .B(B), .product({\Sum[15] , \ee[11][4] , \ee[11][3] , 
        \ee[11][2] , \ee[11][1] , \ee[11][0] , mts_rnd}), .out(en_sum) );
  fp16adder_DW01_inc_0 add_160 ( .A({n120, n121, n122, n91, n123, n87, n9, 
        n124, n6, n125, n126, n127}), .SUM({N125, N124, N123, N122, N121, N120, 
        N119, N118, N117, N116, N115, N114}) );
  fp16adder_DW01_add_1 add_155 ( .A({1'b0, 1'b1, mtsA_R}), .B({1'b0, 
        mtsB_R[10], n5, mtsB_R[8:3], n79, mtsB_R[1:0]}), .CI(1'b0), .SUM({N95, 
        N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84}) );
  fp16adder_DW01_sub_0 sub_155 ( .A({1'b0, 1'b1, mtsA_R}), .B({1'b0, 
        mtsB_R[10], n5, mtsB_R[8:3], n79, mtsB_R[1:0]}), .CI(1'b0), .DIFF({N83, 
        N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72}) );
  HADDX1_RVT \add_145_3/U1_1_1  ( .A0(B[11]), .B0(B[10]), .C1(
        \add_145_3/carry[2] ), .SO(N33) );
  HADDX1_RVT \add_145_3/U1_1_2  ( .A0(B[12]), .B0(\add_145_3/carry[2] ), .C1(
        \add_145_3/carry[3] ), .SO(N34) );
  HADDX1_RVT \add_145_3/U1_1_3  ( .A0(B[13]), .B0(\add_145_3/carry[3] ), .C1(
        \add_145_3/carry[4] ), .SO(N35) );
  FADDX1_RVT \sub_144_2/U2_1  ( .A(B[11]), .B(n116), .CI(\sub_144_2/carry[1] ), 
        .CO(\sub_144_2/carry[2] ), .S(N15) );
  FADDX1_RVT \sub_144_2/U2_2  ( .A(B[12]), .B(n117), .CI(\sub_144_2/carry[2] ), 
        .CO(\sub_144_2/carry[3] ), .S(N16) );
  FADDX1_RVT \sub_144_2/U2_3  ( .A(B[13]), .B(n118), .CI(\sub_144_2/carry[3] ), 
        .CO(\sub_144_2/carry[4] ), .S(N17) );
  FADDX1_RVT \sub_144_2/U2_4  ( .A(B[14]), .B(n119), .CI(\sub_144_2/carry[4] ), 
        .S(N18) );
  FADDX1_RVT \sub_144/U2_1  ( .A(A[11]), .B(n111), .CI(\sub_144/carry[1] ), 
        .CO(\sub_144/carry[2] ), .S(N10) );
  FADDX1_RVT \sub_144/U2_2  ( .A(A[12]), .B(n112), .CI(\sub_144/carry[2] ), 
        .CO(\sub_144/carry[3] ), .S(N11) );
  FADDX1_RVT \sub_144/U2_3  ( .A(A[13]), .B(n113), .CI(\sub_144/carry[3] ), 
        .CO(\sub_144/carry[4] ), .S(N12) );
  FADDX1_RVT \sub_144/U2_4  ( .A(A[14]), .B(n114), .CI(\sub_144/carry[4] ), 
        .S(N13) );
  HADDX1_RVT \r427/U1_1_1  ( .A0(A[11]), .B0(A[10]), .C1(\r427/carry[2] ), 
        .SO(N22) );
  HADDX1_RVT \r427/U1_1_2  ( .A0(A[12]), .B0(\r427/carry[2] ), .C1(
        \r427/carry[3] ), .SO(N23) );
  HADDX1_RVT \r427/U1_1_3  ( .A0(A[13]), .B0(\r427/carry[3] ), .C1(
        \r427/carry[4] ), .SO(N24) );
  FADDX1_RVT \sub_112/U2_2  ( .A(A[12]), .B(n112), .CI(\sub_112/carry[2] ), 
        .CO(\sub_112/carry[3] ), .S(ex[2]) );
  FADDX1_RVT \sub_112/U2_3  ( .A(A[13]), .B(n113), .CI(\sub_112/carry[3] ), 
        .CO(\sub_112/carry[4] ), .S(ex[3]) );
  FADDX1_RVT \sub_112/U2_4  ( .A(A[14]), .B(n114), .CI(\sub_112/carry[4] ), 
        .CO(\sub_112/carry[5] ), .S(ex[4]) );
  FADDX1_RVT \sub_0_root_sub_4_root_sub_182_G11_ni/U2_1  ( .A(\ee[2][1] ), .B(
        n110), .CI(\sub_0_root_sub_4_root_sub_182_G11_ni/carry[1] ), .CO(
        \sub_0_root_sub_4_root_sub_182_G11_ni/carry[2] ), .S(\ee[11][1] ) );
  FADDX1_RVT \sub_0_root_sub_4_root_sub_182_G11_ni/U2_3  ( .A(\ee[2][3] ), .B(
        n74), .CI(\sub_0_root_sub_4_root_sub_182_G11_ni/carry[3] ), .CO(
        \sub_0_root_sub_4_root_sub_182_G11_ni/carry[4] ), .S(\ee[11][3] ) );
  FADDX1_RVT \add_1_root_sub_4_root_sub_182_G11_ni/U1_1  ( .A(\ee[3][1] ), .B(
        \ee[1][1] ), .CI(\add_1_root_sub_4_root_sub_182_G11_ni/carry[1] ), 
        .CO(\add_1_root_sub_4_root_sub_182_G11_ni/carry[2] ), .S(\ee[5][1] )
         );
  FADDX1_RVT \add_5_root_sub_4_root_sub_182_G11_ni/U1_0  ( .A(
        \add_5_root_sub_4_root_sub_182_G11_ni/A[0] ), .B(n103), .CI(n100), 
        .CO(\ee[3][1] ), .S(\ee[3][0] ) );
  FADDX1_RVT \sub_3_root_sub_4_root_sub_182_G11_ni/U2_0  ( .A(expA_R[0]), .B(
        \mmts[10][11] ), .CI(\mmts[9][11] ), .CO(
        \sub_3_root_sub_4_root_sub_182_G11_ni/carry[1] ), .S(\ee[2][0] ) );
  FADDX1_RVT \add_2_root_sub_4_root_sub_182_G11_ni/U1_1  ( .A(\ee[4][1] ), .B(
        \ee[6][1] ), .CI(\add_2_root_sub_4_root_sub_182_G11_ni/carry[1] ), 
        .CO(\ee[1][2] ), .S(\ee[1][1] ) );
  FADDX1_RVT \add_4_root_sub_4_root_sub_182_G11_ni/U1_0  ( .A(n102), .B(n101), 
        .CI(\add_4_root_sub_4_root_sub_182_G11_ni/CI ), .CO(\ee[6][1] ), .S(
        \ee[6][0] ) );
  FADDX1_RVT \add_6_root_sub_4_root_sub_182_G11_ni/U1_0  ( .A(n104), .B(
        \add_6_root_sub_4_root_sub_182_G11_ni/B[0] ), .CI(
        \add_6_root_sub_4_root_sub_182_G11_ni/CI ), .CO(\ee[4][1] ), .S(
        \ee[4][0] ) );
  DFFARX1_RVT \sum_reg[0]  ( .D(en_sum[0]), .CLK(CLK), .RSTB(RESETn), .Q(
        sum[0]) );
  DFFARX1_RVT \sum_reg[4]  ( .D(en_sum[4]), .CLK(CLK), .RSTB(n109), .Q(sum[4])
         );
  DFFARX1_RVT \sum_reg[6]  ( .D(en_sum[6]), .CLK(CLK), .RSTB(n109), .Q(sum[6])
         );
  DFFARX1_RVT \sum_reg[5]  ( .D(en_sum[5]), .CLK(CLK), .RSTB(n109), .Q(sum[5])
         );
  DFFARX1_RVT \sum_reg[9]  ( .D(en_sum[9]), .CLK(CLK), .RSTB(n109), .Q(sum[9])
         );
  DFFARX1_RVT \sum_reg[8]  ( .D(en_sum[8]), .CLK(CLK), .RSTB(n109), .Q(sum[8])
         );
  DFFARX1_RVT \sum_reg[13]  ( .D(en_sum[13]), .CLK(CLK), .RSTB(n109), .Q(
        sum[13]) );
  DFFARX1_RVT \sum_reg[12]  ( .D(en_sum[12]), .CLK(CLK), .RSTB(n109), .Q(
        sum[12]) );
  DFFARX1_RVT \sum_reg[1]  ( .D(en_sum[1]), .CLK(CLK), .RSTB(RESETn), .Q(
        sum[1]) );
  DFFARX1_RVT \sum_reg[10]  ( .D(en_sum[10]), .CLK(CLK), .RSTB(RESETn), .Q(
        sum[10]) );
  DFFARX1_RVT \sum_reg[15]  ( .D(en_sum[15]), .CLK(CLK), .RSTB(n109), .Q(
        sum[15]) );
  DFFARX1_RVT \sum_reg[14]  ( .D(en_sum[14]), .CLK(CLK), .RSTB(RESETn), .Q(
        sum[14]) );
  DFFARX1_RVT \sum_reg[11]  ( .D(en_sum[11]), .CLK(CLK), .RSTB(RESETn), .Q(
        sum[11]) );
  DFFARX1_RVT \sum_reg[2]  ( .D(en_sum[2]), .CLK(CLK), .RSTB(RESETn), .Q(
        sum[2]) );
  DFFARX1_RVT \sum_reg[3]  ( .D(en_sum[3]), .CLK(CLK), .RSTB(n109), .Q(sum[3])
         );
  NOR2X1_RVT U4 ( .A1(n80), .A2(n103), .Y(n1) );
  AOI22X1_RVT U5 ( .A1(N18), .A2(n99), .A3(N13), .A4(\sub_112/carry[5] ), .Y(
        n4) );
  MUX21X1_RVT U6 ( .A1(n172), .A2(n193), .S0(Difference[2]), .Y(n173) );
  MUX21X1_RVT U7 ( .A1(n140), .A2(n166), .S0(Difference[3]), .Y(n141) );
  INVX1_RVT U8 ( .A(n81), .Y(n126) );
  NOR2X1_RVT U9 ( .A1(N75), .A2(n105), .Y(n61) );
  NOR2X1_RVT U12 ( .A1(N87), .A2(n84), .Y(n62) );
  INVX1_RVT U13 ( .A(n78), .Y(n125) );
  NAND3X0_RVT U14 ( .A1(n52), .A2(n53), .A3(n54), .Y(mtsB_R[0]) );
  AO22X1_RVT U15 ( .A1(B[0]), .A2(n99), .A3(A[0]), .A4(n70), .Y(mtsA_R[0]) );
  AO22X1_RVT U16 ( .A1(N114), .A2(n83), .A3(n106), .A4(n77), .Y(mts_temp[0])
         );
  INVX1_RVT U17 ( .A(N77), .Y(n60) );
  NAND2X0_RVT U18 ( .A1(n106), .A2(n95), .Y(n56) );
  INVX1_RVT U19 ( .A(n9), .Y(n64) );
  MUX21X1_RVT U20 ( .A1(mts_temp[2]), .A2(mts_temp[1]), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[1][2] ) );
  OR2X1_RVT U21 ( .A1(N89), .A2(n84), .Y(n66) );
  MUX21X1_RVT U22 ( .A1(mts_temp[4]), .A2(mts_temp[3]), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[1][4] ) );
  MUX21X1_RVT U23 ( .A1(mts_temp[3]), .A2(mts_temp[2]), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[1][3] ) );
  INVX1_RVT U24 ( .A(n87), .Y(n63) );
  MUX21X1_RVT U25 ( .A1(\mmts[1][3] ), .A2(\mmts[1][2] ), .S0(
        \add_5_root_sub_4_root_sub_182_G11_ni/A[0] ), .Y(\mmts[2][3] ) );
  MUX21X1_RVT U26 ( .A1(\mmts[1][2] ), .A2(\mmts[1][1] ), .S0(
        \add_5_root_sub_4_root_sub_182_G11_ni/A[0] ), .Y(\mmts[2][2] ) );
  INVX1_RVT U27 ( .A(n57), .Y(\mmts[2][6] ) );
  MUX21X1_RVT U28 ( .A1(n59), .A2(n58), .S0(
        \add_5_root_sub_4_root_sub_182_G11_ni/A[0] ), .Y(n57) );
  INVX1_RVT U29 ( .A(\mmts[1][5] ), .Y(n58) );
  AO22X1_RVT U30 ( .A1(B[4]), .A2(n108), .A3(A[4]), .A4(n70), .Y(mtsA_R[4]) );
  MUX21X1_RVT U31 ( .A1(\mmts[2][2] ), .A2(\mmts[2][1] ), .S0(n104), .Y(
        \mmts[3][2] ) );
  MUX21X1_RVT U32 ( .A1(\mmts[1][8] ), .A2(\mmts[1][7] ), .S0(
        \add_5_root_sub_4_root_sub_182_G11_ni/A[0] ), .Y(\mmts[2][8] ) );
  INVX1_RVT U33 ( .A(\mmts[3][0] ), .Y(n80) );
  INVX1_RVT U34 ( .A(Difference[0]), .Y(n128) );
  MUX21X1_RVT U35 ( .A1(n82), .A2(\mmts[3][2] ), .S0(n103), .Y(\mmts[4][3] )
         );
  INVX1_RVT U36 ( .A(n73), .Y(n122) );
  MUX21X1_RVT U37 ( .A1(\mmts[1][9] ), .A2(\mmts[1][8] ), .S0(
        \add_5_root_sub_4_root_sub_182_G11_ni/A[0] ), .Y(\mmts[2][9] ) );
  MUX21X1_RVT U38 ( .A1(\mmts[2][9] ), .A2(\mmts[2][8] ), .S0(n104), .Y(
        \mmts[3][9] ) );
  AO22X1_RVT U39 ( .A1(B[7]), .A2(n108), .A3(A[7]), .A4(n70), .Y(mtsA_R[7]) );
  MUX21X1_RVT U40 ( .A1(\mmts[4][3] ), .A2(\mmts[4][2] ), .S0(
        \add_4_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[5][3] ) );
  INVX1_RVT U41 ( .A(n72), .Y(n121) );
  MUX21X1_RVT U42 ( .A1(\mmts[4][7] ), .A2(\mmts[4][6] ), .S0(
        \add_4_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[5][7] ) );
  MUX21X1_RVT U43 ( .A1(\mmts[3][10] ), .A2(\mmts[3][9] ), .S0(n103), .Y(
        \mmts[4][10] ) );
  INVX1_RVT U47 ( .A(n86), .Y(n132) );
  MUX21X1_RVT U51 ( .A1(\mmts[5][5] ), .A2(\mmts[5][4] ), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/B[0] ), .Y(\mmts[6][5] ) );
  AO22X1_RVT U53 ( .A1(N124), .A2(n83), .A3(n106), .A4(n72), .Y(mts_temp[10])
         );
  MUX21X1_RVT U55 ( .A1(\mmts[5][9] ), .A2(\mmts[5][8] ), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/B[0] ), .Y(\mmts[6][9] ) );
  MUX21X1_RVT U56 ( .A1(\mmts[4][11] ), .A2(\mmts[4][10] ), .S0(
        \add_4_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[5][11] ) );
  MUX21X1_RVT U57 ( .A1(\mmts[6][3] ), .A2(\mmts[6][2] ), .S0(n102), .Y(
        \mmts[7][3] ) );
  MUX21X1_RVT U59 ( .A1(mts_temp[11]), .A2(mts_temp[10]), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[1][11] ) );
  XOR3X1_RVT U62 ( .A1(\sub_112/carry[1] ), .A2(A[11]), .A3(n111), .Y(ex[1])
         );
  NAND2X0_RVT U63 ( .A1(\mmts[7][0] ), .A2(n101), .Y(n43) );
  INVX1_RVT U64 ( .A(mts_temp[11]), .Y(
        \add_6_root_sub_4_root_sub_182_G11_ni/CI ) );
  INVX1_RVT U65 ( .A(\mmts[2][11] ), .Y(n104) );
  MUX21X1_RVT U66 ( .A1(\mmts[7][3] ), .A2(\mmts[7][2] ), .S0(n101), .Y(
        \mmts[8][3] ) );
  MUX21X1_RVT U67 ( .A1(\mmts[7][4] ), .A2(\mmts[7][3] ), .S0(n101), .Y(
        \mmts[8][4] ) );
  OR2X1_RVT U74 ( .A1(A[10]), .A2(n115), .Y(\sub_112/carry[1] ) );
  MUX21X1_RVT U77 ( .A1(\mmts[7][5] ), .A2(\mmts[7][4] ), .S0(n101), .Y(
        \mmts[8][5] ) );
  NAND2X0_RVT U80 ( .A1(A[11]), .A2(n111), .Y(n46) );
  MUX21X1_RVT U82 ( .A1(\mmts[9][3] ), .A2(\mmts[9][2] ), .S0(
        \sub_3_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[10][3] ) );
  NAND2X0_RVT U83 ( .A1(\mmts[9][0] ), .A2(
        \sub_3_root_sub_4_root_sub_182_G11_ni/CI ), .Y(n39) );
  MUX21X1_RVT U87 ( .A1(\mmts[9][4] ), .A2(\mmts[9][3] ), .S0(
        \sub_3_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[10][4] ) );
  MUX21X1_RVT U93 ( .A1(\mmts[9][5] ), .A2(\mmts[9][4] ), .S0(
        \sub_3_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[10][5] ) );
  XNOR2X1_RVT U97 ( .A1(\ee[2][4] ), .A2(
        \sub_0_root_sub_4_root_sub_182_G11_ni/carry[4] ), .Y(\ee[11][4] ) );
  INVX1_RVT U99 ( .A(\add_192/carry[9] ), .Y(n21) );
  MUX21X1_RVT U100 ( .A1(\mmts[10][6] ), .A2(\mmts[10][5] ), .S0(
        \sub_3_root_sub_4_root_sub_182_G11_ni/B[0] ), .Y(\mmts[11][6] ) );
  INVX1_RVT U102 ( .A(\mmts[11][6] ), .Y(n14) );
  AND2X1_RVT U103 ( .A1(\add_192/carry[6] ), .A2(\mmts[11][6] ), .Y(
        \add_192/carry[7] ) );
  INVX1_RVT U104 ( .A(\mmts[11][7] ), .Y(n17) );
  XNOR2X1_RVT U105 ( .A1(B[15]), .A2(n106), .Y(n89) );
  XNOR2X1_RVT U106 ( .A1(A[15]), .A2(n106), .Y(n90) );
  INVX1_RVT U107 ( .A(\mmts[6][11] ), .Y(n102) );
  INVX1_RVT U108 ( .A(\sub_112/carry[5] ), .Y(n107) );
  INVX1_RVT U109 ( .A(\mmts[4][11] ), .Y(
        \add_4_root_sub_4_root_sub_182_G11_ni/CI ) );
  INVX1_RVT U110 ( .A(\mmts[10][11] ), .Y(
        \sub_3_root_sub_4_root_sub_182_G11_ni/B[0] ) );
  INVX1_RVT U111 ( .A(\mmts[1][11] ), .Y(
        \add_5_root_sub_4_root_sub_182_G11_ni/A[0] ) );
  INVX1_RVT U112 ( .A(\mmts[5][11] ), .Y(
        \add_6_root_sub_4_root_sub_182_G11_ni/B[0] ) );
  INVX1_RVT U113 ( .A(\mmts[9][11] ), .Y(
        \sub_3_root_sub_4_root_sub_182_G11_ni/CI ) );
  MUX21X1_RVT U114 ( .A1(\mmts[8][11] ), .A2(\mmts[8][10] ), .S0(n100), .Y(
        \mmts[9][11] ) );
  AO222X1_RVT U115 ( .A1(N54), .A2(n132), .A3(n99), .A4(N65), .A5(B[9]), .A6(
        n85), .Y(n5) );
  OR2X1_RVT U116 ( .A1(n61), .A2(n62), .Y(n6) );
  OA22X1_RVT U117 ( .A1(N76), .A2(n105), .A3(N88), .A4(n84), .Y(n7) );
  INVX1_RVT U118 ( .A(\mmts[7][11] ), .Y(n101) );
  MUX21X1_RVT U119 ( .A1(\mmts[6][11] ), .A2(\mmts[6][10] ), .S0(n102), .Y(
        \mmts[7][11] ) );
  XNOR2X1_RVT U120 ( .A1(\ee[1][2] ), .A2(
        \add_1_root_sub_4_root_sub_182_G11_ni/carry[2] ), .Y(n8) );
  INVX1_RVT U121 ( .A(\mmts[8][11] ), .Y(n100) );
  NAND2X0_RVT U122 ( .A1(n65), .A2(n66), .Y(n9) );
  AND2X1_RVT U123 ( .A1(n141), .A2(n4), .Y(n10) );
  AND2X1_RVT U124 ( .A1(\mmts[11][1] ), .A2(\mmts[11][0] ), .Y(n11) );
  NAND2X0_RVT U125 ( .A1(\mmts[11][6] ), .A2(\mmts[11][7] ), .Y(n12) );
  INVX1_RVT U126 ( .A(n76), .Y(n129) );
  AO22X1_RVT U127 ( .A1(N15), .A2(n99), .A3(N10), .A4(\sub_112/carry[5] ), .Y(
        n76) );
  AO22X1_RVT U128 ( .A1(N17), .A2(n99), .A3(N12), .A4(\sub_112/carry[5] ), .Y(
        Difference[3]) );
  INVX1_RVT U129 ( .A(Difference[3]), .Y(n131) );
  INVX1_RVT U130 ( .A(n6), .Y(n95) );
  XOR2X1_RVT U131 ( .A1(A[15]), .A2(B[15]), .Y(n84) );
  AND2X1_RVT U132 ( .A1(n1), .A2(\mmts[4][11] ), .Y(n13) );
  INVX1_RVT U133 ( .A(n7), .Y(n124) );
  INVX1_RVT U134 ( .A(\mmts[3][11] ), .Y(n103) );
  MUX21X1_RVT U135 ( .A1(\mmts[2][7] ), .A2(\mmts[2][6] ), .S0(n104), .Y(
        \mmts[3][7] ) );
  INVX1_RVT U136 ( .A(\mmts[1][6] ), .Y(n59) );
  MUX21X1_RVT U137 ( .A1(\mmts[5][1] ), .A2(n13), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/B[0] ), .Y(\mmts[6][1] ) );
  NAND2X0_RVT U138 ( .A1(\mmts[11][6] ), .A2(n67), .Y(n15) );
  NAND2X0_RVT U139 ( .A1(n14), .A2(\add_192/carry[6] ), .Y(n16) );
  NAND2X0_RVT U140 ( .A1(n15), .A2(n16), .Y(mts_rnd[6]) );
  NAND2X0_RVT U141 ( .A1(\mmts[11][7] ), .A2(n18), .Y(n19) );
  NAND2X0_RVT U142 ( .A1(n17), .A2(\add_192/carry[7] ), .Y(n20) );
  NAND2X0_RVT U143 ( .A1(n19), .A2(n20), .Y(mts_rnd[7]) );
  INVX0_RVT U144 ( .A(\add_192/carry[7] ), .Y(n18) );
  NAND2X0_RVT U145 ( .A1(\mmts[11][9] ), .A2(n21), .Y(n22) );
  NAND2X0_RVT U146 ( .A1(n98), .A2(\add_192/carry[9] ), .Y(n23) );
  NAND2X0_RVT U147 ( .A1(n22), .A2(n23), .Y(mts_rnd[9]) );
  NAND2X0_RVT U148 ( .A1(n168), .A2(n130), .Y(n24) );
  NAND2X0_RVT U149 ( .A1(n190), .A2(Difference[2]), .Y(n25) );
  NAND2X0_RVT U150 ( .A1(n24), .A2(n25), .Y(n169) );
  AO22X1_RVT U151 ( .A1(B[5]), .A2(n108), .A3(A[5]), .A4(n70), .Y(mtsA_R[5])
         );
  OR2X1_RVT U152 ( .A1(N82), .A2(n105), .Y(n26) );
  OR2X1_RVT U153 ( .A1(N94), .A2(n84), .Y(n27) );
  AND2X1_RVT U154 ( .A1(n26), .A2(n27), .Y(n72) );
  INVX1_RVT U155 ( .A(n84), .Y(n105) );
  NAND2X0_RVT U156 ( .A1(n169), .A2(n131), .Y(n28) );
  NAND2X0_RVT U157 ( .A1(n198), .A2(Difference[3]), .Y(n29) );
  NAND2X0_RVT U158 ( .A1(n28), .A2(n29), .Y(n170) );
  NAND2X0_RVT U159 ( .A1(n30), .A2(n83), .Y(n31) );
  AND2X1_RVT U160 ( .A1(n31), .A2(n71), .Y(mts_temp[11]) );
  INVX1_RVT U161 ( .A(N125), .Y(n30) );
  NAND2X0_RVT U162 ( .A1(\mmts[8][1] ), .A2(\mmts[8][11] ), .Y(n32) );
  NAND2X0_RVT U163 ( .A1(\mmts[8][0] ), .A2(n100), .Y(n33) );
  NAND2X0_RVT U164 ( .A1(n32), .A2(n33), .Y(\mmts[9][1] ) );
  NAND2X0_RVT U165 ( .A1(n167), .A2(n129), .Y(n34) );
  NAND2X0_RVT U166 ( .A1(n176), .A2(n76), .Y(n35) );
  NAND2X0_RVT U167 ( .A1(n34), .A2(n35), .Y(n168) );
  NAND2X0_RVT U168 ( .A1(A[3]), .A2(Difference[0]), .Y(n36) );
  NAND2X0_RVT U169 ( .A1(A[2]), .A2(n128), .Y(n37) );
  NAND2X0_RVT U170 ( .A1(n36), .A2(n37), .Y(n176) );
  NAND2X0_RVT U171 ( .A1(\mmts[9][1] ), .A2(\mmts[9][11] ), .Y(n38) );
  NAND2X0_RVT U172 ( .A1(n38), .A2(n39), .Y(\mmts[10][1] ) );
  NAND2X0_RVT U173 ( .A1(n152), .A2(n76), .Y(n40) );
  NAND2X0_RVT U174 ( .A1(n150), .A2(n129), .Y(n41) );
  NAND2X0_RVT U175 ( .A1(n40), .A2(n41), .Y(n160) );
  MUX21X1_RVT U176 ( .A1(n139), .A2(n160), .S0(Difference[2]), .Y(n140) );
  NAND2X0_RVT U177 ( .A1(\mmts[7][1] ), .A2(\mmts[7][11] ), .Y(n42) );
  NAND2X0_RVT U178 ( .A1(n42), .A2(n43), .Y(\mmts[8][1] ) );
  NAND2X0_RVT U179 ( .A1(n111), .A2(\sub_112/carry[1] ), .Y(n44) );
  NAND2X0_RVT U180 ( .A1(A[11]), .A2(\sub_112/carry[1] ), .Y(n45) );
  NAND3X0_RVT U181 ( .A1(n46), .A2(n45), .A3(n44), .Y(\sub_112/carry[2] ) );
  NAND2X0_RVT U182 ( .A1(\mmts[6][1] ), .A2(\mmts[6][11] ), .Y(n47) );
  NAND2X0_RVT U183 ( .A1(\mmts[6][0] ), .A2(n102), .Y(n48) );
  NAND2X0_RVT U184 ( .A1(n47), .A2(n48), .Y(\mmts[7][1] ) );
  NAND2X0_RVT U185 ( .A1(\mmts[11][10] ), .A2(n93), .Y(n50) );
  NAND2X0_RVT U186 ( .A1(n97), .A2(n49), .Y(n51) );
  NAND2X0_RVT U187 ( .A1(n50), .A2(n51), .Y(mts_rnd[10]) );
  INVX0_RVT U188 ( .A(n93), .Y(n49) );
  NAND2X0_RVT U189 ( .A1(N45), .A2(n132), .Y(n52) );
  NAND2X0_RVT U190 ( .A1(N56), .A2(n107), .Y(n53) );
  NAND2X0_RVT U191 ( .A1(B[0]), .A2(n85), .Y(n54) );
  NAND2X0_RVT U192 ( .A1(N117), .A2(n83), .Y(n55) );
  NAND2X0_RVT U193 ( .A1(n55), .A2(n56), .Y(mts_temp[3]) );
  INVX1_RVT U194 ( .A(n83), .Y(n106) );
  MUX21X1_RVT U195 ( .A1(\mmts[2][8] ), .A2(\mmts[2][7] ), .S0(n104), .Y(
        \mmts[3][8] ) );
  MUX21X1_RVT U196 ( .A1(\mmts[1][7] ), .A2(\mmts[1][6] ), .S0(
        \add_5_root_sub_4_root_sub_182_G11_ni/A[0] ), .Y(\mmts[2][7] ) );
  MUX21X1_RVT U197 ( .A1(\mmts[5][6] ), .A2(\mmts[5][5] ), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/B[0] ), .Y(\mmts[6][6] ) );
  INVX1_RVT U198 ( .A(\add_192/carry[6] ), .Y(n67) );
  NAND2X0_RVT U199 ( .A1(n60), .A2(n84), .Y(n65) );
  XOR2X1_RVT U200 ( .A1(\ee[3][0] ), .A2(n69), .Y(n68) );
  INVX1_RVT U201 ( .A(\ee[5][1] ), .Y(n110) );
  MUX21X1_RVT U202 ( .A1(\mmts[10][1] ), .A2(\mmts[10][0] ), .S0(
        \sub_3_root_sub_4_root_sub_182_G11_ni/B[0] ), .Y(\mmts[11][1] ) );
  MUX21X1_RVT U203 ( .A1(\mmts[3][1] ), .A2(\mmts[3][0] ), .S0(n103), .Y(
        \mmts[4][1] ) );
  MUX21X1_RVT U204 ( .A1(\mmts[2][2] ), .A2(\mmts[2][3] ), .S0(\mmts[2][11] ), 
        .Y(n82) );
  NAND2X0_RVT U205 ( .A1(\add_192/carry[9] ), .A2(\mmts[11][9] ), .Y(n93) );
  INVX0_RVT U206 ( .A(\ee[1][0] ), .Y(n69) );
  MUX21X1_RVT U207 ( .A1(\mmts[10][9] ), .A2(\mmts[10][8] ), .S0(
        \sub_3_root_sub_4_root_sub_182_G11_ni/B[0] ), .Y(\mmts[11][9] ) );
  MUX21X1_RVT U208 ( .A1(\mmts[8][2] ), .A2(\mmts[8][1] ), .S0(n100), .Y(
        \mmts[9][2] ) );
  AND2X1_RVT U209 ( .A1(n128), .A2(n129), .Y(n162) );
  OR2X1_RVT U210 ( .A1(\ee[2][0] ), .A2(n68), .Y(
        \sub_0_root_sub_4_root_sub_182_G11_ni/carry[1] ) );
  MUX21X1_RVT U211 ( .A1(n173), .A2(n199), .S0(Difference[3]), .Y(n174) );
  NOR2X0_RVT U212 ( .A1(n67), .A2(n12), .Y(\add_192/carry[8] ) );
  NAND2X0_RVT U213 ( .A1(n133), .A2(n86), .Y(n70) );
  NAND2X0_RVT U214 ( .A1(\ee[1][2] ), .A2(
        \add_1_root_sub_4_root_sub_182_G11_ni/carry[2] ), .Y(n74) );
  OA22X1_RVT U215 ( .A1(N72), .A2(n105), .A3(N84), .A4(n84), .Y(n77) );
  OA22X1_RVT U216 ( .A1(N74), .A2(n105), .A3(N86), .A4(n84), .Y(n78) );
  AO222X1_RVT U217 ( .A1(N47), .A2(n132), .A3(N58), .A4(n107), .A5(B[2]), .A6(
        n85), .Y(n79) );
  AND2X1_RVT U218 ( .A1(\add_192/carry[5] ), .A2(\mmts[11][5] ), .Y(
        \add_192/carry[6] ) );
  MUX21X1_RVT U219 ( .A1(\mmts[10][3] ), .A2(\mmts[10][2] ), .S0(
        \sub_3_root_sub_4_root_sub_182_G11_ni/B[0] ), .Y(\mmts[11][3] ) );
  MUX21X1_RVT U220 ( .A1(\mmts[9][2] ), .A2(\mmts[9][1] ), .S0(
        \sub_3_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[10][2] ) );
  MUX21X1_RVT U221 ( .A1(\mmts[7][2] ), .A2(\mmts[7][1] ), .S0(n101), .Y(
        \mmts[8][2] ) );
  MUX21X1_RVT U222 ( .A1(\mmts[7][9] ), .A2(\mmts[7][8] ), .S0(n101), .Y(
        \mmts[8][9] ) );
  MUX21X1_RVT U223 ( .A1(\mmts[6][5] ), .A2(\mmts[6][4] ), .S0(n102), .Y(
        \mmts[7][5] ) );
  MUX21X1_RVT U224 ( .A1(\mmts[6][9] ), .A2(\mmts[6][8] ), .S0(n102), .Y(
        \mmts[7][9] ) );
  MUX21X1_RVT U225 ( .A1(\mmts[6][2] ), .A2(\mmts[6][1] ), .S0(n102), .Y(
        \mmts[7][2] ) );
  MUX21X1_RVT U226 ( .A1(\mmts[6][8] ), .A2(\mmts[6][7] ), .S0(n102), .Y(
        \mmts[7][8] ) );
  MUX21X1_RVT U227 ( .A1(\mmts[5][4] ), .A2(\mmts[5][3] ), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/B[0] ), .Y(\mmts[6][4] ) );
  MUX21X1_RVT U228 ( .A1(\mmts[5][8] ), .A2(\mmts[5][7] ), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/B[0] ), .Y(\mmts[6][8] ) );
  MUX21X1_RVT U229 ( .A1(\mmts[5][2] ), .A2(\mmts[5][1] ), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/B[0] ), .Y(\mmts[6][2] ) );
  MUX21X1_RVT U230 ( .A1(\mmts[4][5] ), .A2(\mmts[4][4] ), .S0(
        \add_4_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[5][5] ) );
  MUX21X1_RVT U231 ( .A1(\mmts[3][2] ), .A2(\mmts[3][1] ), .S0(n103), .Y(
        \mmts[4][2] ) );
  MUX21X1_RVT U232 ( .A1(\mmts[3][5] ), .A2(\mmts[3][4] ), .S0(n103), .Y(
        \mmts[4][5] ) );
  MUX21X1_RVT U233 ( .A1(\mmts[3][4] ), .A2(n82), .S0(n103), .Y(\mmts[4][4] )
         );
  MUX21X1_RVT U234 ( .A1(\mmts[3][8] ), .A2(\mmts[3][7] ), .S0(n103), .Y(
        \mmts[4][8] ) );
  AND2X1_RVT U235 ( .A1(\ee[1][0] ), .A2(\ee[3][0] ), .Y(
        \add_1_root_sub_4_root_sub_182_G11_ni/carry[1] ) );
  MUX21X1_RVT U236 ( .A1(\mmts[2][10] ), .A2(\mmts[2][9] ), .S0(n104), .Y(
        \mmts[3][10] ) );
  MUX21X1_RVT U237 ( .A1(\mmts[2][5] ), .A2(\mmts[2][4] ), .S0(n104), .Y(
        \mmts[3][5] ) );
  MUX21X1_RVT U238 ( .A1(\mmts[2][11] ), .A2(\mmts[2][10] ), .S0(n104), .Y(
        \mmts[3][11] ) );
  XOR2X1_RVT U239 ( .A1(\ee[4][0] ), .A2(\ee[6][0] ), .Y(\ee[1][0] ) );
  MUX21X1_RVT U240 ( .A1(\mmts[1][4] ), .A2(\mmts[1][3] ), .S0(
        \add_5_root_sub_4_root_sub_182_G11_ni/A[0] ), .Y(\mmts[2][4] ) );
  MUX21X1_RVT U241 ( .A1(\mmts[1][5] ), .A2(\mmts[1][4] ), .S0(
        \add_5_root_sub_4_root_sub_182_G11_ni/A[0] ), .Y(\mmts[2][5] ) );
  AND2X1_RVT U242 ( .A1(n128), .A2(n129), .Y(n195) );
  INVX1_RVT U243 ( .A(\sub_112/carry[5] ), .Y(n99) );
  INVX1_RVT U244 ( .A(\sub_112/carry[5] ), .Y(n108) );
  MUX21X1_RVT U245 ( .A1(mts_temp[8]), .A2(mts_temp[7]), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[1][8] ) );
  MUX21X1_RVT U246 ( .A1(mts_temp[5]), .A2(mts_temp[4]), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[1][5] ) );
  INVX1_RVT U247 ( .A(n77), .Y(n127) );
  FADDX1_RVT U248 ( .A(\ee[2][2] ), .B(n8), .CI(
        \sub_0_root_sub_4_root_sub_182_G11_ni/carry[2] ), .CO(
        \sub_0_root_sub_4_root_sub_182_G11_ni/carry[3] ), .S(\ee[11][2] ) );
  NBUFFX2_RVT U249 ( .A(RESETn), .Y(n109) );
  AND2X1_RVT U250 ( .A1(n84), .A2(n71), .Y(n83) );
  OAI22X1_RVT U251 ( .A1(N78), .A2(n105), .A3(N90), .A4(n84), .Y(n87) );
  MUX21X1_RVT U252 ( .A1(n185), .A2(n183), .S0(n129), .Y(n193) );
  AND4X1_RVT U253 ( .A1(n96), .A2(n130), .A3(n131), .A4(n4), .Y(N52) );
  AND2X1_RVT U254 ( .A1(n186), .A2(n129), .Y(n192) );
  AND2X1_RVT U255 ( .A1(n153), .A2(n129), .Y(n159) );
  MUX21X1_RVT U256 ( .A1(n128), .A2(n145), .S0(n129), .Y(n156) );
  MUX21X1_RVT U257 ( .A1(n128), .A2(n178), .S0(n129), .Y(n189) );
  MUX21X1_RVT U258 ( .A1(n144), .A2(n142), .S0(n129), .Y(n157) );
  MUX21X1_RVT U259 ( .A1(n177), .A2(n175), .S0(n129), .Y(n190) );
  OAI22X1_RVT U260 ( .A1(N80), .A2(n105), .A3(N92), .A4(n84), .Y(n91) );
  MUX21X1_RVT U261 ( .A1(n145), .A2(n144), .S0(n129), .Y(n163) );
  MUX21X1_RVT U262 ( .A1(n178), .A2(n177), .S0(n129), .Y(n196) );
  MUX21X1_RVT U263 ( .A1(n185), .A2(n186), .S0(n76), .Y(n92) );
  MUX21X1_RVT U264 ( .A1(n138), .A2(n151), .S0(n76), .Y(n139) );
  MUX21X1_RVT U265 ( .A1(n135), .A2(n157), .S0(Difference[2]), .Y(n136) );
  AND4X1_RVT U266 ( .A1(n92), .A2(n130), .A3(n131), .A4(n4), .Y(N63) );
  INVX0_RVT U267 ( .A(B[10]), .Y(n115) );
  INVX0_RVT U268 ( .A(n91), .Y(n94) );
  MUX21X1_RVT U269 ( .A1(\mmts[4][1] ), .A2(n1), .S0(
        \add_4_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[5][1] ) );
  MUX21X1_RVT U270 ( .A1(n153), .A2(n152), .S0(n129), .Y(n96) );
  INVX1_RVT U271 ( .A(\mmts[11][10] ), .Y(n97) );
  INVX1_RVT U272 ( .A(\mmts[11][9] ), .Y(n98) );
  MUX21X1_RVT U273 ( .A1(\mmts[4][4] ), .A2(\mmts[4][3] ), .S0(
        \add_4_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[5][4] ) );
  MUX21X1_RVT U274 ( .A1(\mmts[10][3] ), .A2(\mmts[10][4] ), .S0(
        \mmts[10][11] ), .Y(\mmts[11][4] ) );
  MUX21X1_RVT U275 ( .A1(\mmts[2][1] ), .A2(\mmts[2][0] ), .S0(n104), .Y(
        \mmts[3][1] ) );
  AO22X1_RVT U276 ( .A1(N9), .A2(\sub_112/carry[5] ), .A3(N14), .A4(n107), .Y(
        Difference[0]) );
  AND2X1_RVT U277 ( .A1(\add_192/carry[8] ), .A2(\mmts[11][8] ), .Y(
        \add_192/carry[9] ) );
  XOR2X1_RVT U278 ( .A1(\mmts[11][8] ), .A2(\add_192/carry[8] ), .Y(mts_rnd[8]) );
  XOR2X1_RVT U279 ( .A1(\mmts[11][5] ), .A2(\add_192/carry[5] ), .Y(mts_rnd[5]) );
  AND2X1_RVT U280 ( .A1(\add_192/carry[4] ), .A2(\mmts[11][4] ), .Y(
        \add_192/carry[5] ) );
  XOR2X1_RVT U281 ( .A1(\mmts[11][4] ), .A2(\add_192/carry[4] ), .Y(mts_rnd[4]) );
  AND2X1_RVT U282 ( .A1(\add_192/carry[3] ), .A2(\mmts[11][3] ), .Y(
        \add_192/carry[4] ) );
  XOR2X1_RVT U283 ( .A1(\mmts[11][3] ), .A2(\add_192/carry[3] ), .Y(mts_rnd[3]) );
  AND2X1_RVT U284 ( .A1(\add_192/carry[2] ), .A2(\mmts[11][2] ), .Y(
        \add_192/carry[3] ) );
  XOR2X1_RVT U285 ( .A1(\mmts[11][2] ), .A2(\add_192/carry[2] ), .Y(mts_rnd[2]) );
  AND2X1_RVT U286 ( .A1(n11), .A2(\mmts[11][1] ), .Y(\add_192/carry[2] ) );
  XOR2X1_RVT U287 ( .A1(\mmts[11][1] ), .A2(n11), .Y(mts_rnd[1]) );
  XNOR2X1_RVT U288 ( .A1(n68), .A2(\ee[2][0] ), .Y(\ee[11][0] ) );
  AND2X1_RVT U289 ( .A1(\ee[6][0] ), .A2(\ee[4][0] ), .Y(
        \add_2_root_sub_4_root_sub_182_G11_ni/carry[1] ) );
  XNOR2X1_RVT U290 ( .A1(expA_R[4]), .A2(
        \sub_3_root_sub_4_root_sub_182_G11_ni/carry[4] ), .Y(\ee[2][4] ) );
  OR2X1_RVT U291 ( .A1(expA_R[3]), .A2(
        \sub_3_root_sub_4_root_sub_182_G11_ni/carry[3] ), .Y(
        \sub_3_root_sub_4_root_sub_182_G11_ni/carry[4] ) );
  XNOR2X1_RVT U292 ( .A1(\sub_3_root_sub_4_root_sub_182_G11_ni/carry[3] ), 
        .A2(expA_R[3]), .Y(\ee[2][3] ) );
  OR2X1_RVT U293 ( .A1(expA_R[2]), .A2(
        \sub_3_root_sub_4_root_sub_182_G11_ni/carry[2] ), .Y(
        \sub_3_root_sub_4_root_sub_182_G11_ni/carry[3] ) );
  XNOR2X1_RVT U294 ( .A1(\sub_3_root_sub_4_root_sub_182_G11_ni/carry[2] ), 
        .A2(expA_R[2]), .Y(\ee[2][2] ) );
  OR2X1_RVT U295 ( .A1(expA_R[1]), .A2(
        \sub_3_root_sub_4_root_sub_182_G11_ni/carry[1] ), .Y(
        \sub_3_root_sub_4_root_sub_182_G11_ni/carry[2] ) );
  XNOR2X1_RVT U296 ( .A1(\sub_3_root_sub_4_root_sub_182_G11_ni/carry[1] ), 
        .A2(expA_R[1]), .Y(\ee[2][1] ) );
  OR2X1_RVT U297 ( .A1(A[10]), .A2(n115), .Y(\sub_144/carry[1] ) );
  XNOR2X1_RVT U298 ( .A1(n115), .A2(A[10]), .Y(N9) );
  OR2X1_RVT U299 ( .A1(B[10]), .A2(N21), .Y(\sub_144_2/carry[1] ) );
  XNOR2X1_RVT U300 ( .A1(N21), .A2(B[10]), .Y(N14) );
  XNOR2X1_RVT U301 ( .A1(n115), .A2(A[10]), .Y(ex[0]) );
  INVX1_RVT U302 ( .A(B[11]), .Y(n111) );
  INVX1_RVT U303 ( .A(B[12]), .Y(n112) );
  INVX1_RVT U304 ( .A(B[13]), .Y(n113) );
  INVX1_RVT U305 ( .A(B[14]), .Y(n114) );
  XOR2X1_RVT U306 ( .A1(\r427/carry[4] ), .A2(A[14]), .Y(N25) );
  INVX1_RVT U307 ( .A(A[10]), .Y(N21) );
  INVX1_RVT U308 ( .A(A[11]), .Y(n116) );
  INVX1_RVT U309 ( .A(A[12]), .Y(n117) );
  INVX1_RVT U310 ( .A(A[13]), .Y(n118) );
  INVX1_RVT U311 ( .A(A[14]), .Y(n119) );
  XOR2X1_RVT U312 ( .A1(\add_145_3/carry[4] ), .A2(B[14]), .Y(N36) );
  INVX1_RVT U313 ( .A(n71), .Y(n120) );
  INVX1_RVT U314 ( .A(n75), .Y(n123) );
  INVX1_RVT U315 ( .A(Difference[2]), .Y(n130) );
  INVX1_RVT U316 ( .A(n85), .Y(n133) );
  MUX21X1_RVT U317 ( .A1(B[0]), .A2(B[1]), .S0(Difference[0]), .Y(n134) );
  MUX21X1_RVT U318 ( .A1(B[3]), .A2(B[2]), .S0(n128), .Y(n143) );
  MUX21X1_RVT U319 ( .A1(n134), .A2(n143), .S0(n76), .Y(n135) );
  MUX21X1_RVT U320 ( .A1(B[6]), .A2(B[7]), .S0(Difference[0]), .Y(n144) );
  MUX21X1_RVT U321 ( .A1(B[4]), .A2(B[5]), .S0(Difference[0]), .Y(n142) );
  MUX21X1_RVT U322 ( .A1(B[8]), .A2(B[9]), .S0(Difference[0]), .Y(n145) );
  AND2X1_RVT U323 ( .A1(n156), .A2(n130), .Y(n165) );
  MUX21X1_RVT U324 ( .A1(n136), .A2(n165), .S0(Difference[3]), .Y(n137) );
  AND2X1_RVT U325 ( .A1(n137), .A2(n4), .Y(N45) );
  AND2X1_RVT U326 ( .A1(n162), .A2(n130), .Y(n147) );
  AND3X1_RVT U327 ( .A1(n131), .A2(n4), .A3(n147), .Y(N55) );
  MUX21X1_RVT U328 ( .A1(B[1]), .A2(B[2]), .S0(Difference[0]), .Y(n138) );
  MUX21X1_RVT U329 ( .A1(B[4]), .A2(B[3]), .S0(n128), .Y(n151) );
  MUX21X1_RVT U330 ( .A1(B[8]), .A2(B[7]), .S0(n128), .Y(n152) );
  MUX21X1_RVT U331 ( .A1(B[6]), .A2(B[5]), .S0(n128), .Y(n150) );
  OR2X1_RVT U332 ( .A1(B[9]), .A2(Difference[0]), .Y(n153) );
  AND2X1_RVT U333 ( .A1(n159), .A2(n130), .Y(n166) );
  MUX21X1_RVT U334 ( .A1(n143), .A2(n142), .S0(n76), .Y(n146) );
  MUX21X1_RVT U335 ( .A1(n146), .A2(n163), .S0(Difference[2]), .Y(n148) );
  MUX21X1_RVT U336 ( .A1(n148), .A2(n147), .S0(Difference[3]), .Y(n149) );
  AND2X1_RVT U337 ( .A1(n149), .A2(n4), .Y(N47) );
  MUX21X1_RVT U338 ( .A1(n151), .A2(n150), .S0(n76), .Y(n154) );
  MUX21X1_RVT U339 ( .A1(n154), .A2(n96), .S0(Difference[2]), .Y(n155) );
  AND3X1_RVT U340 ( .A1(n131), .A2(n4), .A3(n155), .Y(N48) );
  MUX21X1_RVT U341 ( .A1(n157), .A2(n156), .S0(Difference[2]), .Y(n158) );
  AND3X1_RVT U342 ( .A1(n131), .A2(n4), .A3(n158), .Y(N49) );
  MUX21X1_RVT U343 ( .A1(n160), .A2(n159), .S0(Difference[2]), .Y(n161) );
  AND3X1_RVT U344 ( .A1(n131), .A2(n4), .A3(n161), .Y(N50) );
  MUX21X1_RVT U345 ( .A1(n163), .A2(n162), .S0(Difference[2]), .Y(n164) );
  AND3X1_RVT U346 ( .A1(n131), .A2(n4), .A3(n164), .Y(N51) );
  AND3X1_RVT U347 ( .A1(n131), .A2(n4), .A3(n165), .Y(N53) );
  AND3X1_RVT U348 ( .A1(n131), .A2(n4), .A3(n166), .Y(N54) );
  MUX21X1_RVT U349 ( .A1(A[0]), .A2(A[1]), .S0(Difference[0]), .Y(n167) );
  MUX21X1_RVT U350 ( .A1(A[6]), .A2(A[7]), .S0(Difference[0]), .Y(n177) );
  MUX21X1_RVT U351 ( .A1(A[4]), .A2(A[5]), .S0(Difference[0]), .Y(n175) );
  MUX21X1_RVT U352 ( .A1(A[8]), .A2(A[9]), .S0(Difference[0]), .Y(n178) );
  AND2X1_RVT U353 ( .A1(n189), .A2(n130), .Y(n198) );
  AND2X1_RVT U354 ( .A1(n170), .A2(n4), .Y(N56) );
  AND2X1_RVT U355 ( .A1(n195), .A2(n130), .Y(n180) );
  AND3X1_RVT U356 ( .A1(n131), .A2(n4), .A3(n180), .Y(N66) );
  MUX21X1_RVT U357 ( .A1(A[1]), .A2(A[2]), .S0(Difference[0]), .Y(n171) );
  MUX21X1_RVT U358 ( .A1(A[4]), .A2(A[3]), .S0(n128), .Y(n184) );
  MUX21X1_RVT U359 ( .A1(n171), .A2(n184), .S0(n76), .Y(n172) );
  MUX21X1_RVT U360 ( .A1(A[8]), .A2(A[7]), .S0(n128), .Y(n185) );
  MUX21X1_RVT U361 ( .A1(A[6]), .A2(A[5]), .S0(n128), .Y(n183) );
  OR2X1_RVT U362 ( .A1(A[9]), .A2(Difference[0]), .Y(n186) );
  AND2X1_RVT U363 ( .A1(n192), .A2(n130), .Y(n199) );
  AND2X1_RVT U364 ( .A1(n174), .A2(n4), .Y(N57) );
  MUX21X1_RVT U365 ( .A1(n176), .A2(n175), .S0(n76), .Y(n179) );
  MUX21X1_RVT U366 ( .A1(n179), .A2(n196), .S0(Difference[2]), .Y(n181) );
  MUX21X1_RVT U367 ( .A1(n181), .A2(n180), .S0(Difference[3]), .Y(n182) );
  AND2X1_RVT U368 ( .A1(n182), .A2(n4), .Y(N58) );
  MUX21X1_RVT U369 ( .A1(n184), .A2(n183), .S0(n76), .Y(n187) );
  MUX21X1_RVT U370 ( .A1(n187), .A2(n92), .S0(Difference[2]), .Y(n188) );
  AND3X1_RVT U371 ( .A1(n131), .A2(n4), .A3(n188), .Y(N59) );
  MUX21X1_RVT U372 ( .A1(n190), .A2(n189), .S0(Difference[2]), .Y(n191) );
  AND3X1_RVT U373 ( .A1(n131), .A2(n4), .A3(n191), .Y(N60) );
  MUX21X1_RVT U374 ( .A1(n193), .A2(n192), .S0(Difference[2]), .Y(n194) );
  AND3X1_RVT U375 ( .A1(n131), .A2(n4), .A3(n194), .Y(N61) );
  MUX21X1_RVT U376 ( .A1(n196), .A2(n195), .S0(Difference[2]), .Y(n197) );
  AND3X1_RVT U377 ( .A1(n131), .A2(n4), .A3(n197), .Y(N62) );
  AND3X1_RVT U378 ( .A1(n131), .A2(n4), .A3(n198), .Y(N64) );
  AND3X1_RVT U379 ( .A1(n131), .A2(n4), .A3(n199), .Y(N65) );
  AND2X1_RVT U380 ( .A1(mts_temp[0]), .A2(mts_temp[11]), .Y(\mmts[1][0] ) );
  MUX21X1_RVT U381 ( .A1(mts_temp[10]), .A2(mts_temp[9]), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[1][10] ) );
  MUX21X1_RVT U382 ( .A1(mts_temp[1]), .A2(mts_temp[0]), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[1][1] ) );
  MUX21X1_RVT U383 ( .A1(mts_temp[6]), .A2(mts_temp[5]), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[1][6] ) );
  MUX21X1_RVT U384 ( .A1(mts_temp[7]), .A2(mts_temp[6]), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[1][7] ) );
  MUX21X1_RVT U385 ( .A1(mts_temp[9]), .A2(mts_temp[8]), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[1][9] ) );
  AND2X1_RVT U386 ( .A1(\mmts[1][0] ), .A2(\mmts[1][11] ), .Y(\mmts[2][0] ) );
  MUX21X1_RVT U387 ( .A1(\mmts[1][10] ), .A2(\mmts[1][9] ), .S0(
        \add_5_root_sub_4_root_sub_182_G11_ni/A[0] ), .Y(\mmts[2][10] ) );
  MUX21X1_RVT U388 ( .A1(\mmts[1][11] ), .A2(\mmts[1][10] ), .S0(
        \add_5_root_sub_4_root_sub_182_G11_ni/A[0] ), .Y(\mmts[2][11] ) );
  MUX21X1_RVT U389 ( .A1(\mmts[1][1] ), .A2(\mmts[1][0] ), .S0(
        \add_5_root_sub_4_root_sub_182_G11_ni/A[0] ), .Y(\mmts[2][1] ) );
  AND2X1_RVT U390 ( .A1(\mmts[2][0] ), .A2(\mmts[2][11] ), .Y(\mmts[3][0] ) );
  MUX21X1_RVT U391 ( .A1(\mmts[2][4] ), .A2(\mmts[2][3] ), .S0(n104), .Y(
        \mmts[3][4] ) );
  MUX21X1_RVT U392 ( .A1(\mmts[2][6] ), .A2(\mmts[2][5] ), .S0(n104), .Y(
        \mmts[3][6] ) );
  MUX21X1_RVT U393 ( .A1(\mmts[3][11] ), .A2(\mmts[3][10] ), .S0(n103), .Y(
        \mmts[4][11] ) );
  MUX21X1_RVT U394 ( .A1(\mmts[3][6] ), .A2(\mmts[3][5] ), .S0(n103), .Y(
        \mmts[4][6] ) );
  MUX21X1_RVT U395 ( .A1(\mmts[3][7] ), .A2(\mmts[3][6] ), .S0(n103), .Y(
        \mmts[4][7] ) );
  MUX21X1_RVT U396 ( .A1(\mmts[3][9] ), .A2(\mmts[3][8] ), .S0(n103), .Y(
        \mmts[4][9] ) );
  MUX21X1_RVT U397 ( .A1(\mmts[4][10] ), .A2(\mmts[4][9] ), .S0(
        \add_4_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[5][10] ) );
  MUX21X1_RVT U398 ( .A1(\mmts[4][2] ), .A2(\mmts[4][1] ), .S0(
        \add_4_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[5][2] ) );
  MUX21X1_RVT U399 ( .A1(\mmts[4][6] ), .A2(\mmts[4][5] ), .S0(
        \add_4_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[5][6] ) );
  MUX21X1_RVT U400 ( .A1(\mmts[4][8] ), .A2(\mmts[4][7] ), .S0(
        \add_4_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[5][8] ) );
  MUX21X1_RVT U401 ( .A1(\mmts[4][9] ), .A2(\mmts[4][8] ), .S0(
        \add_4_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[5][9] ) );
  AND2X1_RVT U402 ( .A1(n13), .A2(\mmts[5][11] ), .Y(\mmts[6][0] ) );
  MUX21X1_RVT U403 ( .A1(\mmts[5][10] ), .A2(\mmts[5][9] ), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/B[0] ), .Y(\mmts[6][10] ) );
  MUX21X1_RVT U404 ( .A1(\mmts[5][11] ), .A2(\mmts[5][10] ), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/B[0] ), .Y(\mmts[6][11] ) );
  MUX21X1_RVT U405 ( .A1(\mmts[5][3] ), .A2(\mmts[5][2] ), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/B[0] ), .Y(\mmts[6][3] ) );
  MUX21X1_RVT U406 ( .A1(\mmts[5][7] ), .A2(\mmts[5][6] ), .S0(
        \add_6_root_sub_4_root_sub_182_G11_ni/B[0] ), .Y(\mmts[6][7] ) );
  AND2X1_RVT U407 ( .A1(\mmts[6][0] ), .A2(\mmts[6][11] ), .Y(\mmts[7][0] ) );
  MUX21X1_RVT U408 ( .A1(\mmts[6][10] ), .A2(\mmts[6][9] ), .S0(n102), .Y(
        \mmts[7][10] ) );
  MUX21X1_RVT U409 ( .A1(\mmts[6][4] ), .A2(\mmts[6][3] ), .S0(n102), .Y(
        \mmts[7][4] ) );
  MUX21X1_RVT U410 ( .A1(\mmts[6][6] ), .A2(\mmts[6][5] ), .S0(n102), .Y(
        \mmts[7][6] ) );
  MUX21X1_RVT U411 ( .A1(\mmts[6][7] ), .A2(\mmts[6][6] ), .S0(n102), .Y(
        \mmts[7][7] ) );
  AND2X1_RVT U412 ( .A1(\mmts[7][0] ), .A2(\mmts[7][11] ), .Y(\mmts[8][0] ) );
  MUX21X1_RVT U413 ( .A1(\mmts[7][10] ), .A2(\mmts[7][9] ), .S0(n101), .Y(
        \mmts[8][10] ) );
  MUX21X1_RVT U414 ( .A1(\mmts[7][11] ), .A2(\mmts[7][10] ), .S0(n101), .Y(
        \mmts[8][11] ) );
  MUX21X1_RVT U415 ( .A1(\mmts[7][6] ), .A2(\mmts[7][5] ), .S0(n101), .Y(
        \mmts[8][6] ) );
  MUX21X1_RVT U416 ( .A1(\mmts[7][7] ), .A2(\mmts[7][6] ), .S0(n101), .Y(
        \mmts[8][7] ) );
  MUX21X1_RVT U417 ( .A1(\mmts[7][8] ), .A2(\mmts[7][7] ), .S0(n101), .Y(
        \mmts[8][8] ) );
  AND2X1_RVT U418 ( .A1(\mmts[8][0] ), .A2(\mmts[8][11] ), .Y(\mmts[9][0] ) );
  MUX21X1_RVT U419 ( .A1(\mmts[8][10] ), .A2(\mmts[8][9] ), .S0(n100), .Y(
        \mmts[9][10] ) );
  MUX21X1_RVT U420 ( .A1(\mmts[8][3] ), .A2(\mmts[8][2] ), .S0(n100), .Y(
        \mmts[9][3] ) );
  MUX21X1_RVT U421 ( .A1(\mmts[8][4] ), .A2(\mmts[8][3] ), .S0(n100), .Y(
        \mmts[9][4] ) );
  MUX21X1_RVT U422 ( .A1(\mmts[8][5] ), .A2(\mmts[8][4] ), .S0(n100), .Y(
        \mmts[9][5] ) );
  MUX21X1_RVT U423 ( .A1(\mmts[8][6] ), .A2(\mmts[8][5] ), .S0(n100), .Y(
        \mmts[9][6] ) );
  MUX21X1_RVT U424 ( .A1(\mmts[8][7] ), .A2(\mmts[8][6] ), .S0(n100), .Y(
        \mmts[9][7] ) );
  MUX21X1_RVT U425 ( .A1(\mmts[8][8] ), .A2(\mmts[8][7] ), .S0(n100), .Y(
        \mmts[9][8] ) );
  MUX21X1_RVT U426 ( .A1(\mmts[8][9] ), .A2(\mmts[8][8] ), .S0(n100), .Y(
        \mmts[9][9] ) );
  AND2X1_RVT U427 ( .A1(\mmts[9][0] ), .A2(\mmts[9][11] ), .Y(\mmts[10][0] )
         );
  MUX21X1_RVT U428 ( .A1(\mmts[9][10] ), .A2(\mmts[9][9] ), .S0(
        \sub_3_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[10][10] ) );
  MUX21X1_RVT U429 ( .A1(\mmts[9][11] ), .A2(\mmts[9][10] ), .S0(
        \sub_3_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[10][11] ) );
  MUX21X1_RVT U430 ( .A1(\mmts[9][6] ), .A2(\mmts[9][5] ), .S0(
        \sub_3_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[10][6] ) );
  MUX21X1_RVT U431 ( .A1(\mmts[9][7] ), .A2(\mmts[9][6] ), .S0(
        \sub_3_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[10][7] ) );
  MUX21X1_RVT U432 ( .A1(\mmts[9][8] ), .A2(\mmts[9][7] ), .S0(
        \sub_3_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[10][8] ) );
  MUX21X1_RVT U433 ( .A1(\mmts[9][9] ), .A2(\mmts[9][8] ), .S0(
        \sub_3_root_sub_4_root_sub_182_G11_ni/CI ), .Y(\mmts[10][9] ) );
  AND2X1_RVT U434 ( .A1(\mmts[10][0] ), .A2(\mmts[10][11] ), .Y(\mmts[11][0] )
         );
  MUX21X1_RVT U435 ( .A1(\mmts[10][10] ), .A2(\mmts[10][9] ), .S0(
        \sub_3_root_sub_4_root_sub_182_G11_ni/B[0] ), .Y(\mmts[11][10] ) );
  MUX21X1_RVT U436 ( .A1(\mmts[10][2] ), .A2(\mmts[10][1] ), .S0(
        \sub_3_root_sub_4_root_sub_182_G11_ni/B[0] ), .Y(\mmts[11][2] ) );
  MUX21X1_RVT U437 ( .A1(\mmts[10][5] ), .A2(\mmts[10][4] ), .S0(
        \sub_3_root_sub_4_root_sub_182_G11_ni/B[0] ), .Y(\mmts[11][5] ) );
  MUX21X1_RVT U438 ( .A1(\mmts[10][7] ), .A2(\mmts[10][6] ), .S0(
        \sub_3_root_sub_4_root_sub_182_G11_ni/B[0] ), .Y(\mmts[11][7] ) );
  MUX21X1_RVT U439 ( .A1(\mmts[10][8] ), .A2(\mmts[10][7] ), .S0(
        \sub_3_root_sub_4_root_sub_182_G11_ni/B[0] ), .Y(\mmts[11][8] ) );
endmodule


module fp16MAC ( a, b, acc, CLK, RESETn );
  input [15:0] a;
  input [15:0] b;
  output [15:0] acc;
  input CLK, RESETn;
  wire   n1, n2, n3;
  wire   [15:0] pAcc;
  wire   [15:0] result_m;

  DFFARX1_RVT \acc_reg[15]  ( .D(pAcc[15]), .CLK(CLK), .RSTB(RESETn), .Q(
        acc[15]) );
  DFFARX1_RVT \acc_reg[14]  ( .D(pAcc[14]), .CLK(CLK), .RSTB(n2), .Q(acc[14])
         );
  DFFARX1_RVT \acc_reg[13]  ( .D(pAcc[13]), .CLK(CLK), .RSTB(n3), .Q(acc[13])
         );
  DFFARX1_RVT \acc_reg[12]  ( .D(pAcc[12]), .CLK(CLK), .RSTB(RESETn), .Q(
        acc[12]) );
  DFFARX1_RVT \acc_reg[11]  ( .D(pAcc[11]), .CLK(CLK), .RSTB(n2), .Q(acc[11])
         );
  DFFARX1_RVT \acc_reg[10]  ( .D(pAcc[10]), .CLK(CLK), .RSTB(n3), .Q(acc[10])
         );
  DFFARX1_RVT \acc_reg[9]  ( .D(pAcc[9]), .CLK(CLK), .RSTB(RESETn), .Q(acc[9])
         );
  DFFARX1_RVT \acc_reg[8]  ( .D(pAcc[8]), .CLK(CLK), .RSTB(n2), .Q(acc[8]) );
  DFFARX1_RVT \acc_reg[7]  ( .D(pAcc[7]), .CLK(CLK), .RSTB(n3), .Q(acc[7]) );
  DFFARX1_RVT \acc_reg[6]  ( .D(pAcc[6]), .CLK(CLK), .RSTB(RESETn), .Q(acc[6])
         );
  DFFARX1_RVT \acc_reg[5]  ( .D(pAcc[5]), .CLK(CLK), .RSTB(n2), .Q(acc[5]) );
  DFFARX1_RVT \acc_reg[4]  ( .D(pAcc[4]), .CLK(CLK), .RSTB(n3), .Q(acc[4]) );
  DFFARX1_RVT \acc_reg[3]  ( .D(pAcc[3]), .CLK(CLK), .RSTB(RESETn), .Q(acc[3])
         );
  DFFARX1_RVT \acc_reg[2]  ( .D(pAcc[2]), .CLK(CLK), .RSTB(n2), .Q(acc[2]) );
  DFFARX1_RVT \acc_reg[1]  ( .D(pAcc[1]), .CLK(CLK), .RSTB(n3), .Q(acc[1]) );
  DFFARX1_RVT \acc_reg[0]  ( .D(pAcc[0]), .CLK(CLK), .RSTB(n2), .Q(acc[0]) );
  fp16multiplier m1 ( .A(a), .B(b), .CLK(CLK), .RESETn(n2), .out(result_m) );
  fp16adder a1 ( .A(pAcc), .B(result_m), .CLK(CLK), .RESETn(n3), .sum(pAcc) );
  INVX1_RVT U3 ( .A(n1), .Y(n2) );
  INVX1_RVT U4 ( .A(n1), .Y(n3) );
  INVX1_RVT U5 ( .A(RESETn), .Y(n1) );
endmodule

