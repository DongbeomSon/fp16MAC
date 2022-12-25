`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:35:25 12/10/2022 
// Design Name: 
// Module Name:    fp16multiplier 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module RCA #(parameter bw = 4)(A, B, Cin, Sum, Cout);
	//can be subsitude with other adder to recude delay
	input [bw:1] A;
	input [bw:1] B;
	input Cin;
	output [bw:1] Sum;
	output Cout;
	
	wire [bw:0] G;
	wire [bw:0] P;
	wire [bw:0] GG;
	
	assign G[0] = Cin;
	assign P[0] = 0;
	assign G[bw:1] = A & B;
	assign P[bw:1] = A ^ B;
	
	assign GG[0] = G[0];
	G_Cell U0(G[0], G[1], P[1], GG[1]);
	
	genvar i;
	generate
		for(i=1; i<=bw; i=i+1) begin: loop_1
			if(i<bw)
				G_Cell U1(GG[i], G[i+1], P[i+1], GG[i+1]);
			assign Sum[i] = P[i] ^ GG[i-1];
		end
	endgenerate
	
	assign Cout = GG[bw];
	
endmodule

module G_Cell(G0, G1, P1, GG);
	input G0;
	input G1;
	input P1;
	output GG;
	
	assign GG = G1 | (P1 & G0);
endmodule


module Adder3(
	a, b, c, d, add,
	lsb, msb
	);
	
	input a,b,c,d;
	input [1:0] add;
	
	output lsb;
	output [1:0] msb;
	
	
	wire [2:0] pSum [1:0];
	wire [2:0] out;
	wire carry;
	
	/*
	//stage1
	full_adder u0(a,b,c,pSum[0][0],pSum[0][1]);
	
	//stage2
	full_adder u1(d,add[0],pSum[0][0],out[0],pSum[1][0]);
	full_adder u2(1'b0,add[1],pSum[0][1],pSum[1][1],pSum[1][2]);
	
	//RCA
	full_adder u3(.A(pSum[1][1]), .B(pSum[1][0]), .cin(1'b0),.sum(out[1]), .cout(carry));
	full_adder u4(.A(carry),.B(pSum[1][2]),.cin(1'b0),.sum(out[2]),.cout());
	*/
	
	wire [1:0] st0;
	wire [3:0] st1;
	wire [1:0] st2;
	
	wire [2:0] sum;
	
	half_adder u0(c,d,st0[0],st1[0]);
	full_adder u1(a,b,add[0],st0[1],st1[1]);
	
	half_adder u2(st0[0], st0[1], sum[0],st1[2]);
	half_adder u3(st1[0],add[1],st1[3],st2[0]);
	
	full_adder u4(st1[3],st1[2],st1[1],sum[1],st2[1]);
	//half_adder u5(st2[0],st2[1],sum[2],sum[3]);
	or(sum[2],st2[0],st2[1]);
	
	assign lsb = sum[0];
	assign msb = sum[2:1];
	
endmodule


module Adder2(
	a, b, c, add,
	lsb, msb
	);
	
	input a,b,c, add;
	output lsb;
	output [1:0] msb;
	
	wire [2:0] sum;
	wire [1:0] temp;
	
	wire [3:0] carry;
	
	/*
	full_adder u0(a,b,c,temp[0],carry[0]);
	full_adder u1(add,temp[0],1'b0,sum[0],carry[1]);
	full_adder u2(carry[0],carry[1],1'b0,sum[1],sum[2]);
	*/
	
	half_adder u0(a,b,temp[0],carry[0]);
	half_adder u1(c, add, temp[1], carry[1]);
	half_adder u2(temp[0], temp[1], sum[0], carry[2]);
	full_adder u3(carry[0], carry[1], carry[2], sum[1], sum[2]);
	
	assign lsb = sum[0];
	assign msb[1:0] = sum[2:1];
	
endmodule

module Adder4(
	a, b, c, add,
	lsb, msb
	);
	
	input a,b,c;
	input [1:0] add;
	
	output lsb;
	output [1:0] msb;
	
	wire [2:0] sum;
	wire [2:0] temp;
	
	wire [1:0] carry;
	
	
	full_adder u0(a,b,c,temp[0],temp[1]);
	full_adder u1(temp[0],add[0],1'b0,sum[0],carry[0]);
	full_adder u2(temp[1],add[1],carry[0],sum[1],sum[2]);
	
	
	/*
	wire [1:0] st0;
	wire [3:0] st1;
	wire [1:0] st2;
	
	half_adder u0(a,b,st0[0],st1[0]);
	half_adder u1(c,add[0],st0[1],st1[1]);
	half_adder u2(st0[0],st0[1],sum[0],st1[2]);
	full_adder u3(st1[0],st1[1],add[1],st1[3],st2[0]);
	half_adder u4(st1[2],st1[3],sum[1],st2[1]);
	or(sum[2],st2[0],st2[1]);
	*/
	
	assign lsb = sum[0];
	assign msb = sum[2:1];
	
endmodule

module Adder5(
	a, b, add,
	lsb, msb
	);
	
	input a,b;
	input [1:0] add;
	
	output lsb;
	output [1:0] msb;
	
	wire [2:0] sum;
	
	/*
	wire carry;
	wire temp;
	
	half_adder u0(a,b,temp,carry);
	
	xor(sum[0], add[0], temp);
	
	full_adder u1(temp&add[0],add[1],carry,sum[1],sum[2]);
	*/
	
	wire [2:0] temp;
	
	wire [1:0] carry;
	
	full_adder u0(a,b,add[0],sum[0],carry[0]);
	full_adder u1(add[1],carry[0],1'b0,sum[1],sum[2]);
	
	assign lsb = sum[0];
	assign msb[1:0] = sum[2:1];
	
endmodule


module biasAdder(
	A,B,
	out, shift,
	cout
	);
	input [4:0] A,B;
	input shift;
	output [4:0] out;
	output cout;

	wire [4:0]temp;
	wire o1,o2;
	assign cout = o1 | o2;
	
	/*
	RCA #(.bw(5)) badder1(.A(A),.B(B),.Cin(shift),.Sum(temp),.Cout(o1));
	RCA #(.bw(5)) badder2(.A(temp),.B(5'b10000),.Cin(1'b1),.Sum(out),.Cout(o2));
	*/
	
	
	
	wire [4:0] temp_s, temp_ns;
	wire to1, to2;
	
	RCA #(.bw(5)) badder1(.A(A),.B(B),.Cin(1'b1),.Sum(temp),.Cout(o1));
	RCA #(.bw(5)) badder2(.A(temp),.B(5'b10000),.Cin(1'b1),.Sum(temp_s),.Cout(to1));
	RCA #(.bw(5)) badder3(.A(temp),.B(5'b10000),.Cin(1'b0),.Sum(temp_ns),.Cout(to2));
	
	assign o2 = shift ? to1 : to2;
	assign out = shift ? temp_s : temp_ns;
	
endmodule

module vedic_4bit(
	a,b,
	out);
	
	input [3:0] a,b;
	output [7:0] out;
	wire [7:0] pSum;
	
	wire [1:0] add[7:0];
	
	assign pSum[0] = a[0]&b[0];
	
	half_adder adder1(a[0]&b[1],a[1]&b[0],pSum[1],add[1][0]);
	
	Adder2 adder2(a[0]&b[2], a[1]&b[1], a[2]&b[0], add[1][0], pSum[2], add[2]);
	
	Adder3 adder3(a[0]&b[3], a[1]&b[2], a[2]&b[1], a[3]&b[0], add[2], pSum[3], add[3]);
	
	Adder4 adder4(a[3]&b[1], a[2]&b[2], a[1]&b[3], add[3], pSum[4], add[4]);
	
	Adder5 adder5(a[3]&b[2], a[2]&b[3], add[4], pSum[5], add[5]);
	
	assign pSum[6] = add[5][0] ^ a[3]&b[3];
	
	assign pSum[7] = add[5][1] | (add[5][0]&a[3]&b[3]);

	assign out = pSum;
	
endmodule





module karastuba_6bit(
	a, b,
	out);
	
	input [5:0] a,b;
	output [11:0] out;
	
	
	wire [3:0] a1, ar;
	wire [3:0] b1, br;
	
	
	wire [7:0] xy, r, mid, mid2, mid3;
	wire [3:0] xr1, xr2;
	
	wire [3:0] tsum[1:0];
	
	assign a1 = {1'b0,a[5:3]};
	assign ar = {1'b0,a[2:0]};
	
	assign b1 = {1'b0,b[5:3]};
	assign br = {1'b0,b[2:0]};
	
	vedic_4bit u0(a1, b1, xy);
	vedic_4bit u1(ar, br, r);
	
	RCA #(.bw(4)) rca1(.A(a1), .B(ar), .Cin(1'b0), .Sum(tsum[0]),.Cout());
	RCA #(.bw(4)) rca2(.A(b1), .B(br), .Cin(1'b0), .Sum(tsum[1]),.Cout());
	
	vedic_4bit u2(tsum[0], tsum[1], mid);
	
	wire [7:0] temp;
	RCA #(.bw(8)) add_mid(.A(xy), .B(r), .Cin(1'b0), .Sum(temp), .Cout());
	RCA #(.bw(8)) sub_mid(.A(~temp), .B(mid), .Cin(1'b1), .Sum(mid3), .Cout());
	
	/*
	
	RCA #(.bw(8)) sub1(.A(mid), .B(~xy), .Cin(1'b1), .Sum(mid2), .Cout());
	//kogge_stone_Nbit_NOCLK #(.bw(8)) sub1(.A(mid), .B(~xy), .Cin(1'b1), .Sum(mid2), .Cout());
	RCA #(.bw(8)) sub2(.A(mid2), .B(~r), .Cin(1'b1), .Sum(mid3), .Cout());
	//kogge_stone_Nbit_NOCLK #(.bw(8)) sub2(.A(mid2), .B(~r), .Cin(1'b1), .Sum(mid3), .Cout());
	*/
	
	wire [11:0] t1, t2, t3;
/*	
	assign t1 = {xy, 6'b0};
	assign t2 = {3'b0, mid3, 3'b0};
	assign t3 = r;
*/	
	wire [11:3] psum;
	
	assign t1 = {xy, r};
	//assign t2 = {6'b0, tsum, 6'b0};
	wire [11:3] tx = {xy[5:0],r[5:3]};
	wire [11:3] ty = {3'b0, mid3};
	
	RCA #(.bw(9)) add1(.A(tx), .B(ty), .Cin(1'b0), .Sum(psum), .Cout());
	assign out = {psum,r[2:0]};
	
	
	/*
	RCA #(.bw(12)) add1(.A(t1),.B(t2),.Cin(1'b0), .Sum(psum), .Cout());
	//kogge_stone_Nbit_NOCLK #(.bw(12)) add1(.A(t1),.B(t2),.Cin(1'b0), .Sum(psum), .Cout());
	RCA #(.bw(12)) add2(.A(psum), .B(t3), .Cin(1'b0), .Sum(out), .Cout());
	//kogge_stone_Nbit_NOCLK #(.bw(12)) add2(.A(psum), .B(t3), .Cin(1'b0), .Sum(out), .Cout());
	*/
	

endmodule

module karastuba_12bit(
	a,b,
	out
	);
	
	input [11:0] a,b;
	
	output [23:0] out;
	
	
	wire [5:0] a1, ar;
	wire [5:0] b1, br;
	
	wire [11:0] xy, r, x1,x2;
	wire [11:0] mid;
	wire [11:0] mid2, mid3;
	
	wire [12:0] tsum;
	
	assign a1 = a[11:6];
	assign ar = a[5:0];
	
	assign b1 = b[11:6];
	assign br = b[5:0];
	
	karastuba_6bit km0(a1, b1, xy);
	karastuba_6bit km1(ar, br, r);
	karastuba_6bit km2(a1, br, x1);
	karastuba_6bit km3(ar, b1, x2);
	
	RCA #(.bw(12)) rca1(x1, x2, 1'b0, tsum[11:0],tsum[12]);
	//kogge_stone_Nbit_NOCLK #(.bw(12)) rca1(x1, x2, 1'b0, tsum[11:0],tsum[12]);
	//CSA #(.bw(12)) rca1(x1, x2, 1'b0, tsum[11:0],tsum[12]);
	
	wire [23:0] t1, t2, t3;
	
	/*
	assign t1 = {xy, 12'b0};
	assign t2 = {6'b0, tsum, 6'b0};
	assign t3 = r;
	*/
	
	assign t1 = {xy, r};
	assign t2 = {6'b0, tsum, 6'b0};
	wire [23:6] tx = {xy,r[11:6]};
	wire [23:6] ty = {6'b0, tsum};
	wire [23:6] psum;
	
	RCA #(.bw(18)) add1(.A(tx), .B(ty), .Cin(1'b0), .Sum(psum), .Cout());
	assign out = {psum,r[5:0]};
	
	/*
	RCA #(.bw(24)) add1(.A(t1),.B(t3),.Cin(1'b0), .Sum(psum), .Cout());
	//kogge_stone_Nbit_NOCLK #(.bw(24)) add1(.A(t1),.B(t3),.Cin(1'b0), .Sum(psum), .Cout());
	RCA #(.bw(24)) add2(.A(psum),.B(t2),.Cin(1'b0), .Sum(out), .Cout());
	//kogge_stone_Nbit_NOCLK #(.bw(24)) add2(.A(psum),.B(t2),.Cin(1'b0), .Sum(out), .Cout());
	*/
	
endmodule


module karastuba_11bit(
	a,b,
	out
	);
	
	input [10:0] a,b;
	output [21:0] out;
	
	wire [5:0] a1, ar;
	wire [5:0] b1, br;
	
	wire [11:0] xy, r, x1,x2;
	wire [11:0] mid;
	wire [11:0] mid2, mid3;
	
	wire [11:0] tsum;
	
	assign a1 = {1'b0,a[10:6]};
	assign ar = a[5:0];
	
	assign b1 = {1'b0,b[10:6]};
	assign br = b[5:0];
	
	karastuba_6bit km0(a1, b1, xy);
	karastuba_6bit km1(ar, br, r);
	karastuba_6bit km2(a1, br, x1);
	karastuba_6bit km3(ar, b1, x2);
	
	RCA #(.bw(11)) rca1(x1[10:0], x2[10:0], 1'b0, tsum[10:0],tsum[11]);
	//kogge_stone_Nbit_NOCLK #(.bw(12)) rca1(x1, x2, 1'b0, tsum[11:0],tsum[12]);
	//CSA #(.bw(12)) rca1(x1, x2, 1'b0, tsum[11:0],tsum[12]);
	
	wire [23:0] t1, t2, t3;
	
	/*
	assign t1 = {xy, 12'b0};
	assign t2 = {6'b0, tsum, 6'b0};
	assign t3 = r;
	*/
	
	//assign t1 = {xy, r};
	//assign t2 = {6'b0, tsum, 6'b0};
	
	wire [21:6] tx = {xy,r[11:6]};
	wire [21:6] ty = {4'b0, tsum};
	wire [21:6] psum;
	
	RCA #(.bw(16)) add1(.A(tx), .B(ty), .Cin(1'b0), .Sum(psum), .Cout());
	assign out = {psum,r[5:0]};
	
	/*
	RCA #(.bw(24)) add1(.A(t1),.B(t3),.Cin(1'b0), .Sum(psum), .Cout());
	//kogge_stone_Nbit_NOCLK #(.bw(24)) add1(.A(t1),.B(t3),.Cin(1'b0), .Sum(psum), .Cout());
	RCA #(.bw(24)) add2(.A(psum),.B(t2),.Cin(1'b0), .Sum(out), .Cout());
	//kogge_stone_Nbit_NOCLK #(.bw(24)) add2(.A(psum),.B(t2),.Cin(1'b0), .Sum(out), .Cout());
	*/
	
endmodule

module karastuba_11bit_test(
	a,b,
	out_t, CLK, RESETn
	);
	
	input [10:0] a,b;
	
	output reg [21:0] out_t;
	wire [21:0] out;
	
	input CLK, RESETn;
	
	karastuba_11bit k11(a,b,out);
	
	always@(posedge CLK, negedge RESETn) begin
		if(!RESETn) begin
			out_t <= 0;
		end else begin
			out_t <= out;
		end
	end	

endmodule

module karastuba_12bit_test(
	a,b,
	out_t, CLK, RESETn
	);
	
	input [11:0] a,b;
	
	output reg [23:0] out_t;
	wire [23:0] out;
	
	input CLK, RESETn;
	
	wire [5:0] a1, ar;
	wire [5:0] b1, br;
	
	wire [11:0] xy, r, x1,x2;
	wire [11:0] mid;
	wire [11:0] mid2, mid3;
	
	wire [12:0] tsum;
	
	assign a1 = a[11:6];
	assign ar = a[5:0];
	
	assign b1 = b[11:6];
	assign br = b[5:0];
	
	karastuba_6bit km0(a1, b1, xy);
	karastuba_6bit km1(ar, br, r);
	karastuba_6bit km2(a1, br, x1);
	karastuba_6bit km3(ar, b1, x2);
	
	RCA #(.bw(12)) rca1(x1, x2, 1'b0, tsum[11:0],tsum[12]);
	//kogge_stone_Nbit_NOCLK #(.bw(12)) rca1(x1, x2, 1'b0, tsum[11:0],tsum[12]);
	//CSA #(.bw(12)) rca1(x1, x2, 1'b0, tsum[11:0],tsum[12]);
	
	wire [23:0] t1, t2, t3;
	
	/*
	assign t1 = {xy, 12'b0};
	assign t2 = {6'b0, tsum, 6'b0};
	assign t3 = r;
	*/
	
	assign t1 = {xy, r};
	assign t2 = {6'b0, tsum, 6'b0};
	wire [23:6] tx = {xy,r[11:6]};
	wire [23:6] ty = {6'b0, tsum};
	wire [23:6] psum;
	
	RCA #(.bw(18)) add1(.A(tx), .B(ty), .Cin(1'b0), .Sum(psum), .Cout());
	assign out = {psum,r[5:0]};
	
	/*
	RCA #(.bw(24)) add1(.A(t1),.B(t3),.Cin(1'b0), .Sum(psum), .Cout());
	//kogge_stone_Nbit_NOCLK #(.bw(24)) add1(.A(t1),.B(t3),.Cin(1'b0), .Sum(psum), .Cout());
	RCA #(.bw(24)) add2(.A(psum),.B(t2),.Cin(1'b0), .Sum(out), .Cout());
	//kogge_stone_Nbit_NOCLK #(.bw(24)) add2(.A(psum),.B(t2),.Cin(1'b0), .Sum(out), .Cout());
	*/
	
	always@(posedge CLK, negedge RESETn) begin
		if(!RESETn) begin
			out_t <= 0;
		end else begin
			out_t <= out;
		end
	end
	
endmodule





module menMult(
	a,b,
	out
	);
	
	input [9:0] a,b;
	output [21:0] out;
	
	//karastuba_12bit menti({1'b1,a,1'b0},{1'b1,b,1'b0},multi);
	karastuba_11bit menti({1'b1,a},{1'b1,b},out);
	
endmodule

module rounder(
	multi,
	out, cout
	);
	
	input [23:2] multi;
	output [9:0]out;
	output cout;
	
	
	wire msb = multi[23];
	
	wire [11:0] rnd = multi[23:12];
	wire r = msb ? multi[12] : multi[11];
	wire sticky = multi[10] | multi[9] | multi[8] | multi[7] | multi[6] | multi[5] | multi[4] | multi[3] | multi[2]; //| multi[1] | multi[0];
	wire s = msb ? sticky | multi[11] : sticky;
	wire g = msb ? multi[13] : multi[12];
	
	wire rndup = r ? (s ? 1'b1 : r & g) : 1'b0;
	
	wire [11:0] rnd_p;
	RCA #(.bw(12)) rnd_add(.A(rnd), .B(12'b0), .Cin(rndup), .Sum(rnd_p), .Cout());
	//kogge_stone_Nbit_NOCLK #(.bw(12)) rnd_add(.A(rnd), .B(12'b0), .Cin(rndup), .Sum(rnd_p), .Cout());

	assign cout = rnd_p[11];
	assign out = cout ? rnd_p[10:1] : rnd_p[9:0];
	
endmodule

module encoder_a(
	A,B,
	out
);

	input [14:0] A, B;
	
	output [2:0] out;
	
	wire [4:0] bA = A[14:10];
	wire [4:0] bB = B[14:10];
	
	wire [9:0] sA = A[9:0];
	wire [9:0] sB = B[9:0];
	
	wire nzsA, nzsB;
	
	assign nzsA = (A[0] | A[1] | A[2] | A[3] | A[4] | A[5] | A[6] | A[7] | A[8] | A[9]);
	assign nzsB = (B[0] | B[1] | B[2] | B[3] | B[4] | B[5] | B[6] | B[7] | B[8] | B[9]);
	
	wire zA = ~(bA[0] | bA[1] | bA[2] | bA[3] | bA[4]);
	wire zB = ~(bB[0] | bB[1] | bB[2] | bB[3] | bB[4]);
	
	wire zzA = zA & ~(nzsA);
	wire zzB = zB & ~(nzsB);
	
	wire iA = bA[0] & bA[1] & bA[2] & bA[3] & bA[4];
	wire iB = bB[0] & bB[1] & bB[2] & bB[3] & bB[4];
	
	wire z = zzA | zzB;
	wire i = iA | iB;
	
	wire nanA = iA & nzsA;
	wire nanB = iB & nzsB;
	
	wire nan = nanA | nanB;

	assign out = {nan,z,i};
	//assign out = nan ? nanOut : (z ? (i ? nanOut : 15'b0) : i ? 15'h7c00 : product);
	
endmodule

module encoder_b(
	sig, bmp, product
);
	input [2:0] sig;
	input [14:0] bmp;
	output [14:0] product;


	wire [14:0] nanOut = {5'b11111,10'b1};
	
	
	assign product = sig[2] ? nanOut : (sig[1] ? (sig[0] ? nanOut : 15'b0) : sig[0] ? 15'h7c00 : bmp);
endmodule
	

module fp16multiplier_pipe(
		A,B,	CLK,	RESETn,
		out
    );
	 input [15:0] A,B;
	 input CLK, RESETn;
	 output reg [15:0] out;
	 
	 wire [14:0] bmp;
	 wire [15:0] product;
	 
	 wire [21:0] multi;
	 
	 wire cout;
	 

	 //assign product[15] = A[15]^B[15];
	 
	 
	 reg [5:0] p_A, p_B;
	 reg [21:0] p_multi;
	 reg [2:0] p_sig_en;
	 
	 menMult U0(A[9:0], B[9:0], multi);
	 
	 wire sign = (p_A[5]^p_B[5]);
	 buf(product[15],sign);
	 
	 
	 wire [2:0] sig_en; // [nan,z,i]
	 encoder_a U1(A[14:0], B[14:0], sig_en);
	 
	 
	 
	 
	 biasAdder U2(.A(p_A[4:0]),.B(p_B[4:0]), .out(bmp[14:10]), .shift(cout), .cout());
	 rounder U3(p_multi, bmp[9:0], cout);
	 encoder_b U4(p_sig_en, bmp, product[14:0]);
	 //assign out = reg_out;
	 
	 always@(posedge CLK, negedge RESETn) begin
		if(!RESETn) begin
			out <= 0;
		end else begin
			out <= product;
			p_multi <= multi;
			p_A <= A[15:10];
			p_B <= B[15:10];
			p_sig_en <= sig_en;
		end
	 end
endmodule
	




module fp16multiplier(
		A,B,	CLK,	RESETn,
		out
    );
	 input [15:0] A,B;
	 input CLK, RESETn;
	 output reg [15:0] out;
	 
	 wire [14:0] bmp;
	 wire [15:0] product;
	 
	 wire [21:0] multi;
	 
	 wire cout;
	 
	 menMult U0(A[9:0], B[9:0], multi);
	 
	 wire sign = (A[15]^B[15]);
	 buf(product[15],sign);
	 
	 wire [2:0] sig_en; // [nan,z,i]
	 encoder_a U1(A[14:0], B[14:0], sig_en);
	 
	 
	 
	 

	 biasAdder U2(.A(A[14:10]),.B(B[14:10]), .out(bmp[14:10]), .shift(cout), .cout());
	 rounder U3(multi, bmp[9:0], cout);
	 encoder_b U4(sig_en, bmp, product[14:0]);

	 //assign out = reg_out;
	 
	 always@(posedge CLK, negedge RESETn) begin
		if(!RESETn) begin
			out <= 0;
		end else begin
			out <= product;
			//p_multi <= multi;
			//p_A <= A[15:10];
			//p_B <= B[15:10];
			//p_sig_en <= sig_en;
		end
	 end


endmodule
