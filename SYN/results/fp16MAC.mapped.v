/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Fri Dec 23 23:44:50 2022
/////////////////////////////////////////////////////////////


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
  XOR2X1_RVT U6 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U7 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U8 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
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
  XOR2X1_RVT U4 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U5 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
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
  XOR2X1_RVT U3 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U4 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U5 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U6 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U7 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U8 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U9 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U10 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U11 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U12 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U13 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
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
  XOR2X1_RVT U3 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U4 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U5 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U6 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U7 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U8 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U9 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U10 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
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
  XOR2X1_RVT U8 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U9 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U10 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U11 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U12 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U13 ( .A1(GG[8]), .A2(P[9]), .Y(Sum[9]) );
  XOR2X1_RVT U14 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
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
  XOR2X1_RVT U1 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U2 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U3 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
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
  XOR2X1_RVT U5 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U6 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U7 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U8 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U9 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U10 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U11 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U12 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U13 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
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
  XOR2X1_RVT U3 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U4 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U5 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U6 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U7 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U8 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U9 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U10 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U11 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U12 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U13 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
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
  XOR2X1_RVT U2 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U3 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U4 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U5 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U6 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U7 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U8 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U9 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U10 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U11 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U12 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U13 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U14 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
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
  XOR2X1_RVT U1 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U2 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U3 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
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
  XOR2X1_RVT U5 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U6 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U7 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U8 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U9 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U10 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U11 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U12 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U13 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
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
  XOR2X1_RVT U3 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U4 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U5 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U6 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U7 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U8 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U9 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U10 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U11 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U12 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U13 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
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
  XOR2X1_RVT U2 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U3 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U4 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U5 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U6 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U7 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U8 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U9 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U10 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U11 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U12 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U13 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U14 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
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
  XOR2X1_RVT U4 ( .A1(GG[8]), .A2(P[9]), .Y(Sum[9]) );
  XOR2X1_RVT U5 ( .A1(GG[10]), .A2(P[11]), .Y(Sum[11]) );
  XOR2X1_RVT U6 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U7 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U8 ( .A1(A[11]), .A2(B[11]), .Y(P[11]) );
  XOR2X1_RVT U9 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U10 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U11 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U12 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
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
  XOR2X1_RVT U2 ( .A1(A[9]), .A2(B[9]), .Y(P[9]) );
  XOR2X1_RVT U3 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U4 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U5 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U6 ( .A1(A[12]), .A2(B[12]), .Y(P[12]) );
  XOR2X1_RVT U7 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U8 ( .A1(GG[8]), .A2(P[9]), .Y(Sum[9]) );
  XOR2X1_RVT U9 ( .A1(GG[11]), .A2(P[12]), .Y(Sum[12]) );
  XOR2X1_RVT U10 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U11 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U12 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U13 ( .A1(A[11]), .A2(B[11]), .Y(P[11]) );
  XOR2X1_RVT U14 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U15 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U16 ( .A1(GG[9]), .A2(P[10]), .Y(Sum[10]) );
  XOR2X1_RVT U17 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U18 ( .A1(GG[10]), .A2(P[11]), .Y(Sum[11]) );
  XOR2X1_RVT U19 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U20 ( .A1(GG[15]), .A2(P[16]), .Y(Sum[16]) );
  XOR2X1_RVT U21 ( .A1(A[10]), .A2(B[10]), .Y(P[10]) );
  XOR2X1_RVT U22 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U23 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U24 ( .A1(GG[12]), .A2(P[13]), .Y(Sum[13]) );
  XOR2X1_RVT U25 ( .A1(GG[13]), .A2(P[14]), .Y(Sum[14]) );
  XOR2X1_RVT U26 ( .A1(GG[14]), .A2(P[15]), .Y(Sum[15]) );
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


module menMult ( a, b, out );
  input [9:0] a;
  input [9:0] b;
  output [21:0] out;


  karastuba_11bit menti ( .a({1'b1, a}), .b({1'b1, b}), .out(out) );
endmodule


module encoder_a ( A, B, out );
  input [14:0] A;
  input [14:0] B;
  output [2:0] out;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n1, n2, n3, n4;

  NOR4X1_RVT U2 ( .A1(B[1]), .A2(B[0]), .A3(n12), .A4(n13), .Y(n6) );
  NOR4X1_RVT U3 ( .A1(A[1]), .A2(A[0]), .A3(n16), .A4(n17), .Y(n8) );
  NAND2X0_RVT U8 ( .A1(n9), .A2(n10), .Y(out[1]) );
  NAND4X0_RVT U9 ( .A1(n4), .A2(n3), .A3(n6), .A4(n11), .Y(n10) );
  NOR3X0_RVT U10 ( .A1(B[13]), .A2(B[14]), .A3(B[12]), .Y(n11) );
  OR3X1_RVT U11 ( .A1(B[6]), .A2(B[5]), .A3(n14), .Y(n13) );
  OR3X1_RVT U12 ( .A1(B[9]), .A2(B[8]), .A3(B[7]), .Y(n14) );
  OR3X1_RVT U13 ( .A1(B[4]), .A2(B[3]), .A3(B[2]), .Y(n12) );
  NAND4X0_RVT U14 ( .A1(n2), .A2(n1), .A3(n8), .A4(n15), .Y(n9) );
  NOR3X0_RVT U15 ( .A1(A[13]), .A2(A[14]), .A3(A[12]), .Y(n15) );
  OR3X1_RVT U16 ( .A1(A[6]), .A2(A[5]), .A3(n18), .Y(n17) );
  OR3X1_RVT U17 ( .A1(A[9]), .A2(A[8]), .A3(A[7]), .Y(n18) );
  OR3X1_RVT U18 ( .A1(A[4]), .A2(A[3]), .A3(A[2]), .Y(n16) );
  NAND2X0_RVT U19 ( .A1(n5), .A2(n7), .Y(out[0]) );
  NAND4X0_RVT U20 ( .A1(A[11]), .A2(A[10]), .A3(A[12]), .A4(n19), .Y(n7) );
  AND2X1_RVT U21 ( .A1(A[14]), .A2(A[13]), .Y(n19) );
  NAND4X0_RVT U22 ( .A1(B[11]), .A2(B[10]), .A3(B[12]), .A4(n20), .Y(n5) );
  AND2X1_RVT U23 ( .A1(B[14]), .A2(B[13]), .Y(n20) );
  OAI22X1_RVT U1 ( .A1(n5), .A2(n6), .A3(n7), .A4(n8), .Y(out[2]) );
  INVX1_RVT U4 ( .A(A[11]), .Y(n1) );
  INVX1_RVT U5 ( .A(A[10]), .Y(n2) );
  INVX1_RVT U6 ( .A(B[11]), .Y(n3) );
  INVX1_RVT U7 ( .A(B[10]), .Y(n4) );
endmodule


module G_Cell_0 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_352 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_351 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_350 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_349 ( G0, G1, P1, GG );
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
  G_Cell_352 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_351 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_350 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_349 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U2 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U3 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U4 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U6 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U7 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U8 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U9 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U10 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
endmodule


module G_Cell_348 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_347 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_346 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_345 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_344 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw5_18 ( A, B, Cin, Sum, Cout );
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
  G_Cell_348 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_347 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_346 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_345 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_344 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U2 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U3 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U4 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U6 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U7 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U8 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U9 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U10 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
endmodule


