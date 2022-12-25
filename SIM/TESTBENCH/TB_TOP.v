`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:14:20 09/26/2022
// Design Name:   Carry_Ripple_Adder
// Module Name:   C:/Xilinx/14.7/test/tb_adder.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Carry_Ripple_Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_TOP;
	parameter bw = 16;
	// Inputs
	reg CLK;
	reg RESETn;
	reg [bw:1] A;
	reg [bw:1] B;

	// Outputs
	wire [bw:1] out;

	// Instantiate the Unit Under Test (UUT)
	TOP #(.bw(bw)) UTOP(
		.A(A), 
		.B(B),  
		.out(out), 
		.CLK(CLK),
		.RESETn(RESETn)
	);

	initial begin
		// Initialize Inputs
	A = 16'hcaca;
	B = 16'hd035;
	#200


		
		// Wait 100 ns for global reset to finish
		#5000;
        		
		$finish;
		// Add stimulus here

	end
   
	initial begin
		CLK = 0;
		RESETn = 0;
		#50;
		RESETn = 1;
		forever #10 CLK = ~CLK;
	end
	
endmodule

