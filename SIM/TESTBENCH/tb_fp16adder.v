`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:09:40 12/23/2022
// Design Name:   fp16adder
// Module Name:   C:/Users/Dongbeom Son/Desktop/repos/dld_assigns/float_MAC/tb_fp16adder.v
// Project Name:  float_MAC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fp16adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_fpadder;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg CLK;
	reg RESETn;
	
	//for verification
	wire [15:0] error;
	reg [15:0] ans;
	reg [15:0] ans_reg;
	assign error = sum - ans_reg;

	// Outputs
	wire [15:0] sum;

	// Instantiate the Unit Under Test (UUT)
	fpadder uut (
		.A(A), 
		.B(B), 
		.CLK(CLK), 
		.RESETn(RESETn), 
		.sum(sum)
	);

	initial begin
		// Initialize Inputs
	#50
	A = 16'h344a;
	B = 16'h3249;
	ans = 16'h1111;
	#20
	A = 16'h3677;
	B = 16'hb065;
	ans = 16'h3444;
	#20
	A = 16'hb5c6;
	B = 16'h3a9d;
	ans = 16'h3774;
	#20
	A = 16'h3219;
	B = 16'h34ad;
	ans = 16'h37ba;
	#20
	A = 16'h399f;
	B = 16'h39d3;
	ans = 16'h3db9;
	#20
	A = 16'h2536;
	B = 16'h35bb;
	ans = 16'h360e;
	#20
	A = 16'hb50c;
	B = 16'hbb5d;
	ans = 16'hbcf2;
	#20
	A = 16'hb799;
	B = 16'h3290;
	ans = 16'hb451;
	#20
	A = 16'h36c3;
	B = 16'hb909;
	ans = 16'hb29e;
	#20
	A = 16'h38d1;
	B = 16'hac94;
	ans = 16'h383e;
	#20
	A = 16'h351a;
	B = 16'hba1a;
	ans = 16'hb71a;
	#20
	A = 16'h340f;
	B = 16'h3747;
	ans = 16'h39ab;
	#20
	A = 16'h3804;
	B = 16'h2ceb;
	ans = 16'h38a1;
	#20
	A = 16'hb95c;
	B = 16'h3a54;
	ans = 16'h2fc0;
	#20
	A = 16'h3035;
	B = 16'hba07;
	ans = 16'hb8fa;
	#20
	A = 16'h2d7c;
	B = 16'h390a;
	ans = 16'h39ba;
	#20
	A = 16'h389c;
	B = 16'h3ba1;
	ans = 16'h3e1e;
	#20
	A = 16'hbb39;
	B = 16'hb646;
	ans = 16'hbd2e;
	#20
	A = 16'hbbf6;
	B = 16'hbb6e;
	ans = 16'hbfb2;
	#20
	A = 16'hb3f0;
	B = 16'h342c;
	ans = 16'h2280;
	#20
	A = 16'h37cb;
	B = 16'hbacc;
	ans = 16'hb5cd;
	#20
	A = 16'h3534;
	B = 16'hb1f0;
	ans = 16'h3078;
	#20
	A = 16'h35c2;
	B = 16'h387b;
	ans = 16'h3b5c;
	#20
	A = 16'hb779;
	B = 16'h3b09;
	ans = 16'h3699;
	#20
	A = 16'h30fa;
	B = 16'h3805;
	ans = 16'h3944;
	#20
	A = 16'h396a;
	B = 16'h3863;
	ans = 16'h3ce6;
	#20
	A = 16'h30a4;
	B = 16'hb869;
	ans = 16'hb680;
	#20
	A = 16'h30c5;
	B = 16'hb9c8;
	ans = 16'hb897;
	#20
	A = 16'hb4a1;
	B = 16'h3834;
	ans = 16'h338e;
	#20
	A = 16'hb8a3;
	B = 16'hb74b;
	ans = 16'hbc24;
	#20
	A = 16'ha4e1;
	B = 16'h376c;
	ans = 16'h371e;
	#20
	A = 16'h3336;
	B = 16'h39b2;
	ans = 16'h3b80;
	#20
	A = 16'hbb55;
	B = 16'h3a83;
	ans = 16'hae90;
	#20
	A = 16'hab35;
	B = 16'hba4c;
	ans = 16'hbabf;
	#20
	A = 16'h3a4a;
	B = 16'hb978;
	ans = 16'h2e90;
	#20
	A = 16'hb92c;
	B = 16'hb9d5;
	ans = 16'hbd80;
	#20
	A = 16'h3a5c;
	B = 16'h3121;
	ans = 16'h3ba4;
	#20
	A = 16'hb426;
	B = 16'h3a55;
	ans = 16'h3842;
	#20
	A = 16'hbbc0;
	B = 16'hb86b;
	ans = 16'hbe16;
	#20
	A = 16'h395f;
	B = 16'hb870;
	ans = 16'h2f78;
	#20
	A = 16'hb04f;
	B = 16'h36c4;
	ans = 16'h349c;
	#20
	A = 16'h2e29;
	B = 16'h317c;
	ans = 16'h3448;
	#20
	A = 16'hb9aa;
	B = 16'ha9ea;
	ans = 16'hba09;
	#20
	A = 16'h39cb;
	B = 16'hb607;
	ans = 16'h358f;
	#20
	A = 16'hbba6;
	B = 16'h321e;
	ans = 16'hba1e;
	#20
	A = 16'h38c4;
	B = 16'hb8b5;
	ans = 16'h1f80;
	#20
	A = 16'h354f;
	B = 16'hba59;
	ans = 16'hb763;
	#20
	A = 16'hbac1;
	B = 16'hb41e;
	ans = 16'hbc68;
	#20
	A = 16'h1c97;
	B = 16'hbab1;
	ans = 16'hbaa8;
	#20
	A = 16'hb85e;
	B = 16'h3939;
	ans = 16'h2ed8;
	#20
	A = 16'hb990;
	B = 16'h305d;
	ans = 16'hb879;
	#20
	A = 16'hb21f;
	B = 16'h37b8;
	ans = 16'h34a8;
	#20
	A = 16'hbb52;
	B = 16'hba92;
	ans = 16'hbef2;
	#20
	A = 16'h31ac;
	B = 16'hbb40;
	ans = 16'hb9d5;
	#20
	A = 16'h308e;
	B = 16'h3575;
	ans = 16'h37bc;
	#20
	A = 16'h3a3e;
	B = 16'h3932;
	ans = 16'h3db8;
	#20
	A = 16'h3a80;
	B = 16'hbade;
	ans = 16'ha9e0;
	#20
	A = 16'hbb47;
	B = 16'h3375;
	ans = 16'hb96a;
	#20
	A = 16'hb8aa;
	B = 16'h36ad;
	ans = 16'hb14e;
	#20
	A = 16'hbb57;
	B = 16'hb74c;
	ans = 16'hbd7e;
	#20
	A = 16'h2d3d;
	B = 16'h3966;
	ans = 16'h3a0e;
	#20
	A = 16'h3a36;
	B = 16'h3aa0;
	ans = 16'h3e6b;
	#20
	A = 16'hb9ef;
	B = 16'hba79;
	ans = 16'hbe34;
	#20
	A = 16'hb974;
	B = 16'h3b00;
	ans = 16'h3230;
	#20
	A = 16'hb786;
	B = 16'hbb6f;
	ans = 16'hbd99;
	#20
	A = 16'h3bbe;
	B = 16'hb9d4;
	ans = 16'h33a8;
	#20
	A = 16'hb80e;
	B = 16'h3ae3;
	ans = 16'h35aa;
	#20
	A = 16'h2811;
	B = 16'h3bbe;
	ans = 16'h3bff;
	#20
	A = 16'hb926;
	B = 16'h38c8;
	ans = 16'ha9e0;
	#20
	A = 16'h35fa;
	B = 16'hb95b;
	ans = 16'hb4bc;
	#20
	A = 16'h3ae2;
	B = 16'h35d9;
	ans = 16'h3ce7;
	#20
	A = 16'hbaff;
	B = 16'h34b1;
	ans = 16'hb8a6;
	#20
	A = 16'h36b7;
	B = 16'hb489;
	ans = 16'h305c;
	#20
	A = 16'h343d;
	B = 16'hb033;
	ans = 16'h3047;
	#20
	A = 16'h352e;
	B = 16'h3bf5;
	ans = 16'h3d46;
	#20
	A = 16'h3460;
	B = 16'h3bfb;
	ans = 16'h3d16;
	#20
	A = 16'h397a;
	B = 16'hbbfb;
	ans = 16'hb502;
	#20
	A = 16'h37c2;
	B = 16'hb64e;
	ans = 16'h2dd0;
	#20
	A = 16'hb035;
	B = 16'hb42e;
	ans = 16'hb648;
	#20
	A = 16'h3b40;
	B = 16'hb571;
	ans = 16'h3888;
	#20
	A = 16'hb821;
	B = 16'had7d;
	ans = 16'hb8d1;
	#20
	A = 16'hb18a;
	B = 16'hb3da;
	ans = 16'hb6b2;
	#20
	A = 16'h3ac9;
	B = 16'hac35;
	ans = 16'h3a42;
	#20
	A = 16'hbbc8;
	B = 16'haaae;
	ans = 16'hbc19;
	#20
	A = 16'h36ca;
	B = 16'h3965;
	ans = 16'h3c65;
	#20
	A = 16'hba31;
	B = 16'h36e3;
	ans = 16'hb57f;
	#20
	A = 16'h341b;
	B = 16'hb497;
	ans = 16'ha7c0;
	#20
	A = 16'hb9f5;
	B = 16'h3ac9;
	ans = 16'h2ea0;
	#20
	A = 16'h3946;
	B = 16'h3b9b;
	ans = 16'h3e70;
	#20
	A = 16'h310d;
	B = 16'hb8f6;
	ans = 16'hb766;
	#20
	A = 16'hbae6;
	B = 16'hbb6c;
	ans = 16'hbf29;
	#20
	A = 16'hb76c;
	B = 16'hb78c;
	ans = 16'hbb7c;
	#20
	A = 16'h30f7;
	B = 16'hb9ea;
	ans = 16'hb8ac;
	#20
	A = 16'hba28;
	B = 16'h3666;
	ans = 16'hb5ea;
	#20
	A = 16'hbabc;
	B = 16'h3bc2;
	ans = 16'h3018;
	#20
	A = 16'hb7b9;
	B = 16'hac77;
	ans = 16'hb86b;
	#20
	A = 16'h3710;
	B = 16'h32e2;
	ans = 16'h3940;
	#20
	A = 16'h365a;
	B = 16'hb60d;
	ans = 16'h24d0;
	#20
	A = 16'hb629;
	B = 16'hb4cf;
	ans = 16'hb97c;
	#20
	A = 16'ha77b;
	B = 16'hb825;
	ans = 16'hb861;
	#20
	A = 16'h2d57;
	B = 16'hac99;
	ans = 16'h21f0;
	#20
	A = 16'h38bb;
	B = 16'hba68;
	ans = 16'hb2b4;
	#20
	A = 16'h3a17;
	B = 16'hb5aa;
	ans = 16'h3684;
	#20
	A = 16'h22a7;
	B = 16'hb532;
	ans = 16'hb4fd;
	#20
	A = 16'hb0d5;
	B = 16'hb826;
	ans = 16'hb95b;
	#20
	A = 16'hb2df;
	B = 16'hb5c7;
	ans = 16'hb89b;
	#20
	A = 16'hb8bc;
	B = 16'hba2e;
	ans = 16'hbd75;
	#20
	A = 16'h3a7c;
	B = 16'h395e;
	ans = 16'h3ded;
	#20
	A = 16'hb67a;
	B = 16'h399b;
	ans = 16'h34bc;
	#20
	A = 16'habc2;
	B = 16'hb57c;
	ans = 16'hb674;
	#20
	A = 16'hb4fa;
	B = 16'hb44d;
	ans = 16'hb8a4;
	#20
	A = 16'hace2;
	B = 16'h3217;
	ans = 16'h2f4c;
	#20
	A = 16'hb8cb;
	B = 16'h3408;
	ans = 16'hb58e;
	#20
	A = 16'h385d;
	B = 16'h33c8;
	ans = 16'h3a4f;
	#20
	A = 16'hb279;
	B = 16'h2f54;
	ans = 16'had9e;
	#20
	A = 16'h2e45;
	B = 16'h39e4;
	ans = 16'h3aad;
	#20
	A = 16'h3b37;
	B = 16'h2912;
	ans = 16'h3b88;
	#20
	A = 16'h2d06;
	B = 16'h3964;
	ans = 16'h3a05;
	#20
	A = 16'h37ec;
	B = 16'hb8e3;
	ans = 16'haf68;
	#20
	A = 16'h3180;
	B = 16'h39ca;
	ans = 16'h3b2a;
	#20
	A = 16'hb9ef;
	B = 16'h3b52;
	ans = 16'h318c;
	#20
	A = 16'hbaad;
	B = 16'hbbcb;
	ans = 16'hbf3c;
	#20
	A = 16'haf96;
	B = 16'h331d;
	ans = 16'h2ea4;
	#20
	A = 16'hb331;
	B = 16'hb7a7;
	ans = 16'hb9a0;
	#20
	A = 16'h3a47;
	B = 16'h3082;
	ans = 16'h3b68;
	#20
	A = 16'hb50d;
	B = 16'hbba9;
	ans = 16'hbd18;
	#20
	A = 16'h3487;
	B = 16'hb64c;
	ans = 16'haf14;
	#20
	A = 16'hb88d;
	B = 16'h337d;
	ans = 16'hb55c;
	#20
	A = 16'hb9b9;
	B = 16'h32c0;
	ans = 16'hb809;
	#20
	A = 16'h3bae;
	B = 16'hb867;
	ans = 16'h368e;
	#20
	A = 16'h39e7;
	B = 16'h3713;
	ans = 16'h3cb8;
	#20
	A = 16'h346a;
	B = 16'haa95;
	ans = 16'h332f;
	#20
	A = 16'h3611;
	B = 16'h335c;
	ans = 16'h38e0;
	#20
	A = 16'hb98d;
	B = 16'hba54;
	ans = 16'hbdf0;
	#20
	A = 16'hba21;
	B = 16'hbacf;
	ans = 16'hbe78;
	#20
	A = 16'hb892;
	B = 16'hba17;
	ans = 16'hbd54;
	#20
	A = 16'hac03;
	B = 16'h373f;
	ans = 16'h363e;
	#20
	A = 16'hbbfa;
	B = 16'haeac;
	ans = 16'hbc68;
	#20
	A = 16'hbb55;
	B = 16'hb8d1;
	ans = 16'hbe13;
	#20
	A = 16'h3830;
	B = 16'h382c;
	ans = 16'h3c2e;
	#20
	A = 16'h39ea;
	B = 16'hba05;
	ans = 16'ha2c0;
	#20
	A = 16'hba88;
	B = 16'hba5a;
	ans = 16'hbe71;
	#20
	A = 16'hb8fd;
	B = 16'hb898;
	ans = 16'hbcca;
	#20
	A = 16'h378b;
	B = 16'hb165;
	ans = 16'h34d8;
	#20
	A = 16'hbad7;
	B = 16'hb706;
	ans = 16'hbd2d;
	#20
	A = 16'h3b70;
	B = 16'hba80;
	ans = 16'h2f80;
	#20
	A = 16'h3860;
	B = 16'hb1f6;
	ans = 16'h35c5;
	#20
	A = 16'h349f;
	B = 16'haa90;
	ans = 16'h339a;
	#20
	A = 16'h3146;
	B = 16'h3b37;
	ans = 16'h3c44;
	#20
	A = 16'h3682;
	B = 16'hba76;
	ans = 16'hb66a;
	#20
	A = 16'hb86b;
	B = 16'h3a00;
	ans = 16'h3254;
	#20
	A = 16'hbbb1;
	B = 16'hb83b;
	ans = 16'hbdf6;
	#20
	A = 16'h3bae;
	B = 16'h2b61;
	ans = 16'h3c12;
	#20
	A = 16'hb87e;
	B = 16'h3b99;
	ans = 16'h3636;
	#20
	A = 16'ha8f8;
	B = 16'h3954;
	ans = 16'h3904;
	#20
	A = 16'hb30c;
	B = 16'h3b16;
	ans = 16'h3953;
	#20
	A = 16'h3967;
	B = 16'hb1a4;
	ans = 16'h37fc;
	#20
	A = 16'h3a67;
	B = 16'h3a76;
	ans = 16'h3e6e;
	#20
	A = 16'hb871;
	B = 16'hb87e;
	ans = 16'hbc78;
	#20
	A = 16'h39ee;
	B = 16'h3515;
	ans = 16'h3c3c;
	#20
	A = 16'hb6aa;
	B = 16'h3331;
	ans = 16'hb223;
	#20
	A = 16'h2db6;
	B = 16'hba7e;
	ans = 16'hb9c7;
	#20
	A = 16'hbbcc;
	B = 16'hbb85;
	ans = 16'hbfa8;
	#20
	A = 16'hb5b8;
	B = 16'h389c;
	ans = 16'h3300;
	#20
	A = 16'h335a;
	B = 16'hb01e;
	ans = 16'h2e78;
	#20
	A = 16'h3981;
	B = 16'h3a2d;
	ans = 16'h3dd7;
	#20
	A = 16'h3918;
	B = 16'h398c;
	ans = 16'h3d52;
	#20
	A = 16'h3905;
	B = 16'h3b2b;
	ans = 16'h3e18;
	#20
	A = 16'hb6aa;
	B = 16'hb77f;
	ans = 16'hbb14;
	#20
	A = 16'h3b68;
	B = 16'hb9b2;
	ans = 16'h32d8;
	#20
	A = 16'h32f9;
	B = 16'hb0c7;
	ans = 16'h2c64;
	#20
	A = 16'h2eb3;
	B = 16'h2df4;
	ans = 16'h3254;
	#20
	A = 16'h3590;
	B = 16'hb741;
	ans = 16'haec4;
	#20
	A = 16'h3ac0;
	B = 16'h3b1b;
	ans = 16'h3eee;
	#20
	A = 16'h3b9c;
	B = 16'h2b14;
	ans = 16'h3c07;
	#20
	A = 16'h3485;
	B = 16'hb60e;
	ans = 16'hae24;
	#20
	A = 16'hba40;
	B = 16'h3992;
	ans = 16'had70;
	#20
	A = 16'hb50c;
	B = 16'hb81c;
	ans = 16'hbaa2;
	#20
	A = 16'hb526;
	B = 16'h398c;
	ans = 16'h35f2;
	#20
	A = 16'hbb08;
	B = 16'h31a6;
	ans = 16'hb99e;
	#20
	A = 16'hacac;
	B = 16'h8835;
	ans = 16'hacae;
	#20
	A = 16'hbba4;
	B = 16'h3ae0;
	ans = 16'hae20;
	#20
	A = 16'hb21e;
	B = 16'h32d6;
	ans = 16'h25c0;
	#20
	A = 16'hb52f;
	B = 16'hb8dc;
	ans = 16'hbb74;
	#20
	A = 16'hb980;
	B = 16'ha945;
	ans = 16'hb9d4;
	#20
	A = 16'hb9ca;
	B = 16'h3735;
	ans = 16'hb45f;
	#20
	A = 16'hbb94;
	B = 16'h3059;
	ans = 16'hba7e;
	#20
	A = 16'ha99a;
	B = 16'h337c;
	ans = 16'h3216;
	#20
	A = 16'hbbac;
	B = 16'h3268;
	ans = 16'hba12;
	#20
	A = 16'hba38;
	B = 16'h3ac7;
	ans = 16'h2c78;
	#20
	A = 16'h3b3c;
	B = 16'h3111;
	ans = 16'h3c40;
	#20
	A = 16'hbbd9;
	B = 16'hb954;
	ans = 16'hbe96;
	#20
	A = 16'h2c91;
	B = 16'h3256;
	ans = 16'h344f;
	#20
	A = 16'h36b7;
	B = 16'haa36;
	ans = 16'h35f0;
	#20
	A = 16'hb82a;
	B = 16'hbbd4;
	ans = 16'hbdff;
	#20
	A = 16'h34bc;
	B = 16'hb77c;
	ans = 16'hb180;
	#20
	A = 16'hbaf8;
	B = 16'h30c7;
	ans = 16'hb9c6;
	#20
	A = 16'h390b;
	B = 16'h3a3c;
	ans = 16'h3da4;
	#20
	A = 16'h386e;
	B = 16'hb4d1;
	ans = 16'h340b;
	#20
	A = 16'hba9e;
	B = 16'hbab2;
	ans = 16'hbea8;
	#20
	A = 16'h35c3;
	B = 16'hb331;
	ans = 16'h3055;
	#20
	A = 16'hb9f8;
	B = 16'hbac7;
	ans = 16'hbe60;
	#20
	A = 16'h33f0;
	B = 16'hb473;
	ans = 16'ha7b0;
	#20
	A = 16'hb8bb;
	B = 16'haa6b;
	ans = 16'hb922;
	#20
	A = 16'ha950;
	B = 16'h31e9;
	ans = 16'h3095;
	#20
	A = 16'h3af6;
	B = 16'h3a55;
	ans = 16'h3ea6;
	#20
	A = 16'h3bb5;
	B = 16'hb87a;
	ans = 16'h3676;
	#20
	A = 16'h2984;
	B = 16'hbab2;
	ans = 16'hba5a;
	#20
	A = 16'h3ad1;
	B = 16'hb85e;
	ans = 16'h34e6;
	#20
	A = 16'h2c1f;
	B = 16'h355a;
	ans = 16'h3662;
	#20
	A = 16'hb46c;
	B = 16'h3823;
	ans = 16'h33b4;
	#20
	A = 16'h30cc;
	B = 16'hb9db;
	ans = 16'hb8a8;
	#20
	A = 16'h3b9f;
	B = 16'hba45;
	ans = 16'h3168;
	#20
	A = 16'h38c9;
	B = 16'h28cf;
	ans = 16'h3916;
	#20
	A = 16'hbb86;
	B = 16'h2e7e;
	ans = 16'hbab6;
	#20
	A = 16'hb78e;
	B = 16'hb940;
	ans = 16'hbc84;
	#20
	A = 16'h2412;
	B = 16'had7e;
	ans = 16'hac7a;
	#20
	A = 16'hbb1f;
	B = 16'h3039;
	ans = 16'hba11;
	#20
	A = 16'hb86e;
	B = 16'hba18;
	ans = 16'hbd43;
	#20
	A = 16'hb2cf;
	B = 16'hb601;
	ans = 16'hb8b4;
	#20
	A = 16'hb042;
	B = 16'h3b11;
	ans = 16'h3a00;
	#20
	A = 16'hb439;
	B = 16'hb58e;
	ans = 16'hb8e4;
	#20
	A = 16'h1b94;
	B = 16'hb1e4;
	ans = 16'hb1c6;
	#20
	A = 16'h3174;
	B = 16'hb564;
	ans = 16'hb154;
	#20
	A = 16'hacf7;
	B = 16'h3ae8;
	ans = 16'h3a49;
	#20
	A = 16'hb5b4;
	B = 16'hb743;
	ans = 16'hba7c;
	#20
	A = 16'h3001;
	B = 16'hb8f2;
	ans = 16'hb7e4;
	#20
	A = 16'h3ae4;
	B = 16'hb535;
	ans = 16'h384a;
	#20
	A = 16'h2945;
	B = 16'h3b3e;
	ans = 16'h3b92;
	#20
	A = 16'hb792;
	B = 16'h36dd;
	ans = 16'ha9a8;
	#20
	A = 16'hb731;
	B = 16'h351b;
	ans = 16'hb02c;
	#20
	A = 16'hb994;
	B = 16'hbbda;
	ans = 16'hbeb7;
	#20
	A = 16'h3a46;
	B = 16'h33da;
	ans = 16'h3c1e;
	#20
	A = 16'h3a45;
	B = 16'h2d45;
	ans = 16'h3aee;
	#20
	A = 16'h3921;
	B = 16'hb9b2;
	ans = 16'hac88;
	#20
	A = 16'h30ee;
	B = 16'h326e;
	ans = 16'h35ae;
	#20
	A = 16'ha2b9;
	B = 16'h3827;
	ans = 16'h380c;
	#20
	A = 16'hac90;
	B = 16'h37fb;
	ans = 16'h36d7;
	#20
	A = 16'h3a48;
	B = 16'h38f4;
	ans = 16'h3d9e;
	#20
	A = 16'h20b2;
	B = 16'hb4cc;
	ans = 16'hb4a6;
	#20
	A = 16'hb4b1;
	B = 16'hb028;
	ans = 16'hb6c5;
	#20
	A = 16'h30c4;
	B = 16'h3760;
	ans = 16'h38e1;
	#20
	A = 16'h3bd4;
	B = 16'hbb8f;
	ans = 16'h2850;
	#20
	A = 16'hb782;
	B = 16'h39a9;
	ans = 16'h33a0;
	#20
	A = 16'ha8aa;
	B = 16'h3b53;
	ans = 16'h3b08;
	#20
	A = 16'hb97c;
	B = 16'hba6b;
	ans = 16'hbdf4;
	#20
	A = 16'hb61d;
	B = 16'h3ab9;
	ans = 16'h3755;
	#20
	A = 16'h346f;
	B = 16'h378b;
	ans = 16'h39fd;
	#20
	A = 16'h39f5;
	B = 16'hb40e;
	ans = 16'h37dc;
	#20
	A = 16'hb284;
	B = 16'hb4eb;
	ans = 16'hb816;
	#20
	A = 16'h36e1;
	B = 16'hbb7e;
	ans = 16'hb80e;
	#20
	A = 16'had4e;
	B = 16'h36d8;
	ans = 16'h3584;
	#20
	A = 16'h308e;
	B = 16'h39b8;
	ans = 16'h3adc;
	#20
	A = 16'h38a6;
	B = 16'hba62;
	ans = 16'hb2f0;
	#20
	A = 16'hb992;
	B = 16'h3b9a;
	ans = 16'h3410;
	#20
	A = 16'h30de;
	B = 16'h9d4d;
	ans = 16'h30b4;
	#20
	A = 16'hbbb6;
	B = 16'hb9a0;
	ans = 16'hbeab;
	#20
	A = 16'hbbe9;
	B = 16'haec2;
	ans = 16'hbc61;
	#20
	A = 16'hb39e;
	B = 16'h36ad;
	ans = 16'h31bc;
	#20
	A = 16'h346a;
	B = 16'hab0a;
	ans = 16'h3312;
	#20
	A = 16'hb28c;
	B = 16'hbbe5;
	ans = 16'hbcc4;
	#20
	A = 16'h3bac;
	B = 16'hb92c;
	ans = 16'h3500;
	#20
	A = 16'h3304;
	B = 16'h31c0;
	ans = 16'h3662;
	#20
	A = 16'h34b8;
	B = 16'hb1bd;
	ans = 16'h2f66;
	#20
	A = 16'hbba6;
	B = 16'h380b;
	ans = 16'hb736;
	#20
	A = 16'h38a6;
	B = 16'hbb7f;
	ans = 16'hb5b2;
	#20
	A = 16'h3baf;
	B = 16'hb426;
	ans = 16'h399c;
	#20
	A = 16'h3827;
	B = 16'h3b1a;
	ans = 16'h3da0;
	#20
	A = 16'hb4a5;
	B = 16'hb677;
	ans = 16'hb98e;
	#20
	A = 16'hb833;
	B = 16'h396e;
	ans = 16'h30ec;
	#20
	A = 16'h34e2;
	B = 16'h3607;
	ans = 16'h3974;
	#20
	A = 16'hb923;
	B = 16'hb816;
	ans = 16'hbc9c;
	#20
	A = 16'h357a;
	B = 16'h380e;
	ans = 16'h3acb;
	#20
	A = 16'h3bbd;
	B = 16'h39ba;
	ans = 16'h3ebc;
	#20
	A = 16'ha9ae;
	B = 16'hb99b;
	ans = 16'hb9f6;
	#20
	A = 16'h3933;
	B = 16'h3755;
	ans = 16'h3c6f;
	#20
	A = 16'h2cdf;
	B = 16'h3481;
	ans = 16'h35b9;
	#20
	A = 16'hba33;
	B = 16'h34fa;
	ans = 16'hb76c;
	#20
	A = 16'h3bb3;
	B = 16'h38d0;
	ans = 16'h3e42;
	#20
	A = 16'hb7dc;
	B = 16'h37c8;
	ans = 16'h9d00;
	#20
	A = 16'hb638;
	B = 16'h3ab6;
	ans = 16'h3734;
	#20
	A = 16'hb72b;
	B = 16'hb899;
	ans = 16'hbc17;
	#20
	A = 16'h2ac1;
	B = 16'hb8ad;
	ans = 16'hb841;
	#20
	A = 16'hb95b;
	B = 16'h39f7;
	ans = 16'h2ce0;
	#20
	A = 16'hba3f;
	B = 16'h3552;
	ans = 16'hb72c;
	#20
	A = 16'h3056;
	B = 16'h38e1;
	ans = 16'h39f6;
	#20
	A = 16'hba20;
	B = 16'h38a8;
	ans = 16'hb1e0;
	#20
	A = 16'hb626;
	B = 16'hb833;
	ans = 16'hbb46;
	#20
	A = 16'hb2e5;
	B = 16'hb4c2;
	ans = 16'hb81a;
	#20
	A = 16'h3af4;
	B = 16'h3acc;
	ans = 16'h3ee0;
	#20
	A = 16'hb97b;
	B = 16'hbab8;
	ans = 16'hbe1a;
	#20
	A = 16'hb647;
	B = 16'hae28;
	ans = 16'hb7d1;
	#20
	A = 16'hbac3;
	B = 16'h3527;
	ans = 16'hb830;
	#20
	A = 16'h35c3;
	B = 16'h35aa;
	ans = 16'h39b6;
	#20
	A = 16'hb952;
	B = 16'hb4ae;
	ans = 16'hbba9;
	#20
	A = 16'h3915;
	B = 16'h37bc;
	ans = 16'h3c7a;
	#20
	A = 16'h3670;
	B = 16'h3816;
	ans = 16'h3b4e;
	#20
	A = 16'hb885;
	B = 16'hba2a;
	ans = 16'hbd58;
	#20
	A = 16'hb1f2;
	B = 16'h3159;
	ans = 16'ha4c8;
	#20
	A = 16'h2de9;
	B = 16'h395e;
	ans = 16'h3a1b;
	#20
	A = 16'h2f7f;
	B = 16'h3b22;
	ans = 16'h3c09;
	#20
	A = 16'hbac7;
	B = 16'h37a1;
	ans = 16'hb5ed;
	#20
	A = 16'ha5c7;
	B = 16'hbb89;
	ans = 16'hbbb7;
	#20
	A = 16'h3b26;
	B = 16'h39a2;
	ans = 16'h3e64;
	#20
	A = 16'h3770;
	B = 16'h3bca;
	ans = 16'h3dc1;
	#20
	A = 16'h3514;
	B = 16'h3ae4;
	ans = 16'h3cb7;
	#20
	A = 16'h3658;
	B = 16'h397b;
	ans = 16'h3c54;
	#20
	A = 16'hb93e;
	B = 16'hb8b5;
	ans = 16'hbcfa;
	#20
	A = 16'h3909;
	B = 16'hb40b;
	ans = 16'h3607;
	#20
	A = 16'h3939;
	B = 16'h2987;
	ans = 16'h3991;
	#20
	A = 16'h3701;
	B = 16'hb59c;
	ans = 16'h2d94;
	#20
	A = 16'hb7b2;
	B = 16'h3000;
	ans = 16'hb5b2;
	#20
	A = 16'h351f;
	B = 16'hb620;
	ans = 16'hac04;
	#20
	A = 16'hb147;
	B = 16'h3bad;
	ans = 16'h3a5b;
	#20
	A = 16'hb26d;
	B = 16'h3812;
	ans = 16'h34ee;
	#20
	A = 16'h30f4;
	B = 16'hb948;
	ans = 16'hb80b;
	#20
	A = 16'h374d;
	B = 16'h38e5;
	ans = 16'h3c46;
	#20
	A = 16'h34a7;
	B = 16'hb747;
	ans = 16'hb140;
	#20
	A = 16'hb746;
	B = 16'hbaef;
	ans = 16'hbd49;
	#20
	A = 16'haf0e;
	B = 16'h3711;
	ans = 16'h354e;
	#20
	A = 16'hbbee;
	B = 16'hae5c;
	ans = 16'hbc5d;
	#20
	A = 16'hb491;
	B = 16'h36d4;
	ans = 16'h3086;
	#20
	A = 16'h3203;
	B = 16'hbb6d;
	ans = 16'hb9ec;
	#20
	A = 16'hb83a;
	B = 16'hba9f;
	ans = 16'hbd6c;
	#20
	A = 16'hb941;
	B = 16'h1d20;
	ans = 16'hb937;
	#20
	A = 16'h3973;
	B = 16'hbad3;
	ans = 16'hb180;
	#20
	A = 16'h34ac;
	B = 16'h2582;
	ans = 16'h3504;
	#20
	A = 16'h3842;
	B = 16'h34e5;
	ans = 16'h3ab4;
	#20
	A = 16'hb585;
	B = 16'h3915;
	ans = 16'h34a5;
	#20
	A = 16'hb5ad;
	B = 16'hb94f;
	ans = 16'hbc13;
	#20
	A = 16'h2e0a;
	B = 16'hb33e;
	ans = 16'hb039;
	#20
	A = 16'hb574;
	B = 16'h396f;
	ans = 16'h356a;
	#20
	A = 16'hbad9;
	B = 16'h39c2;
	ans = 16'hb05c;
	#20
	A = 16'h3ac2;
	B = 16'h2c47;
	ans = 16'h3b4b;
	#20
	A = 16'hba16;
	B = 16'hb827;
	ans = 16'hbd1e;
	#20
	A = 16'h296a;
	B = 16'haff4;
	ans = 16'had3f;
	#20
	A = 16'haefe;
	B = 16'h263d;
	ans = 16'had6f;
	#20
	A = 16'hb631;
	B = 16'hb541;
	ans = 16'hb9b9;
	#20
	A = 16'h9864;
	B = 16'hb86e;
	ans = 16'hb872;
	#20
	A = 16'h30ed;
	B = 16'hac7a;
	ans = 16'h2d60;
	#20
	A = 16'hbb87;
	B = 16'h355d;
	ans = 16'hb8d8;
	#20
	A = 16'h359d;
	B = 16'h3b18;
	ans = 16'h3cf3;
	#20
	A = 16'h3bea;
	B = 16'h39f6;
	ans = 16'h3ef0;
	#20
	A = 16'h3960;
	B = 16'h357e;
	ans = 16'h3c10;
	#20
	A = 16'hb979;
	B = 16'h34d4;
	ans = 16'hb61e;
	#20
	A = 16'hbb08;
	B = 16'h397f;
	ans = 16'hb224;
	#20
	A = 16'h399c;
	B = 16'hb414;
	ans = 16'h3724;
	#20
	A = 16'hb18a;
	B = 16'h3814;
	ans = 16'h3563;
	#20
	A = 16'hb6c5;
	B = 16'h313e;
	ans = 16'hb426;
	#20
	A = 16'h301d;
	B = 16'h34ea;
	ans = 16'h36f8;
	#20
	A = 16'hb8f5;
	B = 16'h3410;
	ans = 16'hb5da;
	#20
	A = 16'h3849;
	B = 16'h35a0;
	ans = 16'h3b19;
	#20
	A = 16'hba45;
	B = 16'h3ba0;
	ans = 16'h316c;
	#20
	A = 16'hb54c;
	B = 16'hb918;
	ans = 16'hbbbe;
	#20
	A = 16'hb46e;
	B = 16'h3a2d;
	ans = 16'h37ec;
	#20
	A = 16'h3402;
	B = 16'haa52;
	ans = 16'h3270;
	#20
	A = 16'h3b3c;
	B = 16'h3ba0;
	ans = 16'h3f6e;
	#20
	A = 16'hb85d;
	B = 16'h2d33;
	ans = 16'hb76d;
	#20
	A = 16'h3612;
	B = 16'hbb99;
	ans = 16'hb890;
	#20
	A = 16'h334a;
	B = 16'h3996;
	ans = 16'h3b68;
	#20
	A = 16'hb4cf;
	B = 16'hb952;
	ans = 16'hbbba;
	#20
	A = 16'haf7c;
	B = 16'h3670;
	ans = 16'h3491;
	#20
	A = 16'hba9b;
	B = 16'hb94a;
	ans = 16'hbdf2;
	#20
	A = 16'hb8f1;
	B = 16'hbaef;
	ans = 16'hbdf0;
	#20
	A = 16'hb7f4;
	B = 16'h3207;
	ans = 16'hb4f0;
	#20
	A = 16'h362c;
	B = 16'h3603;
	ans = 16'h3a18;
	#20
	A = 16'h3bc9;
	B = 16'ha60e;
	ans = 16'h3b99;
	#20
	A = 16'hba9a;
	B = 16'hb519;
	ans = 16'hbc93;
	#20
	A = 16'h3804;
	B = 16'hb973;
	ans = 16'hb1bc;
	#20
	A = 16'h3967;
	B = 16'h3789;
	ans = 16'h3c96;
	#20
	A = 16'h3838;
	B = 16'h37dd;
	ans = 16'h3c13;
	#20
	A = 16'h382e;
	B = 16'h318b;
	ans = 16'h3991;
	#20
	A = 16'h39cb;
	B = 16'hb4c2;
	ans = 16'h36d4;
	#20
	A = 16'h38db;
	B = 16'hb939;
	ans = 16'ha9e0;
	#20
	A = 16'hbbe4;
	B = 16'h39eb;
	ans = 16'hb3e4;
	#20
	A = 16'h3b27;
	B = 16'h392d;
	ans = 16'h3e2a;
	#20
	A = 16'had49;
	B = 16'h300a;
	ans = 16'h2996;
	#20
	A = 16'h3875;
	B = 16'hb8f1;
	ans = 16'habc0;
	#20
	A = 16'hb897;
	B = 16'hae4f;
	ans = 16'hb961;
	#20
	A = 16'h3717;
	B = 16'hb5fc;
	ans = 16'h2c6c;
	#20
	A = 16'hba97;
	B = 16'had11;
	ans = 16'hbb39;
	#20
	A = 16'h38cf;
	B = 16'hbbfe;
	ans = 16'hb65e;
	#20
	A = 16'h2f8f;
	B = 16'h386a;
	ans = 16'h395c;
	#20
	A = 16'hbaaf;
	B = 16'h35fb;
	ans = 16'hb763;
	#20
	A = 16'h28b3;
	B = 16'hb76d;
	ans = 16'hb6d7;
	#20
	A = 16'hb7cb;
	B = 16'hb88b;
	ans = 16'hbc38;
	#20
	A = 16'h39b7;
	B = 16'h2623;
	ans = 16'h39e8;
	#20
	A = 16'h381b;
	B = 16'h365d;
	ans = 16'h3b4a;
	#20
	A = 16'h2b8f;
	B = 16'hbbe2;
	ans = 16'hbb69;
	#20
	A = 16'h373a;
	B = 16'hbb91;
	ans = 16'hb7e8;
	#20
	A = 16'h3425;
	B = 16'hacb6;
	ans = 16'h31ef;
	#20
	A = 16'h37f0;
	B = 16'hbb05;
	ans = 16'hb61a;
	#20
	A = 16'h31e3;
	B = 16'hbbc6;
	ans = 16'hba4d;
	#20
	A = 16'h3b53;
	B = 16'h33f0;
	ans = 16'h3ca8;
	#20
	A = 16'h39fd;
	B = 16'hbaeb;
	ans = 16'haf70;
	#20
	A = 16'hb7c3;
	B = 16'h3a9d;
	ans = 16'h3577;
	#20
	A = 16'h319c;
	B = 16'hb54d;
	ans = 16'hb0fe;
	#20
	A = 16'h2f5d;
	B = 16'hb7de;
	ans = 16'hb607;
	#20
	A = 16'h3b58;
	B = 16'h3acd;
	ans = 16'h3f12;
	#20
	A = 16'h383b;
	B = 16'h368c;
	ans = 16'h3b81;
	#20
	A = 16'h2c17;
	B = 16'h39ad;
	ans = 16'h3a30;
	#20
	A = 16'h3ad8;
	B = 16'h3b76;
	ans = 16'h3f27;
	#20
	A = 16'h3a60;
	B = 16'h2d1f;
	ans = 16'h3b04;
	#20
	A = 16'hb51a;
	B = 16'h36e3;
	ans = 16'h2f24;
	#20
	A = 16'haf20;
	B = 16'hbab1;
	ans = 16'hbb95;
	#20
	A = 16'h3a55;
	B = 16'hb9a4;
	ans = 16'h2d88;
	#20
	A = 16'h2c81;
	B = 16'h39e3;
	ans = 16'h3a73;
	#20
	A = 16'h2a15;
	B = 16'h2c38;
	ans = 16'h2f42;
	#20
	A = 16'hba49;
	B = 16'h36ee;
	ans = 16'hb5a4;
	#20
	A = 16'hb80a;
	B = 16'hb89c;
	ans = 16'hbc53;
	#20
	A = 16'h3497;
	B = 16'hb982;
	ans = 16'hb66d;
	#20
	A = 16'h3029;
	B = 16'ha9e1;
	ans = 16'h2d62;
	#20
	A = 16'h392c;
	B = 16'h3852;
	ans = 16'h3cbf;
	#20
	A = 16'h356a;
	B = 16'h36d3;
	ans = 16'h3a1e;
	#20
	A = 16'hb032;
	B = 16'hbae3;
	ans = 16'hbbf0;
	#20
	A = 16'h2631;
	B = 16'h2477;
	ans = 16'h2954;
	#20
	A = 16'h3ac6;
	B = 16'h38ec;
	ans = 16'h3dd9;
	#20
	A = 16'hb3f6;
	B = 16'h3483;
	ans = 16'h2840;
	#20
	A = 16'hb8f7;
	B = 16'hb7dc;
	ans = 16'hbc72;
	#20
	A = 16'h3a66;
	B = 16'h39ae;
	ans = 16'h3e0a;
	#20
	A = 16'hb9c4;
	B = 16'h3478;
	ans = 16'hb710;
	#20
	A = 16'hbbf9;
	B = 16'hbb18;
	ans = 16'hbf88;
	#20
	A = 16'h337a;
	B = 16'h38c7;
	ans = 16'h3aa6;
	#20
	A = 16'hb8a1;
	B = 16'hb6ad;
	ans = 16'hbbf8;
	#20
	A = 16'h393b;
	B = 16'hb57e;
	ans = 16'h34f8;
	#20
	A = 16'h34fe;
	B = 16'hb87b;
	ans = 16'hb3f0;
	#20
	A = 16'hb0b5;
	B = 16'h378a;
	ans = 16'h3530;
	#20
	A = 16'h2f29;
	B = 16'h3b2a;
	ans = 16'h3c08;
	#20
	A = 16'h3ba5;
	B = 16'hb65f;
	ans = 16'h3876;
	#20
	A = 16'h38b4;
	B = 16'h3b26;
	ans = 16'h3ded;
	#20
	A = 16'h3b1c;
	B = 16'hb9a2;
	ans = 16'h31e8;
	#20
	A = 16'h3506;
	B = 16'hbb5e;
	ans = 16'hb8db;
	#20
	A = 16'ha550;
	B = 16'h3131;
	ans = 16'h3087;
	#20
	A = 16'hb981;
	B = 16'hb9df;
	ans = 16'hbdb0;
	#20
	A = 16'hb49d;
	B = 16'hb420;
	ans = 16'hb85e;
	#20
	A = 16'hb391;
	B = 16'hb81e;
	ans = 16'hba02;
	#20
	A = 16'h39b4;
	B = 16'h2589;
	ans = 16'h39e0;
	#20
	A = 16'hb43d;
	B = 16'hbbbf;
	ans = 16'hbcef;
	#20
	A = 16'h3bf4;
	B = 16'hbb4e;
	ans = 16'h2d30;
	#20
	A = 16'h302c;
	B = 16'h341c;
	ans = 16'h3632;
	#20
	A = 16'hb478;
	B = 16'hb6c2;
	ans = 16'hb99d;
	#20
	A = 16'h3bf2;
	B = 16'h32cb;
	ans = 16'h3cd2;
	#20
	A = 16'h348a;
	B = 16'h3b1a;
	ans = 16'h3cb0;
	#20
	A = 16'hb869;
	B = 16'h3535;
	ans = 16'hb33a;
	#20
	A = 16'h2642;
	B = 16'hbaec;
	ans = 16'hbaba;
	#20
	A = 16'hae3c;
	B = 16'h29b1;
	ans = 16'haac7;
	#20
	A = 16'hb1e7;
	B = 16'h2be0;
	ans = 16'hafde;
	#20
	A = 16'hb599;
	B = 16'h32dd;
	ans = 16'hb055;
	#20
	A = 16'h26ad;
	B = 16'hb308;
	ans = 16'hb232;
	#20
	A = 16'h3aed;
	B = 16'hbb00;
	ans = 16'ha0c0;
	#20
	A = 16'h3b00;
	B = 16'h399d;
	ans = 16'h3e4e;
	#20
	A = 16'h3391;
	B = 16'h3baf;
	ans = 16'h3cca;
	#20
	A = 16'haf2a;
	B = 16'h3781;
	ans = 16'h35b6;
	#20
	A = 16'h2fbd;
	B = 16'h39c7;
	ans = 16'h3abf;
	#20
	A = 16'h3914;
	B = 16'h2ae4;
	ans = 16'h3982;
	#20
	A = 16'h3974;
	B = 16'h3b19;
	ans = 16'h3e46;
	#20
	A = 16'hb97d;
	B = 16'hb700;
	ans = 16'hbc7e;
	#20
	A = 16'hae40;
	B = 16'h3b7e;
	ans = 16'h3ab6;
	#20
	A = 16'hb42a;
	B = 16'hb9c1;
	ans = 16'hbbd6;
	#20
	A = 16'haa90;
	B = 16'hb97a;
	ans = 16'hb9e3;
	#20
	A = 16'h3417;
	B = 16'h38dd;
	ans = 16'h3ae8;
	#20
	A = 16'hbba7;
	B = 16'hb848;
	ans = 16'hbdf8;
	#20
	A = 16'h320e;
	B = 16'h38a5;
	ans = 16'h3a28;
	#20
	A = 16'hbb21;
	B = 16'hb6dc;
	ans = 16'hbd48;
	#20
	A = 16'hb909;
	B = 16'h2aef;
	ans = 16'hb89a;
	#20
	A = 16'hae40;
	B = 16'hb82a;
	ans = 16'hb8f2;
	#20
	A = 16'hb9a9;
	B = 16'hbac2;
	ans = 16'hbe36;
	#20
	A = 16'h1a3a;
	B = 16'h38ea;
	ans = 16'h38f0;
	#20
	A = 16'h358c;
	B = 16'h3b19;
	ans = 16'h3cf0;
	#20
	A = 16'h36e1;
	B = 16'h3b7f;
	ans = 16'h3d78;
	#20
	A = 16'hb03d;
	B = 16'hb8c6;
	ans = 16'hb9d5;
	#20
	A = 16'h3920;
	B = 16'hb9ee;
	ans = 16'hae70;
	#20
	A = 16'hb30b;
	B = 16'h3a94;
	ans = 16'h38d1;
	#20
	A = 16'h3ade;
	B = 16'hb420;
	ans = 16'h38ce;
	#20
	A = 16'h2ebd;
	B = 16'h3873;
	ans = 16'h394b;
	#20
	A = 16'h3be6;
	B = 16'h382d;
	ans = 16'h3e0a;
	#20
	A = 16'h2d65;
	B = 16'h2d0d;
	ans = 16'h3139;
	#20
	A = 16'hbb45;
	B = 16'hb724;
	ans = 16'hbd6c;
	#20
	A = 16'hbb35;
	B = 16'h3b86;
	ans = 16'h2910;
	#20
	A = 16'h381b;
	B = 16'haae8;
	ans = 16'h3759;
	#20
	A = 16'h3024;
	B = 16'hb86e;
	ans = 16'hb6ca;
	#20
	A = 16'h2bc2;
	B = 16'hae84;
	ans = 16'ha946;
	#20
	A = 16'h31c4;
	B = 16'h39a2;
	ans = 16'h3b13;
	#20
	A = 16'hb6cb;
	B = 16'h3afe;
	ans = 16'h3731;
	#20
	A = 16'h38b8;
	B = 16'hb438;
	ans = 16'h3538;
	#20
	A = 16'h3bf0;
	B = 16'h32a0;
	ans = 16'h3ccc;
	#20
	A = 16'hbb32;
	B = 16'h3376;
	ans = 16'hb954;
	#20
	A = 16'h39d4;
	B = 16'h3407;
	ans = 16'h3bd8;
	#20
	A = 16'hac1d;
	B = 16'hb302;
	ans = 16'hb488;
	#20
	A = 16'h3473;
	B = 16'hb25c;
	ans = 16'h2d14;
	#20
	A = 16'h3496;
	B = 16'hb9f3;
	ans = 16'hb750;
	#20
	A = 16'h39ce;
	B = 16'hb9c7;
	ans = 16'h1b00;
	#20
	A = 16'hb147;
	B = 16'hb869;
	ans = 16'hb9bb;
	#20
	A = 16'h381a;
	B = 16'hbbfc;
	ans = 16'hb7c4;
	#20
	A = 16'h3120;
	B = 16'hb0eb;
	ans = 16'h1ea0;
	#20
	A = 16'h3bd6;
	B = 16'hb943;
	ans = 16'h3526;
	#20
	A = 16'hb260;
	B = 16'h3a38;
	ans = 16'h38a0;
	#20
	A = 16'hb8cd;
	B = 16'hb542;
	ans = 16'hbb6e;
	#20
	A = 16'hb95b;
	B = 16'h3b10;
	ans = 16'h32d4;
	#20
	A = 16'h30bb;
	B = 16'h33b0;
	ans = 16'h3636;
	#20
	A = 16'h3018;
	B = 16'h3527;
	ans = 16'h3733;
	#20
	A = 16'h37aa;
	B = 16'h3be1;
	ans = 16'h3ddb;
	#20
	A = 16'h39ad;
	B = 16'h331b;
	ans = 16'h3b74;
	#20
	A = 16'hbafa;
	B = 16'hbad9;
	ans = 16'hbeea;
	#20
	A = 16'hbaac;
	B = 16'hab3e;
	ans = 16'hbb20;
	#20
	A = 16'hb5e1;
	B = 16'hb937;
	ans = 16'hbc14;
	#20
	A = 16'h3bd6;
	B = 16'h337d;
	ans = 16'h3cdb;
	#20
	A = 16'hb454;
	B = 16'h3894;
	ans = 16'h34d4;
	#20
	A = 16'h3b37;
	B = 16'hb788;
	ans = 16'h36e6;
	#20
	A = 16'h34d2;
	B = 16'h3133;
	ans = 16'h376c;
	#20
	A = 16'h3194;
	B = 16'hb661;
	ans = 16'hb32e;
	#20
	A = 16'hba29;
	B = 16'h355e;
	ans = 16'hb6f4;
	#20
	A = 16'hba10;
	B = 16'hb6c6;
	ans = 16'hbcba;
	#20
	A = 16'hb8e6;
	B = 16'h23d0;
	ans = 16'hb8c7;
	#20
	A = 16'h3399;
	B = 16'h3b4f;
	ans = 16'h3c9b;
	#20
	A = 16'h35fd;
	B = 16'h2d42;
	ans = 16'h374e;
	#20
	A = 16'h3544;
	B = 16'h3869;
	ans = 16'h3b0b;
	#20
	A = 16'h39c9;
	B = 16'hb68d;
	ans = 16'h3505;
	#20
	A = 16'hb986;
	B = 16'hb630;
	ans = 16'hbc4f;
	#20
	A = 16'h37fa;
	B = 16'h3a1d;
	ans = 16'h3d0d;
	#20
	A = 16'h3955;
	B = 16'hbbbd;
	ans = 16'hb4d0;
	#20
	A = 16'hb976;
	B = 16'hbaa4;
	ans = 16'hbe0d;
	#20
	A = 16'h38af;
	B = 16'hb2b3;
	ans = 16'h3604;
	#20
	A = 16'h2dcb;
	B = 16'h33cf;
	ans = 16'h355a;
	#20
	A = 16'h35b6;
	B = 16'hbabb;
	ans = 16'hb7c0;
	#20
	A = 16'hb138;
	B = 16'h3b60;
	ans = 16'h3a12;
	#20
	A = 16'h3901;
	B = 16'h3b98;
	ans = 16'h3e4c;
	#20
	A = 16'h3892;
	B = 16'h357b;
	ans = 16'h3b50;
	#20
	A = 16'hb825;
	B = 16'h3b60;
	ans = 16'h3676;
	#20
	A = 16'h2cc6;
	B = 16'h36c1;
	ans = 16'h37f2;
	#20
	A = 16'hb8e2;
	B = 16'hb9db;
	ans = 16'hbd5e;
	#20
	A = 16'h3b4e;
	B = 16'h37b8;
	ans = 16'h3d95;
	#20
	A = 16'hb719;
	B = 16'hb82a;
	ans = 16'hbbb6;
	#20
	A = 16'h3710;
	B = 16'h2eae;
	ans = 16'h385e;
	#20
	A = 16'hb104;
	B = 16'h305c;
	ans = 16'ha540;
	#20
	A = 16'hbbd5;
	B = 16'hb831;
	ans = 16'hbe03;
	#20
	A = 16'hbaa8;
	B = 16'h2e8d;
	ans = 16'hb9d6;
	#20
	A = 16'h39af;
	B = 16'h1fde;
	ans = 16'h39bf;
	#20
	A = 16'hb30c;
	B = 16'h346e;
	ans = 16'h2b40;
	#20
	A = 16'hb8f9;
	B = 16'hb93a;
	ans = 16'hbd1a;
	#20
	A = 16'hb324;
	B = 16'h393b;
	ans = 16'h36e4;
	#20
	A = 16'hb828;
	B = 16'h2fc6;
	ans = 16'hb65e;
	#20
	A = 16'hb834;
	B = 16'hb5e6;
	ans = 16'hbb27;
	#20
	A = 16'h2d9c;
	B = 16'h3634;
	ans = 16'h379b;
	#20
	A = 16'hb076;
	B = 16'h36d0;
	ans = 16'h3495;
	#20
	A = 16'h3804;
	B = 16'h35ca;
	ans = 16'h3ae9;
	#20
	A = 16'hb2e4;
	B = 16'h376a;
	ans = 16'h33f0;
	#20
	A = 16'h2bc8;
	B = 16'hb5be;
	ans = 16'hb4c5;
	#20
	A = 16'h3b9e;
	B = 16'h2f9b;
	ans = 16'h3c49;
	#20
	A = 16'hb72d;
	B = 16'h375f;
	ans = 16'h2240;
	#20
	A = 16'h383f;
	B = 16'h34ed;
	ans = 16'h3ab6;
	#20
	A = 16'h34a9;
	B = 16'h3b95;
	ans = 16'h3cf5;
	#20
	A = 16'h3548;
	B = 16'hb796;
	ans = 16'hb09c;
	#20
	A = 16'hb6c1;
	B = 16'hba73;
	ans = 16'hbcea;
	#20
	A = 16'hb3d9;
	B = 16'hba8e;
	ans = 16'hbc42;
	#20
	A = 16'hafe7;
	B = 16'h3abb;
	ans = 16'h39be;
	#20
	A = 16'h3416;
	B = 16'h3a98;
	ans = 16'h3c52;
	#20
	A = 16'h3b52;
	B = 16'h35da;
	ans = 16'h3d20;
	#20
	A = 16'ha93a;
	B = 16'habd4;
	ans = 16'hae87;
	#20
	A = 16'h3563;
	B = 16'h3571;
	ans = 16'h396a;
	#20
	A = 16'hb345;
	B = 16'hbaa8;
	ans = 16'hbc3d;
	#20
	A = 16'h3727;
	B = 16'h39f5;
	ans = 16'h3cc4;
	#20
	A = 16'hae8f;
	B = 16'haf35;
	ans = 16'hb2e2;
	#20
	A = 16'h3a54;
	B = 16'h2eaa;
	ans = 16'h3b29;
	#20
	A = 16'h39d2;
	B = 16'hb177;
	ans = 16'h3874;
	#20
	A = 16'h39f1;
	B = 16'hb4e2;
	ans = 16'h3700;
	#20
	A = 16'hb082;
	B = 16'hbbca;
	ans = 16'hbc75;
	#20
	A = 16'h39cc;
	B = 16'ha8e4;
	ans = 16'h397e;
	#20
	A = 16'h3b58;
	B = 16'hb395;
	ans = 16'h3973;
	#20
	A = 16'h36d4;
	B = 16'h381c;
	ans = 16'h3b86;
	#20
	A = 16'hb4d1;
	B = 16'h3861;
	ans = 16'h33e2;
	#20
	A = 16'h3397;
	B = 16'h3390;
	ans = 16'h3794;
	#20
	A = 16'h2eee;
	B = 16'h3932;
	ans = 16'h3a10;
	#20
	A = 16'h2ce7;
	B = 16'hb443;
	ans = 16'hb212;
	#20
	A = 16'hb221;
	B = 16'hb6e9;
	ans = 16'hb8fd;
	#20
	A = 16'h3a17;
	B = 16'hb446;
	ans = 16'h37e8;
	#20
	A = 16'hb851;
	B = 16'h39f5;
	ans = 16'h3290;
	#20
	A = 16'hb6a0;
	B = 16'h3538;
	ans = 16'hada0;
	#20
	A = 16'hb5ff;
	B = 16'h324f;
	ans = 16'hb1af;
	#20
	A = 16'hb632;
	B = 16'hb91e;
	ans = 16'hbc1c;
	#20
	A = 16'h3682;
	B = 16'h36cf;
	ans = 16'h3aa8;
	#20
	A = 16'hb86f;
	B = 16'ha745;
	ans = 16'hb8a9;
	#20
	A = 16'hbb00;
	B = 16'h3bcd;
	ans = 16'h2e68;
	#20
	A = 16'h3bec;
	B = 16'hb921;
	ans = 16'h3596;
	#20
	A = 16'h399f;
	B = 16'h2dc4;
	ans = 16'h3a58;
	#20
	A = 16'hb4d7;
	B = 16'h3b73;
	ans = 16'h3908;
	#20
	A = 16'h3968;
	B = 16'h3b54;
	ans = 16'h3e5e;
	#20
	A = 16'h3a8f;
	B = 16'hba44;
	ans = 16'h28b0;
	#20
	A = 16'hb2b4;
	B = 16'h3a1e;
	ans = 16'h3871;
	#20
	A = 16'hb8e8;
	B = 16'hb953;
	ans = 16'hbd1e;
	#20
	A = 16'h3bc4;
	B = 16'hb261;
	ans = 16'h3a2c;
	#20
	A = 16'hb758;
	B = 16'h3afd;
	ans = 16'h36a2;
	#20
	A = 16'h374f;
	B = 16'hac0f;
	ans = 16'h364b;
	#20
	A = 16'hade3;
	B = 16'h3ad9;
	ans = 16'h3a1d;
	#20
	A = 16'h3a6f;
	B = 16'h3586;
	ans = 16'h3c99;
	#20
	A = 16'h38b5;
	B = 16'hbad9;
	ans = 16'hb448;
	#20
	A = 16'h320b;
	B = 16'h3ad2;
	ans = 16'h3c2a;
	#20
	A = 16'hb678;
	B = 16'hb752;
	ans = 16'hbae5;
	#20
	A = 16'hb593;
	B = 16'h3755;
	ans = 16'h2f08;
	#20
	A = 16'h387a;
	B = 16'h3020;
	ans = 16'h3982;
	#20
	A = 16'h3aad;
	B = 16'hb844;
	ans = 16'h34d2;
	#20
	A = 16'hb04a;
	B = 16'hbafa;
	ans = 16'hbc06;
	#20
	A = 16'ha500;
	B = 16'h3897;
	ans = 16'h386f;
	#20
	A = 16'hbb71;
	B = 16'hbae1;
	ans = 16'hbf29;
	#20
	A = 16'h3b76;
	B = 16'h3bcd;
	ans = 16'h3fa2;
	#20
	A = 16'hb150;
	B = 16'h391d;
	ans = 16'h3792;
	#20
	A = 16'h3a9c;
	B = 16'hbbb4;
	ans = 16'hb060;
	#20
	A = 16'h33d6;
	B = 16'h381a;
	ans = 16'h3a10;
	#20
	A = 16'h36aa;
	B = 16'h387f;
	ans = 16'h3bd4;
	#20
	A = 16'h311f;
	B = 16'hb5f4;
	ans = 16'hb2c9;
	#20
	A = 16'h3ab6;
	B = 16'h391a;
	ans = 16'h3de8;
	#20
	A = 16'h3b89;
	B = 16'hb847;
	ans = 16'h3684;
	#20
	A = 16'ha6ce;
	B = 16'h30bc;
	ans = 16'h2fc4;
	#20
	A = 16'hb209;
	B = 16'hb84d;
	ans = 16'hb9cf;
	#20
	A = 16'h3857;
	B = 16'hb9a7;
	ans = 16'hb140;
	#20
	A = 16'h32ea;
	B = 16'h3136;
	ans = 16'h3610;
	#20
	A = 16'h3236;
	B = 16'h39ca;
	ans = 16'h3b58;
	#20
	A = 16'h3ae5;
	B = 16'h3227;
	ans = 16'h3c37;
	#20
	A = 16'hb86e;
	B = 16'hb577;
	ans = 16'hbb2a;
	#20
	A = 16'h3abe;
	B = 16'hb6f0;
	ans = 16'h368c;
	#20
	A = 16'hb0b1;
	B = 16'h2f9c;
	ans = 16'ha718;
	#20
	A = 16'h339c;
	B = 16'hb202;
	ans = 16'h2a68;
	#20
	A = 16'hbace;
	B = 16'h2683;
	ans = 16'hba9a;
	#20
	A = 16'hb0ac;
	B = 16'h3733;
	ans = 16'h34dd;
	#20
	A = 16'h2c6a;
	B = 16'h374d;
	ans = 16'h3834;
	#20
	A = 16'h3a6c;
	B = 16'hb59e;
	ans = 16'h373a;
	#20
	A = 16'hb8f9;
	B = 16'h350b;
	ans = 16'hb4e7;
	#20
	A = 16'h3b4a;
	B = 16'hbb2f;
	ans = 16'h22c0;
	#20
	A = 16'hb99d;
	B = 16'hba02;
	ans = 16'hbdd0;
	#20
	A = 16'hb4d4;
	B = 16'h39e0;
	ans = 16'h36ec;
	#20
	A = 16'hb04b;
	B = 16'h390b;
	ans = 16'h37f0;
	#20
	A = 16'h3bf8;
	B = 16'h3b7e;
	ans = 16'h3fbb;
	#20
	A = 16'h314f;
	B = 16'h30e3;
	ans = 16'h3519;
	#20
	A = 16'h37ba;
	B = 16'hb83c;
	ans = 16'ha9f0;
	#20
	A = 16'h2c96;
	B = 16'hb8cf;
	ans = 16'hb83c;
	#20
	A = 16'hb55d;
	B = 16'h3a4a;
	ans = 16'h3737;
	#20
	A = 16'hb8ce;
	B = 16'hb9e4;
	ans = 16'hbd59;
	#20
	A = 16'hb6a9;
	B = 16'hbb18;
	ans = 16'hbd36;
	#20
	A = 16'h3a32;
	B = 16'hb225;
	ans = 16'h38a9;
	#20
	A = 16'h383b;
	B = 16'hae99;
	ans = 16'h36d0;
	#20
	A = 16'ha9ef;
	B = 16'hb848;
	ans = 16'hb8a7;
	#20
	A = 16'h3a1d;
	B = 16'h396a;
	ans = 16'h3dc4;
	#20
	A = 16'h394b;
	B = 16'hb993;
	ans = 16'ha880;
	#20
	A = 16'ha78b;
	B = 16'hba68;
	ans = 16'hbaa4;
	#20
	A = 16'h38a7;
	B = 16'h2e8f;
	ans = 16'h3979;
	#20
	A = 16'h3b6d;
	B = 16'hb959;
	ans = 16'h3428;
	#20
	A = 16'h341e;
	B = 16'hb54b;
	ans = 16'hacb4;
	#20
	A = 16'hae31;
	B = 16'hbb9d;
	ans = 16'hbc32;
	#20
	A = 16'h35cf;
	B = 16'hb42d;
	ans = 16'h2e88;
	#20
	A = 16'h3516;
	B = 16'hb82b;
	ans = 16'hb280;
	#20
	A = 16'h3060;
	B = 16'h30aa;
	ans = 16'h3485;
	#20
	A = 16'h3327;
	B = 16'hb444;
	ans = 16'ha984;
	#20
	A = 16'hba8c;
	B = 16'h3845;
	ans = 16'hb48e;
	#20
	A = 16'hb430;
	B = 16'ha912;
	ans = 16'hb4d2;
	#20
	A = 16'haeae;
	B = 16'hb58c;
	ans = 16'hb738;
	#20
	A = 16'h3492;
	B = 16'h20e7;
	ans = 16'h34b9;
	#20
	A = 16'hbb70;
	B = 16'h2d4d;
	ans = 16'hbac6;
	#20
	A = 16'hb239;
	B = 16'h33a1;
	ans = 16'h29a0;
	#20
	A = 16'hb571;
	B = 16'hb95a;
	ans = 16'hbc09;
	#20
	A = 16'hb2ce;
	B = 16'hb61b;
	ans = 16'hb8c1;
	#20
	A = 16'ha06e;
	B = 16'h98b3;
	ans = 16'ha19b;
	#20
	A = 16'hb1c8;
	B = 16'h35be;
	ans = 16'h31b4;
	#20
	A = 16'hb949;
	B = 16'hb6eb;
	ans = 16'hbc5f;
	#20
	A = 16'hb4ba;
	B = 16'h3be7;
	ans = 16'h398a;
	#20
	A = 16'hb9e2;
	B = 16'h3b28;
	ans = 16'h3118;
	#20
	A = 16'hb1f7;
	B = 16'h3937;
	ans = 16'h3772;
	#20
	A = 16'h3670;
	B = 16'h3bb4;
	ans = 16'h3d76;
	#20
	A = 16'h3923;
	B = 16'hb367;
	ans = 16'h3692;
	#20
	A = 16'hacad;
	B = 16'h3336;
	ans = 16'h30e0;
	#20
	A = 16'hb740;
	B = 16'hb929;
	ans = 16'hbc64;
	#20
	A = 16'h351b;
	B = 16'hba3a;
	ans = 16'hb759;
	#20
	A = 16'ha19d;
	B = 16'h3860;
	ans = 16'h384a;
	#20
	A = 16'h9e76;
	B = 16'h3841;
	ans = 16'h3834;
	#20
	A = 16'h3675;
	B = 16'h3523;
	ans = 16'h39cc;
	#20
	A = 16'h3719;
	B = 16'h3a43;
	ans = 16'h3ce8;
	#20
	A = 16'hb8dd;
	B = 16'h396d;
	ans = 16'h2c80;
	#20
	A = 16'h2a32;
	B = 16'h393a;
	ans = 16'h399d;
	#20
	A = 16'h3a71;
	B = 16'hbb5f;
	ans = 16'haf70;
	#20
	A = 16'h34b9;
	B = 16'hb629;
	ans = 16'hadc0;
	#20
	A = 16'h3a91;
	B = 16'hb626;
	ans = 16'h36fc;
	#20
	A = 16'h2f01;
	B = 16'h2cf9;
	ans = 16'h31fd;
	#20
	A = 16'hb1c7;
	B = 16'h2da2;
	ans = 16'hadec;
	#20
	A = 16'hb8ba;
	B = 16'h323e;
	ans = 16'hb655;
	#20
	A = 16'hb926;
	B = 16'hb824;
	ans = 16'hbca5;
	#20
	A = 16'hbb9d;
	B = 16'hba6f;
	ans = 16'hbf06;
	#20
	A = 16'ha95d;
	B = 16'hbb88;
	ans = 16'hbbde;
	#20
	A = 16'hb818;
	B = 16'hb978;
	ans = 16'hbcc8;
	#20
	A = 16'hbb52;
	B = 16'h3459;
	ans = 16'hb926;
	#20
	A = 16'h3aca;
	B = 16'hb054;
	ans = 16'h39b5;
	#20
	A = 16'h3b21;
	B = 16'h33b6;
	ans = 16'h3c87;
	#20
	A = 16'h3853;
	B = 16'h36fd;
	ans = 16'h3bd2;
	#20
	A = 16'hb1b5;
	B = 16'hbbbf;
	ans = 16'hbc96;
	#20
	A = 16'hb667;
	B = 16'hbae6;
	ans = 16'hbd0d;
	#20
	A = 16'h35e6;
	B = 16'hb0b8;
	ans = 16'h3314;
	#20
	A = 16'h3795;
	B = 16'h3462;
	ans = 16'h39fc;
	#20
	A = 16'hb674;
	B = 16'hb81f;
	ans = 16'hbb59;
	#20
	A = 16'h2f86;
	B = 16'hab24;
	ans = 16'h2be8;
	#20
	A = 16'h30a7;
	B = 16'hb72f;
	ans = 16'hb4dc;
	#20
	A = 16'hb3d3;
	B = 16'h3830;
	ans = 16'h3476;
	#20
	A = 16'hbb44;
	B = 16'hb714;
	ans = 16'hbd67;
	#20
	A = 16'h3a68;
	B = 16'h36a3;
	ans = 16'h3cdd;
	#20
	A = 16'hb895;
	B = 16'h3a1a;
	ans = 16'h3214;
	#20
	A = 16'h3484;
	B = 16'h34ac;
	ans = 16'h3898;
	#20
	A = 16'h363d;
	B = 16'h3829;
	ans = 16'h3b48;
	#20
	A = 16'hb90c;
	B = 16'h3a07;
	ans = 16'h2fd8;
	#20
	A = 16'h3808;
	B = 16'hbb73;
	ans = 16'hb6d6;
	#20
	A = 16'had5d;
	B = 16'h3be7;
	ans = 16'h3b3b;
	#20
	A = 16'h3050;
	B = 16'hb9d8;
	ans = 16'hb8c4;
	#20
	A = 16'hba3c;
	B = 16'h34ec;
	ans = 16'hb78c;
	#20
	A = 16'hb86f;
	B = 16'hba25;
	ans = 16'hbd4a;
	#20
	A = 16'h3208;
	B = 16'hb0e8;
	ans = 16'h2880;
	#20
	A = 16'hb8cb;
	B = 16'h3ae1;
	ans = 16'h342c;
	#20
	A = 16'h313e;
	B = 16'h39e8;
	ans = 16'h3b38;
	#20
	A = 16'hb8ff;
	B = 16'hba62;
	ans = 16'hbdb0;
	#20
	A = 16'h3915;
	B = 16'hb9b1;
	ans = 16'hace0;
	#20
	A = 16'hb3d4;
	B = 16'hb73c;
	ans = 16'hb993;
	#20
	A = 16'h39e6;
	B = 16'h3b73;
	ans = 16'h3eac;
	#20
	A = 16'hb9a1;
	B = 16'ha1f1;
	ans = 16'hb9b9;
	#20
	A = 16'h34e0;
	B = 16'hb96e;
	ans = 16'hb5fc;
	#20
	A = 16'h382a;
	B = 16'h3b57;
	ans = 16'h3dc0;
	#20
	A = 16'h339a;
	B = 16'hbb64;
	ans = 16'hb97e;
	#20
	A = 16'h39a3;
	B = 16'h2e53;
	ans = 16'h3a6d;
	#20
	A = 16'hb713;
	B = 16'hbb19;
	ans = 16'hbd51;
	#20
	A = 16'hb35d;
	B = 16'hb62d;
	ans = 16'hb8ee;
	#20
	A = 16'hba70;
	B = 16'hb550;
	ans = 16'hbc8c;
	#20
	A = 16'hba08;
	B = 16'hb8dc;
	ans = 16'hbd72;
	#20
	A = 16'hbb89;
	B = 16'h3884;
	ans = 16'hb60a;
	#20
	A = 16'hae68;
	B = 16'hb603;
	ans = 16'hb79d;
	#20
	A = 16'hbbb8;
	B = 16'hb548;
	ans = 16'hbd2e;
	#20
	A = 16'h39a3;
	B = 16'h3958;
	ans = 16'h3d7e;
	#20
	A = 16'hb4d0;
	B = 16'ha9ad;
	ans = 16'hb586;
	#20
	A = 16'ha9ad;
	B = 16'hb04b;
	ans = 16'hb1b6;
	#20
	A = 16'hb947;
	B = 16'h2e3c;
	ans = 16'hb880;
	#20
	A = 16'h3445;
	B = 16'hac9c;
	ans = 16'h323c;
	#20
	A = 16'hb9f0;
	B = 16'hba1f;
	ans = 16'hbe08;
	#20
	A = 16'h3a01;
	B = 16'h3b04;
	ans = 16'h3e82;
	#20
	A = 16'h3491;
	B = 16'hac90;
	ans = 16'h32da;
	#20
	A = 16'h31f6;
	B = 16'hb814;
	ans = 16'hb52d;
	#20
	A = 16'hb31e;
	B = 16'h2fc8;
	ans = 16'hae74;
	#20
	A = 16'h39fd;
	B = 16'h3b20;
	ans = 16'h3e8e;
	#20
	A = 16'h397d;
	B = 16'h319b;
	ans = 16'h3ae4;
	#20
	A = 16'h306f;
	B = 16'hb668;
	ans = 16'hb430;
	#20
	A = 16'hb94e;
	B = 16'h2c3b;
	ans = 16'hb8c7;
	#20
	A = 16'h3ba0;
	B = 16'hb603;
	ans = 16'h389e;
	#20
	A = 16'h35d0;
	B = 16'h34ac;
	ans = 16'h393e;
	#20
	A = 16'h34dc;
	B = 16'ha4ae;
	ans = 16'h3491;
	#20
	A = 16'h330d;
	B = 16'hab49;
	ans = 16'h313b;
	#20
	A = 16'hb24f;
	B = 16'hbb82;
	ans = 16'hbc8b;
	#20
	A = 16'h309a;
	B = 16'hb9eb;
	ans = 16'hb8c4;
	#20
	A = 16'hb80f;
	B = 16'hb77b;
	ans = 16'hbbcc;
	#20
	A = 16'h33b0;
	B = 16'hadbd;
	ans = 16'h30d2;
	#20
	A = 16'h3545;
	B = 16'h39bf;
	ans = 16'h3c31;
	#20
	A = 16'h350f;
	B = 16'h39e7;
	ans = 16'h3c37;
	#20
	A = 16'h3918;
	B = 16'h3b43;
	ans = 16'h3e2e;
	#20
	A = 16'hb115;
	B = 16'h31bb;
	ans = 16'h2530;
	#20
	A = 16'hbb58;
	B = 16'h3a2f;
	ans = 16'hb0a4;
	#20
	A = 16'hbbd2;
	B = 16'hb075;
	ans = 16'hbc78;
	#20
	A = 16'h34d6;
	B = 16'h34ae;
	ans = 16'h38c2;
	#20
	A = 16'hb805;
	B = 16'hb4b8;
	ans = 16'hba61;
	#20
	A = 16'ha66a;
	B = 16'hba72;
	ans = 16'hbaa5;
	#20
	A = 16'hb794;
	B = 16'h2e29;
	ans = 16'hb60a;
	#20
	A = 16'h333a;
	B = 16'h30dd;
	ans = 16'h360c;
	#20
	A = 16'h31b1;
	B = 16'hb64a;
	ans = 16'hb2e3;
	#20
	A = 16'h3572;
	B = 16'ha803;
	ans = 16'h34f2;
	#20
	A = 16'h366b;
	B = 16'h3a47;
	ans = 16'h3cbe;
	#20
	A = 16'hb8cb;
	B = 16'hb3cd;
	ans = 16'hbabe;
	#20
	A = 16'hb3af;
	B = 16'h3698;
	ans = 16'h3181;
	#20
	A = 16'h33d4;
	B = 16'hb720;
	ans = 16'hb26c;
	#20
	A = 16'hbab2;
	B = 16'hac38;
	ans = 16'hbb39;
	#20
	A = 16'h3abc;
	B = 16'h35b0;
	ans = 16'h3cca;
	#20
	A = 16'h2cc1;
	B = 16'h3a0b;
	ans = 16'h3aa3;
	#20
	A = 16'hb78e;
	B = 16'hb455;
	ans = 16'hb9f2;
	#20
	A = 16'hbac8;
	B = 16'hb91a;
	ans = 16'hbdf1;
	#20
	A = 16'hbade;
	B = 16'hb622;
	ans = 16'hbcf8;
	#20
	A = 16'had6d;
	B = 16'hbb3a;
	ans = 16'hbbe8;
	#20
	A = 16'h3877;
	B = 16'hb96b;
	ans = 16'hafa0;
	#20
	A = 16'hb0df;
	B = 16'hb930;
	ans = 16'hba68;
	#20
	A = 16'h37e6;
	B = 16'h27cc;
	ans = 16'h3831;
	#20
	A = 16'hb8d7;
	B = 16'hb1b4;
	ans = 16'hba44;
	#20
	A = 16'h34d6;
	B = 16'h346b;
	ans = 16'h38a0;
	#20
	A = 16'hba34;
	B = 16'h39e2;
	ans = 16'ha920;
	#20
	A = 16'hb86e;
	B = 16'h327b;
	ans = 16'hb59e;
	#20
	A = 16'h398e;
	B = 16'hb9f1;
	ans = 16'haa30;
	#20
	A = 16'hbbe4;
	B = 16'hba06;
	ans = 16'hbef5;
	#20
	A = 16'hbae2;
	B = 16'hb795;
	ans = 16'hbd56;
	#20
	A = 16'hb83a;
	B = 16'h2520;
	ans = 16'hb811;
	#20
	A = 16'hac00;
	B = 16'hba36;
	ans = 16'hbab6;
	#20
	A = 16'hb592;
	B = 16'hba36;
	ans = 16'hbc80;
	#20
	A = 16'hbb88;
	B = 16'hb408;
	ans = 16'hbcc6;
	#20
	A = 16'hb019;
	B = 16'h350e;
	ans = 16'h3203;
	#20
	A = 16'h3815;
	B = 16'h35e1;
	ans = 16'h3b06;
	#20
	A = 16'h38aa;
	B = 16'hba08;
	ans = 16'hb178;
	#20
	A = 16'h3a14;
	B = 16'hb8cf;
	ans = 16'h3114;
	#20
	A = 16'hba60;
	B = 16'hb0a7;
	ans = 16'hbb8a;
	#20
	A = 16'h35cf;
	B = 16'hb718;
	ans = 16'had24;
	#20
	A = 16'hb996;
	B = 16'h3a63;
	ans = 16'h2e68;
	#20
	A = 16'h3af7;
	B = 16'hb581;
	ans = 16'h3836;
	#20
	A = 16'h308b;
	B = 16'hb975;
	ans = 16'hb852;
	#20
	A = 16'h39ed;
	B = 16'h3761;
	ans = 16'h3ccf;
	#20
	A = 16'h27b3;
	B = 16'hbabd;
	ans = 16'hba7f;
	#20
	A = 16'h340a;
	B = 16'h3499;
	ans = 16'h3852;
	#20
	A = 16'h3095;
	B = 16'hb69f;
	ans = 16'hb454;
	#20
	A = 16'hb886;
	B = 16'hafc5;
	ans = 16'hb97f;
	#20
	A = 16'hb92f;
	B = 16'hbb23;
	ans = 16'hbe29;
	#20
	A = 16'hb864;
	B = 16'ha3f3;
	ans = 16'hb884;
	#20
	A = 16'h3584;
	B = 16'hb749;
	ans = 16'haf14;
	#20
	A = 16'h3450;
	B = 16'h2f07;
	ans = 16'h3612;
	#20
	A = 16'h3699;
	B = 16'h3572;
	ans = 16'h3a06;
	#20
	A = 16'hb64f;
	B = 16'haeeb;
	ans = 16'hb805;
	#20
	A = 16'h3813;
	B = 16'haa07;
	ans = 16'h3765;
	#20
	A = 16'h3887;
	B = 16'h3b62;
	ans = 16'h3df4;
	#20
	A = 16'h38db;
	B = 16'h384c;
	ans = 16'h3c94;
	#20
	A = 16'h34aa;
	B = 16'h3bb9;
	ans = 16'h3d07;
	#20
	A = 16'h30f6;
	B = 16'hbadd;
	ans = 16'hb9a0;
	#20
	A = 16'h35f2;
	B = 16'h3a42;
	ans = 16'h3c9e;
	#20
	A = 16'h3b1e;
	B = 16'hbaa5;
	ans = 16'h2b90;
	#20
	A = 16'h394a;
	B = 16'h2d7b;
	ans = 16'h39f9;
	#20
	A = 16'hb84f;
	B = 16'hb7cb;
	ans = 16'hbc1a;
	#20
	A = 16'hb834;
	B = 16'h3841;
	ans = 16'h1e80;
	#20
	A = 16'h3780;
	B = 16'hb1c7;
	ans = 16'h349c;
	#20
	A = 16'h32c2;
	B = 16'h3836;
	ans = 16'h39e6;
	#20
	A = 16'had0b;
	B = 16'h399b;
	ans = 16'h38fa;
	#20
	A = 16'ha9b5;
	B = 16'h3835;
	ans = 16'h37b3;
	#20
	A = 16'h3952;
	B = 16'hb1d2;
	ans = 16'h37bb;
	#20
	A = 16'hba39;
	B = 16'h3585;
	ans = 16'hb6ed;
	#20
	A = 16'h9d58;
	B = 16'hb9cc;
	ans = 16'hb9d7;
	#20
	A = 16'hb927;
	B = 16'hb802;
	ans = 16'hbc94;
	#20
	A = 16'h3a4a;
	B = 16'h382c;
	ans = 16'h3d3b;
	#20
	A = 16'hb0b8;
	B = 16'hbba6;
	ans = 16'hbc6a;
	#20
	A = 16'h3335;
	B = 16'h30e9;
	ans = 16'h360f;
	#20
	A = 16'h3442;
	B = 16'hb276;
	ans = 16'h2c1c;
	#20
	A = 16'had8a;
	B = 16'hb523;
	ans = 16'hb686;
	#20
	A = 16'h3af7;
	B = 16'h352e;
	ans = 16'h3cc7;
	#20
	A = 16'h332c;
	B = 16'h3944;
	ans = 16'h3b0f;
	#20
	A = 16'h3a8d;
	B = 16'hb309;
	ans = 16'h38cb;
	#20
	A = 16'hba28;
	B = 16'hb973;
	ans = 16'hbdce;
	#20
	A = 16'h3007;
	B = 16'h36f7;
	ans = 16'h387d;
	#20
	A = 16'h246d;
	B = 16'hb22a;
	ans = 16'hb19c;
	#20
	A = 16'hba1e;
	B = 16'hb0b2;
	ans = 16'hbb4a;
	#20
	A = 16'h3002;
	B = 16'h3493;
	ans = 16'h3694;
	#20
	A = 16'hba12;
	B = 16'hb945;
	ans = 16'hbdac;
	#20
	A = 16'hb179;
	B = 16'hbb29;
	ans = 16'hbc44;
	#20
	A = 16'h36fb;
	B = 16'h396a;
	ans = 16'h3c74;
	#20
	A = 16'hbb1d;
	B = 16'h3352;
	ans = 16'hb948;
	#20
	A = 16'hb752;
	B = 16'hb2b2;
	ans = 16'hb956;
	#20
	A = 16'hb8b1;
	B = 16'hb472;
	ans = 16'hbaea;
	#20
	A = 16'h3b4f;
	B = 16'hb70e;
	ans = 16'h3790;
	#20
	A = 16'hbb3e;
	B = 16'h29e2;
	ans = 16'hbae0;
	#20
	A = 16'h3008;
	B = 16'hb9d4;
	ans = 16'hb8d2;
	#20
	A = 16'hb002;
	B = 16'h273a;
	ans = 16'hae36;
	#20
	A = 16'hba47;
	B = 16'hb8c0;
	ans = 16'hbd84;
	#20
	A = 16'h33e8;
	B = 16'hbb6b;
	ans = 16'hb971;
	#20
	A = 16'h3915;
	B = 16'h3a3a;
	ans = 16'h3da8;
	#20
	A = 16'h3651;
	B = 16'hb535;
	ans = 16'h2c70;
	#20
	A = 16'ha964;
	B = 16'h3b60;
	ans = 16'h3b0a;
	#20
	A = 16'hba36;
	B = 16'h384d;
	ans = 16'hb3a4;
	#20
	A = 16'h35bc;
	B = 16'h390a;
	ans = 16'h3be8;
	#20
	A = 16'h3548;
	B = 16'h2e0c;
	ans = 16'h36cb;
	#20
	A = 16'h392c;
	B = 16'h39dc;
	ans = 16'h3d84;
	#20
	A = 16'hb825;
	B = 16'hba37;
	ans = 16'hbd2e;
	#20
	A = 16'h2c0d;
	B = 16'h3635;
	ans = 16'h3738;
	#20
	A = 16'h368e;
	B = 16'hb82d;
	ans = 16'haf30;
	#20
	A = 16'hadca;
	B = 16'h3aaa;
	ans = 16'h39f1;
	#20
	A = 16'h382a;
	B = 16'hb97f;
	ans = 16'hb154;
	#20
	A = 16'hbb4f;
	B = 16'h3b47;
	ans = 16'h9c00;
	#20
	A = 16'h3441;
	B = 16'h395d;
	ans = 16'h3b7e;
	#20
	A = 16'hb5bd;
	B = 16'hbb67;
	ans = 16'hbd23;
	#20
	A = 16'h39d6;
	B = 16'h2ea0;
	ans = 16'h3aaa;
	#20
	A = 16'h340e;
	B = 16'h3615;
	ans = 16'h3912;
	#20
	A = 16'had97;
	B = 16'hb8bb;
	ans = 16'hb96e;
	#20
	A = 16'h3b9e;
	B = 16'h391c;
	ans = 16'h3e5d;
	#20
	A = 16'hb8f8;
	B = 16'h30bd;
	ans = 16'hb792;
	#20
	A = 16'h3af6;
	B = 16'hb80a;
	ans = 16'h35d8;
	#20
	A = 16'hbb81;
	B = 16'hbb63;
	ans = 16'hbf72;
	#20
	A = 16'hbabe;
	B = 16'hb9bb;
	ans = 16'hbe3c;
	#20
	A = 16'h384e;
	B = 16'h3a12;
	ans = 16'h3d30;
	#20
	A = 16'hb4ff;
	B = 16'hb2cf;
	ans = 16'hb833;
	#20
	A = 16'h2ec8;
	B = 16'h30da;
	ans = 16'h341f;
	#20
	A = 16'h39fd;
	B = 16'hbb85;
	ans = 16'hb220;
	#20
	A = 16'hb878;
	B = 16'h38e4;
	ans = 16'h2ac0;
	#20
	A = 16'hbb74;
	B = 16'h32e1;
	ans = 16'hb9bc;
	#20
	A = 16'h37dd;
	B = 16'ha39e;
	ans = 16'h37a0;
	#20
	A = 16'hb04e;
	B = 16'h38b4;
	ans = 16'h3741;
	#20
	A = 16'hbbd2;
	B = 16'h3ba3;
	ans = 16'ha5e0;
	#20
	A = 16'hb1b9;
	B = 16'h3821;
	ans = 16'h3566;
	#20
	A = 16'hbbd3;
	B = 16'h3222;
	ans = 16'hba4a;
	#20
	A = 16'h3a60;
	B = 16'hba1b;
	ans = 16'h2850;
	#20
	A = 16'h3965;
	B = 16'hb16f;
	ans = 16'h3809;
	#20
	A = 16'hb50b;
	B = 16'hba87;
	ans = 16'hbc86;
	#20
	A = 16'hbae1;
	B = 16'h34be;
	ans = 16'hb882;
	#20
	A = 16'h394b;
	B = 16'hb44e;
	ans = 16'h3648;
	#20
	A = 16'hbb47;
	B = 16'h3be6;
	ans = 16'h2cf8;
	#20
	A = 16'h37ee;
	B = 16'hb59c;
	ans = 16'h30a4;
	#20
	A = 16'ha841;
	B = 16'h3b9b;
	ans = 16'h3b57;
	#20
	A = 16'h3576;
	B = 16'h3a73;
	ans = 16'h3c97;
	#20
	A = 16'h3ab6;
	B = 16'h3a14;
	ans = 16'h3e65;
	#20
	A = 16'h3878;
	B = 16'h2fb6;
	ans = 16'h396f;
	#20
	A = 16'hb902;
	B = 16'h3900;
	ans = 16'h9400;
	#20
	A = 16'h38fc;
	B = 16'hbafe;
	ans = 16'hb404;
	#20
	A = 16'h36e9;
	B = 16'hb621;
	ans = 16'h2a40;
	#20
	A = 16'h3837;
	B = 16'h3026;
	ans = 16'h3940;
	#20
	A = 16'hb9b9;
	B = 16'h3b16;
	ans = 16'h3174;
	#20
	A = 16'hbb34;
	B = 16'hb8f0;
	ans = 16'hbe12;
	#20
	A = 16'hb850;
	B = 16'hb4cd;
	ans = 16'hbab6;
	#20
	A = 16'h320e;
	B = 16'h3bdf;
	ans = 16'h3cb1;
	#20
	A = 16'h1fce;
	B = 16'h3805;
	ans = 16'h3815;
	#20
	A = 16'h3518;
	B = 16'hbabb;
	ans = 16'hb82f;
	#20
	A = 16'hb36a;
	B = 16'hb88b;
	ans = 16'hba66;
	#20
	A = 16'hb2a8;
	B = 16'ha55d;
	ans = 16'hb354;
	#20
	A = 16'hb964;
	B = 16'hb957;
	ans = 16'hbd5e;
	#20
	A = 16'hb7f0;
	B = 16'h23a5;
	ans = 16'hb7b3;
	#20
	A = 16'hb537;
	B = 16'hb293;
	ans = 16'hb840;
	#20
	A = 16'hbb20;
	B = 16'h3143;
	ans = 16'hb9cf;
	#20
	A = 16'h3b49;
	B = 16'h348d;
	ans = 16'h3cc8;
	#20
	A = 16'h334f;
	B = 16'h224d;
	ans = 16'h33b4;
	#20
	A = 16'hb8eb;
	B = 16'h1d2c;
	ans = 16'hb8e1;
	#20
	A = 16'hadeb;
	B = 16'h384e;
	ans = 16'h3721;
	#20
	A = 16'hba3f;
	B = 16'hb964;
	ans = 16'hbdd2;
	#20
	A = 16'h3268;
	B = 16'had79;
	ans = 16'h2f57;
	#20
	A = 16'h36bf;
	B = 16'h343f;
	ans = 16'h397f;
	#20
	A = 16'hb26b;
	B = 16'hb9f5;
	ans = 16'hbb90;
	#20
	A = 16'hba65;
	B = 16'h39e6;
	ans = 16'habf0;
	#20
	A = 16'hb38e;
	B = 16'hbadf;
	ans = 16'hbc61;
	#20
	A = 16'h3b27;
	B = 16'h3b96;
	ans = 16'h3f5e;
	#20
	A = 16'hb3e3;
	B = 16'hbb87;
	ans = 16'hbcc0;
	#20
	A = 16'h3475;
	B = 16'hbba3;
	ans = 16'hb968;
	#20
	A = 16'hb9e9;
	B = 16'hba51;
	ans = 16'hbe1d;
	#20
	A = 16'hb4fe;
	B = 16'h37ed;
	ans = 16'h31de;
	#20
	A = 16'h3248;
	B = 16'h2569;
	ans = 16'h32f5;
	#20
	A = 16'hb974;
	B = 16'h3889;
	ans = 16'haf58;
	#20
	A = 16'hbb03;
	B = 16'hbbb7;
	ans = 16'hbf5d;
	#20
	A = 16'h3a38;
	B = 16'hb382;
	ans = 16'h3858;
	#20
	A = 16'h3a4c;
	B = 16'hb8ad;
	ans = 16'h327c;
	#20
	A = 16'h2dca;
	B = 16'h38c2;
	ans = 16'h397b;
	#20
	A = 16'hb982;
	B = 16'h30d0;
	ans = 16'hb84e;
	#20
	A = 16'h30a9;
	B = 16'hba89;
	ans = 16'hb95f;
	#20
	A = 16'h3ade;
	B = 16'h368a;
	ans = 16'h3d12;
	#20
	A = 16'h2ecc;
	B = 16'h3512;
	ans = 16'h36c5;
	#20
	A = 16'h2f3d;
	B = 16'hb501;
	ans = 16'hb264;
	#20
	A = 16'hb588;
	B = 16'hab40;
	ans = 16'hb670;
	#20
	A = 16'hb92f;
	B = 16'hb270;
	ans = 16'hbacb;
	#20
	A = 16'h300f;
	B = 16'had16;
	ans = 16'h2a10;
	#20
	A = 16'h3ba1;
	B = 16'h375a;
	ans = 16'h3da7;
	#20
	A = 16'hbbb4;
	B = 16'h3609;
	ans = 16'hb8b0;
	#20
	A = 16'hb8de;
	B = 16'h25ba;
	ans = 16'hb8b0;
	#20
	A = 16'h2162;
	B = 16'hb638;
	ans = 16'hb60d;
	#20
	A = 16'h354b;
	B = 16'h3b14;
	ans = 16'h3cdd;
	#20
	A = 16'h333d;
	B = 16'h3a5f;
	ans = 16'h3c17;
	#20
	A = 16'hb939;
	B = 16'h3522;
	ans = 16'hb550;
	#20
	A = 16'h33fa;
	B = 16'h3450;
	ans = 16'h3826;
	#20
	A = 16'hb74e;
	B = 16'h374e;
	ans = 16'h0;
	#20
	A = 16'hb754;
	B = 16'ha846;
	ans = 16'hb7dd;
	#20
	A = 16'h3a78;
	B = 16'h3bbb;
	ans = 16'h3f1a;
	#20
	A = 16'h39c6;
	B = 16'haa10;
	ans = 16'h3965;
	#20
	A = 16'h38ff;
	B = 16'h38c3;
	ans = 16'h3ce1;
	#20
	A = 16'hb880;
	B = 16'h3b01;
	ans = 16'h3502;
	#20
	A = 16'hba71;
	B = 16'h38a9;
	ans = 16'hb320;
	#20
	A = 16'h32e8;
	B = 16'hb88a;
	ans = 16'hb5a0;
	#20
	A = 16'hb374;
	B = 16'h3ae2;
	ans = 16'h3905;
	#20
	A = 16'hbb5b;
	B = 16'had61;
	ans = 16'hbc04;
	#20
	A = 16'hb616;
	B = 16'h3bc9;
	ans = 16'h38be;
	#20
	A = 16'h39b9;
	B = 16'hba73;
	ans = 16'hadd0;
	#20
	A = 16'h3afb;
	B = 16'h3b22;
	ans = 16'h3f0e;
	#20
	A = 16'hb77d;
	B = 16'h3b19;
	ans = 16'h36b5;
	#20
	A = 16'h34be;
	B = 16'h3950;
	ans = 16'h3baf;
	#20
	A = 16'h3901;
	B = 16'hb454;
	ans = 16'h35ae;
	#20
	A = 16'h305b;
	B = 16'hb658;
	ans = 16'hb42a;
	#20
	A = 16'h36c0;
	B = 16'h333e;
	ans = 16'h3930;
	#20
	A = 16'h3af3;
	B = 16'h2928;
	ans = 16'h3b46;
	#20
	A = 16'hb919;
	B = 16'hb49b;
	ans = 16'hbb66;
	#20
	A = 16'h3b25;
	B = 16'hb9f0;
	ans = 16'h30d4;
	#20
	A = 16'hbb0c;
	B = 16'hb189;
	ans = 16'hbc37;
	#20
	A = 16'hb5bc;
	B = 16'hb53b;
	ans = 16'hb97c;
	#20
	A = 16'h3628;
	B = 16'hb242;
	ans = 16'h320e;
	#20
	A = 16'hb596;
	B = 16'h33fd;
	ans = 16'hae5e;
	#20
	A = 16'hb9da;
	B = 16'h35a2;
	ans = 16'hb612;
	#20
	A = 16'h3bb9;
	B = 16'h2c39;
	ans = 16'h3c20;
	#20
	A = 16'hb872;
	B = 16'hb309;
	ans = 16'hba34;
	#20
	A = 16'h35d4;
	B = 16'hb75c;
	ans = 16'hae20;
	#20
	A = 16'hb996;
	B = 16'hb979;
	ans = 16'hbd88;
	#20
	A = 16'hb9f3;
	B = 16'hba31;
	ans = 16'hbe12;
	#20
	A = 16'hba67;
	B = 16'hbad0;
	ans = 16'hbe9c;
	#20
	A = 16'had6f;
	B = 16'h3665;
	ans = 16'h3509;
	#20
	A = 16'hb41d;
	B = 16'hb359;
	ans = 16'hb7ca;
	#20
	A = 16'h3929;
	B = 16'h3a0c;
	ans = 16'h3d9a;
	#20
	A = 16'hba7e;
	B = 16'hb62e;
	ans = 16'hbcca;
	#20
	A = 16'hb424;
	B = 16'ha548;
	ans = 16'hb478;
	#20
	A = 16'hb1da;
	B = 16'h3b09;
	ans = 16'h3992;
	#20
	A = 16'h2901;
	B = 16'h39af;
	ans = 16'h39ff;
	#20
	A = 16'hb680;
	B = 16'hb35f;
	ans = 16'hb918;
	#20
	A = 16'hb908;
	B = 16'hbb31;
	ans = 16'hbe1c;
	#20
	A = 16'h39a5;
	B = 16'h2be5;
	ans = 16'h3a23;
	#20
	A = 16'h3a0c;
	B = 16'h3553;
	ans = 16'h3c5b;
	#20
	A = 16'hb75a;
	B = 16'hb8a9;
	ans = 16'hbc2b;
	#20
	A = 16'h3884;
	B = 16'hba9a;
	ans = 16'hb42c;
	#20
	A = 16'h39cd;
	B = 16'h3be9;
	ans = 16'h3edb;
	#20
	A = 16'hb6f5;
	B = 16'h361c;
	ans = 16'haac8;
	#20
	A = 16'hb82e;
	B = 16'h3a2f;
	ans = 16'h3402;
	#20
	A = 16'h3bd3;
	B = 16'hb773;
	ans = 16'h381a;
	#20
	A = 16'hb992;
	B = 16'hb4a3;
	ans = 16'hbbe4;
	#20
	A = 16'h36f1;
	B = 16'hba56;
	ans = 16'hb5bb;
	#20
	A = 16'had27;
	B = 16'h356a;
	ans = 16'h3420;
	#20
	A = 16'h31b4;
	B = 16'h3601;
	ans = 16'h386e;
	#20
	A = 16'h398f;
	B = 16'hb089;
	ans = 16'h386d;
	#20
	A = 16'hbbbf;
	B = 16'h306a;
	ans = 16'hbaa4;
	#20
	A = 16'h3a95;
	B = 16'hb4a6;
	ans = 16'h3842;
	#20
	A = 16'h380e;
	B = 16'h37a7;
	ans = 16'h3be2;
	#20
	A = 16'hba90;
	B = 16'hb43c;
	ans = 16'hbc57;
	#20
	A = 16'hb7ea;
	B = 16'h36fd;
	ans = 16'hab68;
	#20
	A = 16'h3535;
	B = 16'h32aa;
	ans = 16'h3845;
	#20
	A = 16'hb7ce;
	B = 16'h3609;
	ans = 16'haf14;
	#20
	A = 16'hb7a4;
	B = 16'h38a4;
	ans = 16'h2e90;
	#20
	A = 16'h38bd;
	B = 16'hb2b3;
	ans = 16'h3620;
	#20
	A = 16'h3a5f;
	B = 16'h36dc;
	ans = 16'h3ce6;
	#20
	A = 16'hb2de;
	B = 16'hb473;
	ans = 16'hb7e2;
	#20
	A = 16'haf9e;
	B = 16'h3ac3;
	ans = 16'h39cf;
	#20
	A = 16'h361e;
	B = 16'h351b;
	ans = 16'h399c;
	#20
	A = 16'hb8d1;
	B = 16'h3ad2;
	ans = 16'h3402;
	#20
	A = 16'hb86b;
	B = 16'h3500;
	ans = 16'hb3ac;
	#20
	A = 16'hb501;
	B = 16'h35c4;
	ans = 16'h2a18;
	#20
	A = 16'hb7b4;
	B = 16'h39a1;
	ans = 16'h331c;
	#20
	A = 16'hb8cb;
	B = 16'h1aba;
	ans = 16'hb8c4;
	#20
	A = 16'hbbde;
	B = 16'hb0ea;
	ans = 16'hbc8c;
	#20
	A = 16'hb843;
	B = 16'h3aa5;
	ans = 16'h34c4;
	#20
	A = 16'h38a2;
	B = 16'hb8c2;
	ans = 16'ha400;
	#20
	A = 16'h3a29;
	B = 16'hb826;
	ans = 16'h3406;
	#20
	A = 16'ha812;
	B = 16'h3099;
	ans = 16'h2f29;
	#20
	A = 16'h3404;
	B = 16'haf7c;
	ans = 16'h304a;
	#20
	A = 16'h3835;
	B = 16'hb31f;
	ans = 16'h34da;
	#20
	A = 16'h3974;
	B = 16'h3394;
	ans = 16'h3b59;
	#20
	A = 16'h368f;
	B = 16'hb868;
	ans = 16'hb082;
	#20
	A = 16'hb7e4;
	B = 16'hb5b9;
	ans = 16'hbace;
	#20
	A = 16'hae3f;
	B = 16'h3b27;
	ans = 16'h3a5f;
	#20
	A = 16'hba76;
	B = 16'hbb3c;
	ans = 16'hbed9;
	#20
	A = 16'hae8e;
	B = 16'hb422;
	ans = 16'hb5c6;
	#20
	A = 16'hb6a1;
	B = 16'hb188;
	ans = 16'hb8b2;
	#20
	A = 16'hba0a;
	B = 16'h3127;
	ans = 16'hb8c0;
	#20
	A = 16'h3859;
	B = 16'ha0df;
	ans = 16'h3846;
	#20
	A = 16'hb766;
	B = 16'ha4e8;
	ans = 16'hb7b4;
	#20
	A = 16'hb2ac;
	B = 16'hb0e6;
	ans = 16'hb5c9;
	#20
	A = 16'hbb33;
	B = 16'hbbc0;
	ans = 16'hbf7a;
	#20
	A = 16'h3b51;
	B = 16'ha308;
	ans = 16'h3b35;
	#20
	A = 16'hb70e;
	B = 16'hb8ab;
	ans = 16'hbc19;
	#20
	A = 16'hb816;
	B = 16'hb3f8;
	ans = 16'hba14;
	#20
	A = 16'h294b;
	B = 16'h397a;
	ans = 16'h39cf;
	#20
	A = 16'hb952;
	B = 16'hab91;
	ans = 16'hb9cb;
	#20
	A = 16'haa24;
	B = 16'h3821;
	ans = 16'h377e;
	#20
	A = 16'hb16c;
	B = 16'hb4d8;
	ans = 16'hb78e;
	#20
	A = 16'hb0c9;
	B = 16'h372a;
	ans = 16'h34c6;
	#20
	A = 16'hb2a5;
	B = 16'h378f;
	ans = 16'h343c;
	#20
	A = 16'hb33d;
	B = 16'h38a3;
	ans = 16'h35a8;
	#20
	A = 16'h39f5;
	B = 16'h396d;
	ans = 16'h3db1;
	#20
	A = 16'h37bc;
	B = 16'h3a1f;
	ans = 16'h3cfe;
	#20
	A = 16'hb6ff;
	B = 16'haf92;
	ans = 16'hb872;
	#20
	A = 16'hbb42;
	B = 16'hb59a;
	ans = 16'hbd08;
	#20
	A = 16'h319f;
	B = 16'hb7b2;
	ans = 16'hb4e2;
	#20
	A = 16'ha844;
	B = 16'h38cd;
	ans = 16'h3889;
	#20
	A = 16'hb968;
	B = 16'h37fb;
	ans = 16'hb1aa;
	#20
	A = 16'hb7ab;
	B = 16'hb882;
	ans = 16'hbc2c;
	#20
	A = 16'h382c;
	B = 16'h21bf;
	ans = 16'h3843;
	#20
	A = 16'hb88b;
	B = 16'haeb3;
	ans = 16'hb961;
	#20
	A = 16'hae14;
	B = 16'hbb9c;
	ans = 16'hbc2f;
	#20
	A = 16'hbb23;
	B = 16'hbac1;
	ans = 16'hbef2;
	#20
	A = 16'hba0f;
	B = 16'h3822;
	ans = 16'hb3b4;
	#20
	A = 16'hadc3;
	B = 16'hba79;
	ans = 16'hbb31;
	#20
	A = 16'h3b90;
	B = 16'h3a42;
	ans = 16'h3ee9;
	#20
	A = 16'hb6fa;
	B = 16'hb509;
	ans = 16'hba02;
	#20
	A = 16'hbbe6;
	B = 16'hba32;
	ans = 16'hbf0c;
	#20
	A = 16'hb102;
	B = 16'ha7cd;
	ans = 16'hb1fc;
	#20
	A = 16'h309a;
	B = 16'hb266;
	ans = 16'hab30;
	#20
	A = 16'hb844;
	B = 16'h3885;
	ans = 16'h2810;
	#20
	A = 16'h2785;
	B = 16'h34ff;
	ans = 16'h3577;
	#20
	A = 16'hbb8b;
	B = 16'hb4e5;
	ans = 16'hbcff;
	#20
	A = 16'h3a6c;
	B = 16'h3b17;
	ans = 16'h3ec2;
	#20
	A = 16'h3a24;
	B = 16'h3774;
	ans = 16'h3cef;
	#20
	A = 16'hbaf1;
	B = 16'h3130;
	ans = 16'hb9a5;
	#20
	A = 16'h3351;
	B = 16'h2c8b;
	ans = 16'h34cb;
	#20
	A = 16'hb060;
	B = 16'ha5b1;
	ans = 16'hb116;
	#20
	A = 16'h378d;
	B = 16'h2b6f;
	ans = 16'h383d;
	#20
	A = 16'h3065;
	B = 16'hb74b;
	ans = 16'hb518;
	#20
	A = 16'h355a;
	B = 16'h3af8;
	ans = 16'h3cd2;
	#20
	A = 16'hae97;
	B = 16'h3b03;
	ans = 16'h3a30;
	#20
	A = 16'h3834;
	B = 16'h3072;
	ans = 16'h3950;
	#20
	A = 16'hbaba;
	B = 16'hb725;
	ans = 16'hbd26;
	#20
	A = 16'hb906;
	B = 16'hb81a;
	ans = 16'hbc90;
	#20
	A = 16'hb8b2;
	B = 16'hb7d6;
	ans = 16'hbc4e;
	#20
	A = 16'hb893;
	B = 16'h32df;
	ans = 16'hb5b6;
	#20
	A = 16'h3419;
	B = 16'h3967;
	ans = 16'h3b74;
	#20
	A = 16'h384b;
	B = 16'h3862;
	ans = 16'h3c56;
	#20
	A = 16'hac18;
	B = 16'h377c;
	ans = 16'h3676;
	#20
	A = 16'h32b9;
	B = 16'hbaf0;
	ans = 16'hb942;
	#20
	A = 16'hb706;
	B = 16'h2aa1;
	ans = 16'hb632;
	#20
	A = 16'h3b61;
	B = 16'h369f;
	ans = 16'h3d58;
	#20
	A = 16'hb870;
	B = 16'hb924;
	ans = 16'hbcca;
	#20
	A = 16'hb758;
	B = 16'hb742;
	ans = 16'hbb4d;
	#20
	A = 16'h3aa3;
	B = 16'hb3f7;
	ans = 16'h38a5;
	#20
	A = 16'h39e9;
	B = 16'hbb01;
	ans = 16'hb060;
	#20
	A = 16'hba97;
	B = 16'h3ad4;
	ans = 16'h27a0;
	#20
	A = 16'h341d;
	B = 16'h3842;
	ans = 16'h3a50;
	#20
	A = 16'hbb95;
	B = 16'hbbfa;
	ans = 16'hbfc8;
	#20
	A = 16'h2cde;
	B = 16'hbbb7;
	ans = 16'hbb1b;
	#20
	A = 16'hb907;
	B = 16'h39c5;
	ans = 16'h2df0;
	#20
	A = 16'h3b90;
	B = 16'h384c;
	ans = 16'h3dee;
	#20
	A = 16'h39ee;
	B = 16'hbb12;
	ans = 16'hb090;
	#20
	A = 16'hb8f0;
	B = 16'h3ae1;
	ans = 16'h33c4;
	#20
	A = 16'h3381;
	B = 16'hb53c;
	ans = 16'hadee;
	#20
	A = 16'hb189;
	B = 16'h381e;
	ans = 16'h3578;
	#20
	A = 16'h355c;
	B = 16'hbb8a;
	ans = 16'hb8dc;
	#20
	A = 16'hb850;
	B = 16'h39fd;
	ans = 16'h32b4;
	#20
	A = 16'hb37f;
	B = 16'hb747;
	ans = 16'hb983;
	#20
	A = 16'h2dd0;
	B = 16'h3880;
	ans = 16'h393a;
	#20
	A = 16'hba87;
	B = 16'h39de;
	ans = 16'had48;
	#20
	A = 16'hb77e;
	B = 16'hb34f;
	ans = 16'hb993;
	#20
	A = 16'hb65a;
	B = 16'ha5e7;
	ans = 16'hb6b8;
	#20
	A = 16'h2d17;
	B = 16'hb307;
	ans = 16'hb07c;
	#20
	A = 16'hb9eb;
	B = 16'h3878;
	ans = 16'hb1cc;
	#20
	A = 16'ha954;
	B = 16'ha843;
	ans = 16'haccc;
	#20
	A = 16'hb35f;
	B = 16'h3acc;
	ans = 16'h38f4;
	#20
	A = 16'h31ea;
	B = 16'hba94;
	ans = 16'hb91a;
	#20
	A = 16'h2c7a;
	B = 16'hbb9a;
	ans = 16'hbb0b;
	#20
	A = 16'h396b;
	B = 16'h2d91;
	ans = 16'h3a1d;
	#20
	A = 16'h3a72;
	B = 16'hab94;
	ans = 16'h39f9;
	#20
	A = 16'h31dd;
	B = 16'h3acb;
	ans = 16'h3c21;
	#20
	A = 16'h3aed;
	B = 16'h37f3;
	ans = 16'h3d73;
	#20
	A = 16'hb4cb;
	B = 16'h33e6;
	ans = 16'haac0;
	#20
	A = 16'h38d3;
	B = 16'h3a41;
	ans = 16'h3d8a;
	#20
	A = 16'hb5cf;
	B = 16'h3a62;
	ans = 16'h36f5;
	#20
	A = 16'h3a4b;
	B = 16'hba6d;
	ans = 16'ha440;
	#20
	A = 16'h36db;
	B = 16'hb84c;
	ans = 16'haef4;
	#20
	A = 16'hbb4d;
	B = 16'h3586;
	ans = 16'hb88a;
	#20
	A = 16'h3044;
	B = 16'h3596;
	ans = 16'h37b8;
	#20
	A = 16'h3401;
	B = 16'h3a96;
	ans = 16'h3c4b;
	#20
	A = 16'hb882;
	B = 16'h3a15;
	ans = 16'h324c;
	#20
	A = 16'h3444;
	B = 16'h3627;
	ans = 16'h3936;
	#20
	A = 16'h32d7;
	B = 16'h36ee;
	ans = 16'h392d;
	#20
	A = 16'hb8da;
	B = 16'h3a8e;
	ans = 16'h32d0;
	#20
	A = 16'hb4fa;
	B = 16'hb5af;
	ans = 16'hb954;
	#20
	A = 16'hb8a2;
	B = 16'ha87b;
	ans = 16'hb8ea;
	#20
	A = 16'h3a25;
	B = 16'h3905;
	ans = 16'h3d95;
	#20
	A = 16'hbaa2;
	B = 16'hbad1;
	ans = 16'hbeba;
	#20
	A = 16'hb6f6;
	B = 16'h35ac;
	ans = 16'had28;
	#20
	A = 16'hacce;
	B = 16'hba52;
	ans = 16'hbaec;
	#20
	A = 16'h2cb1;
	B = 16'h3b7a;
	ans = 16'h3c08;
	#20
	A = 16'hbadb;
	B = 16'hbb11;
	ans = 16'hbef6;
	#20
	A = 16'hac7c;
	B = 16'hb664;
	ans = 16'hb783;
	#20
	A = 16'h36e8;
	B = 16'hbb70;
	ans = 16'hb7f8;
	#20
	A = 16'h2594;
	B = 16'h30af;
	ans = 16'h3162;
	#20
	A = 16'hbbdd;
	B = 16'h389c;
	ans = 16'hb682;
	#20
	A = 16'h3698;
	B = 16'h33cf;
	ans = 16'h3940;
	#20
	A = 16'hb8ee;
	B = 16'hb200;
	ans = 16'hba6e;
	#20
	A = 16'hb976;
	B = 16'hb7b8;
	ans = 16'hbca9;
	#20
	A = 16'hbb91;
	B = 16'h38de;
	ans = 16'hb566;
	#20
	A = 16'h3048;
	B = 16'h3522;
	ans = 16'h3746;
	#20
	A = 16'hbb8e;
	B = 16'h3a72;
	ans = 16'hb070;
	#20
	A = 16'h3b4a;
	B = 16'hbbce;
	ans = 16'hac20;
	#20
	A = 16'h3b2e;
	B = 16'hb884;
	ans = 16'h3554;
	#20
	A = 16'h399d;
	B = 16'h36b8;
	ans = 16'h3c7c;
	#20
	A = 16'h391b;
	B = 16'h3231;
	ans = 16'h3aa7;
	#20
	A = 16'h304c;
	B = 16'hb9e5;
	ans = 16'hb8d2;
	#20
	A = 16'hb657;
	B = 16'h3838;
	ans = 16'h3032;
	#20
	A = 16'hba28;
	B = 16'hb0e6;
	ans = 16'hbb62;
	#20
	A = 16'h2900;
	B = 16'habe5;
	ans = 16'ha5ca;
	#20
	A = 16'h39b6;
	B = 16'h33a7;
	ans = 16'h3ba0;
	#20
	A = 16'hb757;
	B = 16'h2516;
	ans = 16'hb706;
	#20
	A = 16'h3195;
	B = 16'hb26c;
	ans = 16'ha6b8;
	#20
	A = 16'hb772;
	B = 16'h37ae;
	ans = 16'h2380;
	#20
	A = 16'h3737;
	B = 16'h38c7;
	ans = 16'h3c31;
	#20
	A = 16'h3693;
	B = 16'h367d;
	ans = 16'h3a88;
	#20
	A = 16'h397f;
	B = 16'hb984;
	ans = 16'h9900;
	#20
	A = 16'hb8c2;
	B = 16'h2f1b;
	ans = 16'hb7bd;
	#20
	A = 16'hb8a3;
	B = 16'h2e9c;
	ans = 16'hb79f;
	#20
	A = 16'h39d3;
	B = 16'hba01;
	ans = 16'ha5c0;
	#20
	A = 16'hbbc4;
	B = 16'ha202;
	ans = 16'hbbdc;
	#20
	A = 16'h3af8;
	B = 16'hb53a;
	ans = 16'h385b;
	#20
	A = 16'h395d;
	B = 16'h3410;
	ans = 16'h3b65;
	#20
	A = 16'hb997;
	B = 16'h2da9;
	ans = 16'hb8e2;
	#20
	A = 16'h3bc5;
	B = 16'h3738;
	ans = 16'h3db0;
	#20
	A = 16'h318d;
	B = 16'h39ed;
	ans = 16'h3b50;
	#20
	A = 16'hbb24;
	B = 16'h31c8;
	ans = 16'hb9b2;
	#20
	A = 16'hba23;
	B = 16'h3173;
	ans = 16'hb8c6;
	#20
	A = 16'h3a7a;
	B = 16'ha902;
	ans = 16'h3a2a;
	#20
	A = 16'hb119;
	B = 16'ha870;
	ans = 16'hb235;
	#20
	A = 16'h3a0a;
	B = 16'h3798;
	ans = 16'h3ceb;
	#20
	A = 16'hbbd7;
	B = 16'h38fa;
	ans = 16'hb5ba;
	#20
	A = 16'h36a4;
	B = 16'h3850;
	ans = 16'h3ba2;
	#20
	A = 16'h339b;
	B = 16'hb63b;
	ans = 16'hb0db;
	#20
	A = 16'h3b02;
	B = 16'hb5d8;
	ans = 16'h3816;
	#20
	A = 16'h326c;
	B = 16'ha78f;
	ans = 16'h317a;
	#20
	A = 16'h3496;
	B = 16'h3b3e;
	ans = 16'h3cc4;
	#20
	A = 16'h3aa5;
	B = 16'hb9d1;
	ans = 16'h2ea0;
	#20
	A = 16'h3365;
	B = 16'hb4a6;
	ans = 16'hab9c;
	#20
	A = 16'ha930;
	B = 16'h35f8;
	ans = 16'h3552;
	#20
	A = 16'hb24e;
	B = 16'h3be6;
	ans = 16'h3a52;
	#20
	A = 16'h3858;
	B = 16'hb4d3;
	ans = 16'h33ba;
	#20
	A = 16'h35ff;
	B = 16'h9dab;
	ans = 16'h35e8;
	#20
	A = 16'hb2c0;
	B = 16'ha58d;
	ans = 16'hb372;
	#20
	A = 16'hb974;
	B = 16'hb830;
	ans = 16'hbcd2;
	#20
	A = 16'h2f52;
	B = 16'hb1b0;
	ans = 16'hac0e;
	#20
	A = 16'hb6a5;
	B = 16'hb4ed;
	ans = 16'hb9c9;
	#20
	A = 16'h3926;
	B = 16'hb812;
	ans = 16'h3050;
	#20
	A = 16'hba65;
	B = 16'hb865;
	ans = 16'hbd65;
	#20
	A = 16'h3547;
	B = 16'hb8cb;
	ans = 16'hb44f;
	#20
	A = 16'hba7d;
	B = 16'h2f11;
	ans = 16'hb99b;
	#20
	A = 16'hb87f;
	B = 16'hb851;
	ans = 16'hbc68;
	#20
	A = 16'h3747;
	B = 16'hb33b;
	ans = 16'h3353;
	#20
	A = 16'hb595;
	B = 16'hb859;
	ans = 16'hbb24;
	#20
	A = 16'h38a9;
	B = 16'hbbd2;
	ans = 16'hb652;
	#20
	A = 16'h35bc;
	B = 16'h37d1;
	ans = 16'h3ac6;
	#20
	A = 16'hbada;
	B = 16'h32e9;
	ans = 16'hb920;
	#20
	A = 16'ha9e4;
	B = 16'h2da8;
	ans = 16'h296c;
	#20
	A = 16'h347e;
	B = 16'h3819;
	ans = 16'h3a58;
	#20
	A = 16'h39dd;
	B = 16'hb459;
	ans = 16'h3761;
	#20
	A = 16'hb5d8;
	B = 16'hb80c;
	ans = 16'hbaf8;
	#20
	A = 16'hb8eb;
	B = 16'hb90c;
	ans = 16'hbcfc;
	#20
	A = 16'h2a6f;
	B = 16'h3b33;
	ans = 16'h3b9a;
	#20
	A = 16'hb8ac;
	B = 16'hb5d2;
	ans = 16'hbb95;
	#20
	A = 16'h3148;
	B = 16'hba8c;
	ans = 16'hb93a;
	#20
	A = 16'hba70;
	B = 16'hb624;
	ans = 16'hbcc1;
	#20
	A = 16'ha88f;
	B = 16'hb70b;
	ans = 16'hb79d;
	#20
	A = 16'hb943;
	B = 16'h3238;
	ans = 16'hb76a;
	#20
	A = 16'hbb67;
	B = 16'hb7bf;
	ans = 16'hbda3;
	#20
	A = 16'hb05f;
	B = 16'hba26;
	ans = 16'hbb3e;
	#20
	A = 16'hba70;
	B = 16'h39c2;
	ans = 16'had70;
	#20
	A = 16'h3a3c;
	B = 16'hafb8;
	ans = 16'h3945;
	#20
	A = 16'hb5ce;
	B = 16'h2c4a;
	ans = 16'hb4bc;
	#20
	A = 16'h3805;
	B = 16'hbb03;
	ans = 16'hb5fc;
	#20
	A = 16'hbbb7;
	B = 16'h3410;
	ans = 16'hb9af;
	#20
	A = 16'hae31;
	B = 16'hba61;
	ans = 16'hbb27;
	#20
	A = 16'h3409;
	B = 16'hb1a8;
	ans = 16'h2cd4;
	#20
	A = 16'hbae5;
	B = 16'hb0fc;
	ans = 16'hbc12;
	#20
	A = 16'h3b04;
	B = 16'h37d1;
	ans = 16'h3d76;
	#20
	A = 16'h3544;
	B = 16'hbb7e;
	ans = 16'hb8dc;
	#20
	A = 16'h39a5;
	B = 16'hbae7;
	ans = 16'hb108;
	#20
	A = 16'h3a7d;
	B = 16'h329e;
	ans = 16'h3c12;
	#20
	A = 16'hb815;
	B = 16'hb971;
	ans = 16'hbcc3;
	#20
	A = 16'hb9eb;
	B = 16'h38c7;
	ans = 16'hb090;
	#20
	A = 16'h3a47;
	B = 16'hb8c0;
	ans = 16'h321c;
	#20
	A = 16'h3418;
	B = 16'h360c;
	ans = 16'h3912;
	#20
	A = 16'hb9ed;
	B = 16'hb815;
	ans = 16'hbd01;
	#20
	A = 16'h1eab;
	B = 16'h3651;
	ans = 16'h366c;
	#20
	A = 16'hb455;
	B = 16'h33dc;
	ans = 16'ha670;
	#20
	A = 16'hb9f2;
	B = 16'hb6f7;
	ans = 16'hbcb7;
	#20
	A = 16'hba07;
	B = 16'h3b5c;
	ans = 16'h3154;
	#20
	A = 16'hb279;
	B = 16'hacc4;
	ans = 16'hb46e;
	#20
	A = 16'hbb73;
	B = 16'h3041;
	ans = 16'hba63;
	#20
	A = 16'hb948;
	B = 16'h3042;
	ans = 16'hb838;
	#20
	A = 16'h2db8;
	B = 16'hb48a;
	ans = 16'hb238;
	#20
	A = 16'hb599;
	B = 16'hbbd3;
	ans = 16'hbd50;
	#20
	A = 16'hba11;
	B = 16'hbb9e;
	ans = 16'hbed8;
	#20
	A = 16'h3490;
	B = 16'h2f28;
	ans = 16'h365a;
	#20
	A = 16'hbb34;
	B = 16'h318d;
	ans = 16'hb9d1;
	#20
	A = 16'hb0fc;
	B = 16'h2d82;
	ans = 16'hac76;
	#20
	A = 16'haed7;
	B = 16'hb0e1;
	ans = 16'hb426;
	#20
	A = 16'hb96c;
	B = 16'hb5dc;
	ans = 16'hbc2d;
	#20
	A = 16'hac23;
	B = 16'h282f;
	ans = 16'ha817;
	#20
	A = 16'hb951;
	B = 16'h3913;
	ans = 16'ha7c0;
	#20
	A = 16'h31d3;
	B = 16'h3724;
	ans = 16'h3907;
	#20
	A = 16'h3863;
	B = 16'h39e9;
	ans = 16'h3d26;
	#20
	A = 16'hb896;
	B = 16'ha7b4;
	ans = 16'hb8d4;
	#20
	A = 16'hb9a4;
	B = 16'hb504;
	ans = 16'hbc13;
	#20
	A = 16'h30b1;
	B = 16'hbaec;
	ans = 16'hb9c0;
	#20
	A = 16'hb961;
	B = 16'h3a11;
	ans = 16'h2d80;
	#20
	A = 16'h3bf8;
	B = 16'h3528;
	ans = 16'h3d46;
	#20
	A = 16'hb5d4;
	B = 16'hba44;
	ans = 16'hbc97;
	#20
	A = 16'h3ba6;
	B = 16'h39fa;
	ans = 16'h3ed0;
	#20
	A = 16'hb3b5;
	B = 16'h3171;
	ans = 16'hac88;
	#20
	A = 16'hb69b;
	B = 16'hba6c;
	ans = 16'hbcdd;
	#20
	A = 16'hbb85;
	B = 16'hb810;
	ans = 16'hbdca;
	#20
	A = 16'h34e7;
	B = 16'hbb8c;
	ans = 16'hb918;
	#20
	A = 16'h378e;
	B = 16'hb5ed;
	ans = 16'h2e84;
	#20
	A = 16'h36a8;
	B = 16'hbadd;
	ans = 16'hb712;
	#20
	A = 16'h396d;
	B = 16'hbafe;
	ans = 16'hb244;
	#20
	A = 16'h3a74;
	B = 16'h39a9;
	ans = 16'h3e0e;
	#20
	A = 16'hbb13;
	B = 16'hb33a;
	ans = 16'hbc71;
	#20
	A = 16'hb5ef;
	B = 16'hb7a1;
	ans = 16'hbac8;
	#20
	A = 16'h349e;
	B = 16'hb33d;
	ans = 16'h2bfc;
	#20
	A = 16'hbb6c;
	B = 16'hb8ea;
	ans = 16'hbe2b;
	#20
	A = 16'h3aaf;
	B = 16'h39c9;
	ans = 16'h3e3c;
	#20
	A = 16'h3680;
	B = 16'h3a21;
	ans = 16'h3cb0;
	#20
	A = 16'hb710;
	B = 16'h39d3;
	ans = 16'h3496;
	#20
	A = 16'hbb7c;
	B = 16'h3b62;
	ans = 16'ha280;
	#20
	A = 16'hb388;
	B = 16'h3953;
	ans = 16'h36e2;
	#20
	A = 16'hb534;
	B = 16'hba24;
	ans = 16'hbc5f;
	#20
	A = 16'hb41f;
	B = 16'h3afd;
	ans = 16'h38ee;
	#20
	A = 16'h31d8;
	B = 16'hb7e9;
	ans = 16'hb4fd;
	#20
	A = 16'h36bc;
	B = 16'hb859;
	ans = 16'hafd8;
	#20
	A = 16'h388a;
	B = 16'h3800;
	ans = 16'h3c45;
	#20
	A = 16'h3bd2;
	B = 16'habdc;
	ans = 16'h3b54;
	#20
	A = 16'hbbf4;
	B = 16'h2c0d;
	ans = 16'hbb72;
	#20
	A = 16'h2255;
	B = 16'h3b5d;
	ans = 16'h3b76;
	#20
	A = 16'hb97c;
	B = 16'hb5da;
	ans = 16'hbc34;
	#20
	A = 16'hbacb;
	B = 16'hb749;
	ans = 16'hbd38;
	#20
	A = 16'hb3c1;
	B = 16'h36e9;
	ans = 16'h3211;
	#20
	A = 16'h3b98;
	B = 16'h2fa1;
	ans = 16'h3c46;
	#20
	A = 16'hba78;
	B = 16'hb885;
	ans = 16'hbd7e;
	#20
	A = 16'hb5e3;
	B = 16'h3436;
	ans = 16'haeb4;
	#20
	A = 16'hb950;
	B = 16'h3601;
	ans = 16'hb49f;
	#20
	A = 16'hb9d4;
	B = 16'h821e;
	ans = 16'hb9d4;
	#20
	A = 16'hbbe5;
	B = 16'h3be4;
	ans = 16'h9000;
	#20
	A = 16'hb77b;
	B = 16'hb862;
	ans = 16'hbc10;
	#20
	A = 16'h3b58;
	B = 16'hbabb;
	ans = 16'h2ce8;
	#20
	A = 16'hb930;
	B = 16'h3b0e;
	ans = 16'h3378;
	#20
	A = 16'hb654;
	B = 16'h3bf7;
	ans = 16'h38cd;
	#20
	A = 16'hb826;
	B = 16'hb45a;
	ans = 16'hba53;
	#20
	A = 16'h396a;
	B = 16'hb97f;
	ans = 16'ha140;
	#20
	A = 16'hb631;
	B = 16'h37d3;
	ans = 16'h2e88;
	#20
	A = 16'hbbaa;
	B = 16'hbb73;
	ans = 16'hbf8e;
	#20
	A = 16'hbb5b;
	B = 16'hb8bb;
	ans = 16'hbe0b;
	#20
	A = 16'hb84d;
	B = 16'hb4d3;
	ans = 16'hbab6;
	#20
	A = 16'hba07;
	B = 16'h31e6;
	ans = 16'hb88e;
	#20
	A = 16'h370d;
	B = 16'hb451;
	ans = 16'h3178;
	#20
	A = 16'h3a45;
	B = 16'h344f;
	ans = 16'h3c36;
	#20
	A = 16'h372b;
	B = 16'h3bb5;
	ans = 16'h3da5;
	#20
	A = 16'h2a74;
	B = 16'hb660;
	ans = 16'hb592;
	#20
	A = 16'hbbd4;
	B = 16'h399d;
	ans = 16'hb46e;
	#20
	A = 16'h2795;
	B = 16'h3945;
	ans = 16'h3982;
	#20
	A = 16'hab5e;
	B = 16'hbbeb;
	ans = 16'hbc30;
	#20
	A = 16'hbb8b;
	B = 16'hb77b;
	ans = 16'hbda4;
	#20
	A = 16'hb50c;
	B = 16'h3618;
	ans = 16'h2c30;
	#20
	A = 16'hb4c7;
	B = 16'hb987;
	ans = 16'hbbea;
	#20
	A = 16'hb8f7;
	B = 16'h3aa6;
	ans = 16'h32bc;
	#20
	A = 16'hb771;
	B = 16'hb956;
	ans = 16'hbc87;
	#20
	A = 16'h2cfa;
	B = 16'h333f;
	ans = 16'h34de;
	#20
	A = 16'h2f0a;
	B = 16'hae53;
	ans = 16'h21b8;
	#20
	A = 16'hb08c;
	B = 16'h32a8;
	ans = 16'h2c38;
	#20
	A = 16'hb116;
	B = 16'h393e;
	ans = 16'h37f1;
	#20
	A = 16'h3356;
	B = 16'h3831;
	ans = 16'h3a06;
	#20
	A = 16'ha767;
	B = 16'hb457;
	ans = 16'hb4cd;
	#20
	A = 16'hb052;
	B = 16'h2366;
	ans = 16'hafb7;
	#20
	A = 16'hb17a;
	B = 16'h3783;
	ans = 16'h34c6;
	#20
	A = 16'hb8fb;
	B = 16'hb42f;
	ans = 16'hbb12;
	#20
	A = 16'h3b7b;
	B = 16'hba35;
	ans = 16'h3118;
	#20
	A = 16'haa2e;
	B = 16'hb956;
	ans = 16'hb9b9;
	#20
	A = 16'h37bd;
	B = 16'h340b;
	ans = 16'h39e4;
	#20
	A = 16'hb973;
	B = 16'h39d7;
	ans = 16'h2a40;
	#20
	A = 16'hac14;
	B = 16'h3731;
	ans = 16'h362c;
	#20
	A = 16'h331b;
	B = 16'h3b59;
	ans = 16'h3c90;
	#20
	A = 16'h3be3;
	B = 16'hb885;
	ans = 16'h36bc;
	#20
	A = 16'h2d9b;
	B = 16'h3852;
	ans = 16'h3905;
	#20
	A = 16'h3b8a;
	B = 16'hb1a3;
	ans = 16'h3a21;
	#20
	A = 16'h2ca3;
	B = 16'h3814;
	ans = 16'h38a8;
	#20
	A = 16'h2883;
	B = 16'hacb8;
	ans = 16'ha8ed;
	#20
	A = 16'h26bb;
	B = 16'hb58d;
	ans = 16'hb521;
	#20
	A = 16'h394d;
	B = 16'h39aa;
	ans = 16'h3d7c;
	#20
	A = 16'h353e;
	B = 16'ha1d3;
	ans = 16'h350f;
	#20
	A = 16'hb1d7;
	B = 16'hbb4f;
	ans = 16'hbc62;
	#20
	A = 16'hb488;
	B = 16'hb2be;
	ans = 16'hb7e7;
	#20
	A = 16'hb48f;
	B = 16'hba25;
	ans = 16'hbc36;
	#20
	A = 16'hba84;
	B = 16'hbae9;
	ans = 16'hbeb6;
	#20
	A = 16'hb656;
	B = 16'hb706;
	ans = 16'hbaae;
	#20
	A = 16'hb2ab;
	B = 16'hbb79;
	ans = 16'hbc92;
	#20
	A = 16'h38ac;
	B = 16'hb451;
	ans = 16'h3507;
	#20
	A = 16'hb961;
	B = 16'h3812;
	ans = 16'hb13c;
	#20
	A = 16'h344b;
	B = 16'hb83e;
	ans = 16'hb431;
	#20
	A = 16'hb8c4;
	B = 16'hb909;
	ans = 16'hbce6;
	#20
	A = 16'hb7cc;
	B = 16'h38da;
	ans = 16'h2fa0;
	#20
	A = 16'h30f5;
	B = 16'hab68;
	ans = 16'h2e36;
	#20
	A = 16'h2b02;
	B = 16'hbb28;
	ans = 16'hbab8;
	#20
	A = 16'h3bea;
	B = 16'hb110;
	ans = 16'h3aa6;
	#20
	A = 16'h3a58;
	B = 16'h3bd3;
	ans = 16'h3f16;
	#20
	A = 16'h3a5e;
	B = 16'h358b;
	ans = 16'h3c92;
	#20
	A = 16'h38c6;
	B = 16'h30d1;
	ans = 16'h39fa;
	#20
	A = 16'hb8e3;
	B = 16'hb5b0;
	ans = 16'hbbbb;
	#20
	A = 16'h2975;
	B = 16'h3b1a;
	ans = 16'h3b71;
	#20
	A = 16'h3295;
	B = 16'had20;
	ans = 16'h3005;
	#20
	A = 16'h362a;
	B = 16'h30a8;
	ans = 16'h383f;
	#20
	A = 16'hb936;
	B = 16'hb667;
	ans = 16'hbc35;
	#20
	A = 16'hba5f;
	B = 16'h332e;
	ans = 16'hb894;
	#20
	A = 16'h3686;
	B = 16'h37cd;
	ans = 16'h3b2a;
	#20
	A = 16'h38ae;
	B = 16'hbaa1;
	ans = 16'hb3cc;
	#20
	A = 16'hb0e3;
	B = 16'h3b33;
	ans = 16'h39fa;
	#20
	A = 16'hb2c1;
	B = 16'h380e;
	ans = 16'h34bc;
	#20
	A = 16'h3a11;
	B = 16'hba9f;
	ans = 16'hac70;
	#20
	A = 16'hb7d9;
	B = 16'h3b1f;
	ans = 16'h3665;
	#20
	A = 16'hba98;
	B = 16'hba7f;
	ans = 16'hbe8c;
	#20
	A = 16'hbbd9;
	B = 16'hb558;
	ans = 16'hbd42;
	#20
	A = 16'h3ba8;
	B = 16'h38b7;
	ans = 16'h3e30;
	#20
	A = 16'hba5a;
	B = 16'hb8eb;
	ans = 16'hbda2;
	#20
	A = 16'h23ae;
	B = 16'h3bc4;
	ans = 16'h3be3;
	#20
	A = 16'hb78e;
	B = 16'h387c;
	ans = 16'h2da8;
	#20
	A = 16'h3670;
	B = 16'hba3b;
	ans = 16'hb606;
	#20
	A = 16'hb855;
	B = 16'h3a15;
	ans = 16'h3300;
	#20
	A = 16'h386b;
	B = 16'h3403;
	ans = 16'h3a6c;
	#20
	A = 16'hb8d6;
	B = 16'hb346;
	ans = 16'hbaa8;
	#20
	A = 16'hb8ec;
	B = 16'hbbb5;
	ans = 16'hbe50;
	#20
	A = 16'hb9e4;
	B = 16'h382c;
	ans = 16'hb2e0;
	#20
	A = 16'h3b3a;
	B = 16'h34f1;
	ans = 16'h3cd9;
	#20
	A = 16'hb918;
	B = 16'h3033;
	ans = 16'hb80b;
	#20
	A = 16'h3996;
	B = 16'h3b2f;
	ans = 16'h3e62;
	#20
	A = 16'h3b02;
	B = 16'hb5ee;
	ans = 16'h380b;
	#20
	A = 16'h39bf;
	B = 16'h2f59;
	ans = 16'h3aaa;
	#20
	A = 16'h323b;
	B = 16'hb0cf;
	ans = 16'h29b0;
	#20
	A = 16'h29ee;
	B = 16'h38ee;
	ans = 16'h394d;
	#20
	A = 16'h2f0e;
	B = 16'hb166;
	ans = 16'hab7c;
	#20
	A = 16'h3679;
	B = 16'h3a57;
	ans = 16'h3cca;
	#20
	A = 16'hb368;
	B = 16'hb2c5;
	ans = 16'hb716;
	#20
	A = 16'h3460;
	B = 16'h3445;
	ans = 16'h3852;
	#20
	A = 16'hbb98;
	B = 16'hacf7;
	ans = 16'hbc1b;
	#20
	A = 16'hb045;
	B = 16'hb4f9;
	ans = 16'hb71c;
	#20
	A = 16'hb708;
	B = 16'h39df;
	ans = 16'h34b6;
	#20
	A = 16'ha126;
	B = 16'hb836;
	ans = 16'hb84b;
	#20
	A = 16'hb95b;
	B = 16'h3702;
	ans = 16'hb368;
	#20
	A = 16'hb86f;
	B = 16'hb927;
	ans = 16'hbccb;
	#20
	A = 16'h9e51;
	B = 16'h3b83;
	ans = 16'h3b76;
	#20
	A = 16'h396b;
	B = 16'hb136;
	ans = 16'h381e;
	#20
	A = 16'hb8dc;
	B = 16'h3bcc;
	ans = 16'h35e0;
	#20
	A = 16'hb804;
	B = 16'h338b;
	ans = 16'hb442;
	#20
	A = 16'h34f1;
	B = 16'hb234;
	ans = 16'h2f5c;
	#20
	A = 16'hb8b4;
	B = 16'hbb69;
	ans = 16'hbe0e;
	#20
	A = 16'h39dd;
	B = 16'h39b2;
	ans = 16'h3dc8;
	#20
	A = 16'h3449;
	B = 16'had0f;
	ans = 16'h320a;
	#20
	A = 16'h39bd;
	B = 16'h366e;
	ans = 16'h3c7a;
	#20
	A = 16'hab2e;
	B = 16'h3603;
	ans = 16'h351d;
	#20
	A = 16'h3a35;
	B = 16'h24db;
	ans = 16'h3a5c;
	#20
	A = 16'h2954;
	B = 16'h3a61;
	ans = 16'h3ab6;
	#20
	A = 16'h286b;
	B = 16'hba79;
	ans = 16'hba32;
	#20
	A = 16'ha46b;
	B = 16'hbbc7;
	ans = 16'hbbea;
	#20
	A = 16'hb92a;
	B = 16'h37bc;
	ans = 16'hb130;
	#20
	A = 16'hb53d;
	B = 16'hb0d0;
	ans = 16'hb7a5;
	#20
	A = 16'hbb8a;
	B = 16'hb535;
	ans = 16'hbd12;
	#20
	A = 16'hba2e;
	B = 16'hb8ff;
	ans = 16'hbd96;
	#20
	A = 16'h3961;
	B = 16'h39f9;
	ans = 16'h3dad;
	#20
	A = 16'h374d;
	B = 16'h3979;
	ans = 16'h3c90;
	#20
	A = 16'hba0b;
	B = 16'hb1bd;
	ans = 16'hbb7a;
	#20
	A = 16'h2f73;
	B = 16'hb53c;
	ans = 16'hb2be;
	#20
	A = 16'hbae5;
	B = 16'h3ba6;
	ans = 16'h2e08;
	#20
	A = 16'h3af1;
	B = 16'hb79b;
	ans = 16'h3647;
	#20
	A = 16'h3ab3;
	B = 16'hbb6d;
	ans = 16'hadd0;
	#20
	A = 16'hba61;
	B = 16'hb987;
	ans = 16'hbdf4;
	#20
	A = 16'hb976;
	B = 16'h30f7;
	ans = 16'hb838;
	#20
	A = 16'hb2ef;
	B = 16'hb26c;
	ans = 16'hb6ae;
	#20
	A = 16'hac30;
	B = 16'hba87;
	ans = 16'hbb0d;
	#20
	A = 16'h9050;
	B = 16'hbb29;
	ans = 16'hbb2a;
	#20
	A = 16'h321c;
	B = 16'h3148;
	ans = 16'h35b2;
	#20
	A = 16'h38d9;
	B = 16'h387a;
	ans = 16'h3caa;
	#20
	A = 16'hbae9;
	B = 16'h3beb;
	ans = 16'h3008;
	#20
	A = 16'hba3b;
	B = 16'h3707;
	ans = 16'hb56f;
	#20
	A = 16'h3935;
	B = 16'h36ea;
	ans = 16'h3c55;
	#20
	A = 16'h318e;
	B = 16'h37d2;
	ans = 16'h394c;
	#20
	A = 16'h347e;
	B = 16'hb0a4;
	ans = 16'h3058;
	#20
	A = 16'hbb6d;
	B = 16'hb6d2;
	ans = 16'hbd6b;
	#20
	A = 16'hb240;
	B = 16'hb966;
	ans = 16'hbaf6;
	#20
	A = 16'hbb59;
	B = 16'hb34a;
	ans = 16'hbc96;
	#20
	A = 16'hb1c4;
	B = 16'hb8ed;
	ans = 16'hba5e;
	#20
	A = 16'hbbdc;
	B = 16'h3adc;
	ans = 16'hb000;
	#20
	A = 16'h3715;
	B = 16'h39fa;
	ans = 16'h3cc2;
	#20
	A = 16'h38af;
	B = 16'hbb2e;
	ans = 16'hb4fe;
	#20
	A = 16'h34a5;
	B = 16'h39d9;
	ans = 16'h3c16;
	#20
	A = 16'hb499;
	B = 16'hb297;
	ans = 16'hb7e4;
	#20
	A = 16'h34ec;
	B = 16'hb5a3;
	ans = 16'ha9b8;
	#20
	A = 16'h3ac4;
	B = 16'h2d4f;
	ans = 16'h3b6e;
	#20
	A = 16'hb31d;
	B = 16'hb8e5;
	ans = 16'hbaac;
	#20
	A = 16'hb8bd;
	B = 16'hbbec;
	ans = 16'hbe54;
	#20
	A = 16'h3820;
	B = 16'hb2c3;
	ans = 16'h34de;
	#20
	A = 16'h3305;
	B = 16'hb24e;
	ans = 16'h25b8;
	#20
	A = 16'h3319;
	B = 16'h35ea;
	ans = 16'h38bb;
	#20
	A = 16'hb599;
	B = 16'h3314;
	ans = 16'hb01e;
	#20
	A = 16'had6e;
	B = 16'hbbc1;
	ans = 16'hbc37;
	#20
	A = 16'h2a38;
	B = 16'h33c3;
	ans = 16'h34a8;
	#20
	A = 16'h3372;
	B = 16'hb075;
	ans = 16'h2dfa;
	#20
	A = 16'h3a48;
	B = 16'hb9be;
	ans = 16'h2c50;
	#20
	A = 16'hb1a3;
	B = 16'hb830;
	ans = 16'hb999;
	#20
	A = 16'h2a63;
	B = 16'hb869;
	ans = 16'hb803;
	#20
	A = 16'h366a;
	B = 16'h32ec;
	ans = 16'h38f0;
	#20
	A = 16'hbad7;
	B = 16'h3be4;
	ans = 16'h3034;
	#20
	A = 16'h3ac3;
	B = 16'h39b2;
	ans = 16'h3e3a;
	#20
	A = 16'hb3ed;
	B = 16'h2e2c;
	ans = 16'hb0d7;
	#20
	A = 16'hb1af;
	B = 16'hb60f;
	ans = 16'hb873;
	#20
	A = 16'h2e98;
	B = 16'h3583;
	ans = 16'h3729;
	#20
	A = 16'h3572;
	B = 16'hbbfe;
	ans = 16'hb945;
	#20
	A = 16'h3a16;
	B = 16'hb934;
	ans = 16'h2f10;
	#20
	A = 16'hb913;
	B = 16'h3226;
	ans = 16'hb713;
	#20
	A = 16'hb4de;
	B = 16'h385d;
	ans = 16'h33b8;
	#20
	A = 16'hbbc0;
	B = 16'h3ac1;
	ans = 16'haff8;
	#20
	A = 16'h36a8;
	B = 16'hbb8c;
	ans = 16'hb838;
	#20
	A = 16'h31cb;
	B = 16'h3b76;
	ans = 16'h3c74;
	#20
	A = 16'hb6b7;
	B = 16'hb3f0;
	ans = 16'hb958;
	#20
	A = 16'h36dc;
	B = 16'h3b17;
	ans = 16'h3d42;
	#20
	A = 16'h2c6e;
	B = 16'h35d9;
	ans = 16'h36f4;
	#20
	A = 16'h3012;
	B = 16'hbae2;
	ans = 16'hb9de;
	#20
	A = 16'hb9c2;
	B = 16'hb101;
	ans = 16'hbb02;
	#20
	A = 16'haf5c;
	B = 16'hb4ef;
	ans = 16'hb6c6;
	#20
	A = 16'ha53f;
	B = 16'hb808;
	ans = 16'hb832;
	#20
	A = 16'h3867;
	B = 16'haeb8;
	ans = 16'h3720;
	#20
	A = 16'h3893;
	B = 16'h343d;
	ans = 16'h3ab2;
	#20
	A = 16'h37ba;
	B = 16'h3873;
	ans = 16'h3c28;
	#20
	A = 16'h3873;
	B = 16'hb44a;
	ans = 16'h349c;
	#20
	A = 16'h3a87;
	B = 16'h3a61;
	ans = 16'h3e74;
	#20
	A = 16'h3861;
	B = 16'hb267;
	ans = 16'h358e;
	#20
	A = 16'hb84a;
	B = 16'hb200;
	ans = 16'hb9ca;
	#20
	A = 16'hbb1f;
	B = 16'hb4e9;
	ans = 16'hbcca;
	#20
	A = 16'h3524;
	B = 16'h3be8;
	ans = 16'h3d3d;
	#20
	A = 16'h30ee;
	B = 16'hb1d6;
	ans = 16'ha740;
	#20
	A = 16'hb070;
	B = 16'hb5a2;
	ans = 16'hb7da;
	#20
	A = 16'h376b;
	B = 16'h3b9e;
	ans = 16'h3daa;
	#20
	A = 16'h3b6a;
	B = 16'hb890;
	ans = 16'h35b4;
	#20
	A = 16'h380a;
	B = 16'hb411;
	ans = 16'h3403;
	#20
	A = 16'h387b;
	B = 16'hb811;
	ans = 16'h2aa0;
	#20
	A = 16'h35d1;
	B = 16'h371f;
	ans = 16'h3a78;
	#20
	A = 16'h34f8;
	B = 16'hb9ba;
	ans = 16'hb67c;
	#20
	A = 16'hb84f;
	B = 16'hba12;
	ans = 16'hbd30;
	#20
	A = 16'h3a73;
	B = 16'h3afc;
	ans = 16'h3eb8;
	#20
	A = 16'hba65;
	B = 16'h31aa;
	ans = 16'hb8fa;
	#20
	A = 16'h2d9b;
	B = 16'hbad7;
	ans = 16'hba24;
	#20
	A = 16'h37f4;
	B = 16'hba8f;
	ans = 16'hb52a;
	#20
	A = 16'hb7ca;
	B = 16'h2e41;
	ans = 16'hb63a;
	#20
	A = 16'h203b;
	B = 16'hb920;
	ans = 16'hb90f;
	#20
	A = 16'hb867;
	B = 16'hae13;
	ans = 16'hb929;
	#20
	A = 16'h38b3;
	B = 16'h307f;
	ans = 16'h39d3;
	#20
	A = 16'hb03d;
	B = 16'hb386;
	ans = 16'hb5e2;
	#20
	A = 16'hbace;
	B = 16'h3679;
	ans = 16'hb723;
	#20
	A = 16'h2fcf;
	B = 16'h3b55;
	ans = 16'h3c27;
	#20
	A = 16'h30d5;
	B = 16'hb033;
	ans = 16'h2510;
	#20
	A = 16'hbb05;
	B = 16'hb874;
	ans = 16'hbdbc;
	#20
	A = 16'hb9d9;
	B = 16'h3806;
	ans = 16'hb34c;
	#20
	A = 16'ha96b;
	B = 16'had66;
	ans = 16'hb00e;
	#20
	A = 16'hb80f;
	B = 16'h2d3b;
	ans = 16'hb6cf;
	#20
	A = 16'hbb2a;
	B = 16'hb044;
	ans = 16'hbc1e;
	#20
	A = 16'h3a6f;
	B = 16'h342e;
	ans = 16'h3c43;
	#20
	A = 16'h3a2e;
	B = 16'hba02;
	ans = 16'h2580;
	#20
	A = 16'hb15e;
	B = 16'h33a1;
	ans = 16'h2c86;
	#20
	A = 16'hbb74;
	B = 16'hba4f;
	ans = 16'hbee2;
	#20
	A = 16'h2d3b;
	B = 16'h2b36;
	ans = 16'h306b;
	#20
	A = 16'hb8aa;
	B = 16'h3236;
	ans = 16'hb639;
	#20
	A = 16'had14;
	B = 16'h3562;
	ans = 16'h341d;
	#20
	A = 16'h3073;
	B = 16'hb285;
	ans = 16'hac24;
	#20
	A = 16'hbaae;
	B = 16'hb0f8;
	ans = 16'hbbec;
	#20
	A = 16'hb1e2;
	B = 16'h3aa4;
	ans = 16'h392c;
	#20
	A = 16'h361a;
	B = 16'hbb8f;
	ans = 16'hb882;
	#20
	A = 16'hbad8;
	B = 16'h1a22;
	ans = 16'hbad2;
	#20
	A = 16'hbae9;
	B = 16'ha211;
	ans = 16'hbb01;
	#20
	A = 16'h3a22;
	B = 16'hb8be;
	ans = 16'h3190;
	#20
	A = 16'hb76c;
	B = 16'ha4f7;
	ans = 16'hb7bb;
	#20
	A = 16'h3b9d;
	B = 16'hb9db;
	ans = 16'h3308;
	#20
	A = 16'hb2ec;
	B = 16'hb944;
	ans = 16'hbaff;
	#20
	A = 16'hb9a3;
	B = 16'had03;
	ans = 16'hba43;
	#20
	A = 16'hadf3;
	B = 16'h1ee1;
	ans = 16'had85;
	#20
	A = 16'h3b7e;
	B = 16'h2f46;
	ans = 16'h3c33;
	#20
	A = 16'h3a00;
	B = 16'h3908;
	ans = 16'h3d84;
	#20
	A = 16'h3b97;
	B = 16'hb945;
	ans = 16'h34a4;
	#20
	A = 16'h31c7;
	B = 16'hb489;
	ans = 16'hae96;
	#20
	A = 16'h37a8;
	B = 16'h37df;
	ans = 16'h3bc4;
	#20
	A = 16'hbbcc;
	B = 16'hba4c;
	ans = 16'hbf0c;
	#20
	A = 16'hafd2;
	B = 16'hb1c2;
	ans = 16'hb4d6;
	#20
	A = 16'hb9e2;
	B = 16'h39c2;
	ans = 16'ha400;
	#20
	A = 16'h2e4e;
	B = 16'hac9a;
	ans = 16'h26d0;
	#20
	A = 16'h36a2;
	B = 16'h36f9;
	ans = 16'h3ace;
	#20
	A = 16'hb63d;
	B = 16'h383f;
	ans = 16'h3082;
	#20
	A = 16'h382e;
	B = 16'h3755;
	ans = 16'h3bd8;
	#20
	A = 16'h38e9;
	B = 16'haf81;
	ans = 16'h37f2;
	#20
	A = 16'h39e5;
	B = 16'hbbbd;
	ans = 16'hb360;
	#20
	A = 16'h388c;
	B = 16'h30e7;
	ans = 16'h39c6;
	#20
	A = 16'h3618;
	B = 16'h3ace;
	ans = 16'h3ced;
	#20
	A = 16'hb5d9;
	B = 16'hbb7a;
	ans = 16'hbd33;
	#20
	A = 16'hb547;
	B = 16'h39da;
	ans = 16'h366d;
	#20
	A = 16'hbb3a;
	B = 16'hb5a7;
	ans = 16'hbd07;
	#20
	A = 16'h3a94;
	B = 16'hb83e;
	ans = 16'h34ac;
	#20
	A = 16'hb88f;
	B = 16'h353b;
	ans = 16'hb3c6;
	#20
	A = 16'hbb12;
	B = 16'h3991;
	ans = 16'hb204;
	#20
	A = 16'h38fe;
	B = 16'hbaad;
	ans = 16'hb2bc;
	#20
	A = 16'had50;
	B = 16'h39af;
	ans = 16'h3905;
	#20
	A = 16'h3827;
	B = 16'hb25d;
	ans = 16'h3520;
	#20
	A = 16'hac2a;
	B = 16'h3be8;
	ans = 16'h3b63;
	#20
	A = 16'h3bf9;
	B = 16'h3856;
	ans = 16'h3e28;
	#20
	A = 16'ha46e;
	B = 16'h3b09;
	ans = 16'h3ae6;
	#20
	A = 16'hb998;
	B = 16'had6d;
	ans = 16'hba46;
	#20
	A = 16'h3b04;
	B = 16'hbbfb;
	ans = 16'hafb8;
	#20
	A = 16'h36de;
	B = 16'h33ff;
	ans = 16'h396f;
	#20
	A = 16'ha991;
	B = 16'hae01;
	ans = 16'hb065;
	#20
	A = 16'h2c1c;
	B = 16'h37ca;
	ans = 16'h3868;
	#20
	A = 16'hba9f;
	B = 16'h360c;
	ans = 16'hb732;
	#20
	A = 16'h3852;
	B = 16'h3967;
	ans = 16'h3cdc;
	#20
	A = 16'h32d3;
	B = 16'hbaa2;
	ans = 16'hb8ed;
	#20
	A = 16'h31c4;
	B = 16'hb4fb;
	ans = 16'hb032;
	#20
	A = 16'h38d3;
	B = 16'hb938;
	ans = 16'haa50;
	#20
	A = 16'h3969;
	B = 16'h34f3;
	ans = 16'h3be2;
	#20
	A = 16'hb93d;
	B = 16'h365d;
	ans = 16'hb41d;
	#20
	A = 16'h399f;
	B = 16'h3104;
	ans = 16'h3ae0;
	#20
	A = 16'h3a7d;
	B = 16'hb447;
	ans = 16'h385a;
	#20
	A = 16'hbbe2;
	B = 16'h3a14;
	ans = 16'hb338;
	#20
	A = 16'h3ae3;
	B = 16'h3b25;
	ans = 16'h3f04;
	#20
	A = 16'hb7ad;
	B = 16'hb770;
	ans = 16'hbb8e;
	#20
	A = 16'haae2;
	B = 16'h3b1f;
	ans = 16'h3ab1;
	#20
	A = 16'hb5d8;
	B = 16'hba56;
	ans = 16'hbca1;
	#20
	A = 16'hb652;
	B = 16'hbbeb;
	ans = 16'hbd8a;
	#20
	A = 16'hb1b7;
	B = 16'hb8ef;
	ans = 16'hba5d;
	#20
	A = 16'hb7ec;
	B = 16'hbb39;
	ans = 16'hbd98;
	#20
	A = 16'h36fa;
	B = 16'hb810;
	ans = 16'hac98;
	#20
	A = 16'hb636;
	B = 16'hb78c;
	ans = 16'hbae1;
	#20
	A = 16'h1fb3;
	B = 16'h3967;
	ans = 16'h3976;
	#20
	A = 16'h282f;
	B = 16'h29a8;
	ans = 16'h2cec;
	#20
	A = 16'h340a;
	B = 16'hb64a;
	ans = 16'hb080;
	#20
	A = 16'h39fe;
	B = 16'h2f61;
	ans = 16'h3aea;
	#20
	A = 16'h3c00;
	B = 16'h3966;
	ans = 16'h3eb3;
	#20
	A = 16'h3337;
	B = 16'hb982;
	ans = 16'hb768;
	#20
	A = 16'h37e6;
	B = 16'hb4d8;
	ans = 16'h321c;
	#20
	A = 16'hbaa9;
	B = 16'h3aaa;
	ans = 16'h1000;
	#20
	A = 16'h397a;
	B = 16'hb8a0;
	ans = 16'h2ed0;
	#20
	A = 16'hb8ad;
	B = 16'hbae7;
	ans = 16'hbdca;
	#20
	A = 16'h3811;
	B = 16'h3b0f;
	ans = 16'h3d90;
	#20
	A = 16'h36ed;
	B = 16'hb94b;
	ans = 16'hb352;
	#20
	A = 16'hb3ec;
	B = 16'h3477;
	ans = 16'h2808;
	#20
	A = 16'h239d;
	B = 16'h3b7d;
	ans = 16'h3b9b;
	#20
	A = 16'hb7e4;
	B = 16'hb768;
	ans = 16'hbba6;
	#20
	A = 16'hb5d5;
	B = 16'hb281;
	ans = 16'hb88b;
	#20
	A = 16'h38c6;
	B = 16'h3868;
	ans = 16'h3c97;
	#20
	A = 16'h34f1;
	B = 16'hb73e;
	ans = 16'hb09a;
	#20
	A = 16'hb980;
	B = 16'hab9b;
	ans = 16'hb9fa;
	#20
	A = 16'hb42d;
	B = 16'h375d;
	ans = 16'h3260;
	#20
	A = 16'h3ace;
	B = 16'hb779;
	ans = 16'h3623;
	#20
	A = 16'hba69;
	B = 16'h31d1;
	ans = 16'hb8f5;
	#20
	A = 16'h214d;
	B = 16'hbb75;
	ans = 16'hbb60;
	#20
	A = 16'hb54b;
	B = 16'hb90b;
	ans = 16'hbbb0;
	#20
	A = 16'hb039;
	B = 16'ha145;
	ans = 16'hb08d;
	#20
	A = 16'h356e;
	B = 16'hbb05;
	ans = 16'hb84e;
	#20
	A = 16'h38a2;
	B = 16'h2f4a;
	ans = 16'h398b;
	#20
	A = 16'h3bb2;
	B = 16'hb9c4;
	ans = 16'h33b8;
	#20
	A = 16'hb28d;
	B = 16'hb8bb;
	ans = 16'hba5e;
	#20
	A = 16'hb8d4;
	B = 16'hbb09;
	ans = 16'hbdee;
	#20
	A = 16'hb527;
	B = 16'hb80b;
	ans = 16'hba9e;
	#20
	A = 16'hbae2;
	B = 16'hb96d;
	ans = 16'hbe28;
	#20
	A = 16'h35e8;
	B = 16'h387b;
	ans = 16'h3b6f;
	#20
	A = 16'h33eb;
	B = 16'hba8a;
	ans = 16'hb88f;
	#20
	A = 16'hb581;
	B = 16'hb852;
	ans = 16'hbb12;
	#20
	A = 16'h3905;
	B = 16'h33b6;
	ans = 16'h3af2;
	#20
	A = 16'h2df4;
	B = 16'hbae2;
	ans = 16'hba24;
	#20
	A = 16'h3a5a;
	B = 16'hbaf4;
	ans = 16'hacd0;
	#20
	A = 16'h38fc;
	B = 16'hb7b8;
	ans = 16'h3080;
	#20
	A = 16'h315f;
	B = 16'hbbed;
	ans = 16'hba95;
	#20
	A = 16'hafe3;
	B = 16'hbac1;
	ans = 16'hbbbd;
	#20
	A = 16'hb9db;
	B = 16'h3a50;
	ans = 16'h2b50;
	#20
	A = 16'hb86b;
	B = 16'h3a61;
	ans = 16'h33d8;
	#20
	A = 16'h34b5;
	B = 16'h3aba;
	ans = 16'h3c8a;
	#20
	A = 16'ha62b;
	B = 16'hb5f5;
	ans = 16'hb658;
	#20
	A = 16'hb6b6;
	B = 16'hbbda;
	ans = 16'hbd9a;
	#20
	A = 16'h32e8;
	B = 16'hb95d;
	ans = 16'hb746;
	#20
	A = 16'haf51;
	B = 16'h282f;
	ans = 16'had3a;
	#20
	A = 16'hba9a;
	B = 16'h34dc;
	ans = 16'hb82c;
	#20
	A = 16'h2ff4;
	B = 16'hb5cd;
	ans = 16'hb3a0;
	#20
	A = 16'hb947;
	B = 16'h3b90;
	ans = 16'h3492;
	#20
	A = 16'hb630;
	B = 16'hb0f0;
	ans = 16'hb854;
	#20
	A = 16'hb8a4;
	B = 16'h28a4;
	ans = 16'hb85a;
	#20
	A = 16'h3ab2;
	B = 16'h3358;
	ans = 16'h3c44;
	#20
	A = 16'hb4dd;
	B = 16'hbb14;
	ans = 16'hbcc1;
	#20
	A = 16'h3095;
	B = 16'hb6d2;
	ans = 16'hb488;
	#20
	A = 16'hb9c0;
	B = 16'ha0c0;
	ans = 16'hb9d3;
	#20
	A = 16'hb007;
	B = 16'h3347;
	ans = 16'h2e80;
	#20
	A = 16'hb801;
	B = 16'h3bc3;
	ans = 16'h3784;
	#20
	A = 16'haf2d;
	B = 16'h2c5c;
	ans = 16'ha9a2;
	#20
	A = 16'h332f;
	B = 16'h3842;
	ans = 16'h3a0e;
	#20
	A = 16'hb67b;
	B = 16'h3bdf;
	ans = 16'h38a2;
	#20
	A = 16'hbaa3;
	B = 16'h38cb;
	ans = 16'hb360;
	#20
	A = 16'h3546;
	B = 16'hafcc;
	ans = 16'h32a6;
	#20
	A = 16'h32cd;
	B = 16'hb6f8;
	ans = 16'hb323;
	#20
	A = 16'hb829;
	B = 16'h2f63;
	ans = 16'hb679;
	#20
	A = 16'h3b1b;
	B = 16'h3602;
	ans = 16'h3d0e;
	#20
	A = 16'h3bac;
	B = 16'hb947;
	ans = 16'h34ca;
	#20
	A = 16'hbb68;
	B = 16'hbbd8;
	ans = 16'hbfa0;
	#20
	A = 16'hb80c;
	B = 16'hb3b6;
	ans = 16'hb9fa;
	#20
	A = 16'hac0d;
	B = 16'hb97c;
	ans = 16'hb9fe;
	#20
	A = 16'h38f7;
	B = 16'hb2f7;
	ans = 16'h3672;
	#20
	A = 16'hb960;
	B = 16'hb47d;
	ans = 16'hbb9e;
	#20
	A = 16'hb20a;
	B = 16'h3794;
	ans = 16'h348f;
	#20
	A = 16'h3ae9;
	B = 16'h3b5a;
	ans = 16'h3f22;
	#20
	A = 16'h2748;
	B = 16'h3932;
	ans = 16'h396c;
	#20
	A = 16'h36c9;
	B = 16'h36ef;
	ans = 16'h3adc;
	#20
	A = 16'hb947;
	B = 16'hb9ce;
	ans = 16'hbd8a;
	#20
	A = 16'hba7e;
	B = 16'h3aa3;
	ans = 16'h24a0;
	#20
	A = 16'hb043;
	B = 16'hb7f6;
	ans = 16'hb90c;
	#20
	A = 16'hba54;
	B = 16'h366d;
	ans = 16'hb63b;
	#20
	A = 16'h3a97;
	B = 16'hbbe4;
	ans = 16'hb134;
	#20
	A = 16'hb769;
	B = 16'hbadf;
	ans = 16'hbd4a;
	#20
	A = 16'h2556;
	B = 16'hb913;
	ans = 16'hb8e8;
	#20
	A = 16'hab30;
	B = 16'hbaba;
	ans = 16'hbb2d;
	#20
	A = 16'hb752;
	B = 16'ha6e8;
	ans = 16'hb7c0;
	#20
	A = 16'h3770;
	B = 16'hbb31;
	ans = 16'hb6f2;
	#20
	A = 16'hb92e;
	B = 16'h30f7;
	ans = 16'hb7e0;
	#20
	A = 16'hb509;
	B = 16'hb7df;
	ans = 16'hba74;
	#20
	A = 16'h380a;
	B = 16'h3b06;
	ans = 16'h3d88;
	#20
	A = 16'hb8c0;
	B = 16'h38ea;
	ans = 16'h2540;
	#20
	A = 16'hbb50;
	B = 16'hbb29;
	ans = 16'hbf3c;
	#20
	A = 16'hb950;
	B = 16'h3baf;
	ans = 16'h34be;
	#20
	A = 16'hb5cb;
	B = 16'hac32;
	ans = 16'hb6d8;
	#20
	A = 16'hac1e;
	B = 16'h3216;
	ans = 16'h3007;
	#20
	A = 16'hb8a6;
	B = 16'h38c0;
	ans = 16'h2280;
	#20
	A = 16'h36ed;
	B = 16'ha854;
	ans = 16'h3662;
	#20
	A = 16'hb9eb;
	B = 16'h39ea;
	ans = 16'h9000;
	#20
	A = 16'hb240;
	B = 16'h3842;
	ans = 16'h3564;
	#20
	A = 16'hb3ff;
	B = 16'hb845;
	ans = 16'hba45;
	#20
	A = 16'hb6ee;
	B = 16'hb0c5;
	ans = 16'hb8a8;
	#20
	A = 16'h3554;
	B = 16'h2bd7;
	ans = 16'h364f;
	#20
	A = 16'h38a3;
	B = 16'h3afb;
	ans = 16'h3dcf;
	#20
	A = 16'hba4c;
	B = 16'h2fcf;
	ans = 16'hb952;
	#20
	A = 16'h3b64;
	B = 16'h370e;
	ans = 16'h3d76;
	#20
	A = 16'haf40;
	B = 16'h3a00;
	ans = 16'h3918;
	#20
	A = 16'h3792;
	B = 16'hb6dc;
	ans = 16'h29b0;
	#20
	A = 16'h3b52;
	B = 16'hb864;
	ans = 16'h35dc;
	#20
	A = 16'h36a0;
	B = 16'h3a68;
	ans = 16'h3cdc;
	#20
	A = 16'h3956;
	B = 16'hb8fb;
	ans = 16'h29b0;
	#20
	A = 16'hbbe7;
	B = 16'hba72;
	ans = 16'hbf2c;
	#20
	A = 16'h3455;
	B = 16'hb857;
	ans = 16'hb459;
	#20
	A = 16'hb8ae;
	B = 16'hbbe7;
	ans = 16'hbe4a;
	#20
	A = 16'hb9c1;
	B = 16'h22f5;
	ans = 16'hb9a5;
	#20
	A = 16'hb08c;
	B = 16'h35d2;
	ans = 16'h3318;
	#20
	A = 16'hb890;
	B = 16'hb6ba;
	ans = 16'hbbed;
	#20
	A = 16'h351d;
	B = 16'h3518;
	ans = 16'h391a;
	#20
	A = 16'hb949;
	B = 16'hb998;
	ans = 16'hbd70;
	#20
	A = 16'h3156;
	B = 16'ha4f6;
	ans = 16'h30b7;
	#20
	A = 16'h3b74;
	B = 16'hb9e5;
	ans = 16'h323c;
	#20
	A = 16'h37be;
	B = 16'hbb34;
	ans = 16'hb6aa;
	#20
	A = 16'ha525;
	B = 16'hbac9;
	ans = 16'hbaf2;
	#20
	A = 16'h2de2;
	B = 16'hb36a;
	ans = 16'hb079;
	#20
	A = 16'h3adf;
	B = 16'h3aed;
	ans = 16'h3ee6;
	#20
	A = 16'h3b39;
	B = 16'h38bf;
	ans = 16'h3dfc;
	#20
	A = 16'h2bbb;
	B = 16'h3864;
	ans = 16'h38e0;
	#20
	A = 16'hbb8e;
	B = 16'hab6a;
	ans = 16'hbc02;
	#20
	A = 16'h2e98;
	B = 16'h3be5;
	ans = 16'h3c5c;
	#20
	A = 16'h32e0;
	B = 16'h3b10;
	ans = 16'h3c64;
	#20
	A = 16'hb8b4;
	B = 16'hb873;
	ans = 16'hbc94;
	#20
	A = 16'hb8a5;
	B = 16'hb427;
	ans = 16'hbab8;
	#20
	A = 16'h3980;
	B = 16'h3399;
	ans = 16'h3b66;
	#20
	A = 16'h38ee;
	B = 16'h3322;
	ans = 16'h3ab6;
	#20
	A = 16'hb13c;
	B = 16'h14a6;
	ans = 16'hb133;
	#20
	A = 16'hb838;
	B = 16'h3877;
	ans = 16'h27e0;
	#20
	A = 16'hba72;
	B = 16'h3abf;
	ans = 16'h28d0;
	#20
	A = 16'h3b42;
	B = 16'h390f;
	ans = 16'h3e28;
	#20
	A = 16'hba19;
	B = 16'h3b8c;
	ans = 16'h31cc;
	#20
	A = 16'hb8d3;
	B = 16'hb1c8;
	ans = 16'hba45;
	#20
	A = 16'hb9de;
	B = 16'h3560;
	ans = 16'hb65c;
	#20
	A = 16'hbb8b;
	B = 16'hbb03;
	ans = 16'hbf47;
	#20
	A = 16'hb318;
	B = 16'hba12;
	ans = 16'hbbd8;
	#20
	A = 16'h3b6b;
	B = 16'hb7f1;
	ans = 16'h36e5;
	#20
	A = 16'hbab6;
	B = 16'hbae6;
	ans = 16'hbece;
	#20
	A = 16'h3b14;
	B = 16'hb3dd;
	ans = 16'h391d;
	#20
	A = 16'hb4f6;
	B = 16'h2f06;
	ans = 16'hb269;
	#20
	A = 16'hb4f6;
	B = 16'h30d4;
	ans = 16'hb118;
	#20
	A = 16'hb848;
	B = 16'ha0e7;
	ans = 16'hb85c;
	#20
	A = 16'hbb77;
	B = 16'h2eac;
	ans = 16'hbaa2;
	#20
	A = 16'hb4a0;
	B = 16'hb8cb;
	ans = 16'hbb1b;
	#20
	A = 16'hb7a4;
	B = 16'hb76a;
	ans = 16'hbb87;
	#20
	A = 16'hb9af;
	B = 16'h3014;
	ans = 16'hb8aa;
	#20
	A = 16'h3b90;
	B = 16'h3a8d;
	ans = 16'h3f0e;
	#20
	A = 16'hb569;
	B = 16'h3b13;
	ans = 16'h385e;
	#20
	A = 16'hb317;
	B = 16'hb9ed;
	ans = 16'hbbb3;
	#20
	A = 16'hb26c;
	B = 16'hb415;
	ans = 16'hb74b;
	#20
	A = 16'haa4c;
	B = 16'h3ad2;
	ans = 16'h3a6d;
	#20
	A = 16'h3b17;
	B = 16'hba49;
	ans = 16'h2e70;
	#20
	A = 16'hb925;
	B = 16'hb88e;
	ans = 16'hbcda;
	#20
	A = 16'h2210;
	B = 16'hba58;
	ans = 16'hba40;
	#20
	A = 16'hbb0e;
	B = 16'h36fb;
	ans = 16'hb721;
	#20
	A = 16'h38f9;
	B = 16'hb843;
	ans = 16'h2db0;
	#20
	A = 16'ha803;
	B = 16'hbb14;
	ans = 16'hbb54;
	#20
	A = 16'h39aa;
	B = 16'hb92e;
	ans = 16'h2bc0;
	#20
	A = 16'h36cc;
	B = 16'h348c;
	ans = 16'h39ac;
	#20
	A = 16'h3810;
	B = 16'h3aca;
	ans = 16'h3d6d;
	#20
	A = 16'hb734;
	B = 16'h32a5;
	ans = 16'hb3c3;
	#20
	A = 16'haedc;
	B = 16'hb416;
	ans = 16'hb5cd;
	#20
	A = 16'hb996;
	B = 16'h38f6;
	ans = 16'had00;
	#20
	A = 16'hbb5f;
	B = 16'h2ca6;
	ans = 16'hbaca;
	#20
	A = 16'hb9aa;
	B = 16'hb04f;
	ans = 16'hbabe;
	#20
	A = 16'hba24;
	B = 16'hb92b;
	ans = 16'hbda8;
	#20
	A = 16'h395b;
	B = 16'h39ea;
	ans = 16'h3da2;
	#20
	A = 16'hb4e8;
	B = 16'hb478;
	ans = 16'hb8b0;
	#20
	A = 16'hbb77;
	B = 16'hb48d;
	ans = 16'hbcdf;
	#20
	A = 16'hb2b7;
	B = 16'h347d;
	ans = 16'h2c86;
	#20
	A = 16'hb972;
	B = 16'h364b;
	ans = 16'hb499;
	#20
	A = 16'hb124;
	B = 16'h3b40;
	ans = 16'h39f7;
	#20
	A = 16'h330f;
	B = 16'h3a27;
	ans = 16'h3beb;
	#20
	A = 16'hb95d;
	B = 16'h39e8;
	ans = 16'h2c58;
	#20
	A = 16'hb6b6;
	B = 16'h3b88;
	ans = 16'h382d;
	#20
	A = 16'h38c9;
	B = 16'hb7b3;
	ans = 16'h2f7c;
	#20
	A = 16'h3110;
	B = 16'h3b84;
	ans = 16'h3c64;
	#20
	A = 16'h391a;
	B = 16'h39d8;
	ans = 16'h3d79;
	#20
	A = 16'hb33d;
	B = 16'h296a;
	ans = 16'hb1e2;
	#20
	A = 16'h3928;
	B = 16'hbbce;
	ans = 16'hb54c;
	#20
	A = 16'h333d;
	B = 16'hb697;
	ans = 16'hb1f1;
	#20
	A = 16'h298d;
	B = 16'h38aa;
	ans = 16'h3903;
	#20
	A = 16'hb5df;
	B = 16'hbabb;
	ans = 16'hbcd5;
	#20
	A = 16'hb7f1;
	B = 16'h392b;
	ans = 16'h30ca;
	#20
	A = 16'hb994;
	B = 16'h3a7b;
	ans = 16'h2f38;
	#20
	A = 16'hbab3;
	B = 16'hb3e1;
	ans = 16'hbc56;
	#20
	A = 16'hb86c;
	B = 16'hb974;
	ans = 16'hbcf0;
	#20
	A = 16'hb966;
	B = 16'hb95b;
	ans = 16'hbd60;
	#20
	A = 16'hb9e1;
	B = 16'hac36;
	ans = 16'hba68;
	#20
	A = 16'h39bf;
	B = 16'hb048;
	ans = 16'h38ad;
	#20
	A = 16'h3937;
	B = 16'hab15;
	ans = 16'h38c6;
	#20
	A = 16'hbbe7;
	B = 16'h3a84;
	ans = 16'hb18c;
	#20
	A = 16'hb480;
	B = 16'hbb6d;
	ans = 16'hbcd6;
	#20
	A = 16'hb0fa;
	B = 16'h35db;
	ans = 16'h32bc;
	#20
	A = 16'hb5b4;
	B = 16'h3189;
	ans = 16'hb1df;
	#20
	A = 16'hbbc0;
	B = 16'hb938;
	ans = 16'hbe7c;
	#20
	A = 16'h366d;
	B = 16'hb5ac;
	ans = 16'h2a08;
	#20
	A = 16'hb5b5;
	B = 16'hbb9f;
	ans = 16'hbd3d;
	#20
	A = 16'ha7cc;
	B = 16'h3831;
	ans = 16'h37e5;
	#20
	A = 16'hb9a1;
	B = 16'hb8e1;
	ans = 16'hbd41;
	#20
	A = 16'hada4;
	B = 16'h36f4;
	ans = 16'h358b;
	#20
	A = 16'hbaf4;
	B = 16'haab1;
	ans = 16'hbb5f;
	#20
	A = 16'h2c1a;
	B = 16'hb8a3;
	ans = 16'hb820;
	#20
	A = 16'hbad4;
	B = 16'hbb4c;
	ans = 16'hbf10;
	#20
	A = 16'hadde;
	B = 16'hb894;
	ans = 16'hb950;
	#20
	A = 16'hb1ee;
	B = 16'hb5a7;
	ans = 16'hb84f;
	#20
	A = 16'hb8a0;
	B = 16'hb79c;
	ans = 16'hbc37;
	#20
	A = 16'h3ada;
	B = 16'h35cc;
	ans = 16'h3ce0;
	#20
	A = 16'hba09;
	B = 16'hb187;
	ans = 16'hbb6b;
	#20
	A = 16'hbab3;
	B = 16'h3aee;
	ans = 16'h2760;
	#20
	A = 16'hb46e;
	B = 16'h3964;
	ans = 16'h365a;
	#20
	A = 16'h3872;
	B = 16'ha6a9;
	ans = 16'h383d;
	#20
	A = 16'hb5c9;
	B = 16'hb6ac;
	ans = 16'hba3a;
	#20
	A = 16'h3a88;
	B = 16'hb684;
	ans = 16'h368c;
	#20
	A = 16'h39f1;
	B = 16'h3409;
	ans = 16'h3bf6;
	#20
	A = 16'hb4ff;
	B = 16'h35dd;
	ans = 16'h2af0;
	#20
	A = 16'hbafc;
	B = 16'hb923;
	ans = 16'hbe10;
	#20
	A = 16'h39c2;
	B = 16'h364a;
	ans = 16'h3c74;
	#20
	A = 16'hb735;
	B = 16'h34e4;
	ans = 16'hb0a2;
	#20
	A = 16'h382c;
	B = 16'hbac2;
	ans = 16'hb52c;
	#20
	A = 16'h2c85;
	B = 16'h3886;
	ans = 16'h3917;
	#20
	A = 16'h398f;
	B = 16'hb9f7;
	ans = 16'haa80;
	#20
	A = 16'h3732;
	B = 16'hb8f1;
	ans = 16'hb160;
	#20
	A = 16'h3b4c;
	B = 16'h317c;
	ans = 16'h3c56;
	#20
	A = 16'h35f0;
	B = 16'hbbc9;
	ans = 16'hb8d1;
	#20
	A = 16'h35d9;
	B = 16'h39da;
	ans = 16'h3c63;
	#20
	A = 16'h34b9;
	B = 16'hb596;
	ans = 16'haae8;
	#20
	A = 16'hb751;
	B = 16'h3a5c;
	ans = 16'h3567;
	#20
	A = 16'h3147;
	B = 16'h3427;
	ans = 16'h36ca;
	#20
	A = 16'h2828;
	B = 16'h318d;
	ans = 16'h3297;
	#20
	A = 16'h39af;
	B = 16'h3547;
	ans = 16'h3c29;
	#20
	A = 16'hb51c;
	B = 16'hb4f8;
	ans = 16'hb90a;
	#20
	A = 16'hbb07;
	B = 16'hbbfc;
	ans = 16'hbf82;
	#20
	A = 16'h30cf;
	B = 16'h3959;
	ans = 16'h3a8d;
	#20
	A = 16'hb494;
	B = 16'h3ac6;
	ans = 16'h387c;
	#20
	A = 16'h3427;
	B = 16'h34aa;
	ans = 16'h3868;
	#20
	A = 16'hbac4;
	B = 16'h39f8;
	ans = 16'hae60;
	#20
	A = 16'h2585;
	B = 16'h3ab9;
	ans = 16'h3ae5;
	#20
	A = 16'hbb0d;
	B = 16'h363b;
	ans = 16'hb7df;
	#20
	A = 16'hb3e1;
	B = 16'h39a7;
	ans = 16'h375e;
	#20
	A = 16'hbb94;
	B = 16'hafd5;
	ans = 16'hbc47;
	#20
	A = 16'h37c1;
	B = 16'hbace;
	ans = 16'hb5db;
	#20
	A = 16'hb420;
	B = 16'hbac8;
	ans = 16'hbc6c;
	#20
	A = 16'hbba9;
	B = 16'h3269;
	ans = 16'hba0f;
	#20
	A = 16'hbba5;
	B = 16'hbb67;
	ans = 16'hbf86;
	#20
	A = 16'h3bbc;
	B = 16'hbacb;
	ans = 16'h2f88;
	#20
	A = 16'h3aab;
	B = 16'h38c4;
	ans = 16'h3db8;
	#20
	A = 16'hba12;
	B = 16'hae78;
	ans = 16'hbae1;
	#20
	A = 16'h3b8c;
	B = 16'h3a70;
	ans = 16'h3efe;
	#20
	A = 16'hb443;
	B = 16'hb956;
	ans = 16'hbb78;
	#20
	A = 16'hacfc;
	B = 16'hb84b;
	ans = 16'hb8ea;
	#20
	A = 16'hba68;
	B = 16'hb4e2;
	ans = 16'hbc6c;
	#20
	A = 16'hb919;
	B = 16'hb69f;
	ans = 16'hbc34;
	#20
	A = 16'h3a32;
	B = 16'h398b;
	ans = 16'h3dde;
	#20
	A = 16'h3824;
	B = 16'h3b09;
	ans = 16'h3d96;
	#20
	A = 16'h34e2;
	B = 16'hbac9;
	ans = 16'hb858;
	#20
	A = 16'h399b;
	B = 16'hbbc5;
	ans = 16'hb454;
	#20
	A = 16'h3b7c;
	B = 16'h39df;
	ans = 16'h3eae;
	#20
	A = 16'h2355;
	B = 16'hb85e;
	ans = 16'hb841;
	#20
	A = 16'h356e;
	B = 16'h380b;
	ans = 16'h3ac2;
	#20
	A = 16'h3b3f;
	B = 16'ha40b;
	ans = 16'h3b1f;
	#20
	A = 16'h36b4;
	B = 16'hbbae;
	ans = 16'hb854;
	#20
	A = 16'hba3d;
	B = 16'hb488;
	ans = 16'hbc40;
	#20
	A = 16'h2aba;
	B = 16'hba98;
	ans = 16'hba2c;
	#20
	A = 16'h39f2;
	B = 16'hb29d;
	ans = 16'h384b;
	#20
	A = 16'h3936;
	B = 16'h3412;
	ans = 16'h3b3f;
	#20
	A = 16'hba4e;
	B = 16'hb7b7;
	ans = 16'hbd15;
	#20
	A = 16'h3a72;
	B = 16'h3a6e;
	ans = 16'h3e70;
	#20
	A = 16'h3980;
	B = 16'hb081;
	ans = 16'h3860;
	#20
	A = 16'h3af4;
	B = 16'haebc;
	ans = 16'h3a1c;
	#20
	A = 16'h3afa;
	B = 16'hb508;
	ans = 16'h3876;
	#20
	A = 16'hb951;
	B = 16'h38d4;
	ans = 16'habd0;
	#20
	A = 16'h3a3b;
	B = 16'hb9c7;
	ans = 16'h2b40;
	#20
	A = 16'haed0;
	B = 16'h351e;
	ans = 16'h32d4;
	#20
	A = 16'hb756;
	B = 16'h3b48;
	ans = 16'h373a;
	#20
	A = 16'h399b;
	B = 16'h388f;
	ans = 16'h3d15;
	#20
	A = 16'h36a4;
	B = 16'h34c5;
	ans = 16'h39b4;
	#20
	A = 16'h2d72;
	B = 16'hb81f;
	ans = 16'hb6e2;
	#20
	A = 16'hbbfa;
	B = 16'hb8ec;
	ans = 16'hbe73;
	#20
	A = 16'h32ce;
	B = 16'h3ba8;
	ans = 16'h3cae;
	#20
	A = 16'hba42;
	B = 16'hb5bd;
	ans = 16'hbc90;
	#20
	A = 16'hb9e2;
	B = 16'h3b30;
	ans = 16'h3138;
	#20
	A = 16'h3735;
	B = 16'hb540;
	ans = 16'h2fd4;
	#20
	A = 16'hb28d;
	B = 16'hb336;
	ans = 16'hb6e2;
	#20
	A = 16'h3a8e;
	B = 16'hb9f3;
	ans = 16'h2cd8;
	#20
	A = 16'hb02c;
	B = 16'h2e5a;
	ans = 16'ha7f8;
	#20
	A = 16'h39fd;
	B = 16'hb466;
	ans = 16'h3794;
	#20
	A = 16'h2efb;
	B = 16'h1fc8;
	ans = 16'h2f78;
	#20
	A = 16'hb72d;
	B = 16'h3bd1;
	ans = 16'h383a;
	#20
	A = 16'h384c;
	B = 16'hbb9b;
	ans = 16'hb69e;
	#20
	A = 16'h3b05;
	B = 16'hae18;
	ans = 16'h3a42;
	#20
	A = 16'h3ae3;
	B = 16'hbb11;
	ans = 16'ha5c0;
	#20
	A = 16'haef8;
	B = 16'h3938;
	ans = 16'h3859;
	#20
	A = 16'h3afa;
	B = 16'h39a6;
	ans = 16'h3e50;
	#20
	A = 16'h3262;
	B = 16'h31ed;
	ans = 16'h3628;
	#20
	A = 16'haf4a;
	B = 16'h3865;
	ans = 16'h36f8;
	#20
	A = 16'hb8f6;
	B = 16'hba62;
	ans = 16'hbdac;
	#20
	A = 16'hbad2;
	B = 16'h34af;
	ans = 16'hb87a;
	#20
	A = 16'h1caa;
	B = 16'h38c7;
	ans = 16'h38d0;
	#20
	A = 16'h38a3;
	B = 16'h39ab;
	ans = 16'h3d27;
	#20
	A = 16'h352c;
	B = 16'hb1c9;
	ans = 16'h308f;
	#20
	A = 16'hb4a8;
	B = 16'hb8c5;
	ans = 16'hbb19;
	#20
	A = 16'h280f;
	B = 16'had27;
	ans = 16'haa3f;
	#20
	A = 16'hbaee;
	B = 16'h3b5c;
	ans = 16'h2ae0;
	#20
	A = 16'h31b1;
	B = 16'h35f7;
	ans = 16'h3868;
	#20
	A = 16'hb946;
	B = 16'h3849;
	ans = 16'hafe8;
	#20
	A = 16'hbadb;
	B = 16'h37d6;
	ans = 16'hb5e0;
	#20
	A = 16'h3b67;
	B = 16'h2d7f;
	ans = 16'h3c0b;
	#20
	A = 16'hbbf5;
	B = 16'hba69;
	ans = 16'hbf2f;
	#20
	A = 16'hb1cd;
	B = 16'h3b64;
	ans = 16'h39f1;
	#20
	A = 16'hbbc9;
	B = 16'h3aaa;
	ans = 16'hb07c;
	#20
	A = 16'hb9a7;
	B = 16'hb78a;
	ans = 16'hbcb6;
	#20
	A = 16'h3a5a;
	B = 16'hbb0f;
	ans = 16'hada8;
	#20
	A = 16'h38af;
	B = 16'hbab1;
	ans = 16'hb404;
	#20
	A = 16'hbbf0;
	B = 16'hb810;
	ans = 16'hbe00;
	#20
	A = 16'hb902;
	B = 16'hb90e;
	ans = 16'hbd08;
	#20
	A = 16'hb860;
	B = 16'h34ef;
	ans = 16'hb3a2;
	#20
	A = 16'hbbad;
	B = 16'hb3c3;
	ans = 16'hbccf;
	#20
	A = 16'hba80;
	B = 16'h23ee;
	ans = 16'hba60;
	#20
	A = 16'haf96;
	B = 16'h3a35;
	ans = 16'h3942;
	#20
	A = 16'h3875;
	B = 16'had75;
	ans = 16'h378d;
	#20
	A = 16'hb46e;
	B = 16'hb337;
	ans = 16'hb805;
	#20
	A = 16'h2b3b;
	B = 16'hb4ec;
	ans = 16'hb405;
	#20
	A = 16'hb1de;
	B = 16'hb99e;
	ans = 16'hbb16;
	#20
	A = 16'h3b25;
	B = 16'h362b;
	ans = 16'h3d1d;
	#20
	A = 16'h3b2f;
	B = 16'hbbbd;
	ans = 16'hac70;
	#20
	A = 16'h3b2e;
	B = 16'hb55f;
	ans = 16'h387e;
	#20
	A = 16'h3a8e;
	B = 16'h3856;
	ans = 16'h3d72;
	#20
	A = 16'h3420;
	B = 16'h38e7;
	ans = 16'h3af7;
	#20
	A = 16'hb5a3;
	B = 16'h3a15;
	ans = 16'h3687;
	#20
	A = 16'h3aa6;
	B = 16'h3a3c;
	ans = 16'h3e71;
	#20
	A = 16'hb2d2;
	B = 16'hb69c;
	ans = 16'hb902;
	#20
	A = 16'hb90f;
	B = 16'h3726;
	ans = 16'hb1f0;
	#20
	A = 16'hba8d;
	B = 16'h2bc6;
	ans = 16'hba11;
	#20
	A = 16'h38f0;
	B = 16'hb4d0;
	ans = 16'h3510;
	#20
	A = 16'h32d3;
	B = 16'hb941;
	ans = 16'hb718;
	#20
	A = 16'hb9cc;
	B = 16'h30a3;
	ans = 16'hb8a3;
	#20
	A = 16'h302d;
	B = 16'h33fb;
	ans = 16'h3614;
	#20
	A = 16'hb374;
	B = 16'hb895;
	ans = 16'hba72;
	#20
	A = 16'hb2fd;
	B = 16'hb792;
	ans = 16'hb988;
	#20
	A = 16'h2841;
	B = 16'hb962;
	ans = 16'hb91e;
	#20
	A = 16'hbb92;
	B = 16'h3845;
	ans = 16'hb69a;
	#20
	A = 16'h37da;
	B = 16'h3939;
	ans = 16'h3c93;
	#20
	A = 16'h3874;
	B = 16'hb194;
	ans = 16'h361e;
	#20
	A = 16'h2ead;
	B = 16'hba9b;
	ans = 16'hb9c5;
	#20
	A = 16'h389a;
	B = 16'h39cf;
	ans = 16'h3d34;
	#20
	A = 16'hb9d9;
	B = 16'h33cc;
	ans = 16'hb7cc;
	#20
	A = 16'hb85c;
	B = 16'h39d4;
	ans = 16'h31e0;
	#20
	A = 16'hb92d;
	B = 16'h3022;
	ans = 16'hb824;
	#20
	A = 16'hbba1;
	B = 16'hb487;
	ans = 16'hbcf2;
	#20
	A = 16'hb93c;
	B = 16'hb71a;
	ans = 16'hbc64;
	#20
	A = 16'hbafd;
	B = 16'h22f3;
	ans = 16'hbae1;
	#20
	A = 16'hae9d;
	B = 16'hb67a;
	ans = 16'hb811;
	#20
	A = 16'h3bcf;
	B = 16'ha93e;
	ans = 16'h3b7b;
	#20
	A = 16'hba34;
	B = 16'hb06f;
	ans = 16'hbb50;
	#20
	A = 16'h3415;
	B = 16'ha9ac;
	ans = 16'h32bf;
	#20
	A = 16'h3931;
	B = 16'h99ae;
	ans = 16'h392b;
	#20
	A = 16'hb104;
	B = 16'hb6fe;
	ans = 16'hb8c0;
	#20
	A = 16'h3bc8;
	B = 16'h3613;
	ans = 16'h3d69;
	#20
	A = 16'h3371;
	B = 16'hbbef;
	ans = 16'hba13;
	#20
	A = 16'hb8c8;
	B = 16'h37ca;
	ans = 16'haf18;
	#20
	A = 16'hb99f;
	B = 16'h3883;
	ans = 16'hb070;
	#20
	A = 16'ha687;
	B = 16'h3b8f;
	ans = 16'h3b5b;
	#20
	A = 16'h3b45;
	B = 16'hb968;
	ans = 16'h3374;
	#20
	A = 16'hb24e;
	B = 16'h3b0e;
	ans = 16'h397a;
	#20
	A = 16'h3821;
	B = 16'hb8d9;
	ans = 16'hadc0;
	#20
	A = 16'h3bad;
	B = 16'h34a4;
	ans = 16'h3d00;
	#20
	A = 16'hb69a;
	B = 16'hb202;
	ans = 16'hb8ce;
	#20
	A = 16'hb678;
	B = 16'h3bd6;
	ans = 16'h389a;
	#20
	A = 16'h2845;
	B = 16'h34e7;
	ans = 16'h3570;
	#20
	A = 16'h3817;
	B = 16'h3835;
	ans = 16'h3c26;
	#20
	A = 16'h36f1;
	B = 16'hb06a;
	ans = 16'h34bc;
	#20
	A = 16'hba4e;
	B = 16'h3707;
	ans = 16'hb595;
	#20
	A = 16'h2939;
	B = 16'hba7f;
	ans = 16'hba2b;
	#20
	A = 16'hb98e;
	B = 16'hb6a0;
	ans = 16'hbc6f;
	#20
	A = 16'h3b38;
	B = 16'h3b2b;
	ans = 16'h3f32;
	#20
	A = 16'hb058;
	B = 16'hb940;
	ans = 16'hba56;
	#20
	A = 16'h39e5;
	B = 16'hb47e;
	ans = 16'h374c;
	#20
	A = 16'h39c4;
	B = 16'hb60b;
	ans = 16'h357d;
	#20
	A = 16'hbb62;
	B = 16'hb0b8;
	ans = 16'hbc48;
	#20
	A = 16'h3b8d;
	B = 16'hac9b;
	ans = 16'h3afa;
	#20
	A = 16'h3889;
	B = 16'hba69;
	ans = 16'hb380;
	#20
	A = 16'hb164;
	B = 16'h3a74;
	ans = 16'h391b;
	#20
	A = 16'h2ab8;
	B = 16'hb802;
	ans = 16'hb72d;
	#20
	A = 16'h39b1;
	B = 16'hb4d2;
	ans = 16'h3690;
	#20
	A = 16'h38bf;
	B = 16'h35c4;
	ans = 16'h3ba1;
	#20
	A = 16'h39e4;
	B = 16'h32fa;
	ans = 16'h3ba2;
	#20
	A = 16'h31f1;
	B = 16'hb768;
	ans = 16'hb470;
	#20
	A = 16'h370b;
	B = 16'h3a67;
	ans = 16'h3cf6;
	#20
	A = 16'hb531;
	B = 16'haeb8;
	ans = 16'hb6df;
	#20
	A = 16'h356f;
	B = 16'hb40b;
	ans = 16'h2d90;
	#20
	A = 16'h3667;
	B = 16'hb89d;
	ans = 16'hb1a6;
	#20
	A = 16'h35c0;
	B = 16'h38c1;
	ans = 16'h3ba1;
	#20
	A = 16'h3be9;
	B = 16'h387d;
	ans = 16'h3e33;
	#20
	A = 16'hbae1;
	B = 16'hae2f;
	ans = 16'hbba7;
	#20
	A = 16'h2d7c;
	B = 16'h34b0;
	ans = 16'h360f;
	#20
	A = 16'hb0e5;
	B = 16'ha902;
	ans = 16'hb226;
	#20
	A = 16'hb8df;
	B = 16'hba71;
	ans = 16'hbda8;
	#20
	A = 16'hb6d2;
	B = 16'h26a1;
	ans = 16'hb668;
	#20
	A = 16'h3416;
	B = 16'hb4ca;
	ans = 16'ha9a0;
	#20
	A = 16'hb875;
	B = 16'h9cd8;
	ans = 16'hb87f;
	#20
	A = 16'hbaa5;
	B = 16'h3891;
	ans = 16'hb428;
	#20
	A = 16'hb390;
	B = 16'hbbf9;
	ans = 16'hbcee;
	#20
	A = 16'hbb28;
	B = 16'hb0b1;
	ans = 16'hbc2a;
	#20
	A = 16'h3561;
	B = 16'hb836;
	ans = 16'hb216;
	#20
	A = 16'hb70c;
	B = 16'hb1af;
	ans = 16'hb8f2;
	#20
	A = 16'hbaf8;
	B = 16'h3b51;
	ans = 16'h2990;
	#20
	A = 16'hb0d9;
	B = 16'h386a;
	ans = 16'h3668;
	#20
	A = 16'hb8b5;
	B = 16'hbb50;
	ans = 16'hbe02;
	#20
	A = 16'h37cf;
	B = 16'hb724;
	ans = 16'h2958;
	#20
	A = 16'h3b24;
	B = 16'hb614;
	ans = 16'h381a;
	#20
	A = 16'hbb71;
	B = 16'hb985;
	ans = 16'hbe7b;
	#20
	A = 16'h39a2;
	B = 16'hbbd9;
	ans = 16'hb46e;
	#20
	A = 16'h3b71;
	B = 16'hbb2f;
	ans = 16'h2820;
	#20
	A = 16'h9363;
	B = 16'h3759;
	ans = 16'h3755;
	#20
	A = 16'hbb10;
	B = 16'ha097;
	ans = 16'hbb22;
	#20
	A = 16'h3a51;
	B = 16'h34f5;
	ans = 16'h3c66;
	#20
	A = 16'h2bb1;
	B = 16'hb915;
	ans = 16'hb89a;
	#20
	A = 16'hb028;
	B = 16'hba8d;
	ans = 16'hbb97;
	#20
	A = 16'h39ba;
	B = 16'haedc;
	ans = 16'h38de;
	#20
	A = 16'h3b25;
	B = 16'h29f8;
	ans = 16'h3b84;
	#20
	A = 16'h39a4;
	B = 16'h3975;
	ans = 16'h3d8c;
	#20
	A = 16'h3a91;
	B = 16'h33c0;
	ans = 16'h3c40;
	#20
	A = 16'h2f5a;
	B = 16'h34dd;
	ans = 16'h36b4;
	#20
	A = 16'h3a97;
	B = 16'hb241;
	ans = 16'h3907;
	#20
	A = 16'hb828;
	B = 16'hb878;
	ans = 16'hbc50;
	#20
	A = 16'hbbdf;
	B = 16'hb2c4;
	ans = 16'hbcc8;
	#20
	A = 16'h3aa2;
	B = 16'hb353;
	ans = 16'h38cd;
	#20
	A = 16'h382f;
	B = 16'h3bf2;
	ans = 16'h3e10;
	#20
	A = 16'h38b5;
	B = 16'hbbe7;
	ans = 16'hb664;
	#20
	A = 16'ha727;
	B = 16'h2ccc;
	ans = 16'h2a04;
	#20
	A = 16'hbbce;
	B = 16'hbb6a;
	ans = 16'hbf9c;
	#20
	A = 16'ha68d;
	B = 16'ha0e0;
	ans = 16'ha87e;
	#20
	A = 16'haba4;
	B = 16'hba68;
	ans = 16'hbae2;
	#20
	A = 16'h3625;
	B = 16'h31ae;
	ans = 16'h387e;
	#20
	A = 16'haf30;
	B = 16'h1c03;
	ans = 16'haef0;
	#20
	A = 16'hb802;
	B = 16'h396c;
	ans = 16'h31a8;
	#20
	A = 16'ha8b7;
	B = 16'hba72;
	ans = 16'hbabd;
	#20
	A = 16'hbb44;
	B = 16'h24f8;
	ans = 16'hbb1c;
	#20
	A = 16'h24c3;
	B = 16'hbb2e;
	ans = 16'hbb08;
	#20
	A = 16'hb8ae;
	B = 16'hbaf5;
	ans = 16'hbdd2;
	#20
	A = 16'hb79e;
	B = 16'h3127;
	ans = 16'hb50a;
	#20
	A = 16'hb990;
	B = 16'hba00;
	ans = 16'hbdc8;
	#20
	A = 16'h2c1d;
	B = 16'hb574;
	ans = 16'hb46d;
	#20
	A = 16'h244a;
	B = 16'hb3ce;
	ans = 16'hb345;
	#20
	A = 16'hbaf5;
	B = 16'h3547;
	ans = 16'hb852;
	#20
	A = 16'h3ae6;
	B = 16'h8cb5;
	ans = 16'h3ae5;
	#20
	A = 16'hb9d7;
	B = 16'h351f;
	ans = 16'hb68f;
	#20
	A = 16'ha962;
	B = 16'hba66;
	ans = 16'hbabc;
	#20
	A = 16'hb558;
	B = 16'hb9cb;
	ans = 16'hbc3c;
	#20
	A = 16'h25e5;
	B = 16'hb70a;
	ans = 16'hb6ac;
	#20
	A = 16'h323b;
	B = 16'hba6a;
	ans = 16'hb8db;
	#20
	A = 16'h38f3;
	B = 16'h3321;
	ans = 16'h3abb;
	#20
	A = 16'habb3;
	B = 16'h378b;
	ans = 16'h3695;
	#20
	A = 16'h3a29;
	B = 16'h3ac6;
	ans = 16'h3e78;
	#20
	A = 16'hb780;
	B = 16'hbb6b;
	ans = 16'hbd96;
	#20
	A = 16'hba7c;
	B = 16'hbb6a;
	ans = 16'hbef3;
	#20
	A = 16'h3ad2;
	B = 16'hb993;
	ans = 16'h30fc;
	#20
	A = 16'hb813;
	B = 16'hbbd4;
	ans = 16'hbdf4;
	#20
	A = 16'haf7d;
	B = 16'h3a4e;
	ans = 16'h395e;
	#20
	A = 16'h302e;
	B = 16'hba2e;
	ans = 16'hb922;
	#20
	A = 16'h3bc1;
	B = 16'hbbb7;
	ans = 16'h1d00;
	#20
	A = 16'h3472;
	B = 16'hbafc;
	ans = 16'hb8c3;
	#20
	A = 16'h3b2c;
	B = 16'h2d43;
	ans = 16'h3bd4;
	#20
	A = 16'ha7fe;
	B = 16'haf0c;
	ans = 16'hb086;
	#20
	A = 16'h391c;
	B = 16'hb90c;
	ans = 16'h2000;
	#20
	A = 16'hba74;
	B = 16'h296a;
	ans = 16'hba1d;
	#20
	A = 16'h3a50;
	B = 16'h3b34;
	ans = 16'h3ec2;
	#20
	A = 16'h3abd;
	B = 16'h3131;
	ans = 16'h3c05;
	#20
	A = 16'hb93e;
	B = 16'hbbcc;
	ans = 16'hbe85;
	#20
	A = 16'haa84;
	B = 16'hb64c;
	ans = 16'hb71c;
	#20
	A = 16'h3a97;
	B = 16'h354f;
	ans = 16'h3c9f;
	#20
	A = 16'h33da;
	B = 16'h3207;
	ans = 16'h36f0;
	#20
	A = 16'h3274;
	B = 16'h3923;
	ans = 16'h3ac0;
	#20
	A = 16'h390a;
	B = 16'hb6b5;
	ans = 16'h32be;
	#20
	A = 16'hb945;
	B = 16'h3af7;
	ans = 16'h32c8;
	#20
	A = 16'h3518;
	B = 16'hbafa;
	ans = 16'hb86e;
	#20
	A = 16'hb717;
	B = 16'h3465;
	ans = 16'hb164;
	#20
	A = 16'hbb54;
	B = 16'h2ced;
	ans = 16'hbab6;
	#20
	A = 16'h31cd;
	B = 16'hb8fa;
	ans = 16'hb70e;
	#20
	A = 16'h36ff;
	B = 16'h3866;
	ans = 16'h3be6;
	#20
	A = 16'hbb2d;
	B = 16'hbb3d;
	ans = 16'hbf35;
	#20
	A = 16'hb63f;
	B = 16'h390a;
	ans = 16'h33aa;
	#20
	A = 16'hbb8a;
	B = 16'h3951;
	ans = 16'hb472;
	#20
	A = 16'hb860;
	B = 16'h36cb;
	ans = 16'hafd4;
	#20
	A = 16'h2805;
	B = 16'hb444;
	ans = 16'hb387;
	#20
	A = 16'hbacf;
	B = 16'hb637;
	ans = 16'hbcf5;
	#20
	A = 16'ha8fd;
	B = 16'hb902;
	ans = 16'hb952;
	#20
	A = 16'h3a79;
	B = 16'h36d7;
	ans = 16'h3cf2;
	#20
	A = 16'h2c8f;
	B = 16'h3a1a;
	ans = 16'h3aac;
	#20
	A = 16'hb47f;
	B = 16'hba81;
	ans = 16'hbc60;
	#20
	A = 16'hb620;
	B = 16'h37ff;
	ans = 16'h2f7c;
	#20
	A = 16'h3aab;
	B = 16'hb8b5;
	ans = 16'h33d8;
	#20
	A = 16'hbbfc;
	B = 16'hb33c;
	ans = 16'hbce6;
	#20
	A = 16'ha596;
	B = 16'hbb10;
	ans = 16'hbb3d;
	#20
	A = 16'h3058;
	B = 16'h3490;
	ans = 16'h36bc;
	#20
	A = 16'h3401;
	B = 16'hb816;
	ans = 16'hb42b;
	#20
	A = 16'h3bdc;
	B = 16'hb299;
	ans = 16'h3a36;
	#20
	A = 16'hbb3c;
	B = 16'h3b1f;
	ans = 16'ha340;
	#20
	A = 16'h39c0;
	B = 16'hbad0;
	ans = 16'hb040;
	#20
	A = 16'h32d5;
	B = 16'hb0b2;
	ans = 16'h2c46;
	#20
	A = 16'h3544;
	B = 16'hb217;
	ans = 16'h3071;
	#20
	A = 16'h3766;
	B = 16'hbb4e;
	ans = 16'hb736;
	#20
	A = 16'hb4e8;
	B = 16'hb96e;
	ans = 16'hbbe2;
	#20
	A = 16'hb606;
	B = 16'hab09;
	ans = 16'hb6e7;
	#20
	A = 16'h3998;
	B = 16'h2440;
	ans = 16'h39ba;
	#20
	A = 16'hba08;
	B = 16'h2ae4;
	ans = 16'hb99a;
	#20
	A = 16'h3a7a;
	B = 16'h393b;
	ans = 16'h3dda;
	#20
	A = 16'h3797;
	B = 16'h3073;
	ans = 16'h38e8;
	#20
	A = 16'h3214;
	B = 16'hbb88;
	ans = 16'hba03;
	#20
	A = 16'h3b11;
	B = 16'hb80c;
	ans = 16'h360a;
	#20
	A = 16'hbba9;
	B = 16'hbacb;
	ans = 16'hbf3a;
	#20
	A = 16'hbbb8;
	B = 16'hb88c;
	ans = 16'hbe22;
	#20
	A = 16'hbbd0;
	B = 16'hb91a;
	ans = 16'hbe75;
	#20
	A = 16'hbafa;
	B = 16'hb561;
	ans = 16'hbcd5;
	#20
	A = 16'h3b7c;
	B = 16'hb897;
	ans = 16'h35ca;
	#20
	A = 16'hb88b;
	B = 16'h3bbc;
	ans = 16'h3662;
	#20
	A = 16'hb63e;
	B = 16'h38e4;
	ans = 16'h3314;
	#20
	A = 16'h323b;
	B = 16'hadba;
	ans = 16'h2ebc;
	#20
	A = 16'h3835;
	B = 16'hb612;
	ans = 16'h30b0;
	#20
	A = 16'hb700;
	B = 16'h3967;
	ans = 16'h339c;
	#20
	A = 16'h3b93;
	B = 16'hb79b;
	ans = 16'h378b;
	#20
	A = 16'hb675;
	B = 16'hba83;
	ans = 16'hbcdf;
	#20
	A = 16'hb7d7;
	B = 16'hb785;
	ans = 16'hbbae;
	#20
	A = 16'h2d67;
	B = 16'hb90c;
	ans = 16'hb85f;
	#20
	A = 16'h3612;
	B = 16'h3b65;
	ans = 16'h3d37;
	#20
	A = 16'hb424;
	B = 16'hb4e2;
	ans = 16'hb883;
	#20
	A = 16'h34f4;
	B = 16'hb956;
	ans = 16'hb5b8;
	#20
	A = 16'hb845;
	B = 16'hbb08;
	ans = 16'hbda6;
	#20
	A = 16'h3560;
	B = 16'h28df;
	ans = 16'h35fc;
	#20
	A = 16'h342b;
	B = 16'hbaab;
	ans = 16'hb896;
	#20
	A = 16'haf31;
	B = 16'hb36c;
	ans = 16'hb582;
	#20
	A = 16'h3a90;
	B = 16'h3a69;
	ans = 16'h3e7c;
	#20
	A = 16'hbb6a;
	B = 16'h357e;
	ans = 16'hb8ab;
	#20
	A = 16'h354f;
	B = 16'h29d4;
	ans = 16'h360a;
	#20
	A = 16'hb2fc;
	B = 16'ha4c1;
	ans = 16'hb394;
	#20
	A = 16'h35aa;
	B = 16'hb880;
	ans = 16'hb2ac;
	#20
	A = 16'hb671;
	B = 16'habf9;
	ans = 16'hb770;
	#20
	A = 16'hb8ce;
	B = 16'h3a6e;
	ans = 16'h3280;
	#20
	A = 16'h38e6;
	B = 16'h36c5;
	ans = 16'h3c24;
	#20
	A = 16'hb8cc;
	B = 16'hb726;
	ans = 16'hbc30;
	#20
	A = 16'h3abf;
	B = 16'hb8e7;
	ans = 16'h3360;
	#20
	A = 16'hb6ef;
	B = 16'h39b7;
	ans = 16'h347f;
	#20
	A = 16'h3200;
	B = 16'hb436;
	ans = 16'hacd8;
	#20
	A = 16'hb846;
	B = 16'hbaab;
	ans = 16'hbd78;
	#20
	A = 16'hb9b2;
	B = 16'h357f;
	ans = 16'hb5e5;
	#20
	A = 16'hba86;
	B = 16'hbbc1;
	ans = 16'hbf24;
	#20
	A = 16'h39f9;
	B = 16'h2f2f;
	ans = 16'h3adf;
	#20
	A = 16'h399f;
	B = 16'h3aa7;
	ans = 16'h3e23;
	#20
	A = 16'hb22c;
	B = 16'h2f04;
	ans = 16'had54;
	#20
	A = 16'hb3cc;
	B = 16'hb489;
	ans = 16'hb838;
	#20
	A = 16'h26ac;
	B = 16'hb89c;
	ans = 16'hb867;
	#20
	A = 16'hb994;
	B = 16'ha89a;
	ans = 16'hb9de;
	#20
	A = 16'h3470;
	B = 16'h3aa9;
	ans = 16'h3c70;
	#20
	A = 16'h380c;
	B = 16'h26fe;
	ans = 16'h3844;
	#20
	A = 16'h35e2;
	B = 16'hb72a;
	ans = 16'had20;
	#20
	A = 16'hb5e0;
	B = 16'hbbd7;
	ans = 16'hbd64;
	#20
	A = 16'hb9b6;
	B = 16'h34f4;
	ans = 16'hb678;
	#20
	A = 16'h3b7d;
	B = 16'hbac3;
	ans = 16'h2dd0;
	#20
	A = 16'h34f7;
	B = 16'h3a10;
	ans = 16'h3c46;
	#20
	A = 16'h365b;
	B = 16'h3afa;
	ans = 16'h3d14;
	#20
	A = 16'h39c1;
	B = 16'hb93d;
	ans = 16'h2c20;
	#20
	A = 16'hb376;
	B = 16'h3631;
	ans = 16'h30ec;
	#20
	A = 16'h3bd4;
	B = 16'hb9e9;
	ans = 16'h33ac;
	#20
	A = 16'hb2e2;
	B = 16'h35c8;
	ans = 16'h30ae;
	#20
	A = 16'ha962;
	B = 16'h3b9f;
	ans = 16'h3b49;
	#20
	A = 16'h399b;
	B = 16'h3863;
	ans = 16'h3cff;
	#20
	A = 16'h353c;
	B = 16'hb1ed;
	ans = 16'h308b;
	#20
	A = 16'ha547;
	B = 16'h3991;
	ans = 16'h3967;
	#20
	A = 16'h37d2;
	B = 16'hb908;
	ans = 16'hb07c;
	#20
	A = 16'h3004;
	B = 16'ha523;
	ans = 16'h2ebf;
	#20
	A = 16'hb40f;
	B = 16'h3a41;
	ans = 16'h383a;
	#20
	A = 16'h3157;
	B = 16'hb52c;
	ans = 16'hb101;
	#20
	A = 16'hba72;
	B = 16'haf66;
	ans = 16'hbb5f;
	#20
	A = 16'h3b0a;
	B = 16'hb052;
	ans = 16'h39f6;
	#20
	A = 16'hbb24;
	B = 16'h3ac1;
	ans = 16'haa30;
	#20
	A = 16'hb9d6;
	B = 16'h35e4;
	ans = 16'hb5c8;
	#20
	A = 16'h3b0a;
	B = 16'hb4c7;
	ans = 16'h38a6;
	#20
	A = 16'hb43a;
	B = 16'hbb84;
	ans = 16'hbcd0;
	#20
	A = 16'h3516;
	B = 16'hb89c;
	ans = 16'hb422;
	#20
	A = 16'hb755;
	B = 16'hb76d;
	ans = 16'hbb61;
	#20
	A = 16'h3ba2;
	B = 16'hba17;
	ans = 16'h322c;
	#20
	A = 16'h3b85;
	B = 16'hb882;
	ans = 16'h3606;
	#20
	A = 16'hb7b9;
	B = 16'hb59d;
	ans = 16'hbaab;
	#20
	A = 16'hbbbf;
	B = 16'h38ab;
	ans = 16'hb628;
	#20
	A = 16'h22e1;
	B = 16'hb4ef;
	ans = 16'hb4b8;
	#20
	A = 16'hbaa3;
	B = 16'h3ada;
	ans = 16'h26e0;
	#20
	A = 16'h3956;
	B = 16'h3669;
	ans = 16'h3c45;
	#20
	A = 16'h3881;
	B = 16'hb845;
	ans = 16'h2780;
	#20
	A = 16'haeae;
	B = 16'hb39a;
	ans = 16'hb578;
	#20
	A = 16'h3a79;
	B = 16'hb6d5;
	ans = 16'h361d;
	#20
	A = 16'hbaeb;
	B = 16'hb9a4;
	ans = 16'hbe48;
	#20
	A = 16'hb285;
	B = 16'h29af;
	ans = 16'hb119;
	#20
	A = 16'h3699;
	B = 16'hb983;
	ans = 16'hb46d;
	#20
	A = 16'h3100;
	B = 16'hb18d;
	ans = 16'ha468;
	#20
	A = 16'hafd7;
	B = 16'h39d7;
	ans = 16'h38dc;
	#20
	A = 16'h393a;
	B = 16'h3261;
	ans = 16'h3ad2;
	#20
	A = 16'h3bc6;
	B = 16'h3bab;
	ans = 16'h3fb8;
	#20
	A = 16'h378e;
	B = 16'h3885;
	ans = 16'h3c26;
	#20
	A = 16'h3571;
	B = 16'hb432;
	ans = 16'h2cfc;
	#20
	A = 16'hb946;
	B = 16'hbb80;
	ans = 16'hbe63;
	#20
	A = 16'hb6d9;
	B = 16'hbb4a;
	ans = 16'hbd5b;
	#20
	A = 16'hb90c;
	B = 16'hbbad;
	ans = 16'hbe5c;
	#20
	A = 16'h3838;
	B = 16'h3a81;
	ans = 16'h3d5c;
	#20
	A = 16'hb450;
	B = 16'h389e;
	ans = 16'h34ec;
	#20
	A = 16'hb553;
	B = 16'hb428;
	ans = 16'hb8be;
	#20
	A = 16'hb4d2;
	B = 16'h3b55;
	ans = 16'h38ec;
	#20
	A = 16'h3b55;
	B = 16'h390d;
	ans = 16'h3e31;
	#20
	A = 16'hb5a0;
	B = 16'hbb06;
	ans = 16'hbceb;
	#20
	A = 16'hbbcf;
	B = 16'h3833;
	ans = 16'hb738;
	#20
	A = 16'ha261;
	B = 16'hb5bf;
	ans = 16'hb5f2;
	#20
	A = 16'hb6ae;
	B = 16'h3978;
	ans = 16'h3442;
	#20
	A = 16'hb930;
	B = 16'h39a2;
	ans = 16'h2b20;
	#20
	A = 16'h345d;
	B = 16'hb499;
	ans = 16'ha380;
	#20
	A = 16'h3b5a;
	B = 16'hb49d;
	ans = 16'h390c;
	#20
	A = 16'hb526;
	B = 16'h298e;
	ans = 16'hb474;
	#20
	A = 16'hbad9;
	B = 16'h3336;
	ans = 16'hb90c;
	#20
	A = 16'hbaad;
	B = 16'h2769;
	ans = 16'hba72;
	#20
	A = 16'hba01;
	B = 16'hb929;
	ans = 16'hbd95;
	#20
	A = 16'hb153;
	B = 16'hb4a7;
	ans = 16'hb750;
	#20
	A = 16'h3927;
	B = 16'h3897;
	ans = 16'h3cdf;
	#20
	A = 16'h39d8;
	B = 16'hb507;
	ans = 16'h36a9;
	#20
	A = 16'h3abf;
	B = 16'h3b8b;
	ans = 16'h3f25;
	#20
	A = 16'h2a65;
	B = 16'h205e;
	ans = 16'h2b7c;
	#20
	A = 16'hb5e4;
	B = 16'h3799;
	ans = 16'h2ed4;
	#20
	A = 16'hb577;
	B = 16'hb8d5;
	ans = 16'hbb90;
	#20
	A = 16'ha9ea;
	B = 16'hb99d;
	ans = 16'hb9fc;
	#20
	A = 16'hb8a7;
	B = 16'hb8be;
	ans = 16'hbcb2;
	#20
	A = 16'hb772;
	B = 16'hba7e;
	ans = 16'hbd1c;
	#20
	A = 16'h3b5f;
	B = 16'hb64d;
	ans = 16'h3838;
	#20
	A = 16'h3a27;
	B = 16'hba2a;
	ans = 16'h9600;
	#20
	A = 16'hb70c;
	B = 16'h3b2d;
	ans = 16'h374e;
	#20
	A = 16'h162f;
	B = 16'h2ff9;
	ans = 16'h3009;
	#20
	A = 16'h3b2f;
	B = 16'h385c;
	ans = 16'h3dc6;
	#20
	A = 16'h3439;
	B = 16'hbb39;
	ans = 16'hb91c;
	#20
	A = 16'h3591;
	B = 16'h2b53;
	ans = 16'h367b;
	#20
	A = 16'h3623;
	B = 16'h3ba4;
	ans = 16'h3d5b;
	#20
	A = 16'h388a;
	B = 16'h3b06;
	ans = 16'h3dc8;
	#20
	A = 16'hb3c9;
	B = 16'h39dd;
	ans = 16'h37d6;
	#20
	A = 16'h3b20;
	B = 16'haeb1;
	ans = 16'h3a4a;
	#20
	A = 16'h39c7;
	B = 16'hb835;
	ans = 16'h3248;
	#20
	A = 16'hba18;
	B = 16'h35f0;
	ans = 16'hb640;
	#20
	A = 16'hac40;
	B = 16'hae2b;
	ans = 16'hb136;
	#20
	A = 16'hb806;
	B = 16'hba90;
	ans = 16'hbd4b;
	#20
	A = 16'hb142;
	B = 16'h3846;
	ans = 16'h35eb;
	#20
	A = 16'hb794;
	B = 16'h3960;
	ans = 16'h3258;
	#20
	A = 16'h2f8b;
	B = 16'hbb43;
	ans = 16'hba52;
	#20
	A = 16'haea8;
	B = 16'h2dd2;
	ans = 16'ha2b0;
	#20
	A = 16'h3b0b;
	B = 16'h3a20;
	ans = 16'h3e96;
	#20
	A = 16'h3455;
	B = 16'h30c7;
	ans = 16'h36b8;
	#20
	A = 16'hba87;
	B = 16'hb868;
	ans = 16'hbd78;
	#20
	A = 16'h363e;
	B = 16'h2b75;
	ans = 16'h372d;
	#20
	A = 16'hba36;
	B = 16'h3a07;
	ans = 16'ha5e0;
	#20
	A = 16'h33c5;
	B = 16'h2aea;
	ans = 16'h34c0;
	#20
	A = 16'hb45b;
	B = 16'hbb3a;
	ans = 16'hbcb4;
	#20
	A = 16'hb7bc;
	B = 16'h21c8;
	ans = 16'hb78e;
	#20
	A = 16'hbb1d;
	B = 16'hb321;
	ans = 16'hbc73;
	#20
	A = 16'h3b8e;
	B = 16'h389f;
	ans = 16'h3e16;
	#20
	A = 16'h2f52;
	B = 16'hb3d6;
	ans = 16'hb02d;
	#20
	A = 16'h3a89;
	B = 16'hb3d9;
	ans = 16'h3893;
	#20
	A = 16'hac43;
	B = 16'h32d9;
	ans = 16'h30b8;
	#20
	A = 16'h2840;
	B = 16'hb26e;
	ans = 16'hb15e;
	#20
	A = 16'h3301;
	B = 16'h2c84;
	ans = 16'h34a2;
	#20
	A = 16'hb845;
	B = 16'h3739;
	ans = 16'had44;
	#20
	A = 16'h3a12;
	B = 16'h3826;
	ans = 16'h3d1c;
	#20
	A = 16'hbaf7;
	B = 16'h37e7;
	ans = 16'hb607;
	#20
	A = 16'hb96a;
	B = 16'hbbc6;
	ans = 16'hbe98;
	#20
	A = 16'hb253;
	B = 16'hbaea;
	ans = 16'hbc3f;
	#20
	A = 16'hb830;
	B = 16'hb658;
	ans = 16'hbb5c;
	#20
	A = 16'h1fe0;
	B = 16'h3ba2;
	ans = 16'h3bb2;
	#20
	A = 16'h3b11;
	B = 16'h2a59;
	ans = 16'h3b77;
	#20
	A = 16'hb7f5;
	B = 16'h2428;
	ans = 16'hb7b2;
	#20
	A = 16'ha167;
	B = 16'h3bdf;
	ans = 16'h3bc9;
	#20
	A = 16'h329b;
	B = 16'hb75e;
	ans = 16'hb410;
	#20
	A = 16'h384f;
	B = 16'hbbdd;
	ans = 16'hb71c;
	#20
	A = 16'h3a64;
	B = 16'hbb36;
	ans = 16'hae90;
	#20
	A = 16'h3b59;
	B = 16'h3a9f;
	ans = 16'h3efc;
	#20
	A = 16'hb9af;
	B = 16'h3704;
	ans = 16'hb45a;
	#20
	A = 16'h361b;
	B = 16'h2ac0;
	ans = 16'h36f3;
	#20
	A = 16'hb430;
	B = 16'h3a9d;
	ans = 16'h3885;
	#20
	A = 16'h3bb0;
	B = 16'hae7e;
	ans = 16'h3ae0;
	#20
	A = 16'h3bc5;
	B = 16'hbb39;
	ans = 16'h2c60;
	#20
	A = 16'h2e03;
	B = 16'hba47;
	ans = 16'hb987;
	#20
	A = 16'hb451;
	B = 16'h35e5;
	ans = 16'h2e50;
	#20
	A = 16'h3a72;
	B = 16'hbbff;
	ans = 16'hb234;
	#20
	A = 16'h3a83;
	B = 16'h3b09;
	ans = 16'h3ec6;
	#20
	A = 16'hbafb;
	B = 16'hb85c;
	ans = 16'hbdac;
	#20
	A = 16'hb596;
	B = 16'h3bdf;
	ans = 16'h3914;
	#20
	A = 16'hba26;
	B = 16'h3813;
	ans = 16'hb426;
	#20
	A = 16'h3a90;
	B = 16'hba3a;
	ans = 16'h2960;
	#20
	A = 16'h3bfd;
	B = 16'h359f;
	ans = 16'h3d66;
	#20
	A = 16'h3727;
	B = 16'h3505;
	ans = 16'h3a16;
	#20
	A = 16'h341b;
	B = 16'hb60f;
	ans = 16'hafd0;
	#20
	A = 16'h310c;
	B = 16'h3872;
	ans = 16'h39b5;
	#20
	A = 16'hb4cc;
	B = 16'h3933;
	ans = 16'h359a;
	#20
	A = 16'h3212;
	B = 16'h3787;
	ans = 16'h3948;
	#20
	A = 16'h3656;
	B = 16'h3a8b;
	ans = 16'h3cdb;
	#20
	A = 16'hb0f3;
	B = 16'h35a8;
	ans = 16'h325d;
	#20
	A = 16'h38d6;
	B = 16'h3530;
	ans = 16'h3b6e;
	#20
	A = 16'h342f;
	B = 16'hbbc3;
	ans = 16'hb9ac;
	#20
	A = 16'h3636;
	B = 16'h341f;
	ans = 16'h392a;
	#20
	A = 16'hb5e6;
	B = 16'h329c;
	ans = 16'hb130;
	#20
	A = 16'hb935;
	B = 16'hac45;
	ans = 16'hb9be;
	#20
	A = 16'h3ad5;
	B = 16'h321f;
	ans = 16'h3c2e;
	#20
	A = 16'h3942;
	B = 16'hb0a9;
	ans = 16'h3818;
	#20
	A = 16'h3ae0;
	B = 16'hb8f9;
	ans = 16'h339c;
	#20
	A = 16'hba6c;
	B = 16'h34cd;
	ans = 16'hb806;
	#20
	A = 16'had70;
	B = 16'h3b47;
	ans = 16'h3a99;
	#20
	A = 16'h3512;
	B = 16'hb7a0;
	ans = 16'hb11c;
	#20
	A = 16'hb9d3;
	B = 16'hb2d8;
	ans = 16'hbb89;
	#20
	A = 16'h394a;
	B = 16'hb718;
	ans = 16'h32f8;
	#20
	A = 16'h3832;
	B = 16'h3678;
	ans = 16'h3b6e;
	#20
	A = 16'h293b;
	B = 16'hb6bf;
	ans = 16'hb618;
	#20
	A = 16'h2b5b;
	B = 16'hb592;
	ans = 16'hb4a7;
	#20
	A = 16'h3510;
	B = 16'h3132;
	ans = 16'h37a9;
	#20
	A = 16'hb605;
	B = 16'ha8b3;
	ans = 16'hb69b;
	#20
	A = 16'hb9f0;
	B = 16'hb4b1;
	ans = 16'hbc24;
	#20
	A = 16'hb569;
	B = 16'h3924;
	ans = 16'h34df;
	#20
	A = 16'ha7ab;
	B = 16'h3aae;
	ans = 16'h3a71;
	#20
	A = 16'h37c2;
	B = 16'h3a30;
	ans = 16'h3d08;
	#20
	A = 16'h34a5;
	B = 16'hb908;
	ans = 16'hb56b;
	#20
	A = 16'hb68e;
	B = 16'h3b81;
	ans = 16'h383a;
	#20
	A = 16'h35a8;
	B = 16'hb7d2;
	ans = 16'hb054;
	#20
	A = 16'hbb6f;
	B = 16'hb9ae;
	ans = 16'hbe8e;
	#20
	A = 16'hb7fc;
	B = 16'hbb61;
	ans = 16'hbdb0;
	#20
	A = 16'h39d3;
	B = 16'hacc6;
	ans = 16'h393a;
	#20
	A = 16'hb234;
	B = 16'hbab7;
	ans = 16'hbc22;
	#20
	A = 16'haed0;
	B = 16'hb81b;
	ans = 16'hb8f5;
	#20
	A = 16'hb1af;
	B = 16'hbac9;
	ans = 16'hbc1a;
	#20
	A = 16'hb4c6;
	B = 16'h3b02;
	ans = 16'h389f;
	#20
	A = 16'hb1e3;
	B = 16'h36c9;
	ans = 16'h33af;
	#20
	A = 16'hb986;
	B = 16'hb20d;
	ans = 16'hbb09;
	#20
	A = 16'hba75;
	B = 16'hb9b5;
	ans = 16'hbe15;
	#20
	A = 16'hb686;
	B = 16'hbbe0;
	ans = 16'hbd92;
	#20
	A = 16'had55;
	B = 16'hb842;
	ans = 16'hb8ed;
	#20
	A = 16'hb515;
	B = 16'h3a6a;
	ans = 16'h37bf;
	#20
	A = 16'hb34c;
	B = 16'h38cb;
	ans = 16'h35f0;
	#20
	A = 16'hb9b2;
	B = 16'h3ba9;
	ans = 16'h33dc;
	#20
	A = 16'hb9c2;
	B = 16'h3bf3;
	ans = 16'h3462;
	#20
	A = 16'h3838;
	B = 16'hb612;
	ans = 16'h30bc;
	#20
	A = 16'h9b6f;
	B = 16'hb7f2;
	ans = 16'hb800;
	#20
	A = 16'hb962;
	B = 16'h3bb4;
	ans = 16'h34a4;
	#20
	A = 16'h3459;
	B = 16'hba91;
	ans = 16'hb864;
	#20
	A = 16'h3ace;
	B = 16'hba53;
	ans = 16'h2bb0;
	#20
	A = 16'h358c;
	B = 16'hb793;
	ans = 16'hb00e;
	#20
	A = 16'hb470;
	B = 16'hbb41;
	ans = 16'hbcbc;
	#20
	A = 16'h35c8;
	B = 16'h386e;
	ans = 16'h3b52;
	#20
	A = 16'hba33;
	B = 16'hb8a9;
	ans = 16'hbd6e;
	#20
	A = 16'hbbe5;
	B = 16'hb62e;
	ans = 16'hbd7e;
	#20
	A = 16'hb83e;
	B = 16'h3948;
	ans = 16'h3028;
	#20
	A = 16'hb292;
	B = 16'hb509;
	ans = 16'hb829;
	#20
	A = 16'ha4e0;
	B = 16'h3762;
	ans = 16'h3714;
	#20
	A = 16'hab3d;
	B = 16'hb4f3;
	ans = 16'hb5db;
	#20
	A = 16'hada0;
	B = 16'hb95a;
	ans = 16'hba0e;
	#20
	A = 16'hab87;
	B = 16'h3992;
	ans = 16'h391a;
	#20
	A = 16'h2fd6;
	B = 16'hb810;
	ans = 16'hb62a;
	#20
	A = 16'h3832;
	B = 16'hb209;
	ans = 16'h3560;
	#20
	A = 16'hb87e;
	B = 16'hb79c;
	ans = 16'hbc26;
	#20
	A = 16'h340c;
	B = 16'hb6f2;
	ans = 16'hb1cc;
	#20
	A = 16'hbb28;
	B = 16'h3ae9;
	ans = 16'ha7e0;
	#20
	A = 16'hbba5;
	B = 16'h33fa;
	ans = 16'hb9a6;
	#20
	A = 16'h3925;
	B = 16'h3a92;
	ans = 16'h3ddc;
	#20
	A = 16'hb871;
	B = 16'h304b;
	ans = 16'hb6bc;
	#20
	A = 16'hba6a;
	B = 16'hb727;
	ans = 16'hbcff;
	#20
	A = 16'h3bf6;
	B = 16'h3920;
	ans = 16'h3e8b;
	#20
	A = 16'hb75a;
	B = 16'h3b5a;
	ans = 16'h375a;
	#20
	A = 16'h37ca;
	B = 16'ha943;
	ans = 16'h3722;
	#20
	A = 16'hb83e;
	B = 16'hb8cb;
	ans = 16'hbc84;
	#20
	A = 16'h3329;
	B = 16'h3885;
	ans = 16'h3a4f;
	#20
	A = 16'hb870;
	B = 16'ha5db;
	ans = 16'hb89f;
	#20
	A = 16'h2cf5;
	B = 16'h3842;
	ans = 16'h38e1;
	#20
	A = 16'hbb6f;
	B = 16'hbbc7;
	ans = 16'hbf9b;
	#20
	A = 16'hb801;
	B = 16'h3882;
	ans = 16'h2c08;
	#20
	A = 16'hb004;
	B = 16'h383a;
	ans = 16'h3672;
	#20
	A = 16'h35b5;
	B = 16'hb5ca;
	ans = 16'h9d40;
	#20
	A = 16'ha2a8;
	B = 16'haedf;
	ans = 16'hafb4;
	#20
	A = 16'hb811;
	B = 16'h2dd2;
	ans = 16'hb6ae;
	#20
	A = 16'h3990;
	B = 16'hbae9;
	ans = 16'hb164;
	#20
	A = 16'h3bb4;
	B = 16'h2cf8;
	ans = 16'h3c2a;
	#20
	A = 16'hb807;
	B = 16'hba4c;
	ans = 16'hbd2a;
	#20
	A = 16'hb589;
	B = 16'h2be4;
	ans = 16'hb48c;
	#20
	A = 16'h364d;
	B = 16'hb4b3;
	ans = 16'h2e68;
	#20
	A = 16'h3a4f;
	B = 16'hb950;
	ans = 16'h2ff8;
	#20
	A = 16'hbbaa;
	B = 16'hb9c3;
	ans = 16'hbeb6;
	#20
	A = 16'hb77d;
	B = 16'h3bd9;
	ans = 16'h381a;
	#20
	A = 16'hb59d;
	B = 16'hbbd8;
	ans = 16'hbd53;
	#20
	A = 16'hba5b;
	B = 16'h3225;
	ans = 16'hb8d2;
	#20
	A = 16'hb5d4;
	B = 16'h39bf;
	ans = 16'h35aa;
	#20
	A = 16'hb23d;
	B = 16'h3bdf;
	ans = 16'h3a50;
	#20
	A = 16'hb421;
	B = 16'hab38;
	ans = 16'hb508;
	#20
	A = 16'hb110;
	B = 16'h97be;
	ans = 16'hb11f;
	#20
	A = 16'hac35;
	B = 16'h3644;
	ans = 16'h3537;
	#20
	A = 16'hba33;
	B = 16'h35d4;
	ans = 16'hb692;
	#20
	A = 16'h3ae5;
	B = 16'h3b56;
	ans = 16'h3f1e;
	#20
	A = 16'ha8ab;
	B = 16'hbbc2;
	ans = 16'hbc06;
	#20
	A = 16'h3ba1;
	B = 16'hb4bd;
	ans = 16'h3942;
	#20
	A = 16'ha833;
	B = 16'h2fae;
	ans = 16'h2d94;
	#20
	A = 16'hb7c1;
	B = 16'h3b77;
	ans = 16'h372d;
	#20
	A = 16'hb0a4;
	B = 16'h3b85;
	ans = 16'h3a5c;
	#20
	A = 16'hb96a;
	B = 16'h3bcf;
	ans = 16'h34ca;
	#20
	A = 16'hb845;
	B = 16'h3bf2;
	ans = 16'h375a;
	#20
	A = 16'h378b;
	B = 16'hb9c2;
	ans = 16'hb3f2;
	#20
	A = 16'hb0d4;
	B = 16'hb9f4;
	ans = 16'hbb29;
	#20
	A = 16'hb524;
	B = 16'hba04;
	ans = 16'hbc4b;
	#20
	A = 16'hb94a;
	B = 16'h28ac;
	ans = 16'hb8ff;
	#20
	A = 16'h39d9;
	B = 16'hbb95;
	ans = 16'hb2f0;
	#20
	A = 16'h3301;
	B = 16'hb8b7;
	ans = 16'hb5ee;
	#20
	A = 16'hbaaf;
	B = 16'h32d9;
	ans = 16'hb8f9;
	#20
	A = 16'h3a80;
	B = 16'h3a9f;
	ans = 16'h3e90;
	#20
	A = 16'h37ac;
	B = 16'hb51a;
	ans = 16'h3124;
	#20
	A = 16'hb47a;
	B = 16'h38b9;
	ans = 16'h34f8;
	#20
	A = 16'h33b2;
	B = 16'h39eb;
	ans = 16'h3bd8;
	#20
	A = 16'hb98f;
	B = 16'h36f5;
	ans = 16'hb429;
	#20
	A = 16'h3b98;
	B = 16'hba6d;
	ans = 16'h30ac;
	#20
	A = 16'h398b;
	B = 16'hb9d2;
	ans = 16'ha870;
	#20
	A = 16'hbbbb;
	B = 16'h3bae;
	ans = 16'h9e80;
	#20
	A = 16'h3bc4;
	B = 16'hba44;
	ans = 16'h3200;
	#20
	A = 16'h3439;
	B = 16'hb6f0;
	ans = 16'hb16e;
	#20
	A = 16'h32e8;
	B = 16'h377d;
	ans = 16'h3978;
	#20
	A = 16'hb88d;
	B = 16'h24c8;
	ans = 16'hb867;
	#20
	A = 16'h2ffa;
	B = 16'h34b2;
	ans = 16'h36b0;
	#20
	A = 16'hb98a;
	B = 16'h2ed7;
	ans = 16'hb8af;
	#20
	A = 16'h2935;
	B = 16'h3778;
	ans = 16'h380f;
	#20
	A = 16'h3b72;
	B = 16'h35ad;
	ans = 16'h3d24;
	#20
	A = 16'h3837;
	B = 16'hb796;
	ans = 16'h2ac0;
	#20
	A = 16'h3116;
	B = 16'hba23;
	ans = 16'hb8de;
	#20
	A = 16'h36aa;
	B = 16'hb11b;
	ans = 16'h341c;
	#20
	A = 16'hb826;
	B = 16'h35ab;
	ans = 16'hb142;
	#20
	A = 16'h321c;
	B = 16'hba28;
	ans = 16'hb8a1;
	#20
	A = 16'hb8e1;
	B = 16'h394b;
	ans = 16'h2aa0;
	#20
	A = 16'h394a;
	B = 16'h36da;
	ans = 16'h3c5c;
	#20
	A = 16'h304d;
	B = 16'hb872;
	ans = 16'hb6be;
	#20
	A = 16'h3878;
	B = 16'hb78f;
	ans = 16'h2d84;
	#20
	A = 16'hb681;
	B = 16'hb634;
	ans = 16'hba5a;
	#20
	A = 16'hbad7;
	B = 16'hbb05;
	ans = 16'hbeee;
	#20
	A = 16'h3929;
	B = 16'h35c3;
	ans = 16'h3c05;
	#20
	A = 16'h3481;
	B = 16'hb8bf;
	ans = 16'hb4fd;
	#20
	A = 16'hb620;
	B = 16'h346d;
	ans = 16'haecc;
	#20
	A = 16'hb2b7;
	B = 16'h3b53;
	ans = 16'h39a5;
	#20
	A = 16'hba15;
	B = 16'h313e;
	ans = 16'hb8c6;
	#20
	A = 16'hb8ea;
	B = 16'h357e;
	ans = 16'hb456;
	#20
	A = 16'hb90d;
	B = 16'h30da;
	ans = 16'hb7ad;
	#20
	A = 16'hba81;
	B = 16'hb9db;
	ans = 16'hbe2e;
	#20
	A = 16'hbbc5;
	B = 16'hb815;
	ans = 16'hbded;
	#20
	A = 16'hba91;
	B = 16'h2804;
	ans = 16'hba51;
	#20
	A = 16'hb626;
	B = 16'h3113;
	ans = 16'hb339;
	#20
	A = 16'h3401;
	B = 16'h3632;
	ans = 16'h391a;
	#20
	A = 16'h34ac;
	B = 16'h38f4;
	ans = 16'h3b4a;
	#20
	A = 16'h3a1d;
	B = 16'hb9e1;
	ans = 16'h2780;
	#20
	A = 16'h3bae;
	B = 16'h3812;
	ans = 16'h3de0;
	#20
	A = 16'hb46e;
	B = 16'hb9a0;
	ans = 16'hbbd7;
	#20
	A = 16'hbb8d;
	B = 16'h3506;
	ans = 16'hb90a;
	#20
	A = 16'hb881;
	B = 16'h34d1;
	ans = 16'hb431;
	#20
	A = 16'h36b2;
	B = 16'h2f47;
	ans = 16'h3842;
	#20
	A = 16'hbbc5;
	B = 16'h37cc;
	ans = 16'hb7be;
	#20
	A = 16'hba9e;
	B = 16'h2ef0;
	ans = 16'hb9c0;
	#20
	A = 16'hb980;
	B = 16'h33b9;
	ans = 16'hb724;
	#20
	A = 16'h3a89;
	B = 16'hbbcc;
	ans = 16'hb10c;
	#20
	A = 16'hba84;
	B = 16'hb494;
	ans = 16'hbc67;
	#20
	A = 16'hb820;
	B = 16'h3bb4;
	ans = 16'h3728;
	#20
	A = 16'h2daa;
	B = 16'h374b;
	ans = 16'h385b;
	#20
	A = 16'h3a5a;
	B = 16'hb919;
	ans = 16'h3104;
	#20
	A = 16'h3a28;
	B = 16'hb487;
	ans = 16'h37c9;
	#20
	A = 16'hb7ab;
	B = 16'h3a18;
	ans = 16'h3485;
	#20
	A = 16'h3119;
	B = 16'h380f;
	ans = 16'h3955;
	#20
	A = 16'hb498;
	B = 16'h32b9;
	ans = 16'hacee;
	#20
	A = 16'hbaef;
	B = 16'h2d5e;
	ans = 16'hba43;
	#20
	A = 16'hb669;
	B = 16'hbb5e;
	ans = 16'hbd49;
	#20
	A = 16'hb75f;
	B = 16'hb56c;
	ans = 16'hba66;
	#20
	A = 16'hbaaa;
	B = 16'hb763;
	ans = 16'hbd2e;
	#20
	A = 16'had92;
	B = 16'hb747;
	ans = 16'hb856;
	#20
	A = 16'h3226;
	B = 16'hbbb0;
	ans = 16'hba26;
	#20
	A = 16'h3786;
	B = 16'h3601;
	ans = 16'h3ac4;
	#20
	A = 16'hb144;
	B = 16'hb368;
	ans = 16'hb656;
	#20
	A = 16'h3b82;
	B = 16'h3980;
	ans = 16'h3e81;
	#20
	A = 16'h39ad;
	B = 16'hb605;
	ans = 16'h3555;
	#20
	A = 16'had45;
	B = 16'h38ed;
	ans = 16'h3844;
	#20
	A = 16'hb195;
	B = 16'hb86f;
	ans = 16'hb9d4;
	#20
	A = 16'hb8ff;
	B = 16'h31f7;
	ans = 16'hb702;
	#20
	A = 16'ha937;
	B = 16'h34fc;
	ans = 16'h3455;
	#20
	A = 16'hba64;
	B = 16'hb9ba;
	ans = 16'hbe0f;
	#20
	A = 16'ha32b;
	B = 16'hb84b;
	ans = 16'hb868;
	#20
	A = 16'h393d;
	B = 16'h3ba9;
	ans = 16'h3e73;
	#20
	A = 16'hb662;
	B = 16'hb291;
	ans = 16'hb8d5;
	#20
	A = 16'h34cc;
	B = 16'h36ba;
	ans = 16'h39c3;
	#20
	A = 16'hb90e;
	B = 16'h3827;
	ans = 16'haf38;
	#20
	A = 16'hb6cc;
	B = 16'h3aa7;
	ans = 16'h3682;
	#20
	A = 16'h3bab;
	B = 16'hb24f;
	ans = 16'h3a17;
	#20
	A = 16'hb3bc;
	B = 16'ha7e6;
	ans = 16'hb45c;
	#20
	A = 16'h3018;
	B = 16'h3b42;
	ans = 16'h3c24;
	#20
	A = 16'hb21c;
	B = 16'h3ba1;
	ans = 16'h3a1a;
	#20
	A = 16'h3b79;
	B = 16'h3871;
	ans = 16'h3df5;
	#20
	A = 16'hbacf;
	B = 16'hbaa6;
	ans = 16'hbeba;
	#20
	A = 16'hb92b;
	B = 16'h3b5c;
	ans = 16'h3462;
	#20
	A = 16'h3745;
	B = 16'h34f1;
	ans = 16'h3a1b;
	#20
	A = 16'h310d;
	B = 16'hba8c;
	ans = 16'hb949;
	#20
	A = 16'h35ea;
	B = 16'h36aa;
	ans = 16'h3a4a;
	#20
	A = 16'h2901;
	B = 16'h3740;
	ans = 16'h37e0;
	#20
	A = 16'h3072;
	B = 16'h23c1;
	ans = 16'h30ee;
	#20
	A = 16'h34aa;
	B = 16'hb74c;
	ans = 16'hb144;
	#20
	A = 16'hb339;
	B = 16'h2617;
	ans = 16'hb276;
	#20
	A = 16'h3555;
	B = 16'h3bb9;
	ans = 16'h3d32;
	#20
	A = 16'hb53f;
	B = 16'h3bf3;
	ans = 16'h3954;
	#20
	A = 16'hba90;
	B = 16'hbb16;
	ans = 16'hbed3;
	#20
	A = 16'hbae6;
	B = 16'h37c7;
	ans = 16'hb605;
	#20
	A = 16'hba0c;
	B = 16'h33ed;
	ans = 16'hb811;
	#20
	A = 16'hb54c;
	B = 16'hb8c4;
	ans = 16'hbb6a;
	#20
	A = 16'hbaec;
	B = 16'h3488;
	ans = 16'hb8a8;
	#20
	A = 16'hbb60;
	B = 16'h3546;
	ans = 16'hb8bd;
	#20
	A = 16'h39e6;
	B = 16'h30d1;
	ans = 16'h3b1a;
	#20
	A = 16'h3485;
	B = 16'hab8d;
	ans = 16'h3327;
	#20
	A = 16'hb6f1;
	B = 16'h386d;
	ans = 16'h2fa4;
	#20
	A = 16'hb0dd;
	B = 16'h3b65;
	ans = 16'h3a2e;
	#20
	A = 16'hb8ea;
	B = 16'h37bc;
	ans = 16'hb030;
	#20
	A = 16'h39a8;
	B = 16'h37e4;
	ans = 16'h3ccd;
	#20
	A = 16'h33f7;
	B = 16'h3bba;
	ans = 16'h3cdc;
	#20
	A = 16'hbabf;
	B = 16'h3a23;
	ans = 16'hace0;
	#20
	A = 16'hb986;
	B = 16'hb729;
	ans = 16'hbc8d;
	#20
	A = 16'hbbd4;
	B = 16'hb358;
	ans = 16'hbcd5;
	#20
	A = 16'hb8af;
	B = 16'hb521;
	ans = 16'hbb40;
	#20
	A = 16'h3a67;
	B = 16'hbbdc;
	ans = 16'hb1d4;
	#20
	A = 16'h3ad9;
	B = 16'hb8fc;
	ans = 16'h3374;
	#20
	A = 16'h2cfe;
	B = 16'hb7f5;
	ans = 16'hb6b6;
	#20
	A = 16'hb813;
	B = 16'h3af5;
	ans = 16'h35c4;
	#20
	A = 16'hb9c0;
	B = 16'h2416;
	ans = 16'hb99f;
	#20
	A = 16'h3bbe;
	B = 16'hbaf8;
	ans = 16'h2e30;
	#20
	A = 16'hb3cd;
	B = 16'h3af2;
	ans = 16'h38ff;
	#20
	A = 16'hb810;
	B = 16'h347c;
	ans = 16'hb348;
	#20
	A = 16'hb502;
	B = 16'hba03;
	ans = 16'hbc42;
	#20
	A = 16'h3a17;
	B = 16'h3492;
	ans = 16'h3c30;
	#20
	A = 16'h23df;
	B = 16'h3a54;
	ans = 16'h3a73;
	#20
	A = 16'h3b77;
	B = 16'hbbed;
	ans = 16'hab60;
	#20
	A = 16'h390d;
	B = 16'hb97a;
	ans = 16'haad0;
	#20
	A = 16'h3a17;
	B = 16'h2dd2;
	ans = 16'h3ad1;
	#20
	A = 16'h3903;
	B = 16'h2bd0;
	ans = 16'h3980;
	#20
	A = 16'haa33;
	B = 16'hb90b;
	ans = 16'hb96e;
	#20
	A = 16'h38d2;
	B = 16'hb50b;
	ans = 16'h3499;
	#20
	A = 16'hb8ac;
	B = 16'h3991;
	ans = 16'h2f28;
	#20
	A = 16'hae15;
	B = 16'haf2f;
	ans = 16'hb2a2;
	#20
	A = 16'hb983;
	B = 16'ha7ea;
	ans = 16'hb9c2;
	#20
	A = 16'hb5ab;
	B = 16'h3b63;
	ans = 16'h388e;
	#20
	A = 16'hb732;
	B = 16'h3848;
	ans = 16'h2d78;
	#20
	A = 16'hb159;
	B = 16'h39b4;
	ans = 16'h385e;
	#20
	A = 16'h3715;
	B = 16'h390d;
	ans = 16'h3c4c;
	#20
	A = 16'h3292;
	B = 16'h2ede;
	ans = 16'h3500;
	#20
	A = 16'h3902;
	B = 16'hbbe4;
	ans = 16'hb5c4;
	#20
	A = 16'h3b8d;
	B = 16'hb919;
	ans = 16'h34e8;
	#20
	A = 16'hb24c;
	B = 16'hb4c8;
	ans = 16'hb7ee;
	#20
	A = 16'h2f3f;
	B = 16'h3b4a;
	ans = 16'h3c19;
	#20
	A = 16'h3b22;
	B = 16'h3754;
	ans = 16'h3d66;
	#20
	A = 16'h2120;
	B = 16'hb9c5;
	ans = 16'hb9b0;
	#20
	A = 16'hb8bd;
	B = 16'haf8c;
	ans = 16'hb9ae;
	#20
	A = 16'h3a4f;
	B = 16'ha825;
	ans = 16'h3a0d;
	#20
	A = 16'hb80d;
	B = 16'hb145;
	ans = 16'hb95e;
	#20
	A = 16'hb9d6;
	B = 16'hafc5;
	ans = 16'hbacf;
	#20
	A = 16'hbb40;
	B = 16'h3bea;
	ans = 16'h2d50;
	#20
	A = 16'h3bae;
	B = 16'hb927;
	ans = 16'h350e;
	#20
	A = 16'h39e1;
	B = 16'hb7d9;
	ans = 16'h33d2;
	#20
	A = 16'hb73f;
	B = 16'hba94;
	ans = 16'hbd1a;
	#20
	A = 16'h3b69;
	B = 16'h3243;
	ans = 16'h3c7d;
	#20
	A = 16'h3348;
	B = 16'hbba2;
	ans = 16'hb9d0;
	#20
	A = 16'hb8ac;
	B = 16'hb66c;
	ans = 16'hbbe2;
	#20
	A = 16'h36de;
	B = 16'hbb5e;
	ans = 16'hb7de;
	#20
	A = 16'hba62;
	B = 16'hb899;
	ans = 16'hbd7e;
	#20
	A = 16'hb93f;
	B = 16'h3b00;
	ans = 16'h3304;
	#20
	A = 16'hb0b0;
	B = 16'hb935;
	ans = 16'hba61;
	#20
	A = 16'h335c;
	B = 16'hbb46;
	ans = 16'hb96f;
	#20
	A = 16'h34e0;
	B = 16'hb79c;
	ans = 16'hb178;
	#20
	A = 16'h3a7c;
	B = 16'h3967;
	ans = 16'h3df2;
	#20
	A = 16'h3b83;
	B = 16'hbb0f;
	ans = 16'h2b40;
	#20
	A = 16'hb9d3;
	B = 16'h34ff;
	ans = 16'hb6a7;
	#20
	A = 16'h1b79;
	B = 16'ha5b3;
	ans = 16'ha4c4;
	#20
	A = 16'hbbea;
	B = 16'hb71f;
	ans = 16'hbdbd;
	#20
	A = 16'h3634;
	B = 16'hb85a;
	ans = 16'hb100;
	#20
	A = 16'hbbe8;
	B = 16'h3af7;
	ans = 16'haf88;
	#20
	A = 16'h383b;
	B = 16'h2051;
	ans = 16'h384c;
	#20
	A = 16'h330b;
	B = 16'hb3fe;
	ans = 16'ha798;
	#20
	A = 16'h3b13;
	B = 16'hb118;
	ans = 16'h39cd;
	#20
	A = 16'h3b76;
	B = 16'hbaf7;
	ans = 16'h2bf0;
	#20
	A = 16'hac24;
	B = 16'hbbf5;
	ans = 16'hbc3d;
	#20
	A = 16'hb168;
	B = 16'hb58f;
	ans = 16'hb822;
	#20
	A = 16'hb22a;
	B = 16'h395f;
	ans = 16'h37a9;
	#20
	A = 16'h37ac;
	B = 16'h39b0;
	ans = 16'h3cc3;
	#20
	A = 16'hb923;
	B = 16'h3a15;
	ans = 16'h2f90;
	#20
	A = 16'h2ff4;
	B = 16'hb9ef;
	ans = 16'hb8f0;
	#20
	A = 16'h2df5;
	B = 16'h353b;
	ans = 16'h36b8;
	#20
	A = 16'hb468;
	B = 16'h31d7;
	ans = 16'hadf2;
	#20
	A = 16'h9c5a;
	B = 16'h3a40;
	ans = 16'h3a37;
	#20
	A = 16'h21b6;
	B = 16'hb68f;
	ans = 16'hb661;
	#20
	A = 16'h3af8;
	B = 16'h382b;
	ans = 16'h3d92;
	#20
	A = 16'hba81;
	B = 16'hb657;
	ans = 16'hbcd6;
	#20
	A = 16'h2dcd;
	B = 16'hb4a7;
	ans = 16'hb268;
	#20
	A = 16'h380c;
	B = 16'h38f9;
	ans = 16'h3c82;
	#20
	A = 16'hbba7;
	B = 16'h3b6d;
	ans = 16'ha740;
	#20
	A = 16'h35b5;
	B = 16'h31b1;
	ans = 16'h3847;
	#20
	A = 16'hba04;
	B = 16'h3a73;
	ans = 16'h2af0;
	#20
	A = 16'h3727;
	B = 16'h3675;
	ans = 16'h3ace;
	#20
	A = 16'hb838;
	B = 16'ha60c;
	ans = 16'hb868;
	#20
	A = 16'h3a74;
	B = 16'hb1d3;
	ans = 16'h38ff;
	#20
	A = 16'h3835;
	B = 16'hab27;
	ans = 16'h3785;
	#20
	A = 16'hb10e;
	B = 16'ha865;
	ans = 16'hb227;
	#20
	A = 16'hb471;
	B = 16'hba3b;
	ans = 16'hbc3a;
	#20
	A = 16'hb955;
	B = 16'h3b65;
	ans = 16'h3420;
	#20
	A = 16'haed6;
	B = 16'h2b4e;
	ans = 16'haa5e;
	#20
	A = 16'hb539;
	B = 16'hb416;
	ans = 16'hb8a8;
	#20
	A = 16'hb234;
	B = 16'hba02;
	ans = 16'hbb8f;
	#20
	A = 16'h39c7;
	B = 16'had44;
	ans = 16'h391e;
	#20
	A = 16'hb8a3;
	B = 16'h37ba;
	ans = 16'hae30;
	#20
	A = 16'h362f;
	B = 16'hb86b;
	ans = 16'hb14e;
	#20
	A = 16'h3566;
	B = 16'h3422;
	ans = 16'h38c4;
	#20
	A = 16'h380c;
	B = 16'h39a4;
	ans = 16'h3cd8;
	#20
	A = 16'ha63b;
	B = 16'h338b;
	ans = 16'h32c4;
	#20
	A = 16'hb189;
	B = 16'hb833;
	ans = 16'hb995;
	#20
	A = 16'h3856;
	B = 16'hb82b;
	ans = 16'h2560;
	#20
	A = 16'hbbfc;
	B = 16'h3bda;
	ans = 16'ha440;
	#20
	A = 16'h2df2;
	B = 16'h35af;
	ans = 16'h372c;
	#20
	A = 16'h39a9;
	B = 16'hb0de;
	ans = 16'h3872;
	#20
	A = 16'h2e8a;
	B = 16'ha76a;
	ans = 16'h2cb0;
	#20
	A = 16'h2976;
	B = 16'h38ee;
	ans = 16'h3945;
	#20
	A = 16'hbbcf;
	B = 16'hb05b;
	ans = 16'hbc73;
	#20
	A = 16'hb86f;
	B = 16'h3ac1;
	ans = 16'h34a4;
	#20
	A = 16'hba45;
	B = 16'hb408;
	ans = 16'hbc24;
	#20
	A = 16'hb948;
	B = 16'hb88f;
	ans = 16'hbcec;
	#20
	A = 16'h3107;
	B = 16'h3aa6;
	ans = 16'h3be8;
	#20
	A = 16'hb59a;
	B = 16'hb74f;
	ans = 16'hba74;
	#20
	A = 16'h3a52;
	B = 16'hb6f0;
	ans = 16'h35b4;
	#20
	A = 16'hafe8;
	B = 16'h3bbb;
	ans = 16'h3abe;
	#20
	A = 16'hb9a2;
	B = 16'h3bb9;
	ans = 16'h342e;
	#20
	A = 16'h3bd6;
	B = 16'h32cd;
	ans = 16'h3cc5;
	#20
	A = 16'h37ef;
	B = 16'h3aa6;
	ans = 16'h3d4f;
	#20
	A = 16'hb83c;
	B = 16'h37f2;
	ans = 16'ha830;
	#20
	A = 16'h303b;
	B = 16'hbab0;
	ans = 16'hb9a1;
	#20
	A = 16'h398e;
	B = 16'h37db;
	ans = 16'h3cbe;
	#20
	A = 16'h3b00;
	B = 16'h36fa;
	ans = 16'h3d3e;
	#20
	A = 16'hb8fc;
	B = 16'h38f2;
	ans = 16'h9d00;
	#20
	A = 16'hacd7;
	B = 16'h249b;
	ans = 16'hab60;
	#20
	A = 16'hb812;
	B = 16'hb909;
	ans = 16'hbc8e;
	#20
	A = 16'h3877;
	B = 16'hbb63;
	ans = 16'hb5d8;
	#20
	A = 16'h3bcd;
	B = 16'hb925;
	ans = 16'h3550;
	#20
	A = 16'hb70c;
	B = 16'hbbdd;
	ans = 16'hbdb2;
	#20
	A = 16'h3525;
	B = 16'haa28;
	ans = 16'h3460;
	#20
	A = 16'h33f5;
	B = 16'hbb06;
	ans = 16'hb909;
	#20
	A = 16'hb80a;
	B = 16'h3892;
	ans = 16'h2c40;
	#20
	A = 16'h3b80;
	B = 16'hb94b;
	ans = 16'h346a;
	#20
	A = 16'h35ae;
	B = 16'hb5fb;
	ans = 16'ha4d0;
	#20
	A = 16'hb8cd;
	B = 16'hb951;
	ans = 16'hbd0f;
	#20
	A = 16'hbb32;
	B = 16'h38ac;
	ans = 16'hb50c;
	#20
	A = 16'hb9cf;
	B = 16'h3bed;
	ans = 16'h343c;
	#20
	A = 16'h3493;
	B = 16'h3658;
	ans = 16'h3976;
	#20
	A = 16'hb225;
	B = 16'hb72b;
	ans = 16'hb91f;
	#20
	A = 16'hb8cd;
	B = 16'hbbb0;
	ans = 16'hbe3e;
	#20
	A = 16'hbb1c;
	B = 16'hb9fd;
	ans = 16'hbe8c;
	#20
	A = 16'hb404;
	B = 16'h38e0;
	ans = 16'h35bc;
	#20
	A = 16'h3b94;
	B = 16'hb80a;
	ans = 16'h3714;
	#20
	A = 16'h2ef5;
	B = 16'h39b0;
	ans = 16'h3a8f;
	#20
	A = 16'hb421;
	B = 16'hb92d;
	ans = 16'hbb3e;
	#20
	A = 16'ha8f5;
	B = 16'hb746;
	ans = 16'hb7e5;
	#20
	A = 16'hb68f;
	B = 16'h31b3;
	ans = 16'hb36b;
	#20
	A = 16'h35ac;
	B = 16'hb9fb;
	ans = 16'hb64a;
	#20
	A = 16'h2cc3;
	B = 16'hbb7e;
	ans = 16'hbae6;
	#20
	A = 16'h311d;
	B = 16'h3520;
	ans = 16'h37ae;
	#20
	A = 16'h3aef;
	B = 16'h3b70;
	ans = 16'h3f30;
	#20
	A = 16'hbb43;
	B = 16'h2e49;
	ans = 16'hba7a;
	#20
	A = 16'h3a4c;
	B = 16'hb52d;
	ans = 16'h376b;
	#20
	A = 16'h3b32;
	B = 16'h35e4;
	ans = 16'h3d12;
	#20
	A = 16'hb5f5;
	B = 16'h36bc;
	ans = 16'h2a38;
	#20
	A = 16'h36c1;
	B = 16'hb922;
	ans = 16'hb306;
	#20
	A = 16'h3aab;
	B = 16'ha5aa;
	ans = 16'h3a7e;
	#20
	A = 16'hb646;
	B = 16'hb239;
	ans = 16'hb8b1;
	#20
	A = 16'hb64e;
	B = 16'hbbbb;
	ans = 16'hbd71;
	#20
	A = 16'h385e;
	B = 16'h395b;
	ans = 16'h3cdc;
	#20
	A = 16'hb75f;
	B = 16'h378a;
	ans = 16'h2160;
	#20
	A = 16'h307a;
	B = 16'h38af;
	ans = 16'h39ce;
	#20
	A = 16'h3a95;
	B = 16'hb895;
	ans = 16'h3400;
	#20
	A = 16'hb088;
	B = 16'h38a9;
	ans = 16'h370e;
	#20
	A = 16'ha33e;
	B = 16'hb249;
	ans = 16'hb2bd;
	#20
	A = 16'h2ac8;
	B = 16'h360a;
	ans = 16'h36e3;
	#20
	A = 16'h30b6;
	B = 16'hbb21;
	ans = 16'hb9f4;
	#20
	A = 16'h347a;
	B = 16'hb841;
	ans = 16'hb408;
	#20
	A = 16'hb6ee;
	B = 16'hb659;
	ans = 16'hbaa4;
	#20
	A = 16'h3528;
	B = 16'h3a4c;
	ans = 16'h3c70;
	#20
	A = 16'h39cf;
	B = 16'hab0f;
	ans = 16'h395e;
	#20
	A = 16'h375f;
	B = 16'h3a58;
	ans = 16'h3d04;
	#20
	A = 16'hb213;
	B = 16'hbb8d;
	ans = 16'hbc89;
	#20
	A = 16'hb34b;
	B = 16'h148e;
	ans = 16'hb342;
	#20
	A = 16'h34f0;
	B = 16'hb763;
	ans = 16'hb0e6;
	#20
	A = 16'h35aa;
	B = 16'hb727;
	ans = 16'hadf4;
	#20
	A = 16'h37c4;
	B = 16'hb6aa;
	ans = 16'h2c68;
	#20
	A = 16'ha3af;
	B = 16'h3a2f;
	ans = 16'h3a10;
	#20
	A = 16'h39c1;
	B = 16'hb20f;
	ans = 16'h383d;
	#20
	A = 16'h3449;
	B = 16'h3733;
	ans = 16'h39be;
	#20
	A = 16'hbbde;
	B = 16'h3916;
	ans = 16'hb590;
	#20
	A = 16'hb879;
	B = 16'hba5d;
	ans = 16'hbd6b;
	#20
	A = 16'h3440;
	B = 16'hb71c;
	ans = 16'hb1b8;
	#20
	A = 16'h368b;
	B = 16'hb25c;
	ans = 16'h32ba;
	#20
	A = 16'h39b4;
	B = 16'hbaed;
	ans = 16'hb0e4;
	#20
	A = 16'h36e8;
	B = 16'hb839;
	ans = 16'hae28;
	#20
	A = 16'h3b1d;
	B = 16'h2c63;
	ans = 16'h3ba9;
	#20
	A = 16'hb2ad;
	B = 16'hb70d;
	ans = 16'hb932;
	#20
	A = 16'ha1bf;
	B = 16'h3918;
	ans = 16'h3901;
	#20
	A = 16'h3b79;
	B = 16'hb819;
	ans = 16'h36c0;
	#20
	A = 16'hba0f;
	B = 16'h3aef;
	ans = 16'h2f00;
	#20
	A = 16'h3991;
	B = 16'h38b9;
	ans = 16'h3d25;
	#20
	A = 16'hb7f6;
	B = 16'h3ad1;
	ans = 16'h35ac;
	#20
	A = 16'h38bf;
	B = 16'h370d;
	ans = 16'h3c23;
	#20
	A = 16'h3688;
	B = 16'hb932;
	ans = 16'hb3b8;
	#20
	A = 16'hb87d;
	B = 16'hb5bf;
	ans = 16'hbb5c;
	#20
	A = 16'h3a9f;
	B = 16'h39d6;
	ans = 16'h3e3a;
	#20
	A = 16'h3ae4;
	B = 16'h35ae;
	ans = 16'h3cde;
	#20
	A = 16'h3555;
	B = 16'h2ec1;
	ans = 16'h3705;
	#20
	A = 16'hb3d4;
	B = 16'h394b;
	ans = 16'h36ac;
	#20
	A = 16'h381d;
	B = 16'h3a95;
	ans = 16'h3d59;
	#20
	A = 16'hb3da;
	B = 16'h3873;
	ans = 16'h34f9;
	#20
	A = 16'hb0df;
	B = 16'hb556;
	ans = 16'hb7c6;
	#20
	A = 16'hbb41;
	B = 16'h3a2d;
	ans = 16'hb050;
	#20
	A = 16'hb3f1;
	B = 16'hb403;
	ans = 16'hb7fc;
	#20
	A = 16'ha934;
	B = 16'h39bd;
	ans = 16'h396a;
	#20
	A = 16'hb63d;
	B = 16'hae77;
	ans = 16'hb7db;
	#20
	A = 16'hbafc;
	B = 16'h396c;
	ans = 16'hb240;
	#20
	A = 16'hb709;
	B = 16'h3634;
	ans = 16'haaa8;
	#20
	A = 16'hb766;
	B = 16'h2aac;
	ans = 16'hb690;
	#20
	A = 16'hb355;
	B = 16'hb76a;
	ans = 16'hb98a;
	#20
	A = 16'h3982;
	B = 16'h3b62;
	ans = 16'h3e72;
	#20
	A = 16'h14ef;
	B = 16'ha745;
	ans = 16'ha6f6;
	#20
	A = 16'h3912;
	B = 16'h343d;
	ans = 16'h3b30;
	#20
	A = 16'h3939;
	B = 16'h39d8;
	ans = 16'h3d88;
	#20
	A = 16'h39cc;
	B = 16'h3385;
	ans = 16'h3bad;
	#20
	A = 16'hb047;
	B = 16'h2c1a;
	ans = 16'hac74;
	#20
	A = 16'haddd;
	B = 16'hb641;
	ans = 16'hb7b8;
	#20
	A = 16'h3bff;
	B = 16'hba15;
	ans = 16'h33a8;
	#20
	A = 16'hb34e;
	B = 16'hb284;
	ans = 16'hb6e9;
	#20
	A = 16'h2bd2;
	B = 16'hb825;
	ans = 16'hb750;
	#20
	A = 16'hbb54;
	B = 16'hb9a5;
	ans = 16'hbe7c;
	#20
	A = 16'hb0e8;
	B = 16'hbba7;
	ans = 16'hbc70;
	#20
	A = 16'h3b85;
	B = 16'hbbdf;
	ans = 16'ha9a0;
	#20
	A = 16'h3bf0;
	B = 16'hba19;
	ans = 16'h335c;
	#20
	A = 16'hb474;
	B = 16'h3701;
	ans = 16'h311a;
	#20
	A = 16'h34cd;
	B = 16'hb7fa;
	ans = 16'hb25a;
	#20
	A = 16'hbb97;
	B = 16'hbbf5;
	ans = 16'hbfc6;
	#20
	A = 16'hb60c;
	B = 16'h3ba3;
	ans = 16'h389d;
	#20
	A = 16'h375a;
	B = 16'h39f5;
	ans = 16'h3cd1;
	#20
	A = 16'hb789;
	B = 16'hb773;
	ans = 16'hbb7e;
	#20
	A = 16'h32a3;
	B = 16'h312a;
	ans = 16'h35e6;
	#20
	A = 16'h346f;
	B = 16'hb938;
	ans = 16'hb601;
	#20
	A = 16'h3819;
	B = 16'h3895;
	ans = 16'h3c57;
	#20
	A = 16'hb862;
	B = 16'h22b0;
	ans = 16'hb847;
	#20
	A = 16'h31b8;
	B = 16'h36e1;
	ans = 16'h38de;
	#20
	A = 16'h3b1e;
	B = 16'h3103;
	ans = 16'h3c2f;
	#20
	A = 16'h3b5c;
	B = 16'hbbff;
	ans = 16'had18;
	#20
	A = 16'h3bc0;
	B = 16'hbafe;
	ans = 16'h2e10;
	#20
	A = 16'h3085;
	B = 16'hb87e;
	ans = 16'hb6ba;
	#20
	A = 16'hbb6e;
	B = 16'hb249;
	ans = 16'hbc80;
	#20
	A = 16'h3871;
	B = 16'hb7ae;
	ans = 16'h2cd0;
	#20
	A = 16'h389d;
	B = 16'hb504;
	ans = 16'h3436;
	#20
	A = 16'h370c;
	B = 16'h3502;
	ans = 16'h3a07;
	#20
	A = 16'h3524;
	B = 16'hb7f3;
	ans = 16'hb19e;
	#20
	A = 16'h3862;
	B = 16'h3ac7;
	ans = 16'h3d94;
	#20
	A = 16'h3acd;
	B = 16'hbaf9;
	ans = 16'ha580;
	#20
	A = 16'hb167;
	B = 16'hb551;
	ans = 16'hb802;
	#20
	A = 16'h3bda;
	B = 16'h3b13;
	ans = 16'h3f76;
	#20
	A = 16'hac54;
	B = 16'h2f73;
	ans = 16'h2a3e;
	#20
	A = 16'h3572;
	B = 16'h32da;
	ans = 16'h3870;
	#20
	A = 16'hba8e;
	B = 16'h3870;
	ans = 16'hb43c;
	#20
	A = 16'h3519;
	B = 16'hba75;
	ans = 16'hb7d1;
	#20
	A = 16'h30a7;
	B = 16'ha8a7;
	ans = 16'h2efa;
	#20
	A = 16'ha09d;
	B = 16'h31ba;
	ans = 16'h3170;
	#20
	A = 16'h3904;
	B = 16'hae5c;
	ans = 16'h3838;
	#20
	A = 16'hb667;
	B = 16'hbb17;
	ans = 16'hbd25;
	#20
	A = 16'h362b;
	B = 16'h3938;
	ans = 16'h3c27;
	#20
	A = 16'h2ef8;
	B = 16'hb790;
	ans = 16'hb5d2;
	#20
	A = 16'h3a90;
	B = 16'hbacd;
	ans = 16'ha7a0;
	#20
	A = 16'hbae1;
	B = 16'h2d30;
	ans = 16'hba3b;
	#20
	A = 16'h368c;
	B = 16'h2c3f;
	ans = 16'h379c;
	#20
	A = 16'h3620;
	B = 16'hae1d;
	ans = 16'h3499;
	#20
	A = 16'hbb29;
	B = 16'h31ae;
	ans = 16'hb9be;
	#20
	A = 16'h30fc;
	B = 16'h3afa;
	ans = 16'h3c1c;
	#20
	A = 16'hac40;
	B = 16'h3659;
	ans = 16'h3549;
	#20
	A = 16'hb6c8;
	B = 16'hbb0e;
	ans = 16'hbd39;
	#20
	A = 16'hadd9;
	B = 16'h3bad;
	ans = 16'h3af2;
	#20
	A = 16'hb69f;
	B = 16'hba20;
	ans = 16'hbcb8;
	#20
	A = 16'hae9e;
	B = 16'h3978;
	ans = 16'h38a4;
	#20
	A = 16'hb60f;
	B = 16'h3916;
	ans = 16'h341d;
	#20
	A = 16'h388e;
	B = 16'hb370;
	ans = 16'h3564;
	#20
	A = 16'h3818;
	B = 16'hba67;
	ans = 16'hb49e;
	#20
	A = 16'h38ac;
	B = 16'h399a;
	ans = 16'h3d23;
	#20
	A = 16'h27a9;
	B = 16'hbada;
	ans = 16'hba9d;
	#20
	A = 16'hb154;
	B = 16'hb510;
	ans = 16'hb7ba;
	#20
	A = 16'hb73e;
	B = 16'h36e0;
	ans = 16'ha5e0;
	#20
	A = 16'hbb0e;
	B = 16'hb7d4;
	ans = 16'hbd7c;
	#20
	A = 16'h2e0a;
	B = 16'h388b;
	ans = 16'h394c;
	#20
	A = 16'h3bd2;
	B = 16'hb33e;
	ans = 16'h3a02;
	#20
	A = 16'hb90b;
	B = 16'h3ad3;
	ans = 16'h3320;
	#20
	A = 16'h34e6;
	B = 16'hb89e;
	ans = 16'hb456;
	#20
	A = 16'hb948;
	B = 16'h3596;
	ans = 16'hb4fa;
	#20
	A = 16'h2937;
	B = 16'hba2a;
	ans = 16'hb9d7;
	#20
	A = 16'h394e;
	B = 16'hb09d;
	ans = 16'h3827;
	#20
	A = 16'hb80b;
	B = 16'hb5ec;
	ans = 16'hbb01;
	#20
	A = 16'hbaae;
	B = 16'h37ad;
	ans = 16'hb5af;
	#20
	A = 16'had32;
	B = 16'hb713;
	ans = 16'hb830;
	#20
	A = 16'hbbbe;
	B = 16'h38c9;
	ans = 16'hb5ea;
	#20
	A = 16'hb6c3;
	B = 16'h3559;
	ans = 16'hada8;
	#20
	A = 16'hbae6;
	B = 16'h3981;
	ans = 16'hb194;
	#20
	A = 16'hbae1;
	B = 16'hb88f;
	ans = 16'hbdb8;
	#20
	A = 16'h3851;
	B = 16'hb2a8;
	ans = 16'h354e;
	#20
	A = 16'hb845;
	B = 16'h3288;
	ans = 16'hb546;
	#20
	A = 16'hb86d;
	B = 16'hb8ca;
	ans = 16'hbc9c;
	#20
	A = 16'h3912;
	B = 16'h399b;
	ans = 16'h3d56;
	#20
	A = 16'h341c;
	B = 16'h3a07;
	ans = 16'h3c0a;
	#20
	A = 16'hb6d4;
	B = 16'h2905;
	ans = 16'hb633;
	#20
	A = 16'h3973;
	B = 16'hb82c;
	ans = 16'h311c;
	#20
	A = 16'h3862;
	B = 16'h372e;
	ans = 16'h3bf9;
	#20
	A = 16'hb8c2;
	B = 16'h2c06;
	ans = 16'hb841;
	#20
	A = 16'hb47e;
	B = 16'hafe2;
	ans = 16'hb676;
	#20
	A = 16'hac1f;
	B = 16'hbad9;
	ans = 16'hbb5d;
	#20
	A = 16'h3729;
	B = 16'h1445;
	ans = 16'h372d;
	#20
	A = 16'h3a6e;
	B = 16'hb17a;
	ans = 16'h3910;
	#20
	A = 16'h3097;
	B = 16'hb372;
	ans = 16'hadb6;
	#20
	A = 16'hb5dc;
	B = 16'hb905;
	ans = 16'hbbf3;
	#20
	A = 16'h2843;
	B = 16'h394e;
	ans = 16'h3992;
	#20
	A = 16'h39ce;
	B = 16'h2ebc;
	ans = 16'h3aa6;
	#20
	A = 16'hb4af;
	B = 16'h3675;
	ans = 16'h2f18;
	#20
	A = 16'hbb7f;
	B = 16'hbb83;
	ans = 16'hbf81;
	#20
	A = 16'hb9cb;
	B = 16'hbbc1;
	ans = 16'hbec6;
	#20
	A = 16'h3854;
	B = 16'h3324;
	ans = 16'h3a1d;
	#20
	A = 16'h3149;
	B = 16'h38b8;
	ans = 16'h3a0a;
	#20
	A = 16'hb531;
	B = 16'h38e1;
	ans = 16'h3491;
	#20
	A = 16'h3b1a;
	B = 16'hbaff;
	ans = 16'h22c0;
	#20
	A = 16'hbb86;
	B = 16'hb402;
	ans = 16'hbcc4;
	#20
	A = 16'hba60;
	B = 16'hb51c;
	ans = 16'hbc77;
	#20
	A = 16'h32ab;
	B = 16'hb2f1;
	ans = 16'ha060;
	#20
	A = 16'h32cd;
	B = 16'hb741;
	ans = 16'hb3b5;
	#20
	A = 16'hb779;
	B = 16'h38dd;
	ans = 16'h3082;
	#20
	A = 16'h2f0a;
	B = 16'h3847;
	ans = 16'h3928;
	#20
	A = 16'hbba7;
	B = 16'h31c0;
	ans = 16'hba37;
	#20
	A = 16'h38ec;
	B = 16'h37f4;
	ans = 16'h3c73;
	#20
	A = 16'haaca;
	B = 16'h3b47;
	ans = 16'h3ada;
	#20
	A = 16'h361e;
	B = 16'h3964;
	ans = 16'h3c3a;
	#20
	A = 16'h3952;
	B = 16'hafb5;
	ans = 16'h385b;
	#20
	A = 16'h3198;
	B = 16'h346e;
	ans = 16'h373a;
	#20
	A = 16'hb5ea;
	B = 16'hb502;
	ans = 16'hb976;
	#20
	A = 16'hbb71;
	B = 16'h2f4e;
	ans = 16'hba87;
	#20
	A = 16'h38ce;
	B = 16'haacc;
	ans = 16'h3861;
	#20
	A = 16'h3328;
	B = 16'h3097;
	ans = 16'h35e0;
	#20
	A = 16'h3595;
	B = 16'hb9e5;
	ans = 16'hb635;
	#20
	A = 16'h3bb8;
	B = 16'hb91e;
	ans = 16'h3534;
	#20
	A = 16'h3298;
	B = 16'hb642;
	ans = 16'hb1ec;
	#20
	A = 16'hb824;
	B = 16'hb24a;
	ans = 16'hb9b6;
	#20
	A = 16'hb225;
	B = 16'hb440;
	ans = 16'hb752;
	#20
	A = 16'h3bf9;
	B = 16'h3002;
	ans = 16'h3c7d;
	#20
	A = 16'h31cd;
	B = 16'hb8c0;
	ans = 16'hb69a;
	#20
	A = 16'hbbf1;
	B = 16'hba9f;
	ans = 16'hbf48;
	#20
	A = 16'hb6b9;
	B = 16'h3b0d;
	ans = 16'h3761;
	#20
	A = 16'h2d69;
	B = 16'h34be;
	ans = 16'h3618;
	#20
	A = 16'hb7de;
	B = 16'hb0e7;
	ans = 16'hb929;
	#20
	A = 16'hb963;
	B = 16'h3970;
	ans = 16'h1e80;
	#20
	A = 16'h330f;
	B = 16'h3008;
	ans = 16'h358c;
	#20
	A = 16'hb4f9;
	B = 16'h3705;
	ans = 16'h3018;
	#20
	A = 16'h33c0;
	B = 16'h38ce;
	ans = 16'h3abe;
	#20
	A = 16'h3838;
	B = 16'hb333;
	ans = 16'h34d6;
	#20
	A = 16'h3412;
	B = 16'h3b39;
	ans = 16'h3ca1;
	#20
	A = 16'hb99c;
	B = 16'hbad2;
	ans = 16'hbe37;
	#20
	A = 16'hb96a;
	B = 16'hb1e1;
	ans = 16'hbae2;
	#20
	A = 16'h388e;
	B = 16'hb963;
	ans = 16'haea8;
	#20
	A = 16'h3882;
	B = 16'hbb8d;
	ans = 16'hb616;
	#20
	A = 16'h3678;
	B = 16'hb112;
	ans = 16'h33de;
	#20
	A = 16'h329d;
	B = 16'h2e02;
	ans = 16'h34cf;
	#20
	A = 16'hb6f1;
	B = 16'h3b32;
	ans = 16'h3773;
	#20
	A = 16'h35ff;
	B = 16'hb9a7;
	ans = 16'hb54f;
	#20
	A = 16'h36ef;
	B = 16'ha1d6;
	ans = 16'h36c0;
	#20
	A = 16'h2a29;
	B = 16'h3a9c;
	ans = 16'h3aff;
	#20
	A = 16'hb462;
	B = 16'hb8ef;
	ans = 16'hbb20;
	#20
	A = 16'h3b41;
	B = 16'h30b5;
	ans = 16'h3c37;
	#20
	A = 16'h2c51;
	B = 16'h3a8a;
	ans = 16'h3b14;
	#20
	A = 16'h3887;
	B = 16'hb4c5;
	ans = 16'h3449;
	#20
	A = 16'hb90a;
	B = 16'hba9d;
	ans = 16'hbdd4;
	#20
	A = 16'h3750;
	B = 16'h3b6e;
	ans = 16'h3d8b;
	#20
	A = 16'h34a0;
	B = 16'h3b10;
	ans = 16'h3cb0;
	#20
	A = 16'hb83b;
	B = 16'hb617;
	ans = 16'hbb46;
	#20
	A = 16'h3899;
	B = 16'hb8e0;
	ans = 16'ha870;
	#20
	A = 16'h3ada;
	B = 16'h397f;
	ans = 16'h3e2c;
	#20
	A = 16'hb6a0;
	B = 16'h35e2;
	ans = 16'ha9f0;
	#20
	A = 16'hb9ef;
	B = 16'hbb16;
	ans = 16'hbe82;
	#20
	A = 16'hb6f4;
	B = 16'h36e3;
	ans = 16'h9c40;
	#20
	A = 16'hb7b8;
	B = 16'hb99d;
	ans = 16'hbcbc;
	#20
	A = 16'hb823;
	B = 16'hb858;
	ans = 16'hbc3e;
	#20
	A = 16'hb9fe;
	B = 16'h3246;
	ans = 16'hb86c;
	#20
	A = 16'hb565;
	B = 16'hb8f3;
	ans = 16'hbba6;
	#20
	A = 16'h37dc;
	B = 16'h3b14;
	ans = 16'h3d81;
	#20
	A = 16'h1a15;
	B = 16'hbbff;
	ans = 16'hbbf9;
	#20
	A = 16'h3504;
	B = 16'h3b96;
	ans = 16'h3d0c;
	#20
	A = 16'h39a1;
	B = 16'hba4a;
	ans = 16'had48;
	#20
	A = 16'hba55;
	B = 16'hb41b;
	ans = 16'hbc31;
	#20
	A = 16'hb2fa;
	B = 16'h2c3c;
	ans = 16'hb0dc;
	#20
	A = 16'hb800;
	B = 16'h39c9;
	ans = 16'h3324;
	#20
	A = 16'hb979;
	B = 16'h3895;
	ans = 16'haf20;
	#20
	A = 16'hb878;
	B = 16'h36b7;
	ans = 16'hb072;
	#20
	A = 16'hb847;
	B = 16'hb678;
	ans = 16'hbb83;
	#20
	A = 16'h34c6;
	B = 16'h34c9;
	ans = 16'h38c8;
	#20
	A = 16'hae14;
	B = 16'hb732;
	ans = 16'hb85c;
	#20
	A = 16'h385c;
	B = 16'hb182;
	ans = 16'h35f7;
	#20
	A = 16'hb8bb;
	B = 16'h38c2;
	ans = 16'h1b00;
	#20
	A = 16'h3bc0;
	B = 16'hb94b;
	ans = 16'h34ea;
	#20
	A = 16'hbb7d;
	B = 16'hbac9;
	ans = 16'hbf23;
	#20
	A = 16'hb7a2;
	B = 16'hb5fe;
	ans = 16'hbad0;
	#20
	A = 16'hb8af;
	B = 16'hba50;
	ans = 16'hbd80;
	#20
	A = 16'h3a6a;
	B = 16'h3962;
	ans = 16'h3de6;
	#20
	A = 16'hb095;
	B = 16'hb483;
	ans = 16'hb6ce;
	#20
	A = 16'h37f3;
	B = 16'hb877;
	ans = 16'habd8;
	#20
	A = 16'hb411;
	B = 16'h3bda;
	ans = 16'h39d2;
	#20
	A = 16'h39ed;
	B = 16'h3bc2;
	ans = 16'h3ed8;
	#20
	A = 16'hb268;
	B = 16'h3505;
	ans = 16'h2f44;
	#20
	A = 16'h9c06;
	B = 16'h3224;
	ans = 16'h3204;
	#20
	A = 16'h2f97;
	B = 16'hb8af;
	ans = 16'hb778;
	#20
	A = 16'hb81b;
	B = 16'h3a47;
	ans = 16'h3458;
	#20
	A = 16'h3110;
	B = 16'h3596;
	ans = 16'h380f;
	#20
	A = 16'hb521;
	B = 16'h37b6;
	ans = 16'h312a;
	#20
	A = 16'hb68a;
	B = 16'hba93;
	ans = 16'hbcec;
	#20
	A = 16'h3a26;
	B = 16'h3b77;
	ans = 16'h3ece;
	#20
	A = 16'h31e4;
	B = 16'h3b3b;
	ans = 16'h3c5a;
	#20
	A = 16'hb1d2;
	B = 16'hb75c;
	ans = 16'hb922;
	#20
	A = 16'haf60;
	B = 16'hb8bd;
	ans = 16'hb9a9;
	#20
	A = 16'h3178;
	B = 16'h2b27;
	ans = 16'h3342;
	#20
	A = 16'h375b;
	B = 16'hb236;
	ans = 16'h3440;
	#20
	A = 16'hb8f1;
	B = 16'h37e9;
	ans = 16'hafe4;
	#20
	A = 16'h38cd;
	B = 16'hb521;
	ans = 16'h3479;
	#20
	A = 16'hb8cc;
	B = 16'h35f8;
	ans = 16'hb340;
	#20
	A = 16'h3adb;
	B = 16'hbbdf;
	ans = 16'hb010;
	#20
	A = 16'hbb8a;
	B = 16'hb54e;
	ans = 16'hbd18;
	#20
	A = 16'hb56d;
	B = 16'hb951;
	ans = 16'hbc04;
	#20
	A = 16'h333a;
	B = 16'h3643;
	ans = 16'h38f0;
	#20
	A = 16'h3b94;
	B = 16'hbabd;
	ans = 16'h2eb8;
	#20
	A = 16'hbb35;
	B = 16'h3bc7;
	ans = 16'h2c90;
	#20
	A = 16'h9ec7;
	B = 16'h3456;
	ans = 16'h343b;
	#20
	A = 16'hac99;
	B = 16'hbaab;
	ans = 16'hbb3e;
	#20
	A = 16'hb772;
	B = 16'hb9b7;
	ans = 16'hbcb8;
	#20
	A = 16'h394b;
	B = 16'hb7dc;
	ans = 16'h3174;
	#20
	A = 16'hb68f;
	B = 16'h3aca;
	ans = 16'h3705;
	#20
	A = 16'hba00;
	B = 16'hb057;
	ans = 16'hbb16;
	#20
	A = 16'hb861;
	B = 16'hb59b;
	ans = 16'hbb2e;
	#20
	A = 16'hb698;
	B = 16'h3144;
	ans = 16'hb3ec;
	#20
	A = 16'hbbe0;
	B = 16'hbb84;
	ans = 16'hbfb2;
	#20
	A = 16'h3a4e;
	B = 16'h3ad2;
	ans = 16'h3e90;
	#20
	A = 16'h3bba;
	B = 16'h3b9a;
	ans = 16'h3faa;
	#20
	A = 16'hb89a;
	B = 16'hb866;
	ans = 16'hbc80;
	#20
	A = 16'hbaea;
	B = 16'h3b03;
	ans = 16'h2240;
	#20
	A = 16'hbaa6;
	B = 16'haff6;
	ans = 16'hbba5;
	#20
	A = 16'h34ad;
	B = 16'h2dd6;
	ans = 16'h3622;
	#20
	A = 16'hbb2b;
	B = 16'hb43f;
	ans = 16'hbca5;
	#20
	A = 16'hbb3c;
	B = 16'hbbaf;
	ans = 16'hbf76;
	#20
	A = 16'h3b40;
	B = 16'hb988;
	ans = 16'h32e0;
	#20
	A = 16'hb3b6;
	B = 16'h3440;
	ans = 16'h2650;
	#20
	A = 16'hab7d;
	B = 16'hb340;
	ans = 16'hb490;
	#20
	A = 16'h3902;
	B = 16'hb769;
	ans = 16'h3136;
	#20
	A = 16'hb98c;
	B = 16'hbb4f;
	ans = 16'hbe6e;
	#20
	A = 16'hbbce;
	B = 16'hbb24;
	ans = 16'hbf79;
	#20
	A = 16'h1cc3;
	B = 16'h388d;
	ans = 16'h3897;
	#20
	A = 16'h2cb5;
	B = 16'hb593;
	ans = 16'hb466;
	#20
	A = 16'hb44a;
	B = 16'h36f8;
	ans = 16'h315c;
	#20
	A = 16'hbb76;
	B = 16'hb73f;
	ans = 16'hbd8b;
	#20
	A = 16'h3849;
	B = 16'h2900;
	ans = 16'h3899;
	#20
	A = 16'h385d;
	B = 16'h302c;
	ans = 16'h3968;
	#20
	A = 16'h37a2;
	B = 16'hb835;
	ans = 16'haa40;
	#20
	A = 16'h34d9;
	B = 16'hb7f8;
	ans = 16'hb23e;
	#20
	A = 16'h384e;
	B = 16'h3934;
	ans = 16'h3cc1;
	#20
	A = 16'h38c9;
	B = 16'h3aa8;
	ans = 16'h3db8;
	#20
	A = 16'h360d;
	B = 16'h3418;
	ans = 16'h3912;
	#20
	A = 16'hb3c2;
	B = 16'h33ea;
	ans = 16'h1d00;
	#20
	A = 16'hb7ab;
	B = 16'h3bec;
	ans = 16'h3816;
	#20
	A = 16'hb461;
	B = 16'hb8de;
	ans = 16'hbb0e;
	#20
	A = 16'hb998;
	B = 16'h374e;
	ans = 16'hb3c4;
	#20
	A = 16'h30f9;
	B = 16'h3a8f;
	ans = 16'h3bcd;
	#20
	A = 16'h2e6c;
	B = 16'h3644;
	ans = 16'h37df;
	#20
	A = 16'h32d5;
	B = 16'hb9b9;
	ans = 16'hb804;
	#20
	A = 16'hb813;
	B = 16'hb829;
	ans = 16'hbc1e;
	#20
	A = 16'hb22c;
	B = 16'h30d4;
	ans = 16'ha960;
	#20
	A = 16'h36f1;
	B = 16'h3694;
	ans = 16'h3ac2;
	#20
	A = 16'hbb4d;
	B = 16'hac92;
	ans = 16'hbbdf;
	#20
	A = 16'hb3e3;
	B = 16'h365d;
	ans = 16'h30d7;
	#20
	A = 16'hb4cb;
	B = 16'h39d2;
	ans = 16'h36d9;
	#20
	A = 16'hb8d1;
	B = 16'h3b0d;
	ans = 16'h3478;
	#20
	A = 16'h26da;
	B = 16'hb336;
	ans = 16'hb25b;
	#20
	A = 16'hb1ba;
	B = 16'hb6ba;
	ans = 16'hb8cc;
	#20
	A = 16'h368b;
	B = 16'hb852;
	ans = 16'hb032;
	#20
	A = 16'hb427;
	B = 16'ha8f4;
	ans = 16'hb4c6;
	#20
	A = 16'h3b2a;
	B = 16'hb578;
	ans = 16'h386e;
	#20
	A = 16'h38ce;
	B = 16'hb9a0;
	ans = 16'hae90;
	#20
	A = 16'h3885;
	B = 16'h34cb;
	ans = 16'h3aea;
	#20
	A = 16'hb2d1;
	B = 16'h34cb;
	ans = 16'h2d8a;
	#20
	A = 16'h3ba6;
	B = 16'hb4a4;
	ans = 16'h3954;
	#20
	A = 16'hbb3e;
	B = 16'h3911;
	ans = 16'hb45a;
	#20
	A = 16'h2ee3;
	B = 16'h3bde;
	ans = 16'h3c5d;
	#20
	A = 16'h309d;
	B = 16'hb3bb;
	ans = 16'hae3c;
	#20
	A = 16'hb8f1;
	B = 16'h3ba9;
	ans = 16'h3570;
	#20
	A = 16'h30eb;
	B = 16'hba7c;
	ans = 16'hb941;
	#20
	A = 16'hb56c;
	B = 16'h3ace;
	ans = 16'h3818;
	#20
	A = 16'h3973;
	B = 16'hbbdb;
	ans = 16'hb4d0;
	#20
	A = 16'h2b93;
	B = 16'h3aa2;
	ans = 16'h3b1b;
	#20
	A = 16'hb4bb;
	B = 16'hb5f2;
	ans = 16'hb956;
	#20
	A = 16'h3b00;
	B = 16'h3958;
	ans = 16'h3e2c;
	#20
	A = 16'h3a9a;
	B = 16'h385b;
	ans = 16'h3d7a;
	#20
	A = 16'hb940;
	B = 16'h3832;
	ans = 16'hb038;
	#20
	A = 16'h3461;
	B = 16'hb827;
	ans = 16'hb3da;
	#20
	A = 16'h2f8b;
	B = 16'h2d3a;
	ans = 16'h3262;
	#20
	A = 16'hb79e;
	B = 16'hb86f;
	ans = 16'hbc1f;
	#20
	A = 16'h335f;
	B = 16'h37a0;
	ans = 16'h39a8;
	#20
	A = 16'hb551;
	B = 16'h9f76;
	ans = 16'hb56f;
	#20
	A = 16'hbaee;
	B = 16'hb842;
	ans = 16'hbd98;
	#20
	A = 16'hb0ee;
	B = 16'hba4d;
	ans = 16'hbb88;
	#20
	A = 16'hb922;
	B = 16'hbbf9;
	ans = 16'hbe8e;
	#20
	A = 16'hb7aa;
	B = 16'had6c;
	ans = 16'hb882;
	#20
	A = 16'hbaaf;
	B = 16'h3b05;
	ans = 16'h2960;
	#20
	A = 16'h3a2e;
	B = 16'hbbcc;
	ans = 16'hb278;
	#20
	A = 16'h12b6;
	B = 16'h3be5;
	ans = 16'h3be7;
	#20
	A = 16'hb7f1;
	B = 16'hb9d3;
	ans = 16'hbce6;
	#20
	A = 16'hb3f8;
	B = 16'h2943;
	ans = 16'hb2a7;
	#20
	A = 16'h3a1b;
	B = 16'hac23;
	ans = 16'h3997;
	#20
	A = 16'h3259;
	B = 16'h39ad;
	ans = 16'h3b43;
	#20
	A = 16'hbaa4;
	B = 16'h3878;
	ans = 16'hb458;
	#20
	A = 16'h3875;
	B = 16'h3761;
	ans = 16'h3c13;
	#20
	A = 16'hb188;
	B = 16'hb5f2;
	ans = 16'hb85b;
	#20
	A = 16'h3aef;
	B = 16'h3540;
	ans = 16'h3cc8;
	#20
	A = 16'hafd0;
	B = 16'h3508;
	ans = 16'h3228;
	#20
	A = 16'h36a0;
	B = 16'h30c0;
	ans = 16'h3880;
	#20
	A = 16'h39ab;
	B = 16'h39c6;
	ans = 16'h3db8;
	#20
	A = 16'h3937;
	B = 16'h3b03;
	ans = 16'h3e1d;
	#20
	A = 16'hbbd0;
	B = 16'h39a4;
	ans = 16'hb458;
	#20
	A = 16'hba62;
	B = 16'h3123;
	ans = 16'hb919;
	#20
	A = 16'hb1d8;
	B = 16'hb158;
	ans = 16'hb598;
	#20
	A = 16'h3932;
	B = 16'hb801;
	ans = 16'h30c4;
	#20
	A = 16'h3b61;
	B = 16'h348a;
	ans = 16'h3cd3;
	#20
	A = 16'hb692;
	B = 16'h3946;
	ans = 16'h33f4;
	#20
	A = 16'h39ed;
	B = 16'h3a01;
	ans = 16'h3df7;
	#20
	A = 16'hb4b4;
	B = 16'h3b82;
	ans = 16'h3928;
	#20
	A = 16'h2d48;
	B = 16'hb47e;
	ans = 16'hb258;
	#20
	A = 16'hbbf2;
	B = 16'h34af;
	ans = 16'hb99a;
	#20
	A = 16'hb83c;
	B = 16'hb945;
	ans = 16'hbcc0;
	#20
	A = 16'h380a;
	B = 16'hae71;
	ans = 16'h3678;
	#20
	A = 16'hbabb;
	B = 16'hb5d2;
	ans = 16'hbcd2;
	#20
	A = 16'h3880;
	B = 16'h362b;
	ans = 16'h3b96;
	#20
	A = 16'hba8d;
	B = 16'hb617;
	ans = 16'hbccc;
	#20
	A = 16'h3472;
	B = 16'h36b6;
	ans = 16'h3994;
	#20
	A = 16'h3806;
	B = 16'h389b;
	ans = 16'h3c50;
	#20
	A = 16'h363e;
	B = 16'hac36;
	ans = 16'h3530;
	#20
	A = 16'hb629;
	B = 16'h34d6;
	ans = 16'had4c;
	#20
	A = 16'h329a;
	B = 16'hb963;
	ans = 16'hb779;
	#20
	A = 16'hba24;
	B = 16'hb942;
	ans = 16'hbdb3;
	#20
	A = 16'hb646;
	B = 16'hb817;
	ans = 16'hbb3a;
	#20
	A = 16'h3806;
	B = 16'h3b0c;
	ans = 16'h3d89;
	#20
	A = 16'hb4cb;
	B = 16'h38cd;
	ans = 16'h34cf;
	#20
	A = 16'hb791;
	B = 16'h3535;
	ans = 16'hb0b8;
	#20
	A = 16'h34f1;
	B = 16'haf28;
	ans = 16'h324e;
	#20
	A = 16'hbb28;
	B = 16'h37c4;
	ans = 16'hb68c;
	#20
	A = 16'h3a28;
	B = 16'hb39d;
	ans = 16'h3841;
	#20
	A = 16'h9b28;
	B = 16'hb4eb;
	ans = 16'hb4f9;
	#20
	A = 16'hb821;
	B = 16'hb339;
	ans = 16'hb9ef;
	#20
	A = 16'h3bda;
	B = 16'h38f7;
	ans = 16'h3e68;
	#20
	A = 16'hb93e;
	B = 16'h39e3;
	ans = 16'h2d28;
	#20
	A = 16'h35d2;
	B = 16'hba7f;
	ans = 16'hb72c;
	#20
	A = 16'hb7f0;
	B = 16'h3341;
	ans = 16'hb450;
	#20
	A = 16'hb350;
	B = 16'h31d7;
	ans = 16'ha9e4;
	#20
	A = 16'h3650;
	B = 16'hb2da;
	ans = 16'h31c6;
	#20
	A = 16'h32a3;
	B = 16'hb97a;
	ans = 16'hb7a2;
	#20
	A = 16'hb12e;
	B = 16'h3851;
	ans = 16'h360b;
	#20
	A = 16'h3828;
	B = 16'h3654;
	ans = 16'h3b52;
	#20
	A = 16'hb0f2;
	B = 16'hb4be;
	ans = 16'hb737;
	#20
	A = 16'h3900;
	B = 16'h37fe;
	ans = 16'h3c80;
	#20
	A = 16'h2b44;
	B = 16'h3a05;
	ans = 16'h3a79;
	#20
	A = 16'hb867;
	B = 16'hb4f6;
	ans = 16'hbae2;
	#20
	A = 16'h32f4;
	B = 16'hb901;
	ans = 16'hb688;
	#20
	A = 16'hbbf0;
	B = 16'h3b51;
	ans = 16'hacf8;
	#20
	A = 16'hb492;
	B = 16'h39fc;
	ans = 16'h3766;
	#20
	A = 16'h3b2b;
	B = 16'hbb64;
	ans = 16'ha720;
	#20
	A = 16'hb8cb;
	B = 16'hb01f;
	ans = 16'hb9d3;
	#20
	A = 16'hb92f;
	B = 16'h3267;
	ans = 16'hb72a;
	#20
	A = 16'h3b49;
	B = 16'h30e4;
	ans = 16'h3c41;
	#20
	A = 16'hba2b;
	B = 16'hb7f6;
	ans = 16'hbd13;
	#20
	A = 16'ha40b;
	B = 16'hb936;
	ans = 16'hb956;
	#20
	A = 16'hba19;
	B = 16'hbbf5;
	ans = 16'hbf07;
	#20
	A = 16'h37fb;
	B = 16'h38b3;
	ans = 16'h3c58;
	#20
	A = 16'h3983;
	B = 16'hb67e;
	ans = 16'h3488;
	#20
	A = 16'hb5a6;
	B = 16'hb4c2;
	ans = 16'hb934;
	#20
	A = 16'hbbff;
	B = 16'hb802;
	ans = 16'hbe00;
	#20
	A = 16'h3aea;
	B = 16'h346a;
	ans = 16'h3c90;
	#20
	A = 16'h283b;
	B = 16'h38b3;
	ans = 16'h38f7;
	#20
	A = 16'h3487;
	B = 16'ha8b8;
	ans = 16'h33e0;
	#20
	A = 16'hba34;
	B = 16'ha5df;
	ans = 16'hba63;
	#20
	A = 16'hb1ac;
	B = 16'h34a7;
	ans = 16'h2f44;
	#20
	A = 16'h306a;
	B = 16'h3abb;
	ans = 16'h3bd6;
	#20
	A = 16'h2565;
	B = 16'hb995;
	ans = 16'hb96a;
	#20
	A = 16'h3926;
	B = 16'h2c59;
	ans = 16'h39b1;
	#20
	A = 16'h3059;
	B = 16'hb520;
	ans = 16'hb1e7;
	#20
	A = 16'hbba9;
	B = 16'h3b1a;
	ans = 16'hac78;
	#20
	A = 16'h3b73;
	B = 16'h34ed;
	ans = 16'h3cf5;
	#20
	A = 16'h36a8;
	B = 16'h3840;
	ans = 16'h3b94;
	#20
	A = 16'hb864;
	B = 16'hb7a7;
	ans = 16'hbc1c;
	#20
	A = 16'hb035;
	B = 16'hb526;
	ans = 16'hb740;
	#20
	A = 16'h3977;
	B = 16'h3aff;
	ans = 16'h3e3b;
	#20
	A = 16'h3511;
	B = 16'h3a74;
	ans = 16'h3c7e;
	#20
	A = 16'hb6bc;
	B = 16'hb8d8;
	ans = 16'hbc1b;
	#20
	A = 16'h3678;
	B = 16'ha2e0;
	ans = 16'h3641;
	#20
	A = 16'h3536;
	B = 16'h3947;
	ans = 16'h3be2;
	#20
	A = 16'h236e;
	B = 16'h32e1;
	ans = 16'h3358;
	#20
	A = 16'hba85;
	B = 16'h38df;
	ans = 16'hb298;
	#20
	A = 16'hbb8a;
	B = 16'hb46c;
	ans = 16'hbce0;
	#20
	A = 16'hb940;
	B = 16'hb47c;
	ans = 16'hbb7e;
	#20
	A = 16'hbb99;
	B = 16'hb9f5;
	ans = 16'hbec7;
	#20
	A = 16'hb22e;
	B = 16'h39e4;
	ans = 16'h3858;
	#20
	A = 16'hbb99;
	B = 16'hb665;
	ans = 16'hbd66;
	#20
	A = 16'h3414;
	B = 16'hbbd6;
	ans = 16'hb9cc;
	#20
	A = 16'h3842;
	B = 16'h376c;
	ans = 16'h3bf8;
	#20
	A = 16'h36b3;
	B = 16'h3a46;
	ans = 16'h3cd0;
	#20
	A = 16'h361f;
	B = 16'h38da;
	ans = 16'h3bea;
	#20
	A = 16'h3939;
	B = 16'h3a1c;
	ans = 16'h3daa;
	#20
	A = 16'hb556;
	B = 16'hb5cb;
	ans = 16'hb990;
	#20
	A = 16'hbb2f;
	B = 16'hac58;
	ans = 16'hbbba;
	#20
	A = 16'h3438;
	B = 16'ha850;
	ans = 16'h335c;
	#20
	A = 16'hb67c;
	B = 16'hb451;
	ans = 16'hb966;
	#20
	A = 16'hb0a8;
	B = 16'hb5ac;
	ans = 16'hb800;
	#20
	A = 16'h384e;
	B = 16'hb5a2;
	ans = 16'h31f4;
	#20
	A = 16'hb988;
	B = 16'h36a0;
	ans = 16'hb470;
	#20
	A = 16'hbb67;
	B = 16'hac24;
	ans = 16'hbbec;
	#20
	A = 16'hb295;
	B = 16'hb928;
	ans = 16'hbacd;
	#20
	A = 16'h34a5;
	B = 16'h3a59;
	ans = 16'h3c56;
	#20
	A = 16'h2ebc;
	B = 16'hba46;
	ans = 16'hb96e;
	#20
	A = 16'h36ae;
	B = 16'hbbb2;
	ans = 16'hb85b;
	#20
	A = 16'h3b88;
	B = 16'h2ecf;
	ans = 16'h3c31;
	#20
	A = 16'hba04;
	B = 16'h3598;
	ans = 16'hb670;
	#20
	A = 16'h2f03;
	B = 16'h38e6;
	ans = 16'h39c6;
	#20
	A = 16'hb82d;
	B = 16'h3389;
	ans = 16'hb496;
	#20
	A = 16'hb986;
	B = 16'h358d;
	ans = 16'hb57f;
	#20
	A = 16'hb5ee;
	B = 16'hb8d8;
	ans = 16'hbbcf;
	#20
	A = 16'h34fa;
	B = 16'h3105;
	ans = 16'h377c;
	#20
	A = 16'hba5e;
	B = 16'hb805;
	ans = 16'hbd32;
	#20
	A = 16'h37c3;
	B = 16'hb342;
	ans = 16'h3422;
	#20
	A = 16'hb559;
	B = 16'h3a9e;
	ans = 16'h37e3;
	#20
	A = 16'h3509;
	B = 16'h3a6d;
	ans = 16'h3c79;
	#20
	A = 16'hb805;
	B = 16'h29ef;
	ans = 16'hb74c;
	#20
	A = 16'ha584;
	B = 16'h3ae7;
	ans = 16'h3abb;
	#20
	A = 16'ha933;
	B = 16'h364d;
	ans = 16'h35a7;
	#20
	A = 16'hba9c;
	B = 16'hb733;
	ans = 16'hbd1b;
	#20
	A = 16'hbbfa;
	B = 16'h3aa6;
	ans = 16'hb150;
	#20
	A = 16'hb001;
	B = 16'hb508;
	ans = 16'hb708;
	#20
	A = 16'h2ff0;
	B = 16'h3954;
	ans = 16'h3a52;
	#20
	A = 16'h38e1;
	B = 16'hbb91;
	ans = 16'hb560;
	#20
	A = 16'hb7f0;
	B = 16'hbbc5;
	ans = 16'hbdde;
	#20
	A = 16'h3aea;
	B = 16'hb34a;
	ans = 16'h3918;
	#20
	A = 16'hba8d;
	B = 16'h26b7;
	ans = 16'hba57;
	#20
	A = 16'hb8a8;
	B = 16'hb3cf;
	ans = 16'hba9c;
	#20
	A = 16'hb2fb;
	B = 16'h312f;
	ans = 16'hab30;
	#20
	A = 16'hb561;
	B = 16'hb85b;
	ans = 16'hbb0c;
	#20
	A = 16'h3864;
	B = 16'h3995;
	ans = 16'h3cfc;
	#20
	A = 16'h38b3;
	B = 16'h3bf8;
	ans = 16'h3e56;
	#20
	A = 16'h347a;
	B = 16'h3ba1;
	ans = 16'h3cef;
	#20
	A = 16'hb3cd;
	B = 16'h3764;
	ans = 16'h32fb;
	#20
	A = 16'hbb8a;
	B = 16'h31e9;
	ans = 16'hba10;
	#20
	A = 16'hb937;
	B = 16'hbac6;
	ans = 16'hbdfe;
	#20
	A = 16'hb236;
	B = 16'hb296;
	ans = 16'hb666;
	#20
	A = 16'h3762;
	B = 16'h3834;
	ans = 16'h3be5;
	#20
	A = 16'hbbc6;
	B = 16'hb888;
	ans = 16'hbe27;
	#20
	A = 16'h38d7;
	B = 16'h32e2;
	ans = 16'h3a90;
	#20
	A = 16'hae37;
	B = 16'h32ed;
	ans = 16'h2fa3;
	#20
	A = 16'h31ec;
	B = 16'h1ea9;
	ans = 16'h3221;
	#20
	A = 16'haca5;
	B = 16'hbb18;
	ans = 16'hbbad;
	#20
	A = 16'hbb76;
	B = 16'hba3d;
	ans = 16'hbeda;
	#20
	A = 16'h3b46;
	B = 16'h3b95;
	ans = 16'h3f6e;
	#20
	A = 16'h3ab5;
	B = 16'hb9ee;
	ans = 16'h2e38;
	#20
	A = 16'hbb6b;
	B = 16'hb96b;
	ans = 16'hbe6b;
	#20
	A = 16'h3bf0;
	B = 16'h3041;
	ans = 16'h3c80;
	#20
	A = 16'h3864;
	B = 16'h3b13;
	ans = 16'h3dbc;
	#20
	A = 16'h3b70;
	B = 16'hba5b;
	ans = 16'h3054;
	#20
	A = 16'h336b;
	B = 16'h3885;
	ans = 16'h3a60;
	#20
	A = 16'h33c1;
	B = 16'h3b42;
	ans = 16'h3c99;
	#20
	A = 16'h3a72;
	B = 16'hb5eb;
	ans = 16'h36f9;
	#20
	A = 16'h3a22;
	B = 16'ha344;
	ans = 16'h3a05;
	#20
	A = 16'h3182;
	B = 16'h38b2;
	ans = 16'h3a12;
	#20
	A = 16'hb15b;
	B = 16'ha821;
	ans = 16'hb263;
	#20
	A = 16'h387e;
	B = 16'habfb;
	ans = 16'h37fd;
	#20
	A = 16'h3727;
	B = 16'h371b;
	ans = 16'h3b21;
	#20
	A = 16'h35cf;
	B = 16'h371e;
	ans = 16'h3a76;
	#20
	A = 16'h3920;
	B = 16'hb9ca;
	ans = 16'had50;
	#20
	A = 16'h35fc;
	B = 16'hb64f;
	ans = 16'ha530;
	#20
	A = 16'h3b94;
	B = 16'h3903;
	ans = 16'h3e4c;
	#20
	A = 16'h32c0;
	B = 16'h2ade;
	ans = 16'h343c;
	#20
	A = 16'h3612;
	B = 16'h3495;
	ans = 16'h3954;
	#20
	A = 16'hb579;
	B = 16'hb736;
	ans = 16'hba58;
	#20
	A = 16'haf71;
	B = 16'hbbd9;
	ans = 16'hbc64;
	#20
	A = 16'h317f;
	B = 16'h390c;
	ans = 16'h3a6c;
	#20
	A = 16'hb519;
	B = 16'h3a86;
	ans = 16'h37f3;
	#20
	A = 16'h2a78;
	B = 16'h22a8;
	ans = 16'h2c11;
	#20
	A = 16'hb78b;
	B = 16'h3337;
	ans = 16'hb3df;
	#20
	A = 16'hb1ae;
	B = 16'had43;
	ans = 16'hb428;
	#20
	A = 16'hba08;
	B = 16'hb56e;
	ans = 16'hbc60;
	#20
	A = 16'h34ff;
	B = 16'h3b83;
	ans = 16'h3d01;
	#20
	A = 16'hbb83;
	B = 16'h3ab3;
	ans = 16'hae80;
	#20
	A = 16'hb1dc;
	B = 16'hba1a;
	ans = 16'hbb91;
	#20
	A = 16'h3844;
	B = 16'h3b1d;
	ans = 16'h3db0;
	#20
	A = 16'hbbac;
	B = 16'h3a09;
	ans = 16'hb28c;
	#20
	A = 16'h38d1;
	B = 16'h2d53;
	ans = 16'h397b;
	#20
	A = 16'h3ab9;
	B = 16'hb8ac;
	ans = 16'h341a;
	#20
	A = 16'h3539;
	B = 16'hbb1f;
	ans = 16'hb882;
	#20
	A = 16'hb05f;
	B = 16'h3b09;
	ans = 16'h39f1;
	#20
	A = 16'h3b53;
	B = 16'h393f;
	ans = 16'h3e49;
	#20
	A = 16'hb4ea;
	B = 16'hb90c;
	ans = 16'hbb81;
	#20
	A = 16'hb2de;
	B = 16'h2af4;
	ans = 16'hb121;
	#20
	A = 16'h2ff5;
	B = 16'h304a;
	ans = 16'h3422;
	#20
	A = 16'h3a03;
	B = 16'h3b6e;
	ans = 16'h3eb8;
	#20
	A = 16'hadea;
	B = 16'h3976;
	ans = 16'h38b9;
	#20
	A = 16'hbad9;
	B = 16'h3b90;
	ans = 16'h2db8;
	#20
	A = 16'h34ec;
	B = 16'h3ac4;
	ans = 16'h3c9d;
	#20
	A = 16'hbb48;
	B = 16'hbbaa;
	ans = 16'hbf79;
	#20
	A = 16'hb84b;
	B = 16'h364b;
	ans = 16'hb096;
	#20
	A = 16'h3450;
	B = 16'h3a5e;
	ans = 16'h3c43;
	#20
	A = 16'hb802;
	B = 16'ha96b;
	ans = 16'hb859;
	#20
	A = 16'h38ef;
	B = 16'h37ee;
	ans = 16'h3c73;
	#20
	A = 16'h3749;
	B = 16'h352d;
	ans = 16'h3a3b;
	#20
	A = 16'hbae2;
	B = 16'hbb67;
	ans = 16'hbf24;
	#20
	A = 16'hb46c;
	B = 16'hb4d9;
	ans = 16'hb8a2;
	#20
	A = 16'ha302;
	B = 16'h9682;
	ans = 16'ha3d2;
	#20
	A = 16'h38a7;
	B = 16'h3b45;
	ans = 16'h3df6;
	#20
	A = 16'h3b3a;
	B = 16'h3a6c;
	ans = 16'h3ed3;
	#20
	A = 16'h3aa8;
	B = 16'hb7ba;
	ans = 16'h3596;
	#20
	A = 16'h3897;
	B = 16'hb5f8;
	ans = 16'h326c;
	#20
	A = 16'hba22;
	B = 16'h306f;
	ans = 16'hb906;
	#20
	A = 16'h2cf8;
	B = 16'h2e22;
	ans = 16'h318d;
	#20
	A = 16'h2e8f;
	B = 16'hb9dd;
	ans = 16'hb90b;
	#20
	A = 16'h371d;
	B = 16'hba0f;
	ans = 16'hb501;
	#20
	A = 16'hb81c;
	B = 16'hb659;
	ans = 16'hbb48;
	#20
	A = 16'h39fe;
	B = 16'ha91a;
	ans = 16'h39ac;
	#20
	A = 16'h35f2;
	B = 16'h3078;
	ans = 16'h3817;
	#20
	A = 16'hba5d;
	B = 16'hb86d;
	ans = 16'hbd65;
	#20
	A = 16'h39be;
	B = 16'hba71;
	ans = 16'had98;
	#20
	A = 16'h3184;
	B = 16'h2fe5;
	ans = 16'h34bb;
	#20
	A = 16'h3a7a;
	B = 16'hb7c4;
	ans = 16'h3530;
	#20
	A = 16'hb4cf;
	B = 16'hb4cf;
	ans = 16'hb8cf;
	#20
	A = 16'hb863;
	B = 16'h3a1d;
	ans = 16'h32e8;
	#20
	A = 16'h356f;
	B = 16'hb3a7;
	ans = 16'h2e6e;
	#20
	A = 16'hb65c;
	B = 16'hb96f;
	ans = 16'hbc4e;
	#20
	A = 16'hb8a0;
	B = 16'hb562;
	ans = 16'hbb51;
	#20
	A = 16'hb1d5;
	B = 16'hbb4f;
	ans = 16'hbc62;
	#20
	A = 16'hbad0;
	B = 16'hb9ba;
	ans = 16'hbe45;
	#20
	A = 16'hae07;
	B = 16'hb96d;
	ans = 16'hba2e;
	#20
	A = 16'hb4a0;
	B = 16'h39d8;
	ans = 16'h3710;
	#20
	A = 16'h3a42;
	B = 16'hba2e;
	ans = 16'h2100;
	#20
	A = 16'h3665;
	B = 16'h322c;
	ans = 16'h38be;
	#20
	A = 16'hb2ea;
	B = 16'hbbb8;
	ans = 16'hbcb9;
	#20
	A = 16'h3911;
	B = 16'hb4ec;
	ans = 16'h3536;
	#20
	A = 16'h3378;
	B = 16'hb2d4;
	ans = 16'h2520;
	#20
	A = 16'hb3a9;
	B = 16'h2c34;
	ans = 16'hb18f;
	#20
	A = 16'h334b;
	B = 16'h3539;
	ans = 16'h386f;
	#20
	A = 16'h3769;
	B = 16'hba99;
	ans = 16'hb5c9;
	#20
	A = 16'h36f9;
	B = 16'h3a94;
	ans = 16'h3d08;
	#20
	A = 16'hb66d;
	B = 16'hbbe1;
	ans = 16'hbd8c;
	#20
	A = 16'h3962;
	B = 16'hbbaa;
	ans = 16'hb490;
	#20
	A = 16'h3aef;
	B = 16'hbb84;
	ans = 16'haca8;
	#20
	A = 16'h24b7;
	B = 16'haa90;
	ans = 16'ha834;
	#20
	A = 16'hb7bf;
	B = 16'h25a4;
	ans = 16'hb765;
	#20
	A = 16'hba05;
	B = 16'hbb85;
	ans = 16'hbec5;
	#20
	A = 16'hba2e;
	B = 16'h361a;
	ans = 16'hb642;
	#20
	A = 16'h3525;
	B = 16'hb6a7;
	ans = 16'hae08;
	#20
	A = 16'hbbcd;
	B = 16'hb593;
	ans = 16'hbd4b;
	#20
	A = 16'hba79;
	B = 16'h3a48;
	ans = 16'ha620;
	#20
	A = 16'h3736;
	B = 16'hb800;
	ans = 16'haa50;
	#20
	A = 16'hb7fb;
	B = 16'h3b66;
	ans = 16'h36d1;
	#20
	A = 16'h3485;
	B = 16'hb8c4;
	ans = 16'hb503;
	#20
	A = 16'ha465;
	B = 16'h39a9;
	ans = 16'h3986;
	#20
	A = 16'hba68;
	B = 16'hb482;
	ans = 16'hbc54;
	#20
	A = 16'hbb13;
	B = 16'hb9f0;
	ans = 16'hbe82;
	#20
	A = 16'h3b27;
	B = 16'h2b4a;
	ans = 16'h3b9c;
	#20
	A = 16'h347d;
	B = 16'h35a4;
	ans = 16'h3910;
	#20
	A = 16'hb79a;
	B = 16'hb133;
	ans = 16'hb91a;
	#20
	A = 16'h39f2;
	B = 16'hb720;
	ans = 16'h34c4;
	#20
	A = 16'hb4a2;
	B = 16'h3bd0;
	ans = 16'h397f;
	#20
	A = 16'h3900;
	B = 16'h366a;
	ans = 16'h3c1a;
	#20
	A = 16'hb67e;
	B = 16'hb50f;
	ans = 16'hb9c6;
	#20
	A = 16'h3907;
	B = 16'hb71e;
	ans = 16'h31e0;
	#20
	A = 16'hbba0;
	B = 16'hb293;
	ans = 16'hbca2;
	#20
	A = 16'hb05b;
	B = 16'h3931;
	ans = 16'h381a;
	#20
	A = 16'h3549;
	B = 16'hb857;
	ans = 16'hb2ca;
	#20
	A = 16'hb983;
	B = 16'h3afb;
	ans = 16'h31e0;
	#20
	A = 16'hb859;
	B = 16'h2986;
	ans = 16'hb801;
	#20
	A = 16'hba57;
	B = 16'h3ba9;
	ans = 16'h3148;
	#20
	A = 16'hb12c;
	B = 16'hbbaa;
	ans = 16'hbc7a;
	#20
	A = 16'hbad6;
	B = 16'h3795;
	ans = 16'hb617;
	#20
	A = 16'h3153;
	B = 16'hb84f;
	ans = 16'hb5f4;
	#20
	A = 16'h378b;
	B = 16'h3970;
	ans = 16'h3c9b;
	#20
	A = 16'h372e;
	B = 16'h3458;
	ans = 16'h39c3;
	#20
	A = 16'h39c6;
	B = 16'h3962;
	ans = 16'h3d94;
	#20
	A = 16'h363a;
	B = 16'hbbf1;
	ans = 16'hb8d4;
	#20
	A = 16'ha649;
	B = 16'h38a7;
	ans = 16'h3875;
	#20
	A = 16'h3af6;
	B = 16'h3b41;
	ans = 16'h3f1c;
	#20
	A = 16'hbb86;
	B = 16'h3aae;
	ans = 16'haec0;
	#20
	A = 16'hb4e6;
	B = 16'hb955;
	ans = 16'hbbc8;
	#20
	A = 16'habe7;
	B = 16'h3949;
	ans = 16'h38cb;
	#20
	A = 16'hb6be;
	B = 16'hbbfa;
	ans = 16'hbdac;
	#20
	A = 16'hba9c;
	B = 16'had14;
	ans = 16'hbb3e;
	#20
	A = 16'hb989;
	B = 16'h2209;
	ans = 16'hb971;
	#20
	A = 16'h39a1;
	B = 16'h25d5;
	ans = 16'h39d0;
	#20
	A = 16'h35fd;
	B = 16'hb7d1;
	ans = 16'haf50;
	#20
	A = 16'h364c;
	B = 16'h380c;
	ans = 16'h3b32;
	#20
	A = 16'h3876;
	B = 16'h3a1b;
	ans = 16'h3d48;
	#20
	A = 16'h37a7;
	B = 16'h3a8c;
	ans = 16'h3d30;
	#20
	A = 16'h34d6;
	B = 16'h3749;
	ans = 16'h3a10;
	#20
	A = 16'hb7d6;
	B = 16'hbbcb;
	ans = 16'hbddb;
	#20
	A = 16'hb026;
	B = 16'h31a1;
	ans = 16'h29ec;
	#20
	A = 16'h3355;
	B = 16'hbba6;
	ans = 16'hb9d1;
	#20
	A = 16'hbb91;
	B = 16'h38e7;
	ans = 16'hb554;
	#20
	A = 16'hb526;
	B = 16'h3a58;
	ans = 16'h378a;
	#20
	A = 16'hb80f;
	B = 16'h3b93;
	ans = 16'h3708;
	#20
	A = 16'h370c;
	B = 16'h3a60;
	ans = 16'h3cf3;
	#20
	A = 16'h364a;
	B = 16'h35e9;
	ans = 16'h3a1a;
	#20
	A = 16'h35fb;
	B = 16'hb4ce;
	ans = 16'h2cb4;
	#20
	A = 16'hb7b8;
	B = 16'hb3ab;
	ans = 16'hb9c7;
	#20
	A = 16'h3531;
	B = 16'h30db;
	ans = 16'h379e;
	#20
	A = 16'hba19;
	B = 16'hb07c;
	ans = 16'hbb38;
	#20
	A = 16'hb321;
	B = 16'hb71b;
	ans = 16'hb956;
	#20
	A = 16'hb86c;
	B = 16'h2ffd;
	ans = 16'hb6d9;
	#20
	A = 16'h3abc;
	B = 16'h3ac2;
	ans = 16'h3ebf;
	#20
	A = 16'hb8bf;
	B = 16'h3aae;
	ans = 16'h33bc;
	#20
	A = 16'hb877;
	B = 16'h3027;
	ans = 16'hb6da;
	#20
	A = 16'h3af1;
	B = 16'h3add;
	ans = 16'h3ee7;
	#20
	A = 16'h39f0;
	B = 16'h2e54;
	ans = 16'h3aba;
	#20
	A = 16'h35e1;
	B = 16'hb87a;
	ans = 16'hb226;
	#20
	A = 16'hb8be;
	B = 16'h3942;
	ans = 16'h2c20;
	#20
	A = 16'h34c6;
	B = 16'h35dd;
	ans = 16'h3952;
	#20
	A = 16'h3003;
	B = 16'h3891;
	ans = 16'h3992;
	#20
	A = 16'hb2b7;
	B = 16'h38c4;
	ans = 16'h362c;
	#20
	A = 16'hb998;
	B = 16'h2cc3;
	ans = 16'hb900;
	#20
	A = 16'hb4e5;
	B = 16'h3413;
	ans = 16'haa90;
	#20
	A = 16'h313e;
	B = 16'h3b25;
	ans = 16'h3c3a;
	#20
	A = 16'hb4ad;
	B = 16'hb69e;
	ans = 16'hb9a6;
	#20
	A = 16'hab99;
	B = 16'h35c5;
	ans = 16'h34d2;
	#20
	A = 16'h3ab3;
	B = 16'h3971;
	ans = 16'h3e12;
	#20
	A = 16'hb266;
	B = 16'h3b62;
	ans = 16'h39c8;
	#20
	A = 16'hb8b5;
	B = 16'h3ac6;
	ans = 16'h3422;
	#20
	A = 16'h30d2;
	B = 16'h3896;
	ans = 16'h39ca;
	#20
	A = 16'hb09a;
	B = 16'h37d5;
	ans = 16'h3588;
	#20
	A = 16'h3b7c;
	B = 16'h384c;
	ans = 16'h3de4;
	#20
	A = 16'h28df;
	B = 16'h3631;
	ans = 16'h36cd;
	#20
	A = 16'h3b9d;
	B = 16'hb8aa;
	ans = 16'h35e6;
	#20
	A = 16'h3bf1;
	B = 16'hb933;
	ans = 16'h357c;
	#20
	A = 16'hb963;
	B = 16'habe8;
	ans = 16'hb9e2;
	#20
	A = 16'hb89b;
	B = 16'hb7bf;
	ans = 16'hbc3d;
	#20
	A = 16'h36cf;
	B = 16'hb814;
	ans = 16'had64;
	#20
	A = 16'h39b3;
	B = 16'hba9d;
	ans = 16'haf50;
	#20
	A = 16'h33dd;
	B = 16'h3928;
	ans = 16'h3b1f;
	#20
	A = 16'h3616;
	B = 16'hba5d;
	ans = 16'hb6a4;
	#20
	A = 16'hb5ee;
	B = 16'ha548;
	ans = 16'hb642;
	#20
	A = 16'hb9a8;
	B = 16'h3949;
	ans = 16'ha9f0;
	#20
	A = 16'hbba6;
	B = 16'hb27c;
	ans = 16'hbca2;
	#20
	A = 16'haccb;
	B = 16'hb9bc;
	ans = 16'hba55;
	#20
	A = 16'hbaa2;
	B = 16'ha8e9;
	ans = 16'hbaf1;
	#20
	A = 16'h3b55;
	B = 16'h337d;
	ans = 16'h3c9a;
	#20
	A = 16'hba85;
	B = 16'h3ae3;
	ans = 16'h29e0;
	#20
	A = 16'hb848;
	B = 16'hba48;
	ans = 16'hbd48;
	#20
	A = 16'h38d8;
	B = 16'hb703;
	ans = 16'h315a;
	#20
	A = 16'h3700;
	B = 16'h2e28;
	ans = 16'h3845;
	#20
	A = 16'h335a;
	B = 16'h3a1a;
	ans = 16'h3bf0;
	#20
	A = 16'hba53;
	B = 16'hb66c;
	ans = 16'hbcc4;
	#20
	A = 16'hb363;
	B = 16'h3157;
	ans = 16'hac18;
	#20
	A = 16'hb942;
	B = 16'h38d9;
	ans = 16'haa90;
	#20
	A = 16'h3562;
	B = 16'hb4f3;
	ans = 16'h26f0;
	#20
	A = 16'hb542;
	B = 16'h39e3;
	ans = 16'h3684;
	#20
	A = 16'h3bce;
	B = 16'hb855;
	ans = 16'h36f2;
	#20
	A = 16'hba6a;
	B = 16'h38dc;
	ans = 16'hb238;
	#20
	A = 16'h3b80;
	B = 16'hb21a;
	ans = 16'h39fa;
	#20
	A = 16'hb242;
	B = 16'h3bbd;
	ans = 16'h3a2c;
	#20
	A = 16'hb280;
	B = 16'h34b2;
	ans = 16'h2dc8;
	#20
	A = 16'h36ef;
	B = 16'hbaef;
	ans = 16'hb6ef;
	#20
	A = 16'hb6b2;
	B = 16'h388b;
	ans = 16'h30c8;
	#20
	A = 16'h3a31;
	B = 16'h3b1a;
	ans = 16'h3ea6;
	#20
	A = 16'h33b0;
	B = 16'hbaae;
	ans = 16'hb8c2;
	#20
	A = 16'ha876;
	B = 16'h1e6b;
	ans = 16'ha751;
	#20
	A = 16'h3630;
	B = 16'h3b4c;
	ans = 16'h3d32;
	#20
	A = 16'h35e5;
	B = 16'hb3dd;
	ans = 16'h2fda;
	#20
	A = 16'hb77e;
	B = 16'h35ed;
	ans = 16'hae44;
	#20
	A = 16'hbbef;
	B = 16'h3b39;
	ans = 16'hadb0;
	#20
	A = 16'h36e6;
	B = 16'hba68;
	ans = 16'hb5ea;
	#20
	A = 16'h3871;
	B = 16'hba68;
	ans = 16'hb3dc;
	#20
	A = 16'h378e;
	B = 16'hb0c3;
	ans = 16'h352c;
	#20
	A = 16'hb9ef;
	B = 16'h3b3f;
	ans = 16'h3140;
	#20
	A = 16'h3ab0;
	B = 16'hbb6e;
	ans = 16'hadf0;
	#20
	A = 16'hb521;
	B = 16'h2c6a;
	ans = 16'hb406;
	#20
	A = 16'h35b4;
	B = 16'h38d7;
	ans = 16'h3bb1;
	#20
	A = 16'hb7db;
	B = 16'h35e6;
	ans = 16'hafd4;
	#20
	A = 16'h3b84;
	B = 16'hb185;
	ans = 16'h3a23;
	#20
	A = 16'hb309;
	B = 16'hb9f5;
	ans = 16'hbbb7;
	#20
	A = 16'hb86a;
	B = 16'h2861;
	ans = 16'hb824;
	#20
	A = 16'hb649;
	B = 16'hb697;
	ans = 16'hba70;
	#20
	A = 16'hb924;
	B = 16'hae97;
	ans = 16'hb9f7;
	#20
	A = 16'hbb87;
	B = 16'hba22;
	ans = 16'hbed4;
	#20
	A = 16'h34af;
	B = 16'h3b3a;
	ans = 16'h3cc9;
	#20
	A = 16'h3707;
	B = 16'h3beb;
	ans = 16'h3db7;
	#20
	A = 16'hb837;
	B = 16'hb708;
	ans = 16'hbbbb;
	#20
	A = 16'hb126;
	B = 16'h3b58;
	ans = 16'h3a0e;
	#20
	A = 16'hb778;
	B = 16'h39f5;
	ans = 16'h3472;
	#20
	A = 16'h3851;
	B = 16'hbacf;
	ans = 16'hb4fc;
	#20
	A = 16'hacfd;
	B = 16'h39ff;
	ans = 16'h395f;
	#20
	A = 16'h399b;
	B = 16'hb0c5;
	ans = 16'h386a;
	#20
	A = 16'h2ed7;
	B = 16'hb759;
	ans = 16'hb5a3;
	#20
	A = 16'had75;
	B = 16'hb800;
	ans = 16'hb8af;
	#20
	A = 16'h3a1c;
	B = 16'hbafa;
	ans = 16'haef0;
	#20
	A = 16'hb81d;
	B = 16'h355c;
	ans = 16'hb1bc;
	#20
	A = 16'hb883;
	B = 16'h3a58;
	ans = 16'h3354;
	#20
	A = 16'h38cc;
	B = 16'h3ac9;
	ans = 16'h3dca;
	#20
	A = 16'hb215;
	B = 16'hb1ec;
	ans = 16'hb600;
	#20
	A = 16'hb7c2;
	B = 16'h3025;
	ans = 16'hb5b0;
	#20
	A = 16'hb64d;
	B = 16'hbaa3;
	ans = 16'hbce5;
	#20
	A = 16'hb938;
	B = 16'h3425;
	ans = 16'hb64b;
	#20
	A = 16'h3ba6;
	B = 16'hb50d;
	ans = 16'h3920;
	#20
	A = 16'hba77;
	B = 16'h3a16;
	ans = 16'haa10;
	#20
	A = 16'ha5b7;
	B = 16'hbaf1;
	ans = 16'hbb1f;
	#20
	A = 16'hb940;
	B = 16'h38be;
	ans = 16'hac10;
	#20
	A = 16'ha01c;
	B = 16'h3297;
	ans = 16'h3255;
	#20
	A = 16'h391b;
	B = 16'ha964;
	ans = 16'h38c5;
	#20
	A = 16'hb83d;
	B = 16'h355e;
	ans = 16'hb238;
	#20
	A = 16'h32c1;
	B = 16'hbaf3;
	ans = 16'hb943;
	#20
	A = 16'h3b83;
	B = 16'hb4d7;
	ans = 16'h3918;
	#20
	A = 16'haee6;
	B = 16'hb0f6;
	ans = 16'hb434;
	#20
	A = 16'hba61;
	B = 16'h3843;
	ans = 16'hb43c;
	#20
	A = 16'hb9bd;
	B = 16'hbba3;
	ans = 16'hbeb0;
	#20
	A = 16'h2869;
	B = 16'hb718;
	ans = 16'hb68b;
	#20
	A = 16'hb4b8;
	B = 16'hb3ca;
	ans = 16'hb84e;
	#20
	A = 16'h3775;
	B = 16'hb54a;
	ans = 16'h3056;
	#20
	A = 16'h3904;
	B = 16'h2c78;
	ans = 16'h3993;
	#20
	A = 16'hb889;
	B = 16'h38bd;
	ans = 16'h2680;
	#20
	A = 16'hb4e4;
	B = 16'h3bb3;
	ans = 16'h3941;
	#20
	A = 16'h3acc;
	B = 16'h323a;
	ans = 16'h3c2d;
	#20
	A = 16'h395e;
	B = 16'h2d23;
	ans = 16'h3a02;
	#20
	A = 16'hba14;
	B = 16'h37e8;
	ans = 16'hb440;
	#20
	A = 16'h3793;
	B = 16'h2c9b;
	ans = 16'h385d;
	#20
	A = 16'haa83;
	B = 16'h3996;
	ans = 16'h392e;
	#20
	A = 16'hb601;
	B = 16'h3989;
	ans = 16'h3511;
	#20
	A = 16'h381b;
	B = 16'hb8c9;
	ans = 16'had70;
	#20
	A = 16'h2f1b;
	B = 16'hb1aa;
	ans = 16'hac39;
	#20
	A = 16'hba3c;
	B = 16'hb075;
	ans = 16'hbb59;
	#20
	A = 16'h3857;
	B = 16'h32fe;
	ans = 16'h3a16;
	#20
	A = 16'h24b9;
	B = 16'h3340;
	ans = 16'h33d7;
	#20
	A = 16'hb9d2;
	B = 16'hbb83;
	ans = 16'hbeaa;
	#20
	A = 16'h3b33;
	B = 16'h2c8b;
	ans = 16'h3bc4;
	#20
	A = 16'h2cc1;
	B = 16'h2b74;
	ans = 16'h303e;
	#20
	A = 16'h2da0;
	B = 16'h3724;
	ans = 16'h3846;
	#20
	A = 16'h382c;
	B = 16'h38a8;
	ans = 16'h3c6a;
	#20
	A = 16'hb924;
	B = 16'h357d;
	ans = 16'hb4cb;
	#20
	A = 16'h3412;
	B = 16'h3ab0;
	ans = 16'h3c5c;
	#20
	A = 16'hb85e;
	B = 16'h3498;
	ans = 16'hb424;
	#20
	A = 16'h390b;
	B = 16'h3b9a;
	ans = 16'h3e52;
	#20
	A = 16'hb48f;
	B = 16'h38a0;
	ans = 16'h34b1;
	#20
	A = 16'hbad2;
	B = 16'hb632;
	ans = 16'hbcf6;
	#20
	A = 16'hbb84;
	B = 16'hba5c;
	ans = 16'hbef0;
	#20
	A = 16'h33ee;
	B = 16'hb8e0;
	ans = 16'hb5c9;
	#20
	A = 16'h3135;
	B = 16'hb6c7;
	ans = 16'hb42c;
	#20
	A = 16'hba36;
	B = 16'hba6c;
	ans = 16'hbe51;
	#20
	A = 16'h3960;
	B = 16'h36c4;
	ans = 16'h3c61;
	#20
	A = 16'hb739;
	B = 16'haa5e;
	ans = 16'hb802;
	#20
	A = 16'hb728;
	B = 16'hb80d;
	ans = 16'hbba1;
	#20
	A = 16'hb23f;
	B = 16'hbb65;
	ans = 16'hbc7a;
	#20
	A = 16'h3300;
	B = 16'h389e;
	ans = 16'h3a5e;
	#20
	A = 16'hb601;
	B = 16'hb97d;
	ans = 16'hbc3f;
	#20
	A = 16'hb804;
	B = 16'h2d8c;
	ans = 16'hb6a5;
	#20
	A = 16'h3af8;
	B = 16'hb9ac;
	ans = 16'h3130;
	#20
	A = 16'h33b8;
	B = 16'h3a49;
	ans = 16'h3c1c;
	#20
	A = 16'hbb65;
	B = 16'hb7a0;
	ans = 16'hbd9a;
	#20
	A = 16'h3142;
	B = 16'h3a0e;
	ans = 16'h3b5e;
	#20
	A = 16'hb540;
	B = 16'h3964;
	ans = 16'h3588;
	#20
	A = 16'h3990;
	B = 16'h3b2f;
	ans = 16'h3e60;
	#20
	A = 16'h3a5a;
	B = 16'h3554;
	ans = 16'h3c82;
	#20
	A = 16'hb2c7;
	B = 16'h3952;
	ans = 16'h3740;
	#20
	A = 16'h3a83;
	B = 16'hb8d7;
	ans = 16'h32b0;
	#20
	A = 16'hbad7;
	B = 16'hb834;
	ans = 16'hbd86;
	#20
	A = 16'h2e95;
	B = 16'h2c51;
	ans = 16'h3173;
	#20
	A = 16'h3576;
	B = 16'h3aa9;
	ans = 16'h3cb2;
	#20
	A = 16'h3788;
	B = 16'hba57;
	ans = 16'hb526;
	#20
	A = 16'h3a8b;
	B = 16'hb2ab;
	ans = 16'h38e0;
	#20
	A = 16'h3b98;
	B = 16'hb9e1;
	ans = 16'h32dc;
	#20
	A = 16'hba9f;
	B = 16'h3071;
	ans = 16'hb983;
	#20
	A = 16'hb8a7;
	B = 16'h39c1;
	ans = 16'h3068;
	#20
	A = 16'h1857;
	B = 16'hae02;
	ans = 16'haddf;
	#20
	A = 16'hb264;
	B = 16'ha47c;
	ans = 16'hb2f4;
	#20
	A = 16'h3bb5;
	B = 16'h2a20;
	ans = 16'h3c0c;
	#20
	A = 16'h31ed;
	B = 16'hb8e3;
	ans = 16'hb6d0;
	#20
	A = 16'h34ca;
	B = 16'hb0b4;
	ans = 16'h30e0;
	#20
	A = 16'hb54f;
	B = 16'h2eb3;
	ans = 16'hb344;
	#20
	A = 16'h3843;
	B = 16'h3a55;
	ans = 16'h3d4c;
	#20
	A = 16'ha736;
	B = 16'hb1d4;
	ans = 16'hb2bb;
	#20
	A = 16'h28d9;
	B = 16'hb620;
	ans = 16'hb585;
	#20
	A = 16'h3b38;
	B = 16'hb257;
	ans = 16'h39a2;
	#20
	A = 16'h3070;
	B = 16'h3179;
	ans = 16'h34f4;
	#20
	A = 16'h3280;
	B = 16'hb920;
	ans = 16'hb700;
	#20
	A = 16'h3a67;
	B = 16'hb6d9;
	ans = 16'h35f5;
	#20
	A = 16'h2f8c;
	B = 16'haa7f;
	ans = 16'h2c4c;
	#20
	A = 16'h351a;
	B = 16'hb6c6;
	ans = 16'haeb0;
	#20
	A = 16'hbab6;
	B = 16'h3971;
	ans = 16'hb114;
	#20
	A = 16'h323e;
	B = 16'h370f;
	ans = 16'h3917;
	#20
	A = 16'hb86a;
	B = 16'hac66;
	ans = 16'hb8f7;
	#20
	A = 16'h3b94;
	B = 16'h3928;
	ans = 16'h3e5e;
	#20
	A = 16'h2c52;
	B = 16'hb9db;
	ans = 16'hb951;
	#20
	A = 16'h39b2;
	B = 16'hb9a7;
	ans = 16'h1d80;
	#20
	A = 16'haef4;
	B = 16'h3247;
	ans = 16'h2d9a;
	#20
	A = 16'h3bdd;
	B = 16'h37b1;
	ans = 16'h3ddb;
	#20
	A = 16'h31a3;
	B = 16'h3618;
	ans = 16'h3875;
	#20
	A = 16'hb8bc;
	B = 16'hba00;
	ans = 16'hbd5e;
	#20
	A = 16'hba9f;
	B = 16'hb8a4;
	ans = 16'hbda2;
	#20
	A = 16'hb9cd;
	B = 16'h3167;
	ans = 16'hb873;
	#20
	A = 16'hb834;
	B = 16'h37ff;
	ans = 16'ha690;
	#20
	A = 16'h3bc8;
	B = 16'h3732;
	ans = 16'h3db0;
	#20
	A = 16'h2622;
	B = 16'h3bbe;
	ans = 16'h3bef;
	#20
	A = 16'h38c9;
	B = 16'h3b3f;
	ans = 16'h3e04;
	#20
	A = 16'hb908;
	B = 16'hb9c2;
	ans = 16'hbd65;
	#20
	A = 16'h3a06;
	B = 16'h2f7b;
	ans = 16'h3af5;
	#20
	A = 16'hb9f4;
	B = 16'hb837;
	ans = 16'hbd16;
	#20
	A = 16'h393b;
	B = 16'hbabe;
	ans = 16'hb20c;
	#20
	A = 16'h381a;
	B = 16'hba78;
	ans = 16'hb4bc;
	#20
	A = 16'h3a9b;
	B = 16'hb16c;
	ans = 16'h3940;
	#20
	A = 16'h3645;
	B = 16'ha8c5;
	ans = 16'h35ac;
	#20
	A = 16'hb470;
	B = 16'hbb98;
	ans = 16'hbce8;
	#20
	A = 16'h31a1;
	B = 16'hadf5;
	ans = 16'h2d4d;
	#20
	A = 16'hb99a;
	B = 16'h3ace;
	ans = 16'h30d0;
	#20
	A = 16'hb5fd;
	B = 16'h352d;
	ans = 16'haa80;
	#20
	A = 16'h38f8;
	B = 16'hb455;
	ans = 16'h359b;
	#20
	A = 16'hb692;
	B = 16'hba55;
	ans = 16'hbccf;
	#20
	A = 16'h3b64;
	B = 16'h3083;
	ans = 16'h3c42;
	#20
	A = 16'h33fe;
	B = 16'h3847;
	ans = 16'h3a46;
	#20
	A = 16'h34c0;
	B = 16'hb682;
	ans = 16'haf08;
	#20
	A = 16'h3b4d;
	B = 16'h3a1e;
	ans = 16'h3eb6;
	#20
	A = 16'hb814;
	B = 16'h3811;
	ans = 16'h9600;
	#20
	A = 16'hb5ff;
	B = 16'h3ac0;
	ans = 16'h3781;
	#20
	A = 16'hb704;
	B = 16'hb522;
	ans = 16'hba13;
	#20
	A = 16'hb1eb;
	B = 16'h3acf;
	ans = 16'h3954;
	#20
	A = 16'h3a13;
	B = 16'h38c5;
	ans = 16'h3d6c;
	#20
	A = 16'h393e;
	B = 16'hb7a2;
	ans = 16'h31b4;
	#20
	A = 16'hb717;
	B = 16'h39c4;
	ans = 16'h3471;
	#20
	A = 16'hbbdf;
	B = 16'hafcb;
	ans = 16'hbc6c;
	#20
	A = 16'h332f;
	B = 16'h9fad;
	ans = 16'h32f2;
	#20
	A = 16'h342f;
	B = 16'h3793;
	ans = 16'h39e1;
	#20
	A = 16'h3ba0;
	B = 16'h38a2;
	ans = 16'h3e21;
	#20
	A = 16'h374a;
	B = 16'hb0ef;
	ans = 16'h34d2;
	#20
	A = 16'h3a82;
	B = 16'h3681;
	ans = 16'h3ce1;
	#20
	A = 16'h3bcb;
	B = 16'h3193;
	ans = 16'h3c98;
	#20
	A = 16'h3426;
	B = 16'h131b;
	ans = 16'h342a;
	#20
	A = 16'h3ae2;
	B = 16'h392c;
	ans = 16'h3e07;
	#20
	A = 16'hb997;
	B = 16'hb215;
	ans = 16'hbb1c;
	#20
	A = 16'h3502;
	B = 16'h32ff;
	ans = 16'h3841;
	#20
	A = 16'h3521;
	B = 16'h341a;
	ans = 16'h389e;
	#20
	A = 16'hb7a6;
	B = 16'hba60;
	ans = 16'hbd1a;
	#20
	A = 16'h3b66;
	B = 16'hbaf7;
	ans = 16'h2af0;
	#20
	A = 16'h3b79;
	B = 16'h3924;
	ans = 16'h3e4e;
	#20
	A = 16'hb8e8;
	B = 16'hba03;
	ans = 16'hbd76;
	#20
	A = 16'h3a5c;
	B = 16'h3af6;
	ans = 16'h3ea9;
	#20
	A = 16'hba34;
	B = 16'h33db;
	ans = 16'hb83d;
	#20
	A = 16'h35e2;
	B = 16'h3b74;
	ans = 16'h3d32;
	#20
	A = 16'hb923;
	B = 16'hb4b7;
	ans = 16'hbb7e;
	#20
	A = 16'h3785;
	B = 16'h2f58;
	ans = 16'h38ae;
	#20
	A = 16'h390b;
	B = 16'h3a6f;
	ans = 16'h3dbd;
	#20
	A = 16'hba9c;
	B = 16'h386c;
	ans = 16'hb460;
	#20
	A = 16'h2ca3;
	B = 16'hb8c8;
	ans = 16'hb834;
	#20
	A = 16'hb497;
	B = 16'h3b15;
	ans = 16'h38ca;
	#20
	A = 16'h397f;
	B = 16'hac27;
	ans = 16'h38fa;
	#20
	A = 16'hb725;
	B = 16'h2c2a;
	ans = 16'hb61a;
	#20
	A = 16'h3880;
	B = 16'h38ef;
	ans = 16'h3cb8;
	#20
	A = 16'h37e8;
	B = 16'hb44b;
	ans = 16'h333a;
	#20
	A = 16'h357d;
	B = 16'h364d;
	ans = 16'h39e5;
	#20
	A = 16'h3474;
	B = 16'h3855;
	ans = 16'h3a8f;
	#20
	A = 16'h2907;
	B = 16'h399b;
	ans = 16'h39eb;
	#20
	A = 16'hbb09;
	B = 16'hb955;
	ans = 16'hbe2f;
	#20
	A = 16'hba36;
	B = 16'h3339;
	ans = 16'hb868;
	#20
	A = 16'h3420;
	B = 16'hb1d5;
	ans = 16'h2cd6;
	#20
	A = 16'h39b4;
	B = 16'hb69f;
	ans = 16'h34c9;
	#20
	A = 16'hbbce;
	B = 16'hbbd3;
	ans = 16'hbfd0;
	#20
	A = 16'h3546;
	B = 16'hb5cf;
	ans = 16'ha848;
	#20
	A = 16'h3875;
	B = 16'hba0a;
	ans = 16'hb254;
	#20
	A = 16'hba25;
	B = 16'hbb7b;
	ans = 16'hbed0;
	#20
	A = 16'haf0c;
	B = 16'hb8cc;
	ans = 16'hb9ae;
	#20
	A = 16'h39d0;
	B = 16'haa7c;
	ans = 16'h3968;
	#20
	A = 16'h335d;
	B = 16'hb0ab;
	ans = 16'h2d64;
	#20
	A = 16'h34b4;
	B = 16'hba92;
	ans = 16'hb838;
	#20
	A = 16'hba3f;
	B = 16'hb85e;
	ans = 16'hbd4e;
	#20
	A = 16'hb73e;
	B = 16'h3a53;
	ans = 16'h3568;
	#20
	A = 16'hbb61;
	B = 16'hbad6;
	ans = 16'hbf1c;
	#20
	A = 16'h3a2d;
	B = 16'haf6f;
	ans = 16'h393f;
	#20
	A = 16'h342b;
	B = 16'h3bef;
	ans = 16'h3d02;
	#20
	A = 16'hb704;
	B = 16'hadfd;
	ans = 16'hb842;
	#20
	A = 16'hb4a8;
	B = 16'hbb8e;
	ans = 16'hbcf1;
	#20
	A = 16'hb983;
	B = 16'hb454;
	ans = 16'hbbad;
	#20
	A = 16'h3b56;
	B = 16'h362c;
	ans = 16'h3d36;
	#20
	A = 16'hb5e1;
	B = 16'h3bfc;
	ans = 16'h390c;
	#20
	A = 16'h2eda;
	B = 16'h2145;
	ans = 16'h2f83;
	#20
	A = 16'hb51d;
	B = 16'hb9c4;
	ans = 16'hbc29;
	#20
	A = 16'h3ac0;
	B = 16'h3a18;
	ans = 16'h3e6c;
	#20
	A = 16'h3b58;
	B = 16'hb321;
	ans = 16'h3990;
	#20
	A = 16'hba25;
	B = 16'hb9fa;
	ans = 16'hbe10;
	#20
	A = 16'hb415;
	B = 16'h3b35;
	ans = 16'h392a;
	#20
	A = 16'hb99f;
	B = 16'hba9b;
	ans = 16'hbe1d;
	#20
	A = 16'hbb3f;
	B = 16'h347d;
	ans = 16'hb900;
	#20
	A = 16'h36f7;
	B = 16'hbaeb;
	ans = 16'hb6df;
	#20
	A = 16'hbb1e;
	B = 16'h3a02;
	ans = 16'hb070;
	#20
	A = 16'hbae7;
	B = 16'hba96;
	ans = 16'hbebe;
	#20
	A = 16'h3350;
	B = 16'h3aa4;
	ans = 16'h3c3c;
	#20
	A = 16'h3b82;
	B = 16'hbaa8;
	ans = 16'h2ed0;
	#20
	A = 16'hba40;
	B = 16'h35e3;
	ans = 16'hb69d;
	#20
	A = 16'hba3c;
	B = 16'hbbcb;
	ans = 16'hbf04;
	#20
	A = 16'hb9fc;
	B = 16'h2dfa;
	ans = 16'hb93d;
	#20
	A = 16'hb52b;
	B = 16'h3a2d;
	ans = 16'h372f;
	#20
	A = 16'hb831;
	B = 16'hb465;
	ans = 16'hba64;
	#20
	A = 16'hb8c0;
	B = 16'hb748;
	ans = 16'hbc32;
	#20
	A = 16'hba1e;
	B = 16'hb99e;
	ans = 16'hbdde;
	#20
	A = 16'hb9ac;
	B = 16'hbb9f;
	ans = 16'hbea6;
	#20
	A = 16'h3283;
	B = 16'h2d6f;
	ans = 16'h349d;
	#20
	A = 16'h3bd0;
	B = 16'hb699;
	ans = 16'h3884;
	#20
	A = 16'hbb8e;
	B = 16'h368d;
	ans = 16'hb848;
	#20
	A = 16'h3bdd;
	B = 16'hb45e;
	ans = 16'h39ae;
	#20
	A = 16'ha8b2;
	B = 16'hbab5;
	ans = 16'hbb00;
	#20
	A = 16'h3afb;
	B = 16'h3883;
	ans = 16'h3dbf;
	#20
	A = 16'h379b;
	B = 16'hb898;
	ans = 16'hae54;
	#20
	A = 16'h3bdf;
	B = 16'hb9db;
	ans = 16'h3408;
	#20
	A = 16'h3ae2;
	B = 16'hb29d;
	ans = 16'h393b;
	#20
	A = 16'h340d;
	B = 16'ha945;
	ans = 16'h32c9;
	#20
	A = 16'hbb2c;
	B = 16'hba17;
	ans = 16'hbea2;
	#20
	A = 16'hb402;
	B = 16'h3b2e;
	ans = 16'h392d;
	#20
	A = 16'h3be4;
	B = 16'h3945;
	ans = 16'h3e94;
	#20
	A = 16'h2d28;
	B = 16'h3521;
	ans = 16'h366b;
	#20
	A = 16'hb707;
	B = 16'h3309;
	ans = 16'hb305;
	#20
	A = 16'hbbc6;
	B = 16'h2d74;
	ans = 16'hbb18;
	#20
	A = 16'h244b;
	B = 16'h23c0;
	ans = 16'h2816;
	#20
	A = 16'hb9e2;
	B = 16'hb0b1;
	ans = 16'hbb0e;
	#20
	A = 16'h3b59;
	B = 16'h3977;
	ans = 16'h3e68;
	#20
	A = 16'h3239;
	B = 16'h297e;
	ans = 16'h3398;
	#20
	A = 16'hb4b8;
	B = 16'h3595;
	ans = 16'h2ae8;
	#20
	A = 16'hb7d0;
	B = 16'hb9b4;
	ans = 16'hbcce;
	#20
	A = 16'hbb5f;
	B = 16'hb41b;
	ans = 16'hbcb6;
	#20
	A = 16'hb0e1;
	B = 16'hb816;
	ans = 16'hb94e;
	#20
	A = 16'hb7a0;
	B = 16'hb840;
	ans = 16'hbc08;
	#20
	A = 16'h2e1c;
	B = 16'hb325;
	ans = 16'hb017;
	#20
	A = 16'hb4ad;
	B = 16'hbbb1;
	ans = 16'hbd04;
	#20
	A = 16'h331e;
	B = 16'hb001;
	ans = 16'h2e3a;
	#20
	A = 16'hba34;
	B = 16'hb3f8;
	ans = 16'hbc19;
	#20
	A = 16'h2c30;
	B = 16'hb81a;
	ans = 16'hb728;
	#20
	A = 16'h3694;
	B = 16'hb79d;
	ans = 16'hac24;
	#20
	A = 16'h3b21;
	B = 16'hb925;
	ans = 16'h33f0;
	#20
	A = 16'hb79c;
	B = 16'hba46;
	ans = 16'hbd0a;
	#20
	A = 16'hb8f0;
	B = 16'hbbb7;
	ans = 16'hbe54;
	#20
	A = 16'h369b;
	B = 16'hb868;
	ans = 16'hb06a;
	#20
	A = 16'h3a60;
	B = 16'h36db;
	ans = 16'h3ce7;
	#20
	A = 16'hbbd6;
	B = 16'h3088;
	ans = 16'hbab4;
	#20
	A = 16'hbbc7;
	B = 16'h3a98;
	ans = 16'hb0bc;
	#20
	A = 16'h382f;
	B = 16'h3b2e;
	ans = 16'h3dae;
	#20
	A = 16'h3663;
	B = 16'h3bae;
	ans = 16'h3d70;
	#20
	A = 16'hbba7;
	B = 16'hb198;
	ans = 16'hbc86;
	#20
	A = 16'hae95;
	B = 16'hb26e;
	ans = 16'hb4dc;
	#20
	A = 16'hb805;
	B = 16'hb89c;
	ans = 16'hbc50;
	#20
	A = 16'h2f2f;
	B = 16'h30aa;
	ans = 16'h3421;
	#20
	A = 16'hb6b6;
	B = 16'h2ff2;
	ans = 16'hb4ba;
	#20
	A = 16'hb39a;
	B = 16'h3860;
	ans = 16'h34f3;
	#20
	A = 16'h383c;
	B = 16'h38b1;
	ans = 16'h3c76;
	#20
	A = 16'h3879;
	B = 16'h3350;
	ans = 16'h3a4d;
	#20
	A = 16'hbb55;
	B = 16'hb77f;
	ans = 16'hbd8a;
	#20
	A = 16'h35bb;
	B = 16'h3558;
	ans = 16'h398a;
	#20
	A = 16'hb38f;
	B = 16'hb87e;
	ans = 16'hba62;
	#20
	A = 16'hadf5;
	B = 16'hb9b8;
	ans = 16'hba77;
	#20
	A = 16'h3556;
	B = 16'hbaa0;
	ans = 16'hb7ea;
	#20
	A = 16'hb761;
	B = 16'h3a19;
	ans = 16'h34d1;
	#20
	A = 16'h395d;
	B = 16'h2b02;
	ans = 16'h39cd;
	#20
	A = 16'hb1e7;
	B = 16'hba3c;
	ans = 16'hbbb6;
	#20
	A = 16'h3c00;
	B = 16'h37f1;
	ans = 16'h3dfc;
	#20
	A = 16'hb089;
	B = 16'h3a32;
	ans = 16'h3910;
	#20
	A = 16'h3a1d;
	B = 16'h3bd7;
	ans = 16'h3efa;
	#20
	A = 16'hb2bf;
	B = 16'hba80;
	ans = 16'hbc18;
	#20
	A = 16'h3170;
	B = 16'hb92c;
	ans = 16'hb7a0;
	#20
	A = 16'h3ab8;
	B = 16'h39dc;
	ans = 16'h3e4a;
	#20
	A = 16'hb62d;
	B = 16'h3afd;
	ans = 16'h37cd;
	#20
	A = 16'h38b7;
	B = 16'hb9bd;
	ans = 16'hb018;
	#20
	A = 16'h3a78;
	B = 16'h3a7b;
	ans = 16'h3e7a;
	#20
	A = 16'h337d;
	B = 16'h373a;
	ans = 16'h397c;
	#20
	A = 16'hb821;
	B = 16'h2fcd;
	ans = 16'hb64f;
	#20
	A = 16'h3126;
	B = 16'h38f7;
	ans = 16'h3a40;
	#20
	A = 16'hb2ca;
	B = 16'hb484;
	ans = 16'hb7e9;
	#20
	A = 16'hbb48;
	B = 16'h31f7;
	ans = 16'hb9ca;
	#20
	A = 16'hb1df;
	B = 16'h389b;
	ans = 16'h3646;
	#20
	A = 16'h2685;
	B = 16'hb9db;
	ans = 16'hb9a7;
	#20
	A = 16'hb4ad;
	B = 16'hbbca;
	ans = 16'hbd10;
	#20
	A = 16'h2999;
	B = 16'hbac1;
	ans = 16'hba67;
	#20
	A = 16'hb372;
	B = 16'hb9b8;
	ans = 16'hbb94;
	#20
	A = 16'h346b;
	B = 16'h2f28;
	ans = 16'h3635;
	#20
	A = 16'haefb;
	B = 16'h371d;
	ans = 16'h355e;
	#20
	A = 16'h9c96;
	B = 16'h3943;
	ans = 16'h393a;
	#20
	A = 16'h3372;
	B = 16'h39a1;
	ans = 16'h3b7e;
	#20
	A = 16'hacb6;
	B = 16'h385a;
	ans = 16'h3786;
	#20
	A = 16'hba9d;
	B = 16'hba34;
	ans = 16'hbe68;
	#20
	A = 16'hb928;
	B = 16'h39a5;
	ans = 16'h2bd0;
	#20
	A = 16'hb89c;
	B = 16'h3a98;
	ans = 16'h33f0;
	#20
	A = 16'h3ba9;
	B = 16'h37b5;
	ans = 16'h3dc2;
	#20
	A = 16'hb7b3;
	B = 16'hb2a7;
	ans = 16'hb983;
	#20
	A = 16'hb61c;
	B = 16'hb9d1;
	ans = 16'hbc70;
	#20
	A = 16'h339c;
	B = 16'hb67e;
	ans = 16'hb160;
	#20
	A = 16'h3766;
	B = 16'h38de;
	ans = 16'h3c48;
	#20
	A = 16'hb3d5;
	B = 16'hbac3;
	ans = 16'hbc5c;
	#20
	A = 16'hb61d;
	B = 16'hb4cf;
	ans = 16'hb976;
	#20
	A = 16'h3bfd;
	B = 16'h38e2;
	ans = 16'h3e70;
	#20
	A = 16'h3b46;
	B = 16'h3419;
	ans = 16'h3ca9;
	#20
	A = 16'h3734;
	B = 16'h3338;
	ans = 16'h3968;
	#20
	A = 16'h3781;
	B = 16'hbaac;
	ans = 16'hb5d7;
	#20
	A = 16'hb893;
	B = 16'haae2;
	ans = 16'hb901;
	#20
	A = 16'h34f8;
	B = 16'h3120;
	ans = 16'h3788;
	#20
	A = 16'hb4dc;
	B = 16'hb96c;
	ans = 16'hbbda;
	#20
	A = 16'hbb00;
	B = 16'h328b;
	ans = 16'hb95d;
	#20
	A = 16'h3b28;
	B = 16'hb012;
	ans = 16'h3a24;
	#20
	A = 16'hbb99;
	B = 16'hbbf9;
	ans = 16'hbfc9;
	#20
	A = 16'hb82b;
	B = 16'hb9b5;
	ans = 16'hbcf0;
	#20
	A = 16'h3a0b;
	B = 16'h38fd;
	ans = 16'h3d84;
	#20
	A = 16'haf89;
	B = 16'h38bd;
	ans = 16'h3798;
	#20
	A = 16'hb6bf;
	B = 16'hb164;
	ans = 16'hb8b8;
	#20
	A = 16'h3642;
	B = 16'h3b52;
	ans = 16'h3d3a;
	#20
	A = 16'had46;
	B = 16'hbb14;
	ans = 16'hbbbd;
	#20
	A = 16'hba22;
	B = 16'hb568;
	ans = 16'hbc6b;
	#20
	A = 16'hb73c;
	B = 16'hbb7a;
	ans = 16'hbd8c;
	#20
	A = 16'h2ca1;
	B = 16'h3404;
	ans = 16'h352c;
	#20
	A = 16'hb686;
	B = 16'h3b41;
	ans = 16'h37fc;
	#20
	A = 16'h2fb4;
	B = 16'h3a75;
	ans = 16'h3b6c;
	#20
	A = 16'hb528;
	B = 16'h3283;
	ans = 16'haf9a;
	#20
	A = 16'h373c;
	B = 16'hb5ce;
	ans = 16'h2db8;
	#20
	A = 16'h3693;
	B = 16'h3bf9;
	ans = 16'h3da1;
	#20
	A = 16'hba1f;
	B = 16'h2e67;
	ans = 16'hb952;
	#20
	A = 16'hb967;
	B = 16'h3444;
	ans = 16'hb68a;
	#20
	A = 16'h373c;
	B = 16'hb842;
	ans = 16'had20;
	#20
	A = 16'h3a46;
	B = 16'hb608;
	ans = 16'h3684;
	#20
	A = 16'ha6e4;
	B = 16'hacb1;
	ans = 16'hae6a;
	#20
	A = 16'hb47c;
	B = 16'h3a57;
	ans = 16'h3819;
	#20
	A = 16'h3b8a;
	B = 16'h2e49;
	ans = 16'h3c2a;
	#20
	A = 16'hbad3;
	B = 16'h2cd0;
	ans = 16'hba39;
	#20
	A = 16'hbbb6;
	B = 16'hb9ee;
	ans = 16'hbed2;
	#20
	A = 16'h20f1;
	B = 16'h2ec1;
	ans = 16'h2f5f;
	#20
	A = 16'h39b1;
	B = 16'h3b64;
	ans = 16'h3e8a;
	#20
	A = 16'h36f4;
	B = 16'h39e0;
	ans = 16'h3cad;
	#20
	A = 16'hbbca;
	B = 16'h3b38;
	ans = 16'hac90;
	#20
	A = 16'h3962;
	B = 16'h397b;
	ans = 16'h3d6e;
	#20
	A = 16'hb37a;
	B = 16'hbac3;
	ans = 16'hbc51;
	#20
	A = 16'h3b4a;
	B = 16'h3272;
	ans = 16'h3c73;
	#20
	A = 16'hbb4e;
	B = 16'hbba7;
	ans = 16'hbf7a;
	#20
	A = 16'hb231;
	B = 16'hb4c8;
	ans = 16'hb7e0;
	#20
	A = 16'hb9e6;
	B = 16'hb518;
	ans = 16'hbc39;
	#20
	A = 16'h38a4;
	B = 16'h346c;
	ans = 16'h3ada;
	#20
	A = 16'haac3;
	B = 16'ha83c;
	ans = 16'had80;
	#20
	A = 16'hb77f;
	B = 16'h3bfe;
	ans = 16'h383e;
	#20
	A = 16'h1b9d;
	B = 16'h292b;
	ans = 16'h29a5;
	#20
	A = 16'hb40c;
	B = 16'hbbe8;
	ans = 16'hbcf7;
	#20
	A = 16'hb92b;
	B = 16'hbb55;
	ans = 16'hbe40;
	#20
	A = 16'hb560;
	B = 16'h3956;
	ans = 16'h354c;
	#20
	A = 16'hb2c6;
	B = 16'hba9c;
	ans = 16'hbc27;
	#20
	A = 16'h324e;
	B = 16'h382f;
	ans = 16'h39c2;
	#20
	A = 16'h3a85;
	B = 16'hb539;
	ans = 16'h37d1;
	#20
	A = 16'h3645;
	B = 16'h33c8;
	ans = 16'h3914;
	#20
	A = 16'h2895;
	B = 16'hbaad;
	ans = 16'hba64;
	#20
	A = 16'hbac8;
	B = 16'hb680;
	ans = 16'hbd04;
	#20
	A = 16'h3a62;
	B = 16'hb84e;
	ans = 16'h3428;
	#20
	A = 16'ha6fe;
	B = 16'h3945;
	ans = 16'h390d;
	#20
	A = 16'h3538;
	B = 16'hb6aa;
	ans = 16'hadc8;
	#20
	A = 16'hb9e8;
	B = 16'hb83f;
	ans = 16'hbd14;
	#20
	A = 16'h3b92;
	B = 16'hb96c;
	ans = 16'h344c;
	#20
	A = 16'h3ae3;
	B = 16'hb849;
	ans = 16'h3534;
	#20
	A = 16'hb535;
	B = 16'h3aa0;
	ans = 16'h3806;
	#20
	A = 16'hb93a;
	B = 16'h357a;
	ans = 16'hb4fa;
	#20
	A = 16'h3003;
	B = 16'h3a59;
	ans = 16'h3b5a;
	#20
	A = 16'h361f;
	B = 16'h32e8;
	ans = 16'h38ca;
	#20
	A = 16'hb8a8;
	B = 16'haef8;
	ans = 16'hb987;
	#20
	A = 16'h307b;
	B = 16'hb363;
	ans = 16'hadd0;
	#20
	A = 16'h317a;
	B = 16'hba40;
	ans = 16'hb8e2;
	#20
	A = 16'hb4d0;
	B = 16'hae4d;
	ans = 16'hb663;
	#20
	A = 16'h3818;
	B = 16'h36b7;
	ans = 16'h3b74;
	#20
	A = 16'h3091;
	B = 16'h3463;
	ans = 16'h36ac;
	#20
	A = 16'h3b41;
	B = 16'h3b7c;
	ans = 16'h3f5e;
	#20
	A = 16'hbacb;
	B = 16'hb9c3;
	ans = 16'hbe47;
	#20
	A = 16'hb897;
	B = 16'hba26;
	ans = 16'hbd5e;
	#20
	A = 16'h3485;
	B = 16'h3828;
	ans = 16'h3a6a;
	#20
	A = 16'h3a90;
	B = 16'h3804;
	ans = 16'h3d4a;
	#20
	A = 16'h324e;
	B = 16'hb63d;
	ans = 16'hb22c;
	#20
	A = 16'hb8fd;
	B = 16'hb32b;
	ans = 16'hbac8;
	#20
	A = 16'hbbbd;
	B = 16'hb419;
	ans = 16'hbce5;
	#20
	A = 16'hb98d;
	B = 16'h344b;
	ans = 16'hb6cf;
	#20
	A = 16'hb0a8;
	B = 16'hb8cc;
	ans = 16'hb9f6;
	#20
	A = 16'h3975;
	B = 16'h3ad6;
	ans = 16'h3e26;
	#20
	A = 16'haeed;
	B = 16'hbbc6;
	ans = 16'hbc52;
	#20
	A = 16'hb704;
	B = 16'h36e9;
	ans = 16'h9ec0;
	#20
	A = 16'hba40;
	B = 16'hb541;
	ans = 16'hbc70;
	#20
	A = 16'h36d2;
	B = 16'h3aed;
	ans = 16'h3d2b;
	#20
	A = 16'h3375;
	B = 16'h340d;
	ans = 16'h37c8;
	#20
	A = 16'hb5fa;
	B = 16'h3ba6;
	ans = 16'h38a9;
	#20
	A = 16'h31b5;
	B = 16'hb86c;
	ans = 16'hb5fe;
	#20
	A = 16'h3ae4;
	B = 16'h377f;
	ans = 16'h3d52;
	#20
	A = 16'h39d5;
	B = 16'hbaca;
	ans = 16'hafa8;
	#20
	A = 16'hb220;
	B = 16'hb817;
	ans = 16'hb99f;
	#20
	A = 16'hbadb;
	B = 16'h3909;
	ans = 16'hb348;
	#20
	A = 16'hb972;
	B = 16'hb556;
	ans = 16'hbc0e;
	#20
	A = 16'hb476;
	B = 16'had34;
	ans = 16'hb5c3;
	#20
	A = 16'haeeb;
	B = 16'h3b78;
	ans = 16'h3a9b;
	#20
	A = 16'hba4b;
	B = 16'h276f;
	ans = 16'hba10;
	#20
	A = 16'hb971;
	B = 16'hbb23;
	ans = 16'hbe4a;
	#20
	A = 16'hb936;
	B = 16'h37f7;
	ans = 16'hb0ea;
	#20
	A = 16'h3242;
	B = 16'h38a7;
	ans = 16'h3a38;
	#20
	A = 16'hb506;
	B = 16'hb585;
	ans = 16'hb946;
	#20
	A = 16'hb9e6;
	B = 16'h322b;
	ans = 16'hb85b;
	#20
	A = 16'hba6b;
	B = 16'hbb1e;
	ans = 16'hbec4;
	#20
	A = 16'hb6bd;
	B = 16'h39fb;
	ans = 16'h3539;
	#20
	A = 16'h381b;
	B = 16'h3545;
	ans = 16'h3abe;
	#20
	A = 16'hb381;
	B = 16'h3891;
	ans = 16'h3562;
	#20
	A = 16'hbbe5;
	B = 16'h3b86;
	ans = 16'ha9f0;
	#20
	A = 16'h2958;
	B = 16'h381d;
	ans = 16'h3872;
	#20
	A = 16'h3b9c;
	B = 16'h365e;
	ans = 16'h3d66;
	#20
	A = 16'hadf4;
	B = 16'h3b17;
	ans = 16'h3a58;
	#20
	A = 16'h3b93;
	B = 16'h3577;
	ans = 16'h3d27;
	#20
	A = 16'hb47f;
	B = 16'ha3e5;
	ans = 16'hb4be;
	#20
	A = 16'h24fb;
	B = 16'h2e98;
	ans = 16'h2fd7;
	#20
	A = 16'h3522;
	B = 16'h3825;
	ans = 16'h3ab6;
	#20
	A = 16'h371d;
	B = 16'hb828;
	ans = 16'haccc;
	#20
	A = 16'h2e43;
	B = 16'hb50e;
	ans = 16'hb2fa;
	#20
	A = 16'h366e;
	B = 16'h3919;
	ans = 16'h3c28;
	#20
	A = 16'h3445;
	B = 16'h391b;
	ans = 16'h3b3e;
	#20
	A = 16'h389c;
	B = 16'hb779;
	ans = 16'h2efc;
	#20
	A = 16'h3bcd;
	B = 16'hb9d9;
	ans = 16'h33d0;
	#20
	A = 16'hb3b7;
	B = 16'h3202;
	ans = 16'haad4;
	#20
	A = 16'h38c7;
	B = 16'hb8a6;
	ans = 16'h2420;
	#20
	A = 16'h3a96;
	B = 16'hbb04;
	ans = 16'haae0;
	#20
	A = 16'hb98a;
	B = 16'h329e;
	ans = 16'hb7c5;
	#20
	A = 16'h3828;
	B = 16'h33a8;
	ans = 16'h3a12;
	#20
	A = 16'hb77e;
	B = 16'h3897;
	ans = 16'h2ec0;
	#20
	A = 16'h384b;
	B = 16'hb334;
	ans = 16'h34fc;
	#20
	A = 16'h3a3a;
	B = 16'h34da;
	ans = 16'h3c54;
	#20
	A = 16'h3a56;
	B = 16'h3787;
	ans = 16'h3d0d;
	#20
	A = 16'hb87b;
	B = 16'h3ae6;
	ans = 16'h34d6;
	#20
	A = 16'h3956;
	B = 16'hb27e;
	ans = 16'h376d;
	#20
	A = 16'hb4ea;
	B = 16'h3554;
	ans = 16'h26a0;
	#20
	A = 16'hb3bb;
	B = 16'h3a4e;
	ans = 16'h385f;
	#20
	A = 16'hb00b;
	B = 16'h37f3;
	ans = 16'h35ee;
	#20
	A = 16'hbb33;
	B = 16'hb4ee;
	ans = 16'hbcd5;
	#20
	A = 16'had60;
	B = 16'had87;
	ans = 16'hb174;
	#20
	A = 16'hae6d;
	B = 16'hb8a6;
	ans = 16'hb974;
	#20
	A = 16'hb815;
	B = 16'ha6da;
	ans = 16'hb84c;
	#20
	A = 16'ha9ec;
	B = 16'h30ad;
	ans = 16'h2e64;
	#20
	A = 16'h398f;
	B = 16'h3a11;
	ans = 16'h3dd0;
	#20
	A = 16'hb024;
	B = 16'hbad9;
	ans = 16'hbbe2;
	#20
	A = 16'hb886;
	B = 16'h3807;
	ans = 16'habf0;
	#20
	A = 16'h30d1;
	B = 16'h3b7e;
	ans = 16'h3c59;
	#20
	A = 16'hbb0b;
	B = 16'h3818;
	ans = 16'hb5e6;
	#20
	A = 16'h39f6;
	B = 16'h2408;
	ans = 16'h3a16;
	#20
	A = 16'h2ee8;
	B = 16'hb809;
	ans = 16'hb658;
	#20
	A = 16'h31e1;
	B = 16'hb302;
	ans = 16'ha884;
	#20
	A = 16'hb947;
	B = 16'hbbaa;
	ans = 16'hbe78;
	#20
	A = 16'h39c0;
	B = 16'h37cd;
	ans = 16'h3cd3;
	#20
	A = 16'hbae7;
	B = 16'ha728;
	ans = 16'hbb20;
	#20
	A = 16'hb797;
	B = 16'hae0a;
	ans = 16'hb88d;
	#20
	A = 16'hb618;
	B = 16'hb869;
	ans = 16'hbb75;
	#20
	A = 16'hba5d;
	B = 16'h3872;
	ans = 16'hb3ac;
	#20
	A = 16'h3aa9;
	B = 16'h2d2e;
	ans = 16'h3b4f;
	#20
	A = 16'h3160;
	B = 16'h3485;
	ans = 16'h3735;
	#20
	A = 16'hb638;
	B = 16'hba64;
	ans = 16'hbcc0;
	#20
	A = 16'h3060;
	B = 16'hbab5;
	ans = 16'hb99d;
	#20
	A = 16'h3b96;
	B = 16'h3863;
	ans = 16'h3dfc;
	#20
	A = 16'h3b29;
	B = 16'hb9d9;
	ans = 16'h3140;
	#20
	A = 16'hbb05;
	B = 16'hb65b;
	ans = 16'hbd19;
	#20
	A = 16'h39f6;
	B = 16'h3a29;
	ans = 16'h3e10;
	#20
	A = 16'h3876;
	B = 16'hb7e7;
	ans = 16'h2c14;
	#20
	A = 16'h3992;
	B = 16'h3a03;
	ans = 16'h3dca;
	#20
	A = 16'hba86;
	B = 16'ha91f;
	ans = 16'hbad8;
	#20
	A = 16'h34d7;
	B = 16'hb56a;
	ans = 16'ha898;
	#20
	A = 16'h38bd;
	B = 16'h3a0d;
	ans = 16'h3d65;
	#20
	A = 16'h3b40;
	B = 16'h23f3;
	ans = 16'h3b60;
	#20
	A = 16'hba18;
	B = 16'hb990;
	ans = 16'hbdd4;
	#20
	A = 16'h2715;
	B = 16'h393a;
	ans = 16'h3973;
	#20
	A = 16'h3960;
	B = 16'h38cd;
	ans = 16'h3d16;
	#20
	A = 16'h3a98;
	B = 16'hab52;
	ans = 16'h3a23;
	#20
	A = 16'hb5bc;
	B = 16'h3150;
	ans = 16'hb228;
	#20
	A = 16'h3666;
	B = 16'h34ef;
	ans = 16'h39aa;
	#20
	A = 16'h29ae;
	B = 16'hb807;
	ans = 16'hb758;
	#20
	A = 16'h2cb6;
	B = 16'hb25c;
	ans = 16'hb001;
	#20
	A = 16'h34b2;
	B = 16'h3682;
	ans = 16'h399a;
	#20
	A = 16'hb66a;
	B = 16'h3a77;
	ans = 16'h3684;
	#20
	A = 16'hac21;
	B = 16'h2df7;
	ans = 16'h2758;
	#20
	A = 16'h33f1;
	B = 16'h3af7;
	ans = 16'h3c7a;
	#20
	A = 16'h3aaf;
	B = 16'hbb72;
	ans = 16'hae18;
	#20
	A = 16'h3b23;
	B = 16'h3ba5;
	ans = 16'h3f64;
	#20
	A = 16'hb38b;
	B = 16'hb4b7;
	ans = 16'hb83e;
	#20
	A = 16'h38a5;
	B = 16'h3514;
	ans = 16'h3b2f;
	#20
	A = 16'hbaab;
	B = 16'hb131;
	ans = 16'hbbf7;
	#20
	A = 16'h3a2d;
	B = 16'hb364;
	ans = 16'h3854;
	#20
	A = 16'h2dac;
	B = 16'h32b3;
	ans = 16'h34c4;
	#20
	A = 16'hb02b;
	B = 16'ha468;
	ans = 16'hb0b8;
	#20
	A = 16'hbb48;
	B = 16'h3a0f;
	ans = 16'hb0e4;
	#20
	A = 16'hba1d;
	B = 16'h3600;
	ans = 16'hb63a;
	#20
	A = 16'h2ef3;
	B = 16'h3716;
	ans = 16'h3869;
	#20
	A = 16'h3be5;
	B = 16'h1681;
	ans = 16'h3be8;
	#20
	A = 16'h3a03;
	B = 16'hbbd4;
	ans = 16'hb344;
	#20
	A = 16'hb9ce;
	B = 16'h3a50;
	ans = 16'h2c10;
	#20
	A = 16'h2fc0;
	B = 16'h3ae6;
	ans = 16'h3bde;
	#20
	A = 16'h3bc7;
	B = 16'h3895;
	ans = 16'h3e2e;
	#20
	A = 16'h2cc8;
	B = 16'h3111;
	ans = 16'h3375;
	#20
	A = 16'hb979;
	B = 16'h39ba;
	ans = 16'h2810;
	#20
	A = 16'hb4f2;
	B = 16'ha284;
	ans = 16'hb526;
	#20
	A = 16'hb634;
	B = 16'h351c;
	ans = 16'hac60;
	#20
	A = 16'h2d77;
	B = 16'h3845;
	ans = 16'h38f4;
	#20
	A = 16'hb56e;
	B = 16'hba3a;
	ans = 16'hbc78;
	#20
	A = 16'hb89a;
	B = 16'h2feb;
	ans = 16'hb739;
	#20
	A = 16'hbbae;
	B = 16'hab54;
	ans = 16'hbc12;
	#20
	A = 16'hade8;
	B = 16'ha281;
	ans = 16'haeb8;
	#20
	A = 16'hb9cc;
	B = 16'h1e15;
	ans = 16'hb9c0;
	#20
	A = 16'h35d4;
	B = 16'h306e;
	ans = 16'h3806;
	#20
	A = 16'hb6bd;
	B = 16'hb063;
	ans = 16'hb877;
	#20
	A = 16'hba24;
	B = 16'hbb11;
	ans = 16'hbe9a;
	#20
	A = 16'haab6;
	B = 16'hb76b;
	ans = 16'hb821;
	#20
	A = 16'hb8d9;
	B = 16'hb8bf;
	ans = 16'hbccc;
	#20
	A = 16'h38c1;
	B = 16'hb976;
	ans = 16'hada8;
	#20
	A = 16'h34b2;
	B = 16'h3b3a;
	ans = 16'h3cca;
	#20
	A = 16'hb6b9;
	B = 16'ha42d;
	ans = 16'hb6fc;
	#20
	A = 16'h3aff;
	B = 16'hb6bd;
	ans = 16'h3741;
	#20
	A = 16'h2bfc;
	B = 16'hb6c1;
	ans = 16'hb5c2;
	#20
	A = 16'h383d;
	B = 16'ha6c1;
	ans = 16'h3807;
	#20
	A = 16'h352a;
	B = 16'ha5bc;
	ans = 16'h34ce;
	#20
	A = 16'hb735;
	B = 16'h346e;
	ans = 16'hb18e;
	#20
	A = 16'hb606;
	B = 16'h3a18;
	ans = 16'h362a;
	#20
	A = 16'hb7e2;
	B = 16'hb727;
	ans = 16'hbb84;
	#20
	A = 16'h34ac;
	B = 16'hbaf2;
	ans = 16'hb89c;
	#20
	A = 16'hb86e;
	B = 16'hb452;
	ans = 16'hba97;
	#20
	A = 16'h3095;
	B = 16'hb453;
	ans = 16'hb011;
	#20
	A = 16'h3733;
	B = 16'hb6c6;
	ans = 16'h26d0;
	#20
	A = 16'h35a2;
	B = 16'hba79;
	ans = 16'hb750;
	#20
	A = 16'h3979;
	B = 16'hb89d;
	ans = 16'h2ee0;
	#20
	A = 16'h399b;
	B = 16'h3769;
	ans = 16'h3ca8;
	#20
	A = 16'h2a73;
	B = 16'hb6a6;
	ans = 16'hb5d8;
	#20
	A = 16'h3b79;
	B = 16'hb6b9;
	ans = 16'h381c;
	#20
	A = 16'hb873;
	B = 16'h30c9;
	ans = 16'hb682;
	#20
	A = 16'h39d5;
	B = 16'h1f5b;
	ans = 16'h39e4;
	#20
	A = 16'hba99;
	B = 16'h397f;
	ans = 16'hb068;
	#20
	A = 16'hb9cc;
	B = 16'hb75a;
	ans = 16'hbcbc;
	#20
	A = 16'hb78e;
	B = 16'hb8c0;
	ans = 16'hbc44;
	#20
	A = 16'h3245;
	B = 16'h3bb0;
	ans = 16'h3ca1;
	#20
	A = 16'h2c9a;
	B = 16'hb7f6;
	ans = 16'hb6d0;
	#20
	A = 16'h3a8c;
	B = 16'h3b96;
	ans = 16'h3f11;
	#20
	A = 16'h31ca;
	B = 16'hb600;
	ans = 16'hb236;
	#20
	A = 16'hb94f;
	B = 16'hbb70;
	ans = 16'hbe60;
	#20
	A = 16'hb4bf;
	B = 16'hb13d;
	ans = 16'hb75e;
	#20
	A = 16'hb36b;
	B = 16'h3bbf;
	ans = 16'h39e4;
	#20
	A = 16'hbba6;
	B = 16'h32d7;
	ans = 16'hb9f0;
	#20
	A = 16'hba2a;
	B = 16'hb99e;
	ans = 16'hbde4;
	#20
	A = 16'h3080;
	B = 16'hbb51;
	ans = 16'hba31;
	#20
	A = 16'hb8ad;
	B = 16'h3786;
	ans = 16'haf50;
	#20
	A = 16'h29ac;
	B = 16'h3bc4;
	ans = 16'h3c0f;
	#20
	A = 16'h35b4;
	B = 16'h38f4;
	ans = 16'h3bce;
	#20
	A = 16'h39d6;
	B = 16'h3b3d;
	ans = 16'h3e8a;
	#20
	A = 16'h389a;
	B = 16'h3b96;
	ans = 16'h3e18;
	#20
	A = 16'h385f;
	B = 16'hb7af;
	ans = 16'h2c3c;
	#20
	A = 16'hba1a;
	B = 16'hb871;
	ans = 16'hbd46;
	#20
	A = 16'hb9b4;
	B = 16'hba52;
	ans = 16'hbe03;
	#20
	A = 16'h37ff;
	B = 16'h3af9;
	ans = 16'h3d7c;
	#20
	A = 16'hb818;
	B = 16'h22b3;
	ans = 16'hb7fa;
	#20
	A = 16'h356d;
	B = 16'h3836;
	ans = 16'h3aec;
	#20
	A = 16'hb394;
	B = 16'h355e;
	ans = 16'h2e50;
	#20
	A = 16'hb91a;
	B = 16'hba8e;
	ans = 16'hbdd4;
	#20
	A = 16'h35eb;
	B = 16'hb42b;
	ans = 16'h2f00;
	#20
	A = 16'haf42;
	B = 16'hb594;
	ans = 16'hb764;
	#20
	A = 16'hb732;
	B = 16'h3b6d;
	ans = 16'h37a8;
	#20
	A = 16'h3b20;
	B = 16'h38a7;
	ans = 16'h3de4;
	#20
	A = 16'h2ac8;
	B = 16'h3ad0;
	ans = 16'h3b3c;
	#20
	A = 16'h37eb;
	B = 16'hb790;
	ans = 16'h25b0;
	#20
	A = 16'hb7f0;
	B = 16'hb1c9;
	ans = 16'hb96a;
	#20
	A = 16'hb401;
	B = 16'h3ba2;
	ans = 16'h39a2;
	#20
	A = 16'hacbf;
	B = 16'hb517;
	ans = 16'hb647;
	#20
	A = 16'hb987;
	B = 16'h36bd;
	ans = 16'hb451;
	#20
	A = 16'hb84d;
	B = 16'haf3c;
	ans = 16'hb934;
	#20
	A = 16'hb680;
	B = 16'h38fa;
	ans = 16'h32e8;
	#20
	A = 16'hb787;
	B = 16'hb559;
	ans = 16'hba70;
	#20
	A = 16'h3bef;
	B = 16'had86;
	ans = 16'h3b3e;
	#20
	A = 16'h3860;
	B = 16'hb587;
	ans = 16'h3272;
	#20
	A = 16'hafa7;
	B = 16'h2e24;
	ans = 16'ha60c;
	#20
	A = 16'h391e;
	B = 16'hbb04;
	ans = 16'hb398;
	#20
	A = 16'h3565;
	B = 16'h38a8;
	ans = 16'h3b5a;
	#20
	A = 16'h3b1a;
	B = 16'hb881;
	ans = 16'h3532;
	#20
	A = 16'hba8b;
	B = 16'h3564;
	ans = 16'hb7b2;
	#20
	A = 16'hbbbf;
	B = 16'h3a20;
	ans = 16'hb27c;
	#20
	A = 16'hba5f;
	B = 16'h3a89;
	ans = 16'h2540;
	#20
	A = 16'h3af8;
	B = 16'hbaef;
	ans = 16'h1c80;
	#20
	A = 16'h347f;
	B = 16'hb579;
	ans = 16'habd0;
	#20
	A = 16'h39bc;
	B = 16'h3254;
	ans = 16'h3b51;
	#20
	A = 16'hbabe;
	B = 16'h34ef;
	ans = 16'hb846;
	#20
	A = 16'hba64;
	B = 16'hb0d5;
	ans = 16'hbb99;
	#20
	A = 16'hb5cf;
	B = 16'h3b82;
	ans = 16'h389a;
	#20
	A = 16'hbb9d;
	B = 16'hba6a;
	ans = 16'hbf04;
	#20
	A = 16'h3b1a;
	B = 16'h3b8c;
	ans = 16'h3f53;
	#20
	A = 16'h30d7;
	B = 16'h3bb1;
	ans = 16'h3c73;
	#20
	A = 16'hba21;
	B = 16'h2936;
	ans = 16'hb9ce;
	#20
	A = 16'hb01d;
	B = 16'hb7cc;
	ans = 16'hb8ed;
	#20
	A = 16'hba5e;
	B = 16'h39d5;
	ans = 16'hac48;
	#20
	A = 16'h1dd9;
	B = 16'h3a32;
	ans = 16'h3a3e;
	#20
	A = 16'hb80e;
	B = 16'hb93c;
	ans = 16'hbca5;
	#20
	A = 16'h3b7a;
	B = 16'hb83e;
	ans = 16'h3678;
	#20
	A = 16'h3772;
	B = 16'h2483;
	ans = 16'h37ba;
	#20
	A = 16'hb90a;
	B = 16'h3759;
	ans = 16'hb176;
	#20
	A = 16'ha6e6;
	B = 16'h3bfa;
	ans = 16'h3bc3;
	#20
	A = 16'hb604;
	B = 16'h3358;
	ans = 16'hb0b0;
	#20
	A = 16'hbae3;
	B = 16'h3be7;
	ans = 16'h3010;
	#20
	A = 16'ha97d;
	B = 16'h382e;
	ans = 16'h37ac;
	#20
	A = 16'ha9d0;
	B = 16'hade1;
	ans = 16'hb064;
	#20
	A = 16'ha281;
	B = 16'h3a2f;
	ans = 16'h3a15;
	#20
	A = 16'hbb52;
	B = 16'h3850;
	ans = 16'hb604;
	#20
	A = 16'hb4ab;
	B = 16'h3583;
	ans = 16'h2ac0;
	#20
	A = 16'h33cc;
	B = 16'h3bad;
	ans = 16'h3cd0;
	#20
	A = 16'h25e3;
	B = 16'hbabb;
	ans = 16'hba8c;
	#20
	A = 16'h397a;
	B = 16'h3882;
	ans = 16'h3cfe;
	#20
	A = 16'h3861;
	B = 16'hb916;
	ans = 16'hada8;
	#20
	A = 16'h313a;
	B = 16'hb239;
	ans = 16'ha7f8;
	#20
	A = 16'hbb62;
	B = 16'hbb08;
	ans = 16'hbf35;
	#20
	A = 16'h34a8;
	B = 16'hb8cd;
	ans = 16'hb4f2;
	#20
	A = 16'hb4f2;
	B = 16'hbb0e;
	ans = 16'hbcc4;
	#20
	A = 16'hb02d;
	B = 16'h35a0;
	ans = 16'h3313;
	#20
	A = 16'h366a;
	B = 16'h3a19;
	ans = 16'h3ca7;
	#20
	A = 16'h392e;
	B = 16'hb5f1;
	ans = 16'h346b;
	#20
	A = 16'hac73;
	B = 16'h363f;
	ans = 16'h3522;
	#20
	A = 16'h34cb;
	B = 16'h3b31;
	ans = 16'h3ccb;
	#20
	A = 16'h387b;
	B = 16'h3b95;
	ans = 16'h3e08;
	#20
	A = 16'h38cb;
	B = 16'hb8a7;
	ans = 16'h2480;
	#20
	A = 16'hbadf;
	B = 16'h3ab3;
	ans = 16'ha580;
	#20
	A = 16'h2eab;
	B = 16'h3822;
	ans = 16'h38f7;
	#20
	A = 16'h2e90;
	B = 16'hb94f;
	ans = 16'hb87d;
	#20
	A = 16'h303b;
	B = 16'hb045;
	ans = 16'h9500;
	#20
	A = 16'hbb1c;
	B = 16'hb6ec;
	ans = 16'hbd49;
	#20
	A = 16'h3703;
	B = 16'hb884;
	ans = 16'hb00a;
	#20
	A = 16'h263c;
	B = 16'h3341;
	ans = 16'h3404;
	#20
	A = 16'hb880;
	B = 16'hb7da;
	ans = 16'hbc36;
	#20
	A = 16'hb2a4;
	B = 16'h3854;
	ans = 16'h3556;
	#20
	A = 16'h3b52;
	B = 16'h39b6;
	ans = 16'h3e84;
	#20
	A = 16'h3882;
	B = 16'ha22f;
	ans = 16'h3869;
	#20
	A = 16'hb51f;
	B = 16'h34e7;
	ans = 16'ha300;
	#20
	A = 16'h3bf5;
	B = 16'hb46b;
	ans = 16'h39c0;
	#20
	A = 16'hba28;
	B = 16'hbbfa;
	ans = 16'hbf11;
	#20
	A = 16'h365c;
	B = 16'hb00d;
	ans = 16'h3456;
	#20
	A = 16'h3896;
	B = 16'hb9ad;
	ans = 16'hb05c;
	#20
	A = 16'h302c;
	B = 16'hbb53;
	ans = 16'hba48;
	#20
	A = 16'hbaef;
	B = 16'h3833;
	ans = 16'hb578;
	#20
	A = 16'hb57b;
	B = 16'h3789;
	ans = 16'h301c;
	#20
	A = 16'h385a;
	B = 16'hba0a;
	ans = 16'hb2c0;
	#20
	A = 16'h3951;
	B = 16'h3afd;
	ans = 16'h3e27;
	#20
	A = 16'h3bce;
	B = 16'h383d;
	ans = 16'h3e06;
	#20
	A = 16'hba21;
	B = 16'hb48f;
	ans = 16'hbc34;
	#20
	A = 16'hba3e;
	B = 16'hb8a3;
	ans = 16'hbd70;
	#20
	A = 16'hb6f3;
	B = 16'h2c0f;
	ans = 16'hb5ef;
	#20
	A = 16'hb099;
	B = 16'h368f;
	ans = 16'h3442;
	#20
	A = 16'h2816;
	B = 16'h341c;
	ans = 16'h349f;
	#20
	A = 16'h3940;
	B = 16'h2fbf;
	ans = 16'h3a38;
	#20
	A = 16'h2956;
	B = 16'hb873;
	ans = 16'hb81e;
	#20
	A = 16'h3a8a;
	B = 16'ha46c;
	ans = 16'h3a67;
	#20
	A = 16'hb849;
	B = 16'hb983;
	ans = 16'hbce6;
	#20
	A = 16'hb2f1;
	B = 16'hb4d0;
	ans = 16'hb824;
	#20
	A = 16'h2fda;
	B = 16'hb4dd;
	ans = 16'hb1cd;
	#20
	A = 16'h3a12;
	B = 16'h5e6;
	ans = 16'h3a12;
	#20
	A = 16'haf96;
	B = 16'hba04;
	ans = 16'hbaf7;
	#20
	A = 16'had44;
	B = 16'hbb02;
	ans = 16'hbbaa;
	#20
	A = 16'hb0fe;
	B = 16'hb9e3;
	ans = 16'hbb22;
	#20
	A = 16'h340d;
	B = 16'h3575;
	ans = 16'h38c1;
	#20
	A = 16'hb559;
	B = 16'hba8f;
	ans = 16'hbc9e;
	#20
	A = 16'hba8e;
	B = 16'hb6e0;
	ans = 16'hbcff;
	#20
	A = 16'h1f87;
	B = 16'h3bac;
	ans = 16'h3bbb;
	#20
	A = 16'h3966;
	B = 16'ha87c;
	ans = 16'h391e;
	#20
	A = 16'h378c;
	B = 16'h3a1b;
	ans = 16'h3cf0;
	#20
	A = 16'h36d8;
	B = 16'hb9a5;
	ans = 16'hb472;
	#20
	A = 16'hba56;
	B = 16'h3bea;
	ans = 16'h3250;
	#20
	A = 16'h3527;
	B = 16'hba9c;
	ans = 16'hb808;
	#20
	A = 16'h38b8;
	B = 16'ha84a;
	ans = 16'h3873;
	#20
	A = 16'h3a95;
	B = 16'h3866;
	ans = 16'h3d7e;
	#20
	A = 16'hbba2;
	B = 16'h3630;
	ans = 16'hb88a;
	#20
	A = 16'h1854;
	B = 16'hb4ac;
	ans = 16'hb4a3;
	#20
	A = 16'h34c3;
	B = 16'h38e0;
	ans = 16'h3b42;
	#20
	A = 16'h3ac8;
	B = 16'hba56;
	ans = 16'h2b20;
	#20
	A = 16'h3987;
	B = 16'hb0b8;
	ans = 16'h3859;
	#20
	A = 16'hbb6c;
	B = 16'h304b;
	ans = 16'hba59;
	#20
	A = 16'h3aa1;
	B = 16'h36fa;
	ans = 16'h3d0f;
	#20
	A = 16'hb9e4;
	B = 16'h37cb;
	ans = 16'hb3fa;
	#20
	A = 16'h3ba7;
	B = 16'h37d5;
	ans = 16'h3dc9;
	#20
	A = 16'h37e6;
	B = 16'h3b63;
	ans = 16'h3dab;
	#20
	A = 16'hb59d;
	B = 16'hba79;
	ans = 16'hbca4;
	#20
	A = 16'h265a;
	B = 16'h3982;
	ans = 16'h39b5;
	#20
	A = 16'h328d;
	B = 16'h3820;
	ans = 16'h39c3;
	#20
	A = 16'hb211;
	B = 16'h3901;
	ans = 16'h36fa;
	#20
	A = 16'hbac9;
	B = 16'hbb4c;
	ans = 16'hbf0a;
	#20
	A = 16'h3803;
	B = 16'h395b;
	ans = 16'h3caf;
	#20
	A = 16'hb744;
	B = 16'h2cfe;
	ans = 16'hb604;
	#20
	A = 16'hb8f6;
	B = 16'h3337;
	ans = 16'hb650;
	#20
	A = 16'hb710;
	B = 16'hba70;
	ans = 16'hbcfc;
	#20
	A = 16'h37d1;
	B = 16'h39b7;
	ans = 16'h3cd0;
	#20
	A = 16'h3853;
	B = 16'h38d3;
	ans = 16'h3c93;
	#20
	A = 16'hbb1b;
	B = 16'hbba9;
	ans = 16'hbf62;
	#20
	A = 16'hbb92;
	B = 16'haae3;
	ans = 16'hbc00;
	#20
	A = 16'hadc2;
	B = 16'hb9d7;
	ans = 16'hba8f;
	#20
	A = 16'hbb22;
	B = 16'h3b31;
	ans = 16'h1f80;
	#20
	A = 16'hb99c;
	B = 16'hbaea;
	ans = 16'hbe43;
	#20
	A = 16'hbb7e;
	B = 16'h2f7b;
	ans = 16'hba8f;
	#20
	A = 16'h3aba;
	B = 16'h332a;
	ans = 16'h3c42;
	#20
	A = 16'hb958;
	B = 16'hb8e8;
	ans = 16'hbd20;
	#20
	A = 16'h2ca6;
	B = 16'h387c;
	ans = 16'h3911;
	#20
	A = 16'h2df9;
	B = 16'h1d0a;
	ans = 16'h2e4a;
	#20
	A = 16'h3b65;
	B = 16'h38ae;
	ans = 16'h3e0a;
	#20
	A = 16'hbaa8;
	B = 16'hbae3;
	ans = 16'hbec6;
	#20
	A = 16'h3134;
	B = 16'h3630;
	ans = 16'h3865;
	#20
	A = 16'hbb33;
	B = 16'h35ef;
	ans = 16'hb83c;
	#20
	A = 16'h3866;
	B = 16'h3758;
	ans = 16'h3c09;
	#20
	A = 16'hb68c;
	B = 16'h342e;
	ans = 16'hb0bc;
	#20
	A = 16'h384e;
	B = 16'hb73b;
	ans = 16'h2d84;
	#20
	A = 16'hb668;
	B = 16'hb41d;
	ans = 16'hb942;
	#20
	A = 16'h2da6;
	B = 16'hb843;
	ans = 16'hb71c;
	#20
	A = 16'hba8e;
	B = 16'h36a1;
	ans = 16'hb67b;
	#20
	A = 16'h3b00;
	B = 16'hb5a5;
	ans = 16'h382e;
	#20
	A = 16'hb79d;
	B = 16'h2454;
	ans = 16'hb758;
	#20
	A = 16'h36af;
	B = 16'h3782;
	ans = 16'h3b18;
	#20
	A = 16'hbaac;
	B = 16'hb3ad;
	ans = 16'hbc4c;
	#20
	A = 16'h393b;
	B = 16'hb5d8;
	ans = 16'h349e;
	#20
	A = 16'h2db2;
	B = 16'h2df4;
	ans = 16'h31d3;
	#20
	A = 16'h2d97;
	B = 16'h3ae6;
	ans = 16'h3b99;
	#20
	A = 16'h35dd;
	B = 16'hb6c9;
	ans = 16'hab60;
	#20
	A = 16'hb7da;
	B = 16'hb1fb;
	ans = 16'hb96c;
	#20
	A = 16'h3abd;
	B = 16'hb639;
	ans = 16'h3741;
	#20
	A = 16'h393c;
	B = 16'h35ae;
	ans = 16'h3c0a;
	#20
	A = 16'hb801;
	B = 16'hba70;
	ans = 16'hbd38;
	#20
	A = 16'h3ab5;
	B = 16'h3a29;
	ans = 16'h3e6f;
	#20
	A = 16'hbaf8;
	B = 16'h353c;
	ans = 16'hb85a;
	#20
	A = 16'h34e9;
	B = 16'hb64a;
	ans = 16'had84;
	#20
	A = 16'h34f5;
	B = 16'hb8d1;
	ans = 16'hb4ad;
	#20
	A = 16'hbb26;
	B = 16'hb0ee;
	ans = 16'hbc31;
	#20
	A = 16'h2c07;
	B = 16'hb661;
	ans = 16'hb55f;
	#20
	A = 16'hba61;
	B = 16'h38d2;
	ans = 16'hb23c;
	#20
	A = 16'h3987;
	B = 16'h2a85;
	ans = 16'h39ef;
	#20
	A = 16'hb0d5;
	B = 16'h3b62;
	ans = 16'h3a2d;
	#20
	A = 16'hb125;
	B = 16'hbae8;
	ans = 16'hbc19;
	#20
	A = 16'h3b42;
	B = 16'hbb38;
	ans = 16'h1d00;
	#20
	A = 16'hb9b9;
	B = 16'h341a;
	ans = 16'hb758;
	#20
	A = 16'had13;
	B = 16'h3a77;
	ans = 16'h39d5;
	#20
	A = 16'h3056;
	B = 16'hb539;
	ans = 16'hb21c;
	#20
	A = 16'h3bb9;
	B = 16'hb1d2;
	ans = 16'h3a44;
	#20
	A = 16'h3bb9;
	B = 16'hba8a;
	ans = 16'h30bc;
	#20
	A = 16'h3823;
	B = 16'hbac2;
	ans = 16'hb53e;
	#20
	A = 16'hbbfa;
	B = 16'hb81e;
	ans = 16'hbe0c;
	#20
	A = 16'h31ce;
	B = 16'hbb5b;
	ans = 16'hb9e8;
	#20
	A = 16'h3927;
	B = 16'h39cc;
	ans = 16'h3d7a;
	#20
	A = 16'h9c17;
	B = 16'hb45e;
	ans = 16'hb46e;
	#20
	A = 16'hbbcc;
	B = 16'h3356;
	ans = 16'hb9f6;
	#20
	A = 16'h329f;
	B = 16'hbbc7;
	ans = 16'hba1f;
	#20
	A = 16'h3484;
	B = 16'h39b9;
	ans = 16'h3bfb;
	#20
	A = 16'h302a;
	B = 16'hbb1a;
	ans = 16'hba10;
	#20
	A = 16'hb7e2;
	B = 16'hba01;
	ans = 16'hbcf9;
	#20
	A = 16'h38ab;
	B = 16'h31de;
	ans = 16'h3a22;
	#20
	A = 16'h333e;
	B = 16'h299d;
	ans = 16'h3453;
	#20
	A = 16'h3767;
	B = 16'hafc1;
	ans = 16'h3577;
	#20
	A = 16'h321a;
	B = 16'h3aa9;
	ans = 16'h3c18;
	#20
	A = 16'h3a0d;
	B = 16'ha808;
	ans = 16'h39cc;
	#20
	A = 16'hb140;
	B = 16'hb1fe;
	ans = 16'hb59f;
	#20
	A = 16'haee0;
	B = 16'h3b23;
	ans = 16'h3a47;
	#20
	A = 16'h2c88;
	B = 16'hb825;
	ans = 16'hb728;
	#20
	A = 16'hb9ff;
	B = 16'h3843;
	ans = 16'hb2f0;
	#20
	A = 16'hba6c;
	B = 16'hb4c8;
	ans = 16'hbc68;
	#20
	A = 16'h35ef;
	B = 16'h3487;
	ans = 16'h393b;
	#20
	A = 16'hbaf7;
	B = 16'hb8fa;
	ans = 16'hbdf8;
	#20
	A = 16'hb0c2;
	B = 16'hbb15;
	ans = 16'hbc23;
	#20
	A = 16'hb933;
	B = 16'hb19e;
	ans = 16'hba9a;
	#20
	A = 16'h3666;
	B = 16'ha8d2;
	ans = 16'h35cc;
	#20
	A = 16'hb545;
	B = 16'hbae7;
	ans = 16'hbcc5;
	#20
	A = 16'hbb15;
	B = 16'h38e1;
	ans = 16'hb468;
	#20
	A = 16'hb5ad;
	B = 16'h2579;
	ans = 16'hb555;
	#20
	A = 16'hb3ff;
	B = 16'h380e;
	ans = 16'h341c;
	#20
	A = 16'h2d18;
	B = 16'h3a0b;
	ans = 16'h3aae;
	#20
	A = 16'hb1b7;
	B = 16'h397c;
	ans = 16'h380e;
	#20
	A = 16'h3993;
	B = 16'hbafd;
	ans = 16'hb1a8;
	#20
	A = 16'h3ae7;
	B = 16'h32e8;
	ans = 16'h3c50;
	#20
	A = 16'hb9cc;
	B = 16'hb578;
	ans = 16'hbc44;
	#20
	A = 16'h39e0;
	B = 16'h36f2;
	ans = 16'h3cac;
	#20
	A = 16'h39d4;
	B = 16'hba90;
	ans = 16'hade0;
	#20
	A = 16'hb4e1;
	B = 16'hbbab;
	ans = 16'hbd0e;
	#20
	A = 16'hb957;
	B = 16'hb87d;
	ans = 16'hbcea;
	#20
	A = 16'h3b15;
	B = 16'hb569;
	ans = 16'h3860;
	#20
	A = 16'h376c;
	B = 16'hbac1;
	ans = 16'hb616;
	#20
	A = 16'hb8ca;
	B = 16'hb9f8;
	ans = 16'hbd61;
	#20
	A = 16'h3179;
	B = 16'hb116;
	ans = 16'h2230;
	#20
	A = 16'hba21;
	B = 16'h2919;
	ans = 16'hb9cf;
	#20
	A = 16'hb9ac;
	B = 16'h2d2e;
	ans = 16'hb906;
	#20
	A = 16'hb80a;
	B = 16'hb92a;
	ans = 16'hbc9a;
	#20
	A = 16'hbb91;
	B = 16'h399d;
	ans = 16'hb3d0;
	#20
	A = 16'h2e86;
	B = 16'h3403;
	ans = 16'h35a4;
	#20
	A = 16'hb068;
	B = 16'hb986;
	ans = 16'hbaa0;
	#20
	A = 16'hb8e6;
	B = 16'hbbdc;
	ans = 16'hbe61;
	#20
	A = 16'h38e5;
	B = 16'hba56;
	ans = 16'hb1c4;
	#20
	A = 16'h35c1;
	B = 16'ha4f9;
	ans = 16'h3571;
	#20
	A = 16'h35c2;
	B = 16'h33f3;
	ans = 16'h38de;
	#20
	A = 16'h36e6;
	B = 16'hb86e;
	ans = 16'hafd8;
	#20
	A = 16'h390a;
	B = 16'ha59f;
	ans = 16'h38dd;
	#20
	A = 16'h3a69;
	B = 16'h3b44;
	ans = 16'h3ed6;
	#20
	A = 16'h3ae0;
	B = 16'h3be6;
	ans = 16'h3f63;
	#20
	A = 16'hb09e;
	B = 16'h2ca1;
	ans = 16'hac9b;
	#20
	A = 16'h3bd6;
	B = 16'hb174;
	ans = 16'h3a79;
	#20
	A = 16'h3879;
	B = 16'h3a0d;
	ans = 16'h3d43;
	#20
	A = 16'h37b4;
	B = 16'h35d8;
	ans = 16'h3ac6;
	#20
	A = 16'h3b85;
	B = 16'h31db;
	ans = 16'h3c7e;
	#20
	A = 16'h3af4;
	B = 16'h2ed7;
	ans = 16'h3bcf;
	#20
	A = 16'h3416;
	B = 16'h27ce;
	ans = 16'h3493;
	#20
	A = 16'hb721;
	B = 16'hb340;
	ans = 16'hb960;
	#20
	A = 16'h20e7;
	B = 16'hbb15;
	ans = 16'hbb01;
	#20
	A = 16'h2f9c;
	B = 16'hac54;
	ans = 16'h2a90;
	#20
	A = 16'ha2f0;
	B = 16'h3624;
	ans = 16'h35ec;
	#20
	A = 16'hb358;
	B = 16'hb91d;
	ans = 16'hbaf3;
	#20
	A = 16'h3498;
	B = 16'h3506;
	ans = 16'h38cf;
	#20
	A = 16'h3911;
	B = 16'hb38d;
	ans = 16'h365c;
	#20
	A = 16'hb6ae;
	B = 16'hb949;
	ans = 16'hbc50;
	#20
	A = 16'hb6e6;
	B = 16'h36c1;
	ans = 16'ha0a0;
	#20
	A = 16'h3bd3;
	B = 16'h2fcd;
	ans = 16'h3c66;
	#20
	A = 16'hb676;
	B = 16'h38f0;
	ans = 16'h32d4;
	#20
	A = 16'hb1aa;
	B = 16'h3675;
	ans = 16'h3340;
	#20
	A = 16'h2f7a;
	B = 16'h3997;
	ans = 16'h3a86;
	#20
	A = 16'h3ae1;
	B = 16'hb8bf;
	ans = 16'h3444;
	#20
	A = 16'haf9b;
	B = 16'habc1;
	ans = 16'hb1be;
	#20
	A = 16'h305f;
	B = 16'hb5c9;
	ans = 16'hb333;
	#20
	A = 16'h3065;
	B = 16'h3b4d;
	ans = 16'h3c33;
	#20
	A = 16'hbbb6;
	B = 16'hb68e;
	ans = 16'hbd7e;
	#20
	A = 16'h3bff;
	B = 16'h383d;
	ans = 16'h3e1e;
	#20
	A = 16'h36d8;
	B = 16'h3b26;
	ans = 16'h3d49;
	#20
	A = 16'h398c;
	B = 16'h39d9;
	ans = 16'h3db2;
	#20
	A = 16'habce;
	B = 16'hbb81;
	ans = 16'hbbfe;
	#20
	A = 16'h38d6;
	B = 16'hb4ad;
	ans = 16'h34ff;
	#20
	A = 16'had99;
	B = 16'hb4d1;
	ans = 16'hb637;
	#20
	A = 16'h29f9;
	B = 16'hb90d;
	ans = 16'hb8ad;
	#20
	A = 16'hb9ca;
	B = 16'hb854;
	ans = 16'hbd0f;
	#20
	A = 16'hb8c9;
	B = 16'h3a27;
	ans = 16'h3178;
	#20
	A = 16'h3495;
	B = 16'h39d4;
	ans = 16'h3c0f;
	#20
	A = 16'hb421;
	B = 16'ha6dd;
	ans = 16'hb48f;
	#20
	A = 16'h283c;
	B = 16'hb6e0;
	ans = 16'hb658;
	#20
	A = 16'h3a9e;
	B = 16'h31ac;
	ans = 16'h3c04;
	#20
	A = 16'h3961;
	B = 16'h355f;
	ans = 16'h3c08;
	#20
	A = 16'h3132;
	B = 16'h36c1;
	ans = 16'h38ad;
	#20
	A = 16'h3473;
	B = 16'hbabc;
	ans = 16'hb882;
	#20
	A = 16'hba84;
	B = 16'h3380;
	ans = 16'hb8a4;
	#20
	A = 16'hb73c;
	B = 16'h3738;
	ans = 16'h9400;
	#20
	A = 16'h38f9;
	B = 16'hae91;
	ans = 16'h3827;
	#20
	A = 16'h3544;
	B = 16'hb92a;
	ans = 16'hb510;
	#20
	A = 16'h3ab2;
	B = 16'hbb9d;
	ans = 16'haf58;
	#20
	A = 16'h3834;
	B = 16'hac73;
	ans = 16'h374b;
	#20
	A = 16'h394e;
	B = 16'hb33f;
	ans = 16'h36fc;
	#20
	A = 16'hbbe2;
	B = 16'hb38c;
	ans = 16'hbce2;
	#20
	A = 16'h2b86;
	B = 16'hb8b3;
	ans = 16'hb83b;
	#20
	A = 16'h3955;
	B = 16'hb93b;
	ans = 16'h2280;
	#20
	A = 16'hba3b;
	B = 16'hb556;
	ans = 16'hbc73;
	#20
	A = 16'h36fd;
	B = 16'hb5b9;
	ans = 16'h2d10;
	#20
	A = 16'h3969;
	B = 16'hb2d9;
	ans = 16'h3766;
	#20
	A = 16'h36de;
	B = 16'hb1be;
	ans = 16'h33fe;
	#20
	A = 16'h3a4a;
	B = 16'hb86f;
	ans = 16'h336c;
	#20
	A = 16'hb832;
	B = 16'hb4aa;
	ans = 16'hba87;
	#20
	A = 16'h36aa;
	B = 16'hbabb;
	ans = 16'hb6cc;
	#20
	A = 16'ha902;
	B = 16'h3a9a;
	ans = 16'h3a4a;
	#20
	A = 16'h3a02;
	B = 16'h3a60;
	ans = 16'h3e31;
	#20
	A = 16'h36fe;
	B = 16'hb8be;
	ans = 16'hb0fc;
	#20
	A = 16'hb8ad;
	B = 16'h32d6;
	ans = 16'hb5ef;
	#20
	A = 16'h3432;
	B = 16'h2e60;
	ans = 16'h35ca;
	#20
	A = 16'hb560;
	B = 16'hb1af;
	ans = 16'hb81c;
	#20
	A = 16'h396e;
	B = 16'h392f;
	ans = 16'h3d4e;
	#20
	A = 16'h3806;
	B = 16'hba21;
	ans = 16'hb436;
	#20
	A = 16'hb475;
	B = 16'h33a7;
	ans = 16'ha90c;
	#20
	A = 16'hb438;
	B = 16'h393b;
	ans = 16'h363e;
	#20
	A = 16'hb9a1;
	B = 16'hb8df;
	ans = 16'hbd40;
	#20
	A = 16'hae32;
	B = 16'h2c1c;
	ans = 16'ha82c;
	#20
	A = 16'h39cf;
	B = 16'hbb70;
	ans = 16'hb284;
	#20
	A = 16'h3135;
	B = 16'hb512;
	ans = 16'hb0ef;
	#20
	A = 16'hb71e;
	B = 16'h350d;
	ans = 16'hb022;
	#20
	A = 16'ha73c;
	B = 16'h381c;
	ans = 16'h37c4;
	#20
	A = 16'h3b8e;
	B = 16'h3b68;
	ans = 16'h3f7b;
	#20
	A = 16'h39f0;
	B = 16'hb0d9;
	ans = 16'h38ba;
	#20
	A = 16'h3bab;
	B = 16'hb3b5;
	ans = 16'h39be;
	#20
	A = 16'hba03;
	B = 16'h3a09;
	ans = 16'h1a00;
	#20
	A = 16'had74;
	B = 16'hba80;
	ans = 16'hbb2e;
	#20
	A = 16'h16d4;
	B = 16'hb851;
	ans = 16'hb84e;
	#20
	A = 16'hb2ef;
	B = 16'ha9b1;
	ans = 16'hb42e;
	#20
	A = 16'h9c4;
	B = 16'h36bd;
	ans = 16'h36be;
	#20
	A = 16'hbb5a;
	B = 16'h3a88;
	ans = 16'hae90;
	#20
	A = 16'h38ae;
	B = 16'h34cd;
	ans = 16'h3b14;
	#20
	A = 16'hb8c1;
	B = 16'h34b8;
	ans = 16'hb4ca;
	#20
	A = 16'hba1e;
	B = 16'h3831;
	ans = 16'hb3b4;
	#20
	A = 16'h39ef;
	B = 16'h2b80;
	ans = 16'h3a67;
	#20
	A = 16'h3b8c;
	B = 16'hab37;
	ans = 16'h3b19;
	#20
	A = 16'hb529;
	B = 16'hb87f;
	ans = 16'hbb14;
	#20
	A = 16'hb43f;
	B = 16'h3690;
	ans = 16'h30a2;
	#20
	A = 16'hb682;
	B = 16'h2c22;
	ans = 16'hb57a;
	#20
	A = 16'hbaa1;
	B = 16'hb83c;
	ans = 16'hbd6e;
	#20
	A = 16'h3ace;
	B = 16'hbb0a;
	ans = 16'ha780;
	#20
	A = 16'h3476;
	B = 16'h343b;
	ans = 16'h3858;
	#20
	A = 16'h3686;
	B = 16'hb110;
	ans = 16'h33fc;
	#20
	A = 16'hb97e;
	B = 16'h3bcd;
	ans = 16'h349e;
	#20
	A = 16'hb9ca;
	B = 16'hb2eb;
	ans = 16'hbb85;
	#20
	A = 16'h387f;
	B = 16'h3aa7;
	ans = 16'h3d93;
	#20
	A = 16'hb9ad;
	B = 16'h32a1;
	ans = 16'hb805;
	#20
	A = 16'h3b52;
	B = 16'h381f;
	ans = 16'h3db8;
	#20
	A = 16'h3bdf;
	B = 16'hb740;
	ans = 16'h383f;
	#20
	A = 16'h37f6;
	B = 16'h398f;
	ans = 16'h3cc5;
	#20
	A = 16'h3ab9;
	B = 16'hbbf7;
	ans = 16'hb0f8;
	#20
	A = 16'h3842;
	B = 16'hb807;
	ans = 16'h2760;
	#20
	A = 16'hae0f;
	B = 16'h3a6d;
	ans = 16'h39ab;
	#20
	A = 16'ha9ea;
	B = 16'h2fe4;
	ans = 16'h2cef;
	#20
	A = 16'hb722;
	B = 16'hbb57;
	ans = 16'hbd74;
	#20
	A = 16'hb23b;
	B = 16'h3913;
	ans = 16'h3708;
	#20
	A = 16'h33a2;
	B = 16'h3b34;
	ans = 16'h3c8e;
	#20
	A = 16'hb531;
	B = 16'h3755;
	ans = 16'h3048;
	#20
	A = 16'hb8ae;
	B = 16'hb90a;
	ans = 16'hbcdc;
	#20
	A = 16'hb792;
	B = 16'h3aba;
	ans = 16'h35e2;
	#20
	A = 16'hb4b7;
	B = 16'h3811;
	ans = 16'h32d6;
	#20
	A = 16'hb72b;
	B = 16'hbbc3;
	ans = 16'hbdac;
	#20
	A = 16'h37dd;
	B = 16'hb8fa;
	ans = 16'hb02e;
	#20
	A = 16'hba35;
	B = 16'h391d;
	ans = 16'hb060;
	#20
	A = 16'h3b4f;
	B = 16'ha89b;
	ans = 16'h3b05;
	#20
	A = 16'h350f;
	B = 16'hba6e;
	ans = 16'hb7cd;
	#20
	A = 16'hb840;
	B = 16'h3548;
	ans = 16'hb270;
	#20
	A = 16'hba99;
	B = 16'hb828;
	ans = 16'hbd60;
	#20
	A = 16'hb6fa;
	B = 16'h2e4f;
	ans = 16'hb566;
	#20
	A = 16'h34f8;
	B = 16'hada4;
	ans = 16'h331e;
	#20
	A = 16'hb909;
	B = 16'hb874;
	ans = 16'hbcbe;
	#20
	A = 16'h3a4f;
	B = 16'h3506;
	ans = 16'h3c69;
	#20
	A = 16'h28fe;
	B = 16'hbb6d;
	ans = 16'hbb1d;
	#20
	A = 16'h3797;
	B = 16'hb6f5;
	ans = 16'h2910;
	#20
	A = 16'hb8ec;
	B = 16'hbbfb;
	ans = 16'hbe74;
	#20
	A = 16'h2c30;
	B = 16'hb22f;
	ans = 16'hb017;
	#20
	A = 16'hb86b;
	B = 16'hb4fa;
	ans = 16'hbae8;
	#20
	A = 16'h39ae;
	B = 16'haf2d;
	ans = 16'h38c8;
	#20
	A = 16'hb1e5;
	B = 16'hb6d9;
	ans = 16'hb8e6;
	#20
	A = 16'h351d;
	B = 16'hb967;
	ans = 16'hb5b1;
	#20
	A = 16'hb11e;
	B = 16'h39b9;
	ans = 16'h3872;
	#20
	A = 16'h368c;
	B = 16'h2c27;
	ans = 16'h3796;
	#20
	A = 16'hb5d7;
	B = 16'hb0c4;
	ans = 16'hb81c;
	#20
	A = 16'h323a;
	B = 16'h3abc;
	ans = 16'h3c25;
	#20
	A = 16'h3b52;
	B = 16'hbac5;
	ans = 16'h2c68;
	#20
	A = 16'hb4f3;
	B = 16'hb235;
	ans = 16'hb807;
	#20
	A = 16'h279a;
	B = 16'hb874;
	ans = 16'hb837;
	#20
	A = 16'hbb57;
	B = 16'h2664;
	ans = 16'hbb24;
	#20
	A = 16'h343e;
	B = 16'h3a88;
	ans = 16'h3c54;
	#20
	A = 16'h3907;
	B = 16'h3b75;
	ans = 16'h3e3e;
	#20
	A = 16'h2b5f;
	B = 16'h38ab;
	ans = 16'h3921;
	#20
	A = 16'hb0c3;
	B = 16'h3497;
	ans = 16'h306b;
	#20
	A = 16'hb88f;
	B = 16'h3b2b;
	ans = 16'h3538;
	#20
	A = 16'h3b23;
	B = 16'h3a6d;
	ans = 16'h3ec8;
	#20
	A = 16'hb8fc;
	B = 16'hba9f;
	ans = 16'hbdce;
	#20
	A = 16'h38bd;
	B = 16'h34b3;
	ans = 16'h3b16;
	#20
	A = 16'h38eb;
	B = 16'hb49d;
	ans = 16'h3539;
	#20
	A = 16'hb8b5;
	B = 16'hb9e0;
	ans = 16'hbd4a;
	#20
	A = 16'h330d;
	B = 16'hbbcd;
	ans = 16'hba0a;
	#20
	A = 16'h33c2;
	B = 16'h2fb3;
	ans = 16'h35ce;
	#20
	A = 16'h3aea;
	B = 16'h3988;
	ans = 16'h3e39;
	#20
	A = 16'hbb1b;
	B = 16'h38a0;
	ans = 16'hb4f6;
	#20
	A = 16'ha985;
	B = 16'h3abe;
	ans = 16'h3a66;
	#20
	A = 16'h3ad2;
	B = 16'h3200;
	ans = 16'h3c29;
	#20
	A = 16'h1fc0;
	B = 16'hb214;
	ans = 16'hb1d6;
	#20
	A = 16'h3893;
	B = 16'h3abe;
	ans = 16'h3da8;
	#20
	A = 16'hb858;
	B = 16'h3b45;
	ans = 16'h35da;
	#20
	A = 16'haa87;
	B = 16'hb41e;
	ans = 16'hb4ef;
	#20
	A = 16'h3b0f;
	B = 16'h3387;
	ans = 16'h3c78;
	#20
	A = 16'hac6f;
	B = 16'haf59;
	ans = 16'hb1e4;
	#20
	A = 16'h38cc;
	B = 16'hb66a;
	ans = 16'h325c;
	#20
	A = 16'h3a16;
	B = 16'h3b81;
	ans = 16'h3ecc;
	#20
	A = 16'hb8cd;
	B = 16'h3745;
	ans = 16'hb0aa;
	#20
	A = 16'h2db1;
	B = 16'hb928;
	ans = 16'hb872;
	#20
	A = 16'h39c6;
	B = 16'hbb58;
	ans = 16'hb248;
	#20
	A = 16'h3737;
	B = 16'h35ac;
	ans = 16'h3a72;
	#20
	A = 16'h345c;
	B = 16'h3098;
	ans = 16'h36a8;
	#20
	A = 16'h3706;
	B = 16'h1e06;
	ans = 16'h371e;
	#20
	A = 16'hb656;
	B = 16'hb1a3;
	ans = 16'hb894;
	#20
	A = 16'hb47e;
	B = 16'h9bad;
	ans = 16'hb48d;
	#20
	A = 16'h397f;
	B = 16'hb481;
	ans = 16'h367d;
	#20
	A = 16'hbbd5;
	B = 16'h2f9a;
	ans = 16'hbae2;
	#20
	A = 16'hb7aa;
	B = 16'h3b4a;
	ans = 16'h36ea;
	#20
	A = 16'hb24c;
	B = 16'hb46a;
	ans = 16'hb790;
	#20
	A = 16'hb636;
	B = 16'h3415;
	ans = 16'hb042;
	#20
	A = 16'hb94f;
	B = 16'hb49d;
	ans = 16'hbb9e;
	#20
	A = 16'hbbdd;
	B = 16'hb527;
	ans = 16'hbd38;
	#20
	A = 16'h3961;
	B = 16'h3021;
	ans = 16'h3a69;
	#20
	A = 16'h35c8;
	B = 16'hb84e;
	ans = 16'hb1a8;
	#20
	A = 16'hb6e2;
	B = 16'hb501;
	ans = 16'hb9f2;
	#20
	A = 16'h38d2;
	B = 16'h3a95;
	ans = 16'h3db4;
	#20
	A = 16'h3776;
	B = 16'h3aaf;
	ans = 16'h3d35;
	#20
	A = 16'h3a6d;
	B = 16'hb5c4;
	ans = 16'h3716;
	#20
	A = 16'h3433;
	B = 16'hba2e;
	ans = 16'hb814;
	#20
	A = 16'h2d16;
	B = 16'hb5d8;
	ans = 16'hb492;
	#20
	A = 16'h38bc;
	B = 16'hb9e7;
	ans = 16'hb0ac;
	#20
	A = 16'hb865;
	B = 16'hb1f2;
	ans = 16'hb9e2;
	#20
	A = 16'h3376;
	B = 16'haf24;
	ans = 16'h2fc8;
	#20
	A = 16'hb94e;
	B = 16'hb891;
	ans = 16'hbcf0;
	#20
	A = 16'hb8b3;
	B = 16'hb623;
	ans = 16'hbbc4;
	#20
	A = 16'h341a;
	B = 16'h35ac;
	ans = 16'h38e3;
	#20
	A = 16'h3438;
	B = 16'h2ca2;
	ans = 16'h3560;
	#20
	A = 16'hae1b;
	B = 16'hba59;
	ans = 16'hbb1c;
	#20
	A = 16'h318f;
	B = 16'hbb2f;
	ans = 16'hb9cb;
	#20
	A = 16'h360c;
	B = 16'hb86a;
	ans = 16'hb190;
	#20
	A = 16'h38f3;
	B = 16'hbb57;
	ans = 16'hb4c8;
	#20
	A = 16'hb71a;
	B = 16'h304d;
	ans = 16'hb4f4;
	#20
	A = 16'h3312;
	B = 16'h3b21;
	ans = 16'h3c73;
	#20
	A = 16'h3551;
	B = 16'h3893;
	ans = 16'h3b3c;
	#20
	A = 16'hb2b2;
	B = 16'hb678;
	ans = 16'hb8e8;
	#20
	A = 16'h39f2;
	B = 16'hb63a;
	ans = 16'h35aa;
	#20
	A = 16'hb9f2;
	B = 16'hba24;
	ans = 16'hbe0b;
	#20
	A = 16'hba3d;
	B = 16'hb9e7;
	ans = 16'hbe12;
	#20
	A = 16'h35d6;
	B = 16'hbae2;
	ans = 16'hb7ee;
	#20
	A = 16'hbb78;
	B = 16'hb705;
	ans = 16'hbd7d;
	#20
	A = 16'h3951;
	B = 16'ha5e9;
	ans = 16'h3922;
	#20
	A = 16'hbb86;
	B = 16'hb882;
	ans = 16'hbe04;
	#20
	A = 16'h367c;
	B = 16'h2c75;
	ans = 16'h3799;
	#20
	A = 16'hb7e6;
	B = 16'hb62d;
	ans = 16'hbb0a;
	#20
	A = 16'hb6c1;
	B = 16'h3ada;
	ans = 16'h36f3;
	#20
	A = 16'h2a35;
	B = 16'hb106;
	ans = 16'haef2;
	#20
	A = 16'hb741;
	B = 16'hb723;
	ans = 16'hbb32;
	#20
	A = 16'hb281;
	B = 16'h360c;
	ans = 16'h3197;
	#20
	A = 16'hb978;
	B = 16'hab0c;
	ans = 16'hb9e9;
	#20
	A = 16'hb491;
	B = 16'h387b;
	ans = 16'h3465;
	#20
	A = 16'hb2a9;
	B = 16'h3b1c;
	ans = 16'h3972;
	#20
	A = 16'h289c;
	B = 16'h3215;
	ans = 16'h333c;
	#20
	A = 16'h3b7a;
	B = 16'h2f11;
	ans = 16'h3c2e;
	#20
	A = 16'hbbd8;
	B = 16'h3a79;
	ans = 16'hb17c;
	#20
	A = 16'hb8cb;
	B = 16'h3951;
	ans = 16'h2c30;
	#20
	A = 16'hb88d;
	B = 16'h3b93;
	ans = 16'h360c;
	#20
	A = 16'hb958;
	B = 16'h38db;
	ans = 16'habd0;
	#20
	A = 16'hb890;
	B = 16'h39d9;
	ans = 16'h3124;
	#20
	A = 16'hba2d;
	B = 16'h2fd4;
	ans = 16'hb932;
	#20
	A = 16'h2eda;
	B = 16'hb82e;
	ans = 16'hb6a6;
	#20
	A = 16'hb8a7;
	B = 16'h33df;
	ans = 16'hb55e;
	#20
	A = 16'h2bfa;
	B = 16'hb15a;
	ans = 16'haeb7;
	#20
	A = 16'hb8a1;
	B = 16'hba5a;
	ans = 16'hbd7e;
	#20
	A = 16'h30c3;
	B = 16'h3a19;
	ans = 16'h3b4a;
	#20
	A = 16'h3af5;
	B = 16'hb692;
	ans = 16'h3758;
	#20
	A = 16'ha62d;
	B = 16'hb9c2;
	ans = 16'hb9f3;
	#20
	A = 16'hb316;
	B = 16'h315d;
	ans = 16'haae4;
	#20
	A = 16'ha66c;
	B = 16'h3202;
	ans = 16'h3134;
	#20
	A = 16'h391e;
	B = 16'hbac9;
	ans = 16'hb2ac;
	#20
	A = 16'hbb16;
	B = 16'h3933;
	ans = 16'hb38c;
	#20
	A = 16'hb83e;
	B = 16'hb433;
	ans = 16'hba58;
	#20
	A = 16'hac95;
	B = 16'habb7;
	ans = 16'hb038;
	#20
	A = 16'h344d;
	B = 16'h352e;
	ans = 16'h38be;
	#20
	A = 16'hbb04;
	B = 16'h3582;
	ans = 16'hb843;
	#20
	A = 16'hb90f;
	B = 16'hb840;
	ans = 16'hbca8;
	#20
	A = 16'h3439;
	B = 16'h3a79;
	ans = 16'h3c4b;
	#20
	A = 16'h3bd9;
	B = 16'h3b30;
	ans = 16'h3f84;
	#20
	A = 16'h391a;
	B = 16'hbadb;
	ans = 16'hb304;
	#20
	A = 16'hb9fa;
	B = 16'hb200;
	ans = 16'hbb7a;
	#20
	A = 16'hb940;
	B = 16'hb82e;
	ans = 16'hbcb7;
	#20
	A = 16'h35fc;
	B = 16'hb7ad;
	ans = 16'haec4;
	#20
	A = 16'h39b9;
	B = 16'hbaae;
	ans = 16'hafa8;
	#20
	A = 16'hb021;
	B = 16'hba4a;
	ans = 16'hbb52;
	#20
	A = 16'h297e;
	B = 16'hb951;
	ans = 16'hb8f9;
	#20
	A = 16'hbb44;
	B = 16'hb4bf;
	ans = 16'hbcd2;
	#20
	A = 16'hba8f;
	B = 16'hbade;
	ans = 16'hbeb6;
	#20
	A = 16'h3949;
	B = 16'hb0c3;
	ans = 16'h3818;
	#20
	A = 16'hb81f;
	B = 16'h379e;
	ans = 16'ha900;
	#20
	A = 16'h3868;
	B = 16'h387c;
	ans = 16'h3c72;
	#20
	A = 16'hbb8f;
	B = 16'h35d6;
	ans = 16'hb8a4;
	#20
	A = 16'h3bfd;
	B = 16'hb9a0;
	ans = 16'h34ba;
	#20
	A = 16'h22dc;
	B = 16'h397c;
	ans = 16'h3997;
	#20
	A = 16'hbb78;
	B = 16'h2c10;
	ans = 16'hbaf6;
	#20
	A = 16'h3bd0;
	B = 16'h39e1;
	ans = 16'h3ed8;
	#20
	A = 16'h3b16;
	B = 16'h307e;
	ans = 16'h3c1b;
	#20
	A = 16'hb8ca;
	B = 16'h31fb;
	ans = 16'hb696;
	#20
	A = 16'h336a;
	B = 16'hb00a;
	ans = 16'h2ec0;
	#20
	A = 16'h2f1e;
	B = 16'h358d;
	ans = 16'h3754;
	#20
	A = 16'h36f6;
	B = 16'hb80d;
	ans = 16'hac90;
	#20
	A = 16'hbbe5;
	B = 16'hb9e5;
	ans = 16'hbee5;
	#20
	A = 16'hbaa0;
	B = 16'ha832;
	ans = 16'hbae3;
	#20
	A = 16'hbaad;
	B = 16'hb8ac;
	ans = 16'hbdac;
	#20
	A = 16'h2ef9;
	B = 16'h2c78;
	ans = 16'h31b8;
	#20
	A = 16'h30ab;
	B = 16'ha9fe;
	ans = 16'h2e57;
	#20
	A = 16'h34a3;
	B = 16'hbaf9;
	ans = 16'hb8a8;
	#20
	A = 16'hb763;
	B = 16'h39a0;
	ans = 16'h33ba;
	#20
	A = 16'h3ade;
	B = 16'h3a8b;
	ans = 16'h3eb4;
	#20
	A = 16'h33ce;
	B = 16'h3b8f;
	ans = 16'h3cc1;
	#20
	A = 16'h3583;
	B = 16'h307b;
	ans = 16'h37c0;
	#20
	A = 16'h350c;
	B = 16'hb721;
	ans = 16'hb02a;
	#20
	A = 16'h39b5;
	B = 16'h3abc;
	ans = 16'h3e38;
	#20
	A = 16'hbb69;
	B = 16'hbb3c;
	ans = 16'hbf52;
	#20
	A = 16'h2de0;
	B = 16'h369c;
	ans = 16'h380a;
	#20
	A = 16'hb7f9;
	B = 16'hba9c;
	ans = 16'hbd4c;
	#20
	A = 16'hb396;
	B = 16'hb588;
	ans = 16'hb8aa;
	#20
	A = 16'hb6dc;
	B = 16'h38aa;
	ans = 16'h30f0;
	#20
	A = 16'h33d7;
	B = 16'hb8c9;
	ans = 16'hb5a6;
	#20
	A = 16'hb3d7;
	B = 16'hb226;
	ans = 16'hb6fe;
	#20
	A = 16'h3916;
	B = 16'h2eef;
	ans = 16'h39f4;
	#20
	A = 16'hbb00;
	B = 16'hb28d;
	ans = 16'hbc52;
	#20
	A = 16'h38c9;
	B = 16'hb612;
	ans = 16'h3300;
	#20
	A = 16'hb94e;
	B = 16'hb435;
	ans = 16'hbb68;
	#20
	A = 16'h30de;
	B = 16'h3ba2;
	ans = 16'h3c6d;
	#20
	A = 16'hb678;
	B = 16'hbb04;
	ans = 16'hbd20;
	#20
	A = 16'h371f;
	B = 16'hbb3b;
	ans = 16'hb757;
	#20
	A = 16'h3ba1;
	B = 16'h2f43;
	ans = 16'h3c45;
	#20
	A = 16'h37d0;
	B = 16'hb966;
	ans = 16'hb1f8;
	#20
	A = 16'h30e5;
	B = 16'h389f;
	ans = 16'h39d8;
	#20
	A = 16'hb908;
	B = 16'h3a02;
	ans = 16'h2fd0;
	#20
	A = 16'hb97c;
	B = 16'h3648;
	ans = 16'hb4b0;
	#20
	A = 16'haf49;
	B = 16'h3982;
	ans = 16'h3899;
	#20
	A = 16'h3803;
	B = 16'h325e;
	ans = 16'h399a;
	#20
	A = 16'hb9d1;
	B = 16'hae5c;
	ans = 16'hba9c;
	#20
	A = 16'hb28c;
	B = 16'hbad7;
	ans = 16'hbc3d;
	#20
	A = 16'hb979;
	B = 16'hbb2d;
	ans = 16'hbe53;
	#20
	A = 16'hbb2b;
	B = 16'h3ad0;
	ans = 16'ha9b0;
	#20
	A = 16'hb32f;
	B = 16'h3968;
	ans = 16'h3738;
	#20
	A = 16'h3818;
	B = 16'h369d;
	ans = 16'h3b66;
	#20
	A = 16'h3135;
	B = 16'hb7a7;
	ans = 16'hb50c;
	#20
	A = 16'hb664;
	B = 16'h3960;
	ans = 16'h345c;
	#20
	A = 16'h39a6;
	B = 16'h39f6;
	ans = 16'h3dce;
	#20
	A = 16'h354f;
	B = 16'hbb2d;
	ans = 16'hb886;
	#20
	A = 16'hbb80;
	B = 16'h361e;
	ans = 16'hb871;
	#20
	A = 16'hbad4;
	B = 16'h3878;
	ans = 16'hb4b8;
	#20
	A = 16'hb7ea;
	B = 16'hb89f;
	ans = 16'hbc4a;
	#20
	A = 16'hb59e;
	B = 16'hb8fc;
	ans = 16'hbbcb;
	#20
	A = 16'h395b;
	B = 16'h3100;
	ans = 16'h3a9b;
	#20
	A = 16'h2ed3;
	B = 16'h3bbe;
	ans = 16'h3c4c;
	#20
	A = 16'hba5a;
	B = 16'h34b9;
	ans = 16'hb7fb;
	#20
	A = 16'h3565;
	B = 16'hb523;
	ans = 16'h2420;
	#20
	A = 16'hb6b4;
	B = 16'h39c8;
	ans = 16'h34dc;
	#20
	A = 16'hae94;
	B = 16'hb8bf;
	ans = 16'hb992;
	#20
	A = 16'h3b32;
	B = 16'hbaa3;
	ans = 16'h2c78;
	#20
	A = 16'h3581;
	B = 16'hb718;
	ans = 16'hae5c;
	#20
	A = 16'hba0e;
	B = 16'h3905;
	ans = 16'hb024;
	#20
	A = 16'hb367;
	B = 16'hb4a1;
	ans = 16'hb82a;
	#20
	A = 16'h38af;
	B = 16'h3990;
	ans = 16'h3d20;
	#20
	A = 16'h3b48;
	B = 16'hb023;
	ans = 16'h3a3f;
	#20
	A = 16'hb48e;
	B = 16'h39f1;
	ans = 16'h3754;
	#20
	A = 16'h3baa;
	B = 16'h3b16;
	ans = 16'h3f60;
	#20
	A = 16'hb8f0;
	B = 16'hb8ae;
	ans = 16'hbccf;
	#20
	A = 16'hb424;
	B = 16'h3bb1;
	ans = 16'h399f;
	#20
	A = 16'hb4b4;
	B = 16'hbb9a;
	ans = 16'hbcfa;
	#20
	A = 16'h3b41;
	B = 16'h3961;
	ans = 16'h3e51;
	#20
	A = 16'h3946;
	B = 16'hb5b7;
	ans = 16'h34d5;
	#20
	A = 16'h358c;
	B = 16'hb628;
	ans = 16'ha8e0;
	#20
	A = 16'hbbae;
	B = 16'hb837;
	ans = 16'hbdf2;
	#20
	A = 16'hb729;
	B = 16'hb5bb;
	ans = 16'hba72;
	#20
	A = 16'h3611;
	B = 16'h39ed;
	ans = 16'h3c7b;
	#20
	A = 16'hb2b9;
	B = 16'h3b35;
	ans = 16'h3987;
	#20
	A = 16'h3293;
	B = 16'hb9d6;
	ans = 16'hb831;
	#20
	A = 16'h2f9a;
	B = 16'hb104;
	ans = 16'ha8dc;
	#20
	A = 16'h3794;
	B = 16'hb660;
	ans = 16'h2cd0;
	#20
	A = 16'h22be;
	B = 16'h3798;
	ans = 16'h37ce;
	#20
	A = 16'h3a4f;
	B = 16'hb9e4;
	ans = 16'h2ab0;
	#20
	A = 16'hbb62;
	B = 16'hb59f;
	ans = 16'hbd19;
	#20
	A = 16'h3810;
	B = 16'hb95a;
	ans = 16'hb128;
	#20
	A = 16'h38cf;
	B = 16'h3ae9;
	ans = 16'h3ddc;
	#20
	A = 16'hb59a;
	B = 16'h3114;
	ans = 16'hb220;
	#20
	A = 16'h35b5;
	B = 16'h38d2;
	ans = 16'h3bac;
	#20
	A = 16'h3958;
	B = 16'hb4d6;
	ans = 16'h35da;
	#20
	A = 16'hb65e;
	B = 16'hb9e3;
	ans = 16'hbc89;
	#20
	A = 16'h39cb;
	B = 16'h39a2;
	ans = 16'h3db6;
	#20
	A = 16'h3b88;
	B = 16'h2e42;
	ans = 16'h3c28;
	#20
	A = 16'h31e9;
	B = 16'h38ea;
	ans = 16'h3a64;
	#20
	A = 16'h3493;
	B = 16'hba7a;
	ans = 16'hb830;
	#20
	A = 16'hb405;
	B = 16'hb83e;
	ans = 16'hba40;
	#20
	A = 16'h9591;
	B = 16'h3a71;
	ans = 16'h3a6e;
	#20
	A = 16'hbabf;
	B = 16'hb858;
	ans = 16'hbd8c;
	#20
	A = 16'h39c1;
	B = 16'h28e5;
	ans = 16'h3a0f;
	#20
	A = 16'h3812;
	B = 16'h2bb0;
	ans = 16'h388d;
	#20
	A = 16'haec8;
	B = 16'h3bb1;
	ans = 16'h3ad8;
	#20
	A = 16'hba15;
	B = 16'h3863;
	ans = 16'hb2c8;
	#20
	A = 16'h3690;
	B = 16'hb5b1;
	ans = 16'h2af8;
	#20
	A = 16'hb97a;
	B = 16'hbba2;
	ans = 16'hbe8e;
	#20
	A = 16'h399d;
	B = 16'h3945;
	ans = 16'h3d71;
	#20
	A = 16'h399f;
	B = 16'h357e;
	ans = 16'h3c2f;
	#20
	A = 16'ha3be;
	B = 16'hb883;
	ans = 16'hb8a2;
	#20
	A = 16'hb95b;
	B = 16'h2c6a;
	ans = 16'hb8ce;
	#20
	A = 16'h386f;
	B = 16'h35b2;
	ans = 16'h3b48;
	#20
	A = 16'h39fa;
	B = 16'hb937;
	ans = 16'h2e18;
	#20
	A = 16'hbb35;
	B = 16'hbafc;
	ans = 16'hbf18;
	#20
	A = 16'hba6f;
	B = 16'h387a;
	ans = 16'hb3d4;
	#20
	A = 16'h3b94;
	B = 16'h3844;
	ans = 16'h3dec;
	#20
	A = 16'h380e;
	B = 16'hb573;
	ans = 16'h3152;
	#20
	A = 16'h3851;
	B = 16'h3b09;
	ans = 16'h3dad;
	#20
	A = 16'hb544;
	B = 16'hb90b;
	ans = 16'hbbad;
	#20
	A = 16'hba55;
	B = 16'h3ba2;
	ans = 16'h3134;
	#20
	A = 16'h2ac0;
	B = 16'h30d4;
	ans = 16'h3284;
	#20
	A = 16'h3a02;
	B = 16'h2c07;
	ans = 16'h3a83;
	#20
	A = 16'hb8a1;
	B = 16'h35c3;
	ans = 16'hb2fe;
	#20
	A = 16'h36e7;
	B = 16'hb92e;
	ans = 16'hb2ea;
	#20
	A = 16'hbb3d;
	B = 16'hb132;
	ans = 16'hbc45;
	#20
	A = 16'h3906;
	B = 16'hb597;
	ans = 16'h3475;
	#20
	A = 16'hba22;
	B = 16'hb6a0;
	ans = 16'hbcb9;
	#20
	A = 16'hb6bc;
	B = 16'h3455;
	ans = 16'hb0ce;
	#20
	A = 16'h2dc9;
	B = 16'h3458;
	ans = 16'h35ca;
	#20
	A = 16'h39c4;
	B = 16'h2f6f;
	ans = 16'h3ab2;
	#20
	A = 16'hba8b;
	B = 16'h3b51;
	ans = 16'h2e30;
	#20
	A = 16'h39a1;
	B = 16'h2966;
	ans = 16'h39f7;
	#20
	A = 16'h3a92;
	B = 16'hb5c2;
	ans = 16'h3762;
	#20
	A = 16'hbadc;
	B = 16'hbbe3;
	ans = 16'hbf60;
	#20
	A = 16'h3114;
	B = 16'h2ffd;
	ans = 16'h3489;
	#20
	A = 16'h38f1;
	B = 16'ha890;
	ans = 16'h38a8;
	#20
	A = 16'h352e;
	B = 16'h2514;
	ans = 16'h357f;
	#20
	A = 16'h3a40;
	B = 16'hb80a;
	ans = 16'h346c;
	#20
	A = 16'hbb49;
	B = 16'hb755;
	ans = 16'hbd7a;
	#20
	A = 16'hb8bc;
	B = 16'h2cdb;
	ans = 16'hb821;
	#20
	A = 16'hb80c;
	B = 16'hb8b9;
	ans = 16'hbc62;
	#20
	A = 16'hb565;
	B = 16'hb7ff;
	ans = 16'hbab2;
	#20
	A = 16'h302d;
	B = 16'hb7b6;
	ans = 16'hb5a0;
	#20
	A = 16'h3a33;
	B = 16'hba10;
	ans = 16'h2460;
	#20
	A = 16'h3972;
	B = 16'h3662;
	ans = 16'h3c52;
	#20
	A = 16'hba4f;
	B = 16'h39a9;
	ans = 16'had30;
	#20
	A = 16'h38be;
	B = 16'h386e;
	ans = 16'h3c96;
	#20
	A = 16'hb9f2;
	B = 16'hb86c;
	ans = 16'hbd2f;
	#20
	A = 16'hb818;
	B = 16'h368a;
	ans = 16'hae98;
	#20
	A = 16'hb57a;
	B = 16'h28dc;
	ans = 16'hb4de;
	#20
	A = 16'h35c7;
	B = 16'hb9b8;
	ans = 16'hb5a9;
	#20
	A = 16'h3ade;
	B = 16'h3670;
	ans = 16'h3d0b;
	#20
	A = 16'hbbcf;
	B = 16'h36e0;
	ans = 16'hb85f;
	#20
	A = 16'h3b5b;
	B = 16'h3a22;
	ans = 16'h3ebe;
	#20
	A = 16'h3afb;
	B = 16'h38e0;
	ans = 16'h3dee;
	#20
	A = 16'hb80b;
	B = 16'h3aec;
	ans = 16'h35c2;
	#20
	A = 16'h3773;
	B = 16'hb8ae;
	ans = 16'hafa4;
	#20
	A = 16'h345c;
	B = 16'h3be9;
	ans = 16'h3d0c;
	#20
	A = 16'h3bef;
	B = 16'h2dd4;
	ans = 16'h3c55;
	#20
	A = 16'hb605;
	B = 16'hbb04;
	ans = 16'hbd03;
	#20
	A = 16'haa1c;
	B = 16'h3a59;
	ans = 16'h39f7;
	#20
	A = 16'h3bf0;
	B = 16'hb848;
	ans = 16'h3750;
	#20
	A = 16'hb90d;
	B = 16'h346a;
	ans = 16'hb5b0;
	#20
	A = 16'h39e1;
	B = 16'hbbc6;
	ans = 16'hb394;
	#20
	A = 16'h3757;
	B = 16'h3b34;
	ans = 16'h3d70;
	#20
	A = 16'h3b37;
	B = 16'hb995;
	ans = 16'h3288;
	#20
	A = 16'h306c;
	B = 16'hb65f;
	ans = 16'hb429;
	#20
	A = 16'ha9cb;
	B = 16'hb1f6;
	ans = 16'hb369;
	#20
	A = 16'h3736;
	B = 16'haa96;
	ans = 16'h3663;
	#20
	A = 16'h3b80;
	B = 16'hb419;
	ans = 16'h3974;
	#20
	A = 16'hae67;
	B = 16'h39cc;
	ans = 16'h38ff;
	#20
	A = 16'h3b3b;
	B = 16'h3538;
	ans = 16'h3cec;
	#20
	A = 16'h35cd;
	B = 16'hb42c;
	ans = 16'h2e84;
	#20
	A = 16'hba85;
	B = 16'h39d6;
	ans = 16'had78;
	#20
	A = 16'ha8a8;
	B = 16'h39d4;
	ans = 16'h398a;
	#20
	A = 16'hb8d8;
	B = 16'h3452;
	ans = 16'hb55e;
	#20
	A = 16'hada7;
	B = 16'h333a;
	ans = 16'h3066;
	#20
	A = 16'hb6d4;
	B = 16'hb7b2;
	ans = 16'hbb43;
	#20
	A = 16'hb905;
	B = 16'hbaca;
	ans = 16'hbde8;
	#20
	A = 16'hb909;
	B = 16'hb452;
	ans = 16'hbb32;
	#20
	A = 16'h395e;
	B = 16'h38c1;
	ans = 16'h3d10;
	#20
	A = 16'hba75;
	B = 16'habd7;
	ans = 16'hbaf2;
	#20
	A = 16'hba65;
	B = 16'hba49;
	ans = 16'hbe57;
	#20
	A = 16'hb7ff;
	B = 16'hba82;
	ans = 16'hbd41;
	#20
	A = 16'hb3f0;
	B = 16'hbbb0;
	ans = 16'hbcd6;
	#20
	A = 16'h345a;
	B = 16'h3817;
	ans = 16'h3a44;
	#20
	A = 16'hb8ba;
	B = 16'hbbde;
	ans = 16'hbe4c;
	#20
	A = 16'h3a54;
	B = 16'h3aa8;
	ans = 16'h3e7e;
	#20
	A = 16'hb777;
	B = 16'h2b82;
	ans = 16'hb687;
	#20
	A = 16'hb84c;
	B = 16'hb853;
	ans = 16'hbc50;
	#20
	A = 16'h3958;
	B = 16'h3620;
	ans = 16'h3c34;
	#20
	A = 16'h2ea2;
	B = 16'h3280;
	ans = 16'h34e8;
	#20
	A = 16'h35e2;
	B = 16'hbb21;
	ans = 16'hb830;
	#20
	A = 16'h2f10;
	B = 16'hb84f;
	ans = 16'hb6da;
	#20
	A = 16'h3901;
	B = 16'h3949;
	ans = 16'h3d25;
	#20
	A = 16'hb4e9;
	B = 16'hbb69;
	ans = 16'hbcef;
	#20
	A = 16'hb8e9;
	B = 16'hb9f8;
	ans = 16'hbd70;
	#20
	A = 16'hb698;
	B = 16'h34c4;
	ans = 16'haf50;
	#20
	A = 16'h39f3;
	B = 16'hb385;
	ans = 16'h3812;
	#20
	A = 16'hb1e5;
	B = 16'hb432;
	ans = 16'hb724;
	#20
	A = 16'hbb90;
	B = 16'h39db;
	ans = 16'hb2d4;
	#20
	A = 16'hb7a1;
	B = 16'hb0ec;
	ans = 16'hb90c;
	#20
	A = 16'hb964;
	B = 16'h3b66;
	ans = 16'h3404;
	#20
	A = 16'hb77f;
	B = 16'hb8c5;
	ans = 16'hbc42;
	#20
	A = 16'h3ae7;
	B = 16'ha52c;
	ans = 16'h3abe;
	#20
	A = 16'hb899;
	B = 16'hb67b;
	ans = 16'hbbd6;
	#20
	A = 16'h3754;
	B = 16'hb92c;
	ans = 16'hb208;
	#20
	A = 16'h38f3;
	B = 16'ha88c;
	ans = 16'h38aa;
	#20
	A = 16'h3791;
	B = 16'h38f9;
	ans = 16'h3c61;
	#20
	A = 16'hb43a;
	B = 16'h2757;
	ans = 16'hb389;
	#20
	A = 16'hb563;
	B = 16'h3809;
	ans = 16'h315e;
	#20
	A = 16'hba35;
	B = 16'h2d82;
	ans = 16'hb985;
	#20
	A = 16'h3049;
	B = 16'h3062;
	ans = 16'h3456;
	#20
	A = 16'hb639;
	B = 16'hb939;
	ans = 16'hbc2b;
	#20
	A = 16'hb830;
	B = 16'h34ee;
	ans = 16'hb2e4;
	#20
	A = 16'h355d;
	B = 16'h305a;
	ans = 16'h378a;
	#20
	A = 16'h3985;
	B = 16'hb963;
	ans = 16'h2440;
	#20
	A = 16'haab7;
	B = 16'h3919;
	ans = 16'h38ae;
	#20
	A = 16'h3089;
	B = 16'h38bc;
	ans = 16'h39de;
	#20
	A = 16'hb4ea;
	B = 16'h3613;
	ans = 16'h2ca4;
	#20
	A = 16'hbbbf;
	B = 16'h3807;
	ans = 16'hb770;
	#20
	A = 16'hb603;
	B = 16'h3bd6;
	ans = 16'h38d4;
	#20
	A = 16'hb1d6;
	B = 16'h3a49;
	ans = 16'h38d4;
	#20
	A = 16'ha155;
	B = 16'hb8b8;
	ans = 16'hb8cd;
	#20
	A = 16'h37c5;
	B = 16'hb750;
	ans = 16'h2750;
	#20
	A = 16'h3976;
	B = 16'hbaf2;
	ans = 16'hb1f0;
	#20
	A = 16'h325f;
	B = 16'hb4f4;
	ans = 16'haf12;
	#20
	A = 16'hb679;
	B = 16'hb1c5;
	ans = 16'hb8ae;
	#20
	A = 16'h27ef;
	B = 16'h39f4;
	ans = 16'h3a33;
	#20
	A = 16'h3124;
	B = 16'h2c1f;
	ans = 16'h3334;
	#20
	A = 16'hb612;
	B = 16'h2ecf;
	ans = 16'hb45e;
	#20
	A = 16'h3abe;
	B = 16'hb330;
	ans = 16'h38f2;
	#20
	A = 16'hb36e;
	B = 16'hb75f;
	ans = 16'hb98b;
	#20
	A = 16'h3a64;
	B = 16'haaf3;
	ans = 16'h39f5;
	#20
	A = 16'h2ae5;
	B = 16'haf5c;
	ans = 16'habd3;
	#20
	A = 16'h3bb1;
	B = 16'h333f;
	ans = 16'h3cc0;
	#20
	A = 16'h31ea;
	B = 16'hb4e4;
	ans = 16'hafbc;
	#20
	A = 16'h3b29;
	B = 16'h3385;
	ans = 16'h3c85;
	#20
	A = 16'hbbd3;
	B = 16'hb093;
	ans = 16'hbc7c;
	#20
	A = 16'h2c03;
	B = 16'h3a75;
	ans = 16'h3af5;
	#20
	A = 16'h3a66;
	B = 16'hb93d;
	ans = 16'h30a4;
	#20
	A = 16'h3943;
	B = 16'h3035;
	ans = 16'h3a50;
	#20
	A = 16'h2bec;
	B = 16'hb153;
	ans = 16'haeb0;
	#20
	A = 16'hb86a;
	B = 16'hb4ef;
	ans = 16'hbae2;
	#20
	A = 16'h32d4;
	B = 16'h386c;
	ans = 16'h3a21;
	#20
	A = 16'hbac4;
	B = 16'hafd6;
	ans = 16'hbbbf;
	#20
	A = 16'h39e5;
	B = 16'h3873;
	ans = 16'h3d2c;
	#20
	A = 16'h3895;
	B = 16'h3679;
	ans = 16'h3bd2;
	#20
	A = 16'hb227;
	B = 16'h38d7;
	ans = 16'h369a;
	#20
	A = 16'h3104;
	B = 16'hb971;
	ans = 16'hb830;
	#20
	A = 16'h39eb;
	B = 16'hb42c;
	ans = 16'h37aa;
	#20
	A = 16'hb1dc;
	B = 16'hb89f;
	ans = 16'hba16;
	#20
	A = 16'hba08;
	B = 16'hb224;
	ans = 16'hbb91;
	#20
	A = 16'h341a;
	B = 16'hbb55;
	ans = 16'hb948;
	#20
	A = 16'hb761;
	B = 16'hb87e;
	ans = 16'hbc17;
	#20
	A = 16'hafde;
	B = 16'h334a;
	ans = 16'h2eb6;
	#20
	A = 16'h3888;
	B = 16'hb57c;
	ans = 16'h3328;
	#20
	A = 16'h3a97;
	B = 16'h3ad4;
	ans = 16'h3eb6;
	#20
	A = 16'hb636;
	B = 16'h23c1;
	ans = 16'hb5f8;
	#20
	A = 16'hb39d;
	B = 16'hb250;
	ans = 16'hb6f6;
	#20
	A = 16'h394c;
	B = 16'hb783;
	ans = 16'h322a;
	#20
	A = 16'h3b48;
	B = 16'hb0ee;
	ans = 16'h3a0c;
	#20
	A = 16'h30e3;
	B = 16'hbb9c;
	ans = 16'hba63;
	#20
	A = 16'ha5ac;
	B = 16'hb409;
	ans = 16'hb464;
	#20
	A = 16'h8ba1;
	B = 16'haf30;
	ans = 16'haf34;
	#20
	A = 16'hbbdf;
	B = 16'h30a1;
	ans = 16'hbab7;
	#20
	A = 16'h3580;
	B = 16'h2fe8;
	ans = 16'h377a;
	#20
	A = 16'hbbfe;
	B = 16'h38e1;
	ans = 16'hb63a;
	#20
	A = 16'hb8f5;
	B = 16'hbb48;
	ans = 16'hbe1e;
	#20
	A = 16'hba49;
	B = 16'hb8b8;
	ans = 16'hbd80;
	#20
	A = 16'hb8c6;
	B = 16'hbbbb;
	ans = 16'hbe40;
	#20
	A = 16'h39b1;
	B = 16'h382b;
	ans = 16'h3cee;
	#20
	A = 16'h3276;
	B = 16'hb630;
	ans = 16'hb1ea;
	#20
	A = 16'ha870;
	B = 16'h3868;
	ans = 16'h3821;
	#20
	A = 16'h398a;
	B = 16'h34b1;
	ans = 16'h3be2;
	#20
	A = 16'hb9df;
	B = 16'ha902;
	ans = 16'hba2f;
	#20
	A = 16'hb9a4;
	B = 16'ha908;
	ans = 16'hb9f4;
	#20
	A = 16'h3b74;
	B = 16'ha8fb;
	ans = 16'h3b24;
	#20
	A = 16'h38ac;
	B = 16'hb268;
	ans = 16'h3624;
	#20
	A = 16'h3a3d;
	B = 16'h3b31;
	ans = 16'h3eb7;
	#20
	A = 16'hb885;
	B = 16'h3157;
	ans = 16'hb65e;
	#20
	A = 16'h3b32;
	B = 16'hb552;
	ans = 16'h3889;
	#20
	A = 16'h2cb7;
	B = 16'h3126;
	ans = 16'h3382;
	#20
	A = 16'h2cf7;
	B = 16'hb7ee;
	ans = 16'hb6b0;
	#20
	A = 16'hb4f6;
	B = 16'hb304;
	ans = 16'hb83c;
	#20
	A = 16'h3ae6;
	B = 16'h3b70;
	ans = 16'h3f2b;
	#20
	A = 16'hb9e7;
	B = 16'hb4bf;
	ans = 16'hbc23;
	#20
	A = 16'h3640;
	B = 16'h36d6;
	ans = 16'h3a8b;
	#20
	A = 16'h322e;
	B = 16'h366d;
	ans = 16'h38c2;
	#20
	A = 16'hbab2;
	B = 16'h35c7;
	ans = 16'hb79d;
	#20
	A = 16'h33c1;
	B = 16'h3104;
	ans = 16'h3662;
	#20
	A = 16'h2a07;
	B = 16'h378b;
	ans = 16'h3826;
	#20
	A = 16'hba82;
	B = 16'hb388;
	ans = 16'hbc32;
	#20
	A = 16'h3838;
	B = 16'h313a;
	ans = 16'h3986;
	#20
	A = 16'hb9f5;
	B = 16'h26fb;
	ans = 16'hb9bd;
	#20
	A = 16'h3aa0;
	B = 16'h30cb;
	ans = 16'h3bd3;
	#20
	A = 16'hb812;
	B = 16'h2be3;
	ans = 16'hb728;
	#20
	A = 16'h3844;
	B = 16'h3ab2;
	ans = 16'h3d7b;
	#20
	A = 16'h3ab4;
	B = 16'h330f;
	ans = 16'h3c3c;
	#20
	A = 16'hb8e3;
	B = 16'hb458;
	ans = 16'hbb0f;
	#20
	A = 16'h2f02;
	B = 16'had7a;
	ans = 16'h2620;
	#20
	A = 16'h39f9;
	B = 16'hbbfd;
	ans = 16'hb408;
	#20
	A = 16'h35f2;
	B = 16'h2dac;
	ans = 16'h375d;
	#20
	A = 16'hba3a;
	B = 16'habf3;
	ans = 16'hbab9;
	#20
	A = 16'hb9c5;
	B = 16'h3430;
	ans = 16'hb75a;
	#20
	A = 16'hb415;
	B = 16'h2e1b;
	ans = 16'hb11c;
	#20
	A = 16'h3773;
	B = 16'h38bd;
	ans = 16'h3c3b;
	#20
	A = 16'h3300;
	B = 16'hb4f6;
	ans = 16'hadd8;
	#20
	A = 16'h39b2;
	B = 16'h31f0;
	ans = 16'h3b2e;
	#20
	A = 16'hba27;
	B = 16'h3636;
	ans = 16'hb618;
	#20
	A = 16'hb888;
	B = 16'h35e9;
	ans = 16'hb24e;
	#20
	A = 16'h390f;
	B = 16'hb97d;
	ans = 16'haae0;
	#20
	A = 16'h348a;
	B = 16'hb5d5;
	ans = 16'had2c;
	#20
	A = 16'hbb3b;
	B = 16'h3476;
	ans = 16'hb900;
	#20
	A = 16'hb899;
	B = 16'habf5;
	ans = 16'hb918;
	#20
	A = 16'hb991;
	B = 16'hb605;
	ans = 16'hbc4a;
	#20
	A = 16'hb254;
	B = 16'h35c5;
	ans = 16'h3136;
	#20
	A = 16'hb83f;
	B = 16'h3b2f;
	ans = 16'h35e0;
	#20
	A = 16'h342c;
	B = 16'h3818;
	ans = 16'h3a2e;
	#20
	A = 16'hbb2a;
	B = 16'h34b2;
	ans = 16'hb8d1;
	#20
	A = 16'h3b6a;
	B = 16'ha847;
	ans = 16'h3b26;
	#20
	A = 16'hb389;
	B = 16'hb6f8;
	ans = 16'hb95e;
	#20
	A = 16'hb409;
	B = 16'h36f4;
	ans = 16'h31d6;
	#20
	A = 16'h39b6;
	B = 16'haefb;
	ans = 16'h38d7;
	#20
	A = 16'h3b17;
	B = 16'hb24a;
	ans = 16'h3984;
	#20
	A = 16'hb43e;
	B = 16'hb84e;
	ans = 16'hba6d;
	#20
	A = 16'hb33f;
	B = 16'h2dea;
	ans = 16'hb04a;
	#20
	A = 16'hb966;
	B = 16'h3b8e;
	ans = 16'h3450;
	#20
	A = 16'hb561;
	B = 16'hb677;
	ans = 16'hb9ec;
	#20
	A = 16'hbbb3;
	B = 16'h3870;
	ans = 16'hb686;
	#20
	A = 16'h38ad;
	B = 16'h38ee;
	ans = 16'h3cce;
	#20
	A = 16'hb680;
	B = 16'h37ca;
	ans = 16'h2d28;
	#20
	A = 16'hb843;
	B = 16'haae4;
	ans = 16'hb8b1;
	#20
	A = 16'h3b99;
	B = 16'h3a4b;
	ans = 16'h3ef2;
	#20
	A = 16'hb3aa;
	B = 16'hb627;
	ans = 16'hb8fe;
	#20
	A = 16'h3951;
	B = 16'h333c;
	ans = 16'h3b20;
	#20
	A = 16'hb96a;
	B = 16'h378c;
	ans = 16'hb290;
	#20
	A = 16'hb61f;
	B = 16'h324e;
	ans = 16'hb1f0;
	#20
	A = 16'hbb45;
	B = 16'hb4f2;
	ans = 16'hbcdf;
	#20
	A = 16'hb883;
	B = 16'h3852;
	ans = 16'ha620;
	#20
	A = 16'h3a44;
	B = 16'hb878;
	ans = 16'h3330;
	#20
	A = 16'hba6b;
	B = 16'hbbdc;
	ans = 16'hbf24;
	#20
	A = 16'hbaa0;
	B = 16'hb4db;
	ans = 16'hbc87;
	#20
	A = 16'h38b7;
	B = 16'ha929;
	ans = 16'h3864;
	#20
	A = 16'hb94c;
	B = 16'hb5f7;
	ans = 16'hbc24;
	#20
	A = 16'h3759;
	B = 16'hb8cb;
	ans = 16'hb07a;
	#20
	A = 16'h2a1a;
	B = 16'ha9a2;
	ans = 16'h1b80;
	#20
	A = 16'hba93;
	B = 16'hba32;
	ans = 16'hbe62;
	#20
	A = 16'hb39c;
	B = 16'hbb64;
	ans = 16'hbca6;
	#20
	A = 16'h3598;
	B = 16'h3960;
	ans = 16'h3c16;
	#20
	A = 16'h3a39;
	B = 16'hba4d;
	ans = 16'ha100;
	#20
	A = 16'hb264;
	B = 16'hb864;
	ans = 16'hb9fd;
	#20
	A = 16'h2c77;
	B = 16'h371a;
	ans = 16'h381c;
	#20
	A = 16'h3b81;
	B = 16'hb95e;
	ans = 16'h3446;
	#20
	A = 16'hbabe;
	B = 16'h2d39;
	ans = 16'hba17;
	#20
	A = 16'hbaab;
	B = 16'h3607;
	ans = 16'hb74f;
	#20
	A = 16'hb30b;
	B = 16'h30ee;
	ans = 16'hac3a;
	#20
	A = 16'hb00c;
	B = 16'h303d;
	ans = 16'h1e20;
	#20
	A = 16'h3723;
	B = 16'h3836;
	ans = 16'h3bc8;
	#20
	A = 16'h361d;
	B = 16'h3a15;
	ans = 16'h3c92;
	#20
	A = 16'hb9ad;
	B = 16'h32d9;
	ans = 16'hb7ee;
	#20
	A = 16'h35b5;
	B = 16'hb0d1;
	ans = 16'h3299;
	#20
	A = 16'h3730;
	B = 16'hb9bf;
	ans = 16'hb44e;
	#20
	A = 16'hbabe;
	B = 16'h3a56;
	ans = 16'haa80;
	#20
	A = 16'haf8e;
	B = 16'h3ac3;
	ans = 16'h39d1;
	#20
	A = 16'h2cd2;
	B = 16'h3b30;
	ans = 16'h3bca;
	#20
	A = 16'hb5e8;
	B = 16'hb79c;
	ans = 16'hbac2;
	#20
	A = 16'hb8c5;
	B = 16'h3813;
	ans = 16'had90;
	#20
	A = 16'hbb55;
	B = 16'h37da;
	ans = 16'hb6d0;
	#20
	A = 16'hac9f;
	B = 16'h34a8;
	ans = 16'h3300;
	#20
	A = 16'hb760;
	B = 16'hba78;
	ans = 16'hbd14;
	#20
	A = 16'h3693;
	B = 16'hbbd1;
	ans = 16'hb888;
	#20
	A = 16'hb5a0;
	B = 16'hbbc5;
	ans = 16'hbd4a;
	#20
	A = 16'h3644;
	B = 16'h3b12;
	ans = 16'h3d1a;
	#20
	A = 16'h3442;
	B = 16'h313f;
	ans = 16'h36e2;
	#20
	A = 16'hb624;
	B = 16'h37c9;
	ans = 16'h2e94;
	#20
	A = 16'h33eb;
	B = 16'h3bac;
	ans = 16'h3cd3;
	#20
	A = 16'h2868;
	B = 16'h3671;
	ans = 16'h36fe;
	#20
	A = 16'h3486;
	B = 16'hb2e6;
	ans = 16'h2c4c;
	#20
	A = 16'h3bf6;
	B = 16'h3935;
	ans = 16'h3e96;
	#20
	A = 16'hb1b1;
	B = 16'h391f;
	ans = 16'h3766;
	#20
	A = 16'h3ac6;
	B = 16'hb89e;
	ans = 16'h3450;
	#20
	A = 16'h3b9f;
	B = 16'h3542;
	ans = 16'h3d20;
	#20
	A = 16'hbbb8;
	B = 16'hb8a3;
	ans = 16'hbe2e;
	#20
	A = 16'h3b5a;
	B = 16'h3a70;
	ans = 16'h3ee5;
	#20
	A = 16'haaea;
	B = 16'hb85f;
	ans = 16'hb8ce;
	#20
	A = 16'hb876;
	B = 16'hb4e3;
	ans = 16'hbae8;
	#20
	A = 16'hb8f5;
	B = 16'h3b12;
	ans = 16'h343a;
	#20
	A = 16'h3347;
	B = 16'h20a7;
	ans = 16'h3391;
	#20
	A = 16'h39ec;
	B = 16'hb979;
	ans = 16'h2b30;
	#20
	A = 16'h380c;
	B = 16'hb555;
	ans = 16'h3186;
	#20
	A = 16'hb90b;
	B = 16'h3227;
	ans = 16'hb702;
	#20
	A = 16'h38cb;
	B = 16'ha576;
	ans = 16'h389f;
	#20
	A = 16'h38dc;
	B = 16'hb7a1;
	ans = 16'h302e;
	#20
	A = 16'h26d7;
	B = 16'hbbac;
	ans = 16'hbb75;
	#20
	A = 16'h33e3;
	B = 16'hbbe3;
	ans = 16'hb9ea;
	#20
	A = 16'hb97b;
	B = 16'hb70d;
	ans = 16'hbc81;
	#20
	A = 16'h3ada;
	B = 16'h39e3;
	ans = 16'h3e5e;
	#20
	A = 16'hb8f6;
	B = 16'h39a0;
	ans = 16'h2d50;
	#20
	A = 16'h358e;
	B = 16'hbaae;
	ans = 16'hb7ce;
	#20
	A = 16'ha6c7;
	B = 16'h366e;
	ans = 16'h3602;
	#20
	A = 16'hb1e1;
	B = 16'hb16a;
	ans = 16'hb5a6;
	#20
	A = 16'h3b17;
	B = 16'h37e7;
	ans = 16'h3d85;
	#20
	A = 16'h374e;
	B = 16'hbb28;
	ans = 16'hb702;
	#20
	A = 16'hb366;
	B = 16'hb842;
	ans = 16'hba1c;
	#20
	A = 16'hb392;
	B = 16'hb805;
	ans = 16'hb9ea;
	#20
	A = 16'h31a4;
	B = 16'h3ba4;
	ans = 16'h3c86;
	#20
	A = 16'h3867;
	B = 16'hb2ec;
	ans = 16'h3558;
	#20
	A = 16'hbbae;
	B = 16'h3b1f;
	ans = 16'hac78;
	#20
	A = 16'hb954;
	B = 16'h397a;
	ans = 16'h24c0;
	#20
	A = 16'h39a8;
	B = 16'hb41b;
	ans = 16'h3735;
	#20
	A = 16'h2f5d;
	B = 16'hb85d;
	ans = 16'hb6e3;
	#20
	A = 16'h38dc;
	B = 16'hb6a4;
	ans = 16'h3228;
	#20
	A = 16'h3454;
	B = 16'h3ae3;
	ans = 16'h3c86;
	#20
	A = 16'hb8db;
	B = 16'h36e9;
	ans = 16'hb19a;
	#20
	A = 16'h3b1c;
	B = 16'ha7b6;
	ans = 16'h3ade;
	#20
	A = 16'h218d;
	B = 16'h2ebb;
	ans = 16'h2f6d;
	#20
	A = 16'h3af5;
	B = 16'hba15;
	ans = 16'h2f00;
	#20
	A = 16'h3942;
	B = 16'hb183;
	ans = 16'h37c2;
	#20
	A = 16'h35af;
	B = 16'hb5e6;
	ans = 16'ha2e0;
	#20
	A = 16'h38d8;
	B = 16'h3620;
	ans = 16'h3be8;
	#20
	A = 16'hbb48;
	B = 16'h3904;
	ans = 16'hb488;
	#20
	A = 16'hb6d1;
	B = 16'h3b29;
	ans = 16'h3781;
	#20
	A = 16'hafc5;
	B = 16'h388d;
	ans = 16'h3729;
	#20
	A = 16'hb892;
	B = 16'hb593;
	ans = 16'hbb5c;
	#20
	A = 16'hb777;
	B = 16'h3490;
	ans = 16'hb1ce;
	#20
	A = 16'h393c;
	B = 16'h3864;
	ans = 16'h3cd0;
	#20
	A = 16'hba20;
	B = 16'hb956;
	ans = 16'hbdbb;
	#20
	A = 16'h38a3;
	B = 16'h3820;
	ans = 16'h3c62;
	#20
	A = 16'hbab2;
	B = 16'h355b;
	ans = 16'hb804;
	#20
	A = 16'h3b35;
	B = 16'hb891;
	ans = 16'h3548;
	#20
	A = 16'hbb1d;
	B = 16'h36ce;
	ans = 16'hb76c;
	#20
	A = 16'h36ab;
	B = 16'haf0d;
	ans = 16'h34e8;
	#20
	A = 16'h3894;
	B = 16'haa74;
	ans = 16'h382d;
	#20
	A = 16'hb6ff;
	B = 16'h2982;
	ans = 16'hb64f;
	#20
	A = 16'ha6bf;
	B = 16'hb86a;
	ans = 16'hb8a0;
	#20
	A = 16'h39c0;
	B = 16'h3bef;
	ans = 16'h3ed8;
	#20
	A = 16'hb8ae;
	B = 16'h38ca;
	ans = 16'h2300;
	#20
	A = 16'h3616;
	B = 16'h2e2d;
	ans = 16'h37a1;
	#20
	A = 16'hb716;
	B = 16'hb7cf;
	ans = 16'hbb72;
	#20
	A = 16'h2dc7;
	B = 16'h3937;
	ans = 16'h39f0;
	#20
	A = 16'hb8f0;
	B = 16'h34ca;
	ans = 16'hb516;
	#20
	A = 16'hba81;
	B = 16'haf0c;
	ans = 16'hbb62;
	#20
	A = 16'h3872;
	B = 16'h3329;
	ans = 16'h3a3c;
	#20
	A = 16'haf60;
	B = 16'ha552;
	ans = 16'hb05a;
	#20
	A = 16'hb0fc;
	B = 16'h3838;
	ans = 16'h35f2;
	#20
	A = 16'h3740;
	B = 16'hb6f4;
	ans = 16'h24c0;
	#20
	A = 16'hbbfd;
	B = 16'hb180;
	ans = 16'hbcae;
	#20
	A = 16'hb9aa;
	B = 16'h38c0;
	ans = 16'haf50;
	#20
	A = 16'hb8a5;
	B = 16'hb902;
	ans = 16'hbcd4;
	#20
	A = 16'hb550;
	B = 16'h3a6f;
	ans = 16'h378e;
	#20
	A = 16'h33f4;
	B = 16'h3615;
	ans = 16'h3908;
	#20
	A = 16'h36bf;
	B = 16'hbb16;
	ans = 16'hb76d;
	#20
	A = 16'hb24f;
	B = 16'hb871;
	ans = 16'hba05;
	#20
	A = 16'h3a14;
	B = 16'hb86c;
	ans = 16'h32a0;
	#20
	A = 16'h36ea;
	B = 16'hb373;
	ans = 16'h3261;
	#20
	A = 16'hbb8e;
	B = 16'h344b;
	ans = 16'hb968;
	#20
	A = 16'hbbf2;
	B = 16'h27d2;
	ans = 16'hbbb3;
	#20
	A = 16'hbaac;
	B = 16'h27cd;
	ans = 16'hba6e;
	#20
	A = 16'hb960;
	B = 16'hb752;
	ans = 16'hbc84;
	#20
	A = 16'h3535;
	B = 16'h39a5;
	ans = 16'h3c20;
	#20
	A = 16'hb97b;
	B = 16'h3413;
	ans = 16'hb6e3;
	#20
	A = 16'h3b3c;
	B = 16'h1fd8;
	ans = 16'h3b4c;
	#20
	A = 16'h385c;
	B = 16'h3a0f;
	ans = 16'h3d36;
	#20
	A = 16'h3514;
	B = 16'h3b73;
	ans = 16'h3cfe;
	#20
	A = 16'h334c;
	B = 16'hb874;
	ans = 16'hb542;
	#20
	A = 16'hbb75;
	B = 16'hb173;
	ans = 16'hbc69;
	#20
	A = 16'h3a90;
	B = 16'hbb0e;
	ans = 16'habe0;
	#20
	A = 16'hb2c3;
	B = 16'h2dfa;
	ans = 16'haf8c;
	#20
	A = 16'hb58b;
	B = 16'hb86d;
	ans = 16'hbb32;
	#20
	A = 16'hb99b;
	B = 16'h3ae4;
	ans = 16'h3124;
	#20
	A = 16'hb8ec;
	B = 16'hb40b;
	ans = 16'hbaf2;
	#20
	A = 16'hbaea;
	B = 16'hba8a;
	ans = 16'hbeba;
	#20
	A = 16'hbae6;
	B = 16'h38c9;
	ans = 16'hb43a;
	#20
	A = 16'h36f1;
	B = 16'hb0ef;
	ans = 16'h347a;
	#20
	A = 16'hb7e8;
	B = 16'hba7a;
	ans = 16'hbd37;
	#20
	A = 16'h3bfc;
	B = 16'hb63d;
	ans = 16'h38de;
	#20
	A = 16'h3963;
	B = 16'hb7f3;
	ans = 16'h31a6;
	#20
	A = 16'hbb02;
	B = 16'h3947;
	ans = 16'hb2ec;
	#20
	A = 16'h2b8c;
	B = 16'h3a65;
	ans = 16'h3ade;
	#20
	A = 16'h36b1;
	B = 16'ha13e;
	ans = 16'h3687;
	#20
	A = 16'h2f00;
	B = 16'h395d;
	ans = 16'h3a3d;
	#20
	A = 16'h3a7e;
	B = 16'hb839;
	ans = 16'h348a;
	#20
	A = 16'hb56b;
	B = 16'h3b91;
	ans = 16'h38dc;
	#20
	A = 16'h39f0;
	B = 16'h3229;
	ans = 16'h3b7a;
	#20
	A = 16'h3a4e;
	B = 16'h39c8;
	ans = 16'h3e0b;
	#20
	A = 16'hb4e7;
	B = 16'hb26c;
	ans = 16'hb80e;
	#20
	A = 16'h3a84;
	B = 16'hb7c9;
	ans = 16'h353f;
	#20
	A = 16'h32e4;
	B = 16'h2b08;
	ans = 16'h3453;
	#20
	A = 16'h37c1;
	B = 16'hb94b;
	ans = 16'hb1aa;
	#20
	A = 16'h3436;
	B = 16'hb688;
	ans = 16'hb0a4;
	#20
	A = 16'hac3f;
	B = 16'h39b4;
	ans = 16'h392c;
	#20
	A = 16'hb9b1;
	B = 16'h30e9;
	ans = 16'hb877;
	#20
	A = 16'hba23;
	B = 16'hb8a4;
	ans = 16'hbd64;
	#20
	A = 16'hb553;
	B = 16'h31c9;
	ans = 16'hb0dd;
	#20
	A = 16'hb69d;
	B = 16'h39c8;
	ans = 16'h34f3;
	#20
	A = 16'hb47a;
	B = 16'hbbfd;
	ans = 16'hbd1d;
	#20
	A = 16'hb520;
	B = 16'h3873;
	ans = 16'h338c;
	#20
	A = 16'h38a5;
	B = 16'hb969;
	ans = 16'hae20;
	#20
	A = 16'hac64;
	B = 16'hb5cc;
	ans = 16'hb6e5;
	#20
	A = 16'hb8ff;
	B = 16'hb92d;
	ans = 16'hbd16;
	#20
	A = 16'h3a56;
	B = 16'h3527;
	ans = 16'h3c75;
	#20
	A = 16'hb992;
	B = 16'h3451;
	ans = 16'hb6d3;
	#20
	A = 16'h334f;
	B = 16'hac99;
	ans = 16'h3102;
	#20
	A = 16'hb9f9;
	B = 16'hbb5e;
	ans = 16'hbeac;
	#20
	A = 16'hba4d;
	B = 16'hba16;
	ans = 16'hbe32;
	#20
	A = 16'h3ae1;
	B = 16'hb686;
	ans = 16'h373c;
	#20
	A = 16'hacc6;
	B = 16'hb801;
	ans = 16'hb89a;
	#20
	A = 16'h3b24;
	B = 16'hbb39;
	ans = 16'ha140;
	#20
	A = 16'h31e4;
	B = 16'h2cd4;
	ans = 16'h3427;
	#20
	A = 16'hae70;
	B = 16'h38d1;
	ans = 16'h3803;
	#20
	A = 16'h39e1;
	B = 16'h18c2;
	ans = 16'h39e6;
	#20
	A = 16'hb13d;
	B = 16'hb681;
	ans = 16'hb890;
	#20
	A = 16'hb9c7;
	B = 16'hb804;
	ans = 16'hbce6;
	#20
	A = 16'hb847;
	B = 16'hbba2;
	ans = 16'hbdf4;
	#20
	A = 16'h9ccb;
	B = 16'h32e9;
	ans = 16'h32c3;
	#20
	A = 16'hb9c6;
	B = 16'h30ee;
	ans = 16'hb88a;
	#20
	A = 16'hbb33;
	B = 16'ha522;
	ans = 16'hbb5c;
	#20
	A = 16'h32c9;
	B = 16'hacc1;
	ans = 16'h3068;
	#20
	A = 16'hbbca;
	B = 16'h37e5;
	ans = 16'hb7af;
	#20
	A = 16'h3b57;
	B = 16'h3458;
	ans = 16'h3cc2;
	#20
	A = 16'hb981;
	B = 16'hb772;
	ans = 16'hbc9d;
	#20
	A = 16'h3087;
	B = 16'h37fb;
	ans = 16'h391f;
	#20
	A = 16'h3a7c;
	B = 16'hb761;
	ans = 16'h3597;
	#20
	A = 16'hba26;
	B = 16'hb91d;
	ans = 16'hbda2;
	#20
	A = 16'hb85a;
	B = 16'hb3df;
	ans = 16'hba52;
	#20
	A = 16'hbbda;
	B = 16'hb64f;
	ans = 16'hbd81;
	#20
	A = 16'hb64c;
	B = 16'hbadd;
	ans = 16'hbd02;
	#20
	A = 16'hbab8;
	B = 16'h3b71;
	ans = 16'h2dc8;
	#20
	A = 16'hb666;
	B = 16'h3aae;
	ans = 16'h36f6;
	#20
	A = 16'hbbbd;
	B = 16'h3ac9;
	ans = 16'hafa0;
	#20
	A = 16'h384f;
	B = 16'hba10;
	ans = 16'hb304;
	#20
	A = 16'h3a55;
	B = 16'h36d4;
	ans = 16'h3ce0;
	#20
	A = 16'h3ab7;
	B = 16'hba96;
	ans = 16'h2420;
	#20
	A = 16'hb8a2;
	B = 16'hb910;
	ans = 16'hbcd9;
	#20
	A = 16'h38fd;
	B = 16'hb889;
	ans = 16'h2b40;
	#20
	A = 16'h3bfc;
	B = 16'hb89e;
	ans = 16'h36bc;
	#20
	A = 16'hadac;
	B = 16'h3a01;
	ans = 16'h394c;
	#20
	A = 16'hb75b;
	B = 16'hb691;
	ans = 16'hbaf6;
	#20
	A = 16'hb1e6;
	B = 16'hb781;
	ans = 16'hb93a;
	#20
	A = 16'hb98f;
	B = 16'hba31;
	ans = 16'hbde0;
	#20
	A = 16'hbbcb;
	B = 16'h35b2;
	ans = 16'hb8f2;
	#20
	A = 16'h3b69;
	B = 16'h3908;
	ans = 16'h3e38;
	#20
	A = 16'hb94a;
	B = 16'h3b3b;
	ans = 16'h33c4;
	#20
	A = 16'ha65b;
	B = 16'h3935;
	ans = 16'h3902;
	#20
	A = 16'h320c;
	B = 16'h3819;
	ans = 16'h399c;
	#20
	A = 16'h363a;
	B = 16'hb5a5;
	ans = 16'h28a8;
	#20
	A = 16'hb5f9;
	B = 16'hb6fc;
	ans = 16'hba7a;
	#20
	A = 16'hb6ba;
	B = 16'h3398;
	ans = 16'hb1dc;
	#20
	A = 16'h396f;
	B = 16'h3495;
	ans = 16'h3bba;
	#20
	A = 16'h35af;
	B = 16'h39fd;
	ans = 16'h3c6a;
	#20
	A = 16'hb5a2;
	B = 16'h3942;
	ans = 16'h34e2;
	#20
	A = 16'h3bb9;
	B = 16'hbbea;
	ans = 16'ha620;
	#20
	A = 16'hb07b;
	B = 16'h3bed;
	ans = 16'h3ace;
	#20
	A = 16'h39be;
	B = 16'h37c2;
	ans = 16'h3cd0;
	#20
	A = 16'hb589;
	B = 16'h30f8;
	ans = 16'hb21a;
	#20
	A = 16'hb696;
	B = 16'hba2c;
	ans = 16'hbcbc;
	#20
	A = 16'h36c5;
	B = 16'h3b81;
	ans = 16'h3d72;
	#20
	A = 16'hb919;
	B = 16'hba63;
	ans = 16'hbdbe;
	#20
	A = 16'h2319;
	B = 16'h3784;
	ans = 16'h37bd;
	#20
	A = 16'h3700;
	B = 16'h2b8b;
	ans = 16'h37f1;
	#20
	A = 16'hb901;
	B = 16'hb43a;
	ans = 16'hbb1e;
	#20
	A = 16'h3b6a;
	B = 16'hb617;
	ans = 16'h385e;
	#20
	A = 16'hb682;
	B = 16'haab6;
	ans = 16'hb759;
	#20
	A = 16'h3bb2;
	B = 16'hba74;
	ans = 16'h30f8;
	#20
	A = 16'hb89c;
	B = 16'hb105;
	ans = 16'hb9dd;
	#20
	A = 16'hb9d3;
	B = 16'h3525;
	ans = 16'hb681;
	#20
	A = 16'hb02f;
	B = 16'hba58;
	ans = 16'hbb64;
	#20
	A = 16'h2fd7;
	B = 16'hb14b;
	ans = 16'ha97e;
	#20
	A = 16'hb982;
	B = 16'h396c;
	ans = 16'ha180;
	#20
	A = 16'h2aff;
	B = 16'h3668;
	ans = 16'h3748;
	#20
	A = 16'hadf7;
	B = 16'hb9ef;
	ans = 16'hbaae;
	#20
	A = 16'hb786;
	B = 16'h3671;
	ans = 16'hac54;
	#20
	A = 16'h35c6;
	B = 16'h3937;
	ans = 16'h3c0d;
	#20
	A = 16'h3ba2;
	B = 16'hb21e;
	ans = 16'h3a1a;
	#20
	A = 16'hafc2;
	B = 16'hba73;
	ans = 16'hbb6b;
	#20
	A = 16'h3a54;
	B = 16'hbabd;
	ans = 16'haa90;
	#20
	A = 16'h2bbe;
	B = 16'hba65;
	ans = 16'hb9e9;
	#20
	A = 16'ha8d8;
	B = 16'hb8db;
	ans = 16'hb928;
	#20
	A = 16'h3be8;
	B = 16'h3b3c;
	ans = 16'h3f92;
	#20
	A = 16'hb484;
	B = 16'h3acd;
	ans = 16'h388b;
	#20
	A = 16'h3b6e;
	B = 16'hb4e9;
	ans = 16'h38fa;
	#20
	A = 16'h2cea;
	B = 16'hbae1;
	ans = 16'hba44;
	#20
	A = 16'hb5ef;
	B = 16'haab0;
	ans = 16'hb6c5;
	#20
	A = 16'h3a44;
	B = 16'h393d;
	ans = 16'h3dc0;
	#20
	A = 16'hada3;
	B = 16'hb019;
	ans = 16'hb2ea;
	#20
	A = 16'hb5e3;
	B = 16'hb975;
	ans = 16'hbc33;
	#20
	A = 16'hae39;
	B = 16'h3983;
	ans = 16'h38bc;
	#20
	A = 16'hbafd;
	B = 16'h304f;
	ans = 16'hb9e9;
	#20
	A = 16'h3a6b;
	B = 16'hbb7f;
	ans = 16'hb050;
	#20
	A = 16'h39db;
	B = 16'hb327;
	ans = 16'h3811;
	#20
	A = 16'h3bbd;
	B = 16'hb5c8;
	ans = 16'h38d9;
	#20
	A = 16'h330f;
	B = 16'hb8fa;
	ans = 16'hb66c;
	#20
	A = 16'h2fb8;
	B = 16'h3a26;
	ans = 16'h3b1d;
	#20
	A = 16'h3a76;
	B = 16'h3020;
	ans = 16'h3b7e;
	#20
	A = 16'hbb6b;
	B = 16'hba8b;
	ans = 16'hbefb;
	#20
	A = 16'hb6f5;
	B = 16'h289f;
	ans = 16'hb661;
	#20
	A = 16'hb991;
	B = 16'hac5c;
	ans = 16'hba1c;
	#20
	A = 16'hb9dd;
	B = 16'h2cb7;
	ans = 16'hb946;
	#20
	A = 16'h35e7;
	B = 16'h3b07;
	ans = 16'h3cfd;
	#20
	A = 16'hb9ed;
	B = 16'hbb79;
	ans = 16'hbeb3;
	#20
	A = 16'h3950;
	B = 16'h3a86;
	ans = 16'h3deb;
	#20
	A = 16'h32ad;
	B = 16'hba7d;
	ans = 16'hb8d2;
	#20
	A = 16'h3b42;
	B = 16'hb8d1;
	ans = 16'h34e2;
	#20
	A = 16'hb850;
	B = 16'h2f4a;
	ans = 16'hb6ce;
	#20
	A = 16'h3121;
	B = 16'h2ee3;
	ans = 16'h3449;
	#20
	A = 16'hbbe9;
	B = 16'h3526;
	ans = 16'hb956;
	#20
	A = 16'h31b3;
	B = 16'h389f;
	ans = 16'h3a0c;
	#20
	A = 16'h33a4;
	B = 16'hb5dc;
	ans = 16'hb014;
	#20
	A = 16'h3568;
	B = 16'h27c5;
	ans = 16'h35e4;
	#20
	A = 16'h37ff;
	B = 16'hb2c0;
	ans = 16'h349f;
	#20
	A = 16'ha168;
	B = 16'h2f1f;
	ans = 16'h2e72;
	#20
	A = 16'h39bf;
	B = 16'h3751;
	ans = 16'h3cb4;
	#20
	A = 16'h3b76;
	B = 16'h3558;
	ans = 16'h3d11;
	#20
	A = 16'hb5fc;
	B = 16'h350c;
	ans = 16'hab80;
	#20
	A = 16'h3a11;
	B = 16'h38e1;
	ans = 16'h3d79;
	#20
	A = 16'hb82e;
	B = 16'h3610;
	ans = 16'hb098;
	#20
	A = 16'h3356;
	B = 16'hb92d;
	ans = 16'hb6af;
	#20
	A = 16'hb5cc;
	B = 16'hbafe;
	ans = 16'hbcf2;
	#20
	A = 16'h3894;
	B = 16'h3845;
	ans = 16'h3c6c;
	#20
	A = 16'hb9b6;
	B = 16'h3950;
	ans = 16'haa60;
	#20
	A = 16'h3993;
	B = 16'h3be2;
	ans = 16'h3eba;
	#20
	A = 16'hbb5e;
	B = 16'h396b;
	ans = 16'hb3cc;
	#20
	A = 16'hb9ad;
	B = 16'haa71;
	ans = 16'hba14;
	#20
	A = 16'hb2e5;
	B = 16'h3b92;
	ans = 16'h39d9;
	#20
	A = 16'h3845;
	B = 16'h3109;
	ans = 16'h3987;
	#20
	A = 16'hb947;
	B = 16'h2f40;
	ans = 16'hb85f;
	#20
	A = 16'hb6b4;
	B = 16'h335e;
	ans = 16'hb20a;
	#20
	A = 16'hb67c;
	B = 16'h35cb;
	ans = 16'ha988;
	#20
	A = 16'h3bee;
	B = 16'hb6ad;
	ans = 16'h3898;
	#20
	A = 16'h2e80;
	B = 16'h3a7c;
	ans = 16'h3b4c;
	#20
	A = 16'hb830;
	B = 16'h3b85;
	ans = 16'h36aa;
	#20
	A = 16'hb6fd;
	B = 16'hac29;
	ans = 16'hb804;
	#20
	A = 16'h3b17;
	B = 16'h3356;
	ans = 16'h3c76;
	#20
	A = 16'hb50a;
	B = 16'h3913;
	ans = 16'h351c;
	#20
	A = 16'hba44;
	B = 16'hb3b8;
	ans = 16'hbc19;
	#20
	A = 16'hb292;
	B = 16'hb4d6;
	ans = 16'hb810;
	#20
	A = 16'h3af5;
	B = 16'h3bec;
	ans = 16'h3f70;
	#20
	A = 16'h2be2;
	B = 16'hba96;
	ans = 16'hba18;
	#20
	A = 16'hb786;
	B = 16'h3980;
	ans = 16'h32f4;
	#20
	A = 16'hb8d6;
	B = 16'hac22;
	ans = 16'hb95a;
	#20
	A = 16'hb908;
	B = 16'hac14;
	ans = 16'hb98a;
	#20
	A = 16'h3ac1;
	B = 16'hb693;
	ans = 16'h36ef;
	#20
	A = 16'hbb3d;
	B = 16'hb927;
	ans = 16'hbe32;
	#20
	A = 16'h397c;
	B = 16'h3995;
	ans = 16'h3d88;
	#20
	A = 16'h399b;
	B = 16'hb01d;
	ans = 16'h3894;
	#20
	A = 16'hbb53;
	B = 16'hb826;
	ans = 16'hbdbc;
	#20
	A = 16'hb4d0;
	B = 16'h1f0c;
	ans = 16'hb4b4;
	#20
	A = 16'hb7bf;
	B = 16'h21fa;
	ans = 16'hb78f;
	#20
	A = 16'haf21;
	B = 16'h3776;
	ans = 16'h35ae;
	#20
	A = 16'hbbae;
	B = 16'h323b;
	ans = 16'hba1f;
	#20
	A = 16'h3897;
	B = 16'ha472;
	ans = 16'h3873;
	#20
	A = 16'h2b3f;
	B = 16'h35a5;
	ans = 16'h368d;
	#20
	A = 16'h3b66;
	B = 16'ha4a4;
	ans = 16'h3b41;
	#20
	A = 16'h3b51;
	B = 16'hbbb1;
	ans = 16'haa00;
	#20
	A = 16'hb934;
	B = 16'h362d;
	ans = 16'hb43b;
	#20
	A = 16'hb784;
	B = 16'h3bc8;
	ans = 16'h3806;
	#20
	A = 16'h3a2c;
	B = 16'hbba5;
	ans = 16'hb1e4;
	#20
	A = 16'hb368;
	B = 16'haef9;
	ans = 16'hb572;
	#20
	A = 16'h3b90;
	B = 16'h3849;
	ans = 16'h3dec;
	#20
	A = 16'hb989;
	B = 16'h3906;
	ans = 16'hac18;
	#20
	A = 16'h3a5c;
	B = 16'h2cd1;
	ans = 16'h3af6;
	#20
	A = 16'hb2c4;
	B = 16'h9b34;
	ans = 16'hb2e1;
	#20
	A = 16'h3a52;
	B = 16'hba5e;
	ans = 16'h9e00;
	#20
	A = 16'h3211;
	B = 16'h34ef;
	ans = 16'h37f8;
	#20
	A = 16'ha5b4;
	B = 16'h3036;
	ans = 16'h2eff;
	#20
	A = 16'h35a5;
	B = 16'hb90b;
	ans = 16'hb471;
	#20
	A = 16'h3930;
	B = 16'hbb15;
	ans = 16'hb394;
	#20
	A = 16'h309a;
	B = 16'h30fa;
	ans = 16'h34ca;
	#20
	A = 16'h2d4f;
	B = 16'hb262;
	ans = 16'haf75;
	#20
	A = 16'hb861;
	B = 16'hbb57;
	ans = 16'hbddc;
	#20
	A = 16'hb3d5;
	B = 16'hb2ac;
	ans = 16'hb740;
	#20
	A = 16'hb88a;
	B = 16'hbb61;
	ans = 16'hbdf6;
	#20
	A = 16'hb1fb;
	B = 16'had29;
	ans = 16'hb448;
	#20
	A = 16'h3b7d;
	B = 16'hbaa8;
	ans = 16'h2ea8;
	#20
	A = 16'hb644;
	B = 16'hb57a;
	ans = 16'hb9df;
	#20
	A = 16'h3641;
	B = 16'h31cb;
	ans = 16'h3893;
	#20
	A = 16'hb43c;
	B = 16'hb9c6;
	ans = 16'hbbe4;
	#20
	A = 16'h3110;
	B = 16'h2c95;
	ans = 16'h335a;
	#20
	A = 16'h392f;
	B = 16'hb6fc;
	ans = 16'h32c4;
	#20
	A = 16'hb68c;
	B = 16'hb537;
	ans = 16'hb9e2;
	#20
	A = 16'h37ab;
	B = 16'h3a9b;
	ans = 16'h3d38;
	#20
	A = 16'hbb4e;
	B = 16'h3b64;
	ans = 16'h2180;
	#20
	A = 16'h31f9;
	B = 16'hb7a9;
	ans = 16'hb4ac;
	#20
	A = 16'h3a41;
	B = 16'h2e09;
	ans = 16'h3b02;
	#20
	A = 16'h2aff;
	B = 16'hb46f;
	ans = 16'hb31e;
	#20
	A = 16'h2b80;
	B = 16'hb569;
	ans = 16'hb479;
	#20
	A = 16'h3a13;
	B = 16'hb3f3;
	ans = 16'h3816;
	#20
	A = 16'h37fc;
	B = 16'hbbad;
	ans = 16'hb75e;
	#20
	A = 16'hbae8;
	B = 16'h3259;
	ans = 16'hb952;
	#20
	A = 16'hb9de;
	B = 16'hb7ef;
	ans = 16'hbceb;
	#20
	A = 16'hb861;
	B = 16'hb43c;
	ans = 16'hba7f;
	#20
	A = 16'h3a24;
	B = 16'h3633;
	ans = 16'h3c9f;
	#20
	A = 16'hbad2;
	B = 16'hb3aa;
	ans = 16'hbc5e;
	#20
	A = 16'hbb0e;
	B = 16'hb601;
	ans = 16'hbd07;
	#20
	A = 16'h38cb;
	B = 16'hb2c1;
	ans = 16'h3636;
	#20
	A = 16'h3997;
	B = 16'h3403;
	ans = 16'h3b98;
	#20
	A = 16'h340c;
	B = 16'hb9a8;
	ans = 16'hb744;
	#20
	A = 16'h3a32;
	B = 16'h3ac8;
	ans = 16'h3e7d;
	#20
	A = 16'hb26a;
	B = 16'hb002;
	ans = 16'hb536;
	#20
	A = 16'hb69b;
	B = 16'hba94;
	ans = 16'hbcf1;
	#20
	A = 16'h3570;
	B = 16'hb5d6;
	ans = 16'ha660;
	#20
	A = 16'h37c4;
	B = 16'h38a3;
	ans = 16'h3c42;
	#20
	A = 16'hb639;
	B = 16'hbab8;
	ans = 16'hbcea;
	#20
	A = 16'h23d3;
	B = 16'h3a94;
	ans = 16'h3ab3;
	#20
	A = 16'hbabd;
	B = 16'hba8b;
	ans = 16'hbea4;
	#20
	A = 16'hac87;
	B = 16'h3b70;
	ans = 16'h3adf;
	#20
	A = 16'h3365;
	B = 16'hb954;
	ans = 16'hb6f6;
	#20
	A = 16'hb9e8;
	B = 16'hb831;
	ans = 16'hbd0c;
	#20
	A = 16'h3aa5;
	B = 16'h325b;
	ans = 16'h3c1e;
	#20
	A = 16'hb5ba;
	B = 16'h3888;
	ans = 16'h32ac;
	#20
	A = 16'had3e;
	B = 16'hb8b2;
	ans = 16'hb95a;
	#20
	A = 16'h3acd;
	B = 16'hb957;
	ans = 16'h31d8;
	#20
	A = 16'hbba6;
	B = 16'hb236;
	ans = 16'hbc9a;
	#20
	A = 16'hbb43;
	B = 16'h395c;
	ans = 16'hb39c;
	#20
	A = 16'h2c65;
	B = 16'hb056;
	ans = 16'hac47;
	#20
	A = 16'h38f8;
	B = 16'hb8a4;
	ans = 16'h2940;
	#20
	A = 16'h3792;
	B = 16'hb449;
	ans = 16'h3292;
	#20
	A = 16'hb43b;
	B = 16'h314b;
	ans = 16'hae56;
	#20
	A = 16'h3376;
	B = 16'h3b46;
	ans = 16'h3c92;
	#20
	A = 16'hb9b6;
	B = 16'h38ea;
	ans = 16'hae60;
	#20
	A = 16'hba53;
	B = 16'h3bf1;
	ans = 16'h3278;
	#20
	A = 16'hb5ab;
	B = 16'hb1cc;
	ans = 16'hb848;
	#20
	A = 16'h3824;
	B = 16'hb7cf;
	ans = 16'h2790;
	#20
	A = 16'hb96c;
	B = 16'hbba2;
	ans = 16'hbe87;
	#20
	A = 16'hb610;
	B = 16'h35e9;
	ans = 16'ha0e0;
	#20
	A = 16'hb918;
	B = 16'h3af2;
	ans = 16'h3368;
	#20
	A = 16'h3bfa;
	B = 16'h38ba;
	ans = 16'h3e5a;
	#20
	A = 16'hbbeb;
	B = 16'h33bf;
	ans = 16'hb9fb;
	#20
	A = 16'h3b99;
	B = 16'ha4f7;
	ans = 16'h3b71;
	#20
	A = 16'h2cf5;
	B = 16'h2d51;
	ans = 16'h3123;
	#20
	A = 16'hb33e;
	B = 16'ha894;
	ans = 16'hb432;
	#20
	A = 16'hbb13;
	B = 16'hb8e0;
	ans = 16'hbdfa;
	#20
	A = 16'h35a9;
	B = 16'h3935;
	ans = 16'h3c05;
	#20
	A = 16'hac4a;
	B = 16'h3af3;
	ans = 16'h3a6a;
	#20
	A = 16'h27a4;
	B = 16'hb5ee;
	ans = 16'hb574;
	#20
	A = 16'hba63;
	B = 16'h3651;
	ans = 16'hb675;
	#20
	A = 16'hb681;
	B = 16'hbbcc;
	ans = 16'hbd86;
	#20
	A = 16'hb680;
	B = 16'h380c;
	ans = 16'h2e60;
	#20
	A = 16'h3a78;
	B = 16'h3b9b;
	ans = 16'h3f0a;
	#20
	A = 16'h3acd;
	B = 16'hb13f;
	ans = 16'h397d;
	#20
	A = 16'h32aa;
	B = 16'h37d4;
	ans = 16'h3994;
	#20
	A = 16'hb8d4;
	B = 16'h3a2f;
	ans = 16'h316c;
	#20
	A = 16'h3b17;
	B = 16'hb906;
	ans = 16'h3422;
	#20
	A = 16'h3b26;
	B = 16'h26cc;
	ans = 16'h3b5c;
	#20
	A = 16'h3a23;
	B = 16'hb57c;
	ans = 16'h36ca;
	#20
	A = 16'hb9fb;
	B = 16'hb59b;
	ans = 16'hbc64;
	#20
	A = 16'hb620;
	B = 16'hba96;
	ans = 16'hbcd3;
	#20
	A = 16'h3899;
	B = 16'h38a7;
	ans = 16'h3ca0;
	#20
	A = 16'h3952;
	B = 16'h3ad9;
	ans = 16'h3e16;
	#20
	A = 16'hb880;
	B = 16'hbbea;
	ans = 16'hbe35;
	#20
	A = 16'h327e;
	B = 16'h39e3;
	ans = 16'h3b82;
	#20
	A = 16'h38da;
	B = 16'hb915;
	ans = 16'ha760;
	#20
	A = 16'h3205;
	B = 16'ha87a;
	ans = 16'h30e6;
	#20
	A = 16'h35ab;
	B = 16'hbb50;
	ans = 16'hb87a;
	#20
	A = 16'hb7ba;
	B = 16'hbac6;
	ans = 16'hbd52;
	#20
	A = 16'hb62d;
	B = 16'h39bb;
	ans = 16'h3549;
	#20
	A = 16'h372e;
	B = 16'hba88;
	ans = 16'hb5e2;
	#20
	A = 16'hb2be;
	B = 16'hb723;
	ans = 16'hb941;
	#20
	A = 16'h3a98;
	B = 16'hba02;
	ans = 16'h2cb0;
	#20
	A = 16'hb944;
	B = 16'h3596;
	ans = 16'hb4f2;
	#20
	A = 16'ha1f1;
	B = 16'hbac7;
	ans = 16'hbadf;
	#20
	A = 16'h37eb;
	B = 16'hbb2c;
	ans = 16'hb66d;
	#20
	A = 16'hb75c;
	B = 16'hb029;
	ans = 16'hb8b8;
	#20
	A = 16'h3a78;
	B = 16'hb921;
	ans = 16'h315c;
	#20
	A = 16'h380b;
	B = 16'h373f;
	ans = 16'h3baa;
	#20
	A = 16'h38e5;
	B = 16'hb843;
	ans = 16'h2d10;
	#20
	A = 16'h3ad2;
	B = 16'h3859;
	ans = 16'h3d96;
	#20
	A = 16'hb74e;
	B = 16'hb8dd;
	ans = 16'hbc42;
	#20
	A = 16'h2bc5;
	B = 16'h3846;
	ans = 16'h38c2;
	#20
	A = 16'hb4e9;
	B = 16'hb8aa;
	ans = 16'hbb1e;
	#20
	A = 16'hb6c1;
	B = 16'h39f7;
	ans = 16'h352d;
	#20
	A = 16'h392d;
	B = 16'h3446;
	ans = 16'h3b50;
	#20
	A = 16'h3a03;
	B = 16'hb42d;
	ans = 16'h37d9;
	#20
	A = 16'h3add;
	B = 16'h383d;
	ans = 16'h3d8d;
	#20
	A = 16'h38da;
	B = 16'h338a;
	ans = 16'h3abc;
	#20
	A = 16'h30b2;
	B = 16'hb32a;
	ans = 16'hacf0;
	#20
	A = 16'hbaca;
	B = 16'h2ee5;
	ans = 16'hb9ed;
	#20
	A = 16'hb424;
	B = 16'hb594;
	ans = 16'hb8dc;
	#20
	A = 16'h3282;
	B = 16'hba31;
	ans = 16'hb890;
	#20
	A = 16'h2c8b;
	B = 16'h3b7d;
	ans = 16'h3c07;
	#20
	A = 16'haec8;
	B = 16'h3775;
	ans = 16'h35c3;
	#20
	A = 16'had22;
	B = 16'hb98d;
	ans = 16'hba31;
	#20
	A = 16'h39a6;
	B = 16'hb8a2;
	ans = 16'h3010;
	#20
	A = 16'h3896;
	B = 16'hb9a6;
	ans = 16'hb040;
	#20
	A = 16'h311d;
	B = 16'h2c6f;
	ans = 16'h3354;
	#20
	A = 16'hb9db;
	B = 16'h3543;
	ans = 16'hb673;
	#20
	A = 16'hbb1c;
	B = 16'haecd;
	ans = 16'hbbf6;
	#20
	A = 16'hbb63;
	B = 16'h39d0;
	ans = 16'hb24c;
	#20
	A = 16'h3994;
	B = 16'h3a54;
	ans = 16'h3df4;
	#20
	A = 16'hb808;
	B = 16'hbacf;
	ans = 16'hbd6c;
	#20
	A = 16'hb6d6;
	B = 16'h384c;
	ans = 16'h2f08;
	#20
	A = 16'hb4fd;
	B = 16'hbb26;
	ans = 16'hbcd2;
	#20
	A = 16'hb0a5;
	B = 16'h3afb;
	ans = 16'h39d2;
	#20
	A = 16'h3a09;
	B = 16'h3934;
	ans = 16'h3d9e;
	#20
	A = 16'hb670;
	B = 16'h399f;
	ans = 16'h34ce;
	#20
	A = 16'h2c14;
	B = 16'hb4df;
	ans = 16'hb3b4;
	#20
	A = 16'hbbab;
	B = 16'hb886;
	ans = 16'hbe18;
	#20
	A = 16'hadd6;
	B = 16'h32dd;
	ans = 16'h2fe4;
	#20
	A = 16'h377e;
	B = 16'hb71e;
	ans = 16'h2600;
	#20
	A = 16'h3b9d;
	B = 16'h3bf3;
	ans = 16'h3fc8;
	#20
	A = 16'hb9f6;
	B = 16'h3141;
	ans = 16'hb8a6;
	#20
	A = 16'hbaa7;
	B = 16'hb246;
	ans = 16'hbc1c;
	#20
	A = 16'h3ba4;
	B = 16'hb7ab;
	ans = 16'h379d;
	#20
	A = 16'h3602;
	B = 16'h3a63;
	ans = 16'h3cb2;
	#20
	A = 16'h3b1f;
	B = 16'hb6dd;
	ans = 16'h3761;
	#20
	A = 16'hb94d;
	B = 16'h39fa;
	ans = 16'h2d68;
	#20
	A = 16'h3556;
	B = 16'hbae9;
	ans = 16'hb83e;
	#20
	A = 16'hb68a;
	B = 16'hb7bd;
	ans = 16'hbb24;
	#20
	A = 16'h2a56;
	B = 16'hb4b7;
	ans = 16'hb3d8;
	#20
	A = 16'h33ef;
	B = 16'h35e1;
	ans = 16'h38ec;
	#20
	A = 16'hba06;
	B = 16'h357e;
	ans = 16'hb68e;
	#20
	A = 16'hb936;
	B = 16'hb8ea;
	ans = 16'hbd10;
	#20
	A = 16'h39a6;
	B = 16'h3a06;
	ans = 16'h3dd6;
	#20
	A = 16'h350a;
	B = 16'h3948;
	ans = 16'h3bcd;
	#20
	A = 16'hbb72;
	B = 16'h3abf;
	ans = 16'had98;
	#20
	A = 16'h36cb;
	B = 16'h35af;
	ans = 16'h3a3d;
	#20
	A = 16'h328b;
	B = 16'h3586;
	ans = 16'h3866;
	#20
	A = 16'hb1bf;
	B = 16'hb914;
	ans = 16'hba84;
	#20
	A = 16'hb40b;
	B = 16'hba5d;
	ans = 16'hbc31;
	#20
	A = 16'hb587;
	B = 16'hb173;
	ans = 16'hb820;
	#20
	A = 16'h3808;
	B = 16'h38b1;
	ans = 16'h3c5c;
	#20
	A = 16'hb900;
	B = 16'h2208;
	ans = 16'hb8e8;
	#20
	A = 16'h3a05;
	B = 16'h36cd;
	ans = 16'h3cb6;
	#20
	A = 16'hb9de;
	B = 16'h3b48;
	ans = 16'h31a8;
	#20
	A = 16'h3a37;
	B = 16'hb904;
	ans = 16'h30cc;
	#20
	A = 16'h33e3;
	B = 16'h2e56;
	ans = 16'h3587;
	#20
	A = 16'hbb47;
	B = 16'h2f9b;
	ans = 16'hba54;
	#20
	A = 16'hb3a1;
	B = 16'hb848;
	ans = 16'hba30;
	#20
	A = 16'hb808;
	B = 16'hb6fa;
	ans = 16'hbb85;
	#20
	A = 16'hba19;
	B = 16'h38f6;
	ans = 16'hb08c;
	#20
	A = 16'hb5aa;
	B = 16'h2eb0;
	ans = 16'hb3fc;
	#20
	A = 16'hb9e4;
	B = 16'hb9dd;
	ans = 16'hbde0;
	#20
	A = 16'hb47d;
	B = 16'hbb96;
	ans = 16'hbcea;
	#20
	A = 16'h3821;
	B = 16'h3295;
	ans = 16'h39c6;
	#20
	A = 16'hae08;
	B = 16'hb8d6;
	ans = 16'hb997;
	#20
	A = 16'h3582;
	B = 16'hb75b;
	ans = 16'haf64;
	#20
	A = 16'h3483;
	B = 16'h38a3;
	ans = 16'h3ae4;
	#20
	A = 16'h2a85;
	B = 16'hba01;
	ans = 16'hb999;
	#20
	A = 16'hb802;
	B = 16'hba61;
	ans = 16'hbd32;
	#20
	A = 16'h3424;
	B = 16'hb765;
	ans = 16'hb282;
	#20
	A = 16'hb85b;
	B = 16'h3aaf;
	ans = 16'h34a8;
	#20
	A = 16'hbaf7;
	B = 16'hb267;
	ans = 16'hbc48;
	#20
	A = 16'haab7;
	B = 16'h3441;
	ans = 16'h32d4;
	#20
	A = 16'hb819;
	B = 16'h3007;
	ans = 16'hb62e;
	#20
	A = 16'hb7b5;
	B = 16'hbaf0;
	ans = 16'hbd65;
	#20
	A = 16'hbb2d;
	B = 16'hb43b;
	ans = 16'hbca5;
	#20
	A = 16'h3338;
	B = 16'hbb5f;
	ans = 16'hb991;
	#20
	A = 16'hbb38;
	B = 16'h3adb;
	ans = 16'ha9d0;
	#20
	A = 16'h353b;
	B = 16'hb017;
	ans = 16'h325f;
	#20
	A = 16'hb824;
	B = 16'hba26;
	ans = 16'hbd25;
	#20
	A = 16'ha5d1;
	B = 16'hb87b;
	ans = 16'hb8aa;
	#20
	A = 16'hb1c5;
	B = 16'hbbdf;
	ans = 16'hbca8;
	#20
	A = 16'hbada;
	B = 16'hb967;
	ans = 16'hbe20;
	#20
	A = 16'hb970;
	B = 16'hb7e7;
	ans = 16'hbcb2;
	#20
	A = 16'h2ea1;
	B = 16'h3bb9;
	ans = 16'h3c47;
	#20
	A = 16'h3b0a;
	B = 16'h2ed7;
	ans = 16'h3be5;
	#20
	A = 16'h2f5d;
	B = 16'hb198;
	ans = 16'haba6;
	#20
	A = 16'hac4d;
	B = 16'h2c25;
	ans = 16'h9900;
	#20
	A = 16'hb8e7;
	B = 16'h35cc;
	ans = 16'hb402;
	#20
	A = 16'h2418;
	B = 16'hb712;
	ans = 16'hb6d0;
	#20
	A = 16'h39c6;
	B = 16'hb820;
	ans = 16'h3298;
	#20
	A = 16'h2e73;
	B = 16'ha01c;
	ans = 16'h2df0;
	#20
	A = 16'h3be3;
	B = 16'hbb5d;
	ans = 16'h2c30;
	#20
	A = 16'hba96;
	B = 16'hbb71;
	ans = 16'hbf04;
	#20
	A = 16'h3bae;
	B = 16'hb04b;
	ans = 16'h3a9b;
	#20
	A = 16'h3279;
	B = 16'h32ad;
	ans = 16'h3693;
	#20
	A = 16'hb66e;
	B = 16'h395e;
	ans = 16'h344e;
	#20
	A = 16'h388e;
	B = 16'h2ba3;
	ans = 16'h3908;
	#20
	A = 16'h38c3;
	B = 16'hbb2f;
	ans = 16'hb4d8;
	#20
	A = 16'hbaf3;
	B = 16'h3922;
	ans = 16'hb344;
	#20
	A = 16'habea;
	B = 16'h3739;
	ans = 16'h363c;
	#20
	A = 16'h3070;
	B = 16'h2ee4;
	ans = 16'h33e2;
	#20
	A = 16'hb9ad;
	B = 16'h3ab2;
	ans = 16'h3014;
	#20
	A = 16'h3488;
	B = 16'hb761;
	ans = 16'hb1b2;
	#20
	A = 16'h384c;
	B = 16'ha246;
	ans = 16'h3833;
	#20
	A = 16'h38b7;
	B = 16'hb2a1;
	ans = 16'h361e;
	#20
	A = 16'hb56e;
	B = 16'hab05;
	ans = 16'hb64f;
	#20
	A = 16'hbb21;
	B = 16'ha3ea;
	ans = 16'hbb41;
	#20
	A = 16'hb9f9;
	B = 16'hb8d4;
	ans = 16'hbd66;
	#20
	A = 16'hbbad;
	B = 16'hbbcb;
	ans = 16'hbfbc;
	#20
	A = 16'hb757;
	B = 16'h3b2f;
	ans = 16'h3707;
	#20
	A = 16'h23c4;
	B = 16'h3680;
	ans = 16'h36be;
	#20
	A = 16'h3791;
	B = 16'h32d6;
	ans = 16'h397e;
	#20
	A = 16'hb66a;
	B = 16'hab96;
	ans = 16'hb75d;
	#20
	A = 16'h321e;
	B = 16'hbad1;
	ans = 16'hb94a;
	#20
	A = 16'hb477;
	B = 16'hba74;
	ans = 16'hbc58;
	#20
	A = 16'hb961;
	B = 16'h3925;
	ans = 16'ha780;
	#20
	A = 16'hb804;
	B = 16'hbad1;
	ans = 16'hbd6a;
	#20
	A = 16'h3571;
	B = 16'h3b3d;
	ans = 16'h3cfb;
	#20
	A = 16'h383a;
	B = 16'hb5ab;
	ans = 16'h3192;
	#20
	A = 16'hb375;
	B = 16'h32e5;
	ans = 16'ha480;
	#20
	A = 16'h3942;
	B = 16'h2922;
	ans = 16'h3994;
	#20
	A = 16'hb892;
	B = 16'h3b0f;
	ans = 16'h34fa;
	#20
	A = 16'hbb51;
	B = 16'hb238;
	ans = 16'hbc70;
	#20
	A = 16'h3942;
	B = 16'h34fc;
	ans = 16'h3bc0;
	#20
	A = 16'h3390;
	B = 16'hb638;
	ans = 16'hb0e0;
	#20
	A = 16'h3942;
	B = 16'h3473;
	ans = 16'h3b7c;
	#20
	A = 16'hae91;
	B = 16'h3b13;
	ans = 16'h3a41;
	#20
	A = 16'h394e;
	B = 16'h385b;
	ans = 16'h3cd4;
	#20
	A = 16'h391e;
	B = 16'hb5e1;
	ans = 16'h345b;
	#20
	A = 16'h384f;
	B = 16'hb351;
	ans = 16'h34f6;
	#20
	A = 16'h2cb1;
	B = 16'hb80b;
	ans = 16'hb6ea;
	#20
	A = 16'h3808;
	B = 16'h38b0;
	ans = 16'h3c5c;
	#20
	A = 16'h3487;
	B = 16'hb977;
	ans = 16'hb667;
	#20
	A = 16'h2c07;
	B = 16'hb963;
	ans = 16'hb8e2;
	#20
	A = 16'hb84d;
	B = 16'h357e;
	ans = 16'hb238;
	#20
	A = 16'h3a8e;
	B = 16'h3a9a;
	ans = 16'h3e94;
	#20
	A = 16'h34a1;
	B = 16'h36a4;
	ans = 16'h39a2;
	#20
	A = 16'hb545;
	B = 16'hb8d6;
	ans = 16'hbb78;
	#20
	A = 16'h3a1f;
	B = 16'h3aef;
	ans = 16'h3e87;
	#20
	A = 16'h3b65;
	B = 16'hb746;
	ans = 16'h3784;
	#20
	A = 16'hbadb;
	B = 16'h3b9b;
	ans = 16'h2e00;
	#20
	A = 16'hb8df;
	B = 16'h2f70;
	ans = 16'hb7e2;
	#20
	A = 16'h34f7;
	B = 16'h2f90;
	ans = 16'h36db;
	#20
	A = 16'hbb82;
	B = 16'h3669;
	ans = 16'hb84e;
	#20
	A = 16'hb598;
	B = 16'hb05e;
	ans = 16'hb7c7;
	#20
	A = 16'hb993;
	B = 16'h2d0b;
	ans = 16'hb8f2;
	#20
	A = 16'hb709;
	B = 16'h35b9;
	ans = 16'had40;
	#20
	A = 16'hb18c;
	B = 16'hb00d;
	ans = 16'hb4cc;
	#20
	A = 16'hb94a;
	B = 16'hb5bb;
	ans = 16'hbc14;
	#20
	A = 16'h340d;
	B = 16'h38c3;
	ans = 16'h3aca;
	#20
	A = 16'h350b;
	B = 16'h251f;
	ans = 16'h355d;
	#20
	A = 16'hb31b;
	B = 16'hb462;
	ans = 16'hb7f0;
	#20
	A = 16'h3189;
	B = 16'h3b23;
	ans = 16'h3c43;
	#20
	A = 16'hb445;
	B = 16'hb765;
	ans = 16'hb9d5;
	#20
	A = 16'h3745;
	B = 16'h3130;
	ans = 16'h38ee;
	#20
	A = 16'ha9ed;
	B = 16'h39e2;
	ans = 16'h3983;
	#20
	A = 16'hb8fb;
	B = 16'h3b7e;
	ans = 16'h3506;
	#20
	A = 16'hb0df;
	B = 16'h329b;
	ans = 16'h2af0;
	#20
	A = 16'hb041;
	B = 16'h3884;
	ans = 16'h36e8;
	#20
	A = 16'hba31;
	B = 16'hba6d;
	ans = 16'hbe4f;
	#20
	A = 16'h33bd;
	B = 16'h3961;
	ans = 16'h3b50;
	#20
	A = 16'h38ae;
	B = 16'hb8ab;
	ans = 16'h1600;
	#20
	A = 16'hb668;
	B = 16'hb638;
	ans = 16'hba50;
	#20
	A = 16'h3b96;
	B = 16'hb0b7;
	ans = 16'h3a68;
	#20
	A = 16'hb106;
	B = 16'hb9f6;
	ans = 16'hbb38;
	#20
	A = 16'h3665;
	B = 16'hb98d;
	ans = 16'hb4b5;
	#20
	A = 16'hb9d9;
	B = 16'h33fb;
	ans = 16'hb7b4;
	#20
	A = 16'h3b83;
	B = 16'h3ab0;
	ans = 16'h3f1a;
	#20
	A = 16'hb7cc;
	B = 16'hb849;
	ans = 16'hbc18;
	#20
	A = 16'hb644;
	B = 16'h35e9;
	ans = 16'ha5b0;
	#20
	A = 16'ha41b;
	B = 16'hb814;
	ans = 16'hb835;
	#20
	A = 16'hb660;
	B = 16'h30f7;
	ans = 16'hb3c9;
	#20
	A = 16'h2edc;
	B = 16'h2f49;
	ans = 16'h3312;
	#20
	A = 16'h3af5;
	B = 16'hb9d6;
	ans = 16'h307c;
	#20
	A = 16'hacd7;
	B = 16'hb773;
	ans = 16'hb854;
	#20
	A = 16'hb73f;
	B = 16'haea5;
	ans = 16'hb874;
	#20
	A = 16'h397a;
	B = 16'h3ab9;
	ans = 16'h3e1a;
	#20
	A = 16'hb362;
	B = 16'h3937;
	ans = 16'h36bd;
	#20
	A = 16'h3925;
	B = 16'hb8b2;
	ans = 16'h2b30;
	#20
	A = 16'h30e9;
	B = 16'h28b4;
	ans = 16'h3216;
	#20
	A = 16'hb8b9;
	B = 16'h24c4;
	ans = 16'hb893;
	#20
	A = 16'h3a9f;
	B = 16'h30ff;
	ans = 16'h3bdf;
	#20
	A = 16'h3bde;
	B = 16'hacdc;
	ans = 16'h3b42;
	#20
	A = 16'hb8d8;
	B = 16'h25ba;
	ans = 16'hb8aa;
	#20
	A = 16'h3bae;
	B = 16'h393a;
	ans = 16'h3e74;
	#20
	A = 16'h3856;
	B = 16'hbb9f;
	ans = 16'hb692;
	#20
	A = 16'hb8fe;
	B = 16'h3549;
	ans = 16'hb4b3;
	#20
	A = 16'h3634;
	B = 16'h38c2;
	ans = 16'h3bdc;
	#20
	A = 16'hb575;
	B = 16'hb85c;
	ans = 16'hbb16;
	#20
	A = 16'h3b0f;
	B = 16'h3bf0;
	ans = 16'h3f80;
	#20
	A = 16'h26d0;
	B = 16'h39bd;
	ans = 16'h39f4;
	#20
	A = 16'hb108;
	B = 16'hb827;
	ans = 16'hb969;
	#20
	A = 16'h31b3;
	B = 16'hb201;
	ans = 16'ha0e0;
	#20
	A = 16'hba47;
	B = 16'hbad7;
	ans = 16'hbe8f;
	#20
	A = 16'hb789;
	B = 16'hb2f2;
	ans = 16'hb981;
	#20
	A = 16'h3485;
	B = 16'hb7d6;
	ans = 16'hb2a2;
	#20
	A = 16'h395b;
	B = 16'hb89e;
	ans = 16'h2de8;
	#20
	A = 16'hb26d;
	B = 16'h2369;
	ans = 16'hb1f6;
	#20
	A = 16'hb9d8;
	B = 16'hba83;
	ans = 16'hbe2e;
	#20
	A = 16'ha2e1;
	B = 16'hb879;
	ans = 16'hb895;
	#20
	A = 16'hb81e;
	B = 16'hbaf8;
	ans = 16'hbd8b;
	#20
	A = 16'h3544;
	B = 16'h38ae;
	ans = 16'h3b50;
	#20
	A = 16'hbb91;
	B = 16'hb6c7;
	ans = 16'hbd7a;
	#20
	A = 16'hbbf9;
	B = 16'h3b28;
	ans = 16'hae88;
	#20
	A = 16'h348f;
	B = 16'hb5d9;
	ans = 16'had28;
	#20
	A = 16'h35d8;
	B = 16'hb82b;
	ans = 16'hb0fc;
	#20
	A = 16'h3b21;
	B = 16'hbb40;
	ans = 16'ha3c0;
	#20
	A = 16'hbb5d;
	B = 16'h3bb8;
	ans = 16'h29b0;
	#20
	A = 16'h3912;
	B = 16'hb3a3;
	ans = 16'h3652;
	#20
	A = 16'hb870;
	B = 16'h344c;
	ans = 16'hb494;
	#20
	A = 16'hbb4e;
	B = 16'hb2b8;
	ans = 16'hbc7e;
	#20
	A = 16'hb64a;
	B = 16'h39d6;
	ans = 16'h3562;
	#20
	A = 16'hba40;
	B = 16'h2cb4;
	ans = 16'hb9aa;
	#20
	A = 16'h38b4;
	B = 16'h368b;
	ans = 16'h3bfa;
	#20
	A = 16'h38c0;
	B = 16'h38b1;
	ans = 16'h3cb8;
	#20
	A = 16'hb1f2;
	B = 16'h39ff;
	ans = 16'h3882;
	#20
	A = 16'hb80a;
	B = 16'hb095;
	ans = 16'hb92f;
	#20
	A = 16'hb9d7;
	B = 16'h380a;
	ans = 16'hb334;
	#20
	A = 16'h3845;
	B = 16'h348a;
	ans = 16'h3a8a;
	#20
	A = 16'h36a9;
	B = 16'h2cca;
	ans = 16'h37dc;
	#20
	A = 16'hb4c4;
	B = 16'h3bec;
	ans = 16'h398a;
	#20
	A = 16'h3ad7;
	B = 16'ha42d;
	ans = 16'h3ab6;
	#20
	A = 16'hb320;
	B = 16'hba94;
	ans = 16'hbc2e;
	#20
	A = 16'h3875;
	B = 16'hb5ac;
	ans = 16'h327c;
	#20
	A = 16'h37a2;
	B = 16'hb8a3;
	ans = 16'hae90;
	#20
	A = 16'h39fa;
	B = 16'hbb7a;
	ans = 16'hb200;
	#20
	A = 16'hb3dc;
	B = 16'h3a89;
	ans = 16'h3892;
	#20
	A = 16'hb84b;
	B = 16'h324e;
	ans = 16'hb56f;
	#20
	A = 16'h39ca;
	B = 16'h2ba8;
	ans = 16'h3a44;
	#20
	A = 16'hbbdb;
	B = 16'h3a7e;
	ans = 16'hb174;
	#20
	A = 16'h29c3;
	B = 16'hb6b1;
	ans = 16'hb5f9;
	#20
	A = 16'h3a20;
	B = 16'hb13f;
	ans = 16'h38d0;
	#20
	A = 16'h38af;
	B = 16'hb8f8;
	ans = 16'ha890;
	#20
	A = 16'h3b3f;
	B = 16'hb6cc;
	ans = 16'h37b2;
	#20
	A = 16'hb7ff;
	B = 16'hb40d;
	ans = 16'hba06;
	#20
	A = 16'h2f52;
	B = 16'hb4b2;
	ans = 16'hb1bb;
	#20
	A = 16'h37c0;
	B = 16'h342f;
	ans = 16'h39f8;
	#20
	A = 16'hb457;
	B = 16'h39c5;
	ans = 16'h3733;
	#20
	A = 16'hbaad;
	B = 16'h36ad;
	ans = 16'hb6ad;
	#20
	A = 16'hbbbd;
	B = 16'hb536;
	ans = 16'hbd2c;
	#20
	A = 16'hb41e;
	B = 16'hb12d;
	ans = 16'hb6b4;
	#20
	A = 16'h38ad;
	B = 16'hb4b0;
	ans = 16'h34aa;
	#20
	A = 16'hb951;
	B = 16'h3743;
	ans = 16'hb2be;
	#20
	A = 16'h3a88;
	B = 16'h32e4;
	ans = 16'h3c20;
	#20
	A = 16'hb8d6;
	B = 16'h391d;
	ans = 16'h2870;
	#20
	A = 16'hae6b;
	B = 16'hb6b9;
	ans = 16'hb82a;
	#20
	A = 16'h3b51;
	B = 16'hbbb5;
	ans = 16'haa40;
	#20
	A = 16'h36b9;
	B = 16'hbb7b;
	ans = 16'hb81e;
	#20
	A = 16'hb5ac;
	B = 16'h2611;
	ans = 16'hb54b;
	#20
	A = 16'ha9fb;
	B = 16'h3984;
	ans = 16'h3924;
	#20
	A = 16'h38e0;
	B = 16'h39ae;
	ans = 16'h3d47;
	#20
	A = 16'hb97e;
	B = 16'hb6ba;
	ans = 16'hbc6e;
	#20
	A = 16'h3855;
	B = 16'hb88f;
	ans = 16'ha740;
	#20
	A = 16'h3781;
	B = 16'h3b29;
	ans = 16'h3d75;
	#20
	A = 16'hbbbc;
	B = 16'ha571;
	ans = 16'hbbe8;
	#20
	A = 16'hb8c0;
	B = 16'h36c6;
	ans = 16'hb174;
	#20
	A = 16'h3a30;
	B = 16'h3a51;
	ans = 16'h3e40;
	#20
	A = 16'h39e5;
	B = 16'h3a61;
	ans = 16'h3e23;
	#20
	A = 16'hba1e;
	B = 16'hbbe3;
	ans = 16'hbf00;
	#20
	A = 16'hba68;
	B = 16'h3516;
	ans = 16'hb7ba;
	#20
	A = 16'h3928;
	B = 16'hb5f3;
	ans = 16'h345d;
	#20
	A = 16'ha49d;
	B = 16'hb7de;
	ans = 16'hb814;
	#20
	A = 16'h20fb;
	B = 16'hb182;
	ans = 16'hb132;
	#20
	A = 16'h39cd;
	B = 16'hb8f9;
	ans = 16'h2ea0;
	#20
	A = 16'h324e;
	B = 16'h3af2;
	ans = 16'h3c43;
	#20
	A = 16'h35aa;
	B = 16'hb291;
	ans = 16'h30c3;
	#20
	A = 16'h371f;
	B = 16'hb3da;
	ans = 16'h3264;
	#20
	A = 16'hba5c;
	B = 16'h381a;
	ans = 16'hb484;
	#20
	A = 16'h229d;
	B = 16'h37c9;
	ans = 16'h37fe;
	#20
	A = 16'h33e1;
	B = 16'hb1a6;
	ans = 16'h2c76;
	#20
	A = 16'haca6;
	B = 16'hb43e;
	ans = 16'hb568;
	#20
	A = 16'hac5a;
	B = 16'hb8c2;
	ans = 16'hb94d;
	#20
	A = 16'hb5f6;
	B = 16'hb9be;
	ans = 16'hbc5c;
	#20
	A = 16'h3681;
	B = 16'h3a38;
	ans = 16'h3cbc;
	#20
	A = 16'h34f5;
	B = 16'h3ba1;
	ans = 16'h3d0e;
	#20
	A = 16'h3071;
	B = 16'h3680;
	ans = 16'h385c;
	#20
	A = 16'h380b;
	B = 16'hbbf7;
	ans = 16'hb7d8;
	#20
	A = 16'hb200;
	B = 16'haf71;
	ans = 16'hb4dc;
	#20
	A = 16'h3a18;
	B = 16'h3b30;
	ans = 16'h3ea4;
	#20
	A = 16'h2f5f;
	B = 16'hb028;
	ans = 16'ha388;
	#20
	A = 16'hb7f3;
	B = 16'h37f5;
	ans = 16'h1000;
	#20
	A = 16'hb29c;
	B = 16'h3b49;
	ans = 16'h39a2;
	#20
	A = 16'hb5ee;
	B = 16'h3a89;
	ans = 16'h3724;
	#20
	A = 16'hb40a;
	B = 16'hb6ba;
	ans = 16'hb962;
	#20
	A = 16'hb81c;
	B = 16'h38ea;
	ans = 16'h2e70;
	#20
	A = 16'h396b;
	B = 16'h3b4e;
	ans = 16'h3e5c;
	#20
	A = 16'h3192;
	B = 16'hb0b2;
	ans = 16'h2700;
	#20
	A = 16'hbb32;
	B = 16'h38e4;
	ans = 16'hb49c;
	#20
	A = 16'hb982;
	B = 16'h37cb;
	ans = 16'hb272;
	#20
	A = 16'h238a;
	B = 16'hb493;
	ans = 16'hb457;
	#20
	A = 16'h329b;
	B = 16'hb711;
	ans = 16'hb387;
	#20
	A = 16'h3847;
	B = 16'hb858;
	ans = 16'ha040;
	#20
	A = 16'h3915;
	B = 16'hbbc9;
	ans = 16'hb568;
	#20
	A = 16'hba13;
	B = 16'h3b03;
	ans = 16'h2f80;
	#20
	A = 16'h341c;
	B = 16'hbb65;
	ans = 16'hb957;
	#20
	A = 16'h36b3;
	B = 16'h381f;
	ans = 16'h3b78;
	#20
	A = 16'h3aeb;
	B = 16'h3adf;
	ans = 16'h3ee5;
	#20
	A = 16'hba17;
	B = 16'hb363;
	ans = 16'hbbf0;
	#20
	A = 16'h3b07;
	B = 16'h377c;
	ans = 16'h3d62;
	#20
	A = 16'h350e;
	B = 16'hb8f8;
	ans = 16'hb4e2;
	#20
	A = 16'hb94a;
	B = 16'h3b5e;
	ans = 16'h3428;
	#20
	A = 16'h346e;
	B = 16'hb012;
	ans = 16'h30ca;
	#20
	A = 16'h3a68;
	B = 16'h3580;
	ans = 16'h3c94;
	#20
	A = 16'h3bb6;
	B = 16'hb9f5;
	ans = 16'h3304;
	#20
	A = 16'hbb86;
	B = 16'h359f;
	ans = 16'hb8b6;
	#20
	A = 16'hb511;
	B = 16'h383c;
	ans = 16'h32ce;
	#20
	A = 16'hb808;
	B = 16'hb8a0;
	ans = 16'hbc54;
	#20
	A = 16'h3784;
	B = 16'hb5c6;
	ans = 16'h2ef8;
	#20
	A = 16'h3b03;
	B = 16'hb8a3;
	ans = 16'h34c0;
	#20
	A = 16'h293b;
	B = 16'hade3;
	ans = 16'haa8b;
	#20
	A = 16'h37e4;
	B = 16'h3475;
	ans = 16'h3a2c;
	#20
	A = 16'h3bad;
	B = 16'h2e7c;
	ans = 16'h3c3e;
	#20
	A = 16'h3270;
	B = 16'hbba4;
	ans = 16'hba08;
	#20
	A = 16'hba96;
	B = 16'h3a9c;
	ans = 16'h1a00;
	#20
	A = 16'h32d1;
	B = 16'hbaa2;
	ans = 16'hb8ee;
	#20
	A = 16'h361e;
	B = 16'h3bd8;
	ans = 16'h3d74;
	#20
	A = 16'h35e6;
	B = 16'hb679;
	ans = 16'ha898;
	#20
	A = 16'hb88c;
	B = 16'ha6f8;
	ans = 16'hb8c4;
	#20
	A = 16'hb258;
	B = 16'h38fa;
	ans = 16'h36c8;
	#20
	A = 16'hb1a4;
	B = 16'hb35f;
	ans = 16'hb682;
	#20
	A = 16'h3ac9;
	B = 16'hbb91;
	ans = 16'hae40;
	#20
	A = 16'hb464;
	B = 16'ha1f6;
	ans = 16'hb494;
	#20
	A = 16'h37e0;
	B = 16'h380d;
	ans = 16'h3bfd;
	#20
	A = 16'h3863;
	B = 16'hb654;
	ans = 16'h30e4;
	#20
	A = 16'hb4af;
	B = 16'h3a2e;
	ans = 16'h37ad;
	#20
	A = 16'h373e;
	B = 16'hb8e3;
	ans = 16'hb110;
	#20
	A = 16'h35a8;
	B = 16'h3abb;
	ans = 16'h3cc8;
	#20
	A = 16'hba49;
	B = 16'h38f1;
	ans = 16'hb160;
	#20
	A = 16'h316c;
	B = 16'h3b21;
	ans = 16'h3c3e;
	#20
	A = 16'h3802;
	B = 16'hb1b9;
	ans = 16'h3528;
	#20
	A = 16'hb8f6;
	B = 16'hb90f;
	ans = 16'hbd02;
	#20
	A = 16'h3978;
	B = 16'hb9e7;
	ans = 16'haaf0;
	#20
	A = 16'h38d6;
	B = 16'h1ca4;
	ans = 16'h38df;
	#20
	A = 16'h39e9;
	B = 16'h3933;
	ans = 16'h3d8e;
	#20
	A = 16'h3966;
	B = 16'h3447;
	ans = 16'h3b8a;
	#20
	A = 16'h3a59;
	B = 16'h2137;
	ans = 16'h3a6e;
	#20
	A = 16'hb39d;
	B = 16'h3a37;
	ans = 16'h3850;
	#20
	A = 16'hb5e8;
	B = 16'hba84;
	ans = 16'hbcbc;
	#20
	A = 16'hbae1;
	B = 16'had87;
	ans = 16'hbb92;
	#20
	A = 16'hbb63;
	B = 16'hbb5d;
	ans = 16'hbf60;
	#20
	A = 16'hb983;
	B = 16'h3293;
	ans = 16'hb7bc;
	#20
	A = 16'hb9d6;
	B = 16'hb944;
	ans = 16'hbd8d;
	#20
	A = 16'hb88d;
	B = 16'h395f;
	ans = 16'h2e90;
	#20
	A = 16'h3a8f;
	B = 16'h3512;
	ans = 16'h3c8c;
	#20
	A = 16'hb6bb;
	B = 16'hb5e4;
	ans = 16'hba50;
	#20
	A = 16'h3538;
	B = 16'hb50e;
	ans = 16'h2140;
	#20
	A = 16'h37f6;
	B = 16'h383b;
	ans = 16'h3c1b;
	#20
	A = 16'h3932;
	B = 16'hac6e;
	ans = 16'h38a4;
	#20
	A = 16'hb638;
	B = 16'hbaa8;
	ans = 16'hbce2;
	#20
	A = 16'h38a8;
	B = 16'hbbd7;
	ans = 16'hb65e;
	#20
	A = 16'hb0ac;
	B = 16'hb8fa;
	ans = 16'hba25;
	#20
	A = 16'h3147;
	B = 16'hbb00;
	ans = 16'hb9ae;
	#20
	A = 16'h3319;
	B = 16'h399e;
	ans = 16'h3b64;
	#20
	A = 16'hb878;
	B = 16'hb5fd;
	ans = 16'hbb76;
	#20
	A = 16'hb67f;
	B = 16'hb77f;
	ans = 16'hbaff;
	#20
	A = 16'hb11c;
	B = 16'hbb77;
	ans = 16'hbc5f;
	#20
	A = 16'hb91a;
	B = 16'hb62f;
	ans = 16'hbc19;
	#20
	A = 16'hb628;
	B = 16'h347c;
	ans = 16'haeb0;
	#20
	A = 16'hb9a8;
	B = 16'h2c6f;
	ans = 16'hb91a;
	#20
	A = 16'hab61;
	B = 16'h398c;
	ans = 16'h3916;
	#20
	A = 16'h351b;
	B = 16'h3b12;
	ans = 16'h3cd0;
	#20
	A = 16'hb8a8;
	B = 16'ha818;
	ans = 16'hb8ea;
	#20
	A = 16'hb899;
	B = 16'h3310;
	ans = 16'hb5aa;
	#20
	A = 16'h336b;
	B = 16'hb4b6;
	ans = 16'hac02;
	#20
	A = 16'h35dd;
	B = 16'h39c3;
	ans = 16'h3c59;
	#20
	A = 16'hb84c;
	B = 16'h3839;
	ans = 16'ha0c0;
	#20
	A = 16'h3801;
	B = 16'hb929;
	ans = 16'hb0a0;
	#20
	A = 16'h3a3c;
	B = 16'h3a20;
	ans = 16'h3e2e;
	#20
	A = 16'h374b;
	B = 16'hbafa;
	ans = 16'hb6a9;
	#20
	A = 16'h3443;
	B = 16'h39b1;
	ans = 16'h3bd2;
	#20
	A = 16'h34c1;
	B = 16'hb679;
	ans = 16'haee0;
	#20
	A = 16'hbb92;
	B = 16'h3aae;
	ans = 16'haf20;
	#20
	A = 16'hb7d8;
	B = 16'hac82;
	ans = 16'hb87c;
	#20
	A = 16'h3b2b;
	B = 16'hba5c;
	ans = 16'h2e78;
	#20
	A = 16'hb80d;
	B = 16'h361b;
	ans = 16'haffc;
	#20
	A = 16'h38f4;
	B = 16'hba91;
	ans = 16'hb274;
	#20
	A = 16'hb532;
	B = 16'h3820;
	ans = 16'h321c;
	#20
	A = 16'hb01f;
	B = 16'h3b4e;
	ans = 16'h3a46;
	#20
	A = 16'hb5ca;
	B = 16'h3415;
	ans = 16'haed4;
	#20
	A = 16'h2cd1;
	B = 16'h34df;
	ans = 16'h3613;
	#20
	A = 16'h398e;
	B = 16'h241a;
	ans = 16'h39af;
	#20
	A = 16'h397e;
	B = 16'h3692;
	ans = 16'h3c64;
	#20
	A = 16'h3716;
	B = 16'hbb2b;
	ans = 16'hb740;
	#20
	A = 16'hb830;
	B = 16'h39e0;
	ans = 16'h32c0;
	#20
	A = 16'hb22f;
	B = 16'hb5d3;
	ans = 16'hb875;
	#20
	A = 16'h3680;
	B = 16'h3bc3;
	ans = 16'h3d82;
	#20
	A = 16'hb798;
	B = 16'h3aac;
	ans = 16'h35c0;
	#20
	A = 16'h3b82;
	B = 16'hb5d4;
	ans = 16'h3898;
	#20
	A = 16'h3a05;
	B = 16'hb994;
	ans = 16'h2b10;
	#20
	A = 16'hb487;
	B = 16'h398b;
	ans = 16'h368f;
	#20
	A = 16'h2a37;
	B = 16'hbbba;
	ans = 16'hbb57;
	#20
	A = 16'h3340;
	B = 16'hb873;
	ans = 16'hb546;
	#20
	A = 16'hb344;
	B = 16'hb43c;
	ans = 16'hb7de;
	#20
	A = 16'h374d;
	B = 16'hbbc7;
	ans = 16'hb820;
	#20
	A = 16'h3432;
	B = 16'hba44;
	ans = 16'hb82b;
	#20
	A = 16'h3962;
	B = 16'h3875;
	ans = 16'h3cec;
	#20
	A = 16'h39da;
	B = 16'h3461;
	ans = 16'h3c05;
	#20
	A = 16'h351f;
	B = 16'h2a8e;
	ans = 16'h35f1;
	#20
	A = 16'hb1ec;
	B = 16'hb4f1;
	ans = 16'hb7e7;
	#20
	A = 16'h3888;
	B = 16'h3b96;
	ans = 16'h3e0f;
	#20
	A = 16'hb9b6;
	B = 16'hb3da;
	ans = 16'hbbac;
	#20
	A = 16'hb889;
	B = 16'haf0e;
	ans = 16'hb96b;
	#20
	A = 16'haca2;
	B = 16'h3433;
	ans = 16'h3215;
	#20
	A = 16'h312e;
	B = 16'h25a5;
	ans = 16'h31e3;
	#20
	A = 16'h2ea6;
	B = 16'h35e9;
	ans = 16'h3792;
	#20
	A = 16'h3b9d;
	B = 16'hb2a8;
	ans = 16'h39f3;
	#20
	A = 16'h38e3;
	B = 16'hb3c5;
	ans = 16'h35e4;
	#20
	A = 16'h2dd2;
	B = 16'h3b52;
	ans = 16'h3c06;
	#20
	A = 16'hb581;
	B = 16'h2c47;
	ans = 16'hb46f;
	#20
	A = 16'h3abd;
	B = 16'hb27f;
	ans = 16'h391d;
	#20
	A = 16'h38c3;
	B = 16'h3091;
	ans = 16'h39e7;
	#20
	A = 16'h3ac6;
	B = 16'h3b6d;
	ans = 16'h3f1a;
	#20
	A = 16'h3996;
	B = 16'h3a76;
	ans = 16'h3e06;
	#20
	A = 16'h347a;
	B = 16'h3950;
	ans = 16'h3b8d;
	#20
	A = 16'h2e19;
	B = 16'h3552;
	ans = 16'h36d8;
	#20
	A = 16'h3a66;
	B = 16'h3a5d;
	ans = 16'h3e62;
	#20
	A = 16'h39dc;
	B = 16'hb78a;
	ans = 16'h342e;
	#20
	A = 16'h3274;
	B = 16'h3a38;
	ans = 16'h3bd5;
	#20
	A = 16'hb802;
	B = 16'h2c1f;
	ans = 16'hb6fc;
	#20
	A = 16'h3ba4;
	B = 16'h2f5e;
	ans = 16'h3c48;
	#20
	A = 16'hb431;
	B = 16'hb8fb;
	ans = 16'hbb14;
	#20
	A = 16'h3962;
	B = 16'h3ae4;
	ans = 16'h3e23;
	#20
	A = 16'hb1ee;
	B = 16'h3b5e;
	ans = 16'h39e2;
	#20
	A = 16'h31fe;
	B = 16'hb67b;
	ans = 16'hb2f8;
	#20
	A = 16'h3ad6;
	B = 16'hb50c;
	ans = 16'h3850;
	#20
	A = 16'hb5fb;
	B = 16'hbbdd;
	ans = 16'hbd6d;
	#20
	A = 16'h3ba9;
	B = 16'h2ebc;
	ans = 16'h3c40;
	#20
	A = 16'hb918;
	B = 16'h3a54;
	ans = 16'h30f0;
	#20
	A = 16'hb7a7;
	B = 16'hb179;
	ans = 16'hb932;
	#20
	A = 16'ha46c;
	B = 16'hb158;
	ans = 16'hb1e6;
	#20
	A = 16'hb2b6;
	B = 16'hac20;
	ans = 16'hb463;
	#20
	A = 16'hb025;
	B = 16'h38a7;
	ans = 16'h373c;
	#20
	A = 16'hb41d;
	B = 16'h2a0a;
	ans = 16'hb2b8;
	#20
	A = 16'h3ad5;
	B = 16'h3778;
	ans = 16'h3d48;
	#20
	A = 16'h3928;
	B = 16'haeac;
	ans = 16'h3852;
	#20
	A = 16'h3a6a;
	B = 16'h3516;
	ans = 16'h3c7a;
	#20
	A = 16'hb948;
	B = 16'hbb5b;
	ans = 16'hbe52;
	#20
	A = 16'hba16;
	B = 16'h3a54;
	ans = 16'h27c0;
	#20
	A = 16'hb841;
	B = 16'ha89c;
	ans = 16'hb88b;
	#20
	A = 16'hb8b1;
	B = 16'hae90;
	ans = 16'hb983;
	#20
	A = 16'hb865;
	B = 16'hb85f;
	ans = 16'hbc62;
	#20
	A = 16'hbaff;
	B = 16'h330c;
	ans = 16'hb93c;
	#20
	A = 16'hb49c;
	B = 16'hb5b0;
	ans = 16'hb926;
	#20
	A = 16'hb973;
	B = 16'h3845;
	ans = 16'hb0b8;
	#20
	A = 16'h35fd;
	B = 16'hb264;
	ans = 16'h3196;
	#20
	A = 16'ha6ca;
	B = 16'ha80b;
	ans = 16'hab70;
	#20
	A = 16'h26d4;
	B = 16'h2e8e;
	ans = 16'h3022;
	#20
	A = 16'h3a80;
	B = 16'hb374;
	ans = 16'h38a3;
	#20
	A = 16'hb7e7;
	B = 16'h35d4;
	ans = 16'hb026;
	#20
	A = 16'h2d37;
	B = 16'haff5;
	ans = 16'ha97c;
	#20
	A = 16'hb853;
	B = 16'hbbb9;
	ans = 16'hbe06;
	#20
	A = 16'h3733;
	B = 16'h3992;
	ans = 16'h3c96;
	#20
	A = 16'h3ad8;
	B = 16'h36fa;
	ans = 16'h3d2a;
	#20
	A = 16'hb5d3;
	B = 16'hbbcb;
	ans = 16'hbd5a;
	#20
	A = 16'hb6a3;
	B = 16'h30dc;
	ans = 16'hb435;
	#20
	A = 16'h3424;
	B = 16'h37d2;
	ans = 16'h39fb;
	#20
	A = 16'hba6b;
	B = 16'hadc7;
	ans = 16'hbb24;
	#20
	A = 16'hb8e9;
	B = 16'hbbd5;
	ans = 16'hbe5f;
	#20
	A = 16'h3654;
	B = 16'hb5c0;
	ans = 16'h28a0;
	#20
	A = 16'h38f6;
	B = 16'h347a;
	ans = 16'h3b33;
	#20
	A = 16'hb844;
	B = 16'h3b2f;
	ans = 16'h35d6;
	#20
	A = 16'h390b;
	B = 16'h31c5;
	ans = 16'h3a7c;
	#20
	A = 16'hb496;
	B = 16'h3bb7;
	ans = 16'h396c;
	#20
	A = 16'hb1e7;
	B = 16'h3b9b;
	ans = 16'h3a21;
	#20
	A = 16'h3844;
	B = 16'hb804;
	ans = 16'h2800;
	#20
	A = 16'h3890;
	B = 16'hbb7e;
	ans = 16'hb5dc;
	#20
	A = 16'hbb5f;
	B = 16'hbb69;
	ans = 16'hbf64;
	#20
	A = 16'h3be6;
	B = 16'h3401;
	ans = 16'h3cf3;
	#20
	A = 16'hacd6;
	B = 16'hb603;
	ans = 16'hb738;
	#20
	A = 16'hb9d5;
	B = 16'hb8fc;
	ans = 16'hbd68;
	#20
	A = 16'hb0b4;
	B = 16'hb1f0;
	ans = 16'hb552;
	#20
	A = 16'hb17b;
	B = 16'h3987;
	ans = 16'h3828;
	#20
	A = 16'hacbb;
	B = 16'h2619;
	ans = 16'haa6a;
	#20
	A = 16'had3d;
	B = 16'hb66c;
	ans = 16'hb7bb;
	#20
	A = 16'h3972;
	B = 16'h30ae;
	ans = 16'h3a9e;
	#20
	A = 16'hb772;
	B = 16'h38fa;
	ans = 16'h3104;
	#20
	A = 16'hb939;
	B = 16'h30bc;
	ans = 16'hb80a;
	#20
	A = 16'h3776;
	B = 16'hb642;
	ans = 16'h2cd0;
	#20
	A = 16'hb54b;
	B = 16'h2e48;
	ans = 16'hb372;
	#20
	A = 16'h3b14;
	B = 16'h3216;
	ans = 16'h3c4d;
	#20
	A = 16'h3abf;
	B = 16'h30c3;
	ans = 16'h3bf0;
	#20
	A = 16'hb209;
	B = 16'hb64f;
	ans = 16'hb8aa;
	#20
	A = 16'h37fb;
	B = 16'hb66a;
	ans = 16'h2e44;
	#20
	A = 16'h3a60;
	B = 16'h3675;
	ans = 16'h3ccd;
	#20
	A = 16'hb829;
	B = 16'h3ae4;
	ans = 16'h3576;
	#20
	A = 16'h3424;
	B = 16'h325e;
	ans = 16'h3753;
	#20
	A = 16'hb93a;
	B = 16'h3b9e;
	ans = 16'h34c8;
	#20
	A = 16'hb9fb;
	B = 16'h3979;
	ans = 16'hac10;
	#20
	A = 16'hb17a;
	B = 16'h3777;
	ans = 16'h34ba;
	#20
	A = 16'h26da;
	B = 16'h3b9f;
	ans = 16'h3bd6;
	#20
	A = 16'h3b9a;
	B = 16'hb9b0;
	ans = 16'h33a8;
	#20
	A = 16'h3b72;
	B = 16'h24cf;
	ans = 16'h3b98;
	#20
	A = 16'hae9b;
	B = 16'h3933;
	ans = 16'h3860;
	#20
	A = 16'h391c;
	B = 16'h39bf;
	ans = 16'h3d6e;
	#20
	A = 16'hb0a8;
	B = 16'h3916;
	ans = 16'h37d8;
	#20
	A = 16'h3b4c;
	B = 16'h358a;
	ans = 16'h3d08;
	#20
	A = 16'hb9a7;
	B = 16'h39d5;
	ans = 16'h25c0;
	#20
	A = 16'h2443;
	B = 16'h35f2;
	ans = 16'h3636;
	#20
	A = 16'h3823;
	B = 16'hb996;
	ans = 16'hb1cc;
	#20
	A = 16'h32e0;
	B = 16'h390c;
	ans = 16'h3ac4;
	#20
	A = 16'h3aa5;
	B = 16'hb568;
	ans = 16'h37e2;
	#20
	A = 16'hb097;
	B = 16'hbad9;
	ans = 16'hbbff;
	#20
	A = 16'hb5ac;
	B = 16'h3a37;
	ans = 16'h36c2;
	#20
	A = 16'h2cf6;
	B = 16'hac87;
	ans = 16'h1ef0;
	#20
	A = 16'h3826;
	B = 16'hbb00;
	ans = 16'hb5b4;
	#20
	A = 16'hbb86;
	B = 16'hb78a;
	ans = 16'hbda6;
	#20
	A = 16'hb8f6;
	B = 16'hb76b;
	ans = 16'hbc56;
	#20
	A = 16'hbaa9;
	B = 16'h3a5e;
	ans = 16'ha8b0;
	#20
	A = 16'hb88f;
	B = 16'h386b;
	ans = 16'ha480;
	#20
	A = 16'hba65;
	B = 16'hb550;
	ans = 16'hbc86;
	#20
	A = 16'hb44e;
	B = 16'hbbf3;
	ans = 16'hbd0d;
	#20
	A = 16'h3873;
	B = 16'hae11;
	ans = 16'h3762;
	#20
	A = 16'hac4f;
	B = 16'hba2d;
	ans = 16'hbab7;
	#20
	A = 16'ha8e5;
	B = 16'h35dc;
	ans = 16'h353f;
	#20
	A = 16'h39cd;
	B = 16'haf5f;
	ans = 16'h38e1;
	#20
	A = 16'h39a2;
	B = 16'hb979;
	ans = 16'h2520;
	#20
	A = 16'hb849;
	B = 16'h3baa;
	ans = 16'h36c2;
	#20
	A = 16'h2a8c;
	B = 16'h377f;
	ans = 16'h3828;
	#20
	A = 16'hbb6e;
	B = 16'h3a99;
	ans = 16'haea8;
	#20
	A = 16'h285d;
	B = 16'hb6dd;
	ans = 16'hb651;
	#20
	A = 16'h3854;
	B = 16'hbab5;
	ans = 16'hb4c2;
	#20
	A = 16'h3a80;
	B = 16'h3bc4;
	ans = 16'h3f22;
	#20
	A = 16'h9c5f;
	B = 16'h3725;
	ans = 16'h3714;
	#20
	A = 16'h3896;
	B = 16'hb1d9;
	ans = 16'h3640;
	#20
	A = 16'h3576;
	B = 16'hbb23;
	ans = 16'hb868;
	#20
	A = 16'h36f5;
	B = 16'hb935;
	ans = 16'hb2ea;
	#20
	A = 16'hb94c;
	B = 16'h35dd;
	ans = 16'hb4bb;
	#20
	A = 16'hb016;
	B = 16'h2ff6;
	ans = 16'h9ac0;
	#20
	A = 16'h3a68;
	B = 16'hb837;
	ans = 16'h3462;
	#20
	A = 16'h2d7b;
	B = 16'hb633;
	ans = 16'hb4d4;
	#20
	A = 16'h35d3;
	B = 16'hb6b0;
	ans = 16'haae8;
	#20
	A = 16'h3424;
	B = 16'h3ba6;
	ans = 16'h3cdc;
	#20
	A = 16'h24e1;
	B = 16'h34f6;
	ans = 16'h3544;
	#20
	A = 16'h3a85;
	B = 16'h3678;
	ans = 16'h3ce0;
	#20
	A = 16'hb609;
	B = 16'h3ba1;
	ans = 16'h389c;
	#20
	A = 16'h3943;
	B = 16'h3b2b;
	ans = 16'h3e37;
	#20
	A = 16'h31b5;
	B = 16'hbb28;
	ans = 16'hb9bb;
	#20
	A = 16'h3bef;
	B = 16'h35ae;
	ans = 16'h3d63;
	#20
	A = 16'h3405;
	B = 16'hbb9e;
	ans = 16'hb99c;
	#20
	A = 16'h352b;
	B = 16'h2a60;
	ans = 16'h35f7;
	#20
	A = 16'hb0eb;
	B = 16'hbaf9;
	ans = 16'hbc1a;
	#20
	A = 16'hb590;
	B = 16'hbb21;
	ans = 16'hbcf4;
	#20
	A = 16'hb20d;
	B = 16'hb835;
	ans = 16'hb9b8;
	#20
	A = 16'hb68e;
	B = 16'h3a5d;
	ans = 16'h362c;
	#20
	A = 16'haee3;
	B = 16'hb704;
	ans = 16'hb85e;
	#20
	A = 16'h340b;
	B = 16'hb747;
	ans = 16'hb278;
	#20
	A = 16'hb418;
	B = 16'hb937;
	ans = 16'hbb43;
	#20
	A = 16'h3b55;
	B = 16'hb7c0;
	ans = 16'h36ea;
	#20
	A = 16'hb67b;
	B = 16'h32d5;
	ans = 16'hb221;
	#20
	A = 16'hb903;
	B = 16'h3b1f;
	ans = 16'h3438;
	#20
	A = 16'h3b55;
	B = 16'hb700;
	ans = 16'h37aa;
	#20
	A = 16'h3707;
	B = 16'h3933;
	ans = 16'h3c5b;
	#20
	A = 16'hb450;
	B = 16'hbb44;
	ans = 16'hbcb6;
	#20
	A = 16'h35ac;
	B = 16'h3a5a;
	ans = 16'h3c98;
	#20
	A = 16'hb4c7;
	B = 16'hba38;
	ans = 16'hbc4e;
	#20
	A = 16'hbb62;
	B = 16'h38a0;
	ans = 16'hb584;
	#20
	A = 16'h3908;
	B = 16'h1978;
	ans = 16'h390d;
	#20
	A = 16'hb386;
	B = 16'h38ed;
	ans = 16'h3617;
	#20
	A = 16'h3a43;
	B = 16'h342f;
	ans = 16'h3c2d;
	#20
	A = 16'h3bfa;
	B = 16'h3830;
	ans = 16'h3e15;
	#20
	A = 16'hb9d7;
	B = 16'hb139;
	ans = 16'hbb25;
	#20
	A = 16'hb900;
	B = 16'h35ba;
	ans = 16'hb446;
	#20
	A = 16'h3442;
	B = 16'h3bba;
	ans = 16'h3cee;
	#20
	A = 16'h3696;
	B = 16'h399f;
	ans = 16'h3c75;
	#20
	A = 16'hb974;
	B = 16'hbab7;
	ans = 16'hbe16;
	#20
	A = 16'hbb07;
	B = 16'hb55b;
	ans = 16'hbcda;
	#20
	A = 16'h31ca;
	B = 16'h3070;
	ans = 16'h351d;
	#20
	A = 16'h3040;
	B = 16'h399e;
	ans = 16'h3aae;
	#20
	A = 16'h360c;
	B = 16'hb7bd;
	ans = 16'haec4;
	#20
	A = 16'h305c;
	B = 16'hba84;
	ans = 16'hb96d;
	#20
	A = 16'h3ae4;
	B = 16'hb950;
	ans = 16'h3250;
	#20
	A = 16'hb631;
	B = 16'hbaed;
	ans = 16'hbd03;
	#20
	A = 16'h389e;
	B = 16'hbabf;
	ans = 16'hb442;
	#20
	A = 16'h32a2;
	B = 16'hb405;
	ans = 16'ha9a0;
	#20
	A = 16'h3b84;
	B = 16'h30c8;
	ans = 16'h3c5b;
	#20
	A = 16'hb8e0;
	B = 16'hb657;
	ans = 16'hbc06;
	#20
	A = 16'h35c2;
	B = 16'h36b9;
	ans = 16'h3a3e;
	#20
	A = 16'hba8e;
	B = 16'hbab9;
	ans = 16'hbea4;
	#20
	A = 16'h3552;
	B = 16'h3557;
	ans = 16'h3954;
	#20
	A = 16'h3b79;
	B = 16'hba15;
	ans = 16'h3190;
	#20
	A = 16'hbb71;
	B = 16'h3781;
	ans = 16'hb761;
	#20
	A = 16'h3b79;
	B = 16'hb616;
	ans = 16'h386e;
	#20
	A = 16'h3b3f;
	B = 16'hb595;
	ans = 16'h3874;
	#20
	A = 16'hae60;
	B = 16'hb812;
	ans = 16'hb8de;
	#20
	A = 16'h3271;
	B = 16'h3968;
	ans = 16'h3b04;
	#20
	A = 16'h395c;
	B = 16'hb8e9;
	ans = 16'h2b30;
	#20
	A = 16'hba06;
	B = 16'hbab0;
	ans = 16'hbe5b;
	#20
	A = 16'h273f;
	B = 16'hb877;
	ans = 16'hb83d;
	#20
	A = 16'h35c2;
	B = 16'hb177;
	ans = 16'h320d;
	#20
	A = 16'h3554;
	B = 16'hb527;
	ans = 16'h21a0;
	#20
	A = 16'h3a48;
	B = 16'h1759;
	ans = 16'h3a4c;
	#20
	A = 16'hb7d4;
	B = 16'hbae2;
	ans = 16'hbd66;
	#20
	A = 16'hb81b;
	B = 16'h364c;
	ans = 16'hafa8;
	#20
	A = 16'hbaac;
	B = 16'hbb4d;
	ans = 16'hbefc;
	#20
	A = 16'hbb97;
	B = 16'h37b1;
	ans = 16'hb77d;
	#20
	A = 16'h38c3;
	B = 16'hba9c;
	ans = 16'hb364;
	#20
	A = 16'h2c36;
	B = 16'hb59f;
	ans = 16'hb492;
	#20
	A = 16'h3313;
	B = 16'hadfc;
	ans = 16'h3015;
	#20
	A = 16'hb94d;
	B = 16'h350c;
	ans = 16'hb58e;
	#20
	A = 16'hba67;
	B = 16'hb664;
	ans = 16'hbccc;
	#20
	A = 16'hb700;
	B = 16'h3404;
	ans = 16'hb1f8;
	#20
	A = 16'hb5af;
	B = 16'hb7a4;
	ans = 16'hbaaa;
	#20
	A = 16'h307a;
	B = 16'h30e4;
	ans = 16'h34af;
	#20
	A = 16'hbb50;
	B = 16'hb4af;
	ans = 16'hbcd4;
	#20
	A = 16'h37e6;
	B = 16'h3ba9;
	ans = 16'h3dce;
	#20
	A = 16'h368f;
	B = 16'h3ab3;
	ans = 16'h3cfd;
	#20
	A = 16'hb0f2;
	B = 16'hb8c7;
	ans = 16'hba04;
	#20
	A = 16'h3377;
	B = 16'h3b2b;
	ans = 16'h3c84;
	#20
	A = 16'h3ba7;
	B = 16'hb4a9;
	ans = 16'h3952;
	#20
	A = 16'h3bd4;
	B = 16'hb98d;
	ans = 16'h348e;
	#20
	A = 16'hbb6f;
	B = 16'hbb31;
	ans = 16'hbf50;
	#20
	A = 16'h3ac5;
	B = 16'hb817;
	ans = 16'h355c;
	#20
	A = 16'h38ca;
	B = 16'h36d2;
	ans = 16'h3c1a;
	#20
	A = 16'h36be;
	B = 16'hb914;
	ans = 16'hb2d4;
	#20
	A = 16'hb9c4;
	B = 16'hac1a;
	ans = 16'hba47;
	#20
	A = 16'h3b49;
	B = 16'h303d;
	ans = 16'h3c2c;
	#20
	A = 16'hb988;
	B = 16'h3b50;
	ans = 16'h3320;
	#20
	A = 16'hb690;
	B = 16'h39cd;
	ans = 16'h350a;
	#20
	A = 16'h34df;
	B = 16'hb6e7;
	ans = 16'hb010;
	#20
	A = 16'h350d;
	B = 16'h3706;
	ans = 16'h3a0a;
	#20
	A = 16'hb1dd;
	B = 16'hb9f7;
	ans = 16'hbb6e;
	#20
	A = 16'hb566;
	B = 16'h3bb8;
	ans = 16'h3905;
	#20
	A = 16'hbb3d;
	B = 16'hbb32;
	ans = 16'hbf38;
	#20
	A = 16'hbbe8;
	B = 16'hbb31;
	ans = 16'hbf8c;
	#20
	A = 16'h33b1;
	B = 16'h3bc5;
	ans = 16'h3cd9;
	#20
	A = 16'h38da;
	B = 16'h3474;
	ans = 16'h3b14;
	#20
	A = 16'hba5b;
	B = 16'h39f4;
	ans = 16'haa70;
	#20
	A = 16'h2df7;
	B = 16'hb990;
	ans = 16'hb8d1;
	#20
	A = 16'h34d9;
	B = 16'hb0c9;
	ans = 16'h30e9;
	#20
	A = 16'h2ed2;
	B = 16'h3ba9;
	ans = 16'h3c42;
	#20
	A = 16'h3a3a;
	B = 16'hb68e;
	ans = 16'h35e6;
	#20
	A = 16'h363c;
	B = 16'hb9bb;
	ans = 16'hb53a;
	#20
	A = 16'h3805;
	B = 16'h2a56;
	ans = 16'h386a;
	#20
	A = 16'h38fc;
	B = 16'h344d;
	ans = 16'h3b22;
	#20
	A = 16'hb4a1;
	B = 16'h3680;
	ans = 16'h2f7c;
	#20
	A = 16'hb964;
	B = 16'h3987;
	ans = 16'h2460;
	#20
	A = 16'hb4e1;
	B = 16'h3b83;
	ans = 16'h3912;
	#20
	A = 16'h299e;
	B = 16'h3a7d;
	ans = 16'h3ad7;
	#20
	A = 16'hb015;
	B = 16'hbbd2;
	ans = 16'hbc6c;
	#20
	A = 16'h3897;
	B = 16'hb92f;
	ans = 16'hacc0;
	#20
	A = 16'hb895;
	B = 16'had16;
	ans = 16'hb938;
	#20
	A = 16'hb629;
	B = 16'hb41c;
	ans = 16'hb922;
	#20
	A = 16'h2d82;
	B = 16'ha400;
	ans = 16'h2c82;
	#20
	A = 16'hba42;
	B = 16'hb665;
	ans = 16'hbcba;
	#20
	A = 16'hb9c5;
	B = 16'h38f0;
	ans = 16'haea8;
	#20
	A = 16'h31f7;
	B = 16'hb8b9;
	ans = 16'hb676;
	#20
	A = 16'h38cb;
	B = 16'hb465;
	ans = 16'h3531;
	#20
	A = 16'h3820;
	B = 16'hb92c;
	ans = 16'hb030;
	#20
	A = 16'h3bbc;
	B = 16'h3822;
	ans = 16'h3def;
	#20
	A = 16'hb740;
	B = 16'h27f1;
	ans = 16'hb6c1;
	#20
	A = 16'hb8ab;
	B = 16'h3b9a;
	ans = 16'h35de;
	#20
	A = 16'hb8b9;
	B = 16'h31e0;
	ans = 16'hb682;
	#20
	A = 16'h36e3;
	B = 16'h3259;
	ans = 16'h3908;
	#20
	A = 16'h3640;
	B = 16'hb872;
	ans = 16'hb148;
	#20
	A = 16'h3481;
	B = 16'hbb89;
	ans = 16'hb948;
	#20
	A = 16'hbb66;
	B = 16'hb530;
	ans = 16'hbcff;
	#20
	A = 16'h39c8;
	B = 16'heea;
	ans = 16'h39c9;
	#20
	A = 16'h3b27;
	B = 16'h3180;
	ans = 16'h3c44;
	#20
	A = 16'hb543;
	B = 16'hb500;
	ans = 16'hb922;
	#20
	A = 16'h3687;
	B = 16'hb1e4;
	ans = 16'h332a;
	#20
	A = 16'hb402;
	B = 16'hb9c5;
	ans = 16'hbbc6;
	#20
	A = 16'hb828;
	B = 16'h3753;
	ans = 16'habe8;
	#20
	A = 16'h3877;
	B = 16'h30b1;
	ans = 16'h39a3;
	#20
	A = 16'hba89;
	B = 16'haaba;
	ans = 16'hbaf5;
	#20
	A = 16'h3a19;
	B = 16'hb861;
	ans = 16'h32e0;
	#20
	A = 16'hb850;
	B = 16'h2a60;
	ans = 16'hb7d4;
	#20
	A = 16'h33dc;
	B = 16'h31b7;
	ans = 16'h36ca;
	#20
	A = 16'h3b63;
	B = 16'hbaf2;
	ans = 16'h2b10;
	#20
	A = 16'h3a5b;
	B = 16'h390d;
	ans = 16'h3db4;
	#20
	A = 16'h3bcd;
	B = 16'h3574;
	ans = 16'h3d44;
	#20
	A = 16'hae18;
	B = 16'hb7ad;
	ans = 16'hb89a;
	#20
	A = 16'hb778;
	B = 16'hb714;
	ans = 16'hbb46;
	#20
	A = 16'h3b6c;
	B = 16'h3746;
	ans = 16'h3d88;
	#20
	A = 16'hb472;
	B = 16'hb9c8;
	ans = 16'hbc00;
	#20
	A = 16'h39a9;
	B = 16'h369d;
	ans = 16'h3c7c;
	#20
	A = 16'hb8bc;
	B = 16'h36b8;
	ans = 16'hb180;
	#20
	A = 16'hb0da;
	B = 16'hba0e;
	ans = 16'hbb44;
	#20
	A = 16'h39e8;
	B = 16'h3688;
	ans = 16'h3c96;
	#20
	A = 16'h35a7;
	B = 16'hb2b9;
	ans = 16'h3095;
	#20
	A = 16'h38c5;
	B = 16'h3804;
	ans = 16'h3c64;
	#20
	A = 16'h3612;
	B = 16'h3ba4;
	ans = 16'h3d56;
	#20
	A = 16'h3bf1;
	B = 16'hb430;
	ans = 16'h39d9;
	#20
	A = 16'h3a4a;
	B = 16'hb6a5;
	ans = 16'h35ef;
	#20
	A = 16'hb835;
	B = 16'hba23;
	ans = 16'hbd2c;
	#20
	A = 16'h358f;
	B = 16'hba92;
	ans = 16'hb795;
	#20
	A = 16'hbb06;
	B = 16'hbb18;
	ans = 16'hbf0f;
	#20
	A = 16'h38f2;
	B = 16'h35ed;
	ans = 16'h3be8;
	#20
	A = 16'hb357;
	B = 16'h3754;
	ans = 16'h3351;
	#20
	A = 16'hb4bd;
	B = 16'hbab3;
	ans = 16'hbc89;
	#20
	A = 16'hba76;
	B = 16'hbbda;
	ans = 16'hbf28;
	#20
	A = 16'hba85;
	B = 16'haadb;
	ans = 16'hbaf3;
	#20
	A = 16'hb87e;
	B = 16'h3818;
	ans = 16'haa60;
	#20
	A = 16'h3582;
	B = 16'hb5a8;
	ans = 16'ha0c0;
	#20
	A = 16'hba11;
	B = 16'hb7a4;
	ans = 16'hbcf2;
	#20
	A = 16'hbace;
	B = 16'hb952;
	ans = 16'hbe10;
	#20
	A = 16'h3a4d;
	B = 16'hb865;
	ans = 16'h33a0;
	#20
	A = 16'h37c1;
	B = 16'hb883;
	ans = 16'had14;
	#20
	A = 16'hb070;
	B = 16'h3b79;
	ans = 16'h3a5d;
	#20
	A = 16'hb800;
	B = 16'h3752;
	ans = 16'ha970;
	#20
	A = 16'h381e;
	B = 16'h3488;
	ans = 16'h3a62;
	#20
	A = 16'hb6d7;
	B = 16'h3a6b;
	ans = 16'h35ff;
	#20
	A = 16'ha7d1;
	B = 16'hbbd9;
	ans = 16'hbc0c;
	#20
	A = 16'h3b75;
	B = 16'hb9bf;
	ans = 16'h32d8;
	#20
	A = 16'h38f9;
	B = 16'h38de;
	ans = 16'h3cec;
	#20
	A = 16'hb42f;
	B = 16'h34ac;
	ans = 16'h27d0;
	#20
	A = 16'hb460;
	B = 16'hba7e;
	ans = 16'hbc57;
	#20
	A = 16'h3867;
	B = 16'hbb6b;
	ans = 16'hb608;
	#20
	A = 16'hb5c3;
	B = 16'hb5cc;
	ans = 16'hb9c8;
	#20
	A = 16'hb6ca;
	B = 16'hb7f0;
	ans = 16'hbb5d;
	#20
	A = 16'hb3e3;
	B = 16'hb1b1;
	ans = 16'hb6ca;
	#20
	A = 16'h30c1;
	B = 16'h36b7;
	ans = 16'h388c;
	#20
	A = 16'hbb91;
	B = 16'hb715;
	ans = 16'hbd8e;
	#20
	A = 16'hbb7a;
	B = 16'h3a76;
	ans = 16'hb010;
	#20
	A = 16'h38f1;
	B = 16'hb35e;
	ans = 16'h3633;
	#20
	A = 16'hb531;
	B = 16'h3af9;
	ans = 16'h3860;
	#20
	A = 16'hb6fc;
	B = 16'hb99d;
	ans = 16'hbc8e;
	#20
	A = 16'h2b71;
	B = 16'h39e0;
	ans = 16'h3a57;
	#20
	A = 16'h345d;
	B = 16'hb75d;
	ans = 16'hb200;
	#20
	A = 16'h37da;
	B = 16'h341a;
	ans = 16'h39fa;
	#20
	A = 16'hafbc;
	B = 16'hb8c6;
	ans = 16'hb9be;
	#20
	A = 16'h367d;
	B = 16'h3b86;
	ans = 16'h3d62;
	#20
	A = 16'h3ba1;
	B = 16'h9c27;
	ans = 16'h3b99;
	#20
	A = 16'h3b6e;
	B = 16'h38a8;
	ans = 16'h3e0b;
	#20
	A = 16'hb8e3;
	B = 16'had73;
	ans = 16'hb991;
	#20
	A = 16'h31e4;
	B = 16'hb9b9;
	ans = 16'hb840;
	#20
	A = 16'hb431;
	B = 16'hb5d0;
	ans = 16'hb900;
	#20
	A = 16'hb9a7;
	B = 16'h329c;
	ans = 16'hb800;
	#20
	A = 16'hb497;
	B = 16'h3156;
	ans = 16'hafb0;
	#20
	A = 16'h367e;
	B = 16'hb82b;
	ans = 16'haf60;
	#20
	A = 16'hba28;
	B = 16'hb9a1;
	ans = 16'hbde4;
	#20
	A = 16'h3b86;
	B = 16'hb445;
	ans = 16'h3964;
	#20
	A = 16'hb8c6;
	B = 16'hb988;
	ans = 16'hbd27;
	#20
	A = 16'h3a6c;
	B = 16'hba1e;
	ans = 16'h28e0;
	#20
	A = 16'h368a;
	B = 16'h36e1;
	ans = 16'h3ab6;
	#20
	A = 16'h375e;
	B = 16'hb5eb;
	ans = 16'h2dcc;
	#20
	A = 16'hbb77;
	B = 16'h366b;
	ans = 16'hb842;
	#20
	A = 16'hb452;
	B = 16'hb550;
	ans = 16'hb8d1;
	#20
	A = 16'h3b54;
	B = 16'h3b00;
	ans = 16'h3f2a;
	#20
	A = 16'hb913;
	B = 16'hb8b4;
	ans = 16'hbce4;
	#20
	A = 16'hb761;
	B = 16'h30e5;
	ans = 16'hb4ee;
	#20
	A = 16'h373b;
	B = 16'h34ed;
	ans = 16'h3a14;
	#20
	A = 16'hba16;
	B = 16'hb9f4;
	ans = 16'hbe05;
	#20
	A = 16'h3845;
	B = 16'h384f;
	ans = 16'h3c4a;
	#20
	A = 16'h39a1;
	B = 16'hb2d8;
	ans = 16'h37d6;
	#20
	A = 16'h3a43;
	B = 16'hb967;
	ans = 16'h2ee0;
	#20
	A = 16'h30d5;
	B = 16'had14;
	ans = 16'h2c96;
	#20
	A = 16'h3679;
	B = 16'hb997;
	ans = 16'hb4b5;
	#20
	A = 16'h3b9c;
	B = 16'hb497;
	ans = 16'h3950;
	#20
	A = 16'h38d2;
	B = 16'hbbc5;
	ans = 16'hb5e6;
	#20
	A = 16'hba3a;
	B = 16'h32b1;
	ans = 16'hb88e;
	#20
	A = 16'ha185;
	B = 16'h387a;
	ans = 16'h3864;
	#20
	A = 16'hb681;
	B = 16'hb8c8;
	ans = 16'hbc04;
	#20
	A = 16'h31f6;
	B = 16'hb4e6;
	ans = 16'hafac;
	#20
	A = 16'hb92c;
	B = 16'hbbdb;
	ans = 16'hbe84;
	#20
	A = 16'h398c;
	B = 16'hb9c9;
	ans = 16'ha7a0;
	#20
	A = 16'h3151;
	B = 16'hbb0e;
	ans = 16'hb9ba;
	#20
	A = 16'h39ca;
	B = 16'hb4d6;
	ans = 16'h36be;
	#20
	A = 16'hba4c;
	B = 16'hafc2;
	ans = 16'hbb44;
	#20
	A = 16'h24b3;
	B = 16'h2cff;
	ans = 16'h2e2c;
	#20
	A = 16'h39a9;
	B = 16'h3b73;
	ans = 16'h3e8e;
	#20
	A = 16'hbbf9;
	B = 16'h308d;
	ans = 16'hbad6;
	#20
	A = 16'hb2bd;
	B = 16'hb4fd;
	ans = 16'hb82e;
	#20
	A = 16'h3636;
	B = 16'h3364;
	ans = 16'h38f4;
	#20
	A = 16'h3599;
	B = 16'hba07;
	ans = 16'hb675;
	#20
	A = 16'h37b8;
	B = 16'hb56e;
	ans = 16'h3094;
	#20
	A = 16'hb147;
	B = 16'hb4ba;
	ans = 16'hb75e;
	#20
	A = 16'h38fb;
	B = 16'h383d;
	ans = 16'h3c9c;
	#20
	A = 16'h2c0a;
	B = 16'h2685;
	ans = 16'h2dab;
	#20
	A = 16'h3712;
	B = 16'hb8ad;
	ans = 16'hb090;
	#20
	A = 16'hbae9;
	B = 16'h39ed;
	ans = 16'hafe0;
	#20
	A = 16'hb451;
	B = 16'h374b;
	ans = 16'h31f4;
	#20
	A = 16'hbaca;
	B = 16'hbbd2;
	ans = 16'hbf4e;
	#20
	A = 16'h3305;
	B = 16'h342b;
	ans = 16'h37ae;
	#20
	A = 16'hba94;
	B = 16'hb5cd;
	ans = 16'hbcbd;
	#20
	A = 16'hb9ca;
	B = 16'hbb9a;
	ans = 16'hbeb2;
	#20
	A = 16'h3a7e;
	B = 16'h351c;
	ans = 16'h3c86;
	#20
	A = 16'hb433;
	B = 16'hb388;
	ans = 16'hb7f7;
	#20
	A = 16'h3755;
	B = 16'hbb22;
	ans = 16'hb6ef;
	#20
	A = 16'h2cc7;
	B = 16'hbb40;
	ans = 16'hbaa7;
	#20
	A = 16'hb79e;
	B = 16'hba9d;
	ans = 16'hbd36;
	#20
	A = 16'hb4df;
	B = 16'h382c;
	ans = 16'h32f2;
	#20
	A = 16'h3549;
	B = 16'h3a49;
	ans = 16'h3c77;
	#20
	A = 16'h36ed;
	B = 16'hb9fc;
	ans = 16'hb50b;
	#20
	A = 16'hb5df;
	B = 16'h3a48;
	ans = 16'h36b1;
	#20
	A = 16'hb06f;
	B = 16'h3a4e;
	ans = 16'h3932;
	#20
	A = 16'h3bad;
	B = 16'h32d7;
	ans = 16'h3cb1;
	#20
	A = 16'h3991;
	B = 16'hb831;
	ans = 16'h3180;
	#20
	A = 16'hbaed;
	B = 16'hbae7;
	ans = 16'hbeea;
	#20
	A = 16'hb9dd;
	B = 16'h35e8;
	ans = 16'hb5d2;
	#20
	A = 16'hb50b;
	B = 16'h374b;
	ans = 16'h3080;
	#20
	A = 16'h38ae;
	B = 16'h3a20;
	ans = 16'h3d67;
	#20
	A = 16'hb263;
	B = 16'h3803;
	ans = 16'h34d4;
	#20
	A = 16'h374a;
	B = 16'h31b2;
	ans = 16'h3912;
	#20
	A = 16'hb98e;
	B = 16'had9b;
	ans = 16'hba41;
	#20
	A = 16'hbb11;
	B = 16'h3ac4;
	ans = 16'ha8d0;
	#20
	A = 16'hae76;
	B = 16'h315a;
	ans = 16'h2c3e;
	#20
	A = 16'h2e34;
	B = 16'h3a40;
	ans = 16'h3b06;
	#20
	A = 16'hb5cc;
	B = 16'hba20;
	ans = 16'hbc83;
	#20
	A = 16'h320c;
	B = 16'h39bd;
	ans = 16'h3b40;
	#20
	A = 16'hb955;
	B = 16'h35fe;
	ans = 16'hb4ac;
	#20
	A = 16'hb907;
	B = 16'h3649;
	ans = 16'hb38a;
	#20
	A = 16'hb68c;
	B = 16'h2732;
	ans = 16'hb619;
	#20
	A = 16'hb8af;
	B = 16'hb9b4;
	ans = 16'hbd32;
	#20
	A = 16'hb7b7;
	B = 16'h3044;
	ans = 16'hb595;
	#20
	A = 16'hb922;
	B = 16'hb499;
	ans = 16'hbb6e;
	#20
	A = 16'hb454;
	B = 16'hbac5;
	ans = 16'hbc78;
	#20
	A = 16'h309b;
	B = 16'h3b61;
	ans = 16'h3c44;
	#20
	A = 16'h3a07;
	B = 16'h331e;
	ans = 16'h3bce;
	#20
	A = 16'hba4e;
	B = 16'h3b7d;
	ans = 16'h30bc;
	#20
	A = 16'hb799;
	B = 16'hb7c5;
	ans = 16'hbbaf;
	#20
	A = 16'h3549;
	B = 16'hb850;
	ans = 16'hb2ae;
	#20
	A = 16'hb87b;
	B = 16'h3857;
	ans = 16'ha480;
	#20
	A = 16'h37b1;
	B = 16'hb294;
	ans = 16'h3467;
	#20
	A = 16'h2ac2;
	B = 16'h3987;
	ans = 16'h39f3;
	#20
	A = 16'hb646;
	B = 16'hb937;
	ans = 16'hbc2d;
	#20
	A = 16'hb4ad;
	B = 16'hba5a;
	ans = 16'hbc58;
	#20
	A = 16'h3990;
	B = 16'hba98;
	ans = 16'hb020;
	#20
	A = 16'h2483;
	B = 16'h35f7;
	ans = 16'h363f;
	#20
	A = 16'h3ac5;
	B = 16'hbb75;
	ans = 16'had80;
	#20
	A = 16'h2f90;
	B = 16'hb3b7;
	ans = 16'hafde;
	#20
	A = 16'h3861;
	B = 16'hbb9f;
	ans = 16'hb67c;
	#20
	A = 16'hb9b6;
	B = 16'hb9f8;
	ans = 16'hbdd7;
	#20
	A = 16'hbaeb;
	B = 16'hb83c;
	ans = 16'hbd94;
	#20
	A = 16'h37ec;
	B = 16'h3888;
	ans = 16'h3c3f;
	#20
	A = 16'h38ba;
	B = 16'hb6b5;
	ans = 16'h317e;
	#20
	A = 16'hb6f9;
	B = 16'h3bb4;
	ans = 16'h3838;
	#20
	A = 16'hba33;
	B = 16'hb9da;
	ans = 16'hbe06;
	#20
	A = 16'hb8f7;
	B = 16'h34ac;
	ans = 16'hb542;
	#20
	A = 16'haf64;
	B = 16'hb906;
	ans = 16'hb9f2;
	#20
	A = 16'hb124;
	B = 16'hb15c;
	ans = 16'hb540;
	#20
	A = 16'h3a2a;
	B = 16'hbb71;
	ans = 16'hb11c;
	#20
	A = 16'hb673;
	B = 16'h3443;
	ans = 16'hb060;
	#20
	A = 16'hb759;
	B = 16'h395d;
	ans = 16'h32c2;
	#20
	A = 16'h35ba;
	B = 16'h28d2;
	ans = 16'h3654;
	#20
	A = 16'hb7bb;
	B = 16'h3a0d;
	ans = 16'h345f;
	#20
	A = 16'hb490;
	B = 16'h3ada;
	ans = 16'h3892;
	#20
	A = 16'h316f;
	B = 16'hbaf5;
	ans = 16'hb999;
	#20
	A = 16'h3879;
	B = 16'h3926;
	ans = 16'h3cd0;
	#20
	A = 16'h3999;
	B = 16'hbb4c;
	ans = 16'hb2cc;
	#20
	A = 16'hbbf3;
	B = 16'h37de;
	ans = 16'hb804;
	#20
	A = 16'h347e;
	B = 16'hb8e7;
	ans = 16'hb550;
	#20
	A = 16'h36bf;
	B = 16'h38bc;
	ans = 16'h3c0e;
	#20
	A = 16'hb88a;
	B = 16'hb5c2;
	ans = 16'hbb6b;
	#20
	A = 16'h2372;
	B = 16'hba29;
	ans = 16'hba0b;
	#20
	A = 16'h2a7a;
	B = 16'h3ae5;
	ans = 16'h3b4d;
	#20
	A = 16'h327f;
	B = 16'hb4f0;
	ans = 16'haec2;
	#20
	A = 16'h353e;
	B = 16'h38c6;
	ans = 16'h3b65;
	#20
	A = 16'hbb7b;
	B = 16'h355f;
	ans = 16'hb8cc;
	#20
	A = 16'hb906;
	B = 16'h3884;
	ans = 16'hac10;
	#20
	A = 16'hb65a;
	B = 16'h2f75;
	ans = 16'hb47d;
	#20
	A = 16'h3b7d;
	B = 16'h3801;
	ans = 16'h3dbf;
	#20
	A = 16'hbbc3;
	B = 16'h3834;
	ans = 16'hb71e;
	#20
	A = 16'h36e4;
	B = 16'h386f;
	ans = 16'h3be1;
	#20
	A = 16'hb2db;
	B = 16'h312c;
	ans = 16'haabc;
	#20
	A = 16'hb3d9;
	B = 16'h3483;
	ans = 16'h28b4;
	#20
	A = 16'h2eae;
	B = 16'h3a7d;
	ans = 16'h3b53;
	#20
	A = 16'hb874;
	B = 16'hbbdd;
	ans = 16'hbe28;
	#20
	A = 16'h3b84;
	B = 16'h3858;
	ans = 16'h3dee;
	#20
	A = 16'hb806;
	B = 16'hb4ca;
	ans = 16'hba6b;
	#20
	A = 16'hbb50;
	B = 16'h3b4d;
	ans = 16'h9600;
	#20
	A = 16'h3727;
	B = 16'hb82c;
	ans = 16'hacc4;
	#20
	A = 16'h33a0;
	B = 16'hb307;
	ans = 16'h24c8;
	#20
	A = 16'hb492;
	B = 16'h39fe;
	ans = 16'h376a;
	#20
	A = 16'h3b5b;
	B = 16'h365e;
	ans = 16'h3d45;
	#20
	A = 16'hbb0b;
	B = 16'h39f1;
	ans = 16'hb068;
	#20
	A = 16'h3ad8;
	B = 16'h30b0;
	ans = 16'h3c02;
	#20
	A = 16'hb98e;
	B = 16'hb771;
	ans = 16'hbca3;
	#20
	A = 16'h36f1;
	B = 16'h386b;
	ans = 16'h3be4;
	#20
	A = 16'h3bbe;
	B = 16'h351c;
	ans = 16'h3d26;
	#20
	A = 16'hb0b1;
	B = 16'hb3df;
	ans = 16'hb648;
	#20
	A = 16'h39a1;
	B = 16'hb8f7;
	ans = 16'h2d50;
	#20
	A = 16'hb5fc;
	B = 16'hbbf5;
	ans = 16'hbd7a;
	#20
	A = 16'hb281;
	B = 16'h26e8;
	ans = 16'hb1a4;
	#20
	A = 16'h3bac;
	B = 16'hb7bf;
	ans = 16'h3799;
	#20
	A = 16'hbb03;
	B = 16'h3b4a;
	ans = 16'h2870;
	#20
	A = 16'h3a7e;
	B = 16'h3a40;
	ans = 16'h3e5f;
	#20
	A = 16'hb524;
	B = 16'h3693;
	ans = 16'h2dbc;
	#20
	A = 16'h3957;
	B = 16'hb507;
	ans = 16'h35a7;
	#20
	A = 16'h3aed;
	B = 16'h3842;
	ans = 16'h3d98;
	#20
	A = 16'h3a8b;
	B = 16'h30a3;
	ans = 16'h3bb4;
	#20
	A = 16'h3b0a;
	B = 16'h2c1c;
	ans = 16'h3b8e;
	#20
	A = 16'hb4c4;
	B = 16'hb87d;
	ans = 16'hbadf;
	#20
	A = 16'h3759;
	B = 16'hbbf5;
	ans = 16'hb848;
	#20
	A = 16'h3af1;
	B = 16'h3b65;
	ans = 16'h3f2b;
	#20
	A = 16'hb855;
	B = 16'hb99b;
	ans = 16'hbcf8;
	#20
	A = 16'h2e65;
	B = 16'h3a58;
	ans = 16'h3b25;
	#20
	A = 16'h3a47;
	B = 16'h205b;
	ans = 16'h3a58;
	#20
	A = 16'h2c81;
	B = 16'h3542;
	ans = 16'h3662;
	#20
	A = 16'h3977;
	B = 16'h37f2;
	ans = 16'h3cb8;
	#20
	A = 16'h2e94;
	B = 16'h2827;
	ans = 16'h3054;
	#20
	A = 16'h3b25;
	B = 16'h3a2e;
	ans = 16'h3eaa;
	#20
	A = 16'ha1e3;
	B = 16'h35d9;
	ans = 16'h35aa;
	#20
	A = 16'hb38b;
	B = 16'h37de;
	ans = 16'h3418;
	#20
	A = 16'h3354;
	B = 16'h3ac1;
	ans = 16'h3c4b;
	#20
	A = 16'hb071;
	B = 16'h3943;
	ans = 16'h3827;
	#20
	A = 16'h2eb7;
	B = 16'h3a71;
	ans = 16'h3b48;
	#20
	A = 16'h26d3;
	B = 16'h3bf5;
	ans = 16'h3c16;
	#20
	A = 16'h342f;
	B = 16'h3bad;
	ans = 16'h3ce2;
	#20
	A = 16'hbb15;
	B = 16'h30c2;
	ans = 16'hb9e4;
	#20
	A = 16'h2e86;
	B = 16'ha843;
	ans = 16'h2c64;
	#20
	A = 16'h388c;
	B = 16'hb021;
	ans = 16'h3708;
	#20
	A = 16'hbb5f;
	B = 16'h381c;
	ans = 16'hb686;
	#20
	A = 16'h33ac;
	B = 16'hbb0f;
	ans = 16'hb924;
	#20
	A = 16'hafde;
	B = 16'h2e14;
	ans = 16'ha728;
	#20
	A = 16'hbbbb;
	B = 16'h3b26;
	ans = 16'haca8;
	#20
	A = 16'h3a90;
	B = 16'h32e3;
	ans = 16'h3c24;
	#20
	A = 16'h30d7;
	B = 16'hb8f5;
	ans = 16'hb77e;
	#20
	A = 16'hb839;
	B = 16'hbacd;
	ans = 16'hbd83;
	#20
	A = 16'h3910;
	B = 16'h3b5e;
	ans = 16'h3e37;
	#20
	A = 16'hbbdc;
	B = 16'h3a62;
	ans = 16'hb1e8;
	#20
	A = 16'h3956;
	B = 16'ha876;
	ans = 16'h390f;
	#20
	A = 16'habb1;
	B = 16'h35e0;
	ans = 16'h34ea;
	#20
	A = 16'h3bc4;
	B = 16'h38ba;
	ans = 16'h3e3f;
	#20
	A = 16'h3aa5;
	B = 16'hb94a;
	ans = 16'h316c;
	#20
	A = 16'h3b29;
	B = 16'hb418;
	ans = 16'h391d;
	#20
	A = 16'hb803;
	B = 16'hb97b;
	ans = 16'hbcbf;
	#20
	A = 16'hb638;
	B = 16'h362b;
	ans = 16'h9a80;
	#20
	A = 16'h3821;
	B = 16'hb6c9;
	ans = 16'h2de4;
	#20
	A = 16'h37ca;
	B = 16'hb8f3;
	ans = 16'hb038;
	#20
	A = 16'hbb6d;
	B = 16'h380c;
	ans = 16'hb6c2;
	#20
	A = 16'h39ae;
	B = 16'h3aee;
	ans = 16'h3e4e;
	#20
	A = 16'hb90d;
	B = 16'hb567;
	ans = 16'hbbc0;
	#20
	A = 16'hb084;
	B = 16'h39d7;
	ans = 16'h38b6;
	#20
	A = 16'h374f;
	B = 16'h3b5f;
	ans = 16'h3d83;
	#20
	A = 16'hba31;
	B = 16'h3578;
	ans = 16'hb6ea;
	#20
	A = 16'h3734;
	B = 16'h37fb;
	ans = 16'h3b98;
	#20
	A = 16'hb42f;
	B = 16'h36df;
	ans = 16'h3160;
	#20
	A = 16'hbb97;
	B = 16'h3b92;
	ans = 16'h9900;
	#20
	A = 16'hb976;
	B = 16'h3a9d;
	ans = 16'h309c;
	#20
	A = 16'hb68c;
	B = 16'h393c;
	ans = 16'h33d8;
	#20
	A = 16'hb7b5;
	B = 16'ha25c;
	ans = 16'hb7e8;
	#20
	A = 16'hb2e9;
	B = 16'h3028;
	ans = 16'had82;
	#20
	A = 16'haec6;
	B = 16'hb604;
	ans = 16'hb7b6;
	#20
	A = 16'h3b0b;
	B = 16'h373d;
	ans = 16'h3d55;
	#20
	A = 16'hbbf8;
	B = 16'hb7f5;
	ans = 16'hbdf9;
	#20
	A = 16'hb227;
	B = 16'h382b;
	ans = 16'h3542;
	#20
	A = 16'hbb56;
	B = 16'h3539;
	ans = 16'hb8ba;
	#20
	A = 16'hb440;
	B = 16'hb1ad;
	ans = 16'hb716;
	#20
	A = 16'hadbf;
	B = 16'h3abf;
	ans = 16'h3a07;
	#20
	A = 16'hb8ed;
	B = 16'hba58;
	ans = 16'hbda2;
	#20
	A = 16'h3a55;
	B = 16'hb735;
	ans = 16'h3575;
	#20
	A = 16'hb98d;
	B = 16'hb630;
	ans = 16'hbc52;
	#20
	A = 16'h3a67;
	B = 16'h3060;
	ans = 16'h3b7f;
	#20
	A = 16'hbbec;
	B = 16'h3931;
	ans = 16'hb576;
	#20
	A = 16'h3949;
	B = 16'hb8e7;
	ans = 16'h2a20;
	#20
	A = 16'hac7a;
	B = 16'hb672;
	ans = 16'hb790;
	#20
	A = 16'h34a5;
	B = 16'h3aa9;
	ans = 16'h3c7e;
	#20
	A = 16'h3599;
	B = 16'h39e9;
	ans = 16'h3c5b;
	#20
	A = 16'hb773;
	B = 16'h3241;
	ans = 16'hb452;
	#20
	A = 16'ha741;
	B = 16'h39f8;
	ans = 16'h39be;
	#20
	A = 16'hb688;
	B = 16'hb3e6;
	ans = 16'hb93e;
	#20
	A = 16'h2ac7;
	B = 16'h2fd5;
	ans = 16'h319c;
	#20
	A = 16'hb972;
	B = 16'had0a;
	ans = 16'hba13;
	#20
	A = 16'h37b1;
	B = 16'ha80a;
	ans = 16'h3730;
	#20
	A = 16'h333f;
	B = 16'h334b;
	ans = 16'h3745;
	#20
	A = 16'h33a8;
	B = 16'hae5a;
	ans = 16'h307b;
	#20
	A = 16'h384a;
	B = 16'hb95d;
	ans = 16'hb04c;
	#20
	A = 16'hb806;
	B = 16'ha522;
	ans = 16'hb82f;
	#20
	A = 16'hb551;
	B = 16'h3acb;
	ans = 16'h3822;
	#20
	A = 16'h354e;
	B = 16'hbb09;
	ans = 16'hb862;
	#20
	A = 16'h3be1;
	B = 16'hb7d1;
	ans = 16'h37f1;
	#20
	A = 16'h32a6;
	B = 16'h37d0;
	ans = 16'h3992;
	#20
	A = 16'haff0;
	B = 16'h3891;
	ans = 16'h3726;
	#20
	A = 16'h3b1a;
	B = 16'hab20;
	ans = 16'h3aa8;
	#20
	A = 16'h36ce;
	B = 16'hbaf5;
	ans = 16'hb71c;
	#20
	A = 16'hb85b;
	B = 16'h3a27;
	ans = 16'h3330;
	#20
	A = 16'hb404;
	B = 16'h31ef;
	ans = 16'hac32;
	#20
	A = 16'h36f3;
	B = 16'h3a6f;
	ans = 16'h3cf4;
	#20
	A = 16'h3647;
	B = 16'h2db7;
	ans = 16'h37b5;
	#20
	A = 16'hb326;
	B = 16'hb507;
	ans = 16'hb84d;
	#20
	A = 16'h38a0;
	B = 16'ha85d;
	ans = 16'h385a;
	#20
	A = 16'hb79c;
	B = 16'h3b7b;
	ans = 16'h375a;
	#20
	A = 16'ha83a;
	B = 16'h3235;
	ans = 16'h3126;
	#20
	A = 16'hb470;
	B = 16'hbbfe;
	ans = 16'hbd1b;
	#20
	A = 16'hbba2;
	B = 16'hb811;
	ans = 16'hbdda;
	#20
	A = 16'hb41b;
	B = 16'h32f4;
	ans = 16'ha908;
	#20
	A = 16'h397f;
	B = 16'h3b47;
	ans = 16'h3e63;
	#20
	A = 16'hba00;
	B = 16'hb471;
	ans = 16'hbc1c;
	#20
	A = 16'hb36a;
	B = 16'hb57b;
	ans = 16'hb898;
	#20
	A = 16'hba10;
	B = 16'h3be5;
	ans = 16'h3354;
	#20
	A = 16'h2873;
	B = 16'h2d21;
	ans = 16'h2f5a;
	#20
	A = 16'hbba5;
	B = 16'h39ac;
	ans = 16'hb3e4;
	#20
	A = 16'hb52d;
	B = 16'h38e3;
	ans = 16'h3499;
	#20
	A = 16'h3a40;
	B = 16'h30cf;
	ans = 16'h3b74;
	#20
	A = 16'h3867;
	B = 16'haf05;
	ans = 16'h370d;
	#20
	A = 16'h3b39;
	B = 16'h34cb;
	ans = 16'h3ccf;
	#20
	A = 16'hb655;
	B = 16'h3b77;
	ans = 16'h384c;
	#20
	A = 16'h3b2f;
	B = 16'hb9ed;
	ans = 16'h3108;
	#20
	A = 16'hb982;
	B = 16'hadec;
	ans = 16'hba40;
	#20
	A = 16'hb41e;
	B = 16'h36e6;
	ans = 16'h3190;
	#20
	A = 16'hae69;
	B = 16'h3b7a;
	ans = 16'h3aad;
	#20
	A = 16'h3151;
	B = 16'hb50a;
	ans = 16'hb0c3;
	#20
	A = 16'h3513;
	B = 16'h3440;
	ans = 16'h38aa;
	#20
	A = 16'h2fd9;
	B = 16'h2434;
	ans = 16'h3073;
	#20
	A = 16'hba75;
	B = 16'h349f;
	ans = 16'hb826;
	#20
	A = 16'hab40;
	B = 16'hb55e;
	ans = 16'hb646;
	#20
	A = 16'h39b6;
	B = 16'hbb12;
	ans = 16'hb170;
	#20
	A = 16'h3686;
	B = 16'hb1f1;
	ans = 16'h331b;
	#20
	A = 16'ha7d0;
	B = 16'hb46d;
	ans = 16'hb4ea;
	#20
	A = 16'h3abc;
	B = 16'h3879;
	ans = 16'h3d9a;
	#20
	A = 16'h2d38;
	B = 16'h31d6;
	ans = 16'h3439;
	#20
	A = 16'h2f78;
	B = 16'hb9f8;
	ans = 16'hb909;
	#20
	A = 16'h8e59;
	B = 16'h3a36;
	ans = 16'h3a35;
	#20
	A = 16'hb89b;
	B = 16'h363c;
	ans = 16'hb1f4;
	#20
	A = 16'h3abc;
	B = 16'h3b3b;
	ans = 16'h3efc;
	#20
	A = 16'h38f1;
	B = 16'h35ad;
	ans = 16'h3bc8;
	#20
	A = 16'h3a5d;
	B = 16'hb7f8;
	ans = 16'h34c2;
	#20
	A = 16'h315e;
	B = 16'hb89c;
	ans = 16'hb689;
	#20
	A = 16'hb250;
	B = 16'h35d2;
	ans = 16'h3154;
	#20
	A = 16'hb8cd;
	B = 16'hb918;
	ans = 16'hbcf2;
	#20
	A = 16'hb5bd;
	B = 16'hb940;
	ans = 16'hbc0f;
	#20
	A = 16'h38d2;
	B = 16'h3aef;
	ans = 16'h3de0;
	#20
	A = 16'h391b;
	B = 16'hb81d;
	ans = 16'h2ff0;
	#20
	A = 16'h3a36;
	B = 16'h306c;
	ans = 16'h3b51;
	#20
	A = 16'hb5c1;
	B = 16'h2890;
	ans = 16'hb52f;
	#20
	A = 16'h35b9;
	B = 16'hbb5e;
	ans = 16'hb882;
	#20
	A = 16'hb80e;
	B = 16'hba64;
	ans = 16'hbd39;
	#20
	A = 16'h3aeb;
	B = 16'h3748;
	ans = 16'h3d48;
	#20
	A = 16'h3828;
	B = 16'hbb22;
	ans = 16'hb5f4;
	#20
	A = 16'h3a70;
	B = 16'h390e;
	ans = 16'h3dbf;
	#20
	A = 16'hb9d1;
	B = 16'h38fe;
	ans = 16'hae98;
	#20
	A = 16'h2e7b;
	B = 16'h3623;
	ans = 16'h37c2;
	#20
	A = 16'h3aab;
	B = 16'hbb8c;
	ans = 16'haf08;
	#20
	A = 16'h3439;
	B = 16'h3aa8;
	ans = 16'h3c62;
	#20
	A = 16'hb61d;
	B = 16'hb4e7;
	ans = 16'hb982;
	#20
	A = 16'h365c;
	B = 16'ha937;
	ans = 16'h35b5;
	#20
	A = 16'h3696;
	B = 16'h393e;
	ans = 16'h3c44;
	#20
	A = 16'h3bbf;
	B = 16'hb859;
	ans = 16'h36cc;
	#20
	A = 16'hb9ed;
	B = 16'h33e7;
	ans = 16'hb7e6;
	#20
	A = 16'h37e9;
	B = 16'h3a3e;
	ans = 16'h3d19;
	#20
	A = 16'h39f1;
	B = 16'hb22d;
	ans = 16'h3866;
	#20
	A = 16'h3b02;
	B = 16'h3af2;
	ans = 16'h3efa;
	#20
	A = 16'h2a9b;
	B = 16'hb39a;
	ans = 16'hb1f3;
	#20
	A = 16'hb7f4;
	B = 16'hbb85;
	ans = 16'hbdc0;
	#20
	A = 16'h3478;
	B = 16'h392e;
	ans = 16'h3b6a;
	#20
	A = 16'h386e;
	B = 16'h3a3c;
	ans = 16'h3d55;
	#20
	A = 16'h3273;
	B = 16'hb8da;
	ans = 16'hb67a;
	#20
	A = 16'hb9f4;
	B = 16'h3645;
	ans = 16'hb5a3;
	#20
	A = 16'h33ef;
	B = 16'h309b;
	ans = 16'h3645;
	#20
	A = 16'hb9f4;
	B = 16'h3a08;
	ans = 16'h2100;
	#20
	A = 16'hba7c;
	B = 16'hb12f;
	ans = 16'hbbc8;
	#20
	A = 16'hb4d5;
	B = 16'h3485;
	ans = 16'ha500;
	#20
	A = 16'hbb0d;
	B = 16'hb8ab;
	ans = 16'hbddc;
	#20
	A = 16'h3a9a;
	B = 16'h3216;
	ans = 16'h3c10;
	#20
	A = 16'h3928;
	B = 16'h363a;
	ans = 16'h3c22;
	#20
	A = 16'hbb7a;
	B = 16'h3767;
	ans = 16'hb78d;
	#20
	A = 16'hb4a0;
	B = 16'hba22;
	ans = 16'hbc39;
	#20
	A = 16'h39de;
	B = 16'ha587;
	ans = 16'h39b2;
	#20
	A = 16'h3007;
	B = 16'hb929;
	ans = 16'hb827;
	#20
	A = 16'hb7e4;
	B = 16'hb83a;
	ans = 16'hbc16;
	#20
	A = 16'h33df;
	B = 16'h3593;
	ans = 16'h38c1;
	#20
	A = 16'hb97a;
	B = 16'h3a4a;
	ans = 16'h2e80;
	#20
	A = 16'h293a;
	B = 16'h39ff;
	ans = 16'h3a53;
	#20
	A = 16'hb9c9;
	B = 16'h39c2;
	ans = 16'h9b00;
	#20
	A = 16'h3b70;
	B = 16'h3bbb;
	ans = 16'h3f96;
	#20
	A = 16'h3beb;
	B = 16'h3a55;
	ans = 16'h3f20;
	#20
	A = 16'h3242;
	B = 16'hbbe7;
	ans = 16'hba56;
	#20
	A = 16'hae8c;
	B = 16'h3393;
	ans = 16'h304d;
	#20
	A = 16'hba85;
	B = 16'h39ca;
	ans = 16'hadd8;
	#20
	A = 16'ha06a;
	B = 16'hba1c;
	ans = 16'hba2e;
	#20
	A = 16'hb5ae;
	B = 16'h3ad6;
	ans = 16'h37fe;
	#20
	A = 16'h3011;
	B = 16'hb17f;
	ans = 16'ha9b8;
	#20
	A = 16'h3b40;
	B = 16'hb06b;
	ans = 16'h3a25;
	#20
	A = 16'hb211;
	B = 16'h3b62;
	ans = 16'h39de;
	#20
	A = 16'haeac;
	B = 16'hb69c;
	ans = 16'hb824;
	#20
	A = 16'hb1de;
	B = 16'h3059;
	ans = 16'haa14;
	#20
	A = 16'h304c;
	B = 16'h3953;
	ans = 16'h3a66;
	#20
	A = 16'hbad4;
	B = 16'had3b;
	ans = 16'hbb7b;
	#20
	A = 16'hba3d;
	B = 16'h35b5;
	ans = 16'hb6c5;
	#20
	A = 16'hb087;
	B = 16'h365c;
	ans = 16'h3418;
	#20
	A = 16'h2b72;
	B = 16'hba75;
	ans = 16'hb9fe;
	#20
	A = 16'h3911;
	B = 16'h3883;
	ans = 16'h3cca;
	#20
	A = 16'h3686;
	B = 16'h3a1c;
	ans = 16'h3cb0;
	#20
	A = 16'h3a8f;
	B = 16'hb081;
	ans = 16'h396f;
	#20
	A = 16'hb52d;
	B = 16'h33f2;
	ans = 16'hacd0;
	#20
	A = 16'hb8bb;
	B = 16'h3b62;
	ans = 16'h354e;
	#20
	A = 16'h37c1;
	B = 16'h382f;
	ans = 16'h3c08;
	#20
	A = 16'h35c8;
	B = 16'hbb95;
	ans = 16'hb8b1;
	#20
	A = 16'hb358;
	B = 16'hbb3c;
	ans = 16'hbc89;
	#20
	A = 16'hb869;
	B = 16'hb387;
	ans = 16'hba4b;
	#20
	A = 16'h394e;
	B = 16'hb85d;
	ans = 16'h2f88;
	#20
	A = 16'hba14;
	B = 16'h3b37;
	ans = 16'h308c;
	#20
	A = 16'hba21;
	B = 16'h3b13;
	ans = 16'h2f90;
	#20
	A = 16'h3658;
	B = 16'h326a;
	ans = 16'h38c6;
	#20
	A = 16'hbb09;
	B = 16'h398a;
	ans = 16'hb1fc;
	#20
	A = 16'ha3fb;
	B = 16'h2d7f;
	ans = 16'h2c80;
	#20
	A = 16'h3bee;
	B = 16'h2aeb;
	ans = 16'h3c2e;
	#20
	A = 16'h389e;
	B = 16'hbb4d;
	ans = 16'hb55e;
	#20
	A = 16'hb8d1;
	B = 16'h3031;
	ans = 16'hb78a;
	#20
	A = 16'h280e;
	B = 16'h379c;
	ans = 16'h380f;
	#20
	A = 16'hb139;
	B = 16'hba2d;
	ans = 16'hbb7b;
	#20
	A = 16'h3162;
	B = 16'h3186;
	ans = 16'h3574;
	#20
	A = 16'hb9d9;
	B = 16'hb4c1;
	ans = 16'hbc1d;
	#20
	A = 16'hb8ca;
	B = 16'hba52;
	ans = 16'hbd8e;
	#20
	A = 16'h34dd;
	B = 16'hbafe;
	ans = 16'hb890;
	#20
	A = 16'hb3d2;
	B = 16'h3bb7;
	ans = 16'h39c2;
	#20
	A = 16'h3a48;
	B = 16'h376d;
	ans = 16'h3cff;
	#20
	A = 16'h35a5;
	B = 16'h301e;
	ans = 16'h37b4;
	#20
	A = 16'hbacf;
	B = 16'hb49b;
	ans = 16'hbc8e;
	#20
	A = 16'h2db7;
	B = 16'hb85c;
	ans = 16'hb74a;
	#20
	A = 16'h34b1;
	B = 16'h3673;
	ans = 16'h3992;
	#20
	A = 16'hbb97;
	B = 16'h2b5e;
	ans = 16'hbb21;
	#20
	A = 16'hb9c2;
	B = 16'hb812;
	ans = 16'hbcea;
	#20
	A = 16'h307c;
	B = 16'hba0c;
	ans = 16'hb8ed;
	#20
	A = 16'hb801;
	B = 16'hb909;
	ans = 16'hbc85;
	#20
	A = 16'hb34d;
	B = 16'h35f7;
	ans = 16'h30a1;
	#20
	A = 16'hb50a;
	B = 16'h352c;
	ans = 16'h2040;
	#20
	A = 16'h2d47;
	B = 16'hbb53;
	ans = 16'hbaaa;
	#20
	A = 16'hb553;
	B = 16'h2c2e;
	ans = 16'hb448;
	#20
	A = 16'h3a64;
	B = 16'hb784;
	ans = 16'h3544;
	#20
	A = 16'h3670;
	B = 16'h3b7d;
	ans = 16'h3d5a;
	#20
	A = 16'h3464;
	B = 16'h3779;
	ans = 16'h39ee;
	#20
	A = 16'hb937;
	B = 16'hb992;
	ans = 16'hbd64;
	#20
	A = 16'hb1bd;
	B = 16'h3148;
	ans = 16'ha350;
	#20
	A = 16'h3220;
	B = 16'hb9b6;
	ans = 16'hb82e;
	#20
	A = 16'h38b6;
	B = 16'haf20;
	ans = 16'h37a4;
	#20
	A = 16'h3999;
	B = 16'h232c;
	ans = 16'h39b6;
	#20
	A = 16'haafd;
	B = 16'h31d9;
	ans = 16'h301a;
	#20
	A = 16'h3325;
	B = 16'hb563;
	ans = 16'haf42;
	#20
	A = 16'hb45c;
	B = 16'hbbe6;
	ans = 16'hbd0a;
	#20
	A = 16'h398f;
	B = 16'h2c28;
	ans = 16'h3a14;
	#20
	A = 16'h2d63;
	B = 16'h38e3;
	ans = 16'h398f;
	#20
	A = 16'h3847;
	B = 16'hb205;
	ans = 16'h358c;
	#20
	A = 16'hb4d8;
	B = 16'ha480;
	ans = 16'hb520;
	#20
	A = 16'hb10a;
	B = 16'hb522;
	ans = 16'hb7a7;
	#20
	A = 16'hb2a2;
	B = 16'hba7e;
	ans = 16'hbc13;
	#20
	A = 16'hbb88;
	B = 16'h3a52;
	ans = 16'hb0d8;
	#20
	A = 16'h39f5;
	B = 16'h310e;
	ans = 16'h3b38;
	#20
	A = 16'h3b89;
	B = 16'ha91f;
	ans = 16'h3b37;
	#20
	A = 16'hbae5;
	B = 16'h38e0;
	ans = 16'hb40a;
	#20
	A = 16'ha94c;
	B = 16'hba7e;
	ans = 16'hbad3;
	#20
	A = 16'hb8de;
	B = 16'hb88f;
	ans = 16'hbcb6;
	#20
	A = 16'hb997;
	B = 16'h39bf;
	ans = 16'h2500;
	#20
	A = 16'hbb3b;
	B = 16'hba95;
	ans = 16'hbee8;
	#20
	A = 16'haddc;
	B = 16'h368f;
	ans = 16'h3518;
	#20
	A = 16'h3965;
	B = 16'h35ba;
	ans = 16'h3c21;
	#20
	A = 16'h39b0;
	B = 16'hb831;
	ans = 16'h31fc;
	#20
	A = 16'h3842;
	B = 16'h35ff;
	ans = 16'h3b42;
	#20
	A = 16'h3471;
	B = 16'hb91c;
	ans = 16'hb5c7;
	#20
	A = 16'h3041;
	B = 16'hbb0a;
	ans = 16'hb9fa;
	#20
	A = 16'hb5d2;
	B = 16'hba31;
	ans = 16'hbc8d;
	#20
	A = 16'h2c97;
	B = 16'h3590;
	ans = 16'h36b6;
	#20
	A = 16'h3110;
	B = 16'h396b;
	ans = 16'h3aaf;
	#20
	A = 16'hbac1;
	B = 16'hb071;
	ans = 16'hbbdd;
	#20
	A = 16'h35df;
	B = 16'hba25;
	ans = 16'hb66b;
	#20
	A = 16'hbbc5;
	B = 16'hb850;
	ans = 16'hbe0a;
	#20
	A = 16'hb830;
	B = 16'hb4b5;
	ans = 16'hba8a;
	#20
	A = 16'h369a;
	B = 16'h3b9f;
	ans = 16'h3d76;
	#20
	A = 16'h374b;
	B = 16'h383d;
	ans = 16'h3be2;
	#20
	A = 16'h3409;
	B = 16'h3bc7;
	ans = 16'h3ce6;
	#20
	A = 16'h342d;
	B = 16'hba50;
	ans = 16'hb83a;
	#20
	A = 16'hb779;
	B = 16'hb90f;
	ans = 16'hbc66;
	#20
	A = 16'h3705;
	B = 16'hb6ce;
	ans = 16'h22e0;
	#20
	A = 16'hbbfa;
	B = 16'hb867;
	ans = 16'hbe30;
	#20
	A = 16'hb720;
	B = 16'hb0d3;
	ans = 16'hb8c5;
	#20
	A = 16'h38af;
	B = 16'h36cd;
	ans = 16'h3c0b;
	#20
	A = 16'hb8fb;
	B = 16'h3816;
	ans = 16'haf28;
	#20
	A = 16'hae0e;
	B = 16'h3bdf;
	ans = 16'h3b1d;
	#20
	A = 16'ha214;
	B = 16'had2d;
	ans = 16'hadf0;
	#20
	A = 16'hbb64;
	B = 16'h31d4;
	ans = 16'hb9ef;
	#20
	A = 16'h2d58;
	B = 16'hbbba;
	ans = 16'hbb0f;
	#20
	A = 16'h39d5;
	B = 16'hba94;
	ans = 16'hadf8;
	#20
	A = 16'hb42b;
	B = 16'h3b45;
	ans = 16'h3930;
	#20
	A = 16'h3993;
	B = 16'h386c;
	ans = 16'h3d00;
	#20
	A = 16'hb9ed;
	B = 16'h3b65;
	ans = 16'h31e0;
	#20
	A = 16'h390d;
	B = 16'h3bb0;
	ans = 16'h3e5e;
	#20
	A = 16'hb907;
	B = 16'h3689;
	ans = 16'hb30a;
	#20
	A = 16'hbacf;
	B = 16'h3971;
	ans = 16'hb178;
	#20
	A = 16'hb09e;
	B = 16'hbbdf;
	ans = 16'hbc83;
	#20
	A = 16'h3027;
	B = 16'h34be;
	ans = 16'h36d2;
	#20
	A = 16'h393c;
	B = 16'h3614;
	ans = 16'h3c23;
	#20
	A = 16'h3bef;
	B = 16'ha7ad;
	ans = 16'h3bb2;
	#20
	A = 16'hb41c;
	B = 16'haed1;
	ans = 16'hb5d0;
	#20
	A = 16'hba76;
	B = 16'hba75;
	ans = 16'hbe76;
	#20
	A = 16'hb9f6;
	B = 16'h341b;
	ans = 16'hb7d1;
	#20
	A = 16'hb602;
	B = 16'h356e;
	ans = 16'ha8a0;
	#20
	A = 16'hac9f;
	B = 16'h2309;
	ans = 16'hab7c;
	#20
	A = 16'hb6ff;
	B = 16'h3711;
	ans = 16'h1c80;
	#20
	A = 16'hb9b7;
	B = 16'hb088;
	ans = 16'hbad9;
	#20
	A = 16'h3912;
	B = 16'hb7fc;
	ans = 16'h3050;
	#20
	A = 16'hbabf;
	B = 16'h3b4c;
	ans = 16'h2c68;
	#20
	A = 16'hb996;
	B = 16'hb712;
	ans = 16'hbc90;
	#20
	A = 16'hb881;
	B = 16'h35ca;
	ans = 16'hb270;
	#20
	A = 16'hb4e8;
	B = 16'h39db;
	ans = 16'h36ce;
	#20
	A = 16'h2544;
	B = 16'hb967;
	ans = 16'hb93d;
	#20
	A = 16'hbb45;
	B = 16'h3953;
	ans = 16'hb3c8;
	#20
	A = 16'hb849;
	B = 16'h9d76;
	ans = 16'hb854;
	#20
	A = 16'h38db;
	B = 16'h3708;
	ans = 16'h3c30;
	#20
	A = 16'h2650;
	B = 16'h38e0;
	ans = 16'h3912;
	#20
	A = 16'hb43b;
	B = 16'hb63a;
	ans = 16'hb93a;
	#20
	A = 16'hb0bc;
	B = 16'h38df;
	ans = 16'h3760;
	#20
	A = 16'hb995;
	B = 16'h35ee;
	ans = 16'hb53c;
	#20
	A = 16'hb75d;
	B = 16'hba68;
	ans = 16'hbd0b;
	#20
	A = 16'h3561;
	B = 16'hb7d0;
	ans = 16'hb0de;
	#20
	A = 16'h3638;
	B = 16'hb44c;
	ans = 16'h2fb0;
	#20
	A = 16'h32a5;
	B = 16'h3433;
	ans = 16'h3786;
	#20
	A = 16'h2148;
	B = 16'hba63;
	ans = 16'hba4e;
	#20
	A = 16'hbb36;
	B = 16'h2d71;
	ans = 16'hba88;
	#20
	A = 16'h3844;
	B = 16'h3436;
	ans = 16'h3a5f;
	#20
	A = 16'hba19;
	B = 16'hbbd0;
	ans = 16'hbef4;
	#20
	A = 16'ha0f3;
	B = 16'h2b5b;
	ans = 16'h2a1e;
	#20
	A = 16'h3906;
	B = 16'hb462;
	ans = 16'h35aa;
	#20
	A = 16'h3940;
	B = 16'hb5aa;
	ans = 16'h34d6;
	#20
	A = 16'hbb35;
	B = 16'hb7fe;
	ans = 16'hbd9a;
	#20
	A = 16'had38;
	B = 16'hb83f;
	ans = 16'hb8e6;
	#20
	A = 16'h36e9;
	B = 16'hbba8;
	ans = 16'hb834;
	#20
	A = 16'h32ed;
	B = 16'h1f2b;
	ans = 16'h3326;
	#20
	A = 16'h3bf0;
	B = 16'h3429;
	ans = 16'h3d02;
	#20
	A = 16'h3b9d;
	B = 16'h3205;
	ans = 16'h3c8f;
	#20
	A = 16'h3bcc;
	B = 16'hba19;
	ans = 16'h32cc;
	#20
	A = 16'h2f21;
	B = 16'h392f;
	ans = 16'h3a13;
	#20
	A = 16'h3acb;
	B = 16'h3547;
	ans = 16'h3cb7;
	#20
	A = 16'hb05a;
	B = 16'h3711;
	ans = 16'h34e4;
	#20
	A = 16'h38a1;
	B = 16'h3b42;
	ans = 16'h3df2;
	#20
	A = 16'h353e;
	B = 16'hb453;
	ans = 16'h2b58;
	#20
	A = 16'haf13;
	B = 16'hbbb6;
	ans = 16'hbc4c;
	#20
	A = 16'h36bc;
	B = 16'h35cd;
	ans = 16'h3a44;
	#20
	A = 16'h2d46;
	B = 16'hb47b;
	ans = 16'hb253;
	#20
	A = 16'hb415;
	B = 16'hb4ae;
	ans = 16'hb862;
	#20
	A = 16'hba85;
	B = 16'h380c;
	ans = 16'hb4f2;
	#20
	A = 16'h378a;
	B = 16'h3a71;
	ans = 16'h3d1b;
	#20
	A = 16'h3be6;
	B = 16'h3498;
	ans = 16'h3d19;
	#20
	A = 16'h3af2;
	B = 16'hb8b0;
	ans = 16'h3484;
	#20
	A = 16'hbbef;
	B = 16'h37e8;
	ans = 16'hb7f6;
	#20
	A = 16'hb9e7;
	B = 16'hb3e8;
	ans = 16'hbbe1;
	#20
	A = 16'h3a02;
	B = 16'h3a4f;
	ans = 16'h3e28;
	#20
	A = 16'hb265;
	B = 16'hb49e;
	ans = 16'hb7d0;
	#20
	A = 16'h29f7;
	B = 16'h3ac3;
	ans = 16'h3b22;
	#20
	A = 16'had86;
	B = 16'hbacb;
	ans = 16'hbb7c;
	#20
	A = 16'hb68f;
	B = 16'hb8a7;
	ans = 16'hbbee;
	#20
	A = 16'hbbaf;
	B = 16'hb263;
	ans = 16'hbca4;
	#20
	A = 16'h3430;
	B = 16'h39c5;
	ans = 16'h3bdd;
	#20
	A = 16'h36f7;
	B = 16'hb665;
	ans = 16'h2890;
	#20
	A = 16'hba34;
	B = 16'hba96;
	ans = 16'hbe65;
	#20
	A = 16'haa9d;
	B = 16'hb942;
	ans = 16'hb9ac;
	#20
	A = 16'h39c8;
	B = 16'h389b;
	ans = 16'h3d32;
	#20
	A = 16'h1029;
	B = 16'hb089;
	ans = 16'hb085;
	#20
	A = 16'haf52;
	B = 16'h3b2e;
	ans = 16'h3a44;
	#20
	A = 16'h3302;
	B = 16'h29f1;
	ans = 16'h343f;
	#20
	A = 16'ha8c4;
	B = 16'hac0e;
	ans = 16'hae70;
	#20
	A = 16'hb6e3;
	B = 16'h3a56;
	ans = 16'h35c9;
	#20
	A = 16'h3612;
	B = 16'hb8ca;
	ans = 16'hb304;
	#20
	A = 16'h3a7c;
	B = 16'h389e;
	ans = 16'h3d8d;
	#20
	A = 16'hbb54;
	B = 16'hb40c;
	ans = 16'hbcad;
	#20
	A = 16'h38d0;
	B = 16'h3951;
	ans = 16'h3d10;
	#20
	A = 16'h3744;
	B = 16'h394b;
	ans = 16'h3c76;
	#20
	A = 16'hbaeb;
	B = 16'h33a2;
	ans = 16'hb902;
	#20
	A = 16'h36de;
	B = 16'h3965;
	ans = 16'h3c6a;
	#20
	A = 16'hba72;
	B = 16'hb7b6;
	ans = 16'hbd26;
	#20
	A = 16'hba58;
	B = 16'hb88d;
	ans = 16'hbd72;
	#20
	A = 16'h262d;
	B = 16'hb910;
	ans = 16'hb8df;
	#20
	A = 16'hb29d;
	B = 16'hbad7;
	ans = 16'hbc3f;
	#20
	A = 16'h3621;
	B = 16'h347b;
	ans = 16'h394e;
	#20
	A = 16'hb45b;
	B = 16'h2641;
	ans = 16'hb3ee;
	#20
	A = 16'hb72b;
	B = 16'hb826;
	ans = 16'hbbbc;
	#20
	A = 16'h3299;
	B = 16'h34a5;
	ans = 16'h37f2;
	#20
	A = 16'h3975;
	B = 16'hb6b7;
	ans = 16'h3433;
	#20
	A = 16'hb9d0;
	B = 16'hb5c2;
	ans = 16'hbc58;
	#20
	A = 16'hb6a3;
	B = 16'hb344;
	ans = 16'hb922;
	#20
	A = 16'h2da4;
	B = 16'hb48c;
	ans = 16'hb246;
	#20
	A = 16'haf5d;
	B = 16'h3b80;
	ans = 16'h3a94;
	#20
	A = 16'h3b74;
	B = 16'hb96b;
	ans = 16'h3412;
	#20
	A = 16'haebe;
	B = 16'hbb8c;
	ans = 16'hbc32;
	#20
	A = 16'h316d;
	B = 16'hb944;
	ans = 16'hb7d2;
	#20
	A = 16'had1b;
	B = 16'h3ab2;
	ans = 16'h3a0f;
	#20
	A = 16'hb8a8;
	B = 16'h3077;
	ans = 16'hb714;
	#20
	A = 16'h335a;
	B = 16'h314c;
	ans = 16'h3653;
	#20
	A = 16'h3b28;
	B = 16'h3a8f;
	ans = 16'h3edc;
	#20
	A = 16'h380b;
	B = 16'ha379;
	ans = 16'h37da;
	#20
	A = 16'h38de;
	B = 16'hb8f7;
	ans = 16'ha240;
	#20
	A = 16'hb7d4;
	B = 16'h3a51;
	ans = 16'h34ce;
	#20
	A = 16'hb9b7;
	B = 16'hb371;
	ans = 16'hbb93;
	#20
	A = 16'hb2ef;
	B = 16'hba16;
	ans = 16'hbbd2;
	#20
	A = 16'hb957;
	B = 16'h3a1a;
	ans = 16'h2e18;
	#20
	A = 16'h396e;
	B = 16'h335a;
	ans = 16'h3b44;
	#20
	A = 16'h3541;
	B = 16'hb66e;
	ans = 16'hacb4;
	#20
	A = 16'h390d;
	B = 16'h3ad3;
	ans = 16'h3df0;
	#20
	A = 16'h38c4;
	B = 16'h3b1c;
	ans = 16'h3df0;
	#20
	A = 16'hb409;
	B = 16'h3951;
	ans = 16'h3699;
	#20
	A = 16'hb4bb;
	B = 16'h329b;
	ans = 16'hadb6;
	#20
	A = 16'h392e;
	B = 16'habef;
	ans = 16'h38af;
	#20
	A = 16'h3754;
	B = 16'hba12;
	ans = 16'hb4d0;
	#20
	A = 16'hb372;
	B = 16'hb810;
	ans = 16'hb9ec;
	#20
	A = 16'hb8f3;
	B = 16'h357e;
	ans = 16'hb468;
	#20
	A = 16'hb9d5;
	B = 16'hb5f7;
	ans = 16'hbc68;
	#20
	A = 16'hb2da;
	B = 16'h2c39;
	ans = 16'hb0be;
	#20
	A = 16'h3aec;
	B = 16'h3bae;
	ans = 16'h3f4d;
	#20
	A = 16'h3081;
	B = 16'hae34;
	ans = 16'h299c;
	#20
	A = 16'h389b;
	B = 16'h392f;
	ans = 16'h3ce5;
	#20
	A = 16'h2c51;
	B = 16'hb9c4;
	ans = 16'hb93a;
	#20
	A = 16'h33d4;
	B = 16'hb694;
	ans = 16'hb154;
	#20
	A = 16'hba00;
	B = 16'h34a3;
	ans = 16'hb75d;
	#20
	A = 16'hb97d;
	B = 16'hba8e;
	ans = 16'hbe06;
	#20
	A = 16'h37a7;
	B = 16'h3967;
	ans = 16'h3c9d;
	#20
	A = 16'h3067;
	B = 16'hb64d;
	ans = 16'hb41a;
	#20
	A = 16'h309c;
	B = 16'hba52;
	ans = 16'hb92b;
	#20
	A = 16'h31b1;
	B = 16'h2206;
	ans = 16'h3211;
	#20
	A = 16'hb622;
	B = 16'h33d5;
	ans = 16'hb06f;
	#20
	A = 16'h315a;
	B = 16'h3bda;
	ans = 16'h3c98;
	#20
	A = 16'h3457;
	B = 16'hbafa;
	ans = 16'hb8ce;
	#20
	A = 16'h302c;
	B = 16'h3bb4;
	ans = 16'h3c60;
	#20
	A = 16'hbb90;
	B = 16'hac35;
	ans = 16'hbc0b;
	#20
	A = 16'h3ad4;
	B = 16'h3820;
	ans = 16'h3d7a;
	#20
	A = 16'hb9d8;
	B = 16'h38ca;
	ans = 16'hb038;
	#20
	A = 16'hb6cf;
	B = 16'h3a09;
	ans = 16'h3543;
	#20
	A = 16'h3991;
	B = 16'h367c;
	ans = 16'h3c68;
	#20
	A = 16'hbb7e;
	B = 16'h3655;
	ans = 16'hb854;
	#20
	A = 16'h3020;
	B = 16'h39de;
	ans = 16'h3ae6;
	#20
	A = 16'h3502;
	B = 16'h3bbf;
	ans = 16'h3d20;
	#20
	A = 16'hb254;
	B = 16'hb6f5;
	ans = 16'hb910;
	#20
	A = 16'hb888;
	B = 16'h2623;
	ans = 16'hb857;
	#20
	A = 16'hb99b;
	B = 16'ha584;
	ans = 16'hb9c7;
	#20
	A = 16'h3ac4;
	B = 16'hb391;
	ans = 16'h38e0;
	#20
	A = 16'h3b1e;
	B = 16'hb78e;
	ans = 16'h36ae;
	#20
	A = 16'h3bc6;
	B = 16'h3b94;
	ans = 16'h3fad;
	#20
	A = 16'hb67f;
	B = 16'hb154;
	ans = 16'hb894;
	#20
	A = 16'h344d;
	B = 16'hb446;
	ans = 16'h1700;
	#20
	A = 16'hb404;
	B = 16'h393e;
	ans = 16'h3678;
	#20
	A = 16'h3543;
	B = 16'hb993;
	ans = 16'hb5e3;
	#20
	A = 16'h3aeb;
	B = 16'h3775;
	ans = 16'h3d53;
	#20
	A = 16'hba48;
	B = 16'hb444;
	ans = 16'hbc35;
	#20
	A = 16'h3637;
	B = 16'hbb5a;
	ans = 16'hb83e;
	#20
	A = 16'h2ce2;
	B = 16'hb9dd;
	ans = 16'hb941;
	#20
	A = 16'h1a47;
	B = 16'h3502;
	ans = 16'h350f;
	#20
	A = 16'h3bc4;
	B = 16'h3882;
	ans = 16'h3e23;
	#20
	A = 16'ha68d;
	B = 16'h3b5e;
	ans = 16'h3b2a;
	#20
	A = 16'hb8cf;
	B = 16'hb95a;
	ans = 16'hbd14;
	#20
	A = 16'h3bea;
	B = 16'hba10;
	ans = 16'h3368;
	#20
	A = 16'hb5dc;
	B = 16'h2be9;
	ans = 16'hb4df;
	#20
	A = 16'hba25;
	B = 16'hbb05;
	ans = 16'hbe95;
	#20
	A = 16'hb4cc;
	B = 16'hbb87;
	ans = 16'hbcf6;
	#20
	A = 16'hb643;
	B = 16'h3628;
	ans = 16'h9ec0;
	#20
	A = 16'hb5bd;
	B = 16'hb4b8;
	ans = 16'hb93a;
	#20
	A = 16'ha651;
	B = 16'hbae0;
	ans = 16'hbb13;
	#20
	A = 16'hb559;
	B = 16'hb8d7;
	ans = 16'hbb84;
	#20
	A = 16'h38a2;
	B = 16'h9f81;
	ans = 16'h3893;
	#20
	A = 16'hb324;
	B = 16'h3ba7;
	ans = 16'h39de;
	#20
	A = 16'h39bb;
	B = 16'hb857;
	ans = 16'h3190;
	#20
	A = 16'h396d;
	B = 16'h38c6;
	ans = 16'h3d1a;
	#20
	A = 16'h391c;
	B = 16'hb4b2;
	ans = 16'h3586;
	#20
	A = 16'h3964;
	B = 16'h34e1;
	ans = 16'h3bd4;
	#20
	A = 16'haef2;
	B = 16'h3525;
	ans = 16'h32d1;
	#20
	A = 16'h32d7;
	B = 16'hb86c;
	ans = 16'hb56c;
	#20
	A = 16'h9586;
	B = 16'h9e8e;
	ans = 16'h9ff0;
	#20
	A = 16'h3b40;
	B = 16'hb9ce;
	ans = 16'h31c8;
	#20
	A = 16'hb4d5;
	B = 16'hb6f1;
	ans = 16'hb9e3;
	#20
	A = 16'h2c0d;
	B = 16'h3a17;
	ans = 16'h3a99;
	#20
	A = 16'hb8a2;
	B = 16'h373e;
	ans = 16'hb00c;
	#20
	A = 16'hb02e;
	B = 16'hb6c1;
	ans = 16'hb86c;
	#20
	A = 16'h28e6;
	B = 16'hb955;
	ans = 16'hb907;
	#20
	A = 16'h3475;
	B = 16'h370a;
	ans = 16'h39c0;
	#20
	A = 16'h37bd;
	B = 16'h97cb;
	ans = 16'h37b5;
	#20
	A = 16'hb215;
	B = 16'hb8a9;
	ans = 16'hba2e;
	#20
	A = 16'hb253;
	B = 16'h362f;
	ans = 16'h320b;
	#20
	A = 16'hb953;
	B = 16'hb6de;
	ans = 16'hbc61;
	#20
	A = 16'hb1cd;
	B = 16'h36dd;
	ans = 16'h33ed;
	#20
	A = 16'hb638;
	B = 16'h3ba6;
	ans = 16'h388a;
	#20
	A = 16'hb8c7;
	B = 16'h3aca;
	ans = 16'h3406;
	#20
	A = 16'hb9b2;
	B = 16'hb9fa;
	ans = 16'hbdd6;
	#20
	A = 16'h38aa;
	B = 16'h3ac6;
	ans = 16'h3db8;
	#20
	A = 16'hb03b;
	B = 16'hb97f;
	ans = 16'hba8e;
	#20
	A = 16'hb0d0;
	B = 16'hb676;
	ans = 16'hb86f;
	#20
	A = 16'h37cb;
	B = 16'h395d;
	ans = 16'h3ca1;
	#20
	A = 16'hbb82;
	B = 16'hb693;
	ans = 16'hbd66;
	#20
	A = 16'h3bb6;
	B = 16'hb48b;
	ans = 16'h3970;
	#20
	A = 16'h2525;
	B = 16'hbbeb;
	ans = 16'hbbc2;
	#20
	A = 16'hb8f3;
	B = 16'h337d;
	ans = 16'hb628;
	#20
	A = 16'hb761;
	B = 16'h3021;
	ans = 16'hb550;
	#20
	A = 16'h36e7;
	B = 16'ha64c;
	ans = 16'h3682;
	#20
	A = 16'h3bdf;
	B = 16'h3a2d;
	ans = 16'h3f06;
	#20
	A = 16'h393b;
	B = 16'hbb98;
	ans = 16'hb4ba;
	#20
	A = 16'h3b49;
	B = 16'hbb1f;
	ans = 16'h2540;
	#20
	A = 16'hbb77;
	B = 16'hb4c7;
	ans = 16'hbced;
	#20
	A = 16'hb505;
	B = 16'h3ab9;
	ans = 16'h3836;
	#20
	A = 16'h36a5;
	B = 16'hb32c;
	ans = 16'h321e;
	#20
	A = 16'haf48;
	B = 16'h3827;
	ans = 16'h367c;
	#20
	A = 16'h2cec;
	B = 16'hb857;
	ans = 16'hb773;
	#20
	A = 16'hb262;
	B = 16'hbafe;
	ans = 16'hbc4b;
	#20
	A = 16'hba8c;
	B = 16'h3ba3;
	ans = 16'h305c;
	#20
	A = 16'hb51f;
	B = 16'h3b7a;
	ans = 16'h38ea;
	#20
	A = 16'h2f95;
	B = 16'h350d;
	ans = 16'h36f2;
	#20
	A = 16'h3be3;
	B = 16'haf56;
	ans = 16'h3af8;
	#20
	A = 16'h39da;
	B = 16'h37a2;
	ans = 16'h3cd6;
	#20
	A = 16'hb8fd;
	B = 16'h3bdf;
	ans = 16'h35c4;
	#20
	A = 16'hb68e;
	B = 16'hbbf1;
	ans = 16'hbd9c;
	#20
	A = 16'h3a5d;
	B = 16'hbbfc;
	ans = 16'hb27c;
	#20
	A = 16'hb598;
	B = 16'hb9b2;
	ans = 16'hbc3f;
	#20
	A = 16'hba21;
	B = 16'hb795;
	ans = 16'hbcf6;
	#20
	A = 16'h2d75;
	B = 16'h2a22;
	ans = 16'h3043;
	#20
	A = 16'hb507;
	B = 16'hb79f;
	ans = 16'hba53;
	#20
	A = 16'h32ce;
	B = 16'h3984;
	ans = 16'h3b38;
	#20
	A = 16'hbb6b;
	B = 16'h347c;
	ans = 16'hb92d;
	#20
	A = 16'hbb1f;
	B = 16'h33a8;
	ans = 16'hb935;
	#20
	A = 16'hba01;
	B = 16'h2508;
	ans = 16'hb9d9;
	#20
	A = 16'h3875;
	B = 16'hb905;
	ans = 16'hac80;
	#20
	A = 16'hba59;
	B = 16'h39f3;
	ans = 16'haa60;
	#20
	A = 16'hba10;
	B = 16'hb100;
	ans = 16'hbb50;
	#20
	A = 16'hb804;
	B = 16'h3876;
	ans = 16'h2b20;
	#20
	A = 16'h3a63;
	B = 16'h307e;
	ans = 16'h3b82;
	#20
	A = 16'h3971;
	B = 16'h3638;
	ans = 16'h3c46;
	#20
	A = 16'hb798;
	B = 16'h36da;
	ans = 16'ha9f0;
	#20
	A = 16'h3503;
	B = 16'h394c;
	ans = 16'h3bce;
	#20
	A = 16'h3aac;
	B = 16'h349a;
	ans = 16'h3c7c;
	#20
	A = 16'hb8ae;
	B = 16'hb027;
	ans = 16'hb9b8;
	#20
	A = 16'hb394;
	B = 16'h328b;
	ans = 16'ha824;
	#20
	A = 16'hba0d;
	B = 16'hb3c2;
	ans = 16'hbbfe;
	#20
	A = 16'hba67;
	B = 16'h3bb7;
	ans = 16'h3140;
	#20
	A = 16'h3473;
	B = 16'hb762;
	ans = 16'hb1de;
	#20
	A = 16'hb0c5;
	B = 16'hbba2;
	ans = 16'hbc6a;
	#20
	A = 16'hb74c;
	B = 16'h3952;
	ans = 16'h32b0;
	#20
	A = 16'had49;
	B = 16'h3b65;
	ans = 16'h3abc;
	#20
	A = 16'h2d53;
	B = 16'hba90;
	ans = 16'hb9e6;
	#20
	A = 16'h38bd;
	B = 16'ha2e9;
	ans = 16'h38a1;
	#20
	A = 16'hb507;
	B = 16'h3acf;
	ans = 16'h384c;
	#20
	A = 16'h3b4f;
	B = 16'hb908;
	ans = 16'h348e;
	#20
	A = 16'ha5e8;
	B = 16'h303c;
	ans = 16'h2efe;
	#20
	A = 16'h386a;
	B = 16'hbb6a;
	ans = 16'hb600;
	#20
	A = 16'hb6b6;
	B = 16'h3af3;
	ans = 16'h3730;
	#20
	A = 16'h33e7;
	B = 16'ha8cc;
	ans = 16'h32b4;
	#20
	A = 16'hb995;
	B = 16'h3aa7;
	ans = 16'h3048;
	#20
	A = 16'hb837;
	B = 16'h3bb0;
	ans = 16'h36f2;
	#20
	A = 16'h3afd;
	B = 16'h3b74;
	ans = 16'h3f38;
	#20
	A = 16'h3bb0;
	B = 16'h3ae6;
	ans = 16'h3f4b;
	#20
	A = 16'h3433;
	B = 16'h3bce;
	ans = 16'h3cf4;
	#20
	A = 16'ha41b;
	B = 16'h3835;
	ans = 16'h3814;
	#20
	A = 16'h376f;
	B = 16'hb586;
	ans = 16'h2fa4;
	#20
	A = 16'hb923;
	B = 16'hb48c;
	ans = 16'hbb69;
	#20
	A = 16'h392e;
	B = 16'hb773;
	ans = 16'h31d2;
	#20
	A = 16'hafe8;
	B = 16'hab8d;
	ans = 16'hb1d7;
	#20
	A = 16'h37df;
	B = 16'h39b5;
	ans = 16'h3cd2;
	#20
	A = 16'hb8b5;
	B = 16'hb615;
	ans = 16'hbbc0;
	#20
	A = 16'hb334;
	B = 16'hb87f;
	ans = 16'hba4c;
	#20
	A = 16'hb82a;
	B = 16'h37db;
	ans = 16'ha790;
	#20
	A = 16'h3a69;
	B = 16'hb223;
	ans = 16'h38e0;
	#20
	A = 16'h398a;
	B = 16'h3906;
	ans = 16'h3d48;
	#20
	A = 16'hb71c;
	B = 16'hb9e3;
	ans = 16'hbcb8;
	#20
	A = 16'hb45e;
	B = 16'hb923;
	ans = 16'hbb52;
	#20
	A = 16'h3a7d;
	B = 16'hb4ee;
	ans = 16'h3806;
	#20
	A = 16'h26a0;
	B = 16'hb9fb;
	ans = 16'hb9c6;
	#20
	A = 16'h38ab;
	B = 16'h2d0c;
	ans = 16'h394c;
	#20
	A = 16'hb66f;
	B = 16'h31e1;
	ans = 16'hb2fd;
	#20
	A = 16'h396c;
	B = 16'h2a4c;
	ans = 16'h39d1;
	#20
	A = 16'h3852;
	B = 16'h3aae;
	ans = 16'h3d80;
	#20
	A = 16'hb423;
	B = 16'hba87;
	ans = 16'hbc4c;
	#20
	A = 16'hb6b4;
	B = 16'h3963;
	ans = 16'h3412;
	#20
	A = 16'hbae1;
	B = 16'hbbb3;
	ans = 16'hbf4a;
	#20
	A = 16'h3a59;
	B = 16'hbbb4;
	ans = 16'hb16c;
	#20
	A = 16'hb1e9;
	B = 16'hadc2;
	ans = 16'hb465;
	#20
	A = 16'hb874;
	B = 16'hb771;
	ans = 16'hbc16;
	#20
	A = 16'h3a6b;
	B = 16'h389c;
	ans = 16'h3d84;
	#20
	A = 16'h34c7;
	B = 16'h3bc6;
	ans = 16'h3d15;
	#20
	A = 16'h358f;
	B = 16'hba7c;
	ans = 16'hb769;
	#20
	A = 16'h3858;
	B = 16'hba9a;
	ans = 16'hb484;
	#20
	A = 16'hb7bf;
	B = 16'hbb23;
	ans = 16'hbd81;
	#20
	A = 16'h3255;
	B = 16'h2d67;
	ans = 16'h3484;
	#20
	A = 16'hb377;
	B = 16'h347a;
	ans = 16'h29f4;
	#20
	A = 16'h2e7a;
	B = 16'hb4c9;
	ans = 16'hb255;
	#20
	A = 16'h3328;
	B = 16'h39fd;
	ans = 16'h3bc7;
	#20
	A = 16'hb874;
	B = 16'h38d5;
	ans = 16'h2a10;
	#20
	A = 16'hb9d6;
	B = 16'h39d7;
	ans = 16'h1000;
	#20
	A = 16'h3902;
	B = 16'h3984;
	ans = 16'h3d43;
	#20
	A = 16'h363a;
	B = 16'h386d;
	ans = 16'h3b8a;
	#20
	A = 16'h385d;
	B = 16'hb428;
	ans = 16'h3492;
	#20
	A = 16'hb31f;
	B = 16'hb833;
	ans = 16'hb9fb;
	#20
	A = 16'h39ef;
	B = 16'h3686;
	ans = 16'h3c99;
	#20
	A = 16'h35db;
	B = 16'h30f3;
	ans = 16'h382a;
	#20
	A = 16'h37de;
	B = 16'hbb2c;
	ans = 16'hb67a;
	#20
	A = 16'hb6f9;
	B = 16'haf77;
	ans = 16'hb86b;
	#20
	A = 16'h3a42;
	B = 16'h3193;
	ans = 16'h3ba7;
	#20
	A = 16'h396a;
	B = 16'h347a;
	ans = 16'h3ba7;
	#20
	A = 16'hb27c;
	B = 16'hb45c;
	ans = 16'hb79a;
	#20
	A = 16'hb739;
	B = 16'h28a9;
	ans = 16'hb6a4;
	#20
	A = 16'h32fd;
	B = 16'h36e6;
	ans = 16'h3932;
	#20
	A = 16'hbb45;
	B = 16'h2c80;
	ans = 16'hbab5;
	#20
	A = 16'hba03;
	B = 16'h38cd;
	ans = 16'hb0d8;
	#20
	A = 16'hb583;
	B = 16'hb9fb;
	ans = 16'hbc5e;
	#20
	A = 16'h39c5;
	B = 16'h3201;
	ans = 16'h3b45;
	#20
	A = 16'had6e;
	B = 16'hb41e;
	ans = 16'hb57a;
	#20
	A = 16'hba87;
	B = 16'hbb0e;
	ans = 16'hbeca;
	#20
	A = 16'h35fc;
	B = 16'h37b4;
	ans = 16'h3ad8;
	#20
	A = 16'hbb96;
	B = 16'h34cb;
	ans = 16'hb930;
	#20
	A = 16'h3bd4;
	B = 16'hb95d;
	ans = 16'h34ee;
	#20
	A = 16'h34de;
	B = 16'hb5b1;
	ans = 16'haa98;
	#20
	A = 16'h33ba;
	B = 16'h2c95;
	ans = 16'h3502;
	#20
	A = 16'hb872;
	B = 16'h3a59;
	ans = 16'h339c;
	#20
	A = 16'h3351;
	B = 16'h3a34;
	ans = 16'h3c04;
	#20
	A = 16'h3806;
	B = 16'hb85c;
	ans = 16'ha960;
	#20
	A = 16'h38c4;
	B = 16'h3422;
	ans = 16'h3ad5;
	#20
	A = 16'h3b0d;
	B = 16'h3243;
	ans = 16'h3c4f;
	#20
	A = 16'haefe;
	B = 16'h3752;
	ans = 16'h3592;
	#20
	A = 16'h3971;
	B = 16'h3a79;
	ans = 16'h3df5;
	#20
	A = 16'ha4da;
	B = 16'h34a1;
	ans = 16'h3453;
	#20
	A = 16'h2ec2;
	B = 16'hb936;
	ans = 16'hb85e;
	#20
	A = 16'h30c6;
	B = 16'h398c;
	ans = 16'h3abe;
	#20
	A = 16'ha802;
	B = 16'h3a9e;
	ans = 16'h3a5e;
	#20
	A = 16'h33f9;
	B = 16'h31d0;
	ans = 16'h36e4;
	#20
	A = 16'hb34e;
	B = 16'h3bc7;
	ans = 16'h39f4;
	#20
	A = 16'ha210;
	B = 16'h387a;
	ans = 16'h3862;
	#20
	A = 16'h3bd5;
	B = 16'hb838;
	ans = 16'h373a;
	#20
	A = 16'hbb8e;
	B = 16'h303c;
	ans = 16'hba7f;
	#20
	A = 16'h38e1;
	B = 16'hb6b3;
	ans = 16'h321e;
	#20
	A = 16'hbb09;
	B = 16'h3904;
	ans = 16'hb40a;
	#20
	A = 16'h39aa;
	B = 16'hbb87;
	ans = 16'hb374;
	#20
	A = 16'hbbda;
	B = 16'hbb19;
	ans = 16'hbf7a;
	#20
	A = 16'hb971;
	B = 16'h34a5;
	ans = 16'hb63d;
	#20
	A = 16'hb19a;
	B = 16'h3a9e;
	ans = 16'h3938;
	#20
	A = 16'h309c;
	B = 16'h39fb;
	ans = 16'h3b22;
	#20
	A = 16'h3698;
	B = 16'hb4cf;
	ans = 16'h2f24;
	#20
	A = 16'hacd6;
	B = 16'hab5b;
	ans = 16'hb042;
	#20
	A = 16'hb6e6;
	B = 16'h3b1b;
	ans = 16'h3750;
	#20
	A = 16'h3ae3;
	B = 16'h3165;
	ans = 16'h3c1e;
	#20
	A = 16'h3047;
	B = 16'hb9a2;
	ans = 16'hb890;
	#20
	A = 16'hbaf5;
	B = 16'h33cf;
	ans = 16'hb901;
	#20
	A = 16'hb7fd;
	B = 16'h3a7e;
	ans = 16'h34ff;
	#20
	A = 16'hb00c;
	B = 16'h2dfe;
	ans = 16'ha834;
	#20
	A = 16'hba25;
	B = 16'hba64;
	ans = 16'hbe44;
	#20
	A = 16'hb5f6;
	B = 16'hb7a3;
	ans = 16'hbacc;
	#20
	A = 16'hbb6b;
	B = 16'hb650;
	ans = 16'hbd4a;
	#20
	A = 16'hba6a;
	B = 16'h2e2d;
	ans = 16'hb9a4;
	#20
	A = 16'hb3ee;
	B = 16'h3478;
	ans = 16'h2808;
	#20
	A = 16'had95;
	B = 16'hb976;
	ans = 16'hba29;
	#20
	A = 16'hb8e2;
	B = 16'hba69;
	ans = 16'hbda6;
	#20
	A = 16'hbba0;
	B = 16'h2d24;
	ans = 16'hbafc;
	#20
	A = 16'ha6e3;
	B = 16'hb662;
	ans = 16'hb6d0;
	#20
	A = 16'hb365;
	B = 16'h3839;
	ans = 16'h34c0;
	#20
	A = 16'h2ecb;
	B = 16'hb570;
	ans = 16'hb37a;
	#20
	A = 16'h3a17;
	B = 16'h3ae6;
	ans = 16'h3e7e;
	#20
	A = 16'hb495;
	B = 16'h2e15;
	ans = 16'hb220;
	#20
	A = 16'hb68e;
	B = 16'hba46;
	ans = 16'hbcc6;
	#20
	A = 16'hba2a;
	B = 16'h38bd;
	ans = 16'hb1b4;
	#20
	A = 16'hb7ae;
	B = 16'hbb9b;
	ans = 16'hbdb9;
	#20
	A = 16'h363a;
	B = 16'hba1a;
	ans = 16'hb5fa;
	#20
	A = 16'hb626;
	B = 16'habce;
	ans = 16'hb720;
	#20
	A = 16'h3844;
	B = 16'h38f4;
	ans = 16'h3c9c;
	#20
	A = 16'h389c;
	B = 16'h3477;
	ans = 16'h3ad8;
	#20
	A = 16'hb650;
	B = 16'hba9b;
	ans = 16'hbce2;
	#20
	A = 16'h3a44;
	B = 16'hba4c;
	ans = 16'h9c00;
	#20
	A = 16'h39d3;
	B = 16'hba49;
	ans = 16'hab60;
	#20
	A = 16'hba4f;
	B = 16'h302a;
	ans = 16'hb944;
	#20
	A = 16'h3317;
	B = 16'hbacd;
	ans = 16'hb907;
	#20
	A = 16'h2cd2;
	B = 16'h2bd7;
	ans = 16'h305f;
	#20
	A = 16'hbac1;
	B = 16'hb480;
	ans = 16'hbc80;
	#20
	A = 16'h3617;
	B = 16'h397d;
	ans = 16'h3c44;
	#20
	A = 16'hadaf;
	B = 16'haf47;
	ans = 16'hb27b;
	#20
	A = 16'hace9;
	B = 16'h38c7;
	ans = 16'h382a;
	#20
	A = 16'hba02;
	B = 16'h3974;
	ans = 16'hac70;
	#20
	A = 16'hba15;
	B = 16'h35c9;
	ans = 16'hb661;
	#20
	A = 16'h3902;
	B = 16'h39a2;
	ans = 16'h3d52;
	#20
	A = 16'hbbb8;
	B = 16'h3b7b;
	ans = 16'ha7a0;
	#20
	A = 16'h2b36;
	B = 16'h37b9;
	ans = 16'h3850;
	#20
	A = 16'h362e;
	B = 16'h2cdf;
	ans = 16'h3766;
	#20
	A = 16'h3bb3;
	B = 16'hb805;
	ans = 16'h375c;
	#20
	A = 16'h24ed;
	B = 16'hba6f;
	ans = 16'hba48;
	#20
	A = 16'h3077;
	B = 16'hbbbe;
	ans = 16'hbaa0;
	#20
	A = 16'ha490;
	B = 16'hb9f0;
	ans = 16'hba14;
	#20
	A = 16'hbbe9;
	B = 16'hb8e0;
	ans = 16'hbe64;
	#20
	A = 16'hba91;
	B = 16'hb8a7;
	ans = 16'hbd9c;
	#20
	A = 16'h382a;
	B = 16'hb640;
	ans = 16'h3028;
	#20
	A = 16'h3909;
	B = 16'h2746;
	ans = 16'h3943;
	#20
	A = 16'hb6cc;
	B = 16'hb352;
	ans = 16'hb93a;
	#20
	A = 16'hb85e;
	B = 16'h2e99;
	ans = 16'hb716;
	#20
	A = 16'hb810;
	B = 16'h348e;
	ans = 16'hb324;
	#20
	A = 16'h3a78;
	B = 16'h3be8;
	ans = 16'h3f30;
	#20
	A = 16'hbb66;
	B = 16'hbad0;
	ans = 16'hbf1b;
	#20
	A = 16'hb7fa;
	B = 16'hba74;
	ans = 16'hbd38;
	#20
	A = 16'h3a02;
	B = 16'h350e;
	ans = 16'h3c44;
	#20
	A = 16'h38c5;
	B = 16'h39ff;
	ans = 16'h3d62;
	#20
	A = 16'h3aee;
	B = 16'h34c5;
	ans = 16'h3ca8;
	#20
	A = 16'hb58d;
	B = 16'hba90;
	ans = 16'hbcab;
	#20
	A = 16'ha426;
	B = 16'hb5f6;
	ans = 16'hb638;
	#20
	A = 16'h36f0;
	B = 16'h3b33;
	ans = 16'h3d56;
	#20
	A = 16'h3a0e;
	B = 16'hb026;
	ans = 16'h3904;
	#20
	A = 16'h3527;
	B = 16'ha10b;
	ans = 16'h34ff;
	#20
	A = 16'hbb2a;
	B = 16'hb630;
	ans = 16'hbd21;
	#20
	A = 16'hbbc6;
	B = 16'hb489;
	ans = 16'hbd05;
	#20
	A = 16'hb683;
	B = 16'hb8c1;
	ans = 16'hbc01;
	#20
	A = 16'hb9aa;
	B = 16'ha52c;
	ans = 16'hb9d3;
	#20
	A = 16'h311e;
	B = 16'hb491;
	ans = 16'hb004;
	#20
	A = 16'hb05e;
	B = 16'hba48;
	ans = 16'hbb60;
	#20
	A = 16'h383c;
	B = 16'hb9c0;
	ans = 16'hb210;
	#20
	A = 16'hb8bf;
	B = 16'hb1e4;
	ans = 16'hba38;
	#20
	A = 16'hb465;
	B = 16'h35bf;
	ans = 16'h2d68;
	#20
	A = 16'h2857;
	B = 16'h3921;
	ans = 16'h3966;
	#20
	A = 16'hb97a;
	B = 16'ha3a6;
	ans = 16'hb999;
	#20
	A = 16'h3b14;
	B = 16'h334e;
	ans = 16'h3c74;
	#20
	A = 16'haf76;
	B = 16'h3ab2;
	ans = 16'h39c3;
	#20
	A = 16'h38db;
	B = 16'h3ae8;
	ans = 16'h3de2;
	#20
	A = 16'h35f7;
	B = 16'hb546;
	ans = 16'h2988;
	#20
	A = 16'h3b40;
	B = 16'hb7cc;
	ans = 16'h36b4;
	#20
	A = 16'h36cd;
	B = 16'hb5bd;
	ans = 16'h2c40;
	#20
	A = 16'hb56d;
	B = 16'hb103;
	ans = 16'hb7ee;
	#20
	A = 16'hb61f;
	B = 16'hb9f2;
	ans = 16'hbc81;
	#20
	A = 16'h34a2;
	B = 16'hb6c1;
	ans = 16'hb03e;
	#20
	A = 16'hb756;
	B = 16'hbb60;
	ans = 16'hbd86;
	#20
	A = 16'h3000;
	B = 16'hb3e5;
	ans = 16'hafca;
	#20
	A = 16'hb28c;
	B = 16'hba5a;
	ans = 16'hbbfd;
	#20
	A = 16'hb8d2;
	B = 16'h3a99;
	ans = 16'h331c;
	#20
	A = 16'h357c;
	B = 16'h398d;
	ans = 16'h3c26;
	#20
	A = 16'h365d;
	B = 16'hb5f9;
	ans = 16'h2640;
	#20
	A = 16'hb54b;
	B = 16'h31b9;
	ans = 16'hb0dd;
	#20
	A = 16'h3a1f;
	B = 16'h39cf;
	ans = 16'h3df7;
	#20
	A = 16'hb940;
	B = 16'hb9f8;
	ans = 16'hbd9c;
	#20
	A = 16'h39f7;
	B = 16'hba81;
	ans = 16'hac50;
	#20
	A = 16'h2755;
	B = 16'h3079;
	ans = 16'h3164;
	#20
	A = 16'hb70a;
	B = 16'hb8d7;
	ans = 16'hbc2e;
	#20
	A = 16'h381d;
	B = 16'h2ec2;
	ans = 16'h38f5;
	#20
	A = 16'hb5d4;
	B = 16'h38f2;
	ans = 16'h3410;
	#20
	A = 16'h2e40;
	B = 16'hb240;
	ans = 16'hae40;
	#20
	A = 16'hb48e;
	B = 16'hb9b7;
	ans = 16'hbbfe;
	#20
	A = 16'hb816;
	B = 16'hb961;
	ans = 16'hbcbc;
	#20
	A = 16'hb763;
	B = 16'h3b33;
	ans = 16'h3703;
	#20
	A = 16'hba21;
	B = 16'hb582;
	ans = 16'hbc71;
	#20
	A = 16'hb8bd;
	B = 16'h35d5;
	ans = 16'hb34a;
	#20
	A = 16'h3527;
	B = 16'hbb36;
	ans = 16'hb8a2;
	#20
	A = 16'h389a;
	B = 16'hbbef;
	ans = 16'hb6aa;
	#20
	A = 16'hbb94;
	B = 16'haf2f;
	ans = 16'hbc3d;
	#20
	A = 16'hbb4e;
	B = 16'h3a2e;
	ans = 16'hb080;
	#20
	A = 16'h3658;
	B = 16'h36f7;
	ans = 16'h3aa8;
	#20
	A = 16'h31b6;
	B = 16'h3454;
	ans = 16'h372f;
	#20
	A = 16'hbb04;
	B = 16'h3a2a;
	ans = 16'haed0;
	#20
	A = 16'h3176;
	B = 16'h3a6a;
	ans = 16'h3bc8;
	#20
	A = 16'h3729;
	B = 16'hab2b;
	ans = 16'h3644;
	#20
	A = 16'h349e;
	B = 16'hb80b;
	ans = 16'hb2f0;
	#20
	A = 16'h2fcc;
	B = 16'hb304;
	ans = 16'hae3c;
	#20
	A = 16'h2a6b;
	B = 16'h3900;
	ans = 16'h3967;
	#20
	A = 16'h2c16;
	B = 16'h353b;
	ans = 16'h3640;
	#20
	A = 16'h3b15;
	B = 16'hb5b8;
	ans = 16'h3839;
	#20
	A = 16'h3ba7;
	B = 16'hb933;
	ans = 16'h34e8;
	#20
	A = 16'hb2ae;
	B = 16'hb986;
	ans = 16'hbb32;
	#20
	A = 16'h3899;
	B = 16'h3872;
	ans = 16'h3c86;
	#20
	A = 16'hb492;
	B = 16'h2dae;
	ans = 16'hb24d;
	#20
	A = 16'h33f0;
	B = 16'h309f;
	ans = 16'h3648;
	#20
	A = 16'h3989;
	B = 16'hba01;
	ans = 16'hab80;
	#20
	A = 16'hb44a;
	B = 16'hb6b6;
	ans = 16'hb980;
	#20
	A = 16'hb5ce;
	B = 16'h3adf;
	ans = 16'h37f0;
	#20
	A = 16'hb8f5;
	B = 16'h2b3d;
	ans = 16'hb881;
	#20
	A = 16'h3a78;
	B = 16'h31c1;
	ans = 16'h3be8;
	#20
	A = 16'hb2a5;
	B = 16'h378e;
	ans = 16'h343c;
	#20
	A = 16'h3415;
	B = 16'hb5d1;
	ans = 16'haef0;
	#20
	A = 16'h3bfb;
	B = 16'hb640;
	ans = 16'h38db;
	#20
	A = 16'h3476;
	B = 16'h39ba;
	ans = 16'h3bf5;
	#20
	A = 16'h3174;
	B = 16'hba33;
	ans = 16'hb8d6;
	#20
	A = 16'h3261;
	B = 16'hadf4;
	ans = 16'h2ece;
	#20
	A = 16'hbb44;
	B = 16'hb15d;
	ans = 16'hbc4e;
	#20
	A = 16'hbbcc;
	B = 16'h396e;
	ans = 16'hb4bc;
	#20
	A = 16'hac98;
	B = 16'hb65c;
	ans = 16'hb782;
	#20
	A = 16'h358c;
	B = 16'h1c3d;
	ans = 16'h359d;
	#20
	A = 16'hb9aa;
	B = 16'hba4d;
	ans = 16'hbdfc;
	#20
	A = 16'hb9ac;
	B = 16'ha9cd;
	ans = 16'hba09;
	#20
	A = 16'h3429;
	B = 16'h39b0;
	ans = 16'h3bc4;
	#20
	A = 16'h3968;
	B = 16'h2baf;
	ans = 16'h39e3;
	#20
	A = 16'h39fc;
	B = 16'hba34;
	ans = 16'ha700;
	#20
	A = 16'h3a9b;
	B = 16'hbb10;
	ans = 16'hab50;
	#20
	A = 16'h34a1;
	B = 16'h341b;
	ans = 16'h385e;
	#20
	A = 16'h3472;
	B = 16'hbba0;
	ans = 16'hb967;
	#20
	A = 16'h3a28;
	B = 16'h384b;
	ans = 16'h3d3a;
	#20
	A = 16'hbafc;
	B = 16'hb5b0;
	ans = 16'hbcea;
	#20
	A = 16'h3a90;
	B = 16'hb957;
	ans = 16'h30e4;
	#20
	A = 16'hb825;
	B = 16'hb4ba;
	ans = 16'hba82;
	#20
	A = 16'h334d;
	B = 16'hadaa;
	ans = 16'h3078;
	#20
	A = 16'hbad8;
	B = 16'h3518;
	ans = 16'hb84c;
	#20
	A = 16'h397f;
	B = 16'h28dc;
	ans = 16'h39cd;
	#20
	A = 16'h2b09;
	B = 16'h3a72;
	ans = 16'h3ae3;
	#20
	A = 16'h350b;
	B = 16'h3848;
	ans = 16'h3ace;
	#20
	A = 16'h37ad;
	B = 16'ha80c;
	ans = 16'h372c;
	#20
	A = 16'h3ace;
	B = 16'h3b01;
	ans = 16'h3ee8;
	#20
	A = 16'h32b1;
	B = 16'hb49d;
	ans = 16'had12;
	#20
	A = 16'h312e;
	B = 16'hbb4f;
	ans = 16'hba04;
	#20
	A = 16'hb84c;
	B = 16'h2eb2;
	ans = 16'hb6ec;
	#20
	A = 16'h36ae;
	B = 16'hb563;
	ans = 16'h2d2c;
	#20
	A = 16'h384f;
	B = 16'h38e3;
	ans = 16'h3c99;
	#20
	A = 16'hbae4;
	B = 16'hb985;
	ans = 16'hbe34;
	#20
	A = 16'h38ba;
	B = 16'h2eb4;
	ans = 16'h3990;
	#20
	A = 16'h3a22;
	B = 16'h386e;
	ans = 16'h3d48;
	#20
	A = 16'h2c6c;
	B = 16'hb78b;
	ans = 16'hb670;
	#20
	A = 16'hb812;
	B = 16'h3afc;
	ans = 16'h35d4;
	#20
	A = 16'h38a9;
	B = 16'hbaf6;
	ans = 16'hb49a;
	#20
	A = 16'h3bbf;
	B = 16'h39c9;
	ans = 16'h3ec4;
	#20
	A = 16'hbb6c;
	B = 16'h3450;
	ans = 16'hb944;
	#20
	A = 16'hbab2;
	B = 16'h35ca;
	ans = 16'hb79a;
	#20
	A = 16'h2f65;
	B = 16'h3b3e;
	ans = 16'h3c15;
	#20
	A = 16'h2aba;
	B = 16'h3646;
	ans = 16'h371d;
	#20
	A = 16'hb9dd;
	B = 16'h37e7;
	ans = 16'hb3a6;
	#20
	A = 16'h38eb;
	B = 16'hb8cd;
	ans = 16'h2380;
	#20
	A = 16'h35d3;
	B = 16'h38ac;
	ans = 16'h3b96;
	#20
	A = 16'hb9a9;
	B = 16'h38fa;
	ans = 16'had78;
	#20
	A = 16'h3921;
	B = 16'hbafb;
	ans = 16'hb368;
	#20
	A = 16'h3a0b;
	B = 16'hb8e3;
	ans = 16'h30a0;
	#20
	A = 16'hb6d7;
	B = 16'h2bc3;
	ans = 16'hb5df;
	#20
	A = 16'ha999;
	B = 16'h3b88;
	ans = 16'h3b2e;
	#20
	A = 16'h3609;
	B = 16'h3956;
	ans = 16'h3c2d;
	#20
	A = 16'haf23;
	B = 16'hba59;
	ans = 16'hbb3d;
	#20
	A = 16'h39c8;
	B = 16'hbb4c;
	ans = 16'hb210;
	#20
	A = 16'hba2e;
	B = 16'hb5d7;
	ans = 16'hbc8d;
	#20
	A = 16'hb855;
	B = 16'h3309;
	ans = 16'hb526;
	#20
	A = 16'haee2;
	B = 16'hbbe2;
	ans = 16'hbc5f;
	#20
	A = 16'hba9b;
	B = 16'h39ee;
	ans = 16'had68;
	#20
	A = 16'hbbcf;
	B = 16'h3b7c;
	ans = 16'ha930;
	#20
	A = 16'hbba5;
	B = 16'h3a54;
	ans = 16'hb144;
	#20
	A = 16'h38e7;
	B = 16'hb826;
	ans = 16'h2e08;
	#20
	A = 16'hb5e0;
	B = 16'h3950;
	ans = 16'h34c0;
	#20
	A = 16'h3b11;
	B = 16'h292a;
	ans = 16'h3b64;
	#20
	A = 16'hba7a;
	B = 16'hb897;
	ans = 16'hbd88;
	#20
	A = 16'h381d;
	B = 16'hba29;
	ans = 16'hb418;
	#20
	A = 16'h3b2b;
	B = 16'h3792;
	ans = 16'h3d7a;
	#20
	A = 16'hb664;
	B = 16'h3b4f;
	ans = 16'h381d;
	#20
	A = 16'hb69f;
	B = 16'h38e2;
	ans = 16'h324a;
	#20
	A = 16'h3a36;
	B = 16'hbb1e;
	ans = 16'haf40;
	#20
	A = 16'h3b09;
	B = 16'haa15;
	ans = 16'h3aa8;
	#20
	A = 16'ha407;
	B = 16'ha849;
	ans = 16'haa4c;
	#20
	A = 16'h38f1;
	B = 16'hbb5b;
	ans = 16'hb4d4;
	#20
	A = 16'hb3b0;
	B = 16'h2eee;
	ans = 16'hb039;
	#20
	A = 16'h392c;
	B = 16'hba24;
	ans = 16'hafc0;
	#20
	A = 16'h34dc;
	B = 16'h3019;
	ans = 16'h36e8;
	#20
	A = 16'hb1b6;
	B = 16'h3677;
	ans = 16'h3338;
	#20
	A = 16'h3b72;
	B = 16'h3409;
	ans = 16'h3cbb;
	#20
	A = 16'h34a3;
	B = 16'hb002;
	ans = 16'h3144;
	#20
	A = 16'hab16;
	B = 16'h3ad2;
	ans = 16'h3a61;
	#20
	A = 16'h347c;
	B = 16'h3b5e;
	ans = 16'h3cce;
	#20
	A = 16'had02;
	B = 16'h37e6;
	ans = 16'h36a6;
	#20
	A = 16'h3ab5;
	B = 16'h3532;
	ans = 16'h3ca7;
	#20
	A = 16'h385b;
	B = 16'h3af8;
	ans = 16'h3daa;
	#20
	A = 16'hbb47;
	B = 16'h3acf;
	ans = 16'hab80;
	#20
	A = 16'h3926;
	B = 16'haed9;
	ans = 16'h384b;
	#20
	A = 16'h3a23;
	B = 16'h36c7;
	ans = 16'h3cc3;
	#20
	A = 16'h3ba4;
	B = 16'hb8c8;
	ans = 16'h35b8;
	#20
	A = 16'h3674;
	B = 16'h3a88;
	ans = 16'h3ce1;
	#20
	A = 16'hb59d;
	B = 16'hb84a;
	ans = 16'hbb18;
	#20
	A = 16'hb38f;
	B = 16'h35ab;
	ans = 16'h2f8e;
	#20
	A = 16'hb3ca;
	B = 16'hb847;
	ans = 16'hba3a;
	#20
	A = 16'h2208;
	B = 16'h3afb;
	ans = 16'h3b13;
	#20
	A = 16'h3748;
	B = 16'h2e90;
	ans = 16'h3876;
	#20
	A = 16'hb561;
	B = 16'hb817;
	ans = 16'hbac8;
	#20
	A = 16'hb6d3;
	B = 16'h3236;
	ans = 16'hb370;
	#20
	A = 16'hbbfd;
	B = 16'hb276;
	ans = 16'hbccd;
	#20
	A = 16'h309d;
	B = 16'hb964;
	ans = 16'hb83d;
	#20
	A = 16'hbaa4;
	B = 16'hb46c;
	ans = 16'hbc6d;
	#20
	A = 16'haffc;
	B = 16'h3b5d;
	ans = 16'h3a5e;
	#20
	A = 16'hac88;
	B = 16'hb97e;
	ans = 16'hba0f;
	#20
	A = 16'h3547;
	B = 16'h357f;
	ans = 16'h3963;
	#20
	A = 16'h38f8;
	B = 16'h2c40;
	ans = 16'h3980;
	#20
	A = 16'hb8f1;
	B = 16'h3b19;
	ans = 16'h3450;
	#20
	A = 16'hae47;
	B = 16'hada7;
	ans = 16'hb1f7;
	#20
	A = 16'h3af7;
	B = 16'hb20f;
	ans = 16'h3973;
	#20
	A = 16'h2d54;
	B = 16'h340e;
	ans = 16'h3563;
	#20
	A = 16'h3809;
	B = 16'h3409;
	ans = 16'h3a0e;
	#20
	A = 16'hb3eb;
	B = 16'hb8c6;
	ans = 16'hbac1;
	#20
	A = 16'h3b17;
	B = 16'hb5c4;
	ans = 16'h3835;
	#20
	A = 16'h396e;
	B = 16'hb41b;
	ans = 16'h36c1;
	#20
	A = 16'h398b;
	B = 16'h39d7;
	ans = 16'h3db1;
	#20
	A = 16'haab3;
	B = 16'h3a14;
	ans = 16'h39a9;
	#20
	A = 16'hba17;
	B = 16'hb760;
	ans = 16'hbce4;
	#20
	A = 16'hb41e;
	B = 16'hb7c7;
	ans = 16'hb9f2;
	#20
	A = 16'haf45;
	B = 16'hb958;
	ans = 16'hba41;
	#20
	A = 16'hbba4;
	B = 16'h34c3;
	ans = 16'hb942;
	#20
	A = 16'hac97;
	B = 16'hb89c;
	ans = 16'hb92f;
	#20
	A = 16'h3a31;
	B = 16'hafe4;
	ans = 16'h3934;
	#20
	A = 16'hb8a1;
	B = 16'hb881;
	ans = 16'hbc91;
	#20
	A = 16'h38ac;
	B = 16'h330e;
	ans = 16'h3a70;
	#20
	A = 16'hb019;
	B = 16'hadb9;
	ans = 16'hb2f6;
	#20
	A = 16'hbc00;
	B = 16'h38e8;
	ans = 16'hb630;
	#20
	A = 16'h314b;
	B = 16'h3462;
	ans = 16'h3708;
	#20
	A = 16'h3b9e;
	B = 16'hb9cd;
	ans = 16'h3344;
	#20
	A = 16'hb6da;
	B = 16'hb957;
	ans = 16'hbc62;
	#20
	A = 16'h3b86;
	B = 16'h33b3;
	ans = 16'h3cb9;
	#20
	A = 16'hb786;
	B = 16'hb716;
	ans = 16'hbb4e;
	#20
	A = 16'hb4d7;
	B = 16'hbaf6;
	ans = 16'hbcb1;
	#20
	A = 16'h325e;
	B = 16'h3b83;
	ans = 16'h3c8d;
	#20
	A = 16'hb966;
	B = 16'h36c8;
	ans = 16'hb404;
	#20
	A = 16'h3b5b;
	B = 16'h3b21;
	ans = 16'h3f3e;
	#20
	A = 16'hb949;
	B = 16'h3960;
	ans = 16'h21c0;
	#20
	A = 16'h37bf;
	B = 16'h306d;
	ans = 16'h38fb;
	#20
	A = 16'h3aef;
	B = 16'h276a;
	ans = 16'h3b2a;
	#20
	A = 16'had4d;
	B = 16'hafc6;
	ans = 16'hb28a;
	#20
	A = 16'ha9fa;
	B = 16'h3127;
	ans = 16'h2f51;
	#20
	A = 16'h37a8;
	B = 16'h3b1a;
	ans = 16'h3d77;
	#20
	A = 16'h32f9;
	B = 16'hb592;
	ans = 16'hb02b;
	#20
	A = 16'hba9c;
	B = 16'hb6ce;
	ans = 16'hbd02;
	#20
	A = 16'h292f;
	B = 16'hb319;
	ans = 16'hb1cd;
	#20
	A = 16'h38a8;
	B = 16'hb7ab;
	ans = 16'h2e94;
	#20
	A = 16'hb597;
	B = 16'had34;
	ans = 16'hb6e4;
	#20
	A = 16'h3bc7;
	B = 16'haedd;
	ans = 16'h3aeb;
	#20
	A = 16'h38a0;
	B = 16'h2141;
	ans = 16'h38b5;
	#20
	A = 16'h2f38;
	B = 16'hbaea;
	ans = 16'hba03;
	#20
	A = 16'hab75;
	B = 16'hb637;
	ans = 16'hb726;
	#20
	A = 16'h2ee9;
	B = 16'haf52;
	ans = 16'h9e90;
	#20
	A = 16'h3942;
	B = 16'hb948;
	ans = 16'h9a00;
	#20
	A = 16'hba83;
	B = 16'h3ada;
	ans = 16'h2970;
	#20
	A = 16'hbbe9;
	B = 16'hb8b8;
	ans = 16'hbe50;
	#20
	A = 16'ha6bf;
	B = 16'h395a;
	ans = 16'h3924;
	#20
	A = 16'hb3f6;
	B = 16'hb458;
	ans = 16'hb82a;
	#20
	A = 16'hb752;
	B = 16'hb9b1;
	ans = 16'hbcad;
	#20
	A = 16'hb8cb;
	B = 16'hbb51;
	ans = 16'hbe0e;
	#20
	A = 16'hb638;
	B = 16'hb4a8;
	ans = 16'hb970;
	#20
	A = 16'hb82c;
	B = 16'h386b;
	ans = 16'h27e0;
	#20
	A = 16'h31f0;
	B = 16'h38bc;
	ans = 16'h3a38;
	#20
	A = 16'hb252;
	B = 16'had9e;
	ans = 16'hb490;
	#20
	A = 16'hbb9c;
	B = 16'hb7f8;
	ans = 16'hbdcc;
	#20
	A = 16'hb960;
	B = 16'h3bc9;
	ans = 16'h34d2;
	#20
	A = 16'haf4d;
	B = 16'hbb00;
	ans = 16'hbbea;
	#20
	A = 16'h39fc;
	B = 16'h2913;
	ans = 16'h3a4d;
	#20
	A = 16'h319e;
	B = 16'h3af9;
	ans = 16'h3c30;
	#20
	A = 16'h35a5;
	B = 16'h34cc;
	ans = 16'h3938;
	#20
	A = 16'hb7d8;
	B = 16'hb99d;
	ans = 16'hbcc4;
	#20
	A = 16'hb839;
	B = 16'h3a15;
	ans = 16'h3370;
	#20
	A = 16'hbb40;
	B = 16'h38d8;
	ans = 16'hb4d0;
	#20
	A = 16'hb892;
	B = 16'h3a1e;
	ans = 16'h3230;
	#20
	A = 16'hb665;
	B = 16'hbb38;
	ans = 16'hbd35;
	#20
	A = 16'h3b14;
	B = 16'h28ea;
	ans = 16'h3b63;
	#20
	A = 16'h3bef;
	B = 16'h3a3b;
	ans = 16'h3f15;
	#20
	A = 16'hba35;
	B = 16'hb91b;
	ans = 16'hbda8;
	#20
	A = 16'h309b;
	B = 16'hbb78;
	ans = 16'hba51;
	#20
	A = 16'hb9ed;
	B = 16'hb82f;
	ans = 16'hbd0e;
	#20
	A = 16'hb66e;
	B = 16'habdf;
	ans = 16'hb76a;
	#20
	A = 16'hba3c;
	B = 16'h37fb;
	ans = 16'hb47d;
	#20
	A = 16'hb5f7;
	B = 16'hab75;
	ans = 16'hb6e6;
	#20
	A = 16'hbacb;
	B = 16'h389e;
	ans = 16'hb45a;
	#20
	A = 16'h3661;
	B = 16'hb917;
	ans = 16'hb39a;
	#20
	A = 16'hb5ad;
	B = 16'ha8bd;
	ans = 16'hb645;
	#20
	A = 16'hab08;
	B = 16'hb6cc;
	ans = 16'hb7ad;
	#20
	A = 16'h31f2;
	B = 16'h3a0e;
	ans = 16'h3b8a;
	#20
	A = 16'hb05e;
	B = 16'h3ad3;
	ans = 16'h39bc;
	#20
	A = 16'hb0ff;
	B = 16'h34e1;
	ans = 16'h30c3;
	#20
	A = 16'hba1c;
	B = 16'h3911;
	ans = 16'hb02c;
	#20
	A = 16'hbb4e;
	B = 16'h3852;
	ans = 16'hb5f8;
	#20
	A = 16'hb66b;
	B = 16'h30d4;
	ans = 16'hb401;
	#20
	A = 16'h3ad8;
	B = 16'h3ac9;
	ans = 16'h3ed0;
	#20
	A = 16'haf6c;
	B = 16'hb872;
	ans = 16'hb960;
	#20
	A = 16'hbba7;
	B = 16'h36f0;
	ans = 16'hb82f;
	#20
	A = 16'hb84f;
	B = 16'h341f;
	ans = 16'hb47f;
	#20
	A = 16'hbb91;
	B = 16'h30fa;
	ans = 16'hba52;
	#20
	A = 16'h3b01;
	B = 16'hba75;
	ans = 16'h2c60;
	#20
	A = 16'h38f5;
	B = 16'hba0d;
	ans = 16'hb060;
	#20
	A = 16'h2c4a;
	B = 16'h36b6;
	ans = 16'h37c8;
	#20
	A = 16'hb104;
	B = 16'hadb4;
	ans = 16'hb3de;
	#20
	A = 16'hb5ed;
	B = 16'hb66f;
	ans = 16'hba2e;
	#20
	A = 16'h3582;
	B = 16'h3bc5;
	ans = 16'h3d43;
	#20
	A = 16'h2d8d;
	B = 16'h3208;
	ans = 16'h3467;
	#20
	A = 16'h3397;
	B = 16'hb9ed;
	ans = 16'hb807;
	#20
	A = 16'h3b89;
	B = 16'hbb86;
	ans = 16'h1600;
	#20
	A = 16'hb1fe;
	B = 16'h3988;
	ans = 16'h3808;
	#20
	A = 16'h2d77;
	B = 16'hb979;
	ans = 16'hb8ca;
	#20
	A = 16'h3113;
	B = 16'h3a56;
	ans = 16'h3b9b;
	#20
	A = 16'hb8b4;
	B = 16'hba39;
	ans = 16'hbd76;
	#20
	A = 16'hb280;
	B = 16'h3944;
	ans = 16'h3748;
	#20
	A = 16'h3879;
	B = 16'hb41b;
	ans = 16'h34d7;
	#20
	A = 16'hbb26;
	B = 16'hb3fb;
	ans = 16'hbc92;
	#20
	A = 16'hb61d;
	B = 16'h365d;
	ans = 16'h2400;
	#20
	A = 16'h3a21;
	B = 16'h37e6;
	ans = 16'h3d0a;
	#20
	A = 16'hb4c8;
	B = 16'hb8a6;
	ans = 16'hbb0a;
	#20
	A = 16'hb505;
	B = 16'hb83f;
	ans = 16'hbac2;
	#20
	A = 16'h349f;
	B = 16'h3a2c;
	ans = 16'h3c3e;
	#20
	A = 16'h3a4a;
	B = 16'hb58f;
	ans = 16'h3705;
	#20
	A = 16'h38b7;
	B = 16'hb9c3;
	ans = 16'hb030;
	#20
	A = 16'hb823;
	B = 16'h3702;
	ans = 16'had10;
	#20
	A = 16'hb56f;
	B = 16'hb894;
	ans = 16'hbb4c;
	#20
	A = 16'h3854;
	B = 16'h3941;
	ans = 16'h3cca;
	#20
	A = 16'h3bc2;
	B = 16'h364c;
	ans = 16'h3d74;
	#20
	A = 16'h3a3a;
	B = 16'hb912;
	ans = 16'h30a0;
	#20
	A = 16'hb1c9;
	B = 16'hb9a5;
	ans = 16'hbb17;
	#20
	A = 16'h3b05;
	B = 16'hb6f6;
	ans = 16'h3714;
	#20
	A = 16'hab83;
	B = 16'hb4e5;
	ans = 16'hb5d5;
	#20
	A = 16'hbaf9;
	B = 16'hb49d;
	ans = 16'hbca4;
	#20
	A = 16'h3a57;
	B = 16'h38b1;
	ans = 16'h3d84;
	#20
	A = 16'ha821;
	B = 16'h3952;
	ans = 16'h3910;
	#20
	A = 16'h3aeb;
	B = 16'hb999;
	ans = 16'h3148;
	#20
	A = 16'h3238;
	B = 16'h3aa7;
	ans = 16'h3c1a;
	#20
	A = 16'hb9db;
	B = 16'h3850;
	ans = 16'hb22c;
	#20
	A = 16'hbb8f;
	B = 16'hb8af;
	ans = 16'hbe1f;
	#20
	A = 16'h34b7;
	B = 16'h3818;
	ans = 16'h3a74;
	#20
	A = 16'h3a7c;
	B = 16'hb863;
	ans = 16'h3432;
	#20
	A = 16'hb9d5;
	B = 16'h3624;
	ans = 16'hb586;
	#20
	A = 16'h2a81;
	B = 16'h39a5;
	ans = 16'h3a0d;
	#20
	A = 16'hb91f;
	B = 16'h9fb4;
	ans = 16'hb92e;
	#20
	A = 16'h39a2;
	B = 16'h2c89;
	ans = 16'h3a33;
	#20
	A = 16'h3328;
	B = 16'h3634;
	ans = 16'h38e4;
	#20
	A = 16'h34e3;
	B = 16'h3857;
	ans = 16'h3ac8;
	#20
	A = 16'h34a7;
	B = 16'hb6d5;
	ans = 16'hb05c;
	#20
	A = 16'h3ac5;
	B = 16'hb417;
	ans = 16'h38ba;
	#20
	A = 16'hb0f1;
	B = 16'h3933;
	ans = 16'h37ee;
	#20
	A = 16'hb015;
	B = 16'hba02;
	ans = 16'hbb07;
	#20
	A = 16'h3adb;
	B = 16'h3a30;
	ans = 16'h3e86;
	#20
	A = 16'h3917;
	B = 16'hba9f;
	ans = 16'hb220;
	#20
	A = 16'h38d9;
	B = 16'hb978;
	ans = 16'hacf8;
	#20
	A = 16'hbb2f;
	B = 16'hbbff;
	ans = 16'hbf97;
	#20
	A = 16'h2850;
	B = 16'h36de;
	ans = 16'h3768;
	#20
	A = 16'hbb77;
	B = 16'h31c0;
	ans = 16'hba07;
	#20
	A = 16'haeb9;
	B = 16'h3a38;
	ans = 16'h3961;
	#20
	A = 16'h3b4c;
	B = 16'hb873;
	ans = 16'h35b2;
	#20
	A = 16'hba64;
	B = 16'h31f2;
	ans = 16'hb8e8;
	#20
	A = 16'h39ab;
	B = 16'h30f4;
	ans = 16'h3ae8;
	#20
	A = 16'h395d;
	B = 16'hb99d;
	ans = 16'ha800;
	#20
	A = 16'h2e2e;
	B = 16'hb8b7;
	ans = 16'hb7e2;
	#20
	A = 16'hba03;
	B = 16'hb513;
	ans = 16'hbc46;
	#20
	A = 16'hb443;
	B = 16'hb0a8;
	ans = 16'hb697;
	#20
	A = 16'hb9ee;
	B = 16'h39db;
	ans = 16'ha0c0;
	#20
	A = 16'h371c;
	B = 16'hab9e;
	ans = 16'h3628;
	#20
	A = 16'h3598;
	B = 16'h340b;
	ans = 16'h38d2;
	#20
	A = 16'h3ae1;
	B = 16'h3ba6;
	ans = 16'h3f44;
	#20
	A = 16'hb12c;
	B = 16'h2906;
	ans = 16'hafd5;
	#20
	A = 16'h34f0;
	B = 16'h391d;
	ans = 16'h3b95;
	#20
	A = 16'h33ff;
	B = 16'hb2cc;
	ans = 16'h28cc;
	#20
	A = 16'h356c;
	B = 16'h389f;
	ans = 16'h3b55;
	#20
	A = 16'h3af2;
	B = 16'h1caa;
	ans = 16'h3afb;
	#20
	A = 16'hb4c4;
	B = 16'hba2e;
	ans = 16'hbc48;
	#20
	A = 16'haf9b;
	B = 16'hb826;
	ans = 16'hb919;
	#20
	A = 16'hb987;
	B = 16'h3762;
	ans = 16'hb358;
	#20
	A = 16'hb023;
	B = 16'hb830;
	ans = 16'hb939;
	#20
	A = 16'hb062;
	B = 16'h3971;
	ans = 16'h3858;
	#20
	A = 16'h3a03;
	B = 16'h39d3;
	ans = 16'h3deb;
	#20
	A = 16'hba65;
	B = 16'h35f8;
	ans = 16'hb6d2;
	#20
	A = 16'hadc0;
	B = 16'h3456;
	ans = 16'h31cc;
	#20
	A = 16'h35b2;
	B = 16'h38a0;
	ans = 16'h3b79;
	#20
	A = 16'h370e;
	B = 16'hb81a;
	ans = 16'hac98;
	#20
	A = 16'hb3e8;
	B = 16'hb739;
	ans = 16'hb996;
	#20
	A = 16'h3bca;
	B = 16'hbb01;
	ans = 16'h2e48;
	#20
	A = 16'h386f;
	B = 16'h2dfd;
	ans = 16'h392f;
	#20
	A = 16'hb851;
	B = 16'hb9ed;
	ans = 16'hbd1f;
	#20
	A = 16'hb2f3;
	B = 16'hb867;
	ans = 16'hba24;
	#20
	A = 16'hb5b2;
	B = 16'hb907;
	ans = 16'hbbe0;
	#20
	A = 16'hbb7c;
	B = 16'h3956;
	ans = 16'hb44c;
	#20
	A = 16'h3a40;
	B = 16'h3bd6;
	ans = 16'h3f0b;
	#20
	A = 16'hb62a;
	B = 16'hba9a;
	ans = 16'hbcd8;
	#20
	A = 16'h3b7b;
	B = 16'h3807;
	ans = 16'h3dc1;
	#20
	A = 16'hb6b0;
	B = 16'h39f1;
	ans = 16'h3532;
	#20
	A = 16'hb525;
	B = 16'hbb62;
	ans = 16'hbcfa;
	#20
	A = 16'h3618;
	B = 16'hb7dc;
	ans = 16'haf10;
	#20
	A = 16'h382c;
	B = 16'hbb14;
	ans = 16'hb5d0;
	#20
	A = 16'h2d17;
	B = 16'hb778;
	ans = 16'hb632;
	#20
	A = 16'hb93b;
	B = 16'h3312;
	ans = 16'hb6ed;
	#20
	A = 16'h32a0;
	B = 16'h3783;
	ans = 16'h396a;
	#20
	A = 16'h3677;
	B = 16'hb7b9;
	ans = 16'had08;
	#20
	A = 16'hbad2;
	B = 16'h2b93;
	ans = 16'hba59;
	#20
	A = 16'hb188;
	B = 16'h35a9;
	ans = 16'h31ca;
	#20
	A = 16'h2cda;
	B = 16'hb594;
	ans = 16'hb45e;
	#20
	A = 16'hb43b;
	B = 16'h39c4;
	ans = 16'h374d;
	#20
	A = 16'hb50a;
	B = 16'hb62b;
	ans = 16'hb99a;
	#20
	A = 16'hb82f;
	B = 16'h3b0d;
	ans = 16'h35bc;
	#20
	A = 16'h3934;
	B = 16'hb84a;
	ans = 16'h2f50;
	#20
	A = 16'h358b;
	B = 16'hbbcd;
	ans = 16'hb908;
	#20
	A = 16'h2c98;
	B = 16'h3bbb;
	ans = 16'h3c27;
	#20
	A = 16'h38d5;
	B = 16'h3937;
	ans = 16'h3d06;
	#20
	A = 16'h3831;
	B = 16'h392c;
	ans = 16'h3cae;
	#20
	A = 16'hb63f;
	B = 16'hbac6;
	ans = 16'hbcf3;
	#20
	A = 16'hb0f0;
	B = 16'h3876;
	ans = 16'h3674;
	#20
	A = 16'hb5e8;
	B = 16'h3bad;
	ans = 16'h38b9;
	#20
	A = 16'hba67;
	B = 16'hb9f4;
	ans = 16'hbe2e;
	#20
	A = 16'ha8d1;
	B = 16'h3bff;
	ans = 16'h3bb2;
	#20
	A = 16'hb8ad;
	B = 16'h325e;
	ans = 16'hb62b;
	#20
	A = 16'hb3d5;
	B = 16'h33b5;
	ans = 16'h9c00;
	#20
	A = 16'h395f;
	B = 16'hb836;
	ans = 16'h30a4;
	#20
	A = 16'hb755;
	B = 16'h35ec;
	ans = 16'hada4;
	#20
	A = 16'h3b49;
	B = 16'hb4b6;
	ans = 16'h38ee;
	#20
	A = 16'h2cc8;
	B = 16'h39e5;
	ans = 16'h3a7e;
	#20
	A = 16'hb885;
	B = 16'hb4ab;
	ans = 16'hbada;
	#20
	A = 16'ha7a9;
	B = 16'hb226;
	ans = 16'hb31b;
	#20
	A = 16'hac90;
	B = 16'h341c;
	ans = 16'h31f0;
	#20
	A = 16'h3768;
	B = 16'hba5a;
	ans = 16'hb54c;
	#20
	A = 16'h34ec;
	B = 16'haa12;
	ans = 16'h342a;
	#20
	A = 16'hbbfd;
	B = 16'h3711;
	ans = 16'hb874;
	#20
	A = 16'h3028;
	B = 16'h3873;
	ans = 16'h397d;
	#20
	A = 16'h3625;
	B = 16'hb6ca;
	ans = 16'ha928;
	#20
	A = 16'hb59e;
	B = 16'hb05a;
	ans = 16'hb7cb;
	#20
	A = 16'h38e0;
	B = 16'hbb71;
	ans = 16'hb522;
	#20
	A = 16'hb982;
	B = 16'ha9c9;
	ans = 16'hb9df;
	#20
	A = 16'hbb38;
	B = 16'hb4f5;
	ans = 16'hbcd9;
	#20
	A = 16'h3a6d;
	B = 16'h2c06;
	ans = 16'h3aee;
	#20
	A = 16'hbad7;
	B = 16'hae27;
	ans = 16'hbb9c;
	#20
	A = 16'hb3d0;
	B = 16'hbbcc;
	ans = 16'hbce0;
	#20
	A = 16'habd4;
	B = 16'h381a;
	ans = 16'h373a;
	#20
	A = 16'ha982;
	B = 16'h3530;
	ans = 16'h3480;
	#20
	A = 16'h28ca;
	B = 16'h39e9;
	ans = 16'h3a36;
	#20
	A = 16'h393e;
	B = 16'hb79b;
	ans = 16'h31c2;
	#20
	A = 16'hbbbb;
	B = 16'hb911;
	ans = 16'hbe66;
	#20
	A = 16'hbbf0;
	B = 16'h39d5;
	ans = 16'hb436;
	#20
	A = 16'h3a99;
	B = 16'h3796;
	ans = 16'h3d32;
	#20
	A = 16'hba95;
	B = 16'h39f6;
	ans = 16'hacf8;
	#20
	A = 16'hb848;
	B = 16'habcc;
	ans = 16'hb8c5;
	#20
	A = 16'hb3e9;
	B = 16'hb183;
	ans = 16'hb6b6;
	#20
	A = 16'hb89a;
	B = 16'h3b4d;
	ans = 16'h3566;
	#20
	A = 16'hbb6d;
	B = 16'h34da;
	ans = 16'hb900;
	#20
	A = 16'hb844;
	B = 16'hb783;
	ans = 16'hbc03;
	#20
	A = 16'h3a72;
	B = 16'hb86a;
	ans = 16'h3410;
	#20
	A = 16'hb0a8;
	B = 16'h37ad;
	ans = 16'h3559;
	#20
	A = 16'hba35;
	B = 16'hb99f;
	ans = 16'hbdea;
	#20
	A = 16'h3602;
	B = 16'hb797;
	ans = 16'hae54;
	#20
	A = 16'hbb89;
	B = 16'hb8f0;
	ans = 16'hbe3c;
	#20
	A = 16'h393b;
	B = 16'h3919;
	ans = 16'h3d2a;
	#20
	A = 16'hb79a;
	B = 16'hb9dc;
	ans = 16'hbcd4;
	#20
	A = 16'hb2da;
	B = 16'h312d;
	ans = 16'haab4;
	#20
	A = 16'h3639;
	B = 16'hb7a1;
	ans = 16'hada0;
	#20
	A = 16'h3907;
	B = 16'hb815;
	ans = 16'h2f90;
	#20
	A = 16'hbae3;
	B = 16'hb3de;
	ans = 16'hbc6d;
	#20
	A = 16'h2d68;
	B = 16'ha8e5;
	ans = 16'h29eb;
	#20
	A = 16'hbc00;
	B = 16'h28cd;
	ans = 16'hbbb3;
	#20
	A = 16'h3947;
	B = 16'hb4dc;
	ans = 16'h35b2;
	#20
	A = 16'hb9c1;
	B = 16'h3be1;
	ans = 16'h3440;
	#20
	A = 16'h32a0;
	B = 16'hacf5;
	ans = 16'h3026;
	#20
	A = 16'h392f;
	B = 16'h3a92;
	ans = 16'h3de0;
	#20
	A = 16'hbb91;
	B = 16'h39be;
	ans = 16'hb34c;
	#20
	A = 16'hb7e3;
	B = 16'hb4ec;
	ans = 16'hba68;
	#20
	A = 16'h358d;
	B = 16'hb4f7;
	ans = 16'h28b0;
	#20
	A = 16'h3be2;
	B = 16'hba80;
	ans = 16'h3188;
	#20
	A = 16'hba57;
	B = 16'h3a4f;
	ans = 16'h9c00;
	#20
	A = 16'hbbad;
	B = 16'h29d4;
	ans = 16'hbb50;
	#20
	A = 16'hbba2;
	B = 16'hb02d;
	ans = 16'hbc57;
	#20
	A = 16'h344f;
	B = 16'hb000;
	ans = 16'h309e;
	#20
	A = 16'h3563;
	B = 16'h37f8;
	ans = 16'h3aae;
	#20
	A = 16'h3b8b;
	B = 16'h307f;
	ans = 16'h3c55;
	#20
	A = 16'hb6bb;
	B = 16'hb9ef;
	ans = 16'hbca6;
	#20
	A = 16'hb8a4;
	B = 16'h2dcf;
	ans = 16'hb7d4;
	#20
	A = 16'h39ac;
	B = 16'hb495;
	ans = 16'h36c3;
	#20
	A = 16'h32ea;
	B = 16'h396b;
	ans = 16'h3b26;
	#20
	A = 16'h3a78;
	B = 16'hb9b9;
	ans = 16'h2df8;
	#20
	A = 16'hb92f;
	B = 16'h30e4;
	ans = 16'hb7ec;
	#20
	A = 16'hba82;
	B = 16'hbb64;
	ans = 16'hbef3;
	#20
	A = 16'hb478;
	B = 16'h357c;
	ans = 16'h2c10;
	#20
	A = 16'hba31;
	B = 16'hba42;
	ans = 16'hbe3a;
	#20
	A = 16'hb8de;
	B = 16'hb729;
	ans = 16'hbc39;
	#20
	A = 16'h3510;
	B = 16'hb6d8;
	ans = 16'haf20;
	#20
	A = 16'hb821;
	B = 16'hb87a;
	ans = 16'hbc4e;
	#20
	A = 16'had8e;
	B = 16'habe2;
	ans = 16'hb0c0;
	#20
	A = 16'haf2a;
	B = 16'hb4b3;
	ans = 16'hb67e;
	#20
	A = 16'h386a;
	B = 16'hb671;
	ans = 16'h30c6;
	#20
	A = 16'h3aae;
	B = 16'hbb12;
	ans = 16'haa40;
	#20
	A = 16'h3a7b;
	B = 16'h9932;
	ans = 16'h3a76;
	#20
	A = 16'hb7c3;
	B = 16'hbbeb;
	ans = 16'hbde6;
	#20
	A = 16'h3a75;
	B = 16'hb899;
	ans = 16'h3370;
	#20
	A = 16'hb855;
	B = 16'h2c1e;
	ans = 16'hb7a2;
	#20
	A = 16'hb74e;
	B = 16'hb8f4;
	ans = 16'hbc4e;
	#20
	A = 16'hba18;
	B = 16'h3614;
	ans = 16'hb61c;
	#20
	A = 16'hafc3;
	B = 16'h37f7;
	ans = 16'h3606;
	#20
	A = 16'h35a6;
	B = 16'hb39e;
	ans = 16'h2f5c;
	#20
	A = 16'hb9b3;
	B = 16'h30d5;
	ans = 16'hb87e;
	#20
	A = 16'h396b;
	B = 16'h3b88;
	ans = 16'h3e7a;
	#20
	A = 16'hb7d0;
	B = 16'hbb51;
	ans = 16'hbd9c;
	#20
	A = 16'h3ad0;
	B = 16'hb159;
	ans = 16'h397a;
	#20
	A = 16'h1e07;
	B = 16'h391e;
	ans = 16'h392a;
	#20
	A = 16'h2f79;
	B = 16'haf33;
	ans = 16'h1c60;
	#20
	A = 16'ha86e;
	B = 16'hb8ad;
	ans = 16'hb8f4;
	#20
	A = 16'h3914;
	B = 16'h2b1e;
	ans = 16'h3986;
	#20
	A = 16'h3b20;
	B = 16'h2b79;
	ans = 16'h3b98;
	#20
	A = 16'h347c;
	B = 16'h11e4;
	ans = 16'h347f;
	#20
	A = 16'hb156;
	B = 16'h3a86;
	ans = 16'h3930;
	#20
	A = 16'h3492;
	B = 16'h3a5e;
	ans = 16'h3c54;
	#20
	A = 16'hba8a;
	B = 16'h35bf;
	ans = 16'hb755;
	#20
	A = 16'h385c;
	B = 16'h3ac4;
	ans = 16'h3d90;
	#20
	A = 16'h28e9;
	B = 16'hb53b;
	ans = 16'hb49e;
	#20
	A = 16'hb515;
	B = 16'h347e;
	ans = 16'ha8b8;
	#20
	A = 16'h209e;
	B = 16'hb8f0;
	ans = 16'hb8de;
	#20
	A = 16'hade0;
	B = 16'h34d8;
	ans = 16'h32c0;
	#20
	A = 16'h3be9;
	B = 16'haedf;
	ans = 16'h3b0d;
	#20
	A = 16'hba94;
	B = 16'hba74;
	ans = 16'hbe84;
	#20
	A = 16'h39bd;
	B = 16'h339e;
	ans = 16'h3ba4;
	#20
	A = 16'h30fc;
	B = 16'hb9b5;
	ans = 16'hb876;
	#20
	A = 16'hb0fa;
	B = 16'hb829;
	ans = 16'hb968;
	#20
	A = 16'hb36b;
	B = 16'h3457;
	ans = 16'h290c;
	#20
	A = 16'h3be6;
	B = 16'ha1d7;
	ans = 16'h3bcf;
	#20
	A = 16'hb93f;
	B = 16'h359f;
	ans = 16'hb4df;
	#20
	A = 16'h298d;
	B = 16'h303e;
	ans = 16'h31a1;
	#20
	A = 16'had21;
	B = 16'hac18;
	ans = 16'hb09c;
	#20
	A = 16'hb12f;
	B = 16'h3a75;
	ans = 16'h3929;
	#20
	A = 16'hb186;
	B = 16'h35b7;
	ans = 16'h31e8;
	#20
	A = 16'h35b4;
	B = 16'hb912;
	ans = 16'hb470;
	#20
	A = 16'hb130;
	B = 16'ha298;
	ans = 16'hb19a;
	#20
	A = 16'hb8e7;
	B = 16'h38fa;
	ans = 16'h20c0;
	#20
	A = 16'h3025;
	B = 16'h39a9;
	ans = 16'h3ab2;
	#20
	A = 16'hb120;
	B = 16'hb213;
	ans = 16'hb59a;
	#20
	A = 16'hb699;
	B = 16'h37f6;
	ans = 16'h2d74;
	#20
	A = 16'h3ae5;
	B = 16'hba68;
	ans = 16'h2bd0;
	#20
	A = 16'hb098;
	B = 16'hab94;
	ans = 16'hb27d;
	#20
	A = 16'hbbd5;
	B = 16'h3aae;
	ans = 16'hb09c;
	#20
	A = 16'h39aa;
	B = 16'h2d21;
	ans = 16'h3a4e;
	#20
	A = 16'h351b;
	B = 16'hb407;
	ans = 16'h2c50;
	#20
	A = 16'h3ad8;
	B = 16'hb9ff;
	ans = 16'h2ec8;
	#20
	A = 16'hb90b;
	B = 16'hb965;
	ans = 16'hbd38;
	#20
	A = 16'hb52a;
	B = 16'h2f2b;
	ans = 16'hb2be;
	#20
	A = 16'h3866;
	B = 16'hb084;
	ans = 16'h368a;
	#20
	A = 16'h2ccf;
	B = 16'hbb6b;
	ans = 16'hbad1;
	#20
	A = 16'h3a1f;
	B = 16'hba60;
	ans = 16'ha810;
	#20
	A = 16'h2b6c;
	B = 16'h3b29;
	ans = 16'h3ba0;
	#20
	A = 16'haacb;
	B = 16'hb464;
	ans = 16'hb53d;
	#20
	A = 16'hb41f;
	B = 16'h3141;
	ans = 16'hadfa;
	#20
	A = 16'hb679;
	B = 16'h3969;
	ans = 16'h3459;
	#20
	A = 16'hb53a;
	B = 16'hb229;
	ans = 16'hb827;
	#20
	A = 16'h394d;
	B = 16'h3ad9;
	ans = 16'h3e13;
	#20
	A = 16'hba01;
	B = 16'hba5d;
	ans = 16'hbe2f;
	#20
	A = 16'hb664;
	B = 16'hb8d0;
	ans = 16'hbc01;
	#20
	A = 16'h3b93;
	B = 16'hb464;
	ans = 16'h3961;
	#20
	A = 16'hb988;
	B = 16'h39c2;
	ans = 16'h2740;
	#20
	A = 16'h39a4;
	B = 16'hbb04;
	ans = 16'hb180;
	#20
	A = 16'hb520;
	B = 16'h391c;
	ans = 16'h3518;
	#20
	A = 16'hb912;
	B = 16'hae80;
	ans = 16'hb9e2;
	#20
	A = 16'h3725;
	B = 16'hba68;
	ans = 16'hb5ab;
	#20
	A = 16'h39d4;
	B = 16'hbbb3;
	ans = 16'hb37c;
	#20
	A = 16'h2b2a;
	B = 16'h3804;
	ans = 16'h3877;
	#20
	A = 16'hb77c;
	B = 16'h35b7;
	ans = 16'haf14;
	#20
	A = 16'h3ac5;
	B = 16'hbb76;
	ans = 16'had88;
	#20
	A = 16'hb9fd;
	B = 16'hb83c;
	ans = 16'hbd1c;
	#20
	A = 16'h3755;
	B = 16'h3594;
	ans = 16'h3a74;
	#20
	A = 16'hb999;
	B = 16'hb99f;
	ans = 16'hbd9c;
	#20
	A = 16'hbb2d;
	B = 16'hb5bd;
	ans = 16'hbd06;
	#20
	A = 16'hbba3;
	B = 16'hb823;
	ans = 16'hbde3;
	#20
	A = 16'h2fc8;
	B = 16'hb0af;
	ans = 16'ha658;
	#20
	A = 16'hbae9;
	B = 16'h3bab;
	ans = 16'h2e10;
	#20
	A = 16'hb5a6;
	B = 16'hb437;
	ans = 16'hb8ee;
	#20
	A = 16'hba59;
	B = 16'h3817;
	ans = 16'hb484;
	#20
	A = 16'hb22f;
	B = 16'hb037;
	ans = 16'hb533;
	#20
	A = 16'hb861;
	B = 16'h2ede;
	ans = 16'hb70a;
	#20
	A = 16'h37bc;
	B = 16'h3804;
	ans = 16'h3be2;
	#20
	A = 16'hb966;
	B = 16'hbb5f;
	ans = 16'hbe62;
	#20
	A = 16'hb571;
	B = 16'h3b3a;
	ans = 16'h3882;
	#20
	A = 16'hb29c;
	B = 16'h3451;
	ans = 16'h2c0c;
	#20
	A = 16'h38cb;
	B = 16'h3502;
	ans = 16'h3b4c;
	#20
	A = 16'hb6f6;
	B = 16'hb8ce;
	ans = 16'hbc24;
	#20
	A = 16'hb7e6;
	B = 16'hba4d;
	ans = 16'hbd20;
	#20
	A = 16'hba65;
	B = 16'hb99d;
	ans = 16'hbe01;
	#20
	A = 16'h900a;
	B = 16'hb979;
	ans = 16'hb97a;
	#20
	A = 16'hb857;
	B = 16'h39a7;
	ans = 16'h3140;
	#20
	A = 16'h3224;
	B = 16'hb737;
	ans = 16'hb425;
	#20
	A = 16'hbbe3;
	B = 16'h37ad;
	ans = 16'hb80c;
	#20
	A = 16'h3907;
	B = 16'h3754;
	ans = 16'h3c58;
	#20
	A = 16'h381b;
	B = 16'hb87d;
	ans = 16'haa20;
	#20
	A = 16'h39cf;
	B = 16'h3795;
	ans = 16'h3ccd;
	#20
	A = 16'h38b9;
	B = 16'hbaed;
	ans = 16'hb468;
	#20
	A = 16'hb3d1;
	B = 16'hb882;
	ans = 16'hba76;
	#20
	A = 16'h3436;
	B = 16'hb919;
	ans = 16'hb5fc;
	#20
	A = 16'h345d;
	B = 16'h3bcd;
	ans = 16'h3cfe;
	#20
	A = 16'h3063;
	B = 16'h3508;
	ans = 16'h373a;
	#20
	A = 16'hb7ca;
	B = 16'hba63;
	ans = 16'hbd24;
	#20
	A = 16'hb34b;
	B = 16'hb678;
	ans = 16'hb90f;
	#20
	A = 16'hb83a;
	B = 16'hb58b;
	ans = 16'hbb00;
	#20
	A = 16'hb8f3;
	B = 16'ha591;
	ans = 16'hb920;
	#20
	A = 16'hba94;
	B = 16'hbb4d;
	ans = 16'hbef0;
	#20
	A = 16'hb639;
	B = 16'h3917;
	ans = 16'h33ea;
	#20
	A = 16'h3b48;
	B = 16'h3411;
	ans = 16'h3ca8;
	#20
	A = 16'h3853;
	B = 16'hb975;
	ans = 16'hb088;
	#20
	A = 16'h3452;
	B = 16'hbb76;
	ans = 16'hb94d;
	#20
	A = 16'hb7f7;
	B = 16'hba11;
	ans = 16'hbd06;
	#20
	A = 16'hb4ac;
	B = 16'h3a69;
	ans = 16'h3813;
	#20
	A = 16'h2ab2;
	B = 16'hb7cd;
	ans = 16'hb6f7;
	#20
	A = 16'h3b60;
	B = 16'h3ae6;
	ans = 16'h3f23;
	#20
	A = 16'h3a18;
	B = 16'hb947;
	ans = 16'h2e88;
	#20
	A = 16'h3829;
	B = 16'hb939;
	ans = 16'hb040;
	#20
	A = 16'h28f2;
	B = 16'h3850;
	ans = 16'h389f;
	#20
	A = 16'h32f1;
	B = 16'hb13e;
	ans = 16'h2acc;
	#20
	A = 16'hb6aa;
	B = 16'h35cc;
	ans = 16'haaf0;
	#20
	A = 16'h35d0;
	B = 16'hbbe7;
	ans = 16'hb8ff;
	#20
	A = 16'h3b74;
	B = 16'hb4d3;
	ans = 16'h390a;
	#20
	A = 16'had4f;
	B = 16'h381a;
	ans = 16'h36e0;
	#20
	A = 16'h3968;
	B = 16'hb1c6;
	ans = 16'h37ed;
	#20
	A = 16'h3404;
	B = 16'h382d;
	ans = 16'h3a2f;
	#20
	A = 16'hb834;
	B = 16'hb08b;
	ans = 16'hb957;
	#20
	A = 16'h36a6;
	B = 16'hb83b;
	ans = 16'haf40;
	#20
	A = 16'h3ae1;
	B = 16'h2f08;
	ans = 16'h3bc2;
	#20
	A = 16'h2c83;
	B = 16'h3a60;
	ans = 16'h3af0;
	#20
	A = 16'h2993;
	B = 16'hb934;
	ans = 16'hb8db;
	#20
	A = 16'hb851;
	B = 16'hb59c;
	ans = 16'hbb1f;
	#20
	A = 16'h30ba;
	B = 16'h363c;
	ans = 16'h384c;
	#20
	A = 16'hbbb6;
	B = 16'h34d4;
	ans = 16'hb94c;
	#20
	A = 16'hb855;
	B = 16'h389a;
	ans = 16'h2850;
	#20
	A = 16'hb097;
	B = 16'hbb2b;
	ans = 16'hbc28;
	#20
	A = 16'h3bd8;
	B = 16'hb4a3;
	ans = 16'h3986;
	#20
	A = 16'hbb22;
	B = 16'h2f02;
	ans = 16'hba42;
	#20
	A = 16'h3852;
	B = 16'hb9c2;
	ans = 16'hb1c0;
	#20
	A = 16'h39f9;
	B = 16'hba9c;
	ans = 16'had18;
	#20
	A = 16'h3143;
	B = 16'h385d;
	ans = 16'h39ae;
	#20
	A = 16'h3880;
	B = 16'h2855;
	ans = 16'h38c5;
	#20
	A = 16'had0a;
	B = 16'h2af1;
	ans = 16'ha646;
	#20
	A = 16'hba7b;
	B = 16'h3947;
	ans = 16'hb0d0;
	#20
	A = 16'h3b2e;
	B = 16'h317a;
	ans = 16'h3c46;
	#20
	A = 16'h3b0e;
	B = 16'hbbf5;
	ans = 16'haf38;
	#20
	A = 16'hb92f;
	B = 16'h3ba0;
	ans = 16'h34e2;
	#20
	A = 16'hb8ba;
	B = 16'h3a02;
	ans = 16'h3120;
	#20
	A = 16'h389c;
	B = 16'hbbe2;
	ans = 16'hb68c;
	#20
	A = 16'h3bb0;
	B = 16'h30b2;
	ans = 16'h3c6e;
	#20
	A = 16'h353e;
	B = 16'h3b1c;
	ans = 16'h3cde;
	#20
	A = 16'hb6fe;
	B = 16'ha89e;
	ans = 16'hb792;
	#20
	A = 16'h3382;
	B = 16'hb913;
	ans = 16'hb665;
	#20
	A = 16'hb91f;
	B = 16'h38ac;
	ans = 16'hab30;
	#20
	A = 16'h3743;
	B = 16'h3a0b;
	ans = 16'h3cd6;
	#20
	A = 16'hb4f2;
	B = 16'h3a36;
	ans = 16'h377a;
	#20
	A = 16'h31e5;
	B = 16'h335e;
	ans = 16'h36a2;
	#20
	A = 16'hb905;
	B = 16'hb6a3;
	ans = 16'hbc2b;
	#20
	A = 16'hb368;
	B = 16'h3655;
	ans = 16'h3142;
	#20
	A = 16'hba38;
	B = 16'hb739;
	ans = 16'hbcea;
	#20
	A = 16'hbb27;
	B = 16'h39d7;
	ans = 16'hb140;
	#20
	A = 16'hbafd;
	B = 16'hae14;
	ans = 16'hbbc0;
	#20
	A = 16'h378f;
	B = 16'hb120;
	ans = 16'h34ff;
	#20
	A = 16'h3a4d;
	B = 16'hb0c8;
	ans = 16'h391b;
	#20
	A = 16'hb8dc;
	B = 16'hb065;
	ans = 16'hb9f5;
	#20
	A = 16'h2dff;
	B = 16'h30de;
	ans = 16'h33de;
	#20
	A = 16'hb8ca;
	B = 16'hb661;
	ans = 16'hbbfa;
	#20
	A = 16'hb088;
	B = 16'hb472;
	ans = 16'hb6b6;
	#20
	A = 16'hbbb8;
	B = 16'h352f;
	ans = 16'hb920;
	#20
	A = 16'h32bf;
	B = 16'h3a07;
	ans = 16'h3bb7;
	#20
	A = 16'hb8e3;
	B = 16'h3b12;
	ans = 16'h345e;
	#20
	A = 16'hb101;
	B = 16'h2f0d;
	ans = 16'ha9ea;
	#20
	A = 16'h336b;
	B = 16'hb129;
	ans = 16'h2c84;
	#20
	A = 16'hb1f0;
	B = 16'h34f8;
	ans = 16'h3000;
	#20
	A = 16'h39a4;
	B = 16'h9ee2;
	ans = 16'h3996;
	#20
	A = 16'h1eef;
	B = 16'hbb68;
	ans = 16'hbb5a;
	#20
	A = 16'had6b;
	B = 16'hb583;
	ans = 16'hb6de;
	#20
	A = 16'h2ea9;
	B = 16'hbb33;
	ans = 16'hba5e;
	#20
	A = 16'h3015;
	B = 16'h3a7d;
	ans = 16'h3b82;
	#20
	A = 16'h390d;
	B = 16'h3785;
	ans = 16'h3c68;
	#20
	A = 16'h3a52;
	B = 16'hba5a;
	ans = 16'h9c00;
	#20
	A = 16'hb721;
	B = 16'h2e0a;
	ans = 16'hb59e;
	#20
	A = 16'hba15;
	B = 16'h3a3c;
	ans = 16'h24e0;
	#20
	A = 16'h39f1;
	B = 16'h36f5;
	ans = 16'h3cb6;
	#20
	A = 16'h3663;
	B = 16'hb5cc;
	ans = 16'h28b8;
	#20
	A = 16'hb61f;
	B = 16'hb1e7;
	ans = 16'hb889;
	#20
	A = 16'hb4a8;
	B = 16'hb80c;
	ans = 16'hba60;
	#20
	A = 16'hbbdc;
	B = 16'hb910;
	ans = 16'hbe76;
	#20
	A = 16'h3880;
	B = 16'h39a4;
	ans = 16'h3d12;
	#20
	A = 16'h3028;
	B = 16'h3691;
	ans = 16'h3852;
	#20
	A = 16'h3184;
	B = 16'h34ef;
	ans = 16'h37b1;
	#20
	A = 16'h3bde;
	B = 16'had49;
	ans = 16'h3b35;
	#20
	A = 16'hb461;
	B = 16'h3aa2;
	ans = 16'h3872;
	#20
	A = 16'hbbd4;
	B = 16'hb623;
	ans = 16'hbd73;
	#20
	A = 16'hb6c8;
	B = 16'hb040;
	ans = 16'hb874;
	#20
	A = 16'h35a1;
	B = 16'h38c9;
	ans = 16'h3b9a;
	#20
	A = 16'h3b7a;
	B = 16'hba81;
	ans = 16'h2fc8;
	#20
	A = 16'hba23;
	B = 16'h3a69;
	ans = 16'h2860;
	#20
	A = 16'hb970;
	B = 16'hb182;
	ans = 16'hbad0;
	#20
	A = 16'haa57;
	B = 16'h3835;
	ans = 16'h379f;
	#20
	A = 16'hb347;
	B = 16'hb322;
	ans = 16'hb734;
	#20
	A = 16'h35e8;
	B = 16'hb6b9;
	ans = 16'haa88;
	#20
	A = 16'h3a1d;
	B = 16'h3b0a;
	ans = 16'h3e94;
	#20
	A = 16'h3804;
	B = 16'hb4cf;
	ans = 16'h3272;
	#20
	A = 16'h3a47;
	B = 16'hb41b;
	ans = 16'h383a;
	#20
	A = 16'hb8f6;
	B = 16'h391c;
	ans = 16'h24c0;
	#20
	A = 16'h398c;
	B = 16'hb7bc;
	ans = 16'h32b8;
	#20
	A = 16'hb776;
	B = 16'hba1c;
	ans = 16'hbcec;
	#20
	A = 16'h301d;
	B = 16'ha3f3;
	ans = 16'h2f3c;
	#20
	A = 16'hba44;
	B = 16'hb899;
	ans = 16'hbd6e;
	#20
	A = 16'hb127;
	B = 16'ha812;
	ans = 16'hb22c;
	#20
	A = 16'h3bfe;
	B = 16'hb817;
	ans = 16'h37ce;
	#20
	A = 16'h34c4;
	B = 16'hb8f8;
	ans = 16'hb52c;
	#20
	A = 16'h39ce;
	B = 16'h2890;
	ans = 16'h3a17;
	#20
	A = 16'h2486;
	B = 16'h37f1;
	ans = 16'h381d;
	#20
	A = 16'hb900;
	B = 16'h379c;
	ans = 16'hb0c8;
	#20
	A = 16'hba71;
	B = 16'hb9ee;
	ans = 16'hbe30;
	#20
	A = 16'h383e;
	B = 16'ha8f9;
	ans = 16'h37dd;
	#20
	A = 16'h335b;
	B = 16'hbb3d;
	ans = 16'hb966;
	#20
	A = 16'h3603;
	B = 16'hb554;
	ans = 16'h2978;
	#20
	A = 16'h3428;
	B = 16'h39b8;
	ans = 16'h3bcc;
	#20
	A = 16'h32b2;
	B = 16'h3661;
	ans = 16'h38dd;
	#20
	A = 16'h3a40;
	B = 16'h348e;
	ans = 16'h3c44;
	#20
	A = 16'hb95e;
	B = 16'h3741;
	ans = 16'hb2f6;
	#20
	A = 16'hb49a;
	B = 16'h345f;
	ans = 16'ha360;
	#20
	A = 16'h35b9;
	B = 16'h347e;
	ans = 16'h391c;
	#20
	A = 16'h35dd;
	B = 16'h3208;
	ans = 16'h3870;
	#20
	A = 16'h3ba9;
	B = 16'h3098;
	ans = 16'h3c68;
	#20
	A = 16'hb585;
	B = 16'hb137;
	ans = 16'hb810;
	#20
	A = 16'h3a53;
	B = 16'hb8ad;
	ans = 16'h3298;
	#20
	A = 16'h9fdf;
	B = 16'hbbc8;
	ans = 16'hbbd8;
	#20
	A = 16'h3a62;
	B = 16'h3980;
	ans = 16'h3df1;
	#20
	A = 16'h332f;
	B = 16'hb89e;
	ans = 16'hb5a4;
	#20
	A = 16'h3bb7;
	B = 16'h2fb8;
	ans = 16'h3c57;
	#20
	A = 16'hb815;
	B = 16'h3911;
	ans = 16'h2fe0;
	#20
	A = 16'h3a91;
	B = 16'h3b9e;
	ans = 16'h3f18;
	#20
	A = 16'hb62d;
	B = 16'hb995;
	ans = 16'hbc56;
	#20
	A = 16'hb6c8;
	B = 16'h3834;
	ans = 16'h2e80;
	#20
	A = 16'hb4c7;
	B = 16'hafd9;
	ans = 16'hb6bd;
	#20
	A = 16'h353a;
	B = 16'h37e6;
	ans = 16'h3a90;
	#20
	A = 16'h3b25;
	B = 16'hb519;
	ans = 16'h3898;
	#20
	A = 16'h3b4b;
	B = 16'hbb0e;
	ans = 16'h27a0;
	#20
	A = 16'hb0dd;
	B = 16'h2fcf;
	ans = 16'ha7ac;
	#20
	A = 16'h34a4;
	B = 16'h2dea;
	ans = 16'h361e;
	#20
	A = 16'hb475;
	B = 16'h364d;
	ans = 16'h2f60;
	#20
	A = 16'hb825;
	B = 16'h2442;
	ans = 16'hb803;
	#20
	A = 16'h3a65;
	B = 16'hb431;
	ans = 16'h384c;
	#20
	A = 16'hba28;
	B = 16'hb138;
	ans = 16'hbb76;
	#20
	A = 16'hb884;
	B = 16'h3677;
	ans = 16'hb122;
	#20
	A = 16'h39cf;
	B = 16'h3542;
	ans = 16'h3c38;
	#20
	A = 16'hb655;
	B = 16'hb181;
	ans = 16'hb88b;
	#20
	A = 16'h3b50;
	B = 16'h3792;
	ans = 16'h3d8c;
	#20
	A = 16'hb5dc;
	B = 16'h320a;
	ans = 16'hb1ae;
	#20
	A = 16'h39f4;
	B = 16'h3980;
	ans = 16'h3dba;
	#20
	A = 16'h38b9;
	B = 16'h29f0;
	ans = 16'h3918;
	#20
	A = 16'hb515;
	B = 16'hb54d;
	ans = 16'hb931;
	#20
	A = 16'h2b0b;
	B = 16'h230d;
	ans = 16'h2c67;
	#20
	A = 16'hac5e;
	B = 16'h346e;
	ans = 16'h32ad;
	#20
	A = 16'hb874;
	B = 16'h3b1f;
	ans = 16'h3556;
	#20
	A = 16'hb8c6;
	B = 16'hbb75;
	ans = 16'hbe1e;
	#20
	A = 16'hb309;
	B = 16'h3823;
	ans = 16'h34c2;
	#20
	A = 16'h38a0;
	B = 16'hab1e;
	ans = 16'h382e;
	#20
	A = 16'hb803;
	B = 16'hb814;
	ans = 16'hbc0c;
	#20
	A = 16'hb985;
	B = 16'hb826;
	ans = 16'hbcd6;
	#20
	A = 16'hb2d5;
	B = 16'hbac6;
	ans = 16'hbc3e;
	#20
	A = 16'hb905;
	B = 16'hbb27;
	ans = 16'hbe16;
	#20
	A = 16'h18be;
	B = 16'hba70;
	ans = 16'hba6b;
	#20
	A = 16'hb40e;
	B = 16'ha727;
	ans = 16'hb480;
	#20
	A = 16'h3743;
	B = 16'h3a8a;
	ans = 16'h3d16;
	#20
	A = 16'h383e;
	B = 16'h3b09;
	ans = 16'h3da4;
	#20
	A = 16'h3647;
	B = 16'h30db;
	ans = 16'h385a;
	#20
	A = 16'h3095;
	B = 16'haef2;
	ans = 16'h2870;
	#20
	A = 16'h3877;
	B = 16'hba28;
	ans = 16'hb2c4;
	#20
	A = 16'ha728;
	B = 16'hba0b;
	ans = 16'hba44;
	#20
	A = 16'hb309;
	B = 16'h3aaa;
	ans = 16'h38e8;
	#20
	A = 16'h3653;
	B = 16'hb4af;
	ans = 16'h2e90;
	#20
	A = 16'hbac0;
	B = 16'hb979;
	ans = 16'hbe1c;
	#20
	A = 16'h258e;
	B = 16'h34dd;
	ans = 16'h3536;
	#20
	A = 16'h389d;
	B = 16'h37bf;
	ans = 16'h3c3e;
	#20
	A = 16'h305a;
	B = 16'hb8c5;
	ans = 16'hb75d;
	#20
	A = 16'h3acd;
	B = 16'ha083;
	ans = 16'h3abb;
	#20
	A = 16'hb793;
	B = 16'hae17;
	ans = 16'hb88c;
	#20
	A = 16'h39b6;
	B = 16'h3265;
	ans = 16'h3b4f;
	#20
	A = 16'h38ba;
	B = 16'hb7b4;
	ans = 16'h2f00;
	#20
	A = 16'hbad6;
	B = 16'hb513;
	ans = 16'hbcb0;
	#20
	A = 16'ha865;
	B = 16'hb731;
	ans = 16'hb7be;
	#20
	A = 16'hbaf1;
	B = 16'h3b75;
	ans = 16'h2c20;
	#20
	A = 16'h397c;
	B = 16'h379e;
	ans = 16'h3ca6;
	#20
	A = 16'h32e9;
	B = 16'h397e;
	ans = 16'h3b38;
	#20
	A = 16'h3619;
	B = 16'hb9cf;
	ans = 16'hb585;
	#20
	A = 16'h38af;
	B = 16'h382e;
	ans = 16'h3c6e;
	#20
	A = 16'h36eb;
	B = 16'hb159;
	ans = 16'h343e;
	#20
	A = 16'hab3c;
	B = 16'h3b7e;
	ans = 16'h3b0a;
	#20
	A = 16'h3845;
	B = 16'hbaf5;
	ans = 16'hb560;
	#20
	A = 16'hb1f9;
	B = 16'h3a4c;
	ans = 16'h38ce;
	#20
	A = 16'h3844;
	B = 16'h3aaf;
	ans = 16'h3d7a;
	#20
	A = 16'h369f;
	B = 16'hb8af;
	ans = 16'hb17e;
	#20
	A = 16'hb12c;
	B = 16'hb89d;
	ans = 16'hb9e8;
	#20
	A = 16'h3a7d;
	B = 16'hb61d;
	ans = 16'h36dd;
	#20
	A = 16'hb956;
	B = 16'h3beb;
	ans = 16'h352a;
	#20
	A = 16'hb8c5;
	B = 16'h377a;
	ans = 16'hb020;
	#20
	A = 16'h3b88;
	B = 16'h3adf;
	ans = 16'h3f34;
	#20
	A = 16'h35f7;
	B = 16'h37fd;
	ans = 16'h3afa;
	#20
	A = 16'hb8a9;
	B = 16'h98ff;
	ans = 16'hb8ae;
	#20
	A = 16'h301d;
	B = 16'h3622;
	ans = 16'h3818;
	#20
	A = 16'hbb96;
	B = 16'h3af3;
	ans = 16'had18;
	#20
	A = 16'h31ed;
	B = 16'h3956;
	ans = 16'h3ad1;
	#20
	A = 16'hbb96;
	B = 16'h39aa;
	ans = 16'hb3b0;
	#20
	A = 16'ha932;
	B = 16'hb93a;
	ans = 16'hb98d;
	#20
	A = 16'hba13;
	B = 16'hb514;
	ans = 16'hbc4e;
	#20
	A = 16'hb1a7;
	B = 16'h3a96;
	ans = 16'h392c;
	#20
	A = 16'hb0c1;
	B = 16'hbaa8;
	ans = 16'hbbd8;
	#20
	A = 16'h9f0e;
	B = 16'h39bd;
	ans = 16'h39af;
	#20
	A = 16'h3849;
	B = 16'h3a80;
	ans = 16'h3d64;
	#20
	A = 16'h36af;
	B = 16'hb6d7;
	ans = 16'ha100;
	#20
	A = 16'h3a1f;
	B = 16'h33db;
	ans = 16'h3c0b;
	#20
	A = 16'hb645;
	B = 16'hb2ac;
	ans = 16'hb8ce;
	#20
	A = 16'h3af1;
	B = 16'h268a;
	ans = 16'h3b25;
	#20
	A = 16'h39be;
	B = 16'hbba0;
	ans = 16'hb388;
	#20
	A = 16'hb9ca;
	B = 16'h3372;
	ans = 16'hb7db;
	#20
	A = 16'h389a;
	B = 16'h35e4;
	ans = 16'h3b8c;
	#20
	A = 16'h39d9;
	B = 16'h341d;
	ans = 16'h3be8;
	#20
	A = 16'h377e;
	B = 16'h3938;
	ans = 16'h3c7c;
	#20
	A = 16'h3ab2;
	B = 16'hbaed;
	ans = 16'ha760;
	#20
	A = 16'hb768;
	B = 16'hba3f;
	ans = 16'hbcfa;
	#20
	A = 16'hafe2;
	B = 16'h29a4;
	ans = 16'had10;
	#20
	A = 16'hb8e2;
	B = 16'h384d;
	ans = 16'haca8;
	#20
	A = 16'hbbf9;
	B = 16'hbbef;
	ans = 16'hbff4;
	#20
	A = 16'hb6e2;
	B = 16'h32a2;
	ans = 16'hb322;
	#20
	A = 16'h3ab2;
	B = 16'h38f2;
	ans = 16'h3dd2;
	#20
	A = 16'hb709;
	B = 16'h9e24;
	ans = 16'hb722;
	#20
	A = 16'hb590;
	B = 16'h345c;
	ans = 16'hacd0;
	#20
	A = 16'hb764;
	B = 16'ha977;
	ans = 16'hb809;
	#20
	A = 16'hb9a7;
	B = 16'h3abc;
	ans = 16'h3054;
	#20
	A = 16'hb1f1;
	B = 16'h3beb;
	ans = 16'h3a6f;
	#20
	A = 16'hb8db;
	B = 16'hb850;
	ans = 16'hbc96;
	#20
	A = 16'h3b93;
	B = 16'hb906;
	ans = 16'h351a;
	#20
	A = 16'hbb5b;
	B = 16'h2cd7;
	ans = 16'hbac0;
	#20
	A = 16'h3835;
	B = 16'hb9a0;
	ans = 16'hb1ac;
	#20
	A = 16'hb25e;
	B = 16'hb617;
	ans = 16'hb8a3;
	#20
	A = 16'hb6ff;
	B = 16'h34c7;
	ans = 16'hb070;
	#20
	A = 16'hbb3a;
	B = 16'hb620;
	ans = 16'hbd25;
	#20
	A = 16'h3868;
	B = 16'h3a44;
	ans = 16'h3d56;
	#20
	A = 16'hb5ba;
	B = 16'hb863;
	ans = 16'hbb40;
	#20
	A = 16'hb751;
	B = 16'hb98b;
	ans = 16'hbc9a;
	#20
	A = 16'h3a56;
	B = 16'hbb9e;
	ans = 16'hb120;
	#20
	A = 16'hb74e;
	B = 16'hb932;
	ans = 16'hbc6c;
	#20
	A = 16'h3531;
	B = 16'hb572;
	ans = 16'ha410;
	#20
	A = 16'h3be2;
	B = 16'hb22f;
	ans = 16'h3a56;
	#20
	A = 16'h3437;
	B = 16'h3854;
	ans = 16'h3a70;
	#20
	A = 16'h2e52;
	B = 16'hac3b;
	ans = 16'h282e;
	#20
	A = 16'h31da;
	B = 16'hb7d1;
	ans = 16'hb4e4;
	#20
	A = 16'h38d2;
	B = 16'hba8f;
	ans = 16'hb2f4;
	#20
	A = 16'h3a71;
	B = 16'h3b19;
	ans = 16'h3ec5;
	#20
	A = 16'h32ec;
	B = 16'hb8df;
	ans = 16'hb648;
	#20
	A = 16'h3a62;
	B = 16'hb9d1;
	ans = 16'h2c88;
	#20
	A = 16'hba1d;
	B = 16'hb992;
	ans = 16'hbdd8;
	#20
	A = 16'hb410;
	B = 16'hb72c;
	ans = 16'hb99e;
	#20
	A = 16'h313a;
	B = 16'h2936;
	ans = 16'h3288;
	#20
	A = 16'h3839;
	B = 16'hb2df;
	ans = 16'h3502;
	#20
	A = 16'hafe6;
	B = 16'hb3d0;
	ans = 16'hb5e2;
	#20
	A = 16'h3a59;
	B = 16'h38a3;
	ans = 16'h3d7e;
	#20
	A = 16'h27b3;
	B = 16'h38aa;
	ans = 16'h38e8;
	#20
	A = 16'h3bca;
	B = 16'h3916;
	ans = 16'h3e70;
	#20
	A = 16'haa06;
	B = 16'h39d5;
	ans = 16'h3975;
	#20
	A = 16'hba02;
	B = 16'h35e5;
	ans = 16'hb61f;
	#20
	A = 16'ha58e;
	B = 16'h351c;
	ans = 16'h34c3;
	#20
	A = 16'h3bb4;
	B = 16'h307c;
	ans = 16'h3c6a;
	#20
	A = 16'h36fd;
	B = 16'h3ad3;
	ans = 16'h3d29;
	#20
	A = 16'h355a;
	B = 16'hb996;
	ans = 16'hb5d2;
	#20
	A = 16'hb7b8;
	B = 16'hbb94;
	ans = 16'hbdb8;
	#20
	A = 16'hb430;
	B = 16'hb696;
	ans = 16'hb963;
	#20
	A = 16'h39c2;
	B = 16'h3a4f;
	ans = 16'h3e08;
	#20
	A = 16'hb687;
	B = 16'h35ab;
	ans = 16'haae0;
	#20
	A = 16'hb7cc;
	B = 16'h318f;
	ans = 16'hb504;
	#20
	A = 16'hba5d;
	B = 16'h36b1;
	ans = 16'hb609;
	#20
	A = 16'h390d;
	B = 16'hb412;
	ans = 16'h3608;
	#20
	A = 16'hbba3;
	B = 16'h36a3;
	ans = 16'hb852;
	#20
	A = 16'hb559;
	B = 16'hb5c8;
	ans = 16'hb990;
	#20
	A = 16'hb83a;
	B = 16'hb5f8;
	ans = 16'hbb36;
	#20
	A = 16'hb422;
	B = 16'h34a7;
	ans = 16'h2828;
	#20
	A = 16'h9e9d;
	B = 16'h2fdb;
	ans = 16'h2f71;
	#20
	A = 16'hba28;
	B = 16'hba2d;
	ans = 16'hbe2a;
	#20
	A = 16'h3880;
	B = 16'hb76c;
	ans = 16'h2e50;
	#20
	A = 16'hb80d;
	B = 16'h3851;
	ans = 16'h2840;
	#20
	A = 16'hb59f;
	B = 16'hb833;
	ans = 16'hbb02;
	#20
	A = 16'hb5b7;
	B = 16'hbb7f;
	ans = 16'hbd2d;
	#20
	A = 16'h3871;
	B = 16'hb849;
	ans = 16'h2500;
	#20
	A = 16'hb8f3;
	B = 16'h37dc;
	ans = 16'hb014;
	#20
	A = 16'hb990;
	B = 16'hb88e;
	ans = 16'hbd0f;
	#20
	A = 16'h31c0;
	B = 16'hb95a;
	ans = 16'hb7d4;
	#20
	A = 16'h388a;
	B = 16'hb7b3;
	ans = 16'h2d84;
	#20
	A = 16'hb06b;
	B = 16'haf95;
	ans = 16'hb41b;
	#20
	A = 16'hb420;
	B = 16'hbb7a;
	ans = 16'hbcc5;
	#20
	A = 16'h3b43;
	B = 16'h3bed;
	ans = 16'h3f98;
	#20
	A = 16'h37e4;
	B = 16'h38f8;
	ans = 16'h3c75;
	#20
	A = 16'hb53f;
	B = 16'h319a;
	ans = 16'hb0e4;
	#20
	A = 16'h3a67;
	B = 16'hba1a;
	ans = 16'h28d0;
	#20
	A = 16'hba6d;
	B = 16'hb94e;
	ans = 16'hbdde;
	#20
	A = 16'h3a00;
	B = 16'hbb1b;
	ans = 16'hb06c;
	#20
	A = 16'ha815;
	B = 16'hb72d;
	ans = 16'hb7b0;
	#20
	A = 16'h3be9;
	B = 16'hb9f4;
	ans = 16'h33d4;
	#20
	A = 16'hb68d;
	B = 16'hbb7a;
	ans = 16'hbd60;
	#20
	A = 16'hb9f2;
	B = 16'hb311;
	ans = 16'hbbb6;
	#20
	A = 16'hba96;
	B = 16'h3514;
	ans = 16'hb80c;
	#20
	A = 16'h3ae2;
	B = 16'hb5c1;
	ans = 16'h3802;
	#20
	A = 16'h3795;
	B = 16'hb94b;
	ans = 16'hb202;
	#20
	A = 16'h3a35;
	B = 16'h38bb;
	ans = 16'h3d78;
	#20
	A = 16'h3b5c;
	B = 16'hb16d;
	ans = 16'h3a01;
	#20
	A = 16'hbb03;
	B = 16'h3bdc;
	ans = 16'h2ec8;
	#20
	A = 16'hb961;
	B = 16'hbaee;
	ans = 16'hbe28;
	#20
	A = 16'hb2e5;
	B = 16'hbb2a;
	ans = 16'hbc72;
	#20
	A = 16'hb03e;
	B = 16'h3bcd;
	ans = 16'h3abe;
	#20
	A = 16'hba0d;
	B = 16'hb647;
	ans = 16'hbc98;
	#20
	A = 16'hb948;
	B = 16'h2987;
	ans = 16'hb8f0;
	#20
	A = 16'h382e;
	B = 16'hb69a;
	ans = 16'h2f08;
	#20
	A = 16'h2c32;
	B = 16'h3417;
	ans = 16'h3524;
	#20
	A = 16'hbb62;
	B = 16'hb802;
	ans = 16'hbdb2;
	#20
	A = 16'ha3bd;
	B = 16'hbbc8;
	ans = 16'hbbe7;
	#20
	A = 16'h3af8;
	B = 16'h38c4;
	ans = 16'h3dde;
	#20
	A = 16'hb4d3;
	B = 16'h35ca;
	ans = 16'h2bb8;
	#20
	A = 16'hbaf6;
	B = 16'h34e0;
	ans = 16'hb886;
	#20
	A = 16'hb98c;
	B = 16'hb327;
	ans = 16'hbb56;
	#20
	A = 16'h373b;
	B = 16'hb0f0;
	ans = 16'h34c3;
	#20
	A = 16'hb9ae;
	B = 16'h2eab;
	ans = 16'hb8d9;
	#20
	A = 16'hab72;
	B = 16'hac5c;
	ans = 16'hb00a;
	#20
	A = 16'hb306;
	B = 16'h3a01;
	ans = 16'h3840;
	#20
	A = 16'h37c8;
	B = 16'h3baa;
	ans = 16'h3dc7;
	#20
	A = 16'hb92b;
	B = 16'hb23a;
	ans = 16'hbaba;
	#20
	A = 16'h2e7a;
	B = 16'hba74;
	ans = 16'hb9a5;
	#20
	A = 16'h316c;
	B = 16'hb430;
	ans = 16'hade8;
	#20
	A = 16'hb6bb;
	B = 16'h944f;
	ans = 16'hb6bf;
	#20
	A = 16'h36ad;
	B = 16'hbb82;
	ans = 16'hb82c;
	#20
	A = 16'hbb65;
	B = 16'hbba8;
	ans = 16'hbf86;
	#20
	A = 16'h3a07;
	B = 16'hb920;
	ans = 16'h2f38;
	#20
	A = 16'h3048;
	B = 16'h3458;
	ans = 16'h367c;
	#20
	A = 16'h3361;
	B = 16'h2cd1;
	ans = 16'h34e5;
	#20
	A = 16'hb01d;
	B = 16'hb0ed;
	ans = 16'hb485;
	#20
	A = 16'h36eb;
	B = 16'h2aa8;
	ans = 16'h37c0;
	#20
	A = 16'hb7f0;
	B = 16'hb713;
	ans = 16'hbb82;
	#20
	A = 16'hb207;
	B = 16'hb789;
	ans = 16'hb946;
	#20
	A = 16'haded;
	B = 16'h3b8a;
	ans = 16'h3acc;
	#20
	A = 16'hba2f;
	B = 16'hb499;
	ans = 16'hbc3e;
	#20
	A = 16'h378a;
	B = 16'h2bfd;
	ans = 16'h3845;
	#20
	A = 16'hb934;
	B = 16'h3bed;
	ans = 16'h3572;
	#20
	A = 16'h30a3;
	B = 16'h3430;
	ans = 16'h3682;
	#20
	A = 16'hbae5;
	B = 16'hbbe2;
	ans = 16'hbf64;
	#20
	A = 16'h3aef;
	B = 16'h39af;
	ans = 16'h3e4f;
	#20
	A = 16'h2d25;
	B = 16'h387c;
	ans = 16'h3921;
	#20
	A = 16'h33d9;
	B = 16'hbb3b;
	ans = 16'hb945;
	#20
	A = 16'hb1c6;
	B = 16'ha5ce;
	ans = 16'hb280;
	#20
	A = 16'h3b82;
	B = 16'h2f32;
	ans = 16'h3c34;
	#20
	A = 16'hbba0;
	B = 16'h3bd8;
	ans = 16'h2700;
	#20
	A = 16'h314d;
	B = 16'hb8d5;
	ans = 16'hb704;
	#20
	A = 16'hbb66;
	B = 16'hb98a;
	ans = 16'hbe78;
	#20
	A = 16'had8b;
	B = 16'h1702;
	ans = 16'had6f;
	#20
	A = 16'h3025;
	B = 16'h37f2;
	ans = 16'h3902;
	#20
	A = 16'h3009;
	B = 16'hb385;
	ans = 16'haef8;
	#20
	A = 16'hb5e6;
	B = 16'hb51c;
	ans = 16'hb981;
	#20
	A = 16'h3a26;
	B = 16'hbbc5;
	ans = 16'hb27c;
	#20
	A = 16'hb725;
	B = 16'h2bac;
	ans = 16'hb630;
	#20
	A = 16'hb4b6;
	B = 16'h2c8c;
	ans = 16'hb326;
	#20
	A = 16'h3566;
	B = 16'had15;
	ans = 16'h3421;
	#20
	A = 16'hb81a;
	B = 16'hb8d0;
	ans = 16'hbc75;
	#20
	A = 16'h3253;
	B = 16'h3442;
	ans = 16'h376c;
	#20
	A = 16'h38bc;
	B = 16'hb65b;
	ans = 16'h323a;
	#20
	A = 16'hb94a;
	B = 16'h3ae5;
	ans = 16'h326c;
	#20
	A = 16'h379e;
	B = 16'h3039;
	ans = 16'h38dd;
	#20
	A = 16'h281b;
	B = 16'hb3c7;
	ans = 16'hb2c0;
	#20
	A = 16'h3a26;
	B = 16'h38d6;
	ans = 16'h3d7e;
	#20
	A = 16'h3b5b;
	B = 16'h3a20;
	ans = 16'h3ebe;
	#20
	A = 16'h3895;
	B = 16'hbb93;
	ans = 16'hb5fc;
	#20
	A = 16'h3617;
	B = 16'h3b4c;
	ans = 16'h3d2c;
	#20
	A = 16'h38a9;
	B = 16'h39dd;
	ans = 16'h3d43;
	#20
	A = 16'h3333;
	B = 16'hb2e6;
	ans = 16'h20d0;
	#20
	A = 16'hb86b;
	B = 16'h9a77;
	ans = 16'hb871;
	#20
	A = 16'hbbd7;
	B = 16'h30e6;
	ans = 16'hba9e;
	#20
	A = 16'hb808;
	B = 16'h3484;
	ans = 16'hb318;
	#20
	A = 16'hbbaa;
	B = 16'hb62d;
	ans = 16'hbd60;
	#20
	A = 16'hb9cd;
	B = 16'hb99d;
	ans = 16'hbdb5;
	#20
	A = 16'h3af4;
	B = 16'ha930;
	ans = 16'h3aa1;
	#20
	A = 16'h3bef;
	B = 16'hb77d;
	ans = 16'h3830;
	#20
	A = 16'hbaf9;
	B = 16'h3b66;
	ans = 16'h2ad0;
	#20
	A = 16'hb969;
	B = 16'hb11f;
	ans = 16'hbab1;
	#20
	A = 16'h2b80;
	B = 16'h3864;
	ans = 16'h38dc;
	#20
	A = 16'hacc2;
	B = 16'h3ae7;
	ans = 16'h3a4f;
	#20
	A = 16'h3836;
	B = 16'h3413;
	ans = 16'h3a40;
	#20
	A = 16'hbbd1;
	B = 16'hb9c2;
	ans = 16'hbeca;
	#20
	A = 16'h3961;
	B = 16'hba87;
	ans = 16'hb098;
	#20
	A = 16'hb6b2;
	B = 16'h2d02;
	ans = 16'hb572;
	#20
	A = 16'hbb3e;
	B = 16'hbad4;
	ans = 16'hbf09;
	#20
	A = 16'hb631;
	B = 16'hb8a0;
	ans = 16'hbbb8;
	#20
	A = 16'h3a1d;
	B = 16'h35d1;
	ans = 16'h3c83;
	#20
	A = 16'h2ff9;
	B = 16'hbb72;
	ans = 16'hba73;
	#20
	A = 16'h36b5;
	B = 16'h3417;
	ans = 16'h3966;
	#20
	A = 16'hb8b3;
	B = 16'hb6d9;
	ans = 16'hbc10;
	#20
	A = 16'h3960;
	B = 16'h3bb3;
	ans = 16'h3e8a;
	#20
	A = 16'hb07c;
	B = 16'h385b;
	ans = 16'h3678;
	#20
	A = 16'hb710;
	B = 16'hac39;
	ans = 16'hb80f;
	#20
	A = 16'h3a0f;
	B = 16'h38b8;
	ans = 16'h3d64;
	#20
	A = 16'h3ae5;
	B = 16'hb687;
	ans = 16'h3743;
	#20
	A = 16'h34a9;
	B = 16'h3848;
	ans = 16'h3a9c;
	#20
	A = 16'hba50;
	B = 16'h30ce;
	ans = 16'hb91c;
	#20
	A = 16'hb9f1;
	B = 16'hbbd1;
	ans = 16'hbee1;
	#20
	A = 16'h2151;
	B = 16'h30f2;
	ans = 16'h3147;
	#20
	A = 16'haca0;
	B = 16'h354b;
	ans = 16'h3423;
	#20
	A = 16'haf6a;
	B = 16'h397b;
	ans = 16'h388e;
	#20
	A = 16'had94;
	B = 16'hb626;
	ans = 16'hb78b;
	#20
	A = 16'h354e;
	B = 16'hac16;
	ans = 16'h3448;
	#20
	A = 16'h36e7;
	B = 16'hb614;
	ans = 16'h2a98;
	#20
	A = 16'hb882;
	B = 16'h1e66;
	ans = 16'hb875;
	#20
	A = 16'h3b58;
	B = 16'hb97a;
	ans = 16'h3378;
	#20
	A = 16'hb6d0;
	B = 16'ha7ba;
	ans = 16'hb74c;
	#20
	A = 16'hb88e;
	B = 16'h201a;
	ans = 16'hb87e;
	#20
	A = 16'h384b;
	B = 16'hbaa1;
	ans = 16'hb4ac;
	#20
	A = 16'h3b85;
	B = 16'h2ea1;
	ans = 16'h3c2d;
	#20
	A = 16'h3a0c;
	B = 16'h323d;
	ans = 16'h3b9b;
	#20
	A = 16'hbbbf;
	B = 16'h3b68;
	ans = 16'ha970;
	#20
	A = 16'h26b3;
	B = 16'h3acc;
	ans = 16'h3b02;
	#20
	A = 16'hb39a;
	B = 16'hb8e7;
	ans = 16'hbace;
	#20
	A = 16'h2c33;
	B = 16'h2e49;
	ans = 16'h313e;
	#20
	A = 16'hb8ee;
	B = 16'h3693;
	ans = 16'hb292;
	#20
	A = 16'h352b;
	B = 16'h34eb;
	ans = 16'h390b;
	#20
	A = 16'h3a95;
	B = 16'h39d6;
	ans = 16'h3e36;
	#20
	A = 16'hba1f;
	B = 16'h3018;
	ans = 16'hb919;
	#20
	A = 16'h26da;
	B = 16'hb721;
	ans = 16'hb6b3;
	#20
	A = 16'h380f;
	B = 16'h3956;
	ans = 16'h3cb2;
	#20
	A = 16'hbb68;
	B = 16'hb6da;
	ans = 16'hbd6a;
	#20
	A = 16'hb5c8;
	B = 16'hb368;
	ans = 16'hb8be;
	#20
	A = 16'hb632;
	B = 16'hb7e1;
	ans = 16'hbb0a;
	#20
	A = 16'hb65c;
	B = 16'hb108;
	ans = 16'hb870;
	#20
	A = 16'h37b7;
	B = 16'h39f1;
	ans = 16'h3ce6;
	#20
	A = 16'h3be7;
	B = 16'hb7ee;
	ans = 16'h37e0;
	#20
	A = 16'h3abd;
	B = 16'h37c3;
	ans = 16'h3d4f;
	#20
	A = 16'h385a;
	B = 16'hb630;
	ans = 16'h3108;
	#20
	A = 16'h3a67;
	B = 16'h39d8;
	ans = 16'h3e20;
	#20
	A = 16'hb126;
	B = 16'hbaa6;
	ans = 16'hbbf0;
	#20
	A = 16'hb5c7;
	B = 16'hb50e;
	ans = 16'hb96a;
	#20
	A = 16'ha6d4;
	B = 16'h396f;
	ans = 16'h3938;
	#20
	A = 16'h37e3;
	B = 16'hab81;
	ans = 16'h36f3;
	#20
	A = 16'hb2bc;
	B = 16'h38d6;
	ans = 16'h364e;
	#20
	A = 16'h3847;
	B = 16'hb827;
	ans = 16'h2400;
	#20
	A = 16'h38ca;
	B = 16'h3831;
	ans = 16'h3c7e;
	#20
	A = 16'hbba1;
	B = 16'hb5f5;
	ans = 16'hbd4e;
	#20
	A = 16'h3b9f;
	B = 16'h359b;
	ans = 16'h3d36;
	#20
	A = 16'h36b9;
	B = 16'h3aa1;
	ans = 16'h3cff;
	#20
	A = 16'h2535;
	B = 16'hbb31;
	ans = 16'hbb07;
	#20
	A = 16'h38c0;
	B = 16'hb78a;
	ans = 16'h2fd8;
	#20
	A = 16'hb478;
	B = 16'h303b;
	ans = 16'hb0b5;
	#20
	A = 16'h2b4e;
	B = 16'hb845;
	ans = 16'hb7a0;
	#20
	A = 16'h3b87;
	B = 16'hbb26;
	ans = 16'h2a10;
	#20
	A = 16'hb8aa;
	B = 16'hb0dc;
	ans = 16'hb9e1;
	#20
	A = 16'h3182;
	B = 16'h3bcf;
	ans = 16'h3c98;
	#20
	A = 16'h3961;
	B = 16'hbacc;
	ans = 16'hb1ac;
	#20
	A = 16'hb5ed;
	B = 16'h32da;
	ans = 16'hb100;
	#20
	A = 16'hb0fc;
	B = 16'h3b20;
	ans = 16'h39e1;
	#20
	A = 16'h24ac;
	B = 16'h2be4;
	ans = 16'h2d1d;
	#20
	A = 16'hba26;
	B = 16'hb9ae;
	ans = 16'hbdea;
	#20
	A = 16'h36c1;
	B = 16'hbb25;
	ans = 16'hb789;
	#20
	A = 16'h3874;
	B = 16'hb21e;
	ans = 16'h35d9;
	#20
	A = 16'hbbd1;
	B = 16'h3ad0;
	ans = 16'hb004;
	#20
	A = 16'h3b13;
	B = 16'hb11e;
	ans = 16'h39cc;
	#20
	A = 16'hba23;
	B = 16'h3113;
	ans = 16'hb8de;
	#20
	A = 16'hb8af;
	B = 16'hb361;
	ans = 16'hba87;
	#20
	A = 16'hbadd;
	B = 16'h35f1;
	ans = 16'hb7c9;
	#20
	A = 16'hb785;
	B = 16'h36eb;
	ans = 16'ha8d0;
	#20
	A = 16'hbace;
	B = 16'h3765;
	ans = 16'hb637;
	#20
	A = 16'hb8f0;
	B = 16'haeb1;
	ans = 16'hb9c6;
	#20
	A = 16'hbb0f;
	B = 16'h3a80;
	ans = 16'hac78;
	#20
	A = 16'h3b9b;
	B = 16'hb4ee;
	ans = 16'h3924;
	#20
	A = 16'hb57e;
	B = 16'hb8cb;
	ans = 16'hbb8a;
	#20
	A = 16'hbbfe;
	B = 16'h39ca;
	ans = 16'hb468;
	#20
	A = 16'h2ea9;
	B = 16'hb8ef;
	ans = 16'hb81a;
	#20
	A = 16'h2ba1;
	B = 16'h38f3;
	ans = 16'h396d;
	#20
	A = 16'h37b8;
	B = 16'hb489;
	ans = 16'h325e;
	#20
	A = 16'h3b2d;
	B = 16'h3152;
	ans = 16'h3c41;
	#20
	A = 16'h38b7;
	B = 16'h3825;
	ans = 16'h3c6e;
	#20
	A = 16'h3ad5;
	B = 16'h396e;
	ans = 16'h3e22;
	#20
	A = 16'hb78d;
	B = 16'h3832;
	ans = 16'h2ab8;
	#20
	A = 16'hb81c;
	B = 16'h391c;
	ans = 16'h3000;
	#20
	A = 16'hb8fe;
	B = 16'ha73b;
	ans = 16'hb938;
	#20
	A = 16'h32b2;
	B = 16'hb3ff;
	ans = 16'ha934;
	#20
	A = 16'h378b;
	B = 16'hbbcd;
	ans = 16'hb808;
	#20
	A = 16'h3a44;
	B = 16'h3850;
	ans = 16'h3d4a;
	#20
	A = 16'hbafb;
	B = 16'h38de;
	ans = 16'hb43a;
	#20
	A = 16'h3a36;
	B = 16'hb294;
	ans = 16'h3891;
	#20
	A = 16'h9da7;
	B = 16'h3b41;
	ans = 16'h3b36;
	#20
	A = 16'h3998;
	B = 16'hb66a;
	ans = 16'h34c6;
	#20
	A = 16'ha6a4;
	B = 16'hb6bc;
	ans = 16'hb726;
	#20
	A = 16'hb81f;
	B = 16'h39e4;
	ans = 16'h3314;
	#20
	A = 16'hb39f;
	B = 16'h38ef;
	ans = 16'h360e;
	#20
	A = 16'hb19a;
	B = 16'h3a2d;
	ans = 16'h38c6;
	#20
	A = 16'h3371;
	B = 16'hba06;
	ans = 16'hb82a;
	#20
	A = 16'h39e0;
	B = 16'hba16;
	ans = 16'ha6c0;
	#20
	A = 16'hbbc8;
	B = 16'h390e;
	ans = 16'hb574;
	#20
	A = 16'h37f5;
	B = 16'ha79c;
	ans = 16'h377b;
	#20
	A = 16'had2c;
	B = 16'h3a9e;
	ans = 16'h39f8;
	#20
	A = 16'hb98e;
	B = 16'h3baa;
	ans = 16'h3438;
	#20
	A = 16'ha5a5;
	B = 16'h3bab;
	ans = 16'h3b7e;
	#20
	A = 16'hb730;
	B = 16'hb3fd;
	ans = 16'hb997;
	#20
	A = 16'h2fd2;
	B = 16'h3aae;
	ans = 16'h3ba8;
	#20
	A = 16'hb7d8;
	B = 16'hb00e;
	ans = 16'hb8f0;
	#20
	A = 16'hb616;
	B = 16'h3887;
	ans = 16'h31f0;
	#20
	A = 16'hb692;
	B = 16'h3ba0;
	ans = 16'h3857;
	#20
	A = 16'h3666;
	B = 16'hb558;
	ans = 16'h2c38;
	#20
	A = 16'hb8bf;
	B = 16'hb922;
	ans = 16'hbcf0;
	#20
	A = 16'h378f;
	B = 16'hba2a;
	ans = 16'hb4c5;
	#20
	A = 16'hba3e;
	B = 16'h3ba0;
	ans = 16'h3188;
	#20
	A = 16'h392c;
	B = 16'hb2b5;
	ans = 16'h36fe;
	#20
	A = 16'ha470;
	B = 16'hb436;
	ans = 16'hb47d;
	#20
	A = 16'hb784;
	B = 16'hb703;
	ans = 16'hbb44;
	#20
	A = 16'h34c1;
	B = 16'h3bb4;
	ans = 16'h3d0a;
	#20
	A = 16'h392b;
	B = 16'hb864;
	ans = 16'h2e38;
	#20
	A = 16'hb12e;
	B = 16'h3a32;
	ans = 16'h38e6;
	#20
	A = 16'hba94;
	B = 16'h3b77;
	ans = 16'h2f18;
	#20
	A = 16'hb52c;
	B = 16'hb963;
	ans = 16'hbbf9;
	#20
	A = 16'haddf;
	B = 16'h3519;
	ans = 16'h3342;
	#20
	A = 16'hb052;
	B = 16'h3407;
	ans = 16'h2f78;
	#20
	A = 16'hb91c;
	B = 16'h30f1;
	ans = 16'hb7c0;
	#20
	A = 16'h3b52;
	B = 16'h37e4;
	ans = 16'h3da2;
	#20
	A = 16'hb977;
	B = 16'hbbf1;
	ans = 16'hbeb4;
	#20
	A = 16'ha5f0;
	B = 16'hbb4b;
	ans = 16'hbb7a;
	#20
	A = 16'h3237;
	B = 16'h2516;
	ans = 16'h32da;
	#20
	A = 16'h38c6;
	B = 16'h3645;
	ans = 16'h3be8;
	#20
	A = 16'hb584;
	B = 16'h3834;
	ans = 16'h31c8;
	#20
	A = 16'h2c15;
	B = 16'hb456;
	ans = 16'hb2a2;
	#20
	A = 16'h3b92;
	B = 16'hac13;
	ans = 16'h3b10;
	#20
	A = 16'hb899;
	B = 16'h3ba4;
	ans = 16'h3616;
	#20
	A = 16'hb98c;
	B = 16'h389f;
	ans = 16'haf68;
	#20
	A = 16'h99d4;
	B = 16'hb4f2;
	ans = 16'hb4fe;
	#20
	A = 16'h3b77;
	B = 16'h3ae9;
	ans = 16'h3f30;
	#20
	A = 16'h3adf;
	B = 16'hb6bf;
	ans = 16'h36ff;
	#20
	A = 16'h2d44;
	B = 16'h38a1;
	ans = 16'h394a;
	#20
	A = 16'hb8f7;
	B = 16'h3929;
	ans = 16'h2640;
	#20
	A = 16'hac9f;
	B = 16'h29a5;
	ans = 16'ha732;
	#20
	A = 16'h38de;
	B = 16'hb4c5;
	ans = 16'h34f7;
	#20
	A = 16'h315d;
	B = 16'h354c;
	ans = 16'h37fa;
	#20
	A = 16'ha845;
	B = 16'h2f11;
	ans = 16'h2cee;
	#20
	A = 16'hba47;
	B = 16'hb942;
	ans = 16'hbdc4;
	#20
	A = 16'hb604;
	B = 16'ha8aa;
	ans = 16'hb699;
	#20
	A = 16'hb869;
	B = 16'h25bc;
	ans = 16'hb83b;
	#20
	A = 16'h3550;
	B = 16'hbb80;
	ans = 16'hb8d8;
	#20
	A = 16'hb8bb;
	B = 16'h3a32;
	ans = 16'h31dc;
	#20
	A = 16'h27db;
	B = 16'hb8ba;
	ans = 16'hb87b;
	#20
	A = 16'h3161;
	B = 16'hbbcc;
	ans = 16'hba74;
	#20
	A = 16'hadef;
	B = 16'hb989;
	ans = 16'hba47;
	#20
	A = 16'h2fae;
	B = 16'h2a3f;
	ans = 16'h3167;
	#20
	A = 16'hb1d6;
	B = 16'hb0a0;
	ans = 16'hb53b;
	#20
	A = 16'haebb;
	B = 16'h3b9c;
	ans = 16'h3ac5;
	#20
	A = 16'h303b;
	B = 16'h3a85;
	ans = 16'h3b94;
	#20
	A = 16'hb8e1;
	B = 16'h3b45;
	ans = 16'h34c8;
	#20
	A = 16'h39fd;
	B = 16'h37fb;
	ans = 16'h3cfd;
	#20
	A = 16'hb4c7;
	B = 16'hac9a;
	ans = 16'hb5ee;
	#20
	A = 16'h3642;
	B = 16'h3540;
	ans = 16'h39c1;
	#20
	A = 16'h391e;
	B = 16'hb518;
	ans = 16'h3524;
	#20
	A = 16'h3425;
	B = 16'h33ec;
	ans = 16'h380e;
	#20
	A = 16'h3689;
	B = 16'h3aaf;
	ans = 16'h3cfa;
	#20
	A = 16'hbbcc;
	B = 16'hb913;
	ans = 16'hbe70;
	#20
	A = 16'hb9ad;
	B = 16'h313f;
	ans = 16'hb85d;
	#20
	A = 16'hb89f;
	B = 16'hbbcc;
	ans = 16'hbe36;
	#20
	A = 16'hb025;
	B = 16'h3887;
	ans = 16'h36fc;
	#20
	A = 16'h39f1;
	B = 16'h2d1f;
	ans = 16'h3a95;
	#20
	A = 16'hba9a;
	B = 16'hb6e1;
	ans = 16'hbd05;
	#20
	A = 16'h394b;
	B = 16'h3a90;
	ans = 16'h3dee;
	#20
	A = 16'hb9f0;
	B = 16'hba7f;
	ans = 16'hbe38;
	#20
	A = 16'h3036;
	B = 16'h2fae;
	ans = 16'h3406;
	#20
	A = 16'hae97;
	B = 16'h3549;
	ans = 16'h3346;
	#20
	A = 16'h3216;
	B = 16'h38bd;
	ans = 16'h3a42;
	#20
	A = 16'hbb7a;
	B = 16'h1dbf;
	ans = 16'hbb6f;
	#20
	A = 16'hb171;
	B = 16'hb498;
	ans = 16'hb750;
	#20
	A = 16'hb695;
	B = 16'hb48e;
	ans = 16'hb992;
	#20
	A = 16'h3a0a;
	B = 16'hb973;
	ans = 16'h2cb8;
	#20
	A = 16'h3261;
	B = 16'hb9f5;
	ans = 16'hb85d;
	#20
	A = 16'hb80d;
	B = 16'h3a4d;
	ans = 16'h3480;
	#20
	A = 16'hbbd9;
	B = 16'h388e;
	ans = 16'hb696;
	#20
	A = 16'hbacb;
	B = 16'h3501;
	ans = 16'hb84a;
	#20
	A = 16'h3861;
	B = 16'h383a;
	ans = 16'h3c4e;
	#20
	A = 16'h2d3c;
	B = 16'hb67b;
	ans = 16'hb52c;
	#20
	A = 16'h2d30;
	B = 16'hb2ad;
	ans = 16'hb015;
	#20
	A = 16'hb92d;
	B = 16'h3b75;
	ans = 16'h3490;
	#20
	A = 16'hb753;
	B = 16'h39df;
	ans = 16'h346b;
	#20
	A = 16'h390c;
	B = 16'hb931;
	ans = 16'ha4a0;
	#20
	A = 16'h31ef;
	B = 16'h3beb;
	ans = 16'h3cb3;
	#20
	A = 16'h3814;
	B = 16'hb2cf;
	ans = 16'h34c0;
	#20
	A = 16'hb76b;
	B = 16'h317b;
	ans = 16'hb4ae;
	#20
	A = 16'hb953;
	B = 16'hbb4d;
	ans = 16'hbe50;
	#20
	A = 16'h3640;
	B = 16'h2989;
	ans = 16'h36f1;
	#20
	A = 16'h1b18;
	B = 16'hb84c;
	ans = 16'hb845;
	#20
	A = 16'haa0d;
	B = 16'hb96f;
	ans = 16'hb9d0;
	#20
	A = 16'hb18d;
	B = 16'h3263;
	ans = 16'h26b0;
	#20
	A = 16'h3a31;
	B = 16'hb61c;
	ans = 16'h3646;
	#20
	A = 16'hb519;
	B = 16'h391b;
	ans = 16'h351d;
	#20
	A = 16'hb7cf;
	B = 16'h38cd;
	ans = 16'h2f2c;
	#20
	A = 16'hb0eb;
	B = 16'h3061;
	ans = 16'ha450;
	#20
	A = 16'h3579;
	B = 16'hb647;
	ans = 16'haa70;
	#20
	A = 16'h27ca;
	B = 16'ha267;
	ans = 16'h2496;
	#20
	A = 16'h2fbe;
	B = 16'h39ab;
	ans = 16'h3aa3;
	#20
	A = 16'h381e;
	B = 16'h34f0;
	ans = 16'h3a96;
	#20
	A = 16'hbbda;
	B = 16'h35fc;
	ans = 16'hb8dc;
	#20
	A = 16'hb92a;
	B = 16'h39a3;
	ans = 16'h2b90;
	#20
	A = 16'hb576;
	B = 16'hb60b;
	ans = 16'hb9c0;
	#20
	A = 16'hbb46;
	B = 16'hb81c;
	ans = 16'hbdb1;
	#20
	A = 16'hb57d;
	B = 16'hba69;
	ans = 16'hbc94;
	#20
	A = 16'hbb94;
	B = 16'h3b8a;
	ans = 16'h9d00;
	#20
	A = 16'hb784;
	B = 16'h350b;
	ans = 16'hb0f2;
	#20
	A = 16'h291a;
	B = 16'hb702;
	ans = 16'hb65f;
	#20
	A = 16'h28a5;
	B = 16'h3aed;
	ans = 16'h3b37;
	#20
	A = 16'hb199;
	B = 16'hba3c;
	ans = 16'hbba2;
	#20
	A = 16'hba50;
	B = 16'h3905;
	ans = 16'hb12c;
	#20
	A = 16'h3139;
	B = 16'h39f0;
	ans = 16'h3b3e;
	#20
	A = 16'hb950;
	B = 16'hb85e;
	ans = 16'hbcd7;
	#20
	A = 16'hb28c;
	B = 16'hab03;
	ans = 16'hb426;
	#20
	A = 16'h3b45;
	B = 16'hba46;
	ans = 16'h2ff8;
	#20
	A = 16'h3648;
	B = 16'h3b1c;
	ans = 16'h3d20;
	#20
	A = 16'hb2aa;
	B = 16'hbbc5;
	ans = 16'hbcb8;
	#20
	A = 16'h3a3d;
	B = 16'ha955;
	ans = 16'h39e8;
	#20
	A = 16'h34c1;
	B = 16'had65;
	ans = 16'h32d0;
	#20
	A = 16'hbb85;
	B = 16'hb9ea;
	ans = 16'hbeb8;
	#20
	A = 16'hb5c5;
	B = 16'hb542;
	ans = 16'hb984;
	#20
	A = 16'hb5f4;
	B = 16'h39e8;
	ans = 16'h35dc;
	#20
	A = 16'hb015;
	B = 16'h32e9;
	ans = 16'h2da8;
	#20
	A = 16'hb526;
	B = 16'hb21b;
	ans = 16'hb81a;
	#20
	A = 16'h348e;
	B = 16'hb9ba;
	ans = 16'hb6e6;
	#20
	A = 16'hae9b;
	B = 16'hb949;
	ans = 16'hba1c;
	#20
	A = 16'hb8cc;
	B = 16'hb72f;
	ans = 16'hbc32;
	#20
	A = 16'hb27c;
	B = 16'hb8c2;
	ans = 16'hba61;
	#20
	A = 16'h3a92;
	B = 16'h9d93;
	ans = 16'h3a87;
	#20
	A = 16'h3523;
	B = 16'h2980;
	ans = 16'h35d3;
	#20
	A = 16'h3876;
	B = 16'hbae5;
	ans = 16'hb4de;
	#20
	A = 16'hbb83;
	B = 16'h35b9;
	ans = 16'hb8a6;
	#20
	A = 16'h3a43;
	B = 16'ha4f3;
	ans = 16'h3a1b;
	#20
	A = 16'h37e5;
	B = 16'h39cb;
	ans = 16'h3cdf;
	#20
	A = 16'hbabc;
	B = 16'h38dc;
	ans = 16'hb380;
	#20
	A = 16'hb931;
	B = 16'h346c;
	ans = 16'hb5f6;
	#20
	A = 16'h3707;
	B = 16'hb915;
	ans = 16'hb246;
	#20
	A = 16'h3b06;
	B = 16'h3838;
	ans = 16'h3d9f;
	#20
	A = 16'hb864;
	B = 16'h363c;
	ans = 16'hb118;
	#20
	A = 16'hb9bc;
	B = 16'hb219;
	ans = 16'hbb42;
	#20
	A = 16'h3991;
	B = 16'h38ab;
	ans = 16'h3d1e;
	#20
	A = 16'h3823;
	B = 16'hb5ac;
	ans = 16'h3134;
	#20
	A = 16'h3aa6;
	B = 16'h3558;
	ans = 16'h3ca9;
	#20
	A = 16'h3668;
	B = 16'hb9bc;
	ans = 16'hb510;
	#20
	A = 16'h3824;
	B = 16'h36c4;
	ans = 16'h3b86;
	#20
	A = 16'h390e;
	B = 16'h34b0;
	ans = 16'h3b66;
	#20
	A = 16'hb92f;
	B = 16'hb215;
	ans = 16'hbab4;
	#20
	A = 16'hbad0;
	B = 16'hb969;
	ans = 16'hbe1c;
	#20
	A = 16'h345d;
	B = 16'hb988;
	ans = 16'hb6b3;
	#20
	A = 16'hb920;
	B = 16'hb1c1;
	ans = 16'hba90;
	#20
	A = 16'hb8bc;
	B = 16'hbb56;
	ans = 16'hbe09;
	#20
	A = 16'hbb5c;
	B = 16'h397c;
	ans = 16'hb380;
	#20
	A = 16'hb5bc;
	B = 16'hba74;
	ans = 16'hbca9;
	#20
	A = 16'hb8be;
	B = 16'hb860;
	ans = 16'hbc8f;
	#20
	A = 16'h3b0b;
	B = 16'hbb30;
	ans = 16'ha4a0;
	#20
	A = 16'hbb11;
	B = 16'h2dfa;
	ans = 16'hba52;
	#20
	A = 16'h3718;
	B = 16'h2fdd;
	ans = 16'h3888;
	#20
	A = 16'hb9e5;
	B = 16'hacd7;
	ans = 16'hba80;
	#20
	A = 16'hba0f;
	B = 16'h3933;
	ans = 16'haee0;
	#20
	A = 16'haeea;
	B = 16'h231a;
	ans = 16'hae07;
	#20
	A = 16'h389e;
	B = 16'hba1a;
	ans = 16'hb1f0;
	#20
	A = 16'hb8a0;
	B = 16'h2322;
	ans = 16'hb883;
	#20
	A = 16'h37e5;
	B = 16'h30f6;
	ans = 16'h3930;
	#20
	A = 16'h39a3;
	B = 16'hb4fb;
	ans = 16'h364b;
	#20
	A = 16'h3501;
	B = 16'h3a17;
	ans = 16'h3c4c;
	#20
	A = 16'hb885;
	B = 16'hba7c;
	ans = 16'hbd80;
	#20
	A = 16'h388c;
	B = 16'h2e54;
	ans = 16'h3956;
	#20
	A = 16'h37d5;
	B = 16'h3715;
	ans = 16'h3b75;
	#20
	A = 16'hb309;
	B = 16'h3988;
	ans = 16'h378c;
	#20
	A = 16'hb793;
	B = 16'hbb1d;
	ans = 16'hbd73;
	#20
	A = 16'hbb83;
	B = 16'h3aad;
	ans = 16'haeb0;
	#20
	A = 16'h30a4;
	B = 16'h3946;
	ans = 16'h3a6f;
	#20
	A = 16'hb0a7;
	B = 16'hb8d3;
	ans = 16'hb9fd;
	#20
	A = 16'h39de;
	B = 16'h306f;
	ans = 16'h3afa;
	#20
	A = 16'h25e1;
	B = 16'h3915;
	ans = 16'h3944;
	#20
	A = 16'h3a39;
	B = 16'h37f6;
	ans = 16'h3d1a;
	#20
	A = 16'hb5a9;
	B = 16'hbb2c;
	ans = 16'hbd00;
	#20
	A = 16'hb696;
	B = 16'hb40e;
	ans = 16'hb952;
	#20
	A = 16'h3058;
	B = 16'h3bc5;
	ans = 16'h3c6e;
	#20
	A = 16'h368e;
	B = 16'hb618;
	ans = 16'h2760;
	#20
	A = 16'h3a09;
	B = 16'hb8a1;
	ans = 16'h31a0;
	#20
	A = 16'h3adf;
	B = 16'hb9f0;
	ans = 16'h2f78;
	#20
	A = 16'hb83e;
	B = 16'h3391;
	ans = 16'hb4b4;
	#20
	A = 16'h3a72;
	B = 16'h3bbf;
	ans = 16'h3f18;
	#20
	A = 16'hb00b;
	B = 16'hac8a;
	ans = 16'hb250;
	#20
	A = 16'h34eb;
	B = 16'hbb4e;
	ans = 16'hb8d8;
	#20
	A = 16'h356c;
	B = 16'h38b9;
	ans = 16'h3b6f;
	#20
	A = 16'hacd5;
	B = 16'hb680;
	ans = 16'hb7b5;
	#20
	A = 16'h2da1;
	B = 16'hb91c;
	ans = 16'hb868;
	#20
	A = 16'h26ef;
	B = 16'hbb39;
	ans = 16'hbb02;
	#20
	A = 16'h348c;
	B = 16'h3bf1;
	ans = 16'h3d1c;
	#20
	A = 16'h2ebf;
	B = 16'hb266;
	ans = 16'hae0d;
	#20
	A = 16'hbb92;
	B = 16'hb9d1;
	ans = 16'hbeb2;
	#20
	A = 16'hb635;
	B = 16'h3b85;
	ans = 16'h386a;
	#20
	A = 16'h3146;
	B = 16'hb6aa;
	ans = 16'hb407;
	#20
	A = 16'h297b;
	B = 16'h39fb;
	ans = 16'h3a53;
	#20
	A = 16'h3a3d;
	B = 16'hb27b;
	ans = 16'h389e;
	#20
	A = 16'hb323;
	B = 16'hb810;
	ans = 16'hb9d9;
	#20
	A = 16'hb892;
	B = 16'h35fd;
	ans = 16'hb24e;
	#20
	A = 16'hbbae;
	B = 16'h3944;
	ans = 16'hb4d4;
	#20
	A = 16'h3974;
	B = 16'h3af7;
	ans = 16'h3e36;
	#20
	A = 16'ha953;
	B = 16'hba72;
	ans = 16'hbac7;
	#20
	A = 16'h34f1;
	B = 16'hb976;
	ans = 16'hb5fb;
	#20
	A = 16'h3be3;
	B = 16'hb15b;
	ans = 16'h3a8c;
	#20
	A = 16'h3a56;
	B = 16'hb188;
	ans = 16'h38f4;
	#20
	A = 16'hb59b;
	B = 16'hbbf9;
	ans = 16'hbd63;
	#20
	A = 16'h38e8;
	B = 16'h3016;
	ans = 16'h39ee;
	#20
	A = 16'h3603;
	B = 16'h32cb;
	ans = 16'h38b4;
	#20
	A = 16'hba66;
	B = 16'hbaf3;
	ans = 16'hbeac;
	#20
	A = 16'hb52f;
	B = 16'hb590;
	ans = 16'hb960;
	#20
	A = 16'h1447;
	B = 16'h3b75;
	ans = 16'h3b77;
	#20
	A = 16'h24a8;
	B = 16'h3bf3;
	ans = 16'h3c0c;
	#20
	A = 16'hb563;
	B = 16'hb8cb;
	ans = 16'hbb7c;
	#20
	A = 16'hb789;
	B = 16'h3bf3;
	ans = 16'h382e;
	#20
	A = 16'h3ba2;
	B = 16'h3932;
	ans = 16'h3e6a;
	#20
	A = 16'hb95e;
	B = 16'h3a2a;
	ans = 16'h2e60;
	#20
	A = 16'h3289;
	B = 16'hb852;
	ans = 16'hb560;
	#20
	A = 16'hb9c1;
	B = 16'h3238;
	ans = 16'hb833;
	#20
	A = 16'h3aa4;
	B = 16'h2e64;
	ans = 16'h3b70;
	#20
	A = 16'haf48;
	B = 16'h3405;
	ans = 16'h3066;
	#20
	A = 16'h2b28;
	B = 16'hbb19;
	ans = 16'hbaa6;
	#20
	A = 16'hb9f5;
	B = 16'hbb12;
	ans = 16'hbe84;
	#20
	A = 16'hb531;
	B = 16'h30ce;
	ans = 16'hb194;
	#20
	A = 16'h376c;
	B = 16'h389f;
	ans = 16'h3c2a;
	#20
	A = 16'h3ab2;
	B = 16'h3b47;
	ans = 16'h3efc;
	#20
	A = 16'hb9b2;
	B = 16'h3ad3;
	ans = 16'h3084;
	#20
	A = 16'hbb5c;
	B = 16'h2b47;
	ans = 16'hbae8;
	#20
	A = 16'hb264;
	B = 16'hbb09;
	ans = 16'hbc51;
	#20
	A = 16'h3048;
	B = 16'haf6e;
	ans = 16'h2488;
	#20
	A = 16'hb7f8;
	B = 16'hb366;
	ans = 16'hb9d6;
	#20
	A = 16'h3996;
	B = 16'h38b5;
	ans = 16'h3d26;
	#20
	A = 16'h351f;
	B = 16'hbaf4;
	ans = 16'hb864;
	#20
	A = 16'had3c;
	B = 16'h37ec;
	ans = 16'h369d;
	#20
	A = 16'hb56e;
	B = 16'h3b62;
	ans = 16'h38ab;
	#20
	A = 16'h30bc;
	B = 16'hbaf8;
	ans = 16'hb9c9;
	#20
	A = 16'h3a1f;
	B = 16'h3169;
	ans = 16'h3b79;
	#20
	A = 16'hb8a7;
	B = 16'h367c;
	ans = 16'hb1a4;
	#20
	A = 16'h33dc;
	B = 16'h3a1b;
	ans = 16'h3c09;
	#20
	A = 16'hba8d;
	B = 16'h34a4;
	ans = 16'hb83b;
	#20
	A = 16'hb23f;
	B = 16'hb73d;
	ans = 16'hb92e;
	#20
	A = 16'h2eab;
	B = 16'hb9ce;
	ans = 16'hb8f9;
	#20
	A = 16'hbbfc;
	B = 16'hb44e;
	ans = 16'hbd12;
	#20
	A = 16'h3807;
	B = 16'hba46;
	ans = 16'hb47e;
	#20
	A = 16'hb3b6;
	B = 16'h3a41;
	ans = 16'h3854;
	#20
	A = 16'hb9bc;
	B = 16'hb946;
	ans = 16'hbd81;
	#20
	A = 16'h3a5c;
	B = 16'h3a95;
	ans = 16'h3e78;
	#20
	A = 16'hb4d4;
	B = 16'hb7a3;
	ans = 16'hba3c;
	#20
	A = 16'h3960;
	B = 16'hbb4b;
	ans = 16'hb3ac;
	#20
	A = 16'hb58f;
	B = 16'hb9e0;
	ans = 16'hbc54;
	#20
	A = 16'hb4d0;
	B = 16'h2368;
	ans = 16'hb495;
	#20
	A = 16'h3869;
	B = 16'h3969;
	ans = 16'h3ce9;
	#20
	A = 16'hba12;
	B = 16'h389a;
	ans = 16'hb1e0;
	#20
	A = 16'h3777;
	B = 16'h3446;
	ans = 16'h39de;
	#20
	A = 16'hb0b9;
	B = 16'ha44e;
	ans = 16'hb143;
	#20
	A = 16'h3143;
	B = 16'hb752;
	ans = 16'hb4b0;
	#20
	A = 16'hb0f6;
	B = 16'hb3a7;
	ans = 16'hb64e;
	#20
	A = 16'ha84b;
	B = 16'hb99f;
	ans = 16'hb9e4;
	#20
	A = 16'h2536;
	B = 16'hb60b;
	ans = 16'hb5b8;
	#20
	A = 16'hbaf3;
	B = 16'hb304;
	ans = 16'hbc5a;
	#20
	A = 16'h3b8b;
	B = 16'h3adb;
	ans = 16'h3f33;
	#20
	A = 16'h28a6;
	B = 16'h31fd;
	ans = 16'h3326;
	#20
	A = 16'hbb8a;
	B = 16'h38a7;
	ans = 16'hb5c6;
	#20
	A = 16'h389c;
	B = 16'h30fc;
	ans = 16'h39db;
	#20
	A = 16'hb76d;
	B = 16'hbb36;
	ans = 16'hbd76;
	#20
	A = 16'hb355;
	B = 16'hb943;
	ans = 16'hbb18;
	#20
	A = 16'h320b;
	B = 16'hb6d7;
	ans = 16'hb3a3;
	#20
	A = 16'h2b73;
	B = 16'h30ec;
	ans = 16'h32c9;
	#20
	A = 16'h3983;
	B = 16'h39a7;
	ans = 16'h3d95;
	#20
	A = 16'h34b9;
	B = 16'h345c;
	ans = 16'h388a;
	#20
	A = 16'hba69;
	B = 16'hb7fc;
	ans = 16'hbd34;
	#20
	A = 16'h3a97;
	B = 16'hacc4;
	ans = 16'h39fe;
	#20
	A = 16'hbb3e;
	B = 16'h39b9;
	ans = 16'hb214;
	#20
	A = 16'hb948;
	B = 16'hb8c5;
	ans = 16'hbd06;
	#20
	A = 16'h3ae7;
	B = 16'h394b;
	ans = 16'h3e19;
	#20
	A = 16'hb461;
	B = 16'hb703;
	ans = 16'hb9b2;
	#20
	A = 16'hb555;
	B = 16'h3262;
	ans = 16'hb048;
	#20
	A = 16'hb299;
	B = 16'h3a0a;
	ans = 16'h3864;
	#20
	A = 16'h34a8;
	B = 16'h37c5;
	ans = 16'h3a36;
	#20
	A = 16'hb149;
	B = 16'hb98f;
	ans = 16'hbae1;
	#20
	A = 16'hba9d;
	B = 16'h36fc;
	ans = 16'hb63e;
	#20
	A = 16'hb99d;
	B = 16'hb811;
	ans = 16'hbcd7;
	#20
	A = 16'hb1ab;
	B = 16'h3a67;
	ans = 16'h38fc;
	#20
	A = 16'hb804;
	B = 16'hb531;
	ans = 16'hba9c;
	#20
	A = 16'h3b21;
	B = 16'hb326;
	ans = 16'h3958;
	#20
	A = 16'hbaa9;
	B = 16'h3900;
	ans = 16'hb2a4;
	#20
	A = 16'h37f4;
	B = 16'h382f;
	ans = 16'h3c14;
	#20
	A = 16'hbadc;
	B = 16'hab20;
	ans = 16'hbb4e;
	#20
	A = 16'h2d35;
	B = 16'h33ef;
	ans = 16'h3545;
	#20
	A = 16'hba1a;
	B = 16'h3678;
	ans = 16'hb5bc;
	#20
	A = 16'hb032;
	B = 16'h39a6;
	ans = 16'h389a;
	#20
	A = 16'h35bf;
	B = 16'h2d9d;
	ans = 16'h3726;
	#20
	A = 16'haf47;
	B = 16'h319d;
	ans = 16'h2be6;
	#20
	A = 16'h361e;
	B = 16'h3aa4;
	ans = 16'h3cda;
	#20
	A = 16'hb49f;
	B = 16'h34e3;
	ans = 16'h2440;
	#20
	A = 16'hb96e;
	B = 16'h37c6;
	ans = 16'hb22c;
	#20
	A = 16'hb2fd;
	B = 16'h310e;
	ans = 16'habbc;
	#20
	A = 16'hbb86;
	B = 16'h3a83;
	ans = 16'hb00c;
	#20
	A = 16'hb0e6;
	B = 16'hb0ca;
	ans = 16'hb4d8;
	#20
	A = 16'h327e;
	B = 16'h3089;
	ans = 16'h3584;
	#20
	A = 16'hb48c;
	B = 16'h3862;
	ans = 16'h3438;
	#20
	A = 16'h3689;
	B = 16'hb8b6;
	ans = 16'hb1c6;
	#20
	A = 16'hbb67;
	B = 16'h3a14;
	ans = 16'hb14c;
	#20
	A = 16'h2992;
	B = 16'hb98b;
	ans = 16'hb932;
	#20
	A = 16'h2413;
	B = 16'hb070;
	ans = 16'hafdb;
	#20
	A = 16'h2e3b;
	B = 16'h2f35;
	ans = 16'h32b8;
	#20
	A = 16'hb68b;
	B = 16'h3b6f;
	ans = 16'h382a;
	#20
	A = 16'hbb41;
	B = 16'hb80b;
	ans = 16'hbda6;
	#20
	A = 16'h394e;
	B = 16'ha7fc;
	ans = 16'h390e;
	#20
	A = 16'h3bfc;
	B = 16'h368c;
	ans = 16'h3da1;
	#20
	A = 16'haf26;
	B = 16'h3a31;
	ans = 16'h394c;
	#20
	A = 16'h3a5a;
	B = 16'h38ad;
	ans = 16'h3d84;
	#20
	A = 16'hbbed;
	B = 16'h3b72;
	ans = 16'habb0;
	#20
	A = 16'hb6d6;
	B = 16'h398f;
	ans = 16'h3448;
	#20
	A = 16'h38d4;
	B = 16'hb7f9;
	ans = 16'h2ebc;
	#20
	A = 16'hbbcc;
	B = 16'hb31a;
	ans = 16'hbcc9;
	#20
	A = 16'h3342;
	B = 16'ha8ad;
	ans = 16'h3217;
	#20
	A = 16'hb912;
	B = 16'h326b;
	ans = 16'hb6ee;
	#20
	A = 16'h3472;
	B = 16'hba91;
	ans = 16'hb858;
	#20
	A = 16'hba18;
	B = 16'hb809;
	ans = 16'hbd10;
	#20
	A = 16'hb864;
	B = 16'h31b4;
	ans = 16'hb5ee;
	#20
	A = 16'haa7f;
	B = 16'hb846;
	ans = 16'hb8ae;
	#20
	A = 16'hb523;
	B = 16'hb80a;
	ans = 16'hba9c;
	#20
	A = 16'ha829;
	B = 16'h2cc1;
	ans = 16'h2959;
	#20
	A = 16'h3976;
	B = 16'h3b2f;
	ans = 16'h3e52;
	#20
	A = 16'hb8e3;
	B = 16'h3bf1;
	ans = 16'h361c;
	#20
	A = 16'h343c;
	B = 16'h3960;
	ans = 16'h3b7e;
	#20
	A = 16'h30ed;
	B = 16'hb8ec;
	ans = 16'hb762;
	#20
	A = 16'h385d;
	B = 16'h3991;
	ans = 16'h3cf7;
	#20
	A = 16'h2fe8;
	B = 16'h3ad3;
	ans = 16'h3bd0;
	#20
	A = 16'h3a1c;
	B = 16'ha49a;
	ans = 16'h39f7;
	#20
	A = 16'h3a96;
	B = 16'h3274;
	ans = 16'h3c1a;
	#20
	A = 16'hb6bc;
	B = 16'hb9c2;
	ans = 16'hbc90;
	#20
	A = 16'hb6be;
	B = 16'hb63e;
	ans = 16'hba7e;
	#20
	A = 16'hbaee;
	B = 16'hb6ff;
	ans = 16'hbd37;
	#20
	A = 16'h3386;
	B = 16'hbb06;
	ans = 16'hb924;
	#20
	A = 16'h39c0;
	B = 16'hb1ff;
	ans = 16'h3840;
	#20
	A = 16'h33e2;
	B = 16'h37c5;
	ans = 16'h39db;
	#20
	A = 16'h38cc;
	B = 16'hb6a8;
	ans = 16'h31e0;
	#20
	A = 16'hb864;
	B = 16'h39de;
	ans = 16'h31e8;
	#20
	A = 16'h2d2a;
	B = 16'h3471;
	ans = 16'h35bc;
	#20
	A = 16'hb880;
	B = 16'hb60a;
	ans = 16'hbb85;
	#20
	A = 16'h353b;
	B = 16'hb596;
	ans = 16'ha5b0;
	#20
	A = 16'h259b;
	B = 16'h3942;
	ans = 16'h396f;
	#20
	A = 16'h2962;
	B = 16'h23a4;
	ans = 16'h2b4b;
	#20
	A = 16'hb49f;
	B = 16'h39f6;
	ans = 16'h374d;
	#20
	A = 16'hb909;
	B = 16'h2e79;
	ans = 16'hb83a;
	#20
	A = 16'hb635;
	B = 16'hb6de;
	ans = 16'hba8a;
	#20
	A = 16'hb4d3;
	B = 16'h3b65;
	ans = 16'h38fc;
	#20
	A = 16'h38cc;
	B = 16'hb804;
	ans = 16'h2e40;
	#20
	A = 16'h2fbf;
	B = 16'h3968;
	ans = 16'h3a60;
	#20
	A = 16'hb86e;
	B = 16'hb80a;
	ans = 16'hbc3c;
	#20
	A = 16'ha96b;
	B = 16'hb89b;
	ans = 16'hb8f2;
	#20
	A = 16'hba87;
	B = 16'hb0bb;
	ans = 16'hbbb6;
	#20
	A = 16'h3a67;
	B = 16'hba87;
	ans = 16'ha400;
	#20
	A = 16'h3029;
	B = 16'ha95b;
	ans = 16'h2da4;
	#20
	A = 16'hbb0b;
	B = 16'h2f53;
	ans = 16'hba21;
	#20
	A = 16'h3aa7;
	B = 16'h3900;
	ans = 16'h3dd4;
	#20
	A = 16'hbbc0;
	B = 16'h38da;
	ans = 16'hb5cc;
	#20
	A = 16'h38ba;
	B = 16'ha740;
	ans = 16'h3880;
	#20
	A = 16'hb83f;
	B = 16'hb888;
	ans = 16'hbc64;
	#20
	A = 16'hb84b;
	B = 16'h2e0c;
	ans = 16'hb713;
	#20
	A = 16'h30f3;
	B = 16'h3985;
	ans = 16'h3ac2;
	#20
	A = 16'h36b4;
	B = 16'h3978;
	ans = 16'h3c69;
	#20
	A = 16'hbbc8;
	B = 16'h380b;
	ans = 16'hb77a;
	#20
	A = 16'had0b;
	B = 16'ha890;
	ans = 16'haf53;
	#20
	A = 16'h38be;
	B = 16'h34d1;
	ans = 16'h3b26;
	#20
	A = 16'hb842;
	B = 16'h375c;
	ans = 16'haca0;
	#20
	A = 16'hb43b;
	B = 16'hb189;
	ans = 16'hb700;
	#20
	A = 16'h39ac;
	B = 16'h3975;
	ans = 16'h3d90;
	#20
	A = 16'h3bf2;
	B = 16'hafc8;
	ans = 16'h3af9;
	#20
	A = 16'hb292;
	B = 16'h396a;
	ans = 16'h378b;
	#20
	A = 16'hb32e;
	B = 16'hbb7f;
	ans = 16'hbca5;
	#20
	A = 16'hb470;
	B = 16'h3790;
	ans = 16'h3240;
	#20
	A = 16'hb2af;
	B = 16'h3595;
	ans = 16'h307b;
	#20
	A = 16'hb46f;
	B = 16'hadb9;
	ans = 16'hb5dd;
	#20
	A = 16'h376e;
	B = 16'h38ec;
	ans = 16'h3c52;
	#20
	A = 16'hb816;
	B = 16'hb678;
	ans = 16'hbb52;
	#20
	A = 16'h3a2b;
	B = 16'h38ce;
	ans = 16'h3d7c;
	#20
	A = 16'hbad9;
	B = 16'h3af5;
	ans = 16'h2300;
	#20
	A = 16'hbb47;
	B = 16'h2d4a;
	ans = 16'hba9e;
	#20
	A = 16'h2756;
	B = 16'hba44;
	ans = 16'hba09;
	#20
	A = 16'h3b4d;
	B = 16'ha2b5;
	ans = 16'h3b32;
	#20
	A = 16'h2d6b;
	B = 16'h3abd;
	ans = 16'h3b6a;
	#20
	A = 16'hb5b9;
	B = 16'h382b;
	ans = 16'h313a;
	#20
	A = 16'hbb7f;
	B = 16'h325b;
	ans = 16'hb9e8;
	#20
	A = 16'hb6f3;
	B = 16'h2ce9;
	ans = 16'hb5b9;
	#20
	A = 16'hb99a;
	B = 16'h2bac;
	ans = 16'hb91f;
	#20
	A = 16'h3119;
	B = 16'h3994;
	ans = 16'h3ada;
	#20
	A = 16'h3634;
	B = 16'h24a9;
	ans = 16'h367f;
	#20
	A = 16'h37d7;
	B = 16'h3a40;
	ans = 16'h3d16;
	#20
	A = 16'hb2f8;
	B = 16'h34ed;
	ans = 16'h2dc4;
	#20
	A = 16'hb845;
	B = 16'hba04;
	ans = 16'hbd24;
	#20
	A = 16'hb954;
	B = 16'haf9f;
	ans = 16'hba48;
	#20
	A = 16'hb6d4;
	B = 16'hb121;
	ans = 16'hb8b2;
	#20
	A = 16'h3a29;
	B = 16'ha8a4;
	ans = 16'h39df;
	#20
	A = 16'hbac0;
	B = 16'hb855;
	ans = 16'hbd8a;
	#20
	A = 16'hbbf2;
	B = 16'hb82d;
	ans = 16'hbe10;
	#20
	A = 16'hac18;
	B = 16'hab1a;
	ans = 16'hafa5;
	#20
	A = 16'hb902;
	B = 16'hb55a;
	ans = 16'hbbaf;
	#20
	A = 16'h36a7;
	B = 16'hb26d;
	ans = 16'h32e1;
	#20
	A = 16'hb03d;
	B = 16'hb824;
	ans = 16'hb933;
	#20
	A = 16'h3321;
	B = 16'hb89a;
	ans = 16'hb5a4;
	#20
	A = 16'hab61;
	B = 16'hbbf2;
	ans = 16'hbc34;
	#20
	A = 16'hbb6c;
	B = 16'hbbef;
	ans = 16'hbfae;
	#20
	A = 16'hbb07;
	B = 16'h31f6;
	ans = 16'hb98a;
	#20
	A = 16'ha9d3;
	B = 16'h328b;
	ans = 16'h3116;
	#20
	A = 16'hbaaf;
	B = 16'hb77b;
	ans = 16'hbd36;
	#20
	A = 16'hba86;
	B = 16'hb625;
	ans = 16'hbccc;
	#20
	A = 16'hbba5;
	B = 16'h2f1f;
	ans = 16'hbac1;
	#20
	A = 16'hb5c6;
	B = 16'h29ff;
	ans = 16'hb506;
	#20
	A = 16'hb73a;
	B = 16'hb9e3;
	ans = 16'hbcc0;
	#20
	A = 16'hba18;
	B = 16'h3b16;
	ans = 16'h2ff0;
	#20
	A = 16'h342b;
	B = 16'hbb0c;
	ans = 16'hb8f6;
	#20
	A = 16'hbaff;
	B = 16'h3593;
	ans = 16'hb836;
	#20
	A = 16'hb7f5;
	B = 16'hb6a0;
	ans = 16'hbb4a;
	#20
	A = 16'h9b02;
	B = 16'hbaf4;
	ans = 16'hbafb;
	#20
	A = 16'h3458;
	B = 16'h3adc;
	ans = 16'h3c84;
	#20
	A = 16'h36c6;
	B = 16'hb6ea;
	ans = 16'ha080;
	#20
	A = 16'hb807;
	B = 16'hb7d5;
	ans = 16'hbbf2;
	#20
	A = 16'h358d;
	B = 16'hbaf0;
	ans = 16'hb82a;
	#20
	A = 16'ha816;
	B = 16'hb99f;
	ans = 16'hb9e0;
	#20
	A = 16'h3483;
	B = 16'hb967;
	ans = 16'hb64b;
	#20
	A = 16'haa4d;
	B = 16'ha932;
	ans = 16'hadc0;
	#20
	A = 16'h3a16;
	B = 16'hb836;
	ans = 16'h3380;
	#20
	A = 16'hb1f7;
	B = 16'h307d;
	ans = 16'ha9e8;
	#20
	A = 16'h3822;
	B = 16'h3bd0;
	ans = 16'h3df9;
	#20
	A = 16'h36da;
	B = 16'h9e55;
	ans = 16'h36c1;
	#20
	A = 16'h3969;
	B = 16'hbbb8;
	ans = 16'hb49e;
	#20
	A = 16'hbbda;
	B = 16'hae69;
	ans = 16'hbc54;
	#20
	A = 16'hb722;
	B = 16'h3133;
	ans = 16'hb488;
	#20
	A = 16'hb825;
	B = 16'h3989;
	ans = 16'h3190;
	#20
	A = 16'hba37;
	B = 16'h3a59;
	ans = 16'h2440;
	#20
	A = 16'ha5eb;
	B = 16'h3a57;
	ans = 16'h3a28;
	#20
	A = 16'h3bf0;
	B = 16'h35b3;
	ans = 16'h3d65;
	#20
	A = 16'h3b7b;
	B = 16'h389b;
	ans = 16'h3e0b;
	#20
	A = 16'hb6c7;
	B = 16'hb95d;
	ans = 16'hbc60;
	#20
	A = 16'h3845;
	B = 16'h3748;
	ans = 16'h3be9;
	#20
	A = 16'hbb3b;
	B = 16'h342d;
	ans = 16'hb924;
	#20
	A = 16'h3920;
	B = 16'hb9a8;
	ans = 16'hac40;
	#20
	A = 16'h34ac;
	B = 16'hbbda;
	ans = 16'hb984;
	#20
	A = 16'h3860;
	B = 16'h3bea;
	ans = 16'h3e25;
	#20
	A = 16'hac3d;
	B = 16'h31ed;
	ans = 16'h2f9d;
	#20
	A = 16'h3002;
	B = 16'h35c4;
	ans = 16'h37c5;
	#20
	A = 16'hb511;
	B = 16'h398f;
	ans = 16'h360d;
	#20
	A = 16'h3446;
	B = 16'h3017;
	ans = 16'h3652;
	#20
	A = 16'hb0db;
	B = 16'hbbf4;
	ans = 16'hbc95;
	#20
	A = 16'h3bf4;
	B = 16'h399d;
	ans = 16'h3ec8;
	#20
	A = 16'hba97;
	B = 16'hb66f;
	ans = 16'hbce7;
	#20
	A = 16'hbb9c;
	B = 16'h391c;
	ans = 16'hb500;
	#20
	A = 16'hb416;
	B = 16'hba81;
	ans = 16'hbc46;
	#20
	A = 16'h3bcd;
	B = 16'h37e5;
	ans = 16'h3de0;
	#20
	A = 16'hb673;
	B = 16'h399d;
	ans = 16'h34c7;
	#20
	A = 16'h3ab1;
	B = 16'h3666;
	ans = 16'h3cf2;
	#20
	A = 16'hbb1e;
	B = 16'hb577;
	ans = 16'hbced;
	#20
	A = 16'hb911;
	B = 16'h3204;
	ans = 16'hb720;
	#20
	A = 16'hb25d;
	B = 16'hb8ef;
	ans = 16'hba86;
	#20
	A = 16'hb545;
	B = 16'hb049;
	ans = 16'hb76a;
	#20
	A = 16'h299c;
	B = 16'h37e4;
	ans = 16'h384c;
	#20
	A = 16'h3b36;
	B = 16'hb8c2;
	ans = 16'h34e8;
	#20
	A = 16'hb452;
	B = 16'h2f53;
	ans = 16'hb0fa;
	#20
	A = 16'h3bfd;
	B = 16'hbadc;
	ans = 16'h3084;
	#20
	A = 16'hb531;
	B = 16'hba22;
	ans = 16'hbc5d;
	#20
	A = 16'hbbab;
	B = 16'h312a;
	ans = 16'hba60;
	#20
	A = 16'hbac9;
	B = 16'h38ca;
	ans = 16'hb3fc;
	#20
	A = 16'h30b9;
	B = 16'h3581;
	ans = 16'h37de;
	#20
	A = 16'hbb21;
	B = 16'h33d6;
	ans = 16'hb92c;
	#20
	A = 16'h3149;
	B = 16'hb658;
	ans = 16'hb367;
	#20
	A = 16'hb749;
	B = 16'hb97d;
	ans = 16'hbc91;
	#20
	A = 16'h3991;
	B = 16'hb816;
	ans = 16'h31ec;
	#20
	A = 16'hb69a;
	B = 16'h3607;
	ans = 16'ha898;
	#20
	A = 16'hb9fb;
	B = 16'h35c4;
	ans = 16'hb632;
	#20
	A = 16'hba55;
	B = 16'hb630;
	ans = 16'hbcb6;
	#20
	A = 16'h3a9b;
	B = 16'hb87d;
	ans = 16'h343c;
	#20
	A = 16'hb406;
	B = 16'h31e5;
	ans = 16'hac4e;
	#20
	A = 16'hbaea;
	B = 16'h3bac;
	ans = 16'h2e10;
	#20
	A = 16'hb61a;
	B = 16'h2cd8;
	ans = 16'hb4e4;
	#20
	A = 16'hbbe4;
	B = 16'h3855;
	ans = 16'hb71e;
	#20
	A = 16'hbb17;
	B = 16'hae2d;
	ans = 16'hbbdd;
	#20
	A = 16'hb6af;
	B = 16'hb4bc;
	ans = 16'hb9b6;
	#20
	A = 16'hb931;
	B = 16'h3a7a;
	ans = 16'h3124;
	#20
	A = 16'h3820;
	B = 16'hb9c8;
	ans = 16'hb2a0;
	#20
	A = 16'h3656;
	B = 16'hb6fb;
	ans = 16'ha928;
	#20
	A = 16'hbb69;
	B = 16'hbb12;
	ans = 16'hbf3e;
	#20
	A = 16'hb8a6;
	B = 16'h34e5;
	ans = 16'hb467;
	#20
	A = 16'hba8e;
	B = 16'h18ad;
	ans = 16'hba89;
	#20
	A = 16'hb164;
	B = 16'h3708;
	ans = 16'h3456;
	#20
	A = 16'hbb84;
	B = 16'h3a3a;
	ans = 16'hb128;
	#20
	A = 16'h3692;
	B = 16'h3008;
	ans = 16'h384b;
	#20
	A = 16'h343e;
	B = 16'h3a92;
	ans = 16'h3c58;
	#20
	A = 16'hb306;
	B = 16'h3404;
	ans = 16'h2808;
	#20
	A = 16'hae1d;
	B = 16'h3ad9;
	ans = 16'h3a15;
	#20
	A = 16'hb9b2;
	B = 16'h3ba9;
	ans = 16'h33dc;
	#20
	A = 16'h2e1b;
	B = 16'h3a82;
	ans = 16'h3b45;
	#20
	A = 16'h3bf4;
	B = 16'h39ed;
	ans = 16'h3ef0;
	#20
	A = 16'h3bb4;
	B = 16'hbb2f;
	ans = 16'h2c28;
	#20
	A = 16'h3bef;
	B = 16'h3849;
	ans = 16'h3e1c;
	#20
	A = 16'hb477;
	B = 16'h3b54;
	ans = 16'h3918;
	#20
	A = 16'h3439;
	B = 16'hb832;
	ans = 16'hb42b;
	#20
	A = 16'h3a40;
	B = 16'hbbb6;
	ans = 16'hb1d8;
	#20
	A = 16'hb89d;
	B = 16'h3bd2;
	ans = 16'h366a;
	#20
	A = 16'h3569;
	B = 16'h34ba;
	ans = 16'h3912;
	#20
	A = 16'habec;
	B = 16'h3acd;
	ans = 16'h3a4e;
	#20
	A = 16'hb334;
	B = 16'h326f;
	ans = 16'ha628;
	#20
	A = 16'h2442;
	B = 16'hb530;
	ans = 16'hb4ec;
	#20
	A = 16'h2c64;
	B = 16'hb715;
	ans = 16'hb5fc;
	#20
	A = 16'h3544;
	B = 16'h342a;
	ans = 16'h38b7;
	#20
	A = 16'h3180;
	B = 16'h3795;
	ans = 16'h392a;
	#20
	A = 16'hb45c;
	B = 16'hb72e;
	ans = 16'hb9c5;
	#20
	A = 16'h3781;
	B = 16'hbacf;
	ans = 16'hb61d;
	#20
	A = 16'hbbd7;
	B = 16'h2df2;
	ans = 16'hbb19;
	#20
	A = 16'h3b7d;
	B = 16'hb875;
	ans = 16'h3610;
	#20
	A = 16'h3b54;
	B = 16'h2869;
	ans = 16'h3b9b;
	#20
	A = 16'h353b;
	B = 16'hba17;
	ans = 16'hb6f3;
	#20
	A = 16'h3b8f;
	B = 16'hb41e;
	ans = 16'h3980;
	#20
	A = 16'hb4f5;
	B = 16'hba0c;
	ans = 16'hbc43;
	#20
	A = 16'hb926;
	B = 16'h3aaa;
	ans = 16'h3210;
	#20
	A = 16'h3a90;
	B = 16'h3b50;
	ans = 16'h3ef0;
	#20
	A = 16'h3725;
	B = 16'h3930;
	ans = 16'h3c61;
	#20
	A = 16'hba1f;
	B = 16'h35c8;
	ans = 16'hb676;
	#20
	A = 16'h3bc5;
	B = 16'hbac8;
	ans = 16'h2fe8;
	#20
	A = 16'hb9ff;
	B = 16'h3ac6;
	ans = 16'h2e38;
	#20
	A = 16'h3889;
	B = 16'h38e8;
	ans = 16'h3cb8;
	#20
	A = 16'hb72e;
	B = 16'h36a0;
	ans = 16'ha870;
	#20
	A = 16'hb6c1;
	B = 16'h3bf9;
	ans = 16'h3898;
	#20
	A = 16'hb6a9;
	B = 16'h2f55;
	ans = 16'hb4d4;
	#20
	A = 16'hb8ef;
	B = 16'hb97a;
	ans = 16'hbd34;
	#20
	A = 16'h23fb;
	B = 16'h3bc7;
	ans = 16'h3be7;
	#20
	A = 16'hb511;
	B = 16'h3222;
	ans = 16'hb000;
	#20
	A = 16'h3803;
	B = 16'h2821;
	ans = 16'h3845;
	#20
	A = 16'h3ae6;
	B = 16'hbb1e;
	ans = 16'ha700;
	#20
	A = 16'haa00;
	B = 16'h2c3b;
	ans = 16'h24ec;
	#20
	A = 16'h34df;
	B = 16'h3834;
	ans = 16'h3aa4;
	#20
	A = 16'h336b;
	B = 16'hb286;
	ans = 16'h2728;
	#20
	A = 16'hba1d;
	B = 16'h3a1d;
	ans = 16'h0;
	#20
	A = 16'hb95a;
	B = 16'h3858;
	ans = 16'hb008;
	#20
	A = 16'ha80f;
	B = 16'h3902;
	ans = 16'h38c1;
	#20
	A = 16'h3946;
	B = 16'h2ffb;
	ans = 16'h3a45;
	#20
	A = 16'h2009;
	B = 16'hba93;
	ans = 16'hba83;
	#20
	A = 16'h3921;
	B = 16'h3948;
	ans = 16'h3d34;
	#20
	A = 16'h3678;
	B = 16'hb373;
	ans = 16'h317d;
	#20
	A = 16'h39ef;
	B = 16'h394d;
	ans = 16'h3d9e;
	#20
	A = 16'h323c;
	B = 16'hbbe7;
	ans = 16'hba58;
	#20
	A = 16'hb420;
	B = 16'hba38;
	ans = 16'hbc24;
	#20
	A = 16'h38dd;
	B = 16'h30ad;
	ans = 16'h3a08;
	#20
	A = 16'hb80a;
	B = 16'hb40a;
	ans = 16'hba0f;
	#20
	A = 16'hb965;
	B = 16'hba45;
	ans = 16'hbdd5;
	#20
	A = 16'h2fa3;
	B = 16'hb25c;
	ans = 16'had15;
	#20
	A = 16'h35da;
	B = 16'hba96;
	ans = 16'hb752;
	#20
	A = 16'h2e14;
	B = 16'h31cf;
	ans = 16'h346c;
	#20
	A = 16'hb8ca;
	B = 16'h20b3;
	ans = 16'hb8b7;
	#20
	A = 16'h3291;
	B = 16'h30fb;
	ans = 16'h35c6;
	#20
	A = 16'h3bc3;
	B = 16'ha98e;
	ans = 16'h3b6a;
	#20
	A = 16'h38f5;
	B = 16'h38ba;
	ans = 16'h3cd8;
	#20
	A = 16'h395f;
	B = 16'h2aba;
	ans = 16'h39cb;
	#20
	A = 16'had4d;
	B = 16'hbbdc;
	ans = 16'hbc43;
	#20
	A = 16'h34fd;
	B = 16'hb35b;
	ans = 16'h2d3e;
	#20
	A = 16'hb311;
	B = 16'hbac5;
	ans = 16'hbc45;
	#20
	A = 16'h2687;
	B = 16'h39f0;
	ans = 16'h3a24;
	#20
	A = 16'haada;
	B = 16'hb754;
	ans = 16'hb818;
	#20
	A = 16'h3b6d;
	B = 16'ha8fc;
	ans = 16'h3b1d;
	#20
	A = 16'h3222;
	B = 16'h3153;
	ans = 16'h35ba;
	#20
	A = 16'h3b56;
	B = 16'hbb4c;
	ans = 16'h1d00;
	#20
	A = 16'h3a08;
	B = 16'h24e3;
	ans = 16'h3a2f;
	#20
	A = 16'h3af0;
	B = 16'h3adc;
	ans = 16'h3ee6;
	#20
	A = 16'h3405;
	B = 16'hb1b2;
	ans = 16'h2cb0;
	#20
	A = 16'hb5ce;
	B = 16'h3b78;
	ans = 16'h3891;
	#20
	A = 16'h3852;
	B = 16'hb8ea;
	ans = 16'hacc0;
	#20
	A = 16'hb85f;
	B = 16'hb847;
	ans = 16'hbc53;
	#20
	A = 16'h3a86;
	B = 16'h35cb;
	ans = 16'h3cb6;
	#20
	A = 16'hb476;
	B = 16'h3b94;
	ans = 16'h3959;
	#20
	A = 16'h3b75;
	B = 16'h39ee;
	ans = 16'h3eb2;
	#20
	A = 16'hb6ee;
	B = 16'h317a;
	ans = 16'hb431;
	#20
	A = 16'hb703;
	B = 16'h3b20;
	ans = 16'h373d;
	#20
	A = 16'h3ab8;
	B = 16'hb93c;
	ans = 16'h31f0;
	#20
	A = 16'hb8d3;
	B = 16'h30d6;
	ans = 16'hb73b;
	#20
	A = 16'h3a3d;
	B = 16'h37c4;
	ans = 16'h3d10;
	#20
	A = 16'hb99a;
	B = 16'h3929;
	ans = 16'hab10;
	#20
	A = 16'hb50b;
	B = 16'hb82b;
	ans = 16'hbab0;
	#20
	A = 16'h38d3;
	B = 16'hbbe7;
	ans = 16'hb628;
	#20
	A = 16'hb8ac;
	B = 16'hb466;
	ans = 16'hbadf;
	#20
	A = 16'h369b;
	B = 16'hb252;
	ans = 16'h32e4;
	#20
	A = 16'h3ae5;
	B = 16'hb128;
	ans = 16'h399b;
	#20
	A = 16'h3bff;
	B = 16'h3b30;
	ans = 16'h3f98;
	#20
	A = 16'h3318;
	B = 16'h2f71;
	ans = 16'h3568;
	#20
	A = 16'hb622;
	B = 16'h395e;
	ans = 16'h349a;
	#20
	A = 16'h309a;
	B = 16'h37ee;
	ans = 16'h391e;
	#20
	A = 16'hb083;
	B = 16'h3a94;
	ans = 16'h3973;
	#20
	A = 16'h3493;
	B = 16'h3bf9;
	ans = 16'h3d21;
	#20
	A = 16'hb933;
	B = 16'h39fb;
	ans = 16'h2e40;
	#20
	A = 16'h37f2;
	B = 16'hb7c1;
	ans = 16'h2220;
	#20
	A = 16'hbb1b;
	B = 16'had23;
	ans = 16'hbbbf;
	#20
	A = 16'h2e67;
	B = 16'hb5a3;
	ans = 16'hb409;
	#20
	A = 16'h3aa7;
	B = 16'hb787;
	ans = 16'h35c7;
	#20
	A = 16'hbace;
	B = 16'h38f4;
	ans = 16'hb368;
	#20
	A = 16'h3890;
	B = 16'h368f;
	ans = 16'h3bd8;
	#20
	A = 16'h3b38;
	B = 16'hbb87;
	ans = 16'ha8f0;
	#20
	A = 16'hb629;
	B = 16'h3870;
	ans = 16'h316e;
	#20
	A = 16'h3a17;
	B = 16'hb059;
	ans = 16'h3901;
	#20
	A = 16'hb9b5;
	B = 16'h35dd;
	ans = 16'hb58d;
	#20
	A = 16'hbae1;
	B = 16'hb821;
	ans = 16'hbd81;
	#20
	A = 16'hb5db;
	B = 16'hb872;
	ans = 16'hbb60;
	#20
	A = 16'hb8d2;
	B = 16'h395d;
	ans = 16'h2c58;
	#20
	A = 16'hb7d8;
	B = 16'hb8c3;
	ans = 16'hbc58;
	#20
	A = 16'hb3b3;
	B = 16'h3a37;
	ans = 16'h384a;
	#20
	A = 16'hb9d0;
	B = 16'hbbc4;
	ans = 16'hbeca;
	#20
	A = 16'h3ac6;
	B = 16'h305d;
	ans = 16'h3bdd;
	#20
	A = 16'h3882;
	B = 16'h3931;
	ans = 16'h3cda;
	#20
	A = 16'h365b;
	B = 16'h2ff4;
	ans = 16'h382c;
	#20
	A = 16'hb825;
	B = 16'h3ab8;
	ans = 16'h3526;
	#20
	A = 16'hb4a1;
	B = 16'hb89c;
	ans = 16'hbaec;
	#20
	A = 16'h38cb;
	B = 16'h301a;
	ans = 16'h39d2;
	#20
	A = 16'hb9af;
	B = 16'hb624;
	ans = 16'hbc60;
	#20
	A = 16'hb9ec;
	B = 16'hb895;
	ans = 16'hbd40;
	#20
	A = 16'hba13;
	B = 16'h328a;
	ans = 16'hb870;
	#20
	A = 16'hb995;
	B = 16'h337c;
	ans = 16'hb76c;
	#20
	A = 16'hb84e;
	B = 16'h2c1c;
	ans = 16'hb795;
	#20
	A = 16'h3a08;
	B = 16'h39b0;
	ans = 16'h3ddc;
	#20
	A = 16'hb9cb;
	B = 16'hba8d;
	ans = 16'hbe2c;
	#20
	A = 16'ha9a9;
	B = 16'haa98;
	ans = 16'hae20;
	#20
	A = 16'h37d5;
	B = 16'h39fe;
	ans = 16'h3cf4;
	#20
	A = 16'h3bdd;
	B = 16'hb4d3;
	ans = 16'h3974;
	#20
	A = 16'hba97;
	B = 16'h38c1;
	ans = 16'hb358;
	#20
	A = 16'haf64;
	B = 16'h3a46;
	ans = 16'h395a;
	#20
	A = 16'hba3d;
	B = 16'hb6c3;
	ans = 16'hbccf;
	#20
	A = 16'h39c8;
	B = 16'h2ed2;
	ans = 16'h3aa2;
	#20
	A = 16'hb8a3;
	B = 16'ha450;
	ans = 16'hb8c6;
	#20
	A = 16'ha81a;
	B = 16'hbb27;
	ans = 16'hbb69;
	#20
	A = 16'hb34b;
	B = 16'hb7c1;
	ans = 16'hb9b3;
	#20
	A = 16'h3625;
	B = 16'hb52b;
	ans = 16'h2bd0;
	#20
	A = 16'h3990;
	B = 16'h349d;
	ans = 16'h3bde;
	#20
	A = 16'hba01;
	B = 16'h316a;
	ans = 16'hb8a6;
	#20
	A = 16'h396d;
	B = 16'hb9c2;
	ans = 16'ha950;
	#20
	A = 16'h3135;
	B = 16'h3af8;
	ans = 16'h3c23;
	#20
	A = 16'h3a2f;
	B = 16'hb0a7;
	ans = 16'h3905;
	#20
	A = 16'hb43f;
	B = 16'h37cc;
	ans = 16'h331a;
	#20
	A = 16'h344b;
	B = 16'h3984;
	ans = 16'h3baa;
	#20
	A = 16'hb8df;
	B = 16'hb72d;
	ans = 16'hbc3b;
	#20
	A = 16'hbba3;
	B = 16'h3010;
	ans = 16'hba9f;
	#20
	A = 16'h33d7;
	B = 16'hbb0a;
	ans = 16'hb914;
	#20
	A = 16'hb90f;
	B = 16'h385c;
	ans = 16'had98;
	#20
	A = 16'h3a55;
	B = 16'h34b9;
	ans = 16'h3c59;
	#20
	A = 16'had28;
	B = 16'hb579;
	ans = 16'hb6c3;
	#20
	A = 16'h3032;
	B = 16'h3a8f;
	ans = 16'h3b9c;
	#20
	A = 16'hb2de;
	B = 16'h3a9d;
	ans = 16'h38e6;
	#20
	A = 16'hb70b;
	B = 16'h3a44;
	ans = 16'h357d;
	#20
	A = 16'h39df;
	B = 16'h39e4;
	ans = 16'h3de2;
	#20
	A = 16'hb703;
	B = 16'hbbab;
	ans = 16'hbd96;
	#20
	A = 16'hb864;
	B = 16'hbbd6;
	ans = 16'hbe1d;
	#20
	A = 16'hb263;
	B = 16'h3af6;
	ans = 16'h395d;
	#20
	A = 16'hb859;
	B = 16'h357d;
	ans = 16'hb26a;
	#20
	A = 16'hb3fe;
	B = 16'h34d8;
	ans = 16'h2ac8;
	#20
	A = 16'h38fd;
	B = 16'h3bb2;
	ans = 16'h3e58;
	#20
	A = 16'hb970;
	B = 16'h3a34;
	ans = 16'h2e20;
	#20
	A = 16'h37d2;
	B = 16'hb5d6;
	ans = 16'h2ff0;
	#20
	A = 16'h38e3;
	B = 16'hb910;
	ans = 16'ha5a0;
	#20
	A = 16'hb2e2;
	B = 16'hbab1;
	ans = 16'hbc35;
	#20
	A = 16'hb989;
	B = 16'hbb38;
	ans = 16'hbe60;
	#20
	A = 16'hbbff;
	B = 16'hb4c4;
	ans = 16'hbd30;
	#20
	A = 16'h35d4;
	B = 16'hb9c6;
	ans = 16'hb5b8;
	#20
	A = 16'h3040;
	B = 16'hba09;
	ans = 16'hb8f9;
	#20
	A = 16'hb4fd;
	B = 16'hade8;
	ans = 16'hb677;
	#20
	A = 16'hbb05;
	B = 16'hb84e;
	ans = 16'hbdaa;
	#20
	A = 16'hb513;
	B = 16'h37ed;
	ans = 16'h31b4;
	#20
	A = 16'h3985;
	B = 16'hb94f;
	ans = 16'h26c0;
	#20
	A = 16'h3b83;
	B = 16'h3090;
	ans = 16'h3c54;
	#20
	A = 16'h2447;
	B = 16'hb4ef;
	ans = 16'hb4ab;
	#20
	A = 16'ha968;
	B = 16'hb346;
	ans = 16'hb450;
	#20
	A = 16'h3ace;
	B = 16'hb91f;
	ans = 16'h32bc;
	#20
	A = 16'hb4eb;
	B = 16'h278f;
	ans = 16'hb472;
	#20
	A = 16'h25f3;
	B = 16'hac38;
	ans = 16'ha976;
	#20
	A = 16'h3ba0;
	B = 16'hba1b;
	ans = 16'h3214;
	#20
	A = 16'hbad8;
	B = 16'h3b5e;
	ans = 16'h2c30;
	#20
	A = 16'h313c;
	B = 16'hb85f;
	ans = 16'hb620;
	#20
	A = 16'hbb2f;
	B = 16'h2a69;
	ans = 16'hbac8;
	#20
	A = 16'h351e;
	B = 16'h354d;
	ans = 16'h3936;
	#20
	A = 16'hb99c;
	B = 16'hbb34;
	ans = 16'hbe68;
	#20
	A = 16'h3695;
	B = 16'h3665;
	ans = 16'h3a7d;
	#20
	A = 16'h3aab;
	B = 16'h3776;
	ans = 16'h3d33;
	#20
	A = 16'h3519;
	B = 16'h3bda;
	ans = 16'h3d33;
	#20
	A = 16'h327d;
	B = 16'hae0a;
	ans = 16'h2ef0;
	#20
	A = 16'h3afb;
	B = 16'h3766;
	ans = 16'h3d57;
	#20
	A = 16'h3bbe;
	B = 16'ha243;
	ans = 16'h3ba5;
	#20
	A = 16'hb893;
	B = 16'hba80;
	ans = 16'hbd8a;
	#20
	A = 16'h3962;
	B = 16'h35dc;
	ans = 16'h3c28;
	#20
	A = 16'ha83d;
	B = 16'ha409;
	ans = 16'haa42;
	#20
	A = 16'hb47b;
	B = 16'hb320;
	ans = 16'hb806;
	#20
	A = 16'h1f23;
	B = 16'hba97;
	ans = 16'hba89;
	#20
	A = 16'hb386;
	B = 16'h3acd;
	ans = 16'h38ec;
	#20
	A = 16'h3618;
	B = 16'h39c5;
	ans = 16'h3c68;
	#20
	A = 16'hb6be;
	B = 16'hba4a;
	ans = 16'hbcd4;
	#20
	A = 16'hbb9d;
	B = 16'h38f9;
	ans = 16'hb548;
	#20
	A = 16'hb7a8;
	B = 16'h3817;
	ans = 16'h2830;
	#20
	A = 16'h3a99;
	B = 16'hb480;
	ans = 16'h3859;
	#20
	A = 16'hb1bb;
	B = 16'hb908;
	ans = 16'hba77;
	#20
	A = 16'h363d;
	B = 16'hb4ea;
	ans = 16'h2d4c;
	#20
	A = 16'h34e4;
	B = 16'h3278;
	ans = 16'h3810;
	#20
	A = 16'h3a69;
	B = 16'hb599;
	ans = 16'h3739;
	#20
	A = 16'hb521;
	B = 16'h3b4d;
	ans = 16'h38bc;
	#20
	A = 16'h38e3;
	B = 16'hb486;
	ans = 16'h3540;
	#20
	A = 16'h3142;
	B = 16'hb234;
	ans = 16'ha790;
	#20
	A = 16'h3b27;
	B = 16'h3ad4;
	ans = 16'h3efe;
	#20
	A = 16'h3bda;
	B = 16'ha80b;
	ans = 16'h3b99;
	#20
	A = 16'haf96;
	B = 16'hb980;
	ans = 16'hba73;
	#20
	A = 16'hb8c8;
	B = 16'h320c;
	ans = 16'hb68a;
	#20
	A = 16'h36cd;
	B = 16'hba16;
	ans = 16'hb55f;
	#20
	A = 16'h3428;
	B = 16'h3b51;
	ans = 16'h3cb2;
	#20
	A = 16'hba81;
	B = 16'hb2b0;
	ans = 16'hbc16;
	#20
	A = 16'hb12d;
	B = 16'hb7c8;
	ans = 16'hb92f;
	#20
	A = 16'hb5c7;
	B = 16'h3928;
	ans = 16'h3489;
	#20
	A = 16'h3255;
	B = 16'hbad9;
	ans = 16'hb944;
	#20
	A = 16'hba4a;
	B = 16'h3bf7;
	ans = 16'h32b4;
	#20
	A = 16'hb4f2;
	B = 16'hb9f1;
	ans = 16'hbc35;
	#20
	A = 16'hbadc;
	B = 16'haee6;
	ans = 16'hbbb9;
	#20
	A = 16'hb8e4;
	B = 16'h3146;
	ans = 16'hb725;
	#20
	A = 16'h3188;
	B = 16'h3bee;
	ans = 16'h3ca8;
	#20
	A = 16'h3ad6;
	B = 16'hba24;
	ans = 16'h2d90;
	#20
	A = 16'h3137;
	B = 16'h3b86;
	ans = 16'h3c6a;
	#20
	A = 16'h387c;
	B = 16'hbb6e;
	ans = 16'hb5e4;
	#20
	A = 16'hb916;
	B = 16'h357b;
	ans = 16'hb4b1;
	#20
	A = 16'hb292;
	B = 16'hb89a;
	ans = 16'hba3e;
	#20
	A = 16'h3b2f;
	B = 16'h3b43;
	ans = 16'h3f39;
	#20
	A = 16'hbae8;
	B = 16'hb5a8;
	ans = 16'hbcde;
	#20
	A = 16'hba8b;
	B = 16'hb9a9;
	ans = 16'hbe1a;
	#20
	A = 16'h3b56;
	B = 16'h38be;
	ans = 16'h3e0a;
	#20
	A = 16'h3858;
	B = 16'ha322;
	ans = 16'h383b;
	#20
	A = 16'h384f;
	B = 16'hb884;
	ans = 16'ha6a0;
	#20
	A = 16'h3bb6;
	B = 16'h2e38;
	ans = 16'h3c3e;
	#20
	A = 16'hb6a7;
	B = 16'hbab4;
	ans = 16'hbd04;
	#20
	A = 16'h9b3b;
	B = 16'h3667;
	ans = 16'h3659;
	#20
	A = 16'hac0e;
	B = 16'hb89b;
	ans = 16'hb91d;
	#20
	A = 16'h38eb;
	B = 16'h34e9;
	ans = 16'h3b60;
	#20
	A = 16'hba59;
	B = 16'h3398;
	ans = 16'hb873;
	#20
	A = 16'h34dc;
	B = 16'hb4d8;
	ans = 16'h1400;
	#20
	A = 16'h39f1;
	B = 16'hb868;
	ans = 16'h3224;
	#20
	A = 16'h3ab0;
	B = 16'h3b0f;
	ans = 16'h3ee0;
	#20
	A = 16'hb9a9;
	B = 16'h3883;
	ans = 16'hb098;
	#20
	A = 16'hb59a;
	B = 16'hb826;
	ans = 16'hbaf3;
	#20
	A = 16'hb8cf;
	B = 16'h3a37;
	ans = 16'h31a0;
	#20
	A = 16'hb0f0;
	B = 16'hb4be;
	ans = 16'hb736;
	#20
	A = 16'ha749;
	B = 16'hb4a6;
	ans = 16'hb51b;
	#20
	A = 16'h3b66;
	B = 16'hbb3c;
	ans = 16'h2540;
	#20
	A = 16'hb4a8;
	B = 16'h3b92;
	ans = 16'h393e;
	#20
	A = 16'h3024;
	B = 16'h3b9c;
	ans = 16'h3c52;
	#20
	A = 16'hba78;
	B = 16'hba04;
	ans = 16'hbe3e;
	#20
	A = 16'h3902;
	B = 16'h309e;
	ans = 16'h3a2a;
	#20
	A = 16'hba37;
	B = 16'h3ad5;
	ans = 16'h2cf0;
	#20
	A = 16'h3833;
	B = 16'hb42a;
	ans = 16'h343c;
	#20
	A = 16'hb78b;
	B = 16'hb871;
	ans = 16'hbc1b;
	#20
	A = 16'hba0a;
	B = 16'h2ce5;
	ans = 16'hb96d;
	#20
	A = 16'ha2c0;
	B = 16'hb9c7;
	ans = 16'hb9e2;
	#20
	A = 16'hb543;
	B = 16'h36b6;
	ans = 16'h2dcc;
	#20
	A = 16'hb4a4;
	B = 16'h39df;
	ans = 16'h371a;
	#20
	A = 16'h39dc;
	B = 16'h38f7;
	ans = 16'h3d6a;
	#20
	A = 16'h3949;
	B = 16'h3ba2;
	ans = 16'h3e76;
	#20
	A = 16'h328b;
	B = 16'hb00b;
	ans = 16'h2d00;
	#20
	A = 16'ha6be;
	B = 16'hb32b;
	ans = 16'hb401;
	#20
	A = 16'hbabf;
	B = 16'hbb72;
	ans = 16'hbf18;
	#20
	A = 16'h38b9;
	B = 16'h379d;
	ans = 16'h3c44;
	#20
	A = 16'hb323;
	B = 16'hb3fd;
	ans = 16'hb790;
	#20
	A = 16'h3467;
	B = 16'hb1ea;
	ans = 16'h2dc8;
	#20
	A = 16'h349c;
	B = 16'hb58a;
	ans = 16'hab70;
	#20
	A = 16'h3640;
	B = 16'h32e6;
	ans = 16'h38da;
	#20
	A = 16'hb6e2;
	B = 16'hba9a;
	ans = 16'hbd06;
	#20
	A = 16'hb6d3;
	B = 16'h3b9a;
	ans = 16'h3830;
	#20
	A = 16'h39ea;
	B = 16'h3abf;
	ans = 16'h3e54;
	#20
	A = 16'hbb61;
	B = 16'h3a6e;
	ans = 16'haf98;
	#20
	A = 16'hbaae;
	B = 16'h3a22;
	ans = 16'hac60;
	#20
	A = 16'h38d3;
	B = 16'hb60a;
	ans = 16'h3338;
	#20
	A = 16'h3b10;
	B = 16'h392b;
	ans = 16'h3e1e;
	#20
	A = 16'h3918;
	B = 16'hba1e;
	ans = 16'hb018;
	#20
	A = 16'hb960;
	B = 16'h2eb4;
	ans = 16'hb88a;
	#20
	A = 16'hb9ec;
	B = 16'hbac4;
	ans = 16'hbe58;
	#20
	A = 16'hb23d;
	B = 16'hb9a8;
	ans = 16'hbb37;
	#20
	A = 16'hb8c3;
	B = 16'h3bb5;
	ans = 16'h35e4;
	#20
	A = 16'hbbfd;
	B = 16'h3ab4;
	ans = 16'hb124;
	#20
	A = 16'h332d;
	B = 16'h24ce;
	ans = 16'h33c7;
	#20
	A = 16'h3b3e;
	B = 16'hb969;
	ans = 16'h3354;
	#20
	A = 16'h3a18;
	B = 16'h3a73;
	ans = 16'h3e46;
	#20
	A = 16'h34e8;
	B = 16'hb8c2;
	ans = 16'hb49c;
	#20
	A = 16'hafdb;
	B = 16'hba53;
	ans = 16'hbb4e;
	#20
	A = 16'haaf5;
	B = 16'hbbd4;
	ans = 16'hbc22;
	#20
	A = 16'h391b;
	B = 16'hb9f9;
	ans = 16'haef0;
	#20
	A = 16'hb82e;
	B = 16'h35c9;
	ans = 16'hb126;
	#20
	A = 16'h397d;
	B = 16'hb294;
	ans = 16'h37b0;
	#20
	A = 16'h375b;
	B = 16'h35eb;
	ans = 16'h3aa3;
	#20
	A = 16'hb806;
	B = 16'hb9c2;
	ans = 16'hbce4;
	#20
	A = 16'h3871;
	B = 16'h3643;
	ans = 16'h3b92;
	#20
	A = 16'h38df;
	B = 16'hba67;
	ans = 16'hb220;
	#20
	A = 16'hbbb5;
	B = 16'haa6d;
	ans = 16'hbc0e;
	#20
	A = 16'h3b9e;
	B = 16'h2e6d;
	ans = 16'h3c36;
	#20
	A = 16'hba9b;
	B = 16'hb939;
	ans = 16'hbdea;
	#20
	A = 16'hb9c0;
	B = 16'hb858;
	ans = 16'hbd0c;
	#20
	A = 16'hb8b1;
	B = 16'h3933;
	ans = 16'h2c10;
	#20
	A = 16'hb819;
	B = 16'h32ba;
	ans = 16'hb4d5;
	#20
	A = 16'hb8a0;
	B = 16'hb9cb;
	ans = 16'hbd36;
	#20
	A = 16'hb5a6;
	B = 16'h3aba;
	ans = 16'h37ce;
	#20
	A = 16'hb00f;
	B = 16'h338e;
	ans = 16'h2efe;
	#20
	A = 16'h393e;
	B = 16'hb98c;
	ans = 16'ha8e0;
	#20
	A = 16'h3901;
	B = 16'h3bdc;
	ans = 16'h3e6e;
	#20
	A = 16'h2846;
	B = 16'hb5ac;
	ans = 16'hb523;
	#20
	A = 16'hb9f6;
	B = 16'hb209;
	ans = 16'hbb78;
	#20
	A = 16'ha336;
	B = 16'hb8e3;
	ans = 16'hb900;
	#20
	A = 16'h3611;
	B = 16'hb740;
	ans = 16'hacbc;
	#20
	A = 16'h323d;
	B = 16'haf71;
	ans = 16'h2d09;
	#20
	A = 16'h3ba7;
	B = 16'hbaee;
	ans = 16'h2dc8;
	#20
	A = 16'h335a;
	B = 16'h3121;
	ans = 16'h363e;
	#20
	A = 16'h3bbc;
	B = 16'h3a03;
	ans = 16'h3ee0;
	#20
	A = 16'had95;
	B = 16'hbb7f;
	ans = 16'hbc19;
	#20
	A = 16'h36fe;
	B = 16'h32cc;
	ans = 16'h3932;
	#20
	A = 16'h39d1;
	B = 16'h3233;
	ans = 16'h3b5e;
	#20
	A = 16'hbaaf;
	B = 16'hb916;
	ans = 16'hbde2;
	#20
	A = 16'h314c;
	B = 16'hb6e0;
	ans = 16'hb43a;
	#20
	A = 16'hb94d;
	B = 16'hb8c9;
	ans = 16'hbd0b;
	#20
	A = 16'hae8f;
	B = 16'h39a0;
	ans = 16'h38ce;
	#20
	A = 16'hbae8;
	B = 16'h30e1;
	ans = 16'hb9b0;
	#20
	A = 16'h35f7;
	B = 16'haad9;
	ans = 16'h351c;
	#20
	A = 16'h372d;
	B = 16'h3504;
	ans = 16'h3a18;
	#20
	A = 16'ha86a;
	B = 16'h36ec;
	ans = 16'h365f;
	#20
	A = 16'hb0a9;
	B = 16'hb979;
	ans = 16'hbaa3;
	#20
	A = 16'h19f8;
	B = 16'h3b6c;
	ans = 16'h3b72;
	#20
	A = 16'hba6b;
	B = 16'h3623;
	ans = 16'hb6b3;
	#20
	A = 16'h31e0;
	B = 16'hbabd;
	ans = 16'hb945;
	#20
	A = 16'h3bab;
	B = 16'hb9e2;
	ans = 16'h3324;
	#20
	A = 16'h39f4;
	B = 16'hb99e;
	ans = 16'h2960;
	#20
	A = 16'h382b;
	B = 16'h39c4;
	ans = 16'h3cf8;
	#20
	A = 16'hb59a;
	B = 16'hb5df;
	ans = 16'hb9bc;
	#20
	A = 16'h2d32;
	B = 16'h28db;
	ans = 16'h2fa0;
	#20
	A = 16'h3b1b;
	B = 16'hb955;
	ans = 16'h3318;
	#20
	A = 16'h30f3;
	B = 16'h3556;
	ans = 16'h37d0;
	#20
	A = 16'hb5b3;
	B = 16'h2ca3;
	ans = 16'hb48a;
	#20
	A = 16'h39d9;
	B = 16'h3897;
	ans = 16'h3d38;
	#20
	A = 16'hb792;
	B = 16'h39fc;
	ans = 16'h3466;
	#20
	A = 16'h339a;
	B = 16'h36b3;
	ans = 16'h3940;
	#20
	A = 16'h2d87;
	B = 16'h3b1a;
	ans = 16'h3bcb;
	#20
	A = 16'hbb87;
	B = 16'h3863;
	ans = 16'hb648;
	#20
	A = 16'hb861;
	B = 16'h3988;
	ans = 16'h309c;
	#20
	A = 16'hb690;
	B = 16'hbadb;
	ans = 16'hbd12;
	#20
	A = 16'hb8a5;
	B = 16'h3aa8;
	ans = 16'h3406;
	#20
	A = 16'h28d4;
	B = 16'h36a7;
	ans = 16'h3742;
	#20
	A = 16'hb8fc;
	B = 16'hbbcb;
	ans = 16'hbe64;
	#20
	A = 16'h3541;
	B = 16'hb81d;
	ans = 16'hb1f2;
	#20
	A = 16'h2e39;
	B = 16'h3ac3;
	ans = 16'h3b8a;
	#20
	A = 16'hb8ec;
	B = 16'hb9c2;
	ans = 16'hbd57;
	#20
	A = 16'hb6b4;
	B = 16'h3940;
	ans = 16'h3398;
	#20
	A = 16'hb9ba;
	B = 16'hb4b4;
	ans = 16'hbc0a;
	#20
	A = 16'h33dc;
	B = 16'h3a79;
	ans = 16'h3c38;
	#20
	A = 16'h35cf;
	B = 16'hb2e2;
	ans = 16'h30bc;
	#20
	A = 16'hbb88;
	B = 16'h2864;
	ans = 16'hbb42;
	#20
	A = 16'hb5f2;
	B = 16'hba9e;
	ans = 16'hbccc;
	#20
	A = 16'h2886;
	B = 16'hb9ee;
	ans = 16'hb9a6;
	#20
	A = 16'hba0a;
	B = 16'h36e2;
	ans = 16'hb532;
	#20
	A = 16'h327b;
	B = 16'hb6aa;
	ans = 16'hb2d9;
	#20
	A = 16'h3642;
	B = 16'hb8eb;
	ans = 16'hb328;
	#20
	A = 16'hb8d3;
	B = 16'hb100;
	ans = 16'hba13;
	#20
	A = 16'hb9e2;
	B = 16'hba40;
	ans = 16'hbe11;
	#20
	A = 16'h3bee;
	B = 16'hbab7;
	ans = 16'h30dc;
	#20
	A = 16'hb932;
	B = 16'h31ab;
	ans = 16'hb78e;
	#20
	A = 16'h33dc;
	B = 16'h388b;
	ans = 16'h3a82;
	#20
	A = 16'hba95;
	B = 16'hb87b;
	ans = 16'hbd88;
	#20
	A = 16'hb9ce;
	B = 16'hbb47;
	ans = 16'hbe8a;
	#20
	A = 16'h39ef;
	B = 16'hba17;
	ans = 16'ha500;
	#20
	A = 16'hbb70;
	B = 16'hb83f;
	ans = 16'hbdd8;
	#20
	A = 16'hb899;
	B = 16'hb936;
	ans = 16'hbce8;
	#20
	A = 16'h37d8;
	B = 16'hb964;
	ans = 16'hb1e0;
	#20
	A = 16'h324b;
	B = 16'hb832;
	ans = 16'hb53e;
	#20
	A = 16'hb659;
	B = 16'hb233;
	ans = 16'hb8b9;
	#20
	A = 16'hba3b;
	B = 16'h38de;
	ans = 16'hb174;
	#20
	A = 16'h3a9b;
	B = 16'hae7c;
	ans = 16'h39cc;
	#20
	A = 16'hbb9b;
	B = 16'hb866;
	ans = 16'hbe00;
	#20
	A = 16'h3a7a;
	B = 16'hb770;
	ans = 16'h3584;
	#20
	A = 16'hb7b9;
	B = 16'haa79;
	ans = 16'hb844;
	#20
	A = 16'hb872;
	B = 16'h395f;
	ans = 16'h2f68;
	#20
	A = 16'h3ba4;
	B = 16'h2faa;
	ans = 16'h3c4d;
	#20
	A = 16'hb8b4;
	B = 16'h374e;
	ans = 16'hb034;
	#20
	A = 16'hb1f3;
	B = 16'hb89e;
	ans = 16'hba1b;
	#20
	A = 16'h3a65;
	B = 16'ha71a;
	ans = 16'h3a2c;
	#20
	A = 16'hbbd8;
	B = 16'hb3e1;
	ans = 16'hbce8;
	#20
	A = 16'hb9ca;
	B = 16'h317f;
	ans = 16'hb86a;
	#20
	A = 16'hb13e;
	B = 16'h385d;
	ans = 16'h361b;
	#20
	A = 16'h3982;
	B = 16'ha4e0;
	ans = 16'h395b;
	#20
	A = 16'h301e;
	B = 16'hb863;
	ans = 16'hb6b7;
	#20
	A = 16'hbbcc;
	B = 16'haa86;
	ans = 16'hbc1a;
	#20
	A = 16'h285d;
	B = 16'h38fa;
	ans = 16'h3940;
	#20
	A = 16'hb3c9;
	B = 16'h9f5b;
	ans = 16'hb402;
	#20
	A = 16'hb446;
	B = 16'h9b74;
	ans = 16'hb455;
	#20
	A = 16'hb5d0;
	B = 16'h3a48;
	ans = 16'h36c0;
	#20
	A = 16'h2a8f;
	B = 16'h3bce;
	ans = 16'h3c1b;
	#20
	A = 16'hb774;
	B = 16'h3433;
	ans = 16'hb282;
	#20
	A = 16'h3b08;
	B = 16'h3a70;
	ans = 16'h3ebc;
	#20
	A = 16'hb910;
	B = 16'hb7a2;
	ans = 16'hbc70;
	#20
	A = 16'hb8b2;
	B = 16'ha921;
	ans = 16'hb904;
	#20
	A = 16'hb992;
	B = 16'h3a33;
	ans = 16'h2d08;
	#20
	A = 16'h3bd3;
	B = 16'habd0;
	ans = 16'h3b56;
	#20
	A = 16'h39d2;
	B = 16'h38fe;
	ans = 16'h3d68;
	#20
	A = 16'h389b;
	B = 16'hbab3;
	ans = 16'hb430;
	#20
	A = 16'hb665;
	B = 16'h3b66;
	ans = 16'h3834;
	#20
	A = 16'h2ed1;
	B = 16'h345f;
	ans = 16'h3613;
	#20
	A = 16'hba26;
	B = 16'h35b9;
	ans = 16'hb693;
	#20
	A = 16'h2e88;
	B = 16'hb81e;
	ans = 16'hb69a;
	#20
	A = 16'hbb02;
	B = 16'hba47;
	ans = 16'hbea4;
	#20
	A = 16'h3957;
	B = 16'h38b6;
	ans = 16'h3d06;
	#20
	A = 16'ha607;
	B = 16'hb5e2;
	ans = 16'hb642;
	#20
	A = 16'hb889;
	B = 16'hbae8;
	ans = 16'hbdb8;
	#20
	A = 16'ha19f;
	B = 16'h3807;
	ans = 16'h37e1;
	#20
	A = 16'hbab4;
	B = 16'hbb4c;
	ans = 16'hbf00;
	#20
	A = 16'haea1;
	B = 16'h2f25;
	ans = 16'h2020;
	#20
	A = 16'hb4c8;
	B = 16'h39ab;
	ans = 16'h368e;
	#20
	A = 16'h389c;
	B = 16'h3aa6;
	ans = 16'h3da1;
	#20
	A = 16'h344f;
	B = 16'haa77;
	ans = 16'h3300;
	#20
	A = 16'h311e;
	B = 16'h3be4;
	ans = 16'h3c96;
	#20
	A = 16'h383d;
	B = 16'hb558;
	ans = 16'h3244;
	#20
	A = 16'hbbfa;
	B = 16'h28bf;
	ans = 16'hbbae;
	#20
	A = 16'hb5b5;
	B = 16'h39ba;
	ans = 16'h35bf;
	#20
	A = 16'h37a1;
	B = 16'h3bc1;
	ans = 16'h3dc9;
	#20
	A = 16'h38b3;
	B = 16'hb8f9;
	ans = 16'ha860;
	#20
	A = 16'h235d;
	B = 16'hb81d;
	ans = 16'hb7ff;
	#20
	A = 16'h365e;
	B = 16'hb834;
	ans = 16'hb014;
	#20
	A = 16'ha7b4;
	B = 16'hbb83;
	ans = 16'hbbc1;
	#20
	A = 16'hb94c;
	B = 16'h31f9;
	ans = 16'hb79c;
	#20
	A = 16'ha0a1;
	B = 16'h396c;
	ans = 16'h3959;
	#20
	A = 16'hb3f8;
	B = 16'h3bcf;
	ans = 16'h39d1;
	#20
	A = 16'hb891;
	B = 16'hb985;
	ans = 16'hbd0b;
	#20
	A = 16'h3b13;
	B = 16'h38f2;
	ans = 16'h3e02;
	#20
	A = 16'hb8ed;
	B = 16'h36bd;
	ans = 16'hb23a;
	#20
	A = 16'h3bf6;
	B = 16'hb585;
	ans = 16'h3934;
	#20
	A = 16'h2e1d;
	B = 16'h3813;
	ans = 16'h38d7;
	#20
	A = 16'h3248;
	B = 16'h3514;
	ans = 16'h381c;
	#20
	A = 16'hbae6;
	B = 16'hb9aa;
	ans = 16'hbe48;
	#20
	A = 16'h2bc4;
	B = 16'h3b59;
	ans = 16'h3bd5;
	#20
	A = 16'h2c44;
	B = 16'h3997;
	ans = 16'h3a20;
	#20
	A = 16'h2cb8;
	B = 16'h3b5a;
	ans = 16'h3bf1;
	#20
	A = 16'hb5cf;
	B = 16'h351a;
	ans = 16'ha9a8;
	#20
	A = 16'h27fd;
	B = 16'h39a7;
	ans = 16'h39e7;
	#20
	A = 16'h3a17;
	B = 16'hb94d;
	ans = 16'h2e50;
	#20
	A = 16'hb8e3;
	B = 16'h3521;
	ans = 16'hb4a5;
	#20
	A = 16'h36aa;
	B = 16'h3931;
	ans = 16'h3c43;
	#20
	A = 16'hba9d;
	B = 16'h333f;
	ans = 16'hb8cd;
	#20
	A = 16'h3af5;
	B = 16'haa70;
	ans = 16'h3a8e;
	#20
	A = 16'hb482;
	B = 16'h3847;
	ans = 16'h340c;
	#20
	A = 16'h3915;
	B = 16'hb8f8;
	ans = 16'h2340;
	#20
	A = 16'h3394;
	B = 16'hbb54;
	ans = 16'hb96f;
	#20
	A = 16'hb463;
	B = 16'ha601;
	ans = 16'hb4c3;
	#20
	A = 16'hbb2b;
	B = 16'h3bdc;
	ans = 16'h2d88;
	#20
	A = 16'hb924;
	B = 16'h34c7;
	ans = 16'hb581;
	#20
	A = 16'h3b7b;
	B = 16'h35b9;
	ans = 16'h3d2c;
	#20
	A = 16'h35a9;
	B = 16'h337b;
	ans = 16'h38b3;
	#20
	A = 16'h38bc;
	B = 16'haede;
	ans = 16'h37c0;
	#20
	A = 16'h3306;
	B = 16'hba1b;
	ans = 16'hb85a;
	#20
	A = 16'hb8fb;
	B = 16'hb956;
	ans = 16'hbd28;
	#20
	A = 16'h39d7;
	B = 16'haace;
	ans = 16'h396a;
	#20
	A = 16'h316f;
	B = 16'h388c;
	ans = 16'h39e8;
	#20
	A = 16'h3602;
	B = 16'h3a08;
	ans = 16'h3c84;
	#20
	A = 16'h37b3;
	B = 16'hba57;
	ans = 16'hb4fb;
	#20
	A = 16'hb98b;
	B = 16'h3b7a;
	ans = 16'h33bc;
	#20
	A = 16'h3813;
	B = 16'h3380;
	ans = 16'h39f3;
	#20
	A = 16'hb8f2;
	B = 16'hbbbc;
	ans = 16'hbe57;
	#20
	A = 16'h2bed;
	B = 16'ha5f8;
	ans = 16'h28f1;
	#20
	A = 16'h3b51;
	B = 16'h35a4;
	ans = 16'h3d12;
	#20
	A = 16'hb8fb;
	B = 16'hb50a;
	ans = 16'hbb80;
	#20
	A = 16'hb9cf;
	B = 16'h3372;
	ans = 16'hb7e5;
	#20
	A = 16'h37c7;
	B = 16'hb8bf;
	ans = 16'haedc;
	#20
	A = 16'h3b4d;
	B = 16'h3944;
	ans = 16'h3e48;
	#20
	A = 16'h318c;
	B = 16'hb130;
	ans = 16'h21c0;
	#20
	A = 16'haf0f;
	B = 16'h3b10;
	ans = 16'h3a2e;
	#20
	A = 16'hbb6a;
	B = 16'hbb90;
	ans = 16'hbf7d;
	#20
	A = 16'h2d39;
	B = 16'had6d;
	ans = 16'h9a80;
	#20
	A = 16'h3aa3;
	B = 16'hb6e1;
	ans = 16'h3665;
	#20
	A = 16'hb855;
	B = 16'h39be;
	ans = 16'h31a4;
	#20
	A = 16'h3007;
	B = 16'hacb5;
	ans = 16'h2ab2;
	#20
	A = 16'h307d;
	B = 16'h3172;
	ans = 16'h34f8;
	#20
	A = 16'h384d;
	B = 16'hb99b;
	ans = 16'hb138;
	#20
	A = 16'h37b2;
	B = 16'h3a8c;
	ans = 16'h3d32;
	#20
	A = 16'h3840;
	B = 16'hb9bf;
	ans = 16'hb1fc;
	#20
	A = 16'hb92c;
	B = 16'hb858;
	ans = 16'hbcc2;
	#20
	A = 16'h3b21;
	B = 16'ha4bb;
	ans = 16'h3afb;
	#20
	A = 16'hb961;
	B = 16'h2fe9;
	ans = 16'hb864;
	#20
	A = 16'h39f5;
	B = 16'hb5aa;
	ans = 16'h3640;
	#20
	A = 16'hba87;
	B = 16'hb385;
	ans = 16'hbc34;
	#20
	A = 16'h3846;
	B = 16'hb53a;
	ans = 16'h32a4;
	#20
	A = 16'haf2c;
	B = 16'hb829;
	ans = 16'hb90e;
	#20
	A = 16'h363a;
	B = 16'hac7c;
	ans = 16'h351b;
	#20
	A = 16'hb937;
	B = 16'haef5;
	ans = 16'hba16;
	#20
	A = 16'h30f7;
	B = 16'hb5f5;
	ans = 16'hb2f3;
	#20
	A = 16'hb5bd;
	B = 16'h3a81;
	ans = 16'h3745;
	#20
	A = 16'h35a2;
	B = 16'hb922;
	ans = 16'hb4a2;
	#20
	A = 16'h393a;
	B = 16'h398e;
	ans = 16'h3d64;
	#20
	A = 16'hb833;
	B = 16'h3b13;
	ans = 16'h35c0;
	#20
	A = 16'hbae5;
	B = 16'hb940;
	ans = 16'hbe12;
	#20
	A = 16'hba00;
	B = 16'hb6ba;
	ans = 16'hbcae;
	#20
	A = 16'hb8ac;
	B = 16'hb5fc;
	ans = 16'hbbaa;
	#20
	A = 16'hbb92;
	B = 16'h3bdc;
	ans = 16'h28a0;
	#20
	A = 16'h32b6;
	B = 16'hb4e5;
	ans = 16'hae28;
	#20
	A = 16'h3b5b;
	B = 16'hb62a;
	ans = 16'h3846;
	#20
	A = 16'h2982;
	B = 16'h2efc;
	ans = 16'h30de;
	#20
	A = 16'h3865;
	B = 16'hab92;
	ans = 16'h37d8;
	#20
	A = 16'h32f3;
	B = 16'h2207;
	ans = 16'h3353;
	#20
	A = 16'hb3a7;
	B = 16'hb9b3;
	ans = 16'hbb9d;
	#20
	A = 16'hb8fb;
	B = 16'hbbd3;
	ans = 16'hbe67;
	#20
	A = 16'h3755;
	B = 16'h350f;
	ans = 16'h3a32;
	#20
	A = 16'h37c8;
	B = 16'h38d3;
	ans = 16'h3c5c;
	#20
	A = 16'hb720;
	B = 16'h2d18;
	ans = 16'hb5da;
	#20
	A = 16'hbab9;
	B = 16'hbb18;
	ans = 16'hbee8;
	#20
	A = 16'ha2b5;
	B = 16'h3bac;
	ans = 16'h3b91;
	#20
	A = 16'hbbce;
	B = 16'hba8d;
	ans = 16'hbf2e;
	#20
	A = 16'hb8e5;
	B = 16'hb9c2;
	ans = 16'hbd54;
	#20
	A = 16'h365b;
	B = 16'h3ae8;
	ans = 16'h3d0b;
	#20
	A = 16'h3a15;
	B = 16'hba3b;
	ans = 16'ha4c0;
	#20
	A = 16'hb9ad;
	B = 16'h3381;
	ans = 16'hb79a;
	#20
	A = 16'hbbc8;
	B = 16'hb92f;
	ans = 16'hbe7c;
	#20
	A = 16'h2882;
	B = 16'h30be;
	ans = 16'h31de;
	#20
	A = 16'hb58d;
	B = 16'h3799;
	ans = 16'h3018;
	#20
	A = 16'hb058;
	B = 16'h316b;
	ans = 16'h284c;
	#20
	A = 16'h3888;
	B = 16'hb22e;
	ans = 16'h35f9;
	#20
	A = 16'h3803;
	B = 16'haae9;
	ans = 16'h3729;
	#20
	A = 16'h32f5;
	B = 16'haca8;
	ans = 16'h30a1;
	#20
	A = 16'hb284;
	B = 16'hb86c;
	ans = 16'hba0d;
	#20
	A = 16'h2ae6;
	B = 16'hb5a5;
	ans = 16'hb4c8;
	#20
	A = 16'h2fe9;
	B = 16'hb0ae;
	ans = 16'ha5cc;
	#20
	A = 16'h3792;
	B = 16'h3566;
	ans = 16'h3a7c;
	#20
	A = 16'hae25;
	B = 16'hbb64;
	ans = 16'hbc14;
	#20
	A = 16'hb7a1;
	B = 16'h3bf3;
	ans = 16'h3822;
	#20
	A = 16'h3901;
	B = 16'h3954;
	ans = 16'h3d2a;
	#20
	A = 16'h2e38;
	B = 16'h3a4e;
	ans = 16'h3b15;
	#20
	A = 16'hb595;
	B = 16'h1ce1;
	ans = 16'hb581;
	#20
	A = 16'hb804;
	B = 16'hb46f;
	ans = 16'hba3c;
	#20
	A = 16'h38ec;
	B = 16'h2d40;
	ans = 16'h3994;
	#20
	A = 16'hb1d1;
	B = 16'h3206;
	ans = 16'h1ea0;
	#20
	A = 16'h3aa0;
	B = 16'h3aff;
	ans = 16'h3ed0;
	#20
	A = 16'h3aea;
	B = 16'hac78;
	ans = 16'h3a5b;
	#20
	A = 16'hb83f;
	B = 16'h3803;
	ans = 16'ha780;
	#20
	A = 16'hb9d2;
	B = 16'hb537;
	ans = 16'hbc37;
	#20
	A = 16'h2e3b;
	B = 16'h32e5;
	ans = 16'h3501;
	#20
	A = 16'h3464;
	B = 16'h35a0;
	ans = 16'h3902;
	#20
	A = 16'h2e9d;
	B = 16'h395a;
	ans = 16'h3a2e;
	#20
	A = 16'h3b52;
	B = 16'h3bb3;
	ans = 16'h3f82;
	#20
	A = 16'hb8e5;
	B = 16'hb854;
	ans = 16'hbc9c;
	#20
	A = 16'h3ba7;
	B = 16'hb5c2;
	ans = 16'h38c6;
	#20
	A = 16'hb863;
	B = 16'hb43a;
	ans = 16'hba80;
	#20
	A = 16'hb8c1;
	B = 16'h39cf;
	ans = 16'h3038;
	#20
	A = 16'hb0c3;
	B = 16'h34dd;
	ans = 16'h30f7;
	#20
	A = 16'h38bc;
	B = 16'h2670;
	ans = 16'h38f0;
	#20
	A = 16'h36cd;
	B = 16'hba76;
	ans = 16'hb61f;
	#20
	A = 16'h33af;
	B = 16'hb1d6;
	ans = 16'h2b64;
	#20
	A = 16'hb804;
	B = 16'hb969;
	ans = 16'hbcb6;
	#20
	A = 16'h37a1;
	B = 16'hb9be;
	ans = 16'hb3b6;
	#20
	A = 16'hb112;
	B = 16'hb787;
	ans = 16'hb908;
	#20
	A = 16'hba3a;
	B = 16'hb3d0;
	ans = 16'hbc17;
	#20
	A = 16'h9453;
	B = 16'hbbe7;
	ans = 16'hbbe9;
	#20
	A = 16'hb7a8;
	B = 16'haddd;
	ans = 16'hb890;
	#20
	A = 16'hb875;
	B = 16'hbba9;
	ans = 16'hbe0f;
	#20
	A = 16'hbae8;
	B = 16'hb07c;
	ans = 16'hbc04;
	#20
	A = 16'h35db;
	B = 16'h3b44;
	ans = 16'h3d19;
	#20
	A = 16'hbae4;
	B = 16'hb48a;
	ans = 16'hbc94;
	#20
	A = 16'hb7b2;
	B = 16'h3be1;
	ans = 16'h3808;
	#20
	A = 16'hb9de;
	B = 16'hb80b;
	ans = 16'hbcf4;
	#20
	A = 16'h3a2e;
	B = 16'h3bf3;
	ans = 16'h3f10;
	#20
	A = 16'h3122;
	B = 16'h3553;
	ans = 16'h37e4;
	#20
	A = 16'h36d8;
	B = 16'hb43a;
	ans = 16'h313c;
	#20
	A = 16'hbafd;
	B = 16'hb5b9;
	ans = 16'hbced;
	#20
	A = 16'h2dfa;
	B = 16'h3956;
	ans = 16'h3a15;
	#20
	A = 16'hb79b;
	B = 16'hb243;
	ans = 16'hb95e;
	#20
	A = 16'h359f;
	B = 16'h3a85;
	ans = 16'h3caa;
	#20
	A = 16'hbbcd;
	B = 16'h375a;
	ans = 16'hb820;
	#20
	A = 16'hb83c;
	B = 16'h2460;
	ans = 16'hb819;
	#20
	A = 16'hba2c;
	B = 16'hb92a;
	ans = 16'hbdab;
	#20
	A = 16'h3259;
	B = 16'hade9;
	ans = 16'h2ec9;
	#20
	A = 16'h39dc;
	B = 16'hbb35;
	ans = 16'hb164;
	#20
	A = 16'h3808;
	B = 16'h305f;
	ans = 16'h3920;
	#20
	A = 16'h2f82;
	B = 16'hb82a;
	ans = 16'hb674;
	#20
	A = 16'hb64a;
	B = 16'had22;
	ans = 16'hb792;
	#20
	A = 16'hb833;
	B = 16'h3a64;
	ans = 16'h3462;
	#20
	A = 16'hb0cb;
	B = 16'hb860;
	ans = 16'hb993;
	#20
	A = 16'h3328;
	B = 16'h32df;
	ans = 16'h3704;
	#20
	A = 16'hb603;
	B = 16'h3a3c;
	ans = 16'h3675;
	#20
	A = 16'h38dd;
	B = 16'hba25;
	ans = 16'hb120;
	#20
	A = 16'hb956;
	B = 16'h3a87;
	ans = 16'h30c4;
	#20
	A = 16'h3b56;
	B = 16'hb8c7;
	ans = 16'h351e;
	#20
	A = 16'h2e0c;
	B = 16'h3001;
	ans = 16'h3307;
	#20
	A = 16'hb870;
	B = 16'hb50f;
	ans = 16'hbaf8;
	#20
	A = 16'h3981;
	B = 16'h3b36;
	ans = 16'h3e5c;
	#20
	A = 16'hae89;
	B = 16'hb408;
	ans = 16'hb5aa;
	#20
	A = 16'h31d1;
	B = 16'he99;
	ans = 16'h31d4;
	#20
	A = 16'hb872;
	B = 16'h35db;
	ans = 16'hb212;
	#20
	A = 16'h389a;
	B = 16'hb6f5;
	ans = 16'h307e;
	#20
	A = 16'hadda;
	B = 16'hba2b;
	ans = 16'hbae6;
	#20
	A = 16'h3718;
	B = 16'hb953;
	ans = 16'hb31c;
	#20
	A = 16'h38a6;
	B = 16'h3774;
	ans = 16'h3c30;
	#20
	A = 16'h36d8;
	B = 16'h2cf1;
	ans = 16'h380a;
	#20
	A = 16'h2ed9;
	B = 16'h3a70;
	ans = 16'h3b4b;
	#20
	A = 16'h3447;
	B = 16'h2ea8;
	ans = 16'h35f1;
	#20
	A = 16'h3a1b;
	B = 16'h30d4;
	ans = 16'h3b50;
	#20
	A = 16'h399b;
	B = 16'hb8de;
	ans = 16'h2de8;
	#20
	A = 16'h3a0d;
	B = 16'h3ae7;
	ans = 16'h3e7a;
	#20
	A = 16'h2a82;
	B = 16'hb45c;
	ans = 16'hb318;
	#20
	A = 16'ha813;
	B = 16'hb6d6;
	ans = 16'hb758;
	#20
	A = 16'h3108;
	B = 16'hb416;
	ans = 16'hae48;
	#20
	A = 16'h3b7a;
	B = 16'h2fcf;
	ans = 16'h3c3a;
	#20
	A = 16'hb9d5;
	B = 16'hb94a;
	ans = 16'hbd90;
	#20
	A = 16'hb9be;
	B = 16'h37f1;
	ans = 16'hb316;
	#20
	A = 16'hb565;
	B = 16'hb1af;
	ans = 16'hb81e;
	#20
	A = 16'h316a;
	B = 16'hb8db;
	ans = 16'hb701;
	#20
	A = 16'h3094;
	B = 16'h2c5a;
	ans = 16'h32c1;
	#20
	A = 16'h384a;
	B = 16'ha944;
	ans = 16'h37ec;
	#20
	A = 16'hb772;
	B = 16'h3785;
	ans = 16'h1cc0;
	#20
	A = 16'hbac8;
	B = 16'h37ee;
	ans = 16'hb5a2;
	#20
	A = 16'hb4ba;
	B = 16'hb3d9;
	ans = 16'hb853;
	#20
	A = 16'h38ea;
	B = 16'h3b3f;
	ans = 16'h3e14;
	#20
	A = 16'h3460;
	B = 16'h3981;
	ans = 16'h3bb1;
	#20
	A = 16'hb668;
	B = 16'h3982;
	ans = 16'h349c;
	#20
	A = 16'h383f;
	B = 16'hba47;
	ans = 16'hb410;
	#20
	A = 16'h3397;
	B = 16'haf40;
	ans = 16'h2fee;
	#20
	A = 16'hb675;
	B = 16'h33fd;
	ans = 16'hb0ed;
	#20
	A = 16'h382d;
	B = 16'hb9ac;
	ans = 16'hb1fc;
	#20
	A = 16'h33bf;
	B = 16'h2ca6;
	ans = 16'h3509;
	#20
	A = 16'hb889;
	B = 16'hb145;
	ans = 16'hb9da;
	#20
	A = 16'h3bda;
	B = 16'hb638;
	ans = 16'h38be;
	#20
	A = 16'h3028;
	B = 16'hb5d7;
	ans = 16'hb386;
	#20
	A = 16'h3b1b;
	B = 16'h303e;
	ans = 16'h3c15;
	#20
	A = 16'hbaf5;
	B = 16'hb1e4;
	ans = 16'hbc37;
	#20
	A = 16'h3a92;
	B = 16'h39b9;
	ans = 16'h3e26;
	#20
	A = 16'h3b1e;
	B = 16'h3912;
	ans = 16'h3e18;
	#20
	A = 16'h34df;
	B = 16'h2eeb;
	ans = 16'h369a;
	#20
	A = 16'hb9aa;
	B = 16'h2d3c;
	ans = 16'hb902;
	#20
	A = 16'h39b6;
	B = 16'hb9c2;
	ans = 16'h9e00;
	#20
	A = 16'hbaf3;
	B = 16'h35f5;
	ans = 16'hb7f1;
	#20
	A = 16'hb9ad;
	B = 16'ha4c6;
	ans = 16'hb9d3;
	#20
	A = 16'hb405;
	B = 16'h2d15;
	ans = 16'hb180;
	#20
	A = 16'h2959;
	B = 16'hbb37;
	ans = 16'hbae1;
	#20
	A = 16'hb6ba;
	B = 16'hb45a;
	ans = 16'hb98a;
	#20
	A = 16'hb715;
	B = 16'h34d0;
	ans = 16'hb08a;
	#20
	A = 16'h1c3c;
	B = 16'h3b99;
	ans = 16'h3ba1;
	#20
	A = 16'hb1d2;
	B = 16'h3bf4;
	ans = 16'h3a80;
	#20
	A = 16'hbbec;
	B = 16'hab5f;
	ans = 16'hbc31;
	#20
	A = 16'hb45d;
	B = 16'h3578;
	ans = 16'h2c6c;
	#20
	A = 16'haf4c;
	B = 16'h3b7f;
	ans = 16'h3a96;
	#20
	A = 16'hb4a5;
	B = 16'hb9ba;
	ans = 16'hbc06;
	#20
	A = 16'h9b90;
	B = 16'hb8f5;
	ans = 16'hb8fd;
	#20
	A = 16'hb6b3;
	B = 16'h3a3b;
	ans = 16'h35c3;
	#20
	A = 16'hb4f2;
	B = 16'hba23;
	ans = 16'hbc4e;
	#20
	A = 16'hb5ca;
	B = 16'ha108;
	ans = 16'hb5f2;
	#20
	A = 16'h3403;
	B = 16'h3aeb;
	ans = 16'h3c76;
	#20
	A = 16'h3a15;
	B = 16'h2dbe;
	ans = 16'h3acd;
	#20
	A = 16'hba4d;
	B = 16'hb4ec;
	ans = 16'hbc62;
	#20
	A = 16'hb6e6;
	B = 16'hb634;
	ans = 16'hba8d;
	#20
	A = 16'hace5;
	B = 16'hba2c;
	ans = 16'hbac9;
	#20
	A = 16'h38b3;
	B = 16'hbb6d;
	ans = 16'hb574;
	#20
	A = 16'h1d2a;
	B = 16'hb90a;
	ans = 16'hb900;
	#20
	A = 16'h336d;
	B = 16'hb23d;
	ans = 16'h28c0;
	#20
	A = 16'h3955;
	B = 16'hb49a;
	ans = 16'h3610;
	#20
	A = 16'hb267;
	B = 16'hbba1;
	ans = 16'hbc9d;
	#20
	A = 16'h3958;
	B = 16'h3972;
	ans = 16'h3d65;
	#20
	A = 16'h38cb;
	B = 16'hb866;
	ans = 16'h2a50;
	#20
	A = 16'h1968;
	B = 16'hb16b;
	ans = 16'hb155;
	#20
	A = 16'hb502;
	B = 16'hb299;
	ans = 16'hb827;
	#20
	A = 16'hbbb8;
	B = 16'hb8f7;
	ans = 16'hbe58;
	#20
	A = 16'h35c2;
	B = 16'h35f0;
	ans = 16'h39d9;
	#20
	A = 16'h3333;
	B = 16'h3730;
	ans = 16'h3965;
	#20
	A = 16'hb7d5;
	B = 16'h36d5;
	ans = 16'hac00;
	#20
	A = 16'h39e0;
	B = 16'h38f5;
	ans = 16'h3d6a;
	#20
	A = 16'hafca;
	B = 16'h30f1;
	ans = 16'h2830;
	#20
	A = 16'hae94;
	B = 16'h3bd7;
	ans = 16'h3b04;
	#20
	A = 16'hb155;
	B = 16'h2925;
	ans = 16'hb00c;
	#20
	A = 16'h3a42;
	B = 16'hbaf2;
	ans = 16'had80;
	#20
	A = 16'h3b18;
	B = 16'hae65;
	ans = 16'h3a4b;
	#20
	A = 16'h3445;
	B = 16'hb951;
	ans = 16'hb65d;
	#20
	A = 16'h375b;
	B = 16'h3898;
	ans = 16'h3c23;
	#20
	A = 16'hb54f;
	B = 16'h3996;
	ans = 16'h35dd;
	#20
	A = 16'hb701;
	B = 16'hba09;
	ans = 16'hbcc5;
	#20
	A = 16'hbb36;
	B = 16'hb977;
	ans = 16'hbe56;
	#20
	A = 16'hb9e6;
	B = 16'haeb9;
	ans = 16'hbabd;
	#20
	A = 16'hb2cc;
	B = 16'h36fb;
	ans = 16'h332a;
	#20
	A = 16'h2cc4;
	B = 16'hb88d;
	ans = 16'hb7e9;
	#20
	A = 16'hb741;
	B = 16'hbbc0;
	ans = 16'hbdb0;
	#20
	A = 16'hb89d;
	B = 16'h2bfc;
	ans = 16'hb81d;
	#20
	A = 16'hb98b;
	B = 16'hba4a;
	ans = 16'hbdea;
	#20
	A = 16'hb4ee;
	B = 16'h391d;
	ans = 16'h354c;
	#20
	A = 16'hb4dd;
	B = 16'hbae4;
	ans = 16'hbca9;
	#20
	A = 16'hb8ca;
	B = 16'h35f9;
	ans = 16'hb336;
	#20
	A = 16'h3032;
	B = 16'h375f;
	ans = 16'h38bc;
	#20
	A = 16'hbb5e;
	B = 16'h3613;
	ans = 16'hb854;
	#20
	A = 16'h2b8c;
	B = 16'h35e5;
	ans = 16'h36d6;
	#20
	A = 16'h3636;
	B = 16'h2b33;
	ans = 16'h371c;
	#20
	A = 16'hb855;
	B = 16'hb8d0;
	ans = 16'hbc92;
	#20
	A = 16'h3ba6;
	B = 16'h3590;
	ans = 16'h3d37;
	#20
	A = 16'hbabd;
	B = 16'h3902;
	ans = 16'hb2ec;
	#20
	A = 16'h3af3;
	B = 16'h3915;
	ans = 16'h3e04;
	#20
	A = 16'h34fb;
	B = 16'h39ec;
	ans = 16'h3c35;
	#20
	A = 16'hb721;
	B = 16'hb400;
	ans = 16'hb990;
	#20
	A = 16'h36b6;
	B = 16'h38db;
	ans = 16'h3c1b;
	#20
	A = 16'h38c8;
	B = 16'hb96e;
	ans = 16'had30;
	#20
	A = 16'hb07b;
	B = 16'h35e4;
	ans = 16'h334d;
	#20
	A = 16'h3828;
	B = 16'h3954;
	ans = 16'h3cbe;
	#20
	A = 16'hbbc2;
	B = 16'h3b0c;
	ans = 16'hadb0;
	#20
	A = 16'hbac5;
	B = 16'hb406;
	ans = 16'hbc64;
	#20
	A = 16'h351e;
	B = 16'h35a2;
	ans = 16'h3960;
	#20
	A = 16'hbacb;
	B = 16'h3b89;
	ans = 16'h2df0;
	#20
	A = 16'hba1c;
	B = 16'h3246;
	ans = 16'hb88a;
	#20
	A = 16'h30b7;
	B = 16'ha4d5;
	ans = 16'h301c;
	#20
	A = 16'h3846;
	B = 16'hb9ff;
	ans = 16'hb2e4;
	#20
	A = 16'h3798;
	B = 16'hbabd;
	ans = 16'hb5e2;
	#20
	A = 16'h3b19;
	B = 16'hbb78;
	ans = 16'ha9f0;
	#20
	A = 16'hb952;
	B = 16'h3488;
	ans = 16'hb61c;
	#20
	A = 16'h33b5;
	B = 16'h381b;
	ans = 16'h3a08;
	#20
	A = 16'hba8f;
	B = 16'hb6c6;
	ans = 16'hbcf9;
	#20
	A = 16'hbbae;
	B = 16'hbab8;
	ans = 16'hbf33;
	#20
	A = 16'hb74b;
	B = 16'h36b6;
	ans = 16'ha8a8;
	#20
	A = 16'h3866;
	B = 16'hb889;
	ans = 16'ha460;
	#20
	A = 16'hb73b;
	B = 16'hb7a8;
	ans = 16'hbb72;
	#20
	A = 16'hb948;
	B = 16'hbb1d;
	ans = 16'hbe32;
	#20
	A = 16'h38be;
	B = 16'hb8cc;
	ans = 16'h9f00;
	#20
	A = 16'hba21;
	B = 16'hac6b;
	ans = 16'hbaae;
	#20
	A = 16'haceb;
	B = 16'hb978;
	ans = 16'hba15;
	#20
	A = 16'h3664;
	B = 16'h377b;
	ans = 16'h3af0;
	#20
	A = 16'hb63b;
	B = 16'hb44c;
	ans = 16'hb944;
	#20
	A = 16'h3958;
	B = 16'h36fd;
	ans = 16'h3c6b;
	#20
	A = 16'h3b49;
	B = 16'hb6bc;
	ans = 16'h37d6;
	#20
	A = 16'hb9e4;
	B = 16'h33f2;
	ans = 16'hb7cf;
	#20
	A = 16'hb585;
	B = 16'hb285;
	ans = 16'hb864;
	#20
	A = 16'hba13;
	B = 16'h294e;
	ans = 16'hb9be;
	#20
	A = 16'h33a7;
	B = 16'h3bf6;
	ans = 16'h3cf0;
	#20
	A = 16'h29b0;
	B = 16'hbaf3;
	ans = 16'hba98;
	#20
	A = 16'h3b48;
	B = 16'hbb6e;
	ans = 16'ha4c0;
	#20
	A = 16'hb1b5;
	B = 16'h35f1;
	ans = 16'h322d;
	#20
	A = 16'h373a;
	B = 16'h3442;
	ans = 16'h39be;
	#20
	A = 16'hb1dc;
	B = 16'hb5c5;
	ans = 16'hb85a;
	#20
	A = 16'hb4b7;
	B = 16'h3b24;
	ans = 16'h38c8;
	#20
	A = 16'hbb1f;
	B = 16'h3b6b;
	ans = 16'h28c0;
	#20
	A = 16'h3461;
	B = 16'hac6b;
	ans = 16'h328c;
	#20
	A = 16'hb602;
	B = 16'hb84a;
	ans = 16'hbb4b;
	#20
	A = 16'h3637;
	B = 16'h218f;
	ans = 16'h3663;
	#20
	A = 16'hb3cf;
	B = 16'h31d5;
	ans = 16'habe8;
	#20
	A = 16'h3b0b;
	B = 16'h3b55;
	ans = 16'h3f30;
	#20
	A = 16'h380d;
	B = 16'h389e;
	ans = 16'h3c56;
	#20
	A = 16'h3b7e;
	B = 16'h3820;
	ans = 16'h3dcf;
	#20
	A = 16'hb07c;
	B = 16'hbbaa;
	ans = 16'hbc64;
	#20
	A = 16'h3b67;
	B = 16'hb926;
	ans = 16'h3482;
	#20
	A = 16'hbbec;
	B = 16'hbacb;
	ans = 16'hbf5c;
	#20
	A = 16'hb69d;
	B = 16'hb20f;
	ans = 16'hb8d2;
	#20
	A = 16'ha780;
	B = 16'hb159;
	ans = 16'hb249;
	#20
	A = 16'hba4d;
	B = 16'h3aaf;
	ans = 16'h2a20;
	#20
	A = 16'h2cec;
	B = 16'h3bec;
	ans = 16'h3c45;
	#20
	A = 16'hb9b6;
	B = 16'hbaaa;
	ans = 16'hbe30;
	#20
	A = 16'hb570;
	B = 16'h31b5;
	ans = 16'hb12b;
	#20
	A = 16'h39eb;
	B = 16'hb724;
	ans = 16'h34b2;
	#20
	A = 16'hb429;
	B = 16'hae65;
	ans = 16'hb5c2;
	#20
	A = 16'h314c;
	B = 16'h39a9;
	ans = 16'h3afc;
	#20
	A = 16'h3a90;
	B = 16'h3184;
	ans = 16'h3bf1;
	#20
	A = 16'h33e4;
	B = 16'haf2c;
	ans = 16'h304e;
	#20
	A = 16'hba50;
	B = 16'hbadb;
	ans = 16'hbe96;
	#20
	A = 16'h3613;
	B = 16'hba63;
	ans = 16'hb6b3;
	#20
	A = 16'hba33;
	B = 16'h35ed;
	ans = 16'hb679;
	#20
	A = 16'h329d;
	B = 16'h3bfd;
	ans = 16'h3cd2;
	#20
	A = 16'h3b44;
	B = 16'hb954;
	ans = 16'h33c0;
	#20
	A = 16'h3b78;
	B = 16'hb7cc;
	ans = 16'h3724;
	#20
	A = 16'h3bbf;
	B = 16'h2e17;
	ans = 16'h3c41;
	#20
	A = 16'h34d2;
	B = 16'hbaff;
	ans = 16'hb896;
	#20
	A = 16'had3c;
	B = 16'h3900;
	ans = 16'h3858;
	#20
	A = 16'hb475;
	B = 16'h3369;
	ans = 16'haa04;
	#20
	A = 16'hb588;
	B = 16'h343e;
	ans = 16'had28;
	#20
	A = 16'hb72e;
	B = 16'hbaab;
	ans = 16'hbd21;
	#20
	A = 16'hb68a;
	B = 16'h3a36;
	ans = 16'h35e2;
	#20
	A = 16'h3810;
	B = 16'h38f1;
	ans = 16'h3c80;
	#20
	A = 16'h3490;
	B = 16'h2852;
	ans = 16'h351a;
	#20
	A = 16'h3b61;
	B = 16'h3352;
	ans = 16'h3c9b;
	#20
	A = 16'h3854;
	B = 16'hbacb;
	ans = 16'hb4ee;
	#20
	A = 16'h3792;
	B = 16'h3b83;
	ans = 16'h3da6;
	#20
	A = 16'h3837;
	B = 16'hba16;
	ans = 16'hb37c;
	#20
	A = 16'hb931;
	B = 16'h3a6a;
	ans = 16'h30e4;
	#20
	A = 16'hb8f3;
	B = 16'h382b;
	ans = 16'hae40;
	#20
	A = 16'hba9f;
	B = 16'h3a07;
	ans = 16'hacc0;
	#20
	A = 16'hb043;
	B = 16'h3abd;
	ans = 16'h39ac;
	#20
	A = 16'h3b66;
	B = 16'hbbea;
	ans = 16'hac20;
	#20
	A = 16'hb0f7;
	B = 16'hb944;
	ans = 16'hba82;
	#20
	A = 16'h3a5c;
	B = 16'h34c7;
	ans = 16'h3c60;
	#20
	A = 16'hb939;
	B = 16'h3b31;
	ans = 16'h33e0;
	#20
	A = 16'hae78;
	B = 16'h3736;
	ans = 16'h3598;
	#20
	A = 16'hb950;
	B = 16'h3877;
	ans = 16'haec8;
	#20
	A = 16'hb6a4;
	B = 16'h3a30;
	ans = 16'h35bc;
	#20
	A = 16'h38e7;
	B = 16'h30e5;
	ans = 16'h3a20;
	#20
	A = 16'hbb7f;
	B = 16'hb499;
	ans = 16'hbce6;
	#20
	A = 16'h378e;
	B = 16'h3a7d;
	ans = 16'h3d22;
	#20
	A = 16'h3a48;
	B = 16'hae97;
	ans = 16'h3975;
	#20
	A = 16'hb36b;
	B = 16'hb3ac;
	ans = 16'hb78c;
	#20
	A = 16'h397e;
	B = 16'hb443;
	ans = 16'h36b9;
	#20
	A = 16'h38f9;
	B = 16'ha92b;
	ans = 16'h38a6;
	#20
	A = 16'hb80c;
	B = 16'hbbed;
	ans = 16'hbdfc;
	#20
	A = 16'hb42b;
	B = 16'hb0a8;
	ans = 16'hb67f;
	#20
	A = 16'h3117;
	B = 16'h2fbc;
	ans = 16'h347a;
	#20
	A = 16'h383f;
	B = 16'hb9cd;
	ans = 16'hb238;
	#20
	A = 16'hb6e6;
	B = 16'hba03;
	ans = 16'hbcbb;
	#20
	A = 16'h3ae5;
	B = 16'h3697;
	ans = 16'h3d18;
	#20
	A = 16'h39e0;
	B = 16'h34ce;
	ans = 16'h3c24;
	#20
	A = 16'h34ea;
	B = 16'h2f0f;
	ans = 16'h36ae;
	#20
	A = 16'hbb50;
	B = 16'hbb65;
	ans = 16'hbf5a;
	#20
	A = 16'had24;
	B = 16'hbb98;
	ans = 16'hbc1e;
	#20
	A = 16'h3813;
	B = 16'hbb9c;
	ans = 16'hb712;
	#20
	A = 16'h39ae;
	B = 16'hb09f;
	ans = 16'h3886;
	#20
	A = 16'hb779;
	B = 16'h3163;
	ans = 16'hb4c8;
	#20
	A = 16'h2f1b;
	B = 16'hb8dd;
	ans = 16'hb7f3;
	#20
	A = 16'haa77;
	B = 16'hb813;
	ans = 16'hb87a;
	#20
	A = 16'hb641;
	B = 16'hb708;
	ans = 16'hbaa4;
	#20
	A = 16'h3686;
	B = 16'h385c;
	ans = 16'h3b9f;
	#20
	A = 16'h3709;
	B = 16'h38bc;
	ans = 16'h3c20;
	#20
	A = 16'h362d;
	B = 16'ha894;
	ans = 16'h359a;
	#20
	A = 16'hb8e0;
	B = 16'h2e07;
	ans = 16'hb81f;
	#20
	A = 16'h1ef9;
	B = 16'hb4db;
	ans = 16'hb4bf;
	#20
	A = 16'h3a36;
	B = 16'hb571;
	ans = 16'h36fb;
	#20
	A = 16'hbb0b;
	B = 16'h32de;
	ans = 16'hb954;
	#20
	A = 16'hbaf8;
	B = 16'hb8ec;
	ans = 16'hbdf2;
	#20
	A = 16'hb648;
	B = 16'hb76e;
	ans = 16'hbadb;
	#20
	A = 16'h3a52;
	B = 16'h3395;
	ans = 16'h3c1c;
	#20
	A = 16'h3b97;
	B = 16'h3b52;
	ans = 16'h3f74;
	#20
	A = 16'hbbad;
	B = 16'h350f;
	ans = 16'hb926;
	#20
	A = 16'h34e1;
	B = 16'h3afa;
	ans = 16'h3cb5;
	#20
	A = 16'hb674;
	B = 16'h37c8;
	ans = 16'h2d50;
	#20
	A = 16'hb358;
	B = 16'h39b5;
	ans = 16'h37be;
	#20
	A = 16'h3b7b;
	B = 16'h33fa;
	ans = 16'h3cbd;
	#20
	A = 16'had00;
	B = 16'h3612;
	ans = 16'h34d2;
	#20
	A = 16'h366c;
	B = 16'h3a5a;
	ans = 16'h3cc8;
	#20
	A = 16'h3a59;
	B = 16'hb337;
	ans = 16'h388b;
	#20
	A = 16'hb97b;
	B = 16'ha21d;
	ans = 16'hb993;
	#20
	A = 16'h3946;
	B = 16'h2e7a;
	ans = 16'h3a15;
	#20
	A = 16'h39c1;
	B = 16'h3ba5;
	ans = 16'h3eb3;
	#20
	A = 16'hb84c;
	B = 16'hb77d;
	ans = 16'hbc05;
	#20
	A = 16'h3b94;
	B = 16'hb9c5;
	ans = 16'h333c;
	#20
	A = 16'h35c6;
	B = 16'h3bd2;
	ans = 16'h3d5a;
	#20
	A = 16'h3b1a;
	B = 16'hb119;
	ans = 16'h39d4;
	#20
	A = 16'hba08;
	B = 16'h3668;
	ans = 16'hb5a8;
	#20
	A = 16'hbb6c;
	B = 16'hb45e;
	ans = 16'hbcce;
	#20
	A = 16'h348d;
	B = 16'h35b5;
	ans = 16'h3921;
	#20
	A = 16'hbaa5;
	B = 16'h3851;
	ans = 16'hb4a8;
	#20
	A = 16'hb8ea;
	B = 16'hb20a;
	ans = 16'hba6c;
	#20
	A = 16'h3990;
	B = 16'h31d9;
	ans = 16'h3b06;
	#20
	A = 16'hb2ce;
	B = 16'hb92c;
	ans = 16'hbae0;
	#20
	A = 16'hb19a;
	B = 16'h3958;
	ans = 16'h37e3;
	#20
	A = 16'h348a;
	B = 16'h34d8;
	ans = 16'h38b1;
	#20
	A = 16'hbbae;
	B = 16'hb66d;
	ans = 16'hbd72;
	#20
	A = 16'h8d85;
	B = 16'hb96c;
	ans = 16'hb96d;
	#20
	A = 16'h3b5a;
	B = 16'h3723;
	ans = 16'h3d76;
	#20
	A = 16'h3a6c;
	B = 16'h3afb;
	ans = 16'h3eb4;
	#20
	A = 16'h34db;
	B = 16'hb5f1;
	ans = 16'hac58;
	#20
	A = 16'hb366;
	B = 16'hb5a9;
	ans = 16'hb8ae;
	#20
	A = 16'h3681;
	B = 16'h39c3;
	ans = 16'h3c82;
	#20
	A = 16'h2dcd;
	B = 16'h34a0;
	ans = 16'h3613;
	#20
	A = 16'hbb5d;
	B = 16'h2e97;
	ans = 16'hba8a;
	#20
	A = 16'hb419;
	B = 16'h3914;
	ans = 16'h360f;
	#20
	A = 16'hb9d2;
	B = 16'hb34c;
	ans = 16'hbba5;
	#20
	A = 16'h3859;
	B = 16'h3b99;
	ans = 16'h3df9;
	#20
	A = 16'h3101;
	B = 16'hb4ea;
	ans = 16'hb0d3;
	#20
	A = 16'hb76a;
	B = 16'hb821;
	ans = 16'hbbd6;
	#20
	A = 16'hba2f;
	B = 16'hb99a;
	ans = 16'hbde4;
	#20
	A = 16'h39a8;
	B = 16'h3b53;
	ans = 16'h3e7e;
	#20
	A = 16'h3471;
	B = 16'h2eeb;
	ans = 16'h362c;
	#20
	A = 16'h3110;
	B = 16'hb890;
	ans = 16'hb698;
	#20
	A = 16'h3ac3;
	B = 16'haeb9;
	ans = 16'h39ec;
	#20
	A = 16'h38f6;
	B = 16'h3b3e;
	ans = 16'h3e1a;
	#20
	A = 16'hbb96;
	B = 16'h39cb;
	ans = 16'hb32c;
	#20
	A = 16'hb8dd;
	B = 16'hb21d;
	ans = 16'hba64;
	#20
	A = 16'hbb3a;
	B = 16'hb7a4;
	ans = 16'hbd86;
	#20
	A = 16'h302b;
	B = 16'hb780;
	ans = 16'hb56a;
	#20
	A = 16'h3974;
	B = 16'hb52c;
	ans = 16'h35bc;
	#20
	A = 16'h3934;
	B = 16'h318b;
	ans = 16'h3a97;
	#20
	A = 16'hb97c;
	B = 16'h3928;
	ans = 16'ha940;
	#20
	A = 16'h3bb3;
	B = 16'hba50;
	ans = 16'h318c;
	#20
	A = 16'h3ab1;
	B = 16'hb78f;
	ans = 16'h35d3;
	#20
	A = 16'h381f;
	B = 16'h20e2;
	ans = 16'h3833;
	#20
	A = 16'hb929;
	B = 16'h3717;
	ans = 16'hb276;
	#20
	A = 16'hac59;
	B = 16'h3b4f;
	ans = 16'h3ac4;
	#20
	A = 16'hbb57;
	B = 16'h38d8;
	ans = 16'hb4fe;
	#20
	A = 16'hb8a0;
	B = 16'hb963;
	ans = 16'hbd02;
	#20
	A = 16'hb491;
	B = 16'hb888;
	ans = 16'hbad0;
	#20
	A = 16'h30e8;
	B = 16'h38c0;
	ans = 16'h39fa;
	#20
	A = 16'hb150;
	B = 16'hb7ab;
	ans = 16'hb92a;
	#20
	A = 16'hb8e9;
	B = 16'hb8f8;
	ans = 16'hbcf0;
	#20
	A = 16'h3505;
	B = 16'h39ab;
	ans = 16'h3c17;
	#20
	A = 16'h3b9c;
	B = 16'h2c65;
	ans = 16'h3c14;
	#20
	A = 16'hb1f9;
	B = 16'ha7c0;
	ans = 16'hb2f1;
	#20
	A = 16'hbaec;
	B = 16'hadcf;
	ans = 16'hbba6;
	#20
	A = 16'hb938;
	B = 16'hb46c;
	ans = 16'hbb6e;
	#20
	A = 16'h3652;
	B = 16'h3690;
	ans = 16'h3a71;
	#20
	A = 16'h3b3a;
	B = 16'h3602;
	ans = 16'h3d1e;
	#20
	A = 16'hbbc8;
	B = 16'ha2b9;
	ans = 16'hbbe3;
	#20
	A = 16'hba6a;
	B = 16'hb519;
	ans = 16'hbc7b;
	#20
	A = 16'h35c4;
	B = 16'h3833;
	ans = 16'h3b15;
	#20
	A = 16'hb848;
	B = 16'hb590;
	ans = 16'hbb10;
	#20
	A = 16'hbade;
	B = 16'hb91f;
	ans = 16'hbdfe;
	#20
	A = 16'h32e9;
	B = 16'h30d5;
	ans = 16'h35df;
	#20
	A = 16'hbaa5;
	B = 16'h98bd;
	ans = 16'hbaaa;
	#20
	A = 16'hb917;
	B = 16'hbbff;
	ans = 16'hbe8b;
	#20
	A = 16'hb8c8;
	B = 16'h39d6;
	ans = 16'h3038;
	#20
	A = 16'hb47a;
	B = 16'hba97;
	ans = 16'hbc6a;
	#20
	A = 16'h38b9;
	B = 16'h3ac3;
	ans = 16'h3dbe;
	#20
	A = 16'h392f;
	B = 16'hbbf4;
	ans = 16'hb58a;
	#20
	A = 16'hb671;
	B = 16'h3aee;
	ans = 16'h376b;
	#20
	A = 16'h2eaa;
	B = 16'h3965;
	ans = 16'h3a3a;
	#20
	A = 16'h3851;
	B = 16'hb90a;
	ans = 16'hadc8;
	#20
	A = 16'hbb85;
	B = 16'hbb7e;
	ans = 16'hbf82;
	#20
	A = 16'h3967;
	B = 16'h38a6;
	ans = 16'h3d06;
	#20
	A = 16'ha7ae;
	B = 16'h3ad3;
	ans = 16'h3a96;
	#20
	A = 16'h3c00;
	B = 16'h3835;
	ans = 16'h3e1a;
	#20
	A = 16'h2cb1;
	B = 16'haa8d;
	ans = 16'h25aa;
	#20
	A = 16'h2cff;
	B = 16'h9aad;
	ans = 16'h2cca;
	#20
	A = 16'h3456;
	B = 16'hba9d;
	ans = 16'hb872;
	#20
	A = 16'hbb08;
	B = 16'hb776;
	ans = 16'hbd62;
	#20
	A = 16'h35a7;
	B = 16'hb2cd;
	ans = 16'h3081;
	#20
	A = 16'hb211;
	B = 16'ha2a7;
	ans = 16'hb27b;
	#20
	A = 16'hb8dc;
	B = 16'hafba;
	ans = 16'hb9d3;
	#20
	A = 16'hba83;
	B = 16'h3937;
	ans = 16'hb130;
	#20
	A = 16'hb30a;
	B = 16'h38f6;
	ans = 16'h3667;
	#20
	A = 16'h3840;
	B = 16'h303c;
	ans = 16'h394f;
	#20
	A = 16'h3059;
	B = 16'h34f6;
	ans = 16'h3722;
	#20
	A = 16'hb85e;
	B = 16'h32ff;
	ans = 16'hb53c;
	#20
	A = 16'had7a;
	B = 16'h32bb;
	ans = 16'h2ffc;
	#20
	A = 16'hba08;
	B = 16'h3876;
	ans = 16'hb248;
	#20
	A = 16'h34da;
	B = 16'h383a;
	ans = 16'h3aa7;
	#20
	A = 16'hb99c;
	B = 16'h36ca;
	ans = 16'hb46e;
	#20
	A = 16'hb915;
	B = 16'h38c5;
	ans = 16'ha900;
	#20
	A = 16'h3b4d;
	B = 16'h39b2;
	ans = 16'h3e80;
	#20
	A = 16'ha183;
	B = 16'h3914;
	ans = 16'h38fe;
	#20
	A = 16'hba40;
	B = 16'hb941;
	ans = 16'hbdc0;
	#20
	A = 16'h36c3;
	B = 16'h3a89;
	ans = 16'h3cf5;
	#20
	A = 16'h37a3;
	B = 16'hbb32;
	ans = 16'hb6c1;
	#20
	A = 16'h34b3;
	B = 16'h384c;
	ans = 16'h3aa6;
	#20
	A = 16'hb43e;
	B = 16'hb9a4;
	ans = 16'hbbc3;
	#20
	A = 16'hb935;
	B = 16'h36ed;
	ans = 16'hb2fa;
	#20
	A = 16'hb95d;
	B = 16'hb83c;
	ans = 16'hbccc;
	#20
	A = 16'h387c;
	B = 16'h3abc;
	ans = 16'h3d9c;
	#20
	A = 16'hbbfb;
	B = 16'h36f6;
	ans = 16'hb880;
	#20
	A = 16'hb5ee;
	B = 16'h2d1a;
	ans = 16'hb4a8;
	#20
	A = 16'h3362;
	B = 16'hb0f0;
	ans = 16'h2ce4;
	#20
	A = 16'h3102;
	B = 16'h38a9;
	ans = 16'h39ea;
	#20
	A = 16'hb480;
	B = 16'haec1;
	ans = 16'hb630;
	#20
	A = 16'hb929;
	B = 16'hb618;
	ans = 16'hbc1a;
	#20
	A = 16'h3334;
	B = 16'haf5d;
	ans = 16'h2f0b;
	#20
	A = 16'h3628;
	B = 16'h382b;
	ans = 16'h3b3f;
	#20
	A = 16'h29d7;
	B = 16'h394f;
	ans = 16'h39ac;
	#20
	A = 16'hb653;
	B = 16'hbbbf;
	ans = 16'hbd74;
	#20
	A = 16'hb6c8;
	B = 16'hb795;
	ans = 16'hbb2e;
	#20
	A = 16'hb41d;
	B = 16'hba26;
	ans = 16'hbc1a;
	#20
	A = 16'h34e8;
	B = 16'h3150;
	ans = 16'h3790;
	#20
	A = 16'hb84f;
	B = 16'hb64a;
	ans = 16'hbb74;
	#20
	A = 16'h39b3;
	B = 16'h38db;
	ans = 16'h3d47;
	#20
	A = 16'h3647;
	B = 16'h2f41;
	ans = 16'h380c;
	#20
	A = 16'hb5fb;
	B = 16'h3a92;
	ans = 16'h3729;
	#20
	A = 16'hbb4f;
	B = 16'h3b6f;
	ans = 16'h2400;
	#20
	A = 16'hb562;
	B = 16'h3921;
	ans = 16'h34e0;
	#20
	A = 16'hb91a;
	B = 16'hbbf2;
	ans = 16'hbe86;
	#20
	A = 16'hb6d6;
	B = 16'h3989;
	ans = 16'h343c;
	#20
	A = 16'hb8c5;
	B = 16'ha4b7;
	ans = 16'hb8eb;
	#20
	A = 16'h367b;
	B = 16'h3ab9;
	ans = 16'h3cfb;
	#20
	A = 16'h39b5;
	B = 16'h3451;
	ans = 16'h3bde;
	#20
	A = 16'hb98e;
	B = 16'hb602;
	ans = 16'hbc48;
	#20
	A = 16'hb7c6;
	B = 16'hb24a;
	ans = 16'hb976;
	#20
	A = 16'hbb85;
	B = 16'h3bfa;
	ans = 16'h2b50;
	#20
	A = 16'h3795;
	B = 16'h35a3;
	ans = 16'h3a9c;
	#20
	A = 16'hb42f;
	B = 16'hb219;
	ans = 16'hb73c;
	#20
	A = 16'h3899;
	B = 16'hb7b4;
	ans = 16'h2df8;
	#20
	A = 16'hbb27;
	B = 16'hb062;
	ans = 16'hbc20;
	#20
	A = 16'h39dd;
	B = 16'hbbd9;
	ans = 16'hb3f0;
	#20
	A = 16'h3446;
	B = 16'h3890;
	ans = 16'h3ab3;
	#20
	A = 16'h3b1a;
	B = 16'h276d;
	ans = 16'h3b55;
	#20
	A = 16'h3a8f;
	B = 16'hba83;
	ans = 16'h1e00;
	#20
	A = 16'hb4f5;
	B = 16'h3a66;
	ans = 16'h37d7;
	#20
	A = 16'h222b;
	B = 16'hb87e;
	ans = 16'hb865;
	#20
	A = 16'h3a05;
	B = 16'hb972;
	ans = 16'h2c98;
	#20
	A = 16'hb2c3;
	B = 16'hb26e;
	ans = 16'hb698;
	#20
	A = 16'h318d;
	B = 16'h37e1;
	ans = 16'h3954;
	#20
	A = 16'hb2c9;
	B = 16'h361e;
	ans = 16'h3173;
	#20
	A = 16'h2cf3;
	B = 16'h3519;
	ans = 16'h3656;
	#20
	A = 16'h2374;
	B = 16'hb280;
	ans = 16'hb209;
	#20
	A = 16'hb832;
	B = 16'hb219;
	ans = 16'hb9b8;
	#20
	A = 16'hac89;
	B = 16'ha764;
	ans = 16'hae62;
	#20
	A = 16'hb9f6;
	B = 16'hba5b;
	ans = 16'hbe28;
	#20
	A = 16'haecf;
	B = 16'h3140;
	ans = 16'h2b62;
	#20
	A = 16'h3abd;
	B = 16'hbaa2;
	ans = 16'h22c0;
	#20
	A = 16'hb903;
	B = 16'h38e2;
	ans = 16'ha420;
	#20
	A = 16'h3912;
	B = 16'had06;
	ans = 16'h3871;
	#20
	A = 16'h3a5e;
	B = 16'hb7c1;
	ans = 16'h34fb;
	#20
	A = 16'h373b;
	B = 16'hbba3;
	ans = 16'hb806;
	#20
	A = 16'h3803;
	B = 16'h311f;
	ans = 16'h394b;
	#20
	A = 16'h3a7a;
	B = 16'h37cc;
	ans = 16'h3d30;
	#20
	A = 16'ha8bf;
	B = 16'hbbd9;
	ans = 16'hbc12;
	#20
	A = 16'h36e6;
	B = 16'h2ecf;
	ans = 16'h384d;
	#20
	A = 16'h396b;
	B = 16'h3b2f;
	ans = 16'h3e4d;
	#20
	A = 16'h345a;
	B = 16'hb909;
	ans = 16'hb5b8;
	#20
	A = 16'haf46;
	B = 16'h350e;
	ans = 16'h3279;
	#20
	A = 16'hb479;
	B = 16'h3825;
	ans = 16'h33a2;
	#20
	A = 16'hb98e;
	B = 16'hb9a6;
	ans = 16'hbd9a;
	#20
	A = 16'hbb88;
	B = 16'h3971;
	ans = 16'hb42e;
	#20
	A = 16'hb6c8;
	B = 16'h3943;
	ans = 16'h337c;
	#20
	A = 16'hb816;
	B = 16'hac50;
	ans = 16'hb8a0;
	#20
	A = 16'h3956;
	B = 16'h353d;
	ans = 16'h3bf4;
	#20
	A = 16'h347d;
	B = 16'hb624;
	ans = 16'hae9c;
	#20
	A = 16'h3998;
	B = 16'h3c00;
	ans = 16'h3ecc;
	#20
	A = 16'h3a54;
	B = 16'hb760;
	ans = 16'h3548;
	#20
	A = 16'h2f61;
	B = 16'h3aee;
	ans = 16'h3bda;
	#20
	A = 16'h26fb;
	B = 16'hb5f7;
	ans = 16'hb587;
	#20
	A = 16'h3b8c;
	B = 16'h3127;
	ans = 16'h3c6b;
	#20
	A = 16'hb973;
	B = 16'h3acb;
	ans = 16'h3160;
	#20
	A = 16'h3821;
	B = 16'hb2c5;
	ans = 16'h34e0;
	#20
	A = 16'hb894;
	B = 16'hb94c;
	ans = 16'hbcf0;
	#20
	A = 16'hba19;
	B = 16'hb3cf;
	ans = 16'hbc06;
	#20
	A = 16'hb2bf;
	B = 16'h2ff8;
	ans = 16'had86;
	#20
	A = 16'hb415;
	B = 16'h380d;
	ans = 16'h3405;
	#20
	A = 16'hb534;
	B = 16'hb6ad;
	ans = 16'hb9f0;
	#20
	A = 16'h2a48;
	B = 16'hb4ad;
	ans = 16'hb3c8;
	#20
	A = 16'h323a;
	B = 16'h3646;
	ans = 16'h38b2;
	#20
	A = 16'h3992;
	B = 16'h376b;
	ans = 16'h3ca4;
	#20
	A = 16'hbb83;
	B = 16'h2bd7;
	ans = 16'hbb06;
	#20
	A = 16'h33eb;
	B = 16'hb9ad;
	ans = 16'hb764;
	#20
	A = 16'h34da;
	B = 16'hb56e;
	ans = 16'ha8a0;
	#20
	A = 16'hb74c;
	B = 16'h3a6f;
	ans = 16'h3592;
	#20
	A = 16'hb906;
	B = 16'h3299;
	ans = 16'hb6c0;
	#20
	A = 16'hafef;
	B = 16'hbb51;
	ans = 16'hbc27;
	#20
	A = 16'hb95e;
	B = 16'h3a0f;
	ans = 16'h2d88;
	#20
	A = 16'had7d;
	B = 16'hb9d5;
	ans = 16'hba85;
	#20
	A = 16'h3a62;
	B = 16'h37ee;
	ans = 16'h3d2c;
	#20
	A = 16'hb649;
	B = 16'hb58f;
	ans = 16'hb9ec;
	#20
	A = 16'hbbf3;
	B = 16'h3a8c;
	ans = 16'hb19c;
	#20
	A = 16'hb910;
	B = 16'h2ec1;
	ans = 16'hb838;
	#20
	A = 16'hb797;
	B = 16'haa2a;
	ans = 16'hb82e;
	#20
	A = 16'hb697;
	B = 16'h37f9;
	ans = 16'h2d88;
	#20
	A = 16'h374b;
	B = 16'hb88b;
	ans = 16'haf2c;
	#20
	A = 16'hbbc7;
	B = 16'h32db;
	ans = 16'hba10;
	#20
	A = 16'hb86f;
	B = 16'h3a7c;
	ans = 16'h341a;
	#20
	A = 16'hae2f;
	B = 16'h3bfc;
	ans = 16'h3b36;
	#20
	A = 16'h38c9;
	B = 16'hb950;
	ans = 16'hac38;
	#20
	A = 16'h38f2;
	B = 16'hb94f;
	ans = 16'ha9d0;
	#20
	A = 16'hbae3;
	B = 16'ha4ed;
	ans = 16'hbb0a;
	#20
	A = 16'h381e;
	B = 16'h3bfc;
	ans = 16'h3e0d;
	#20
	A = 16'h3bef;
	B = 16'hb24e;
	ans = 16'h3a5c;
	#20
	A = 16'h9065;
	B = 16'h3895;
	ans = 16'h3894;
	#20
	A = 16'hb934;
	B = 16'hb7e8;
	ans = 16'hbc94;
	#20
	A = 16'hbb79;
	B = 16'hbb28;
	ans = 16'hbf50;
	#20
	A = 16'h3a1e;
	B = 16'h3a80;
	ans = 16'h3e4f;
	#20
	A = 16'ha4e3;
	B = 16'hb553;
	ans = 16'hb5a1;
	#20
	A = 16'h36f3;
	B = 16'h3aac;
	ans = 16'h3d13;
	#20
	A = 16'hb33d;
	B = 16'h3b13;
	ans = 16'h3944;
	#20
	A = 16'h3576;
	B = 16'hba36;
	ans = 16'hb6f6;
	#20
	A = 16'h31ad;
	B = 16'h3264;
	ans = 16'h3608;
	#20
	A = 16'h3113;
	B = 16'had26;
	ans = 16'h2d00;
	#20
	A = 16'h38b3;
	B = 16'h39a4;
	ans = 16'h3d2c;
	#20
	A = 16'h38cb;
	B = 16'h389c;
	ans = 16'h3cb4;
	#20
	A = 16'h38e4;
	B = 16'h2fdb;
	ans = 16'h39df;
	#20
	A = 16'h3940;
	B = 16'hb998;
	ans = 16'ha980;
	#20
	A = 16'hb949;
	B = 16'hb7ea;
	ans = 16'hbc9f;
	#20
	A = 16'ha49c;
	B = 16'h3b56;
	ans = 16'h3b31;
	#20
	A = 16'h3962;
	B = 16'h387d;
	ans = 16'h3cf0;
	#20
	A = 16'h3521;
	B = 16'h3942;
	ans = 16'h3bd2;
	#20
	A = 16'hb110;
	B = 16'h36c5;
	ans = 16'h343d;
	#20
	A = 16'h3b5c;
	B = 16'hb4d5;
	ans = 16'h38f2;
	#20
	A = 16'hb169;
	B = 16'h3562;
	ans = 16'h315b;
	#20
	A = 16'hb473;
	B = 16'hb807;
	ans = 16'hba40;
	#20
	A = 16'h39ec;
	B = 16'hb8ec;
	ans = 16'h3000;
	#20
	A = 16'hba8f;
	B = 16'h3336;
	ans = 16'hb8c2;
	#20
	A = 16'h3862;
	B = 16'hb2e1;
	ans = 16'h3554;
	#20
	A = 16'hba4c;
	B = 16'h3be9;
	ans = 16'h3274;
	#20
	A = 16'h3748;
	B = 16'hba12;
	ans = 16'hb4dc;
	#20
	A = 16'hb9ed;
	B = 16'hb959;
	ans = 16'hbda3;
	#20
	A = 16'h38eb;
	B = 16'hb116;
	ans = 16'h374b;
	#20
	A = 16'hb0f9;
	B = 16'h357d;
	ans = 16'h3201;
	#20
	A = 16'h300d;
	B = 16'hb0fe;
	ans = 16'ha788;
	#20
	A = 16'hb86d;
	B = 16'hb18f;
	ans = 16'hb9d1;
	#20
	A = 16'hbabf;
	B = 16'h3b88;
	ans = 16'h2e48;
	#20
	A = 16'h362c;
	B = 16'h2fbf;
	ans = 16'h380e;
	#20
	A = 16'hadac;
	B = 16'h3567;
	ans = 16'h33f8;
	#20
	A = 16'h3b63;
	B = 16'h3bae;
	ans = 16'h3f88;
	#20
	A = 16'hb667;
	B = 16'hb22c;
	ans = 16'hb8be;
	#20
	A = 16'h3265;
	B = 16'hb817;
	ans = 16'hb4fc;
	#20
	A = 16'hb891;
	B = 16'hb3d4;
	ans = 16'hba86;
	#20
	A = 16'h35fc;
	B = 16'hb124;
	ans = 16'h32d4;
	#20
	A = 16'h34bd;
	B = 16'hb8d5;
	ans = 16'hb4ed;
	#20
	A = 16'hb858;
	B = 16'h3856;
	ans = 16'h9400;
	#20
	A = 16'h3a72;
	B = 16'hae58;
	ans = 16'h39a7;
	#20
	A = 16'h380a;
	B = 16'ha590;
	ans = 16'h37bb;
	#20
	A = 16'hb80a;
	B = 16'h3121;
	ans = 16'hb584;
	#20
	A = 16'h3401;
	B = 16'h3aa7;
	ans = 16'h3c54;
	#20
	A = 16'h3906;
	B = 16'h394a;
	ans = 16'h3d28;
	#20
	A = 16'hae47;
	B = 16'h3af6;
	ans = 16'h3a2d;
	#20
	A = 16'h39d0;
	B = 16'h379b;
	ans = 16'h3ccf;
	#20
	A = 16'hbb2d;
	B = 16'hbb37;
	ans = 16'hbf32;
	#20
	A = 16'hb962;
	B = 16'h3ba1;
	ans = 16'h347e;
	#20
	A = 16'hb62a;
	B = 16'h3a64;
	ans = 16'h369e;
	#20
	A = 16'h3680;
	B = 16'haca9;
	ans = 16'h3556;
	#20
	A = 16'h38b2;
	B = 16'had81;
	ans = 16'h3802;
	#20
	A = 16'h3ad9;
	B = 16'h3a57;
	ans = 16'h3e98;
	#20
	A = 16'h3adf;
	B = 16'hb5da;
	ans = 16'h37e4;
	#20
	A = 16'hb6f5;
	B = 16'h348d;
	ans = 16'hb0d0;
	#20
	A = 16'hbb91;
	B = 16'haada;
	ans = 16'hbbff;
	#20
	A = 16'haebd;
	B = 16'hb8b0;
	ans = 16'hb988;
	#20
	A = 16'h355d;
	B = 16'h3903;
	ans = 16'h3bb2;
	#20
	A = 16'hb1c7;
	B = 16'h3084;
	ans = 16'ha90c;
	#20
	A = 16'h3778;
	B = 16'h3b39;
	ans = 16'h3d7a;
	#20
	A = 16'hba76;
	B = 16'h35bf;
	ans = 16'hb72d;
	#20
	A = 16'h3386;
	B = 16'h3b2a;
	ans = 16'h3c86;
	#20
	A = 16'hba27;
	B = 16'hb8b5;
	ans = 16'hbd6e;
	#20
	A = 16'hba13;
	B = 16'h3b84;
	ans = 16'h31c4;
	#20
	A = 16'h343e;
	B = 16'hba64;
	ans = 16'hb845;
	#20
	A = 16'hb9eb;
	B = 16'hbaa9;
	ans = 16'hbe4a;
	#20
	A = 16'hbb63;
	B = 16'h3110;
	ans = 16'hba1f;
	#20
	A = 16'h3565;
	B = 16'h3b95;
	ans = 16'h3d24;
	#20
	A = 16'h3854;
	B = 16'h3660;
	ans = 16'h3b84;
	#20
	A = 16'h39be;
	B = 16'h354a;
	ans = 16'h3c32;
	#20
	A = 16'hb9fa;
	B = 16'h3958;
	ans = 16'had10;
	#20
	A = 16'h3a71;
	B = 16'h24a8;
	ans = 16'h3a96;
	#20
	A = 16'h3487;
	B = 16'h3319;
	ans = 16'h380a;
	#20
	A = 16'h3941;
	B = 16'hb618;
	ans = 16'h346a;
	#20
	A = 16'h35ff;
	B = 16'h385e;
	ans = 16'h3b5e;
	#20
	A = 16'h38be;
	B = 16'hb228;
	ans = 16'h3668;
	#20
	A = 16'hb8fc;
	B = 16'hb8e0;
	ans = 16'hbcee;
	#20
	A = 16'hb9b7;
	B = 16'hb6d8;
	ans = 16'hbc92;
	#20
	A = 16'hb20e;
	B = 16'h3afa;
	ans = 16'h3976;
	#20
	A = 16'hb1ad;
	B = 16'hb866;
	ans = 16'hb9d1;
	#20
	A = 16'h3965;
	B = 16'hbab7;
	ans = 16'hb148;
	#20
	A = 16'hb93d;
	B = 16'h3950;
	ans = 16'h20c0;
	#20
	A = 16'hbbe6;
	B = 16'h3ac8;
	ans = 16'hb078;
	#20
	A = 16'ha97d;
	B = 16'h3498;
	ans = 16'h33d1;
	#20
	A = 16'h36fc;
	B = 16'h3a8c;
	ans = 16'h3d05;
	#20
	A = 16'hb888;
	B = 16'hb5d2;
	ans = 16'hbb71;
	#20
	A = 16'h38af;
	B = 16'h324b;
	ans = 16'h3a42;
	#20
	A = 16'hb561;
	B = 16'h3518;
	ans = 16'ha490;
	#20
	A = 16'hb054;
	B = 16'haec5;
	ans = 16'hb3b6;
	#20
	A = 16'h3a5a;
	B = 16'h36d9;
	ans = 16'h3ce3;
	#20
	A = 16'h2c7d;
	B = 16'hb46b;
	ans = 16'hb298;
	#20
	A = 16'h2d79;
	B = 16'h348b;
	ans = 16'h35e9;
	#20
	A = 16'h2ff6;
	B = 16'hb7a6;
	ans = 16'hb5a8;
	#20
	A = 16'hac5d;
	B = 16'h3a86;
	ans = 16'h39fa;
	#20
	A = 16'hac32;
	B = 16'hb6ff;
	ans = 16'hb806;
	#20
	A = 16'h30f2;
	B = 16'h382e;
	ans = 16'h396a;
	#20
	A = 16'h357d;
	B = 16'h30b3;
	ans = 16'h37d6;
	#20
	A = 16'h3842;
	B = 16'hb4c2;
	ans = 16'h3384;
	#20
	A = 16'hb83b;
	B = 16'h27c5;
	ans = 16'hb7fa;
	#20
	A = 16'hba15;
	B = 16'h3b7d;
	ans = 16'h31a0;
	#20
	A = 16'hb99a;
	B = 16'h3aa8;
	ans = 16'h3038;
	#20
	A = 16'h3a70;
	B = 16'h2ed0;
	ans = 16'h3b4a;
	#20
	A = 16'hb791;
	B = 16'h3a49;
	ans = 16'h3501;
	#20
	A = 16'h3a0b;
	B = 16'hb8ac;
	ans = 16'h317c;
	#20
	A = 16'h35e8;
	B = 16'h3b40;
	ans = 16'h3d1a;
	#20
	A = 16'h392f;
	B = 16'hbaca;
	ans = 16'hb26c;
	#20
	A = 16'h2cd3;
	B = 16'h3058;
	ans = 16'h32c2;
	#20
	A = 16'h39ce;
	B = 16'hba07;
	ans = 16'ha720;
	#20
	A = 16'h2b56;
	B = 16'haf29;
	ans = 16'haafc;
	#20
	A = 16'h37b6;
	B = 16'h3a9c;
	ans = 16'h3d3c;
	#20
	A = 16'hba76;
	B = 16'hb888;
	ans = 16'hbd7f;
	#20
	A = 16'h321c;
	B = 16'h3098;
	ans = 16'h355a;
	#20
	A = 16'hb80f;
	B = 16'hbb9b;
	ans = 16'hbdd5;
	#20
	A = 16'h3699;
	B = 16'hb7a8;
	ans = 16'hac3c;
	#20
	A = 16'hb5cd;
	B = 16'h1906;
	ans = 16'hb5c3;
	#20
	A = 16'h3993;
	B = 16'h364d;
	ans = 16'h3c5d;
	#20
	A = 16'hb487;
	B = 16'hb4e1;
	ans = 16'hb8b4;
	#20
	A = 16'hba63;
	B = 16'hb7b5;
	ans = 16'hbd1f;
	#20
	A = 16'hb956;
	B = 16'h1f2f;
	ans = 16'hb948;
	#20
	A = 16'h3bb4;
	B = 16'h3475;
	ans = 16'h3cf7;
	#20
	A = 16'hb07e;
	B = 16'hb440;
	ans = 16'hb67f;
	#20
	A = 16'hb259;
	B = 16'hbb08;
	ans = 16'hbc4f;
	#20
	A = 16'h3b35;
	B = 16'h393f;
	ans = 16'h3e3a;
	#20
	A = 16'h3742;
	B = 16'had6e;
	ans = 16'h35e6;
	#20
	A = 16'hb913;
	B = 16'h32d9;
	ans = 16'hb6ba;
	#20
	A = 16'hb36b;
	B = 16'h3637;
	ans = 16'h3103;
	#20
	A = 16'hb2d2;
	B = 16'h3a81;
	ans = 16'h38cc;
	#20
	A = 16'h3884;
	B = 16'h3b9e;
	ans = 16'h3e11;
	#20
	A = 16'hb7b5;
	B = 16'hb831;
	ans = 16'hbc06;
	#20
	A = 16'h39ec;
	B = 16'hb3e8;
	ans = 16'h37e4;
	#20
	A = 16'h34ae;
	B = 16'hb77d;
	ans = 16'hb19e;
	#20
	A = 16'hb877;
	B = 16'h3b28;
	ans = 16'h3562;
	#20
	A = 16'h3b94;
	B = 16'hab48;
	ans = 16'h3b20;
	#20
	A = 16'hb65c;
	B = 16'hba3b;
	ans = 16'hbcb4;
	#20
	A = 16'hb864;
	B = 16'haeea;
	ans = 16'hb941;
	#20
	A = 16'hb8fd;
	B = 16'hb0ac;
	ans = 16'hba28;
	#20
	A = 16'hb409;
	B = 16'hbbdf;
	ans = 16'hbcf2;
	#20
	A = 16'hb90f;
	B = 16'hb5af;
	ans = 16'hbbe6;
	#20
	A = 16'hba02;
	B = 16'hbbae;
	ans = 16'hbed8;
	#20
	A = 16'hb713;
	B = 16'hba93;
	ans = 16'hbd0e;
	#20
	A = 16'h2836;
	B = 16'h3908;
	ans = 16'h394b;
	#20
	A = 16'h36a8;
	B = 16'hb703;
	ans = 16'ha5b0;
	#20
	A = 16'h353e;
	B = 16'hb847;
	ans = 16'hb2a0;
	#20
	A = 16'hab5e;
	B = 16'h3513;
	ans = 16'h3427;
	#20
	A = 16'h2d57;
	B = 16'hb7db;
	ans = 16'hb685;
	#20
	A = 16'hba76;
	B = 16'h3836;
	ans = 16'hb480;
	#20
	A = 16'ha5be;
	B = 16'had57;
	ans = 16'haec6;
	#20
	A = 16'h39b3;
	B = 16'h3773;
	ans = 16'h3cb6;
	#20
	A = 16'h35f1;
	B = 16'h3bfb;
	ans = 16'h3d7a;
	#20
	A = 16'h3af2;
	B = 16'h3bc1;
	ans = 16'h3f5a;
	#20
	A = 16'hb4ce;
	B = 16'haf58;
	ans = 16'hb6a4;
	#20
	A = 16'h346c;
	B = 16'hb90a;
	ans = 16'hb5a8;
	#20
	A = 16'h3ab5;
	B = 16'hbbba;
	ans = 16'hb014;
	#20
	A = 16'hbac4;
	B = 16'hbab5;
	ans = 16'hbebc;
	#20
	A = 16'h3821;
	B = 16'h38f0;
	ans = 16'h3c88;
	#20
	A = 16'hb754;
	B = 16'hbb92;
	ans = 16'hbd9e;
	#20
	A = 16'h3ac8;
	B = 16'h3b73;
	ans = 16'h3f1e;
	#20
	A = 16'hb9a0;
	B = 16'h386c;
	ans = 16'hb0d0;
	#20
	A = 16'hb729;
	B = 16'h38aa;
	ans = 16'h3056;
	#20
	A = 16'h3ac7;
	B = 16'h3854;
	ans = 16'h3d8e;
	#20
	A = 16'h35be;
	B = 16'h3790;
	ans = 16'h3aa7;
	#20
	A = 16'hbbad;
	B = 16'h2cdd;
	ans = 16'hbb11;
	#20
	A = 16'hb121;
	B = 16'hba83;
	ans = 16'hbbcb;
	#20
	A = 16'h3a22;
	B = 16'hb3e6;
	ans = 16'h3828;
	#20
	A = 16'hb4bc;
	B = 16'h3b4c;
	ans = 16'h38ee;
	#20
	A = 16'hb382;
	B = 16'ha702;
	ans = 16'hb431;
	#20
	A = 16'hb946;
	B = 16'h3a3a;
	ans = 16'h2fa0;
	#20
	A = 16'hb861;
	B = 16'hb2cc;
	ans = 16'hba14;
	#20
	A = 16'h383e;
	B = 16'h35c4;
	ans = 16'h3b20;
	#20
	A = 16'hb272;
	B = 16'h3b4a;
	ans = 16'h39ae;
	#20
	A = 16'hba02;
	B = 16'h39c3;
	ans = 16'ha7e0;
	#20
	A = 16'hb824;
	B = 16'hb824;
	ans = 16'hbc24;
	#20
	A = 16'h39db;
	B = 16'h38ab;
	ans = 16'h3d43;
	#20
	A = 16'h39de;
	B = 16'hb018;
	ans = 16'h38d8;
	#20
	A = 16'h2f02;
	B = 16'ha8e1;
	ans = 16'h2c92;
	#20
	A = 16'hb11d;
	B = 16'had86;
	ans = 16'hb3e0;
	#20
	A = 16'h399e;
	B = 16'hbb58;
	ans = 16'hb2e8;
	#20
	A = 16'h3bfe;
	B = 16'h36e4;
	ans = 16'h3db8;
	#20
	A = 16'hb8a0;
	B = 16'hba76;
	ans = 16'hbd8b;
	#20
	A = 16'h328d;
	B = 16'hb97e;
	ans = 16'hb7b6;
	#20
	A = 16'h3aef;
	B = 16'hbae2;
	ans = 16'h1e80;
	#20
	A = 16'h3956;
	B = 16'h3aea;
	ans = 16'h3e20;
	#20
	A = 16'hb881;
	B = 16'h3993;
	ans = 16'h3048;
	#20
	A = 16'h3a4c;
	B = 16'h3012;
	ans = 16'h3b50;
	#20
	A = 16'h3a90;
	B = 16'h38e3;
	ans = 16'h3dba;
	#20
	A = 16'h3af6;
	B = 16'hb9ce;
	ans = 16'h30a0;
	#20
	A = 16'h2e06;
	B = 16'hb402;
	ans = 16'hb101;
	#20
	A = 16'hba2f;
	B = 16'hacfd;
	ans = 16'hbacf;
	#20
	A = 16'hb5c4;
	B = 16'hb9a6;
	ans = 16'hbc44;
	#20
	A = 16'hb1c9;
	B = 16'hb7a2;
	ans = 16'hb943;
	#20
	A = 16'hafd7;
	B = 16'h3842;
	ans = 16'h368e;
	#20
	A = 16'hb928;
	B = 16'h2dcb;
	ans = 16'hb86f;
	#20
	A = 16'h34ac;
	B = 16'h3a92;
	ans = 16'h3c74;
	#20
	A = 16'h3899;
	B = 16'h38ed;
	ans = 16'h3cc3;
	#20
	A = 16'ha378;
	B = 16'h32c4;
	ans = 16'h324c;
	#20
	A = 16'hbbaa;
	B = 16'h39b5;
	ans = 16'hb3d4;
	#20
	A = 16'hb879;
	B = 16'h373b;
	ans = 16'haedc;
	#20
	A = 16'hb91b;
	B = 16'hb692;
	ans = 16'hbc32;
	#20
	A = 16'hbac0;
	B = 16'hba71;
	ans = 16'hbe98;
	#20
	A = 16'hb4c6;
	B = 16'h3b36;
	ans = 16'h38d3;
	#20
	A = 16'h3a90;
	B = 16'hb4a8;
	ans = 16'h383c;
	#20
	A = 16'hae88;
	B = 16'hb523;
	ans = 16'hb6c5;
	#20
	A = 16'hbbe3;
	B = 16'h3925;
	ans = 16'hb57c;
	#20
	A = 16'hb847;
	B = 16'h362b;
	ans = 16'hb0c6;
	#20
	A = 16'h2f2b;
	B = 16'h3692;
	ans = 16'h382e;
	#20
	A = 16'h3b2d;
	B = 16'hb219;
	ans = 16'h39a7;
	#20
	A = 16'hbbdb;
	B = 16'hb96d;
	ans = 16'hbea4;
	#20
	A = 16'h3b7a;
	B = 16'hbabb;
	ans = 16'h2df8;
	#20
	A = 16'h3ae8;
	B = 16'hb7ce;
	ans = 16'h3602;
	#20
	A = 16'h3bef;
	B = 16'hb581;
	ans = 16'h392e;
	#20
	A = 16'h3379;
	B = 16'h357c;
	ans = 16'h389c;
	#20
	A = 16'h3aa4;
	B = 16'h387e;
	ans = 16'h3d91;
	#20
	A = 16'h2666;
	B = 16'h34d7;
	ans = 16'h353d;
	#20
	A = 16'hb877;
	B = 16'h3738;
	ans = 16'haed8;
	#20
	A = 16'ha8a4;
	B = 16'h3850;
	ans = 16'h3806;
	#20
	A = 16'h30aa;
	B = 16'hac12;
	ans = 16'h2d42;
	#20
	A = 16'h368f;
	B = 16'hb05a;
	ans = 16'h3462;
	#20
	A = 16'hb7fc;
	B = 16'hb150;
	ans = 16'hb952;
	#20
	A = 16'hbad2;
	B = 16'h39f3;
	ans = 16'haef8;
	#20
	A = 16'h3a3a;
	B = 16'hb4a0;
	ans = 16'h37d4;
	#20
	A = 16'h2f3f;
	B = 16'h3b8f;
	ans = 16'h3c3b;
	#20
	A = 16'h3bec;
	B = 16'h37ed;
	ans = 16'h3df1;
	#20
	A = 16'h3b46;
	B = 16'hb948;
	ans = 16'h33f8;
	#20
	A = 16'h34e1;
	B = 16'hbbb8;
	ans = 16'hb948;
	#20
	A = 16'hb724;
	B = 16'hbb11;
	ans = 16'hbd52;
	#20
	A = 16'h36dd;
	B = 16'h3a7a;
	ans = 16'h3cf4;
	#20
	A = 16'h3b75;
	B = 16'hafa1;
	ans = 16'h3a81;
	#20
	A = 16'hb981;
	B = 16'h39c5;
	ans = 16'h2840;
	#20
	A = 16'hb974;
	B = 16'hb86c;
	ans = 16'hbcf0;
	#20
	A = 16'hb91c;
	B = 16'hb969;
	ans = 16'hbd42;
	#20
	A = 16'hbb44;
	B = 16'h3674;
	ans = 16'hb80a;
	#20
	A = 16'hb3cf;
	B = 16'hb874;
	ans = 16'hba68;
	#20
	A = 16'hb704;
	B = 16'hb85b;
	ans = 16'hbbdd;
	#20
	A = 16'h3508;
	B = 16'hb4fe;
	ans = 16'h1900;
	#20
	A = 16'hba54;
	B = 16'hbbeb;
	ans = 16'hbf20;
	#20
	A = 16'hb9e6;
	B = 16'h3a48;
	ans = 16'h2a20;
	#20
	A = 16'hbaa9;
	B = 16'h3481;
	ans = 16'hb868;
	#20
	A = 16'hb2bd;
	B = 16'hb9aa;
	ans = 16'hbb59;
	#20
	A = 16'hb56a;
	B = 16'h3018;
	ans = 16'hb2bc;
	#20
	A = 16'hb9e1;
	B = 16'h3bf0;
	ans = 16'h341e;
	#20
	A = 16'hba1c;
	B = 16'hb3ac;
	ans = 16'hbc04;
	#20
	A = 16'hbb96;
	B = 16'h24aa;
	ans = 16'hbb71;
	#20
	A = 16'hb41a;
	B = 16'hb2dc;
	ans = 16'hb788;
	#20
	A = 16'h3a5f;
	B = 16'hb47a;
	ans = 16'h3822;
	#20
	A = 16'h39ed;
	B = 16'hbb51;
	ans = 16'hb190;
	#20
	A = 16'hbba8;
	B = 16'h3a50;
	ans = 16'hb160;
	#20
	A = 16'h2fd5;
	B = 16'hac66;
	ans = 16'h2ade;
	#20
	A = 16'hbaff;
	B = 16'haafa;
	ans = 16'hbb6f;
	#20
	A = 16'hb37a;
	B = 16'hb0b7;
	ans = 16'hb618;
	#20
	A = 16'h3ad6;
	B = 16'h2ec6;
	ans = 16'h3baf;
	#20
	A = 16'hb8f1;
	B = 16'hb623;
	ans = 16'hbc01;
	#20
	A = 16'h3846;
	B = 16'h3473;
	ans = 16'h3a80;
	#20
	A = 16'h3013;
	B = 16'h2da5;
	ans = 16'h32e6;
	#20
	A = 16'hb8f5;
	B = 16'h3690;
	ans = 16'hb2b4;
	#20
	A = 16'h37f0;
	B = 16'hb97f;
	ans = 16'hb21c;
	#20
	A = 16'hb515;
	B = 16'h3675;
	ans = 16'h2d80;
	#20
	A = 16'h39ae;
	B = 16'h3a01;
	ans = 16'h3dd8;
	#20
	A = 16'hb851;
	B = 16'h38b5;
	ans = 16'h2a40;
	#20
	A = 16'h37c6;
	B = 16'hb586;
	ans = 16'h3080;
	#20
	A = 16'hbabe;
	B = 16'h361c;
	ans = 16'hb760;
	#20
	A = 16'h3bea;
	B = 16'h3b3a;
	ans = 16'h3f92;
	#20
	A = 16'h358a;
	B = 16'h38d7;
	ans = 16'h3b9c;
	#20
	A = 16'hb015;
	B = 16'hb8a3;
	ans = 16'hb9a8;
	#20
	A = 16'hb494;
	B = 16'h3b21;
	ans = 16'h38d7;
	#20
	A = 16'ha0ee;
	B = 16'h3799;
	ans = 16'h3772;
	#20
	A = 16'h2bba;
	B = 16'hb4cd;
	ans = 16'hb3ac;
	#20
	A = 16'h24f1;
	B = 16'hb96f;
	ans = 16'hb947;
	#20
	A = 16'h198d;
	B = 16'hae27;
	ans = 16'hadfb;
	#20
	A = 16'hb560;
	B = 16'h3891;
	ans = 16'h3384;
	#20
	A = 16'h3826;
	B = 16'h343a;
	ans = 16'h3a43;
	#20
	A = 16'h38d8;
	B = 16'h3a1b;
	ans = 16'h3d7a;
	#20
	A = 16'h3962;
	B = 16'hb93c;
	ans = 16'h24c0;
	#20
	A = 16'hb885;
	B = 16'h3a27;
	ans = 16'h3288;
	#20
	A = 16'h2ff7;
	B = 16'hb58d;
	ans = 16'hb31e;
	#20
	A = 16'hb8f9;
	B = 16'h3a6a;
	ans = 16'h31c4;
	#20
	A = 16'hb936;
	B = 16'h3918;
	ans = 16'ha380;
	#20
	A = 16'h2569;
	B = 16'hbb1a;
	ans = 16'hbaef;
	#20
	A = 16'hb47b;
	B = 16'hb74d;
	ans = 16'hb9e4;
	#20
	A = 16'hbacf;
	B = 16'h38a5;
	ans = 16'hb454;
	#20
	A = 16'h342e;
	B = 16'h3975;
	ans = 16'h3b8c;
	#20
	A = 16'hbaaf;
	B = 16'hb400;
	ans = 16'hbc58;
	#20
	A = 16'h3a62;
	B = 16'hb9c7;
	ans = 16'h2cd8;
	#20
	A = 16'h30ed;
	B = 16'hba8e;
	ans = 16'hb953;
	#20
	A = 16'h3050;
	B = 16'hb9b4;
	ans = 16'hb8a0;
	#20
	A = 16'hb7e2;
	B = 16'h3b10;
	ans = 16'h363e;
	#20
	A = 16'h3997;
	B = 16'hb8c7;
	ans = 16'h2e80;
	#20
	A = 16'h354a;
	B = 16'h385b;
	ans = 16'h3b00;
	#20
	A = 16'hb6c1;
	B = 16'h369f;
	ans = 16'ha040;
	#20
	A = 16'hb9fd;
	B = 16'h3b41;
	ans = 16'h3110;
	#20
	A = 16'hb3a8;
	B = 16'haf17;
	ans = 16'hb59a;
	#20
	A = 16'hb3d0;
	B = 16'hb5ab;
	ans = 16'hb8ca;
	#20
	A = 16'h3b57;
	B = 16'h30d5;
	ans = 16'h3c46;
	#20
	A = 16'hb93b;
	B = 16'hb9be;
	ans = 16'hbd7c;
	#20
	A = 16'hb079;
	B = 16'h2cfa;
	ans = 16'habf0;
	#20
	A = 16'hb8e8;
	B = 16'hb990;
	ans = 16'hbd3c;
	#20
	A = 16'hb861;
	B = 16'h3080;
	ans = 16'hb682;
	#20
	A = 16'hbbc5;
	B = 16'h3a8a;
	ans = 16'hb0ec;
	#20
	A = 16'hb87e;
	B = 16'h3ae9;
	ans = 16'h34d6;
	#20
	A = 16'h33bb;
	B = 16'hb8fc;
	ans = 16'hb61a;
	#20
	A = 16'h3a31;
	B = 16'h3bc0;
	ans = 16'h3ef8;
	#20
	A = 16'h3098;
	B = 16'hb8c1;
	ans = 16'hb736;
	#20
	A = 16'hba68;
	B = 16'h3553;
	ans = 16'hb77d;
	#20
	A = 16'h35e9;
	B = 16'hb5c6;
	ans = 16'h2060;
	#20
	A = 16'h28ea;
	B = 16'hb6b4;
	ans = 16'hb617;
	#20
	A = 16'h3027;
	B = 16'hb368;
	ans = 16'hae82;
	#20
	A = 16'hba10;
	B = 16'hb689;
	ans = 16'hbcaa;
	#20
	A = 16'hbaa1;
	B = 16'ha84f;
	ans = 16'hbae6;
	#20
	A = 16'h3325;
	B = 16'hb49b;
	ans = 16'hac22;
	#20
	A = 16'hb9a6;
	B = 16'h1ff1;
	ans = 16'hb996;
	#20
	A = 16'h3a32;
	B = 16'h3376;
	ans = 16'h3c08;
	#20
	A = 16'h3ad0;
	B = 16'h2358;
	ans = 16'h3aed;
	#20
	A = 16'h3b1f;
	B = 16'h2d77;
	ans = 16'h3bce;
	#20
	A = 16'hb981;
	B = 16'hb1d3;
	ans = 16'hbaf6;
	#20
	A = 16'hb93e;
	B = 16'hba17;
	ans = 16'hbdaa;
	#20
	A = 16'hb87b;
	B = 16'hb9a0;
	ans = 16'hbd0e;
	#20
	A = 16'ha723;
	B = 16'hb4af;
	ans = 16'hb521;
	#20
	A = 16'h3bfc;
	B = 16'h3955;
	ans = 16'h3ea8;
	#20
	A = 16'h3497;
	B = 16'hba78;
	ans = 16'hb82c;
	#20
	A = 16'hb5bb;
	B = 16'h3bd5;
	ans = 16'h38f8;
	#20
	A = 16'hb43a;
	B = 16'h38bd;
	ans = 16'h3540;
	#20
	A = 16'hb3bf;
	B = 16'h3bff;
	ans = 16'h3a0f;
	#20
	A = 16'hb026;
	B = 16'haacd;
	ans = 16'hb1d9;
	#20
	A = 16'hb2bc;
	B = 16'hba83;
	ans = 16'hbc19;
	#20
	A = 16'hbbcd;
	B = 16'hbb7f;
	ans = 16'hbfa6;
	#20
	A = 16'hb934;
	B = 16'h3514;
	ans = 16'hb554;
	#20
	A = 16'hb3b6;
	B = 16'hba3b;
	ans = 16'hbc14;
	#20
	A = 16'h2344;
	B = 16'hb731;
	ans = 16'hb6f7;
	#20
	A = 16'h3186;
	B = 16'h34f3;
	ans = 16'h37b6;
	#20
	A = 16'hbab9;
	B = 16'hb851;
	ans = 16'hbd85;
	#20
	A = 16'h39e9;
	B = 16'hb038;
	ans = 16'h38db;
	#20
	A = 16'h38ce;
	B = 16'hb7c9;
	ans = 16'h2f4c;
	#20
	A = 16'h3956;
	B = 16'h39cb;
	ans = 16'h3d90;
	#20
	A = 16'hba28;
	B = 16'hb9f5;
	ans = 16'hbe0e;
	#20
	A = 16'ha3ff;
	B = 16'hb9d7;
	ans = 16'hb9f7;
	#20
	A = 16'h330a;
	B = 16'h3bd2;
	ans = 16'h3cca;
	#20
	A = 16'h3a6e;
	B = 16'hba4e;
	ans = 16'h2400;
	#20
	A = 16'h3740;
	B = 16'hb26a;
	ans = 16'h340b;
	#20
	A = 16'hadf6;
	B = 16'h3957;
	ans = 16'h3898;
	#20
	A = 16'hbbdc;
	B = 16'h386d;
	ans = 16'hb6de;
	#20
	A = 16'ha088;
	B = 16'hbaae;
	ans = 16'hbac0;
	#20
	A = 16'haf2d;
	B = 16'h38c0;
	ans = 16'h37b5;
	#20
	A = 16'h3177;
	B = 16'h3385;
	ans = 16'h367e;
	#20
	A = 16'h2c49;
	B = 16'hbb6a;
	ans = 16'hbae1;
	#20
	A = 16'hb840;
	B = 16'hbbfb;
	ans = 16'hbe1e;
	#20
	A = 16'hb8eb;
	B = 16'h2a78;
	ans = 16'hb884;
	#20
	A = 16'h36f3;
	B = 16'h3bee;
	ans = 16'h3db4;
	#20
	A = 16'h301c;
	B = 16'hb422;
	ans = 16'hb028;
	#20
	A = 16'hbbd8;
	B = 16'h38d3;
	ans = 16'hb60a;
	#20
	A = 16'hafbf;
	B = 16'h38a1;
	ans = 16'h3752;
	#20
	A = 16'h23a7;
	B = 16'hb879;
	ans = 16'hb85a;
	#20
	A = 16'h319e;
	B = 16'h33e0;
	ans = 16'h36bf;
	#20
	A = 16'hb85c;
	B = 16'hbb21;
	ans = 16'hbdbe;
	#20
	A = 16'h39cf;
	B = 16'hb64e;
	ans = 16'h3550;
	#20
	A = 16'hb585;
	B = 16'h394e;
	ans = 16'h3517;
	#20
	A = 16'h37c6;
	B = 16'hba5e;
	ans = 16'hb4f6;
	#20
	A = 16'h3554;
	B = 16'haf5a;
	ans = 16'h32fb;
	#20
	A = 16'hb91a;
	B = 16'h3593;
	ans = 16'hb4a1;
	#20
	A = 16'h37bd;
	B = 16'hbb05;
	ans = 16'hb64d;
	#20
	A = 16'h2f22;
	B = 16'hb9c7;
	ans = 16'hb8e3;
	#20
	A = 16'h3199;
	B = 16'h3760;
	ans = 16'h3916;
	#20
	A = 16'h3bb6;
	B = 16'h3648;
	ans = 16'h3d6d;
	#20
	A = 16'hb876;
	B = 16'h3707;
	ans = 16'haf94;
	#20
	A = 16'hba94;
	B = 16'hba67;
	ans = 16'hbe7e;
	#20
	A = 16'hb9c9;
	B = 16'hba60;
	ans = 16'hbe14;
	#20
	A = 16'hb964;
	B = 16'hb571;
	ans = 16'hbc0e;
	#20
	A = 16'h37a8;
	B = 16'hb79b;
	ans = 16'h1a80;
	#20
	A = 16'h3ab9;
	B = 16'hbb12;
	ans = 16'ha990;
	#20
	A = 16'hb292;
	B = 16'hba02;
	ans = 16'hbba6;
	#20
	A = 16'hbb23;
	B = 16'h3b15;
	ans = 16'h9f00;
	#20
	A = 16'h3acc;
	B = 16'h3bd0;
	ans = 16'h3f4e;
	#20
	A = 16'haeea;
	B = 16'h381c;
	ans = 16'h367e;
	#20
	A = 16'h3947;
	B = 16'hb8f5;
	ans = 16'h2920;
	#20
	A = 16'hb313;
	B = 16'hb224;
	ans = 16'hb69c;
	#20
	A = 16'h3705;
	B = 16'h2c75;
	ans = 16'h3811;
	#20
	A = 16'haddb;
	B = 16'hbb2a;
	ans = 16'hbbe5;
	#20
	A = 16'h3a20;
	B = 16'h3836;
	ans = 16'h3d2b;
	#20
	A = 16'hbbe4;
	B = 16'hba33;
	ans = 16'hbf0c;
	#20
	A = 16'hb7bb;
	B = 16'hba53;
	ans = 16'hbd18;
	#20
	A = 16'h35c9;
	B = 16'h3aad;
	ans = 16'h3cc9;
	#20
	A = 16'h3ba9;
	B = 16'hb0e6;
	ans = 16'h3a70;
	#20
	A = 16'h3bba;
	B = 16'h3911;
	ans = 16'h3e66;
	#20
	A = 16'hbac2;
	B = 16'hb889;
	ans = 16'hbda6;
	#20
	A = 16'hb306;
	B = 16'h3bb7;
	ans = 16'h39f6;
	#20
	A = 16'h37d9;
	B = 16'hb890;
	ans = 16'had1c;
	#20
	A = 16'ha711;
	B = 16'hb925;
	ans = 16'hb95e;
	#20
	A = 16'hace2;
	B = 16'h9e15;
	ans = 16'had43;
	#20
	A = 16'h9414;
	B = 16'hb63f;
	ans = 16'hb643;
	#20
	A = 16'h3bec;
	B = 16'h2f96;
	ans = 16'h3c6f;
	#20
	A = 16'hb9e1;
	B = 16'h33e4;
	ans = 16'hb7d0;
	#20
	A = 16'hba3d;
	B = 16'h3a54;
	ans = 16'h21c0;
	#20
	A = 16'h39ff;
	B = 16'h3072;
	ans = 16'h3b1c;
	#20
	A = 16'hb994;
	B = 16'h39d0;
	ans = 16'h2780;
	#20
	A = 16'h3b69;
	B = 16'hb439;
	ans = 16'h394c;
	#20
	A = 16'h377c;
	B = 16'hb833;
	ans = 16'hab50;
	#20
	A = 16'h3a99;
	B = 16'h2a09;
	ans = 16'h3afa;
	#20
	A = 16'hbbaa;
	B = 16'h3824;
	ans = 16'hb70c;
	#20
	A = 16'ha74f;
	B = 16'hbb8c;
	ans = 16'hbbc6;
	#20
	A = 16'hadc9;
	B = 16'hb6e6;
	ans = 16'hb82c;
	#20
	A = 16'hb758;
	B = 16'ha518;
	ans = 16'hb7aa;
	#20
	A = 16'hbab4;
	B = 16'hb818;
	ans = 16'hbd66;
	#20
	A = 16'hb8ed;
	B = 16'h3428;
	ans = 16'hb5b2;
	#20
	A = 16'h37ef;
	B = 16'h3035;
	ans = 16'h3905;
	#20
	A = 16'h38f9;
	B = 16'h334a;
	ans = 16'h3acc;
	#20
	A = 16'hb9ef;
	B = 16'h3a48;
	ans = 16'h2990;
	#20
	A = 16'hb8e0;
	B = 16'hbba4;
	ans = 16'hbe42;
	#20
	A = 16'h33a6;
	B = 16'h3596;
	ans = 16'h38b4;
	#20
	A = 16'hb005;
	B = 16'hb6a0;
	ans = 16'hb851;
	#20
	A = 16'h391c;
	B = 16'hbb17;
	ans = 16'hb3ec;
	#20
	A = 16'hb202;
	B = 16'h3530;
	ans = 16'h305e;
	#20
	A = 16'hb4d0;
	B = 16'h3900;
	ans = 16'h3530;
	#20
	A = 16'h355d;
	B = 16'hb95b;
	ans = 16'hb559;
	#20
	A = 16'h37b2;
	B = 16'hb6c2;
	ans = 16'h2b80;
	#20
	A = 16'hba99;
	B = 16'h33fb;
	ans = 16'hb89a;
	#20
	A = 16'hb594;
	B = 16'h25d7;
	ans = 16'hb537;
	#20
	A = 16'hb899;
	B = 16'hb899;
	ans = 16'hbc99;
	#20
	A = 16'h398e;
	B = 16'hb85c;
	ans = 16'h30c8;
	#20
	A = 16'h3b76;
	B = 16'h3b18;
	ans = 16'h3f47;
	#20
	A = 16'ha822;
	B = 16'hb056;
	ans = 16'hb15e;
	#20
	A = 16'hb954;
	B = 16'h3a43;
	ans = 16'h2f78;
	#20
	A = 16'h369e;
	B = 16'h22e4;
	ans = 16'h36d5;
	#20
	A = 16'h38e2;
	B = 16'h3aec;
	ans = 16'h3de7;
	#20
	A = 16'h3237;
	B = 16'h35af;
	ans = 16'h3865;
	#20
	A = 16'h9851;
	B = 16'hb857;
	ans = 16'hb85b;
	#20
	A = 16'h344c;
	B = 16'h390b;
	ans = 16'h3b31;
	#20
	A = 16'h3980;
	B = 16'h3bf3;
	ans = 16'h3eba;
	#20
	A = 16'hba7f;
	B = 16'hb9d3;
	ans = 16'hbe29;
	#20
	A = 16'hb8d2;
	B = 16'h341e;
	ans = 16'hb586;
	#20
	A = 16'h3bff;
	B = 16'hb85d;
	ans = 16'h3744;
	#20
	A = 16'h35de;
	B = 16'h35ed;
	ans = 16'h39e6;
	#20
	A = 16'hbae2;
	B = 16'hb0e9;
	ans = 16'hbc0e;
	#20
	A = 16'h38ca;
	B = 16'h2f7b;
	ans = 16'h39b9;
	#20
	A = 16'hbbbd;
	B = 16'hb828;
	ans = 16'hbdf2;
	#20
	A = 16'ha225;
	B = 16'h3413;
	ans = 16'h33c4;
	#20
	A = 16'h3b33;
	B = 16'h36f3;
	ans = 16'h3d56;
	#20
	A = 16'h30ef;
	B = 16'hba98;
	ans = 16'hb95c;
	#20
	A = 16'hb87d;
	B = 16'h2fe2;
	ans = 16'hb702;
	#20
	A = 16'hb810;
	B = 16'h31c5;
	ans = 16'hb53e;
	#20
	A = 16'hba2c;
	B = 16'h3aa0;
	ans = 16'h2b40;
	#20
	A = 16'hb5a6;
	B = 16'hb850;
	ans = 16'hbb23;
	#20
	A = 16'hb6cd;
	B = 16'h3aef;
	ans = 16'h3711;
	#20
	A = 16'hac98;
	B = 16'hb83d;
	ans = 16'hb8d0;
	#20
	A = 16'h361c;
	B = 16'hb810;
	ans = 16'hb008;
	#20
	A = 16'hba33;
	B = 16'h3a39;
	ans = 16'h1a00;
	#20
	A = 16'h377d;
	B = 16'hbba9;
	ans = 16'hb7d5;
	#20
	A = 16'h3881;
	B = 16'hb8ac;
	ans = 16'ha560;
	#20
	A = 16'h3b8d;
	B = 16'hb4db;
	ans = 16'h3920;
	#20
	A = 16'h28b3;
	B = 16'hb95d;
	ans = 16'hb912;
	#20
	A = 16'hb045;
	B = 16'h34f3;
	ans = 16'h31a1;
	#20
	A = 16'hac06;
	B = 16'h39fa;
	ans = 16'h3979;
	#20
	A = 16'h39cc;
	B = 16'h3976;
	ans = 16'h3da1;
	#20
	A = 16'h2ce2;
	B = 16'hb0bf;
	ans = 16'hac9c;
	#20
	A = 16'h35de;
	B = 16'hb9c5;
	ans = 16'hb5ac;
	#20
	A = 16'h3bac;
	B = 16'h38a6;
	ans = 16'h3e29;
	#20
	A = 16'hb825;
	B = 16'h3299;
	ans = 16'hb4fe;
	#20
	A = 16'h36bf;
	B = 16'h356a;
	ans = 16'h3a14;
	#20
	A = 16'hb0a4;
	B = 16'h398f;
	ans = 16'h3866;
	#20
	A = 16'hbbae;
	B = 16'h348d;
	ans = 16'hb968;
	#20
	A = 16'hb6d3;
	B = 16'h3b59;
	ans = 16'h37df;
	#20
	A = 16'h38ee;
	B = 16'haf41;
	ans = 16'h3806;
	#20
	A = 16'hb5de;
	B = 16'h3585;
	ans = 16'ha590;
	#20
	A = 16'hb468;
	B = 16'hbbaa;
	ans = 16'hbcef;
	#20
	A = 16'hba1a;
	B = 16'hbbcb;
	ans = 16'hbef2;
	#20
	A = 16'h3401;
	B = 16'hbb31;
	ans = 16'hb930;
	#20
	A = 16'haa78;
	B = 16'h35f0;
	ans = 16'h3521;
	#20
	A = 16'hb7a5;
	B = 16'hba08;
	ans = 16'hbced;
	#20
	A = 16'h39f2;
	B = 16'hb868;
	ans = 16'h3228;
	#20
	A = 16'hb596;
	B = 16'h399b;
	ans = 16'h35a0;
	#20
	A = 16'hbaaf;
	B = 16'h3898;
	ans = 16'hb42e;
	#20
	A = 16'hb930;
	B = 16'hbaeb;
	ans = 16'hbe0e;
	#20
	A = 16'hbb7c;
	B = 16'h3761;
	ans = 16'hb797;
	#20
	A = 16'hb797;
	B = 16'hba46;
	ans = 16'hbd09;
	#20
	A = 16'hb5e7;
	B = 16'h2d59;
	ans = 16'hb491;
	#20
	A = 16'hb81e;
	B = 16'hb1f2;
	ans = 16'hb99a;
	#20
	A = 16'h3b42;
	B = 16'h2d44;
	ans = 16'h3bea;
	#20
	A = 16'hb07a;
	B = 16'h3873;
	ans = 16'h36a9;
	#20
	A = 16'h2ed0;
	B = 16'h3757;
	ans = 16'h3886;
	#20
	A = 16'hb954;
	B = 16'hb881;
	ans = 16'hbcea;
	#20
	A = 16'h36b7;
	B = 16'hb815;
	ans = 16'hadcc;
	#20
	A = 16'h30ca;
	B = 16'hb922;
	ans = 16'hb7df;
	#20
	A = 16'h3995;
	B = 16'hb5de;
	ans = 16'h354c;
	#20
	A = 16'hb707;
	B = 16'hba6c;
	ans = 16'hbcf8;
	#20
	A = 16'h3403;
	B = 16'h2821;
	ans = 16'h3487;
	#20
	A = 16'hbbde;
	B = 16'h3575;
	ans = 16'hb924;
	#20
	A = 16'hb56e;
	B = 16'h3214;
	ans = 16'hb0c8;
	#20
	A = 16'h2d95;
	B = 16'h3703;
	ans = 16'h3834;
	#20
	A = 16'hb8ed;
	B = 16'hbac5;
	ans = 16'hbdd9;
	#20
	A = 16'hb901;
	B = 16'h2cad;
	ans = 16'hb86b;
	#20
	A = 16'ha86f;
	B = 16'hb7fb;
	ans = 16'hb844;
	#20
	A = 16'hb9bc;
	B = 16'h3924;
	ans = 16'hacc0;
	#20
	A = 16'h3813;
	B = 16'h3939;
	ans = 16'h3ca6;
	#20
	A = 16'hb1b6;
	B = 16'h3a23;
	ans = 16'h38b6;
	#20
	A = 16'h3b74;
	B = 16'hb4aa;
	ans = 16'h391f;
	#20
	A = 16'h3368;
	B = 16'hb0d7;
	ans = 16'h2d22;
	#20
	A = 16'hba2a;
	B = 16'hbaaa;
	ans = 16'hbe6a;
	#20
	A = 16'h3904;
	B = 16'h380f;
	ans = 16'h3c8a;
	#20
	A = 16'hb2b1;
	B = 16'hb40b;
	ans = 16'hb764;
	#20
	A = 16'hbaa7;
	B = 16'hb931;
	ans = 16'hbdec;
	#20
	A = 16'hb0b4;
	B = 16'hb94f;
	ans = 16'hba7c;
	#20
	A = 16'hb1ae;
	B = 16'h3a4a;
	ans = 16'h38de;
	#20
	A = 16'hba3d;
	B = 16'hb774;
	ans = 16'hbcfc;
	#20
	A = 16'hb58c;
	B = 16'h39cd;
	ans = 16'h360e;
	#20
	A = 16'h3aaf;
	B = 16'hbb67;
	ans = 16'hadc0;
	#20
	A = 16'h3a4e;
	B = 16'h39ec;
	ans = 16'h3e1d;
	#20
	A = 16'h350a;
	B = 16'h3b67;
	ans = 16'h3cf6;
	#20
	A = 16'hb10d;
	B = 16'hb1d2;
	ans = 16'hb570;
	#20
	A = 16'h30c7;
	B = 16'h22fc;
	ans = 16'h3137;
	#20
	A = 16'h2e99;
	B = 16'h2c4e;
	ans = 16'h3174;
	#20
	A = 16'h3be1;
	B = 16'hadea;
	ans = 16'h3b24;
	#20
	A = 16'h3bd7;
	B = 16'h392a;
	ans = 16'h3e80;
	#20
	A = 16'hbbd1;
	B = 16'h3022;
	ans = 16'hbac8;
	#20
	A = 16'h3137;
	B = 16'h316b;
	ans = 16'h3551;
	#20
	A = 16'hb823;
	B = 16'h3ba1;
	ans = 16'h36fc;
	#20
	A = 16'h2d49;
	B = 16'h3889;
	ans = 16'h3932;
	#20
	A = 16'h2257;
	B = 16'haec4;
	ans = 16'hadf9;
	#20
	A = 16'h3a0e;
	B = 16'h3663;
	ans = 16'h3ca0;
	#20
	A = 16'hb62d;
	B = 16'h2a8f;
	ans = 16'hb55b;
	#20
	A = 16'hbb4b;
	B = 16'h215e;
	ans = 16'hbb36;
	#20
	A = 16'h3593;
	B = 16'h3936;
	ans = 16'h3c00;
	#20
	A = 16'hb438;
	B = 16'h9c95;
	ans = 16'hb44a;
	#20
	A = 16'hbbb5;
	B = 16'h38e5;
	ans = 16'hb5a0;
	#20
	A = 16'hbbdb;
	B = 16'ha5ad;
	ans = 16'hbc04;
	#20
	A = 16'hb965;
	B = 16'hb04d;
	ans = 16'hba78;
	#20
	A = 16'hbbac;
	B = 16'hb774;
	ans = 16'hbdb3;
	#20
	A = 16'hba9c;
	B = 16'hb4fe;
	ans = 16'hbc8e;
	#20
	A = 16'hb606;
	B = 16'h3af5;
	ans = 16'h37e4;
	#20
	A = 16'hb98b;
	B = 16'hbb23;
	ans = 16'hbe57;
	#20
	A = 16'hb96f;
	B = 16'h39cd;
	ans = 16'h29e0;
	#20
	A = 16'h3ab6;
	B = 16'h3a08;
	ans = 16'h3e5f;
	#20
	A = 16'h39a9;
	B = 16'hb82a;
	ans = 16'h31fc;
	#20
	A = 16'h3be4;
	B = 16'hbacf;
	ans = 16'h3054;
	#20
	A = 16'h3448;
	B = 16'h28b1;
	ans = 16'h34de;
	#20
	A = 16'hb894;
	B = 16'h32a2;
	ans = 16'hb5d7;
	#20
	A = 16'h389a;
	B = 16'had53;
	ans = 16'h37df;
	#20
	A = 16'h3972;
	B = 16'hbb96;
	ans = 16'hb448;
	#20
	A = 16'hb254;
	B = 16'h3540;
	ans = 16'h302c;
	#20
	A = 16'hbb49;
	B = 16'h33dd;
	ans = 16'hb952;
	#20
	A = 16'h38cb;
	B = 16'h34e2;
	ans = 16'h3b3c;
	#20
	A = 16'hb926;
	B = 16'hbacd;
	ans = 16'hbdfa;
	#20
	A = 16'h3829;
	B = 16'h232c;
	ans = 16'h3846;
	#20
	A = 16'hb2b9;
	B = 16'hb8da;
	ans = 16'hba88;
	#20
	A = 16'hbb39;
	B = 16'h387c;
	ans = 16'hb57a;
	#20
	A = 16'hb81b;
	B = 16'hbb04;
	ans = 16'hbd90;
	#20
	A = 16'h3afc;
	B = 16'h3946;
	ans = 16'h3e21;
	#20
	A = 16'hbbc4;
	B = 16'h2413;
	ans = 16'hbba3;
	#20
	A = 16'h3b43;
	B = 16'h3a1f;
	ans = 16'h3eb1;
	#20
	A = 16'hbadd;
	B = 16'hb5e4;
	ans = 16'hbce8;
	#20
	A = 16'hb660;
	B = 16'h34e6;
	ans = 16'hade8;
	#20
	A = 16'hbbaa;
	B = 16'h3b41;
	ans = 16'haa90;
	#20
	A = 16'h22f8;
	B = 16'h3946;
	ans = 16'h3962;
	#20
	A = 16'h3aa6;
	B = 16'h34ba;
	ans = 16'h3c82;
	#20
	A = 16'hbad6;
	B = 16'h3832;
	ans = 16'hb548;
	#20
	A = 16'hb065;
	B = 16'hb16c;
	ans = 16'hb4e8;
	#20
	A = 16'hb0d7;
	B = 16'hbb92;
	ans = 16'hbc64;
	#20
	A = 16'haa34;
	B = 16'hba82;
	ans = 16'hbae5;
	#20
	A = 16'hbb9f;
	B = 16'h399c;
	ans = 16'hb406;
	#20
	A = 16'hbbaf;
	B = 16'hb9d9;
	ans = 16'hbec4;
	#20
	A = 16'h3bc2;
	B = 16'hb947;
	ans = 16'h34f6;
	#20
	A = 16'h39ab;
	B = 16'hb0ca;
	ans = 16'h3878;
	#20
	A = 16'h35be;
	B = 16'hb55a;
	ans = 16'h2640;
	#20
	A = 16'ha824;
	B = 16'h3ae7;
	ans = 16'h3aa5;
	#20
	A = 16'hb7ad;
	B = 16'h3990;
	ans = 16'h32e6;
	#20
	A = 16'hb99e;
	B = 16'hacbb;
	ans = 16'hba35;
	#20
	A = 16'ha8d9;
	B = 16'h3669;
	ans = 16'h35ce;
	#20
	A = 16'hadab;
	B = 16'h3586;
	ans = 16'h341b;
	#20
	A = 16'h37bd;
	B = 16'h307f;
	ans = 16'h38fe;
	#20
	A = 16'hb7c1;
	B = 16'h34ea;
	ans = 16'hb1ae;
	#20
	A = 16'hb9c5;
	B = 16'hba03;
	ans = 16'hbde4;
	#20
	A = 16'hac7e;
	B = 16'h37ad;
	ans = 16'h368e;
	#20
	A = 16'h3aa5;
	B = 16'haced;
	ans = 16'h3a07;
	#20
	A = 16'h3533;
	B = 16'h3b87;
	ans = 16'h3d10;
	#20
	A = 16'h39d4;
	B = 16'hb6d7;
	ans = 16'h34d1;
	#20
	A = 16'hbba1;
	B = 16'hbb5a;
	ans = 16'hbf7e;
	#20
	A = 16'hba29;
	B = 16'hb559;
	ans = 16'hbc6b;
	#20
	A = 16'hba0e;
	B = 16'hb9b4;
	ans = 16'hbde1;
	#20
	A = 16'h3b77;
	B = 16'h389a;
	ans = 16'h3e08;
	#20
	A = 16'h3850;
	B = 16'hb52d;
	ans = 16'h32e6;
	#20
	A = 16'h38ce;
	B = 16'hb7b8;
	ans = 16'h2f90;
	#20
	A = 16'h3a8d;
	B = 16'hb98c;
	ans = 16'h3004;
	#20
	A = 16'hb1b2;
	B = 16'hb113;
	ans = 16'hb562;
	#20
	A = 16'haeaa;
	B = 16'hbb36;
	ans = 16'hbc06;
	#20
	A = 16'h3745;
	B = 16'hb9f3;
	ans = 16'hb4a1;
	#20
	A = 16'hb728;
	B = 16'h326d;
	ans = 16'hb3e3;
	#20
	A = 16'hb172;
	B = 16'hb84b;
	ans = 16'hb9a8;
	#20
	A = 16'hb983;
	B = 16'hb59e;
	ans = 16'hbc29;
	#20
	A = 16'h3389;
	B = 16'hb3e6;
	ans = 16'ha1d0;
	#20
	A = 16'h345d;
	B = 16'hab58;
	ans = 16'h32e4;
	#20
	A = 16'hb771;
	B = 16'had93;
	ans = 16'hb86b;
	#20
	A = 16'hb744;
	B = 16'h381b;
	ans = 16'h2b90;
	#20
	A = 16'h3ad6;
	B = 16'hb020;
	ans = 16'h39ce;
	#20
	A = 16'hbbf3;
	B = 16'hbaf7;
	ans = 16'hbf75;
	#20
	A = 16'hb3b9;
	B = 16'had7b;
	ans = 16'hb53b;
	#20
	A = 16'haea1;
	B = 16'hbb6b;
	ans = 16'hbc20;
	#20
	A = 16'hb81f;
	B = 16'h3304;
	ans = 16'hb4bc;
	#20
	A = 16'h3186;
	B = 16'h3a52;
	ans = 16'h3bb4;
	#20
	A = 16'h3bc3;
	B = 16'hb932;
	ans = 16'h3522;
	#20
	A = 16'h39de;
	B = 16'h3419;
	ans = 16'h3bea;
	#20
	A = 16'h37af;
	B = 16'hb9ca;
	ans = 16'hb3ca;
	#20
	A = 16'h3880;
	B = 16'hac7e;
	ans = 16'h37e0;
	#20
	A = 16'hbb9f;
	B = 16'h3406;
	ans = 16'hb99c;
	#20
	A = 16'h31a1;
	B = 16'h2c69;
	ans = 16'h33d6;
	#20
	A = 16'h3881;
	B = 16'hb416;
	ans = 16'h34ec;
	#20
	A = 16'h3838;
	B = 16'hba85;
	ans = 16'hb49a;
	#20
	A = 16'h312d;
	B = 16'hbb78;
	ans = 16'hba2d;
	#20
	A = 16'h38ea;
	B = 16'h3030;
	ans = 16'h39f6;
	#20
	A = 16'h395c;
	B = 16'h21d5;
	ans = 16'h3973;
	#20
	A = 16'h3c00;
	B = 16'h3905;
	ans = 16'h3e82;
	#20
	A = 16'h3a4a;
	B = 16'h2c66;
	ans = 16'h3ad7;
	#20
	A = 16'h3bab;
	B = 16'h39ec;
	ans = 16'h3ecc;
	#20
	A = 16'h9c37;
	B = 16'h3681;
	ans = 16'h3670;
	#20
	A = 16'hbb46;
	B = 16'h32e5;
	ans = 16'hb98d;
	#20
	A = 16'h3808;
	B = 16'h3a4f;
	ans = 16'h3d2c;
	#20
	A = 16'h391c;
	B = 16'hb1d8;
	ans = 16'h374c;
	#20
	A = 16'h3a58;
	B = 16'hb677;
	ans = 16'h3639;
	#20
	A = 16'h36db;
	B = 16'hba78;
	ans = 16'hb615;
	#20
	A = 16'h3add;
	B = 16'h39ac;
	ans = 16'h3e44;
	#20
	A = 16'h39b6;
	B = 16'hba54;
	ans = 16'hacf0;
	#20
	A = 16'h39cc;
	B = 16'hb496;
	ans = 16'h3702;
	#20
	A = 16'ha3df;
	B = 16'haec6;
	ans = 16'hafc2;
	#20
	A = 16'h35a1;
	B = 16'h3a89;
	ans = 16'h3cad;
	#20
	A = 16'h3b4f;
	B = 16'h3ac6;
	ans = 16'h3f0a;
	#20
	A = 16'hbb66;
	B = 16'h3a36;
	ans = 16'hb0c0;
	#20
	A = 16'hb981;
	B = 16'hb376;
	ans = 16'hbb5e;
	#20
	A = 16'hbbe6;
	B = 16'hab34;
	ans = 16'hbc2d;
	#20
	A = 16'hb878;
	B = 16'h395d;
	ans = 16'h2f28;
	#20
	A = 16'hb4c0;
	B = 16'hbae9;
	ans = 16'hbca4;
	#20
	A = 16'hb7bf;
	B = 16'h36d7;
	ans = 16'hab40;
	#20
	A = 16'h3ac5;
	B = 16'hb9b9;
	ans = 16'h3030;
	#20
	A = 16'h3bbf;
	B = 16'h2f98;
	ans = 16'h3c59;
	#20
	A = 16'h3676;
	B = 16'hb603;
	ans = 16'h2730;
	#20
	A = 16'haccc;
	B = 16'h3945;
	ans = 16'h38ac;
	#20
	A = 16'hb9c0;
	B = 16'h3b85;
	ans = 16'h3314;
	#20
	A = 16'hac5a;
	B = 16'h39a6;
	ans = 16'h391b;
	#20

	
	
	
			// Wait 100 ns for global reset to finish
		#200050;
        		
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
	
	
	always@ (posedge CLK, negedge RESETn) begin
		if(!RESETn) begin
			ans_reg <= 0;
		end else begin
			ans_reg <=ans;
		end
	end
	
endmodule
