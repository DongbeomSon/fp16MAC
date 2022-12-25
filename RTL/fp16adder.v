`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:27:18 12/09/2022 
// Design Name: 
// Module Name:    fp16adder 
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


module fp16adder(A, B, CLK, RESETn, sum);
	input [15:0] A, B;
	input CLK, RESETn;
	output reg [15:0] sum;
	
	/*
	reg [4:0] exp, expA, expB, expA_R, expB_R;
	reg  sA, sB, s, S, temp;
	reg [10:0] mtsA,  mtsB, mtsA_R, mtsB_R;
	reg [11:0] R_mts, mts_temp, mts;
	reg [11:0] mts_rnd;
	reg [4:0] Difference;
	reg g, r;
	reg rndup;
	reg [15:0] Sum;
	*/
	
	wire [15:0] en_sum;
	wire [15:0] Sum;
	encoder_add en(A,B,Sum,en_sum);
	
	wire [4:0] exp, expA, expB, expA_R, expB_R;
	wire sA, sB, s, S, temp;
	wire [10:0] mtsA,  mtsB, mtsA_R, mtsB_R;
	wire [11:0] R_mts, mts_temp, mts;
	wire [11:0] mts_rnd;
	wire [4:0] Difference;
	wire g, r;
	wire rndup;
	
	
		//initial value sign, exponential, mantissa
		assign sA = A[15];
		assign sB = B[15];
		assign expA = A[14:10];
		assign expB = B[14:10];
		assign mtsA = {1'b1, A[9:0]};
		assign mtsB = {1'b1, B[9:0]};
		
		//compare exponential and shift mantissa
		
		wire [5:0] ex = {0, expA} - {0, expB};
		wire ez = ~(ex[5]|ex[4]|ex[3]|ex[2]|ex[1]|ex[0]);
		
		/*
		if (ez) begin
			assign expA_R = expA + 5'd1;
			assign expB_R = expB + 5'd1;
			assign mtsA_R = mtsA;
			assign mtsB_R = mtsB;
			assign S = 1'b1;
		end
		
		//else if (expA > expB) begin
		else if (~ex[5]) begin
			assign Difference = expA - expB; 
			assign expA_R = expA + 5'd1;
			assign expB_R = expA + 5'd1;
			assign mtsA_R = mtsA;
			assign mtsB_R = mtsB >> Difference;
			assign S = 1'b1;
		end
		
		else begin
			assign Difference = expB - expA;
			assign expA_R = expB + 5'd1;
			assign expB_R = expB + 5'd1;
			assign mtsA_R = mtsB;
			assign mtsB_R = mtsA >> Difference;
			assign S = 1'b0;
		end
		*/
		
		assign Difference = ~ex[5] ? expA - expB : expB - expA;
		assign expA_R = ez ? expA + 5'd1 : ~ex[5] ? expA + 5'd1 : expB + 5'd1;
		assign expB_R = ez ? expB + 5'd1 : ~ex[5] ? expA + 5'd1 : expB + 5'd1;
		assign mtsA_R = ez ? mtsA : ~ex[5] ? mtsA : mtsB;
		assign mtsB_R = ez ? mtsB : ~ex[5] ? mtsB >> Difference : mtsA >> Difference;
		assign S = ez ? 1'b1 : ~ex[5] ? 1'b1 : 1'b0;
		
		
		
		//Sub Add
		wire ss = sA ^ sB;
		assign R_mts = ss ? mtsA_R - mtsB_R : mtsA_R + mtsB_R;

		//normalize
		assign temp = sA ^ sB;
		assign s = S ? (sA ^ (R_mts[11] & temp)) : (sB ^ (R_mts[11] & temp));
		assign mts_temp = (R_mts[11] & temp) ? (~R_mts + 12'd1) : R_mts;
		assign mts = mts_temp[11:0];
		assign exp = expA_R;
		
		genvar i;
		
		wire [11:0] mmts [11:0];
		wire [4:0] ee [11:0];
		/*
		repeat(11) begin
			if (mts[11] == 1'b0) begin
				assign mts = mts << 1'b1;
				assign exp = exp - 5'd1;
			end
		end
		*/
		
		assign mmts[0] = mts;
		assign ee[0] = exp;
		generate
		for(i = 0; i < 11; i=i+1) begin :loop_1
			assign mmts[i+1] = mmts[i] << ~mmts[i][11];
			assign ee[i+1] = ee[i] - {4'b0, ~mmts[i][11]};
		end
		endgenerate
		
		wire [11:0] mm;
		assign mm = mmts[11];
		
		assign g = mm[1];
		assign r = mm[0];
		assign rndup = g & r;
		assign mts_rnd = mm + rndup;
		assign Sum = {s, ee[11], mts_rnd[10:1]};
	
	
	//assign sum = 
	always@(posedge CLK, negedge RESETn) begin
		if(!RESETn) begin
			sum <= 0;
		end else begin
			sum <= en_sum;
	end
	end
endmodule
