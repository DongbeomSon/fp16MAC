`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:20:56 12/13/2022 
// Design Name: 
// Module Name:    fpadder 
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
module fpadder(A, B, CLK, RESETn, sum);
   input [15:0] A, B;
   input CLK, RESETn;
   output reg [15:0] sum;
   
   wire [15:0] en_sum;
	wire [15:0] Sum;
   wire [4:0] exptempA, exptempB;
   wire [10:0] mtstempA;
	wire [21:0] mtstempB;
   wire S;
   wire [22:0] R_temp;
   wire [11:0] mts;
   wire [4:0] exp;
   
   encoder_add en(A,B,Sum,en_sum);
   compshift cs0(A[14:10], B[14:10], {1'b1, A[9:0]}, {1'b1, B[9:0]}, exptempA, exptempB, mtstempA, mtstempB, S);
   mantissa mts0(A[15], B[15], mtstempA, mtstempB, R_temp);
   normalization nor0(A[15], B[15], S, exptempA, exp, R_temp, Sum);
   
	
   
   always@(posedge CLK, negedge RESETn) begin
      if(!RESETn) begin
         sum <= 0;
      end
      else begin
         sum <= en_sum;
      end
   end
   
endmodule
   
      //compare exponential and shift mantissa
module compshift(expA, expB, mtsA, mtsB, expA_R, expB_R, mtsA_R, mtsB_R, S);
	input [4:0] expA, expB;
	input [10:0] mtsA, mtsB;
	output wire [4:0] expA_R, expB_R;
	output wire [10:0] mtsA_R;
	output wire [21:0] mtsB_R;
	output wire S;
   
	wire [4:0] expA_T, expB_T, Difference, Difference1, Difference2;
	wire [5:0] ex;
	RCA #(.bw(6)) rc0(.A({1'b0, expA}), .B(~{1'b0, expB}), .Cin(1'b1), .Sum(ex), .Cout());
	wire ez = ~(ex[5]|ex[4]|ex[3]|ex[2]|ex[1]|ex[0]); //all zero?
	   
   RCA #(.bw(5)) rc1(.A(expA), .B(~expB), .Cin(1'b1), .Sum(Difference1), .Cout());
	RCA #(.bw(5)) rc2(.A(expB), .B(~expA), .Cin(1'b1), .Sum(Difference2), .Cout());
	RCA #(.bw(5)) rc3(.A(expA), .B(5'b1), .Cin(1'b0), .Sum(expA_T), .Cout());
	RCA #(.bw(5)) rc4(.A(expB), .B(5'b1), .Cin(1'b0), .Sum(expB_T), .Cout());
	
	assign Difference = ~ex[5] ? Difference1 : Difference2;
	assign expA_R = ez ? expA_T : ~ex[5] ? expA_T : expB_T;
	assign expB_R = ez ? expB_T : ~ex[5] ? expA_T : expB_T;
	//assign expA_R = ez ? expA : ~ex[5] ? expA : expB;
	//assign expB_R = ez ? expB : ~ex[5] ? expA : expB;
	assign mtsA_R = ez ? mtsA : ~ex[5] ? mtsA : mtsB;
	assign mtsB_R = ez ? {mtsB,11'b0} : ~ex[5] ? {mtsB,11'b0} >> Difference : {mtsA,11'b0} >> Difference;
	assign S = ez ? 1'b1 : ~ex[5] ? 1'b1 : 1'b0;
         
endmodule
      

         
//Sub Add
module mantissa(sA, sB, mtsA_R, mtsB_R, R_mts);
   input wire sA, sB;
   input wire [10:0] mtsA_R;
	input wire [21:0] mtsB_R;
   output wire [22:0] R_mts;
	wire [22:0] T1_mts, T2_mts;
	wire co1, co2;
	RCA #(.bw(23)) rc5(.A({1'b0, mtsA_R, 11'b0}), .B(~{1'b0, mtsB_R}), .Cin(1'b1), .Sum(T1_mts), .Cout());
	RCA #(.bw(23)) rc6(.A({1'b0, mtsA_R, 11'b0}), .B({1'b0, mtsB_R}), .Cin(1'b0), .Sum(T2_mts), .Cout());
         
   assign R_mts = sA ^ sB ? T1_mts : T2_mts;
endmodule
      
      
module normalization(sA, sB, S, expA_R, exp, R_mts, Sum);
	input sA, sB;
	input wire S;
	input wire [22:0] R_mts;
	input wire[4:0] expA_R;
	output wire [15:0] Sum;
	output wire [4:0] exp;
	
	wire temp, g, r, rndup;
	wire [22:0] mts_temp;
	wire [11:0] mts_rnd;
	wire [22:0] mts;
	wire s;
	 

   
	assign temp = sA ^ sB;
	assign s = S ? (sA ^ (R_mts[22] & temp)) : (sB ^ (R_mts[22] & temp));
	
	wire [22:0] neg_R_mts;
	RCA #(.bw(23)) rc7(.A(~R_mts), .B(23'b0), .Cin(1'b1), .Sum(neg_R_mts), .Cout());
	assign mts_temp = (R_mts[22] & temp) ? neg_R_mts : R_mts;
	assign exp = expA_R;
	assign mts = mts_temp;
	//assign mts = R_mts;
	
	
	wire [22:0] mmts [11:0];
	wire [4:0] ee [11:0];
		
		
	assign mmts[0] = mts;
	assign ee[0] = exp;
	genvar i;
	generate
		for(i = 0; i < 11; i=i+1) begin :loop_1
			assign mmts[i+1] = mmts[i] << ~mmts[i][22];
			RCA #(.bw(5)) rc7(.A(ee[i]), .B(~{4'b0, ~mmts[i][22]}), .Cin(1'b1), .Sum(ee[i+1]), .Cout());
			//RCA #(.bw(5)) rc7(.A(ee[i]), .B(5'b0), .Cin(~mmts[i][22]), .Sum(ee[i+1]), .Cout());
			//assign ee[i+1] = ee[i] - {4'b0, ~mmts[i][11]};
		end
	endgenerate
	
	wire [22:0] mm;
	assign mm = mmts[11];
		
	assign g = mm[12];
	assign r = mm[11];
	assign st = mm[10] | mm[9] | mm[8] | mm[7] | mm[6] | mm[5] | mm[4] | mm[3] | mm[2] | mm[1] | mm[0];
	assign rndup = (r & st) | (g & r);
	wire flag;
	RCA #(.bw(12)) rc8(.A(mm[22:11]), .B({11'b0, rndup}), .Cin(1'b0), .Sum(mts_rnd), .Cout(flag));
	//assign mts_rnd = mm + rndup;
	
	//zero handling
	wire [4:0] eru;
	RCA #(.bw(5)) rc9(.A(ee[11]), .B(5'b0), .Cin(1'b1), .Sum(eru), .Cout());
	
	wire [4:0] eout = mts_rnd[11] ? ee[11] : flag ? eru : 4'b0;
	wire sout = mts_rnd[11] ? s : flag ? s : 1'b0;
	
	assign Sum = {sout, eout, mts_rnd[10:1]};
  
endmodule


module CSA #(parameter bw = 4)(A, B, Cin, Sum, Cout);
	input [bw-1:0] A, B, Cin;
	output [bw:0] Sum;
	output Cout;

	wire [bw-1:0] S0;
	wire [bw-1:0] C0;
	
	genvar i;
	generate
		for(i=0; i<bw; i=i+1) begin : loop_1
			full_adder fa0(.A(A[i]), .B(B[i]), .cin(Cin[i]), .sum(S0[i]), .cout(C0[i]));
		end
		
	endgenerate
	assign Sum[0] = S0[0];

	RCA #(.bw(4)) r0(.A({C0[bw-1:1], 1'b0}), .B({1'b0,S0[bw-1:1]}), .Cin(C0[0]), .Sum(Sum[bw:1]), .Cout(Cout));

endmodule 

/*
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

module full_adder(
	A,B,cin,
	sum,cout);
	
	input A,B,cin;
	output sum, cout;
	
	assign sum = A ^ B ^ cin;
	assign cout = (A&B) | (B&cin)|(A&cin);
	
endmodule 

*/
module encoder_add(
	A,B, product,
	out
);

	input [15:0] A, B;
	input [15:0] product;
	
	output [15:0] out;
	
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
	
	wire [15:0] nanOut = {6'b011111,10'b1};
	wire [14:0] inf = 15'h7c00;
	
	wire sign = A[15]^B[15];

	
	assign out = nan ? nanOut : (zA ? B : (zB ? A : (iA ? (sign ? nanOut : {A[15],inf}) : (iB ? (sign ? nanOut : {A[15],inf}) : product))));
	
endmodule