module G_Cell_343 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_342 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_341 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_340 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_339 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw5_17 ( A, B, Cin, Sum, Cout );
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
  G_Cell_343 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_342 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_341 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_340 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_339 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U2 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U3 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U4 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
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
  wire   o1, to1, to2, n1;
  wire   [4:0] temp;
  wire   [4:0] temp_s;
  wire   [4:0] temp_ns;

  AO22X1_RVT U4 ( .A1(temp_s[4]), .A2(shift), .A3(temp_ns[4]), .A4(n1), .Y(
        out[4]) );
  AO22X1_RVT U5 ( .A1(temp_s[3]), .A2(shift), .A3(temp_ns[3]), .A4(n1), .Y(
        out[3]) );
  AO22X1_RVT U6 ( .A1(temp_s[2]), .A2(shift), .A3(temp_ns[2]), .A4(n1), .Y(
        out[2]) );
  AO22X1_RVT U7 ( .A1(temp_s[1]), .A2(shift), .A3(temp_ns[1]), .A4(n1), .Y(
        out[1]) );
  AO22X1_RVT U8 ( .A1(temp_s[0]), .A2(shift), .A3(temp_ns[0]), .A4(n1), .Y(
        out[0]) );
  AO221X1_RVT U9 ( .A1(to2), .A2(n1), .A3(to1), .A4(shift), .A5(o1), .Y(cout)
         );
  RCA_bw5_0 badder1 ( .A(A), .B(B), .Cin(1'b1), .Sum(temp), .Cout(o1) );
  RCA_bw5_18 badder2 ( .A(temp), .B({1'b1, 1'b0, 1'b0, 1'b0, 1'b0}), .Cin(1'b1), .Sum(temp_s), .Cout(to1) );
  RCA_bw5_17 badder3 ( .A(temp), .B({1'b1, 1'b0, 1'b0, 1'b0, 1'b0}), .Cin(1'b0), .Sum(temp_ns), .Cout(to2) );
  INVX1_RVT U3 ( .A(shift), .Y(n1) );
endmodule


module G_Cell_338 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_337 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_336 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_335 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_334 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_333 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_332 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_331 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_330 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_329 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_328 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_327 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw12_0 ( A, B, Cin, Sum, Cout );
  input [12:1] A;
  input [12:1] B;
  output [12:1] Sum;
  input Cin;
  output Cout;

  wire   [12:1] G;
  wire   [12:1] P;
  wire   [11:1] GG;

  AND2X1_RVT U25 ( .A1(A[9]), .A2(B[9]), .Y(G[9]) );
  AND2X1_RVT U26 ( .A1(A[8]), .A2(B[8]), .Y(G[8]) );
  AND2X1_RVT U27 ( .A1(A[7]), .A2(B[7]), .Y(G[7]) );
  AND2X1_RVT U28 ( .A1(A[6]), .A2(B[6]), .Y(G[6]) );
  AND2X1_RVT U29 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U30 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U31 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U32 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U33 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  AND2X1_RVT U34 ( .A1(A[12]), .A2(B[12]), .Y(G[12]) );
  AND2X1_RVT U35 ( .A1(A[11]), .A2(B[11]), .Y(G[11]) );
  AND2X1_RVT U36 ( .A1(A[10]), .A2(B[10]), .Y(G[10]) );
  G_Cell_338 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_337 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_336 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_335 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_334 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        GG[5]) );
  G_Cell_333 \loop_1[5].genblk1.U1  ( .G0(GG[5]), .G1(G[6]), .P1(P[6]), .GG(
        GG[6]) );
  G_Cell_332 \loop_1[6].genblk1.U1  ( .G0(GG[6]), .G1(G[7]), .P1(P[7]), .GG(
        GG[7]) );
  G_Cell_331 \loop_1[7].genblk1.U1  ( .G0(GG[7]), .G1(G[8]), .P1(P[8]), .GG(
        GG[8]) );
  G_Cell_330 \loop_1[8].genblk1.U1  ( .G0(GG[8]), .G1(G[9]), .P1(P[9]), .GG(
        GG[9]) );
  G_Cell_329 \loop_1[9].genblk1.U1  ( .G0(GG[9]), .G1(G[10]), .P1(P[10]), .GG(
        GG[10]) );
  G_Cell_328 \loop_1[10].genblk1.U1  ( .G0(GG[10]), .G1(G[11]), .P1(P[11]), 
        .GG(GG[11]) );
  G_Cell_327 \loop_1[11].genblk1.U1  ( .G0(GG[11]), .G1(G[12]), .P1(P[12]), 
        .GG(Cout) );
  XOR2X1_RVT U1 ( .A1(GG[11]), .A2(P[12]), .Y(Sum[12]) );
  XOR2X1_RVT U2 ( .A1(GG[9]), .A2(P[10]), .Y(Sum[10]) );
  XOR2X1_RVT U3 ( .A1(GG[8]), .A2(P[9]), .Y(Sum[9]) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U5 ( .A1(GG[10]), .A2(P[11]), .Y(Sum[11]) );
  XOR2X1_RVT U6 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U7 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U8 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U9 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U10 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U11 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U12 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U13 ( .A1(A[12]), .A2(B[12]), .Y(P[12]) );
  XOR2X1_RVT U14 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U15 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U16 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U17 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U18 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U19 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U20 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U21 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U22 ( .A1(A[9]), .A2(B[9]), .Y(P[9]) );
  XOR2X1_RVT U23 ( .A1(A[10]), .A2(B[10]), .Y(P[10]) );
  XOR2X1_RVT U24 ( .A1(A[11]), .A2(B[11]), .Y(P[11]) );
endmodule


module rounder ( multi, out, cout );
  input [23:2] multi;
  output [9:0] out;
  output cout;
  wire   rndup, n3, n4, n5, n6, n7, n1, n2;
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
  RCA_bw12_0 rnd_add ( .A(multi[23:12]), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Cin(rndup), .Sum({cout, 
        rnd_p}) );
  INVX1_RVT U5 ( .A(cout), .Y(n1) );
  INVX1_RVT U6 ( .A(multi[23]), .Y(n2) );
endmodule


module encoder_b ( sig, bmp, product );
  input [2:0] sig;
  input [14:0] bmp;
  output [14:0] product;
  wire   n1, n2, n3, n4;

  AND2X1_RVT U3 ( .A1(bmp[9]), .A2(n1), .Y(product[9]) );
  AND2X1_RVT U4 ( .A1(bmp[8]), .A2(n1), .Y(product[8]) );
  AND2X1_RVT U5 ( .A1(bmp[7]), .A2(n1), .Y(product[7]) );
  AND2X1_RVT U6 ( .A1(bmp[6]), .A2(n1), .Y(product[6]) );
  AND2X1_RVT U7 ( .A1(bmp[5]), .A2(n1), .Y(product[5]) );
  AND2X1_RVT U8 ( .A1(bmp[4]), .A2(n1), .Y(product[4]) );
  AND2X1_RVT U9 ( .A1(bmp[3]), .A2(n1), .Y(product[3]) );
  AND2X1_RVT U10 ( .A1(bmp[2]), .A2(n1), .Y(product[2]) );
  AND2X1_RVT U11 ( .A1(bmp[1]), .A2(n1), .Y(product[1]) );
  AO21X1_RVT U13 ( .A1(bmp[14]), .A2(n2), .A3(n3), .Y(product[14]) );
  AO21X1_RVT U14 ( .A1(bmp[13]), .A2(n2), .A3(n3), .Y(product[13]) );
  AO21X1_RVT U15 ( .A1(bmp[12]), .A2(n2), .A3(n3), .Y(product[12]) );
  AO21X1_RVT U16 ( .A1(bmp[11]), .A2(n2), .A3(n3), .Y(product[11]) );
  AO21X1_RVT U17 ( .A1(bmp[10]), .A2(n2), .A3(n3), .Y(product[10]) );
  OR2X1_RVT U18 ( .A1(n4), .A2(sig[0]), .Y(n3) );
  AO21X1_RVT U19 ( .A1(bmp[0]), .A2(n2), .A3(n4), .Y(product[0]) );
  AO21X1_RVT U20 ( .A1(sig[1]), .A2(sig[0]), .A3(sig[2]), .Y(n4) );
  NOR2X0_RVT U21 ( .A1(sig[0]), .A2(sig[1]), .Y(n2) );
  NOR3X0_RVT U12 ( .A1(sig[1]), .A2(sig[2]), .A3(sig[0]), .Y(n1) );
endmodule


module fp16multiplier ( A, B, CLK, RESETn, out );
  input [15:0] A;
  input [15:0] B;
  output [15:0] out;
  input CLK, RESETn;
  wire   sign, cout, n2;
  wire   [21:0] multi;
  wire   [14:0] product;
  wire   [2:0] sig_en;
  wire   [14:0] bmp;

  DFFARX1_RVT \out_reg[14]  ( .D(product[14]), .CLK(CLK), .RSTB(n2), .Q(
        out[14]) );
  DFFARX1_RVT \out_reg[13]  ( .D(product[13]), .CLK(CLK), .RSTB(n2), .Q(
        out[13]) );
  DFFARX1_RVT \out_reg[12]  ( .D(product[12]), .CLK(CLK), .RSTB(n2), .Q(
        out[12]) );
  DFFARX1_RVT \out_reg[11]  ( .D(product[11]), .CLK(CLK), .RSTB(n2), .Q(
        out[11]) );
  DFFARX1_RVT \out_reg[9]  ( .D(product[9]), .CLK(CLK), .RSTB(n2), .Q(out[9])
         );
  DFFARX1_RVT \out_reg[8]  ( .D(product[8]), .CLK(CLK), .RSTB(n2), .Q(out[8])
         );
  DFFARX1_RVT \out_reg[7]  ( .D(product[7]), .CLK(CLK), .RSTB(n2), .Q(out[7])
         );
  DFFARX1_RVT \out_reg[6]  ( .D(product[6]), .CLK(CLK), .RSTB(n2), .Q(out[6])
         );
  DFFARX1_RVT \out_reg[5]  ( .D(product[5]), .CLK(CLK), .RSTB(n2), .Q(out[5])
         );
  DFFARX1_RVT \out_reg[4]  ( .D(product[4]), .CLK(CLK), .RSTB(n2), .Q(out[4])
         );
  DFFARX1_RVT \out_reg[3]  ( .D(product[3]), .CLK(CLK), .RSTB(RESETn), .Q(
        out[3]) );
  DFFARX1_RVT \out_reg[2]  ( .D(product[2]), .CLK(CLK), .RSTB(RESETn), .Q(
        out[2]) );
  DFFARX1_RVT \out_reg[1]  ( .D(product[1]), .CLK(CLK), .RSTB(RESETn), .Q(
        out[1]) );
  DFFARX1_RVT \out_reg[0]  ( .D(product[0]), .CLK(CLK), .RSTB(n2), .Q(out[0])
         );
  menMult U0 ( .a(A[9:0]), .b(B[9:0]), .out(multi) );
  encoder_a U1 ( .A(A[14:0]), .B(B[14:0]), .out(sig_en) );
  biasAdder U2 ( .A(A[14:10]), .B(B[14:10]), .out(bmp[14:10]), .shift(cout) );
  rounder U3 ( .multi(multi), .out(bmp[9:0]), .cout(cout) );
  encoder_b U4 ( .sig(sig_en), .bmp(bmp), .product(product) );
  DFFARX1_RVT \out_reg[15]  ( .D(sign), .CLK(CLK), .RSTB(n2), .Q(out[15]) );
  DFFARX1_RVT \out_reg[10]  ( .D(product[10]), .CLK(CLK), .RSTB(n2), .Q(
        out[10]) );
  NBUFFX2_RVT U7 ( .A(RESETn), .Y(n2) );
  XOR2X1_RVT U8 ( .A1(B[15]), .A2(A[15]), .Y(sign) );
endmodule


module encoder_add ( A, B, product, out );
  input [15:0] A;
  input [15:0] B;
  input [15:0] product;
  output [15:0] out;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;

  NOR4X1_RVT U4 ( .A1(B[13]), .A2(B[14]), .A3(B[12]), .A4(n29), .Y(n28) );
  NOR4X1_RVT U5 ( .A1(A[13]), .A2(A[14]), .A3(A[12]), .A4(n31), .Y(n30) );
  AO222X1_RVT U15 ( .A1(A[9]), .A2(n3), .A3(product[9]), .A4(n1), .A5(B[9]), 
        .A6(n2), .Y(out[9]) );
  AO222X1_RVT U16 ( .A1(A[8]), .A2(n3), .A3(product[8]), .A4(n1), .A5(B[8]), 
        .A6(n2), .Y(out[8]) );
  AO222X1_RVT U17 ( .A1(A[7]), .A2(n3), .A3(product[7]), .A4(n1), .A5(B[7]), 
        .A6(n2), .Y(out[7]) );
  AO222X1_RVT U18 ( .A1(A[6]), .A2(n3), .A3(product[6]), .A4(n1), .A5(B[6]), 
        .A6(n2), .Y(out[6]) );
  AO222X1_RVT U19 ( .A1(A[5]), .A2(n3), .A3(product[5]), .A4(n1), .A5(B[5]), 
        .A6(n2), .Y(out[5]) );
  AO222X1_RVT U20 ( .A1(A[4]), .A2(n3), .A3(product[4]), .A4(n1), .A5(B[4]), 
        .A6(n2), .Y(out[4]) );
  AO222X1_RVT U21 ( .A1(A[3]), .A2(n3), .A3(product[3]), .A4(n1), .A5(B[3]), 
        .A6(n2), .Y(out[3]) );
  AO222X1_RVT U22 ( .A1(A[2]), .A2(n3), .A3(product[2]), .A4(n1), .A5(B[2]), 
        .A6(n2), .Y(out[2]) );
  AO222X1_RVT U23 ( .A1(A[1]), .A2(n3), .A3(product[1]), .A4(n1), .A5(B[1]), 
        .A6(n2), .Y(out[1]) );
  AO222X1_RVT U24 ( .A1(product[15]), .A2(n1), .A3(A[15]), .A4(n13), .A5(B[15]), .A6(n2), .Y(out[15]) );
  AO21X1_RVT U25 ( .A1(n6), .A2(n14), .A3(n3), .Y(n13) );
  AO221X1_RVT U26 ( .A1(product[14]), .A2(n1), .A3(n3), .A4(A[14]), .A5(n15), 
        .Y(out[14]) );
  AO21X1_RVT U27 ( .A1(n2), .A2(B[14]), .A3(n16), .Y(n15) );
  AO221X1_RVT U28 ( .A1(product[13]), .A2(n1), .A3(n3), .A4(A[13]), .A5(n17), 
        .Y(out[13]) );
  AO21X1_RVT U29 ( .A1(n2), .A2(B[13]), .A3(n16), .Y(n17) );
  AO221X1_RVT U30 ( .A1(product[12]), .A2(n1), .A3(n3), .A4(A[12]), .A5(n18), 
        .Y(out[12]) );
  AO21X1_RVT U31 ( .A1(n2), .A2(B[12]), .A3(n16), .Y(n18) );
  AO221X1_RVT U32 ( .A1(product[11]), .A2(n1), .A3(n3), .A4(A[11]), .A5(n19), 
        .Y(out[11]) );
  AO21X1_RVT U33 ( .A1(n2), .A2(B[11]), .A3(n16), .Y(n19) );
  AO221X1_RVT U34 ( .A1(product[10]), .A2(n1), .A3(n3), .A4(A[10]), .A5(n20), 
        .Y(out[10]) );
  AO21X1_RVT U35 ( .A1(n2), .A2(B[10]), .A3(n16), .Y(n20) );
  NAND2X0_RVT U36 ( .A1(n21), .A2(n22), .Y(n16) );
  NAND3X0_RVT U37 ( .A1(n21), .A2(n23), .A3(n24), .Y(out[0]) );
  AOI222X1_RVT U38 ( .A1(A[0]), .A2(n3), .A3(n6), .A4(n4), .A5(product[0]), 
        .A6(n1), .Y(n24) );
  AO21X1_RVT U40 ( .A1(n25), .A2(n26), .A3(n27), .Y(n22) );
  NAND3X0_RVT U41 ( .A1(n10), .A2(n7), .A3(n21), .Y(n27) );
  NAND2X0_RVT U44 ( .A1(B[0]), .A2(n2), .Y(n23) );
  OR2X1_RVT U46 ( .A1(A[10]), .A2(A[11]), .Y(n31) );
  OA22X1_RVT U47 ( .A1(n26), .A2(n32), .A3(n25), .A4(n33), .Y(n21) );
  AND4X1_RVT U48 ( .A1(n12), .A2(n11), .A3(n34), .A4(n35), .Y(n33) );
  NOR3X0_RVT U49 ( .A1(B[5]), .A2(B[6]), .A3(n36), .Y(n35) );
  OR3X1_RVT U50 ( .A1(B[8]), .A2(B[9]), .A3(B[7]), .Y(n36) );
  NOR3X0_RVT U51 ( .A1(B[3]), .A2(B[4]), .A3(B[2]), .Y(n34) );
  AND2X1_RVT U53 ( .A1(B[14]), .A2(B[13]), .Y(n37) );
  AND4X1_RVT U54 ( .A1(n9), .A2(n8), .A3(n38), .A4(n39), .Y(n32) );
  NOR3X0_RVT U55 ( .A1(A[5]), .A2(A[6]), .A3(n40), .Y(n39) );
  OR3X1_RVT U56 ( .A1(A[8]), .A2(A[9]), .A3(A[7]), .Y(n40) );
  NOR3X0_RVT U57 ( .A1(A[3]), .A2(A[4]), .A3(A[2]), .Y(n38) );
  NAND4X0_RVT U58 ( .A1(A[11]), .A2(A[10]), .A3(A[12]), .A4(n41), .Y(n26) );
  AND2X1_RVT U59 ( .A1(A[14]), .A2(A[13]), .Y(n41) );
  AND3X1_RVT U3 ( .A1(n25), .A2(n26), .A3(n5), .Y(n1) );
  AND2X1_RVT U6 ( .A1(n30), .A2(n21), .Y(n2) );
  AND3X1_RVT U7 ( .A1(n21), .A2(n7), .A3(n28), .Y(n3) );
  NAND4X0_RVT U8 ( .A1(B[11]), .A2(B[10]), .A3(B[12]), .A4(n37), .Y(n25) );
  OR2X1_RVT U9 ( .A1(B[10]), .A2(B[11]), .Y(n29) );
  XNOR2X1_RVT U10 ( .A1(A[15]), .A2(B[15]), .Y(n14) );
  INVX1_RVT U11 ( .A(n14), .Y(n4) );
  INVX1_RVT U12 ( .A(n27), .Y(n5) );
  INVX1_RVT U13 ( .A(n22), .Y(n6) );
  INVX1_RVT U14 ( .A(n30), .Y(n7) );
  INVX1_RVT U39 ( .A(A[1]), .Y(n8) );
  INVX1_RVT U42 ( .A(A[0]), .Y(n9) );
  INVX1_RVT U43 ( .A(n28), .Y(n10) );
  INVX1_RVT U45 ( .A(B[1]), .Y(n11) );
  INVX1_RVT U52 ( .A(B[0]), .Y(n12) );
endmodule


module G_Cell_326 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_325 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_324 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_323 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_322 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_321 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw6 ( A, B, Cin, Sum, Cout );
  input [6:1] A;
  input [6:1] B;
  output [6:1] Sum;
  input Cin;
  output Cout;

  wire   [6:1] G;
  wire   [6:1] P;
  wire   [5:1] GG;

  AND2X1_RVT U13 ( .A1(A[6]), .A2(B[6]), .Y(G[6]) );
  AND2X1_RVT U14 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U15 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U16 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U17 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U18 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  G_Cell_326 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_325 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_324 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_323 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_322 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        GG[5]) );
  G_Cell_321 \loop_1[5].genblk1.U1  ( .G0(GG[5]), .G1(G[6]), .P1(P[6]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U2 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U3 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U4 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U5 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U6 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U7 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U8 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U9 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U10 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U11 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U12 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
endmodule


module G_Cell_320 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_319 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_318 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_317 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_316 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw5_16 ( A, B, Cin, Sum, Cout );
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
  G_Cell_320 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_319 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_318 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_317 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_316 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U2 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U3 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U4 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U6 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U7 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U8 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U9 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U10 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
endmodule


module G_Cell_315 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_314 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_313 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_312 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_311 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw5_15 ( A, B, Cin, Sum, Cout );
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
  G_Cell_315 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_314 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_313 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_312 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_311 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U2 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U3 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U4 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U6 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U7 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  AND2X1_RVT U8 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  XOR2X1_RVT U9 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U10 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U15 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
endmodule


module G_Cell_310 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_309 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_308 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_307 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_306 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw5_14 ( A, B, Cin, Sum, Cout );
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
  G_Cell_310 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_309 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_308 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_307 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_306 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U2 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U3 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U4 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U5 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U6 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U7 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U8 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U9 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U10 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
endmodule


module G_Cell_305 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_304 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_303 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_302 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_301 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw5_13 ( A, B, Cin, Sum, Cout );
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
  G_Cell_305 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_304 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_303 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_302 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_301 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U2 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U3 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U4 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U5 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U6 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U7 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U8 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U9 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  AND2X1_RVT U10 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  XOR2X1_RVT U15 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
endmodule


module compshift ( expA, expB, mtsA, mtsB, expA_R, expB_R, mtsA_R, mtsB_R, S
 );
  input [4:0] expA;
  input [4:0] expB;
  input [10:0] mtsA;
  input [10:0] mtsB;
  output [4:0] expA_R;
  output [4:0] expB_R;
  output [10:0] mtsA_R;
  output [21:0] mtsB_R;
  output S;
  wire   N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30,
         N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44,
         N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58,
         N59, N60, n21, n23, n24, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n19, n20, n22, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163;
  wire   [5:0] ex;
  wire   [4:0] Difference1;
  wire   [4:0] Difference2;
  wire   [4:0] expA_T;
  wire   [4:0] expB_T;
  wire   [4:0] Difference;

  NOR4X1_RVT U8 ( .A1(ex[2]), .A2(ex[1]), .A3(ex[0]), .A4(n24), .Y(n21) );
  AO22X1_RVT U22 ( .A1(N26), .A2(n15), .A3(N48), .A4(n17), .Y(mtsB_R[9]) );
  AO22X1_RVT U23 ( .A1(N25), .A2(n15), .A3(N47), .A4(n17), .Y(mtsB_R[8]) );
  AO22X1_RVT U24 ( .A1(N24), .A2(n15), .A3(N46), .A4(n17), .Y(mtsB_R[7]) );
  AO22X1_RVT U25 ( .A1(N23), .A2(n15), .A3(N45), .A4(n17), .Y(mtsB_R[6]) );
  AO22X1_RVT U26 ( .A1(N22), .A2(n15), .A3(N44), .A4(n17), .Y(mtsB_R[5]) );
  AO22X1_RVT U27 ( .A1(N21), .A2(n15), .A3(N43), .A4(n17), .Y(mtsB_R[4]) );
  AO22X1_RVT U28 ( .A1(N20), .A2(n15), .A3(N42), .A4(n17), .Y(mtsB_R[3]) );
  AO22X1_RVT U29 ( .A1(N19), .A2(n15), .A3(N41), .A4(n17), .Y(mtsB_R[2]) );
  AO222X1_RVT U30 ( .A1(N38), .A2(n25), .A3(N60), .A4(n17), .A5(mtsB[10]), 
        .A6(n21), .Y(mtsB_R[21]) );
  AO222X1_RVT U31 ( .A1(N37), .A2(n25), .A3(N59), .A4(n8), .A5(mtsB[9]), .A6(
        n21), .Y(mtsB_R[20]) );
  AO22X1_RVT U32 ( .A1(N18), .A2(n15), .A3(N40), .A4(n17), .Y(mtsB_R[1]) );
  AO222X1_RVT U35 ( .A1(N34), .A2(n25), .A3(N56), .A4(n10), .A5(mtsB[6]), .A6(
        n21), .Y(mtsB_R[17]) );
  AO222X1_RVT U36 ( .A1(N33), .A2(n25), .A3(N55), .A4(n8), .A5(mtsB[5]), .A6(
        n21), .Y(mtsB_R[16]) );
  AO222X1_RVT U37 ( .A1(N32), .A2(n25), .A3(N54), .A4(n10), .A5(mtsB[4]), .A6(
        n21), .Y(mtsB_R[15]) );
  AO222X1_RVT U38 ( .A1(N31), .A2(n25), .A3(N53), .A4(n8), .A5(mtsB[3]), .A6(
        n21), .Y(mtsB_R[14]) );
  AO222X1_RVT U39 ( .A1(N30), .A2(n25), .A3(N52), .A4(n10), .A5(mtsB[2]), .A6(
        n21), .Y(mtsB_R[13]) );
  AO222X1_RVT U40 ( .A1(N29), .A2(n15), .A3(N51), .A4(n8), .A5(mtsB[1]), .A6(
        n21), .Y(mtsB_R[12]) );
  AO222X1_RVT U41 ( .A1(N28), .A2(n15), .A3(N50), .A4(n9), .A5(mtsB[0]), .A6(
        n21), .Y(mtsB_R[11]) );
  AO22X1_RVT U42 ( .A1(N27), .A2(n15), .A3(N49), .A4(n17), .Y(mtsB_R[10]) );
  AO22X1_RVT U43 ( .A1(N17), .A2(n15), .A3(N39), .A4(n17), .Y(mtsB_R[0]) );
  AO22X1_RVT U44 ( .A1(mtsB[9]), .A2(n10), .A3(mtsA[9]), .A4(n1), .Y(mtsA_R[9]) );
  AO22X1_RVT U45 ( .A1(mtsB[8]), .A2(n9), .A3(mtsA[8]), .A4(n1), .Y(mtsA_R[8])
         );
  AO22X1_RVT U46 ( .A1(mtsB[7]), .A2(n10), .A3(mtsA[7]), .A4(n1), .Y(mtsA_R[7]) );
  AO22X1_RVT U47 ( .A1(mtsB[6]), .A2(n10), .A3(mtsA[6]), .A4(n1), .Y(mtsA_R[6]) );
  AO22X1_RVT U48 ( .A1(mtsB[5]), .A2(n9), .A3(mtsA[5]), .A4(n1), .Y(mtsA_R[5])
         );
  AO22X1_RVT U49 ( .A1(mtsB[4]), .A2(n10), .A3(mtsA[4]), .A4(n1), .Y(mtsA_R[4]) );
  AO22X1_RVT U50 ( .A1(mtsB[3]), .A2(n10), .A3(mtsA[3]), .A4(n1), .Y(mtsA_R[3]) );
  AO22X1_RVT U51 ( .A1(mtsB[2]), .A2(n10), .A3(mtsA[2]), .A4(n1), .Y(mtsA_R[2]) );
  AO22X1_RVT U52 ( .A1(mtsB[1]), .A2(n9), .A3(mtsA[1]), .A4(n1), .Y(mtsA_R[1])
         );
  AO22X1_RVT U53 ( .A1(mtsB[10]), .A2(n17), .A3(mtsA[10]), .A4(n1), .Y(
        mtsA_R[10]) );
  AO22X1_RVT U54 ( .A1(mtsB[0]), .A2(n9), .A3(mtsA[0]), .A4(n1), .Y(mtsA_R[0])
         );
  AO22X1_RVT U55 ( .A1(expA_T[4]), .A2(n15), .A3(expB_T[4]), .A4(n23), .Y(
        expB_R[4]) );
  AO22X1_RVT U56 ( .A1(expA_T[3]), .A2(n15), .A3(expB_T[3]), .A4(n23), .Y(
        expB_R[3]) );
  AO22X1_RVT U57 ( .A1(expA_T[2]), .A2(n25), .A3(expB_T[2]), .A4(n23), .Y(
        expB_R[2]) );
  AO22X1_RVT U58 ( .A1(expA_T[1]), .A2(n25), .A3(expB_T[1]), .A4(n23), .Y(
        expB_R[1]) );
  AO22X1_RVT U59 ( .A1(expA_T[0]), .A2(n15), .A3(expB_T[0]), .A4(n23), .Y(
        expB_R[0]) );
  AO22X1_RVT U60 ( .A1(expB_T[4]), .A2(n9), .A3(expA_T[4]), .A4(n1), .Y(
        expA_R[4]) );
  AO22X1_RVT U61 ( .A1(expB_T[3]), .A2(n9), .A3(expA_T[3]), .A4(n1), .Y(
        expA_R[3]) );
  AO22X1_RVT U62 ( .A1(expB_T[2]), .A2(n10), .A3(expA_T[2]), .A4(n1), .Y(
        expA_R[2]) );
  AO22X1_RVT U63 ( .A1(expB_T[1]), .A2(n9), .A3(expA_T[1]), .A4(n1), .Y(
        expA_R[1]) );
  AO22X1_RVT U64 ( .A1(expB_T[0]), .A2(n10), .A3(expA_T[0]), .A4(n1), .Y(
        expA_R[0]) );
  NAND2X0_RVT U66 ( .A1(n26), .A2(S), .Y(n23) );
  OR3X1_RVT U67 ( .A1(n8), .A2(ex[4]), .A3(ex[3]), .Y(n24) );
  AO22X1_RVT U69 ( .A1(Difference2[3]), .A2(n17), .A3(Difference1[3]), .A4(S), 
        .Y(Difference[3]) );
  AO22X1_RVT U71 ( .A1(Difference2[1]), .A2(n9), .A3(Difference1[1]), .A4(S), 
        .Y(Difference[1]) );
  RCA_bw6 rc0 ( .A({1'b0, expA}), .B({1'b1, n32, n33, n34, n35, n36}), .Cin(
        1'b1), .Sum(ex) );
  RCA_bw5_16 rc1 ( .A(expA), .B({n32, n33, n34, n35, n36}), .Cin(1'b1), .Sum(
        Difference1) );
  RCA_bw5_15 rc2 ( .A(expB), .B({n27, n28, n29, n30, n31}), .Cin(1'b1), .Sum(
        Difference2) );
  RCA_bw5_14 rc3 ( .A(expA), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), .Cin(1'b0), 
        .Sum(expA_T) );
  RCA_bw5_13 rc4 ( .A(expB), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), .Cin(1'b0), 
        .Sum(expB_T) );
  NAND2X0_RVT U3 ( .A1(n26), .A2(n23), .Y(n1) );
  AOI22X1_RVT U4 ( .A1(Difference2[2]), .A2(n10), .A3(Difference1[2]), .A4(S), 
        .Y(n2) );
  AND2X1_RVT U5 ( .A1(Difference[3]), .A2(n71), .Y(n3) );
  NBUFFX2_RVT U6 ( .A(n25), .Y(n15) );
  INVX1_RVT U7 ( .A(S), .Y(n8) );
  INVX1_RVT U9 ( .A(S), .Y(n9) );
  INVX1_RVT U10 ( .A(S), .Y(n10) );
  INVX1_RVT U11 ( .A(n2), .Y(n7) );
  INVX1_RVT U12 ( .A(n2), .Y(n16) );
  MUX21X1_RVT U13 ( .A1(n98), .A2(n97), .S0(n12), .Y(n99) );
  MUX21X1_RVT U14 ( .A1(n70), .A2(n83), .S0(n12), .Y(n55) );
  MUX21X1_RVT U15 ( .A1(n63), .A2(n71), .S0(n12), .Y(n44) );
  MUX21X1_RVT U16 ( .A1(n69), .A2(n78), .S0(n12), .Y(n49) );
  NBUFFX2_RVT U17 ( .A(n19), .Y(n12) );
  NBUFFX2_RVT U18 ( .A(n19), .Y(n13) );
  MUX21X1_RVT U19 ( .A1(n64), .A2(n73), .S0(n12), .Y(n45) );
  NBUFFX2_RVT U20 ( .A(n19), .Y(n14) );
  INVX1_RVT U21 ( .A(S), .Y(n17) );
  NBUFFX2_RVT U33 ( .A(n11), .Y(n5) );
  NBUFFX2_RVT U34 ( .A(n11), .Y(n6) );
  MUX21X1_RVT U65 ( .A1(n68), .A2(n67), .S0(n11), .Y(N18) );
  MUX21X1_RVT U68 ( .A1(n66), .A2(n62), .S0(n7), .Y(n83) );
  MUX21X1_RVT U70 ( .A1(n47), .A2(n46), .S0(n7), .Y(n95) );
  MUX21X1_RVT U72 ( .A1(n62), .A2(n61), .S0(n7), .Y(n98) );
  MUX21X1_RVT U73 ( .A1(n60), .A2(n37), .S0(n11), .Y(N17) );
  INVX1_RVT U74 ( .A(Difference[1]), .Y(n20) );
  INVX1_RVT U75 ( .A(ex[5]), .Y(S) );
  MUX21X1_RVT U76 ( .A1(n59), .A2(n58), .S0(n7), .Y(n92) );
  MUX21X1_RVT U77 ( .A1(n48), .A2(n47), .S0(n7), .Y(n78) );
  MUX21X1_RVT U78 ( .A1(n86), .A2(n57), .S0(n7), .Y(n71) );
  MUX21X1_RVT U79 ( .A1(n81), .A2(n66), .S0(n7), .Y(n97) );
  MUX21X1_RVT U80 ( .A1(n92), .A2(n91), .S0(n12), .Y(n93) );
  MUX21X1_RVT U81 ( .A1(n78), .A2(n77), .S0(n12), .Y(n79) );
  MUX21X1_RVT U82 ( .A1(n88), .A2(n87), .S0(n12), .Y(n89) );
  NBUFFX2_RVT U83 ( .A(n4), .Y(n11) );
  MUX21X1_RVT U84 ( .A1(n72), .A2(n3), .S0(n11), .Y(N19) );
  MUX21X1_RVT U85 ( .A1(n122), .A2(n121), .S0(n16), .Y(n156) );
  INVX1_RVT U86 ( .A(Difference[0]), .Y(n22) );
  AOI22X1_RVT U87 ( .A1(Difference2[4]), .A2(n17), .A3(Difference1[4]), .A4(S), 
        .Y(n4) );
  MUX21X1_RVT U88 ( .A1(n54), .A2(n50), .S0(Difference[1]), .Y(n58) );
  MUX21X1_RVT U89 ( .A1(n117), .A2(n113), .S0(Difference[1]), .Y(n121) );
  MUX21X1_RVT U90 ( .A1(n41), .A2(n40), .S0(Difference[1]), .Y(n86) );
  AO22X1_RVT U91 ( .A1(Difference2[0]), .A2(n8), .A3(Difference1[0]), .A4(S), 
        .Y(Difference[0]) );
  INVX1_RVT U92 ( .A(expB[0]), .Y(n36) );
  MUX21X1_RVT U93 ( .A1(n39), .A2(n38), .S0(n20), .Y(n56) );
  AO222X1_RVT U94 ( .A1(N35), .A2(n25), .A3(N57), .A4(n8), .A5(mtsB[7]), .A6(
        n21), .Y(mtsB_R[18]) );
  MUX21X1_RVT U95 ( .A1(n57), .A2(n56), .S0(n7), .Y(n88) );
  AO222X1_RVT U96 ( .A1(N36), .A2(n25), .A3(N58), .A4(n10), .A5(mtsB[8]), .A6(
        n21), .Y(mtsB_R[19]) );
  AND2X1_RVT U97 ( .A1(n58), .A2(n2), .Y(n64) );
  AND3X1_RVT U98 ( .A1(n14), .A2(n4), .A3(n92), .Y(N32) );
  INVX1_RVT U99 ( .A(Difference[3]), .Y(n19) );
  INVX1_RVT U100 ( .A(n23), .Y(n25) );
  INVX1_RVT U101 ( .A(n21), .Y(n26) );
  INVX1_RVT U102 ( .A(expA[4]), .Y(n27) );
  INVX1_RVT U103 ( .A(expA[3]), .Y(n28) );
  INVX1_RVT U104 ( .A(expA[2]), .Y(n29) );
  INVX1_RVT U105 ( .A(expA[1]), .Y(n30) );
  INVX1_RVT U106 ( .A(expA[0]), .Y(n31) );
  INVX1_RVT U107 ( .A(expB[4]), .Y(n32) );
  INVX1_RVT U108 ( .A(expB[3]), .Y(n33) );
  INVX1_RVT U109 ( .A(expB[2]), .Y(n34) );
  INVX1_RVT U110 ( .A(expB[1]), .Y(n35) );
  MUX21X1_RVT U111 ( .A1(mtsB[8]), .A2(mtsB[7]), .S0(n22), .Y(n38) );
  MUX21X1_RVT U112 ( .A1(mtsB[6]), .A2(mtsB[5]), .S0(n22), .Y(n43) );
  MUX21X1_RVT U113 ( .A1(n38), .A2(n43), .S0(n20), .Y(n47) );
  MUX21X1_RVT U114 ( .A1(mtsB[10]), .A2(mtsB[9]), .S0(n22), .Y(n39) );
  AND2X1_RVT U115 ( .A1(n39), .A2(n20), .Y(n46) );
  AND2X1_RVT U116 ( .A1(n95), .A2(n13), .Y(n60) );
  AND2X1_RVT U117 ( .A1(mtsB[0]), .A2(Difference[0]), .Y(n41) );
  AND2X1_RVT U118 ( .A1(n41), .A2(Difference[1]), .Y(n76) );
  MUX21X1_RVT U119 ( .A1(mtsB[4]), .A2(mtsB[3]), .S0(n22), .Y(n42) );
  MUX21X1_RVT U120 ( .A1(mtsB[2]), .A2(mtsB[1]), .S0(n22), .Y(n40) );
  MUX21X1_RVT U121 ( .A1(n42), .A2(n40), .S0(n20), .Y(n48) );
  MUX21X1_RVT U122 ( .A1(n76), .A2(n48), .S0(n7), .Y(n94) );
  AND2X1_RVT U123 ( .A1(Difference[3]), .A2(n94), .Y(n37) );
  AND2X1_RVT U124 ( .A1(n56), .A2(n2), .Y(n63) );
  MUX21X1_RVT U125 ( .A1(n43), .A2(n42), .S0(n20), .Y(n57) );
  AND2X1_RVT U126 ( .A1(n44), .A2(n6), .Y(N27) );
  MUX21X1_RVT U127 ( .A1(mtsB[9]), .A2(mtsB[8]), .S0(n22), .Y(n54) );
  AND2X1_RVT U128 ( .A1(mtsB[10]), .A2(n22), .Y(n50) );
  MUX21X1_RVT U129 ( .A1(mtsB[3]), .A2(mtsB[2]), .S0(n22), .Y(n51) );
  MUX21X1_RVT U130 ( .A1(mtsB[1]), .A2(mtsB[0]), .S0(n22), .Y(n65) );
  MUX21X1_RVT U131 ( .A1(n51), .A2(n65), .S0(n20), .Y(n90) );
  MUX21X1_RVT U132 ( .A1(mtsB[7]), .A2(mtsB[6]), .S0(n22), .Y(n53) );
  MUX21X1_RVT U133 ( .A1(mtsB[5]), .A2(mtsB[4]), .S0(n22), .Y(n52) );
  MUX21X1_RVT U134 ( .A1(n53), .A2(n52), .S0(n20), .Y(n59) );
  MUX21X1_RVT U135 ( .A1(n90), .A2(n59), .S0(n7), .Y(n73) );
  AND2X1_RVT U136 ( .A1(n45), .A2(n6), .Y(N28) );
  AND2X1_RVT U137 ( .A1(n46), .A2(n2), .Y(n69) );
  AND2X1_RVT U138 ( .A1(n49), .A2(n5), .Y(N29) );
  AND2X1_RVT U139 ( .A1(n50), .A2(n20), .Y(n61) );
  AND2X1_RVT U140 ( .A1(n61), .A2(n2), .Y(n70) );
  MUX21X1_RVT U141 ( .A1(n52), .A2(n51), .S0(n20), .Y(n66) );
  MUX21X1_RVT U142 ( .A1(n54), .A2(n53), .S0(n20), .Y(n62) );
  AND2X1_RVT U143 ( .A1(n55), .A2(n5), .Y(N30) );
  AND3X1_RVT U144 ( .A1(n14), .A2(n4), .A3(n88), .Y(N31) );
  AND2X1_RVT U145 ( .A1(n60), .A2(n5), .Y(N33) );
  AND2X1_RVT U146 ( .A1(n98), .A2(n13), .Y(n68) );
  AND2X1_RVT U147 ( .A1(n68), .A2(n5), .Y(N34) );
  AND2X1_RVT U148 ( .A1(n63), .A2(n13), .Y(n72) );
  AND2X1_RVT U149 ( .A1(n72), .A2(n5), .Y(N35) );
  AND2X1_RVT U150 ( .A1(n64), .A2(n14), .Y(n75) );
  AND2X1_RVT U151 ( .A1(n75), .A2(n5), .Y(N36) );
  AND2X1_RVT U152 ( .A1(Difference[1]), .A2(n65), .Y(n81) );
  AND2X1_RVT U153 ( .A1(Difference[3]), .A2(n97), .Y(n67) );
  AND2X1_RVT U154 ( .A1(n69), .A2(n14), .Y(n80) );
  AND2X1_RVT U155 ( .A1(n80), .A2(n5), .Y(N37) );
  AND2X1_RVT U156 ( .A1(n70), .A2(n14), .Y(n85) );
  AND2X1_RVT U157 ( .A1(n85), .A2(n5), .Y(N38) );
  AND2X1_RVT U158 ( .A1(Difference[3]), .A2(n73), .Y(n74) );
  MUX21X1_RVT U159 ( .A1(n75), .A2(n74), .S0(n11), .Y(N20) );
  AND2X1_RVT U160 ( .A1(n76), .A2(n16), .Y(n77) );
  MUX21X1_RVT U161 ( .A1(n80), .A2(n79), .S0(n11), .Y(N21) );
  AND2X1_RVT U162 ( .A1(n81), .A2(n16), .Y(n82) );
  MUX21X1_RVT U163 ( .A1(n83), .A2(n82), .S0(n12), .Y(n84) );
  MUX21X1_RVT U164 ( .A1(n85), .A2(n84), .S0(n11), .Y(N22) );
  AND2X1_RVT U165 ( .A1(n16), .A2(n86), .Y(n87) );
  AND2X1_RVT U166 ( .A1(n89), .A2(n5), .Y(N23) );
  AND2X1_RVT U167 ( .A1(n16), .A2(n90), .Y(n91) );
  AND2X1_RVT U168 ( .A1(n93), .A2(n5), .Y(N24) );
  MUX21X1_RVT U169 ( .A1(n95), .A2(n94), .S0(n12), .Y(n96) );
  AND2X1_RVT U170 ( .A1(n96), .A2(n5), .Y(N25) );
  AND2X1_RVT U171 ( .A1(n99), .A2(n6), .Y(N26) );
  MUX21X1_RVT U172 ( .A1(mtsA[8]), .A2(mtsA[7]), .S0(n22), .Y(n101) );
  MUX21X1_RVT U173 ( .A1(mtsA[6]), .A2(mtsA[5]), .S0(n22), .Y(n106) );
  MUX21X1_RVT U174 ( .A1(n101), .A2(n106), .S0(n20), .Y(n110) );
  MUX21X1_RVT U175 ( .A1(mtsA[10]), .A2(mtsA[9]), .S0(n22), .Y(n102) );
  AND2X1_RVT U176 ( .A1(n102), .A2(n20), .Y(n109) );
  MUX21X1_RVT U177 ( .A1(n110), .A2(n109), .S0(n7), .Y(n159) );
  AND2X1_RVT U178 ( .A1(n159), .A2(n14), .Y(n123) );
  AND2X1_RVT U179 ( .A1(mtsA[0]), .A2(Difference[0]), .Y(n104) );
  AND2X1_RVT U180 ( .A1(n104), .A2(Difference[1]), .Y(n140) );
  MUX21X1_RVT U181 ( .A1(mtsA[4]), .A2(mtsA[3]), .S0(n22), .Y(n105) );
  MUX21X1_RVT U182 ( .A1(mtsA[2]), .A2(mtsA[1]), .S0(n22), .Y(n103) );
  MUX21X1_RVT U183 ( .A1(n105), .A2(n103), .S0(n20), .Y(n111) );
  MUX21X1_RVT U184 ( .A1(n140), .A2(n111), .S0(n16), .Y(n158) );
  AND2X1_RVT U185 ( .A1(Difference[3]), .A2(n158), .Y(n100) );
  MUX21X1_RVT U186 ( .A1(n123), .A2(n100), .S0(n11), .Y(N39) );
  MUX21X1_RVT U187 ( .A1(n102), .A2(n101), .S0(n20), .Y(n119) );
  AND2X1_RVT U188 ( .A1(n119), .A2(n2), .Y(n126) );
  MUX21X1_RVT U189 ( .A1(n104), .A2(n103), .S0(Difference[1]), .Y(n150) );
  MUX21X1_RVT U190 ( .A1(n106), .A2(n105), .S0(n20), .Y(n120) );
  MUX21X1_RVT U191 ( .A1(n150), .A2(n120), .S0(n16), .Y(n134) );
  MUX21X1_RVT U192 ( .A1(n126), .A2(n134), .S0(n13), .Y(n107) );
  AND2X1_RVT U193 ( .A1(n107), .A2(n5), .Y(N49) );
  MUX21X1_RVT U194 ( .A1(mtsA[9]), .A2(mtsA[8]), .S0(n22), .Y(n117) );
  AND2X1_RVT U195 ( .A1(mtsA[10]), .A2(n22), .Y(n113) );
  AND2X1_RVT U196 ( .A1(n121), .A2(n2), .Y(n127) );
  MUX21X1_RVT U197 ( .A1(mtsA[3]), .A2(mtsA[2]), .S0(n22), .Y(n114) );
  MUX21X1_RVT U198 ( .A1(mtsA[1]), .A2(mtsA[0]), .S0(n22), .Y(n128) );
  MUX21X1_RVT U199 ( .A1(n114), .A2(n128), .S0(n20), .Y(n154) );
  MUX21X1_RVT U200 ( .A1(mtsA[7]), .A2(mtsA[6]), .S0(n22), .Y(n116) );
  MUX21X1_RVT U201 ( .A1(mtsA[5]), .A2(mtsA[4]), .S0(n22), .Y(n115) );
  MUX21X1_RVT U202 ( .A1(n116), .A2(n115), .S0(n20), .Y(n122) );
  MUX21X1_RVT U203 ( .A1(n154), .A2(n122), .S0(n16), .Y(n137) );
  MUX21X1_RVT U204 ( .A1(n127), .A2(n137), .S0(n13), .Y(n108) );
  AND2X1_RVT U205 ( .A1(n108), .A2(n6), .Y(N50) );
  AND2X1_RVT U206 ( .A1(n109), .A2(n2), .Y(n132) );
  MUX21X1_RVT U207 ( .A1(n111), .A2(n110), .S0(n16), .Y(n142) );
  MUX21X1_RVT U208 ( .A1(n132), .A2(n142), .S0(n13), .Y(n112) );
  AND2X1_RVT U209 ( .A1(n112), .A2(n4), .Y(N51) );
  AND2X1_RVT U210 ( .A1(n113), .A2(n20), .Y(n124) );
  AND2X1_RVT U211 ( .A1(n124), .A2(n2), .Y(n133) );
  MUX21X1_RVT U212 ( .A1(n115), .A2(n114), .S0(n20), .Y(n129) );
  MUX21X1_RVT U213 ( .A1(n117), .A2(n116), .S0(n20), .Y(n125) );
  MUX21X1_RVT U214 ( .A1(n129), .A2(n125), .S0(n16), .Y(n147) );
  MUX21X1_RVT U215 ( .A1(n133), .A2(n147), .S0(n13), .Y(n118) );
  AND2X1_RVT U216 ( .A1(n118), .A2(n4), .Y(N52) );
  MUX21X1_RVT U217 ( .A1(n120), .A2(n119), .S0(n16), .Y(n152) );
  AND3X1_RVT U218 ( .A1(n14), .A2(n4), .A3(n152), .Y(N53) );
  AND3X1_RVT U219 ( .A1(n14), .A2(n4), .A3(n156), .Y(N54) );
  AND2X1_RVT U220 ( .A1(n123), .A2(n4), .Y(N55) );
  MUX21X1_RVT U221 ( .A1(n125), .A2(n124), .S0(n7), .Y(n162) );
  AND2X1_RVT U222 ( .A1(n162), .A2(n13), .Y(n131) );
  AND2X1_RVT U223 ( .A1(n131), .A2(n6), .Y(N56) );
  AND2X1_RVT U224 ( .A1(n126), .A2(n13), .Y(n136) );
  AND2X1_RVT U225 ( .A1(n136), .A2(n4), .Y(N57) );
  AND2X1_RVT U226 ( .A1(n127), .A2(n13), .Y(n139) );
  AND2X1_RVT U227 ( .A1(n139), .A2(n6), .Y(N58) );
  AND2X1_RVT U228 ( .A1(Difference[1]), .A2(n128), .Y(n145) );
  MUX21X1_RVT U229 ( .A1(n145), .A2(n129), .S0(n7), .Y(n161) );
  AND2X1_RVT U230 ( .A1(Difference[3]), .A2(n161), .Y(n130) );
  MUX21X1_RVT U231 ( .A1(n131), .A2(n130), .S0(n11), .Y(N40) );
  AND2X1_RVT U232 ( .A1(n132), .A2(n13), .Y(n144) );
  AND2X1_RVT U233 ( .A1(n144), .A2(n6), .Y(N59) );
  AND2X1_RVT U234 ( .A1(n133), .A2(n13), .Y(n149) );
  AND2X1_RVT U235 ( .A1(n149), .A2(n6), .Y(N60) );
  AND2X1_RVT U236 ( .A1(Difference[3]), .A2(n134), .Y(n135) );
  MUX21X1_RVT U237 ( .A1(n136), .A2(n135), .S0(n11), .Y(N41) );
  AND2X1_RVT U238 ( .A1(Difference[3]), .A2(n137), .Y(n138) );
  MUX21X1_RVT U239 ( .A1(n139), .A2(n138), .S0(n11), .Y(N42) );
  AND2X1_RVT U240 ( .A1(n140), .A2(n16), .Y(n141) );
  MUX21X1_RVT U241 ( .A1(n142), .A2(n141), .S0(n13), .Y(n143) );
  MUX21X1_RVT U242 ( .A1(n144), .A2(n143), .S0(n11), .Y(N43) );
  AND2X1_RVT U243 ( .A1(n145), .A2(n16), .Y(n146) );
  MUX21X1_RVT U244 ( .A1(n147), .A2(n146), .S0(n13), .Y(n148) );
  MUX21X1_RVT U245 ( .A1(n149), .A2(n148), .S0(n11), .Y(N44) );
  AND2X1_RVT U246 ( .A1(n16), .A2(n150), .Y(n151) );
  MUX21X1_RVT U247 ( .A1(n152), .A2(n151), .S0(n13), .Y(n153) );
  AND2X1_RVT U248 ( .A1(n153), .A2(n6), .Y(N45) );
  AND2X1_RVT U249 ( .A1(n16), .A2(n154), .Y(n155) );
  MUX21X1_RVT U250 ( .A1(n156), .A2(n155), .S0(n12), .Y(n157) );
  AND2X1_RVT U251 ( .A1(n157), .A2(n6), .Y(N46) );
  MUX21X1_RVT U252 ( .A1(n159), .A2(n158), .S0(n12), .Y(n160) );
  AND2X1_RVT U253 ( .A1(n160), .A2(n6), .Y(N47) );
  MUX21X1_RVT U254 ( .A1(n162), .A2(n161), .S0(n13), .Y(n163) );
  AND2X1_RVT U255 ( .A1(n163), .A2(n6), .Y(N48) );
endmodule


module G_Cell_300 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_299 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_298 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_297 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_296 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_295 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_294 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_293 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_292 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_291 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_290 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_289 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_288 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_287 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_286 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_285 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_284 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_283 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_282 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_281 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_280 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_279 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_278 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw23_0 ( A, B, Cin, Sum, Cout );
  input [23:1] A;
  input [23:1] B;
  output [23:1] Sum;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5;
  wire   [23:1] G;
  wire   [23:1] P;
  wire   [22:1] GG;

  AND2X1_RVT U47 ( .A1(A[9]), .A2(B[9]), .Y(G[9]) );
  AND2X1_RVT U48 ( .A1(A[8]), .A2(B[8]), .Y(G[8]) );
  AND2X1_RVT U49 ( .A1(A[7]), .A2(B[7]), .Y(G[7]) );
  AND2X1_RVT U50 ( .A1(A[6]), .A2(B[6]), .Y(G[6]) );
  AND2X1_RVT U51 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U52 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U53 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U54 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U55 ( .A1(A[23]), .A2(B[23]), .Y(G[23]) );
  AND2X1_RVT U56 ( .A1(A[22]), .A2(B[22]), .Y(G[22]) );
  AND2X1_RVT U57 ( .A1(A[21]), .A2(B[21]), .Y(G[21]) );
  AND2X1_RVT U58 ( .A1(A[20]), .A2(B[20]), .Y(G[20]) );
  AND2X1_RVT U59 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  AND2X1_RVT U60 ( .A1(A[19]), .A2(B[19]), .Y(G[19]) );
  AND2X1_RVT U61 ( .A1(A[18]), .A2(B[18]), .Y(G[18]) );
  AND2X1_RVT U64 ( .A1(A[15]), .A2(B[15]), .Y(G[15]) );
  AND2X1_RVT U65 ( .A1(A[14]), .A2(B[14]), .Y(G[14]) );
  AND2X1_RVT U66 ( .A1(A[13]), .A2(B[13]), .Y(G[13]) );
  AND2X1_RVT U67 ( .A1(A[12]), .A2(B[12]), .Y(G[12]) );
  AND2X1_RVT U68 ( .A1(A[11]), .A2(B[11]), .Y(G[11]) );
  AND2X1_RVT U69 ( .A1(A[10]), .A2(B[10]), .Y(G[10]) );
  G_Cell_300 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_299 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_298 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_297 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_296 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        GG[5]) );
  G_Cell_295 \loop_1[5].genblk1.U1  ( .G0(GG[5]), .G1(G[6]), .P1(P[6]), .GG(
        GG[6]) );
  G_Cell_294 \loop_1[6].genblk1.U1  ( .G0(GG[6]), .G1(G[7]), .P1(P[7]), .GG(
        GG[7]) );
  G_Cell_293 \loop_1[7].genblk1.U1  ( .G0(GG[7]), .G1(G[8]), .P1(P[8]), .GG(
        GG[8]) );
  G_Cell_292 \loop_1[8].genblk1.U1  ( .G0(GG[8]), .G1(G[9]), .P1(P[9]), .GG(
        GG[9]) );
  G_Cell_291 \loop_1[9].genblk1.U1  ( .G0(GG[9]), .G1(G[10]), .P1(P[10]), .GG(
        GG[10]) );
  G_Cell_290 \loop_1[10].genblk1.U1  ( .G0(GG[10]), .G1(G[11]), .P1(P[11]), 
        .GG(GG[11]) );
  G_Cell_289 \loop_1[11].genblk1.U1  ( .G0(GG[11]), .G1(G[12]), .P1(P[12]), 
        .GG(GG[12]) );
  G_Cell_288 \loop_1[12].genblk1.U1  ( .G0(GG[12]), .G1(G[13]), .P1(P[13]), 
        .GG(GG[13]) );
  G_Cell_287 \loop_1[13].genblk1.U1  ( .G0(GG[13]), .G1(G[14]), .P1(P[14]), 
        .GG(GG[14]) );
  G_Cell_286 \loop_1[14].genblk1.U1  ( .G0(GG[14]), .G1(G[15]), .P1(n3), .GG(
        GG[15]) );
  G_Cell_285 \loop_1[15].genblk1.U1  ( .G0(GG[15]), .G1(n2), .P1(P[16]), .GG(
        GG[16]) );
  G_Cell_284 \loop_1[16].genblk1.U1  ( .G0(GG[16]), .G1(n1), .P1(P[17]), .GG(
        GG[17]) );
  G_Cell_283 \loop_1[17].genblk1.U1  ( .G0(GG[17]), .G1(G[18]), .P1(P[18]), 
        .GG(GG[18]) );
  G_Cell_282 \loop_1[18].genblk1.U1  ( .G0(GG[18]), .G1(G[19]), .P1(P[19]), 
        .GG(GG[19]) );
  G_Cell_281 \loop_1[19].genblk1.U1  ( .G0(GG[19]), .G1(G[20]), .P1(P[20]), 
        .GG(GG[20]) );
  G_Cell_280 \loop_1[20].genblk1.U1  ( .G0(GG[20]), .G1(G[21]), .P1(P[21]), 
        .GG(GG[21]) );
  G_Cell_279 \loop_1[21].genblk1.U1  ( .G0(GG[21]), .G1(G[22]), .P1(P[22]), 
        .GG(GG[22]) );
  G_Cell_278 \loop_1[22].genblk1.U1  ( .G0(GG[22]), .G1(G[23]), .P1(P[23]), 
        .GG(Cout) );
  AND2X1_RVT U1 ( .A1(A[17]), .A2(B[17]), .Y(n1) );
  NOR2X1_RVT U2 ( .A1(n4), .A2(n5), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(GG[16]), .A2(P[17]), .Y(Sum[17]) );
  XOR2X1_RVT U4 ( .A1(GG[20]), .A2(P[21]), .Y(Sum[21]) );
  XOR2X1_RVT U5 ( .A1(GG[21]), .A2(P[22]), .Y(Sum[22]) );
  XOR2X1_RVT U6 ( .A1(GG[13]), .A2(P[14]), .Y(Sum[14]) );
  XOR2X1_RVT U7 ( .A1(GG[12]), .A2(P[13]), .Y(Sum[13]) );
  INVX1_RVT U8 ( .A(B[16]), .Y(n5) );
  XOR2X1_RVT U9 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U10 ( .A1(GG[10]), .A2(P[11]), .Y(Sum[11]) );
  XOR2X1_RVT U11 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U12 ( .A1(GG[9]), .A2(P[10]), .Y(Sum[10]) );
  XOR2X1_RVT U13 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U14 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U15 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U16 ( .A1(GG[11]), .A2(P[12]), .Y(Sum[12]) );
  XOR2X1_RVT U17 ( .A1(A[12]), .A2(B[12]), .Y(P[12]) );
  XOR2X1_RVT U18 ( .A1(A[22]), .A2(B[22]), .Y(P[22]) );
  XOR2X1_RVT U19 ( .A1(A[15]), .A2(B[15]), .Y(n3) );
  XOR2X1_RVT U20 ( .A1(A[21]), .A2(B[21]), .Y(P[21]) );
  INVX1_RVT U21 ( .A(A[16]), .Y(n4) );
  XOR2X1_RVT U22 ( .A1(A[14]), .A2(B[14]), .Y(P[14]) );
  XOR2X1_RVT U23 ( .A1(A[10]), .A2(B[10]), .Y(P[10]) );
  XOR2X1_RVT U24 ( .A1(A[9]), .A2(B[9]), .Y(P[9]) );
  XOR2X1_RVT U25 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U26 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U27 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U28 ( .A1(A[11]), .A2(B[11]), .Y(P[11]) );
  XOR2X1_RVT U29 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U30 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U31 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U32 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U33 ( .A1(A[23]), .A2(B[23]), .Y(P[23]) );
  XOR2X1_RVT U34 ( .A1(GG[18]), .A2(P[19]), .Y(Sum[19]) );
  XOR2X1_RVT U35 ( .A1(A[19]), .A2(B[19]), .Y(P[19]) );
  XOR2X1_RVT U36 ( .A1(A[20]), .A2(B[20]), .Y(P[20]) );
  XOR2X1_RVT U37 ( .A1(GG[15]), .A2(P[16]), .Y(Sum[16]) );
  XOR2X1_RVT U38 ( .A1(A[13]), .A2(B[13]), .Y(P[13]) );
  XOR2X1_RVT U39 ( .A1(A[16]), .A2(B[16]), .Y(P[16]) );
  XOR2X1_RVT U40 ( .A1(A[18]), .A2(B[18]), .Y(P[18]) );
  XOR2X1_RVT U41 ( .A1(A[17]), .A2(B[17]), .Y(P[17]) );
  XOR2X1_RVT U42 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U43 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U44 ( .A1(GG[14]), .A2(n3), .Y(Sum[15]) );
  XOR2X1_RVT U45 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U46 ( .A1(GG[8]), .A2(P[9]), .Y(Sum[9]) );
  XOR2X1_RVT U62 ( .A1(GG[19]), .A2(P[20]), .Y(Sum[20]) );
  XOR2X1_RVT U63 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U70 ( .A1(GG[17]), .A2(P[18]), .Y(Sum[18]) );
  XOR2X1_RVT U71 ( .A1(GG[22]), .A2(P[23]), .Y(Sum[23]) );
endmodule


module G_Cell_277 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_276 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_275 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_274 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_273 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_272 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_271 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_270 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_269 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_268 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_267 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_266 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_265 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_264 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_263 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_262 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_261 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_260 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_259 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_258 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_257 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_256 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_255 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw23_2 ( A, B, Cin, Sum, Cout );
  input [23:1] A;
  input [23:1] B;
  output [23:1] Sum;
  input Cin;
  output Cout;

  wire   [23:1] G;
  wire   [23:1] P;
  wire   [22:1] GG;

  AND2X1_RVT U47 ( .A1(A[9]), .A2(B[9]), .Y(G[9]) );
  AND2X1_RVT U48 ( .A1(A[8]), .A2(B[8]), .Y(G[8]) );
  AND2X1_RVT U49 ( .A1(A[7]), .A2(B[7]), .Y(G[7]) );
  AND2X1_RVT U50 ( .A1(A[6]), .A2(B[6]), .Y(G[6]) );
  AND2X1_RVT U51 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U52 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U53 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U54 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U55 ( .A1(A[23]), .A2(B[23]), .Y(G[23]) );
  AND2X1_RVT U57 ( .A1(A[21]), .A2(B[21]), .Y(G[21]) );
  AND2X1_RVT U58 ( .A1(A[20]), .A2(B[20]), .Y(G[20]) );
  AND2X1_RVT U59 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  AND2X1_RVT U60 ( .A1(A[19]), .A2(B[19]), .Y(G[19]) );
  AND2X1_RVT U61 ( .A1(A[18]), .A2(B[18]), .Y(G[18]) );
  AND2X1_RVT U62 ( .A1(A[17]), .A2(B[17]), .Y(G[17]) );
  AND2X1_RVT U63 ( .A1(A[16]), .A2(B[16]), .Y(G[16]) );
  AND2X1_RVT U64 ( .A1(A[15]), .A2(B[15]), .Y(G[15]) );
  AND2X1_RVT U65 ( .A1(A[14]), .A2(B[14]), .Y(G[14]) );
  AND2X1_RVT U66 ( .A1(A[13]), .A2(B[13]), .Y(G[13]) );
  AND2X1_RVT U67 ( .A1(A[12]), .A2(B[12]), .Y(G[12]) );
  AND2X1_RVT U68 ( .A1(A[11]), .A2(B[11]), .Y(G[11]) );
  AND2X1_RVT U69 ( .A1(A[10]), .A2(B[10]), .Y(G[10]) );
  G_Cell_277 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_276 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_275 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_274 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_273 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        GG[5]) );
  G_Cell_272 \loop_1[5].genblk1.U1  ( .G0(GG[5]), .G1(G[6]), .P1(P[6]), .GG(
        GG[6]) );
  G_Cell_271 \loop_1[6].genblk1.U1  ( .G0(GG[6]), .G1(G[7]), .P1(P[7]), .GG(
        GG[7]) );
  G_Cell_270 \loop_1[7].genblk1.U1  ( .G0(GG[7]), .G1(G[8]), .P1(P[8]), .GG(
        GG[8]) );
  G_Cell_269 \loop_1[8].genblk1.U1  ( .G0(GG[8]), .G1(G[9]), .P1(P[9]), .GG(
        GG[9]) );
  G_Cell_268 \loop_1[9].genblk1.U1  ( .G0(GG[9]), .G1(G[10]), .P1(P[10]), .GG(
        GG[10]) );
  G_Cell_267 \loop_1[10].genblk1.U1  ( .G0(GG[10]), .G1(G[11]), .P1(P[11]), 
        .GG(GG[11]) );
  G_Cell_266 \loop_1[11].genblk1.U1  ( .G0(GG[11]), .G1(G[12]), .P1(P[12]), 
        .GG(GG[12]) );
  G_Cell_265 \loop_1[12].genblk1.U1  ( .G0(GG[12]), .G1(G[13]), .P1(P[13]), 
        .GG(GG[13]) );
  G_Cell_264 \loop_1[13].genblk1.U1  ( .G0(GG[13]), .G1(G[14]), .P1(P[14]), 
        .GG(GG[14]) );
  G_Cell_263 \loop_1[14].genblk1.U1  ( .G0(GG[14]), .G1(G[15]), .P1(P[15]), 
        .GG(GG[15]) );
  G_Cell_262 \loop_1[15].genblk1.U1  ( .G0(GG[15]), .G1(G[16]), .P1(P[16]), 
        .GG(GG[16]) );
  G_Cell_261 \loop_1[16].genblk1.U1  ( .G0(GG[16]), .G1(G[17]), .P1(P[17]), 
        .GG(GG[17]) );
  G_Cell_260 \loop_1[17].genblk1.U1  ( .G0(GG[17]), .G1(G[18]), .P1(P[18]), 
        .GG(GG[18]) );
  G_Cell_259 \loop_1[18].genblk1.U1  ( .G0(GG[18]), .G1(G[19]), .P1(P[19]), 
        .GG(GG[19]) );
  G_Cell_258 \loop_1[19].genblk1.U1  ( .G0(GG[19]), .G1(G[20]), .P1(P[20]), 
        .GG(GG[20]) );
  G_Cell_257 \loop_1[20].genblk1.U1  ( .G0(GG[20]), .G1(G[21]), .P1(P[21]), 
        .GG(GG[21]) );
  G_Cell_256 \loop_1[21].genblk1.U1  ( .G0(GG[21]), .G1(G[22]), .P1(P[22]), 
        .GG(GG[22]) );
  G_Cell_255 \loop_1[22].genblk1.U1  ( .G0(GG[22]), .G1(G[23]), .P1(P[23]), 
        .GG(Cout) );
  XOR2X1_RVT U1 ( .A1(GG[18]), .A2(P[19]), .Y(Sum[19]) );
  XOR2X1_RVT U2 ( .A1(GG[21]), .A2(P[22]), .Y(Sum[22]) );
  XOR2X1_RVT U3 ( .A1(GG[13]), .A2(P[14]), .Y(Sum[14]) );
  XOR2X1_RVT U4 ( .A1(GG[12]), .A2(P[13]), .Y(Sum[13]) );
  XOR2X1_RVT U5 ( .A1(GG[14]), .A2(P[15]), .Y(Sum[15]) );
  XOR2X1_RVT U6 ( .A1(A[17]), .A2(B[17]), .Y(P[17]) );
  AND2X1_RVT U7 ( .A1(A[22]), .A2(B[22]), .Y(G[22]) );
  XOR2X1_RVT U8 ( .A1(A[18]), .A2(B[18]), .Y(P[18]) );
  XOR2X1_RVT U9 ( .A1(GG[22]), .A2(P[23]), .Y(Sum[23]) );
  XOR2X1_RVT U10 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U11 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U12 ( .A1(GG[8]), .A2(P[9]), .Y(Sum[9]) );
  XOR2X1_RVT U13 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U14 ( .A1(GG[10]), .A2(P[11]), .Y(Sum[11]) );
  XOR2X1_RVT U15 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U16 ( .A1(GG[9]), .A2(P[10]), .Y(Sum[10]) );
  XOR2X1_RVT U17 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U18 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U19 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U20 ( .A1(GG[11]), .A2(P[12]), .Y(Sum[12]) );
  XOR2X1_RVT U21 ( .A1(A[14]), .A2(B[14]), .Y(P[14]) );
  XOR2X1_RVT U22 ( .A1(A[12]), .A2(B[12]), .Y(P[12]) );
  XOR2X1_RVT U23 ( .A1(A[13]), .A2(B[13]), .Y(P[13]) );
  XOR2X1_RVT U24 ( .A1(A[15]), .A2(B[15]), .Y(P[15]) );
  XOR2X1_RVT U25 ( .A1(A[16]), .A2(B[16]), .Y(P[16]) );
  XOR2X1_RVT U26 ( .A1(A[22]), .A2(B[22]), .Y(P[22]) );
  XOR2X1_RVT U27 ( .A1(A[20]), .A2(B[20]), .Y(P[20]) );
  XOR2X1_RVT U28 ( .A1(A[19]), .A2(B[19]), .Y(P[19]) );
  XOR2X1_RVT U29 ( .A1(A[21]), .A2(B[21]), .Y(P[21]) );
  XOR2X1_RVT U30 ( .A1(A[10]), .A2(B[10]), .Y(P[10]) );
  XOR2X1_RVT U31 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U32 ( .A1(A[9]), .A2(B[9]), .Y(P[9]) );
  XOR2X1_RVT U33 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U34 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U35 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U36 ( .A1(A[11]), .A2(B[11]), .Y(P[11]) );
  XOR2X1_RVT U37 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U38 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U39 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U40 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U41 ( .A1(A[23]), .A2(B[23]), .Y(P[23]) );
  XOR2X1_RVT U42 ( .A1(GG[16]), .A2(P[17]), .Y(Sum[17]) );
  XOR2X1_RVT U43 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U44 ( .A1(GG[17]), .A2(P[18]), .Y(Sum[18]) );
  XOR2X1_RVT U45 ( .A1(GG[20]), .A2(P[21]), .Y(Sum[21]) );
  XOR2X1_RVT U46 ( .A1(GG[15]), .A2(P[16]), .Y(Sum[16]) );
  XOR2X1_RVT U56 ( .A1(GG[19]), .A2(P[20]), .Y(Sum[20]) );
endmodule


module mantissa ( sA, sB, mtsA_R, mtsB_R, R_mts );
  input [10:0] mtsA_R;
  input [21:0] mtsB_R;
  output [22:0] R_mts;
  input sA, sB;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;
  wire   [22:0] T1_mts;
  wire   [22:0] T2_mts;

  AO22X1_RVT U27 ( .A1(T1_mts[9]), .A2(n1), .A3(T2_mts[9]), .A4(n6), .Y(
        R_mts[9]) );
  AO22X1_RVT U28 ( .A1(T1_mts[8]), .A2(n1), .A3(T2_mts[8]), .A4(n6), .Y(
        R_mts[8]) );
  AO22X1_RVT U29 ( .A1(T1_mts[7]), .A2(n1), .A3(T2_mts[7]), .A4(n6), .Y(
        R_mts[7]) );
  AO22X1_RVT U30 ( .A1(T1_mts[6]), .A2(n1), .A3(T2_mts[6]), .A4(n6), .Y(
        R_mts[6]) );
  AO22X1_RVT U31 ( .A1(T1_mts[5]), .A2(n1), .A3(T2_mts[5]), .A4(n6), .Y(
        R_mts[5]) );
  AO22X1_RVT U32 ( .A1(T1_mts[4]), .A2(n1), .A3(T2_mts[4]), .A4(n6), .Y(
        R_mts[4]) );
  AO22X1_RVT U33 ( .A1(T1_mts[3]), .A2(n1), .A3(T2_mts[3]), .A4(n6), .Y(
        R_mts[3]) );
  AO22X1_RVT U34 ( .A1(T1_mts[2]), .A2(n5), .A3(T2_mts[2]), .A4(n6), .Y(
        R_mts[2]) );
  AO22X1_RVT U35 ( .A1(T1_mts[22]), .A2(n1), .A3(T2_mts[22]), .A4(n6), .Y(
        R_mts[22]) );
  AO22X1_RVT U36 ( .A1(T1_mts[21]), .A2(n1), .A3(T2_mts[21]), .A4(n6), .Y(
        R_mts[21]) );
  AO22X1_RVT U37 ( .A1(T1_mts[20]), .A2(n1), .A3(T2_mts[20]), .A4(n6), .Y(
        R_mts[20]) );
  AO22X1_RVT U38 ( .A1(T1_mts[1]), .A2(n5), .A3(T2_mts[1]), .A4(n6), .Y(
        R_mts[1]) );
  AO22X1_RVT U39 ( .A1(T1_mts[19]), .A2(n5), .A3(T2_mts[19]), .A4(n6), .Y(
        R_mts[19]) );
  AO22X1_RVT U40 ( .A1(T1_mts[18]), .A2(n5), .A3(T2_mts[18]), .A4(n6), .Y(
        R_mts[18]) );
  AO22X1_RVT U41 ( .A1(T1_mts[17]), .A2(n5), .A3(T2_mts[17]), .A4(n6), .Y(
        R_mts[17]) );
  AO22X1_RVT U42 ( .A1(T1_mts[16]), .A2(n5), .A3(T2_mts[16]), .A4(n6), .Y(
        R_mts[16]) );
  AO22X1_RVT U43 ( .A1(T1_mts[15]), .A2(n5), .A3(T2_mts[15]), .A4(n6), .Y(
        R_mts[15]) );
  AO22X1_RVT U44 ( .A1(T1_mts[14]), .A2(n5), .A3(T2_mts[14]), .A4(n6), .Y(
        R_mts[14]) );
  AO22X1_RVT U45 ( .A1(T1_mts[13]), .A2(n1), .A3(T2_mts[13]), .A4(n6), .Y(
        R_mts[13]) );
  AO22X1_RVT U46 ( .A1(T1_mts[12]), .A2(n5), .A3(T2_mts[12]), .A4(n6), .Y(
        R_mts[12]) );
  AO22X1_RVT U47 ( .A1(T1_mts[11]), .A2(n5), .A3(T2_mts[11]), .A4(n6), .Y(
        R_mts[11]) );
  AO22X1_RVT U48 ( .A1(T1_mts[10]), .A2(n5), .A3(T2_mts[10]), .A4(n6), .Y(
        R_mts[10]) );
  AO22X1_RVT U49 ( .A1(T1_mts[0]), .A2(n5), .A3(T2_mts[0]), .A4(n6), .Y(
        R_mts[0]) );
  RCA_bw23_0 rc5 ( .A({1'b0, mtsA_R, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .B({1'b1, n17, n16, n4, n3, n14, n13, n2, 
        n12, n11, n10, n9, n8, n25, n24, n23, n22, n21, n20, n19, n18, n15, n7}), .Cin(1'b1), .Sum(T1_mts) );
  RCA_bw23_2 rc6 ( .A({1'b0, mtsA_R, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .B({1'b0, mtsB_R}), .Cin(1'b0), .Sum(T2_mts)
         );
  XOR2X1_RVT U3 ( .A1(sB), .A2(sA), .Y(n1) );
  INVX1_RVT U4 ( .A(mtsB_R[2]), .Y(n18) );
  INVX1_RVT U5 ( .A(n6), .Y(n5) );
  INVX1_RVT U6 ( .A(n1), .Y(n6) );
  INVX1_RVT U7 ( .A(mtsB_R[1]), .Y(n15) );
  INVX1_RVT U8 ( .A(mtsB_R[11]), .Y(n9) );
  INVX1_RVT U9 ( .A(mtsB_R[21]), .Y(n17) );
  INVX1_RVT U10 ( .A(mtsB_R[14]), .Y(n12) );
  INVX1_RVT U11 ( .A(mtsB_R[12]), .Y(n10) );
  INVX1_RVT U12 ( .A(mtsB_R[16]), .Y(n13) );
  INVX1_RVT U13 ( .A(mtsB_R[17]), .Y(n14) );
  INVX1_RVT U14 ( .A(mtsB_R[13]), .Y(n11) );
  INVX1_RVT U15 ( .A(mtsB_R[18]), .Y(n3) );
  INVX1_RVT U16 ( .A(mtsB_R[19]), .Y(n4) );
  INVX1_RVT U17 ( .A(mtsB_R[15]), .Y(n2) );
  INVX0_RVT U18 ( .A(mtsB_R[20]), .Y(n16) );
  INVX1_RVT U19 ( .A(mtsB_R[0]), .Y(n7) );
  INVX1_RVT U20 ( .A(mtsB_R[10]), .Y(n8) );
  INVX1_RVT U21 ( .A(mtsB_R[3]), .Y(n19) );
  INVX1_RVT U22 ( .A(mtsB_R[4]), .Y(n20) );
  INVX1_RVT U23 ( .A(mtsB_R[5]), .Y(n21) );
  INVX1_RVT U24 ( .A(mtsB_R[6]), .Y(n22) );
  INVX1_RVT U25 ( .A(mtsB_R[7]), .Y(n23) );
  INVX1_RVT U26 ( .A(mtsB_R[8]), .Y(n24) );
  INVX1_RVT U50 ( .A(mtsB_R[9]), .Y(n25) );
endmodule


module G_Cell_254 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_253 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_252 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_251 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_250 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_249 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_248 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_247 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_246 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_245 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_244 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_243 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_242 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_241 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_240 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_239 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_238 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_237 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_236 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_235 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_234 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_233 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(G0), .A2(P1), .A3(G1), .Y(GG) );
endmodule


module G_Cell_232 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw23_1 ( A, B, Cin, Sum, Cout );
  input [23:1] A;
  input [23:1] B;
  output [23:1] Sum;
  input Cin;
  output Cout;

  wire   [23:1] G;
  wire   [23:1] P;
  wire   [22:1] GG;

  AND2X1_RVT U47 ( .A1(A[9]), .A2(B[9]), .Y(G[9]) );
  AND2X1_RVT U48 ( .A1(A[8]), .A2(B[8]), .Y(G[8]) );
  AND2X1_RVT U49 ( .A1(A[7]), .A2(B[7]), .Y(G[7]) );
  AND2X1_RVT U50 ( .A1(A[6]), .A2(B[6]), .Y(G[6]) );
  AND2X1_RVT U51 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U52 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U53 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U54 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U55 ( .A1(A[23]), .A2(B[23]), .Y(G[23]) );
  AND2X1_RVT U56 ( .A1(A[22]), .A2(B[22]), .Y(G[22]) );
  AND2X1_RVT U57 ( .A1(A[21]), .A2(B[21]), .Y(G[21]) );
  AND2X1_RVT U58 ( .A1(A[20]), .A2(B[20]), .Y(G[20]) );
  AND2X1_RVT U59 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  AND2X1_RVT U60 ( .A1(A[19]), .A2(B[19]), .Y(G[19]) );
  AND2X1_RVT U61 ( .A1(A[18]), .A2(B[18]), .Y(G[18]) );
  AND2X1_RVT U62 ( .A1(A[17]), .A2(B[17]), .Y(G[17]) );
  AND2X1_RVT U63 ( .A1(A[16]), .A2(B[16]), .Y(G[16]) );
  AND2X1_RVT U64 ( .A1(A[15]), .A2(B[15]), .Y(G[15]) );
  AND2X1_RVT U65 ( .A1(A[14]), .A2(B[14]), .Y(G[14]) );
  AND2X1_RVT U66 ( .A1(A[13]), .A2(B[13]), .Y(G[13]) );
  AND2X1_RVT U67 ( .A1(A[12]), .A2(B[12]), .Y(G[12]) );
  AND2X1_RVT U68 ( .A1(A[11]), .A2(B[11]), .Y(G[11]) );
  AND2X1_RVT U69 ( .A1(A[10]), .A2(B[10]), .Y(G[10]) );
  G_Cell_254 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_253 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_252 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_251 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_250 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        GG[5]) );
  G_Cell_249 \loop_1[5].genblk1.U1  ( .G0(GG[5]), .G1(G[6]), .P1(P[6]), .GG(
        GG[6]) );
  G_Cell_248 \loop_1[6].genblk1.U1  ( .G0(GG[6]), .G1(G[7]), .P1(P[7]), .GG(
        GG[7]) );
  G_Cell_247 \loop_1[7].genblk1.U1  ( .G0(GG[7]), .G1(G[8]), .P1(P[8]), .GG(
        GG[8]) );
  G_Cell_246 \loop_1[8].genblk1.U1  ( .G0(GG[8]), .G1(G[9]), .P1(P[9]), .GG(
        GG[9]) );
  G_Cell_245 \loop_1[9].genblk1.U1  ( .G0(GG[9]), .G1(G[10]), .P1(P[10]), .GG(
        GG[10]) );
  G_Cell_244 \loop_1[10].genblk1.U1  ( .G0(GG[10]), .G1(G[11]), .P1(P[11]), 
        .GG(GG[11]) );
  G_Cell_243 \loop_1[11].genblk1.U1  ( .G0(GG[11]), .G1(G[12]), .P1(P[12]), 
        .GG(GG[12]) );
  G_Cell_242 \loop_1[12].genblk1.U1  ( .G0(GG[12]), .G1(G[13]), .P1(P[13]), 
        .GG(GG[13]) );
  G_Cell_241 \loop_1[13].genblk1.U1  ( .G0(GG[13]), .G1(G[14]), .P1(P[14]), 
        .GG(GG[14]) );
  G_Cell_240 \loop_1[14].genblk1.U1  ( .G0(GG[14]), .G1(G[15]), .P1(P[15]), 
        .GG(GG[15]) );
  G_Cell_239 \loop_1[15].genblk1.U1  ( .G0(GG[15]), .G1(G[16]), .P1(P[16]), 
        .GG(GG[16]) );
  G_Cell_238 \loop_1[16].genblk1.U1  ( .G0(GG[16]), .G1(G[17]), .P1(P[17]), 
        .GG(GG[17]) );
  G_Cell_237 \loop_1[17].genblk1.U1  ( .G0(GG[17]), .G1(G[18]), .P1(P[18]), 
        .GG(GG[18]) );
  G_Cell_236 \loop_1[18].genblk1.U1  ( .G0(GG[18]), .G1(G[19]), .P1(P[19]), 
        .GG(GG[19]) );
  G_Cell_235 \loop_1[19].genblk1.U1  ( .G0(GG[19]), .G1(G[20]), .P1(P[20]), 
        .GG(GG[20]) );
  G_Cell_234 \loop_1[20].genblk1.U1  ( .G0(GG[20]), .G1(G[21]), .P1(P[21]), 
        .GG(GG[21]) );
  G_Cell_233 \loop_1[21].genblk1.U1  ( .G0(GG[21]), .G1(G[22]), .P1(P[22]), 
        .GG(GG[22]) );
  G_Cell_232 \loop_1[22].genblk1.U1  ( .G0(GG[22]), .G1(G[23]), .P1(P[23]), 
        .GG(Cout) );
  XOR2X1_RVT U1 ( .A1(GG[14]), .A2(P[15]), .Y(Sum[15]) );
  XOR2X1_RVT U2 ( .A1(GG[13]), .A2(P[14]), .Y(Sum[14]) );
  XOR2X1_RVT U3 ( .A1(GG[9]), .A2(P[10]), .Y(Sum[10]) );
  XOR2X1_RVT U4 ( .A1(GG[8]), .A2(P[9]), .Y(Sum[9]) );
  XOR2X1_RVT U5 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U6 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U7 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U8 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U9 ( .A1(GG[10]), .A2(P[11]), .Y(Sum[11]) );
  XOR2X1_RVT U10 ( .A1(GG[11]), .A2(P[12]), .Y(Sum[12]) );
  XOR2X1_RVT U11 ( .A1(GG[16]), .A2(P[17]), .Y(Sum[17]) );
  XOR2X1_RVT U12 ( .A1(GG[12]), .A2(P[13]), .Y(Sum[13]) );
  XOR2X1_RVT U13 ( .A1(GG[22]), .A2(P[23]), .Y(Sum[23]) );
  XOR2X1_RVT U14 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U15 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U16 ( .A1(GG[20]), .A2(P[21]), .Y(Sum[21]) );
  XOR2X1_RVT U17 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U18 ( .A1(GG[15]), .A2(P[16]), .Y(Sum[16]) );
  XOR2X1_RVT U19 ( .A1(GG[17]), .A2(P[18]), .Y(Sum[18]) );
  XOR2X1_RVT U20 ( .A1(GG[18]), .A2(P[19]), .Y(Sum[19]) );
  XOR2X1_RVT U21 ( .A1(GG[19]), .A2(P[20]), .Y(Sum[20]) );
  XOR2X1_RVT U22 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U23 ( .A1(A[17]), .A2(B[17]), .Y(P[17]) );
  XOR2X1_RVT U24 ( .A1(A[18]), .A2(B[18]), .Y(P[18]) );
  XOR2X1_RVT U25 ( .A1(A[19]), .A2(B[19]), .Y(P[19]) );
  XOR2X1_RVT U26 ( .A1(A[21]), .A2(B[21]), .Y(P[21]) );
  XOR2X1_RVT U27 ( .A1(A[11]), .A2(B[11]), .Y(P[11]) );
  XOR2X1_RVT U28 ( .A1(A[10]), .A2(B[10]), .Y(P[10]) );
  XOR2X1_RVT U29 ( .A1(A[9]), .A2(B[9]), .Y(P[9]) );
  XOR2X1_RVT U30 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U31 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U32 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U33 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U34 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U35 ( .A1(A[20]), .A2(B[20]), .Y(P[20]) );
  XOR2X1_RVT U36 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U37 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U38 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U39 ( .A1(A[23]), .A2(B[23]), .Y(P[23]) );
  XOR2X1_RVT U40 ( .A1(A[22]), .A2(B[22]), .Y(P[22]) );
  XOR2X1_RVT U41 ( .A1(A[14]), .A2(B[14]), .Y(P[14]) );
  XOR2X1_RVT U42 ( .A1(A[12]), .A2(B[12]), .Y(P[12]) );
  XOR2X1_RVT U43 ( .A1(A[13]), .A2(B[13]), .Y(P[13]) );
  XOR2X1_RVT U44 ( .A1(A[16]), .A2(B[16]), .Y(P[16]) );
  XOR2X1_RVT U45 ( .A1(A[15]), .A2(B[15]), .Y(P[15]) );
  XOR2X1_RVT U46 ( .A1(GG[21]), .A2(P[22]), .Y(Sum[22]) );
endmodule


module G_Cell_231 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_230 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_229 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_228 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_227 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw5_12 ( A, B, Cin, Sum, Cout );
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
  G_Cell_231 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_230 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_229 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_228 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_227 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U2 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U3 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U4 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U5 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U6 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U7 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U8 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U9 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U10 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
endmodule


module G_Cell_226 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_225 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_224 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_223 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_222 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw5_11 ( A, B, Cin, Sum, Cout );
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
  G_Cell_226 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_225 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_224 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_223 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_222 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U2 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U3 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U4 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U5 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U6 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U7 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U8 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U9 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U10 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
endmodule


module G_Cell_221 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_220 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_219 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_218 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_217 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw5_10 ( A, B, Cin, Sum, Cout );
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
  G_Cell_221 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_220 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_219 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_218 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_217 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U2 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U3 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U4 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U5 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U6 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U7 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U8 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U9 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U10 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
endmodule


module G_Cell_216 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_215 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_214 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_213 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_212 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw5_9 ( A, B, Cin, Sum, Cout );
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
  G_Cell_216 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_215 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_214 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_213 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_212 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U2 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U3 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U4 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U5 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U6 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U7 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U8 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U9 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U10 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
endmodule


module G_Cell_211 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_210 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_209 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_208 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_207 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw5_8 ( A, B, Cin, Sum, Cout );
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
  G_Cell_211 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_210 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_209 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_208 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_207 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U2 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U3 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U4 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U5 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U6 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U7 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U8 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U9 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U10 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
endmodule


module G_Cell_206 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_205 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_204 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_203 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_202 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw5_7 ( A, B, Cin, Sum, Cout );
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
  G_Cell_206 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_205 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_204 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_203 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_202 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U2 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U3 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U4 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U5 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U6 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U7 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U8 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U9 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U10 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
endmodule


module G_Cell_201 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_200 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_199 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_198 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_197 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw5_6 ( A, B, Cin, Sum, Cout );
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
  G_Cell_201 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_200 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_199 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_198 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_197 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U2 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U3 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U4 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U5 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U6 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U7 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U8 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U9 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U10 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
endmodule


module G_Cell_196 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_195 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_194 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_193 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_192 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw5_5 ( A, B, Cin, Sum, Cout );
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
  G_Cell_196 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_195 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_194 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_193 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_192 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U2 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U3 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U4 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U6 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U7 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U8 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U9 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U10 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
endmodule


module G_Cell_191 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_190 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_189 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_188 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_187 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw5_4 ( A, B, Cin, Sum, Cout );
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
  G_Cell_191 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_190 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_189 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_188 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_187 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U2 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U3 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U4 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U6 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U7 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U8 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U9 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U10 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
endmodule


module G_Cell_186 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_185 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_184 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_183 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_182 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw5_3 ( A, B, Cin, Sum, Cout );
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
  G_Cell_186 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_185 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_184 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_183 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_182 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U2 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U3 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U4 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U5 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U6 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U7 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U8 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U9 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U10 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
endmodule


module G_Cell_181 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_180 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_179 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_178 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_177 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module RCA_bw5_2 ( A, B, Cin, Sum, Cout );
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
  G_Cell_181 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_180 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_179 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_178 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_177 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        Cout) );
  XOR2X1_RVT U1 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U2 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U3 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U4 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U6 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U7 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U8 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U9 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U10 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
