`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:13:38 12/09/2022 
// Design Name: 
// Module Name:    fp16MAC 
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
module fp16MAC(
	a, b, acc, CLK, RESETn
    );
	 
	 input [15:0] a, b;
	 input CLK, RESETn;
	 
	 output reg [15:0] acc;
	 
	 reg [15:0] input_a, input_b;
	 
	 wire [15:0] result_m;
	 wire [15:0] result_a;
	 wire [15:0] pAcc;
	 
	 assign pAcc = result_a;
	 
	 fp16multiplier m1(input_a,input_b,CLK,RESETn, result_m);
	 fpadder a1(pAcc,result_m, CLK, RESETn, result_a);
	 
	 
	 always@(posedge CLK, negedge RESETn) begin
		if(!RESETn) begin
			acc <= 0;
			input_a <= 0;
			input_b <= 0;
		end else begin
			acc <= result_a;
			input_a <= a;
			input_b <= b;
	end
	
	end

endmodule