endmodule


module G_Cell_176 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_175 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_174 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_173 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(G0), .A2(P1), .A3(G1), .Y(GG) );
endmodule


module G_Cell_172 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_171 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_170 ( G0, G1, P1, GG );
  input G0, G1, P1;
  output GG;


  AO21X1_RVT U1 ( .A1(P1), .A2(G0), .A3(G1), .Y(GG) );
endmodule


module G_Cell_169 ( G0, G1, P1, GG );
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


module RCA_bw12_1 ( A, B, Cin, Sum, Cout );
  input [12:1] A;
  input [12:1] B;
  output [12:1] Sum;
  input Cin;
  output Cout;

  wire   [12:1] G;
  wire   [12:1] P;
  wire   [11:1] GG;

  AND2X1_RVT U25 ( .A1(A[9]), .A2(B[9]), .Y(G[9]) );
  AND2X1_RVT U26 ( .A1(A[8]), .A2(B[8]), .Y(G[8]) );
  AND2X1_RVT U27 ( .A1(A[7]), .A2(B[7]), .Y(G[7]) );
  AND2X1_RVT U28 ( .A1(A[6]), .A2(B[6]), .Y(G[6]) );
  AND2X1_RVT U29 ( .A1(A[5]), .A2(B[5]), .Y(G[5]) );
  AND2X1_RVT U30 ( .A1(A[4]), .A2(B[4]), .Y(G[4]) );
  AND2X1_RVT U31 ( .A1(A[3]), .A2(B[3]), .Y(G[3]) );
  AND2X1_RVT U32 ( .A1(A[2]), .A2(B[2]), .Y(G[2]) );
  AND2X1_RVT U33 ( .A1(A[1]), .A2(B[1]), .Y(G[1]) );
  AND2X1_RVT U34 ( .A1(A[12]), .A2(B[12]), .Y(G[12]) );
  AND2X1_RVT U35 ( .A1(A[11]), .A2(B[11]), .Y(G[11]) );
  AND2X1_RVT U36 ( .A1(A[10]), .A2(B[10]), .Y(G[10]) );
  G_Cell_176 U0 ( .G0(Cin), .G1(G[1]), .P1(P[1]), .GG(GG[1]) );
  G_Cell_175 \loop_1[1].genblk1.U1  ( .G0(GG[1]), .G1(G[2]), .P1(P[2]), .GG(
        GG[2]) );
  G_Cell_174 \loop_1[2].genblk1.U1  ( .G0(GG[2]), .G1(G[3]), .P1(P[3]), .GG(
        GG[3]) );
  G_Cell_173 \loop_1[3].genblk1.U1  ( .G0(GG[3]), .G1(G[4]), .P1(P[4]), .GG(
        GG[4]) );
  G_Cell_172 \loop_1[4].genblk1.U1  ( .G0(GG[4]), .G1(G[5]), .P1(P[5]), .GG(
        GG[5]) );
  G_Cell_171 \loop_1[5].genblk1.U1  ( .G0(GG[5]), .G1(G[6]), .P1(P[6]), .GG(
        GG[6]) );
  G_Cell_170 \loop_1[6].genblk1.U1  ( .G0(GG[6]), .G1(G[7]), .P1(P[7]), .GG(
        GG[7]) );
  G_Cell_169 \loop_1[7].genblk1.U1  ( .G0(GG[7]), .G1(G[8]), .P1(P[8]), .GG(
        GG[8]) );
  G_Cell_168 \loop_1[8].genblk1.U1  ( .G0(GG[8]), .G1(G[9]), .P1(P[9]), .GG(
        GG[9]) );
  G_Cell_167 \loop_1[9].genblk1.U1  ( .G0(GG[9]), .G1(G[10]), .P1(P[10]), .GG(
        GG[10]) );
  G_Cell_166 \loop_1[10].genblk1.U1  ( .G0(GG[10]), .G1(G[11]), .P1(P[11]), 
        .GG(GG[11]) );
  G_Cell_165 \loop_1[11].genblk1.U1  ( .G0(GG[11]), .G1(G[12]), .P1(P[12]), 
        .GG(Cout) );
  XOR2X1_RVT U1 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U2 ( .A1(GG[11]), .A2(P[12]), .Y(Sum[12]) );
  XOR2X1_RVT U3 ( .A1(A[11]), .A2(B[11]), .Y(P[11]) );
  XOR2X1_RVT U4 ( .A1(A[12]), .A2(B[12]), .Y(P[12]) );
  XOR2X1_RVT U5 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U6 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U7 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U8 ( .A1(A[6]), .A2(B[6]), .Y(P[6]) );
  XOR2X1_RVT U9 ( .A1(A[7]), .A2(B[7]), .Y(P[7]) );
  XOR2X1_RVT U10 ( .A1(A[8]), .A2(B[8]), .Y(P[8]) );
  XOR2X1_RVT U11 ( .A1(A[9]), .A2(B[9]), .Y(P[9]) );
  XOR2X1_RVT U12 ( .A1(A[10]), .A2(B[10]), .Y(P[10]) );
  XOR2X1_RVT U13 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U14 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U15 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
  XOR2X1_RVT U16 ( .A1(GG[10]), .A2(P[11]), .Y(Sum[11]) );
  XOR2X1_RVT U17 ( .A1(GG[7]), .A2(P[8]), .Y(Sum[8]) );
  XOR2X1_RVT U18 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U19 ( .A1(GG[9]), .A2(P[10]), .Y(Sum[10]) );
  XOR2X1_RVT U20 ( .A1(GG[8]), .A2(P[9]), .Y(Sum[9]) );
  XOR2X1_RVT U21 ( .A1(GG[6]), .A2(P[7]), .Y(Sum[7]) );
  XOR2X1_RVT U22 ( .A1(GG[5]), .A2(P[6]), .Y(Sum[6]) );
  XOR2X1_RVT U23 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U24 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
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
  XOR2X1_RVT U1 ( .A1(GG[2]), .A2(P[3]), .Y(Sum[3]) );
  XOR2X1_RVT U2 ( .A1(GG[3]), .A2(P[4]), .Y(Sum[4]) );
  XOR2X1_RVT U3 ( .A1(GG[4]), .A2(P[5]), .Y(Sum[5]) );
  XOR2X1_RVT U4 ( .A1(A[2]), .A2(B[2]), .Y(P[2]) );
  XOR2X1_RVT U5 ( .A1(A[3]), .A2(B[3]), .Y(P[3]) );
  XOR2X1_RVT U6 ( .A1(A[5]), .A2(B[5]), .Y(P[5]) );
  XOR2X1_RVT U7 ( .A1(A[4]), .A2(B[4]), .Y(P[4]) );
  XOR2X1_RVT U8 ( .A1(A[1]), .A2(B[1]), .Y(P[1]) );
  XOR2X1_RVT U9 ( .A1(Cin), .A2(P[1]), .Y(Sum[1]) );
  XOR2X1_RVT U10 ( .A1(GG[1]), .A2(P[2]), .Y(Sum[2]) );
endmodule


module normalization ( sA, sB, S, expA_R, exp, R_mts, Sum );
  input [4:0] expA_R;
  output [4:0] exp;
  input [22:0] R_mts;
  output [15:0] Sum;
  input sA, sB, S;
  wire   \mmts[11][22] , \mmts[11][21] , \mmts[11][20] , \mmts[11][19] ,
         \mmts[11][18] , \mmts[11][17] , \mmts[11][16] , \mmts[11][15] ,
         \mmts[11][14] , \mmts[11][13] , \mmts[11][12] , \mmts[11][11] ,
         \mmts[11][10] , \mmts[11][9] , \mmts[11][8] , \mmts[11][7] ,
         \mmts[11][6] , \mmts[11][5] , \mmts[11][4] , \mmts[11][3] ,
         \mmts[11][2] , \mmts[11][1] , \mmts[11][0] , \mmts[10][22] ,
         \mmts[9][22] , \mmts[7][22] , \mmts[6][22] , \mmts[5][22] ,
         \mmts[4][22] , \mmts[3][22] , \mmts[2][22] , \mmts[1][22] ,
         \ee[11][4] , \ee[11][3] , \ee[11][2] , \ee[11][1] , \ee[11][0] ,
         \ee[10][4] , \ee[10][3] , \ee[10][2] , \ee[10][1] , \ee[10][0] ,
         \ee[9][4] , \ee[9][3] , \ee[9][2] , \ee[9][1] , \ee[9][0] ,
         \ee[8][4] , \ee[8][3] , \ee[8][2] , \ee[8][1] , \ee[8][0] ,
         \ee[7][4] , \ee[7][3] , \ee[7][2] , \ee[7][1] , \ee[7][0] ,
         \ee[6][4] , \ee[6][3] , \ee[6][2] , \ee[6][1] , \ee[6][0] ,
         \ee[5][4] , \ee[5][3] , \ee[5][2] , \ee[5][1] , \ee[5][0] ,
         \ee[4][4] , \ee[4][3] , \ee[4][2] , \ee[4][1] , \ee[4][0] ,
         \ee[3][4] , \ee[3][3] , \ee[3][2] , \ee[3][1] , \ee[3][0] ,
         \ee[2][4] , \ee[2][3] , \ee[2][2] , \ee[2][1] , \ee[2][0] ,
         \ee[1][4] , \ee[1][3] , \ee[1][2] , \ee[1][1] , \ee[1][0] , rndup,
         \mts_rnd[11] , flag, \mmts[9][9] , \mmts[9][8] , \mmts[9][7] ,
         \mmts[9][6] , \mmts[9][5] , \mmts[9][4] , \mmts[9][3] , \mmts[9][2] ,
         \mmts[9][21] , \mmts[9][20] , \mmts[9][1] , \mmts[9][19] ,
         \mmts[9][18] , \mmts[9][17] , \mmts[9][16] , \mmts[9][15] ,
         \mmts[9][14] , \mmts[9][13] , \mmts[9][12] , \mmts[9][11] ,
         \mmts[9][10] , \mmts[9][0] , \mmts[8][9] , \mmts[8][8] , \mmts[8][7] ,
         \mmts[8][6] , \mmts[8][5] , \mmts[8][4] , \mmts[8][3] , \mmts[8][2] ,
         \mmts[8][21] , \mmts[8][20] , \mmts[8][1] , \mmts[8][19] ,
         \mmts[8][18] , \mmts[8][17] , \mmts[8][16] , \mmts[8][15] ,
         \mmts[8][14] , \mmts[8][13] , \mmts[8][12] , \mmts[8][11] ,
         \mmts[8][10] , \mmts[8][0] , \mmts[7][9] , \mmts[7][8] , \mmts[7][7] ,
         \mmts[7][6] , \mmts[7][5] , \mmts[7][4] , \mmts[7][3] , \mmts[7][2] ,
         \mmts[7][21] , \mmts[7][20] , \mmts[7][1] , \mmts[7][19] ,
         \mmts[7][18] , \mmts[7][17] , \mmts[7][16] , \mmts[7][15] ,
         \mmts[7][14] , \mmts[7][13] , \mmts[7][12] , \mmts[7][11] ,
         \mmts[7][10] , \mmts[7][0] , \mmts[6][9] , \mmts[6][8] , \mmts[6][7] ,
         \mmts[6][6] , \mmts[6][5] , \mmts[6][4] , \mmts[6][3] , \mmts[6][2] ,
         \mmts[6][21] , \mmts[6][20] , \mmts[6][1] , \mmts[6][19] ,
         \mmts[6][18] , \mmts[6][17] , \mmts[6][16] , \mmts[6][15] ,
         \mmts[6][14] , \mmts[6][13] , \mmts[6][12] , \mmts[6][11] ,
         \mmts[6][10] , \mmts[6][0] , \mmts[5][9] , \mmts[5][8] , \mmts[5][7] ,
         \mmts[5][6] , \mmts[5][5] , \mmts[5][4] , \mmts[5][3] , \mmts[5][2] ,
         \mmts[5][21] , \mmts[5][20] , \mmts[5][1] , \mmts[5][19] ,
         \mmts[5][18] , \mmts[5][17] , \mmts[5][16] , \mmts[5][15] ,
         \mmts[5][14] , \mmts[5][13] , \mmts[5][12] , \mmts[5][11] ,
         \mmts[5][10] , \mmts[5][0] , \mmts[4][9] , \mmts[4][8] , \mmts[4][7] ,
         \mmts[4][6] , \mmts[4][5] , \mmts[4][4] , \mmts[4][3] , \mmts[4][2] ,
         \mmts[4][21] , \mmts[4][20] , \mmts[4][1] , \mmts[4][19] ,
         \mmts[4][18] , \mmts[4][17] , \mmts[4][16] , \mmts[4][15] ,
         \mmts[4][14] , \mmts[4][13] , \mmts[4][12] , \mmts[4][11] ,
         \mmts[4][10] , \mmts[4][0] , \mmts[3][9] , \mmts[3][8] , \mmts[3][7] ,
         \mmts[3][6] , \mmts[3][5] , \mmts[3][4] , \mmts[3][3] , \mmts[3][2] ,
         \mmts[3][21] , \mmts[3][20] , \mmts[3][1] , \mmts[3][19] ,
         \mmts[3][18] , \mmts[3][17] , \mmts[3][16] , \mmts[3][15] ,
         \mmts[3][14] , \mmts[3][13] , \mmts[3][12] , \mmts[3][11] ,
         \mmts[3][10] , \mmts[3][0] , \mmts[2][9] , \mmts[2][8] , \mmts[2][7] ,
         \mmts[2][6] , \mmts[2][5] , \mmts[2][4] , \mmts[2][3] , \mmts[2][2] ,
         \mmts[2][21] , \mmts[2][20] , \mmts[2][1] , \mmts[2][19] ,
         \mmts[2][18] , \mmts[2][17] , \mmts[2][16] , \mmts[2][15] ,
         \mmts[2][14] , \mmts[2][13] , \mmts[2][12] , \mmts[2][11] ,
         \mmts[2][10] , \mmts[2][0] , \mmts[1][9] , \mmts[1][8] , \mmts[1][7] ,
         \mmts[1][6] , \mmts[1][5] , \mmts[1][4] , \mmts[1][3] , \mmts[1][2] ,
         \mmts[1][21] , \mmts[1][20] , \mmts[1][1] , \mmts[1][19] ,
         \mmts[1][18] , \mmts[1][17] , \mmts[1][16] , \mmts[1][15] ,
         \mmts[1][14] , \mmts[1][13] , \mmts[1][12] , \mmts[1][11] ,
         \mmts[1][10] , \mmts[1][0] , \mmts[10][9] , \mmts[10][8] ,
         \mmts[10][7] , \mmts[10][6] , \mmts[10][5] , \mmts[10][4] ,
         \mmts[10][3] , \mmts[10][2] , \mmts[10][21] , \mmts[10][20] ,
         \mmts[10][1] , \mmts[10][19] , \mmts[10][18] , \mmts[10][17] ,
         \mmts[10][16] , \mmts[10][15] , \mmts[10][14] , \mmts[10][13] ,
         \mmts[10][12] , \mmts[10][11] , \mmts[10][10] , \mmts[10][0] , n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n48, n49, n50, n51;
  wire   [22:0] neg_R_mts;
  wire   [22:0] mts_temp;
  wire   [4:0] eru;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign exp[4] = expA_R[4];
  assign exp[3] = expA_R[3];
  assign exp[2] = expA_R[2];
  assign exp[1] = expA_R[1];
  assign exp[0] = expA_R[0];

  OA21X1_RVT U45 ( .A1(n38), .A2(n39), .A3(\mmts[11][11] ), .Y(rndup) );
  OR3X1_RVT U46 ( .A1(\mmts[11][3] ), .A2(\mmts[11][2] ), .A3(\mmts[11][1] ), 
        .Y(n40) );
  OR3X1_RVT U47 ( .A1(\mmts[11][9] ), .A2(\mmts[11][8] ), .A3(\mmts[11][7] ), 
        .Y(n41) );
  AO22X1_RVT U48 ( .A1(neg_R_mts[9]), .A2(n13), .A3(n12), .A4(R_mts[9]), .Y(
        mts_temp[9]) );
  AO22X1_RVT U49 ( .A1(neg_R_mts[8]), .A2(n13), .A3(n12), .A4(R_mts[8]), .Y(
        mts_temp[8]) );
  AO22X1_RVT U50 ( .A1(neg_R_mts[7]), .A2(n13), .A3(n42), .A4(R_mts[7]), .Y(
        mts_temp[7]) );
  AO22X1_RVT U51 ( .A1(neg_R_mts[6]), .A2(n13), .A3(n12), .A4(R_mts[6]), .Y(
        mts_temp[6]) );
  AO22X1_RVT U52 ( .A1(neg_R_mts[5]), .A2(n13), .A3(n42), .A4(R_mts[5]), .Y(
        mts_temp[5]) );
  AO22X1_RVT U53 ( .A1(neg_R_mts[4]), .A2(n13), .A3(n12), .A4(R_mts[4]), .Y(
        mts_temp[4]) );
  AO22X1_RVT U65 ( .A1(neg_R_mts[14]), .A2(n15), .A3(n42), .A4(R_mts[14]), .Y(
        mts_temp[14]) );
  AO22X1_RVT U69 ( .A1(neg_R_mts[10]), .A2(n13), .A3(n42), .A4(R_mts[10]), .Y(
        mts_temp[10]) );
  AO22X1_RVT U70 ( .A1(neg_R_mts[0]), .A2(n13), .A3(n42), .A4(R_mts[0]), .Y(
        mts_temp[0]) );
  AO22X1_RVT U72 ( .A1(S), .A2(n44), .A3(n45), .A4(n17), .Y(n43) );
  AO22X1_RVT U74 ( .A1(\mts_rnd[11] ), .A2(\ee[11][4] ), .A3(eru[4]), .A4(n47), 
        .Y(Sum[14]) );
  AO22X1_RVT U75 ( .A1(\ee[11][3] ), .A2(\mts_rnd[11] ), .A3(eru[3]), .A4(n47), 
        .Y(Sum[13]) );
  AO22X1_RVT U76 ( .A1(\ee[11][2] ), .A2(\mts_rnd[11] ), .A3(eru[2]), .A4(n47), 
        .Y(Sum[12]) );
  AO22X1_RVT U77 ( .A1(\ee[11][1] ), .A2(\mts_rnd[11] ), .A3(eru[1]), .A4(n47), 
        .Y(Sum[11]) );
  AO22X1_RVT U78 ( .A1(\ee[11][0] ), .A2(\mts_rnd[11] ), .A3(eru[0]), .A4(n47), 
        .Y(Sum[10]) );
  AND2X1_RVT U79 ( .A1(flag), .A2(n18), .Y(n47) );
  RCA_bw23_1 rc7 ( .A({n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, 
        n30, n31, n32, n33, n34, n35, n36, n37, n48, n49, n50, n51}), .B({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Cin(
        1'b1), .Sum(neg_R_mts) );
  RCA_bw5_12 \loop_1[0].rc7  ( .A(expA_R), .B({1'b1, 1'b1, 1'b1, 1'b1, 
        mts_temp[22]}), .Cin(1'b1), .Sum({\ee[1][4] , \ee[1][3] , \ee[1][2] , 
        \ee[1][1] , \ee[1][0] }) );
  RCA_bw5_11 \loop_1[1].rc7  ( .A({\ee[1][4] , \ee[1][3] , \ee[1][2] , 
        \ee[1][1] , \ee[1][0] }), .B({1'b1, 1'b1, 1'b1, 1'b1, \mmts[1][22] }), 
        .Cin(1'b1), .Sum({\ee[2][4] , \ee[2][3] , \ee[2][2] , \ee[2][1] , 
        \ee[2][0] }) );
  RCA_bw5_10 \loop_1[2].rc7  ( .A({\ee[2][4] , \ee[2][3] , \ee[2][2] , 
        \ee[2][1] , \ee[2][0] }), .B({1'b1, 1'b1, 1'b1, 1'b1, \mmts[2][22] }), 
        .Cin(1'b1), .Sum({\ee[3][4] , \ee[3][3] , \ee[3][2] , \ee[3][1] , 
        \ee[3][0] }) );
  RCA_bw5_9 \loop_1[3].rc7  ( .A({\ee[3][4] , \ee[3][3] , \ee[3][2] , 
        \ee[3][1] , \ee[3][0] }), .B({1'b1, 1'b1, 1'b1, 1'b1, \mmts[3][22] }), 
        .Cin(1'b1), .Sum({\ee[4][4] , \ee[4][3] , \ee[4][2] , \ee[4][1] , 
        \ee[4][0] }) );
  RCA_bw5_8 \loop_1[4].rc7  ( .A({\ee[4][4] , \ee[4][3] , \ee[4][2] , 
        \ee[4][1] , \ee[4][0] }), .B({1'b1, 1'b1, 1'b1, 1'b1, \mmts[4][22] }), 
        .Cin(1'b1), .Sum({\ee[5][4] , \ee[5][3] , \ee[5][2] , \ee[5][1] , 
        \ee[5][0] }) );
  RCA_bw5_7 \loop_1[5].rc7  ( .A({\ee[5][4] , \ee[5][3] , \ee[5][2] , 
        \ee[5][1] , \ee[5][0] }), .B({1'b1, 1'b1, 1'b1, 1'b1, \mmts[5][22] }), 
        .Cin(1'b1), .Sum({\ee[6][4] , \ee[6][3] , \ee[6][2] , \ee[6][1] , 
        \ee[6][0] }) );
  RCA_bw5_6 \loop_1[6].rc7  ( .A({\ee[6][4] , \ee[6][3] , \ee[6][2] , 
        \ee[6][1] , \ee[6][0] }), .B({1'b1, 1'b1, 1'b1, 1'b1, \mmts[6][22] }), 
        .Cin(1'b1), .Sum({\ee[7][4] , \ee[7][3] , \ee[7][2] , \ee[7][1] , 
        \ee[7][0] }) );
  RCA_bw5_5 \loop_1[7].rc7  ( .A({\ee[7][4] , \ee[7][3] , \ee[7][2] , 
        \ee[7][1] , \ee[7][0] }), .B({1'b1, 1'b1, 1'b1, 1'b1, \mmts[7][22] }), 
        .Cin(1'b1), .Sum({\ee[8][4] , \ee[8][3] , \ee[8][2] , \ee[8][1] , 
        \ee[8][0] }) );
  RCA_bw5_4 \loop_1[8].rc7  ( .A({\ee[8][4] , \ee[8][3] , \ee[8][2] , 
        \ee[8][1] , \ee[8][0] }), .B({1'b1, 1'b1, 1'b1, 1'b1, n1}), .Cin(1'b1), 
        .Sum({\ee[9][4] , \ee[9][3] , \ee[9][2] , \ee[9][1] , \ee[9][0] }) );
  RCA_bw5_3 \loop_1[9].rc7  ( .A({\ee[9][4] , \ee[9][3] , \ee[9][2] , 
        \ee[9][1] , \ee[9][0] }), .B({1'b1, 1'b1, 1'b1, 1'b1, \mmts[9][22] }), 
        .Cin(1'b1), .Sum({\ee[10][4] , \ee[10][3] , \ee[10][2] , \ee[10][1] , 
        \ee[10][0] }) );
  RCA_bw5_2 \loop_1[10].rc7  ( .A({\ee[10][4] , \ee[10][3] , \ee[10][2] , 
        \ee[10][1] , \ee[10][0] }), .B({1'b1, 1'b1, 1'b1, 1'b1, \mmts[10][22] }), .Cin(1'b1), .Sum({\ee[11][4] , \ee[11][3] , \ee[11][2] , \ee[11][1] , 
        \ee[11][0] }) );
  RCA_bw12_1 rc8 ( .A({\mmts[11][22] , \mmts[11][21] , \mmts[11][20] , 
        \mmts[11][19] , \mmts[11][18] , \mmts[11][17] , \mmts[11][16] , 
        \mmts[11][15] , \mmts[11][14] , \mmts[11][13] , \mmts[11][12] , 
        \mmts[11][11] }), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, rndup}), .Cin(1'b0), .Sum({\mts_rnd[11] , Sum[9:0], 
        SYNOPSYS_UNCONNECTED__0}), .Cout(flag) );
  RCA_bw5_1 rc9 ( .A({\ee[11][4] , \ee[11][3] , \ee[11][2] , \ee[11][1] , 
        \ee[11][0] }), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Cin(1'b1), .Sum(
        eru) );
  OR2X1_RVT U3 ( .A1(n16), .A2(\mmts[7][21] ), .Y(n1) );
  MUX21X1_RVT U4 ( .A1(mts_temp[18]), .A2(mts_temp[19]), .S0(mts_temp[22]), 
        .Y(\mmts[1][19] ) );
  INVX1_RVT U5 ( .A(n2), .Y(n3) );
  INVX1_RVT U6 ( .A(\mmts[10][22] ), .Y(n2) );
  OR2X1_RVT U7 ( .A1(\mmts[9][22] ), .A2(\mmts[9][21] ), .Y(\mmts[10][22] ) );
  OR4X1_RVT U8 ( .A1(\mmts[11][6] ), .A2(\mmts[11][5] ), .A3(\mmts[11][4] ), 
        .A4(n41), .Y(n38) );
  OR4X1_RVT U9 ( .A1(\mmts[11][12] ), .A2(\mmts[11][10] ), .A3(\mmts[11][0] ), 
        .A4(n40), .Y(n39) );
  MUX21X1_RVT U10 ( .A1(\mmts[10][7] ), .A2(\mmts[10][8] ), .S0(n3), .Y(
        \mmts[11][8] ) );
  MUX21X1_RVT U11 ( .A1(\mmts[10][8] ), .A2(\mmts[10][9] ), .S0(n3), .Y(
        \mmts[11][9] ) );
  OR2X1_RVT U12 ( .A1(n11), .A2(\mmts[8][21] ), .Y(\mmts[9][22] ) );
  INVX1_RVT U13 ( .A(n1), .Y(n10) );
  MUX21X1_RVT U14 ( .A1(\mmts[9][0] ), .A2(\mmts[9][1] ), .S0(\mmts[9][22] ), 
        .Y(\mmts[10][1] ) );
  MUX21X1_RVT U15 ( .A1(\mmts[9][1] ), .A2(\mmts[9][2] ), .S0(\mmts[9][22] ), 
        .Y(\mmts[10][2] ) );
  MUX21X1_RVT U16 ( .A1(\mmts[9][6] ), .A2(\mmts[9][7] ), .S0(\mmts[9][22] ), 
        .Y(\mmts[10][7] ) );
  MUX21X1_RVT U17 ( .A1(\mmts[9][2] ), .A2(\mmts[9][3] ), .S0(\mmts[9][22] ), 
        .Y(\mmts[10][3] ) );
  INVX1_RVT U18 ( .A(n16), .Y(n9) );
  OR2X1_RVT U19 ( .A1(n16), .A2(\mmts[7][21] ), .Y(n11) );
  NBUFFX2_RVT U20 ( .A(\mmts[7][22] ), .Y(n16) );
  INVX1_RVT U21 ( .A(n4), .Y(\mmts[8][9] ) );
  INVX1_RVT U22 ( .A(\mmts[7][9] ), .Y(n5) );
  INVX1_RVT U23 ( .A(n6), .Y(\mmts[8][8] ) );
  INVX1_RVT U24 ( .A(\mmts[7][7] ), .Y(n7) );
  MUX21X1_RVT U25 ( .A1(\mmts[7][7] ), .A2(\mmts[7][6] ), .S0(n9), .Y(
        \mmts[8][7] ) );
  INVX1_RVT U26 ( .A(\mmts[7][8] ), .Y(n8) );
  MUX21X1_RVT U27 ( .A1(\mmts[5][20] ), .A2(\mmts[5][21] ), .S0(\mmts[5][22] ), 
        .Y(\mmts[6][21] ) );
  OR2X1_RVT U28 ( .A1(\mmts[3][22] ), .A2(\mmts[3][21] ), .Y(\mmts[4][22] ) );
  MUX21X1_RVT U29 ( .A1(\mmts[2][20] ), .A2(\mmts[2][21] ), .S0(\mmts[2][22] ), 
        .Y(\mmts[3][21] ) );
  MUX21X1_RVT U30 ( .A1(\mmts[2][19] ), .A2(\mmts[2][20] ), .S0(\mmts[2][22] ), 
        .Y(\mmts[3][20] ) );
  INVX1_RVT U31 ( .A(S), .Y(n17) );
  MUX21X1_RVT U32 ( .A1(\mmts[1][20] ), .A2(\mmts[1][21] ), .S0(\mmts[1][22] ), 
        .Y(\mmts[2][21] ) );
  MUX21X1_RVT U33 ( .A1(\mmts[1][19] ), .A2(\mmts[1][20] ), .S0(\mmts[1][22] ), 
        .Y(\mmts[2][20] ) );
  MUX21X1_RVT U34 ( .A1(\mmts[1][17] ), .A2(\mmts[1][18] ), .S0(\mmts[1][22] ), 
        .Y(\mmts[2][18] ) );
  MUX21X1_RVT U35 ( .A1(\mmts[1][14] ), .A2(\mmts[1][15] ), .S0(\mmts[1][22] ), 
        .Y(\mmts[2][15] ) );
  MUX21X1_RVT U36 ( .A1(\mmts[1][2] ), .A2(\mmts[1][3] ), .S0(\mmts[1][22] ), 
        .Y(\mmts[2][3] ) );
  MUX21X1_RVT U37 ( .A1(\mmts[1][13] ), .A2(\mmts[1][14] ), .S0(\mmts[1][22] ), 
        .Y(\mmts[2][14] ) );
  INVX1_RVT U38 ( .A(R_mts[21]), .Y(n20) );
  INVX1_RVT U39 ( .A(n15), .Y(n12) );
  MUX21X1_RVT U40 ( .A1(mts_temp[14]), .A2(mts_temp[15]), .S0(mts_temp[22]), 
        .Y(\mmts[1][15] ) );
  MUX21X1_RVT U41 ( .A1(mts_temp[13]), .A2(mts_temp[14]), .S0(mts_temp[22]), 
        .Y(\mmts[1][14] ) );
  MUX21X1_RVT U42 ( .A1(mts_temp[12]), .A2(mts_temp[13]), .S0(mts_temp[22]), 
        .Y(\mmts[1][13] ) );
  MUX21X1_RVT U43 ( .A1(mts_temp[8]), .A2(mts_temp[9]), .S0(mts_temp[22]), .Y(
        \mmts[1][9] ) );
  MUX21X1_RVT U44 ( .A1(mts_temp[9]), .A2(mts_temp[10]), .S0(mts_temp[22]), 
        .Y(\mmts[1][10] ) );
  MUX21X1_RVT U54 ( .A1(mts_temp[10]), .A2(mts_temp[11]), .S0(mts_temp[22]), 
        .Y(\mmts[1][11] ) );
  MUX21X1_RVT U55 ( .A1(mts_temp[11]), .A2(mts_temp[12]), .S0(mts_temp[22]), 
        .Y(\mmts[1][12] ) );
  MUX21X1_RVT U56 ( .A1(mts_temp[16]), .A2(mts_temp[17]), .S0(mts_temp[22]), 
        .Y(\mmts[1][17] ) );
  MUX21X1_RVT U57 ( .A1(mts_temp[1]), .A2(mts_temp[2]), .S0(mts_temp[22]), .Y(
        \mmts[1][2] ) );
  MUX21X1_RVT U58 ( .A1(mts_temp[17]), .A2(mts_temp[18]), .S0(mts_temp[22]), 
        .Y(\mmts[1][18] ) );
  MUX21X1_RVT U59 ( .A1(mts_temp[15]), .A2(mts_temp[16]), .S0(mts_temp[22]), 
        .Y(\mmts[1][16] ) );
  INVX1_RVT U60 ( .A(R_mts[22]), .Y(n19) );
  INVX1_RVT U61 ( .A(n42), .Y(n13) );
  INVX1_RVT U62 ( .A(n42), .Y(n14) );
  INVX1_RVT U63 ( .A(n42), .Y(n15) );
  AO22X1_RVT U64 ( .A1(neg_R_mts[13]), .A2(n15), .A3(n12), .A4(R_mts[13]), .Y(
        mts_temp[13]) );
  OA21X1_RVT U66 ( .A1(flag), .A2(\mts_rnd[11] ), .A3(n43), .Y(Sum[15]) );
  MUX21X1_RVT U67 ( .A1(mts_temp[0]), .A2(mts_temp[1]), .S0(mts_temp[22]), .Y(
        \mmts[1][1] ) );
  AO22X1_RVT U68 ( .A1(neg_R_mts[16]), .A2(n15), .A3(n42), .A4(R_mts[16]), .Y(
        mts_temp[16]) );
  AO22X1_RVT U71 ( .A1(neg_R_mts[12]), .A2(n15), .A3(n42), .A4(R_mts[12]), .Y(
        mts_temp[12]) );
  OA21X1_RVT U73 ( .A1(neg_R_mts[22]), .A2(n12), .A3(R_mts[22]), .Y(
        mts_temp[22]) );
  AO22X1_RVT U80 ( .A1(neg_R_mts[21]), .A2(n14), .A3(n12), .A4(R_mts[21]), .Y(
        mts_temp[21]) );
  AO22X1_RVT U81 ( .A1(neg_R_mts[1]), .A2(n14), .A3(n42), .A4(R_mts[1]), .Y(
        mts_temp[1]) );
  AO22X1_RVT U82 ( .A1(neg_R_mts[2]), .A2(n14), .A3(n12), .A4(R_mts[2]), .Y(
        mts_temp[2]) );
  AO22X1_RVT U83 ( .A1(neg_R_mts[20]), .A2(n14), .A3(n12), .A4(R_mts[20]), .Y(
        mts_temp[20]) );
  AO22X1_RVT U84 ( .A1(neg_R_mts[3]), .A2(n14), .A3(n42), .A4(R_mts[3]), .Y(
        mts_temp[3]) );
  INVX1_RVT U85 ( .A(\mts_rnd[11] ), .Y(n18) );
  AO22X1_RVT U86 ( .A1(neg_R_mts[17]), .A2(n15), .A3(n12), .A4(R_mts[17]), .Y(
        mts_temp[17]) );
  XNOR2X1_RVT U87 ( .A1(sB), .A2(n12), .Y(n45) );
  NAND2X0_RVT U88 ( .A1(n46), .A2(R_mts[22]), .Y(n42) );
  MUX21X1_RVT U89 ( .A1(\mmts[7][11] ), .A2(\mmts[7][10] ), .S0(n9), .Y(
        \mmts[8][11] ) );
  MUX21X1_RVT U90 ( .A1(\mmts[7][10] ), .A2(\mmts[7][9] ), .S0(n9), .Y(
        \mmts[8][10] ) );
  MUX21X1_RVT U91 ( .A1(\mmts[8][10] ), .A2(\mmts[8][9] ), .S0(n10), .Y(
        \mmts[9][10] ) );
  MUX21X1_RVT U92 ( .A1(n5), .A2(n8), .S0(n9), .Y(n4) );
  MUX21X1_RVT U93 ( .A1(n8), .A2(n7), .S0(n9), .Y(n6) );
  MUX21X1_RVT U94 ( .A1(\mmts[8][7] ), .A2(\mmts[8][6] ), .S0(n10), .Y(
        \mmts[9][7] ) );
  MUX21X1_RVT U95 ( .A1(mts_temp[20]), .A2(mts_temp[21]), .S0(mts_temp[22]), 
        .Y(\mmts[1][21] ) );
  MUX21X1_RVT U96 ( .A1(mts_temp[19]), .A2(mts_temp[20]), .S0(mts_temp[22]), 
        .Y(\mmts[1][20] ) );
  MUX21X1_RVT U97 ( .A1(\mmts[6][20] ), .A2(\mmts[6][21] ), .S0(\mmts[6][22] ), 
        .Y(\mmts[7][21] ) );
  XOR2X1_RVT U98 ( .A1(sB), .A2(sA), .Y(n46) );
  AO22X1_RVT U99 ( .A1(neg_R_mts[18]), .A2(n14), .A3(n12), .A4(R_mts[18]), .Y(
        mts_temp[18]) );
  AO22X1_RVT U100 ( .A1(neg_R_mts[19]), .A2(n14), .A3(n12), .A4(R_mts[19]), 
        .Y(mts_temp[19]) );
  AO22X1_RVT U101 ( .A1(neg_R_mts[11]), .A2(n15), .A3(n12), .A4(R_mts[11]), 
        .Y(mts_temp[11]) );
  MUX21X1_RVT U102 ( .A1(\mmts[7][20] ), .A2(\mmts[7][21] ), .S0(\mmts[7][22] ), .Y(\mmts[8][21] ) );
  AO22X1_RVT U103 ( .A1(neg_R_mts[15]), .A2(n15), .A3(n12), .A4(R_mts[15]), 
        .Y(mts_temp[15]) );
  XNOR2X1_RVT U104 ( .A1(sA), .A2(n42), .Y(n44) );
  INVX1_RVT U105 ( .A(R_mts[20]), .Y(n21) );
  INVX1_RVT U106 ( .A(R_mts[19]), .Y(n22) );
  INVX1_RVT U107 ( .A(R_mts[18]), .Y(n23) );
  INVX1_RVT U108 ( .A(R_mts[17]), .Y(n24) );
  INVX1_RVT U109 ( .A(R_mts[16]), .Y(n25) );
  INVX1_RVT U110 ( .A(R_mts[15]), .Y(n26) );
  INVX1_RVT U111 ( .A(R_mts[14]), .Y(n27) );
  INVX1_RVT U112 ( .A(R_mts[13]), .Y(n28) );
  INVX1_RVT U113 ( .A(R_mts[12]), .Y(n29) );
  INVX1_RVT U114 ( .A(R_mts[11]), .Y(n30) );
  INVX1_RVT U115 ( .A(R_mts[10]), .Y(n31) );
  INVX1_RVT U116 ( .A(R_mts[9]), .Y(n32) );
  INVX1_RVT U117 ( .A(R_mts[8]), .Y(n33) );
  INVX1_RVT U118 ( .A(R_mts[7]), .Y(n34) );
  INVX1_RVT U119 ( .A(R_mts[6]), .Y(n35) );
  INVX1_RVT U120 ( .A(R_mts[5]), .Y(n36) );
  INVX1_RVT U121 ( .A(R_mts[4]), .Y(n37) );
  INVX1_RVT U122 ( .A(R_mts[3]), .Y(n48) );
  INVX1_RVT U123 ( .A(R_mts[2]), .Y(n49) );
  INVX1_RVT U124 ( .A(R_mts[1]), .Y(n50) );
  INVX1_RVT U125 ( .A(R_mts[0]), .Y(n51) );
  AND2X1_RVT U126 ( .A1(mts_temp[0]), .A2(mts_temp[22]), .Y(\mmts[1][0] ) );
  OR2X1_RVT U127 ( .A1(mts_temp[22]), .A2(mts_temp[21]), .Y(\mmts[1][22] ) );
  MUX21X1_RVT U128 ( .A1(mts_temp[2]), .A2(mts_temp[3]), .S0(mts_temp[22]), 
        .Y(\mmts[1][3] ) );
  MUX21X1_RVT U129 ( .A1(mts_temp[3]), .A2(mts_temp[4]), .S0(mts_temp[22]), 
        .Y(\mmts[1][4] ) );
  MUX21X1_RVT U130 ( .A1(mts_temp[4]), .A2(mts_temp[5]), .S0(mts_temp[22]), 
        .Y(\mmts[1][5] ) );
  MUX21X1_RVT U131 ( .A1(mts_temp[5]), .A2(mts_temp[6]), .S0(mts_temp[22]), 
        .Y(\mmts[1][6] ) );
  MUX21X1_RVT U132 ( .A1(mts_temp[6]), .A2(mts_temp[7]), .S0(mts_temp[22]), 
        .Y(\mmts[1][7] ) );
  MUX21X1_RVT U133 ( .A1(mts_temp[7]), .A2(mts_temp[8]), .S0(mts_temp[22]), 
        .Y(\mmts[1][8] ) );
  AND2X1_RVT U134 ( .A1(\mmts[1][0] ), .A2(\mmts[1][22] ), .Y(\mmts[2][0] ) );
  MUX21X1_RVT U135 ( .A1(\mmts[1][9] ), .A2(\mmts[1][10] ), .S0(\mmts[1][22] ), 
        .Y(\mmts[2][10] ) );
  MUX21X1_RVT U136 ( .A1(\mmts[1][10] ), .A2(\mmts[1][11] ), .S0(\mmts[1][22] ), .Y(\mmts[2][11] ) );
  MUX21X1_RVT U137 ( .A1(\mmts[1][11] ), .A2(\mmts[1][12] ), .S0(\mmts[1][22] ), .Y(\mmts[2][12] ) );
  MUX21X1_RVT U138 ( .A1(\mmts[1][12] ), .A2(\mmts[1][13] ), .S0(\mmts[1][22] ), .Y(\mmts[2][13] ) );
  MUX21X1_RVT U139 ( .A1(\mmts[1][15] ), .A2(\mmts[1][16] ), .S0(\mmts[1][22] ), .Y(\mmts[2][16] ) );
  MUX21X1_RVT U140 ( .A1(\mmts[1][16] ), .A2(\mmts[1][17] ), .S0(\mmts[1][22] ), .Y(\mmts[2][17] ) );
  MUX21X1_RVT U141 ( .A1(\mmts[1][18] ), .A2(\mmts[1][19] ), .S0(\mmts[1][22] ), .Y(\mmts[2][19] ) );
  MUX21X1_RVT U142 ( .A1(\mmts[1][0] ), .A2(\mmts[1][1] ), .S0(\mmts[1][22] ), 
        .Y(\mmts[2][1] ) );
  OR2X1_RVT U143 ( .A1(\mmts[1][22] ), .A2(\mmts[1][21] ), .Y(\mmts[2][22] )
         );
  MUX21X1_RVT U144 ( .A1(\mmts[1][1] ), .A2(\mmts[1][2] ), .S0(\mmts[1][22] ), 
        .Y(\mmts[2][2] ) );
  MUX21X1_RVT U145 ( .A1(\mmts[1][3] ), .A2(\mmts[1][4] ), .S0(\mmts[1][22] ), 
        .Y(\mmts[2][4] ) );
  MUX21X1_RVT U146 ( .A1(\mmts[1][4] ), .A2(\mmts[1][5] ), .S0(\mmts[1][22] ), 
        .Y(\mmts[2][5] ) );
  MUX21X1_RVT U147 ( .A1(\mmts[1][5] ), .A2(\mmts[1][6] ), .S0(\mmts[1][22] ), 
        .Y(\mmts[2][6] ) );
  MUX21X1_RVT U148 ( .A1(\mmts[1][6] ), .A2(\mmts[1][7] ), .S0(\mmts[1][22] ), 
        .Y(\mmts[2][7] ) );
  MUX21X1_RVT U149 ( .A1(\mmts[1][7] ), .A2(\mmts[1][8] ), .S0(\mmts[1][22] ), 
        .Y(\mmts[2][8] ) );
  MUX21X1_RVT U150 ( .A1(\mmts[1][8] ), .A2(\mmts[1][9] ), .S0(\mmts[1][22] ), 
        .Y(\mmts[2][9] ) );
  AND2X1_RVT U151 ( .A1(\mmts[2][0] ), .A2(\mmts[2][22] ), .Y(\mmts[3][0] ) );
  MUX21X1_RVT U152 ( .A1(\mmts[2][9] ), .A2(\mmts[2][10] ), .S0(\mmts[2][22] ), 
        .Y(\mmts[3][10] ) );
  MUX21X1_RVT U153 ( .A1(\mmts[2][10] ), .A2(\mmts[2][11] ), .S0(\mmts[2][22] ), .Y(\mmts[3][11] ) );
  MUX21X1_RVT U154 ( .A1(\mmts[2][11] ), .A2(\mmts[2][12] ), .S0(\mmts[2][22] ), .Y(\mmts[3][12] ) );
  MUX21X1_RVT U155 ( .A1(\mmts[2][12] ), .A2(\mmts[2][13] ), .S0(\mmts[2][22] ), .Y(\mmts[3][13] ) );
  MUX21X1_RVT U156 ( .A1(\mmts[2][13] ), .A2(\mmts[2][14] ), .S0(\mmts[2][22] ), .Y(\mmts[3][14] ) );
  MUX21X1_RVT U157 ( .A1(\mmts[2][14] ), .A2(\mmts[2][15] ), .S0(\mmts[2][22] ), .Y(\mmts[3][15] ) );
  MUX21X1_RVT U158 ( .A1(\mmts[2][15] ), .A2(\mmts[2][16] ), .S0(\mmts[2][22] ), .Y(\mmts[3][16] ) );
  MUX21X1_RVT U159 ( .A1(\mmts[2][16] ), .A2(\mmts[2][17] ), .S0(\mmts[2][22] ), .Y(\mmts[3][17] ) );
  MUX21X1_RVT U160 ( .A1(\mmts[2][17] ), .A2(\mmts[2][18] ), .S0(\mmts[2][22] ), .Y(\mmts[3][18] ) );
  MUX21X1_RVT U161 ( .A1(\mmts[2][18] ), .A2(\mmts[2][19] ), .S0(\mmts[2][22] ), .Y(\mmts[3][19] ) );
  MUX21X1_RVT U162 ( .A1(\mmts[2][0] ), .A2(\mmts[2][1] ), .S0(\mmts[2][22] ), 
        .Y(\mmts[3][1] ) );
  OR2X1_RVT U163 ( .A1(\mmts[2][22] ), .A2(\mmts[2][21] ), .Y(\mmts[3][22] )
         );
  MUX21X1_RVT U164 ( .A1(\mmts[2][1] ), .A2(\mmts[2][2] ), .S0(\mmts[2][22] ), 
        .Y(\mmts[3][2] ) );
  MUX21X1_RVT U165 ( .A1(\mmts[2][2] ), .A2(\mmts[2][3] ), .S0(\mmts[2][22] ), 
        .Y(\mmts[3][3] ) );
  MUX21X1_RVT U166 ( .A1(\mmts[2][3] ), .A2(\mmts[2][4] ), .S0(\mmts[2][22] ), 
        .Y(\mmts[3][4] ) );
  MUX21X1_RVT U167 ( .A1(\mmts[2][4] ), .A2(\mmts[2][5] ), .S0(\mmts[2][22] ), 
        .Y(\mmts[3][5] ) );
  MUX21X1_RVT U168 ( .A1(\mmts[2][5] ), .A2(\mmts[2][6] ), .S0(\mmts[2][22] ), 
        .Y(\mmts[3][6] ) );
  MUX21X1_RVT U169 ( .A1(\mmts[2][6] ), .A2(\mmts[2][7] ), .S0(\mmts[2][22] ), 
        .Y(\mmts[3][7] ) );
  MUX21X1_RVT U170 ( .A1(\mmts[2][7] ), .A2(\mmts[2][8] ), .S0(\mmts[2][22] ), 
        .Y(\mmts[3][8] ) );
  MUX21X1_RVT U171 ( .A1(\mmts[2][8] ), .A2(\mmts[2][9] ), .S0(\mmts[2][22] ), 
        .Y(\mmts[3][9] ) );
  AND2X1_RVT U172 ( .A1(\mmts[3][0] ), .A2(\mmts[3][22] ), .Y(\mmts[4][0] ) );
  MUX21X1_RVT U173 ( .A1(\mmts[3][9] ), .A2(\mmts[3][10] ), .S0(\mmts[3][22] ), 
        .Y(\mmts[4][10] ) );
  MUX21X1_RVT U174 ( .A1(\mmts[3][10] ), .A2(\mmts[3][11] ), .S0(\mmts[3][22] ), .Y(\mmts[4][11] ) );
  MUX21X1_RVT U175 ( .A1(\mmts[3][11] ), .A2(\mmts[3][12] ), .S0(\mmts[3][22] ), .Y(\mmts[4][12] ) );
  MUX21X1_RVT U176 ( .A1(\mmts[3][12] ), .A2(\mmts[3][13] ), .S0(\mmts[3][22] ), .Y(\mmts[4][13] ) );
  MUX21X1_RVT U177 ( .A1(\mmts[3][13] ), .A2(\mmts[3][14] ), .S0(\mmts[3][22] ), .Y(\mmts[4][14] ) );
  MUX21X1_RVT U178 ( .A1(\mmts[3][14] ), .A2(\mmts[3][15] ), .S0(\mmts[3][22] ), .Y(\mmts[4][15] ) );
  MUX21X1_RVT U179 ( .A1(\mmts[3][15] ), .A2(\mmts[3][16] ), .S0(\mmts[3][22] ), .Y(\mmts[4][16] ) );
  MUX21X1_RVT U180 ( .A1(\mmts[3][16] ), .A2(\mmts[3][17] ), .S0(\mmts[3][22] ), .Y(\mmts[4][17] ) );
  MUX21X1_RVT U181 ( .A1(\mmts[3][17] ), .A2(\mmts[3][18] ), .S0(\mmts[3][22] ), .Y(\mmts[4][18] ) );
  MUX21X1_RVT U182 ( .A1(\mmts[3][18] ), .A2(\mmts[3][19] ), .S0(\mmts[3][22] ), .Y(\mmts[4][19] ) );
  MUX21X1_RVT U183 ( .A1(\mmts[3][0] ), .A2(\mmts[3][1] ), .S0(\mmts[3][22] ), 
        .Y(\mmts[4][1] ) );
  MUX21X1_RVT U184 ( .A1(\mmts[3][19] ), .A2(\mmts[3][20] ), .S0(\mmts[3][22] ), .Y(\mmts[4][20] ) );
  MUX21X1_RVT U185 ( .A1(\mmts[3][20] ), .A2(\mmts[3][21] ), .S0(\mmts[3][22] ), .Y(\mmts[4][21] ) );
  MUX21X1_RVT U186 ( .A1(\mmts[3][1] ), .A2(\mmts[3][2] ), .S0(\mmts[3][22] ), 
        .Y(\mmts[4][2] ) );
  MUX21X1_RVT U187 ( .A1(\mmts[3][2] ), .A2(\mmts[3][3] ), .S0(\mmts[3][22] ), 
        .Y(\mmts[4][3] ) );
  MUX21X1_RVT U188 ( .A1(\mmts[3][3] ), .A2(\mmts[3][4] ), .S0(\mmts[3][22] ), 
        .Y(\mmts[4][4] ) );
  MUX21X1_RVT U189 ( .A1(\mmts[3][4] ), .A2(\mmts[3][5] ), .S0(\mmts[3][22] ), 
        .Y(\mmts[4][5] ) );
  MUX21X1_RVT U190 ( .A1(\mmts[3][5] ), .A2(\mmts[3][6] ), .S0(\mmts[3][22] ), 
        .Y(\mmts[4][6] ) );
  MUX21X1_RVT U191 ( .A1(\mmts[3][6] ), .A2(\mmts[3][7] ), .S0(\mmts[3][22] ), 
        .Y(\mmts[4][7] ) );
  MUX21X1_RVT U192 ( .A1(\mmts[3][7] ), .A2(\mmts[3][8] ), .S0(\mmts[3][22] ), 
        .Y(\mmts[4][8] ) );
  MUX21X1_RVT U193 ( .A1(\mmts[3][8] ), .A2(\mmts[3][9] ), .S0(\mmts[3][22] ), 
        .Y(\mmts[4][9] ) );
  AND2X1_RVT U194 ( .A1(\mmts[4][0] ), .A2(\mmts[4][22] ), .Y(\mmts[5][0] ) );
  MUX21X1_RVT U195 ( .A1(\mmts[4][9] ), .A2(\mmts[4][10] ), .S0(\mmts[4][22] ), 
        .Y(\mmts[5][10] ) );
  MUX21X1_RVT U196 ( .A1(\mmts[4][10] ), .A2(\mmts[4][11] ), .S0(\mmts[4][22] ), .Y(\mmts[5][11] ) );
  MUX21X1_RVT U197 ( .A1(\mmts[4][11] ), .A2(\mmts[4][12] ), .S0(\mmts[4][22] ), .Y(\mmts[5][12] ) );
  MUX21X1_RVT U198 ( .A1(\mmts[4][12] ), .A2(\mmts[4][13] ), .S0(\mmts[4][22] ), .Y(\mmts[5][13] ) );
  MUX21X1_RVT U199 ( .A1(\mmts[4][13] ), .A2(\mmts[4][14] ), .S0(\mmts[4][22] ), .Y(\mmts[5][14] ) );
  MUX21X1_RVT U200 ( .A1(\mmts[4][14] ), .A2(\mmts[4][15] ), .S0(\mmts[4][22] ), .Y(\mmts[5][15] ) );
  MUX21X1_RVT U201 ( .A1(\mmts[4][15] ), .A2(\mmts[4][16] ), .S0(\mmts[4][22] ), .Y(\mmts[5][16] ) );
  MUX21X1_RVT U202 ( .A1(\mmts[4][16] ), .A2(\mmts[4][17] ), .S0(\mmts[4][22] ), .Y(\mmts[5][17] ) );
  MUX21X1_RVT U203 ( .A1(\mmts[4][17] ), .A2(\mmts[4][18] ), .S0(\mmts[4][22] ), .Y(\mmts[5][18] ) );
  MUX21X1_RVT U204 ( .A1(\mmts[4][18] ), .A2(\mmts[4][19] ), .S0(\mmts[4][22] ), .Y(\mmts[5][19] ) );
  MUX21X1_RVT U205 ( .A1(\mmts[4][0] ), .A2(\mmts[4][1] ), .S0(\mmts[4][22] ), 
        .Y(\mmts[5][1] ) );
  MUX21X1_RVT U206 ( .A1(\mmts[4][19] ), .A2(\mmts[4][20] ), .S0(\mmts[4][22] ), .Y(\mmts[5][20] ) );
  MUX21X1_RVT U207 ( .A1(\mmts[4][20] ), .A2(\mmts[4][21] ), .S0(\mmts[4][22] ), .Y(\mmts[5][21] ) );
  OR2X1_RVT U208 ( .A1(\mmts[4][22] ), .A2(\mmts[4][21] ), .Y(\mmts[5][22] )
         );
  MUX21X1_RVT U209 ( .A1(\mmts[4][1] ), .A2(\mmts[4][2] ), .S0(\mmts[4][22] ), 
        .Y(\mmts[5][2] ) );
  MUX21X1_RVT U210 ( .A1(\mmts[4][2] ), .A2(\mmts[4][3] ), .S0(\mmts[4][22] ), 
        .Y(\mmts[5][3] ) );
  MUX21X1_RVT U211 ( .A1(\mmts[4][3] ), .A2(\mmts[4][4] ), .S0(\mmts[4][22] ), 
        .Y(\mmts[5][4] ) );
  MUX21X1_RVT U212 ( .A1(\mmts[4][4] ), .A2(\mmts[4][5] ), .S0(\mmts[4][22] ), 
        .Y(\mmts[5][5] ) );
  MUX21X1_RVT U213 ( .A1(\mmts[4][5] ), .A2(\mmts[4][6] ), .S0(\mmts[4][22] ), 
        .Y(\mmts[5][6] ) );
  MUX21X1_RVT U214 ( .A1(\mmts[4][6] ), .A2(\mmts[4][7] ), .S0(\mmts[4][22] ), 
        .Y(\mmts[5][7] ) );
  MUX21X1_RVT U215 ( .A1(\mmts[4][7] ), .A2(\mmts[4][8] ), .S0(\mmts[4][22] ), 
        .Y(\mmts[5][8] ) );
  MUX21X1_RVT U216 ( .A1(\mmts[4][8] ), .A2(\mmts[4][9] ), .S0(\mmts[4][22] ), 
        .Y(\mmts[5][9] ) );
  AND2X1_RVT U217 ( .A1(\mmts[5][0] ), .A2(\mmts[5][22] ), .Y(\mmts[6][0] ) );
  MUX21X1_RVT U218 ( .A1(\mmts[5][9] ), .A2(\mmts[5][10] ), .S0(\mmts[5][22] ), 
        .Y(\mmts[6][10] ) );
  MUX21X1_RVT U219 ( .A1(\mmts[5][10] ), .A2(\mmts[5][11] ), .S0(\mmts[5][22] ), .Y(\mmts[6][11] ) );
  MUX21X1_RVT U220 ( .A1(\mmts[5][11] ), .A2(\mmts[5][12] ), .S0(\mmts[5][22] ), .Y(\mmts[6][12] ) );
  MUX21X1_RVT U221 ( .A1(\mmts[5][12] ), .A2(\mmts[5][13] ), .S0(\mmts[5][22] ), .Y(\mmts[6][13] ) );
  MUX21X1_RVT U222 ( .A1(\mmts[5][13] ), .A2(\mmts[5][14] ), .S0(\mmts[5][22] ), .Y(\mmts[6][14] ) );
  MUX21X1_RVT U223 ( .A1(\mmts[5][14] ), .A2(\mmts[5][15] ), .S0(\mmts[5][22] ), .Y(\mmts[6][15] ) );
  MUX21X1_RVT U224 ( .A1(\mmts[5][15] ), .A2(\mmts[5][16] ), .S0(\mmts[5][22] ), .Y(\mmts[6][16] ) );
  MUX21X1_RVT U225 ( .A1(\mmts[5][16] ), .A2(\mmts[5][17] ), .S0(\mmts[5][22] ), .Y(\mmts[6][17] ) );
  MUX21X1_RVT U226 ( .A1(\mmts[5][17] ), .A2(\mmts[5][18] ), .S0(\mmts[5][22] ), .Y(\mmts[6][18] ) );
  MUX21X1_RVT U227 ( .A1(\mmts[5][18] ), .A2(\mmts[5][19] ), .S0(\mmts[5][22] ), .Y(\mmts[6][19] ) );
  MUX21X1_RVT U228 ( .A1(\mmts[5][0] ), .A2(\mmts[5][1] ), .S0(\mmts[5][22] ), 
        .Y(\mmts[6][1] ) );
  MUX21X1_RVT U229 ( .A1(\mmts[5][19] ), .A2(\mmts[5][20] ), .S0(\mmts[5][22] ), .Y(\mmts[6][20] ) );
  OR2X1_RVT U230 ( .A1(\mmts[5][22] ), .A2(\mmts[5][21] ), .Y(\mmts[6][22] )
         );
  MUX21X1_RVT U231 ( .A1(\mmts[5][1] ), .A2(\mmts[5][2] ), .S0(\mmts[5][22] ), 
        .Y(\mmts[6][2] ) );
  MUX21X1_RVT U232 ( .A1(\mmts[5][2] ), .A2(\mmts[5][3] ), .S0(\mmts[5][22] ), 
        .Y(\mmts[6][3] ) );
  MUX21X1_RVT U233 ( .A1(\mmts[5][3] ), .A2(\mmts[5][4] ), .S0(\mmts[5][22] ), 
        .Y(\mmts[6][4] ) );
  MUX21X1_RVT U234 ( .A1(\mmts[5][4] ), .A2(\mmts[5][5] ), .S0(\mmts[5][22] ), 
        .Y(\mmts[6][5] ) );
  MUX21X1_RVT U235 ( .A1(\mmts[5][5] ), .A2(\mmts[5][6] ), .S0(\mmts[5][22] ), 
        .Y(\mmts[6][6] ) );
  MUX21X1_RVT U236 ( .A1(\mmts[5][6] ), .A2(\mmts[5][7] ), .S0(\mmts[5][22] ), 
        .Y(\mmts[6][7] ) );
  MUX21X1_RVT U237 ( .A1(\mmts[5][7] ), .A2(\mmts[5][8] ), .S0(\mmts[5][22] ), 
        .Y(\mmts[6][8] ) );
  MUX21X1_RVT U238 ( .A1(\mmts[5][8] ), .A2(\mmts[5][9] ), .S0(\mmts[5][22] ), 
        .Y(\mmts[6][9] ) );
  AND2X1_RVT U239 ( .A1(\mmts[6][0] ), .A2(\mmts[6][22] ), .Y(\mmts[7][0] ) );
  MUX21X1_RVT U240 ( .A1(\mmts[6][9] ), .A2(\mmts[6][10] ), .S0(\mmts[6][22] ), 
        .Y(\mmts[7][10] ) );
  MUX21X1_RVT U241 ( .A1(\mmts[6][10] ), .A2(\mmts[6][11] ), .S0(\mmts[6][22] ), .Y(\mmts[7][11] ) );
  MUX21X1_RVT U242 ( .A1(\mmts[6][11] ), .A2(\mmts[6][12] ), .S0(\mmts[6][22] ), .Y(\mmts[7][12] ) );
  MUX21X1_RVT U243 ( .A1(\mmts[6][12] ), .A2(\mmts[6][13] ), .S0(\mmts[6][22] ), .Y(\mmts[7][13] ) );
  MUX21X1_RVT U244 ( .A1(\mmts[6][13] ), .A2(\mmts[6][14] ), .S0(\mmts[6][22] ), .Y(\mmts[7][14] ) );
  MUX21X1_RVT U245 ( .A1(\mmts[6][14] ), .A2(\mmts[6][15] ), .S0(\mmts[6][22] ), .Y(\mmts[7][15] ) );
  MUX21X1_RVT U246 ( .A1(\mmts[6][15] ), .A2(\mmts[6][16] ), .S0(\mmts[6][22] ), .Y(\mmts[7][16] ) );
  MUX21X1_RVT U247 ( .A1(\mmts[6][16] ), .A2(\mmts[6][17] ), .S0(\mmts[6][22] ), .Y(\mmts[7][17] ) );
  MUX21X1_RVT U248 ( .A1(\mmts[6][17] ), .A2(\mmts[6][18] ), .S0(\mmts[6][22] ), .Y(\mmts[7][18] ) );
  MUX21X1_RVT U249 ( .A1(\mmts[6][18] ), .A2(\mmts[6][19] ), .S0(\mmts[6][22] ), .Y(\mmts[7][19] ) );
  MUX21X1_RVT U250 ( .A1(\mmts[6][0] ), .A2(\mmts[6][1] ), .S0(\mmts[6][22] ), 
        .Y(\mmts[7][1] ) );
  MUX21X1_RVT U251 ( .A1(\mmts[6][19] ), .A2(\mmts[6][20] ), .S0(\mmts[6][22] ), .Y(\mmts[7][20] ) );
  OR2X1_RVT U252 ( .A1(\mmts[6][22] ), .A2(\mmts[6][21] ), .Y(\mmts[7][22] )
         );
  MUX21X1_RVT U253 ( .A1(\mmts[6][1] ), .A2(\mmts[6][2] ), .S0(\mmts[6][22] ), 
        .Y(\mmts[7][2] ) );
  MUX21X1_RVT U254 ( .A1(\mmts[6][2] ), .A2(\mmts[6][3] ), .S0(\mmts[6][22] ), 
        .Y(\mmts[7][3] ) );
  MUX21X1_RVT U255 ( .A1(\mmts[6][3] ), .A2(\mmts[6][4] ), .S0(\mmts[6][22] ), 
        .Y(\mmts[7][4] ) );
  MUX21X1_RVT U256 ( .A1(\mmts[6][4] ), .A2(\mmts[6][5] ), .S0(\mmts[6][22] ), 
        .Y(\mmts[7][5] ) );
  MUX21X1_RVT U257 ( .A1(\mmts[6][5] ), .A2(\mmts[6][6] ), .S0(\mmts[6][22] ), 
        .Y(\mmts[7][6] ) );
  MUX21X1_RVT U258 ( .A1(\mmts[6][6] ), .A2(\mmts[6][7] ), .S0(\mmts[6][22] ), 
        .Y(\mmts[7][7] ) );
  MUX21X1_RVT U259 ( .A1(\mmts[6][7] ), .A2(\mmts[6][8] ), .S0(\mmts[6][22] ), 
        .Y(\mmts[7][8] ) );
  MUX21X1_RVT U260 ( .A1(\mmts[6][8] ), .A2(\mmts[6][9] ), .S0(\mmts[6][22] ), 
        .Y(\mmts[7][9] ) );
  AND2X1_RVT U261 ( .A1(\mmts[7][0] ), .A2(n16), .Y(\mmts[8][0] ) );
  MUX21X1_RVT U262 ( .A1(\mmts[7][11] ), .A2(\mmts[7][12] ), .S0(\mmts[7][22] ), .Y(\mmts[8][12] ) );
  MUX21X1_RVT U263 ( .A1(\mmts[7][12] ), .A2(\mmts[7][13] ), .S0(\mmts[7][22] ), .Y(\mmts[8][13] ) );
  MUX21X1_RVT U264 ( .A1(\mmts[7][13] ), .A2(\mmts[7][14] ), .S0(\mmts[7][22] ), .Y(\mmts[8][14] ) );
  MUX21X1_RVT U265 ( .A1(\mmts[7][14] ), .A2(\mmts[7][15] ), .S0(\mmts[7][22] ), .Y(\mmts[8][15] ) );
  MUX21X1_RVT U266 ( .A1(\mmts[7][15] ), .A2(\mmts[7][16] ), .S0(\mmts[7][22] ), .Y(\mmts[8][16] ) );
  MUX21X1_RVT U267 ( .A1(\mmts[7][16] ), .A2(\mmts[7][17] ), .S0(\mmts[7][22] ), .Y(\mmts[8][17] ) );
  MUX21X1_RVT U268 ( .A1(\mmts[7][17] ), .A2(\mmts[7][18] ), .S0(\mmts[7][22] ), .Y(\mmts[8][18] ) );
  MUX21X1_RVT U269 ( .A1(\mmts[7][18] ), .A2(\mmts[7][19] ), .S0(\mmts[7][22] ), .Y(\mmts[8][19] ) );
  MUX21X1_RVT U270 ( .A1(\mmts[7][0] ), .A2(\mmts[7][1] ), .S0(\mmts[7][22] ), 
        .Y(\mmts[8][1] ) );
  MUX21X1_RVT U271 ( .A1(\mmts[7][19] ), .A2(\mmts[7][20] ), .S0(n16), .Y(
        \mmts[8][20] ) );
  MUX21X1_RVT U272 ( .A1(\mmts[7][1] ), .A2(\mmts[7][2] ), .S0(\mmts[7][22] ), 
        .Y(\mmts[8][2] ) );
  MUX21X1_RVT U273 ( .A1(\mmts[7][2] ), .A2(\mmts[7][3] ), .S0(\mmts[7][22] ), 
        .Y(\mmts[8][3] ) );
  MUX21X1_RVT U274 ( .A1(\mmts[7][3] ), .A2(\mmts[7][4] ), .S0(\mmts[7][22] ), 
        .Y(\mmts[8][4] ) );
  MUX21X1_RVT U275 ( .A1(\mmts[7][4] ), .A2(\mmts[7][5] ), .S0(\mmts[7][22] ), 
        .Y(\mmts[8][5] ) );
  MUX21X1_RVT U276 ( .A1(\mmts[7][5] ), .A2(\mmts[7][6] ), .S0(n16), .Y(
        \mmts[8][6] ) );
  AND2X1_RVT U277 ( .A1(\mmts[8][0] ), .A2(n11), .Y(\mmts[9][0] ) );
  MUX21X1_RVT U278 ( .A1(\mmts[8][10] ), .A2(\mmts[8][11] ), .S0(n1), .Y(
        \mmts[9][11] ) );
  MUX21X1_RVT U279 ( .A1(\mmts[8][11] ), .A2(\mmts[8][12] ), .S0(n1), .Y(
        \mmts[9][12] ) );
  MUX21X1_RVT U280 ( .A1(\mmts[8][12] ), .A2(\mmts[8][13] ), .S0(n1), .Y(
        \mmts[9][13] ) );
  MUX21X1_RVT U281 ( .A1(\mmts[8][13] ), .A2(\mmts[8][14] ), .S0(n1), .Y(
        \mmts[9][14] ) );
  MUX21X1_RVT U282 ( .A1(\mmts[8][14] ), .A2(\mmts[8][15] ), .S0(n1), .Y(
        \mmts[9][15] ) );
  MUX21X1_RVT U283 ( .A1(\mmts[8][15] ), .A2(\mmts[8][16] ), .S0(n1), .Y(
        \mmts[9][16] ) );
  MUX21X1_RVT U284 ( .A1(\mmts[8][16] ), .A2(\mmts[8][17] ), .S0(n1), .Y(
        \mmts[9][17] ) );
  MUX21X1_RVT U285 ( .A1(\mmts[8][17] ), .A2(\mmts[8][18] ), .S0(n1), .Y(
        \mmts[9][18] ) );
  MUX21X1_RVT U286 ( .A1(\mmts[8][18] ), .A2(\mmts[8][19] ), .S0(n1), .Y(
        \mmts[9][19] ) );
  MUX21X1_RVT U287 ( .A1(\mmts[8][0] ), .A2(\mmts[8][1] ), .S0(n1), .Y(
        \mmts[9][1] ) );
  MUX21X1_RVT U288 ( .A1(\mmts[8][19] ), .A2(\mmts[8][20] ), .S0(n1), .Y(
        \mmts[9][20] ) );
  MUX21X1_RVT U289 ( .A1(\mmts[8][20] ), .A2(\mmts[8][21] ), .S0(n1), .Y(
        \mmts[9][21] ) );
  MUX21X1_RVT U290 ( .A1(\mmts[8][1] ), .A2(\mmts[8][2] ), .S0(n1), .Y(
        \mmts[9][2] ) );
  MUX21X1_RVT U291 ( .A1(\mmts[8][2] ), .A2(\mmts[8][3] ), .S0(n1), .Y(
        \mmts[9][3] ) );
  MUX21X1_RVT U292 ( .A1(\mmts[8][3] ), .A2(\mmts[8][4] ), .S0(n1), .Y(
        \mmts[9][4] ) );
  MUX21X1_RVT U293 ( .A1(\mmts[8][4] ), .A2(\mmts[8][5] ), .S0(n1), .Y(
        \mmts[9][5] ) );
  MUX21X1_RVT U294 ( .A1(\mmts[8][5] ), .A2(\mmts[8][6] ), .S0(n1), .Y(
        \mmts[9][6] ) );
  MUX21X1_RVT U295 ( .A1(\mmts[8][7] ), .A2(\mmts[8][8] ), .S0(n1), .Y(
        \mmts[9][8] ) );
  MUX21X1_RVT U296 ( .A1(\mmts[8][8] ), .A2(\mmts[8][9] ), .S0(n1), .Y(
        \mmts[9][9] ) );
  AND2X1_RVT U297 ( .A1(\mmts[9][0] ), .A2(\mmts[9][22] ), .Y(\mmts[10][0] )
         );
  MUX21X1_RVT U298 ( .A1(\mmts[9][9] ), .A2(\mmts[9][10] ), .S0(\mmts[9][22] ), 
        .Y(\mmts[10][10] ) );
  MUX21X1_RVT U299 ( .A1(\mmts[9][10] ), .A2(\mmts[9][11] ), .S0(\mmts[9][22] ), .Y(\mmts[10][11] ) );
  MUX21X1_RVT U300 ( .A1(\mmts[9][11] ), .A2(\mmts[9][12] ), .S0(\mmts[9][22] ), .Y(\mmts[10][12] ) );
  MUX21X1_RVT U301 ( .A1(\mmts[9][12] ), .A2(\mmts[9][13] ), .S0(\mmts[9][22] ), .Y(\mmts[10][13] ) );
  MUX21X1_RVT U302 ( .A1(\mmts[9][13] ), .A2(\mmts[9][14] ), .S0(\mmts[9][22] ), .Y(\mmts[10][14] ) );
  MUX21X1_RVT U303 ( .A1(\mmts[9][14] ), .A2(\mmts[9][15] ), .S0(\mmts[9][22] ), .Y(\mmts[10][15] ) );
  MUX21X1_RVT U304 ( .A1(\mmts[9][15] ), .A2(\mmts[9][16] ), .S0(\mmts[9][22] ), .Y(\mmts[10][16] ) );
  MUX21X1_RVT U305 ( .A1(\mmts[9][16] ), .A2(\mmts[9][17] ), .S0(\mmts[9][22] ), .Y(\mmts[10][17] ) );
  MUX21X1_RVT U306 ( .A1(\mmts[9][17] ), .A2(\mmts[9][18] ), .S0(\mmts[9][22] ), .Y(\mmts[10][18] ) );
  MUX21X1_RVT U307 ( .A1(\mmts[9][18] ), .A2(\mmts[9][19] ), .S0(\mmts[9][22] ), .Y(\mmts[10][19] ) );
  MUX21X1_RVT U308 ( .A1(\mmts[9][19] ), .A2(\mmts[9][20] ), .S0(\mmts[9][22] ), .Y(\mmts[10][20] ) );
  MUX21X1_RVT U309 ( .A1(\mmts[9][20] ), .A2(\mmts[9][21] ), .S0(\mmts[9][22] ), .Y(\mmts[10][21] ) );
  MUX21X1_RVT U310 ( .A1(\mmts[9][3] ), .A2(\mmts[9][4] ), .S0(\mmts[9][22] ), 
        .Y(\mmts[10][4] ) );
  MUX21X1_RVT U311 ( .A1(\mmts[9][4] ), .A2(\mmts[9][5] ), .S0(\mmts[9][22] ), 
        .Y(\mmts[10][5] ) );
  MUX21X1_RVT U312 ( .A1(\mmts[9][5] ), .A2(\mmts[9][6] ), .S0(\mmts[9][22] ), 
        .Y(\mmts[10][6] ) );
  MUX21X1_RVT U313 ( .A1(\mmts[9][7] ), .A2(\mmts[9][8] ), .S0(\mmts[9][22] ), 
        .Y(\mmts[10][8] ) );
  MUX21X1_RVT U314 ( .A1(\mmts[9][8] ), .A2(\mmts[9][9] ), .S0(\mmts[9][22] ), 
        .Y(\mmts[10][9] ) );
  AND2X1_RVT U315 ( .A1(\mmts[10][0] ), .A2(n3), .Y(\mmts[11][0] ) );
  MUX21X1_RVT U316 ( .A1(\mmts[10][9] ), .A2(\mmts[10][10] ), .S0(n3), .Y(
        \mmts[11][10] ) );
  MUX21X1_RVT U317 ( .A1(\mmts[10][10] ), .A2(\mmts[10][11] ), .S0(n3), .Y(
        \mmts[11][11] ) );
  MUX21X1_RVT U318 ( .A1(\mmts[10][11] ), .A2(\mmts[10][12] ), .S0(n3), .Y(
        \mmts[11][12] ) );
  MUX21X1_RVT U319 ( .A1(\mmts[10][12] ), .A2(\mmts[10][13] ), .S0(n3), .Y(
        \mmts[11][13] ) );
  MUX21X1_RVT U320 ( .A1(\mmts[10][13] ), .A2(\mmts[10][14] ), .S0(n3), .Y(
        \mmts[11][14] ) );
  MUX21X1_RVT U321 ( .A1(\mmts[10][14] ), .A2(\mmts[10][15] ), .S0(n3), .Y(
        \mmts[11][15] ) );
  MUX21X1_RVT U322 ( .A1(\mmts[10][15] ), .A2(\mmts[10][16] ), .S0(n3), .Y(
        \mmts[11][16] ) );
  MUX21X1_RVT U323 ( .A1(\mmts[10][16] ), .A2(\mmts[10][17] ), .S0(
        \mmts[10][22] ), .Y(\mmts[11][17] ) );
  MUX21X1_RVT U324 ( .A1(\mmts[10][17] ), .A2(\mmts[10][18] ), .S0(
        \mmts[10][22] ), .Y(\mmts[11][18] ) );
  MUX21X1_RVT U325 ( .A1(\mmts[10][18] ), .A2(\mmts[10][19] ), .S0(
        \mmts[10][22] ), .Y(\mmts[11][19] ) );
  MUX21X1_RVT U326 ( .A1(\mmts[10][0] ), .A2(\mmts[10][1] ), .S0(n3), .Y(
        \mmts[11][1] ) );
  MUX21X1_RVT U327 ( .A1(\mmts[10][19] ), .A2(\mmts[10][20] ), .S0(
        \mmts[10][22] ), .Y(\mmts[11][20] ) );
  MUX21X1_RVT U328 ( .A1(\mmts[10][20] ), .A2(\mmts[10][21] ), .S0(
        \mmts[10][22] ), .Y(\mmts[11][21] ) );
  OR2X1_RVT U329 ( .A1(\mmts[10][22] ), .A2(\mmts[10][21] ), .Y(\mmts[11][22] ) );
  MUX21X1_RVT U330 ( .A1(\mmts[10][1] ), .A2(\mmts[10][2] ), .S0(n3), .Y(
        \mmts[11][2] ) );
  MUX21X1_RVT U331 ( .A1(\mmts[10][2] ), .A2(\mmts[10][3] ), .S0(n3), .Y(
        \mmts[11][3] ) );
  MUX21X1_RVT U332 ( .A1(\mmts[10][3] ), .A2(\mmts[10][4] ), .S0(n3), .Y(
        \mmts[11][4] ) );
  MUX21X1_RVT U333 ( .A1(\mmts[10][4] ), .A2(\mmts[10][5] ), .S0(n3), .Y(
        \mmts[11][5] ) );
  MUX21X1_RVT U334 ( .A1(\mmts[10][5] ), .A2(\mmts[10][6] ), .S0(n3), .Y(
        \mmts[11][6] ) );
  MUX21X1_RVT U335 ( .A1(\mmts[10][6] ), .A2(\mmts[10][7] ), .S0(n3), .Y(
        \mmts[11][7] ) );
endmodule


module fpadder ( A, B, CLK, RESETn, sum );
  input [15:0] A;
  input [15:0] B;
  output [15:0] sum;
  input CLK, RESETn;
  wire   S, n2;
  wire   [15:0] Sum;
  wire   [15:0] en_sum;
  wire   [4:0] exptempA;
  wire   [10:0] mtstempA;
  wire   [21:0] mtstempB;
  wire   [22:0] R_temp;

  DFFARX1_RVT \sum_reg[14]  ( .D(en_sum[14]), .CLK(CLK), .RSTB(n2), .Q(sum[14]) );
  DFFARX1_RVT \sum_reg[13]  ( .D(en_sum[13]), .CLK(CLK), .RSTB(n2), .Q(sum[13]) );
  DFFARX1_RVT \sum_reg[12]  ( .D(en_sum[12]), .CLK(CLK), .RSTB(n2), .Q(sum[12]) );
  DFFARX1_RVT \sum_reg[11]  ( .D(en_sum[11]), .CLK(CLK), .RSTB(n2), .Q(sum[11]) );
  DFFARX1_RVT \sum_reg[10]  ( .D(en_sum[10]), .CLK(CLK), .RSTB(n2), .Q(sum[10]) );
  DFFARX1_RVT \sum_reg[9]  ( .D(en_sum[9]), .CLK(CLK), .RSTB(n2), .Q(sum[9])
         );
  DFFARX1_RVT \sum_reg[8]  ( .D(en_sum[8]), .CLK(CLK), .RSTB(n2), .Q(sum[8])
         );
  DFFARX1_RVT \sum_reg[7]  ( .D(en_sum[7]), .CLK(CLK), .RSTB(n2), .Q(sum[7])
         );
  DFFARX1_RVT \sum_reg[6]  ( .D(en_sum[6]), .CLK(CLK), .RSTB(n2), .Q(sum[6])
         );
  DFFARX1_RVT \sum_reg[5]  ( .D(en_sum[5]), .CLK(CLK), .RSTB(n2), .Q(sum[5])
         );
  DFFARX1_RVT \sum_reg[4]  ( .D(en_sum[4]), .CLK(CLK), .RSTB(n2), .Q(sum[4])
         );
  DFFARX1_RVT \sum_reg[3]  ( .D(en_sum[3]), .CLK(CLK), .RSTB(RESETn), .Q(
        sum[3]) );
  DFFARX1_RVT \sum_reg[2]  ( .D(en_sum[2]), .CLK(CLK), .RSTB(n2), .Q(sum[2])
         );
  DFFARX1_RVT \sum_reg[1]  ( .D(en_sum[1]), .CLK(CLK), .RSTB(RESETn), .Q(
        sum[1]) );
  DFFARX1_RVT \sum_reg[0]  ( .D(en_sum[0]), .CLK(CLK), .RSTB(RESETn), .Q(
        sum[0]) );
  encoder_add en ( .A(A), .B(B), .product(Sum), .out(en_sum) );
  compshift cs0 ( .expA(A[14:10]), .expB(B[14:10]), .mtsA({1'b1, A[9:0]}), 
        .mtsB({1'b1, B[9:0]}), .expA_R(exptempA), .mtsA_R(mtstempA), .mtsB_R(
        mtstempB), .S(S) );
  mantissa mts0 ( .sA(A[15]), .sB(B[15]), .mtsA_R(mtstempA), .mtsB_R(mtstempB), 
        .R_mts(R_temp) );
  normalization nor0 ( .sA(A[15]), .sB(B[15]), .S(S), .expA_R(exptempA), 
        .R_mts(R_temp), .Sum(Sum) );
  DFFARX1_RVT \sum_reg[15]  ( .D(en_sum[15]), .CLK(CLK), .RSTB(n2), .Q(sum[15]) );
  NBUFFX2_RVT U3 ( .A(RESETn), .Y(n2) );
endmodule


module fp16MAC ( a, b, acc, CLK, RESETn );
  input [15:0] a;
  input [15:0] b;
  output [15:0] acc;
  input CLK, RESETn;
  wire   n1, n2, n3;
  wire   [15:0] pAcc;
  wire   [15:0] input_a;
  wire   [15:0] input_b;
  wire   [15:0] result_m;

  DFFARX1_RVT \input_a_reg[15]  ( .D(a[15]), .CLK(CLK), .RSTB(n2), .Q(
        input_a[15]) );
  DFFARX1_RVT \input_a_reg[14]  ( .D(a[14]), .CLK(CLK), .RSTB(n2), .Q(
        input_a[14]) );
  DFFARX1_RVT \input_a_reg[13]  ( .D(a[13]), .CLK(CLK), .RSTB(n2), .Q(
        input_a[13]) );
  DFFARX1_RVT \input_a_reg[12]  ( .D(a[12]), .CLK(CLK), .RSTB(n2), .Q(
        input_a[12]) );
  DFFARX1_RVT \input_a_reg[11]  ( .D(a[11]), .CLK(CLK), .RSTB(n2), .Q(
        input_a[11]) );
  DFFARX1_RVT \input_a_reg[10]  ( .D(a[10]), .CLK(CLK), .RSTB(n2), .Q(
        input_a[10]) );
  DFFARX1_RVT \input_a_reg[9]  ( .D(a[9]), .CLK(CLK), .RSTB(n2), .Q(input_a[9]) );
  DFFARX1_RVT \input_a_reg[8]  ( .D(a[8]), .CLK(CLK), .RSTB(n2), .Q(input_a[8]) );
  DFFARX1_RVT \input_a_reg[7]  ( .D(a[7]), .CLK(CLK), .RSTB(n2), .Q(input_a[7]) );
  DFFARX1_RVT \input_a_reg[6]  ( .D(a[6]), .CLK(CLK), .RSTB(n2), .Q(input_a[6]) );
  DFFARX1_RVT \input_a_reg[5]  ( .D(a[5]), .CLK(CLK), .RSTB(n2), .Q(input_a[5]) );
  DFFARX1_RVT \input_a_reg[4]  ( .D(a[4]), .CLK(CLK), .RSTB(n2), .Q(input_a[4]) );
  DFFARX1_RVT \input_a_reg[3]  ( .D(a[3]), .CLK(CLK), .RSTB(n2), .Q(input_a[3]) );
  DFFARX1_RVT \input_a_reg[2]  ( .D(a[2]), .CLK(CLK), .RSTB(n2), .Q(input_a[2]) );
  DFFARX1_RVT \input_a_reg[1]  ( .D(a[1]), .CLK(CLK), .RSTB(n2), .Q(input_a[1]) );
  DFFARX1_RVT \input_a_reg[0]  ( .D(a[0]), .CLK(CLK), .RSTB(n2), .Q(input_a[0]) );
  DFFARX1_RVT \input_b_reg[15]  ( .D(b[15]), .CLK(CLK), .RSTB(n2), .Q(
        input_b[15]) );
  DFFARX1_RVT \input_b_reg[14]  ( .D(b[14]), .CLK(CLK), .RSTB(n2), .Q(
        input_b[14]) );
  DFFARX1_RVT \input_b_reg[13]  ( .D(b[13]), .CLK(CLK), .RSTB(n2), .Q(
        input_b[13]) );
  DFFARX1_RVT \input_b_reg[12]  ( .D(b[12]), .CLK(CLK), .RSTB(n2), .Q(
        input_b[12]) );
  DFFARX1_RVT \input_b_reg[11]  ( .D(b[11]), .CLK(CLK), .RSTB(RESETn), .Q(
        input_b[11]) );
  DFFARX1_RVT \input_b_reg[10]  ( .D(b[10]), .CLK(CLK), .RSTB(n1), .Q(
        input_b[10]) );
  DFFARX1_RVT \input_b_reg[9]  ( .D(b[9]), .CLK(CLK), .RSTB(RESETn), .Q(
        input_b[9]) );
  DFFARX1_RVT \input_b_reg[8]  ( .D(b[8]), .CLK(CLK), .RSTB(n1), .Q(input_b[8]) );
  DFFARX1_RVT \input_b_reg[7]  ( .D(b[7]), .CLK(CLK), .RSTB(RESETn), .Q(
        input_b[7]) );
  DFFARX1_RVT \input_b_reg[6]  ( .D(b[6]), .CLK(CLK), .RSTB(n1), .Q(input_b[6]) );
  DFFARX1_RVT \input_b_reg[5]  ( .D(b[5]), .CLK(CLK), .RSTB(RESETn), .Q(
        input_b[5]) );
  DFFARX1_RVT \input_b_reg[4]  ( .D(b[4]), .CLK(CLK), .RSTB(n1), .Q(input_b[4]) );
  DFFARX1_RVT \input_b_reg[3]  ( .D(b[3]), .CLK(CLK), .RSTB(RESETn), .Q(
        input_b[3]) );
  DFFARX1_RVT \input_b_reg[2]  ( .D(b[2]), .CLK(CLK), .RSTB(n1), .Q(input_b[2]) );
  DFFARX1_RVT \input_b_reg[1]  ( .D(b[1]), .CLK(CLK), .RSTB(RESETn), .Q(
        input_b[1]) );
  DFFARX1_RVT \input_b_reg[0]  ( .D(b[0]), .CLK(CLK), .RSTB(n1), .Q(input_b[0]) );
  DFFARX1_RVT \acc_reg[15]  ( .D(pAcc[15]), .CLK(CLK), .RSTB(RESETn), .Q(
        acc[15]) );
  DFFARX1_RVT \acc_reg[14]  ( .D(pAcc[14]), .CLK(CLK), .RSTB(n1), .Q(acc[14])
         );
  DFFARX1_RVT \acc_reg[13]  ( .D(pAcc[13]), .CLK(CLK), .RSTB(RESETn), .Q(
        acc[13]) );
  DFFARX1_RVT \acc_reg[12]  ( .D(pAcc[12]), .CLK(CLK), .RSTB(n1), .Q(acc[12])
         );
  DFFARX1_RVT \acc_reg[11]  ( .D(pAcc[11]), .CLK(CLK), .RSTB(RESETn), .Q(
        acc[11]) );
  DFFARX1_RVT \acc_reg[10]  ( .D(pAcc[10]), .CLK(CLK), .RSTB(n1), .Q(acc[10])
         );
  DFFARX1_RVT \acc_reg[9]  ( .D(pAcc[9]), .CLK(CLK), .RSTB(RESETn), .Q(acc[9])
         );
  DFFARX1_RVT \acc_reg[8]  ( .D(pAcc[8]), .CLK(CLK), .RSTB(n1), .Q(acc[8]) );
  DFFARX1_RVT \acc_reg[7]  ( .D(pAcc[7]), .CLK(CLK), .RSTB(RESETn), .Q(acc[7])
         );
  DFFARX1_RVT \acc_reg[6]  ( .D(pAcc[6]), .CLK(CLK), .RSTB(n1), .Q(acc[6]) );
  DFFARX1_RVT \acc_reg[5]  ( .D(pAcc[5]), .CLK(CLK), .RSTB(RESETn), .Q(acc[5])
         );
  DFFARX1_RVT \acc_reg[4]  ( .D(pAcc[4]), .CLK(CLK), .RSTB(n1), .Q(acc[4]) );
  DFFARX1_RVT \acc_reg[3]  ( .D(pAcc[3]), .CLK(CLK), .RSTB(RESETn), .Q(acc[3])
         );
  DFFARX1_RVT \acc_reg[2]  ( .D(pAcc[2]), .CLK(CLK), .RSTB(n1), .Q(acc[2]) );
  DFFARX1_RVT \acc_reg[1]  ( .D(pAcc[1]), .CLK(CLK), .RSTB(RESETn), .Q(acc[1])
         );
  DFFARX1_RVT \acc_reg[0]  ( .D(pAcc[0]), .CLK(CLK), .RSTB(n1), .Q(acc[0]) );
  fp16multiplier m1 ( .A(input_a), .B(input_b), .CLK(CLK), .RESETn(n1), .out(
        result_m) );
  fpadder a1 ( .A(pAcc), .B(result_m), .CLK(CLK), .RESETn(n1), .sum(pAcc) );
  INVX1_RVT U3 ( .A(n3), .Y(n1) );
  INVX1_RVT U4 ( .A(n3), .Y(n2) );
  INVX1_RVT U5 ( .A(RESETn), .Y(n3) );
endmodule

