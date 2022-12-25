`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:03:48 12/10/2022
// Design Name:   fp16multiplier
// Module Name:   C:/Users/Dongbeom Son/Desktop/repos/dld_assigns/float_MAC/tb_fp16multiplier.v
// Project Name:  float_MAC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fp16multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////


module tb_fp16multiplier;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg CLK;
	reg RESETn;

	// Outputs
	wire [15:0] out;
	
	
	
	//for verification
	wire [15:0] error;
	reg [15:0] ans;
	reg [15:0] ans_reg;
	
	wire [15:0] ans_a;
	assign error = out - ans_reg;
	
	reg [15:0] err_cnt;

	// Instantiate the Unit Under Test (UUT)
	fp16multiplier uut (
		.A(A), 
		.B(B), 
		.CLK(CLK), 
		.RESETn(RESETn), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
	#50	
	
	
	A = 16'hae4e;
	B = 16'ha86b;
	ans = 16'h1af7;
	#20
	A = 16'hb88a;
	B = 16'h314e;
	ans = 16'hae05;
	#20
	A = 16'h3a12;
	B = 16'h37f1;
	ans = 16'h3607;
	#20
	A = 16'hbbe2;
	B = 16'hb02a;
	ans = 16'h301a;
	#20
	A = 16'h3923;
	B = 16'hb581;
	ans = 16'hb311;
	#20
	A = 16'h3942;
	B = 16'h3b4b;
	ans = 16'h38cb;
	#20
	A = 16'h3b6a;
	B = 16'hb2f5;
	ans = 16'hb273;
	#20
	A = 16'h34c8;
	B = 16'h397c;
	ans = 16'h328e;
	#20
	A = 16'hb426;
	B = 16'hba10;
	ans = 16'h324a;
	#20
	A = 16'h3ba1;
	B = 16'hb943;
	ans = 16'hb905;
	#20
	A = 16'hb802;
	B = 16'h351c;
	ans = 16'hb11f;
	#20
	A = 16'hb940;
	B = 16'h3345;
	ans = 16'hb0c5;
	#20
	A = 16'h361b;
	B = 16'hbacc;
	ans = 16'hb530;
	#20
	A = 16'h3abc;
	B = 16'h3692;
	ans = 16'h3588;
	#20
	A = 16'hb79d;
	B = 16'h2d33;
	ans = 16'ha8f3;
	#20
	A = 16'hb8f5;
	B = 16'hb983;
	ans = 16'h36d5;
	#20
	A = 16'hb4ee;
	B = 16'hb904;
	ans = 16'h322e;
	#20
	A = 16'h215d;
	B = 16'hb867;
	ans = 16'h9de7;
	#20
	A = 16'hb44e;
	B = 16'hb261;
	ans = 16'h2add;
	#20
	A = 16'hae1d;
	B = 16'h358e;
	ans = 16'ha83f;
	#20
	A = 16'hb9c2;
	B = 16'hb82b;
	ans = 16'h3600;
	#20
	A = 16'h3a4b;
	B = 16'h38f3;
	ans = 16'h37c9;
	#20
	A = 16'h39bb;
	B = 16'hbb9a;
	ans = 16'hb972;
	#20
	A = 16'h3b35;
	B = 16'h2e75;
	ans = 16'h2dd1;
	#20
	A = 16'hb5bd;
	B = 16'h383b;
	ans = 16'hb212;
	#20
	A = 16'hbb59;
	B = 16'h3a70;
	ans = 16'hb9ea;
	#20
	A = 16'h3662;
	B = 16'h37df;
	ans = 16'h3248;
	#20
	A = 16'hb17f;
	B = 16'hb8e1;
	ans = 16'h2eb4;
	#20
	A = 16'ha60d;
	B = 16'h3527;
	ans = 16'h9fcb;
	#20
	A = 16'h399b;
	B = 16'h3bd0;
	ans = 16'h3979;
	#20
	A = 16'hb3cc;
	B = 16'h2fe1;
	ans = 16'ha7ae;
	#20
	A = 16'hb4f1;
	B = 16'h3a59;
	ans = 16'hb3d7;
	#20
	A = 16'hb974;
	B = 16'hb484;
	ans = 16'h3228;
	#20
	A = 16'h350b;
	B = 16'h3904;
	ans = 16'h3253;
	#20
	A = 16'h3a21;
	B = 16'h3ae5;
	ans = 16'h3948;
	#20
	A = 16'hbc00;
	B = 16'h3401;
	ans = 16'hb401;
	#20
	A = 16'h15b9;
	B = 16'h39c4;
	ans = 16'h1420;
	#20
	A = 16'hbbb3;
	B = 16'h3026;
	ans = 16'haffc;
	#20
	A = 16'hafd3;
	B = 16'hb4c6;
	ans = 16'h28ab;
	#20
	A = 16'hbab3;
	B = 16'hb107;
	ans = 16'h3036;
	#20
	A = 16'hb636;
	B = 16'hb3a5;
	ans = 16'h2def;
	#20
	A = 16'hb803;
	B = 16'h39bf;
	ans = 16'hb5c3;
	#20
	A = 16'hb5ad;
	B = 16'h39f7;
	ans = 16'hb43b;
	#20
	A = 16'haee3;
	B = 16'h3bee;
	ans = 16'haed4;
	#20
	A = 16'hbac3;
	B = 16'hb528;
	ans = 16'h345c;
	#20
	A = 16'h39d1;
	B = 16'h3b79;
	ans = 16'h396f;
	#20
	A = 16'hb175;
	B = 16'hba66;
	ans = 16'h305d;
	#20
	A = 16'h3485;
	B = 16'h2c0d;
	ans = 16'h2494;
	#20
	A = 16'hbb10;
	B = 16'h31b8;
	ans = 16'hb10c;
	#20
	A = 16'hb312;
	B = 16'hbb08;
	ans = 16'h3237;
	#20
	A = 16'hb8b1;
	B = 16'h385c;
	ans = 16'hb51d;
	#20
	A = 16'h39a1;
	B = 16'h38dd;
	ans = 16'h36d8;
	#20
	A = 16'hb95a;
	B = 16'h3afc;
	ans = 16'hb8ac;
	#20
	A = 16'h3b0e;
	B = 16'hbbef;
	ans = 16'hbaff;
	#20
	A = 16'h37af;
	B = 16'h2c3b;
	ans = 16'h2810;
	#20
	A = 16'hb6bf;
	B = 16'h36b8;
	ans = 16'hb1aa;
	#20
	A = 16'h33c7;
	B = 16'h34db;
	ans = 16'h2cb8;
	#20
	A = 16'h286b;
	B = 16'h3788;
	ans = 16'h2429;
	#20
	A = 16'h3ab2;
	B = 16'h39d2;
	ans = 16'h38df;
	#20
	A = 16'hb43b;
	B = 16'h382e;
	ans = 16'hb06c;
	#20
	A = 16'hb96e;
	B = 16'h3741;
	ans = 16'hb4ec;
	#20
	A = 16'h374d;
	B = 16'h3439;
	ans = 16'h2fb5;
	#20
	A = 16'h3a11;
	B = 16'h3734;
	ans = 16'h3576;
	#20
	A = 16'h3822;
	B = 16'h9e9d;
	ans = 16'h9ad5;
	#20
	A = 16'h3ac7;
	B = 16'h3236;
	ans = 16'h3143;
	#20
	A = 16'h28d8;
	B = 16'h3348;
	ans = 16'h2069;
	#20
	A = 16'h3b73;
	B = 16'hbb44;
	ans = 16'hbac4;
	#20
	A = 16'h37fe;
	B = 16'h3910;
	ans = 16'h350f;
	#20
	A = 16'hb7ab;
	B = 16'h3100;
	ans = 16'haccb;
	#20
	A = 16'h3a49;
	B = 16'hb33a;
	ans = 16'hb1ad;
	#20
	A = 16'h32e7;
	B = 16'hb859;
	ans = 16'haf81;
	#20
	A = 16'h373c;
	B = 16'h3a64;
	ans = 16'h35c7;
	#20
	A = 16'hb871;
	B = 16'h2dc6;
	ans = 16'haa69;
	#20
	A = 16'ha1bf;
	B = 16'h340a;
	ans = 16'h99cd;
	#20
	A = 16'h31db;
	B = 16'h3636;
	ans = 16'h2c8c;
	#20
	A = 16'h30ec;
	B = 16'h38ed;
	ans = 16'h2e10;
	#20
	A = 16'hba94;
	B = 16'hbb95;
	ans = 16'h3a3c;
	#20
	A = 16'hb959;
	B = 16'hac5e;
	ans = 16'h29d7;
	#20
	A = 16'h364a;
	B = 16'h29a3;
	ans = 16'h246e;
	#20
	A = 16'h34bb;
	B = 16'hb40f;
	ans = 16'haccd;
	#20
	A = 16'h3aa0;
	B = 16'h32b3;
	ans = 16'h318c;
	#20
	A = 16'hba51;
	B = 16'hb94a;
	ans = 16'h382d;
	#20
	A = 16'hb8cb;
	B = 16'h3a72;
	ans = 16'hb7b9;
	#20
	A = 16'hbbb3;
	B = 16'hbb52;
	ans = 16'h3b0c;
	#20
	A = 16'h34bf;
	B = 16'h3808;
	ans = 16'h30c8;
	#20
	A = 16'hb9b0;
	B = 16'h34bb;
	ans = 16'hb2ba;
	#20
	A = 16'h3750;
	B = 16'hb87a;
	ans = 16'hb418;
	#20
	A = 16'h3696;
	B = 16'hba1e;
	ans = 16'hb509;
	#20
	A = 16'h330d;
	B = 16'hab30;
	ans = 16'ha256;
	#20
	A = 16'h3ad5;
	B = 16'h346c;
	ans = 16'h338d;
	#20
	A = 16'h368b;
	B = 16'h36d2;
	ans = 16'h3194;
	#20
	A = 16'h31a9;
	B = 16'h39a4;
	ans = 16'h2ffb;
	#20
	A = 16'hba69;
	B = 16'h3624;
	ans = 16'hb4ec;
	#20
	A = 16'hbb31;
	B = 16'h3ab9;
	ans = 16'hba0b;
	#20
	A = 16'hbb72;
	B = 16'hb729;
	ans = 16'h36aa;
	#20
	A = 16'hb8b7;
	B = 16'h3590;
	ans = 16'hb28e;
	#20
	A = 16'h38cc;
	B = 16'hba37;
	ans = 16'hb774;
	#20
	A = 16'hb886;
	B = 16'h34fd;
	ans = 16'hb1a4;
	#20
	A = 16'h3958;
	B = 16'h3b2a;
	ans = 16'h38c9;
	#20
	A = 16'h3a6c;
	B = 16'ha8bb;
	ans = 16'ha798;
	#20
	A = 16'h3413;
	B = 16'hb84d;
	ans = 16'hb061;
	#20
	A = 16'h3ad9;
	B = 16'ha940;
	ans = 16'ha87e;
	#20
	A = 16'h34e0;
	B = 16'hbb63;
	ans = 16'hb480;
	#20
	A = 16'hba37;
	B = 16'h3995;
	ans = 16'hb856;
	#20
	A = 16'hba71;
	B = 16'ha581;
	ans = 16'h246e;
	#20
	A = 16'hbb0a;
	B = 16'h38c0;
	ans = 16'hb82e;
	#20
	A = 16'hb8fd;
	B = 16'h2e1f;
	ans = 16'haba2;
	#20
	A = 16'h3401;
	B = 16'h3494;
	ans = 16'h2c95;
	#20
	A = 16'hb321;
	B = 16'h3136;
	ans = 16'ha8a5;
	#20
	A = 16'hb3d7;
	B = 16'hb6d8;
	ans = 16'h2eb5;
	#20
	A = 16'hb9e6;
	B = 16'h37b4;
	ans = 16'hb5ae;
	#20
	A = 16'hb8e1;
	B = 16'h36fe;
	ans = 16'hb444;
	#20
	A = 16'hb3fe;
	B = 16'h28be;
	ans = 16'ha0bd;
	#20
	A = 16'hb9f7;
	B = 16'hbbde;
	ans = 16'h39de;
	#20
	A = 16'h3853;
	B = 16'h369b;
	ans = 16'h3324;
	#20
	A = 16'h3bca;
	B = 16'h3300;
	ans = 16'h32d1;
	#20
	A = 16'hbbc7;
	B = 16'h3a7f;
	ans = 16'hba51;
	#20
	A = 16'h38ae;
	B = 16'hb503;
	ans = 16'hb1dd;
	#20
	A = 16'hb5f0;
	B = 16'hb8ae;
	ans = 16'h32f2;
	#20
	A = 16'hb8cc;
	B = 16'hbb61;
	ans = 16'h386d;
	#20
	A = 16'hb952;
	B = 16'hb524;
	ans = 16'h32d6;
	#20
	A = 16'hb9ac;
	B = 16'h3925;
	ans = 16'hb74b;
	#20
	A = 16'h3959;
	B = 16'hb76e;
	ans = 16'hb4f7;
	#20
	A = 16'h3bf4;
	B = 16'h3959;
	ans = 16'h3951;
	#20
	A = 16'h3bb5;
	B = 16'hb991;
	ans = 16'hb95d;
	#20
	A = 16'h353c;
	B = 16'hb15d;
	ans = 16'hab05;
	#20
	A = 16'hb89e;
	B = 16'h38b9;
	ans = 16'hb574;
	#20
	A = 16'h371d;
	B = 16'hb22c;
	ans = 16'had7d;
	#20
	A = 16'h314d;
	B = 16'h3920;
	ans = 16'h2ecb;
	#20
	A = 16'hb77a;
	B = 16'h3ab1;
	ans = 16'hb641;
	#20
	A = 16'hb9be;
	B = 16'hbbf0;
	ans = 16'h39b3;
	#20
	A = 16'hb971;
	B = 16'hb9c5;
	ans = 16'h37d9;
	#20
	A = 16'h3b0c;
	B = 16'hb7c7;
	ans = 16'hb6da;
	#20
	A = 16'h3b33;
	B = 16'hb7c3;
	ans = 16'hb6fc;
	#20
	A = 16'hb373;
	B = 16'hbb65;
	ans = 16'h32e3;
	#20
	A = 16'h366c;
	B = 16'hb329;
	ans = 16'hadbf;
	#20
	A = 16'hb491;
	B = 16'hbb35;
	ans = 16'h341d;
	#20
	A = 16'h2a94;
	B = 16'h30fd;
	ans = 16'h201a;
	#20
	A = 16'h3829;
	B = 16'h3935;
	ans = 16'h356a;
	#20
	A = 16'h2ca2;
	B = 16'hb8e1;
	ans = 16'ha9a7;
	#20
	A = 16'h3945;
	B = 16'h3b4a;
	ans = 16'h38cd;
	#20
	A = 16'h3b0a;
	B = 16'h339f;
	ans = 16'h32b5;
	#20
	A = 16'h3941;
	B = 16'hb886;
	ans = 16'hb5f1;
	#20
	A = 16'h3b55;
	B = 16'h31bc;
	ans = 16'h3141;
	#20
	A = 16'h33e7;
	B = 16'h3278;
	ans = 16'h2a64;
	#20
	A = 16'hba8b;
	B = 16'hb2e6;
	ans = 16'h31a4;
	#20
	A = 16'hb82d;
	B = 16'hb87a;
	ans = 16'h34ac;
	#20
	A = 16'h3787;
	B = 16'hb89e;
	ans = 16'hb458;
	#20
	A = 16'hb5a1;
	B = 16'h3bba;
	ans = 16'hb570;
	#20
	A = 16'h3aaf;
	B = 16'hba6a;
	ans = 16'hb95c;
	#20
	A = 16'h2cb6;
	B = 16'h38b7;
	ans = 16'h298e;
	#20
	A = 16'h3977;
	B = 16'hb9f1;
	ans = 16'hb80f;
	#20
	A = 16'h2dec;
	B = 16'hb905;
	ans = 16'hab6e;
	#20
	A = 16'hafa7;
	B = 16'h342d;
	ans = 16'ha7fd;
	#20
	A = 16'hb621;
	B = 16'hae13;
	ans = 16'h28a7;
	#20
	A = 16'hb58c;
	B = 16'h3aa3;
	ans = 16'hb49a;
	#20
	A = 16'hb491;
	B = 16'h392c;
	ans = 16'hb1e7;
	#20
	A = 16'h3b8d;
	B = 16'hb553;
	ans = 16'hb506;
	#20
	A = 16'hb003;
	B = 16'hb605;
	ans = 16'h2a0a;
	#20
	A = 16'h3b53;
	B = 16'hb845;
	ans = 16'hb7d1;
	#20
	A = 16'hb7dd;
	B = 16'h3a78;
	ans = 16'hb65c;
	#20
	A = 16'h3af2;
	B = 16'h389d;
	ans = 16'h3801;
	#20
	A = 16'h3a48;
	B = 16'hb87c;
	ans = 16'hb70b;
	#20
	A = 16'h2d80;
	B = 16'h3b1e;
	ans = 16'h2ce5;
	#20
	A = 16'hba2b;
	B = 16'h36e4;
	ans = 16'hb550;
	#20
	A = 16'h3b6b;
	B = 16'h3b0c;
	ans = 16'h3a89;
	#20
	A = 16'hb16a;
	B = 16'hbb44;
	ans = 16'h30eb;
	#20
	A = 16'h3874;
	B = 16'h3b6e;
	ans = 16'h3823;
	#20
	A = 16'hb282;
	B = 16'hb65d;
	ans = 16'h2d2d;
	#20
	A = 16'h395f;
	B = 16'hb8fb;
	ans = 16'hb6b0;
	#20
	A = 16'hbb51;
	B = 16'h379b;
	ans = 16'hb6f5;
	#20
	A = 16'h3a7c;
	B = 16'h3ab4;
	ans = 16'h396f;
	#20
	A = 16'h3af4;
	B = 16'hb2a7;
	ans = 16'hb1c8;
	#20
	A = 16'hb5ce;
	B = 16'h3ae3;
	ans = 16'hb4ff;
	#20
	A = 16'hb3f1;
	B = 16'h3609;
	ans = 16'hadfe;
	#20
	A = 16'h3897;
	B = 16'hba66;
	ans = 16'hb758;
	#20
	A = 16'h30bd;
	B = 16'h30a2;
	ans = 16'h257d;
	#20
	A = 16'hb2b2;
	B = 16'hb9f0;
	ans = 16'h30f8;
	#20
	A = 16'hb504;
	B = 16'h32b2;
	ans = 16'hac33;
	#20
	A = 16'h3a8d;
	B = 16'hbafc;
	ans = 16'hb9b8;
	#20
	A = 16'h2d52;
	B = 16'hadc2;
	ans = 16'h9fa9;
	#20
	A = 16'hb752;
	B = 16'h3a78;
	ans = 16'hb5eb;
	#20
	A = 16'hb91d;
	B = 16'h3352;
	ans = 16'hb0ae;
	#20
	A = 16'hb815;
	B = 16'hb71a;
	ans = 16'h333f;
	#20
	A = 16'hb8f2;
	B = 16'hb9d9;
	ans = 16'h373b;
	#20
	A = 16'h2ebf;
	B = 16'h3841;
	ans = 16'h2b2d;
	#20
	A = 16'h39b9;
	B = 16'h30b0;
	ans = 16'h2eb5;
	#20
	A = 16'h39db;
	B = 16'h3b38;
	ans = 16'h3949;
	#20
	A = 16'h3a8d;
	B = 16'h38e7;
	ans = 16'h3804;
	#20
	A = 16'hb5fe;
	B = 16'h34da;
	ans = 16'haf45;
	#20
	A = 16'hb0a0;
	B = 16'hb4c0;
	ans = 16'h297e;
	#20
	A = 16'hbb5e;
	B = 16'h3bff;
	ans = 16'hbb5d;
	#20
	A = 16'h376a;
	B = 16'h3a7a;
	ans = 16'h3601;
	#20
	A = 16'hbb5d;
	B = 16'h3976;
	ans = 16'hb907;
	#20
	A = 16'hbb1d;
	B = 16'ha193;
	ans = 16'h20f5;
	#20
	A = 16'hb75d;
	B = 16'h37fd;
	ans = 16'hb35a;
	#20
	A = 16'h3b51;
	B = 16'h3b85;
	ans = 16'h3ae1;
	#20
	A = 16'h3aba;
	B = 16'hb569;
	ans = 16'hb48d;
	#20
	A = 16'h3adf;
	B = 16'hb44b;
	ans = 16'hb360;
	#20
	A = 16'hb524;
	B = 16'h2224;
	ans = 16'h9be4;
	#20
	A = 16'hb7f6;
	B = 16'hb5a8;
	ans = 16'h31a1;
	#20
	A = 16'hb449;
	B = 16'h3792;
	ans = 16'hb00e;
	#20
	A = 16'h315a;
	B = 16'hb63e;
	ans = 16'hac2d;
	#20
	A = 16'h3ba3;
	B = 16'hb8d9;
	ans = 16'hb8a1;
	#20
	A = 16'h3b33;
	B = 16'hb0e6;
	ans = 16'hb068;
	#20
	A = 16'hb9be;
	B = 16'h39a8;
	ans = 16'hb80f;
	#20
	A = 16'hba18;
	B = 16'h395f;
	ans = 16'hb817;
	#20
	A = 16'h2cb9;
	B = 16'h3b9f;
	ans = 16'h2c80;
	#20
	A = 16'h3426;
	B = 16'hbac4;
	ans = 16'hb304;
	#20
	A = 16'h35c0;
	B = 16'hb887;
	ans = 16'hb282;
	#20
	A = 16'h342a;
	B = 16'hb414;
	ans = 16'hac3f;
	#20
	A = 16'h3426;
	B = 16'hb8b4;
	ans = 16'hb0e1;
	#20
	A = 16'hb8a4;
	B = 16'h372b;
	ans = 16'hb428;
	#20
	A = 16'h3153;
	B = 16'h307c;
	ans = 16'h25f8;
	#20
	A = 16'h3873;
	B = 16'h3b29;
	ans = 16'h37f7;
	#20
	A = 16'h33fc;
	B = 16'hb81e;
	ans = 16'hb01c;
	#20
	A = 16'h38d4;
	B = 16'hb305;
	ans = 16'hb03d;
	#20
	A = 16'h38f7;
	B = 16'h347c;
	ans = 16'h3191;
	#20
	A = 16'hbb93;
	B = 16'hbbbe;
	ans = 16'h3b55;
	#20
	A = 16'h35f2;
	B = 16'hb9f3;
	ans = 16'hb46c;
	#20
	A = 16'h300a;
	B = 16'hb61c;
	ans = 16'haa2b;
	#20
	A = 16'haca9;
	B = 16'hb838;
	ans = 16'h28ea;
	#20
	A = 16'h3477;
	B = 16'hb60f;
	ans = 16'haec3;
	#20
	A = 16'h3a38;
	B = 16'hae0e;
	ans = 16'hacb5;
	#20
	A = 16'h33c7;
	B = 16'h38f2;
	ans = 16'h30cf;
	#20
	A = 16'hb6f1;
	B = 16'h315a;
	ans = 16'haca5;
	#20
	A = 16'hb8b4;
	B = 16'hb968;
	ans = 16'h365b;
	#20
	A = 16'h286c;
	B = 16'h367e;
	ans = 16'h232d;
	#20
	A = 16'hb845;
	B = 16'h3a2d;
	ans = 16'hb698;
	#20
	A = 16'h2cec;
	B = 16'hba44;
	ans = 16'habb6;
	#20
	A = 16'h34ee;
	B = 16'h38c1;
	ans = 16'h31dc;
	#20
	A = 16'h34bb;
	B = 16'hba50;
	ans = 16'hb377;
	#20
	A = 16'hac10;
	B = 16'h3492;
	ans = 16'ha4a4;
	#20
	A = 16'h3bd5;
	B = 16'hbabe;
	ans = 16'hba9a;
	#20
	A = 16'h3826;
	B = 16'hb95c;
	ans = 16'hb58f;
	#20
	A = 16'hbb8d;
	B = 16'h310d;
	ans = 16'hb0c4;
	#20
	A = 16'h3b0a;
	B = 16'h381a;
	ans = 16'h3738;
	#20
	A = 16'h3a38;
	B = 16'hb87f;
	ans = 16'hb6fd;
	#20
	A = 16'hb8ca;
	B = 16'h3233;
	ans = 16'haf6c;
	#20
	A = 16'h37af;
	B = 16'hb9f9;
	ans = 16'hb5bd;
	#20
	A = 16'hb045;
	B = 16'h33f9;
	ans = 16'ha841;
	#20
	A = 16'hb81f;
	B = 16'h301b;
	ans = 16'hac3b;
	#20
	A = 16'hb166;
	B = 16'hbbf1;
	ans = 16'h315c;
	#20
	A = 16'hb08b;
	B = 16'hb8ed;
	ans = 16'h2d98;
	#20
	A = 16'hadaf;
	B = 16'hb833;
	ans = 16'h29f7;
	#20
	A = 16'h3374;
	B = 16'h3890;
	ans = 16'h3040;
	#20
	A = 16'hbb4b;
	B = 16'h30a3;
	ans = 16'hb03a;
	#20
	A = 16'h28ac;
	B = 16'h350b;
	ans = 16'h21e4;
	#20
	A = 16'hb95a;
	B = 16'hb6a4;
	ans = 16'h3471;
	#20
	A = 16'h3b37;
	B = 16'h311c;
	ans = 16'h309c;
	#20
	A = 16'hb592;
	B = 16'h3a98;
	ans = 16'hb497;
	#20
	A = 16'hbbf1;
	B = 16'hb8c9;
	ans = 16'h38c0;
	#20
	A = 16'hb928;
	B = 16'h3a9c;
	ans = 16'hb843;
	#20
	A = 16'hbbb9;
	B = 16'h345b;
	ans = 16'hb434;
	#20
	A = 16'h351d;
	B = 16'hb97b;
	ans = 16'hb301;
	#20
	A = 16'h3a7c;
	B = 16'h30e4;
	ans = 16'h2fee;
	#20
	A = 16'hb69f;
	B = 16'h3550;
	ans = 16'hb066;
	#20
	A = 16'h2872;
	B = 16'hb3eb;
	ans = 16'ha066;
	#20
	A = 16'h360f;
	B = 16'hb957;
	ans = 16'hb40b;
	#20
	A = 16'h38ca;
	B = 16'h3a08;
	ans = 16'h3739;
	#20
	A = 16'hb291;
	B = 16'hb9a4;
	ans = 16'h30a1;
	#20
	A = 16'h11cd;
	B = 16'hb987;
	ans = 16'h9002;
	#20
	A = 16'h3a6d;
	B = 16'haf12;
	ans = 16'hadae;
	#20
	A = 16'hb687;
	B = 16'h36c2;
	ans = 16'hb184;
	#20
	A = 16'h31b6;
	B = 16'h3409;
	ans = 16'h29c3;
	#20
	A = 16'h3767;
	B = 16'hb6ba;
	ans = 16'hb239;
	#20
	A = 16'hbada;
	B = 16'h39f2;
	ans = 16'hb918;
	#20
	A = 16'h31e6;
	B = 16'hb8ce;
	ans = 16'haf16;
	#20
	A = 16'ha9c4;
	B = 16'hb9d4;
	ans = 16'h2833;
	#20
	A = 16'h33c0;
	B = 16'h3ba7;
	ans = 16'h336a;
	#20
	A = 16'h3bc2;
	B = 16'h357a;
	ans = 16'h3550;
	#20
	A = 16'hbaa5;
	B = 16'hae77;
	ans = 16'h2d5f;
	#20
	A = 16'hb6ef;
	B = 16'h3bc7;
	ans = 16'hb6be;
	#20
	A = 16'hb985;
	B = 16'hb7d2;
	ans = 16'h3565;
	#20
	A = 16'hbbf9;
	B = 16'h2f0c;
	ans = 16'haf06;
	#20
	A = 16'hb5bd;
	B = 16'hb52f;
	ans = 16'h2f70;
	#20
	A = 16'h3953;
	B = 16'h3a03;
	ans = 16'h3800;
	#20
	A = 16'habc4;
	B = 16'hbb62;
	ans = 16'h2b2b;
	#20
	A = 16'h33a5;
	B = 16'h3ba0;
	ans = 16'h3349;
	#20
	A = 16'hb7c9;
	B = 16'h31e7;
	ans = 16'hadbe;
	#20
	A = 16'h305a;
	B = 16'h34cb;
	ans = 16'h2937;
	#20
	A = 16'hb727;
	B = 16'h369e;
	ans = 16'hb1eb;
	#20
	A = 16'h39ed;
	B = 16'h317f;
	ans = 16'h3012;
	#20
	A = 16'h3b98;
	B = 16'hb4fe;
	ans = 16'hb4bd;
	#20
	A = 16'hbbcd;
	B = 16'hbb1c;
	ans = 16'h3aef;
	#20
	A = 16'h31c4;
	B = 16'hb841;
	ans = 16'hae22;
	#20
	A = 16'h344e;
	B = 16'h3915;
	ans = 16'h3178;
	#20
	A = 16'h27c7;
	B = 16'hb210;
	ans = 16'h9de5;
	#20
	A = 16'hb378;
	B = 16'h3998;
	ans = 16'hb139;
	#20
	A = 16'h3756;
	B = 16'h38ae;
	ans = 16'h344b;
	#20
	A = 16'h3aca;
	B = 16'hba50;
	ans = 16'hb95b;
	#20
	A = 16'hb52c;
	B = 16'h3895;
	ans = 16'hb1ed;
	#20
	A = 16'hacbf;
	B = 16'hb792;
	ans = 16'h287e;
	#20
	A = 16'ha827;
	B = 16'h3761;
	ans = 16'ha3a9;
	#20
	A = 16'h3577;
	B = 16'hbb13;
	ans = 16'hb4d5;
	#20
	A = 16'hb815;
	B = 16'h2dc0;
	ans = 16'ha9de;
	#20
	A = 16'h39d4;
	B = 16'hb6bc;
	ans = 16'hb4e8;
	#20
	A = 16'h3ab4;
	B = 16'hbb06;
	ans = 16'hb9e3;
	#20
	A = 16'h38df;
	B = 16'h34e7;
	ans = 16'h31f8;
	#20
	A = 16'hb8a3;
	B = 16'hbbf3;
	ans = 16'h389b;
	#20
	A = 16'h3693;
	B = 16'h39ae;
	ans = 16'h34ab;
	#20
	A = 16'h2aa5;
	B = 16'h3325;
	ans = 16'h21ef;
	#20
	A = 16'h32aa;
	B = 16'h37b6;
	ans = 16'h2e6c;
	#20
	A = 16'h30ae;
	B = 16'h2da9;
	ans = 16'h229f;
	#20
	A = 16'hb683;
	B = 16'h33b3;
	ans = 16'hae44;
	#20
	A = 16'h32b4;
	B = 16'h3aa9;
	ans = 16'h3195;
	#20
	A = 16'hbb36;
	B = 16'hbaf5;
	ans = 16'h3a45;
	#20
	A = 16'hba65;
	B = 16'h3b52;
	ans = 16'hb9da;
	#20
	A = 16'h3813;
	B = 16'hb1af;
	ans = 16'hadca;
	#20
	A = 16'hb862;
	B = 16'h308d;
	ans = 16'hacfc;
	#20
	A = 16'hb38a;
	B = 16'h39ad;
	ans = 16'hb159;
	#20
	A = 16'h353a;
	B = 16'hb9ed;
	ans = 16'hb3be;
	#20
	A = 16'h3978;
	B = 16'h27c1;
	ans = 16'h254d;
	#20
	A = 16'hb5f8;
	B = 16'h3ba4;
	ans = 16'hb5b3;
	#20
	A = 16'h384d;
	B = 16'hb685;
	ans = 16'hb303;
	#20
	A = 16'h2c7c;
	B = 16'hb95c;
	ans = 16'haa02;
	#20
	A = 16'hb90c;
	B = 16'h36b8;
	ans = 16'hb43d;
	#20
	A = 16'h2f1c;
	B = 16'hb85f;
	ans = 16'habc5;
	#20
	A = 16'hbb16;
	B = 16'hb8dc;
	ans = 16'h384e;
	#20
	A = 16'h393f;
	B = 16'h3b59;
	ans = 16'h38d1;
	#20
	A = 16'h36fb;
	B = 16'hbb82;
	ans = 16'hb68d;
	#20
	A = 16'hb883;
	B = 16'hbb31;
	ans = 16'h380e;
	#20
	A = 16'h3674;
	B = 16'hba4d;
	ans = 16'hb515;
	#20
	A = 16'h3730;
	B = 16'hb630;
	ans = 16'hb18f;
	#20
	A = 16'h39db;
	B = 16'h35f5;
	ans = 16'h345c;
	#20
	A = 16'hafe1;
	B = 16'h383c;
	ans = 16'hac2c;
	#20
	A = 16'ha1b2;
	B = 16'hb95a;
	ans = 16'h1f9f;
	#20
	A = 16'hb876;
	B = 16'h3b2e;
	ans = 16'hb801;
	#20
	A = 16'hb30c;
	B = 16'hb03d;
	ans = 16'h2777;
	#20
	A = 16'hb948;
	B = 16'h37df;
	ans = 16'hb532;
	#20
	A = 16'hb79e;
	B = 16'hbac9;
	ans = 16'h3676;
	#20
	A = 16'h3ae7;
	B = 16'hb853;
	ans = 16'hb776;
	#20
	A = 16'h3546;
	B = 16'h3a23;
	ans = 16'h340c;
	#20
	A = 16'h390f;
	B = 16'h39fe;
	ans = 16'h3794;
	#20
	A = 16'hb5d0;
	B = 16'hb828;
	ans = 16'h320a;
	#20
	A = 16'h3634;
	B = 16'h2e98;
	ans = 16'h291d;
	#20
	A = 16'hb598;
	B = 16'hb0b7;
	ans = 16'h2a98;
	#20
	A = 16'hb9e9;
	B = 16'hb2a9;
	ans = 16'h30ec;
	#20
	A = 16'hb8b8;
	B = 16'h2abd;
	ans = 16'ha7f3;
	#20
	A = 16'h3acd;
	B = 16'h3914;
	ans = 16'h3851;
	#20
	A = 16'h2cbe;
	B = 16'h3a48;
	ans = 16'h2b72;
	#20
	A = 16'hb9ef;
	B = 16'hae51;
	ans = 16'h2caf;
	#20
	A = 16'h396d;
	B = 16'hba56;
	ans = 16'hb84c;
	#20
	A = 16'h39b5;
	B = 16'h389b;
	ans = 16'h3692;
	#20
	A = 16'hb3e1;
	B = 16'h3444;
	ans = 16'hac33;
	#20
	A = 16'hb014;
	B = 16'hbb8a;
	ans = 16'h2fb0;
	#20
	A = 16'hba63;
	B = 16'h18a5;
	ans = 16'h976a;
	#20
	A = 16'h2de3;
	B = 16'hba3d;
	ans = 16'hac97;
	#20
	A = 16'hba90;
	B = 16'hbbbc;
	ans = 16'h3a58;
	#20
	A = 16'hb1ed;
	B = 16'h3af4;
	ans = 16'hb126;
	#20
	A = 16'h3ad1;
	B = 16'hb5b8;
	ans = 16'hb4df;
	#20
	A = 16'h3418;
	B = 16'hb3c0;
	ans = 16'habee;
	#20
	A = 16'h33ee;
	B = 16'hba1b;
	ans = 16'hb20d;
	#20
	A = 16'h38b6;
	B = 16'h2767;
	ans = 16'h245c;
	#20
	A = 16'h3a77;
	B = 16'hb707;
	ans = 16'hb5ae;
	#20
	A = 16'h35f2;
	B = 16'h2f41;
	ans = 16'h2964;
	#20
	A = 16'h3647;
	B = 16'hb87a;
	ans = 16'hb306;
	#20
	A = 16'hb53f;
	B = 16'hb98f;
	ans = 16'h334a;
	#20
	A = 16'h3342;
	B = 16'hba21;
	ans = 16'hb18f;
	#20
	A = 16'hbae2;
	B = 16'hb292;
	ans = 16'h31a7;
	#20
	A = 16'h2f0b;
	B = 16'h3b57;
	ans = 16'h2e76;
	#20
	A = 16'h368d;
	B = 16'habfe;
	ans = 16'ha68b;
	#20
	A = 16'h30c9;
	B = 16'hba4e;
	ans = 16'haf8b;
	#20
	A = 16'h3952;
	B = 16'h3b5f;
	ans = 16'h38e7;
	#20
	A = 16'h3ba0;
	B = 16'hac54;
	ans = 16'hac20;
	#20
	A = 16'hb55f;
	B = 16'h3af8;
	ans = 16'hb4ae;
	#20
	A = 16'hb07c;
	B = 16'h32c5;
	ans = 16'ha797;
	#20
	A = 16'hb5b7;
	B = 16'had85;
	ans = 16'h27e3;
	#20
	A = 16'h39af;
	B = 16'h31a7;
	ans = 16'h3004;
	#20
	A = 16'hb4f2;
	B = 16'h3654;
	ans = 16'hafd3;
	#20
	A = 16'hb6e4;
	B = 16'h3b49;
	ans = 16'hb646;
	#20
	A = 16'hb5a2;
	B = 16'hb9a1;
	ans = 16'h33ed;
	#20
	A = 16'hb8fa;
	B = 16'h3981;
	ans = 16'hb6d9;
	#20
	A = 16'h38ff;
	B = 16'h3764;
	ans = 16'h349e;
	#20
	A = 16'hb775;
	B = 16'hb895;
	ans = 16'h3445;
	#20
	A = 16'hb147;
	B = 16'hb97e;
	ans = 16'h2f3f;
	#20
	A = 16'h38f9;
	B = 16'hb610;
	ans = 16'hb389;
	#20
	A = 16'h211a;
	B = 16'h3a11;
	ans = 16'h1fbd;
	#20
	A = 16'h3bcc;
	B = 16'hb936;
	ans = 16'hb914;
	#20
	A = 16'hb7e1;
	B = 16'h3831;
	ans = 16'hb421;
	#20
	A = 16'h3b82;
	B = 16'h38df;
	ans = 16'h3892;
	#20
	A = 16'h38b9;
	B = 16'hb865;
	ans = 16'hb530;
	#20
	A = 16'h3443;
	B = 16'h3a5a;
	ans = 16'h32c4;
	#20
	A = 16'h330a;
	B = 16'hb1a4;
	ans = 16'ha8f7;
	#20
	A = 16'h3bb3;
	B = 16'hbb03;
	ans = 16'hbac0;
	#20
	A = 16'h36dd;
	B = 16'h36a0;
	ans = 16'h31af;
	#20
	A = 16'h3620;
	B = 16'hbb61;
	ans = 16'hb5a6;
	#20
	A = 16'hb867;
	B = 16'ha61a;
	ans = 16'h22b7;
	#20
	A = 16'had8f;
	B = 16'h3bb8;
	ans = 16'had5d;
	#20
	A = 16'h387f;
	B = 16'h3662;
	ans = 16'h332d;
	#20
	A = 16'hb563;
	B = 16'h3620;
	ans = 16'hb020;
	#20
	A = 16'hafb5;
	B = 16'h3845;
	ans = 16'hac1d;
	#20
	A = 16'hb9c7;
	B = 16'hbb63;
	ans = 16'h3956;
	#20
	A = 16'hbbd6;
	B = 16'hb948;
	ans = 16'h392c;
	#20
	A = 16'h3b45;
	B = 16'h2546;
	ans = 16'h24cb;
	#20
	A = 16'hbaf8;
	B = 16'hb413;
	ans = 16'h3319;
	#20
	A = 16'hb156;
	B = 16'h3175;
	ans = 16'ha748;
	#20
	A = 16'h39b4;
	B = 16'hb427;
	ans = 16'hb1ec;
	#20
	A = 16'hb05e;
	B = 16'hb82a;
	ans = 16'h2c8c;
	#20
	A = 16'ha6c3;
	B = 16'hb0b0;
	ans = 16'h1bed;
	#20
	A = 16'h3728;
	B = 16'ha7bd;
	ans = 16'ha2ec;
	#20
	A = 16'h3131;
	B = 16'h3a19;
	ans = 16'h2fea;
	#20
	A = 16'h3995;
	B = 16'h398f;
	ans = 16'h37c2;
	#20
	A = 16'hb7bd;
	B = 16'hb986;
	ans = 16'h3558;
	#20
	A = 16'hb491;
	B = 16'h3509;
	ans = 16'hadc0;
	#20
	A = 16'h3af7;
	B = 16'hb801;
	ans = 16'hb6f9;
	#20
	A = 16'hbb60;
	B = 16'hb89f;
	ans = 16'h3843;
	#20
	A = 16'h2d59;
	B = 16'hb9c8;
	ans = 16'habbb;
	#20
	A = 16'h39e3;
	B = 16'h3bc4;
	ans = 16'h39b7;
	#20
	A = 16'h36cd;
	B = 16'h25d9;
	ans = 16'h20f9;
	#20
	A = 16'hb863;
	B = 16'hba53;
	ans = 16'h36f0;
	#20
	A = 16'hbb96;
	B = 16'h3a53;
	ans = 16'hb9ff;
	#20
	A = 16'hb6b5;
	B = 16'h3502;
	ans = 16'hb033;
	#20
	A = 16'h38b6;
	B = 16'h3b06;
	ans = 16'h3823;
	#20
	A = 16'h340b;
	B = 16'hb67d;
	ans = 16'hae8f;
	#20
	A = 16'h3638;
	B = 16'haca0;
	ans = 16'ha731;
	#20
	A = 16'h3b29;
	B = 16'hbb2e;
	ans = 16'hba6d;
	#20
	A = 16'h34b5;
	B = 16'h392c;
	ans = 16'h3216;
	#20
	A = 16'h3b91;
	B = 16'hba1d;
	ans = 16'hb9c8;
	#20
	A = 16'hbabe;
	B = 16'hb6b6;
	ans = 16'h35a8;
	#20
	A = 16'h3a97;
	B = 16'hb995;
	ans = 16'hb899;
	#20
	A = 16'hb6bc;
	B = 16'had34;
	ans = 16'h2861;
	#20
	A = 16'hb969;
	B = 16'hb248;
	ans = 16'h303f;
	#20
	A = 16'hbb71;
	B = 16'hbb13;
	ans = 16'h3a95;
	#20
	A = 16'hb847;
	B = 16'h36c1;
	ans = 16'hb339;
	#20
	A = 16'h37a8;
	B = 16'h3547;
	ans = 16'h310d;
	#20
	A = 16'h3512;
	B = 16'hba76;
	ans = 16'hb418;
	#20
	A = 16'h3844;
	B = 16'hb5b4;
	ans = 16'hb215;
	#20
	A = 16'haf65;
	B = 16'h350c;
	ans = 16'ha8aa;
	#20
	A = 16'hbaf9;
	B = 16'h38dc;
	ans = 16'hb83c;
	#20
	A = 16'hb49b;
	B = 16'hb97f;
	ans = 16'h3254;
	#20
	A = 16'h1cd5;
	B = 16'hb2d0;
	ans = 16'h941d;
	#20
	A = 16'hbbc0;
	B = 16'hb0d9;
	ans = 16'h30b2;
	#20
	A = 16'h3888;
	B = 16'hb5b1;
	ans = 16'hb273;
	#20
	A = 16'hbac0;
	B = 16'hbbdd;
	ans = 16'h3aa2;
	#20
	A = 16'hb92c;
	B = 16'hb5d6;
	ans = 16'h338c;
	#20
	A = 16'hb6c9;
	B = 16'hb8f7;
	ans = 16'h3436;
	#20
	A = 16'hb3a0;
	B = 16'h34f5;
	ans = 16'hacba;
	#20
	A = 16'h36e4;
	B = 16'h356e;
	ans = 16'h30ad;
	#20
	A = 16'h3b0e;
	B = 16'hbbf7;
	ans = 16'hbb06;
	#20
	A = 16'h38f2;
	B = 16'h335c;
	ans = 16'h308d;
	#20
	A = 16'h3888;
	B = 16'hb8c7;
	ans = 16'hb569;
	#20
	A = 16'hb115;
	B = 16'hbb66;
	ans = 16'h30b3;
	#20
	A = 16'hbb8b;
	B = 16'hb448;
	ans = 16'h3409;
	#20
	A = 16'hbbc5;
	B = 16'hba11;
	ans = 16'h39e4;
	#20
	A = 16'hb9c4;
	B = 16'hb6fb;
	ans = 16'h3508;
	#20
	A = 16'h3905;
	B = 16'hb9b6;
	ans = 16'hb72b;
	#20
	A = 16'hb9ba;
	B = 16'hb437;
	ans = 16'h3209;
	#20
	A = 16'hb607;
	B = 16'hb9d9;
	ans = 16'h3468;
	#20
	A = 16'haf88;
	B = 16'h390d;
	ans = 16'hacc1;
	#20
	A = 16'h3038;
	B = 16'h39eb;
	ans = 16'h2e3e;
	#20
	A = 16'hbb8c;
	B = 16'h3a71;
	ans = 16'hba14;
	#20
	A = 16'h32b8;
	B = 16'h3aa6;
	ans = 16'h3195;
	#20
	A = 16'h3920;
	B = 16'hb6fa;
	ans = 16'hb478;
	#20
	A = 16'hb87a;
	B = 16'h3a9b;
	ans = 16'hb764;
	#20
	A = 16'hb84a;
	B = 16'h3798;
	ans = 16'hb412;
	#20
	A = 16'h367a;
	B = 16'h3951;
	ans = 16'h344e;
	#20
	A = 16'hb82e;
	B = 16'h39c1;
	ans = 16'hb603;
	#20
	A = 16'hb819;
	B = 16'hae5a;
	ans = 16'h2a82;
	#20
	A = 16'h3719;
	B = 16'hb4c4;
	ans = 16'hb03a;
	#20
	A = 16'hb529;
	B = 16'hab63;
	ans = 16'h24c4;
	#20
	A = 16'h2042;
	B = 16'h3afb;
	ans = 16'h1f6e;
	#20
	A = 16'hb31a;
	B = 16'h3a37;
	ans = 16'hb184;
	#20
	A = 16'hb967;
	B = 16'h37c4;
	ans = 16'hb53e;
	#20
	A = 16'hb7e4;
	B = 16'hb4d1;
	ans = 16'h30c0;
	#20
	A = 16'hbb92;
	B = 16'h34ac;
	ans = 16'hb46c;
	#20
	A = 16'hb4d4;
	B = 16'h2b09;
	ans = 16'ha43f;
	#20
	A = 16'hb4e0;
	B = 16'hb657;
	ans = 16'h2fba;
	#20
	A = 16'h3b94;
	B = 16'h3b21;
	ans = 16'h3ac1;
	#20
	A = 16'hb4e7;
	B = 16'h2d7e;
	ans = 16'ha6bb;
	#20
	A = 16'h3a5d;
	B = 16'hb4cb;
	ans = 16'hb3a0;
	#20
	A = 16'hb398;
	B = 16'h22e5;
	ans = 16'h9a8b;
	#20
	A = 16'h3873;
	B = 16'hacc3;
	ans = 16'ha94c;
	#20
	A = 16'h2ca4;
	B = 16'h363f;
	ans = 16'h273f;
	#20
	A = 16'hbb69;
	B = 16'h3649;
	ans = 16'hb5d2;
	#20
	A = 16'h3879;
	B = 16'haf5c;
	ans = 16'hac1d;
	#20
	A = 16'h38b4;
	B = 16'h36d1;
	ans = 16'h3402;
	#20
	A = 16'hab7c;
	B = 16'h3302;
	ans = 16'ha28e;
	#20
	A = 16'hb505;
	B = 16'h3326;
	ans = 16'hac7c;
	#20
	A = 16'h35d4;
	B = 16'h334d;
	ans = 16'h2d52;
	#20
	A = 16'h3ab0;
	B = 16'hb537;
	ans = 16'hb45c;
	#20
	A = 16'h3abd;
	B = 16'h2f7b;
	ans = 16'h2e4d;
	#20
	A = 16'hb597;
	B = 16'h355a;
	ans = 16'haf7b;
	#20
	A = 16'h393f;
	B = 16'h3b8f;
	ans = 16'h38f5;
	#20
	A = 16'h300b;
	B = 16'hba44;
	ans = 16'hae55;
	#20
	A = 16'h35b9;
	B = 16'hb8c5;
	ans = 16'hb2d3;
	#20
	A = 16'h3835;
	B = 16'hb4c6;
	ans = 16'hb105;
	#20
	A = 16'h3088;
	B = 16'h3957;
	ans = 16'h2e0d;
	#20
	A = 16'h392c;
	B = 16'h9f4b;
	ans = 16'h9cb7;
	#20
	A = 16'h37c9;
	B = 16'h3662;
	ans = 16'h3236;
	#20
	A = 16'h3559;
	B = 16'h3700;
	ans = 16'h30ae;
	#20
	A = 16'h38be;
	B = 16'h3853;
	ans = 16'h3520;
	#20
	A = 16'hb4e6;
	B = 16'h37c2;
	ans = 16'hb0c0;
	#20
	A = 16'hb834;
	B = 16'h383a;
	ans = 16'hb471;
	#20
	A = 16'h37b0;
	B = 16'hb6d5;
	ans = 16'hb291;
	#20
	A = 16'h34ac;
	B = 16'h3916;
	ans = 16'h31f1;
	#20
	A = 16'ha1b4;
	B = 16'h3924;
	ans = 16'h9f54;
	#20
	A = 16'ha268;
	B = 16'hbb7a;
	ans = 16'h21fd;
	#20
	A = 16'hb937;
	B = 16'hbabc;
	ans = 16'h3864;
	#20
	A = 16'h388e;
	B = 16'hbb5e;
	ans = 16'hb832;
	#20
	A = 16'h38cd;
	B = 16'hb98c;
	ans = 16'hb6a8;
	#20
	A = 16'h39fe;
	B = 16'h390c;
	ans = 16'h378f;
	#20
	A = 16'h3b39;
	B = 16'hba53;
	ans = 16'hb9b6;
	#20
	A = 16'h3948;
	B = 16'h38d8;
	ans = 16'h3665;
	#20
	A = 16'ha850;
	B = 16'h25ef;
	ans = 16'h9266;
	#20
	A = 16'h386b;
	B = 16'h34ba;
	ans = 16'h3138;
	#20
	A = 16'hb609;
	B = 16'hb82e;
	ans = 16'h324e;
	#20
	A = 16'hb906;
	B = 16'hb56d;
	ans = 16'h32d0;
	#20
	A = 16'hb859;
	B = 16'hb85b;
	ans = 16'h34bc;
	#20
	A = 16'hb828;
	B = 16'h3a67;
	ans = 16'hb6a7;
	#20
	A = 16'h3af0;
	B = 16'hbafd;
	ans = 16'hba0f;
	#20
	A = 16'h30c6;
	B = 16'h36c8;
	ans = 16'h2c0c;
	#20
	A = 16'h3be6;
	B = 16'ha200;
	ans = 16'ha1ec;
	#20
	A = 16'h3b95;
	B = 16'h3bfa;
	ans = 16'h3b8f;
	#20
	A = 16'hb869;
	B = 16'h37c6;
	ans = 16'hb449;
	#20
	A = 16'h3876;
	B = 16'hbb5f;
	ans = 16'hb81c;
	#20
	A = 16'h3bb2;
	B = 16'hb159;
	ans = 16'hb125;
	#20
	A = 16'hb611;
	B = 16'h32a7;
	ans = 16'had0b;
	#20
	A = 16'hb9d6;
	B = 16'h2503;
	ans = 16'ha350;
	#20
	A = 16'h3b76;
	B = 16'h2e3b;
	ans = 16'h2dd0;
	#20
	A = 16'hb521;
	B = 16'had53;
	ans = 16'h26d4;
	#20
	A = 16'h35ce;
	B = 16'hbb6e;
	ans = 16'hb564;
	#20
	A = 16'h39d9;
	B = 16'hb6d3;
	ans = 16'hb4fd;
	#20
	A = 16'h39a6;
	B = 16'h391a;
	ans = 16'h3734;
	#20
	A = 16'h3091;
	B = 16'h3718;
	ans = 16'h2c0d;
	#20
	A = 16'hb5b4;
	B = 16'h3a76;
	ans = 16'hb49b;
	#20
	A = 16'hb6aa;
	B = 16'hb131;
	ans = 16'h2c53;
	#20
	A = 16'hba44;
	B = 16'hba65;
	ans = 16'h3902;
	#20
	A = 16'h30b5;
	B = 16'h3b47;
	ans = 16'h3048;
	#20
	A = 16'h3688;
	B = 16'h34d3;
	ans = 16'h2fe1;
	#20
	A = 16'hb86d;
	B = 16'h3938;
	ans = 16'hb5c6;
	#20
	A = 16'h35c9;
	B = 16'h3761;
	ans = 16'h3156;
	#20
	A = 16'h3185;
	B = 16'hae3d;
	ans = 16'ha44e;
	#20
	A = 16'h3a23;
	B = 16'hb820;
	ans = 16'hb654;
	#20
	A = 16'h3bb3;
	B = 16'h3961;
	ans = 16'h392d;
	#20
	A = 16'h393d;
	B = 16'h3ab6;
	ans = 16'h3865;
	#20
	A = 16'h3a6c;
	B = 16'hb48a;
	ans = 16'hb34a;
	#20
	A = 16'h3b87;
	B = 16'h39fb;
	ans = 16'h39a1;
	#20
	A = 16'h3831;
	B = 16'h37e6;
	ans = 16'h3423;
	#20
	A = 16'ha3e3;
	B = 16'hbaf4;
	ans = 16'h22db;
	#20
	A = 16'h2a2b;
	B = 16'hb9cf;
	ans = 16'ha87a;
	#20
	A = 16'hb39f;
	B = 16'hb8b3;
	ans = 16'h307a;
	#20
	A = 16'hb0ca;
	B = 16'h35d8;
	ans = 16'haaff;
	#20
	A = 16'haff3;
	B = 16'hb56c;
	ans = 16'h2963;
	#20
	A = 16'hb952;
	B = 16'hbb9c;
	ans = 16'h390f;
	#20
	A = 16'hb890;
	B = 16'hb6a7;
	ans = 16'h3396;
	#20
	A = 16'h3bda;
	B = 16'h3952;
	ans = 16'h3939;
	#20
	A = 16'hb462;
	B = 16'hbacd;
	ans = 16'h3374;
	#20
	A = 16'hbbca;
	B = 16'h3a85;
	ans = 16'hba59;
	#20
	A = 16'hbb6c;
	B = 16'hbad6;
	ans = 16'h3a58;
	#20
	A = 16'h3870;
	B = 16'hb89b;
	ans = 16'hb51c;
	#20
	A = 16'hb8a5;
	B = 16'hb6a4;
	ans = 16'h33b6;
	#20
	A = 16'h333c;
	B = 16'h357a;
	ans = 16'h2cf4;
	#20
	A = 16'hbbf8;
	B = 16'h3911;
	ans = 16'hb90c;
	#20
	A = 16'h3465;
	B = 16'h2a3f;
	ans = 16'h22dd;
	#20
	A = 16'hb96a;
	B = 16'hb280;
	ans = 16'h3066;
	#20
	A = 16'hb510;
	B = 16'hab1a;
	ans = 16'h247e;
	#20
	A = 16'h30e8;
	B = 16'hb788;
	ans = 16'hac9e;
	#20
	A = 16'h366c;
	B = 16'hb5f2;
	ans = 16'hb0c6;
	#20
	A = 16'h35d7;
	B = 16'hbb8d;
	ans = 16'hb583;
	#20
	A = 16'hbb6c;
	B = 16'hb7f2;
	ans = 16'h375f;
	#20
	A = 16'h3b90;
	B = 16'h3715;
	ans = 16'h36b2;
	#20
	A = 16'hb289;
	B = 16'h38e1;
	ans = 16'haff9;
	#20
	A = 16'h3aae;
	B = 16'hb875;
	ans = 16'hb771;
	#20
	A = 16'h3131;
	B = 16'hb91f;
	ans = 16'haea5;
	#20
	A = 16'hb4c4;
	B = 16'hbb48;
	ans = 16'h3456;
	#20
	A = 16'hb965;
	B = 16'h33c6;
	ans = 16'hb13e;
	#20
	A = 16'h34d0;
	B = 16'hbaf1;
	ans = 16'hb42d;
	#20
	A = 16'h3a04;
	B = 16'hba21;
	ans = 16'hb89c;
	#20
	A = 16'h371a;
	B = 16'h3824;
	ans = 16'h335a;
	#20
	A = 16'had79;
	B = 16'hb9b0;
	ans = 16'h2bc8;
	#20
	A = 16'h2c17;
	B = 16'h386d;
	ans = 16'h2886;
	#20
	A = 16'hbbc5;
	B = 16'h3966;
	ans = 16'hb93e;
	#20
	A = 16'h3915;
	B = 16'hba68;
	ans = 16'hb812;
	#20
	A = 16'h3b23;
	B = 16'hb815;
	ans = 16'hb748;
	#20
	A = 16'h3248;
	B = 16'h394a;
	ans = 16'h3027;
	#20
	A = 16'hb1e0;
	B = 16'h393b;
	ans = 16'hafaf;
	#20
	A = 16'hb864;
	B = 16'hb8a4;
	ans = 16'h3518;
	#20
	A = 16'haefd;
	B = 16'h3a75;
	ans = 16'hada4;
	#20
	A = 16'hb613;
	B = 16'hafd6;
	ans = 16'h29f3;
	#20
	A = 16'h253a;
	B = 16'h32d6;
	ans = 16'h1c77;
	#20
	A = 16'hb6cc;
	B = 16'hb9c9;
	ans = 16'h34ea;
	#20
	A = 16'h39fe;
	B = 16'h362f;
	ans = 16'h34a2;
	#20
	A = 16'h34d6;
	B = 16'h32b6;
	ans = 16'h2c0f;
	#20
	A = 16'hac8b;
	B = 16'h3a52;
	ans = 16'hab2e;
	#20
	A = 16'hb933;
	B = 16'h3a46;
	ans = 16'hb814;
	#20
	A = 16'h3b21;
	B = 16'hba33;
	ans = 16'hb986;
	#20
	A = 16'h3b77;
	B = 16'h380d;
	ans = 16'h378f;
	#20
	A = 16'h3b23;
	B = 16'hb61c;
	ans = 16'hb573;
	#20
	A = 16'h2b8d;
	B = 16'hb8c1;
	ans = 16'ha87d;
	#20
	A = 16'h3a6c;
	B = 16'h36de;
	ans = 16'h3583;
	#20
	A = 16'hba9f;
	B = 16'hbb0b;
	ans = 16'h39d4;
	#20
	A = 16'h3834;
	B = 16'h2f66;
	ans = 16'h2bc6;
	#20
	A = 16'hba32;
	B = 16'h35fb;
	ans = 16'hb4a2;
	#20
	A = 16'h3b3a;
	B = 16'hb9f9;
	ans = 16'hb965;
	#20
	A = 16'h32dd;
	B = 16'hba25;
	ans = 16'hb145;
	#20
	A = 16'h33d8;
	B = 16'hbacc;
	ans = 16'hb2aa;
	#20
	A = 16'h3b66;
	B = 16'h39f2;
	ans = 16'h3980;
	#20
	A = 16'h37fc;
	B = 16'hba15;
	ans = 16'hb612;
	#20
	A = 16'hb141;
	B = 16'h3816;
	ans = 16'had5e;
	#20
	A = 16'hb841;
	B = 16'hb044;
	ans = 16'h2c89;
	#20
	A = 16'hadc6;
	B = 16'hbb5a;
	ans = 16'h2d4e;
	#20
	A = 16'hb494;
	B = 16'haf98;
	ans = 16'h2858;
	#20
	A = 16'hb319;
	B = 16'h397e;
	ans = 16'hb0df;
	#20
	A = 16'hb8c9;
	B = 16'hbb5b;
	ans = 16'h3866;
	#20
	A = 16'h1ef9;
	B = 16'h3ac6;
	ans = 16'h1de7;
	#20
	A = 16'h2f04;
	B = 16'h289b;
	ans = 16'h1c0a;
	#20
	A = 16'h3bae;
	B = 16'hb532;
	ans = 16'hb4fd;
	#20
	A = 16'hbb42;
	B = 16'hbab6;
	ans = 16'h3a17;
	#20
	A = 16'hb37c;
	B = 16'hb4cd;
	ans = 16'h2c7e;
	#20
	A = 16'hb30d;
	B = 16'hb8f5;
	ans = 16'h305e;
	#20
	A = 16'h386b;
	B = 16'hb919;
	ans = 16'hb5a1;
	#20
	A = 16'h3297;
	B = 16'h2a0c;
	ans = 16'h20fb;
	#20
	A = 16'hb100;
	B = 16'hb8a3;
	ans = 16'h2dcc;
	#20
	A = 16'ha969;
	B = 16'h2623;
	ans = 16'h9426;
	#20
	A = 16'hb798;
	B = 16'h377f;
	ans = 16'hb31e;
	#20
	A = 16'hbbf5;
	B = 16'h3b86;
	ans = 16'hbb7c;
	#20
	A = 16'hb863;
	B = 16'h3191;
	ans = 16'hae1b;
	#20
	A = 16'hbb2f;
	B = 16'h303d;
	ans = 16'haf9d;
	#20
	A = 16'hb4c5;
	B = 16'hb860;
	ans = 16'h3137;
	#20
	A = 16'hb977;
	B = 16'hb64c;
	ans = 16'h344d;
	#20
	A = 16'h93c7;
	B = 16'h38ac;
	ans = 16'h908b;
	#20
	A = 16'hbb16;
	B = 16'hb82d;
	ans = 16'h3766;
	#20
	A = 16'h3488;
	B = 16'hbbee;
	ans = 16'hb47e;
	#20
	A = 16'h379a;
	B = 16'hbbb0;
	ans = 16'hb74e;
	#20
	A = 16'h35a4;
	B = 16'hb55a;
	ans = 16'haf8c;
	#20
	A = 16'hba6b;
	B = 16'h37f2;
	ans = 16'hb660;
	#20
	A = 16'hb98c;
	B = 16'hba92;
	ans = 16'h388e;
	#20
	A = 16'h39a7;
	B = 16'h3a97;
	ans = 16'h38a8;
	#20
	A = 16'hb9e2;
	B = 16'h378e;
	ans = 16'hb58e;
	#20
	A = 16'h2c64;
	B = 16'h3608;
	ans = 16'h269f;
	#20
	A = 16'hb758;
	B = 16'h36b9;
	ans = 16'hb22c;
	#20
	A = 16'hb8c3;
	B = 16'hb916;
	ans = 16'h360e;
	#20
	A = 16'h393c;
	B = 16'h241f;
	ans = 16'h2165;
	#20
	A = 16'h3b8b;
	B = 16'hb780;
	ans = 16'hb712;
	#20
	A = 16'h3af1;
	B = 16'ha86d;
	ans = 16'ha7ae;
	#20
	A = 16'hb94b;
	B = 16'hb64e;
	ans = 16'h342c;
	#20
	A = 16'h3533;
	B = 16'hba94;
	ans = 16'hb446;
	#20
	A = 16'h2ca0;
	B = 16'h3345;
	ans = 16'h2434;
	#20
	A = 16'h37dc;
	B = 16'h39fb;
	ans = 16'h35e0;
	#20
	A = 16'hb789;
	B = 16'hb930;
	ans = 16'h34e3;
	#20
	A = 16'hb6aa;
	B = 16'hb976;
	ans = 16'h348d;
	#20
	A = 16'h3b92;
	B = 16'hbadb;
	ans = 16'hba7d;
	#20
	A = 16'hb576;
	B = 16'hba85;
	ans = 16'h3473;
	#20
	A = 16'hb786;
	B = 16'h33ab;
	ans = 16'haf36;
	#20
	A = 16'hb9ea;
	B = 16'h34bc;
	ans = 16'hb300;
	#20
	A = 16'h3af5;
	B = 16'h377a;
	ans = 16'h3680;
	#20
	A = 16'h34ef;
	B = 16'hba83;
	ans = 16'hb404;
	#20
	A = 16'hb9b5;
	B = 16'h3bd0;
	ans = 16'hb993;
	#20
	A = 16'haf63;
	B = 16'hbb4f;
	ans = 16'h2ec0;
	#20
	A = 16'h383a;
	B = 16'hb29b;
	ans = 16'haefb;
	#20
	A = 16'hb50e;
	B = 16'h3a76;
	ans = 16'hb415;
	#20
	A = 16'had6a;
	B = 16'hba9a;
	ans = 16'h2c78;
	#20
	A = 16'h3bdd;
	B = 16'h3456;
	ans = 16'h3443;
	#20
	A = 16'h3a92;
	B = 16'h3499;
	ans = 16'h338d;
	#20
	A = 16'h372f;
	B = 16'h334b;
	ans = 16'h2e8c;
	#20
	A = 16'h3a98;
	B = 16'hbb8b;
	ans = 16'hba38;
	#20
	A = 16'h355b;
	B = 16'h32c0;
	ans = 16'h2c85;
	#20
	A = 16'hb5fb;
	B = 16'h32da;
	ans = 16'had1f;
	#20
	A = 16'h3870;
	B = 16'hb99e;
	ans = 16'hb63b;
	#20
	A = 16'h3bf7;
	B = 16'h3862;
	ans = 16'h385d;
	#20
	A = 16'h3a1d;
	B = 16'hb140;
	ans = 16'hb003;
	#20
	A = 16'h3481;
	B = 16'hb54c;
	ans = 16'hadf7;
	#20
	A = 16'h39de;
	B = 16'h3649;
	ans = 16'h349c;
	#20
	A = 16'h3462;
	B = 16'h3709;
	ans = 16'h2fb5;
	#20
	A = 16'hb29f;
	B = 16'h39d9;
	ans = 16'hb0d7;
	#20
	A = 16'haeab;
	B = 16'h33b9;
	ans = 16'ha670;
	#20
	A = 16'haeea;
	B = 16'hb84e;
	ans = 16'h2b71;
	#20
	A = 16'h3849;
	B = 16'hbab8;
	ans = 16'hb733;
	#20
	A = 16'hb90f;
	B = 16'hba81;
	ans = 16'h381d;
	#20
	A = 16'h2b76;
	B = 16'hb8f4;
	ans = 16'ha89f;
	#20
	A = 16'ha789;
	B = 16'h33ca;
	ans = 16'h9f56;
	#20
	A = 16'hbbf5;
	B = 16'h3986;
	ans = 16'hb97e;
	#20
	A = 16'hb8d0;
	B = 16'h3015;
	ans = 16'hace9;
	#20
	A = 16'haf9d;
	B = 16'h3204;
	ans = 16'ha5ba;
	#20
	A = 16'h3256;
	B = 16'h38c8;
	ans = 16'h2f93;
	#20
	A = 16'h3ab7;
	B = 16'hb5e6;
	ans = 16'hb4f3;
	#20
	A = 16'hb01e;
	B = 16'h3bde;
	ans = 16'hb00d;
	#20
	A = 16'h39c7;
	B = 16'h3aea;
	ans = 16'h38fe;
	#20
	A = 16'hb873;
	B = 16'hb571;
	ans = 16'h320d;
	#20
	A = 16'hb923;
	B = 16'hbb13;
	ans = 16'h388b;
	#20
	A = 16'h3610;
	B = 16'h3447;
	ans = 16'h2e7c;
	#20
	A = 16'h3812;
	B = 16'h3844;
	ans = 16'h3457;
	#20
	A = 16'hb042;
	B = 16'hb508;
	ans = 16'h295b;
	#20
	A = 16'hbb5c;
	B = 16'hba96;
	ans = 16'h3a0f;
	#20
	A = 16'hba4e;
	B = 16'h3976;
	ans = 16'hb84e;
	#20
	A = 16'h31d9;
	B = 16'hb7fe;
	ans = 16'hadd8;
	#20
	A = 16'hbb69;
	B = 16'h318f;
	ans = 16'hb126;
	#20
	A = 16'hba17;
	B = 16'hbb3f;
	ans = 16'h3984;
	#20
	A = 16'h38e5;
	B = 16'h2b73;
	ans = 16'h288f;
	#20
	A = 16'h396c;
	B = 16'h38ac;
	ans = 16'h3655;
	#20
	A = 16'h393c;
	B = 16'hb25b;
	ans = 16'hb029;
	#20
	A = 16'hb86c;
	B = 16'hb9eb;
	ans = 16'h368b;
	#20
	A = 16'hac99;
	B = 16'h3942;
	ans = 16'haa0b;
	#20
	A = 16'h3745;
	B = 16'hb9f0;
	ans = 16'hb565;
	#20
	A = 16'hba2b;
	B = 16'hb1d0;
	ans = 16'h307b;
	#20
	A = 16'h36b4;
	B = 16'h3b84;
	ans = 16'h364c;
	#20
	A = 16'hb71e;
	B = 16'h3b0a;
	ans = 16'hb643;
	#20
	A = 16'h3b11;
	B = 16'h3461;
	ans = 16'h33bc;
	#20
	A = 16'h305c;
	B = 16'h3a1a;
	ans = 16'h2ea6;
	#20
	A = 16'h3925;
	B = 16'h3374;
	ans = 16'h30cb;
	#20
	A = 16'h3a5b;
	B = 16'h309f;
	ans = 16'h2f58;
	#20
	A = 16'hb0d9;
	B = 16'haff7;
	ans = 16'h24d4;
	#20
	A = 16'hb5f7;
	B = 16'h38a0;
	ans = 16'hb2e6;
	#20
	A = 16'hba1d;
	B = 16'h3ba7;
	ans = 16'hb9d9;
	#20
	A = 16'hb893;
	B = 16'h3b33;
	ans = 16'hb81e;
	#20
	A = 16'h24af;
	B = 16'hb02e;
	ans = 16'h98e5;
	#20
	A = 16'h3923;
	B = 16'h3869;
	ans = 16'h35aa;
	#20
	A = 16'h3806;
	B = 16'h3bdf;
	ans = 16'h37eb;
	#20
	A = 16'hb88e;
	B = 16'h2645;
	ans = 16'ha324;
	#20
	A = 16'h2ffe;
	B = 16'h3820;
	ans = 16'h2c1f;
	#20
	A = 16'hb9dd;
	B = 16'hb237;
	ans = 16'h308e;
	#20
	A = 16'h3be9;
	B = 16'hba5e;
	ans = 16'hba4c;
	#20
	A = 16'hb894;
	B = 16'hbbb1;
	ans = 16'h3867;
	#20
	A = 16'h3960;
	B = 16'h3588;
	ans = 16'h336f;
	#20
	A = 16'h3aac;
	B = 16'h147f;
	ans = 16'h1380;
	#20
	A = 16'hb7a8;
	B = 16'hb335;
	ans = 16'h2ee6;
	#20
	A = 16'hb84e;
	B = 16'had77;
	ans = 16'h29e2;
	#20
	A = 16'h37d3;
	B = 16'hb3a8;
	ans = 16'haf7d;
	#20
	A = 16'h2863;
	B = 16'h38cf;
	ans = 16'h2546;
	#20
	A = 16'h396f;
	B = 16'hb505;
	ans = 16'hb2d2;
	#20
	A = 16'hba1a;
	B = 16'h3437;
	ans = 16'hb26e;
	#20
	A = 16'hae02;
	B = 16'h3a75;
	ans = 16'hacd9;
	#20
	A = 16'h3575;
	B = 16'h3901;
	ans = 16'h32d4;
	#20
	A = 16'h31f7;
	B = 16'h37b5;
	ans = 16'h2dbf;
	#20
	A = 16'h3997;
	B = 16'hbb28;
	ans = 16'hb900;
	#20
	A = 16'hb720;
	B = 16'h3bf6;
	ans = 16'hb717;
	#20
	A = 16'h2f7d;
	B = 16'hb9eb;
	ans = 16'had8a;
	#20
	A = 16'h3510;
	B = 16'hba31;
	ans = 16'hb3d6;
	#20
	A = 16'h3394;
	B = 16'hbabb;
	ans = 16'hb260;
	#20
	A = 16'h3780;
	B = 16'h365c;
	ans = 16'h31f6;
	#20
	A = 16'h3af2;
	B = 16'h28c8;
	ans = 16'h2827;
	#20
	A = 16'h38c5;
	B = 16'h3a1d;
	ans = 16'h374a;
	#20
	A = 16'h3a40;
	B = 16'hb7ab;
	ans = 16'hb5fe;
	#20
	A = 16'ha9ec;
	B = 16'hb8ff;
	ans = 16'h2766;
	#20
	A = 16'h3b52;
	B = 16'h2a63;
	ans = 16'h29d8;
	#20
	A = 16'h3986;
	B = 16'h35b4;
	ans = 16'h33e0;
	#20
	A = 16'h3804;
	B = 16'hbb5d;
	ans = 16'hb764;
	#20
	A = 16'ha8df;
	B = 16'hba48;
	ans = 16'h27a6;
	#20
	A = 16'hb9ff;
	B = 16'h3878;
	ans = 16'hb6b3;
	#20
	A = 16'h3536;
	B = 16'h32c9;
	ans = 16'h2c6b;
	#20
	A = 16'hb710;
	B = 16'h38bb;
	ans = 16'hb42d;
	#20
	A = 16'h30ac;
	B = 16'hb760;
	ans = 16'hac4f;
	#20
	A = 16'h3662;
	B = 16'h3b83;
	ans = 16'h35fe;
	#20
	A = 16'hbadf;
	B = 16'hb4ba;
	ans = 16'h340f;
	#20
	A = 16'h3083;
	B = 16'hb68e;
	ans = 16'hab65;
	#20
	A = 16'hba79;
	B = 16'h386c;
	ans = 16'hb728;
	#20
	A = 16'h38e2;
	B = 16'hb8ea;
	ans = 16'hb600;
	#20
	A = 16'h3068;
	B = 16'hb191;
	ans = 16'ha622;
	#20
	A = 16'h373d;
	B = 16'habf5;
	ans = 16'ha733;
	#20
	A = 16'h36fc;
	B = 16'h382a;
	ans = 16'h3345;
	#20
	A = 16'h36b2;
	B = 16'h2aae;
	ans = 16'h2597;
	#20
	A = 16'hb91e;
	B = 16'hbb48;
	ans = 16'h38a8;
	#20
	A = 16'hba31;
	B = 16'ha557;
	ans = 16'h2422;
	#20
	A = 16'h386b;
	B = 16'h376f;
	ans = 16'h341b;
	#20
	A = 16'hb815;
	B = 16'h35db;
	ans = 16'hb1fa;
	#20
	A = 16'h3b7b;
	B = 16'haf87;
	ans = 16'haf0a;
	#20
	A = 16'h3733;
	B = 16'hbb4f;
	ans = 16'hb694;
	#20
	A = 16'hbbba;
	B = 16'hb439;
	ans = 16'h3414;
	#20
	A = 16'h37b1;
	B = 16'hb830;
	ans = 16'hb407;
	#20
	A = 16'h38f6;
	B = 16'hb9e1;
	ans = 16'hb74b;
	#20
	A = 16'h3489;
	B = 16'h27f2;
	ans = 16'h2081;
	#20
	A = 16'h332c;
	B = 16'hb263;
	ans = 16'ha9ba;
	#20
	A = 16'hbbf3;
	B = 16'hb884;
	ans = 16'h387d;
	#20
	A = 16'hafee;
	B = 16'hba4b;
	ans = 16'h2e3d;
	#20
	A = 16'hbae4;
	B = 16'h27e4;
	ans = 16'ha6cc;
	#20
	A = 16'h38fa;
	B = 16'h3536;
	ans = 16'h327c;
	#20
	A = 16'hbb85;
	B = 16'h3522;
	ans = 16'hb4d3;
	#20
	A = 16'hba76;
	B = 16'h382f;
	ans = 16'hb6c2;
	#20
	A = 16'hb732;
	B = 16'h3906;
	ans = 16'hb485;
	#20
	A = 16'h3146;
	B = 16'hb85f;
	ans = 16'hadc3;
	#20
	A = 16'h3316;
	B = 16'h3471;
	ans = 16'h2bde;
	#20
	A = 16'hba42;
	B = 16'h3981;
	ans = 16'hb84e;
	#20
	A = 16'hb652;
	B = 16'h2c2e;
	ans = 16'ha69b;
	#20
	A = 16'h3bc8;
	B = 16'hb970;
	ans = 16'hb94a;
	#20
	A = 16'h3b62;
	B = 16'hb645;
	ans = 16'hb5c9;
	#20
	A = 16'h3ad9;
	B = 16'hb01c;
	ans = 16'haf09;
	#20
	A = 16'h31e6;
	B = 16'h2c29;
	ans = 16'h2222;
	#20
	A = 16'hba0a;
	B = 16'h355a;
	ans = 16'hb40a;
	#20
	A = 16'hb92b;
	B = 16'h39fc;
	ans = 16'hb7bb;
	#20
	A = 16'hb20c;
	B = 16'h3830;
	ans = 16'hae55;
	#20
	A = 16'habd3;
	B = 16'hba59;
	ans = 16'h2a35;
	#20
	A = 16'h2865;
	B = 16'h3bca;
	ans = 16'h2847;
	#20
	A = 16'hb67f;
	B = 16'hb70c;
	ans = 16'h31b9;
	#20
	A = 16'hb9bc;
	B = 16'hb85b;
	ans = 16'h363e;
	#20
	A = 16'hbaae;
	B = 16'h3368;
	ans = 16'hb22f;
	#20
	A = 16'hb43a;
	B = 16'h35d5;
	ans = 16'hae2a;
	#20
	A = 16'h2653;
	B = 16'h3b16;
	ans = 16'h259a;
	#20
	A = 16'hb83e;
	B = 16'had54;
	ans = 16'h29a7;
	#20
	A = 16'hb5fe;
	B = 16'hb90d;
	ans = 16'h3391;
	#20
	A = 16'h38d6;
	B = 16'h39fe;
	ans = 16'h373f;
	#20
	A = 16'h3b07;
	B = 16'h36bf;
	ans = 16'h35ed;
	#20
	A = 16'h35c2;
	B = 16'hb866;
	ans = 16'hb255;
	#20
	A = 16'hb662;
	B = 16'hb073;
	ans = 16'h2b1a;
	#20
	A = 16'h3bf9;
	B = 16'hb966;
	ans = 16'hb961;
	#20
	A = 16'h3679;
	B = 16'h32f4;
	ans = 16'h2da0;
	#20
	A = 16'hba81;
	B = 16'h3070;
	ans = 16'haf37;
	#20
	A = 16'h3aa1;
	B = 16'h3b4c;
	ans = 16'h3a0c;
	#20
	A = 16'hb973;
	B = 16'hb715;
	ans = 16'h34d3;
	#20
	A = 16'hb87c;
	B = 16'hae09;
	ans = 16'h2ac4;
	#20
	A = 16'hb01b;
	B = 16'hbbfd;
	ans = 16'h3019;
	#20
	A = 16'hb75e;
	B = 16'h377b;
	ans = 16'hb2e4;
	#20
	A = 16'h3beb;
	B = 16'ha903;
	ans = 16'ha8f6;
	#20
	A = 16'hb59a;
	B = 16'h396f;
	ans = 16'hb39c;
	#20
	A = 16'hb4c8;
	B = 16'h3ae7;
	ans = 16'hb420;
	#20
	A = 16'hb780;
	B = 16'hb5aa;
	ans = 16'h314f;
	#20
	A = 16'hbab2;
	B = 16'hb6da;
	ans = 16'h35bc;
	#20
	A = 16'h3798;
	B = 16'hb825;
	ans = 16'hb3de;
	#20
	A = 16'h32ef;
	B = 16'h3a18;
	ans = 16'h3148;
	#20
	A = 16'h308b;
	B = 16'hb96c;
	ans = 16'hae28;
	#20
	A = 16'h3984;
	B = 16'h3aa7;
	ans = 16'h3896;
	#20
	A = 16'h35c5;
	B = 16'hbaff;
	ans = 16'hb50c;
	#20
	A = 16'h3589;
	B = 16'h3270;
	ans = 16'h2c74;
	#20
	A = 16'hb955;
	B = 16'hb5f9;
	ans = 16'h33f6;
	#20
	A = 16'h3575;
	B = 16'hb693;
	ans = 16'hb07c;
	#20
	A = 16'hb49f;
	B = 16'hba30;
	ans = 16'h3326;
	#20
	A = 16'h3b18;
	B = 16'hb86d;
	ans = 16'hb7d9;
	#20
	A = 16'h2525;
	B = 16'hbba2;
	ans = 16'ha4e9;
	#20
	A = 16'hb86b;
	B = 16'hb9e0;
	ans = 16'h367d;
	#20
	A = 16'h3af0;
	B = 16'hb722;
	ans = 16'hb62f;
	#20
	A = 16'hb8c4;
	B = 16'hbb37;
	ans = 16'h384c;
	#20
	A = 16'hba26;
	B = 16'h3655;
	ans = 16'hb4de;
	#20
	A = 16'h3b54;
	B = 16'hb524;
	ans = 16'hb4b5;
	#20
	A = 16'hb70d;
	B = 16'h3b2d;
	ans = 16'hb653;
	#20
	A = 16'hb39c;
	B = 16'hbb5c;
	ans = 16'h3300;
	#20
	A = 16'ha8f4;
	B = 16'h3531;
	ans = 16'ha26e;
	#20
	A = 16'h393b;
	B = 16'h3509;
	ans = 16'h3296;
	#20
	A = 16'h3b34;
	B = 16'hb55b;
	ans = 16'hb4d2;
	#20
	A = 16'h3605;
	B = 16'h301d;
	ans = 16'h2a31;
	#20
	A = 16'h365c;
	B = 16'h2ef4;
	ans = 16'h2987;
	#20
	A = 16'hb1ea;
	B = 16'hb966;
	ans = 16'h2ffb;
	#20
	A = 16'hbad3;
	B = 16'h3b37;
	ans = 16'hba28;
	#20
	A = 16'h3b4f;
	B = 16'hbabe;
	ans = 16'hba29;
	#20
	A = 16'h2fb1;
	B = 16'hb695;
	ans = 16'haa54;
	#20
	A = 16'hb447;
	B = 16'hbb17;
	ans = 16'h3395;
	#20
	A = 16'hbb9a;
	B = 16'h2e36;
	ans = 16'hade7;
	#20
	A = 16'h340e;
	B = 16'h3a30;
	ans = 16'h3246;
	#20
	A = 16'hb15f;
	B = 16'h37ac;
	ans = 16'had27;
	#20
	A = 16'h2f5b;
	B = 16'hb892;
	ans = 16'hac34;
	#20
	A = 16'hbbe4;
	B = 16'hba5f;
	ans = 16'h3a49;
	#20
	A = 16'h321f;
	B = 16'hb331;
	ans = 16'ha981;
	#20
	A = 16'h3b9c;
	B = 16'h3842;
	ans = 16'h380d;
	#20
	A = 16'hbbda;
	B = 16'h34c6;
	ans = 16'hb4af;
	#20
	A = 16'hb907;
	B = 16'hb854;
	ans = 16'h3571;
	#20
	A = 16'h3363;
	B = 16'h3448;
	ans = 16'h2be8;
	#20
	A = 16'hb1b6;
	B = 16'h3aaa;
	ans = 16'hb0c2;
	#20
	A = 16'h3a1f;
	B = 16'h3472;
	ans = 16'h32cd;
	#20
	A = 16'h3bdb;
	B = 16'hb915;
	ans = 16'hb8fd;
	#20
	A = 16'h3b1a;
	B = 16'h308e;
	ans = 16'h300b;
	#20
	A = 16'had4b;
	B = 16'hba14;
	ans = 16'h2c05;
	#20
	A = 16'hb60f;
	B = 16'h3927;
	ans = 16'hb3ce;
	#20
	A = 16'hb718;
	B = 16'hb5ce;
	ans = 16'h3126;
	#20
	A = 16'hbb98;
	B = 16'h30e0;
	ans = 16'hb0a1;
	#20
	A = 16'hb28e;
	B = 16'h3854;
	ans = 16'haf18;
	#20
	A = 16'h3129;
	B = 16'hba1e;
	ans = 16'hafe4;
	#20
	A = 16'h37c2;
	B = 16'h2c5e;
	ans = 16'h283c;
	#20
	A = 16'h3219;
	B = 16'hb9b2;
	ans = 16'hb057;
	#20
	A = 16'haf14;
	B = 16'h32af;
	ans = 16'ha5ea;
	#20
	A = 16'h3a5b;
	B = 16'hb6aa;
	ans = 16'hb54b;
	#20
	A = 16'hba19;
	B = 16'had8a;
	ans = 16'h2c39;
	#20
	A = 16'h39de;
	B = 16'h2bcd;
	ans = 16'h29b9;
	#20
	A = 16'hb4bb;
	B = 16'hbbef;
	ans = 16'h34b1;
	#20
	A = 16'hbab0;
	B = 16'hbbcb;
	ans = 16'h3a84;
	#20
	A = 16'h3090;
	B = 16'h3961;
	ans = 16'h2e23;
	#20
	A = 16'h3713;
	B = 16'hb66a;
	ans = 16'hb1ac;
	#20
	A = 16'h3b42;
	B = 16'hb5c9;
	ans = 16'hb540;
	#20
	A = 16'hba18;
	B = 16'hb41c;
	ans = 16'h3243;
	#20
	A = 16'haed2;
	B = 16'hbadd;
	ans = 16'h2dda;
	#20
	A = 16'hb729;
	B = 16'h3842;
	ans = 16'hb39f;
	#20
	A = 16'hadbb;
	B = 16'hb783;
	ans = 16'h2961;
	#20
	A = 16'h21d8;
	B = 16'h3484;
	ans = 16'h1a99;
	#20
	A = 16'hbb1d;
	B = 16'hb518;
	ans = 16'h3487;
	#20
	A = 16'hb435;
	B = 16'h3a69;
	ans = 16'hb2be;
	#20
	A = 16'h37d7;
	B = 16'h3202;
	ans = 16'h2de3;
	#20
	A = 16'h37df;
	B = 16'h3976;
	ans = 16'h355f;
	#20
	A = 16'hb60e;
	B = 16'h3b8d;
	ans = 16'hb5b7;
	#20
	A = 16'hb670;
	B = 16'hb440;
	ans = 16'h2ed7;
	#20
	A = 16'hbb14;
	B = 16'hb3b0;
	ans = 16'h32cd;
	#20
	A = 16'h3a0d;
	B = 16'h3031;
	ans = 16'h2e57;
	#20
	A = 16'hb1dc;
	B = 16'h354b;
	ans = 16'habc1;
	#20
	A = 16'h3b89;
	B = 16'hb132;
	ans = 16'hb0e5;
	#20
	A = 16'hb63d;
	B = 16'h3420;
	ans = 16'hae6f;
	#20
	A = 16'hbbac;
	B = 16'h34a8;
	ans = 16'hb477;
	#20
	A = 16'h320b;
	B = 16'hb988;
	ans = 16'hb02e;
	#20
	A = 16'hba27;
	B = 16'h3950;
	ans = 16'hb816;
	#20
	A = 16'h3419;
	B = 16'h3adf;
	ans = 16'h330a;
	#20
	A = 16'h35f4;
	B = 16'hb5b3;
	ans = 16'hb03e;
	#20
	A = 16'hb9c9;
	B = 16'hb86d;
	ans = 16'h3667;
	#20
	A = 16'h3b62;
	B = 16'hb861;
	ans = 16'hb80b;
	#20
	A = 16'h34a7;
	B = 16'h30a4;
	ans = 16'h2966;
	#20
	A = 16'h351e;
	B = 16'h34f0;
	ans = 16'h2e51;
	#20
	A = 16'h369b;
	B = 16'hb948;
	ans = 16'hb45c;
	#20
	A = 16'hb556;
	B = 16'h3b06;
	ans = 16'hb4af;
	#20
	A = 16'hb58b;
	B = 16'h3b58;
	ans = 16'hb517;
	#20
	A = 16'h37a6;
	B = 16'h307b;
	ans = 16'h2c49;
	#20
	A = 16'hb825;
	B = 16'h348f;
	ans = 16'hb0b9;
	#20
	A = 16'h366a;
	B = 16'h3a1e;
	ans = 16'h34e8;
	#20
	A = 16'hb1ab;
	B = 16'hba97;
	ans = 16'h30ab;
	#20
	A = 16'hb8ce;
	B = 16'hb9f9;
	ans = 16'h372d;
	#20
	A = 16'h3b54;
	B = 16'h3bb8;
	ans = 16'h3b12;
	#20
	A = 16'h39ec;
	B = 16'hb638;
	ans = 16'hb49a;
	#20
	A = 16'h38ff;
	B = 16'hbb34;
	ans = 16'hb880;
	#20
	A = 16'h39fb;
	B = 16'h3807;
	ans = 16'h3605;
	#20
	A = 16'hb88b;
	B = 16'hb4ba;
	ans = 16'h315e;
	#20
	A = 16'hb1b2;
	B = 16'haee8;
	ans = 16'h24eb;
	#20
	A = 16'hb86a;
	B = 16'hb735;
	ans = 16'h33f4;
	#20
	A = 16'hb83f;
	B = 16'h3967;
	ans = 16'hb5bc;
	#20
	A = 16'hb953;
	B = 16'h344f;
	ans = 16'hb1bc;
	#20
	A = 16'hb36d;
	B = 16'hbabf;
	ans = 16'h3243;
	#20
	A = 16'h3845;
	B = 16'h3a88;
	ans = 16'h36f9;
	#20
	A = 16'hb9d8;
	B = 16'h39e3;
	ans = 16'hb84d;
	#20
	A = 16'hb556;
	B = 16'hb5fc;
	ans = 16'h2ffc;
	#20
	A = 16'hb58b;
	B = 16'h2f40;
	ans = 16'ha906;
	#20
	A = 16'hb649;
	B = 16'h2e2c;
	ans = 16'ha8d9;
	#20
	A = 16'h35c6;
	B = 16'hb6ef;
	ans = 16'hb101;
	#20
	A = 16'h380a;
	B = 16'hb8dd;
	ans = 16'hb4e9;
	#20
	A = 16'hb847;
	B = 16'h38a9;
	ans = 16'hb4fc;
	#20
	A = 16'h3800;
	B = 16'h3955;
	ans = 16'h3555;
	#20
	A = 16'h34a7;
	B = 16'ha519;
	ans = 16'h9dee;
	#20
	A = 16'haed9;
	B = 16'h3b67;
	ans = 16'hae56;
	#20
	A = 16'hb92f;
	B = 16'hb0fe;
	ans = 16'h2e78;
	#20
	A = 16'hb235;
	B = 16'ha920;
	ans = 16'h1ff4;
	#20
	A = 16'h2518;
	B = 16'h3b97;
	ans = 16'h24d5;
	#20
	A = 16'h3aa9;
	B = 16'haf6b;
	ans = 16'hae2d;
	#20
	A = 16'h3500;
	B = 16'h3665;
	ans = 16'h2ffe;
	#20
	A = 16'hb4c6;
	B = 16'hb9a7;
	ans = 16'h32bf;
	#20
	A = 16'h3a02;
	B = 16'h3925;
	ans = 16'h37ba;
	#20
	A = 16'h3bef;
	B = 16'h27fe;
	ans = 16'h27ed;
	#20
	A = 16'h3aa7;
	B = 16'h3bda;
	ans = 16'h3a87;
	#20
	A = 16'hbb1d;
	B = 16'h3bf1;
	ans = 16'hbb10;
	#20
	A = 16'hb220;
	B = 16'hb32a;
	ans = 16'h297c;
	#20
	A = 16'hb9c7;
	B = 16'hbaa7;
	ans = 16'h38ce;
	#20
	A = 16'hb7fe;
	B = 16'h34ff;
	ans = 16'hb0fe;
	#20
	A = 16'hb810;
	B = 16'h382f;
	ans = 16'hb440;
	#20
	A = 16'haf1a;
	B = 16'h30c5;
	ans = 16'ha43c;
	#20
	A = 16'h3547;
	B = 16'h36f2;
	ans = 16'h3095;
	#20
	A = 16'ha744;
	B = 16'h3914;
	ans = 16'ha49d;
	#20
	A = 16'hbaf5;
	B = 16'h31dd;
	ans = 16'hb119;
	#20
	A = 16'ha1a8;
	B = 16'h3bf8;
	ans = 16'ha1a2;
	#20
	A = 16'h335b;
	B = 16'h3174;
	ans = 16'h2904;
	#20
	A = 16'hba6f;
	B = 16'hb723;
	ans = 16'h35bd;
	#20
	A = 16'hb6d3;
	B = 16'h2682;
	ans = 16'ha18d;
	#20
	A = 16'h35a4;
	B = 16'h3bef;
	ans = 16'h3598;
	#20
	A = 16'h36b1;
	B = 16'h3bf2;
	ans = 16'h36a5;
	#20
	A = 16'h394b;
	B = 16'h3af1;
	ans = 16'h3898;
	#20
	A = 16'hb32d;
	B = 16'hb670;
	ans = 16'h2dc6;
	#20
	A = 16'haee4;
	B = 16'hb1e3;
	ans = 16'h2512;
	#20
	A = 16'hbb33;
	B = 16'hbb57;
	ans = 16'h3a9b;
	#20
	A = 16'hb6bd;
	B = 16'hb87a;
	ans = 16'h338b;
	#20
	A = 16'h3aea;
	B = 16'hb6e6;
	ans = 16'hb5f6;
	#20
	A = 16'hb798;
	B = 16'hba09;
	ans = 16'h35bb;
	#20
	A = 16'had82;
	B = 16'hb318;
	ans = 16'h24e2;
	#20
	A = 16'h3a9d;
	B = 16'h382e;
	ans = 16'h36e9;
	#20
	A = 16'h2a18;
	B = 16'hb58c;
	ans = 16'ha43a;
	#20
	A = 16'hb349;
	B = 16'hb1f1;
	ans = 16'h2969;
	#20
	A = 16'h3a71;
	B = 16'hb90a;
	ans = 16'hb80f;
	#20
	A = 16'hb92a;
	B = 16'h3716;
	ans = 16'hb493;
	#20
	A = 16'h3926;
	B = 16'h27d3;
	ans = 16'h2509;
	#20
	A = 16'habae;
	B = 16'hab06;
	ans = 16'h1abe;
	#20
	A = 16'hb72d;
	B = 16'hadb8;
	ans = 16'h2921;
	#20
	A = 16'h3a33;
	B = 16'h3798;
	ans = 16'h35e2;
	#20
	A = 16'hb5ad;
	B = 16'h2a54;
	ans = 16'ha47d;
	#20
	A = 16'hb9f6;
	B = 16'h367e;
	ans = 16'hb4d6;
	#20
	A = 16'hb400;
	B = 16'h3b19;
	ans = 16'hb319;
	#20
	A = 16'h3410;
	B = 16'hb885;
	ans = 16'hb097;
	#20
	A = 16'h39b3;
	B = 16'hbbbe;
	ans = 16'hb984;
	#20
	A = 16'h34bf;
	B = 16'h3a63;
	ans = 16'h3394;
	#20
	A = 16'hb75e;
	B = 16'h31b5;
	ans = 16'had41;
	#20
	A = 16'h306d;
	B = 16'h3927;
	ans = 16'h2db3;
	#20
	A = 16'h36d1;
	B = 16'hb630;
	ans = 16'hb146;
	#20
	A = 16'hb5b5;
	B = 16'hb418;
	ans = 16'h2dd7;
	#20
	A = 16'hb74d;
	B = 16'h3a95;
	ans = 16'hb602;
	#20
	A = 16'h381d;
	B = 16'h3947;
	ans = 16'h356d;
	#20
	A = 16'h3a53;
	B = 16'h3a5b;
	ans = 16'h3906;
	#20
	A = 16'h38e4;
	B = 16'ha437;
	ans = 16'ha127;
	#20
	A = 16'h3a2a;
	B = 16'h95cd;
	ans = 16'h9478;
	#20
	A = 16'hb79d;
	B = 16'h3a6e;
	ans = 16'hb61e;
	#20
	A = 16'h3b39;
	B = 16'h39bb;
	ans = 16'h392c;
	#20
	A = 16'hb458;
	B = 16'h3535;
	ans = 16'hada8;
	#20
	A = 16'h3b4d;
	B = 16'hbb4b;
	ans = 16'hbaa8;
	#20
	A = 16'hb583;
	B = 16'h3959;
	ans = 16'hb35e;
	#20
	A = 16'h368c;
	B = 16'hb90b;
	ans = 16'hb421;
	#20
	A = 16'h38a8;
	B = 16'h3860;
	ans = 16'h3518;
	#20
	A = 16'hb6c5;
	B = 16'h308c;
	ans = 16'habb2;
	#20
	A = 16'h375e;
	B = 16'h386c;
	ans = 16'h3412;
	#20
	A = 16'h382d;
	B = 16'h3a1f;
	ans = 16'h3664;
	#20
	A = 16'hb517;
	B = 16'h35d6;
	ans = 16'haf6d;
	#20
	A = 16'hbb8a;
	B = 16'hbb8a;
	ans = 16'h3b1b;
	#20
	A = 16'hb8ad;
	B = 16'haef6;
	ans = 16'h2c12;
	#20
	A = 16'h3970;
	B = 16'h3563;
	ans = 16'h3353;
	#20
	A = 16'h3a0e;
	B = 16'h39c4;
	ans = 16'h385d;
	#20
	A = 16'hb8e8;
	B = 16'hb8fd;
	ans = 16'h361e;
	#20
	A = 16'h39ba;
	B = 16'h35da;
	ans = 16'h3430;
	#20
	A = 16'h381c;
	B = 16'hba36;
	ans = 16'hb661;
	#20
	A = 16'h39a8;
	B = 16'h3bb3;
	ans = 16'h3972;
	#20
	A = 16'hb03c;
	B = 16'hbbb9;
	ans = 16'h3016;
	#20
	A = 16'haf47;
	B = 16'hba81;
	ans = 16'h2deb;
	#20
	A = 16'h3493;
	B = 16'hbb7d;
	ans = 16'hb448;
	#20
	A = 16'h3bca;
	B = 16'hb824;
	ans = 16'hb808;
	#20
	A = 16'h38bb;
	B = 16'hbbe4;
	ans = 16'hb8aa;
	#20
	A = 16'hb6ec;
	B = 16'hb527;
	ans = 16'h3075;
	#20
	A = 16'hb3b7;
	B = 16'h3592;
	ans = 16'had5f;
	#20
	A = 16'hb50d;
	B = 16'hb6f2;
	ans = 16'h3063;
	#20
	A = 16'h376a;
	B = 16'hbada;
	ans = 16'hb65a;
	#20
	A = 16'hb9a2;
	B = 16'h3610;
	ans = 16'hb445;
	#20
	A = 16'h3700;
	B = 16'h3a27;
	ans = 16'h3562;
	#20
	A = 16'h34d5;
	B = 16'hb4e5;
	ans = 16'hadea;
	#20
	A = 16'hb710;
	B = 16'hb770;
	ans = 16'h3291;
	#20
	A = 16'h38d2;
	B = 16'hb9a3;
	ans = 16'hb6cb;
	#20
	A = 16'hbad9;
	B = 16'h3101;
	ans = 16'hb048;
	#20
	A = 16'hba60;
	B = 16'h354f;
	ans = 16'hb43b;
	#20
	A = 16'h3748;
	B = 16'h2e50;
	ans = 16'h29bf;
	#20
	A = 16'h3b4e;
	B = 16'habef;
	ans = 16'hab3e;
	#20
	A = 16'h35c2;
	B = 16'h3bc6;
	ans = 16'h3598;
	#20
	A = 16'h3b5d;
	B = 16'hb61b;
	ans = 16'hb59f;
	#20
	A = 16'h3b8f;
	B = 16'h2821;
	ans = 16'h27cd;
	#20
	A = 16'hb706;
	B = 16'hb888;
	ans = 16'h33f5;
	#20
	A = 16'hb5f9;
	B = 16'had4f;
	ans = 16'h27ed;
	#20
	A = 16'h3814;
	B = 16'h338e;
	ans = 16'h2fb4;
	#20
	A = 16'hb9c4;
	B = 16'h3aa5;
	ans = 16'hb8ca;
	#20
	A = 16'hb9fc;
	B = 16'h39d9;
	ans = 16'hb860;
	#20
	A = 16'hb90d;
	B = 16'h38d5;
	ans = 16'hb61a;
	#20
	A = 16'hb693;
	B = 16'hb1af;
	ans = 16'h2cac;
	#20
	A = 16'h33e0;
	B = 16'h3aac;
	ans = 16'h3291;
	#20
	A = 16'h3b6d;
	B = 16'h3868;
	ans = 16'h3817;
	#20
	A = 16'h39a4;
	B = 16'hb0e9;
	ans = 16'haeed;
	#20
	A = 16'h3ad3;
	B = 16'h2af9;
	ans = 16'h29f3;
	#20
	A = 16'hb66d;
	B = 16'h2979;
	ans = 16'ha465;
	#20
	A = 16'h324d;
	B = 16'h3bf0;
	ans = 16'h3240;
	#20
	A = 16'h34d0;
	B = 16'hb35a;
	ans = 16'hac6c;
	#20
	A = 16'h3460;
	B = 16'h2012;
	ans = 16'h1874;
	#20
	A = 16'hac38;
	B = 16'h3731;
	ans = 16'ha796;
	#20
	A = 16'h389d;
	B = 16'h3578;
	ans = 16'h324f;
	#20
	A = 16'hb20e;
	B = 16'h3128;
	ans = 16'ha7ce;
	#20
	A = 16'had2c;
	B = 16'h32f8;
	ans = 16'ha481;
	#20
	A = 16'h38b4;
	B = 16'h3a77;
	ans = 16'h379a;
	#20
	A = 16'hb9d7;
	B = 16'hb9b3;
	ans = 16'h3829;
	#20
	A = 16'h33dd;
	B = 16'h3683;
	ans = 16'h2e67;
	#20
	A = 16'h31b7;
	B = 16'h3b1f;
	ans = 16'h3116;
	#20
	A = 16'hb761;
	B = 16'hbbe7;
	ans = 16'h374a;
	#20
	A = 16'hbb89;
	B = 16'hb4cd;
	ans = 16'h3486;
	#20
	A = 16'hb59d;
	B = 16'hb83a;
	ans = 16'h31ee;
	#20
	A = 16'h2ab8;
	B = 16'h3409;
	ans = 16'h22c7;
	#20
	A = 16'h3a9a;
	B = 16'h33e8;
	ans = 16'h3286;
	#20
	A = 16'h28c5;
	B = 16'h3be1;
	ans = 16'h28b3;
	#20
	A = 16'hb8e3;
	B = 16'hb6f4;
	ans = 16'h343f;
	#20
	A = 16'hba8d;
	B = 16'h3b06;
	ans = 16'hb9c0;
	#20
	A = 16'h3760;
	B = 16'hafad;
	ans = 16'hab13;
	#20
	A = 16'h354a;
	B = 16'h3002;
	ans = 16'h294d;
	#20
	A = 16'h2cf7;
	B = 16'hb5d6;
	ans = 16'ha73e;
	#20
	A = 16'hb8d7;
	B = 16'hbb08;
	ans = 16'h3841;
	#20
	A = 16'h3a06;
	B = 16'hbba0;
	ans = 16'hb9be;
	#20
	A = 16'h39c6;
	B = 16'h3a7f;
	ans = 16'h38b0;
	#20
	A = 16'hb7bd;
	B = 16'h353b;
	ans = 16'hb10f;
	#20
	A = 16'hb724;
	B = 16'h352b;
	ans = 16'hb09d;
	#20
	A = 16'h3b39;
	B = 16'hbad2;
	ans = 16'hba28;
	#20
	A = 16'h3af2;
	B = 16'hb5a8;
	ans = 16'hb4e9;
	#20
	A = 16'h3575;
	B = 16'h381a;
	ans = 16'h3198;
	#20
	A = 16'hbbf6;
	B = 16'h372f;
	ans = 16'hb726;
	#20
	A = 16'hb002;
	B = 16'hb618;
	ans = 16'h2a1b;
	#20
	A = 16'h398b;
	B = 16'h2fcc;
	ans = 16'h2d67;
	#20
	A = 16'h3a29;
	B = 16'h35cc;
	ans = 16'h3477;
	#20
	A = 16'haede;
	B = 16'h378c;
	ans = 16'haa7a;
	#20
	A = 16'hbbaa;
	B = 16'h30c1;
	ans = 16'hb08e;
	#20
	A = 16'h3ae1;
	B = 16'h3339;
	ans = 16'h3236;
	#20
	A = 16'h3bc7;
	B = 16'h3515;
	ans = 16'h34f1;
	#20
	A = 16'hb75f;
	B = 16'h2961;
	ans = 16'ha4f5;
	#20
	A = 16'h3b0f;
	B = 16'hb9f4;
	ans = 16'hb941;
	#20
	A = 16'hb8a5;
	B = 16'h384a;
	ans = 16'hb4fb;
	#20
	A = 16'h35f8;
	B = 16'h2c36;
	ans = 16'h2649;
	#20
	A = 16'h3821;
	B = 16'h987;
	ans = 16'h5b5;
	#20
	A = 16'h2ea3;
	B = 16'haecc;
	ans = 16'ha1a3;
	#20
	A = 16'h20f5;
	B = 16'hb4a9;
	ans = 16'h99c6;
	#20
	A = 16'hbbe7;
	B = 16'h3aea;
	ans = 16'hbad4;
	#20
	A = 16'hb819;
	B = 16'hb8cb;
	ans = 16'h34e9;
	#20
	A = 16'h3162;
	B = 16'h3ba9;
	ans = 16'h3127;
	#20
	A = 16'h30b3;
	B = 16'h369c;
	ans = 16'h2bc4;
	#20
	A = 16'h3940;
	B = 16'ha81c;
	ans = 16'ha565;
	#20
	A = 16'h356b;
	B = 16'h3609;
	ans = 16'h3016;
	#20
	A = 16'hbb3a;
	B = 16'h37e0;
	ans = 16'hb71d;
	#20
	A = 16'h3187;
	B = 16'hbaec;
	ans = 16'hb0c8;
	#20
	A = 16'h3b77;
	B = 16'hb89c;
	ans = 16'hb84d;
	#20
	A = 16'hb9d7;
	B = 16'h3aab;
	ans = 16'hb8de;
	#20
	A = 16'hb435;
	B = 16'h3896;
	ans = 16'hb0d3;
	#20
	A = 16'h35dc;
	B = 16'h2f83;
	ans = 16'h2980;
	#20
	A = 16'ha9ea;
	B = 16'h39b8;
	ans = 16'ha83a;
	#20
	A = 16'h38c9;
	B = 16'h2ffb;
	ans = 16'h2cc6;
	#20
	A = 16'h3a52;
	B = 16'ha3ea;
	ans = 16'ha241;
	#20
	A = 16'hb234;
	B = 16'hb909;
	ans = 16'h2fcf;
	#20
	A = 16'hbac8;
	B = 16'h3a11;
	ans = 16'hb924;
	#20
	A = 16'h293f;
	B = 16'h3b09;
	ans = 16'h289d;
	#20
	A = 16'h340b;
	B = 16'hae1e;
	ans = 16'ha62f;
	#20
	A = 16'haafd;
	B = 16'h3901;
	ans = 16'ha85f;
	#20
	A = 16'h3b20;
	B = 16'hb101;
	ans = 16'hb075;
	#20
	A = 16'hb5e6;
	B = 16'hb7b6;
	ans = 16'h31af;
	#20
	A = 16'h3aee;
	B = 16'ha474;
	ans = 16'ha3b7;
	#20
	A = 16'h35be;
	B = 16'h3be0;
	ans = 16'h35a7;
	#20
	A = 16'hb759;
	B = 16'h36ff;
	ans = 16'hb26d;
	#20
	A = 16'hb7f2;
	B = 16'hb83f;
	ans = 16'h3438;
	#20
	A = 16'h370c;
	B = 16'h3482;
	ans = 16'h2ff1;
	#20
	A = 16'hbb75;
	B = 16'hbb6f;
	ans = 16'h3aee;
	#20
	A = 16'hbb5d;
	B = 16'hba5e;
	ans = 16'h39dc;
	#20
	A = 16'h2c30;
	B = 16'hbb9b;
	ans = 16'habf6;
	#20
	A = 16'h3457;
	B = 16'h3599;
	ans = 16'h2e13;
	#20
	A = 16'hb9af;
	B = 16'hb6a6;
	ans = 16'h34b9;
	#20
	A = 16'had31;
	B = 16'h3604;
	ans = 16'ha7cf;
	#20
	A = 16'h32bb;
	B = 16'hb889;
	ans = 16'hafa2;
	#20
	A = 16'hb859;
	B = 16'h36b9;
	ans = 16'hb34f;
	#20
	A = 16'hb9ff;
	B = 16'hba29;
	ans = 16'h389e;
	#20
	A = 16'hb4da;
	B = 16'hafbd;
	ans = 16'h28b1;
	#20
	A = 16'h3630;
	B = 16'hb87a;
	ans = 16'hb2ed;
	#20
	A = 16'h32e5;
	B = 16'h3837;
	ans = 16'h2f44;
	#20
	A = 16'h38b9;
	B = 16'h383e;
	ans = 16'h3502;
	#20
	A = 16'hb0de;
	B = 16'h36ae;
	ans = 16'hac10;
	#20
	A = 16'hb971;
	B = 16'h37eb;
	ans = 16'hb563;
	#20
	A = 16'hbb8d;
	B = 16'hbae9;
	ans = 16'h3a86;
	#20
	A = 16'h37dc;
	B = 16'h380f;
	ans = 16'h33f9;
	#20
	A = 16'hbb00;
	B = 16'h37fb;
	ans = 16'hb6fc;
	#20
	A = 16'h3a36;
	B = 16'h3088;
	ans = 16'h2f09;
	#20
	A = 16'hba57;
	B = 16'hba1b;
	ans = 16'h38d7;
	#20
	A = 16'hb973;
	B = 16'hb7ce;
	ans = 16'h3551;
	#20
	A = 16'hb8d5;
	B = 16'hbbf5;
	ans = 16'h38ce;
	#20
	A = 16'h37e6;
	B = 16'hb32a;
	ans = 16'haf13;
	#20
	A = 16'h3afa;
	B = 16'hb4b4;
	ans = 16'hb41a;
	#20
	A = 16'h2e8c;
	B = 16'hbbcb;
	ans = 16'hae61;
	#20
	A = 16'hb95f;
	B = 16'hb27e;
	ans = 16'h305c;
	#20
	A = 16'h2b2d;
	B = 16'h3a8b;
	ans = 16'h29de;
	#20
	A = 16'hb138;
	B = 16'h37df;
	ans = 16'had22;
	#20
	A = 16'h3295;
	B = 16'h3b44;
	ans = 16'h31fa;
	#20
	A = 16'hb7c8;
	B = 16'hbbf6;
	ans = 16'h37be;
	#20
	A = 16'hb00a;
	B = 16'hb514;
	ans = 16'h2921;
	#20
	A = 16'hb6d4;
	B = 16'hb2e2;
	ans = 16'h2de0;
	#20
	A = 16'hb982;
	B = 16'h38eb;
	ans = 16'hb6c6;
	#20
	A = 16'h3b0f;
	B = 16'h3861;
	ans = 16'h37ba;
	#20
	A = 16'hb6b3;
	B = 16'h3989;
	ans = 16'hb4a3;
	#20
	A = 16'hb55e;
	B = 16'hb466;
	ans = 16'h2de7;
	#20
	A = 16'hb51d;
	B = 16'h35b4;
	ans = 16'haf4a;
	#20
	A = 16'h1df6;
	B = 16'h38b7;
	ans = 16'h1b07;
	#20
	A = 16'h31e4;
	B = 16'hb591;
	ans = 16'hac19;
	#20
	A = 16'h3a90;
	B = 16'hb78b;
	ans = 16'hb630;
	#20
	A = 16'h24f0;
	B = 16'h38f4;
	ans = 16'h221d;
	#20
	A = 16'hb20b;
	B = 16'hb4b7;
	ans = 16'h2b1f;
	#20
	A = 16'h2e3a;
	B = 16'hb9dc;
	ans = 16'hac8f;
	#20
	A = 16'hb8e2;
	B = 16'hb92b;
	ans = 16'h364f;
	#20
	A = 16'h34d1;
	B = 16'hb01a;
	ans = 16'ha8f0;
	#20
	A = 16'hbbac;
	B = 16'h3008;
	ans = 16'hafbb;
	#20
	A = 16'h3b41;
	B = 16'h3be0;
	ans = 16'h3b24;
	#20
	A = 16'hb806;
	B = 16'hba1a;
	ans = 16'h3623;
	#20
	A = 16'h3962;
	B = 16'h323f;
	ans = 16'h3034;
	#20
	A = 16'ha6fb;
	B = 16'hbb42;
	ans = 16'h2655;
	#20
	A = 16'h3909;
	B = 16'hb8e7;
	ans = 16'hb62c;
	#20
	A = 16'h38fc;
	B = 16'ha5ae;
	ans = 16'ha314;
	#20
	A = 16'h36a7;
	B = 16'hbb08;
	ans = 16'hb5d9;
	#20
	A = 16'h38cf;
	B = 16'h29c9;
	ans = 16'h26f4;
	#20
	A = 16'h3322;
	B = 16'h3267;
	ans = 16'h29b5;
	#20
	A = 16'h3b14;
	B = 16'h3adf;
	ans = 16'h3a14;
	#20
	A = 16'hb841;
	B = 16'h31e2;
	ans = 16'hae42;
	#20
	A = 16'h3894;
	B = 16'hb428;
	ans = 16'hb0c2;
	#20
	A = 16'hb4b6;
	B = 16'h383a;
	ans = 16'hb0fa;
	#20
	A = 16'haa5b;
	B = 16'h3b86;
	ans = 16'ha9fa;
	#20
	A = 16'hb5d1;
	B = 16'h3525;
	ans = 16'haf7b;
	#20
	A = 16'hb5cb;
	B = 16'hb843;
	ans = 16'h322c;
	#20
	A = 16'ha8c2;
	B = 16'h26f9;
	ans = 16'h9426;
	#20
	A = 16'hb6de;
	B = 16'h3900;
	ans = 16'hb44b;
	#20
	A = 16'hb112;
	B = 16'hb9fb;
	ans = 16'h2f95;
	#20
	A = 16'h314e;
	B = 16'hadea;
	ans = 16'ha3d8;
	#20
	A = 16'hb846;
	B = 16'hbbad;
	ans = 16'h381a;
	#20
	A = 16'h3881;
	B = 16'ha799;
	ans = 16'ha447;
	#20
	A = 16'h3ab7;
	B = 16'hb706;
	ans = 16'hb5e5;
	#20
	A = 16'h39a2;
	B = 16'h3a5a;
	ans = 16'h3879;
	#20
	A = 16'hba5b;
	B = 16'hba84;
	ans = 16'h392d;
	#20
	A = 16'h39c6;
	B = 16'h3559;
	ans = 16'h33b8;
	#20
	A = 16'hb77c;
	B = 16'h320f;
	ans = 16'hadab;
	#20
	A = 16'hb5f1;
	B = 16'hba9c;
	ans = 16'h34e9;
	#20
	A = 16'h38e8;
	B = 16'h3a0f;
	ans = 16'h376e;
	#20
	A = 16'h3adf;
	B = 16'h3b6f;
	ans = 16'h3a62;
	#20
	A = 16'hb287;
	B = 16'h3039;
	ans = 16'ha6e4;
	#20
	A = 16'hbb30;
	B = 16'hb974;
	ans = 16'h38e6;
	#20
	A = 16'h39de;
	B = 16'h37e8;
	ans = 16'h35cc;
	#20
	A = 16'h3943;
	B = 16'h3afe;
	ans = 16'h3899;
	#20
	A = 16'h3a1e;
	B = 16'h389a;
	ans = 16'h370a;
	#20
	A = 16'h379a;
	B = 16'hb9cd;
	ans = 16'hb583;
	#20
	A = 16'hace0;
	B = 16'h3b21;
	ans = 16'hac58;
	#20
	A = 16'h3b64;
	B = 16'h3631;
	ans = 16'h35b8;
	#20
	A = 16'h3979;
	B = 16'h3aae;
	ans = 16'h3892;
	#20
	A = 16'h3604;
	B = 16'hbaf9;
	ans = 16'hb53e;
	#20
	A = 16'h3aaf;
	B = 16'h3456;
	ans = 16'h333f;
	#20
	A = 16'h3390;
	B = 16'h3a36;
	ans = 16'h31df;
	#20
	A = 16'h3311;
	B = 16'h2f4e;
	ans = 16'h2674;
	#20
	A = 16'hb4c5;
	B = 16'hb8bd;
	ans = 16'h31a6;
	#20
	A = 16'h3b48;
	B = 16'hb7e8;
	ans = 16'hb732;
	#20
	A = 16'hb990;
	B = 16'hb493;
	ans = 16'h325c;
	#20
	A = 16'hac21;
	B = 16'h3874;
	ans = 16'ha899;
	#20
	A = 16'h383e;
	B = 16'h3848;
	ans = 16'h348a;
	#20
	A = 16'hb646;
	B = 16'h29d6;
	ans = 16'ha494;
	#20
	A = 16'hb857;
	B = 16'hb959;
	ans = 16'h35cd;
	#20
	A = 16'hb910;
	B = 16'hba92;
	ans = 16'h3828;
	#20
	A = 16'hb5f7;
	B = 16'h36e1;
	ans = 16'hb121;
	#20
	A = 16'h3b47;
	B = 16'h2731;
	ans = 16'h268b;
	#20
	A = 16'hb8f9;
	B = 16'hb454;
	ans = 16'h3161;
	#20
	A = 16'hbbd0;
	B = 16'hb470;
	ans = 16'h3455;
	#20
	A = 16'hb392;
	B = 16'h3740;
	ans = 16'haedc;
	#20
	A = 16'hb9f1;
	B = 16'hbb4c;
	ans = 16'h396b;
	#20
	A = 16'h3495;
	B = 16'hb76c;
	ans = 16'hb040;
	#20
	A = 16'h3506;
	B = 16'hb8e9;
	ans = 16'hb22b;
	#20
	A = 16'hb5f9;
	B = 16'h2bc1;
	ans = 16'ha5ca;
	#20
	A = 16'h382f;
	B = 16'h348e;
	ans = 16'h30c4;
	#20
	A = 16'h3945;
	B = 16'h3a54;
	ans = 16'h382b;
	#20
	A = 16'h297e;
	B = 16'hbab8;
	ans = 16'ha89d;
	#20
	A = 16'h2dc4;
	B = 16'h372c;
	ans = 16'h292b;
	#20
	A = 16'h378d;
	B = 16'h36da;
	ans = 16'h3278;
	#20
	A = 16'h3925;
	B = 16'hb8f1;
	ans = 16'hb65b;
	#20
	A = 16'h3ae7;
	B = 16'h3883;
	ans = 16'h37c9;
	#20
	A = 16'h39a6;
	B = 16'h2072;
	ans = 16'h1e47;
	#20
	A = 16'h3a02;
	B = 16'h3242;
	ans = 16'h30b3;
	#20
	A = 16'h3a42;
	B = 16'hbad9;
	ans = 16'hb95b;
	#20
	A = 16'hac7d;
	B = 16'ha9a6;
	ans = 16'h1a57;
	#20
	A = 16'hba43;
	B = 16'h343b;
	ans = 16'hb29f;
	#20
	A = 16'h35ba;
	B = 16'h382f;
	ans = 16'h31fd;
	#20
	A = 16'h37cf;
	B = 16'h3923;
	ans = 16'h3504;
	#20
	A = 16'hb8c2;
	B = 16'h2d69;
	ans = 16'haa6f;
	#20
	A = 16'h3b83;
	B = 16'hb911;
	ans = 16'hb8c2;
	#20
	A = 16'hb422;
	B = 16'haf96;
	ans = 16'h27d6;
	#20
	A = 16'h3a3d;
	B = 16'h3391;
	ans = 16'h31e6;
	#20
	A = 16'h362c;
	B = 16'h386e;
	ans = 16'h32d6;
	#20
	A = 16'hae74;
	B = 16'hb983;
	ans = 16'h2c72;
	#20
	A = 16'h3bb9;
	B = 16'h377e;
	ans = 16'h373c;
	#20
	A = 16'hba08;
	B = 16'h3b52;
	ans = 16'hb985;
	#20
	A = 16'hba88;
	B = 16'hb3eb;
	ans = 16'h3277;
	#20
	A = 16'h3952;
	B = 16'h3b0c;
	ans = 16'h38b0;
	#20
	A = 16'h382f;
	B = 16'h3a6f;
	ans = 16'h36bb;
	#20
	A = 16'h3b21;
	B = 16'hb62e;
	ans = 16'hb582;
	#20
	A = 16'hbb81;
	B = 16'hadc4;
	ans = 16'h2d68;
	#20
	A = 16'hb430;
	B = 16'hb6c4;
	ans = 16'h2f15;
	#20
	A = 16'hb724;
	B = 16'hb05b;
	ans = 16'h2bc6;
	#20
	A = 16'h35eb;
	B = 16'h340c;
	ans = 16'h2dfd;
	#20
	A = 16'h3b7c;
	B = 16'hbb87;
	ans = 16'hbb0b;
	#20
	A = 16'h30d8;
	B = 16'hb591;
	ans = 16'haabe;
	#20
	A = 16'hb907;
	B = 16'hba89;
	ans = 16'h381b;
	#20
	A = 16'h39c3;
	B = 16'hb41e;
	ans = 16'hb1ee;
	#20
	A = 16'h35b4;
	B = 16'h2650;
	ans = 16'h2080;
	#20
	A = 16'h369f;
	B = 16'hb382;
	ans = 16'hae37;
	#20
	A = 16'h34c9;
	B = 16'h3b3d;
	ans = 16'h3454;
	#20
	A = 16'hba67;
	B = 16'h2d0a;
	ans = 16'hac08;
	#20
	A = 16'hb87b;
	B = 16'h3a84;
	ans = 16'hb74c;
	#20
	A = 16'h2f21;
	B = 16'hb331;
	ans = 16'ha669;
	#20
	A = 16'hb849;
	B = 16'h3874;
	ans = 16'hb4c5;
	#20
	A = 16'h3904;
	B = 16'h37ef;
	ans = 16'h34f9;
	#20
	A = 16'h33f3;
	B = 16'h34d6;
	ans = 16'h2cce;
	#20
	A = 16'hb071;
	B = 16'hb800;
	ans = 16'h2c71;
	#20
	A = 16'hba95;
	B = 16'h39d9;
	ans = 16'hb8d0;
	#20
	A = 16'h2579;
	B = 16'h3262;
	ans = 16'h1c5e;
	#20
	A = 16'h3a82;
	B = 16'hba8d;
	ans = 16'hb954;
	#20
	A = 16'hadcf;
	B = 16'hb925;
	ans = 16'h2b78;
	#20
	A = 16'h329d;
	B = 16'hb32c;
	ans = 16'ha9ee;
	#20
	A = 16'hb88e;
	B = 16'h392b;
	ans = 16'hb5e2;
	#20
	A = 16'h2d72;
	B = 16'hbb40;
	ans = 16'hacef;
	#20
	A = 16'hb5e9;
	B = 16'h3570;
	ans = 16'hb004;
	#20
	A = 16'h3067;
	B = 16'h3b17;
	ans = 16'h2fce;
	#20
	A = 16'hba84;
	B = 16'h3b5b;
	ans = 16'hb9fe;
	#20
	A = 16'hb988;
	B = 16'hba12;
	ans = 16'h3832;
	#20
	A = 16'h3ba9;
	B = 16'h387e;
	ans = 16'h384d;
	#20
	A = 16'h3992;
	B = 16'h3be0;
	ans = 16'h397c;
	#20
	A = 16'hb828;
	B = 16'hb369;
	ans = 16'h2fb3;
	#20
	A = 16'hb1f0;
	B = 16'haee7;
	ans = 16'h251f;
	#20
	A = 16'hb705;
	B = 16'h34fe;
	ans = 16'hb061;
	#20
	A = 16'h380a;
	B = 16'h3723;
	ans = 16'h3335;
	#20
	A = 16'h3a98;
	B = 16'h320c;
	ans = 16'h30fc;
	#20
	A = 16'h3595;
	B = 16'h3b3b;
	ans = 16'h350c;
	#20
	A = 16'hb874;
	B = 16'haccc;
	ans = 16'h2957;
	#20
	A = 16'hb890;
	B = 16'h3627;
	ans = 16'hb304;
	#20
	A = 16'h2ccc;
	B = 16'hbbd7;
	ans = 16'hacb3;
	#20
	A = 16'h31d8;
	B = 16'h3ba8;
	ans = 16'h3198;
	#20
	A = 16'h3b3a;
	B = 16'ha687;
	ans = 16'ha5e5;
	#20
	A = 16'h385f;
	B = 16'h39f6;
	ans = 16'h3684;
	#20
	A = 16'hb82a;
	B = 16'h9965;
	ans = 16'h159e;
	#20
	A = 16'hb92f;
	B = 16'hb45e;
	ans = 16'h31a9;
	#20
	A = 16'h3917;
	B = 16'hb545;
	ans = 16'hb2b5;
	#20
	A = 16'h3b83;
	B = 16'h3ae4;
	ans = 16'h3a78;
	#20
	A = 16'h34e9;
	B = 16'h2d57;
	ans = 16'h268e;
	#20
	A = 16'hba71;
	B = 16'h9fb7;
	ans = 16'h1e36;
	#20
	A = 16'h3872;
	B = 16'h3a25;
	ans = 16'h36d4;
	#20
	A = 16'h2cfd;
	B = 16'h387c;
	ans = 16'h2998;
	#20
	A = 16'h36ad;
	B = 16'habef;
	ans = 16'ha69f;
	#20
	A = 16'hb61f;
	B = 16'hb433;
	ans = 16'h2e6d;
	#20
	A = 16'h3464;
	B = 16'hb456;
	ans = 16'hacc2;
	#20
	A = 16'h396b;
	B = 16'h3411;
	ans = 16'h3182;
	#20
	A = 16'hb8a5;
	B = 16'h36a4;
	ans = 16'hb3b6;
	#20
	A = 16'h306b;
	B = 16'hbb71;
	ans = 16'hb01c;
	#20
	A = 16'h3674;
	B = 16'hb8da;
	ans = 16'hb3d4;
	#20
	A = 16'hb96e;
	B = 16'h3105;
	ans = 16'haed0;
	#20
	A = 16'hb651;
	B = 16'hb7c6;
	ans = 16'h3223;
	#20
	A = 16'hb9d1;
	B = 16'h27c5;
	ans = 16'ha5a6;
	#20
	A = 16'h3aa5;
	B = 16'hbbdb;
	ans = 16'hba86;
	#20
	A = 16'hb569;
	B = 16'h3ab1;
	ans = 16'hb486;
	#20
	A = 16'hbb7a;
	B = 16'hb18d;
	ans = 16'h3130;
	#20
	A = 16'hb90d;
	B = 16'h35ac;
	ans = 16'hb329;
	#20
	A = 16'had17;
	B = 16'hb3c8;
	ans = 16'h24f3;
	#20
	A = 16'h2a93;
	B = 16'haf2c;
	ans = 16'h9de5;
	#20
	A = 16'h3b68;
	B = 16'hb78e;
	ans = 16'hb6fe;
	#20
	A = 16'h3978;
	B = 16'hb0ed;
	ans = 16'haebc;
	#20
	A = 16'hb0c8;
	B = 16'h3878;
	ans = 16'had57;
	#20
	A = 16'h3723;
	B = 16'h2d25;
	ans = 16'h2897;
	#20
	A = 16'haf2d;
	B = 16'h3ac0;
	ans = 16'hae0e;
	#20
	A = 16'hb8ab;
	B = 16'ha782;
	ans = 16'h2461;
	#20
	A = 16'hbba9;
	B = 16'hb45a;
	ans = 16'h342b;
	#20
	A = 16'h241a;
	B = 16'h3ac8;
	ans = 16'h22f4;
	#20
	A = 16'hb884;
	B = 16'hb7c4;
	ans = 16'h3462;
	#20
	A = 16'hb9b0;
	B = 16'hb1b4;
	ans = 16'h300e;
	#20
	A = 16'h350c;
	B = 16'h3a6a;
	ans = 16'h340c;
	#20
	A = 16'h3b2e;
	B = 16'ha61c;
	ans = 16'ha57c;
	#20
	A = 16'h3b41;
	B = 16'h2571;
	ans = 16'h24ef;
	#20
	A = 16'hb221;
	B = 16'hac93;
	ans = 16'h2302;
	#20
	A = 16'h361e;
	B = 16'h368f;
	ans = 16'h3104;
	#20
	A = 16'h31c9;
	B = 16'h3b4e;
	ans = 16'h3148;
	#20
	A = 16'h3591;
	B = 16'ha92f;
	ans = 16'ha337;
	#20
	A = 16'hb441;
	B = 16'h3546;
	ans = 16'had9c;
	#20
	A = 16'h3856;
	B = 16'h390c;
	ans = 16'h3579;
	#20
	A = 16'h2e54;
	B = 16'hb998;
	ans = 16'hac6d;
	#20
	A = 16'hbabb;
	B = 16'h3ab8;
	ans = 16'hb9a7;
	#20
	A = 16'hb613;
	B = 16'hb5ee;
	ans = 16'h3081;
	#20
	A = 16'h3a67;
	B = 16'h3b67;
	ans = 16'h39ed;
	#20
	A = 16'h3afc;
	B = 16'h3b18;
	ans = 16'h3a31;
	#20
	A = 16'hb974;
	B = 16'hbacc;
	ans = 16'h38a2;
	#20
	A = 16'h379c;
	B = 16'h340b;
	ans = 16'h2fb1;
	#20
	A = 16'h3426;
	B = 16'hbb9f;
	ans = 16'hb3e7;
	#20
	A = 16'h31e4;
	B = 16'hb583;
	ans = 16'hac0f;
	#20
	A = 16'h3ae8;
	B = 16'hb687;
	ans = 16'hb5a3;
	#20
	A = 16'hb08a;
	B = 16'h395d;
	ans = 16'hae16;
	#20
	A = 16'h3170;
	B = 16'hb5dc;
	ans = 16'habf7;
	#20
	A = 16'h3537;
	B = 16'hb00a;
	ans = 16'ha944;
	#20
	A = 16'h353a;
	B = 16'h2f28;
	ans = 16'h28ad;
	#20
	A = 16'h3689;
	B = 16'ha992;
	ans = 16'ha48d;
	#20
	A = 16'hb3d5;
	B = 16'ha392;
	ans = 16'h1b69;
	#20
	A = 16'hae76;
	B = 16'hb871;
	ans = 16'h2b2d;
	#20
	A = 16'hb016;
	B = 16'haf32;
	ans = 16'h235a;
	#20
	A = 16'hb9b0;
	B = 16'h33c5;
	ans = 16'hb186;
	#20
	A = 16'h34a0;
	B = 16'hafd5;
	ans = 16'ha887;
	#20
	A = 16'h37d0;
	B = 16'hb810;
	ans = 16'hb3ef;
	#20
	A = 16'hb49b;
	B = 16'hb867;
	ans = 16'h3112;
	#20
	A = 16'h3a7b;
	B = 16'h31cd;
	ans = 16'h30b3;
	#20
	A = 16'hbaa7;
	B = 16'h365e;
	ans = 16'hb54b;
	#20
	A = 16'h367b;
	B = 16'hb940;
	ans = 16'hb441;
	#20
	A = 16'h323e;
	B = 16'hb905;
	ans = 16'hafd5;
	#20
	A = 16'h3961;
	B = 16'h3bd8;
	ans = 16'h3946;
	#20
	A = 16'h3878;
	B = 16'hba60;
	ans = 16'hb71f;
	#20
	A = 16'h3510;
	B = 16'hb847;
	ans = 16'hb16a;
	#20
	A = 16'hb59f;
	B = 16'h3a6b;
	ans = 16'hb482;
	#20
	A = 16'hb982;
	B = 16'h3621;
	ans = 16'hb438;
	#20
	A = 16'h2cbb;
	B = 16'hb5f7;
	ans = 16'ha70e;
	#20
	A = 16'h35f6;
	B = 16'h3b85;
	ans = 16'h359a;
	#20
	A = 16'h3a41;
	B = 16'hb971;
	ans = 16'hb841;
	#20
	A = 16'h3ad2;
	B = 16'hadda;
	ans = 16'hacfd;
	#20
	A = 16'h382e;
	B = 16'haff0;
	ans = 16'hac26;
	#20
	A = 16'hbab1;
	B = 16'hb83a;
	ans = 16'h3712;
	#20
	A = 16'h340c;
	B = 16'h3a7d;
	ans = 16'h3290;
	#20
	A = 16'h3675;
	B = 16'h38a8;
	ans = 16'h3384;
	#20
	A = 16'h3b0f;
	B = 16'h2de0;
	ans = 16'h2d2f;
	#20
	A = 16'h36d5;
	B = 16'h398e;
	ans = 16'h34be;
	#20
	A = 16'hb8fe;
	B = 16'hb863;
	ans = 16'h357a;
	#20
	A = 16'hb53f;
	B = 16'hb99e;
	ans = 16'h335e;
	#20
	A = 16'h33ff;
	B = 16'hb675;
	ans = 16'hae74;
	#20
	A = 16'h3997;
	B = 16'h38ba;
	ans = 16'h369b;
	#20
	A = 16'hb23f;
	B = 16'h1778;
	ans = 16'h8dd5;
	#20
	A = 16'hb991;
	B = 16'hbae6;
	ans = 16'h38cd;
	#20
	A = 16'h33e4;
	B = 16'h3361;
	ans = 16'h2b47;
	#20
	A = 16'hba19;
	B = 16'h390d;
	ans = 16'hb7b3;
	#20
	A = 16'h3a79;
	B = 16'h322c;
	ans = 16'h30fe;
	#20
	A = 16'hb89a;
	B = 16'hb9cb;
	ans = 16'h36aa;
	#20
	A = 16'h3a93;
	B = 16'h3a88;
	ans = 16'h395e;
	#20
	A = 16'h3b16;
	B = 16'hb1fa;
	ans = 16'hb14b;
	#20
	A = 16'h3848;
	B = 16'had03;
	ans = 16'ha95d;
	#20
	A = 16'hb6b3;
	B = 16'h3b4b;
	ans = 16'hb61b;
	#20
	A = 16'ha87a;
	B = 16'hb4bd;
	ans = 16'h214e;
	#20
	A = 16'hb03b;
	B = 16'ha0e5;
	ans = 16'h152d;
	#20
	A = 16'hbb2a;
	B = 16'h38ce;
	ans = 16'hb84d;
	#20
	A = 16'hb58f;
	B = 16'h3705;
	ans = 16'hb0e1;
	#20
	A = 16'hbb04;
	B = 16'h3a69;
	ans = 16'hb99f;
	#20
	A = 16'h3a81;
	B = 16'hbacb;
	ans = 16'hb986;
	#20
	A = 16'hae87;
	B = 16'ha2a5;
	ans = 16'h156c;
	#20
	A = 16'hb4c9;
	B = 16'h3440;
	ans = 16'had16;
	#20
	A = 16'h3867;
	B = 16'haf17;
	ans = 16'habce;
	#20
	A = 16'h388e;
	B = 16'h34aa;
	ans = 16'h3150;
	#20
	A = 16'hb99b;
	B = 16'hbae5;
	ans = 16'h38d5;
	#20
	A = 16'hb105;
	B = 16'hb8ee;
	ans = 16'h2e30;
	#20
	A = 16'h9867;
	B = 16'h339f;
	ans = 16'h9032;
	#20
	A = 16'h38cc;
	B = 16'hbbd1;
	ans = 16'hb8b0;
	#20
	A = 16'hb9e4;
	B = 16'h2ef9;
	ans = 16'had22;
	#20
	A = 16'hb116;
	B = 16'hb715;
	ans = 16'h2c81;
	#20
	A = 16'h3a60;
	B = 16'h35f9;
	ans = 16'h34c2;
	#20
	A = 16'haa2b;
	B = 16'h3708;
	ans = 16'ha56c;
	#20
	A = 16'hb538;
	B = 16'h39dd;
	ans = 16'hb3a6;
	#20
	A = 16'h34d3;
	B = 16'h344a;
	ans = 16'h2d2c;
	#20
	A = 16'hb9d5;
	B = 16'hb9b3;
	ans = 16'h3828;
	#20
	A = 16'hb743;
	B = 16'hb9da;
	ans = 16'h3550;
	#20
	A = 16'h2c10;
	B = 16'h3719;
	ans = 16'h2735;
	#20
	A = 16'hb679;
	B = 16'hb371;
	ans = 16'h2e05;
	#20
	A = 16'h365e;
	B = 16'h39fa;
	ans = 16'h34c2;
	#20
	A = 16'h2c81;
	B = 16'h3b32;
	ans = 16'h2c0d;
	#20
	A = 16'h3b2a;
	B = 16'h311c;
	ans = 16'h3093;
	#20
	A = 16'hb799;
	B = 16'h3bc7;
	ans = 16'hb763;
	#20
	A = 16'hbb8e;
	B = 16'h801a;
	ans = 16'h19;
	#20
	A = 16'hbb95;
	B = 16'h3a24;
	ans = 16'hb9d2;
	#20
	A = 16'hb697;
	B = 16'h2784;
	ans = 16'ha231;
	#20
	A = 16'hb24b;
	B = 16'h3be7;
	ans = 16'hb237;
	#20
	A = 16'hb79f;
	B = 16'hb3b5;
	ans = 16'h2f58;
	#20
	A = 16'h2d4d;
	B = 16'hb7e8;
	ans = 16'ha93d;
	#20
	A = 16'hbafb;
	B = 16'hb5ef;
	ans = 16'h352d;
	#20
	A = 16'h30af;
	B = 16'hb89e;
	ans = 16'had68;
	#20
	A = 16'hb8e3;
	B = 16'h352b;
	ans = 16'hb250;
	#20
	A = 16'h3929;
	B = 16'h3be6;
	ans = 16'h3918;
	#20
	A = 16'h38eb;
	B = 16'hba8f;
	ans = 16'hb808;
	#20
	A = 16'h39df;
	B = 16'hb207;
	ans = 16'hb06c;
	#20
	A = 16'h3302;
	B = 16'hba95;
	ans = 16'hb1c4;
	#20
	A = 16'hbbf2;
	B = 16'hba5b;
	ans = 16'h3a50;
	#20
	A = 16'h3b16;
	B = 16'h3106;
	ans = 16'h3073;
	#20
	A = 16'h3966;
	B = 16'hb559;
	ans = 16'hb338;
	#20
	A = 16'h3575;
	B = 16'hbbfe;
	ans = 16'hb574;
	#20
	A = 16'h3ba7;
	B = 16'hacdb;
	ans = 16'haca5;
	#20
	A = 16'hae9d;
	B = 16'h39b6;
	ans = 16'hacb9;
	#20
	A = 16'hba18;
	B = 16'h2c15;
	ans = 16'haa38;
	#20
	A = 16'h364d;
	B = 16'hb3bf;
	ans = 16'hae1a;
	#20
	A = 16'ha757;
	B = 16'h2e0d;
	ans = 16'h998d;
	#20
	A = 16'hba12;
	B = 16'hae49;
	ans = 16'h2cc5;
	#20
	A = 16'hb94c;
	B = 16'h34ae;
	ans = 16'hb232;
	#20
	A = 16'hb71a;
	B = 16'h38f9;
	ans = 16'hb46a;
	#20
	A = 16'h3931;
	B = 16'h347d;
	ans = 16'h31d3;
	#20
	A = 16'h34ab;
	B = 16'h38f3;
	ans = 16'h31c7;
	#20
	A = 16'had9a;
	B = 16'h3914;
	ans = 16'hab1d;
	#20
	A = 16'hb4af;
	B = 16'h3b21;
	ans = 16'hb42c;
	#20
	A = 16'h35d0;
	B = 16'h9e4f;
	ans = 16'h9895;
	#20
	A = 16'hba27;
	B = 16'hb1eb;
	ans = 16'h308d;
	#20
	A = 16'h3222;
	B = 16'hbb0a;
	ans = 16'hb165;
	#20
	A = 16'h3004;
	B = 16'hbab9;
	ans = 16'haec0;
	#20
	A = 16'h3ad9;
	B = 16'h39e1;
	ans = 16'h3908;
	#20
	A = 16'h33a0;
	B = 16'hb7a1;
	ans = 16'haf45;
	#20
	A = 16'hb5f3;
	B = 16'h1827;
	ans = 16'h922d;
	#20
	A = 16'hb4ff;
	B = 16'h345c;
	ans = 16'had72;
	#20
	A = 16'h3412;
	B = 16'hb8e5;
	ans = 16'hb0fb;
	#20
	A = 16'h39f1;
	B = 16'h35f8;
	ans = 16'h346f;
	#20
	A = 16'h320c;
	B = 16'h399f;
	ans = 16'h3040;
	#20
	A = 16'h34a8;
	B = 16'h3565;
	ans = 16'h2e48;
	#20
	A = 16'hbb31;
	B = 16'h1da0;
	ans = 16'h9d0e;
	#20
	A = 16'h3bfe;
	B = 16'h3197;
	ans = 16'h3196;
	#20
	A = 16'hadcf;
	B = 16'h3b90;
	ans = 16'had7e;
	#20
	A = 16'hb3ad;
	B = 16'h36d6;
	ans = 16'hae8f;
	#20
	A = 16'hbbab;
	B = 16'hadfa;
	ans = 16'h2dba;
	#20
	A = 16'hb347;
	B = 16'h2d87;
	ans = 16'ha507;
	#20
	A = 16'h2d8c;
	B = 16'had41;
	ans = 16'h9f49;
	#20
	A = 16'h3097;
	B = 16'h3bd1;
	ans = 16'h307c;
	#20
	A = 16'hb9eb;
	B = 16'hb68a;
	ans = 16'h34d6;
	#20
	A = 16'h35ed;
	B = 16'h306b;
	ans = 16'h2a8c;
	#20
	A = 16'hb418;
	B = 16'h2b03;
	ans = 16'ha32d;
	#20
	A = 16'hb6e8;
	B = 16'hba1b;
	ans = 16'h3545;
	#20
	A = 16'h3b58;
	B = 16'hae4a;
	ans = 16'hadc6;
	#20
	A = 16'hb536;
	B = 16'hba64;
	ans = 16'h342a;
	#20
	A = 16'h31b5;
	B = 16'hb78b;
	ans = 16'had62;
	#20
	A = 16'h2d66;
	B = 16'h2ec5;
	ans = 16'h2091;
	#20
	A = 16'h3895;
	B = 16'hbaf4;
	ans = 16'hb7f7;
	#20
	A = 16'h3987;
	B = 16'h3364;
	ans = 16'h311b;
	#20
	A = 16'hbafe;
	B = 16'hbba4;
	ans = 16'h3aae;
	#20
	A = 16'h2d66;
	B = 16'h3a53;
	ans = 16'h2c45;
	#20
	A = 16'h3a37;
	B = 16'hb890;
	ans = 16'hb717;
	#20
	A = 16'hb9a3;
	B = 16'hbb90;
	ans = 16'h3954;
	#20
	A = 16'h283a;
	B = 16'h3167;
	ans = 16'h1db5;
	#20
	A = 16'hb277;
	B = 16'h3137;
	ans = 16'ha837;
	#20
	A = 16'hbb4c;
	B = 16'hba15;
	ans = 16'h398c;
	#20
	A = 16'hbb3e;
	B = 16'hb732;
	ans = 16'h3684;
	#20
	A = 16'h3ad3;
	B = 16'hbb73;
	ans = 16'hba5b;
	#20
	A = 16'hb5ab;
	B = 16'hb9e8;
	ans = 16'h342f;
	#20
	A = 16'hb3cb;
	B = 16'h3b36;
	ans = 16'hb306;
	#20
	A = 16'hb6e1;
	B = 16'h34d5;
	ans = 16'hb028;
	#20
	A = 16'hb938;
	B = 16'h29ef;
	ans = 16'ha7be;
	#20
	A = 16'hba5a;
	B = 16'hbaca;
	ans = 16'h3964;
	#20
	A = 16'hb547;
	B = 16'hbafa;
	ans = 16'h349a;
	#20
	A = 16'hb990;
	B = 16'hbb24;
	ans = 16'h38f7;
	#20
	A = 16'h34a0;
	B = 16'h3aba;
	ans = 16'h33c7;
	#20
	A = 16'h39d7;
	B = 16'h38ed;
	ans = 16'h3731;
	#20
	A = 16'h346f;
	B = 16'hb728;
	ans = 16'hafef;
	#20
	A = 16'hb4ca;
	B = 16'hba75;
	ans = 16'h33bb;
	#20
	A = 16'h385b;
	B = 16'hb8a2;
	ans = 16'hb50b;
	#20
	A = 16'hbaf2;
	B = 16'ha75c;
	ans = 16'h2664;
	#20
	A = 16'ha91a;
	B = 16'hb0a9;
	ans = 16'h1df2;
	#20
	A = 16'hb619;
	B = 16'h3a0f;
	ans = 16'hb49e;
	#20
	A = 16'hb44c;
	B = 16'hbb16;
	ans = 16'h339d;
	#20
	A = 16'h36e7;
	B = 16'h3668;
	ans = 16'h3187;
	#20
	A = 16'hb6b8;
	B = 16'hb3b8;
	ans = 16'h2e7c;
	#20
	A = 16'hbbf4;
	B = 16'h3334;
	ans = 16'hb329;
	#20
	A = 16'hb556;
	B = 16'hbb5f;
	ans = 16'h34eb;
	#20
	A = 16'hb55c;
	B = 16'h76d;
	ans = 16'h827d;
	#20
	A = 16'hb9a6;
	B = 16'had39;
	ans = 16'h2b60;
	#20
	A = 16'hb87e;
	B = 16'hba00;
	ans = 16'h36bd;
	#20
	A = 16'hb5bb;
	B = 16'h3b7e;
	ans = 16'hb55e;
	#20
	A = 16'hba4c;
	B = 16'hae16;
	ans = 16'h2cca;
	#20
	A = 16'hb903;
	B = 16'h356c;
	ans = 16'hb2cb;
	#20
	A = 16'h3b39;
	B = 16'hb8bd;
	ans = 16'hb847;
	#20
	A = 16'h3a91;
	B = 16'hb7f7;
	ans = 16'hb68a;
	#20
	A = 16'hb3bb;
	B = 16'hb8b7;
	ans = 16'h308e;
	#20
	A = 16'h3bb8;
	B = 16'h34e2;
	ans = 16'h34b6;
	#20
	A = 16'hbb82;
	B = 16'h395f;
	ans = 16'hb90a;
	#20
	A = 16'hbab7;
	B = 16'hb8ce;
	ans = 16'h3808;
	#20
	A = 16'h395b;
	B = 16'h3bd6;
	ans = 16'h393f;
	#20
	A = 16'hbbbc;
	B = 16'h31bf;
	ans = 16'hb18e;
	#20
	A = 16'h3552;
	B = 16'had65;
	ans = 16'ha72d;
	#20
	A = 16'h315b;
	B = 16'h31c0;
	ans = 16'h27b3;
	#20
	A = 16'ha854;
	B = 16'hac72;
	ans = 16'h18cf;
	#20
	A = 16'h3209;
	B = 16'h3519;
	ans = 16'h2bb1;
	#20
	A = 16'hb7df;
	B = 16'h3aec;
	ans = 16'hb6cf;
	#20
	A = 16'hb9e4;
	B = 16'hb9dc;
	ans = 16'h3850;
	#20
	A = 16'h3baa;
	B = 16'hb7ce;
	ans = 16'hb77a;
	#20
	A = 16'h3508;
	B = 16'hb3f2;
	ans = 16'hacff;
	#20
	A = 16'h27b8;
	B = 16'hba42;
	ans = 16'ha60a;
	#20
	A = 16'hbb83;
	B = 16'h3ada;
	ans = 16'hba6f;
	#20
	A = 16'h38a1;
	B = 16'h3bca;
	ans = 16'h3882;
	#20
	A = 16'h3366;
	B = 16'h3bb5;
	ans = 16'h3321;
	#20
	A = 16'h3418;
	B = 16'hbaed;
	ans = 16'hb317;
	#20
	A = 16'had62;
	B = 16'h377a;
	ans = 16'ha908;
	#20
	A = 16'haf7d;
	B = 16'h389a;
	ans = 16'hac4f;
	#20
	A = 16'h3038;
	B = 16'hbae4;
	ans = 16'haf44;
	#20
	A = 16'h3725;
	B = 16'had18;
	ans = 16'ha88d;
	#20
	A = 16'h389d;
	B = 16'h2d36;
	ans = 16'h2a03;
	#20
	A = 16'h32da;
	B = 16'h2d5e;
	ans = 16'h2499;
	#20
	A = 16'h38cc;
	B = 16'h3a6d;
	ans = 16'h37b5;
	#20
	A = 16'h3b67;
	B = 16'h3711;
	ans = 16'h368a;
	#20
	A = 16'hb474;
	B = 16'h38d7;
	ans = 16'hb163;
	#20
	A = 16'h359c;
	B = 16'h3bfc;
	ans = 16'h3599;
	#20
	A = 16'hbb91;
	B = 16'hb2de;
	ans = 16'h327f;
	#20
	A = 16'hb70e;
	B = 16'h3bb4;
	ans = 16'hb6cb;
	#20
	A = 16'hb412;
	B = 16'h3565;
	ans = 16'had7d;
	#20
	A = 16'h2924;
	B = 16'h3a44;
	ans = 16'h2807;
	#20
	A = 16'hb6ea;
	B = 16'h38d4;
	ans = 16'hb42c;
	#20
	A = 16'hbbef;
	B = 16'h3832;
	ans = 16'hb829;
	#20
	A = 16'h3aa9;
	B = 16'h1ebb;
	ans = 16'h1d9a;
	#20
	A = 16'h334c;
	B = 16'hb954;
	ans = 16'hb0dc;
	#20
	A = 16'ha8cf;
	B = 16'h3a0d;
	ans = 16'ha746;
	#20
	A = 16'hb2b6;
	B = 16'hba80;
	ans = 16'h3174;
	#20
	A = 16'hbae1;
	B = 16'h3a8d;
	ans = 16'hb9a2;
	#20
	A = 16'h3309;
	B = 16'hb8de;
	ans = 16'hb048;
	#20
	A = 16'h377b;
	B = 16'hb1db;
	ans = 16'had7a;
	#20
	A = 16'h3905;
	B = 16'h374e;
	ans = 16'h3495;
	#20
	A = 16'h3bfb;
	B = 16'h3095;
	ans = 16'h3092;
	#20
	A = 16'hb98b;
	B = 16'hb469;
	ans = 16'h321d;
	#20
	A = 16'h3987;
	B = 16'ha108;
	ans = 16'h9ef4;
	#20
	A = 16'h3aa1;
	B = 16'hb61b;
	ans = 16'hb50f;
	#20
	A = 16'hb81a;
	B = 16'h3842;
	ans = 16'hb45e;
	#20
	A = 16'h2b68;
	B = 16'h37d6;
	ans = 16'h2741;
	#20
	A = 16'hbbbb;
	B = 16'h3a1a;
	ans = 16'hb9e5;
	#20
	A = 16'h31ff;
	B = 16'hb9b0;
	ans = 16'hb043;
	#20
	A = 16'hb413;
	B = 16'hb4a3;
	ans = 16'h2cb9;
	#20
	A = 16'h3744;
	B = 16'hb5f5;
	ans = 16'hb169;
	#20
	A = 16'h14bd;
	B = 16'hb9c7;
	ans = 16'h92d8;
	#20
	A = 16'h3841;
	B = 16'hba9b;
	ans = 16'hb706;
	#20
	A = 16'h203b;
	B = 16'hba79;
	ans = 16'h9ed8;
	#20
	A = 16'h3b58;
	B = 16'h389b;
	ans = 16'h383a;
	#20
	A = 16'hb998;
	B = 16'h3857;
	ans = 16'hb612;
	#20
	A = 16'h35e9;
	B = 16'hb88e;
	ans = 16'hb2bb;
	#20
	A = 16'hb9bc;
	B = 16'hb8dc;
	ans = 16'h36f7;
	#20
	A = 16'hb8ab;
	B = 16'h2dc1;
	ans = 16'haab7;
	#20
	A = 16'h3979;
	B = 16'hb65a;
	ans = 16'hb458;
	#20
	A = 16'h3483;
	B = 16'h3827;
	ans = 16'h30af;
	#20
	A = 16'h38e5;
	B = 16'h2cf5;
	ans = 16'h2a11;
	#20
	A = 16'hb7c8;
	B = 16'hb34e;
	ans = 16'h2f1b;
	#20
	A = 16'hb9e6;
	B = 16'h3920;
	ans = 16'hb78f;
	#20
	A = 16'h3447;
	B = 16'hbad4;
	ans = 16'hb34d;
	#20
	A = 16'h37ca;
	B = 16'hb54b;
	ans = 16'hb127;
	#20
	A = 16'hb026;
	B = 16'hb7f2;
	ans = 16'h2c1f;
	#20
	A = 16'h39af;
	B = 16'hb0da;
	ans = 16'haee5;
	#20
	A = 16'hbb33;
	B = 16'hb842;
	ans = 16'h37aa;
	#20
	A = 16'h2e10;
	B = 16'hb39c;
	ans = 16'ha5c4;
	#20
	A = 16'hb9b3;
	B = 16'hb8a0;
	ans = 16'h3697;
	#20
	A = 16'habd7;
	B = 16'hb25b;
	ans = 16'h223a;
	#20
	A = 16'hb923;
	B = 16'hb9d7;
	ans = 16'h3780;
	#20
	A = 16'h3a57;
	B = 16'hb816;
	ans = 16'hb67a;
	#20
	A = 16'hb6ff;
	B = 16'h3b4f;
	ans = 16'hb664;
	#20
	A = 16'h3bcb;
	B = 16'h32ed;
	ans = 16'h32bf;
	#20
	A = 16'h2d6a;
	B = 16'h32ef;
	ans = 16'h24b1;
	#20
	A = 16'h34bb;
	B = 16'h2fa5;
	ans = 16'h2885;
	#20
	A = 16'h383d;
	B = 16'h34a0;
	ans = 16'h30e7;
	#20
	A = 16'h3a43;
	B = 16'hb92e;
	ans = 16'hb80e;
	#20
	A = 16'h36ff;
	B = 16'h2a71;
	ans = 16'h25a2;
	#20
	A = 16'hb2af;
	B = 16'hb908;
	ans = 16'h3034;
	#20
	A = 16'h2c04;
	B = 16'h36b7;
	ans = 16'h26be;
	#20
	A = 16'h370b;
	B = 16'h2e8a;
	ans = 16'h29c2;
	#20
	A = 16'h3a76;
	B = 16'h3aa2;
	ans = 16'h395b;
	#20
	A = 16'hb5d6;
	B = 16'h3baa;
	ans = 16'hb597;
	#20
	A = 16'hafa5;
	B = 16'hb060;
	ans = 16'h242e;
	#20
	A = 16'h387b;
	B = 16'h39d0;
	ans = 16'h3683;
	#20
	A = 16'hb56b;
	B = 16'hb68a;
	ans = 16'h306e;
	#20
	A = 16'h3915;
	B = 16'h3ae0;
	ans = 16'h385e;
	#20
	A = 16'h357b;
	B = 16'h399c;
	ans = 16'h33af;
	#20
	A = 16'haa1d;
	B = 16'h3b98;
	ans = 16'ha9ce;
	#20
	A = 16'hb8b0;
	B = 16'hb4fa;
	ans = 16'h31d5;
	#20
	A = 16'hab31;
	B = 16'hb90a;
	ans = 16'h2888;
	#20
	A = 16'h3bab;
	B = 16'h386a;
	ans = 16'h383b;
	#20
	A = 16'hb113;
	B = 16'hb82a;
	ans = 16'h2d48;
	#20
	A = 16'h2c24;
	B = 16'h3b0b;
	ans = 16'h2b4a;
	#20
	A = 16'hb810;
	B = 16'hb1c6;
	ans = 16'h2ddd;
	#20
	A = 16'h347d;
	B = 16'ha9c8;
	ans = 16'ha27d;
	#20
	A = 16'h3708;
	B = 16'h3495;
	ans = 16'h3007;
	#20
	A = 16'h3854;
	B = 16'hb315;
	ans = 16'hafaa;
	#20
	A = 16'hba8a;
	B = 16'h3a57;
	ans = 16'hb92f;
	#20
	A = 16'h3022;
	B = 16'hba1f;
	ans = 16'hae53;
	#20
	A = 16'hb226;
	B = 16'hb57f;
	ans = 16'h2c39;
	#20
	A = 16'hb5cf;
	B = 16'hb0f7;
	ans = 16'h2b36;
	#20
	A = 16'h3614;
	B = 16'h354b;
	ans = 16'h3005;
	#20
	A = 16'hb621;
	B = 16'h3578;
	ans = 16'hb031;
	#20
	A = 16'hbb84;
	B = 16'h39bf;
	ans = 16'hb966;
	#20
	A = 16'hbad1;
	B = 16'hb2d8;
	ans = 16'h31d5;
	#20
	A = 16'hba29;
	B = 16'hb851;
	ans = 16'h36a6;
	#20
	A = 16'h37cc;
	B = 16'h2011;
	ans = 16'h1bed;
	#20
	A = 16'h3657;
	B = 16'h35fc;
	ans = 16'h30be;
	#20
	A = 16'h344a;
	B = 16'h39f3;
	ans = 16'h3261;
	#20
	A = 16'h3888;
	B = 16'hbbf4;
	ans = 16'hb881;
	#20
	A = 16'hb941;
	B = 16'hba98;
	ans = 16'h3855;
	#20
	A = 16'hbbeb;
	B = 16'hb6b6;
	ans = 16'h36a4;
	#20
	A = 16'h305c;
	B = 16'hb041;
	ans = 16'ha4a3;
	#20
	A = 16'h3a9f;
	B = 16'h36cb;
	ans = 16'h359f;
	#20
	A = 16'hb9d1;
	B = 16'hb77e;
	ans = 16'h3572;
	#20
	A = 16'h39aa;
	B = 16'hbb9d;
	ans = 16'hb964;
	#20
	A = 16'h352d;
	B = 16'h3a8c;
	ans = 16'h343c;
	#20
	A = 16'haffe;
	B = 16'h3ac6;
	ans = 16'haec4;
	#20
	A = 16'hae6d;
	B = 16'hb332;
	ans = 16'h25c8;
	#20
	A = 16'h3855;
	B = 16'hb06e;
	ans = 16'haccc;
	#20
	A = 16'h390e;
	B = 16'h3008;
	ans = 16'h2d18;
	#20
	A = 16'hb0db;
	B = 16'h3b6a;
	ans = 16'hb080;
	#20
	A = 16'hb574;
	B = 16'h225c;
	ans = 16'h9c56;
	#20
	A = 16'h2afe;
	B = 16'h3a44;
	ans = 16'h297a;
	#20
	A = 16'hb6a6;
	B = 16'h3605;
	ans = 16'hb101;
	#20
	A = 16'hb9c5;
	B = 16'hb584;
	ans = 16'h33f5;
	#20
	A = 16'h375b;
	B = 16'hba15;
	ans = 16'hb598;
	#20
	A = 16'hbb7c;
	B = 16'h2b26;
	ans = 16'haab0;
	#20
	A = 16'hb989;
	B = 16'h3182;
	ans = 16'haf9f;
	#20
	A = 16'hbbfe;
	B = 16'h3bc7;
	ans = 16'hbbc5;
	#20
	A = 16'hba65;
	B = 16'h39dc;
	ans = 16'hb8af;
	#20
	A = 16'hb489;
	B = 16'hb30d;
	ans = 16'h2bfe;
	#20
	A = 16'h3945;
	B = 16'h3654;
	ans = 16'h342b;
	#20
	A = 16'hb068;
	B = 16'hbbc4;
	ans = 16'h3047;
	#20
	A = 16'h34e3;
	B = 16'h371c;
	ans = 16'h3058;
	#20
	A = 16'h3a25;
	B = 16'h39a6;
	ans = 16'h3857;
	#20
	A = 16'hb8d0;
	B = 16'h205e;
	ans = 16'h9d41;
	#20
	A = 16'h386e;
	B = 16'hb9da;
	ans = 16'hb67b;
	#20
	A = 16'h36c5;
	B = 16'h3788;
	ans = 16'h325f;
	#20
	A = 16'h35c3;
	B = 16'h380b;
	ans = 16'h31d3;
	#20
	A = 16'h2cf0;
	B = 16'hb1ab;
	ans = 16'ha2ff;
	#20
	A = 16'h3180;
	B = 16'h3569;
	ans = 16'h2b70;
	#20
	A = 16'h3531;
	B = 16'h3584;
	ans = 16'h2f29;
	#20
	A = 16'hb080;
	B = 16'h1f89;
	ans = 16'h943d;
	#20
	A = 16'h39c5;
	B = 16'hb714;
	ans = 16'hb51b;
	#20
	A = 16'h3bf3;
	B = 16'h3908;
	ans = 16'h3900;
	#20
	A = 16'h350f;
	B = 16'h3a01;
	ans = 16'h3398;
	#20
	A = 16'h3221;
	B = 16'haf52;
	ans = 16'ha59c;
	#20
	A = 16'h2f9f;
	B = 16'h2df3;
	ans = 16'h21ab;
	#20
	A = 16'h367c;
	B = 16'hb3b9;
	ans = 16'hae42;
	#20
	A = 16'hb65f;
	B = 16'hbb58;
	ans = 16'h35d9;
	#20
	A = 16'hb655;
	B = 16'hab60;
	ans = 16'h25d6;
	#20
	A = 16'hb714;
	B = 16'hbbe3;
	ans = 16'h36fa;
	#20
	A = 16'hb58d;
	B = 16'hb454;
	ans = 16'h2e02;
	#20
	A = 16'h3a02;
	B = 16'hb699;
	ans = 16'hb4f4;
	#20
	A = 16'h3aae;
	B = 16'h39f3;
	ans = 16'h38f8;
	#20
	A = 16'h36ae;
	B = 16'hafb2;
	ans = 16'haa6d;
	#20
	A = 16'hbbba;
	B = 16'hb627;
	ans = 16'h35f1;
	#20
	A = 16'h3b28;
	B = 16'hb9d6;
	ans = 16'hb938;
	#20
	A = 16'h3b9a;
	B = 16'h305c;
	ans = 16'h3024;
	#20
	A = 16'h2d8d;
	B = 16'hb972;
	ans = 16'hab8e;
	#20
	A = 16'h3626;
	B = 16'hbbcc;
	ans = 16'hb5fe;
	#20
	A = 16'h3a55;
	B = 16'h2ce9;
	ans = 16'h2bc6;
	#20
	A = 16'hb3dc;
	B = 16'hba6f;
	ans = 16'h3252;
	#20
	A = 16'hba1d;
	B = 16'h33fb;
	ans = 16'hb219;
	#20
	A = 16'hb371;
	B = 16'h3b9e;
	ans = 16'hb316;
	#20
	A = 16'h3b18;
	B = 16'hbbe2;
	ans = 16'hbafd;
	#20
	A = 16'h312d;
	B = 16'h32ea;
	ans = 16'h2879;
	#20
	A = 16'h3758;
	B = 16'hb907;
	ans = 16'hb49d;
	#20
	A = 16'h30b0;
	B = 16'h3805;
	ans = 16'h2cb6;
	#20
	A = 16'hb803;
	B = 16'hb17e;
	ans = 16'h2d82;
	#20
	A = 16'hb01c;
	B = 16'hb15d;
	ans = 16'h2583;
	#20
	A = 16'hb139;
	B = 16'h363d;
	ans = 16'hac13;
	#20
	A = 16'h38c8;
	B = 16'h3b7a;
	ans = 16'h3878;
	#20
	A = 16'hb1dd;
	B = 16'hb5b1;
	ans = 16'h2c2c;
	#20
	A = 16'hbaf6;
	B = 16'h3846;
	ans = 16'hb770;
	#20
	A = 16'hba4d;
	B = 16'hb5b7;
	ans = 16'h3480;
	#20
	A = 16'hba8e;
	B = 16'h2d36;
	ans = 16'hac45;
	#20
	A = 16'h2736;
	B = 16'h2d74;
	ans = 16'h18ea;
	#20
	A = 16'h3b1f;
	B = 16'h34be;
	ans = 16'h3439;
	#20
	A = 16'h358b;
	B = 16'hb893;
	ans = 16'hb257;
	#20
	A = 16'h3387;
	B = 16'h3a22;
	ans = 16'h31c5;
	#20
	A = 16'hb1ac;
	B = 16'h165b;
	ans = 16'h8c82;
	#20
	A = 16'hba5e;
	B = 16'hb27b;
	ans = 16'h3128;
	#20
	A = 16'h35d5;
	B = 16'h3927;
	ans = 16'h3383;
	#20
	A = 16'hb82c;
	B = 16'h3bb0;
	ans = 16'hb802;
	#20
	A = 16'h30fd;
	B = 16'h3445;
	ans = 16'h2953;
	#20
	A = 16'h3ad1;
	B = 16'hb881;
	ans = 16'hb7ad;
	#20
	A = 16'h2e6f;
	B = 16'h38d7;
	ans = 16'h2bc9;
	#20
	A = 16'h3bbb;
	B = 16'h3529;
	ans = 16'h34fc;
	#20
	A = 16'hbacd;
	B = 16'hb80b;
	ans = 16'h36e0;
	#20
	A = 16'hb7ac;
	B = 16'h386d;
	ans = 16'hb43f;
	#20
	A = 16'hb4ea;
	B = 16'hb8c3;
	ans = 16'h31da;
	#20
	A = 16'hb66a;
	B = 16'hb48a;
	ans = 16'h2f47;
	#20
	A = 16'hbbe3;
	B = 16'ha901;
	ans = 16'h28ef;
	#20
	A = 16'hb6d3;
	B = 16'h3bf6;
	ans = 16'hb6ca;
	#20
	A = 16'h3891;
	B = 16'hb9c4;
	ans = 16'hb695;
	#20
	A = 16'h2964;
	B = 16'ha916;
	ans = 16'h96db;
	#20
	A = 16'haca0;
	B = 16'h287b;
	ans = 16'h992e;
	#20
	A = 16'h39b0;
	B = 16'hace9;
	ans = 16'haafb;
	#20
	A = 16'h397e;
	B = 16'h3412;
	ans = 16'h3197;
	#20
	A = 16'h2fb8;
	B = 16'h394a;
	ans = 16'h2d1a;
	#20
	A = 16'h37d6;
	B = 16'hb808;
	ans = 16'hb3e6;
	#20
	A = 16'h374c;
	B = 16'h388f;
	ans = 16'h3428;
	#20
	A = 16'hbaae;
	B = 16'hae1f;
	ans = 16'h2d1c;
	#20
	A = 16'hba1a;
	B = 16'h3a81;
	ans = 16'hb8f6;
	#20
	A = 16'h35e5;
	B = 16'h28c5;
	ans = 16'h2307;
	#20
	A = 16'h37c0;
	B = 16'hb564;
	ans = 16'hb139;
	#20
	A = 16'h2fdb;
	B = 16'hb5da;
	ans = 16'ha9bf;
	#20
	A = 16'h3ad9;
	B = 16'hb414;
	ans = 16'hb2fb;
	#20
	A = 16'hbbdf;
	B = 16'h3646;
	ans = 16'hb62c;
	#20
	A = 16'h39cf;
	B = 16'hb9a2;
	ans = 16'hb817;
	#20
	A = 16'h35cb;
	B = 16'h3824;
	ans = 16'h31ff;
	#20
	A = 16'h3433;
	B = 16'h34a1;
	ans = 16'h2cdc;
	#20
	A = 16'h3330;
	B = 16'h379c;
	ans = 16'h2ed6;
	#20
	A = 16'h3a15;
	B = 16'h9847;
	ans = 16'h9681;
	#20
	A = 16'hb5d3;
	B = 16'hb1b6;
	ans = 16'h2c28;
	#20
	A = 16'hbb0d;
	B = 16'h3978;
	ans = 16'hb8d2;
	#20
	A = 16'h3a39;
	B = 16'h3864;
	ans = 16'h36d5;
	#20
	A = 16'h379f;
	B = 16'hba37;
	ans = 16'hb5ec;
	#20
	A = 16'hb9d7;
	B = 16'h3186;
	ans = 16'hb008;
	#20
	A = 16'h3719;
	B = 16'h38d7;
	ans = 16'h344b;
	#20
	A = 16'h3590;
	B = 16'h2cf7;
	ans = 16'h26e7;
	#20
	A = 16'hba49;
	B = 16'h35d1;
	ans = 16'hb492;
	#20
	A = 16'hbada;
	B = 16'hbab8;
	ans = 16'h39c1;
	#20
	A = 16'h38cf;
	B = 16'h2282;
	ans = 16'h1fd3;
	#20
	A = 16'hbbfd;
	B = 16'hb9f0;
	ans = 16'h39ee;
	#20
	A = 16'hb9c6;
	B = 16'ha28c;
	ans = 16'h20ba;
	#20
	A = 16'hb7b3;
	B = 16'hbb2f;
	ans = 16'h36ea;
	#20
	A = 16'hb7fa;
	B = 16'hb844;
	ans = 16'h3441;
	#20
	A = 16'h35f4;
	B = 16'hb6a8;
	ans = 16'hb0f4;
	#20
	A = 16'hb10d;
	B = 16'hbbf3;
	ans = 16'h3105;
	#20
	A = 16'h3b8a;
	B = 16'hba8d;
	ans = 16'hba2c;
	#20
	A = 16'hbafe;
	B = 16'h3941;
	ans = 16'hb898;
	#20
	A = 16'hb626;
	B = 16'hbbf9;
	ans = 16'h3621;
	#20
	A = 16'hb14c;
	B = 16'h36b0;
	ans = 16'hac6e;
	#20
	A = 16'hb8c2;
	B = 16'h3655;
	ans = 16'hb388;
	#20
	A = 16'h38d0;
	B = 16'hbba9;
	ans = 16'hb89c;
	#20
	A = 16'hba7d;
	B = 16'h3b68;
	ans = 16'hba02;
	#20
	A = 16'h368b;
	B = 16'hb5b3;
	ans = 16'hb0a9;
	#20
	A = 16'h36e1;
	B = 16'ha96f;
	ans = 16'ha4ac;
	#20
	A = 16'h3386;
	B = 16'hbab8;
	ans = 16'hb252;
	#20
	A = 16'hbb90;
	B = 16'hb835;
	ans = 16'h37f4;
	#20
	A = 16'hbb93;
	B = 16'hb724;
	ans = 16'h36c3;
	#20
	A = 16'hb575;
	B = 16'hb93c;
	ans = 16'h3324;
	#20
	A = 16'h389d;
	B = 16'h1e48;
	ans = 16'h1b3f;
	#20
	A = 16'h3ae7;
	B = 16'hbb98;
	ans = 16'hba8d;
	#20
	A = 16'hb640;
	B = 16'h3254;
	ans = 16'hacf2;
	#20
	A = 16'hb95f;
	B = 16'h37c4;
	ans = 16'hb537;
	#20
	A = 16'hb471;
	B = 16'h3bb1;
	ans = 16'hb445;
	#20
	A = 16'hb8ce;
	B = 16'hba00;
	ans = 16'h3735;
	#20
	A = 16'h36b1;
	B = 16'hb309;
	ans = 16'hade2;
	#20
	A = 16'hb44f;
	B = 16'h3a50;
	ans = 16'hb2cd;
	#20
	A = 16'hb873;
	B = 16'hbbfe;
	ans = 16'h3872;
	#20
	A = 16'hba82;
	B = 16'h316d;
	ans = 16'hb06a;
	#20
	A = 16'h2982;
	B = 16'h36dd;
	ans = 16'h24ba;
	#20
	A = 16'h2de2;
	B = 16'hb722;
	ans = 16'ha93f;
	#20
	A = 16'h268d;
	B = 16'h28a8;
	ans = 16'h13a0;
	#20
	A = 16'hb70b;
	B = 16'h3455;
	ans = 16'hafa1;
	#20
	A = 16'h32ac;
	B = 16'hb8cc;
	ans = 16'hb000;
	#20
	A = 16'hb41b;
	B = 16'h384c;
	ans = 16'hb069;
	#20
	A = 16'h3b9e;
	B = 16'hb2ad;
	ans = 16'hb25b;
	#20
	A = 16'h3a42;
	B = 16'h266b;
	ans = 16'h2505;
	#20
	A = 16'h3949;
	B = 16'had47;
	ans = 16'haaf9;
	#20
	A = 16'h3b07;
	B = 16'had09;
	ans = 16'hac6c;
	#20
	A = 16'hb295;
	B = 16'hac56;
	ans = 16'h2323;
	#20
	A = 16'haf20;
	B = 16'h3a10;
	ans = 16'had66;
	#20
	A = 16'hb057;
	B = 16'h3ae4;
	ans = 16'haf7a;
	#20
	A = 16'h3bc3;
	B = 16'h3349;
	ans = 16'h3311;
	#20
	A = 16'hb71f;
	B = 16'hb3cd;
	ans = 16'h2ef2;
	#20
	A = 16'hbb7b;
	B = 16'hb576;
	ans = 16'h351b;
	#20
	A = 16'h3809;
	B = 16'h334d;
	ans = 16'h2f5d;
	#20
	A = 16'h3af9;
	B = 16'h3722;
	ans = 16'h3638;
	#20
	A = 16'hba19;
	B = 16'h39a4;
	ans = 16'hb84d;
	#20
	A = 16'h37b9;
	B = 16'h3178;
	ans = 16'h2d47;
	#20
	A = 16'h390f;
	B = 16'h2bee;
	ans = 16'h2904;
	#20
	A = 16'h3a3d;
	B = 16'hbb61;
	ans = 16'hb9c1;
	#20
	A = 16'hb9fd;
	B = 16'hba2d;
	ans = 16'h389f;
	#20
	A = 16'h3257;
	B = 16'hb523;
	ans = 16'hac12;
	#20
	A = 16'hb07c;
	B = 16'h3218;
	ans = 16'ha6d5;
	#20
	A = 16'haedf;
	B = 16'hba2e;
	ans = 16'h2d4f;
	#20
	A = 16'h36b4;
	B = 16'hb42e;
	ans = 16'haf01;
	#20
	A = 16'h3821;
	B = 16'h36d3;
	ans = 16'h330b;
	#20
	A = 16'hbbb3;
	B = 16'h39cd;
	ans = 16'hb995;
	#20
	A = 16'hb841;
	B = 16'h3510;
	ans = 16'hb162;
	#20
	A = 16'ha458;
	B = 16'h35b4;
	ans = 16'h9e31;
	#20
	A = 16'h3a07;
	B = 16'hb4a9;
	ans = 16'hb306;
	#20
	A = 16'h3100;
	B = 16'hbbbd;
	ans = 16'hb0d6;
	#20
	A = 16'h38c9;
	B = 16'hb852;
	ans = 16'hb52b;
	#20
	A = 16'h358d;
	B = 16'h3a5b;
	ans = 16'h3469;
	#20
	A = 16'h386d;
	B = 16'h3a16;
	ans = 16'h36bc;
	#20
	A = 16'hbbab;
	B = 16'h39e5;
	ans = 16'hb9a6;
	#20
	A = 16'hb820;
	B = 16'h3030;
	ans = 16'hac52;
	#20
	A = 16'h3676;
	B = 16'hb829;
	ans = 16'hb2b8;
	#20
	A = 16'h3572;
	B = 16'hb936;
	ans = 16'hb318;
	#20
	A = 16'h36b1;
	B = 16'h3ad7;
	ans = 16'h35b9;
	#20
	A = 16'h3579;
	B = 16'hb8a3;
	ans = 16'hb258;
	#20
	A = 16'h3a39;
	B = 16'h37d9;
	ans = 16'h361b;
	#20
	A = 16'hbb56;
	B = 16'haf70;
	ans = 16'h2ed2;
	#20
	A = 16'h383c;
	B = 16'hb0c3;
	ans = 16'had0a;
	#20
	A = 16'hb7f9;
	B = 16'hbb85;
	ans = 16'h377e;
	#20
	A = 16'h33ea;
	B = 16'hba7d;
	ans = 16'hb26b;
	#20
	A = 16'hbb28;
	B = 16'h3427;
	ans = 16'hb36e;
	#20
	A = 16'h3713;
	B = 16'h3ab9;
	ans = 16'h35f2;
	#20
	A = 16'hbb2a;
	B = 16'h314a;
	ans = 16'hb0bd;
	#20
	A = 16'h33d5;
	B = 16'hb0e3;
	ans = 16'ha8c9;
	#20
	A = 16'hb8e3;
	B = 16'hb28f;
	ans = 16'h3002;
	#20
	A = 16'hb6ad;
	B = 16'h2bb4;
	ans = 16'ha66e;
	#20
	A = 16'h332d;
	B = 16'haf67;
	ans = 16'ha6a4;
	#20
	A = 16'h3373;
	B = 16'hb5c0;
	ans = 16'had5b;
	#20
	A = 16'hb7ec;
	B = 16'hb435;
	ans = 16'h302a;
	#20
	A = 16'h3519;
	B = 16'h39cb;
	ans = 16'h3362;
	#20
	A = 16'hb7b3;
	B = 16'h3bc6;
	ans = 16'hb77b;
	#20
	A = 16'h3198;
	B = 16'hbb00;
	ans = 16'hb0e5;
	#20
	A = 16'hb9cf;
	B = 16'h30a3;
	ans = 16'haebc;
	#20
	A = 16'h2b98;
	B = 16'h348a;
	ans = 16'h244f;
	#20
	A = 16'hb865;
	B = 16'h36bc;
	ans = 16'hb366;
	#20
	A = 16'h27dc;
	B = 16'h2896;
	ans = 16'h1481;
	#20
	A = 16'hb139;
	B = 16'h3a0d;
	ans = 16'hafe6;
	#20
	A = 16'h3813;
	B = 16'h2ca5;
	ans = 16'h28bb;
	#20
	A = 16'hba4e;
	B = 16'h344d;
	ans = 16'hb2c7;
	#20
	A = 16'h330d;
	B = 16'hb57a;
	ans = 16'hacd4;
	#20
	A = 16'h3979;
	B = 16'h262c;
	ans = 16'h2439;
	#20
	A = 16'h32a8;
	B = 16'h33ec;
	ans = 16'h2a97;
	#20
	A = 16'hb2b6;
	B = 16'h3822;
	ans = 16'haeef;
	#20
	A = 16'hac63;
	B = 16'hb8b6;
	ans = 16'h292b;
	#20
	A = 16'hbb0d;
	B = 16'h3863;
	ans = 16'hb7bc;
	#20
	A = 16'hb841;
	B = 16'h34c0;
	ans = 16'hb10d;
	#20
	A = 16'h3856;
	B = 16'h3819;
	ans = 16'h3471;
	#20
	A = 16'h2dee;
	B = 16'h33c5;
	ans = 16'h25c2;
	#20
	A = 16'hbada;
	B = 16'h3537;
	ans = 16'hb477;
	#20
	A = 16'hb290;
	B = 16'hb695;
	ans = 16'h2d66;
	#20
	A = 16'h3a96;
	B = 16'h39bd;
	ans = 16'h38b9;
	#20
	A = 16'h3bf9;
	B = 16'hb4a3;
	ans = 16'hb49f;
	#20
	A = 16'h2e1f;
	B = 16'h399b;
	ans = 16'h2c4a;
	#20
	A = 16'hb917;
	B = 16'h9dde;
	ans = 16'h1b77;
	#20
	A = 16'hb689;
	B = 16'hb5b6;
	ans = 16'h30aa;
	#20
	A = 16'hb9d9;
	B = 16'hafb9;
	ans = 16'h2da5;
	#20
	A = 16'hafbb;
	B = 16'h36c6;
	ans = 16'haa8c;
	#20
	A = 16'h3844;
	B = 16'hb0ba;
	ans = 16'had0a;
	#20
	A = 16'hb778;
	B = 16'hbaca;
	ans = 16'h3657;
	#20
	A = 16'hb616;
	B = 16'hb605;
	ans = 16'h3094;
	#20
	A = 16'hb79f;
	B = 16'hbaff;
	ans = 16'h36aa;
	#20
	A = 16'h37ea;
	B = 16'hb723;
	ans = 16'hb30f;
	#20
	A = 16'hb60f;
	B = 16'h3a40;
	ans = 16'hb4bc;
	#20
	A = 16'h388c;
	B = 16'hab44;
	ans = 16'ha821;
	#20
	A = 16'h3434;
	B = 16'hbb16;
	ans = 16'hb372;
	#20
	A = 16'hb441;
	B = 16'hb83a;
	ans = 16'h307f;
	#20
	A = 16'h3407;
	B = 16'hb9fa;
	ans = 16'hb204;
	#20
	A = 16'hb71d;
	B = 16'haeda;
	ans = 16'h2a18;
	#20
	A = 16'h3707;
	B = 16'h38cc;
	ans = 16'h3437;
	#20
	A = 16'hb7d8;
	B = 16'h3a4b;
	ans = 16'hb62c;
	#20
	A = 16'hb91f;
	B = 16'hb9d8;
	ans = 16'h377b;
	#20
	A = 16'h38e2;
	B = 16'h3a03;
	ans = 16'h3757;
	#20
	A = 16'h38d3;
	B = 16'ha9cd;
	ans = 16'ha6ff;
	#20
	A = 16'hb83e;
	B = 16'hbaf9;
	ans = 16'h3765;
	#20
	A = 16'h38db;
	B = 16'hbb54;
	ans = 16'hb873;
	#20
	A = 16'h3baa;
	B = 16'hb597;
	ans = 16'hb55b;
	#20
	A = 16'h3a22;
	B = 16'h33ff;
	ans = 16'h3221;
	#20
	A = 16'hb839;
	B = 16'h2d0e;
	ans = 16'ha956;
	#20
	A = 16'h39c7;
	B = 16'h34b8;
	ans = 16'h32d1;
	#20
	A = 16'h34fb;
	B = 16'h3adb;
	ans = 16'h3445;
	#20
	A = 16'hb396;
	B = 16'hb8b4;
	ans = 16'h3076;
	#20
	A = 16'h39f5;
	B = 16'h39da;
	ans = 16'h385b;
	#20
	A = 16'hbb46;
	B = 16'h3710;
	ans = 16'hb66c;
	#20
	A = 16'hb485;
	B = 16'h3a42;
	ans = 16'hb312;
	#20
	A = 16'hba85;
	B = 16'hbbbd;
	ans = 16'h3a4e;
	#20
	A = 16'h30be;
	B = 16'hbb8c;
	ans = 16'hb079;
	#20
	A = 16'h2e81;
	B = 16'h3178;
	ans = 16'h2472;
	#20
	A = 16'h3a28;
	B = 16'h3b90;
	ans = 16'h39d2;
	#20
	A = 16'h3815;
	B = 16'h3559;
	ans = 16'h3175;
	#20
	A = 16'h308a;
	B = 16'h3bfa;
	ans = 16'h3087;
	#20
	A = 16'h351b;
	B = 16'h313a;
	ans = 16'h2aac;
	#20
	A = 16'hba79;
	B = 16'hb8b8;
	ans = 16'h37a3;
	#20
	A = 16'hb9f7;
	B = 16'hb89c;
	ans = 16'h36e0;
	#20
	A = 16'h3aee;
	B = 16'h3aa5;
	ans = 16'h39c1;
	#20
	A = 16'h34aa;
	B = 16'hba4b;
	ans = 16'hb356;
	#20
	A = 16'h3905;
	B = 16'h38f8;
	ans = 16'h363c;
	#20
	A = 16'h361f;
	B = 16'h39f5;
	ans = 16'h348f;
	#20
	A = 16'hba59;
	B = 16'hb9da;
	ans = 16'h38a5;
	#20
	A = 16'h3111;
	B = 16'hbb03;
	ans = 16'hb071;
	#20
	A = 16'hb898;
	B = 16'hb9df;
	ans = 16'h36be;
	#20
	A = 16'hba9c;
	B = 16'h363c;
	ans = 16'hb527;
	#20
	A = 16'hb543;
	B = 16'hb268;
	ans = 16'h2c37;
	#20
	A = 16'h376f;
	B = 16'hbb8b;
	ans = 16'hb702;
	#20
	A = 16'hb91e;
	B = 16'h2f2b;
	ans = 16'hac96;
	#20
	A = 16'h3baf;
	B = 16'hae62;
	ans = 16'hae21;
	#20
	A = 16'h385c;
	B = 16'hba18;
	ans = 16'hb6a4;
	#20
	A = 16'h219e;
	B = 16'hb094;
	ans = 16'h966e;
	#20
	A = 16'hbbdf;
	B = 16'hb72f;
	ans = 16'h3711;
	#20
	A = 16'h38b4;
	B = 16'hb4a8;
	ans = 16'hb17a;
	#20
	A = 16'h35d9;
	B = 16'hb714;
	ans = 16'hb12c;
	#20
	A = 16'hb2f9;
	B = 16'hbb6b;
	ans = 16'h3277;
	#20
	A = 16'hb1c7;
	B = 16'haed4;
	ans = 16'h24ee;
	#20
	A = 16'h2935;
	B = 16'ha34f;
	ans = 16'h90c2;
	#20
	A = 16'hbbea;
	B = 16'hb81e;
	ans = 16'h3813;
	#20
	A = 16'h3735;
	B = 16'h3667;
	ans = 16'h31c5;
	#20
	A = 16'h3234;
	B = 16'hbab1;
	ans = 16'hb130;
	#20
	A = 16'hbb5b;
	B = 16'hba62;
	ans = 16'h39de;
	#20
	A = 16'h37f5;
	B = 16'hbbbb;
	ans = 16'hb7b0;
	#20
	A = 16'hb911;
	B = 16'h3639;
	ans = 16'hb3e2;
	#20
	A = 16'h3071;
	B = 16'h3be6;
	ans = 16'h3063;
	#20
	A = 16'h31c3;
	B = 16'h3828;
	ans = 16'h2dfd;
	#20
	A = 16'h346d;
	B = 16'hba1f;
	ans = 16'hb2c6;
	#20
	A = 16'h3886;
	B = 16'h3b72;
	ans = 16'h3836;
	#20
	A = 16'hb904;
	B = 16'hb4b2;
	ans = 16'h31e3;
	#20
	A = 16'h3a67;
	B = 16'h3774;
	ans = 16'h35f7;
	#20
	A = 16'h3023;
	B = 16'h3b35;
	ans = 16'h2f74;
	#20
	A = 16'h3a2c;
	B = 16'hb5b3;
	ans = 16'hb466;
	#20
	A = 16'hac75;
	B = 16'hba18;
	ans = 16'h2aca;
	#20
	A = 16'hb954;
	B = 16'h351b;
	ans = 16'hb2cd;
	#20
	A = 16'h3844;
	B = 16'h3918;
	ans = 16'h356f;
	#20
	A = 16'hae17;
	B = 16'h2620;
	ans = 16'h98aa;
	#20
	A = 16'h3861;
	B = 16'hbbdd;
	ans = 16'hb84e;
	#20
	A = 16'hba02;
	B = 16'h3ac9;
	ans = 16'hb918;
	#20
	A = 16'h3b48;
	B = 16'habf9;
	ans = 16'hab42;
	#20
	A = 16'h2ece;
	B = 16'h357b;
	ans = 16'h28a9;
	#20
	A = 16'h3964;
	B = 16'h8f95;
	ans = 16'h8d1c;
	#20
	A = 16'ha604;
	B = 16'hbaff;
	ans = 16'h2543;
	#20
	A = 16'h3672;
	B = 16'hb9c3;
	ans = 16'hb4a4;
	#20
	A = 16'h3bed;
	B = 16'h38d0;
	ans = 16'h38c5;
	#20
	A = 16'h28f6;
	B = 16'hb9cc;
	ans = 16'ha731;
	#20
	A = 16'h3a65;
	B = 16'hb6da;
	ans = 16'hb57a;
	#20
	A = 16'h322c;
	B = 16'hbb72;
	ans = 16'hb1be;
	#20
	A = 16'h2bd7;
	B = 16'hb727;
	ans = 16'ha702;
	#20
	A = 16'h3b57;
	B = 16'hb0ce;
	ans = 16'hb069;
	#20
	A = 16'ha8b2;
	B = 16'h303a;
	ans = 16'h9cf6;
	#20
	A = 16'h343d;
	B = 16'h943f;
	ans = 16'h8c80;
	#20
	A = 16'h3a9a;
	B = 16'h2bc4;
	ans = 16'h2a68;
	#20
	A = 16'hbb66;
	B = 16'h3ac6;
	ans = 16'hba44;
	#20
	A = 16'h3868;
	B = 16'ha087;
	ans = 16'h9cfd;
	#20
	A = 16'h3a57;
	B = 16'hb843;
	ans = 16'hb6c1;
	#20
	A = 16'hb1a6;
	B = 16'haa02;
	ans = 16'h203e;
	#20
	A = 16'hb8fd;
	B = 16'h37d2;
	ans = 16'hb4e0;
	#20
	A = 16'ha8ea;
	B = 16'hb8c5;
	ans = 16'h25dc;
	#20
	A = 16'hb8aa;
	B = 16'hba3c;
	ans = 16'h3745;
	#20
	A = 16'h36dc;
	B = 16'h39b0;
	ans = 16'h34e0;
	#20
	A = 16'hb55b;
	B = 16'hace5;
	ans = 16'h268e;
	#20
	A = 16'hb757;
	B = 16'h31a8;
	ans = 16'had31;
	#20
	A = 16'hba53;
	B = 16'h3946;
	ans = 16'hb82b;
	#20
	A = 16'h3b93;
	B = 16'hb97b;
	ans = 16'hb930;
	#20
	A = 16'h2fed;
	B = 16'hac93;
	ans = 16'ha088;
	#20
	A = 16'hae5c;
	B = 16'h2a04;
	ans = 16'h9cc8;
	#20
	A = 16'hbaad;
	B = 16'h35c5;
	ans = 16'hb4d1;
	#20
	A = 16'hbb24;
	B = 16'h3274;
	ans = 16'hb1c3;
	#20
	A = 16'ha5d2;
	B = 16'h308b;
	ans = 16'h9a9c;
	#20
	A = 16'hb6d6;
	B = 16'h3b5a;
	ans = 16'hb648;
	#20
	A = 16'hb904;
	B = 16'h391b;
	ans = 16'hb667;
	#20
	A = 16'h35f2;
	B = 16'h386c;
	ans = 16'h3293;
	#20
	A = 16'hae9a;
	B = 16'hbbfc;
	ans = 16'h2e97;
	#20
	A = 16'hb650;
	B = 16'hb9eb;
	ans = 16'h34ab;
	#20
	A = 16'ha68a;
	B = 16'hb718;
	ans = 16'h21cc;
	#20
	A = 16'hb5f0;
	B = 16'hb84a;
	ans = 16'h325e;
	#20
	A = 16'hb981;
	B = 16'hafdf;
	ans = 16'h2d6a;
	#20
	A = 16'hb807;
	B = 16'haca3;
	ans = 16'h28ab;
	#20
	A = 16'h31fa;
	B = 16'hb803;
	ans = 16'hadfe;
	#20
	A = 16'h3548;
	B = 16'hb88f;
	ans = 16'hb205;
	#20
	A = 16'h36c1;
	B = 16'h3713;
	ans = 16'h31f9;
	#20
	A = 16'haedd;
	B = 16'hab15;
	ans = 16'h1e13;
	#20
	A = 16'hb90a;
	B = 16'h39f3;
	ans = 16'hb77f;
	#20
	A = 16'h38c4;
	B = 16'h3948;
	ans = 16'h364b;
	#20
	A = 16'h3463;
	B = 16'h3a8f;
	ans = 16'h3331;
	#20
	A = 16'h39f9;
	B = 16'h2dc7;
	ans = 16'h2c50;
	#20
	A = 16'h3714;
	B = 16'hb659;
	ans = 16'hb19e;
	#20
	A = 16'h3492;
	B = 16'h34f9;
	ans = 16'h2daf;
	#20
	A = 16'hbbd6;
	B = 16'hac40;
	ans = 16'h2c2a;
	#20
	A = 16'h38f2;
	B = 16'hb48e;
	ans = 16'hb1a2;
	#20
	A = 16'hb278;
	B = 16'h3af9;
	ans = 16'hb1a3;
	#20
	A = 16'h3ba9;
	B = 16'hb8a1;
	ans = 16'hb86f;
	#20
	A = 16'hb9af;
	B = 16'h36e2;
	ans = 16'hb4e4;
	#20
	A = 16'hb808;
	B = 16'hb90d;
	ans = 16'h3517;
	#20
	A = 16'h390e;
	B = 16'hb923;
	ans = 16'hb67e;
	#20
	A = 16'h3af6;
	B = 16'h3133;
	ans = 16'h3086;
	#20
	A = 16'hb9d0;
	B = 16'h1e93;
	ans = 16'h9cc7;
	#20
	A = 16'h3bcc;
	B = 16'h3a60;
	ans = 16'h3a37;
	#20
	A = 16'h3a84;
	B = 16'h3837;
	ans = 16'h36de;
	#20
	A = 16'hbb8b;
	B = 16'h3508;
	ans = 16'hb4be;
	#20
	A = 16'ha9c9;
	B = 16'h3aa1;
	ans = 16'ha8cb;
	#20
	A = 16'hb81c;
	B = 16'hb465;
	ans = 16'h3084;
	#20
	A = 16'hb582;
	B = 16'hb510;
	ans = 16'h2ef9;
	#20
	A = 16'hb0cc;
	B = 16'h3b06;
	ans = 16'hb036;
	#20
	A = 16'h377f;
	B = 16'hb877;
	ans = 16'hb42f;
	#20
	A = 16'hb51e;
	B = 16'hbb4c;
	ans = 16'h34ab;
	#20
	A = 16'hb2c8;
	B = 16'hb852;
	ans = 16'h2f53;
	#20
	A = 16'hbb87;
	B = 16'hb6ea;
	ans = 16'h3681;
	#20
	A = 16'hb7cf;
	B = 16'h3a35;
	ans = 16'hb60f;
	#20
	A = 16'hb66d;
	B = 16'h3995;
	ans = 16'hb47c;
	#20
	A = 16'h2dad;
	B = 16'hb949;
	ans = 16'hab80;
	#20
	A = 16'hacc2;
	B = 16'hba77;
	ans = 16'h2bb1;
	#20
	A = 16'hba28;
	B = 16'h2986;
	ans = 16'ha840;
	#20
	A = 16'hb61d;
	B = 16'h3186;
	ans = 16'hac39;
	#20
	A = 16'hb823;
	B = 16'h3868;
	ans = 16'hb48f;
	#20
	A = 16'h3b17;
	B = 16'hb941;
	ans = 16'hb8a8;
	#20
	A = 16'hb022;
	B = 16'haa1c;
	ans = 16'h1e50;
	#20
	A = 16'hb6ae;
	B = 16'h3998;
	ans = 16'hb4ac;
	#20
	A = 16'hbb87;
	B = 16'hb59a;
	ans = 16'h3545;
	#20
	A = 16'h38f9;
	B = 16'h3b48;
	ans = 16'h3887;
	#20
	A = 16'h31e6;
	B = 16'h38f0;
	ans = 16'h2f48;
	#20
	A = 16'h1d75;
	B = 16'h395c;
	ans = 16'h1b50;
	#20
	A = 16'h3b57;
	B = 16'hb735;
	ans = 16'hb69d;
	#20
	A = 16'h3bc0;
	B = 16'h3be5;
	ans = 16'h3ba6;
	#20
	A = 16'hb6a4;
	B = 16'hb8f4;
	ans = 16'h341d;
	#20
	A = 16'h3b14;
	B = 16'h3b4f;
	ans = 16'h3a77;
	#20
	A = 16'h3638;
	B = 16'hb425;
	ans = 16'hae72;
	#20
	A = 16'h3988;
	B = 16'h346e;
	ans = 16'h3220;
	#20
	A = 16'h387d;
	B = 16'h3815;
	ans = 16'h3495;
	#20
	A = 16'hb440;
	B = 16'hb438;
	ans = 16'h2c7c;
	#20
	A = 16'h3a43;
	B = 16'hb2b1;
	ans = 16'hb13d;
	#20
	A = 16'ha3bb;
	B = 16'h37db;
	ans = 16'h9f97;
	#20
	A = 16'h2c0d;
	B = 16'h3865;
	ans = 16'h2873;
	#20
	A = 16'h3444;
	B = 16'h3492;
	ans = 16'h2ce0;
	#20
	A = 16'hbb72;
	B = 16'hb8a8;
	ans = 16'h3855;
	#20
	A = 16'h3857;
	B = 16'h3b97;
	ans = 16'h381e;
	#20
	A = 16'h3823;
	B = 16'h347c;
	ans = 16'h30a3;
	#20
	A = 16'hae02;
	B = 16'hb666;
	ans = 16'h28ce;
	#20
	A = 16'h392d;
	B = 16'hb8f8;
	ans = 16'hb66e;
	#20
	A = 16'hac22;
	B = 16'hba59;
	ans = 16'h2a8f;
	#20
	A = 16'h3b8a;
	B = 16'hb9fc;
	ans = 16'hb9a4;
	#20
	A = 16'h3a11;
	B = 16'h38d6;
	ans = 16'h3756;
	#20
	A = 16'h3af6;
	B = 16'h3720;
	ans = 16'h3633;
	#20
	A = 16'hba30;
	B = 16'haeb1;
	ans = 16'h2d2d;
	#20
	A = 16'h36e5;
	B = 16'hb78a;
	ans = 16'hb27f;
	#20
	A = 16'h2fb0;
	B = 16'h2f63;
	ans = 16'h2319;
	#20
	A = 16'hb917;
	B = 16'hb74c;
	ans = 16'h34a4;
	#20
	A = 16'hba35;
	B = 16'hbbb0;
	ans = 16'h39f7;
	#20
	A = 16'hb8ad;
	B = 16'hbbed;
	ans = 16'h38a2;
	#20
	A = 16'hb1b6;
	B = 16'h35d0;
	ans = 16'hac26;
	#20
	A = 16'h3193;
	B = 16'habca;
	ans = 16'ha16d;
	#20
	A = 16'h35b3;
	B = 16'hbb24;
	ans = 16'hb516;
	#20
	A = 16'h362f;
	B = 16'hb82c;
	ans = 16'hb273;
	#20
	A = 16'h362d;
	B = 16'hb748;
	ans = 16'hb19f;
	#20
	A = 16'h358f;
	B = 16'h3aa1;
	ans = 16'h349b;
	#20
	A = 16'h3b4e;
	B = 16'hb68e;
	ans = 16'hb5fc;
	#20
	A = 16'h36d8;
	B = 16'h316d;
	ans = 16'h2ca4;
	#20
	A = 16'h3434;
	B = 16'hbb27;
	ans = 16'hb384;
	#20
	A = 16'hba18;
	B = 16'hb4a0;
	ans = 16'h330c;
	#20
	A = 16'h3b44;
	B = 16'h3594;
	ans = 16'h3511;
	#20
	A = 16'h2cbe;
	B = 16'h3aec;
	ans = 16'h2c1a;
	#20
	A = 16'hb9c4;
	B = 16'h3a59;
	ans = 16'hb893;
	#20
	A = 16'h3aef;
	B = 16'hacf3;
	ans = 16'hac4a;
	#20
	A = 16'hbacf;
	B = 16'hbad9;
	ans = 16'h39d4;
	#20
	A = 16'hb89b;
	B = 16'hb938;
	ans = 16'h3602;
	#20
	A = 16'h3ac3;
	B = 16'h2882;
	ans = 16'h279f;
	#20
	A = 16'hb5ec;
	B = 16'hb062;
	ans = 16'h2a7d;
	#20
	A = 16'hbb66;
	B = 16'hb927;
	ans = 16'h38c4;
	#20
	A = 16'h3671;
	B = 16'h3820;
	ans = 16'h32a5;
	#20
	A = 16'h3b60;
	B = 16'h2817;
	ans = 16'h278a;
	#20
	A = 16'hb938;
	B = 16'h3a93;
	ans = 16'hb84a;
	#20
	A = 16'h3bca;
	B = 16'hba80;
	ans = 16'hba54;
	#20
	A = 16'hb9c9;
	B = 16'h30ea;
	ans = 16'haf1b;
	#20
	A = 16'hb50d;
	B = 16'hb82b;
	ans = 16'h3143;
	#20
	A = 16'h2ea4;
	B = 16'h35a2;
	ans = 16'h28ad;
	#20
	A = 16'h3a62;
	B = 16'h26bc;
	ans = 16'h255f;
	#20
	A = 16'h3bcf;
	B = 16'hb997;
	ans = 16'hb975;
	#20
	A = 16'h3197;
	B = 16'h290a;
	ans = 16'h1f0b;
	#20
	A = 16'h3b3c;
	B = 16'hae5f;
	ans = 16'hadc3;
	#20
	A = 16'hba81;
	B = 16'h36f3;
	ans = 16'hb5a6;
	#20
	A = 16'hba87;
	B = 16'hb6b9;
	ans = 16'h357c;
	#20
	A = 16'hb1f4;
	B = 16'h3a6d;
	ans = 16'hb0c8;
	#20
	A = 16'h39a6;
	B = 16'hb021;
	ans = 16'hadd5;
	#20
	A = 16'h3b62;
	B = 16'h3761;
	ans = 16'h36cf;
	#20
	A = 16'h3bc7;
	B = 16'h30ab;
	ans = 16'h308a;
	#20
	A = 16'h39f4;
	B = 16'hb2db;
	ans = 16'hb11a;
	#20
	A = 16'h3a8e;
	B = 16'hb8d5;
	ans = 16'hb7eb;
	#20
	A = 16'h3112;
	B = 16'ha811;
	ans = 16'h9d28;
	#20
	A = 16'h3205;
	B = 16'hb808;
	ans = 16'hae11;
	#20
	A = 16'h365c;
	B = 16'h20e5;
	ans = 16'h1bc8;
	#20
	A = 16'hb493;
	B = 16'hbbaf;
	ans = 16'h3465;
	#20
	A = 16'hbb15;
	B = 16'hb895;
	ans = 16'h380e;
	#20
	A = 16'h31f3;
	B = 16'hba14;
	ans = 16'hb085;
	#20
	A = 16'h3819;
	B = 16'h3bfa;
	ans = 16'h3816;
	#20
	A = 16'h3301;
	B = 16'hbacc;
	ans = 16'hb1f3;
	#20
	A = 16'hbab9;
	B = 16'h353b;
	ans = 16'hb465;
	#20
	A = 16'h3bab;
	B = 16'h39a2;
	ans = 16'h3966;
	#20
	A = 16'hba4f;
	B = 16'h38d1;
	ans = 16'hb799;
	#20
	A = 16'hb52f;
	B = 16'hb88a;
	ans = 16'h31e2;
	#20
	A = 16'hba65;
	B = 16'h392a;
	ans = 16'hb821;
	#20
	A = 16'hb74c;
	B = 16'h395a;
	ans = 16'hb4e2;
	#20
	A = 16'h3511;
	B = 16'hba13;
	ans = 16'hb3b2;
	#20
	A = 16'hb47e;
	B = 16'h3a17;
	ans = 16'hb2d7;
	#20
	A = 16'h3840;
	B = 16'hb685;
	ans = 16'hb2ed;
	#20
	A = 16'hbbdb;
	B = 16'h38dd;
	ans = 16'hb8c7;
	#20
	A = 16'hb24b;
	B = 16'h3b8b;
	ans = 16'hb1ef;
	#20
	A = 16'h37fa;
	B = 16'h3173;
	ans = 16'h2d6f;
	#20
	A = 16'h3815;
	B = 16'had30;
	ans = 16'ha94b;
	#20
	A = 16'h1aef;
	B = 16'h3857;
	ans = 16'h1786;
	#20
	A = 16'h39cf;
	B = 16'h3a79;
	ans = 16'h38b3;
	#20
	A = 16'h27f7;
	B = 16'hae6b;
	ans = 16'h9a64;
	#20
	A = 16'hb69d;
	B = 16'hb9d0;
	ans = 16'h34ce;
	#20
	A = 16'hbbf4;
	B = 16'hbb18;
	ans = 16'h3b0d;
	#20
	A = 16'h3354;
	B = 16'hbba6;
	ans = 16'hb302;
	#20
	A = 16'hb2d5;
	B = 16'hac2f;
	ans = 16'h2325;
	#20
	A = 16'hba63;
	B = 16'hb812;
	ans = 16'h3680;
	#20
	A = 16'h36aa;
	B = 16'h39aa;
	ans = 16'h34b8;
	#20
	A = 16'h3982;
	B = 16'h3bfb;
	ans = 16'h397f;
	#20
	A = 16'hb03b;
	B = 16'haaec;
	ans = 16'h1f52;
	#20
	A = 16'hbbde;
	B = 16'hb6d6;
	ans = 16'h36b9;
	#20
	A = 16'h3ba5;
	B = 16'haec6;
	ans = 16'hae79;
	#20
	A = 16'hb9b9;
	B = 16'hb71e;
	ans = 16'h3517;
	#20
	A = 16'h3b18;
	B = 16'hb646;
	ans = 16'hb590;
	#20
	A = 16'h34cd;
	B = 16'h2fd1;
	ans = 16'h28b1;
	#20
	A = 16'h355f;
	B = 16'h3289;
	ans = 16'h2c63;
	#20
	A = 16'h355f;
	B = 16'hba9d;
	ans = 16'hb471;
	#20
	A = 16'h391d;
	B = 16'hb4ee;
	ans = 16'hb24d;
	#20
	A = 16'h3333;
	B = 16'h35d1;
	ans = 16'h2d3c;
	#20
	A = 16'hb00f;
	B = 16'h3bd1;
	ans = 16'hafee;
	#20
	A = 16'h398b;
	B = 16'hb867;
	ans = 16'hb61a;
	#20
	A = 16'hb084;
	B = 16'hb037;
	ans = 16'h24c2;
	#20
	A = 16'h3667;
	B = 16'h34f9;
	ans = 16'h2ff6;
	#20
	A = 16'hb605;
	B = 16'h3a56;
	ans = 16'hb4c4;
	#20
	A = 16'hb24f;
	B = 16'hbb56;
	ans = 16'h31c9;
	#20
	A = 16'h3bfe;
	B = 16'hba2c;
	ans = 16'hba2a;
	#20
	A = 16'h341e;
	B = 16'hb2d2;
	ans = 16'hab05;
	#20
	A = 16'h3008;
	B = 16'h3a59;
	ans = 16'h2e66;
	#20
	A = 16'h2b27;
	B = 16'h393c;
	ans = 16'h28ae;
	#20
	A = 16'h3b95;
	B = 16'hb66c;
	ans = 16'hb616;
	#20
	A = 16'h3349;
	B = 16'h3a2f;
	ans = 16'h31a2;
	#20
	A = 16'h31e7;
	B = 16'hb0c6;
	ans = 16'ha70b;
	#20
	A = 16'hafdb;
	B = 16'h34f2;
	ans = 16'ha8db;
	#20
	A = 16'hb56a;
	B = 16'haf39;
	ans = 16'h28e3;
	#20
	A = 16'hba2f;
	B = 16'hae40;
	ans = 16'h2cd5;
	#20
	A = 16'hb71c;
	B = 16'hb42c;
	ans = 16'h2f6a;
	#20
	A = 16'hb7d7;
	B = 16'h35d1;
	ans = 16'hb1b3;
	#20
	A = 16'hb7af;
	B = 16'h350d;
	ans = 16'hb0da;
	#20
	A = 16'hbb8c;
	B = 16'h39c9;
	ans = 16'hb975;
	#20
	A = 16'h341a;
	B = 16'h323a;
	ans = 16'h2a62;
	#20
	A = 16'h3a2a;
	B = 16'hb474;
	ans = 16'hb2dd;
	#20
	A = 16'h380f;
	B = 16'h3937;
	ans = 16'h354b;
	#20
	A = 16'hba89;
	B = 16'hb720;
	ans = 16'h35d2;
	#20
	A = 16'h3aba;
	B = 16'ha922;
	ans = 16'ha851;
	#20
	A = 16'h30cd;
	B = 16'hb275;
	ans = 16'ha7c0;
	#20
	A = 16'h3416;
	B = 16'hba94;
	ans = 16'hb2b8;
	#20
	A = 16'hb945;
	B = 16'h2cc2;
	ans = 16'haa45;
	#20
	A = 16'hb9bd;
	B = 16'h3a13;
	ans = 16'hb85b;
	#20
	A = 16'hb86c;
	B = 16'hb51f;
	ans = 16'h31a9;
	#20
	A = 16'h3936;
	B = 16'h3641;
	ans = 16'h3413;
	#20
	A = 16'h3b7c;
	B = 16'h30d5;
	ans = 16'h3085;
	#20
	A = 16'h3a45;
	B = 16'h3523;
	ans = 16'h3407;
	#20
	A = 16'hb5eb;
	B = 16'h2eca;
	ans = 16'ha906;
	#20
	A = 16'hb848;
	B = 16'hbaf7;
	ans = 16'h3774;
	#20
	A = 16'h311b;
	B = 16'h3a30;
	ans = 16'h2fe6;
	#20
	A = 16'h3967;
	B = 16'hbaca;
	ans = 16'hb896;
	#20
	A = 16'hb5ce;
	B = 16'hb8de;
	ans = 16'h3310;
	#20
	A = 16'hb8c1;
	B = 16'haa3b;
	ans = 16'h2768;
	#20
	A = 16'h38f9;
	B = 16'hb7c8;
	ans = 16'hb4d6;
	#20
	A = 16'h3922;
	B = 16'h2a72;
	ans = 16'h2823;
	#20
	A = 16'h3933;
	B = 16'hba12;
	ans = 16'hb7e4;
	#20
	A = 16'h2d3a;
	B = 16'h348d;
	ans = 16'h25f2;
	#20
	A = 16'h3a01;
	B = 16'h3ae0;
	ans = 16'h3929;
	#20
	A = 16'h3b00;
	B = 16'h3ae1;
	ans = 16'h3a05;
	#20
	A = 16'h3b17;
	B = 16'hb1ea;
	ans = 16'hb13e;
	#20
	A = 16'hba8f;
	B = 16'haaf3;
	ans = 16'h29b2;
	#20
	A = 16'hbbca;
	B = 16'hb727;
	ans = 16'h36f7;
	#20
	A = 16'hb881;
	B = 16'hb6a5;
	ans = 16'h337b;
	#20
	A = 16'hb4f8;
	B = 16'hb5d7;
	ans = 16'h2f41;
	#20
	A = 16'h37dc;
	B = 16'h3b7e;
	ans = 16'h375c;
	#20
	A = 16'hb599;
	B = 16'h2356;
	ans = 16'h9d22;
	#20
	A = 16'hb76d;
	B = 16'hbaf4;
	ans = 16'h3674;
	#20
	A = 16'h399f;
	B = 16'h3808;
	ans = 16'h35aa;
	#20
	A = 16'hb890;
	B = 16'h38c6;
	ans = 16'hb572;
	#20
	A = 16'hb39f;
	B = 16'hb201;
	ans = 16'h29b8;
	#20
	A = 16'h33cf;
	B = 16'haf9f;
	ans = 16'ha770;
	#20
	A = 16'hbb12;
	B = 16'hb02f;
	ans = 16'h2f65;
	#20
	A = 16'hb55a;
	B = 16'h3884;
	ans = 16'hb20b;
	#20
	A = 16'hb4cc;
	B = 16'h3b25;
	ans = 16'hb449;
	#20
	A = 16'h38df;
	B = 16'h3346;
	ans = 16'h306e;
	#20
	A = 16'h3340;
	B = 16'hb51e;
	ans = 16'haca3;
	#20
	A = 16'h3aa7;
	B = 16'hb6cc;
	ans = 16'hb5a7;
	#20
	A = 16'h37a0;
	B = 16'h35e2;
	ans = 16'h319b;
	#20
	A = 16'hb92a;
	B = 16'hb5d0;
	ans = 16'h3381;
	#20
	A = 16'hbae9;
	B = 16'hb86e;
	ans = 16'h37a7;
	#20
	A = 16'h284c;
	B = 16'hb262;
	ans = 16'h9edb;
	#20
	A = 16'hba22;
	B = 16'h3893;
	ans = 16'hb703;
	#20
	A = 16'hb333;
	B = 16'hba86;
	ans = 16'h31df;
	#20
	A = 16'hb1a0;
	B = 16'hbb45;
	ans = 16'h311d;
	#20
	A = 16'hb64a;
	B = 16'hb6e7;
	ans = 16'h316d;
	#20
	A = 16'h3536;
	B = 16'h3a35;
	ans = 16'h340b;
	#20
	A = 16'hba75;
	B = 16'h38f3;
	ans = 16'hb7fd;
	#20
	A = 16'h3b03;
	B = 16'haf2b;
	ans = 16'hae48;
	#20
	A = 16'h358d;
	B = 16'h1f57;
	ans = 16'h1918;
	#20
	A = 16'h30e4;
	B = 16'h39a0;
	ans = 16'h2ee1;
	#20
	A = 16'h304f;
	B = 16'hb4a3;
	ans = 16'ha8ff;
	#20
	A = 16'h2d74;
	B = 16'h23a4;
	ans = 16'h1535;
	#20
	A = 16'h34b2;
	B = 16'h3be5;
	ans = 16'h34a2;
	#20
	A = 16'h3790;
	B = 16'hb7a5;
	ans = 16'hb33a;
	#20
	A = 16'hbb42;
	B = 16'h3610;
	ans = 16'hb580;
	#20
	A = 16'h39dd;
	B = 16'h2845;
	ans = 16'h2642;
	#20
	A = 16'h2b1d;
	B = 16'h3415;
	ans = 16'h2342;
	#20
	A = 16'h3a16;
	B = 16'hb825;
	ans = 16'hb64e;
	#20
	A = 16'hb2a9;
	B = 16'hb8ea;
	ans = 16'h3017;
	#20
	A = 16'hb656;
	B = 16'h34be;
	ans = 16'haf83;
	#20
	A = 16'h3a36;
	B = 16'h3a0c;
	ans = 16'h38b2;
	#20
	A = 16'h32c3;
	B = 16'hb92c;
	ans = 16'hb05f;
	#20
	A = 16'h3083;
	B = 16'hb893;
	ans = 16'had29;
	#20
	A = 16'hb1a4;
	B = 16'hb90d;
	ans = 16'h2f1f;
	#20
	A = 16'hbb27;
	B = 16'h2dbe;
	ans = 16'had22;
	#20
	A = 16'hba34;
	B = 16'h3481;
	ans = 16'hb2fc;
	#20
	A = 16'hb537;
	B = 16'h3865;
	ans = 16'hb1bb;
	#20
	A = 16'h3929;
	B = 16'hb0e8;
	ans = 16'hae54;
	#20
	A = 16'h32cf;
	B = 16'hb975;
	ans = 16'hb0a5;
	#20
	A = 16'hb0ac;
	B = 16'h3aa2;
	ans = 16'hafbf;
	#20
	A = 16'h34e9;
	B = 16'h351a;
	ans = 16'h2e43;
	#20
	A = 16'h376d;
	B = 16'hb443;
	ans = 16'hafe9;
	#20
	A = 16'h3af1;
	B = 16'hb8ba;
	ans = 16'hb81a;
	#20
	A = 16'h3389;
	B = 16'hbb40;
	ans = 16'hb2d4;
	#20
	A = 16'h3b1b;
	B = 16'hb832;
	ans = 16'hb774;
	#20
	A = 16'h38a8;
	B = 16'hb894;
	ans = 16'hb554;
	#20
	A = 16'hb96a;
	B = 16'h2bfa;
	ans = 16'ha966;
	#20
	A = 16'hb7de;
	B = 16'hb3de;
	ans = 16'h2fbd;
	#20
	A = 16'hb4e5;
	B = 16'hb907;
	ans = 16'h3227;
	#20
	A = 16'h303e;
	B = 16'h3834;
	ans = 16'h2c75;
	#20
	A = 16'h2e25;
	B = 16'hb7de;
	ans = 16'haa0b;
	#20
	A = 16'hb5c5;
	B = 16'hb6e7;
	ans = 16'h30fa;
	#20
	A = 16'hb242;
	B = 16'ha8a0;
	ans = 16'h1f3c;
	#20
	A = 16'h3985;
	B = 16'hb383;
	ans = 16'hb12f;
	#20
	A = 16'hb7e2;
	B = 16'h3b40;
	ans = 16'hb725;
	#20
	A = 16'haaa7;
	B = 16'h3067;
	ans = 16'h9f52;
	#20
	A = 16'hbb30;
	B = 16'h3685;
	ans = 16'hb5db;
	#20
	A = 16'ha8c2;
	B = 16'hbabc;
	ans = 16'h2801;
	#20
	A = 16'h3a5d;
	B = 16'hb853;
	ans = 16'hb6e1;
	#20
	A = 16'haf60;
	B = 16'hb674;
	ans = 16'h29f3;
	#20
	A = 16'h360b;
	B = 16'hb409;
	ans = 16'hae19;
	#20
	A = 16'hb9ae;
	B = 16'hba88;
	ans = 16'h38a3;
	#20
	A = 16'h3af7;
	B = 16'hb407;
	ans = 16'hb303;
	#20
	A = 16'hb7f8;
	B = 16'h389c;
	ans = 16'hb497;
	#20
	A = 16'hba88;
	B = 16'h3abd;
	ans = 16'hb980;
	#20
	A = 16'h3b6d;
	B = 16'h3ab4;
	ans = 16'h3a39;
	#20
	A = 16'h3b7f;
	B = 16'h34b1;
	ans = 16'h3465;
	#20
	A = 16'hb065;
	B = 16'h391e;
	ans = 16'had9f;
	#20
	A = 16'ha809;
	B = 16'hb5c3;
	ans = 16'h21d0;
	#20
	A = 16'h3847;
	B = 16'h36be;
	ans = 16'h3336;
	#20
	A = 16'h3885;
	B = 16'h36e2;
	ans = 16'h33c7;
	#20
	A = 16'h35f1;
	B = 16'hbaab;
	ans = 16'hb4f4;
	#20
	A = 16'hb6cb;
	B = 16'hb4ae;
	ans = 16'h2ff2;
	#20
	A = 16'h39fd;
	B = 16'h38bc;
	ans = 16'h3716;
	#20
	A = 16'h3b36;
	B = 16'hbb08;
	ans = 16'hba56;
	#20
	A = 16'hb0de;
	B = 16'hb866;
	ans = 16'h2d5a;
	#20
	A = 16'hb49a;
	B = 16'hbb28;
	ans = 16'h341e;
	#20
	A = 16'hb8dd;
	B = 16'hb41c;
	ans = 16'h30ff;
	#20
	A = 16'h39cd;
	B = 16'h3992;
	ans = 16'h380a;
	#20
	A = 16'hb8d0;
	B = 16'h37b0;
	ans = 16'hb4a0;
	#20
	A = 16'hb8e8;
	B = 16'h34a2;
	ans = 16'hb1af;
	#20
	A = 16'h3a26;
	B = 16'h276e;
	ans = 16'h25b6;
	#20
	A = 16'h32d2;
	B = 16'hbb59;
	ans = 16'hb244;
	#20
	A = 16'hbbeb;
	B = 16'hba99;
	ans = 16'h3a88;
	#20
	A = 16'hbb16;
	B = 16'hb19e;
	ans = 16'h30fa;
	#20
	A = 16'h39e3;
	B = 16'hafe8;
	ans = 16'hadd1;
	#20
	A = 16'h203a;
	B = 16'h36a0;
	ans = 16'h1b00;
	#20
	A = 16'hac7d;
	B = 16'h31fe;
	ans = 16'ha2b9;
	#20
	A = 16'h3b30;
	B = 16'h37be;
	ans = 16'h36f5;
	#20
	A = 16'hb77d;
	B = 16'hb9f1;
	ans = 16'h3590;
	#20
	A = 16'h3ae8;
	B = 16'hb9ca;
	ans = 16'hb8ff;
	#20
	A = 16'h38b7;
	B = 16'hb2bd;
	ans = 16'haff1;
	#20
	A = 16'h39ac;
	B = 16'hb94b;
	ans = 16'hb781;
	#20
	A = 16'h3946;
	B = 16'h39ed;
	ans = 16'h37d0;
	#20
	A = 16'h3ad3;
	B = 16'h28f8;
	ans = 16'h283d;
	#20
	A = 16'hb5cf;
	B = 16'hb2a6;
	ans = 16'h2cd4;
	#20
	A = 16'h2f92;
	B = 16'h2ee2;
	ans = 16'h2283;
	#20
	A = 16'hb9cc;
	B = 16'h34fd;
	ans = 16'hb33b;
	#20
	A = 16'h2fa6;
	B = 16'h38e6;
	ans = 16'h2caf;
	#20
	A = 16'h3a74;
	B = 16'h385d;
	ans = 16'h370a;
	#20
	A = 16'hba62;
	B = 16'ha629;
	ans = 16'h24ea;
	#20
	A = 16'h3be3;
	B = 16'h3b9d;
	ans = 16'h3b81;
	#20
	A = 16'hb4a8;
	B = 16'hb58e;
	ans = 16'h2e77;
	#20
	A = 16'hbb3f;
	B = 16'h3803;
	ans = 16'hb744;
	#20
	A = 16'h3841;
	B = 16'h33dc;
	ans = 16'h302e;
	#20
	A = 16'hb578;
	B = 16'h3a2b;
	ans = 16'hb437;
	#20
	A = 16'h3b8b;
	B = 16'h3af4;
	ans = 16'h3a8e;
	#20
	A = 16'hb60a;
	B = 16'h305d;
	ans = 16'haa96;
	#20
	A = 16'h3810;
	B = 16'h35e6;
	ans = 16'h31fe;
	#20
	A = 16'h3669;
	B = 16'h34a1;
	ans = 16'h2f6b;
	#20
	A = 16'h39c7;
	B = 16'h3b79;
	ans = 16'h3966;
	#20
	A = 16'h3227;
	B = 16'hb662;
	ans = 16'hace9;
	#20
	A = 16'h2d0d;
	B = 16'h3856;
	ans = 16'h297a;
	#20
	A = 16'h32e3;
	B = 16'h2e38;
	ans = 16'h255a;
	#20
	A = 16'hb51c;
	B = 16'h3970;
	ans = 16'hb2f2;
	#20
	A = 16'h2baf;
	B = 16'hbbf2;
	ans = 16'haba2;
	#20
	A = 16'hbba3;
	B = 16'h3900;
	ans = 16'hb8c6;
	#20
	A = 16'hb565;
	B = 16'hb7b9;
	ans = 16'h3135;
	#20
	A = 16'h3a0c;
	B = 16'h3a98;
	ans = 16'h38fc;
	#20
	A = 16'h38c6;
	B = 16'hb7ec;
	ans = 16'hb4ba;
	#20
	A = 16'h38a0;
	B = 16'h3b30;
	ans = 16'h3828;
	#20
	A = 16'hb633;
	B = 16'h38a4;
	ans = 16'hb331;
	#20
	A = 16'had95;
	B = 16'h399f;
	ans = 16'habd8;
	#20
	A = 16'h3675;
	B = 16'h362e;
	ans = 16'h30fd;
	#20
	A = 16'hb2d1;
	B = 16'hb76e;
	ans = 16'h2e55;
	#20
	A = 16'h33fc;
	B = 16'h3557;
	ans = 16'h2d54;
	#20
	A = 16'h3b5f;
	B = 16'hb6a5;
	ans = 16'hb61f;
	#20
	A = 16'hb617;
	B = 16'haad0;
	ans = 16'h2530;
	#20
	A = 16'hb8f6;
	B = 16'h35b6;
	ans = 16'hb315;
	#20
	A = 16'hbaf9;
	B = 16'h3a49;
	ans = 16'hb97a;
	#20
	A = 16'h3840;
	B = 16'h3bf3;
	ans = 16'h3839;
	#20
	A = 16'h3a37;
	B = 16'hb4ec;
	ans = 16'hb3a6;
	#20
	A = 16'h3746;
	B = 16'h34aa;
	ans = 16'h303e;
	#20
	A = 16'h3b7b;
	B = 16'h38da;
	ans = 16'h3889;
	#20
	A = 16'h2d0e;
	B = 16'hb9c9;
	ans = 16'hab4f;
	#20
	A = 16'hba1a;
	B = 16'h35d7;
	ans = 16'hb474;
	#20
	A = 16'h2b94;
	B = 16'h3afe;
	ans = 16'h2aa0;
	#20
	A = 16'h380d;
	B = 16'h310f;
	ans = 16'h2d1f;
	#20
	A = 16'h3ae1;
	B = 16'hbbfc;
	ans = 16'hbade;
	#20
	A = 16'hadbb;
	B = 16'hbb0d;
	ans = 16'h2d0d;
	#20
	A = 16'h37f7;
	B = 16'hb80d;
	ans = 16'hb408;
	#20
	A = 16'h3039;
	B = 16'h3909;
	ans = 16'h2d51;
	#20
	A = 16'hbb5a;
	B = 16'h29de;
	ans = 16'ha964;
	#20
	A = 16'hbb10;
	B = 16'ha81e;
	ans = 16'h2745;
	#20
	A = 16'h3a66;
	B = 16'hba02;
	ans = 16'hb8ce;
	#20
	A = 16'hb85e;
	B = 16'h2c0a;
	ans = 16'ha869;
	#20
	A = 16'h3a8d;
	B = 16'h3901;
	ans = 16'h3819;
	#20
	A = 16'hb803;
	B = 16'hbb82;
	ans = 16'h3788;
	#20
	A = 16'hb922;
	B = 16'h393d;
	ans = 16'hb6b9;
	#20
	A = 16'h1af1;
	B = 16'ha91e;
	ans = 16'h8871;
	#20
	A = 16'h381f;
	B = 16'h3686;
	ans = 16'h32b9;
	#20
	A = 16'h2f14;
	B = 16'hb737;
	ans = 16'haa62;
	#20
	A = 16'hba8e;
	B = 16'h3bcf;
	ans = 16'hba66;
	#20
	A = 16'h34c8;
	B = 16'h397b;
	ans = 16'h328d;
	#20
	A = 16'h250c;
	B = 16'h2820;
	ans = 16'h1134;
	#20
	A = 16'hb910;
	B = 16'h317d;
	ans = 16'haef2;
	#20
	A = 16'hb69c;
	B = 16'h3b41;
	ans = 16'hb5fe;
	#20
	A = 16'hb264;
	B = 16'h32c7;
	ans = 16'ha96a;
	#20
	A = 16'hb949;
	B = 16'hb00c;
	ans = 16'h2d59;
	#20
	A = 16'h3a44;
	B = 16'h38d5;
	ans = 16'h3792;
	#20
	A = 16'hbbc8;
	B = 16'h1e43;
	ans = 16'h9e17;
	#20
	A = 16'h2980;
	B = 16'h3904;
	ans = 16'h26e6;
	#20
	A = 16'hb6af;
	B = 16'h37a1;
	ans = 16'hb260;
	#20
	A = 16'h38b0;
	B = 16'h313f;
	ans = 16'h2e26;
	#20
	A = 16'hb254;
	B = 16'hae0d;
	ans = 16'h24c9;
	#20
	A = 16'h38bc;
	B = 16'h3160;
	ans = 16'h2e5d;
	#20
	A = 16'hb146;
	B = 16'hb6fc;
	ans = 16'h2c9b;
	#20
	A = 16'h38b6;
	B = 16'h3b8a;
	ans = 16'h3871;
	#20
	A = 16'hb9f9;
	B = 16'hb97c;
	ans = 16'h3818;
	#20
	A = 16'h3947;
	B = 16'h3bd0;
	ans = 16'h3927;
	#20
	A = 16'hbbb8;
	B = 16'h3b6d;
	ans = 16'hbb2a;
	#20
	A = 16'h3bdf;
	B = 16'had01;
	ans = 16'hacec;
	#20
	A = 16'h353a;
	B = 16'h3a32;
	ans = 16'h340c;
	#20
	A = 16'hbbae;
	B = 16'h36ac;
	ans = 16'hb668;
	#20
	A = 16'haeeb;
	B = 16'h3979;
	ans = 16'hacbc;
	#20
	A = 16'hb77f;
	B = 16'hba58;
	ans = 16'h35f2;
	#20
	A = 16'h31c6;
	B = 16'hb924;
	ans = 16'haf6b;
	#20
	A = 16'hb661;
	B = 16'h38d6;
	ans = 16'hb3b6;
	#20
	A = 16'h329e;
	B = 16'h343e;
	ans = 16'h2b05;
	#20
	A = 16'h3988;
	B = 16'h383c;
	ans = 16'h35db;
	#20
	A = 16'h2fe2;
	B = 16'h38dd;
	ans = 16'h2ccb;
	#20
	A = 16'h3b4a;
	B = 16'h3b96;
	ans = 16'h3ae9;
	#20
	A = 16'h353d;
	B = 16'h39e2;
	ans = 16'h33b4;
	#20
	A = 16'hb152;
	B = 16'hbb31;
	ans = 16'h30c8;
	#20
	A = 16'hbaff;
	B = 16'hbb13;
	ans = 16'h3a30;
	#20
	A = 16'h3599;
	B = 16'hba47;
	ans = 16'hb464;
	#20
	A = 16'hb589;
	B = 16'h2f64;
	ans = 16'ha91d;
	#20
	A = 16'h385f;
	B = 16'h2c1e;
	ans = 16'h2880;
	#20
	A = 16'h3970;
	B = 16'h3839;
	ans = 16'h35bd;
	#20
	A = 16'h390b;
	B = 16'hb63f;
	ans = 16'hb3e0;
	#20
	A = 16'hba9b;
	B = 16'h3b3e;
	ans = 16'hb9fb;
	#20
	A = 16'h2d54;
	B = 16'hb872;
	ans = 16'ha9ec;
	#20
	A = 16'hb6cf;
	B = 16'hba94;
	ans = 16'h3599;
	#20
	A = 16'hb149;
	B = 16'h3a01;
	ans = 16'hafef;
	#20
	A = 16'h3663;
	B = 16'h32bc;
	ans = 16'h2d60;
	#20
	A = 16'hb109;
	B = 16'h38c0;
	ans = 16'hadfb;
	#20
	A = 16'h3674;
	B = 16'hbbd0;
	ans = 16'hb64d;
	#20
	A = 16'hb977;
	B = 16'h3867;
	ans = 16'hb604;
	#20
	A = 16'hb973;
	B = 16'h39e2;
	ans = 16'hb802;
	#20
	A = 16'h38f8;
	B = 16'h37fc;
	ans = 16'h34f6;
	#20
	A = 16'h3469;
	B = 16'had8e;
	ans = 16'ha620;
	#20
	A = 16'h30f2;
	B = 16'hb68c;
	ans = 16'hac0c;
	#20
	A = 16'hba5b;
	B = 16'haecb;
	ans = 16'h2d66;
	#20
	A = 16'h3394;
	B = 16'h3ba1;
	ans = 16'h333a;
	#20
	A = 16'hb675;
	B = 16'h349a;
	ans = 16'haf6e;
	#20
	A = 16'h34b5;
	B = 16'h3b73;
	ans = 16'h3462;
	#20
	A = 16'h343d;
	B = 16'hb84d;
	ans = 16'hb08f;
	#20
	A = 16'h36cb;
	B = 16'hbb2b;
	ans = 16'hb616;
	#20
	A = 16'hb065;
	B = 16'hb5a5;
	ans = 16'h2a34;
	#20
	A = 16'ha525;
	B = 16'hb69e;
	ans = 16'h2041;
	#20
	A = 16'h9820;
	B = 16'h39b3;
	ans = 16'h95e1;
	#20
	A = 16'h397c;
	B = 16'ha612;
	ans = 16'ha429;
	#20
	A = 16'haf72;
	B = 16'hbb63;
	ans = 16'h2ee0;
	#20
	A = 16'h3aec;
	B = 16'h3509;
	ans = 16'h345b;
	#20
	A = 16'hbbea;
	B = 16'hb621;
	ans = 16'h3610;
	#20
	A = 16'hb6e1;
	B = 16'h37a4;
	ans = 16'hb292;
	#20
	A = 16'haec5;
	B = 16'h3843;
	ans = 16'hab36;
	#20
	A = 16'h360b;
	B = 16'hbb63;
	ans = 16'hb594;
	#20
	A = 16'hb594;
	B = 16'h3b68;
	ans = 16'hb52a;
	#20
	A = 16'hba81;
	B = 16'h2dc4;
	ans = 16'hacb0;
	#20
	A = 16'hbb47;
	B = 16'hb9a3;
	ans = 16'h3921;
	#20
	A = 16'hb96a;
	B = 16'hba6b;
	ans = 16'h3858;
	#20
	A = 16'hb88c;
	B = 16'hb122;
	ans = 16'h2dd6;
	#20
	A = 16'hb466;
	B = 16'hb70b;
	ans = 16'h2fbf;
	#20
	A = 16'hac6b;
	B = 16'hb4bc;
	ans = 16'h253b;
	#20
	A = 16'h2e96;
	B = 16'hb97a;
	ans = 16'hac82;
	#20
	A = 16'h385f;
	B = 16'h319c;
	ans = 16'h2e21;
	#20
	A = 16'h363f;
	B = 16'hbb2f;
	ans = 16'hb59c;
	#20
	A = 16'h3b35;
	B = 16'ha99b;
	ans = 16'ha90d;
	#20
	A = 16'hb90b;
	B = 16'hb4d3;
	ans = 16'h3215;
	#20
	A = 16'h34b0;
	B = 16'h33a4;
	ans = 16'h2c7a;
	#20
	A = 16'hb758;
	B = 16'hb107;
	ans = 16'h2c9d;
	#20
	A = 16'hba9d;
	B = 16'hb8ad;
	ans = 16'h37bb;
	#20
	A = 16'h3b31;
	B = 16'h3a06;
	ans = 16'h396a;
	#20
	A = 16'hbb2c;
	B = 16'hb8a1;
	ans = 16'h3826;
	#20
	A = 16'h39c8;
	B = 16'h3b6f;
	ans = 16'h395f;
	#20
	A = 16'hb659;
	B = 16'h370c;
	ans = 16'hb197;
	#20
	A = 16'h2cc9;
	B = 16'h348a;
	ans = 16'h256e;
	#20
	A = 16'hbb4c;
	B = 16'hb717;
	ans = 16'h3677;
	#20
	A = 16'h39a4;
	B = 16'ha808;
	ans = 16'ha5af;
	#20
	A = 16'hb503;
	B = 16'hb96e;
	ans = 16'h32ce;
	#20
	A = 16'hb71d;
	B = 16'hbb62;
	ans = 16'h3691;
	#20
	A = 16'h35e6;
	B = 16'hb966;
	ans = 16'hb3f6;
	#20
	A = 16'h34a6;
	B = 16'hb1f5;
	ans = 16'haaec;
	#20
	A = 16'hb85e;
	B = 16'h34dc;
	ans = 16'hb14e;
	#20
	A = 16'hb9b5;
	B = 16'hb0b3;
	ans = 16'h2eb4;
	#20
	A = 16'h3523;
	B = 16'hb906;
	ans = 16'hb273;
	#20
	A = 16'h366c;
	B = 16'hb920;
	ans = 16'hb41d;
	#20
	A = 16'h351f;
	B = 16'hb2ab;
	ans = 16'hac45;
	#20
	A = 16'h3b48;
	B = 16'hb21f;
	ans = 16'hb192;
	#20
	A = 16'hb915;
	B = 16'hb929;
	ans = 16'h368e;
	#20
	A = 16'hbbed;
	B = 16'hba14;
	ans = 16'h3a06;
	#20
	A = 16'hba0f;
	B = 16'hb2f4;
	ans = 16'h3144;
	#20
	A = 16'h398c;
	B = 16'h35ff;
	ans = 16'h3428;
	#20
	A = 16'hba37;
	B = 16'hb86d;
	ans = 16'h36e0;
	#20
	A = 16'h36e0;
	B = 16'hba30;
	ans = 16'hb551;
	#20
	A = 16'h375b;
	B = 16'hb8c3;
	ans = 16'hb461;
	#20
	A = 16'hb84d;
	B = 16'h3882;
	ans = 16'hb4d9;
	#20
	A = 16'hb713;
	B = 16'hb662;
	ans = 16'h31a5;
	#20
	A = 16'hb79c;
	B = 16'hb8dc;
	ans = 16'h349f;
	#20
	A = 16'h3b66;
	B = 16'h2ee7;
	ans = 16'h2e62;
	#20
	A = 16'h3959;
	B = 16'hb8e6;
	ans = 16'hb68c;
	#20
	A = 16'h3995;
	B = 16'hb4ea;
	ans = 16'hb2dc;
	#20
	A = 16'h3143;
	B = 16'h3ae9;
	ans = 16'h308b;
	#20
	A = 16'h2d42;
	B = 16'h3a36;
	ans = 16'h2c15;
	#20
	A = 16'h3089;
	B = 16'hb1e3;
	ans = 16'ha6ad;
	#20
	A = 16'hbaf6;
	B = 16'h358f;
	ans = 16'hb4d6;
	#20
	A = 16'h345d;
	B = 16'hab84;
	ans = 16'ha419;
	#20
	A = 16'hb6b8;
	B = 16'h2d13;
	ans = 16'ha843;
	#20
	A = 16'h3aa5;
	B = 16'h378e;
	ans = 16'h3646;
	#20
	A = 16'hbb77;
	B = 16'hb2f0;
	ans = 16'h3279;
	#20
	A = 16'h3185;
	B = 16'h1b2e;
	ans = 16'h10f4;
	#20
	A = 16'h3804;
	B = 16'h3ab6;
	ans = 16'h36bd;
	#20
	A = 16'h3b87;
	B = 16'hb5fe;
	ans = 16'hb5a3;
	#20
	A = 16'hba42;
	B = 16'hb4e6;
	ans = 16'h33aa;
	#20
	A = 16'h390a;
	B = 16'h3635;
	ans = 16'h33d2;
	#20
	A = 16'h383e;
	B = 16'h1e2d;
	ans = 16'h1a8d;
	#20
	A = 16'hb525;
	B = 16'h30ec;
	ans = 16'haa55;
	#20
	A = 16'hb32e;
	B = 16'hbb65;
	ans = 16'h32a3;
	#20
	A = 16'h31b7;
	B = 16'hb3b7;
	ans = 16'ha983;
	#20
	A = 16'h30c8;
	B = 16'h3a9e;
	ans = 16'h2fe9;
	#20
	A = 16'had53;
	B = 16'h3337;
	ans = 16'ha4cd;
	#20
	A = 16'h2f01;
	B = 16'hb2b6;
	ans = 16'ha5e0;
	#20
	A = 16'h345d;
	B = 16'h29ac;
	ans = 16'h2230;
	#20
	A = 16'hb59a;
	B = 16'h38ea;
	ans = 16'hb2e2;
	#20
	A = 16'h3b4c;
	B = 16'hb963;
	ans = 16'hb8ea;
	#20
	A = 16'hb16b;
	B = 16'hb4ae;
	ans = 16'h2a57;
	#20
	A = 16'hb629;
	B = 16'hb586;
	ans = 16'h3041;
	#20
	A = 16'hb85f;
	B = 16'hb981;
	ans = 16'h3604;
	#20
	A = 16'h396d;
	B = 16'hbb30;
	ans = 16'hb8e0;
	#20
	A = 16'h30b9;
	B = 16'hb843;
	ans = 16'had08;
	#20
	A = 16'h3a7b;
	B = 16'hbb68;
	ans = 16'hba00;
	#20
	A = 16'hb92a;
	B = 16'h3770;
	ans = 16'hb4cd;
	#20
	A = 16'hb806;
	B = 16'hbaec;
	ans = 16'h36f6;
	#20
	A = 16'haf62;
	B = 16'h31ce;
	ans = 16'ha55b;
	#20
	A = 16'hb721;
	B = 16'hb7c4;
	ans = 16'h32ec;
	#20
	A = 16'hb8cb;
	B = 16'h24a0;
	ans = 16'ha18b;
	#20
	A = 16'hbbf2;
	B = 16'h37b6;
	ans = 16'hb7a9;
	#20
	A = 16'hb735;
	B = 16'h3b38;
	ans = 16'hb681;
	#20
	A = 16'hba93;
	B = 16'hb963;
	ans = 16'h386d;
	#20
	A = 16'h3708;
	B = 16'hbaa4;
	ans = 16'hb5d6;
	#20
	A = 16'h3964;
	B = 16'hbaca;
	ans = 16'hb893;
	#20
	A = 16'hb57e;
	B = 16'hbbf6;
	ans = 16'h3577;
	#20
	A = 16'h3b34;
	B = 16'hb3e3;
	ans = 16'hb31a;
	#20
	A = 16'h28b4;
	B = 16'ha7e8;
	ans = 16'h94a6;
	#20
	A = 16'hb96b;
	B = 16'h3143;
	ans = 16'haf21;
	#20
	A = 16'h32f1;
	B = 16'h39bf;
	ans = 16'h30fc;
	#20
	A = 16'hb5dd;
	B = 16'hb66c;
	ans = 16'h30b5;
	#20
	A = 16'had94;
	B = 16'hb46d;
	ans = 16'h262c;
	#20
	A = 16'h3bae;
	B = 16'h1193;
	ans = 16'h115a;
	#20
	A = 16'h33df;
	B = 16'hba06;
	ans = 16'hb1ed;
	#20
	A = 16'h3bb8;
	B = 16'hb206;
	ans = 16'hb1d0;
	#20
	A = 16'hbab1;
	B = 16'hb869;
	ans = 16'h3761;
	#20
	A = 16'h38a9;
	B = 16'hb464;
	ans = 16'hb11e;
	#20
	A = 16'ha88d;
	B = 16'h3a05;
	ans = 16'ha6d9;
	#20
	A = 16'h2649;
	B = 16'hb084;
	ans = 16'h9b18;
	#20
	A = 16'hbb10;
	B = 16'hba83;
	ans = 16'h39c0;
	#20
	A = 16'h3987;
	B = 16'hba94;
	ans = 16'hb88c;
	#20
	A = 16'h3b14;
	B = 16'habd2;
	ans = 16'haaeb;
	#20
	A = 16'hb777;
	B = 16'hb9c2;
	ans = 16'h355f;
	#20
	A = 16'h3bae;
	B = 16'hb9fa;
	ans = 16'hb9bd;
	#20
	A = 16'h3a1a;
	B = 16'h3bba;
	ans = 16'h39e5;
	#20
	A = 16'hb296;
	B = 16'h34b3;
	ans = 16'habbd;
	#20
	A = 16'hb45f;
	B = 16'hb869;
	ans = 16'h30d2;
	#20
	A = 16'h3519;
	B = 16'hb964;
	ans = 16'hb2df;
	#20
	A = 16'h3ae8;
	B = 16'h3afa;
	ans = 16'h3a06;
	#20
	A = 16'ha6cb;
	B = 16'h358d;
	ans = 16'ha0b7;
	#20
	A = 16'hb9de;
	B = 16'hbb65;
	ans = 16'h396c;
	#20
	A = 16'hb851;
	B = 16'h3711;
	ans = 16'hb3a0;
	#20
	A = 16'hb45f;
	B = 16'hb82c;
	ans = 16'h308f;
	#20
	A = 16'hb9e5;
	B = 16'h3a15;
	ans = 16'hb87b;
	#20
	A = 16'h3ae2;
	B = 16'h2e3e;
	ans = 16'h2d5f;
	#20
	A = 16'hb7dc;
	B = 16'had19;
	ans = 16'h2902;
	#20
	A = 16'hb9b6;
	B = 16'h3a34;
	ans = 16'hb86e;
	#20
	A = 16'hb96c;
	B = 16'h3b6d;
	ans = 16'hb908;
	#20
	A = 16'hb4e3;
	B = 16'hb171;
	ans = 16'h2aa6;
	#20
	A = 16'hb918;
	B = 16'h2526;
	ans = 16'ha28e;
	#20
	A = 16'h3524;
	B = 16'hbbc9;
	ans = 16'hb501;
	#20
	A = 16'hbb66;
	B = 16'ha9c2;
	ans = 16'h2953;
	#20
	A = 16'hb1dc;
	B = 16'h3809;
	ans = 16'hade9;
	#20
	A = 16'h3621;
	B = 16'hb589;
	ans = 16'hb03e;
	#20
	A = 16'hb8e6;
	B = 16'h3a93;
	ans = 16'hb807;
	#20
	A = 16'hbb24;
	B = 16'hba35;
	ans = 16'h398a;
	#20
	A = 16'hba55;
	B = 16'h3afa;
	ans = 16'hb986;
	#20
	A = 16'h3ac1;
	B = 16'hb6de;
	ans = 16'hb5cc;
	#20
	A = 16'h2c7f;
	B = 16'hb201;
	ans = 16'ha2c0;
	#20
	A = 16'h29b6;
	B = 16'hb919;
	ans = 16'ha747;
	#20
	A = 16'hbb64;
	B = 16'h3937;
	ans = 16'hb8d1;
	#20
	A = 16'ha91b;
	B = 16'h3a26;
	ans = 16'ha7d9;
	#20
	A = 16'hb971;
	B = 16'haffa;
	ans = 16'h2d6d;
	#20
	A = 16'h388a;
	B = 16'h3a47;
	ans = 16'h3720;
	#20
	A = 16'h3bfd;
	B = 16'hae6b;
	ans = 16'hae69;
	#20
	A = 16'h3843;
	B = 16'hbbcc;
	ans = 16'hb827;
	#20
	A = 16'hb8bb;
	B = 16'hb714;
	ans = 16'h342f;
	#20
	A = 16'hb606;
	B = 16'h39c9;
	ans = 16'hb45b;
	#20
	A = 16'hb9a8;
	B = 16'hbaef;
	ans = 16'h38e7;
	#20
	A = 16'h393f;
	B = 16'h30e0;
	ans = 16'h2e65;
	#20
	A = 16'h379b;
	B = 16'hb87d;
	ans = 16'hb444;
	#20
	A = 16'hb8fd;
	B = 16'h3840;
	ans = 16'hb54d;
	#20
	A = 16'h3ad5;
	B = 16'hbbe1;
	ans = 16'hbabb;
	#20
	A = 16'h3a6a;
	B = 16'hba2a;
	ans = 16'hb8f1;
	#20
	A = 16'h3208;
	B = 16'hb890;
	ans = 16'haee1;
	#20
	A = 16'hb772;
	B = 16'h3b7c;
	ans = 16'hb6f7;
	#20
	A = 16'hab4a;
	B = 16'hbbe1;
	ans = 16'h2b2e;
	#20
	A = 16'h3ad3;
	B = 16'h37e4;
	ans = 16'h36bb;
	#20
	A = 16'hb174;
	B = 16'hbaba;
	ans = 16'h3096;
	#20
	A = 16'h34c4;
	B = 16'hb9ff;
	ans = 16'hb325;
	#20
	A = 16'h31f4;
	B = 16'h3a72;
	ans = 16'h30cc;
	#20
	A = 16'hb739;
	B = 16'hb42c;
	ans = 16'h2f88;
	#20
	A = 16'hb684;
	B = 16'hbad2;
	ans = 16'h358e;
	#20
	A = 16'h343a;
	B = 16'had30;
	ans = 16'ha57b;
	#20
	A = 16'h3437;
	B = 16'hb81d;
	ans = 16'hb056;
	#20
	A = 16'hb9be;
	B = 16'h36e9;
	ans = 16'hb4f6;
	#20
	A = 16'h3b6c;
	B = 16'h3514;
	ans = 16'h34b6;
	#20
	A = 16'h3bde;
	B = 16'hbb59;
	ans = 16'hbb3a;
	#20
	A = 16'hba65;
	B = 16'h35df;
	ans = 16'hb4b1;
	#20
	A = 16'h39d2;
	B = 16'hb74d;
	ans = 16'hb550;
	#20
	A = 16'h3826;
	B = 16'ha8c3;
	ans = 16'ha4f0;
	#20
	A = 16'h389e;
	B = 16'h3736;
	ans = 16'h3429;
	#20
	A = 16'h36ba;
	B = 16'h285f;
	ans = 16'h235a;
	#20
	A = 16'hb162;
	B = 16'hacc0;
	ans = 16'h2264;
	#20
	A = 16'h377e;
	B = 16'hb3b6;
	ans = 16'haf39;
	#20
	A = 16'h2c7b;
	B = 16'h3585;
	ans = 16'h262f;
	#20
	A = 16'hbbe7;
	B = 16'hbb18;
	ans = 16'h3b02;
	#20
	A = 16'hbaab;
	B = 16'habd5;
	ans = 16'h2a87;
	#20
	A = 16'hb82f;
	B = 16'h3068;
	ans = 16'hac9c;
	#20
	A = 16'hb848;
	B = 16'h37fa;
	ans = 16'hb445;
	#20
	A = 16'h3b37;
	B = 16'h38ed;
	ans = 16'h3871;
	#20
	A = 16'h3a09;
	B = 16'h3a74;
	ans = 16'h38de;
	#20
	A = 16'h2def;
	B = 16'hbb26;
	ans = 16'had4d;
	#20
	A = 16'h3013;
	B = 16'hb8c0;
	ans = 16'hacd7;
	#20
	A = 16'h3510;
	B = 16'habbb;
	ans = 16'ha4e4;
	#20
	A = 16'hb05c;
	B = 16'h3b44;
	ans = 16'hafeb;
	#20
	A = 16'h3919;
	B = 16'h3a4f;
	ans = 16'h3805;
	#20
	A = 16'hb9ae;
	B = 16'h3a67;
	ans = 16'hb88c;
	#20
	A = 16'h3a7d;
	B = 16'hb8e1;
	ans = 16'hb7ea;
	#20
	A = 16'h3996;
	B = 16'h3685;
	ans = 16'h348d;
	#20
	A = 16'hb442;
	B = 16'h2cd8;
	ans = 16'ha528;
	#20
	A = 16'hb079;
	B = 16'h355b;
	ans = 16'ha9fd;
	#20
	A = 16'hab2b;
	B = 16'hba9f;
	ans = 16'h29ef;
	#20
	A = 16'hb45f;
	B = 16'h39b9;
	ans = 16'hb241;
	#20
	A = 16'hbbc0;
	B = 16'hbb7b;
	ans = 16'h3b3f;
	#20
	A = 16'hb035;
	B = 16'hb538;
	ans = 16'h297d;
	#20
	A = 16'hbb53;
	B = 16'hb619;
	ans = 16'h3595;
	#20
	A = 16'h334a;
	B = 16'h31e0;
	ans = 16'h295a;
	#20
	A = 16'hb928;
	B = 16'h398a;
	ans = 16'hb724;
	#20
	A = 16'h3be7;
	B = 16'hb6d4;
	ans = 16'hb6bf;
	#20
	A = 16'hbbb3;
	B = 16'hb9e4;
	ans = 16'h39ab;
	#20
	A = 16'hb1af;
	B = 16'hb615;
	ans = 16'h2c52;
	#20
	A = 16'hb8f5;
	B = 16'h37b5;
	ans = 16'hb4c7;
	#20
	A = 16'h3990;
	B = 16'hba1f;
	ans = 16'hb842;
	#20
	A = 16'h3bb1;
	B = 16'hb4d4;
	ans = 16'hb4a4;
	#20
	A = 16'hac77;
	B = 16'hb66f;
	ans = 16'h272e;
	#20
	A = 16'h3b97;
	B = 16'hb801;
	ans = 16'hb799;
	#20
	A = 16'hbb26;
	B = 16'ha6a4;
	ans = 16'h25ef;
	#20
	A = 16'hbb75;
	B = 16'hac95;
	ans = 16'h2c45;
	#20
	A = 16'hb2b5;
	B = 16'h34d3;
	ans = 16'hac0b;
	#20
	A = 16'h3296;
	B = 16'had8d;
	ans = 16'ha492;
	#20
	A = 16'hb62a;
	B = 16'h39ca;
	ans = 16'hb476;
	#20
	A = 16'h36c1;
	B = 16'hbbe2;
	ans = 16'hb6a8;
	#20
	A = 16'h3462;
	B = 16'hb9fb;
	ans = 16'hb28e;
	#20
	A = 16'h37a0;
	B = 16'hb5f5;
	ans = 16'hb1ae;
	#20
	A = 16'hbbbe;
	B = 16'h3a3a;
	ans = 16'hba07;
	#20
	A = 16'h3907;
	B = 16'h3a6c;
	ans = 16'h3809;
	#20
	A = 16'hb8e8;
	B = 16'hb645;
	ans = 16'h33b1;
	#20
	A = 16'h3bd1;
	B = 16'hb68d;
	ans = 16'hb667;
	#20
	A = 16'h1f8d;
	B = 16'h35af;
	ans = 16'h195d;
	#20
	A = 16'hbab1;
	B = 16'h398e;
	ans = 16'hb8a5;
	#20
	A = 16'hba17;
	B = 16'hb820;
	ans = 16'h3648;
	#20
	A = 16'h34a0;
	B = 16'hba65;
	ans = 16'hb365;
	#20
	A = 16'hb60a;
	B = 16'h33e0;
	ans = 16'hadf2;
	#20
	A = 16'ha725;
	B = 16'habf2;
	ans = 16'h1718;
	#20
	A = 16'h3aca;
	B = 16'h397c;
	ans = 16'h38a7;
	#20
	A = 16'h3814;
	B = 16'hb68f;
	ans = 16'hb2b0;
	#20
	A = 16'h39a0;
	B = 16'h3446;
	ans = 16'h3202;
	#20
	A = 16'hac28;
	B = 16'hbb60;
	ans = 16'h2baa;
	#20
	A = 16'h35e1;
	B = 16'hbae5;
	ans = 16'hb511;
	#20
	A = 16'h382b;
	B = 16'h2f9a;
	ans = 16'h2bec;
	#20
	A = 16'h3504;
	B = 16'h3b1e;
	ans = 16'h3476;
	#20
	A = 16'hb3ff;
	B = 16'h382f;
	ans = 16'hb02e;
	#20
	A = 16'h33d5;
	B = 16'h25c2;
	ans = 16'h1da3;
	#20
	A = 16'hb852;
	B = 16'h32fc;
	ans = 16'haf8b;
	#20
	A = 16'h3a77;
	B = 16'h3634;
	ans = 16'h3503;
	#20
	A = 16'hb64e;
	B = 16'h3888;
	ans = 16'hb324;
	#20
	A = 16'h3490;
	B = 16'h38e1;
	ans = 16'h3191;
	#20
	A = 16'h30c9;
	B = 16'hb273;
	ans = 16'ha7b7;
	#20
	A = 16'hb923;
	B = 16'ha9d8;
	ans = 16'h2781;
	#20
	A = 16'h3b14;
	B = 16'h3645;
	ans = 16'h358c;
	#20
	A = 16'hb786;
	B = 16'hb037;
	ans = 16'h2bed;
	#20
	A = 16'hb7bf;
	B = 16'h3b1b;
	ans = 16'hb6e1;
	#20
	A = 16'h3985;
	B = 16'h347c;
	ans = 16'h3230;
	#20
	A = 16'h3ad4;
	B = 16'h3a49;
	ans = 16'h395d;
	#20
	A = 16'h3626;
	B = 16'h2954;
	ans = 16'h2418;
	#20
	A = 16'hacbe;
	B = 16'h3970;
	ans = 16'haa72;
	#20
	A = 16'h335a;
	B = 16'h3514;
	ans = 16'h2cab;
	#20
	A = 16'hb874;
	B = 16'h2ca5;
	ans = 16'ha92c;
	#20
	A = 16'h3912;
	B = 16'hbb6f;
	ans = 16'hb8b6;
	#20
	A = 16'hae65;
	B = 16'hb33a;
	ans = 16'h25c7;
	#20
	A = 16'hb41e;
	B = 16'h397c;
	ans = 16'hb1a5;
	#20
	A = 16'hb42b;
	B = 16'h38a5;
	ans = 16'hb0d7;
	#20
	A = 16'hb334;
	B = 16'h3bcf;
	ans = 16'hb308;
	#20
	A = 16'hb9d1;
	B = 16'hb379;
	ans = 16'h316f;
	#20
	A = 16'h3a50;
	B = 16'hb90d;
	ans = 16'hb7f9;
	#20
	A = 16'h3b3f;
	B = 16'hb6f2;
	ans = 16'hb64a;
	#20
	A = 16'hb9d1;
	B = 16'hb6ab;
	ans = 16'h34d9;
	#20
	A = 16'h3abe;
	B = 16'hb9bb;
	ans = 16'hb8d4;
	#20
	A = 16'hba08;
	B = 16'hbb13;
	ans = 16'h3955;
	#20
	A = 16'h3673;
	B = 16'h3bf3;
	ans = 16'h3669;
	#20
	A = 16'h3079;
	B = 16'hb92a;
	ans = 16'hadc6;
	#20
	A = 16'h38d5;
	B = 16'h391e;
	ans = 16'h362e;
	#20
	A = 16'h3a71;
	B = 16'hb8bd;
	ans = 16'hb7a1;
	#20
	A = 16'had21;
	B = 16'h3927;
	ans = 16'haa9b;
	#20
	A = 16'h3aff;
	B = 16'h31de;
	ans = 16'h3122;
	#20
	A = 16'hba6d;
	B = 16'ha631;
	ans = 16'h24f9;
	#20
	A = 16'hb5e1;
	B = 16'h34ee;
	ans = 16'haf3f;
	#20
	A = 16'h3a57;
	B = 16'hb011;
	ans = 16'hae72;
	#20
	A = 16'hbb7d;
	B = 16'h38f4;
	ans = 16'hb8a3;
	#20
	A = 16'hb721;
	B = 16'hac7d;
	ans = 16'h2800;
	#20
	A = 16'h3987;
	B = 16'hb8a5;
	ans = 16'hb66b;
	#20
	A = 16'h3a6d;
	B = 16'hb0e5;
	ans = 16'hafdd;
	#20
	A = 16'hb477;
	B = 16'hb5be;
	ans = 16'h2e69;
	#20
	A = 16'h360a;
	B = 16'h38da;
	ans = 16'h3353;
	#20
	A = 16'hbb2d;
	B = 16'h39c6;
	ans = 16'hb92e;
	#20
	A = 16'h3b7a;
	B = 16'h34f1;
	ans = 16'h349e;
	#20
	A = 16'h31e3;
	B = 16'h3463;
	ans = 16'h2a75;
	#20
	A = 16'hbadf;
	B = 16'h3657;
	ans = 16'hb572;
	#20
	A = 16'h3924;
	B = 16'h3b56;
	ans = 16'h38b7;
	#20
	A = 16'hb8be;
	B = 16'hb636;
	ans = 16'h335d;
	#20
	A = 16'hb521;
	B = 16'h287f;
	ans = 16'ha1c4;
	#20
	A = 16'h18c0;
	B = 16'hb36f;
	ans = 16'h906a;
	#20
	A = 16'h38be;
	B = 16'h383c;
	ans = 16'h3505;
	#20
	A = 16'h351c;
	B = 16'hba8b;
	ans = 16'hb42e;
	#20
	A = 16'h33c3;
	B = 16'h3774;
	ans = 16'h2f3b;
	#20
	A = 16'h394d;
	B = 16'h39b8;
	ans = 16'h3794;
	#20
	A = 16'h315b;
	B = 16'h3be1;
	ans = 16'h3146;
	#20
	A = 16'hb9a7;
	B = 16'h3717;
	ans = 16'hb502;
	#20
	A = 16'h38b1;
	B = 16'hb2d0;
	ans = 16'haffd;
	#20
	A = 16'hbba2;
	B = 16'hb8c4;
	ans = 16'h388c;
	#20
	A = 16'hba85;
	B = 16'ha430;
	ans = 16'h22d3;
	#20
	A = 16'h3563;
	B = 16'hb0df;
	ans = 16'haa8f;
	#20
	A = 16'h37d0;
	B = 16'hbbfc;
	ans = 16'hb7cc;
	#20
	A = 16'hb6e7;
	B = 16'hb488;
	ans = 16'h2fd2;
	#20
	A = 16'h380f;
	B = 16'hbac9;
	ans = 16'hb6e2;
	#20
	A = 16'h39bb;
	B = 16'ha519;
	ans = 16'ha34e;
	#20
	A = 16'h3b7d;
	B = 16'hb75f;
	ans = 16'hb6e6;
	#20
	A = 16'h373f;
	B = 16'hb4b7;
	ans = 16'hb045;
	#20
	A = 16'h39f6;
	B = 16'h3b50;
	ans = 16'h3973;
	#20
	A = 16'h3a3e;
	B = 16'hb043;
	ans = 16'haea7;
	#20
	A = 16'h32eb;
	B = 16'hbb08;
	ans = 16'hb215;
	#20
	A = 16'h3bdf;
	B = 16'had0e;
	ans = 16'hacf9;
	#20
	A = 16'h398d;
	B = 16'h35a9;
	ans = 16'h33db;
	#20
	A = 16'h2615;
	B = 16'hb8ce;
	ans = 16'ha34e;
	#20
	A = 16'hb7f2;
	B = 16'h2866;
	ans = 16'ha45e;
	#20
	A = 16'h3209;
	B = 16'hb9d8;
	ans = 16'hb069;
	#20
	A = 16'hb596;
	B = 16'h399c;
	ans = 16'hb3d5;
	#20
	A = 16'hbaad;
	B = 16'h34a7;
	ans = 16'hb3c4;
	#20
	A = 16'h33f2;
	B = 16'hb8c9;
	ans = 16'hb0c1;
	#20
	A = 16'h3bcc;
	B = 16'h359b;
	ans = 16'h3577;
	#20
	A = 16'hb896;
	B = 16'h3a08;
	ans = 16'hb6ea;
	#20
	A = 16'hb7ff;
	B = 16'hb8d5;
	ans = 16'h34d4;
	#20
	A = 16'ha969;
	B = 16'h3b41;
	ans = 16'ha8e8;
	#20
	A = 16'h368a;
	B = 16'hbbe8;
	ans = 16'hb676;
	#20
	A = 16'h36ea;
	B = 16'hb887;
	ans = 16'hb3d3;
	#20
	A = 16'hbb48;
	B = 16'h3bee;
	ans = 16'hbb38;
	#20
	A = 16'h3455;
	B = 16'hba72;
	ans = 16'hb2fb;
	#20
	A = 16'h3688;
	B = 16'hbac3;
	ans = 16'hb585;
	#20
	A = 16'hb618;
	B = 16'h3b66;
	ans = 16'hb5a3;
	#20
	A = 16'h3856;
	B = 16'h3927;
	ans = 16'h3596;
	#20
	A = 16'hacb1;
	B = 16'h3611;
	ans = 16'ha71d;
	#20
	A = 16'hb1a7;
	B = 16'h2e8a;
	ans = 16'ha49f;
	#20
	A = 16'hb80d;
	B = 16'h3b19;
	ans = 16'hb730;
	#20
	A = 16'h3944;
	B = 16'h38a9;
	ans = 16'h3622;
	#20
	A = 16'hb4f5;
	B = 16'hb90b;
	ans = 16'h3240;
	#20
	A = 16'h399c;
	B = 16'h3a35;
	ans = 16'h385a;
	#20
	A = 16'hb899;
	B = 16'hb348;
	ans = 16'h302f;
	#20
	A = 16'h3ba3;
	B = 16'h3950;
	ans = 16'h3912;
	#20
	A = 16'h3a7a;
	B = 16'hb8fe;
	ans = 16'hb80b;
	#20
	A = 16'hbb62;
	B = 16'h395a;
	ans = 16'hb8f0;
	#20
	A = 16'h3bd2;
	B = 16'h3ae8;
	ans = 16'h3ac0;
	#20
	A = 16'hac5c;
	B = 16'hac4a;
	ans = 16'h1cad;
	#20
	A = 16'h30c8;
	B = 16'h365e;
	ans = 16'h2b9c;
	#20
	A = 16'hb459;
	B = 16'h2e52;
	ans = 16'ha6df;
	#20
	A = 16'hb85d;
	B = 16'haeb9;
	ans = 16'h2b55;
	#20
	A = 16'hb913;
	B = 16'hb803;
	ans = 16'h3517;
	#20
	A = 16'hb522;
	B = 16'hbabf;
	ans = 16'h3454;
	#20
	A = 16'hb49d;
	B = 16'h3a0b;
	ans = 16'hb2f8;
	#20
	A = 16'h3a1d;
	B = 16'h39b6;
	ans = 16'h385d;
	#20
	A = 16'h2808;
	B = 16'h3b84;
	ans = 16'h2793;
	#20
	A = 16'h3164;
	B = 16'h3446;
	ans = 16'h29c2;
	#20
	A = 16'hb25f;
	B = 16'hbb3e;
	ans = 16'h31c5;
	#20
	A = 16'hb2c1;
	B = 16'hacbc;
	ans = 16'h23fe;
	#20
	A = 16'h37ad;
	B = 16'h238f;
	ans = 16'h1f41;
	#20
	A = 16'h2adf;
	B = 16'h3425;
	ans = 16'h231f;
	#20
	A = 16'h370e;
	B = 16'h390a;
	ans = 16'h3472;
	#20
	A = 16'hb5fd;
	B = 16'hbb7c;
	ans = 16'h359a;
	#20
	A = 16'h3b38;
	B = 16'h3bcb;
	ans = 16'h3b08;
	#20
	A = 16'h3364;
	B = 16'hb99d;
	ans = 16'hb130;
	#20
	A = 16'hb7ec;
	B = 16'h3457;
	ans = 16'hb04c;
	#20
	A = 16'hbae9;
	B = 16'hb0a4;
	ans = 16'h3002;
	#20
	A = 16'h2f7c;
	B = 16'hb933;
	ans = 16'hacdd;
	#20
	A = 16'hbb4a;
	B = 16'h1d24;
	ans = 16'h9caf;
	#20
	A = 16'h3a28;
	B = 16'h345b;
	ans = 16'h32b4;
	#20
	A = 16'hb9e1;
	B = 16'h3225;
	ans = 16'hb084;
	#20
	A = 16'hb84f;
	B = 16'hb69c;
	ans = 16'h331f;
	#20
	A = 16'hb8c8;
	B = 16'h3b0a;
	ans = 16'hb835;
	#20
	A = 16'hb73e;
	B = 16'h34ff;
	ans = 16'hb086;
	#20
	A = 16'hac1f;
	B = 16'h335b;
	ans = 16'ha394;
	#20
	A = 16'hb4d1;
	B = 16'h382d;
	ans = 16'hb107;
	#20
	A = 16'hb385;
	B = 16'h3a56;
	ans = 16'hb1f5;
	#20
	A = 16'h3993;
	B = 16'hae77;
	ans = 16'hac81;
	#20
	A = 16'h3515;
	B = 16'h3644;
	ans = 16'h2ff6;
	#20
	A = 16'hbbc5;
	B = 16'hb9c0;
	ans = 16'h3996;
	#20
	A = 16'h3170;
	B = 16'h3b48;
	ans = 16'h30f3;
	#20
	A = 16'hb761;
	B = 16'h3a37;
	ans = 16'hb5bb;
	#20
	A = 16'h3819;
	B = 16'h24cb;
	ans = 16'h20e9;
	#20
	A = 16'hb8f2;
	B = 16'hb732;
	ans = 16'h3473;
	#20
	A = 16'h2ce3;
	B = 16'h2040;
	ans = 16'h1131;
	#20
	A = 16'h3825;
	B = 16'hbb4e;
	ans = 16'hb792;
	#20
	A = 16'h3be3;
	B = 16'h39d7;
	ans = 16'h39c2;
	#20
	A = 16'h386d;
	B = 16'h2f39;
	ans = 16'h2bfe;
	#20
	A = 16'h3608;
	B = 16'hb831;
	ans = 16'hb252;
	#20
	A = 16'h3731;
	B = 16'hb9bd;
	ans = 16'hb529;
	#20
	A = 16'hba9e;
	B = 16'hbb66;
	ans = 16'h3a1f;
	#20
	A = 16'h38b8;
	B = 16'h3842;
	ans = 16'h3506;
	#20
	A = 16'hb6bd;
	B = 16'hba5e;
	ans = 16'h355d;
	#20
	A = 16'h3572;
	B = 16'hb4fb;
	ans = 16'haec8;
	#20
	A = 16'h372d;
	B = 16'h3130;
	ans = 16'h2ca7;
	#20
	A = 16'hb24d;
	B = 16'haaf2;
	ans = 16'h2178;
	#20
	A = 16'h38d3;
	B = 16'h1d29;
	ans = 16'h1a39;
	#20
	A = 16'hb491;
	B = 16'h3a75;
	ans = 16'hb35f;
	#20
	A = 16'h396a;
	B = 16'h2f37;
	ans = 16'h2ce2;
	#20
	A = 16'h3780;
	B = 16'hb708;
	ans = 16'hb298;
	#20
	A = 16'habcb;
	B = 16'hb6ce;
	ans = 16'h26a1;
	#20
	A = 16'hb06f;
	B = 16'hbad8;
	ans = 16'h2f96;
	#20
	A = 16'hb538;
	B = 16'ha622;
	ans = 16'h2000;
	#20
	A = 16'h3a9a;
	B = 16'h3a4c;
	ans = 16'h3932;
	#20
	A = 16'h386b;
	B = 16'h2ce6;
	ans = 16'h2969;
	#20
	A = 16'hb864;
	B = 16'hbac1;
	ans = 16'h376a;
	#20
	A = 16'hbb10;
	B = 16'h3948;
	ans = 16'hb8aa;
	#20
	A = 16'h39bc;
	B = 16'h37a1;
	ans = 16'h3578;
	#20
	A = 16'haa48;
	B = 16'hbb9d;
	ans = 16'h29fa;
	#20
	A = 16'hb87d;
	B = 16'hbac0;
	ans = 16'h3793;
	#20
	A = 16'h34a6;
	B = 16'hbb1b;
	ans = 16'hb421;
	#20
	A = 16'h38b5;
	B = 16'h3a7c;
	ans = 16'h37a1;
	#20
	A = 16'h343d;
	B = 16'hba9f;
	ans = 16'hb304;
	#20
	A = 16'hb4bd;
	B = 16'h2797;
	ans = 16'ha07f;
	#20
	A = 16'hb697;
	B = 16'h390d;
	ans = 16'hb429;
	#20
	A = 16'hb776;
	B = 16'h384a;
	ans = 16'hb400;
	#20
	A = 16'h3b6d;
	B = 16'h3811;
	ans = 16'h378d;
	#20
	A = 16'h3860;
	B = 16'h3bd4;
	ans = 16'h3848;
	#20
	A = 16'h2f7c;
	B = 16'h3931;
	ans = 16'h2cdb;
	#20
	A = 16'hbbbf;
	B = 16'h3832;
	ans = 16'hb810;
	#20
	A = 16'hb3ba;
	B = 16'h36a9;
	ans = 16'hae6f;
	#20
	A = 16'h3781;
	B = 16'h3ac5;
	ans = 16'h365a;
	#20
	A = 16'h38f1;
	B = 16'h303a;
	ans = 16'h2d39;
	#20
	A = 16'hbb47;
	B = 16'hb874;
	ans = 16'h380d;
	#20
	A = 16'h3ba7;
	B = 16'h3902;
	ans = 16'h38ca;
	#20
	A = 16'hb9b2;
	B = 16'h36fd;
	ans = 16'hb4fa;
	#20
	A = 16'hb8ca;
	B = 16'h3b10;
	ans = 16'hb83a;
	#20
	A = 16'h3a02;
	B = 16'hb5e4;
	ans = 16'hb46c;
	#20
	A = 16'hbbb6;
	B = 16'hb820;
	ans = 16'h37f4;
	#20
	A = 16'ha6c9;
	B = 16'hb66e;
	ans = 16'h2174;
	#20
	A = 16'habd3;
	B = 16'hb0e0;
	ans = 16'h20c5;
	#20
	A = 16'hafc5;
	B = 16'hb8a0;
	ans = 16'h2c7e;
	#20
	A = 16'h31c3;
	B = 16'hb951;
	ans = 16'hafa8;
	#20
	A = 16'h38a5;
	B = 16'h32ef;
	ans = 16'h3007;
	#20
	A = 16'hbbc5;
	B = 16'h393e;
	ans = 16'hb917;
	#20
	A = 16'hb9b2;
	B = 16'hb585;
	ans = 16'h33dc;
	#20
	A = 16'hb88e;
	B = 16'h34b8;
	ans = 16'hb160;
	#20
	A = 16'hb1c5;
	B = 16'h39bf;
	ans = 16'hb025;
	#20
	A = 16'h36d2;
	B = 16'h30cf;
	ans = 16'h2c19;
	#20
	A = 16'h37c8;
	B = 16'h24bf;
	ans = 16'h209e;
	#20
	A = 16'h3a5e;
	B = 16'h3a6b;
	ans = 16'h391c;
	#20
	A = 16'h3717;
	B = 16'hb3f1;
	ans = 16'haf0a;
	#20
	A = 16'ha6af;
	B = 16'hb57a;
	ans = 16'h2093;
	#20
	A = 16'hbb24;
	B = 16'hb6c8;
	ans = 16'h360e;
	#20
	A = 16'ha4ab;
	B = 16'h325a;
	ans = 16'h9b6a;
	#20
	A = 16'h3049;
	B = 16'h3ae5;
	ans = 16'h2f63;
	#20
	A = 16'h3493;
	B = 16'h38ef;
	ans = 16'h31a4;
	#20
	A = 16'hb772;
	B = 16'h3218;
	ans = 16'hadac;
	#20
	A = 16'h3aba;
	B = 16'hb925;
	ans = 16'hb853;
	#20
	A = 16'hb9a7;
	B = 16'hb2d8;
	ans = 16'h30d6;
	#20
	A = 16'h38cb;
	B = 16'h29cc;
	ans = 16'h26f2;
	#20
	A = 16'h351e;
	B = 16'hb66a;
	ans = 16'hb01a;
	#20
	A = 16'hb2d3;
	B = 16'h361e;
	ans = 16'had38;
	#20
	A = 16'hbb87;
	B = 16'h3b3a;
	ans = 16'hbacd;
	#20
	A = 16'hb516;
	B = 16'h3525;
	ans = 16'hae8b;
	#20
	A = 16'h39e6;
	B = 16'h3bdb;
	ans = 16'h39cb;
	#20
	A = 16'h296a;
	B = 16'h3ab1;
	ans = 16'h2887;
	#20
	A = 16'ha54c;
	B = 16'hb572;
	ans = 16'h1f36;
	#20
	A = 16'h3783;
	B = 16'hba1c;
	ans = 16'hb5bd;
	#20
	A = 16'h3bef;
	B = 16'hb9da;
	ans = 16'hb9ce;
	#20
	A = 16'hbafb;
	B = 16'hbada;
	ans = 16'h39fa;
	#20
	A = 16'hb80e;
	B = 16'had04;
	ans = 16'h2916;
	#20
	A = 16'hb8e0;
	B = 16'hb713;
	ans = 16'h3450;
	#20
	A = 16'h2c0f;
	B = 16'hb6cb;
	ans = 16'ha6e4;
	#20
	A = 16'h397f;
	B = 16'hb570;
	ans = 16'hb379;
	#20
	A = 16'h3366;
	B = 16'hb52b;
	ans = 16'hacc8;
	#20
	A = 16'hb9b4;
	B = 16'hba7b;
	ans = 16'h389f;
	#20
	A = 16'hbbff;
	B = 16'h3992;
	ans = 16'hb991;
	#20
	A = 16'h3490;
	B = 16'h3b7b;
	ans = 16'h3444;
	#20
	A = 16'hbb1c;
	B = 16'hae8e;
	ans = 16'h2dd3;
	#20
	A = 16'hb369;
	B = 16'haec6;
	ans = 16'h2646;
	#20
	A = 16'h2ccc;
	B = 16'hbb56;
	ans = 16'hac66;
	#20
	A = 16'hb85d;
	B = 16'ha10b;
	ans = 16'h1d80;
	#20
	A = 16'h2bca;
	B = 16'hb904;
	ans = 16'ha8e2;
	#20
	A = 16'h3946;
	B = 16'h3606;
	ans = 16'h33f1;
	#20
	A = 16'hb301;
	B = 16'h399b;
	ans = 16'hb0e8;
	#20
	A = 16'hb8d5;
	B = 16'h1aa7;
	ans = 16'h9805;
	#20
	A = 16'hb430;
	B = 16'h290a;
	ans = 16'ha146;
	#20
	A = 16'h37c6;
	B = 16'hb9bb;
	ans = 16'hb591;
	#20
	A = 16'hb185;
	B = 16'h312f;
	ans = 16'ha727;
	#20
	A = 16'h39c9;
	B = 16'h369d;
	ans = 16'h34c8;
	#20
	A = 16'h391f;
	B = 16'hb850;
	ans = 16'hb585;
	#20
	A = 16'h3aca;
	B = 16'hbb61;
	ans = 16'hba43;
	#20
	A = 16'h39d6;
	B = 16'hba2d;
	ans = 16'hb881;
	#20
	A = 16'h25b9;
	B = 16'h1dc8;
	ans = 16'h823;
	#20
	A = 16'hb59c;
	B = 16'h3939;
	ans = 16'hb353;
	#20
	A = 16'h3759;
	B = 16'hbbcd;
	ans = 16'hb72a;
	#20
	A = 16'hb081;
	B = 16'hb5a3;
	ans = 16'h2a59;
	#20
	A = 16'hb6b6;
	B = 16'hb021;
	ans = 16'h2aed;
	#20
	A = 16'h38d8;
	B = 16'hb846;
	ans = 16'hb52d;
	#20
	A = 16'hb4f1;
	B = 16'hb40d;
	ans = 16'h2d01;
	#20
	A = 16'h30f1;
	B = 16'ha74a;
	ans = 16'h9c81;
	#20
	A = 16'hb6bd;
	B = 16'h3b84;
	ans = 16'hb655;
	#20
	A = 16'h3a47;
	B = 16'hb5d7;
	ans = 16'hb495;
	#20
	A = 16'h37b0;
	B = 16'h1be2;
	ans = 16'h1793;
	#20
	A = 16'h3b77;
	B = 16'h9f1c;
	ans = 16'h9ea2;
	#20
	A = 16'h3adf;
	B = 16'hbb7f;
	ans = 16'hba70;
	#20
	A = 16'h39b8;
	B = 16'h3221;
	ans = 16'h3062;
	#20
	A = 16'hbba2;
	B = 16'hb085;
	ans = 16'h3050;
	#20
	A = 16'h3840;
	B = 16'h2ab7;
	ans = 16'h2722;
	#20
	A = 16'h3bfd;
	B = 16'hb281;
	ans = 16'hb27f;
	#20
	A = 16'hb794;
	B = 16'h3772;
	ans = 16'hb30d;
	#20
	A = 16'hbb59;
	B = 16'hb896;
	ans = 16'h3836;
	#20
	A = 16'hb82d;
	B = 16'h3978;
	ans = 16'hb5b6;
	#20
	A = 16'h3a44;
	B = 16'hbbc1;
	ans = 16'hba13;
	#20
	A = 16'hba96;
	B = 16'hac04;
	ans = 16'h2a9d;
	#20
	A = 16'hb85e;
	B = 16'h36f5;
	ans = 16'hb398;
	#20
	A = 16'h3a66;
	B = 16'hb489;
	ans = 16'hb341;
	#20
	A = 16'hadf2;
	B = 16'ha82f;
	ans = 16'h1a38;
	#20
	A = 16'hbac0;
	B = 16'hb87b;
	ans = 16'h3790;
	#20
	A = 16'hb93b;
	B = 16'h3a99;
	ans = 16'hb850;
	#20
	A = 16'hb9d2;
	B = 16'h3430;
	ans = 16'hb218;
	#20
	A = 16'h2945;
	B = 16'hb219;
	ans = 16'ha004;
	#20
	A = 16'hb123;
	B = 16'h39ac;
	ans = 16'haf49;
	#20
	A = 16'hbbab;
	B = 16'hb8dd;
	ans = 16'h38a9;
	#20
	A = 16'h31b1;
	B = 16'hace8;
	ans = 16'ha2fb;
	#20
	A = 16'h32cf;
	B = 16'hb755;
	ans = 16'hae3d;
	#20
	A = 16'hb858;
	B = 16'hb7f8;
	ans = 16'h3454;
	#20
	A = 16'hbbf0;
	B = 16'h3be2;
	ans = 16'hbbd2;
	#20
	A = 16'h3be1;
	B = 16'h38a3;
	ans = 16'h3891;
	#20
	A = 16'h3897;
	B = 16'h345f;
	ans = 16'h3104;
	#20
	A = 16'h3933;
	B = 16'h3a33;
	ans = 16'h3807;
	#20
	A = 16'hb232;
	B = 16'hb432;
	ans = 16'h2a7f;
	#20
	A = 16'h3911;
	B = 16'h345d;
	ans = 16'h3187;
	#20
	A = 16'h3473;
	B = 16'hb210;
	ans = 16'haabe;
	#20
	A = 16'hb155;
	B = 16'hb6cf;
	ans = 16'h2c8a;
	#20
	A = 16'hb361;
	B = 16'hbaa2;
	ans = 16'h321e;
	#20
	A = 16'h3721;
	B = 16'hb9ee;
	ans = 16'hb549;
	#20
	A = 16'h3acf;
	B = 16'had19;
	ans = 16'hac57;
	#20
	A = 16'h8ff1;
	B = 16'hbb6c;
	ans = 16'hf5e;
	#20
	A = 16'hbb9f;
	B = 16'h3441;
	ans = 16'hb40d;
	#20
	A = 16'h2a5c;
	B = 16'hb94b;
	ans = 16'ha835;
	#20
	A = 16'hbbf9;
	B = 16'h3721;
	ans = 16'hb71b;
	#20
	A = 16'hbb93;
	B = 16'habb1;
	ans = 16'h2b48;
	#20
	A = 16'hba3d;
	B = 16'h343f;
	ans = 16'hb29f;
	#20
	A = 16'h36f3;
	B = 16'h3bad;
	ans = 16'h36ab;
	#20
	A = 16'hb58d;
	B = 16'h3298;
	ans = 16'hac93;
	#20
	A = 16'h3ac3;
	B = 16'hb9eb;
	ans = 16'hb901;
	#20
	A = 16'h3a94;
	B = 16'hb806;
	ans = 16'hb69e;
	#20
	A = 16'h374a;
	B = 16'h3b07;
	ans = 16'h3667;
	#20
	A = 16'hba19;
	B = 16'hb945;
	ans = 16'h3804;
	#20
	A = 16'h3bbf;
	B = 16'hb1fd;
	ans = 16'hb1cc;
	#20
	A = 16'h3a6b;
	B = 16'h3429;
	ans = 16'h32ad;
	#20
	A = 16'hba35;
	B = 16'h3122;
	ans = 16'haff7;
	#20
	A = 16'h2e58;
	B = 16'hb550;
	ans = 16'ha836;
	#20
	A = 16'h3920;
	B = 16'h398d;
	ans = 16'h371d;
	#20
	A = 16'haa1b;
	B = 16'hab80;
	ans = 16'h19b9;
	#20
	A = 16'h3a0c;
	B = 16'hb8df;
	ans = 16'hb75d;
	#20
	A = 16'h38e8;
	B = 16'hb667;
	ans = 16'hb3da;
	#20
	A = 16'h2d76;
	B = 16'h3bc5;
	ans = 16'h2d4e;
	#20
	A = 16'hb003;
	B = 16'h3966;
	ans = 16'had6a;
	#20
	A = 16'h3adc;
	B = 16'hb247;
	ans = 16'hb162;
	#20
	A = 16'ha66b;
	B = 16'h33e9;
	ans = 16'h9e59;
	#20
	A = 16'h3801;
	B = 16'h347e;
	ans = 16'h307f;
	#20
	A = 16'h3878;
	B = 16'hb595;
	ans = 16'hb23c;
	#20
	A = 16'h36db;
	B = 16'h3184;
	ans = 16'h2cba;
	#20
	A = 16'h3893;
	B = 16'hb2b8;
	ans = 16'hafaf;
	#20
	A = 16'h2f06;
	B = 16'hb944;
	ans = 16'hac9f;
	#20
	A = 16'h397a;
	B = 16'hbb26;
	ans = 16'hb8e5;
	#20
	A = 16'hb0be;
	B = 16'hbb32;
	ans = 16'h3044;
	#20
	A = 16'hb12f;
	B = 16'h23bc;
	ans = 16'h9903;
	#20
	A = 16'ha988;
	B = 16'hbaa4;
	ans = 16'h2897;
	#20
	A = 16'hb5aa;
	B = 16'h3006;
	ans = 16'ha9b2;
	#20
	A = 16'h3290;
	B = 16'h38bb;
	ans = 16'h2fc3;
	#20
	A = 16'hb5a3;
	B = 16'hae8c;
	ans = 16'h289d;
	#20
	A = 16'hb8c7;
	B = 16'hb408;
	ans = 16'h30d1;
	#20
	A = 16'h3be4;
	B = 16'h38f6;
	ans = 16'h38e5;
	#20
	A = 16'hb468;
	B = 16'hbae2;
	ans = 16'h3395;
	#20
	A = 16'hb942;
	B = 16'hb782;
	ans = 16'h34ef;
	#20
	A = 16'h29bd;
	B = 16'h3367;
	ans = 16'h214f;
	#20
	A = 16'hb82b;
	B = 16'h3498;
	ans = 16'hb0c9;
	#20
	A = 16'had51;
	B = 16'h3055;
	ans = 16'ha1c2;
	#20
	A = 16'hbb8c;
	B = 16'h3b98;
	ans = 16'hbb2a;
	#20
	A = 16'h383e;
	B = 16'hac35;
	ans = 16'ha876;
	#20
	A = 16'h980d;
	B = 16'hb962;
	ans = 16'h1573;
	#20
	A = 16'hb636;
	B = 16'haf16;
	ans = 16'h2980;
	#20
	A = 16'hb8d1;
	B = 16'ha6eb;
	ans = 16'h242a;
	#20
	A = 16'h3b86;
	B = 16'hb9ad;
	ans = 16'hb956;
	#20
	A = 16'h3237;
	B = 16'hb472;
	ans = 16'haae8;
	#20
	A = 16'h327c;
	B = 16'hb77e;
	ans = 16'hae13;
	#20
	A = 16'hbb26;
	B = 16'hb83b;
	ans = 16'h378f;
	#20
	A = 16'had76;
	B = 16'h38a6;
	ans = 16'haa59;
	#20
	A = 16'h233c;
	B = 16'h38e5;
	ans = 16'h206d;
	#20
	A = 16'h3831;
	B = 16'h38f7;
	ans = 16'h3534;
	#20
	A = 16'hb559;
	B = 16'h3311;
	ans = 16'hacb9;
	#20
	A = 16'h3af9;
	B = 16'hb4b1;
	ans = 16'hb417;
	#20
	A = 16'hb76a;
	B = 16'h362f;
	ans = 16'hb1bb;
	#20
	A = 16'h3813;
	B = 16'hbbb8;
	ans = 16'hb7dd;
	#20
	A = 16'hb273;
	B = 16'h38f2;
	ans = 16'haff9;
	#20
	A = 16'hbbfa;
	B = 16'h301c;
	ans = 16'hb019;
	#20
	A = 16'hb926;
	B = 16'h3034;
	ans = 16'had69;
	#20
	A = 16'h3b89;
	B = 16'hbb50;
	ans = 16'hbae3;
	#20
	A = 16'h3b83;
	B = 16'h3278;
	ans = 16'h3213;
	#20
	A = 16'h3812;
	B = 16'hb5b1;
	ans = 16'hb1cb;
	#20
	A = 16'h3766;
	B = 16'hb9c7;
	ans = 16'hb558;
	#20
	A = 16'h3b06;
	B = 16'h39ee;
	ans = 16'h3935;
	#20
	A = 16'h3070;
	B = 16'haa52;
	ans = 16'h9f03;
	#20
	A = 16'h325f;
	B = 16'h39d5;
	ans = 16'h30a5;
	#20
	A = 16'hbad4;
	B = 16'hb3d6;
	ans = 16'h32b0;
	#20
	A = 16'h34a4;
	B = 16'haf57;
	ans = 16'ha842;
	#20
	A = 16'h3af4;
	B = 16'hbbab;
	ans = 16'hbaaa;
	#20
	A = 16'ha9ca;
	B = 16'hbabc;
	ans = 16'h28e0;
	#20
	A = 16'hb98f;
	B = 16'h32d2;
	ans = 16'hb0bd;
	#20
	A = 16'hbba3;
	B = 16'hba82;
	ans = 16'h3a36;
	#20
	A = 16'hb841;
	B = 16'hbaf9;
	ans = 16'h376a;
	#20
	A = 16'hbaec;
	B = 16'hb94a;
	ans = 16'h3894;
	#20
	A = 16'hb2bd;
	B = 16'hbbb8;
	ans = 16'h3280;
	#20
	A = 16'h395f;
	B = 16'hb4de;
	ans = 16'hb289;
	#20
	A = 16'hb790;
	B = 16'hba01;
	ans = 16'h35ad;
	#20
	A = 16'hbb10;
	B = 16'h39b5;
	ans = 16'hb90a;
	#20
	A = 16'h37db;
	B = 16'h353f;
	ans = 16'h3127;
	#20
	A = 16'hb825;
	B = 16'hb836;
	ans = 16'h345d;
	#20
	A = 16'h378c;
	B = 16'hae8e;
	ans = 16'haa2f;
	#20
	A = 16'h37a6;
	B = 16'hb815;
	ans = 16'hb3ce;
	#20
	A = 16'h3aa4;
	B = 16'hb52a;
	ans = 16'hb449;
	#20
	A = 16'h3834;
	B = 16'h3ac0;
	ans = 16'h3718;
	#20
	A = 16'hbbbb;
	B = 16'haf68;
	ans = 16'h2f28;
	#20
	A = 16'h3979;
	B = 16'h34ee;
	ans = 16'h32bf;
	#20
	A = 16'h365a;
	B = 16'hb98c;
	ans = 16'hb467;
	#20
	A = 16'h3a6d;
	B = 16'h3b2a;
	ans = 16'h39c1;
	#20
	A = 16'h37af;
	B = 16'h3bd7;
	ans = 16'h3788;
	#20
	A = 16'hb97f;
	B = 16'hb3b4;
	ans = 16'h314b;
	#20
	A = 16'h3734;
	B = 16'hb877;
	ans = 16'hb405;
	#20
	A = 16'hbab8;
	B = 16'h36fa;
	ans = 16'hb5dc;
	#20
	A = 16'hb711;
	B = 16'hb6e9;
	ans = 16'h321b;
	#20
	A = 16'h3bda;
	B = 16'h3994;
	ans = 16'h397a;
	#20
	A = 16'hb9f4;
	B = 16'h3a72;
	ans = 16'hb8cc;
	#20
	A = 16'hbb5c;
	B = 16'h2d47;
	ans = 16'hacdb;
	#20
	A = 16'h3bb3;
	B = 16'h313c;
	ans = 16'h310a;
	#20
	A = 16'h38bb;
	B = 16'h386a;
	ans = 16'h3538;
	#20
	A = 16'habc2;
	B = 16'hb933;
	ans = 16'h290b;
	#20
	A = 16'h359a;
	B = 16'hbb4c;
	ans = 16'hb51c;
	#20
	A = 16'h3a92;
	B = 16'hbb4e;
	ans = 16'hba00;
	#20
	A = 16'h3151;
	B = 16'hb0d2;
	ans = 16'ha668;
	#20
	A = 16'hb488;
	B = 16'h3ac3;
	ans = 16'hb3a9;
	#20
	A = 16'had09;
	B = 16'hba2d;
	ans = 16'h2bc6;
	#20
	A = 16'haf6c;
	B = 16'h31cc;
	ans = 16'ha561;
	#20
	A = 16'h32ca;
	B = 16'h3163;
	ans = 16'h2892;
	#20
	A = 16'h3b00;
	B = 16'h3a1b;
	ans = 16'h3958;
	#20
	A = 16'hb88f;
	B = 16'hb256;
	ans = 16'h2f39;
	#20
	A = 16'hb832;
	B = 16'hb888;
	ans = 16'h34c1;
	#20
	A = 16'h382c;
	B = 16'hb4d6;
	ans = 16'hb10b;
	#20
	A = 16'h3814;
	B = 16'hb4ca;
	ans = 16'hb0e2;
	#20
	A = 16'h3653;
	B = 16'h3443;
	ans = 16'h2ebd;
	#20
	A = 16'h39d6;
	B = 16'hb753;
	ans = 16'hb558;
	#20
	A = 16'hbb56;
	B = 16'hb995;
	ans = 16'h391e;
	#20
	A = 16'hb9cb;
	B = 16'hb220;
	ans = 16'h306f;
	#20
	A = 16'hbb2b;
	B = 16'h340e;
	ans = 16'hb344;
	#20
	A = 16'h3af4;
	B = 16'hb3b4;
	ans = 16'hb2b2;
	#20
	A = 16'h2e97;
	B = 16'h36e5;
	ans = 16'h29ae;
	#20
	A = 16'h3117;
	B = 16'hb5bd;
	ans = 16'hab4d;
	#20
	A = 16'h38ee;
	B = 16'h3454;
	ans = 16'h3156;
	#20
	A = 16'h3651;
	B = 16'h36c6;
	ans = 16'h3159;
	#20
	A = 16'h3b58;
	B = 16'h37f0;
	ans = 16'h3749;
	#20
	A = 16'h2b1a;
	B = 16'h3a06;
	ans = 16'h2959;
	#20
	A = 16'hafd3;
	B = 16'h1a84;
	ans = 16'h8e5f;
	#20
	A = 16'hb880;
	B = 16'hbb5f;
	ans = 16'h3825;
	#20
	A = 16'hbb40;
	B = 16'hb467;
	ans = 16'h33fb;
	#20
	A = 16'h3871;
	B = 16'h3408;
	ans = 16'h307a;
	#20
	A = 16'h3815;
	B = 16'h36f8;
	ans = 16'h331d;
	#20
	A = 16'h351e;
	B = 16'hb900;
	ans = 16'hb266;
	#20
	A = 16'hba74;
	B = 16'h2cb3;
	ans = 16'hab95;
	#20
	A = 16'h3b8f;
	B = 16'h38f4;
	ans = 16'h38ae;
	#20
	A = 16'ha937;
	B = 16'h30c4;
	ans = 16'h9e37;
	#20
	A = 16'ha70a;
	B = 16'ha621;
	ans = 16'h1165;
	#20
	A = 16'hb519;
	B = 16'hb50a;
	ans = 16'h2e6c;
	#20
	A = 16'h3657;
	B = 16'hb637;
	ans = 16'hb0ed;
	#20
	A = 16'hba52;
	B = 16'h34fe;
	ans = 16'hb3e3;
	#20
	A = 16'hb64d;
	B = 16'h35aa;
	ans = 16'hb076;
	#20
	A = 16'hb173;
	B = 16'hb6c2;
	ans = 16'h2c9a;
	#20
	A = 16'hbbae;
	B = 16'h3a58;
	ans = 16'hba17;
	#20
	A = 16'ha684;
	B = 16'h39ec;
	ans = 16'ha4d3;
	#20
	A = 16'h3938;
	B = 16'hb30e;
	ans = 16'hb09a;
	#20
	A = 16'h3b4f;
	B = 16'hb878;
	ans = 16'hb815;
	#20
	A = 16'h3b64;
	B = 16'hb126;
	ans = 16'hb0c2;
	#20
	A = 16'h3be4;
	B = 16'hb411;
	ans = 16'hb403;
	#20
	A = 16'h31d4;
	B = 16'hb9a5;
	ans = 16'hb01d;
	#20
	A = 16'h3805;
	B = 16'h3b26;
	ans = 16'h372f;
	#20
	A = 16'hbaf0;
	B = 16'h3a1c;
	ans = 16'hb94c;
	#20
	A = 16'h38cd;
	B = 16'hbaa9;
	ans = 16'hb7fe;
	#20
	A = 16'h2c8d;
	B = 16'h35be;
	ans = 16'h2688;
	#20
	A = 16'hb08f;
	B = 16'hb89f;
	ans = 16'h2d44;
	#20
	A = 16'hb0f7;
	B = 16'hb4e9;
	ans = 16'h2a18;
	#20
	A = 16'h3bbb;
	B = 16'hb9e4;
	ans = 16'hb9b1;
	#20
	A = 16'h394e;
	B = 16'h3acc;
	ans = 16'h3882;
	#20
	A = 16'h3868;
	B = 16'hbabb;
	ans = 16'hb76a;
	#20
	A = 16'h3b4d;
	B = 16'h3ad1;
	ans = 16'h3a38;
	#20
	A = 16'h3be0;
	B = 16'h36fc;
	ans = 16'h36e0;
	#20
	A = 16'hb914;
	B = 16'hb3c9;
	ans = 16'h30f1;
	#20
	A = 16'h3a2a;
	B = 16'h3880;
	ans = 16'h36ef;
	#20
	A = 16'hb805;
	B = 16'h388b;
	ans = 16'hb491;
	#20
	A = 16'h3a83;
	B = 16'hb7f6;
	ans = 16'hb67b;
	#20
	A = 16'hba5c;
	B = 16'hbb55;
	ans = 16'h39d4;
	#20
	A = 16'h35b6;
	B = 16'h9cdd;
	ans = 16'h96f2;
	#20
	A = 16'hb75e;
	B = 16'haf8f;
	ans = 16'h2af6;
	#20
	A = 16'hb8c4;
	B = 16'h39cf;
	ans = 16'hb6ec;
	#20
	A = 16'h3070;
	B = 16'h39a7;
	ans = 16'h2e45;
	#20
	A = 16'h2ccc;
	B = 16'h389f;
	ans = 16'h298b;
	#20
	A = 16'h3ba5;
	B = 16'h32f5;
	ans = 16'h32a6;
	#20
	A = 16'h38f0;
	B = 16'h393b;
	ans = 16'h3675;
	#20
	A = 16'hb476;
	B = 16'hb9bd;
	ans = 16'h3266;
	#20
	A = 16'h38d0;
	B = 16'h382f;
	ans = 16'h3509;
	#20
	A = 16'hb535;
	B = 16'h3420;
	ans = 16'had5f;
	#20
	A = 16'hb443;
	B = 16'hbb5f;
	ans = 16'h33da;
	#20
	A = 16'h356a;
	B = 16'h3b24;
	ans = 16'h34d5;
	#20
	A = 16'h3a7e;
	B = 16'h378e;
	ans = 16'h3621;
	#20
	A = 16'hb744;
	B = 16'h3667;
	ans = 16'hb1d1;
	#20
	A = 16'hb81b;
	B = 16'h37c1;
	ans = 16'hb3f5;
	#20
	A = 16'haf9b;
	B = 16'hb6e7;
	ans = 16'h2a90;
	#20
	A = 16'hbac4;
	B = 16'hba68;
	ans = 16'h396b;
	#20
	A = 16'h33f2;
	B = 16'h3a49;
	ans = 16'h323e;
	#20
	A = 16'hb594;
	B = 16'h37d0;
	ans = 16'hb173;
	#20
	A = 16'h3bbd;
	B = 16'had37;
	ans = 16'had0b;
	#20
	A = 16'h3b73;
	B = 16'h34f0;
	ans = 16'h3499;
	#20
	A = 16'h35ef;
	B = 16'hb054;
	ans = 16'haa6c;
	#20
	A = 16'h2c9f;
	B = 16'hb8e1;
	ans = 16'ha9a3;
	#20
	A = 16'hb6e2;
	B = 16'h2c75;
	ans = 16'ha7ab;
	#20
	A = 16'hb5f7;
	B = 16'hb83f;
	ans = 16'h3255;
	#20
	A = 16'h3468;
	B = 16'hb5b1;
	ans = 16'hae45;
	#20
	A = 16'h365b;
	B = 16'hb500;
	ans = 16'haff2;
	#20
	A = 16'h2a9f;
	B = 16'h3974;
	ans = 16'h2883;
	#20
	A = 16'h38c0;
	B = 16'hbbdf;
	ans = 16'hb8ac;
	#20
	A = 16'hb418;
	B = 16'h3a79;
	ans = 16'hb2a0;
	#20
	A = 16'hba73;
	B = 16'hbaf1;
	ans = 16'h3999;
	#20
	A = 16'h3b6b;
	B = 16'hbb2d;
	ans = 16'hbaa7;
	#20
	A = 16'h2ca2;
	B = 16'hb062;
	ans = 16'ha114;
	#20
	A = 16'hba3b;
	B = 16'hb6fe;
	ans = 16'h3572;
	#20
	A = 16'h3a87;
	B = 16'h3bb6;
	ans = 16'h3a4b;
	#20
	A = 16'hb91b;
	B = 16'hb8d4;
	ans = 16'h362a;
	#20
	A = 16'hba69;
	B = 16'hbba5;
	ans = 16'h3a20;
	#20
	A = 16'hb59a;
	B = 16'h3a4f;
	ans = 16'hb46b;
	#20
	A = 16'hb8d9;
	B = 16'hb744;
	ans = 16'h3467;
	#20
	A = 16'hb5ae;
	B = 16'h3856;
	ans = 16'hb228;
	#20
	A = 16'hbaaa;
	B = 16'hb38c;
	ans = 16'h3249;
	#20
	A = 16'hba57;
	B = 16'h36bd;
	ans = 16'hb557;
	#20
	A = 16'h393a;
	B = 16'hbab9;
	ans = 16'hb864;
	#20
	A = 16'h2aa0;
	B = 16'h3bd7;
	ans = 16'h2a7e;
	#20
	A = 16'hbb82;
	B = 16'h3926;
	ans = 16'hb8d5;
	#20
	A = 16'h3830;
	B = 16'hbb7a;
	ans = 16'hb7d4;
	#20
	A = 16'ha8c4;
	B = 16'h38cf;
	ans = 16'ha5bb;
	#20
	A = 16'hb96e;
	B = 16'hbae0;
	ans = 16'h38ab;
	#20
	A = 16'hb554;
	B = 16'h3b2e;
	ans = 16'hb4c8;
	#20
	A = 16'hbbb0;
	B = 16'h39a5;
	ans = 16'hb96d;
	#20
	A = 16'hb677;
	B = 16'ha117;
	ans = 16'h1c1d;
	#20
	A = 16'hb4c5;
	B = 16'h3b09;
	ans = 16'hb432;
	#20
	A = 16'hb63e;
	B = 16'hb770;
	ans = 16'h31ce;
	#20
	A = 16'h1f87;
	B = 16'hb61b;
	ans = 16'h99bf;
	#20
	A = 16'h3bee;
	B = 16'hb26f;
	ans = 16'hb261;
	#20
	A = 16'h39ce;
	B = 16'hacd6;
	ans = 16'hab05;
	#20
	A = 16'hb493;
	B = 16'h2f83;
	ans = 16'ha84c;
	#20
	A = 16'ha70c;
	B = 16'hb397;
	ans = 16'h1eb0;
	#20
	A = 16'h2801;
	B = 16'h3985;
	ans = 16'h2586;
	#20
	A = 16'hb503;
	B = 16'hb76a;
	ans = 16'h30a5;
	#20
	A = 16'h3b3b;
	B = 16'h3baa;
	ans = 16'h3aed;
	#20
	A = 16'h353a;
	B = 16'hb9a4;
	ans = 16'hb35f;
	#20
	A = 16'ha89e;
	B = 16'h33b8;
	ans = 16'ha074;
	#20
	A = 16'hb8b9;
	B = 16'hb3e9;
	ans = 16'h30ab;
	#20
	A = 16'h3875;
	B = 16'hbaf2;
	ans = 16'hb7bd;
	#20
	A = 16'h38ac;
	B = 16'hb9ec;
	ans = 16'hb6eb;
	#20
	A = 16'h343a;
	B = 16'hbb44;
	ans = 16'hb3ad;
	#20
	A = 16'hb6a5;
	B = 16'hb894;
	ans = 16'h339b;
	#20
	A = 16'h2f93;
	B = 16'hb8ba;
	ans = 16'hac7a;
	#20
	A = 16'h3bf2;
	B = 16'h3a32;
	ans = 16'h3a27;
	#20
	A = 16'h378f;
	B = 16'hb854;
	ans = 16'hb417;
	#20
	A = 16'h3adf;
	B = 16'h3650;
	ans = 16'h356c;
	#20
	A = 16'hb08b;
	B = 16'h384e;
	ans = 16'hace4;
	#20
	A = 16'hb806;
	B = 16'hb691;
	ans = 16'h329b;
	#20
	A = 16'h3764;
	B = 16'hb549;
	ans = 16'hb0e2;
	#20
	A = 16'h3687;
	B = 16'hb841;
	ans = 16'hb2f1;
	#20
	A = 16'h3bdb;
	B = 16'hbaa2;
	ans = 16'hba83;
	#20
	A = 16'hbb03;
	B = 16'hb815;
	ans = 16'h3728;
	#20
	A = 16'h3814;
	B = 16'hbb7f;
	ans = 16'hb7a4;
	#20
	A = 16'h32e2;
	B = 16'hbb12;
	ans = 16'hb215;
	#20
	A = 16'hb61d;
	B = 16'hba73;
	ans = 16'h34ee;
	#20
	A = 16'had3a;
	B = 16'hb83a;
	ans = 16'h2986;
	#20
	A = 16'h2917;
	B = 16'hb882;
	ans = 16'ha5bc;
	#20
	A = 16'hb7cf;
	B = 16'ha951;
	ans = 16'h2530;
	#20
	A = 16'hbaaf;
	B = 16'haf11;
	ans = 16'h2de7;
	#20
	A = 16'hba25;
	B = 16'hb91f;
	ans = 16'h37de;
	#20
	A = 16'hb5a3;
	B = 16'hba5b;
	ans = 16'h347a;
	#20
	A = 16'h3592;
	B = 16'h38ee;
	ans = 16'h32dd;
	#20
	A = 16'hb493;
	B = 16'h354c;
	ans = 16'hae0f;
	#20
	A = 16'hb819;
	B = 16'hba6e;
	ans = 16'h3696;
	#20
	A = 16'h2d79;
	B = 16'h3820;
	ans = 16'h29a5;
	#20
	A = 16'h3984;
	B = 16'hb4cd;
	ans = 16'hb29f;
	#20
	A = 16'hbb75;
	B = 16'hbafa;
	ans = 16'h3a81;
	#20
	A = 16'hbb85;
	B = 16'hb4e5;
	ans = 16'h349a;
	#20
	A = 16'h3b24;
	B = 16'h385d;
	ans = 16'h37ca;
	#20
	A = 16'hb999;
	B = 16'h398f;
	ans = 16'hb7c7;
	#20
	A = 16'h381e;
	B = 16'h33e9;
	ans = 16'h3012;
	#20
	A = 16'hb999;
	B = 16'hb4ea;
	ans = 16'h32e0;
	#20
	A = 16'h3616;
	B = 16'h2c60;
	ans = 16'h26a8;
	#20
	A = 16'hac69;
	B = 16'h3a0a;
	ans = 16'haaa9;
	#20
	A = 16'h3b98;
	B = 16'h382d;
	ans = 16'h37ed;
	#20
	A = 16'hb473;
	B = 16'hb24b;
	ans = 16'h2b00;
	#20
	A = 16'hb8c3;
	B = 16'hbb4c;
	ans = 16'h3858;
	#20
	A = 16'h3b35;
	B = 16'hb7a7;
	ans = 16'hb6e5;
	#20
	A = 16'h3767;
	B = 16'hb9c0;
	ans = 16'hb552;
	#20
	A = 16'h35d9;
	B = 16'h302e;
	ans = 16'h2a1c;
	#20
	A = 16'hb7d6;
	B = 16'h3319;
	ans = 16'haef4;
	#20
	A = 16'h39f1;
	B = 16'h3b83;
	ans = 16'h3994;
	#20
	A = 16'h3651;
	B = 16'h394e;
	ans = 16'h3430;
	#20
	A = 16'hb4c7;
	B = 16'h300a;
	ans = 16'ha8d3;
	#20
	A = 16'h30f4;
	B = 16'hb649;
	ans = 16'habc8;
	#20
	A = 16'hb69b;
	B = 16'h363c;
	ans = 16'hb126;
	#20
	A = 16'hb970;
	B = 16'hb814;
	ans = 16'h358b;
	#20
	A = 16'hb8f4;
	B = 16'hac1e;
	ans = 16'h2919;
	#20
	A = 16'hb54f;
	B = 16'hbbf4;
	ans = 16'h3547;
	#20
	A = 16'h397d;
	B = 16'h3893;
	ans = 16'h3647;
	#20
	A = 16'h3661;
	B = 16'h346c;
	ans = 16'h2f0d;
	#20
	A = 16'hb4d7;
	B = 16'hb8c0;
	ans = 16'h31bf;
	#20
	A = 16'h3662;
	B = 16'hb770;
	ans = 16'hb1ef;
	#20
	A = 16'hac71;
	B = 16'hbb70;
	ans = 16'h2c21;
	#20
	A = 16'h37f4;
	B = 16'h3814;
	ans = 16'h340e;
	#20
	A = 16'h3440;
	B = 16'hba2b;
	ans = 16'hb28e;
	#20
	A = 16'h3212;
	B = 16'h2fed;
	ans = 16'h2604;
	#20
	A = 16'hb007;
	B = 16'h3998;
	ans = 16'hada2;
	#20
	A = 16'ha0ae;
	B = 16'hb74f;
	ans = 16'h1c46;
	#20
	A = 16'ha80e;
	B = 16'hb762;
	ans = 16'h237c;
	#20
	A = 16'hb347;
	B = 16'h35f4;
	ans = 16'had6a;
	#20
	A = 16'ha01d;
	B = 16'h3955;
	ans = 16'h9d7c;
	#20
	A = 16'hb9d7;
	B = 16'h39c9;
	ans = 16'hb839;
	#20
	A = 16'h376b;
	B = 16'hb1d7;
	ans = 16'had6a;
	#20
	A = 16'h399a;
	B = 16'h3977;
	ans = 16'h37a7;
	#20
	A = 16'h353a;
	B = 16'hba7f;
	ans = 16'hb43e;
	#20
	A = 16'h39a5;
	B = 16'h3170;
	ans = 16'h2fac;
	#20
	A = 16'hb7b0;
	B = 16'hac94;
	ans = 16'h2866;
	#20
	A = 16'h358b;
	B = 16'hb588;
	ans = 16'hafaa;
	#20
	A = 16'hb588;
	B = 16'hadd5;
	ans = 16'h2808;
	#20
	A = 16'h3161;
	B = 16'hb105;
	ans = 16'ha6c0;
	#20
	A = 16'h3892;
	B = 16'hba40;
	ans = 16'hb724;
	#20
	A = 16'h3bc8;
	B = 16'h3bf3;
	ans = 16'h3bbb;
	#20
	A = 16'h32e4;
	B = 16'hba4d;
	ans = 16'hb16d;
	#20
	A = 16'h3bce;
	B = 16'h3858;
	ans = 16'h383d;
	#20
	A = 16'h3941;
	B = 16'h3864;
	ans = 16'h35c4;
	#20
	A = 16'h34f2;
	B = 16'ha0ed;
	ans = 16'h9a17;
	#20
	A = 16'hbb76;
	B = 16'h3360;
	ans = 16'hb2e1;
	#20
	A = 16'h37dd;
	B = 16'h34c3;
	ans = 16'h30ae;
	#20
	A = 16'hb8fb;
	B = 16'hb98b;
	ans = 16'h36e7;
	#20
	A = 16'haff2;
	B = 16'hb9aa;
	ans = 16'h2da0;
	#20
	A = 16'hb756;
	B = 16'hb921;
	ans = 16'h34b4;
	#20
	A = 16'h3aae;
	B = 16'hb03c;
	ans = 16'haf12;
	#20
	A = 16'h389b;
	B = 16'hb843;
	ans = 16'hb4e8;
	#20
	A = 16'hb94e;
	B = 16'h3028;
	ans = 16'had83;
	#20
	A = 16'h3613;
	B = 16'h3ada;
	ans = 16'h3534;
	#20
	A = 16'hb90e;
	B = 16'h33a5;
	ans = 16'hb0d5;
	#20
	A = 16'h345d;
	B = 16'hb6d1;
	ans = 16'haf6f;
	#20
	A = 16'hb407;
	B = 16'h36d7;
	ans = 16'haee3;
	#20
	A = 16'hb60d;
	B = 16'hbbe7;
	ans = 16'h35fa;
	#20
	A = 16'hb64e;
	B = 16'hb38e;
	ans = 16'h2df4;
	#20
	A = 16'h38fb;
	B = 16'h386e;
	ans = 16'h3584;
	#20
	A = 16'hba90;
	B = 16'h361c;
	ans = 16'hb503;
	#20
	A = 16'h3677;
	B = 16'hb5fc;
	ans = 16'hb0d6;
	#20
	A = 16'hb259;
	B = 16'hb965;
	ans = 16'h3048;
	#20
	A = 16'h3a71;
	B = 16'hb07f;
	ans = 16'haf3e;
	#20
	A = 16'h3b99;
	B = 16'hbbac;
	ans = 16'hbb49;
	#20
	A = 16'h3b18;
	B = 16'h2ea4;
	ans = 16'h2de3;
	#20
	A = 16'hba36;
	B = 16'h3a6b;
	ans = 16'hb8fc;
	#20
	A = 16'h3a09;
	B = 16'hbb1f;
	ans = 16'hb95f;
	#20
	A = 16'hbb3b;
	B = 16'hb8d9;
	ans = 16'h3862;
	#20
	A = 16'hb545;
	B = 16'h31f9;
	ans = 16'habde;
	#20
	A = 16'h3849;
	B = 16'hb522;
	ans = 16'hb180;
	#20
	A = 16'hb1bc;
	B = 16'hb915;
	ans = 16'h2f49;
	#20
	A = 16'hb901;
	B = 16'hb0af;
	ans = 16'h2ddc;
	#20
	A = 16'hb67c;
	B = 16'hb04c;
	ans = 16'h2af7;
	#20
	A = 16'hbb36;
	B = 16'h39b0;
	ans = 16'hb920;
	#20
	A = 16'hb39b;
	B = 16'hbb73;
	ans = 16'h3315;
	#20
	A = 16'h331d;
	B = 16'hb3fd;
	ans = 16'hab1a;
	#20
	A = 16'ha7b8;
	B = 16'hb748;
	ans = 16'h2306;
	#20
	A = 16'h34a7;
	B = 16'hb42a;
	ans = 16'hacd8;
	#20
	A = 16'h344f;
	B = 16'hbbbd;
	ans = 16'hb42b;
	#20
	A = 16'h39f8;
	B = 16'h3a82;
	ans = 16'h38db;
	#20
	A = 16'hbb0b;
	B = 16'h3480;
	ans = 16'hb3ec;
	#20
	A = 16'h2c58;
	B = 16'hb461;
	ans = 16'ha4c1;
	#20
	A = 16'hb8ed;
	B = 16'hb749;
	ans = 16'h347c;
	#20
	A = 16'hba02;
	B = 16'h3494;
	ans = 16'hb2e0;
	#20
	A = 16'hb6ae;
	B = 16'h3758;
	ans = 16'hb222;
	#20
	A = 16'hb4e8;
	B = 16'hb19e;
	ans = 16'h2ae4;
	#20
	A = 16'h359a;
	B = 16'h3a15;
	ans = 16'h3442;
	#20
	A = 16'h39e3;
	B = 16'h1887;
	ans = 16'h16aa;
	#20
	A = 16'h1f61;
	B = 16'h32ab;
	ans = 16'h1626;
	#20
	A = 16'hba62;
	B = 16'h381f;
	ans = 16'hb693;
	#20
	A = 16'h39af;
	B = 16'hb588;
	ans = 16'hb3dc;
	#20
	A = 16'h386e;
	B = 16'h29c3;
	ans = 16'h2661;
	#20
	A = 16'h38f9;
	B = 16'hb456;
	ans = 16'hb164;
	#20
	A = 16'hb328;
	B = 16'h3b7d;
	ans = 16'hb2b3;
	#20
	A = 16'h388b;
	B = 16'h313a;
	ans = 16'h2df0;
	#20
	A = 16'h3441;
	B = 16'hb972;
	ans = 16'hb1ca;
	#20
	A = 16'h33fd;
	B = 16'hb9dc;
	ans = 16'hb1da;
	#20
	A = 16'h38ef;
	B = 16'hb419;
	ans = 16'hb10e;
	#20
	A = 16'hb00e;
	B = 16'hb902;
	ans = 16'h2d14;
	#20
	A = 16'h3bf6;
	B = 16'h34d3;
	ans = 16'h34cd;
	#20
	A = 16'hb2b7;
	B = 16'hafc7;
	ans = 16'h2687;
	#20
	A = 16'h39be;
	B = 16'hb96b;
	ans = 16'hb7c7;
	#20
	A = 16'h20c3;
	B = 16'hb660;
	ans = 16'h9b97;
	#20
	A = 16'hb5a9;
	B = 16'hb2aa;
	ans = 16'h2cb7;
	#20
	A = 16'hbbf8;
	B = 16'hb4b7;
	ans = 16'h34b2;
	#20
	A = 16'hb56c;
	B = 16'hb813;
	ans = 16'h3186;
	#20
	A = 16'h364f;
	B = 16'h3a3c;
	ans = 16'h34eb;
	#20
	A = 16'h37bb;
	B = 16'h375f;
	ans = 16'h331f;
	#20
	A = 16'h393a;
	B = 16'hb938;
	ans = 16'hb6d2;
	#20
	A = 16'hb852;
	B = 16'h39ed;
	ans = 16'hb666;
	#20
	A = 16'h3464;
	B = 16'h347f;
	ans = 16'h2cef;
	#20
	A = 16'h3aa8;
	B = 16'ha94a;
	ans = 16'ha867;
	#20
	A = 16'hbb06;
	B = 16'h3ac1;
	ans = 16'hb9ee;
	#20
	A = 16'ha4bf;
	B = 16'h2e92;
	ans = 16'h97cc;
	#20
	A = 16'h3bec;
	B = 16'h2c2e;
	ans = 16'h2c24;
	#20
	A = 16'h393c;
	B = 16'h38e9;
	ans = 16'h366d;
	#20
	A = 16'h3895;
	B = 16'hb95f;
	ans = 16'hb627;
	#20
	A = 16'h3a38;
	B = 16'hb884;
	ans = 16'hb705;
	#20
	A = 16'hb2f2;
	B = 16'hbbc8;
	ans = 16'h32c1;
	#20
	A = 16'h38c9;
	B = 16'h32e0;
	ans = 16'h301d;
	#20
	A = 16'h3af5;
	B = 16'hbb50;
	ans = 16'hba5c;
	#20
	A = 16'h3b25;
	B = 16'hb3da;
	ans = 16'hb303;
	#20
	A = 16'h35c8;
	B = 16'h395f;
	ans = 16'h33c3;
	#20
	A = 16'h3bda;
	B = 16'h302c;
	ans = 16'h3018;
	#20
	A = 16'h3877;
	B = 16'h265e;
	ans = 16'h231b;
	#20
	A = 16'hb8e8;
	B = 16'hba55;
	ans = 16'h37c4;
	#20
	A = 16'hbb5d;
	B = 16'h3678;
	ans = 16'hb5f4;
	#20
	A = 16'hb288;
	B = 16'hb8f8;
	ans = 16'h300e;
	#20
	A = 16'h364a;
	B = 16'hb6d5;
	ans = 16'hb15f;
	#20
	A = 16'h3af8;
	B = 16'h2f24;
	ans = 16'h2e38;
	#20
	A = 16'hb3a8;
	B = 16'h3954;
	ans = 16'hb119;
	#20
	A = 16'h378e;
	B = 16'hb13a;
	ans = 16'hacf0;
	#20
	A = 16'h3bf3;
	B = 16'hafc1;
	ans = 16'hafb4;
	#20
	A = 16'hbb02;
	B = 16'hb690;
	ans = 16'h35c0;
	#20
	A = 16'h37ab;
	B = 16'h2441;
	ans = 16'h2014;
	#20
	A = 16'h3624;
	B = 16'hb464;
	ans = 16'haebe;
	#20
	A = 16'h3ad2;
	B = 16'h2d81;
	ans = 16'h2cb1;
	#20
	A = 16'hb9f3;
	B = 16'hb4ea;
	ans = 16'h334f;
	#20
	A = 16'hbbf9;
	B = 16'hb4a3;
	ans = 16'h349f;
	#20
	A = 16'hbba7;
	B = 16'h3ad8;
	ans = 16'hba8c;
	#20
	A = 16'hb47a;
	B = 16'h3ba9;
	ans = 16'hb449;
	#20
	A = 16'ha8f8;
	B = 16'h3819;
	ans = 16'ha517;
	#20
	A = 16'h2d85;
	B = 16'hb7bc;
	ans = 16'ha956;
	#20
	A = 16'hb0b3;
	B = 16'hb8b9;
	ans = 16'h2d8c;
	#20
	A = 16'h3784;
	B = 16'hb225;
	ans = 16'hadc6;
	#20
	A = 16'h35a8;
	B = 16'h3afc;
	ans = 16'h34f0;
	#20
	A = 16'h36e7;
	B = 16'ha838;
	ans = 16'ha348;
	#20
	A = 16'h3bf1;
	B = 16'h3a8e;
	ans = 16'h3a82;
	#20
	A = 16'h3830;
	B = 16'h3370;
	ans = 16'h2fc9;
	#20
	A = 16'hb380;
	B = 16'hb832;
	ans = 16'h2fde;
	#20
	A = 16'hb689;
	B = 16'h2c05;
	ans = 16'ha691;
	#20
	A = 16'hb89b;
	B = 16'h3853;
	ans = 16'hb4fb;
	#20
	A = 16'h3a03;
	B = 16'h314d;
	ans = 16'h2ff7;
	#20
	A = 16'h9e9a;
	B = 16'h39ad;
	ans = 16'h9caf;
	#20
	A = 16'h308b;
	B = 16'h3875;
	ans = 16'h2d10;
	#20
	A = 16'hb992;
	B = 16'hbb7b;
	ans = 16'h3935;
	#20
	A = 16'h3b9a;
	B = 16'hb8a8;
	ans = 16'hb86d;
	#20
	A = 16'h35d1;
	B = 16'hb76e;
	ans = 16'hb167;
	#20
	A = 16'hb506;
	B = 16'h3af9;
	ans = 16'hb461;
	#20
	A = 16'hba4e;
	B = 16'h2642;
	ans = 16'ha4ef;
	#20
	A = 16'hb46b;
	B = 16'h37f1;
	ans = 16'hb063;
	#20
	A = 16'hbb69;
	B = 16'h212e;
	ans = 16'ha0cc;
	#20
	A = 16'hbb9c;
	B = 16'hb4e5;
	ans = 16'h34a8;
	#20
	A = 16'hb98a;
	B = 16'h3b7f;
	ans = 16'hb931;
	#20
	A = 16'h38a8;
	B = 16'h3719;
	ans = 16'h3422;
	#20
	A = 16'h3047;
	B = 16'hb968;
	ans = 16'hadc8;
	#20
	A = 16'hb502;
	B = 16'h1c1a;
	ans = 16'h9523;
	#20
	A = 16'h3602;
	B = 16'hb492;
	ans = 16'haedd;
	#20
	A = 16'h3473;
	B = 16'hb36c;
	ans = 16'hac21;
	#20
	A = 16'hb99a;
	B = 16'h3afe;
	ans = 16'hb8e5;
	#20
	A = 16'hb901;
	B = 16'h3b21;
	ans = 16'hb876;
	#20
	A = 16'hb81e;
	B = 16'hb314;
	ans = 16'h2f49;
	#20
	A = 16'h38bd;
	B = 16'h3a6f;
	ans = 16'h379f;
	#20
	A = 16'h29cd;
	B = 16'hba47;
	ans = 16'ha88d;
	#20
	A = 16'h3a00;
	B = 16'hbbc5;
	ans = 16'hb9d4;
	#20
	A = 16'h3b8e;
	B = 16'h36d8;
	ans = 16'h3676;
	#20
	A = 16'hbb33;
	B = 16'h287b;
	ans = 16'ha808;
	#20
	A = 16'h3a3d;
	B = 16'h2064;
	ans = 16'h1ed9;
	#20
	A = 16'hb946;
	B = 16'hba96;
	ans = 16'h3857;
	#20
	A = 16'h3408;
	B = 16'hbac8;
	ans = 16'hb2d6;
	#20
	A = 16'h33ae;
	B = 16'hadf5;
	ans = 16'ha5b8;
	#20
	A = 16'h3574;
	B = 16'h2e1b;
	ans = 16'h2829;
	#20
	A = 16'hba44;
	B = 16'hb2f4;
	ans = 16'h3172;
	#20
	A = 16'hba55;
	B = 16'ha0ab;
	ans = 16'h1f64;
	#20
	A = 16'hb93d;
	B = 16'h312a;
	ans = 16'haec3;
	#20
	A = 16'h37fc;
	B = 16'h3984;
	ans = 16'h3581;
	#20
	A = 16'h3822;
	B = 16'h3770;
	ans = 16'h33af;
	#20
	A = 16'h2d46;
	B = 16'hb85a;
	ans = 16'ha9bd;
	#20
	A = 16'h38cb;
	B = 16'h352a;
	ans = 16'h3230;
	#20
	A = 16'hb8eb;
	B = 16'hbbe9;
	ans = 16'h38dd;
	#20
	A = 16'h3aac;
	B = 16'h2e5c;
	ans = 16'h2d4e;
	#20
	A = 16'h353e;
	B = 16'hb6fb;
	ans = 16'hb093;
	#20
	A = 16'h396b;
	B = 16'h2e6e;
	ans = 16'h2c5b;
	#20
	A = 16'h334d;
	B = 16'h3051;
	ans = 16'h27e1;
	#20
	A = 16'hadf9;
	B = 16'hba8a;
	ans = 16'h2ce2;
	#20
	A = 16'had6a;
	B = 16'hbab6;
	ans = 16'h2c8b;
	#20
	A = 16'hb94e;
	B = 16'hb8ab;
	ans = 16'h3631;
	#20
	A = 16'h3b09;
	B = 16'hb995;
	ans = 16'hb8e9;
	#20
	A = 16'h3696;
	B = 16'hb6bc;
	ans = 16'hb18b;
	#20
	A = 16'hb3bb;
	B = 16'h3b62;
	ans = 16'hb322;
	#20
	A = 16'had31;
	B = 16'hbb9b;
	ans = 16'h2cef;
	#20
	A = 16'hb8d7;
	B = 16'h3291;
	ans = 16'haff2;
	#20
	A = 16'hbb60;
	B = 16'hb847;
	ans = 16'h37e3;
	#20
	A = 16'hbbbf;
	B = 16'hb599;
	ans = 16'h356c;
	#20
	A = 16'hb764;
	B = 16'h31e9;
	ans = 16'had76;
	#20
	A = 16'h3630;
	B = 16'hb6fb;
	ans = 16'hb166;
	#20
	A = 16'hab56;
	B = 16'hb501;
	ans = 16'h2497;
	#20
	A = 16'h3065;
	B = 16'hb228;
	ans = 16'ha6c3;
	#20
	A = 16'h3a2a;
	B = 16'haf94;
	ans = 16'hadd7;
	#20
	A = 16'hbbb2;
	B = 16'h3430;
	ans = 16'hb407;
	#20
	A = 16'h3b45;
	B = 16'hb892;
	ans = 16'hb827;
	#20
	A = 16'h39e5;
	B = 16'hb98a;
	ans = 16'hb815;
	#20
	A = 16'h3932;
	B = 16'hb49a;
	ans = 16'hb1fa;
	#20
	A = 16'hb50b;
	B = 16'h329f;
	ans = 16'hac2c;
	#20
	A = 16'h323d;
	B = 16'hb43e;
	ans = 16'haa9e;
	#20
	A = 16'h39ca;
	B = 16'h3b06;
	ans = 16'h3915;
	#20
	A = 16'hb721;
	B = 16'h382d;
	ans = 16'hb371;
	#20
	A = 16'hb667;
	B = 16'h391e;
	ans = 16'hb418;
	#20
	A = 16'hb980;
	B = 16'hbabb;
	ans = 16'h38a1;
	#20
	A = 16'hb50a;
	B = 16'hb8de;
	ans = 16'h3222;
	#20
	A = 16'h3b5f;
	B = 16'h3a45;
	ans = 16'h39c7;
	#20
	A = 16'hb76c;
	B = 16'ha4da;
	ans = 16'h2080;
	#20
	A = 16'h30ab;
	B = 16'hb6b4;
	ans = 16'habd3;
	#20
	A = 16'hb87d;
	B = 16'hba90;
	ans = 16'h375d;
	#20
	A = 16'hb9c5;
	B = 16'h3a78;
	ans = 16'hb8aa;
	#20
	A = 16'hb6fb;
	B = 16'h351b;
	ans = 16'hb074;
	#20
	A = 16'hb90d;
	B = 16'h3845;
	ans = 16'hb564;
	#20
	A = 16'hb2e0;
	B = 16'hb925;
	ans = 16'h306c;
	#20
	A = 16'hb7f0;
	B = 16'hba93;
	ans = 16'h3686;
	#20
	A = 16'hb91b;
	B = 16'h377a;
	ans = 16'hb4c5;
	#20
	A = 16'h35db;
	B = 16'h31c7;
	ans = 16'h2c3b;
	#20
	A = 16'h3770;
	B = 16'hb1d9;
	ans = 16'had70;
	#20
	A = 16'h3a29;
	B = 16'h3a29;
	ans = 16'h38be;
	#20
	A = 16'hb81d;
	B = 16'h395e;
	ans = 16'hb585;
	#20
	A = 16'hbbd0;
	B = 16'hbb11;
	ans = 16'h3ae7;
	#20
	A = 16'h37a8;
	B = 16'hb448;
	ans = 16'hb019;
	#20
	A = 16'hae9e;
	B = 16'hba4e;
	ans = 16'h2d37;
	#20
	A = 16'hba2e;
	B = 16'hbb8a;
	ans = 16'h39d3;
	#20
	A = 16'hbb3d;
	B = 16'h3348;
	ans = 16'hb297;
	#20
	A = 16'h364c;
	B = 16'hb81e;
	ans = 16'hb27b;
	#20
	A = 16'hb9aa;
	B = 16'h3889;
	ans = 16'hb66c;
	#20
	A = 16'hb83f;
	B = 16'hb52b;
	ans = 16'h317c;
	#20
	A = 16'h3595;
	B = 16'h3929;
	ans = 16'h3333;
	#20
	A = 16'hb7fc;
	B = 16'hb371;
	ans = 16'h2f6d;
	#20
	A = 16'h384e;
	B = 16'hb8c6;
	ans = 16'hb523;
	#20
	A = 16'hbaf1;
	B = 16'h36f3;
	ans = 16'hb608;
	#20
	A = 16'h3896;
	B = 16'h3a33;
	ans = 16'h371b;
	#20
	A = 16'hb5bc;
	B = 16'ha99e;
	ans = 16'h2407;
	#20
	A = 16'hb5d4;
	B = 16'hb9ab;
	ans = 16'h3421;
	#20
	A = 16'hb4fa;
	B = 16'hb43a;
	ans = 16'h2d42;
	#20
	A = 16'hba3d;
	B = 16'hbbb0;
	ans = 16'h39ff;
	#20
	A = 16'hba00;
	B = 16'hb85c;
	ans = 16'h368a;
	#20
	A = 16'h3b2f;
	B = 16'hb555;
	ans = 16'hb4ca;
	#20
	A = 16'h3995;
	B = 16'hb707;
	ans = 16'hb4e7;
	#20
	A = 16'h3aa4;
	B = 16'h3526;
	ans = 16'h3446;
	#20
	A = 16'h35ed;
	B = 16'h302f;
	ans = 16'h2a33;
	#20
	A = 16'hbb46;
	B = 16'h325d;
	ans = 16'hb1c9;
	#20
	A = 16'hb5a7;
	B = 16'hba91;
	ans = 16'h34a4;
	#20
	A = 16'h3bf0;
	B = 16'h3bc3;
	ans = 16'h3bb3;
	#20
	A = 16'hb88b;
	B = 16'h3bfa;
	ans = 16'hb888;
	#20
	A = 16'hba52;
	B = 16'h2ab0;
	ans = 16'ha949;
	#20
	A = 16'hb507;
	B = 16'hb8b3;
	ans = 16'h31e8;
	#20
	A = 16'hba8a;
	B = 16'h35b3;
	ans = 16'hb4a9;
	#20
	A = 16'h3932;
	B = 16'h3401;
	ans = 16'h3133;
	#20
	A = 16'h3a06;
	B = 16'h3b7b;
	ans = 16'h39a2;
	#20
	A = 16'h3956;
	B = 16'hb110;
	ans = 16'haec1;
	#20
	A = 16'h2b34;
	B = 16'h3993;
	ans = 16'h2905;
	#20
	A = 16'h3925;
	B = 16'h30c4;
	ans = 16'h2e21;
	#20
	A = 16'h3a01;
	B = 16'hafd9;
	ans = 16'hade4;
	#20
	A = 16'h388b;
	B = 16'h31fa;
	ans = 16'h2eca;
	#20
	A = 16'hba1c;
	B = 16'h3a54;
	ans = 16'hb8d5;
	#20
	A = 16'h365f;
	B = 16'haf91;
	ans = 16'haa07;
	#20
	A = 16'hb3b5;
	B = 16'hb9a6;
	ans = 16'h3171;
	#20
	A = 16'hba51;
	B = 16'hb936;
	ans = 16'h381d;
	#20
	A = 16'hb1c9;
	B = 16'hb1d2;
	ans = 16'h2835;
	#20
	A = 16'hb913;
	B = 16'hbb05;
	ans = 16'h3874;
	#20
	A = 16'h3494;
	B = 16'hb581;
	ans = 16'hae4d;
	#20
	A = 16'hb51d;
	B = 16'h2cf9;
	ans = 16'ha65b;
	#20
	A = 16'h9afd;
	B = 16'h3875;
	ans = 16'h97c9;
	#20
	A = 16'hb1d9;
	B = 16'h2c62;
	ans = 16'ha268;
	#20
	A = 16'h30dd;
	B = 16'h3a16;
	ans = 16'h2f66;
	#20
	A = 16'hba64;
	B = 16'hbb91;
	ans = 16'h3a0b;
	#20
	A = 16'hb56c;
	B = 16'h356a;
	ans = 16'haf57;
	#20
	A = 16'hb9b9;
	B = 16'h31e9;
	ans = 16'hb03a;
	#20
	A = 16'hb71c;
	B = 16'hac5c;
	ans = 16'h27c0;
	#20
	A = 16'h2b33;
	B = 16'h38d1;
	ans = 16'h2856;
	#20
	A = 16'h36c5;
	B = 16'ha52e;
	ans = 16'ha062;
	#20
	A = 16'hb9a3;
	B = 16'had44;
	ans = 16'h2b6c;
	#20
	A = 16'h346a;
	B = 16'h3951;
	ans = 16'h31de;
	#20
	A = 16'hbaf2;
	B = 16'hb075;
	ans = 16'h2fbd;
	#20
	A = 16'hb0ab;
	B = 16'had49;
	ans = 16'h222b;
	#20
	A = 16'h29da;
	B = 16'h3732;
	ans = 16'h2543;
	#20
	A = 16'hbbba;
	B = 16'h2cae;
	ans = 16'hac85;
	#20
	A = 16'hb28a;
	B = 16'hb92a;
	ans = 16'h3039;
	#20
	A = 16'hb6c5;
	B = 16'h3a4b;
	ans = 16'hb553;
	#20
	A = 16'hb1e8;
	B = 16'haa05;
	ans = 16'h2072;
	#20
	A = 16'h345b;
	B = 16'h9fb7;
	ans = 16'h9833;
	#20
	A = 16'h3880;
	B = 16'hbb31;
	ans = 16'hb80c;
	#20
	A = 16'hb29a;
	B = 16'hb5e0;
	ans = 16'h2cd9;
	#20
	A = 16'hb6ab;
	B = 16'h3b5c;
	ans = 16'hb622;
	#20
	A = 16'hbb42;
	B = 16'hba1e;
	ans = 16'h398d;
	#20
	A = 16'h3b1e;
	B = 16'hb992;
	ans = 16'hb8f5;
	#20
	A = 16'h349a;
	B = 16'hbb69;
	ans = 16'hb443;
	#20
	A = 16'hb12d;
	B = 16'hb468;
	ans = 16'h29b4;
	#20
	A = 16'h3996;
	B = 16'hb8b2;
	ans = 16'hb68f;
	#20
	A = 16'hb0d5;
	B = 16'hb04a;
	ans = 16'h252e;
	#20
	A = 16'h3435;
	B = 16'hbb3e;
	ans = 16'hb39e;
	#20
	A = 16'ha82e;
	B = 16'h2d96;
	ans = 16'h99d6;
	#20
	A = 16'hb334;
	B = 16'h39cc;
	ans = 16'hb138;
	#20
	A = 16'hb385;
	B = 16'h3a6e;
	ans = 16'hb20b;
	#20
	A = 16'hb98e;
	B = 16'h30ec;
	ans = 16'haed6;
	#20
	A = 16'hab1e;
	B = 16'hb791;
	ans = 16'h26bb;
	#20
	A = 16'h3aa2;
	B = 16'h2b88;
	ans = 16'h2a3f;
	#20
	A = 16'h3630;
	B = 16'hba91;
	ans = 16'hb514;
	#20
	A = 16'h3abd;
	B = 16'hb891;
	ans = 16'hb7b1;
	#20
	A = 16'h3ab7;
	B = 16'hb723;
	ans = 16'hb5fe;
	#20
	A = 16'hbbcb;
	B = 16'h3a06;
	ans = 16'hb9de;
	#20
	A = 16'hb94b;
	B = 16'hb3fb;
	ans = 16'h3148;
	#20
	A = 16'hb966;
	B = 16'hb81e;
	ans = 16'h358e;
	#20
	A = 16'hb9a9;
	B = 16'h3a88;
	ans = 16'hb89f;
	#20
	A = 16'h39f1;
	B = 16'h39b6;
	ans = 16'h383e;
	#20
	A = 16'h399d;
	B = 16'h3b08;
	ans = 16'h38ef;
	#20
	A = 16'hbab2;
	B = 16'h3a58;
	ans = 16'hb94f;
	#20
	A = 16'hb80a;
	B = 16'hab0c;
	ans = 16'h271e;
	#20
	A = 16'hb40b;
	B = 16'h315f;
	ans = 16'ha96e;
	#20
	A = 16'h3acd;
	B = 16'hb22a;
	ans = 16'hb13d;
	#20
	A = 16'h30a6;
	B = 16'h372c;
	ans = 16'h2c2b;
	#20
	A = 16'h3826;
	B = 16'hb22d;
	ans = 16'hae68;
	#20
	A = 16'h34ea;
	B = 16'hb6dc;
	ans = 16'hb037;
	#20
	A = 16'hba6b;
	B = 16'h3a28;
	ans = 16'hb8f0;
	#20
	A = 16'h3bd9;
	B = 16'h300a;
	ans = 16'h2fed;
	#20
	A = 16'h3bd0;
	B = 16'hbbeb;
	ans = 16'hbbbb;
	#20
	A = 16'hba68;
	B = 16'hbb42;
	ans = 16'h39d0;
	#20
	A = 16'h3a48;
	B = 16'h3ba3;
	ans = 16'h39ff;
	#20
	A = 16'h3878;
	B = 16'ha7c4;
	ans = 16'ha456;
	#20
	A = 16'hb81c;
	B = 16'h3a60;
	ans = 16'hb68d;
	#20
	A = 16'h32b4;
	B = 16'hb86e;
	ans = 16'haf6c;
	#20
	A = 16'hbb54;
	B = 16'hb58e;
	ans = 16'h3517;
	#20
	A = 16'hb722;
	B = 16'hbbb1;
	ans = 16'h36dc;
	#20
	A = 16'h303e;
	B = 16'hbae0;
	ans = 16'haf4b;
	#20
	A = 16'hba1e;
	B = 16'h3047;
	ans = 16'hae8b;
	#20
	A = 16'h3a80;
	B = 16'h39d4;
	ans = 16'h38bc;
	#20
	A = 16'hbb78;
	B = 16'hb391;
	ans = 16'h3310;
	#20
	A = 16'h386c;
	B = 16'h29db;
	ans = 16'h2679;
	#20
	A = 16'hb7be;
	B = 16'h3065;
	ans = 16'hac41;
	#20
	A = 16'h2fcb;
	B = 16'hb7cb;
	ans = 16'hab97;
	#20
	A = 16'hb524;
	B = 16'h3658;
	ans = 16'hb014;
	#20
	A = 16'hba3c;
	B = 16'hba39;
	ans = 16'h38d9;
	#20
	A = 16'hb17a;
	B = 16'h35c4;
	ans = 16'habe5;
	#20
	A = 16'hb25d;
	B = 16'ha8e9;
	ans = 16'h1fd0;
	#20
	A = 16'hbbb8;
	B = 16'h383e;
	ans = 16'hb818;
	#20
	A = 16'h9e2d;
	B = 16'hb236;
	ans = 16'h14cb;
	#20
	A = 16'h3b19;
	B = 16'hb9c9;
	ans = 16'hb922;
	#20
	A = 16'hab6e;
	B = 16'hb0d9;
	ans = 16'h2081;
	#20
	A = 16'hbb93;
	B = 16'hb9e7;
	ans = 16'h3997;
	#20
	A = 16'hb8b0;
	B = 16'h3751;
	ans = 16'hb449;
	#20
	A = 16'h35d7;
	B = 16'hb611;
	ans = 16'hb06e;
	#20
	A = 16'hb9ae;
	B = 16'hb825;
	ans = 16'h35e3;
	#20
	A = 16'hb886;
	B = 16'hadea;
	ans = 16'h2ab0;
	#20
	A = 16'h3b5d;
	B = 16'h3167;
	ans = 16'h30f9;
	#20
	A = 16'h3ad4;
	B = 16'h2f1a;
	ans = 16'h2e10;
	#20
	A = 16'hb237;
	B = 16'haff0;
	ans = 16'h262b;
	#20
	A = 16'h3932;
	B = 16'hb8d1;
	ans = 16'hb641;
	#20
	A = 16'h39d1;
	B = 16'h38fe;
	ans = 16'h3742;
	#20
	A = 16'h262c;
	B = 16'h3253;
	ans = 16'h1ce1;
	#20
	A = 16'hb5a7;
	B = 16'hb4dd;
	ans = 16'h2edf;
	#20
	A = 16'hb3f8;
	B = 16'h2be7;
	ans = 16'ha3df;
	#20
	A = 16'h2e25;
	B = 16'hbb0b;
	ans = 16'had69;
	#20
	A = 16'h38fb;
	B = 16'h3886;
	ans = 16'h35a2;
	#20
	A = 16'hb574;
	B = 16'h351c;
	ans = 16'haef7;
	#20
	A = 16'hb48a;
	B = 16'h38db;
	ans = 16'hb183;
	#20
	A = 16'h371b;
	B = 16'hadb8;
	ans = 16'ha914;
	#20
	A = 16'hbaf0;
	B = 16'h3855;
	ans = 16'hb783;
	#20
	A = 16'h3944;
	B = 16'hae8f;
	ans = 16'hac51;
	#20
	A = 16'hb9e9;
	B = 16'h361b;
	ans = 16'hb483;
	#20
	A = 16'h3b23;
	B = 16'hb94e;
	ans = 16'hb8bb;
	#20
	A = 16'hb0db;
	B = 16'hba3f;
	ans = 16'h2f95;
	#20
	A = 16'h3873;
	B = 16'hb6de;
	ans = 16'hb3a3;
	#20
	A = 16'ha567;
	B = 16'h24a5;
	ans = 16'h8e46;
	#20
	A = 16'hbbc9;
	B = 16'hb244;
	ans = 16'h3219;
	#20
	A = 16'hb626;
	B = 16'h3a40;
	ans = 16'hb4ce;
	#20
	A = 16'hb55a;
	B = 16'h3844;
	ans = 16'hb1b5;
	#20
	A = 16'hb65b;
	B = 16'h3262;
	ans = 16'had12;
	#20
	A = 16'hb69b;
	B = 16'h355e;
	ans = 16'hb06e;
	#20
	A = 16'h38e9;
	B = 16'h36de;
	ans = 16'h3437;
	#20
	A = 16'h393e;
	B = 16'h2b3c;
	ans = 16'h28be;
	#20
	A = 16'hba8f;
	B = 16'h387e;
	ans = 16'hb75e;
	#20
	A = 16'hb457;
	B = 16'h3bd2;
	ans = 16'hb43e;
	#20
	A = 16'hb419;
	B = 16'h3adf;
	ans = 16'hb30a;
	#20
	A = 16'h33de;
	B = 16'h3a1f;
	ans = 16'h3205;
	#20
	A = 16'hb005;
	B = 16'h3221;
	ans = 16'ha629;
	#20
	A = 16'hba7a;
	B = 16'hbaca;
	ans = 16'h397f;
	#20
	A = 16'h3736;
	B = 16'hb97a;
	ans = 16'hb4f0;
	#20
	A = 16'hbb57;
	B = 16'h3ae1;
	ans = 16'hba50;
	#20
	A = 16'hb3a4;
	B = 16'hb8fb;
	ans = 16'h30c2;
	#20
	A = 16'h3b91;
	B = 16'h2f6c;
	ans = 16'h2f05;
	#20
	A = 16'hb841;
	B = 16'h3bfa;
	ans = 16'hb83e;
	#20
	A = 16'hba7f;
	B = 16'hb909;
	ans = 16'h3817;
	#20
	A = 16'hac72;
	B = 16'h3905;
	ans = 16'ha994;
	#20
	A = 16'hb83b;
	B = 16'hb9b4;
	ans = 16'h3608;
	#20
	A = 16'hb6c7;
	B = 16'hbb9e;
	ans = 16'h3674;
	#20
	A = 16'hb45c;
	B = 16'hb842;
	ans = 16'h30a4;
	#20
	A = 16'ha18c;
	B = 16'hbb0e;
	ans = 16'h20e4;
	#20
	A = 16'hbbc6;
	B = 16'h39c1;
	ans = 16'hb997;
	#20
	A = 16'hb605;
	B = 16'h3aa6;
	ans = 16'hb501;
	#20
	A = 16'hb65b;
	B = 16'hbac3;
	ans = 16'h355f;
	#20
	A = 16'hb51e;
	B = 16'h37f3;
	ans = 16'hb116;
	#20
	A = 16'h3ad6;
	B = 16'h37c7;
	ans = 16'h36a5;
	#20
	A = 16'hb455;
	B = 16'hba8b;
	ans = 16'h3316;
	#20
	A = 16'hba33;
	B = 16'h361d;
	ans = 16'hb4bd;
	#20
	A = 16'h3814;
	B = 16'h3041;
	ans = 16'h2c56;
	#20
	A = 16'hac3c;
	B = 16'h3982;
	ans = 16'ha9d5;
	#20
	A = 16'h3957;
	B = 16'hb83f;
	ans = 16'hb5ab;
	#20
	A = 16'ha6dd;
	B = 16'hb8c4;
	ans = 16'h2417;
	#20
	A = 16'hb859;
	B = 16'h392f;
	ans = 16'hb5a2;
	#20
	A = 16'h2c42;
	B = 16'h3a58;
	ans = 16'h2ac1;
	#20
	A = 16'hb710;
	B = 16'hb887;
	ans = 16'h33fe;
	#20
	A = 16'hbb4b;
	B = 16'h215a;
	ans = 16'ha0e1;
	#20
	A = 16'h3bd3;
	B = 16'h3926;
	ans = 16'h3909;
	#20
	A = 16'h3135;
	B = 16'hb2f4;
	ans = 16'ha887;
	#20
	A = 16'h3896;
	B = 16'h315c;
	ans = 16'h2e25;
	#20
	A = 16'hb842;
	B = 16'hb8b3;
	ans = 16'h3501;
	#20
	A = 16'hb521;
	B = 16'h9fd8;
	ans = 16'h1907;
	#20
	A = 16'hb6b6;
	B = 16'h31e3;
	ans = 16'hacf0;
	#20
	A = 16'h380d;
	B = 16'h35ab;
	ans = 16'h31bd;
	#20
	A = 16'h31bd;
	B = 16'h395d;
	ans = 16'h2fb2;
	#20
	A = 16'h3b00;
	B = 16'hbb87;
	ans = 16'hba96;
	#20
	A = 16'hbb13;
	B = 16'hbb5e;
	ans = 16'h3a84;
	#20
	A = 16'hbadc;
	B = 16'hb207;
	ans = 16'h312b;
	#20
	A = 16'hb8f6;
	B = 16'hb7a1;
	ans = 16'h34bb;
	#20
	A = 16'h38f7;
	B = 16'h3a6d;
	ans = 16'h37fa;
	#20
	A = 16'hb94e;
	B = 16'hb541;
	ans = 16'h32f8;
	#20
	A = 16'hb246;
	B = 16'hb7eb;
	ans = 16'h2e36;
	#20
	A = 16'hb944;
	B = 16'h38eb;
	ans = 16'hb679;
	#20
	A = 16'h31f1;
	B = 16'hb96f;
	ans = 16'hb009;
	#20
	A = 16'h353e;
	B = 16'h38c9;
	ans = 16'h3245;
	#20
	A = 16'h345c;
	B = 16'hb7f2;
	ans = 16'hb054;
	#20
	A = 16'hba08;
	B = 16'hb2d4;
	ans = 16'h3126;
	#20
	A = 16'hb070;
	B = 16'h3bf5;
	ans = 16'hb06a;
	#20
	A = 16'hb068;
	B = 16'h3a3e;
	ans = 16'haee0;
	#20
	A = 16'h3695;
	B = 16'hb7fe;
	ans = 16'hb293;
	#20
	A = 16'hafbc;
	B = 16'h395c;
	ans = 16'had2e;
	#20
	A = 16'h39f8;
	B = 16'hb8bd;
	ans = 16'hb712;
	#20
	A = 16'h3ae5;
	B = 16'hb5e5;
	ans = 16'hb514;
	#20
	A = 16'h39d5;
	B = 16'hbac4;
	ans = 16'hb8ef;
	#20
	A = 16'h308b;
	B = 16'hb9ac;
	ans = 16'hae71;
	#20
	A = 16'h3bf1;
	B = 16'h3619;
	ans = 16'h360e;
	#20
	A = 16'h36e3;
	B = 16'h2afb;
	ans = 16'h2602;
	#20
	A = 16'hb773;
	B = 16'hba56;
	ans = 16'h35e6;
	#20
	A = 16'h3bdc;
	B = 16'h342c;
	ans = 16'h3419;
	#20
	A = 16'hbb73;
	B = 16'h3ac4;
	ans = 16'hba4d;
	#20
	A = 16'hb1c4;
	B = 16'hbbc6;
	ans = 16'h319a;
	#20
	A = 16'h355e;
	B = 16'h39d9;
	ans = 16'h33d9;
	#20
	A = 16'hb95a;
	B = 16'hb060;
	ans = 16'h2dda;
	#20
	A = 16'haf14;
	B = 16'h2fbc;
	ans = 16'ha2d8;
	#20
	A = 16'hbac3;
	B = 16'hb2b8;
	ans = 16'h31ae;
	#20
	A = 16'h37ee;
	B = 16'h3b1b;
	ans = 16'h370b;
	#20
	A = 16'hb94c;
	B = 16'h3788;
	ans = 16'hb4fd;
	#20
	A = 16'h3b70;
	B = 16'hb8de;
	ans = 16'hb886;
	#20
	A = 16'h2ab1;
	B = 16'hb718;
	ans = 16'ha5ef;
	#20
	A = 16'h2b08;
	B = 16'h3026;
	ans = 16'h1f4b;
	#20
	A = 16'h3af9;
	B = 16'h3bb6;
	ans = 16'h3ab9;
	#20
	A = 16'h3b18;
	B = 16'h3156;
	ans = 16'h30bb;
	#20
	A = 16'hb5e6;
	B = 16'h32c7;
	ans = 16'hacff;
	#20
	A = 16'hb689;
	B = 16'h38ef;
	ans = 16'hb408;
	#20
	A = 16'hb90a;
	B = 16'h372f;
	ans = 16'hb486;
	#20
	A = 16'hb510;
	B = 16'h36a6;
	ans = 16'hb035;
	#20
	A = 16'h38f1;
	B = 16'hb581;
	ans = 16'hb2cd;
	#20
	A = 16'hb9ba;
	B = 16'h2b4f;
	ans = 16'ha93b;
	#20
	A = 16'hb53d;
	B = 16'h384d;
	ans = 16'hb1a2;
	#20
	A = 16'h3541;
	B = 16'h3763;
	ans = 16'h30da;
	#20
	A = 16'h3bc2;
	B = 16'hb98e;
	ans = 16'hb963;
	#20
	A = 16'hb7b9;
	B = 16'h3b8a;
	ans = 16'hb747;
	#20
	A = 16'hbaba;
	B = 16'hb520;
	ans = 16'h344f;
	#20
	A = 16'h36f5;
	B = 16'hb926;
	ans = 16'hb47a;
	#20
	A = 16'hb44a;
	B = 16'hb163;
	ans = 16'h29c7;
	#20
	A = 16'h3aa0;
	B = 16'h37ec;
	ans = 16'h368f;
	#20
	A = 16'h3a4a;
	B = 16'h307f;
	ans = 16'h2f12;
	#20
	A = 16'h2d34;
	B = 16'h39f6;
	ans = 16'h2bc1;
	#20
	A = 16'hbbd6;
	B = 16'h3ab3;
	ans = 16'hba90;
	#20
	A = 16'h388f;
	B = 16'h35d7;
	ans = 16'h32a8;
	#20
	A = 16'h383c;
	B = 16'hb503;
	ans = 16'hb14e;
	#20
	A = 16'hb5c4;
	B = 16'hb8a8;
	ans = 16'h32b6;
	#20
	A = 16'hb985;
	B = 16'hb6b9;
	ans = 16'h34a3;
	#20
	A = 16'hbbbd;
	B = 16'hb120;
	ans = 16'h30f5;
	#20
	A = 16'h3810;
	B = 16'h394a;
	ans = 16'h355f;
	#20
	A = 16'h3bb4;
	B = 16'hacf0;
	ans = 16'hacc1;
	#20
	A = 16'h34d0;
	B = 16'h3a3b;
	ans = 16'h337f;
	#20
	A = 16'h3b59;
	B = 16'h370e;
	ans = 16'h367b;
	#20
	A = 16'hbb16;
	B = 16'h380c;
	ans = 16'hb72b;
	#20
	A = 16'h32b1;
	B = 16'hb851;
	ans = 16'haf39;
	#20
	A = 16'hb34a;
	B = 16'hadb0;
	ans = 16'h252f;
	#20
	A = 16'hb5f3;
	B = 16'hba4f;
	ans = 16'h34b1;
	#20
	A = 16'hb4e8;
	B = 16'hbae5;
	ans = 16'h343a;
	#20
	A = 16'hbb63;
	B = 16'hb9e9;
	ans = 16'h3975;
	#20
	A = 16'h3345;
	B = 16'h389c;
	ans = 16'h3030;
	#20
	A = 16'hb607;
	B = 16'h2393;
	ans = 16'h9db5;
	#20
	A = 16'h3a15;
	B = 16'hba90;
	ans = 16'hb8fd;
	#20
	A = 16'hb13b;
	B = 16'h3219;
	ans = 16'ha7f9;
	#20
	A = 16'hb4cc;
	B = 16'h3a32;
	ans = 16'hb36e;
	#20
	A = 16'hbb25;
	B = 16'h34e5;
	ans = 16'hb45f;
	#20
	A = 16'h3492;
	B = 16'h3ab3;
	ans = 16'h33a8;
	#20
	A = 16'hb33a;
	B = 16'hbb63;
	ans = 16'h32ac;
	#20
	A = 16'hb7fb;
	B = 16'h3bd2;
	ans = 16'hb7cd;
	#20
	A = 16'hb6bb;
	B = 16'h3bdf;
	ans = 16'hb69f;
	#20
	A = 16'h3640;
	B = 16'h3b89;
	ans = 16'h35e3;
	#20
	A = 16'hb82a;
	B = 16'hb777;
	ans = 16'h33c5;
	#20
	A = 16'hac7a;
	B = 16'hbabd;
	ans = 16'h2b8b;
	#20
	A = 16'hb765;
	B = 16'hb524;
	ans = 16'h30c0;
	#20
	A = 16'h3249;
	B = 16'h375e;
	ans = 16'h2dca;
	#20
	A = 16'hb857;
	B = 16'hb847;
	ans = 16'h34a4;
	#20
	A = 16'hb5ca;
	B = 16'h2f8a;
	ans = 16'ha975;
	#20
	A = 16'hbb7a;
	B = 16'hb6af;
	ans = 16'h363f;
	#20
	A = 16'hbbdf;
	B = 16'h32ab;
	ans = 16'hb28f;
	#20
	A = 16'hb3ed;
	B = 16'hbbcc;
	ans = 16'h33b9;
	#20
	A = 16'h342a;
	B = 16'h36e2;
	ans = 16'h2f2a;
	#20
	A = 16'h35a1;
	B = 16'h376b;
	ans = 16'h3138;
	#20
	A = 16'hbbb7;
	B = 16'h33a4;
	ans = 16'hb35e;
	#20
	A = 16'h3bd9;
	B = 16'h38d8;
	ans = 16'h38c0;
	#20
	A = 16'h3ae3;
	B = 16'h34a0;
	ans = 16'h33f6;
	#20
	A = 16'hb0cd;
	B = 16'h30d2;
	ans = 16'ha5c9;
	#20
	A = 16'hb35b;
	B = 16'h3b7d;
	ans = 16'hb2e3;
	#20
	A = 16'hb189;
	B = 16'ha690;
	ans = 16'h1c8a;
	#20
	A = 16'ha812;
	B = 16'h34c1;
	ans = 16'ha0d6;
	#20
	A = 16'hae8b;
	B = 16'h3bdb;
	ans = 16'hae6d;
	#20
	A = 16'h3a61;
	B = 16'hbb8a;
	ans = 16'hba03;
	#20
	A = 16'h3348;
	B = 16'hbb31;
	ans = 16'hb28c;
	#20
	A = 16'hb434;
	B = 16'hb526;
	ans = 16'h2d69;
	#20
	A = 16'h2d1b;
	B = 16'had36;
	ans = 16'h9ea7;
	#20
	A = 16'hb7de;
	B = 16'hbb41;
	ans = 16'h3722;
	#20
	A = 16'h3561;
	B = 16'hb840;
	ans = 16'hb1b7;
	#20
	A = 16'h37f4;
	B = 16'h2cc0;
	ans = 16'h28b9;
	#20
	A = 16'h2cc7;
	B = 16'h3690;
	ans = 16'h27d6;
	#20
	A = 16'hba22;
	B = 16'h3a1b;
	ans = 16'hb8ae;
	#20
	A = 16'hac63;
	B = 16'hbbb7;
	ans = 16'h2c3b;
	#20
	A = 16'hb36a;
	B = 16'h3a58;
	ans = 16'hb1e1;
	#20
	A = 16'hb807;
	B = 16'h3bea;
	ans = 16'hb7f8;
	#20
	A = 16'hb7dd;
	B = 16'hb89b;
	ans = 16'h3487;
	#20
	A = 16'hba7b;
	B = 16'haff9;
	ans = 16'h2e75;
	#20
	A = 16'hb84f;
	B = 16'hb95d;
	ans = 16'h35c7;
	#20
	A = 16'h2d05;
	B = 16'hac5b;
	ans = 16'h9d77;
	#20
	A = 16'hb9eb;
	B = 16'hba4e;
	ans = 16'h38aa;
	#20
	A = 16'hba89;
	B = 16'hb8ed;
	ans = 16'h3806;
	#20
	A = 16'h3998;
	B = 16'hbb2d;
	ans = 16'hb904;
	#20
	A = 16'h3892;
	B = 16'hb947;
	ans = 16'hb608;
	#20
	A = 16'hb6e0;
	B = 16'haa4b;
	ans = 16'h2568;
	#20
	A = 16'hb9b9;
	B = 16'h36e3;
	ans = 16'hb4ed;
	#20
	A = 16'h2c72;
	B = 16'h31d5;
	ans = 16'h227b;
	#20
	A = 16'h3889;
	B = 16'hbb2c;
	ans = 16'hb811;
	#20
	A = 16'h32f9;
	B = 16'hbae5;
	ans = 16'hb202;
	#20
	A = 16'h35fe;
	B = 16'h3838;
	ans = 16'h3252;
	#20
	A = 16'hb821;
	B = 16'hab5c;
	ans = 16'h2799;
	#20
	A = 16'h3bb0;
	B = 16'h37c1;
	ans = 16'h3773;
	#20
	A = 16'hb954;
	B = 16'haff7;
	ans = 16'h2d4e;
	#20
	A = 16'hb43a;
	B = 16'h3a4c;
	ans = 16'hb2a7;
	#20
	A = 16'h2cb4;
	B = 16'ha956;
	ans = 16'h9a46;
	#20
	A = 16'hbaeb;
	B = 16'h28e6;
	ans = 16'ha83c;
	#20
	A = 16'h39da;
	B = 16'h32c4;
	ans = 16'h30f3;
	#20
	A = 16'ha905;
	B = 16'hbbc9;
	ans = 16'h28e2;
	#20
	A = 16'h3a4e;
	B = 16'h3b3a;
	ans = 16'h39b2;
	#20
	A = 16'h375a;
	B = 16'h2f85;
	ans = 16'h2ae9;
	#20
	A = 16'hbba1;
	B = 16'h9c4e;
	ans = 16'h1c1b;
	#20
	A = 16'hb9b2;
	B = 16'h36db;
	ans = 16'hb4e1;
	#20
	A = 16'h3b34;
	B = 16'h3984;
	ans = 16'h38f7;
	#20
	A = 16'h3ba2;
	B = 16'hb8ce;
	ans = 16'hb896;
	#20
	A = 16'hbb7f;
	B = 16'h3bf1;
	ans = 16'hbb71;
	#20
	A = 16'h38cc;
	B = 16'hb12d;
	ans = 16'hae35;
	#20
	A = 16'h3853;
	B = 16'hbbf4;
	ans = 16'hb84d;
	#20
	A = 16'h349a;
	B = 16'hb8db;
	ans = 16'hb196;
	#20
	A = 16'hb6eb;
	B = 16'hae16;
	ans = 16'h2943;
	#20
	A = 16'hbb54;
	B = 16'h3065;
	ans = 16'hb007;
	#20
	A = 16'hb0fc;
	B = 16'hbaa1;
	ans = 16'h3021;
	#20
	A = 16'h3a19;
	B = 16'hb633;
	ans = 16'hb4ba;
	#20
	A = 16'hb8b8;
	B = 16'h39b9;
	ans = 16'hb6c0;
	#20
	A = 16'hb9cc;
	B = 16'hb31f;
	ans = 16'h3129;
	#20
	A = 16'h3bfa;
	B = 16'hb907;
	ans = 16'hb903;
	#20
	A = 16'hbb0d;
	B = 16'h3460;
	ans = 16'hb3b6;
	#20
	A = 16'h3b36;
	B = 16'hb857;
	ans = 16'hb7d3;
	#20
	A = 16'h310d;
	B = 16'h3480;
	ans = 16'h29af;
	#20
	A = 16'h2c3e;
	B = 16'hb77e;
	ans = 16'ha7f2;
	#20
	A = 16'h3bc4;
	B = 16'h32d6;
	ans = 16'h32a3;
	#20
	A = 16'h27e4;
	B = 16'h35f8;
	ans = 16'h21e3;
	#20
	A = 16'hb82e;
	B = 16'h3acb;
	ans = 16'hb719;
	#20
	A = 16'h3187;
	B = 16'h2f49;
	ans = 16'h2509;
	#20
	A = 16'hb9e4;
	B = 16'h3649;
	ans = 16'hb4a1;
	#20
	A = 16'hb99c;
	B = 16'hb88a;
	ans = 16'h365e;
	#20
	A = 16'hb7de;
	B = 16'h39e1;
	ans = 16'hb5c8;
	#20
	A = 16'hacf7;
	B = 16'h3a96;
	ans = 16'hac16;
	#20
	A = 16'hb9b1;
	B = 16'h382b;
	ans = 16'hb5ee;
	#20
	A = 16'h3921;
	B = 16'h382b;
	ans = 16'h3558;
	#20
	A = 16'hac63;
	B = 16'h3827;
	ans = 16'ha88e;
	#20
	A = 16'h2c32;
	B = 16'hb71d;
	ans = 16'ha776;
	#20
	A = 16'h2e4e;
	B = 16'hb27c;
	ans = 16'ha51c;
	#20
	A = 16'hb945;
	B = 16'h3a15;
	ans = 16'hb802;
	#20
	A = 16'hb8c5;
	B = 16'h3a4a;
	ans = 16'hb780;
	#20
	A = 16'h3681;
	B = 16'hb98a;
	ans = 16'hb481;
	#20
	A = 16'h3422;
	B = 16'h3b18;
	ans = 16'h3354;
	#20
	A = 16'h3a5a;
	B = 16'h3707;
	ans = 16'h3594;
	#20
	A = 16'h3818;
	B = 16'hbac8;
	ans = 16'hb6f1;
	#20
	A = 16'hb2ce;
	B = 16'hb351;
	ans = 16'h2a39;
	#20
	A = 16'h3871;
	B = 16'hb46a;
	ans = 16'hb0e7;
	#20
	A = 16'h2efc;
	B = 16'hb94e;
	ans = 16'haca2;
	#20
	A = 16'hb42b;
	B = 16'hbbab;
	ans = 16'h33fd;
	#20
	A = 16'hb703;
	B = 16'h3bec;
	ans = 16'hb6f1;
	#20
	A = 16'hb4c5;
	B = 16'h3baf;
	ans = 16'hb495;
	#20
	A = 16'h38c6;
	B = 16'hb8fb;
	ans = 16'hb5f2;
	#20
	A = 16'hb9b6;
	B = 16'h38b6;
	ans = 16'hb6ba;
	#20
	A = 16'hbb53;
	B = 16'hbae2;
	ans = 16'h3a4d;
	#20
	A = 16'hab74;
	B = 16'hb876;
	ans = 16'h2828;
	#20
	A = 16'h3aa8;
	B = 16'h3962;
	ans = 16'h387b;
	#20
	A = 16'h3a98;
	B = 16'hb96b;
	ans = 16'hb877;
	#20
	A = 16'h34e7;
	B = 16'hb1fb;
	ans = 16'hab54;
	#20
	A = 16'hbabe;
	B = 16'hac50;
	ans = 16'h2b45;
	#20
	A = 16'hb7fe;
	B = 16'h3bd0;
	ans = 16'hb7ce;
	#20
	A = 16'h3425;
	B = 16'hb87f;
	ans = 16'hb0a9;
	#20
	A = 16'h3a02;
	B = 16'h3223;
	ans = 16'h309c;
	#20
	A = 16'hb003;
	B = 16'h35ee;
	ans = 16'ha9f2;
	#20
	A = 16'h31da;
	B = 16'h3985;
	ans = 16'h300a;
	#20
	A = 16'hb528;
	B = 16'hae75;
	ans = 16'h2829;
	#20
	A = 16'hb875;
	B = 16'hb17f;
	ans = 16'h2e20;
	#20
	A = 16'hfa1;
	B = 16'hb4f6;
	ans = 16'h88bb;
	#20
	A = 16'hb80d;
	B = 16'h396b;
	ans = 16'hb57d;
	#20
	A = 16'hb896;
	B = 16'hb121;
	ans = 16'h2de1;
	#20
	A = 16'haf47;
	B = 16'hadaa;
	ans = 16'h2127;
	#20
	A = 16'h2ccb;
	B = 16'h39da;
	ans = 16'h2b03;
	#20
	A = 16'h345d;
	B = 16'h2e1c;
	ans = 16'h26aa;
	#20
	A = 16'hbb71;
	B = 16'hb404;
	ans = 16'h3378;
	#20
	A = 16'ha2f7;
	B = 16'h3a84;
	ans = 16'ha1ac;
	#20
	A = 16'h3b98;
	B = 16'h31a3;
	ans = 16'h315a;
	#20
	A = 16'hb1e5;
	B = 16'hb84c;
	ans = 16'h2e55;
	#20
	A = 16'h3a2c;
	B = 16'h390a;
	ans = 16'h37c6;
	#20
	A = 16'hb1fc;
	B = 16'had1f;
	ans = 16'h23a9;
	#20
	A = 16'h345a;
	B = 16'hba80;
	ans = 16'hb312;
	#20
	A = 16'hb07a;
	B = 16'h3826;
	ans = 16'haca5;
	#20
	A = 16'h375a;
	B = 16'ha740;
	ans = 16'ha2aa;
	#20
	A = 16'hb9b8;
	B = 16'hb3d5;
	ans = 16'h3199;
	#20
	A = 16'h374f;
	B = 16'h2a47;
	ans = 16'h25bc;
	#20
	A = 16'hb9fd;
	B = 16'hb83c;
	ans = 16'h3657;
	#20
	A = 16'hb710;
	B = 16'hb70f;
	ans = 16'h323b;
	#20
	A = 16'hbb3c;
	B = 16'hb424;
	ans = 16'h337d;
	#20
	A = 16'h365c;
	B = 16'hb0f5;
	ans = 16'habe2;
	#20
	A = 16'h39d6;
	B = 16'h3966;
	ans = 16'h37e0;
	#20
	A = 16'hb724;
	B = 16'hb92e;
	ans = 16'h34a0;
	#20
	A = 16'h3a29;
	B = 16'h34e7;
	ans = 16'h338d;
	#20
	A = 16'h3985;
	B = 16'h331c;
	ans = 16'h30e8;
	#20
	A = 16'hb59d;
	B = 16'h347a;
	ans = 16'hae48;
	#20
	A = 16'h3985;
	B = 16'h399c;
	ans = 16'h37be;
	#20
	A = 16'h3608;
	B = 16'h3878;
	ans = 16'h32bd;
	#20
	A = 16'hb902;
	B = 16'hb2ac;
	ans = 16'h302d;
	#20
	A = 16'haba4;
	B = 16'hb526;
	ans = 16'h24eb;
	#20
	A = 16'hb0d1;
	B = 16'h3aad;
	ans = 16'hb005;
	#20
	A = 16'hb5eb;
	B = 16'hb9fa;
	ans = 16'h346c;
	#20
	A = 16'h2901;
	B = 16'h3a0f;
	ans = 16'h2794;
	#20
	A = 16'h2e9e;
	B = 16'hb7bd;
	ans = 16'haa67;
	#20
	A = 16'h3579;
	B = 16'h39ab;
	ans = 16'h33c1;
	#20
	A = 16'hbab1;
	B = 16'hb000;
	ans = 16'h2eb1;
	#20
	A = 16'hb90f;
	B = 16'h3b20;
	ans = 16'hb881;
	#20
	A = 16'h3487;
	B = 16'hb556;
	ans = 16'hae0a;
	#20
	A = 16'h3a53;
	B = 16'h345a;
	ans = 16'h32e1;
	#20
	A = 16'hb14a;
	B = 16'hb487;
	ans = 16'h29fd;
	#20
	A = 16'h3bdf;
	B = 16'h3793;
	ans = 16'h3774;
	#20
	A = 16'h3a21;
	B = 16'hb8a7;
	ans = 16'hb721;
	#20
	A = 16'h3ba6;
	B = 16'hb01b;
	ans = 16'hafda;
	#20
	A = 16'hbacf;
	B = 16'hbbe9;
	ans = 16'h3abb;
	#20
	A = 16'h3bb4;
	B = 16'hb272;
	ans = 16'hb235;
	#20
	A = 16'hb4b9;
	B = 16'h373a;
	ans = 16'hb044;
	#20
	A = 16'hb816;
	B = 16'hb426;
	ans = 16'h303d;
	#20
	A = 16'h3733;
	B = 16'h1ac2;
	ans = 16'h1615;
	#20
	A = 16'hb9e1;
	B = 16'h3a94;
	ans = 16'hb8d6;
	#20
	A = 16'haa23;
	B = 16'h340b;
	ans = 16'ha234;
	#20
	A = 16'h382e;
	B = 16'h3ad0;
	ans = 16'h371e;
	#20
	A = 16'hb692;
	B = 16'hbbad;
	ans = 16'h364e;
	#20
	A = 16'hb75e;
	B = 16'hbb73;
	ans = 16'h36dc;
	#20
	A = 16'h39d5;
	B = 16'h3739;
	ans = 16'h3544;
	#20
	A = 16'hb0b1;
	B = 16'h2cc7;
	ans = 16'ha19a;
	#20
	A = 16'h382a;
	B = 16'h27e4;
	ans = 16'h241b;
	#20
	A = 16'hb9f5;
	B = 16'h34cd;
	ans = 16'hb326;
	#20
	A = 16'hb594;
	B = 16'h35af;
	ans = 16'hafed;
	#20
	A = 16'hb91f;
	B = 16'h32ed;
	ans = 16'hb06f;
	#20
	A = 16'h39e0;
	B = 16'h33c8;
	ans = 16'h31b7;
	#20
	A = 16'hb9c3;
	B = 16'h3421;
	ans = 16'hb1f3;
	#20
	A = 16'h3969;
	B = 16'hb3ef;
	ans = 16'hb15e;
	#20
	A = 16'h34b8;
	B = 16'hb491;
	ans = 16'had63;
	#20
	A = 16'h2003;
	B = 16'h3924;
	ans = 16'h1d28;
	#20
	A = 16'h394e;
	B = 16'hb9a2;
	ans = 16'hb778;
	#20
	A = 16'hb1e6;
	B = 16'hb726;
	ans = 16'h2d45;
	#20
	A = 16'h3a98;
	B = 16'ha68e;
	ans = 16'ha567;
	#20
	A = 16'hb909;
	B = 16'hae51;
	ans = 16'h2bf3;
	#20
	A = 16'h358e;
	B = 16'h341a;
	ans = 16'h2db2;
	#20
	A = 16'ha04e;
	B = 16'hbbee;
	ans = 16'h2044;
	#20
	A = 16'h3bc2;
	B = 16'h3b73;
	ans = 16'h3b39;
	#20
	A = 16'h358d;
	B = 16'hb952;
	ans = 16'hb362;
	#20
	A = 16'hbb95;
	B = 16'hbbe6;
	ans = 16'h3b7c;
	#20
	A = 16'h3882;
	B = 16'hbbf7;
	ans = 16'hb87d;
	#20
	A = 16'hb63d;
	B = 16'h3bee;
	ans = 16'hb62f;
	#20
	A = 16'h39f4;
	B = 16'h3830;
	ans = 16'h363b;
	#20
	A = 16'hb00f;
	B = 16'hb86e;
	ans = 16'h2c7f;
	#20
	A = 16'h3a3d;
	B = 16'h319e;
	ans = 16'h3061;
	#20
	A = 16'h3b8d;
	B = 16'h30ca;
	ans = 16'h3085;
	#20
	A = 16'hbbd5;
	B = 16'h3832;
	ans = 16'hb81b;
	#20
	A = 16'h388f;
	B = 16'h32fa;
	ans = 16'h2ff3;
	#20
	A = 16'haf39;
	B = 16'h3bdf;
	ans = 16'haf1b;
	#20
	A = 16'h2ac2;
	B = 16'h29c7;
	ans = 16'h18e1;
	#20
	A = 16'hb47a;
	B = 16'hb0c4;
	ans = 16'h2955;
	#20
	A = 16'h3a48;
	B = 16'hb637;
	ans = 16'hb4e1;
	#20
	A = 16'hbac1;
	B = 16'h35e2;
	ans = 16'hb4f7;
	#20
	A = 16'hb73d;
	B = 16'h39fb;
	ans = 16'hb569;
	#20
	A = 16'h37ae;
	B = 16'h36ea;
	ans = 16'h32a3;
	#20
	A = 16'h2cc1;
	B = 16'hb421;
	ans = 16'ha4e8;
	#20
	A = 16'hbb93;
	B = 16'h3280;
	ans = 16'hb227;
	#20
	A = 16'hbb8c;
	B = 16'hba1e;
	ans = 16'h39c5;
	#20
	A = 16'h3662;
	B = 16'hbb43;
	ans = 16'hb5cb;
	#20
	A = 16'h33d5;
	B = 16'h36ba;
	ans = 16'h2e96;
	#20
	A = 16'hb6ec;
	B = 16'ha079;
	ans = 16'h1bbd;
	#20
	A = 16'h3170;
	B = 16'hbb06;
	ans = 16'hb0c6;
	#20
	A = 16'hb56a;
	B = 16'h3bea;
	ans = 16'hb55b;
	#20
	A = 16'h3aa7;
	B = 16'h393f;
	ans = 16'h385d;
	#20
	A = 16'hb4da;
	B = 16'hb4d2;
	ans = 16'h2dd9;
	#20
	A = 16'h3302;
	B = 16'h3993;
	ans = 16'h30e2;
	#20
	A = 16'hb9a3;
	B = 16'haccd;
	ans = 16'h2ac4;
	#20
	A = 16'hb678;
	B = 16'hb16f;
	ans = 16'h2c65;
	#20
	A = 16'h3bd9;
	B = 16'h3aee;
	ans = 16'h3acc;
	#20
	A = 16'hb93f;
	B = 16'hb497;
	ans = 16'h3205;
	#20
	A = 16'hb35e;
	B = 16'hbbe4;
	ans = 16'h3344;
	#20
	A = 16'h2fd4;
	B = 16'h3892;
	ans = 16'h2c79;
	#20
	A = 16'h3823;
	B = 16'hb9de;
	ans = 16'hb611;
	#20
	A = 16'hba74;
	B = 16'h3b50;
	ans = 16'hb9e6;
	#20
	A = 16'hbbbe;
	B = 16'hb64d;
	ans = 16'h3619;
	#20
	A = 16'h365e;
	B = 16'hba81;
	ans = 16'hb52d;
	#20
	A = 16'hb7bc;
	B = 16'hb852;
	ans = 16'h342d;
	#20
	A = 16'hbbf5;
	B = 16'hafe9;
	ans = 16'h2fde;
	#20
	A = 16'h3801;
	B = 16'hafb4;
	ans = 16'habb6;
	#20
	A = 16'hb4f6;
	B = 16'h38be;
	ans = 16'hb1e2;
	#20
	A = 16'hb7d2;
	B = 16'h3583;
	ans = 16'hb163;
	#20
	A = 16'hb915;
	B = 16'hb9f2;
	ans = 16'h378e;
	#20
	A = 16'h2ec9;
	B = 16'h3a32;
	ans = 16'h2d41;
	#20
	A = 16'hba51;
	B = 16'hb861;
	ans = 16'h36ea;
	#20
	A = 16'h3a3c;
	B = 16'hb077;
	ans = 16'haef5;
	#20
	A = 16'hb80c;
	B = 16'hbbf9;
	ans = 16'h3808;
	#20
	A = 16'hbb62;
	B = 16'h3b98;
	ans = 16'hbb02;
	#20
	A = 16'hba2e;
	B = 16'hb659;
	ans = 16'h34e7;
	#20
	A = 16'hba8a;
	B = 16'h36e1;
	ans = 16'hb59f;
	#20
	A = 16'h37a4;
	B = 16'hbb11;
	ans = 16'hb6c0;
	#20
	A = 16'h3528;
	B = 16'h3a9a;
	ans = 16'h3441;
	#20
	A = 16'hb381;
	B = 16'h3719;
	ans = 16'haea8;
	#20
	A = 16'hbb35;
	B = 16'h3750;
	ans = 16'hb696;
	#20
	A = 16'hb666;
	B = 16'h34be;
	ans = 16'haf96;
	#20
	A = 16'hb589;
	B = 16'hbbbb;
	ans = 16'h3559;
	#20
	A = 16'hbb5e;
	B = 16'hb8f3;
	ans = 16'h388f;
	#20
	A = 16'h3383;
	B = 16'h36af;
	ans = 16'h2e47;
	#20
	A = 16'hb978;
	B = 16'h395b;
	ans = 16'hb752;
	#20
	A = 16'hb244;
	B = 16'h38e7;
	ans = 16'hafae;
	#20
	A = 16'hb991;
	B = 16'hba24;
	ans = 16'h3846;
	#20
	A = 16'h2fae;
	B = 16'haddc;
	ans = 16'ha1a0;
	#20
	A = 16'h3b35;
	B = 16'h3848;
	ans = 16'h37b7;
	#20
	A = 16'hb17d;
	B = 16'h3bb2;
	ans = 16'hb147;
	#20
	A = 16'hb377;
	B = 16'hba09;
	ans = 16'h31a2;
	#20
	A = 16'hba4f;
	B = 16'h2d3a;
	ans = 16'hac1f;
	#20
	A = 16'h2283;
	B = 16'hadea;
	ans = 16'h94d0;
	#20
	A = 16'h314e;
	B = 16'hbb26;
	ans = 16'hb0bd;
	#20
	A = 16'h30e2;
	B = 16'hb847;
	ans = 16'had39;
	#20
	A = 16'hb527;
	B = 16'hb06f;
	ans = 16'h29b6;
	#20
	A = 16'hb52b;
	B = 16'h38dc;
	ans = 16'hb247;
	#20
	A = 16'hb89d;
	B = 16'hbacb;
	ans = 16'h37d6;
	#20
	A = 16'h3b9f;
	B = 16'hb561;
	ans = 16'hb520;
	#20
	A = 16'hb86b;
	B = 16'h3a40;
	ans = 16'hb6e7;
	#20
	A = 16'hb981;
	B = 16'h3797;
	ans = 16'hb539;
	#20
	A = 16'ha698;
	B = 16'h394a;
	ans = 16'ha45c;
	#20
	A = 16'hb81b;
	B = 16'h3aa7;
	ans = 16'hb6d4;
	#20
	A = 16'h3628;
	B = 16'hb8fa;
	ans = 16'hb3a9;
	#20
	A = 16'hb7ad;
	B = 16'h3a08;
	ans = 16'hb5c9;
	#20
	A = 16'hb788;
	B = 16'h2eb7;
	ans = 16'haa52;
	#20
	A = 16'hb8be;
	B = 16'h394f;
	ans = 16'hb64b;
	#20
	A = 16'hba5d;
	B = 16'h3832;
	ans = 16'hb6ad;
	#20
	A = 16'h307a;
	B = 16'hb51b;
	ans = 16'ha9b7;
	#20
	A = 16'hb992;
	B = 16'h3252;
	ans = 16'hb067;
	#20
	A = 16'hb75e;
	B = 16'h2d27;
	ans = 16'ha8bf;
	#20
	A = 16'hb8ed;
	B = 16'h39f1;
	ans = 16'hb751;
	#20
	A = 16'hbab0;
	B = 16'hb52c;
	ans = 16'h3453;
	#20
	A = 16'hb825;
	B = 16'hb595;
	ans = 16'h31c9;
	#20
	A = 16'hb48b;
	B = 16'h3783;
	ans = 16'hb044;
	#20
	A = 16'hba1b;
	B = 16'h3af6;
	ans = 16'hb950;
	#20
	A = 16'h341a;
	B = 16'hb4cb;
	ans = 16'hacea;
	#20
	A = 16'hb995;
	B = 16'h345b;
	ans = 16'hb214;
	#20
	A = 16'hb934;
	B = 16'hbac2;
	ans = 16'h3865;
	#20
	A = 16'hbb5f;
	B = 16'hbb14;
	ans = 16'h3a86;
	#20
	A = 16'hb5c5;
	B = 16'hb964;
	ans = 16'h33c6;
	#20
	A = 16'haa43;
	B = 16'h39ba;
	ans = 16'ha87b;
	#20
	A = 16'hbb3d;
	B = 16'h3617;
	ans = 16'hb583;
	#20
	A = 16'hb822;
	B = 16'h3427;
	ans = 16'hb04a;
	#20
	A = 16'h3479;
	B = 16'h39d4;
	ans = 16'h3284;
	#20
	A = 16'hae04;
	B = 16'hb8d3;
	ans = 16'h2b41;
	#20
	A = 16'hb7d9;
	B = 16'h35f8;
	ans = 16'hb1db;
	#20
	A = 16'hb63e;
	B = 16'h3831;
	ans = 16'hb28a;
	#20
	A = 16'hac83;
	B = 16'hbaab;
	ans = 16'h2b85;
	#20
	A = 16'hbba2;
	B = 16'h3022;
	ans = 16'hafe3;
	#20
	A = 16'h297d;
	B = 16'h3bc7;
	ans = 16'h2956;
	#20
	A = 16'hbbf3;
	B = 16'h393e;
	ans = 16'hb935;
	#20
	A = 16'hbafa;
	B = 16'h38ba;
	ans = 16'hb81f;
	#20
	A = 16'h3b88;
	B = 16'h32a8;
	ans = 16'h3244;
	#20
	A = 16'h34e7;
	B = 16'h3660;
	ans = 16'h2fd0;
	#20
	A = 16'h3b29;
	B = 16'h393a;
	ans = 16'h38ae;
	#20
	A = 16'h369a;
	B = 16'h330e;
	ans = 16'h2dd2;
	#20
	A = 16'hb237;
	B = 16'h3b47;
	ans = 16'hb1a7;
	#20
	A = 16'hb23b;
	B = 16'h3b6b;
	ans = 16'hb1c7;
	#20
	A = 16'hbb61;
	B = 16'hb8e0;
	ans = 16'h387f;
	#20
	A = 16'hb571;
	B = 16'hb144;
	ans = 16'h2b2a;
	#20
	A = 16'h2e9c;
	B = 16'h3b42;
	ans = 16'h2dff;
	#20
	A = 16'h3bcf;
	B = 16'hb88c;
	ans = 16'hb870;
	#20
	A = 16'hb41e;
	B = 16'hb90b;
	ans = 16'h3131;
	#20
	A = 16'h37be;
	B = 16'h3be5;
	ans = 16'h37a4;
	#20
	A = 16'hb6c5;
	B = 16'h3bf8;
	ans = 16'hb6be;
	#20
	A = 16'h38c9;
	B = 16'had9f;
	ans = 16'haab9;
	#20
	A = 16'h33dc;
	B = 16'h37d7;
	ans = 16'h2fb4;
	#20
	A = 16'hb881;
	B = 16'h259b;
	ans = 16'ha250;
	#20
	A = 16'h3736;
	B = 16'hb61d;
	ans = 16'hb183;
	#20
	A = 16'h3a80;
	B = 16'hb49a;
	ans = 16'hb37a;
	#20
	A = 16'h3b04;
	B = 16'hb81a;
	ans = 16'hb732;
	#20
	A = 16'h3899;
	B = 16'hb06d;
	ans = 16'had16;
	#20
	A = 16'h2de5;
	B = 16'h3b30;
	ans = 16'h2d4c;
	#20
	A = 16'h2af8;
	B = 16'h3a20;
	ans = 16'h2956;
	#20
	A = 16'hb9e1;
	B = 16'hb983;
	ans = 16'h380d;
	#20
	A = 16'hb47e;
	B = 16'h3bf3;
	ans = 16'hb477;
	#20
	A = 16'h3a05;
	B = 16'h3a3d;
	ans = 16'h38b2;
	#20
	A = 16'h3a0d;
	B = 16'h38b4;
	ans = 16'h371d;
	#20
	A = 16'h3765;
	B = 16'hba8b;
	ans = 16'hb60c;
	#20
	A = 16'hbb45;
	B = 16'h3746;
	ans = 16'hb69c;
	#20
	A = 16'h3bda;
	B = 16'h3805;
	ans = 16'h37e4;
	#20
	A = 16'hbad5;
	B = 16'hb3b4;
	ans = 16'h3294;
	#20
	A = 16'hba41;
	B = 16'h367e;
	ans = 16'hb513;
	#20
	A = 16'hbb1e;
	B = 16'hab29;
	ans = 16'h2a5f;
	#20
	A = 16'h3b21;
	B = 16'hb5b4;
	ans = 16'hb515;
	#20
	A = 16'h3b08;
	B = 16'hbaa9;
	ans = 16'hb9db;
	#20
	A = 16'hbb1e;
	B = 16'h3b3d;
	ans = 16'hba71;
	#20
	A = 16'h3a1b;
	B = 16'h3966;
	ans = 16'h381f;
	#20
	A = 16'h3406;
	B = 16'hb719;
	ans = 16'haf24;
	#20
	A = 16'hb728;
	B = 16'h3a66;
	ans = 16'hb5b9;
	#20
	A = 16'h34cd;
	B = 16'hb86c;
	ans = 16'hb14f;
	#20
	A = 16'h39a5;
	B = 16'hb8ce;
	ans = 16'hb6c8;
	#20
	A = 16'h3bae;
	B = 16'h2d72;
	ans = 16'h2d3a;
	#20
	A = 16'h3a56;
	B = 16'hbbae;
	ans = 16'hba15;
	#20
	A = 16'h2c9a;
	B = 16'hbb1e;
	ans = 16'hac18;
	#20
	A = 16'h39ef;
	B = 16'h9c19;
	ans = 16'h9a14;
	#20
	A = 16'haf05;
	B = 16'h3b30;
	ans = 16'hae4e;
	#20
	A = 16'hbbc3;
	B = 16'h33ac;
	ans = 16'hb372;
	#20
	A = 16'h381b;
	B = 16'h3b44;
	ans = 16'h3775;
	#20
	A = 16'h3b9a;
	B = 16'hb284;
	ans = 16'hb231;
	#20
	A = 16'hb146;
	B = 16'h372a;
	ans = 16'hacb9;
	#20
	A = 16'h3276;
	B = 16'h387a;
	ans = 16'h2f3b;
	#20
	A = 16'h2f97;
	B = 16'h3a16;
	ans = 16'h2dc6;
	#20
	A = 16'hb8c4;
	B = 16'hb59c;
	ans = 16'h32af;
	#20
	A = 16'h3bd6;
	B = 16'h3b50;
	ans = 16'h3b2a;
	#20
	A = 16'hb785;
	B = 16'hb781;
	ans = 16'h330e;
	#20
	A = 16'h301b;
	B = 16'hb7a8;
	ans = 16'habdc;
	#20
	A = 16'hba15;
	B = 16'ha758;
	ans = 16'h2595;
	#20
	A = 16'hadcc;
	B = 16'hb56e;
	ans = 16'h27de;
	#20
	A = 16'hb9fb;
	B = 16'h3ae7;
	ans = 16'hb929;
	#20
	A = 16'hab52;
	B = 16'h3935;
	ans = 16'ha8c4;
	#20
	A = 16'h379a;
	B = 16'hb984;
	ans = 16'hb53e;
	#20
	A = 16'h3bfc;
	B = 16'h3aaf;
	ans = 16'h3aac;
	#20
	A = 16'hb951;
	B = 16'hb7b4;
	ans = 16'h351e;
	#20
	A = 16'h3876;
	B = 16'h3bb2;
	ans = 16'h384b;
	#20
	A = 16'h36b9;
	B = 16'hba70;
	ans = 16'hb569;
	#20
	A = 16'hb971;
	B = 16'h2f79;
	ans = 16'had15;
	#20
	A = 16'hb2c1;
	B = 16'hb6be;
	ans = 16'h2db1;
	#20
	A = 16'hab9c;
	B = 16'hbbbf;
	ans = 16'h2b5e;
	#20
	A = 16'h39d5;
	B = 16'hb7d3;
	ans = 16'hb5b4;
	#20
	A = 16'hb954;
	B = 16'hb979;
	ans = 16'h374a;
	#20
	A = 16'hba61;
	B = 16'hb0fd;
	ans = 16'h2ff4;
	#20
	A = 16'hb981;
	B = 16'h3b98;
	ans = 16'hb939;
	#20
	A = 16'h3185;
	B = 16'h3399;
	ans = 16'h293e;
	#20
	A = 16'h3821;
	B = 16'h3725;
	ans = 16'h3360;
	#20
	A = 16'h379f;
	B = 16'hb585;
	ans = 16'hb142;
	#20
	A = 16'hb820;
	B = 16'hb997;
	ans = 16'h35c4;
	#20
	A = 16'hb5bd;
	B = 16'hb79d;
	ans = 16'h3176;
	#20
	A = 16'hb9a7;
	B = 16'h2f43;
	ans = 16'had21;
	#20
	A = 16'haf6c;
	B = 16'hba56;
	ans = 16'h2de1;
	#20
	A = 16'hb847;
	B = 16'h3854;
	ans = 16'hb4a1;
	#20
	A = 16'hb246;
	B = 16'h3b14;
	ans = 16'hb18d;
	#20
	A = 16'h38fa;
	B = 16'h388d;
	ans = 16'h35a9;
	#20
	A = 16'hb166;
	B = 16'hba02;
	ans = 16'h300e;
	#20
	A = 16'hbbd2;
	B = 16'hb5e7;
	ans = 16'h35c5;
	#20
	A = 16'hb606;
	B = 16'h2e6f;
	ans = 16'ha8d8;
	#20
	A = 16'hb868;
	B = 16'hb9c8;
	ans = 16'h365e;
	#20
	A = 16'h3b82;
	B = 16'h3255;
	ans = 16'h31f1;
	#20
	A = 16'hb5a6;
	B = 16'hbbae;
	ans = 16'h356c;
	#20
	A = 16'hb866;
	B = 16'hb9a0;
	ans = 16'h362f;
	#20
	A = 16'hbbaa;
	B = 16'hb91f;
	ans = 16'h38e8;
	#20
	A = 16'hb025;
	B = 16'h38d0;
	ans = 16'hacfd;
	#20
	A = 16'ha8ae;
	B = 16'h3a11;
	ans = 16'ha719;
	#20
	A = 16'h397b;
	B = 16'hbbf3;
	ans = 16'hb972;
	#20
	A = 16'h3bdf;
	B = 16'hbaf4;
	ans = 16'hbad7;
	#20
	A = 16'hb69d;
	B = 16'hb45a;
	ans = 16'h2f32;
	#20
	A = 16'h36f5;
	B = 16'hb38f;
	ans = 16'hae93;
	#20
	A = 16'h3ad9;
	B = 16'hba5d;
	ans = 16'hb972;
	#20
	A = 16'h3603;
	B = 16'hb8bb;
	ans = 16'hb31c;
	#20
	A = 16'hb8ba;
	B = 16'h34cb;
	ans = 16'hb1aa;
	#20
	A = 16'h3811;
	B = 16'hb86b;
	ans = 16'hb47e;
	#20
	A = 16'hb224;
	B = 16'hb651;
	ans = 16'h2cd9;
	#20
	A = 16'h28c5;
	B = 16'hb7d7;
	ans = 16'ha4ad;
	#20
	A = 16'hb509;
	B = 16'hba70;
	ans = 16'h340d;
	#20
	A = 16'haee7;
	B = 16'h3925;
	ans = 16'hac70;
	#20
	A = 16'hb76e;
	B = 16'h3946;
	ans = 16'hb4e6;
	#20
	A = 16'h3b4f;
	B = 16'ha29f;
	ans = 16'ha20d;
	#20
	A = 16'h3bd4;
	B = 16'hb079;
	ans = 16'hb060;
	#20
	A = 16'hb7b8;
	B = 16'hb6de;
	ans = 16'h32a0;
	#20
	A = 16'hb63a;
	B = 16'h3a79;
	ans = 16'hb50a;
	#20
	A = 16'hba5e;
	B = 16'hbac1;
	ans = 16'h3960;
	#20
	A = 16'hb50b;
	B = 16'hb7ad;
	ans = 16'h30d7;
	#20
	A = 16'h31d0;
	B = 16'hb643;
	ans = 16'hac8d;
	#20
	A = 16'h3b0f;
	B = 16'hb58e;
	ans = 16'hb4e7;
	#20
	A = 16'hb8ee;
	B = 16'hb7fa;
	ans = 16'h34ea;
	#20
	A = 16'h38d9;
	B = 16'h3711;
	ans = 16'h3448;
	#20
	A = 16'h3723;
	B = 16'h3450;
	ans = 16'h2fb2;
	#20
	A = 16'hbbe4;
	B = 16'h34ff;
	ans = 16'hb4ee;
	#20
	A = 16'h30ec;
	B = 16'hb1bb;
	ans = 16'ha70d;
	#20
	A = 16'h3a12;
	B = 16'hbb4c;
	ans = 16'hb989;
	#20
	A = 16'h3623;
	B = 16'hae1e;
	ans = 16'ha8b1;
	#20
	A = 16'hb7ed;
	B = 16'h3a7c;
	ans = 16'hb66d;
	#20
	A = 16'h389b;
	B = 16'hb214;
	ans = 16'haf00;
	#20
	A = 16'hbba3;
	B = 16'h38ed;
	ans = 16'hb8b4;
	#20
	A = 16'hb93d;
	B = 16'hb7e2;
	ans = 16'h3529;
	#20
	A = 16'hb9f3;
	B = 16'h343a;
	ans = 16'hb249;
	#20
	A = 16'h3b93;
	B = 16'hb36c;
	ans = 16'hb307;
	#20
	A = 16'h3a58;
	B = 16'h345a;
	ans = 16'h32e7;
	#20
	A = 16'hbb4d;
	B = 16'hba6a;
	ans = 16'h39da;
	#20
	A = 16'hb556;
	B = 16'h3b59;
	ans = 16'hb4e7;
	#20
	A = 16'hb985;
	B = 16'h3928;
	ans = 16'hb71d;
	#20
	A = 16'h31b6;
	B = 16'h21cf;
	ans = 16'h1826;
	#20
	A = 16'h38a6;
	B = 16'hb98c;
	ans = 16'hb672;
	#20
	A = 16'h25ac;
	B = 16'hba05;
	ans = 16'ha445;
	#20
	A = 16'h3a2b;
	B = 16'hb55d;
	ans = 16'hb423;
	#20
	A = 16'h3b0e;
	B = 16'hb932;
	ans = 16'hb895;
	#20
	A = 16'hb785;
	B = 16'hba8b;
	ans = 16'h3626;
	#20
	A = 16'h2610;
	B = 16'h2282;
	ans = 16'hcef;
	#20
	A = 16'haabf;
	B = 16'hb88d;
	ans = 16'h27ad;
	#20
	A = 16'hb2f2;
	B = 16'hb986;
	ans = 16'h30cc;
	#20
	A = 16'hb374;
	B = 16'h2a12;
	ans = 16'ha1a8;
	#20
	A = 16'hb9ed;
	B = 16'ha09b;
	ans = 16'h1ed3;
	#20
	A = 16'h321d;
	B = 16'h34d2;
	ans = 16'h2b5e;
	#20
	A = 16'h3b15;
	B = 16'hb880;
	ans = 16'hb7f8;
	#20
	A = 16'hba65;
	B = 16'hbbd3;
	ans = 16'h3a41;
	#20
	A = 16'hb4ad;
	B = 16'hb063;
	ans = 16'h2921;
	#20
	A = 16'h3794;
	B = 16'h39ee;
	ans = 16'h359e;
	#20
	A = 16'hbb8e;
	B = 16'h2c2f;
	ans = 16'habe7;
	#20
	A = 16'h30f2;
	B = 16'h372c;
	ans = 16'h2c6f;
	#20
	A = 16'h3a3b;
	B = 16'h3ad8;
	ans = 16'h3954;
	#20
	A = 16'h3b25;
	B = 16'hb24b;
	ans = 16'hb19f;
	#20
	A = 16'h34af;
	B = 16'hbb4e;
	ans = 16'hb447;
	#20
	A = 16'h35e7;
	B = 16'had9d;
	ans = 16'ha824;
	#20
	A = 16'h31f6;
	B = 16'hb173;
	ans = 16'ha80f;
	#20
	A = 16'hba4e;
	B = 16'h3594;
	ans = 16'hb465;
	#20
	A = 16'hb678;
	B = 16'hb86c;
	ans = 16'h3327;
	#20
	A = 16'h355e;
	B = 16'h3504;
	ans = 16'h2ebb;
	#20
	A = 16'hb0a6;
	B = 16'h39bc;
	ans = 16'haeaa;
	#20
	A = 16'had38;
	B = 16'h3b0e;
	ans = 16'hac9a;
	#20
	A = 16'hb8be;
	B = 16'h34de;
	ans = 16'hb1c5;
	#20
	A = 16'hb727;
	B = 16'hb879;
	ans = 16'h33ff;
	#20
	A = 16'hb5e1;
	B = 16'hb23a;
	ans = 16'h2c93;
	#20
	A = 16'hb68d;
	B = 16'hb94c;
	ans = 16'h3456;
	#20
	A = 16'hb953;
	B = 16'h2c48;
	ans = 16'ha9b3;
	#20
	A = 16'h3999;
	B = 16'hb1a4;
	ans = 16'hafe5;
	#20
	A = 16'h9e9b;
	B = 16'hb484;
	ans = 16'h1775;
	#20
	A = 16'habe6;
	B = 16'h39b5;
	ans = 16'ha9a2;
	#20
	A = 16'h2f3a;
	B = 16'hb8a0;
	ans = 16'hac2e;
	#20
	A = 16'ha4c4;
	B = 16'hba2e;
	ans = 16'h235d;
	#20
	A = 16'h38ed;
	B = 16'h2c8c;
	ans = 16'h2999;
	#20
	A = 16'h9918;
	B = 16'hb189;
	ans = 16'hf0c;
	#20
	A = 16'h3993;
	B = 16'hbb76;
	ans = 16'hb933;
	#20
	A = 16'hb097;
	B = 16'h30e4;
	ans = 16'ha59d;
	#20
	A = 16'h2cf5;
	B = 16'h39ae;
	ans = 16'h2b0a;
	#20
	A = 16'h3ac7;
	B = 16'hb4ef;
	ans = 16'hb42e;
	#20
	A = 16'hadd7;
	B = 16'hbae0;
	ans = 16'h2d05;
	#20
	A = 16'h3687;
	B = 16'h380f;
	ans = 16'h329f;
	#20
	A = 16'h3af4;
	B = 16'hb3d0;
	ans = 16'hb2ca;
	#20
	A = 16'h334b;
	B = 16'h3b7a;
	ans = 16'h32d1;
	#20
	A = 16'h396e;
	B = 16'h3659;
	ans = 16'h344f;
	#20
	A = 16'h361c;
	B = 16'hb1c0;
	ans = 16'hac64;
	#20
	A = 16'h38ec;
	B = 16'hbbc6;
	ans = 16'hb8c8;
	#20
	A = 16'hb52c;
	B = 16'h396c;
	ans = 16'hb303;
	#20
	A = 16'hb61f;
	B = 16'hb815;
	ans = 16'h323f;
	#20
	A = 16'h344e;
	B = 16'h3076;
	ans = 16'h28cd;
	#20
	A = 16'hb946;
	B = 16'h35b2;
	ans = 16'hb382;
	#20
	A = 16'h349b;
	B = 16'hb8b5;
	ans = 16'hb16b;
	#20
	A = 16'hb60c;
	B = 16'h38a2;
	ans = 16'hb301;
	#20
	A = 16'hb9c8;
	B = 16'hb9e7;
	ans = 16'h3844;
	#20
	A = 16'hb46f;
	B = 16'hba69;
	ans = 16'h331b;
	#20
	A = 16'hb51e;
	B = 16'hb395;
	ans = 16'h2cda;
	#20
	A = 16'h3592;
	B = 16'hb899;
	ans = 16'hb267;
	#20
	A = 16'hb826;
	B = 16'h3ab8;
	ans = 16'hb6f8;
	#20
	A = 16'h3894;
	B = 16'h2f9b;
	ans = 16'h2c5a;
	#20
	A = 16'h396f;
	B = 16'hb30b;
	ans = 16'hb0c9;
	#20
	A = 16'h38bd;
	B = 16'hb8d3;
	ans = 16'hb5b7;
	#20
	A = 16'hb898;
	B = 16'h3431;
	ans = 16'hb0d0;
	#20
	A = 16'hbaff;
	B = 16'hb95c;
	ans = 16'h38b0;
	#20
	A = 16'hae7c;
	B = 16'h3922;
	ans = 16'hac29;
	#20
	A = 16'hb09e;
	B = 16'h35b2;
	ans = 16'haa93;
	#20
	A = 16'h384a;
	B = 16'h35ba;
	ans = 16'h3224;
	#20
	A = 16'hb6d3;
	B = 16'h3a8c;
	ans = 16'hb596;
	#20
	A = 16'h378d;
	B = 16'ha8f9;
	ans = 16'ha4b2;
	#20
	A = 16'h37dc;
	B = 16'hb70c;
	ans = 16'hb2ec;
	#20
	A = 16'h259a;
	B = 16'h2b65;
	ans = 16'h152d;
	#20
	A = 16'ha731;
	B = 16'h3801;
	ans = 16'ha333;
	#20
	A = 16'h388e;
	B = 16'h38e0;
	ans = 16'h358d;
	#20
	A = 16'h3a56;
	B = 16'hb900;
	ans = 16'hb7ec;
	#20
	A = 16'hb72d;
	B = 16'hb618;
	ans = 16'h3177;
	#20
	A = 16'h3614;
	B = 16'hbbdb;
	ans = 16'hb5f8;
	#20
	A = 16'h38be;
	B = 16'h301b;
	ans = 16'h2cde;
	#20
	A = 16'h34a0;
	B = 16'hb846;
	ans = 16'hb0f1;
	#20
	A = 16'h36cc;
	B = 16'h1945;
	ans = 16'h147a;
	#20
	A = 16'h38b7;
	B = 16'hb84e;
	ans = 16'hb513;
	#20
	A = 16'ha8c2;
	B = 16'h3964;
	ans = 16'ha669;
	#20
	A = 16'h3503;
	B = 16'hb253;
	ans = 16'habec;
	#20
	A = 16'hb8c9;
	B = 16'hb915;
	ans = 16'h3614;
	#20
	A = 16'hb9fc;
	B = 16'h3779;
	ans = 16'hb597;
	#20
	A = 16'h39df;
	B = 16'h386c;
	ans = 16'h367e;
	#20
	A = 16'hac75;
	B = 16'h3bb2;
	ans = 16'hac4a;
	#20
	A = 16'hba71;
	B = 16'h3148;
	ans = 16'hb041;
	#20
	A = 16'h363e;
	B = 16'hb76f;
	ans = 16'hb1cd;
	#20
	A = 16'h3b55;
	B = 16'h2c00;
	ans = 16'h2b55;
	#20
	A = 16'h37c7;
	B = 16'hb164;
	ans = 16'had3e;
	#20
	A = 16'h2e4a;
	B = 16'hb583;
	ans = 16'ha855;
	#20
	A = 16'h3a60;
	B = 16'hb4ed;
	ans = 16'hb3da;
	#20
	A = 16'hbaf6;
	B = 16'h37c7;
	ans = 16'hb6c4;
	#20
	A = 16'h353e;
	B = 16'h3570;
	ans = 16'h2f20;
	#20
	A = 16'hb515;
	B = 16'hb970;
	ans = 16'h32e9;
	#20
	A = 16'h366f;
	B = 16'h3ba4;
	ans = 16'h3625;
	#20
	A = 16'hb123;
	B = 16'h3920;
	ans = 16'hae95;
	#20
	A = 16'hb8e7;
	B = 16'h3bc3;
	ans = 16'hb8c2;
	#20
	A = 16'h2cb8;
	B = 16'hb14f;
	ans = 16'ha243;
	#20
	A = 16'hbbc6;
	B = 16'hb9c6;
	ans = 16'h399c;
	#20
	A = 16'hba57;
	B = 16'hbafd;
	ans = 16'h398a;
	#20
	A = 16'h36e6;
	B = 16'h2ba2;
	ans = 16'h2695;
	#20
	A = 16'hb379;
	B = 16'h3a47;
	ans = 16'hb1dd;
	#20
	A = 16'h385c;
	B = 16'h2f85;
	ans = 16'h2c19;
	#20
	A = 16'h3bf0;
	B = 16'h3a26;
	ans = 16'h3a1a;
	#20
	A = 16'hbba7;
	B = 16'hbba5;
	ans = 16'h3b50;
	#20
	A = 16'h39eb;
	B = 16'hadd5;
	ans = 16'hac50;
	#20
	A = 16'h3a79;
	B = 16'hb1e6;
	ans = 16'hb0c6;
	#20
	A = 16'h3537;
	B = 16'hba85;
	ans = 16'hb440;
	#20
	A = 16'h3a93;
	B = 16'hb90a;
	ans = 16'hb824;
	#20
	A = 16'h3aaa;
	B = 16'had96;
	ans = 16'haca7;
	#20
	A = 16'h3b68;
	B = 16'hbad1;
	ans = 16'hba4f;
	#20
	A = 16'h370f;
	B = 16'h384b;
	ans = 16'h3393;
	#20
	A = 16'hb7b2;
	B = 16'hb688;
	ans = 16'h3248;
	#20
	A = 16'hb60d;
	B = 16'h3141;
	ans = 16'habf3;
	#20
	A = 16'h2fd2;
	B = 16'hbb45;
	ans = 16'haf1b;
	#20
	A = 16'h382f;
	B = 16'h309b;
	ans = 16'h2cd1;
	#20
	A = 16'hb9c7;
	B = 16'h3adb;
	ans = 16'hb8f3;
	#20
	A = 16'hb84a;
	B = 16'hb9a9;
	ans = 16'h3612;
	#20
	A = 16'h342e;
	B = 16'h28d0;
	ans = 16'h2107;
	#20
	A = 16'h38a0;
	B = 16'hb8dd;
	ans = 16'hb5a0;
	#20
	A = 16'h398c;
	B = 16'hb6d4;
	ans = 16'hb4bc;
	#20
	A = 16'hb8a8;
	B = 16'hbbed;
	ans = 16'h389d;
	#20
	A = 16'hb414;
	B = 16'hb855;
	ans = 16'h306b;
	#20
	A = 16'h30ef;
	B = 16'hb830;
	ans = 16'had2a;
	#20
	A = 16'hbb93;
	B = 16'hb868;
	ans = 16'h382c;
	#20
	A = 16'haf3a;
	B = 16'h34c4;
	ans = 16'ha84e;
	#20
	A = 16'hb825;
	B = 16'h390d;
	ans = 16'hb53c;
	#20
	A = 16'hba9c;
	B = 16'h3852;
	ans = 16'hb723;
	#20
	A = 16'h3592;
	B = 16'hbaf4;
	ans = 16'hb4d7;
	#20
	A = 16'hb694;
	B = 16'h39b2;
	ans = 16'hb4af;
	#20
	A = 16'hb555;
	B = 16'hbae5;
	ans = 16'h3498;
	#20
	A = 16'h3562;
	B = 16'h2887;
	ans = 16'h2218;
	#20
	A = 16'hb61a;
	B = 16'hbbdb;
	ans = 16'h35fe;
	#20
	A = 16'h3beb;
	B = 16'hb7de;
	ans = 16'hb7c9;
	#20
	A = 16'hb993;
	B = 16'hb8c5;
	ans = 16'h36a6;
	#20
	A = 16'h3b83;
	B = 16'h3668;
	ans = 16'h3604;
	#20
	A = 16'h388e;
	B = 16'h37c6;
	ans = 16'h346d;
	#20
	A = 16'h3181;
	B = 16'h2b47;
	ans = 16'h2102;
	#20
	A = 16'hba0f;
	B = 16'hb8d9;
	ans = 16'h3758;
	#20
	A = 16'hb990;
	B = 16'h2e44;
	ans = 16'hac5b;
	#20
	A = 16'hb917;
	B = 16'hbad6;
	ans = 16'h3859;
	#20
	A = 16'hb997;
	B = 16'hab24;
	ans = 16'h28fd;
	#20
	A = 16'h3b2a;
	B = 16'h3a93;
	ans = 16'h39e3;
	#20
	A = 16'hb8da;
	B = 16'hbb62;
	ans = 16'h387a;
	#20
	A = 16'h3684;
	B = 16'hbbaa;
	ans = 16'hb63e;
	#20
	A = 16'hb200;
	B = 16'hba30;
	ans = 16'h30a4;
	#20
	A = 16'ha6e0;
	B = 16'hb8b3;
	ans = 16'h240a;
	#20
	A = 16'h395b;
	B = 16'hada9;
	ans = 16'hab94;
	#20
	A = 16'h3988;
	B = 16'h38c2;
	ans = 16'h3694;
	#20
	A = 16'hb99c;
	B = 16'h3bdd;
	ans = 16'hb983;
	#20
	A = 16'hb317;
	B = 16'hb40c;
	ans = 16'h2b2c;
	#20
	A = 16'hb948;
	B = 16'h39c3;
	ans = 16'hb79b;
	#20
	A = 16'hba35;
	B = 16'hb560;
	ans = 16'h342c;
	#20
	A = 16'h3af4;
	B = 16'h361f;
	ans = 16'h3552;
	#20
	A = 16'hbb50;
	B = 16'hb93d;
	ans = 16'h38ca;
	#20
	A = 16'hbbf2;
	B = 16'h3680;
	ans = 16'hb675;
	#20
	A = 16'hbb81;
	B = 16'h3b6b;
	ans = 16'hbaf5;
	#20
	A = 16'hb87e;
	B = 16'h35d1;
	ans = 16'hb288;
	#20
	A = 16'hbb15;
	B = 16'hb02a;
	ans = 16'h2f5f;
	#20
	A = 16'hb022;
	B = 16'haa0f;
	ans = 16'h1e42;
	#20
	A = 16'h3200;
	B = 16'h3a1b;
	ans = 16'h3094;
	#20
	A = 16'hbb6e;
	B = 16'hb59e;
	ans = 16'h3537;
	#20
	A = 16'h392a;
	B = 16'h38ce;
	ans = 16'h3634;
	#20
	A = 16'hbac5;
	B = 16'h3b3d;
	ans = 16'hba20;
	#20
	A = 16'hb34a;
	B = 16'h2da4;
	ans = 16'ha524;
	#20
	A = 16'hb2a1;
	B = 16'haf63;
	ans = 16'h261f;
	#20
	A = 16'hb50b;
	B = 16'h3849;
	ans = 16'hb167;
	#20
	A = 16'h3824;
	B = 16'h3969;
	ans = 16'h359a;
	#20
	A = 16'h30b1;
	B = 16'hb9b5;
	ans = 16'haeb2;
	#20
	A = 16'h382c;
	B = 16'hbbbc;
	ans = 16'hb809;
	#20
	A = 16'h319e;
	B = 16'h3b2e;
	ans = 16'h310b;
	#20
	A = 16'hbacf;
	B = 16'h393b;
	ans = 16'hb874;
	#20
	A = 16'hba3f;
	B = 16'hb0b5;
	ans = 16'h2f5a;
	#20
	A = 16'h3b5b;
	B = 16'h3b19;
	ans = 16'h3a87;
	#20
	A = 16'hb8af;
	B = 16'hb8c8;
	ans = 16'h3599;
	#20
	A = 16'h387e;
	B = 16'hb868;
	ans = 16'hb4f3;
	#20
	A = 16'hb215;
	B = 16'hb635;
	ans = 16'h2cb8;
	#20
	A = 16'hb407;
	B = 16'haff5;
	ans = 16'h2801;
	#20
	A = 16'hb1a9;
	B = 16'hb52a;
	ans = 16'h2b4f;
	#20
	A = 16'ha4d9;
	B = 16'hb504;
	ans = 16'h1e14;
	#20
	A = 16'h358e;
	B = 16'hb773;
	ans = 16'hb12c;
	#20
	A = 16'hb95a;
	B = 16'h3b6a;
	ans = 16'hb8f6;
	#20
	A = 16'h37b4;
	B = 16'hb344;
	ans = 16'haeff;
	#20
	A = 16'h2da4;
	B = 16'h3a0c;
	ans = 16'h2c43;
	#20
	A = 16'h3aa4;
	B = 16'hb9c7;
	ans = 16'hb8cc;
	#20
	A = 16'hb6fb;
	B = 16'hb8b8;
	ans = 16'h341e;
	#20
	A = 16'h351c;
	B = 16'hbb2c;
	ans = 16'hb495;
	#20
	A = 16'h34da;
	B = 16'h3bba;
	ans = 16'h34b0;
	#20
	A = 16'hbbf8;
	B = 16'had9d;
	ans = 16'h2d97;
	#20
	A = 16'h386f;
	B = 16'hb432;
	ans = 16'hb0a6;
	#20
	A = 16'h3894;
	B = 16'haf99;
	ans = 16'hac59;
	#20
	A = 16'h3929;
	B = 16'h39e3;
	ans = 16'h3798;
	#20
	A = 16'h3017;
	B = 16'h3a26;
	ans = 16'h2e49;
	#20
	A = 16'h3ab8;
	B = 16'h3755;
	ans = 16'h3628;
	#20
	A = 16'h3b1c;
	B = 16'hb8fa;
	ans = 16'hb86c;
	#20
	A = 16'h3ad2;
	B = 16'hb8f5;
	ans = 16'hb83a;
	#20
	A = 16'h383b;
	B = 16'h371a;
	ans = 16'h3383;
	#20
	A = 16'hba8f;
	B = 16'hb637;
	ans = 16'h3518;
	#20
	A = 16'hbb40;
	B = 16'hb496;
	ans = 16'h3428;
	#20
	A = 16'h15ed;
	B = 16'hb6e9;
	ans = 16'h911e;
	#20
	A = 16'h396d;
	B = 16'hb051;
	ans = 16'haddb;
	#20
	A = 16'ha905;
	B = 16'h2c4e;
	ans = 16'h9967;
	#20
	A = 16'h3018;
	B = 16'h3bd2;
	ans = 16'h3000;
	#20
	A = 16'h39db;
	B = 16'h3827;
	ans = 16'h3614;
	#20
	A = 16'h399c;
	B = 16'h35f4;
	ans = 16'h342d;
	#20
	A = 16'h38d5;
	B = 16'h3ad3;
	ans = 16'h381f;
	#20
	A = 16'h2e39;
	B = 16'hb855;
	ans = 16'haabd;
	#20
	A = 16'h350b;
	B = 16'hbb21;
	ans = 16'hb47e;
	#20
	A = 16'h3b87;
	B = 16'h33c7;
	ans = 16'h3351;
	#20
	A = 16'h343f;
	B = 16'hb42c;
	ans = 16'hac6e;
	#20
	A = 16'hb7af;
	B = 16'h388e;
	ans = 16'hb460;
	#20
	A = 16'hba1d;
	B = 16'hb726;
	ans = 16'h3576;
	#20
	A = 16'hb73f;
	B = 16'h39ed;
	ans = 16'hb55e;
	#20
	A = 16'hb778;
	B = 16'h3a69;
	ans = 16'hb5fc;
	#20
	A = 16'h33c7;
	B = 16'hb8f0;
	ans = 16'hb0cd;
	#20
	A = 16'h3853;
	B = 16'h30a8;
	ans = 16'h2d09;
	#20
	A = 16'haaa1;
	B = 16'h35b8;
	ans = 16'ha4bd;
	#20
	A = 16'hb59f;
	B = 16'hb8e2;
	ans = 16'h32dd;
	#20
	A = 16'h346c;
	B = 16'h2ec0;
	ans = 16'h2776;
	#20
	A = 16'h2f97;
	B = 16'hbac4;
	ans = 16'hae6b;
	#20
	A = 16'hb69a;
	B = 16'hbaec;
	ans = 16'h35b6;
	#20
	A = 16'hb4ec;
	B = 16'h3b49;
	ans = 16'hb47b;
	#20
	A = 16'hb8ee;
	B = 16'hb836;
	ans = 16'h3531;
	#20
	A = 16'hb7f4;
	B = 16'h3862;
	ans = 16'hb45b;
	#20
	A = 16'h3609;
	B = 16'h3727;
	ans = 16'h3165;
	#20
	A = 16'h3248;
	B = 16'h3b09;
	ans = 16'h3186;
	#20
	A = 16'h3bb0;
	B = 16'h2531;
	ans = 16'h24fd;
	#20
	A = 16'h3a4a;
	B = 16'h225b;
	ans = 16'h20ff;
	#20
	A = 16'hba79;
	B = 16'h38a0;
	ans = 16'hb77c;
	#20
	A = 16'h360a;
	B = 16'h3619;
	ans = 16'h309a;
	#20
	A = 16'hbaad;
	B = 16'ha6e2;
	ans = 16'h25be;
	#20
	A = 16'hba20;
	B = 16'hb66d;
	ans = 16'h34eb;
	#20
	A = 16'hb507;
	B = 16'h388d;
	ans = 16'hb1b8;
	#20
	A = 16'h3414;
	B = 16'h38ae;
	ans = 16'h30c5;
	#20
	A = 16'h3a01;
	B = 16'hb7a8;
	ans = 16'hb5bf;
	#20
	A = 16'haf2a;
	B = 16'hb54e;
	ans = 16'h28c0;
	#20
	A = 16'hb23b;
	B = 16'hbb85;
	ans = 16'h31db;
	#20
	A = 16'hb74d;
	B = 16'hb9f0;
	ans = 16'h356b;
	#20
	A = 16'h36fb;
	B = 16'h3968;
	ans = 16'h34b8;
	#20
	A = 16'h380c;
	B = 16'h3439;
	ans = 16'h3046;
	#20
	A = 16'h3596;
	B = 16'h342a;
	ans = 16'h2dd1;
	#20
	A = 16'h3bfa;
	B = 16'h3b6f;
	ans = 16'h3b69;
	#20
	A = 16'h3a19;
	B = 16'hb5b9;
	ans = 16'hb45d;
	#20
	A = 16'ha008;
	B = 16'h3401;
	ans = 16'h9809;
	#20
	A = 16'hb6a0;
	B = 16'hbb41;
	ans = 16'h3602;
	#20
	A = 16'hb9e6;
	B = 16'hb22d;
	ans = 16'h308e;
	#20
	A = 16'h3bf7;
	B = 16'hb837;
	ans = 16'hb832;
	#20
	A = 16'h3a20;
	B = 16'hbbc5;
	ans = 16'hb9f3;
	#20
	A = 16'h3656;
	B = 16'h3a83;
	ans = 16'h3528;
	#20
	A = 16'h3a73;
	B = 16'h34e6;
	ans = 16'h33e6;
	#20
	A = 16'h3bcc;
	B = 16'h3afe;
	ans = 16'h3ad1;
	#20
	A = 16'h34ff;
	B = 16'h22cf;
	ans = 16'h1c41;
	#20
	A = 16'h3b23;
	B = 16'hb754;
	ans = 16'hb68a;
	#20
	A = 16'hb265;
	B = 16'hbad5;
	ans = 16'h3176;
	#20
	A = 16'hb852;
	B = 16'hbbe5;
	ans = 16'h3843;
	#20
	A = 16'hbac0;
	B = 16'h3784;
	ans = 16'hb657;
	#20
	A = 16'h38f5;
	B = 16'h3448;
	ans = 16'h314e;
	#20
	A = 16'hbbfa;
	B = 16'hab63;
	ans = 16'h2b5d;
	#20
	A = 16'hb95d;
	B = 16'h392c;
	ans = 16'hb6ef;
	#20
	A = 16'h3862;
	B = 16'h387d;
	ans = 16'h34eb;
	#20
	A = 16'hb81d;
	B = 16'h3996;
	ans = 16'hb5be;
	#20
	A = 16'hb73f;
	B = 16'hb8d0;
	ans = 16'h345c;
	#20
	A = 16'h3be1;
	B = 16'hbb6f;
	ans = 16'hbb52;
	#20
	A = 16'h31f0;
	B = 16'hb776;
	ans = 16'had8a;
	#20
	A = 16'hb1ee;
	B = 16'hb5ef;
	ans = 16'h2c66;
	#20
	A = 16'h339f;
	B = 16'h368b;
	ans = 16'h2e3c;
	#20
	A = 16'h3bef;
	B = 16'h3525;
	ans = 16'h351a;
	#20
	A = 16'hb661;
	B = 16'hbbc1;
	ans = 16'h362f;
	#20
	A = 16'h3a4d;
	B = 16'hb928;
	ans = 16'hb810;
	#20
	A = 16'h3745;
	B = 16'hbac6;
	ans = 16'hb628;
	#20
	A = 16'hb902;
	B = 16'h3a1c;
	ans = 16'hb7a6;
	#20
	A = 16'hb47c;
	B = 16'h3ac4;
	ans = 16'hb396;
	#20
	A = 16'h39a9;
	B = 16'h31ed;
	ans = 16'h3031;
	#20
	A = 16'hb9c2;
	B = 16'h3931;
	ans = 16'hb779;
	#20
	A = 16'hb891;
	B = 16'h3821;
	ans = 16'hb4b7;
	#20
	A = 16'hb167;
	B = 16'hbbb6;
	ans = 16'h3135;
	#20
	A = 16'hb878;
	B = 16'hb46d;
	ans = 16'h30f2;
	#20
	A = 16'hba8d;
	B = 16'h38cd;
	ans = 16'hb7dd;
	#20
	A = 16'h39e3;
	B = 16'h3ba9;
	ans = 16'h39a3;
	#20
	A = 16'h3304;
	B = 16'h3639;
	ans = 16'h2d75;
	#20
	A = 16'hb6ff;
	B = 16'h385a;
	ans = 16'hb39c;
	#20
	A = 16'h3ad2;
	B = 16'h350a;
	ans = 16'h344c;
	#20
	A = 16'h2e9c;
	B = 16'h279b;
	ans = 16'h1a49;
	#20
	A = 16'h35af;
	B = 16'h2bc3;
	ans = 16'h2584;
	#20
	A = 16'h3ba9;
	B = 16'hb98a;
	ans = 16'hb94e;
	#20
	A = 16'h3bdf;
	B = 16'hba9a;
	ans = 16'hba7f;
	#20
	A = 16'ha8c4;
	B = 16'h3634;
	ans = 16'ha364;
	#20
	A = 16'hb5fe;
	B = 16'h3b5a;
	ans = 16'hb582;
	#20
	A = 16'h3954;
	B = 16'h3614;
	ans = 16'h340c;
	#20
	A = 16'hb250;
	B = 16'h3ae2;
	ans = 16'hb16e;
	#20
	A = 16'hb9ba;
	B = 16'h2eab;
	ans = 16'hacc6;
	#20
	A = 16'hb9e2;
	B = 16'hb114;
	ans = 16'h2f78;
	#20
	A = 16'h36ce;
	B = 16'hb91c;
	ans = 16'hb459;
	#20
	A = 16'h38d8;
	B = 16'hb88d;
	ans = 16'hb583;
	#20
	A = 16'hbb0c;
	B = 16'h3bd8;
	ans = 16'hbae9;
	#20
	A = 16'hb94b;
	B = 16'h323f;
	ans = 16'hb022;
	#20
	A = 16'h37b6;
	B = 16'hb85d;
	ans = 16'hb435;
	#20
	A = 16'hbb82;
	B = 16'h38f1;
	ans = 16'hb8a3;
	#20
	A = 16'hbafb;
	B = 16'h3b06;
	ans = 16'hba21;
	#20
	A = 16'hba78;
	B = 16'h331a;
	ans = 16'hb1be;
	#20
	A = 16'hb9b7;
	B = 16'h3707;
	ans = 16'hb505;
	#20
	A = 16'h30d7;
	B = 16'h31f2;
	ans = 16'h2732;
	#20
	A = 16'hb57e;
	B = 16'hbab8;
	ans = 16'h349d;
	#20
	A = 16'hb936;
	B = 16'hb898;
	ans = 16'h35fc;
	#20
	A = 16'hb7f4;
	B = 16'hb7ea;
	ans = 16'h33de;
	#20
	A = 16'h3065;
	B = 16'hb6a3;
	ans = 16'hab4b;
	#20
	A = 16'hb99a;
	B = 16'h3bbf;
	ans = 16'hb96c;
	#20
	A = 16'h2f81;
	B = 16'hbb37;
	ans = 16'haec4;
	#20
	A = 16'had8f;
	B = 16'hb73d;
	ans = 16'h2908;
	#20
	A = 16'h3594;
	B = 16'hb4fb;
	ans = 16'haef2;
	#20
	A = 16'h3bf2;
	B = 16'hbaf9;
	ans = 16'hbaed;
	#20
	A = 16'h364a;
	B = 16'hae67;
	ans = 16'ha908;
	#20
	A = 16'h23ba;
	B = 16'hba91;
	ans = 16'ha258;
	#20
	A = 16'h3b9e;
	B = 16'hbb21;
	ans = 16'hbaca;
	#20
	A = 16'h3043;
	B = 16'hb1f6;
	ans = 16'ha65a;
	#20
	A = 16'h38a7;
	B = 16'hb3dd;
	ans = 16'hb093;
	#20
	A = 16'hbbe0;
	B = 16'h2f5b;
	ans = 16'haf3e;
	#20
	A = 16'hbadb;
	B = 16'h3988;
	ans = 16'hb8bd;
	#20
	A = 16'ha73c;
	B = 16'h3808;
	ans = 16'ha34a;
	#20
	A = 16'h3bdb;
	B = 16'h25b5;
	ans = 16'h259b;
	#20
	A = 16'hb5aa;
	B = 16'h33ff;
	ans = 16'hada9;
	#20
	A = 16'h345f;
	B = 16'hb02f;
	ans = 16'ha892;
	#20
	A = 16'hb289;
	B = 16'h2ea0;
	ans = 16'ha569;
	#20
	A = 16'hb81a;
	B = 16'hb77e;
	ans = 16'h33af;
	#20
	A = 16'hb926;
	B = 16'h2f12;
	ans = 16'hac8d;
	#20
	A = 16'hb9dc;
	B = 16'h35fd;
	ans = 16'hb463;
	#20
	A = 16'hba3f;
	B = 16'h32a4;
	ans = 16'hb12f;
	#20
	A = 16'had9b;
	B = 16'hb988;
	ans = 16'h2bc0;
	#20
	A = 16'h377b;
	B = 16'h34d4;
	ans = 16'h3084;
	#20
	A = 16'h355b;
	B = 16'h34ac;
	ans = 16'h2e41;
	#20
	A = 16'h2557;
	B = 16'h383b;
	ans = 16'h21a6;
	#20
	A = 16'h2f01;
	B = 16'hb9d0;
	ans = 16'had17;
	#20
	A = 16'h39e8;
	B = 16'hb74b;
	ans = 16'hb562;
	#20
	A = 16'hb978;
	B = 16'hb882;
	ans = 16'h362a;
	#20
	A = 16'hafef;
	B = 16'hade3;
	ans = 16'h21d6;
	#20
	A = 16'h3960;
	B = 16'h3832;
	ans = 16'h35a3;
	#20
	A = 16'hb9e3;
	B = 16'h3a1e;
	ans = 16'hb880;
	#20
	A = 16'h361f;
	B = 16'h3aa7;
	ans = 16'h3517;
	#20
	A = 16'hb87d;
	B = 16'hbb1e;
	ans = 16'h37fc;
	#20
	A = 16'h308a;
	B = 16'h3264;
	ans = 16'h2740;
	#20
	A = 16'h3bb0;
	B = 16'h3a79;
	ans = 16'h3a38;
	#20
	A = 16'h3797;
	B = 16'hb890;
	ans = 16'hb454;
	#20
	A = 16'h3859;
	B = 16'h3489;
	ans = 16'h30ee;
	#20
	A = 16'h2f99;
	B = 16'h3843;
	ans = 16'h2c0c;
	#20
	A = 16'hbbf6;
	B = 16'hb968;
	ans = 16'h3961;
	#20
	A = 16'hb8d0;
	B = 16'h3b1b;
	ans = 16'hb846;
	#20
	A = 16'h3907;
	B = 16'hb356;
	ans = 16'hb09c;
	#20
	A = 16'hb927;
	B = 16'h2893;
	ans = 16'ha5e4;
	#20
	A = 16'h39a6;
	B = 16'h35f5;
	ans = 16'h3435;
	#20
	A = 16'h31fb;
	B = 16'hbaab;
	ans = 16'hb0fc;
	#20
	A = 16'hbbe9;
	B = 16'h37bc;
	ans = 16'hb7a6;
	#20
	A = 16'hba2e;
	B = 16'h3916;
	ans = 16'hb7db;
	#20
	A = 16'hba1d;
	B = 16'h2fdd;
	ans = 16'hae02;
	#20
	A = 16'hb6d5;
	B = 16'h2b1d;
	ans = 16'ha613;
	#20
	A = 16'h39cb;
	B = 16'h341a;
	ans = 16'h31f1;
	#20
	A = 16'hbb38;
	B = 16'h2862;
	ans = 16'ha7e9;
	#20
	A = 16'hb999;
	B = 16'h35f5;
	ans = 16'hb42b;
	#20
	A = 16'h3254;
	B = 16'hb581;
	ans = 16'hac5b;
	#20
	A = 16'hb9cf;
	B = 16'hb96e;
	ans = 16'h37e2;
	#20
	A = 16'h3960;
	B = 16'hb931;
	ans = 16'hb6fa;
	#20
	A = 16'h353f;
	B = 16'hb0d5;
	ans = 16'haa56;
	#20
	A = 16'h37f8;
	B = 16'habc4;
	ans = 16'ha7bc;
	#20
	A = 16'h3578;
	B = 16'h29e0;
	ans = 16'h2404;
	#20
	A = 16'hbb08;
	B = 16'h3a85;
	ans = 16'hb9bb;
	#20
	A = 16'h3ac5;
	B = 16'h3bf8;
	ans = 16'h3abe;
	#20
	A = 16'h3b13;
	B = 16'hb80e;
	ans = 16'hb72c;
	#20
	A = 16'h3aa7;
	B = 16'hb4c8;
	ans = 16'hb3f4;
	#20
	A = 16'hb71d;
	B = 16'h39b3;
	ans = 16'hb511;
	#20
	A = 16'hb657;
	B = 16'h322b;
	ans = 16'hace3;
	#20
	A = 16'h3b3a;
	B = 16'hba15;
	ans = 16'hb97e;
	#20
	A = 16'h2d9f;
	B = 16'hbb40;
	ans = 16'had18;
	#20
	A = 16'hb8af;
	B = 16'hbb77;
	ans = 16'h385f;
	#20
	A = 16'hb6a1;
	B = 16'h3454;
	ans = 16'haf2c;
	#20
	A = 16'h28d4;
	B = 16'h39d4;
	ans = 16'h2709;
	#20
	A = 16'hb8c1;
	B = 16'h3b74;
	ans = 16'hb86e;
	#20
	A = 16'hbaa5;
	B = 16'h38b8;
	ans = 16'hb7d7;
	#20
	A = 16'h371c;
	B = 16'hb143;
	ans = 16'hacad;
	#20
	A = 16'hb86b;
	B = 16'hb9d4;
	ans = 16'h3670;
	#20
	A = 16'h37da;
	B = 16'hba74;
	ans = 16'hb655;
	#20
	A = 16'h3659;
	B = 16'hba09;
	ans = 16'hb4ca;
	#20
	A = 16'h34b7;
	B = 16'h3914;
	ans = 16'h31fc;
	#20
	A = 16'hb0c6;
	B = 16'h2761;
	ans = 16'h9c67;
	#20
	A = 16'hb9eb;
	B = 16'h35fe;
	ans = 16'hb46f;
	#20
	A = 16'h3952;
	B = 16'hb7c4;
	ans = 16'hb52a;
	#20
	A = 16'hb96e;
	B = 16'h2f63;
	ans = 16'had03;
	#20
	A = 16'h3ab9;
	B = 16'h30e5;
	ans = 16'h301d;
	#20
	A = 16'hbb95;
	B = 16'h2fe0;
	ans = 16'haf77;
	#20
	A = 16'h397a;
	B = 16'hbbf3;
	ans = 16'hb971;
	#20
	A = 16'hba99;
	B = 16'ha825;
	ans = 16'h26d6;
	#20
	A = 16'h243b;
	B = 16'hb898;
	ans = 16'ha0dc;
	#20
	A = 16'hb9e7;
	B = 16'hb830;
	ans = 16'h362e;
	#20
	A = 16'h3903;
	B = 16'hb08a;
	ans = 16'hadb0;
	#20
	A = 16'h3b29;
	B = 16'h38a6;
	ans = 16'h3829;
	#20
	A = 16'hb456;
	B = 16'h3b1c;
	ans = 16'hb3b5;
	#20
	A = 16'h39ec;
	B = 16'h3b3f;
	ans = 16'h395d;
	#20
	A = 16'h3b61;
	B = 16'hbad4;
	ans = 16'hba4c;
	#20
	A = 16'h33eb;
	B = 16'h398b;
	ans = 16'h317c;
	#20
	A = 16'h3827;
	B = 16'hb595;
	ans = 16'hb1cb;
	#20
	A = 16'hbaf6;
	B = 16'h38a5;
	ans = 16'hb80b;
	#20
	A = 16'h35ae;
	B = 16'h3836;
	ans = 16'h31fb;
	#20
	A = 16'hb74b;
	B = 16'hbb01;
	ans = 16'h3663;
	#20
	A = 16'h385f;
	B = 16'hb067;
	ans = 16'hacd0;
	#20
	A = 16'h3be3;
	B = 16'h94cc;
	ans = 16'h94bb;
	#20
	A = 16'hb4a8;
	B = 16'h3bfe;
	ans = 16'hb4a7;
	#20
	A = 16'h3806;
	B = 16'h3b40;
	ans = 16'h374b;
	#20
	A = 16'hb8eb;
	B = 16'hb31c;
	ans = 16'h305f;
	#20
	A = 16'h3079;
	B = 16'hb8a2;
	ans = 16'had2e;
	#20
	A = 16'h3bab;
	B = 16'h3beb;
	ans = 16'h3b97;
	#20
	A = 16'hb8ef;
	B = 16'hb82a;
	ans = 16'h3523;
	#20
	A = 16'hb83c;
	B = 16'hb6f7;
	ans = 16'h335f;
	#20
	A = 16'h39fe;
	B = 16'hb8b0;
	ans = 16'hb706;
	#20
	A = 16'h35ef;
	B = 16'h31d5;
	ans = 16'h2c53;
	#20
	A = 16'h2d80;
	B = 16'h3aad;
	ans = 16'h2c97;
	#20
	A = 16'h3558;
	B = 16'hb56e;
	ans = 16'haf41;
	#20
	A = 16'hb9d0;
	B = 16'h3977;
	ans = 16'hb7f1;
	#20
	A = 16'hb6af;
	B = 16'h3bd4;
	ans = 16'hb68a;
	#20
	A = 16'ha70a;
	B = 16'h9341;
	ans = 16'h198;
	#20
	A = 16'h3789;
	B = 16'hbba5;
	ans = 16'hb733;
	#20
	A = 16'hb90d;
	B = 16'hb9ee;
	ans = 16'h377d;
	#20
	A = 16'hb44e;
	B = 16'h3aeb;
	ans = 16'hb372;
	#20
	A = 16'h39ff;
	B = 16'hba9e;
	ans = 16'hb8f6;
	#20
	A = 16'h35a2;
	B = 16'hbb42;
	ans = 16'hb51c;
	#20
	A = 16'h3678;
	B = 16'hb5c5;
	ans = 16'hb0aa;
	#20
	A = 16'h3b75;
	B = 16'hba6a;
	ans = 16'hb9fb;
	#20
	A = 16'h3702;
	B = 16'hbb0e;
	ans = 16'hb62e;
	#20
	A = 16'hb3fa;
	B = 16'h3170;
	ans = 16'ha96c;
	#20
	A = 16'hb937;
	B = 16'h3a00;
	ans = 16'hb7d2;
	#20
	A = 16'h3500;
	B = 16'hb8ee;
	ans = 16'hb22a;
	#20
	A = 16'hb0d0;
	B = 16'h367a;
	ans = 16'habcb;
	#20
	A = 16'h37c9;
	B = 16'hb90b;
	ans = 16'hb4e8;
	#20
	A = 16'hba0d;
	B = 16'h3ac3;
	ans = 16'hb91d;
	#20
	A = 16'h3926;
	B = 16'h2ff4;
	ans = 16'h2d1e;
	#20
	A = 16'h353f;
	B = 16'hb824;
	ans = 16'hb16e;
	#20
	A = 16'hba56;
	B = 16'hb95b;
	ans = 16'h383e;
	#20
	A = 16'h35be;
	B = 16'h3a3f;
	ans = 16'h347c;
	#20
	A = 16'hb91a;
	B = 16'h3b36;
	ans = 16'hb899;
	#20
	A = 16'hb4dc;
	B = 16'h28c2;
	ans = 16'ha1c8;
	#20
	A = 16'hb007;
	B = 16'hafae;
	ans = 16'h23bb;
	#20
	A = 16'hb977;
	B = 16'h3b25;
	ans = 16'hb8e1;
	#20
	A = 16'hba4c;
	B = 16'haed5;
	ans = 16'h2d61;
	#20
	A = 16'hbad6;
	B = 16'h3b03;
	ans = 16'hb9fe;
	#20
	A = 16'hbacb;
	B = 16'hb5b7;
	ans = 16'h34da;
	#20
	A = 16'hb0d8;
	B = 16'h33b3;
	ans = 16'ha8a9;
	#20
	A = 16'hb861;
	B = 16'h38c7;
	ans = 16'hb53b;
	#20
	A = 16'h38ee;
	B = 16'hb478;
	ans = 16'hb182;
	#20
	A = 16'hbace;
	B = 16'h1ed7;
	ans = 16'h9dd1;
	#20
	A = 16'hbb68;
	B = 16'hbb29;
	ans = 16'h3aa1;
	#20
	A = 16'h37f0;
	B = 16'h3b0d;
	ans = 16'h36ff;
	#20
	A = 16'h3b85;
	B = 16'hb9c2;
	ans = 16'hb969;
	#20
	A = 16'hbb86;
	B = 16'h349f;
	ans = 16'hb459;
	#20
	A = 16'h3657;
	B = 16'hb953;
	ans = 16'hb438;
	#20
	A = 16'h38d7;
	B = 16'hb06c;
	ans = 16'had5a;
	#20
	A = 16'h3588;
	B = 16'hb980;
	ans = 16'hb39b;
	#20
	A = 16'hb648;
	B = 16'h3ba0;
	ans = 16'hb5fd;
	#20
	A = 16'hb8cd;
	B = 16'hb823;
	ans = 16'h34f7;
	#20
	A = 16'h36fc;
	B = 16'hba3a;
	ans = 16'hb570;
	#20
	A = 16'hb215;
	B = 16'h3914;
	ans = 16'hafb9;
	#20
	A = 16'hba68;
	B = 16'hb1d8;
	ans = 16'h30ae;
	#20
	A = 16'h3be9;
	B = 16'h3bd6;
	ans = 16'h3bbf;
	#20
	A = 16'hb6d0;
	B = 16'hb29d;
	ans = 16'h2da2;
	#20
	A = 16'h3add;
	B = 16'hbb12;
	ans = 16'hba11;
	#20
	A = 16'hb792;
	B = 16'h2ea9;
	ans = 16'haa4d;
	#20
	A = 16'had62;
	B = 16'hb47c;
	ans = 16'h2609;
	#20
	A = 16'hbb31;
	B = 16'hb883;
	ans = 16'h380e;
	#20
	A = 16'hb986;
	B = 16'h3a7c;
	ans = 16'hb87a;
	#20
	A = 16'hb978;
	B = 16'h399a;
	ans = 16'hb7a9;
	#20
	A = 16'h37cd;
	B = 16'h34ed;
	ans = 16'h30ce;
	#20
	A = 16'h3b7d;
	B = 16'h330a;
	ans = 16'h3297;
	#20
	A = 16'hb834;
	B = 16'h3a35;
	ans = 16'hb686;
	#20
	A = 16'h399e;
	B = 16'hb8e6;
	ans = 16'hb6e1;
	#20
	A = 16'hb9f1;
	B = 16'h34ae;
	ans = 16'hb2f3;
	#20
	A = 16'h2f9a;
	B = 16'hba07;
	ans = 16'hadba;
	#20
	A = 16'h3782;
	B = 16'hbbf5;
	ans = 16'hb778;
	#20
	A = 16'h37c5;
	B = 16'hbb81;
	ans = 16'hb74a;
	#20
	A = 16'h3bc1;
	B = 16'hbb6d;
	ans = 16'hbb33;
	#20
	A = 16'hb88c;
	B = 16'h3afb;
	ans = 16'hb7ef;
	#20
	A = 16'hb8b2;
	B = 16'h3242;
	ans = 16'haf58;
	#20
	A = 16'h3b9a;
	B = 16'h3b68;
	ans = 16'h3b0a;
	#20
	A = 16'h3b24;
	B = 16'h2c2c;
	ans = 16'h2b73;
	#20
	A = 16'h37dc;
	B = 16'hb2bf;
	ans = 16'haea1;
	#20
	A = 16'hb819;
	B = 16'hb971;
	ans = 16'h3593;
	#20
	A = 16'hba08;
	B = 16'hbb2c;
	ans = 16'h3968;
	#20
	A = 16'h30cb;
	B = 16'hbb3e;
	ans = 16'hb057;
	#20
	A = 16'h3449;
	B = 16'hb8a7;
	ans = 16'hb0fc;
	#20
	A = 16'hb8d4;
	B = 16'h3829;
	ans = 16'hb505;
	#20
	A = 16'hbbe7;
	B = 16'hb933;
	ans = 16'h3923;
	#20
	A = 16'h3b21;
	B = 16'h39eb;
	ans = 16'h3946;
	#20
	A = 16'h38fb;
	B = 16'hbb65;
	ans = 16'hb89b;
	#20
	A = 16'ha951;
	B = 16'h36bb;
	ans = 16'ha479;
	#20
	A = 16'h3950;
	B = 16'hbb94;
	ans = 16'hb908;
	#20
	A = 16'h3be0;
	B = 16'hb802;
	ans = 16'hb7e4;
	#20
	A = 16'hac81;
	B = 16'h399e;
	ans = 16'haa53;
	#20
	A = 16'hbb80;
	B = 16'hba7a;
	ans = 16'h3a12;
	#20
	A = 16'ha428;
	B = 16'hb6d5;
	ans = 16'h1f19;
	#20
	A = 16'hb5c5;
	B = 16'hba93;
	ans = 16'h34be;
	#20
	A = 16'h319b;
	B = 16'h35ac;
	ans = 16'h2bf3;
	#20
	A = 16'h3297;
	B = 16'h3bef;
	ans = 16'h3289;
	#20
	A = 16'h2e4e;
	B = 16'hb6fc;
	ans = 16'ha981;
	#20
	A = 16'ha5ab;
	B = 16'hbb65;
	ans = 16'h253d;
	#20
	A = 16'h3624;
	B = 16'hb03d;
	ans = 16'haa82;
	#20
	A = 16'h367c;
	B = 16'hbabe;
	ans = 16'hb577;
	#20
	A = 16'h2c41;
	B = 16'h3b4a;
	ans = 16'h2bc0;
	#20
	A = 16'hb558;
	B = 16'hb9c4;
	ans = 16'h33b4;
	#20
	A = 16'hb65c;
	B = 16'h3470;
	ans = 16'haf0e;
	#20
	A = 16'h33e6;
	B = 16'h34da;
	ans = 16'h2cca;
	#20
	A = 16'h397a;
	B = 16'hb928;
	ans = 16'hb70f;
	#20
	A = 16'h3b7f;
	B = 16'h33d0;
	ans = 16'h3352;
	#20
	A = 16'had64;
	B = 16'hb8db;
	ans = 16'h2a8b;
	#20
	A = 16'h3b8a;
	B = 16'h39de;
	ans = 16'h3987;
	#20
	A = 16'h301e;
	B = 16'h3852;
	ans = 16'h2c72;
	#20
	A = 16'h333d;
	B = 16'h3b0d;
	ans = 16'h3261;
	#20
	A = 16'h3841;
	B = 16'h3438;
	ans = 16'h307d;
	#20
	A = 16'hb675;
	B = 16'hb69c;
	ans = 16'h3156;
	#20
	A = 16'ha43c;
	B = 16'hb445;
	ans = 16'h1c85;
	#20
	A = 16'h3b56;
	B = 16'h39cd;
	ans = 16'h3952;
	#20
	A = 16'h39dc;
	B = 16'h36b9;
	ans = 16'h34ec;
	#20
	A = 16'hb853;
	B = 16'h346c;
	ans = 16'hb0c8;
	#20
	A = 16'h3a31;
	B = 16'h287a;
	ans = 16'h26ee;
	#20
	A = 16'h35df;
	B = 16'hba3b;
	ans = 16'hb493;
	#20
	A = 16'hb364;
	B = 16'hb596;
	ans = 16'h2d29;
	#20
	A = 16'h3033;
	B = 16'h37c4;
	ans = 16'h2c14;
	#20
	A = 16'h2e3e;
	B = 16'had89;
	ans = 16'ha052;
	#20
	A = 16'hb0e4;
	B = 16'h1b19;
	ans = 16'h9057;
	#20
	A = 16'ha7a2;
	B = 16'h38dd;
	ans = 16'ha4a4;
	#20
	A = 16'hb60f;
	B = 16'hb7f7;
	ans = 16'h3208;
	#20
	A = 16'hadfe;
	B = 16'ha37d;
	ans = 16'h159c;
	#20
	A = 16'h3372;
	B = 16'h3634;
	ans = 16'h2dc6;
	#20
	A = 16'h347f;
	B = 16'h31c6;
	ans = 16'h2a7d;
	#20
	A = 16'h3bc9;
	B = 16'h3bbc;
	ans = 16'h3b87;
	#20
	A = 16'haae0;
	B = 16'hb8d8;
	ans = 16'h282a;
	#20
	A = 16'h2d04;
	B = 16'h3084;
	ans = 16'h21aa;
	#20
	A = 16'hbb5e;
	B = 16'hbafb;
	ans = 16'h3a6e;
	#20
	A = 16'hba31;
	B = 16'h2e10;
	ans = 16'hacb1;
	#20
	A = 16'h31de;
	B = 16'h2c04;
	ans = 16'h21e4;
	#20
	A = 16'haf84;
	B = 16'hb12c;
	ans = 16'h24dc;
	#20
	A = 16'h36a4;
	B = 16'hb9a1;
	ans = 16'hb4ac;
	#20
	A = 16'hb97a;
	B = 16'h3b1c;
	ans = 16'hb8de;
	#20
	A = 16'h3af6;
	B = 16'h3165;
	ans = 16'h30b2;
	#20
	A = 16'hb6f8;
	B = 16'hb452;
	ans = 16'h2f87;
	#20
	A = 16'hb53a;
	B = 16'h3bcc;
	ans = 16'hb518;
	#20
	A = 16'hba54;
	B = 16'h383d;
	ans = 16'hb6b5;
	#20
	A = 16'h396e;
	B = 16'h3029;
	ans = 16'h2da6;
	#20
	A = 16'hbaa8;
	B = 16'hb6af;
	ans = 16'h3590;
	#20
	A = 16'h3992;
	B = 16'hb9f9;
	ans = 16'hb829;
	#20
	A = 16'ha4d1;
	B = 16'h34fe;
	ans = 16'h9e03;
	#20
	A = 16'hb949;
	B = 16'h3808;
	ans = 16'hb554;
	#20
	A = 16'h38b2;
	B = 16'h3b47;
	ans = 16'h3845;
	#20
	A = 16'ha573;
	B = 16'hb61e;
	ans = 16'h202b;
	#20
	A = 16'hb6fc;
	B = 16'h3432;
	ans = 16'haf53;
	#20
	A = 16'hb207;
	B = 16'haf40;
	ans = 16'h2576;
	#20
	A = 16'h3ac8;
	B = 16'ha0f0;
	ans = 16'ha02f;
	#20
	A = 16'h313f;
	B = 16'h3a84;
	ans = 16'h3046;
	#20
	A = 16'hba9a;
	B = 16'hb6bd;
	ans = 16'h358f;
	#20
	A = 16'hb3a6;
	B = 16'h3896;
	ans = 16'hb062;
	#20
	A = 16'hbaa9;
	B = 16'h31fa;
	ans = 16'hb0fa;
	#20
	A = 16'h3a74;
	B = 16'h3b2f;
	ans = 16'h39cb;
	#20
	A = 16'h3899;
	B = 16'h3a2a;
	ans = 16'h3716;
	#20
	A = 16'hbb37;
	B = 16'hb2f2;
	ans = 16'h3243;
	#20
	A = 16'hae61;
	B = 16'h3a92;
	ans = 16'had3d;
	#20
	A = 16'h31dd;
	B = 16'h3bcc;
	ans = 16'h31b7;
	#20
	A = 16'hb81b;
	B = 16'h3b5e;
	ans = 16'hb790;
	#20
	A = 16'h3790;
	B = 16'h37bd;
	ans = 16'h3351;
	#20
	A = 16'h367c;
	B = 16'h3933;
	ans = 16'h3437;
	#20
	A = 16'h3798;
	B = 16'hb533;
	ans = 16'hb0ef;
	#20
	A = 16'hbc00;
	B = 16'hbadd;
	ans = 16'h3add;
	#20
	A = 16'hb149;
	B = 16'hb7e4;
	ans = 16'h2d37;
	#20
	A = 16'hb9d3;
	B = 16'hb6f3;
	ans = 16'h350f;
	#20
	A = 16'h37ee;
	B = 16'h37e6;
	ans = 16'h33d4;
	#20
	A = 16'hb45c;
	B = 16'hb7e7;
	ans = 16'h304e;
	#20
	A = 16'h31a8;
	B = 16'hba3b;
	ans = 16'hb068;
	#20
	A = 16'hb823;
	B = 16'h1815;
	ans = 16'h9439;
	#20
	A = 16'hb886;
	B = 16'h3861;
	ans = 16'hb4f4;
	#20
	A = 16'hb48d;
	B = 16'hb1c6;
	ans = 16'h2a92;
	#20
	A = 16'h3715;
	B = 16'hb928;
	ans = 16'hb491;
	#20
	A = 16'h35f4;
	B = 16'h3bf2;
	ans = 16'h35ea;
	#20
	A = 16'h2d39;
	B = 16'hb760;
	ans = 16'ha8d1;
	#20
	A = 16'h3388;
	B = 16'hadd4;
	ans = 16'ha57d;
	#20
	A = 16'hb7b5;
	B = 16'h34ff;
	ans = 16'hb0d0;
	#20
	A = 16'hbaf3;
	B = 16'h3aac;
	ans = 16'hb9cc;
	#20
	A = 16'h3b4d;
	B = 16'hb9b2;
	ans = 16'hb933;
	#20
	A = 16'hba35;
	B = 16'hb2d0;
	ans = 16'h3149;
	#20
	A = 16'h3273;
	B = 16'hbb25;
	ans = 16'hb1c2;
	#20
	A = 16'hb544;
	B = 16'hb93e;
	ans = 16'h32e7;
	#20
	A = 16'had94;
	B = 16'h36e2;
	ans = 16'ha8cd;
	#20
	A = 16'h3800;
	B = 16'hae21;
	ans = 16'haa21;
	#20
	A = 16'h352d;
	B = 16'hba16;
	ans = 16'hb3e0;
	#20
	A = 16'hb75c;
	B = 16'hb4b8;
	ans = 16'h3057;
	#20
	A = 16'hb479;
	B = 16'hba6b;
	ans = 16'h332d;
	#20
	A = 16'h388c;
	B = 16'hbac4;
	ans = 16'hb7b1;
	#20
	A = 16'hb364;
	B = 16'h34a8;
	ans = 16'hac4d;
	#20
	A = 16'h3abd;
	B = 16'hb9af;
	ans = 16'hb8ca;
	#20
	A = 16'h36aa;
	B = 16'hba41;
	ans = 16'hb536;
	#20
	A = 16'hbab6;
	B = 16'hb5e6;
	ans = 16'h34f3;
	#20
	A = 16'hbb58;
	B = 16'h36df;
	ans = 16'hb64f;
	#20
	A = 16'h3ac0;
	B = 16'h3138;
	ans = 16'h3067;
	#20
	A = 16'hb50d;
	B = 16'h30c8;
	ans = 16'haa0a;
	#20
	A = 16'hb9cf;
	B = 16'h3aca;
	ans = 16'hb8ee;
	#20
	A = 16'hb033;
	B = 16'h3a75;
	ans = 16'haec7;
	#20
	A = 16'h3729;
	B = 16'h2df7;
	ans = 16'h2957;
	#20
	A = 16'h383a;
	B = 16'ha27a;
	ans = 16'h9ed8;
	#20
	A = 16'h3885;
	B = 16'had14;
	ans = 16'ha9bd;
	#20
	A = 16'hb186;
	B = 16'h39f0;
	ans = 16'hb019;
	#20
	A = 16'h3100;
	B = 16'h3b46;
	ans = 16'h308c;
	#20
	A = 16'hb8c3;
	B = 16'h34f3;
	ans = 16'hb1e4;
	#20
	A = 16'hb763;
	B = 16'hb5fd;
	ans = 16'h3187;
	#20
	A = 16'h29b2;
	B = 16'h34d7;
	ans = 16'h22e4;
	#20
	A = 16'h2edd;
	B = 16'hbb2a;
	ans = 16'hae25;
	#20
	A = 16'h3788;
	B = 16'hbb52;
	ans = 16'hb6e4;
	#20
	A = 16'hb807;
	B = 16'h2d9a;
	ans = 16'ha9a4;
	#20
	A = 16'h2f4a;
	B = 16'hb5ba;
	ans = 16'ha938;
	#20
	A = 16'hb7a5;
	B = 16'h3be3;
	ans = 16'hb789;
	#20
	A = 16'ha7cb;
	B = 16'hb10b;
	ans = 16'h1cea;
	#20
	A = 16'hbae3;
	B = 16'hb472;
	ans = 16'h33a7;
	#20
	A = 16'hb8b0;
	B = 16'hb6f0;
	ans = 16'h3411;
	#20
	A = 16'hba75;
	B = 16'h397f;
	ans = 16'hb870;
	#20
	A = 16'h3b5e;
	B = 16'hbad7;
	ans = 16'hba4c;
	#20
	A = 16'h3af1;
	B = 16'hba08;
	ans = 16'hb93c;
	#20
	A = 16'h3b80;
	B = 16'h3a30;
	ans = 16'h39cd;
	#20
	A = 16'hb588;
	B = 16'hbb22;
	ans = 16'h34ef;
	#20
	A = 16'hb331;
	B = 16'hb99f;
	ans = 16'h310e;
	#20
	A = 16'hb889;
	B = 16'hb8d2;
	ans = 16'h3577;
	#20
	A = 16'hb855;
	B = 16'hbafe;
	ans = 16'h3793;
	#20
	A = 16'h3bd7;
	B = 16'hbb9f;
	ans = 16'hbb78;
	#20
	A = 16'h274f;
	B = 16'hb3ed;
	ans = 16'h9f3e;
	#20
	A = 16'hbbbe;
	B = 16'hbb3d;
	ans = 16'h3b01;
	#20
	A = 16'hb978;
	B = 16'h2e9b;
	ans = 16'hac84;
	#20
	A = 16'hba85;
	B = 16'hbb8c;
	ans = 16'h3a26;
	#20
	A = 16'hba6c;
	B = 16'hb6a1;
	ans = 16'h3552;
	#20
	A = 16'hbaf8;
	B = 16'h3b4f;
	ans = 16'hba5e;
	#20
	A = 16'h3a58;
	B = 16'h3019;
	ans = 16'h2e80;
	#20
	A = 16'hbb7d;
	B = 16'hbbd6;
	ans = 16'h3b56;
	#20
	A = 16'h9dc9;
	B = 16'hb523;
	ans = 16'h176e;
	#20
	A = 16'hbb10;
	B = 16'h2e4c;
	ans = 16'had8f;
	#20
	A = 16'h3a33;
	B = 16'hb852;
	ans = 16'hb6b2;
	#20
	A = 16'h38a6;
	B = 16'hb81d;
	ans = 16'hb4c8;
	#20
	A = 16'h316b;
	B = 16'hb7f4;
	ans = 16'had63;
	#20
	A = 16'hb338;
	B = 16'hb288;
	ans = 16'h29e5;
	#20
	A = 16'h38b0;
	B = 16'h2cc5;
	ans = 16'h2997;
	#20
	A = 16'hae9e;
	B = 16'hb909;
	ans = 16'h2c2a;
	#20
	A = 16'hbbc1;
	B = 16'ha88e;
	ans = 16'h286a;
	#20
	A = 16'h3407;
	B = 16'hbb46;
	ans = 16'hb353;
	#20
	A = 16'h271e;
	B = 16'h2c32;
	ans = 16'h1777;
	#20
	A = 16'h2851;
	B = 16'h3902;
	ans = 16'h2567;
	#20
	A = 16'hbaa8;
	B = 16'h35a5;
	ans = 16'hb4b2;
	#20
	A = 16'hb71c;
	B = 16'hbab1;
	ans = 16'h35f2;
	#20
	A = 16'h3b02;
	B = 16'hb8e8;
	ans = 16'hb84c;
	#20
	A = 16'hb754;
	B = 16'hb96d;
	ans = 16'h34f8;
	#20
	A = 16'hb880;
	B = 16'h3b63;
	ans = 16'hb828;
	#20
	A = 16'h393f;
	B = 16'h38ea;
	ans = 16'h3672;
	#20
	A = 16'hb184;
	B = 16'hbb99;
	ans = 16'h313d;
	#20
	A = 16'hb751;
	B = 16'hb53b;
	ans = 16'h30c9;
	#20
	A = 16'h38c8;
	B = 16'hb465;
	ans = 16'hb141;
	#20
	A = 16'h3aa0;
	B = 16'h3058;
	ans = 16'h2f32;
	#20
	A = 16'h375e;
	B = 16'hb113;
	ans = 16'hacac;
	#20
	A = 16'hb72d;
	B = 16'h2dcc;
	ans = 16'ha933;
	#20
	A = 16'hb836;
	B = 16'hba1b;
	ans = 16'h366d;
	#20
	A = 16'h24db;
	B = 16'h2d9e;
	ans = 16'h16d2;
	#20
	A = 16'h3751;
	B = 16'h39e1;
	ans = 16'h3560;
	#20
	A = 16'h385a;
	B = 16'h38ba;
	ans = 16'h3524;
	#20
	A = 16'hb729;
	B = 16'h30b4;
	ans = 16'hac36;
	#20
	A = 16'h3772;
	B = 16'h3833;
	ans = 16'h33d1;
	#20
	A = 16'h2487;
	B = 16'hbbe1;
	ans = 16'ha475;
	#20
	A = 16'h389e;
	B = 16'h30c3;
	ans = 16'h2d7f;
	#20
	A = 16'hb4f1;
	B = 16'h389b;
	ans = 16'hb1b0;
	#20
	A = 16'hb532;
	B = 16'h3184;
	ans = 16'hab2a;
	#20
	A = 16'h3517;
	B = 16'hbbb4;
	ans = 16'hb4e7;
	#20
	A = 16'hb65b;
	B = 16'h3bcb;
	ans = 16'hb631;
	#20
	A = 16'hb8e3;
	B = 16'hb056;
	ans = 16'h2d4c;
	#20
	A = 16'h3a1a;
	B = 16'hb4fc;
	ans = 16'hb39a;
	#20
	A = 16'hb904;
	B = 16'hb15a;
	ans = 16'h2eb6;
	#20
	A = 16'h3590;
	B = 16'h3a74;
	ans = 16'h347d;
	#20
	A = 16'h3a3b;
	B = 16'h2e79;
	ans = 16'h2d0a;
	#20
	A = 16'ha19c;
	B = 16'h34d6;
	ans = 16'h9ac8;
	#20
	A = 16'hb60a;
	B = 16'hb74f;
	ans = 16'h3184;
	#20
	A = 16'hb64c;
	B = 16'h38fd;
	ans = 16'hb3da;
	#20
	A = 16'hb9f8;
	B = 16'h35f2;
	ans = 16'hb470;
	#20
	A = 16'hba5b;
	B = 16'hb151;
	ans = 16'h3039;
	#20
	A = 16'hb77a;
	B = 16'h3223;
	ans = 16'hadbc;
	#20
	A = 16'hb96c;
	B = 16'hb9df;
	ans = 16'h37f5;
	#20
	A = 16'hb93b;
	B = 16'h3902;
	ans = 16'hb68c;
	#20
	A = 16'hbacb;
	B = 16'haf7e;
	ans = 16'h2e5d;
	#20
	A = 16'h3820;
	B = 16'h3860;
	ans = 16'h3483;
	#20
	A = 16'ha8e3;
	B = 16'h3a1c;
	ans = 16'ha777;
	#20
	A = 16'h39db;
	B = 16'h3048;
	ans = 16'h2e44;
	#20
	A = 16'h3761;
	B = 16'hb898;
	ans = 16'hb43d;
	#20
	A = 16'h34d1;
	B = 16'h390b;
	ans = 16'h3212;
	#20
	A = 16'hbb59;
	B = 16'hbb59;
	ans = 16'h3ac0;
	#20
	A = 16'hbaa5;
	B = 16'h28fb;
	ans = 16'ha823;
	#20
	A = 16'hba93;
	B = 16'h3a59;
	ans = 16'hb937;
	#20
	A = 16'hbb62;
	B = 16'hbb72;
	ans = 16'h3adf;
	#20
	A = 16'hba31;
	B = 16'h397a;
	ans = 16'hb83d;
	#20
	A = 16'h3b03;
	B = 16'h3946;
	ans = 16'h389f;
	#20
	A = 16'hb492;
	B = 16'h39b1;
	ans = 16'hb281;
	#20
	A = 16'hb75a;
	B = 16'hac1d;
	ans = 16'h278f;
	#20
	A = 16'h39d3;
	B = 16'hae53;
	ans = 16'hac9b;
	#20
	A = 16'hb859;
	B = 16'hb655;
	ans = 16'h32e2;
	#20
	A = 16'hade6;
	B = 16'ha481;
	ans = 16'h16a4;
	#20
	A = 16'ha45d;
	B = 16'hac7a;
	ans = 16'h14e2;
	#20
	A = 16'hba08;
	B = 16'h3ac5;
	ans = 16'hb91b;
	#20
	A = 16'h399b;
	B = 16'h3a40;
	ans = 16'h3861;
	#20
	A = 16'h3894;
	B = 16'hb597;
	ans = 16'hb266;
	#20
	A = 16'h23db;
	B = 16'h3870;
	ans = 16'h205b;
	#20
	A = 16'hb956;
	B = 16'hb504;
	ans = 16'h32b1;
	#20
	A = 16'h37f2;
	B = 16'hadd3;
	ans = 16'ha9c9;
	#20
	A = 16'h2fb0;
	B = 16'hb8b4;
	ans = 16'hac85;
	#20
	A = 16'h3251;
	B = 16'h389e;
	ans = 16'h2f4a;
	#20
	A = 16'h38b4;
	B = 16'h3547;
	ans = 16'h3234;
	#20
	A = 16'hb030;
	B = 16'h3a54;
	ans = 16'haea0;
	#20
	A = 16'h2453;
	B = 16'h3638;
	ans = 16'h1eb9;
	#20
	A = 16'h394f;
	B = 16'h3a4a;
	ans = 16'h382c;
	#20
	A = 16'h2f30;
	B = 16'hb911;
	ans = 16'hac8d;
	#20
	A = 16'ha13e;
	B = 16'hbba3;
	ans = 16'h2101;
	#20
	A = 16'h3ace;
	B = 16'hb8f7;
	ans = 16'hb839;
	#20
	A = 16'hbb6b;
	B = 16'hb843;
	ans = 16'h37e7;
	#20
	A = 16'h38b2;
	B = 16'hb50d;
	ans = 16'hb1ee;
	#20
	A = 16'hb7dd;
	B = 16'had18;
	ans = 16'h2902;
	#20
	A = 16'hb854;
	B = 16'h3aae;
	ans = 16'hb73a;
	#20
	A = 16'h323f;
	B = 16'h386e;
	ans = 16'h2eeb;
	#20
	A = 16'h36b5;
	B = 16'h32b4;
	ans = 16'h2d9f;
	#20
	A = 16'h2942;
	B = 16'h2af3;
	ans = 16'h1891;
	#20
	A = 16'hb3a0;
	B = 16'hb970;
	ans = 16'h312f;
	#20
	A = 16'hba2d;
	B = 16'hb8df;
	ans = 16'h3785;
	#20
	A = 16'hb494;
	B = 16'hb8b4;
	ans = 16'h3162;
	#20
	A = 16'hb794;
	B = 16'h3a44;
	ans = 16'hb5ef;
	#20
	A = 16'h3993;
	B = 16'h371d;
	ans = 16'h34f5;
	#20
	A = 16'hb61d;
	B = 16'hbaa3;
	ans = 16'h3512;
	#20
	A = 16'h3b38;
	B = 16'h383d;
	ans = 16'h37a6;
	#20
	A = 16'h3b9d;
	B = 16'hbabc;
	ans = 16'hba69;
	#20
	A = 16'hba82;
	B = 16'hbbd7;
	ans = 16'h3a61;
	#20
	A = 16'h33d3;
	B = 16'hb5d3;
	ans = 16'hadb2;
	#20
	A = 16'h2caa;
	B = 16'hbb0b;
	ans = 16'hac1b;
	#20
	A = 16'h3b26;
	B = 16'h34ea;
	ans = 16'h3464;
	#20
	A = 16'hae82;
	B = 16'hb865;
	ans = 16'h2b26;
	#20
	A = 16'h3ac1;
	B = 16'hb40c;
	ans = 16'hb2d5;
	#20
	A = 16'h39d5;
	B = 16'h3430;
	ans = 16'h321b;
	#20
	A = 16'hb500;
	B = 16'hb795;
	ans = 16'h30bd;
	#20
	A = 16'hb618;
	B = 16'h3253;
	ans = 16'hacd1;
	#20
	A = 16'hbafe;
	B = 16'h366e;
	ans = 16'hb59f;
	#20
	A = 16'hbb0a;
	B = 16'hb6f6;
	ans = 16'h3620;
	#20
	A = 16'hb48b;
	B = 16'hbb70;
	ans = 16'h3439;
	#20
	A = 16'ha598;
	B = 16'h30c3;
	ans = 16'h9aa9;
	#20
	A = 16'hbab0;
	B = 16'h3a30;
	ans = 16'hb92c;
	#20
	A = 16'h34ea;
	B = 16'h3bc5;
	ans = 16'h34c6;
	#20
	A = 16'ha3a2;
	B = 16'h32b2;
	ans = 16'h9a63;
	#20
	A = 16'haf6c;
	B = 16'hb613;
	ans = 16'h29a3;
	#20
	A = 16'hb64a;
	B = 16'h3742;
	ans = 16'hb1b5;
	#20
	A = 16'h3643;
	B = 16'h37b8;
	ans = 16'h320b;
	#20
	A = 16'hbabe;
	B = 16'hb50b;
	ans = 16'h3440;
	#20
	A = 16'h381a;
	B = 16'hb9e8;
	ans = 16'hb60e;
	#20
	A = 16'h39d7;
	B = 16'hb485;
	ans = 16'hb299;
	#20
	A = 16'h3b0c;
	B = 16'hb774;
	ans = 16'hb691;
	#20
	A = 16'hb5ea;
	B = 16'hae6e;
	ans = 16'h28c1;
	#20
	A = 16'ha9cc;
	B = 16'hb798;
	ans = 16'h2581;
	#20
	A = 16'h3b34;
	B = 16'hb9ec;
	ans = 16'hb955;
	#20
	A = 16'hb460;
	B = 16'hb9ea;
	ans = 16'h3278;
	#20
	A = 16'h349c;
	B = 16'hb774;
	ans = 16'hb04b;
	#20
	A = 16'hae3d;
	B = 16'h360a;
	ans = 16'ha8b6;
	#20
	A = 16'h3bca;
	B = 16'h38d2;
	ans = 16'h38b1;
	#20
	A = 16'h33bb;
	B = 16'hb457;
	ans = 16'hac32;
	#20
	A = 16'h3a0b;
	B = 16'h3917;
	ans = 16'h37b0;
	#20
	A = 16'hb991;
	B = 16'h35b1;
	ans = 16'hb3ec;
	#20
	A = 16'h3a90;
	B = 16'hb51f;
	ans = 16'hb433;
	#20
	A = 16'h3442;
	B = 16'h38ca;
	ans = 16'h3119;
	#20
	A = 16'hb8a9;
	B = 16'h3afd;
	ans = 16'hb812;
	#20
	A = 16'hb90c;
	B = 16'h2f82;
	ans = 16'hacbd;
	#20
	A = 16'hba9e;
	B = 16'h39c7;
	ans = 16'hb8c7;
	#20
	A = 16'hadd0;
	B = 16'hb1db;
	ans = 16'h2441;
	#20
	A = 16'hb4f1;
	B = 16'had9e;
	ans = 16'h26f0;
	#20
	A = 16'hb458;
	B = 16'h3a5a;
	ans = 16'hb2e6;
	#20
	A = 16'hb675;
	B = 16'h3b14;
	ans = 16'hb5b7;
	#20
	A = 16'h396f;
	B = 16'hb249;
	ans = 16'hb045;
	#20
	A = 16'h34fc;
	B = 16'hbb89;
	ans = 16'hb4b2;
	#20
	A = 16'h3449;
	B = 16'hb5b0;
	ans = 16'hae18;
	#20
	A = 16'hb5a3;
	B = 16'h3a1d;
	ans = 16'hb44f;
	#20
	A = 16'h3bb2;
	B = 16'h3462;
	ans = 16'h3437;
	#20
	A = 16'h36f9;
	B = 16'h3345;
	ans = 16'h2e56;
	#20
	A = 16'hb9d0;
	B = 16'hb201;
	ans = 16'h305d;
	#20
	A = 16'haeff;
	B = 16'hb159;
	ans = 16'h24ad;
	#20
	A = 16'h3207;
	B = 16'hb672;
	ans = 16'hacdb;
	#20
	A = 16'h3518;
	B = 16'hb0ec;
	ans = 16'haa45;
	#20
	A = 16'hbbb8;
	B = 16'hbae7;
	ans = 16'h3aa9;
	#20
	A = 16'hbb17;
	B = 16'h385a;
	ans = 16'hb7b7;
	#20
	A = 16'h35e3;
	B = 16'hb056;
	ans = 16'haa62;
	#20
	A = 16'hb280;
	B = 16'hbbfb;
	ans = 16'h327c;
	#20
	A = 16'h3a47;
	B = 16'hb493;
	ans = 16'hb32e;
	#20
	A = 16'h3255;
	B = 16'hb996;
	ans = 16'hb06c;
	#20
	A = 16'hb83d;
	B = 16'hba38;
	ans = 16'h3697;
	#20
	A = 16'h3784;
	B = 16'hac23;
	ans = 16'ha7c6;
	#20
	A = 16'hbaa7;
	B = 16'hbb3a;
	ans = 16'h3a02;
	#20
	A = 16'hbaca;
	B = 16'hba96;
	ans = 16'h3997;
	#20
	A = 16'hba2e;
	B = 16'hbb1a;
	ans = 16'h397c;
	#20
	A = 16'hba7a;
	B = 16'hb760;
	ans = 16'h35f8;
	#20
	A = 16'hb84a;
	B = 16'h3845;
	ans = 16'hb494;
	#20
	A = 16'hbb17;
	B = 16'hbbad;
	ans = 16'h3acd;
	#20
	A = 16'h3a26;
	B = 16'hbb2b;
	ans = 16'hb982;
	#20
	A = 16'hb87f;
	B = 16'h37d1;
	ans = 16'hb465;
	#20
	A = 16'h3069;
	B = 16'hba8b;
	ans = 16'haf37;
	#20
	A = 16'h3895;
	B = 16'hb5d2;
	ans = 16'hb2ab;
	#20
	A = 16'hb919;
	B = 16'h3bcb;
	ans = 16'hb8f7;
	#20
	A = 16'h330a;
	B = 16'h3af8;
	ans = 16'h3222;
	#20
	A = 16'h39e2;
	B = 16'hbae4;
	ans = 16'hb911;
	#20
	A = 16'h369b;
	B = 16'hb967;
	ans = 16'hb476;
	#20
	A = 16'hb4cd;
	B = 16'h3855;
	ans = 16'hb133;
	#20
	A = 16'h380a;
	B = 16'h3ac7;
	ans = 16'h36d8;
	#20
	A = 16'hbaee;
	B = 16'hbbee;
	ans = 16'h3ade;
	#20
	A = 16'h38b8;
	B = 16'hb4ff;
	ans = 16'hb1e5;
	#20
	A = 16'h351a;
	B = 16'hba48;
	ans = 16'hb401;
	#20
	A = 16'hb539;
	B = 16'h37d7;
	ans = 16'hb11e;
	#20
	A = 16'h38af;
	B = 16'h363d;
	ans = 16'h334e;
	#20
	A = 16'h3914;
	B = 16'h3409;
	ans = 16'h311f;
	#20
	A = 16'h3b1a;
	B = 16'h3938;
	ans = 16'h38a2;
	#20
	A = 16'h2e73;
	B = 16'hb896;
	ans = 16'hab65;
	#20
	A = 16'h36ce;
	B = 16'h3913;
	ans = 16'h3451;
	#20
	A = 16'h3b39;
	B = 16'hb66c;
	ans = 16'hb5cc;
	#20
	A = 16'hb7b0;
	B = 16'h3ba7;
	ans = 16'hb75a;
	#20
	A = 16'hb3cd;
	B = 16'ha0a5;
	ans = 16'h1887;
	#20
	A = 16'hae8f;
	B = 16'hbaa7;
	ans = 16'h2d74;
	#20
	A = 16'hbbc6;
	B = 16'h2cd1;
	ans = 16'hacae;
	#20
	A = 16'h2c22;
	B = 16'h3680;
	ans = 16'h26b7;
	#20
	A = 16'hb41c;
	B = 16'h313e;
	ans = 16'ha963;
	#20
	A = 16'h35ff;
	B = 16'h392d;
	ans = 16'h33c2;
	#20
	A = 16'h36e8;
	B = 16'h3626;
	ans = 16'h314f;
	#20
	A = 16'h384f;
	B = 16'h389f;
	ans = 16'h34fa;
	#20
	A = 16'hb158;
	B = 16'h32f9;
	ans = 16'ha8a8;
	#20
	A = 16'hbbed;
	B = 16'hbbe3;
	ans = 16'h3bd0;
	#20
	A = 16'hae66;
	B = 16'h3567;
	ans = 16'ha852;
	#20
	A = 16'h356f;
	B = 16'h238e;
	ans = 16'h1d22;
	#20
	A = 16'h3132;
	B = 16'h2b51;
	ans = 16'h20c0;
	#20
	A = 16'h3059;
	B = 16'hbbe8;
	ans = 16'hb04c;
	#20
	A = 16'hb6d3;
	B = 16'h2c94;
	ans = 16'ha7cf;
	#20
	A = 16'hb816;
	B = 16'h300c;
	ans = 16'hac22;
	#20
	A = 16'ha8e2;
	B = 16'h2dcf;
	ans = 16'h9b17;
	#20
	A = 16'hb5fd;
	B = 16'hba5b;
	ans = 16'h34c2;
	#20
	A = 16'hbaef;
	B = 16'h3b22;
	ans = 16'hba2f;
	#20
	A = 16'h3823;
	B = 16'h3b2b;
	ans = 16'h376a;
	#20
	A = 16'hb596;
	B = 16'h3b06;
	ans = 16'hb4e7;
	#20
	A = 16'hbaf6;
	B = 16'hbb10;
	ans = 16'h3a25;
	#20
	A = 16'hba7f;
	B = 16'hb036;
	ans = 16'h2ed7;
	#20
	A = 16'hb947;
	B = 16'hbb90;
	ans = 16'h38fd;
	#20
	A = 16'h38d5;
	B = 16'h3726;
	ans = 16'h3451;
	#20
	A = 16'h3608;
	B = 16'h2881;
	ans = 16'h22cb;
	#20
	A = 16'hb5d2;
	B = 16'h38ad;
	ans = 16'hb2ce;
	#20
	A = 16'h2e75;
	B = 16'hbb3f;
	ans = 16'hadd9;
	#20
	A = 16'hb5d7;
	B = 16'hb80e;
	ans = 16'h31eb;
	#20
	A = 16'h365c;
	B = 16'h3c00;
	ans = 16'h365c;
	#20
	A = 16'h26cf;
	B = 16'hb8be;
	ans = 16'ha409;
	#20
	A = 16'hb271;
	B = 16'hb964;
	ans = 16'h3057;
	#20
	A = 16'h3a1c;
	B = 16'hb3eb;
	ans = 16'hb20c;
	#20
	A = 16'hb975;
	B = 16'hbbdb;
	ans = 16'h395c;
	#20
	A = 16'h383b;
	B = 16'h30ac;
	ans = 16'h2cf1;
	#20
	A = 16'h36f7;
	B = 16'hb4b1;
	ans = 16'hb016;
	#20
	A = 16'h3a6e;
	B = 16'h338a;
	ans = 16'h320f;
	#20
	A = 16'hba54;
	B = 16'had44;
	ans = 16'h2c2a;
	#20
	A = 16'h3bcb;
	B = 16'h3b67;
	ans = 16'h3b36;
	#20
	A = 16'h30f3;
	B = 16'h39be;
	ans = 16'h2f1b;
	#20
	A = 16'h372a;
	B = 16'h34d8;
	ans = 16'h3056;
	#20
	A = 16'hb23a;
	B = 16'h385e;
	ans = 16'haecc;
	#20
	A = 16'h3804;
	B = 16'hb5b3;
	ans = 16'hb1b9;
	#20
	A = 16'hb649;
	B = 16'h3abb;
	ans = 16'hb54a;
	#20
	A = 16'hb88f;
	B = 16'hbbc4;
	ans = 16'h386d;
	#20
	A = 16'hb8f6;
	B = 16'h353e;
	ans = 16'hb280;
	#20
	A = 16'h38e2;
	B = 16'h3419;
	ans = 16'h3101;
	#20
	A = 16'hb660;
	B = 16'hb75a;
	ans = 16'h31dc;
	#20
	A = 16'hbb22;
	B = 16'h235a;
	ans = 16'ha28e;
	#20
	A = 16'hb365;
	B = 16'h3805;
	ans = 16'haf6e;
	#20
	A = 16'hb32f;
	B = 16'hbbd2;
	ans = 16'h3306;
	#20
	A = 16'h2d2e;
	B = 16'hb19e;
	ans = 16'ha346;
	#20
	A = 16'h3728;
	B = 16'h398b;
	ans = 16'h34f5;
	#20
	A = 16'haf6d;
	B = 16'hb50d;
	ans = 16'h28b0;
	#20
	A = 16'hbb98;
	B = 16'hb8b6;
	ans = 16'h3879;
	#20
	A = 16'h2d91;
	B = 16'hb0e8;
	ans = 16'ha2d4;
	#20
	A = 16'h3a4e;
	B = 16'h32f5;
	ans = 16'h317c;
	#20
	A = 16'h390f;
	B = 16'h2838;
	ans = 16'h2556;
	#20
	A = 16'h3bc3;
	B = 16'hb9ae;
	ans = 16'hb983;
	#20
	A = 16'hb983;
	B = 16'h34c9;
	ans = 16'hb298;
	#20
	A = 16'hb862;
	B = 16'h3b8f;
	ans = 16'hb824;
	#20
	A = 16'h3614;
	B = 16'hb433;
	ans = 16'hae61;
	#20
	A = 16'h36e9;
	B = 16'hb971;
	ans = 16'hb4b3;
	#20
	A = 16'hb2d3;
	B = 16'hbb57;
	ans = 16'h3243;
	#20
	A = 16'hb2d9;
	B = 16'h34bc;
	ans = 16'hac0d;
	#20
	A = 16'h31fb;
	B = 16'h36e4;
	ans = 16'h2d27;
	#20
	A = 16'hac7a;
	B = 16'hb58e;
	ans = 16'h2637;
	#20
	A = 16'h3486;
	B = 16'hb9b1;
	ans = 16'hb270;
	#20
	A = 16'hb98e;
	B = 16'ha8b2;
	ans = 16'h2685;
	#20
	A = 16'h3909;
	B = 16'hb71e;
	ans = 16'hb47b;
	#20
	A = 16'hb01b;
	B = 16'h35c9;
	ans = 16'ha9f0;
	#20
	A = 16'hb72f;
	B = 16'hb1e1;
	ans = 16'h2d47;
	#20
	A = 16'hbb4e;
	B = 16'hb0ef;
	ans = 16'h3081;
	#20
	A = 16'h2e15;
	B = 16'h34a1;
	ans = 16'h270a;
	#20
	A = 16'h2c07;
	B = 16'h3849;
	ans = 16'h2850;
	#20
	A = 16'h3ac1;
	B = 16'ha855;
	ans = 16'ha751;
	#20
	A = 16'h3989;
	B = 16'h38e0;
	ans = 16'h36bf;
	#20
	A = 16'h3a18;
	B = 16'hb887;
	ans = 16'hb6e6;
	#20
	A = 16'hb8df;
	B = 16'h3926;
	ans = 16'hb645;
	#20
	A = 16'h2c33;
	B = 16'hb933;
	ans = 16'ha975;
	#20
	A = 16'hb515;
	B = 16'h3270;
	ans = 16'hac17;
	#20
	A = 16'h37db;
	B = 16'h344f;
	ans = 16'h303b;
	#20
	A = 16'hbb2c;
	B = 16'hb7f6;
	ans = 16'h3723;
	#20
	A = 16'hb879;
	B = 16'hbbb0;
	ans = 16'h384c;
	#20
	A = 16'h3b49;
	B = 16'had3f;
	ans = 16'hacc7;
	#20
	A = 16'hb9cb;
	B = 16'hba8d;
	ans = 16'h38be;
	#20
	A = 16'hba25;
	B = 16'hb936;
	ans = 16'h3801;
	#20
	A = 16'hb95c;
	B = 16'hbb1f;
	ans = 16'h38c5;
	#20
	A = 16'hacd2;
	B = 16'h3894;
	ans = 16'ha984;
	#20
	A = 16'h33dd;
	B = 16'h33ee;
	ans = 16'h2bcb;
	#20
	A = 16'h398a;
	B = 16'h390d;
	ans = 16'h36ff;
	#20
	A = 16'h3a77;
	B = 16'hbbc6;
	ans = 16'hba48;
	#20
	A = 16'h37ae;
	B = 16'h380e;
	ans = 16'h33c9;
	#20
	A = 16'h3461;
	B = 16'h3495;
	ans = 16'h2d04;
	#20
	A = 16'h3732;
	B = 16'h33c3;
	ans = 16'h2efb;
	#20
	A = 16'h3a18;
	B = 16'hb975;
	ans = 16'hb828;
	#20
	A = 16'h3992;
	B = 16'hbb10;
	ans = 16'hb8eb;
	#20
	A = 16'h2ef1;
	B = 16'hb593;
	ans = 16'ha8d6;
	#20
	A = 16'h318c;
	B = 16'hb882;
	ans = 16'hae40;
	#20
	A = 16'h2984;
	B = 16'hac5b;
	ans = 16'h9a01;
	#20
	A = 16'h3a0c;
	B = 16'h3af5;
	ans = 16'h3942;
	#20
	A = 16'hb920;
	B = 16'h396f;
	ans = 16'hb6f6;
	#20
	A = 16'hb8f5;
	B = 16'h3825;
	ans = 16'hb523;
	#20
	A = 16'h38b5;
	B = 16'hb9f7;
	ans = 16'hb705;
	#20
	A = 16'hb63b;
	B = 16'h3a7b;
	ans = 16'hb50c;
	#20
	A = 16'h381a;
	B = 16'h37dc;
	ans = 16'h3408;
	#20
	A = 16'h3a46;
	B = 16'hb0b9;
	ans = 16'haf68;
	#20
	A = 16'hb846;
	B = 16'hb4d8;
	ans = 16'h312d;
	#20
	A = 16'h3b75;
	B = 16'h3ab9;
	ans = 16'h3a44;
	#20
	A = 16'hba82;
	B = 16'h3600;
	ans = 16'hb4e2;
	#20
	A = 16'hb7c4;
	B = 16'hb564;
	ans = 16'h313c;
	#20
	A = 16'h3bb8;
	B = 16'h2f7a;
	ans = 16'h2f37;
	#20
	A = 16'h3240;
	B = 16'hb9b1;
	ans = 16'hb072;
	#20
	A = 16'h360c;
	B = 16'h3adc;
	ans = 16'h352f;
	#20
	A = 16'hab5d;
	B = 16'hb99d;
	ans = 16'h292b;
	#20
	A = 16'hb9e4;
	B = 16'h2958;
	ans = 16'ha7df;
	#20
	A = 16'h3add;
	B = 16'h3845;
	ans = 16'h3753;
	#20
	A = 16'had35;
	B = 16'hbbae;
	ans = 16'h2d00;
	#20
	A = 16'h3847;
	B = 16'h395f;
	ans = 16'h35be;
	#20
	A = 16'h393f;
	B = 16'h3762;
	ans = 16'h34d7;
	#20
	A = 16'hb8ee;
	B = 16'hb634;
	ans = 16'h33a5;
	#20
	A = 16'h38aa;
	B = 16'hb778;
	ans = 16'hb45b;
	#20
	A = 16'hb8ef;
	B = 16'hb04f;
	ans = 16'h2d50;
	#20
	A = 16'h39ea;
	B = 16'hbb17;
	ans = 16'hb93e;
	#20
	A = 16'h2f09;
	B = 16'h3afe;
	ans = 16'h2e26;
	#20
	A = 16'hbb7a;
	B = 16'hb515;
	ans = 16'h34c0;
	#20
	A = 16'h3950;
	B = 16'hb825;
	ans = 16'hb581;
	#20
	A = 16'h3839;
	B = 16'habe4;
	ans = 16'ha82a;
	#20
	A = 16'h3483;
	B = 16'hb645;
	ans = 16'haf12;
	#20
	A = 16'hb6c7;
	B = 16'h3bbb;
	ans = 16'hb68d;
	#20
	A = 16'hba86;
	B = 16'h3759;
	ans = 16'hb5fe;
	#20
	A = 16'h3930;
	B = 16'hb528;
	ans = 16'hb2b0;
	#20
	A = 16'h397b;
	B = 16'hbbc2;
	ans = 16'hb951;
	#20
	A = 16'hb564;
	B = 16'hb56b;
	ans = 16'h2f4d;
	#20
	A = 16'haadc;
	B = 16'h392e;
	ans = 16'ha871;
	#20
	A = 16'h3737;
	B = 16'h3819;
	ans = 16'h3364;
	#20
	A = 16'h3911;
	B = 16'hb2a8;
	ans = 16'hb037;
	#20
	A = 16'hb06d;
	B = 16'h3879;
	ans = 16'hacf3;
	#20
	A = 16'hace3;
	B = 16'h3a20;
	ans = 16'hab7c;
	#20
	A = 16'h3bc6;
	B = 16'h2c30;
	ans = 16'h2c12;
	#20
	A = 16'hb556;
	B = 16'h346f;
	ans = 16'hadea;
	#20
	A = 16'h38bc;
	B = 16'hb9f0;
	ans = 16'hb707;
	#20
	A = 16'h3813;
	B = 16'h347b;
	ans = 16'h3090;
	#20
	A = 16'hb82f;
	B = 16'hb127;
	ans = 16'h2d64;
	#20
	A = 16'hbb9d;
	B = 16'hb36a;
	ans = 16'h330e;
	#20
	A = 16'h29d4;
	B = 16'h3956;
	ans = 16'h27c6;
	#20
	A = 16'h3bfa;
	B = 16'h2ce5;
	ans = 16'h2ce1;
	#20
	A = 16'h36c6;
	B = 16'h3663;
	ans = 16'h3168;
	#20
	A = 16'hbbb6;
	B = 16'h2aa2;
	ans = 16'haa65;
	#20
	A = 16'h34ad;
	B = 16'h3be1;
	ans = 16'h349b;
	#20
	A = 16'hb9d0;
	B = 16'h38b9;
	ans = 16'hb6dd;
	#20
	A = 16'h2ed0;
	B = 16'h3aab;
	ans = 16'h2dae;
	#20
	A = 16'h2e5f;
	B = 16'hb74f;
	ans = 16'ha9d2;
	#20
	A = 16'h39a4;
	B = 16'hb18e;
	ans = 16'hafd5;
	#20
	A = 16'h3aaf;
	B = 16'h3a2d;
	ans = 16'h3929;
	#20
	A = 16'h3322;
	B = 16'h34a3;
	ans = 16'h2c22;
	#20
	A = 16'h3246;
	B = 16'h99a2;
	ans = 16'h906b;
	#20
	A = 16'hb788;
	B = 16'h3849;
	ans = 16'hb409;
	#20
	A = 16'hb4be;
	B = 16'hba0d;
	ans = 16'h332c;
	#20
	A = 16'hb60f;
	B = 16'h392a;
	ans = 16'hb3d2;
	#20
	A = 16'hbae2;
	B = 16'h3bce;
	ans = 16'hbab7;
	#20
	A = 16'h3821;
	B = 16'hb9d4;
	ans = 16'hb604;
	#20
	A = 16'hbbc2;
	B = 16'hba91;
	ans = 16'h3a5e;
	#20
	A = 16'h3aef;
	B = 16'hb47e;
	ans = 16'hb3c9;
	#20
	A = 16'hb0d6;
	B = 16'hb7e9;
	ans = 16'h2cc8;
	#20
	A = 16'hb14c;
	B = 16'h3aa5;
	ans = 16'hb066;
	#20
	A = 16'h376a;
	B = 16'h3647;
	ans = 16'h31d1;
	#20
	A = 16'h37f3;
	B = 16'h38d8;
	ans = 16'h34d0;
	#20
	A = 16'h3aa8;
	B = 16'h3ade;
	ans = 16'h39b7;
	#20
	A = 16'h383e;
	B = 16'h3a33;
	ans = 16'h3693;
	#20
	A = 16'h39d9;
	B = 16'h39a8;
	ans = 16'h3822;
	#20
	A = 16'hb987;
	B = 16'hb3a1;
	ans = 16'h3145;
	#20
	A = 16'h25cf;
	B = 16'hb440;
	ans = 16'h9e2c;
	#20
	A = 16'hba10;
	B = 16'hbbd4;
	ans = 16'h39ef;
	#20
	A = 16'h3520;
	B = 16'h3bd1;
	ans = 16'h3502;
	#20
	A = 16'hb2f6;
	B = 16'h2f00;
	ans = 16'ha617;
	#20
	A = 16'h3a0c;
	B = 16'h387f;
	ans = 16'h36cc;
	#20
	A = 16'h38a2;
	B = 16'hbbce;
	ans = 16'hb885;
	#20
	A = 16'h3514;
	B = 16'h3928;
	ans = 16'h328c;
	#20
	A = 16'h3a73;
	B = 16'hb8cf;
	ans = 16'hb7c1;
	#20
	A = 16'h34e3;
	B = 16'h3b41;
	ans = 16'h346e;
	#20
	A = 16'h383c;
	B = 16'h3737;
	ans = 16'h33a3;
	#20
	A = 16'hbbcc;
	B = 16'h30ea;
	ans = 16'hb0ca;
	#20
	A = 16'h36ee;
	B = 16'hbabd;
	ans = 16'hb5d6;
	#20
	A = 16'ha817;
	B = 16'h3943;
	ans = 16'ha561;
	#20
	A = 16'h30c6;
	B = 16'h3a1a;
	ans = 16'h2f48;
	#20
	A = 16'hb51d;
	B = 16'hb8da;
	ans = 16'h3234;
	#20
	A = 16'h2597;
	B = 16'h3bde;
	ans = 16'h257f;
	#20
	A = 16'h3a99;
	B = 16'h3aa1;
	ans = 16'h3978;
	#20
	A = 16'hba42;
	B = 16'hace8;
	ans = 16'h2bad;
	#20
	A = 16'h3bb0;
	B = 16'h158b;
	ans = 16'h1554;
	#20
	A = 16'h3576;
	B = 16'hb9b6;
	ans = 16'hb3cc;
	#20
	A = 16'h38ee;
	B = 16'h3621;
	ans = 16'h338e;
	#20
	A = 16'h3903;
	B = 16'h3bea;
	ans = 16'h38f5;
	#20
	A = 16'hb6cb;
	B = 16'hba6c;
	ans = 16'h3574;
	#20
	A = 16'hb183;
	B = 16'hb7e5;
	ans = 16'h2d70;
	#20
	A = 16'h39d7;
	B = 16'h28f9;
	ans = 16'h2743;
	#20
	A = 16'h3485;
	B = 16'h3b39;
	ans = 16'h3415;
	#20
	A = 16'hb4b1;
	B = 16'h37c1;
	ans = 16'hb08c;
	#20
	A = 16'hb8a6;
	B = 16'hb308;
	ans = 16'h3016;
	#20
	A = 16'hba94;
	B = 16'h2edf;
	ans = 16'hada6;
	#20
	A = 16'hb075;
	B = 16'hb720;
	ans = 16'h2bf0;
	#20
	A = 16'h3576;
	B = 16'h36d5;
	ans = 16'h30aa;
	#20
	A = 16'hb700;
	B = 16'h36f5;
	ans = 16'hb216;
	#20
	A = 16'h367b;
	B = 16'hb2f1;
	ans = 16'had9f;
	#20
	A = 16'hbbbd;
	B = 16'hacc2;
	ans = 16'h2c9a;
	#20
	A = 16'hbaae;
	B = 16'h3935;
	ans = 16'hb859;
	#20
	A = 16'h3741;
	B = 16'hb8fb;
	ans = 16'hb484;
	#20
	A = 16'hbbb2;
	B = 16'h357c;
	ans = 16'hb547;
	#20
	A = 16'h3bdc;
	B = 16'h3178;
	ans = 16'h315f;
	#20
	A = 16'hbad9;
	B = 16'h3140;
	ans = 16'hb07e;
	#20
	A = 16'h36b0;
	B = 16'h2e33;
	ans = 16'h292f;
	#20
	A = 16'h3ad6;
	B = 16'h392d;
	ans = 16'h386c;
	#20
	A = 16'hbb61;
	B = 16'h3a0b;
	ans = 16'hb993;
	#20
	A = 16'h28a3;
	B = 16'h2f85;
	ans = 16'h1c5c;
	#20
	A = 16'hb7b2;
	B = 16'h387f;
	ans = 16'hb453;
	#20
	A = 16'hb468;
	B = 16'hbb93;
	ans = 16'h342c;
	#20
	A = 16'h35d5;
	B = 16'hb417;
	ans = 16'hadf7;
	#20
	A = 16'hb278;
	B = 16'h371f;
	ans = 16'hadc2;
	#20
	A = 16'h3984;
	B = 16'h3bbe;
	ans = 16'h3956;
	#20
	A = 16'h3334;
	B = 16'h37f2;
	ans = 16'h2f27;
	#20
	A = 16'hbb03;
	B = 16'h375d;
	ans = 16'hb674;
	#20
	A = 16'hb63d;
	B = 16'h389c;
	ans = 16'hb330;
	#20
	A = 16'h35af;
	B = 16'h1dad;
	ans = 16'h1808;
	#20
	A = 16'h3b75;
	B = 16'hbbbb;
	ans = 16'hbb35;
	#20
	A = 16'h3881;
	B = 16'h3802;
	ans = 16'h3483;
	#20
	A = 16'haec0;
	B = 16'h3b11;
	ans = 16'hadf6;
	#20
	A = 16'h3ae7;
	B = 16'h3a59;
	ans = 16'h397a;
	#20
	A = 16'hb44b;
	B = 16'h3336;
	ans = 16'habbd;
	#20
	A = 16'h340e;
	B = 16'ha6e5;
	ans = 16'h9efd;
	#20
	A = 16'hb5ff;
	B = 16'h2997;
	ans = 16'ha431;
	#20
	A = 16'hb809;
	B = 16'h39bb;
	ans = 16'hb5c8;
	#20
	A = 16'hb9cc;
	B = 16'h3076;
	ans = 16'hae77;
	#20
	A = 16'h2f63;
	B = 16'h35be;
	ans = 16'h294d;
	#20
	A = 16'hb5ed;
	B = 16'ha9f0;
	ans = 16'h2466;
	#20
	A = 16'hbb16;
	B = 16'hb9ac;
	ans = 16'h3906;
	#20
	A = 16'h345a;
	B = 16'hb8b3;
	ans = 16'hb11d;
	#20
	A = 16'hb99d;
	B = 16'h33ce;
	ans = 16'hb17a;
	#20
	A = 16'hbb4c;
	B = 16'hb92d;
	ans = 16'h38b9;
	#20
	A = 16'hb76c;
	B = 16'hb9bd;
	ans = 16'h3553;
	#20
	A = 16'h3bc1;
	B = 16'h3200;
	ans = 16'h31d1;
	#20
	A = 16'hbb88;
	B = 16'h374e;
	ans = 16'hb6e0;
	#20
	A = 16'h3a4d;
	B = 16'h35ab;
	ans = 16'h3477;
	#20
	A = 16'h3b9b;
	B = 16'h3816;
	ans = 16'h37c5;
	#20
	A = 16'h39a0;
	B = 16'h3b28;
	ans = 16'h3908;
	#20
	A = 16'hb9d3;
	B = 16'h36c4;
	ans = 16'hb4ed;
	#20
	A = 16'h366d;
	B = 16'hb905;
	ans = 16'hb408;
	#20
	A = 16'h31cc;
	B = 16'hb4a6;
	ans = 16'haabd;
	#20
	A = 16'hbbeb;
	B = 16'hb0a5;
	ans = 16'h3099;
	#20
	A = 16'h31ba;
	B = 16'h38b4;
	ans = 16'h2ebc;
	#20
	A = 16'h38e3;
	B = 16'hb80b;
	ans = 16'hb4f0;
	#20
	A = 16'hbbc5;
	B = 16'h3a46;
	ans = 16'hba18;
	#20
	A = 16'h3631;
	B = 16'h25e1;
	ans = 16'h208d;
	#20
	A = 16'h38f0;
	B = 16'h3b60;
	ans = 16'h388d;
	#20
	A = 16'hb1c4;
	B = 16'hb571;
	ans = 16'h2bd8;
	#20
	A = 16'hb914;
	B = 16'hae09;
	ans = 16'h2ba9;
	#20
	A = 16'h38f2;
	B = 16'hbb68;
	ans = 16'hb894;
	#20
	A = 16'hbbcb;
	B = 16'hba86;
	ans = 16'h3a5b;
	#20
	A = 16'h2e44;
	B = 16'h3b7f;
	ans = 16'h2ddf;
	#20
	A = 16'h3722;
	B = 16'h3bc7;
	ans = 16'h36ef;
	#20
	A = 16'hbb3e;
	B = 16'h353d;
	ans = 16'hb4be;
	#20
	A = 16'h3693;
	B = 16'hb298;
	ans = 16'had6b;
	#20
	A = 16'h3975;
	B = 16'hbbaa;
	ans = 16'hb93a;
	#20
	A = 16'hb654;
	B = 16'h3bcf;
	ans = 16'hb62d;
	#20
	A = 16'h3402;
	B = 16'h27ab;
	ans = 16'h1faf;
	#20
	A = 16'hbbec;
	B = 16'hbac1;
	ans = 16'h3ab0;
	#20
	A = 16'h3575;
	B = 16'hbb6f;
	ans = 16'hb512;
	#20
	A = 16'hb207;
	B = 16'had79;
	ans = 16'h2420;
	#20
	A = 16'h3839;
	B = 16'hb867;
	ans = 16'hb4a6;
	#20
	A = 16'hb496;
	B = 16'h38a1;
	ans = 16'hb14f;
	#20
	A = 16'h32ee;
	B = 16'hb8b0;
	ans = 16'hb00f;
	#20
	A = 16'hb190;
	B = 16'hb3d0;
	ans = 16'h296f;
	#20
	A = 16'hb827;
	B = 16'ha92b;
	ans = 16'h255d;
	#20
	A = 16'hb7b3;
	B = 16'ha623;
	ans = 16'h21e8;
	#20
	A = 16'h383c;
	B = 16'hbb3c;
	ans = 16'hb7a9;
	#20
	A = 16'h2f6b;
	B = 16'h3ba1;
	ans = 16'h2f13;
	#20
	A = 16'h3a03;
	B = 16'h37eb;
	ans = 16'h35f3;
	#20
	A = 16'hb927;
	B = 16'h389c;
	ans = 16'hb5f0;
	#20
	A = 16'hb8e6;
	B = 16'h2eba;
	ans = 16'hac1e;
	#20
	A = 16'h3b46;
	B = 16'h34dd;
	ans = 16'h346c;
	#20
	A = 16'h3875;
	B = 16'hb823;
	ans = 16'hb49c;
	#20
	A = 16'h3aa8;
	B = 16'h36fb;
	ans = 16'h35cf;
	#20
	A = 16'h36e4;
	B = 16'hb914;
	ans = 16'hb460;
	#20
	A = 16'hb88f;
	B = 16'h3ad8;
	ans = 16'hb7cd;
	#20
	A = 16'h3498;
	B = 16'h3446;
	ans = 16'h2ce8;
	#20
	A = 16'hb8d2;
	B = 16'hb8b8;
	ans = 16'h35b0;
	#20
	A = 16'hafa7;
	B = 16'h3a9b;
	ans = 16'hae52;
	#20
	A = 16'haf79;
	B = 16'hb005;
	ans = 16'h2382;
	#20
	A = 16'hb965;
	B = 16'ha7b8;
	ans = 16'h2534;
	#20
	A = 16'h3a5d;
	B = 16'h3064;
	ans = 16'h2efc;
	#20
	A = 16'h386e;
	B = 16'h3bc9;
	ans = 16'h3850;
	#20
	A = 16'hb361;
	B = 16'hb804;
	ans = 16'h2f68;
	#20
	A = 16'h39fd;
	B = 16'hb89e;
	ans = 16'hb6ea;
	#20
	A = 16'h2c48;
	B = 16'h3423;
	ans = 16'h246d;
	#20
	A = 16'h38a4;
	B = 16'h399f;
	ans = 16'h3685;
	#20
	A = 16'hbb5e;
	B = 16'h3790;
	ans = 16'hb6f7;
	#20
	A = 16'hbae3;
	B = 16'hba63;
	ans = 16'h397f;
	#20
	A = 16'h379c;
	B = 16'hbb88;
	ans = 16'hb72a;
	#20
	A = 16'h30b8;
	B = 16'hbae5;
	ans = 16'hb011;
	#20
	A = 16'h380b;
	B = 16'hb554;
	ans = 16'hb163;
	#20
	A = 16'h37fc;
	B = 16'hb019;
	ans = 16'hac17;
	#20
	A = 16'h3670;
	B = 16'h3719;
	ans = 16'h31b6;
	#20
	A = 16'h395a;
	B = 16'ha01b;
	ans = 16'h9d7e;
	#20
	A = 16'h3a4d;
	B = 16'h358d;
	ans = 16'h345f;
	#20
	A = 16'hb04d;
	B = 16'h2ec9;
	ans = 16'ha34c;
	#20
	A = 16'hba39;
	B = 16'h384a;
	ans = 16'hb6ac;
	#20
	A = 16'ha063;
	B = 16'hb5fd;
	ans = 16'h1a91;
	#20
	A = 16'h3bcc;
	B = 16'hb9d3;
	ans = 16'hb9ad;
	#20
	A = 16'hb6ce;
	B = 16'h2f85;
	ans = 16'haa65;
	#20
	A = 16'had82;
	B = 16'hbb15;
	ans = 16'h2ce0;
	#20
	A = 16'hb980;
	B = 16'h3bd3;
	ans = 16'hb961;
	#20
	A = 16'hb5d4;
	B = 16'hb29b;
	ans = 16'h2cd0;
	#20
	A = 16'h3baf;
	B = 16'h3a19;
	ans = 16'h39db;
	#20
	A = 16'hb938;
	B = 16'hb5b0;
	ans = 16'h336c;
	#20
	A = 16'h389c;
	B = 16'hb4a7;
	ans = 16'hb15c;
	#20
	A = 16'h37c0;
	B = 16'h3922;
	ans = 16'h34f9;
	#20
	A = 16'h2dcf;
	B = 16'hb43d;
	ans = 16'ha628;
	#20
	A = 16'h3b54;
	B = 16'h3a2e;
	ans = 16'h39a9;
	#20
	A = 16'h3b62;
	B = 16'h3a20;
	ans = 16'h39a7;
	#20
	A = 16'hb339;
	B = 16'h3413;
	ans = 16'hab5b;
	#20
	A = 16'hbbd9;
	B = 16'hbadb;
	ans = 16'h3aba;
	#20
	A = 16'h283e;
	B = 16'hb8b7;
	ans = 16'ha500;
	#20
	A = 16'hbba1;
	B = 16'h9c33;
	ans = 16'h1c01;
	#20
	A = 16'h3bf8;
	B = 16'h30e1;
	ans = 16'h30dc;
	#20
	A = 16'h3abd;
	B = 16'h398a;
	ans = 16'h38aa;
	#20
	A = 16'h26af;
	B = 16'h3570;
	ans = 16'h208b;
	#20
	A = 16'h25a7;
	B = 16'hb631;
	ans = 16'ha060;
	#20
	A = 16'hb9e1;
	B = 16'h330b;
	ans = 16'hb12d;
	#20
	A = 16'hb68b;
	B = 16'hbae5;
	ans = 16'h35a4;
	#20
	A = 16'ha808;
	B = 16'ha108;
	ans = 16'hd12;
	#20
	A = 16'hb4ca;
	B = 16'hbb3a;
	ans = 16'h3453;
	#20
	A = 16'h38f0;
	B = 16'h37d0;
	ans = 16'h34d2;
	#20
	A = 16'h380e;
	B = 16'hb996;
	ans = 16'hb5aa;
	#20
	A = 16'h2e8b;
	B = 16'h348f;
	ans = 16'h2775;
	#20
	A = 16'h3400;
	B = 16'hac62;
	ans = 16'ha462;
	#20
	A = 16'h3839;
	B = 16'hba22;
	ans = 16'hb679;
	#20
	A = 16'hb9a1;
	B = 16'h399d;
	ans = 16'hb7e6;
	#20
	A = 16'h3749;
	B = 16'h38a1;
	ans = 16'h3437;
	#20
	A = 16'hb84d;
	B = 16'h3abd;
	ans = 16'hb73f;
	#20
	A = 16'h32c1;
	B = 16'hbb1a;
	ans = 16'hb1ff;
	#20
	A = 16'hb4b4;
	B = 16'h34e9;
	ans = 16'hadc6;
	#20
	A = 16'hb10d;
	B = 16'hb7c0;
	ans = 16'h2ce5;
	#20
	A = 16'h36d7;
	B = 16'h297d;
	ans = 16'h24b1;
	#20
	A = 16'h2e6f;
	B = 16'hbaa3;
	ans = 16'had56;
	#20
	A = 16'hac6a;
	B = 16'h344e;
	ans = 16'ha4c0;
	#20
	A = 16'hb7dd;
	B = 16'hb581;
	ans = 16'h3169;
	#20
	A = 16'hb636;
	B = 16'h348c;
	ans = 16'haf0f;
	#20
	A = 16'hae64;
	B = 16'hba22;
	ans = 16'h2ce6;
	#20
	A = 16'h3bb1;
	B = 16'h39f2;
	ans = 16'h39b7;
	#20
	A = 16'h39ee;
	B = 16'hb3ae;
	ans = 16'hb1b1;
	#20
	A = 16'h2df4;
	B = 16'haa54;
	ans = 16'h9cb6;
	#20
	A = 16'h3a1e;
	B = 16'h32b7;
	ans = 16'h3122;
	#20
	A = 16'hb729;
	B = 16'h266e;
	ans = 16'ha1c1;
	#20
	A = 16'hb588;
	B = 16'hb5fc;
	ans = 16'h3023;
	#20
	A = 16'hb40f;
	B = 16'h2c0d;
	ans = 16'ha41c;
	#20
	A = 16'hb8fd;
	B = 16'h385e;
	ans = 16'hb572;
	#20
	A = 16'h3a25;
	B = 16'h3591;
	ans = 16'h3446;
	#20
	A = 16'hbb46;
	B = 16'h39d4;
	ans = 16'hb94c;
	#20
	A = 16'hb914;
	B = 16'hb864;
	ans = 16'h3593;
	#20
	A = 16'hb5ba;
	B = 16'h36e6;
	ans = 16'hb0f0;
	#20
	A = 16'h3ab5;
	B = 16'h381b;
	ans = 16'h36e2;
	#20
	A = 16'hb806;
	B = 16'h3ae1;
	ans = 16'hb6eb;
	#20
	A = 16'h3b21;
	B = 16'hb9ff;
	ans = 16'hb958;
	#20
	A = 16'hbb15;
	B = 16'hbb05;
	ans = 16'h3a37;
	#20
	A = 16'hb8f2;
	B = 16'h30bd;
	ans = 16'haddc;
	#20
	A = 16'h3a4e;
	B = 16'h38b7;
	ans = 16'h376e;
	#20
	A = 16'hb734;
	B = 16'hb94b;
	ans = 16'h34c4;
	#20
	A = 16'h31a8;
	B = 16'h3bdd;
	ans = 16'h318f;
	#20
	A = 16'hb668;
	B = 16'h289b;
	ans = 16'ha360;
	#20
	A = 16'hbbd4;
	B = 16'h3a8b;
	ans = 16'hba67;
	#20
	A = 16'ha6e3;
	B = 16'hbb35;
	ans = 16'h2634;
	#20
	A = 16'hb098;
	B = 16'ha924;
	ans = 16'h1de7;
	#20
	A = 16'h3677;
	B = 16'h3720;
	ans = 16'h31c2;
	#20
	A = 16'h2d8c;
	B = 16'hb1a7;
	ans = 16'ha3d7;
	#20
	A = 16'h3560;
	B = 16'hb492;
	ans = 16'hae24;
	#20
	A = 16'h385a;
	B = 16'hbba9;
	ans = 16'hb82b;
	#20
	A = 16'h31b1;
	B = 16'hb5f6;
	ans = 16'hac3e;
	#20
	A = 16'hb85a;
	B = 16'hb4e4;
	ans = 16'h3152;
	#20
	A = 16'h3b26;
	B = 16'hbadc;
	ans = 16'hba21;
	#20
	A = 16'h3774;
	B = 16'hb942;
	ans = 16'hb4e6;
	#20
	A = 16'h3a40;
	B = 16'hb8db;
	ans = 16'hb796;
	#20
	A = 16'h3836;
	B = 16'hb14a;
	ans = 16'had91;
	#20
	A = 16'h37c5;
	B = 16'hba55;
	ans = 16'hb626;
	#20
	A = 16'hb40e;
	B = 16'hbb56;
	ans = 16'h3370;
	#20
	A = 16'h2c79;
	B = 16'hb75b;
	ans = 16'ha81d;
	#20
	A = 16'h3765;
	B = 16'hb178;
	ans = 16'had0e;
	#20
	A = 16'h3b9c;
	B = 16'hb0fc;
	ans = 16'hb0be;
	#20
	A = 16'hb8e1;
	B = 16'hb780;
	ans = 16'h3493;
	#20
	A = 16'h39ea;
	B = 16'hb608;
	ans = 16'hb475;
	#20
	A = 16'hb4fa;
	B = 16'hb315;
	ans = 16'h2c68;
	#20
	A = 16'hb8be;
	B = 16'hb666;
	ans = 16'h3396;
	#20
	A = 16'hac7b;
	B = 16'h38cf;
	ans = 16'ha963;
	#20
	A = 16'hb043;
	B = 16'hb681;
	ans = 16'h2aee;
	#20
	A = 16'hb820;
	B = 16'ha93a;
	ans = 16'h2564;
	#20
	A = 16'hb480;
	B = 16'hb862;
	ans = 16'h30ee;
	#20
	A = 16'hba78;
	B = 16'h3ac3;
	ans = 16'hb978;
	#20
	A = 16'hb432;
	B = 16'h3916;
	ans = 16'hb156;
	#20
	A = 16'h281c;
	B = 16'hb627;
	ans = 16'ha252;
	#20
	A = 16'h36bd;
	B = 16'hab89;
	ans = 16'ha659;
	#20
	A = 16'h343d;
	B = 16'hbb6d;
	ans = 16'hb3de;
	#20
	A = 16'h3697;
	B = 16'hb2b5;
	ans = 16'had86;
	#20
	A = 16'h3aed;
	B = 16'h3b4e;
	ans = 16'h3a53;
	#20
	A = 16'h3b87;
	B = 16'h39e4;
	ans = 16'h398b;
	#20
	A = 16'h3a5a;
	B = 16'h328c;
	ans = 16'h3133;
	#20
	A = 16'hba1e;
	B = 16'had2d;
	ans = 16'h2bea;
	#20
	A = 16'h3a3e;
	B = 16'hbb5a;
	ans = 16'hb9bc;
	#20
	A = 16'hb4ef;
	B = 16'hb70d;
	ans = 16'h3059;
	#20
	A = 16'hb89a;
	B = 16'hb603;
	ans = 16'h32ea;
	#20
	A = 16'h3741;
	B = 16'h3a0f;
	ans = 16'h357e;
	#20
	A = 16'hb833;
	B = 16'h3638;
	ans = 16'hb287;
	#20
	A = 16'h3a46;
	B = 16'hbb7b;
	ans = 16'hb9de;
	#20
	A = 16'hb902;
	B = 16'hb7c2;
	ans = 16'h34db;
	#20
	A = 16'hbb5d;
	B = 16'h337b;
	ans = 16'hb2e3;
	#20
	A = 16'hb719;
	B = 16'h30b6;
	ans = 16'hac2e;
	#20
	A = 16'hbaf4;
	B = 16'h3642;
	ans = 16'hb570;
	#20
	A = 16'hb07b;
	B = 16'h3718;
	ans = 16'habf2;
	#20
	A = 16'hb835;
	B = 16'h34b7;
	ans = 16'hb0f5;
	#20
	A = 16'hb5e4;
	B = 16'h3ac6;
	ans = 16'hb4fd;
	#20
	A = 16'h3a85;
	B = 16'hae00;
	ans = 16'hace4;
	#20
	A = 16'h3802;
	B = 16'hb2f6;
	ans = 16'haef9;
	#20
	A = 16'had7f;
	B = 16'ha3bd;
	ans = 16'h1551;
	#20
	A = 16'hb2b6;
	B = 16'h2e76;
	ans = 16'ha56b;
	#20
	A = 16'h3950;
	B = 16'h39e2;
	ans = 16'h37d0;
	#20
	A = 16'hb463;
	B = 16'hb630;
	ans = 16'h2ec9;
	#20
	A = 16'hb8b0;
	B = 16'hbabb;
	ans = 16'h37e3;
	#20
	A = 16'hb923;
	B = 16'h3108;
	ans = 16'hae76;
	#20
	A = 16'hbaae;
	B = 16'h323e;
	ans = 16'hb136;
	#20
	A = 16'h39db;
	B = 16'hb8eb;
	ans = 16'hb733;
	#20
	A = 16'h3896;
	B = 16'h30d0;
	ans = 16'h2d84;
	#20
	A = 16'ha33a;
	B = 16'h3853;
	ans = 16'h9fd0;
	#20
	A = 16'hb72f;
	B = 16'h3aac;
	ans = 16'hb5fe;
	#20
	A = 16'hbb18;
	B = 16'h2c91;
	ans = 16'hac0d;
	#20
	A = 16'haa46;
	B = 16'hba24;
	ans = 16'h28d1;
	#20
	A = 16'h3812;
	B = 16'h33a9;
	ans = 16'h2fcb;
	#20
	A = 16'hb95a;
	B = 16'hb623;
	ans = 16'h341b;
	#20
	A = 16'hbb16;
	B = 16'hba6d;
	ans = 16'h39b1;
	#20
	A = 16'h3427;
	B = 16'h38bd;
	ans = 16'h30eb;
	#20
	A = 16'h38b5;
	B = 16'h3a84;
	ans = 16'h37ab;
	#20
	A = 16'hb923;
	B = 16'hb9cd;
	ans = 16'h3773;
	#20
	A = 16'hb921;
	B = 16'hba66;
	ans = 16'h381a;
	#20
	A = 16'h9f2f;
	B = 16'h30ad;
	ans = 16'h9433;
	#20
	A = 16'hbbbb;
	B = 16'h3bf6;
	ans = 16'hbbb1;
	#20
	A = 16'h3980;
	B = 16'had28;
	ans = 16'hab17;
	#20
	A = 16'hbb4d;
	B = 16'hb823;
	ans = 16'h378d;
	#20
	A = 16'h392d;
	B = 16'hb855;
	ans = 16'hb59b;
	#20
	A = 16'h35b6;
	B = 16'h3b44;
	ans = 16'h3530;
	#20
	A = 16'hba67;
	B = 16'hb88c;
	ans = 16'h3747;
	#20
	A = 16'h9b30;
	B = 16'hbaae;
	ans = 16'h1a00;
	#20
	A = 16'h388b;
	B = 16'hba90;
	ans = 16'hb774;
	#20
	A = 16'h38b9;
	B = 16'hbab5;
	ans = 16'hb7eb;
	#20
	A = 16'h33ee;
	B = 16'hbac4;
	ans = 16'hb2b5;
	#20
	A = 16'h355e;
	B = 16'hb90c;
	ans = 16'hb2c6;
	#20
	A = 16'hb807;
	B = 16'h31a4;
	ans = 16'hadae;
	#20
	A = 16'h31cd;
	B = 16'h3952;
	ans = 16'h2fb7;
	#20
	A = 16'hbb88;
	B = 16'h3547;
	ans = 16'hb4f8;
	#20
	A = 16'hba28;
	B = 16'hb8f7;
	ans = 16'h37a4;
	#20
	A = 16'h3bb7;
	B = 16'h33fe;
	ans = 16'h33b5;
	#20
	A = 16'h395b;
	B = 16'hb229;
	ans = 16'hb020;
	#20
	A = 16'hbbd1;
	B = 16'hb895;
	ans = 16'h387a;
	#20
	A = 16'hb02b;
	B = 16'h35e4;
	ans = 16'haa23;
	#20
	A = 16'hbb38;
	B = 16'hb524;
	ans = 16'h34a3;
	#20
	A = 16'hb6b4;
	B = 16'hb997;
	ans = 16'h34af;
	#20
	A = 16'h39c4;
	B = 16'hb02c;
	ans = 16'hae03;
	#20
	A = 16'h333a;
	B = 16'hac67;
	ans = 16'ha3f4;
	#20
	A = 16'hbb58;
	B = 16'h3b34;
	ans = 16'hba9d;
	#20
	A = 16'hbbf3;
	B = 16'hb84c;
	ans = 16'h3845;
	#20
	A = 16'h3995;
	B = 16'hba85;
	ans = 16'hb88d;
	#20
	A = 16'h364b;
	B = 16'h3a80;
	ans = 16'h351d;
	#20
	A = 16'h3b9b;
	B = 16'hb48d;
	ans = 16'hb454;
	#20
	A = 16'h2f5b;
	B = 16'ha388;
	ans = 16'h96ed;
	#20
	A = 16'haa73;
	B = 16'h3a01;
	ans = 16'ha8d7;
	#20
	A = 16'h2c56;
	B = 16'h36ad;
	ans = 16'h273d;
	#20
	A = 16'h3aea;
	B = 16'h3079;
	ans = 16'h2fbb;
	#20
	A = 16'h363c;
	B = 16'h34e3;
	ans = 16'h2f9e;
	#20
	A = 16'hb539;
	B = 16'h3459;
	ans = 16'hadad;
	#20
	A = 16'hbb55;
	B = 16'hb4a9;
	ans = 16'h3445;
	#20
	A = 16'h39fc;
	B = 16'hb98e;
	ans = 16'hb828;
	#20
	A = 16'h2bae;
	B = 16'h33b5;
	ans = 16'h2366;
	#20
	A = 16'hb9f8;
	B = 16'h26b3;
	ans = 16'ha500;
	#20
	A = 16'h380d;
	B = 16'h380d;
	ans = 16'h341a;
	#20
	A = 16'h38fb;
	B = 16'h33ac;
	ans = 16'h30c7;
	#20
	A = 16'hb5aa;
	B = 16'h3a53;
	ans = 16'hb47a;
	#20
	A = 16'hb7e8;
	B = 16'h389e;
	ans = 16'hb490;
	#20
	A = 16'haf32;
	B = 16'h375a;
	ans = 16'haa9d;
	#20
	A = 16'h2d88;
	B = 16'hb0b7;
	ans = 16'ha285;
	#20
	A = 16'hb8dd;
	B = 16'h396a;
	ans = 16'hb695;
	#20
	A = 16'h2e05;
	B = 16'hae96;
	ans = 16'ha0f5;
	#20
	A = 16'hb9f3;
	B = 16'h3b2f;
	ans = 16'hb958;
	#20
	A = 16'h3b2a;
	B = 16'hbaa7;
	ans = 16'hb9f5;
	#20
	A = 16'hb230;
	B = 16'hbac3;
	ans = 16'h313b;
	#20
	A = 16'hac9d;
	B = 16'h3651;
	ans = 16'ha749;
	#20
	A = 16'h3af5;
	B = 16'habb0;
	ans = 16'haaaf;
	#20
	A = 16'h3a2e;
	B = 16'hba63;
	ans = 16'hb8ef;
	#20
	A = 16'h30f7;
	B = 16'hb8e3;
	ans = 16'hae11;
	#20
	A = 16'h3386;
	B = 16'h3749;
	ans = 16'h2eda;
	#20
	A = 16'h3977;
	B = 16'h3a1b;
	ans = 16'h382c;
	#20
	A = 16'h3589;
	B = 16'h3932;
	ans = 16'h3330;
	#20
	A = 16'had74;
	B = 16'hb9b2;
	ans = 16'h2bc4;
	#20
	A = 16'h3a2f;
	B = 16'h3a25;
	ans = 16'h38c0;
	#20
	A = 16'hb85f;
	B = 16'h3765;
	ans = 16'hb40a;
	#20
	A = 16'h18e9;
	B = 16'hb460;
	ans = 16'h915f;
	#20
	A = 16'h2c99;
	B = 16'h39c7;
	ans = 16'h2aa4;
	#20
	A = 16'hb21b;
	B = 16'hb29d;
	ans = 16'h290c;
	#20
	A = 16'ha6a9;
	B = 16'h34aa;
	ans = 16'h9fc4;
	#20
	A = 16'h383a;
	B = 16'h2f0f;
	ans = 16'h2b75;
	#20
	A = 16'hbbbc;
	B = 16'hbb43;
	ans = 16'h3b05;
	#20
	A = 16'hb503;
	B = 16'hb5b7;
	ans = 16'h2f29;
	#20
	A = 16'h3af7;
	B = 16'h37a8;
	ans = 16'h36aa;
	#20
	A = 16'h3844;
	B = 16'h38f4;
	ans = 16'h3548;
	#20
	A = 16'h301d;
	B = 16'hbac4;
	ans = 16'haef5;
	#20
	A = 16'h39b0;
	B = 16'h3543;
	ans = 16'h337b;
	#20
	A = 16'h2a6f;
	B = 16'h3b5d;
	ans = 16'h29ec;
	#20
	A = 16'hbba9;
	B = 16'h3755;
	ans = 16'hb705;
	#20
	A = 16'h3b51;
	B = 16'hb583;
	ans = 16'hb50a;
	#20
	A = 16'h3693;
	B = 16'h3897;
	ans = 16'h338b;
	#20
	A = 16'h3a04;
	B = 16'h3b24;
	ans = 16'h395f;
	#20
	A = 16'hb559;
	B = 16'h37f4;
	ans = 16'hb151;
	#20
	A = 16'h39b6;
	B = 16'hbbb8;
	ans = 16'hb983;
	#20
	A = 16'hb938;
	B = 16'h3bef;
	ans = 16'hb92d;
	#20
	A = 16'hb0c8;
	B = 16'hb9eb;
	ans = 16'h2f13;
	#20
	A = 16'h32e7;
	B = 16'hb5ed;
	ans = 16'had1d;
	#20
	A = 16'hb9cb;
	B = 16'ha17d;
	ans = 16'h1ff3;
	#20
	A = 16'h3adc;
	B = 16'h39a5;
	ans = 16'h38d7;
	#20
	A = 16'ha99f;
	B = 16'h37bf;
	ans = 16'ha571;
	#20
	A = 16'h2cac;
	B = 16'h3890;
	ans = 16'h2954;
	#20
	A = 16'h3618;
	B = 16'hb52c;
	ans = 16'hafe1;
	#20
	A = 16'h3a6e;
	B = 16'h2d93;
	ans = 16'h2c7b;
	#20
	A = 16'hb353;
	B = 16'hbb54;
	ans = 16'h32b6;
	#20
	A = 16'hb6de;
	B = 16'hbbd4;
	ans = 16'h36b8;
	#20
	A = 16'hb159;
	B = 16'ha510;
	ans = 16'h1ac5;
	#20
	A = 16'hb807;
	B = 16'h38d0;
	ans = 16'hb4d8;
	#20
	A = 16'h3545;
	B = 16'h3432;
	ans = 16'h2d87;
	#20
	A = 16'hb1ac;
	B = 16'h33b3;
	ans = 16'ha975;
	#20
	A = 16'had76;
	B = 16'h37d3;
	ans = 16'ha957;
	#20
	A = 16'hb3a6;
	B = 16'h3b04;
	ans = 16'hb2b5;
	#20
	A = 16'h3884;
	B = 16'hb963;
	ans = 16'hb615;
	#20
	A = 16'h36f5;
	B = 16'hbb92;
	ans = 16'hb695;
	#20
	A = 16'hba09;
	B = 16'ha3be;
	ans = 16'h21d7;
	#20
	A = 16'h3800;
	B = 16'h35fa;
	ans = 16'h31fa;
	#20
	A = 16'hb9cd;
	B = 16'hb513;
	ans = 16'h335c;
	#20
	A = 16'hb51f;
	B = 16'hb8ff;
	ans = 16'h3265;
	#20
	A = 16'hb9f6;
	B = 16'hbbe7;
	ans = 16'h39e3;
	#20
	A = 16'h389c;
	B = 16'h3b18;
	ans = 16'h3816;
	#20
	A = 16'hb908;
	B = 16'hb9aa;
	ans = 16'h3720;
	#20
	A = 16'hb36e;
	B = 16'h2891;
	ans = 16'ha03e;
	#20
	A = 16'h353a;
	B = 16'h33b8;
	ans = 16'h2d0b;
	#20
	A = 16'h3635;
	B = 16'haf05;
	ans = 16'ha972;
	#20
	A = 16'h37cb;
	B = 16'hbb96;
	ans = 16'hb764;
	#20
	A = 16'h36f1;
	B = 16'h3af7;
	ans = 16'h360b;
	#20
	A = 16'h36f2;
	B = 16'hb9c5;
	ans = 16'hb502;
	#20
	A = 16'hbb3d;
	B = 16'h38ee;
	ans = 16'hb876;
	#20
	A = 16'hb5aa;
	B = 16'hb8b1;
	ans = 16'h32a5;
	#20
	A = 16'h3af0;
	B = 16'hba11;
	ans = 16'hb943;
	#20
	A = 16'hb8f6;
	B = 16'h3118;
	ans = 16'hae51;
	#20
	A = 16'h3bc5;
	B = 16'h3241;
	ans = 16'h3213;
	#20
	A = 16'hb6e0;
	B = 16'hbb09;
	ans = 16'h360c;
	#20
	A = 16'hb65b;
	B = 16'h37f1;
	ans = 16'hb24f;
	#20
	A = 16'h3a83;
	B = 16'h39b4;
	ans = 16'h38a4;
	#20
	A = 16'hbb7b;
	B = 16'hb6a0;
	ans = 16'h3632;
	#20
	A = 16'h347a;
	B = 16'hb96f;
	ans = 16'hb215;
	#20
	A = 16'h34c1;
	B = 16'h3baf;
	ans = 16'h3491;
	#20
	A = 16'hb220;
	B = 16'h36c9;
	ans = 16'had32;
	#20
	A = 16'h20ed;
	B = 16'hb8dd;
	ans = 16'h9dfd;
	#20
	A = 16'h3a0d;
	B = 16'h3930;
	ans = 16'h37d9;
	#20
	A = 16'h3846;
	B = 16'hb055;
	ans = 16'haca1;
	#20
	A = 16'h3a10;
	B = 16'h2902;
	ans = 16'h2797;
	#20
	A = 16'hbac8;
	B = 16'h38df;
	ans = 16'hb821;
	#20
	A = 16'h2853;
	B = 16'h3a0a;
	ans = 16'h2687;
	#20
	A = 16'h3b0e;
	B = 16'hb1db;
	ans = 16'hb12a;
	#20
	A = 16'hb6f3;
	B = 16'h3669;
	ans = 16'hb191;
	#20
	A = 16'hb612;
	B = 16'hbaaa;
	ans = 16'h350e;
	#20
	A = 16'hb57c;
	B = 16'h38ba;
	ans = 16'hb27b;
	#20
	A = 16'hb97d;
	B = 16'hb889;
	ans = 16'h3639;
	#20
	A = 16'h2f2f;
	B = 16'hb91d;
	ans = 16'hac97;
	#20
	A = 16'h3b3e;
	B = 16'hb4ff;
	ans = 16'hb486;
	#20
	A = 16'hb156;
	B = 16'h3853;
	ans = 16'hadc5;
	#20
	A = 16'h366d;
	B = 16'h2c82;
	ans = 16'h273e;
	#20
	A = 16'h33d9;
	B = 16'hb822;
	ans = 16'hb00e;
	#20
	A = 16'h2c0e;
	B = 16'h3679;
	ans = 16'h2690;
	#20
	A = 16'h3014;
	B = 16'ha94c;
	ans = 16'h9d66;
	#20
	A = 16'h32c0;
	B = 16'hb83a;
	ans = 16'haf22;
	#20
	A = 16'hb5e9;
	B = 16'hbb61;
	ans = 16'h3574;
	#20
	A = 16'hb626;
	B = 16'hbb2a;
	ans = 16'h3582;
	#20
	A = 16'h39cd;
	B = 16'hb2d7;
	ans = 16'hb0f6;
	#20
	A = 16'h3636;
	B = 16'h20d3;
	ans = 16'h1b7e;
	#20
	A = 16'h33ab;
	B = 16'h3a7f;
	ans = 16'h323a;
	#20
	A = 16'h34cc;
	B = 16'hba93;
	ans = 16'hb3e2;
	#20
	A = 16'h3bb6;
	B = 16'ha887;
	ans = 16'ha85d;
	#20
	A = 16'h3a51;
	B = 16'h320b;
	ans = 16'h30c5;
	#20
	A = 16'hb985;
	B = 16'h31d7;
	ans = 16'hb007;
	#20
	A = 16'hba45;
	B = 16'h3259;
	ans = 16'hb0f9;
	#20
	A = 16'h39d8;
	B = 16'hb5fa;
	ans = 16'hb45e;
	#20
	A = 16'h1f05;
	B = 16'hb98b;
	ans = 16'h9cdd;
	#20
	A = 16'hb141;
	B = 16'h3a29;
	ans = 16'hb00c;
	#20
	A = 16'hbb2e;
	B = 16'h3a3c;
	ans = 16'hb998;
	#20
	A = 16'h37c3;
	B = 16'h3743;
	ans = 16'h330c;
	#20
	A = 16'hb7ab;
	B = 16'h38e2;
	ans = 16'hb4ae;
	#20
	A = 16'hb375;
	B = 16'h3a77;
	ans = 16'hb207;
	#20
	A = 16'h3306;
	B = 16'h362b;
	ans = 16'h2d6a;
	#20
	A = 16'hba87;
	B = 16'hb874;
	ans = 16'h3744;
	#20
	A = 16'hb98e;
	B = 16'h347a;
	ans = 16'hb237;
	#20
	A = 16'hb8d9;
	B = 16'h30f4;
	ans = 16'hae01;
	#20
	A = 16'h393f;
	B = 16'hbbc1;
	ans = 16'hb916;
	#20
	A = 16'hb1c3;
	B = 16'h370c;
	ans = 16'had13;
	#20
	A = 16'h300c;
	B = 16'h3298;
	ans = 16'h26ac;
	#20
	A = 16'hbab2;
	B = 16'hb88c;
	ans = 16'h379c;
	#20
	A = 16'hb9c0;
	B = 16'hba16;
	ans = 16'h3860;
	#20
	A = 16'hb551;
	B = 16'h3435;
	ans = 16'had97;
	#20
	A = 16'h384f;
	B = 16'hba0f;
	ans = 16'hb687;
	#20
	A = 16'hb83c;
	B = 16'h2678;
	ans = 16'ha2d9;
	#20
	A = 16'h3a30;
	B = 16'hbadf;
	ans = 16'hb950;
	#20
	A = 16'hb674;
	B = 16'h392f;
	ans = 16'hb42e;
	#20
	A = 16'h3a97;
	B = 16'hb947;
	ans = 16'hb859;
	#20
	A = 16'hba0d;
	B = 16'hb925;
	ans = 16'h37c8;
	#20
	A = 16'hbb07;
	B = 16'h3ad8;
	ans = 16'hba03;
	#20
	A = 16'h3983;
	B = 16'hba5a;
	ans = 16'hb860;
	#20
	A = 16'hb6ed;
	B = 16'h3259;
	ans = 16'had7f;
	#20
	A = 16'h3a52;
	B = 16'hba52;
	ans = 16'hb8fe;
	#20
	A = 16'hae5f;
	B = 16'hb487;
	ans = 16'h2736;
	#20
	A = 16'h3953;
	B = 16'hbb40;
	ans = 16'hb8d3;
	#20
	A = 16'h3b12;
	B = 16'h38e8;
	ans = 16'h3856;
	#20
	A = 16'hba58;
	B = 16'hb987;
	ans = 16'h3862;
	#20
	A = 16'hb338;
	B = 16'hba75;
	ans = 16'h31d4;
	#20
	A = 16'hb51d;
	B = 16'h3b77;
	ans = 16'hb4c5;
	#20
	A = 16'ha76e;
	B = 16'h2f08;
	ans = 16'h9a88;
	#20
	A = 16'hb833;
	B = 16'h34c9;
	ans = 16'hb106;
	#20
	A = 16'hb995;
	B = 16'h39e7;
	ans = 16'hb81e;
	#20
	A = 16'hb81f;
	B = 16'h3981;
	ans = 16'hb5ac;
	#20
	A = 16'hbaa4;
	B = 16'h36e9;
	ans = 16'hb5bc;
	#20
	A = 16'hb492;
	B = 16'hbb54;
	ans = 16'h3430;
	#20
	A = 16'hbbb5;
	B = 16'hb664;
	ans = 16'h3628;
	#20
	A = 16'hb382;
	B = 16'hb6bd;
	ans = 16'h2e53;
	#20
	A = 16'h2fd2;
	B = 16'hb4ce;
	ans = 16'ha8b2;
	#20
	A = 16'hb0e9;
	B = 16'h3092;
	ans = 16'ha59c;
	#20
	A = 16'h3153;
	B = 16'h3615;
	ans = 16'h2c0c;
	#20
	A = 16'h301d;
	B = 16'hb615;
	ans = 16'haa41;
	#20
	A = 16'hb131;
	B = 16'hb803;
	ans = 16'h2d35;
	#20
	A = 16'ha7a8;
	B = 16'hb162;
	ans = 16'h1d27;
	#20
	A = 16'hbbd3;
	B = 16'h3a68;
	ans = 16'hba44;
	#20
	A = 16'hb24e;
	B = 16'h360b;
	ans = 16'hacc3;
	#20
	A = 16'h34d0;
	B = 16'h3a1e;
	ans = 16'h335c;
	#20
	A = 16'ha6f9;
	B = 16'h2d88;
	ans = 16'h98d2;
	#20
	A = 16'h39ef;
	B = 16'hb0ea;
	ans = 16'haf4a;
	#20
	A = 16'h3799;
	B = 16'h387f;
	ans = 16'h3445;
	#20
	A = 16'h32a3;
	B = 16'h3b06;
	ans = 16'h31d4;
	#20
	A = 16'h385c;
	B = 16'h3bab;
	ans = 16'h382e;
	#20
	A = 16'hb325;
	B = 16'h361f;
	ans = 16'had77;
	#20
	A = 16'hb554;
	B = 16'h3ab3;
	ans = 16'hb476;
	#20
	A = 16'h3926;
	B = 16'h32de;
	ans = 16'h306b;
	#20
	A = 16'h394b;
	B = 16'hb466;
	ans = 16'hb1d2;
	#20
	A = 16'h3bf1;
	B = 16'h3b18;
	ans = 16'h3b0b;
	#20
	A = 16'h3bc5;
	B = 16'h346d;
	ans = 16'h344c;
	#20
	A = 16'h388c;
	B = 16'hb521;
	ans = 16'hb1d5;
	#20
	A = 16'h3a13;
	B = 16'h34f6;
	ans = 16'h3389;
	#20
	A = 16'hadb9;
	B = 16'h36d8;
	ans = 16'ha8e5;
	#20
	A = 16'hb828;
	B = 16'hbbab;
	ans = 16'h37f8;
	#20
	A = 16'h390c;
	B = 16'h3b58;
	ans = 16'h38a2;
	#20
	A = 16'h303e;
	B = 16'haa41;
	ans = 16'h9ea2;
	#20
	A = 16'h36e1;
	B = 16'hbb86;
	ans = 16'hb678;
	#20
	A = 16'h2c8b;
	B = 16'hb81c;
	ans = 16'ha8ab;
	#20
	A = 16'h3595;
	B = 16'hb39d;
	ans = 16'had50;
	#20
	A = 16'h3aef;
	B = 16'h3305;
	ans = 16'h3215;
	#20
	A = 16'h3638;
	B = 16'hb8c9;
	ans = 16'hb370;
	#20
	A = 16'hb015;
	B = 16'hb3fc;
	ans = 16'h2813;
	#20
	A = 16'ha90a;
	B = 16'h286f;
	ans = 16'h9596;
	#20
	A = 16'h34c0;
	B = 16'hb4fe;
	ans = 16'hadee;
	#20
	A = 16'h31c3;
	B = 16'hab42;
	ans = 16'ha13a;
	#20
	A = 16'hace6;
	B = 16'h3742;
	ans = 16'ha872;
	#20
	A = 16'hbb15;
	B = 16'hb8d4;
	ans = 16'h3846;
	#20
	A = 16'h3795;
	B = 16'h300a;
	ans = 16'h2ba8;
	#20
	A = 16'h354e;
	B = 16'hb414;
	ans = 16'had69;
	#20
	A = 16'h3ab3;
	B = 16'hbb38;
	ans = 16'hba0c;
	#20
	A = 16'h30a9;
	B = 16'hb9c4;
	ans = 16'haeb8;
	#20
	A = 16'hb9ba;
	B = 16'h3bb7;
	ans = 16'hb986;
	#20
	A = 16'h3564;
	B = 16'haf7c;
	ans = 16'ha90b;
	#20
	A = 16'h31d3;
	B = 16'h2ae7;
	ans = 16'h2106;
	#20
	A = 16'h34b0;
	B = 16'h3831;
	ans = 16'h30e9;
	#20
	A = 16'h3b8b;
	B = 16'h3974;
	ans = 16'h3924;
	#20
	A = 16'hb9a7;
	B = 16'hb8e0;
	ans = 16'h36e4;
	#20
	A = 16'h36eb;
	B = 16'hba80;
	ans = 16'hb59f;
	#20
	A = 16'hb82e;
	B = 16'h3985;
	ans = 16'hb5c4;
	#20
	A = 16'h3ad8;
	B = 16'hb6ef;
	ans = 16'hb5ee;
	#20
	A = 16'hb36f;
	B = 16'hbb8e;
	ans = 16'h3305;
	#20
	A = 16'hb0f5;
	B = 16'h38f4;
	ans = 16'hae23;
	#20
	A = 16'hbb04;
	B = 16'hb8a8;
	ans = 16'h3815;
	#20
	A = 16'hb2b1;
	B = 16'hb972;
	ans = 16'h308e;
	#20
	A = 16'hba05;
	B = 16'h321d;
	ans = 16'hb09a;
	#20
	A = 16'ha820;
	B = 16'h3a3b;
	ans = 16'ha66d;
	#20
	A = 16'hb776;
	B = 16'hb5b7;
	ans = 16'h3154;
	#20
	A = 16'hb50f;
	B = 16'hbb02;
	ans = 16'h346e;
	#20
	A = 16'h3981;
	B = 16'h384f;
	ans = 16'h35ee;
	#20
	A = 16'h3a6c;
	B = 16'h35f9;
	ans = 16'h34cb;
	#20
	A = 16'hbaee;
	B = 16'h2bde;
	ans = 16'haad1;
	#20
	A = 16'hb904;
	B = 16'h3aad;
	ans = 16'hb82f;
	#20
	A = 16'h3522;
	B = 16'hb417;
	ans = 16'had40;
	#20
	A = 16'hb928;
	B = 16'h3941;
	ans = 16'hb6c6;
	#20
	A = 16'h935d;
	B = 16'hbb2d;
	ans = 16'h129b;
	#20
	A = 16'h3b6c;
	B = 16'hb95e;
	ans = 16'hb8fb;
	#20
	A = 16'h1f2e;
	B = 16'h2c2f;
	ans = 16'hf82;
	#20
	A = 16'hba42;
	B = 16'h3a6d;
	ans = 16'hb907;
	#20
	A = 16'hb477;
	B = 16'h3bbb;
	ans = 16'hb450;
	#20
	A = 16'h3a42;
	B = 16'hb75f;
	ans = 16'hb5c4;
	#20
	A = 16'h37b0;
	B = 16'hb729;
	ans = 16'hb2e1;
	#20
	A = 16'h361f;
	B = 16'h357b;
	ans = 16'h3031;
	#20
	A = 16'h2ed4;
	B = 16'hb5fa;
	ans = 16'ha91a;
	#20
	A = 16'hb809;
	B = 16'h340d;
	ans = 16'hb016;
	#20
	A = 16'h3547;
	B = 16'h3a0a;
	ans = 16'h33f8;
	#20
	A = 16'h3418;
	B = 16'h3ba9;
	ans = 16'h33d7;
	#20
	A = 16'h3b4a;
	B = 16'h3bf9;
	ans = 16'h3b44;
	#20
	A = 16'h38ef;
	B = 16'h3755;
	ans = 16'h3486;
	#20
	A = 16'h38ed;
	B = 16'hb9ec;
	ans = 16'hb74b;
	#20
	A = 16'hb50f;
	B = 16'h3a73;
	ans = 16'hb414;
	#20
	A = 16'hbadb;
	B = 16'hb9d4;
	ans = 16'h38ff;
	#20
	A = 16'h3ad9;
	B = 16'h3a25;
	ans = 16'h3942;
	#20
	A = 16'hb639;
	B = 16'h343d;
	ans = 16'hae98;
	#20
	A = 16'hb434;
	B = 16'h361e;
	ans = 16'hae6e;
	#20
	A = 16'hbab6;
	B = 16'h314d;
	ans = 16'hb072;
	#20
	A = 16'h381b;
	B = 16'h396a;
	ans = 16'h358f;
	#20
	A = 16'h3aec;
	B = 16'h386b;
	ans = 16'h37a5;
	#20
	A = 16'hb0bc;
	B = 16'h303b;
	ans = 16'ha502;
	#20
	A = 16'hb123;
	B = 16'hb71c;
	ans = 16'h2c91;
	#20
	A = 16'h3b15;
	B = 16'hb86b;
	ans = 16'hb7d2;
	#20
	A = 16'h3746;
	B = 16'hb313;
	ans = 16'hae6f;
	#20
	A = 16'h3b38;
	B = 16'hb5a9;
	ans = 16'hb51b;
	#20
	A = 16'hb9ef;
	B = 16'h2486;
	ans = 16'ha2b6;
	#20
	A = 16'h3ab7;
	B = 16'hbb5e;
	ans = 16'hba2f;
	#20
	A = 16'hb048;
	B = 16'hb0df;
	ans = 16'h2537;
	#20
	A = 16'h3561;
	B = 16'hb5cb;
	ans = 16'hafca;
	#20
	A = 16'hb904;
	B = 16'hb05c;
	ans = 16'h2d77;
	#20
	A = 16'h37fd;
	B = 16'h2242;
	ans = 16'h1e40;
	#20
	A = 16'h34dc;
	B = 16'hb93d;
	ans = 16'hb25d;
	#20
	A = 16'h3981;
	B = 16'hb784;
	ans = 16'hb52c;
	#20
	A = 16'h3854;
	B = 16'hb883;
	ans = 16'hb4e2;
	#20
	A = 16'hb09b;
	B = 16'h350e;
	ans = 16'ha9d2;
	#20
	A = 16'hbb44;
	B = 16'h3147;
	ans = 16'hb0cb;
	#20
	A = 16'hab3c;
	B = 16'h2ca9;
	ans = 16'h9c37;
	#20
	A = 16'hb994;
	B = 16'hb888;
	ans = 16'h3652;
	#20
	A = 16'hba99;
	B = 16'hba32;
	ans = 16'h391c;
	#20
	A = 16'h3197;
	B = 16'hba8c;
	ans = 16'hb093;
	#20
	A = 16'hb32a;
	B = 16'hb993;
	ans = 16'h30fe;
	#20
	A = 16'h380b;
	B = 16'hb7e5;
	ans = 16'hb3fb;
	#20
	A = 16'hb8d3;
	B = 16'hb4ae;
	ans = 16'h31a5;
	#20
	A = 16'hb95f;
	B = 16'hb9a6;
	ans = 16'h3796;
	#20
	A = 16'hb524;
	B = 16'hbbf9;
	ans = 16'h3520;
	#20
	A = 16'h39bf;
	B = 16'h398f;
	ans = 16'h37fc;
	#20
	A = 16'hb9b7;
	B = 16'h3910;
	ans = 16'hb73c;
	#20
	A = 16'h393e;
	B = 16'h3b6e;
	ans = 16'h38de;
	#20
	A = 16'hbb5e;
	B = 16'hb859;
	ans = 16'h3801;
	#20
	A = 16'h3a59;
	B = 16'hb534;
	ans = 16'hb421;
	#20
	A = 16'hb688;
	B = 16'hba41;
	ans = 16'h351b;
	#20
	A = 16'ha560;
	B = 16'hba7d;
	ans = 16'h245c;
	#20
	A = 16'h30f9;
	B = 16'hb4bc;
	ans = 16'ha9e3;
	#20
	A = 16'h2c09;
	B = 16'hb84c;
	ans = 16'ha856;
	#20
	A = 16'hba11;
	B = 16'h34da;
	ans = 16'hb35c;
	#20
	A = 16'hbb47;
	B = 16'hb901;
	ans = 16'h388d;
	#20
	A = 16'h3771;
	B = 16'h39bb;
	ans = 16'h3555;
	#20
	A = 16'h3927;
	B = 16'hb9bd;
	ans = 16'hb764;
	#20
	A = 16'hbbed;
	B = 16'h3bac;
	ans = 16'hbb9a;
	#20
	A = 16'h3723;
	B = 16'hba5c;
	ans = 16'hb5ac;
	#20
	A = 16'hb7df;
	B = 16'hbabf;
	ans = 16'h36a3;
	#20
	A = 16'hba1d;
	B = 16'h3ae4;
	ans = 16'hb944;
	#20
	A = 16'hbb6b;
	B = 16'ha0c7;
	ans = 16'h206e;
	#20
	A = 16'hb975;
	B = 16'h3440;
	ans = 16'hb1cc;
	#20
	A = 16'h3aa5;
	B = 16'h3616;
	ans = 16'h350e;
	#20
	A = 16'h2fe0;
	B = 16'h3b0d;
	ans = 16'h2ef1;
	#20
	A = 16'h346d;
	B = 16'h32be;
	ans = 16'h2b76;
	#20
	A = 16'ha549;
	B = 16'hb707;
	ans = 16'h20a4;
	#20
	A = 16'h303b;
	B = 16'hb765;
	ans = 16'habd2;
	#20
	A = 16'hba01;
	B = 16'hb586;
	ans = 16'h3425;
	#20
	A = 16'h39f5;
	B = 16'haebc;
	ans = 16'had04;
	#20
	A = 16'h30a7;
	B = 16'hb593;
	ans = 16'haa7c;
	#20
	A = 16'hb40e;
	B = 16'hb57f;
	ans = 16'h2d92;
	#20
	A = 16'h332a;
	B = 16'h368d;
	ans = 16'h2dde;
	#20
	A = 16'hb62e;
	B = 16'h36a2;
	ans = 16'hb120;
	#20
	A = 16'hb01d;
	B = 16'h392b;
	ans = 16'had50;
	#20
	A = 16'h38df;
	B = 16'hae6f;
	ans = 16'habd6;
	#20
	A = 16'h30b4;
	B = 16'hba80;
	ans = 16'hafa4;
	#20
	A = 16'ha931;
	B = 16'h374b;
	ans = 16'ha4bc;
	#20
	A = 16'h3820;
	B = 16'hb82b;
	ans = 16'hb44c;
	#20
	A = 16'hb871;
	B = 16'hbbca;
	ans = 16'h3853;
	#20
	A = 16'hb665;
	B = 16'hbb2d;
	ans = 16'h35bc;
	#20
	A = 16'h38ee;
	B = 16'hb0e0;
	ans = 16'hae02;
	#20
	A = 16'hbad7;
	B = 16'h3759;
	ans = 16'hb648;
	#20
	A = 16'h2fa5;
	B = 16'hb1d4;
	ans = 16'ha592;
	#20
	A = 16'h2da6;
	B = 16'h356c;
	ans = 16'h27a8;
	#20
	A = 16'hb9bd;
	B = 16'h35ae;
	ans = 16'hb413;
	#20
	A = 16'h39be;
	B = 16'hadf7;
	ans = 16'hac48;
	#20
	A = 16'h3148;
	B = 16'h375b;
	ans = 16'h2cdb;
	#20
	A = 16'hac47;
	B = 16'h3818;
	ans = 16'ha861;
	#20
	A = 16'hb07a;
	B = 16'hb9b0;
	ans = 16'h2e5d;
	#20
	A = 16'h3976;
	B = 16'h2436;
	ans = 16'h21c0;
	#20
	A = 16'h34c9;
	B = 16'h3896;
	ans = 16'h317c;
	#20
	A = 16'h3b74;
	B = 16'hb69b;
	ans = 16'hb627;
	#20
	A = 16'h238b;
	B = 16'h38a4;
	ans = 16'h2060;
	#20
	A = 16'h38c3;
	B = 16'hb57a;
	ans = 16'hb285;
	#20
	A = 16'h3914;
	B = 16'h3507;
	ans = 16'h3262;
	#20
	A = 16'hb667;
	B = 16'h359f;
	ans = 16'hb080;
	#20
	A = 16'hb903;
	B = 16'hb688;
	ans = 16'h3417;
	#20
	A = 16'h3652;
	B = 16'h2fbf;
	ans = 16'h2a1f;
	#20
	A = 16'hb7e8;
	B = 16'haba5;
	ans = 16'h278e;
	#20
	A = 16'hba32;
	B = 16'hacc5;
	ans = 16'h2b63;
	#20
	A = 16'hbbde;
	B = 16'h38df;
	ans = 16'hb8ca;
	#20
	A = 16'hb312;
	B = 16'h3ad8;
	ans = 16'hb20c;
	#20
	A = 16'hb629;
	B = 16'h2eb9;
	ans = 16'ha92d;
	#20
	A = 16'h3079;
	B = 16'h2fe6;
	ans = 16'h246a;
	#20
	A = 16'hb646;
	B = 16'hb048;
	ans = 16'h2ab7;
	#20
	A = 16'hbbdf;
	B = 16'h370a;
	ans = 16'hb6ed;
	#20
	A = 16'h2d37;
	B = 16'h3b13;
	ans = 16'h2c9d;
	#20
	A = 16'h3a32;
	B = 16'hb75b;
	ans = 16'hb5b2;
	#20
	A = 16'hb83d;
	B = 16'h34ad;
	ans = 16'hb0f4;
	#20
	A = 16'h39cd;
	B = 16'h391e;
	ans = 16'h376c;
	#20
	A = 16'h3b7f;
	B = 16'h380f;
	ans = 16'h379b;
	#20
	A = 16'hb29f;
	B = 16'hb9b2;
	ans = 16'h30b7;
	#20
	A = 16'h3672;
	B = 16'h37b0;
	ans = 16'h3232;
	#20
	A = 16'h37ad;
	B = 16'hbab1;
	ans = 16'hb66c;
	#20
	A = 16'h3add;
	B = 16'hba26;
	ans = 16'hb946;
	#20
	A = 16'hb8f1;
	B = 16'h396d;
	ans = 16'hb6b4;
	#20
	A = 16'h355f;
	B = 16'hb9a9;
	ans = 16'hb39a;
	#20
	A = 16'h37bb;
	B = 16'h3646;
	ans = 16'h3210;
	#20
	A = 16'hbb15;
	B = 16'h38bf;
	ans = 16'hb834;
	#20
	A = 16'hb724;
	B = 16'hb61c;
	ans = 16'h3174;
	#20
	A = 16'h3944;
	B = 16'hb9da;
	ans = 16'hb7b4;
	#20
	A = 16'hac91;
	B = 16'hbb77;
	ans = 16'h2c43;
	#20
	A = 16'h3b9b;
	B = 16'h3283;
	ans = 16'h3231;
	#20
	A = 16'hbbad;
	B = 16'h3243;
	ans = 16'hb202;
	#20
	A = 16'h34ac;
	B = 16'hb854;
	ans = 16'hb10e;
	#20
	A = 16'h3ab2;
	B = 16'h2de8;
	ans = 16'h2cf1;
	#20
	A = 16'hae00;
	B = 16'h3188;
	ans = 16'ha426;
	#20
	A = 16'hb972;
	B = 16'h3587;
	ans = 16'hb386;
	#20
	A = 16'hb99d;
	B = 16'hb4f1;
	ans = 16'h32ef;
	#20
	A = 16'hbab0;
	B = 16'hb0d6;
	ans = 16'h300b;
	#20
	A = 16'hbbd0;
	B = 16'hb813;
	ans = 16'h37f5;
	#20
	A = 16'hb24e;
	B = 16'h3b09;
	ans = 16'hb18b;
	#20
	A = 16'hb333;
	B = 16'h2e21;
	ans = 16'ha584;
	#20
	A = 16'h30e2;
	B = 16'hb7c7;
	ans = 16'hacbf;
	#20
	A = 16'hb3c8;
	B = 16'hafc0;
	ans = 16'h278a;
	#20
	A = 16'haf08;
	B = 16'hb838;
	ans = 16'h2b6a;
	#20
	A = 16'h3921;
	B = 16'h321d;
	ans = 16'h2fd7;
	#20
	A = 16'h3ba4;
	B = 16'h3a1b;
	ans = 16'h39d5;
	#20
	A = 16'h2dca;
	B = 16'h3ae2;
	ans = 16'h2cfb;
	#20
	A = 16'hb788;
	B = 16'h39fa;
	ans = 16'hb5a0;
	#20
	A = 16'hb881;
	B = 16'h3434;
	ans = 16'hb0bc;
	#20
	A = 16'h39d6;
	B = 16'h36a5;
	ans = 16'h34d9;
	#20
	A = 16'hb713;
	B = 16'ha467;
	ans = 16'h1fc9;
	#20
	A = 16'hba00;
	B = 16'h301d;
	ans = 16'hae2c;
	#20
	A = 16'h2e0c;
	B = 16'h3201;
	ans = 16'h248a;
	#20
	A = 16'h38f4;
	B = 16'hb669;
	ans = 16'hb3f0;
	#20
	A = 16'h2a00;
	B = 16'h2c91;
	ans = 16'h1ada;
	#20
	A = 16'h3840;
	B = 16'hb4f3;
	ans = 16'hb142;
	#20
	A = 16'hb998;
	B = 16'hb43f;
	ans = 16'h31f0;
	#20
	A = 16'h3168;
	B = 16'h2e9a;
	ans = 16'h2476;
	#20
	A = 16'hb509;
	B = 16'h2b18;
	ans = 16'ha477;
	#20
	A = 16'hb9a0;
	B = 16'h2e6c;
	ans = 16'hac84;
	#20
	A = 16'hadb4;
	B = 16'hbbf4;
	ans = 16'h2dab;
	#20
	A = 16'hb664;
	B = 16'hb3dd;
	ans = 16'h2e48;
	#20
	A = 16'hba91;
	B = 16'h2b88;
	ans = 16'haa2f;
	#20
	A = 16'h3a94;
	B = 16'hb9ed;
	ans = 16'hb8df;
	#20
	A = 16'h302a;
	B = 16'hbb4e;
	ans = 16'haf9b;
	#20
	A = 16'h3b77;
	B = 16'h3afc;
	ans = 16'h3a84;
	#20
	A = 16'h38eb;
	B = 16'h3a93;
	ans = 16'h380b;
	#20
	A = 16'h35e9;
	B = 16'h377c;
	ans = 16'h3187;
	#20
	A = 16'h3a2d;
	B = 16'hb6f9;
	ans = 16'hb562;
	#20
	A = 16'hb883;
	B = 16'hb720;
	ans = 16'h3405;
	#20
	A = 16'hb968;
	B = 16'hae37;
	ans = 16'h2c33;
	#20
	A = 16'hbb3e;
	B = 16'hb030;
	ans = 16'h2f95;
	#20
	A = 16'h3b20;
	B = 16'h3b45;
	ans = 16'h3a79;
	#20
	A = 16'hb7eb;
	B = 16'hb47c;
	ans = 16'h3070;
	#20
	A = 16'h37e5;
	B = 16'hb856;
	ans = 16'hb447;
	#20
	A = 16'h3b76;
	B = 16'hbaee;
	ans = 16'hba76;
	#20
	A = 16'h3813;
	B = 16'haf21;
	ans = 16'hab43;
	#20
	A = 16'h2e7d;
	B = 16'hb315;
	ans = 16'ha5be;
	#20
	A = 16'hb56a;
	B = 16'hb2d1;
	ans = 16'h2c9d;
	#20
	A = 16'h29e8;
	B = 16'hb8b3;
	ans = 16'ha6f0;
	#20
	A = 16'h2b34;
	B = 16'h3a59;
	ans = 16'h29b7;
	#20
	A = 16'h39ff;
	B = 16'hb808;
	ans = 16'hb60b;
	#20
	A = 16'hb9a7;
	B = 16'h3178;
	ans = 16'hafba;
	#20
	A = 16'hb82a;
	B = 16'hb959;
	ans = 16'h3591;
	#20
	A = 16'hb86c;
	B = 16'h3b43;
	ans = 16'hb804;
	#20
	A = 16'hba90;
	B = 16'ha6ce;
	ans = 16'h2595;
	#20
	A = 16'h3505;
	B = 16'hafa2;
	ans = 16'ha8ca;
	#20
	A = 16'h3a2e;
	B = 16'hb99d;
	ans = 16'hb856;
	#20
	A = 16'hb3d8;
	B = 16'hb6ce;
	ans = 16'h2eac;
	#20
	A = 16'h3ba1;
	B = 16'h3322;
	ans = 16'h32cd;
	#20
	A = 16'h2dcf;
	B = 16'h392a;
	ans = 16'h2b80;
	#20
	A = 16'hba32;
	B = 16'hb46f;
	ans = 16'h32de;
	#20
	A = 16'hbac2;
	B = 16'h3307;
	ans = 16'hb1f0;
	#20
	A = 16'hb33c;
	B = 16'hb95f;
	ans = 16'h30db;
	#20
	A = 16'hb82b;
	B = 16'h2e8f;
	ans = 16'haad6;
	#20
	A = 16'hb4c4;
	B = 16'h9fd0;
	ans = 16'h18a7;
	#20
	A = 16'h39ac;
	B = 16'h3440;
	ans = 16'h3207;
	#20
	A = 16'hba36;
	B = 16'h2e95;
	ans = 16'had1c;
	#20
	A = 16'hbbf3;
	B = 16'h2b46;
	ans = 16'hab3a;
	#20
	A = 16'h3a9f;
	B = 16'hbbe7;
	ans = 16'hba8a;
	#20
	A = 16'hbbed;
	B = 16'hb64d;
	ans = 16'h363e;
	#20
	A = 16'hb904;
	B = 16'h3b3e;
	ans = 16'hb88a;
	#20
	A = 16'h34c5;
	B = 16'hb6c7;
	ans = 16'hb00a;
	#20
	A = 16'h3725;
	B = 16'h3b0b;
	ans = 16'h364a;
	#20
	A = 16'h2717;
	B = 16'h3b28;
	ans = 16'h2658;
	#20
	A = 16'hb4e8;
	B = 16'h39ac;
	ans = 16'hb2f5;
	#20
	A = 16'haad8;
	B = 16'h37c2;
	ans = 16'ha6a3;
	#20
	A = 16'hab94;
	B = 16'h30f2;
	ans = 16'ha0af;
	#20
	A = 16'hb30d;
	B = 16'h2538;
	ans = 16'h9c99;
	#20
	A = 16'hb4d1;
	B = 16'h341d;
	ans = 16'hacf4;
	#20
	A = 16'h363b;
	B = 16'h3bc7;
	ans = 16'h360f;
	#20
	A = 16'hb61e;
	B = 16'h37a8;
	ans = 16'hb1db;
	#20
	A = 16'h3bf5;
	B = 16'ha0d4;
	ans = 16'ha0cd;
	#20
	A = 16'hbae9;
	B = 16'h2971;
	ans = 16'ha8b3;
	#20
	A = 16'haca3;
	B = 16'h3bc0;
	ans = 16'hac7e;
	#20
	A = 16'hb6a4;
	B = 16'hbacf;
	ans = 16'h35a7;
	#20
	A = 16'hb967;
	B = 16'hb2d8;
	ans = 16'h309f;
	#20
	A = 16'ha93b;
	B = 16'hb2a7;
	ans = 16'h2059;
	#20
	A = 16'ha653;
	B = 16'hb723;
	ans = 16'h21a4;
	#20
	A = 16'hb2f8;
	B = 16'h344d;
	ans = 16'hab7e;
	#20
	A = 16'ha61f;
	B = 16'h3639;
	ans = 16'ha0c3;
	#20
	A = 16'h3965;
	B = 16'hbbbf;
	ans = 16'hb939;
	#20
	A = 16'h3ab7;
	B = 16'hb92d;
	ans = 16'hb858;
	#20
	A = 16'hba59;
	B = 16'hbb1f;
	ans = 16'h39a6;
	#20
	A = 16'hb984;
	B = 16'hb4c0;
	ans = 16'h328d;
	#20
	A = 16'hbb72;
	B = 16'h39ba;
	ans = 16'hb954;
	#20
	A = 16'haf0a;
	B = 16'hb3f5;
	ans = 16'h2700;
	#20
	A = 16'h37b4;
	B = 16'hb475;
	ans = 16'hb04b;
	#20
	A = 16'h3aea;
	B = 16'h3bfd;
	ans = 16'h3ae7;
	#20
	A = 16'h3a48;
	B = 16'hbb44;
	ans = 16'hb9b4;
	#20
	A = 16'hba46;
	B = 16'hb2b6;
	ans = 16'h3143;
	#20
	A = 16'hb239;
	B = 16'h391e;
	ans = 16'haff6;
	#20
	A = 16'hb801;
	B = 16'hb600;
	ans = 16'h3202;
	#20
	A = 16'hb463;
	B = 16'h3bcb;
	ans = 16'hb446;
	#20
	A = 16'hb925;
	B = 16'h3bdd;
	ans = 16'hb90e;
	#20
	A = 16'h3831;
	B = 16'hb3c5;
	ans = 16'hb012;
	#20
	A = 16'h29b6;
	B = 16'hb9eb;
	ans = 16'ha83a;
	#20
	A = 16'h399a;
	B = 16'h3a45;
	ans = 16'h3864;
	#20
	A = 16'h3a37;
	B = 16'h373d;
	ans = 16'h35a0;
	#20
	A = 16'h384f;
	B = 16'h2e88;
	ans = 16'h2b09;
	#20
	A = 16'hb6cf;
	B = 16'hb6dc;
	ans = 16'h31d6;
	#20
	A = 16'hbac6;
	B = 16'h365a;
	ans = 16'hb561;
	#20
	A = 16'hbae6;
	B = 16'hbad3;
	ans = 16'h39e2;
	#20
	A = 16'hbb69;
	B = 16'hbbe3;
	ans = 16'h3b4e;
	#20
	A = 16'h3021;
	B = 16'haeb1;
	ans = 16'ha2e8;
	#20
	A = 16'hb294;
	B = 16'hb435;
	ans = 16'h2aeb;
	#20
	A = 16'h3bc0;
	B = 16'h387f;
	ans = 16'h385b;
	#20
	A = 16'hb3dc;
	B = 16'h34bd;
	ans = 16'haca8;
	#20
	A = 16'h3326;
	B = 16'h25fa;
	ans = 16'h1d57;
	#20
	A = 16'hb080;
	B = 16'hb582;
	ans = 16'h2a32;
	#20
	A = 16'ha823;
	B = 16'h2fc9;
	ans = 16'h9c07;
	#20
	A = 16'h3493;
	B = 16'h3885;
	ans = 16'h312b;
	#20
	A = 16'h3a82;
	B = 16'hb793;
	ans = 16'hb629;
	#20
	A = 16'h3b72;
	B = 16'h3b1f;
	ans = 16'h3aa1;
	#20
	A = 16'h9c85;
	B = 16'h3b61;
	ans = 16'h9c2b;
	#20
	A = 16'h3632;
	B = 16'hac50;
	ans = 16'ha6ae;
	#20
	A = 16'haf3a;
	B = 16'h30c5;
	ans = 16'ha44f;
	#20
	A = 16'h3329;
	B = 16'h2e89;
	ans = 16'h25d9;
	#20
	A = 16'h347b;
	B = 16'h39e4;
	ans = 16'h3299;
	#20
	A = 16'h371a;
	B = 16'ha178;
	ans = 16'h9cdb;
	#20
	A = 16'hac57;
	B = 16'h317d;
	ans = 16'ha1f4;
	#20
	A = 16'hb574;
	B = 16'hb619;
	ans = 16'h3028;
	#20
	A = 16'hb975;
	B = 16'h38d2;
	ans = 16'hb693;
	#20
	A = 16'hb8bd;
	B = 16'hb93e;
	ans = 16'h3636;
	#20
	A = 16'h39fb;
	B = 16'hb795;
	ans = 16'hb5ab;
	#20
	A = 16'hb4d4;
	B = 16'h3218;
	ans = 16'hab5b;
	#20
	A = 16'hbaac;
	B = 16'hbb05;
	ans = 16'h39db;
	#20
	A = 16'h3a28;
	B = 16'h3972;
	ans = 16'h3831;
	#20
	A = 16'hb882;
	B = 16'hb5ff;
	ans = 16'h32c2;
	#20
	A = 16'hb548;
	B = 16'h3bc3;
	ans = 16'hb520;
	#20
	A = 16'hb346;
	B = 16'hb87e;
	ans = 16'h3016;
	#20
	A = 16'hbb1c;
	B = 16'h3a71;
	ans = 16'hb9b9;
	#20
	A = 16'hb7f7;
	B = 16'h37ee;
	ans = 16'hb3e5;
	#20
	A = 16'h38c2;
	B = 16'hb865;
	ans = 16'hb53a;
	#20
	A = 16'h34f8;
	B = 16'h316c;
	ans = 16'h2abc;
	#20
	A = 16'hb442;
	B = 16'h378e;
	ans = 16'hb005;
	#20
	A = 16'hbbf7;
	B = 16'h36c9;
	ans = 16'hb6c1;
	#20
	A = 16'hb97b;
	B = 16'h2d89;
	ans = 16'hab95;
	#20
	A = 16'h3afe;
	B = 16'h3a70;
	ans = 16'h39a0;
	#20
	A = 16'hb90e;
	B = 16'hb820;
	ans = 16'h3536;
	#20
	A = 16'h389c;
	B = 16'hb83b;
	ans = 16'hb4e0;
	#20
	A = 16'hb0f0;
	B = 16'hb63e;
	ans = 16'h2bb5;
	#20
	A = 16'hb76e;
	B = 16'hb3f8;
	ans = 16'h2f67;
	#20
	A = 16'hbb75;
	B = 16'h38e7;
	ans = 16'hb892;
	#20
	A = 16'h3b1b;
	B = 16'h3985;
	ans = 16'h38e7;
	#20
	A = 16'hb8a3;
	B = 16'hbac6;
	ans = 16'h37da;
	#20
	A = 16'h380d;
	B = 16'h3934;
	ans = 16'h3545;
	#20
	A = 16'hb6b7;
	B = 16'h37c2;
	ans = 16'hb283;
	#20
	A = 16'h3ba5;
	B = 16'h3b0a;
	ans = 16'h3aba;
	#20
	A = 16'h38ac;
	B = 16'h391e;
	ans = 16'h35fa;
	#20
	A = 16'hba5e;
	B = 16'h3a15;
	ans = 16'hb8d7;
	#20
	A = 16'h37f9;
	B = 16'hb761;
	ans = 16'hb35b;
	#20
	A = 16'hbb39;
	B = 16'hbb18;
	ans = 16'h3a68;
	#20
	A = 16'h38c7;
	B = 16'h3066;
	ans = 16'h2d41;
	#20
	A = 16'hbb69;
	B = 16'h3979;
	ans = 16'hb912;
	#20
	A = 16'hb276;
	B = 16'h2c7f;
	ans = 16'ha343;
	#20
	A = 16'h390e;
	B = 16'hb7ea;
	ans = 16'hb500;
	#20
	A = 16'h284c;
	B = 16'hbbb5;
	ans = 16'ha824;
	#20
	A = 16'hb817;
	B = 16'h30d0;
	ans = 16'hacec;
	#20
	A = 16'h3435;
	B = 16'h3920;
	ans = 16'h3164;
	#20
	A = 16'h3b08;
	B = 16'h3be1;
	ans = 16'h3aed;
	#20
	A = 16'h3b37;
	B = 16'h37a5;
	ans = 16'h36e5;
	#20
	A = 16'hb808;
	B = 16'hb560;
	ans = 16'h316b;
	#20
	A = 16'h3554;
	B = 16'h308c;
	ans = 16'h2a0e;
	#20
	A = 16'hb9a5;
	B = 16'h30f4;
	ans = 16'haefd;
	#20
	A = 16'h3a4f;
	B = 16'hb5e8;
	ans = 16'hb4a8;
	#20
	A = 16'h32d2;
	B = 16'hbbd5;
	ans = 16'hb2ad;
	#20
	A = 16'hb907;
	B = 16'h2a94;
	ans = 16'ha822;
	#20
	A = 16'hb63e;
	B = 16'hb07c;
	ans = 16'h2b00;
	#20
	A = 16'h2d02;
	B = 16'h3881;
	ans = 16'h29a4;
	#20
	A = 16'hb091;
	B = 16'h3b5f;
	ans = 16'hb035;
	#20
	A = 16'h3a59;
	B = 16'h3b76;
	ans = 16'h39ec;
	#20
	A = 16'hbbe8;
	B = 16'hbba8;
	ans = 16'h3b91;
	#20
	A = 16'h3bdb;
	B = 16'hb50f;
	ans = 16'hb4f8;
	#20
	A = 16'h3abf;
	B = 16'h3a34;
	ans = 16'h393b;
	#20
	A = 16'ha695;
	B = 16'h3a12;
	ans = 16'ha4ff;
	#20
	A = 16'h367d;
	B = 16'h3653;
	ans = 16'h3121;
	#20
	A = 16'h3880;
	B = 16'hb8bc;
	ans = 16'hb554;
	#20
	A = 16'hba5a;
	B = 16'h2d7d;
	ans = 16'hac5b;
	#20
	A = 16'hba24;
	B = 16'hba68;
	ans = 16'h38eb;
	#20
	A = 16'hb5a9;
	B = 16'h3737;
	ans = 16'hb11b;
	#20
	A = 16'h3640;
	B = 16'hba44;
	ans = 16'hb4e5;
	#20
	A = 16'h32e5;
	B = 16'h29e7;
	ans = 16'h2116;
	#20
	A = 16'hb98e;
	B = 16'hb27f;
	ans = 16'h3083;
	#20
	A = 16'hb8bb;
	B = 16'hb1ec;
	ans = 16'h2f01;
	#20
	A = 16'hbabb;
	B = 16'h2d39;
	ans = 16'hac65;
	#20
	A = 16'hbb88;
	B = 16'h34f7;
	ans = 16'hb4ad;
	#20
	A = 16'h2caf;
	B = 16'haad7;
	ans = 16'h9c01;
	#20
	A = 16'h31fb;
	B = 16'h3478;
	ans = 16'h2aae;
	#20
	A = 16'hbaa1;
	B = 16'h36ff;
	ans = 16'hb5cc;
	#20
	A = 16'hb905;
	B = 16'hbb20;
	ans = 16'h3878;
	#20
	A = 16'h387e;
	B = 16'hb60b;
	ans = 16'hb2c9;
	#20
	A = 16'h3979;
	B = 16'h38ac;
	ans = 16'h3664;
	#20
	A = 16'h344e;
	B = 16'h393a;
	ans = 16'h31a0;
	#20
	A = 16'h3a0b;
	B = 16'h2c35;
	ans = 16'h2a5b;
	#20
	A = 16'h3050;
	B = 16'h2b9f;
	ans = 16'h201c;
	#20
	A = 16'h2e10;
	B = 16'hb526;
	ans = 16'ha7ce;
	#20
	A = 16'ha9a8;
	B = 16'hbab7;
	ans = 16'h28bf;
	#20
	A = 16'h3196;
	B = 16'hb8c8;
	ans = 16'haead;
	#20
	A = 16'hb990;
	B = 16'hb56d;
	ans = 16'h338c;
	#20
	A = 16'had52;
	B = 16'h3937;
	ans = 16'haaf0;
	#20
	A = 16'h3af9;
	B = 16'h2c75;
	ans = 16'h2bc5;
	#20
	A = 16'hbaa2;
	B = 16'h326b;
	ans = 16'hb152;
	#20
	A = 16'h362e;
	B = 16'hb05f;
	ans = 16'haac1;
	#20
	A = 16'hb6d4;
	B = 16'h38af;
	ans = 16'hb3ff;
	#20
	A = 16'hbbc0;
	B = 16'hba1f;
	ans = 16'h39ee;
	#20
	A = 16'ha70c;
	B = 16'h34e9;
	ans = 16'ha053;
	#20
	A = 16'hb462;
	B = 16'h3633;
	ans = 16'haecb;
	#20
	A = 16'h38b4;
	B = 16'h367b;
	ans = 16'h339f;
	#20
	A = 16'h34bf;
	B = 16'hb0e7;
	ans = 16'ha9d1;
	#20
	A = 16'hb184;
	B = 16'hba44;
	ans = 16'h3052;
	#20
	A = 16'h9c9d;
	B = 16'hba9c;
	ans = 16'h1b9f;
	#20
	A = 16'h2d8b;
	B = 16'hb833;
	ans = 16'ha9d2;
	#20
	A = 16'h37f0;
	B = 16'h27ce;
	ans = 16'h23be;
	#20
	A = 16'h38d1;
	B = 16'hba51;
	ans = 16'hb79b;
	#20
	A = 16'h3a39;
	B = 16'hb8ee;
	ans = 16'hb7ab;
	#20
	A = 16'h393b;
	B = 16'hb03a;
	ans = 16'had87;
	#20
	A = 16'hb2b1;
	B = 16'hb674;
	ans = 16'h2d66;
	#20
	A = 16'h32b0;
	B = 16'h3a1e;
	ans = 16'h311d;
	#20
	A = 16'h3650;
	B = 16'h35da;
	ans = 16'h309e;
	#20
	A = 16'hb04b;
	B = 16'hba9c;
	ans = 16'h2f18;
	#20
	A = 16'h3430;
	B = 16'h3a26;
	ans = 16'h3270;
	#20
	A = 16'h3a8e;
	B = 16'haca9;
	ans = 16'haba3;
	#20
	A = 16'hb9f0;
	B = 16'haabf;
	ans = 16'h2902;
	#20
	A = 16'hbada;
	B = 16'hbbca;
	ans = 16'h3aac;
	#20
	A = 16'hbbf0;
	B = 16'hbaa1;
	ans = 16'h3a94;
	#20
	A = 16'h3a49;
	B = 16'h3856;
	ans = 16'h36d0;
	#20
	A = 16'h2f81;
	B = 16'hb602;
	ans = 16'ha9a3;
	#20
	A = 16'h37a1;
	B = 16'hbbdb;
	ans = 16'hb77e;
	#20
	A = 16'h32d6;
	B = 16'h3072;
	ans = 16'h2799;
	#20
	A = 16'h2ce2;
	B = 16'h3201;
	ans = 16'h2354;
	#20
	A = 16'hb771;
	B = 16'hb6c2;
	ans = 16'h3249;
	#20
	A = 16'h389a;
	B = 16'hab26;
	ans = 16'ha81d;
	#20
	A = 16'h39ed;
	B = 16'hb734;
	ans = 16'hb556;
	#20
	A = 16'hb444;
	B = 16'h3946;
	ans = 16'hb1a0;
	#20
	A = 16'hb5be;
	B = 16'hb301;
	ans = 16'h2d07;
	#20
	A = 16'h2f40;
	B = 16'hb6b5;
	ans = 16'haa14;
	#20
	A = 16'hb69a;
	B = 16'h2a4e;
	ans = 16'ha534;
	#20
	A = 16'h393d;
	B = 16'hb783;
	ans = 16'hb4eb;
	#20
	A = 16'hb8c0;
	B = 16'hb9fc;
	ans = 16'h371b;
	#20
	A = 16'h3a58;
	B = 16'hb505;
	ans = 16'hb3f6;
	#20
	A = 16'h32e6;
	B = 16'h3103;
	ans = 16'h2852;
	#20
	A = 16'hbb92;
	B = 16'h3a16;
	ans = 16'hb9c2;
	#20
	A = 16'h347c;
	B = 16'h3915;
	ans = 16'h31b3;
	#20
	A = 16'hb4a4;
	B = 16'h34ab;
	ans = 16'had6a;
	#20
	A = 16'h3bab;
	B = 16'hbb9c;
	ans = 16'hbb4b;
	#20
	A = 16'h37d6;
	B = 16'h3865;
	ans = 16'h344e;
	#20
	A = 16'h381e;
	B = 16'h395a;
	ans = 16'h3582;
	#20
	A = 16'hb68e;
	B = 16'h3a84;
	ans = 16'hb557;
	#20
	A = 16'h359f;
	B = 16'hb56d;
	ans = 16'hafa0;
	#20
	A = 16'ha113;
	B = 16'hba45;
	ans = 16'h1ff4;
	#20
	A = 16'hb69c;
	B = 16'h38fb;
	ans = 16'hb41d;
	#20
	A = 16'hada8;
	B = 16'h32f9;
	ans = 16'ha4ee;
	#20
	A = 16'haa9b;
	B = 16'hb2c1;
	ans = 16'h2194;
	#20
	A = 16'hbb5e;
	B = 16'hbad6;
	ans = 16'h3a4c;
	#20
	A = 16'h3b1f;
	B = 16'hbb60;
	ans = 16'hba91;
	#20
	A = 16'h302e;
	B = 16'hab18;
	ans = 16'h9f6a;
	#20
	A = 16'h35ac;
	B = 16'h3967;
	ans = 16'h33a9;
	#20
	A = 16'hb87a;
	B = 16'h2e49;
	ans = 16'hab09;
	#20
	A = 16'h3822;
	B = 16'h33a0;
	ans = 16'h2fe1;
	#20
	A = 16'h3a0f;
	B = 16'hb8e2;
	ans = 16'hb765;
	#20
	A = 16'h3828;
	B = 16'hbbc1;
	ans = 16'hb807;
	#20
	A = 16'hb1ab;
	B = 16'hb8e0;
	ans = 16'h2ee8;
	#20
	A = 16'ha467;
	B = 16'h36bd;
	ans = 16'h9f6b;
	#20
	A = 16'h385e;
	B = 16'h3708;
	ans = 16'h33ad;
	#20
	A = 16'h3199;
	B = 16'h3be7;
	ans = 16'h3188;
	#20
	A = 16'hafda;
	B = 16'hb47f;
	ans = 16'h286a;
	#20
	A = 16'hb958;
	B = 16'hba9c;
	ans = 16'h386a;
	#20
	A = 16'hb8b6;
	B = 16'hba95;
	ans = 16'h37c0;
	#20
	A = 16'hb9d1;
	B = 16'h3ab5;
	ans = 16'hb8e0;
	#20
	A = 16'h3bb8;
	B = 16'hb860;
	ans = 16'hb839;
	#20
	A = 16'ha9cf;
	B = 16'hb80a;
	ans = 16'h25de;
	#20
	A = 16'hba56;
	B = 16'hb831;
	ans = 16'h36a4;
	#20
	A = 16'haefd;
	B = 16'h35d5;
	ans = 16'ha918;
	#20
	A = 16'h2b10;
	B = 16'h270c;
	ans = 16'h1639;
	#20
	A = 16'h3411;
	B = 16'h364f;
	ans = 16'h2e6a;
	#20
	A = 16'hb711;
	B = 16'hbad2;
	ans = 16'h3606;
	#20
	A = 16'hb3e2;
	B = 16'hb0bc;
	ans = 16'h28aa;
	#20
	A = 16'hb8c0;
	B = 16'hb3b9;
	ans = 16'h3096;
	#20
	A = 16'h31dd;
	B = 16'h3b45;
	ans = 16'h3154;
	#20
	A = 16'hb6aa;
	B = 16'h3367;
	ans = 16'hae2b;
	#20
	A = 16'hb8f7;
	B = 16'hb5c3;
	ans = 16'h3327;
	#20
	A = 16'hb9f1;
	B = 16'h3b8d;
	ans = 16'hb99c;
	#20
	A = 16'h270a;
	B = 16'hb7d2;
	ans = 16'ha2e2;
	#20
	A = 16'hb64c;
	B = 16'h3948;
	ans = 16'hb428;
	#20
	A = 16'h38b8;
	B = 16'h3bdc;
	ans = 16'h38a3;
	#20
	A = 16'h2886;
	B = 16'hb706;
	ans = 16'ha3f1;
	#20
	A = 16'hb968;
	B = 16'hb44a;
	ans = 16'h31cc;
	#20
	A = 16'h3010;
	B = 16'hb903;
	ans = 16'had17;
	#20
	A = 16'hafb3;
	B = 16'h300c;
	ans = 16'ha3ca;
	#20
	A = 16'h35f1;
	B = 16'hb161;
	ans = 16'habfd;
	#20
	A = 16'hbb9c;
	B = 16'hb826;
	ans = 16'h37e4;
	#20
	A = 16'hb78d;
	B = 16'hb665;
	ans = 16'h3209;
	#20
	A = 16'h3593;
	B = 16'h3a86;
	ans = 16'h348c;
	#20
	A = 16'h34c8;
	B = 16'h2522;
	ans = 16'h1e23;
	#20
	A = 16'hb872;
	B = 16'h38a2;
	ans = 16'hb526;
	#20
	A = 16'h3b81;
	B = 16'hb529;
	ans = 16'hb4d7;
	#20
	A = 16'h3abe;
	B = 16'hb55e;
	ans = 16'hb486;
	#20
	A = 16'h3759;
	B = 16'hb5ab;
	ans = 16'hb135;
	#20
	A = 16'hac79;
	B = 16'h33b6;
	ans = 16'ha450;
	#20
	A = 16'h3bf3;
	B = 16'hb381;
	ans = 16'hb375;
	#20
	A = 16'h338b;
	B = 16'hbbd8;
	ans = 16'hb365;
	#20
	A = 16'hb90b;
	B = 16'h2fba;
	ans = 16'hacdf;
	#20
	A = 16'hba5f;
	B = 16'hb9be;
	ans = 16'h3893;
	#20
	A = 16'hb29e;
	B = 16'h306b;
	ans = 16'ha74f;
	#20
	A = 16'h3b24;
	B = 16'hb9e6;
	ans = 16'hb944;
	#20
	A = 16'h3936;
	B = 16'h3796;
	ans = 16'h34f1;
	#20
	A = 16'h3937;
	B = 16'hb5d7;
	ans = 16'hb39d;
	#20
	A = 16'h316e;
	B = 16'h34bf;
	ans = 16'h2a71;
	#20
	A = 16'hba3f;
	B = 16'hbb72;
	ans = 16'h39d0;
	#20
	A = 16'hb8a5;
	B = 16'hb45b;
	ans = 16'h310f;
	#20
	A = 16'h30be;
	B = 16'hb161;
	ans = 16'ha660;
	#20
	A = 16'h357a;
	B = 16'h2823;
	ans = 16'h21aa;
	#20
	A = 16'h38c9;
	B = 16'hac7d;
	ans = 16'ha95f;
	#20
	A = 16'hb64e;
	B = 16'hb069;
	ans = 16'h2af3;
	#20
	A = 16'hb52e;
	B = 16'h3a1b;
	ans = 16'hb3e8;
	#20
	A = 16'hbb17;
	B = 16'h31cd;
	ans = 16'hb124;
	#20
	A = 16'hba83;
	B = 16'h3944;
	ans = 16'hb849;
	#20
	A = 16'h3b3a;
	B = 16'hb4a2;
	ans = 16'hb42f;
	#20
	A = 16'h3911;
	B = 16'hbaef;
	ans = 16'hb864;
	#20
	A = 16'h2f26;
	B = 16'hb729;
	ans = 16'haa66;
	#20
	A = 16'h35e2;
	B = 16'h3a51;
	ans = 16'h34a5;
	#20
	A = 16'hb8f1;
	B = 16'hbbdb;
	ans = 16'h38da;
	#20
	A = 16'h36ab;
	B = 16'hadce;
	ans = 16'ha8d7;
	#20
	A = 16'hb98d;
	B = 16'h31c7;
	ans = 16'hb002;
	#20
	A = 16'h3635;
	B = 16'h3b8f;
	ans = 16'h35dd;
	#20
	A = 16'h313a;
	B = 16'h315e;
	ans = 16'h2703;
	#20
	A = 16'ha589;
	B = 16'hb356;
	ans = 16'h1d13;
	#20
	A = 16'hb9a0;
	B = 16'h32cd;
	ans = 16'hb0c8;
	#20
	A = 16'h317d;
	B = 16'h1d27;
	ans = 16'h1312;
	#20
	A = 16'hba84;
	B = 16'ha697;
	ans = 16'h255e;
	#20
	A = 16'hb140;
	B = 16'h3657;
	ans = 16'hac29;
	#20
	A = 16'h3b03;
	B = 16'h3b0f;
	ans = 16'h3a30;
	#20
	A = 16'hae41;
	B = 16'h3995;
	ans = 16'hac5d;
	#20
	A = 16'h3ad9;
	B = 16'h3376;
	ans = 16'h3263;
	#20
	A = 16'h3ac3;
	B = 16'hb9df;
	ans = 16'hb8f6;
	#20
	A = 16'hb49a;
	B = 16'hbae7;
	ans = 16'h33f1;
	#20
	A = 16'hae89;
	B = 16'h36de;
	ans = 16'ha99c;
	#20
	A = 16'h3a1e;
	B = 16'ha9fb;
	ans = 16'ha893;
	#20
	A = 16'hb9a9;
	B = 16'h2fee;
	ans = 16'had9c;
	#20
	A = 16'h3721;
	B = 16'h3787;
	ans = 16'h32b5;
	#20
	A = 16'h389b;
	B = 16'h2f99;
	ans = 16'h2c60;
	#20
	A = 16'h3b56;
	B = 16'hbb59;
	ans = 16'hbabd;
	#20
	A = 16'h3a96;
	B = 16'haefa;
	ans = 16'hadbe;
	#20
	A = 16'h3a7e;
	B = 16'h3a98;
	ans = 16'h395a;
	#20
	A = 16'hbb58;
	B = 16'hb92c;
	ans = 16'h38bf;
	#20
	A = 16'hb87a;
	B = 16'h36d3;
	ans = 16'hb3a3;
	#20
	A = 16'h38fa;
	B = 16'h3500;
	ans = 16'h3238;
	#20
	A = 16'h3960;
	B = 16'hb843;
	ans = 16'hb5ba;
	#20
	A = 16'hb984;
	B = 16'hbb7e;
	ans = 16'h392a;
	#20
	A = 16'h3960;
	B = 16'hb920;
	ans = 16'hb6e3;
	#20
	A = 16'h2eb7;
	B = 16'hbbb0;
	ans = 16'hae74;
	#20
	A = 16'habb5;
	B = 16'h39af;
	ans = 16'ha97a;
	#20
	A = 16'h2f01;
	B = 16'haab3;
	ans = 16'h9ddd;
	#20
	A = 16'h132a;
	B = 16'h399d;
	ans = 16'h1107;
	#20
	A = 16'h3962;
	B = 16'h3bbc;
	ans = 16'h3934;
	#20
	A = 16'hbad6;
	B = 16'hbba7;
	ans = 16'h3a8a;
	#20
	A = 16'h36ba;
	B = 16'h3a10;
	ans = 16'h3519;
	#20
	A = 16'h36e0;
	B = 16'hb9c7;
	ans = 16'hb4f7;
	#20
	A = 16'h32a2;
	B = 16'h389b;
	ans = 16'h2fa3;
	#20
	A = 16'h3b0d;
	B = 16'h392d;
	ans = 16'h3890;
	#20
	A = 16'h39b9;
	B = 16'h37bd;
	ans = 16'h3589;
	#20
	A = 16'hb683;
	B = 16'h3a21;
	ans = 16'hb4fd;
	#20
	A = 16'h262c;
	B = 16'h3a10;
	ans = 16'h24ad;
	#20
	A = 16'hb752;
	B = 16'hb9d0;
	ans = 16'h3552;
	#20
	A = 16'hba75;
	B = 16'hba30;
	ans = 16'h38fe;
	#20
	A = 16'had90;
	B = 16'hae23;
	ans = 16'h2044;
	#20
	A = 16'h39ed;
	B = 16'hba4c;
	ans = 16'hb8aa;
	#20
	A = 16'hb881;
	B = 16'hb60c;
	ans = 16'h32cf;
	#20
	A = 16'hb6a6;
	B = 16'h3a63;
	ans = 16'hb54f;
	#20
	A = 16'hb49c;
	B = 16'h349f;
	ans = 16'had53;
	#20
	A = 16'h3b5d;
	B = 16'hb401;
	ans = 16'hb35f;
	#20
	A = 16'hb821;
	B = 16'h2aa7;
	ans = 16'ha6de;
	#20
	A = 16'h2665;
	B = 16'hb56c;
	ans = 16'ha055;
	#20
	A = 16'h394f;
	B = 16'hb850;
	ans = 16'hb5b9;
	#20
	A = 16'h399f;
	B = 16'hb831;
	ans = 16'hb5e4;
	#20
	A = 16'hbb9f;
	B = 16'h305f;
	ans = 16'hb02a;
	#20
	A = 16'h38e6;
	B = 16'hb25e;
	ans = 16'hafcc;
	#20
	A = 16'hac5a;
	B = 16'h3144;
	ans = 16'ha1ba;
	#20
	A = 16'hb99f;
	B = 16'h39c1;
	ans = 16'hb80b;
	#20
	A = 16'hbb81;
	B = 16'h39e1;
	ans = 16'hb984;
	#20
	A = 16'h35a6;
	B = 16'hb990;
	ans = 16'hb3db;
	#20
	A = 16'ha83c;
	B = 16'hb0ea;
	ans = 16'h1d34;
	#20
	A = 16'hba27;
	B = 16'h3a4e;
	ans = 16'hb8d9;
	#20
	A = 16'h3472;
	B = 16'h3793;
	ans = 16'h3035;
	#20
	A = 16'hba56;
	B = 16'h3a52;
	ans = 16'hb901;
	#20
	A = 16'hba5c;
	B = 16'h2d7a;
	ans = 16'hac5a;
	#20
	A = 16'h2c25;
	B = 16'h3b71;
	ans = 16'h2bb6;
	#20
	A = 16'hb9b2;
	B = 16'h326b;
	ans = 16'hb092;
	#20
	A = 16'h37af;
	B = 16'h3bcb;
	ans = 16'h377c;
	#20
	A = 16'hacf7;
	B = 16'h33dd;
	ans = 16'ha4e1;
	#20
	A = 16'hbb17;
	B = 16'h314e;
	ans = 16'hb0b4;
	#20
	A = 16'h3bff;
	B = 16'h3b9f;
	ans = 16'h3b9e;
	#20
	A = 16'h365b;
	B = 16'h3a6f;
	ans = 16'h351c;
	#20
	A = 16'h35a9;
	B = 16'hb65e;
	ans = 16'hb081;
	#20
	A = 16'hb44e;
	B = 16'h34eb;
	ans = 16'had4b;
	#20
	A = 16'hae81;
	B = 16'h3b7c;
	ans = 16'hae16;
	#20
	A = 16'hb021;
	B = 16'hb915;
	ans = 16'h2d3f;
	#20
	A = 16'h26c4;
	B = 16'hba50;
	ans = 16'ha557;
	#20
	A = 16'h3b17;
	B = 16'h3bc4;
	ans = 16'h3ae2;
	#20
	A = 16'hb18b;
	B = 16'h29b1;
	ans = 16'h9fe3;
	#20
	A = 16'hb91c;
	B = 16'h34a3;
	ans = 16'hb1ec;
	#20
	A = 16'hba5f;
	B = 16'h3a51;
	ans = 16'hb908;
	#20
	A = 16'hb833;
	B = 16'hb708;
	ans = 16'h3362;
	#20
	A = 16'hb757;
	B = 16'hb8af;
	ans = 16'h344c;
	#20
	A = 16'hb758;
	B = 16'hb528;
	ans = 16'h30bc;
	#20
	A = 16'hb208;
	B = 16'h3a44;
	ans = 16'hb0b9;
	#20
	A = 16'h3955;
	B = 16'h381a;
	ans = 16'h3578;
	#20
	A = 16'h3764;
	B = 16'h1108;
	ans = 16'hca6;
	#20
	A = 16'h3bfe;
	B = 16'hb9db;
	ans = 16'hb9da;
	#20
	A = 16'hb81d;
	B = 16'hbb99;
	ans = 16'h37d0;
	#20
	A = 16'h3a98;
	B = 16'hafa7;
	ans = 16'hae4f;
	#20
	A = 16'hb5ee;
	B = 16'hbae0;
	ans = 16'h3519;
	#20
	A = 16'ha472;
	B = 16'h3a94;
	ans = 16'ha34f;
	#20
	A = 16'h3a3d;
	B = 16'h2de3;
	ans = 16'h2c97;
	#20
	A = 16'h2c18;
	B = 16'h3b2c;
	ans = 16'h2b57;
	#20
	A = 16'h3aa3;
	B = 16'h35ff;
	ans = 16'h34f9;
	#20
	A = 16'h3be4;
	B = 16'h3505;
	ans = 16'h34f3;
	#20
	A = 16'hbb3b;
	B = 16'hb8d5;
	ans = 16'h385e;
	#20
	A = 16'h36ea;
	B = 16'hb4b2;
	ans = 16'hb00f;
	#20
	A = 16'h3b1b;
	B = 16'hb88e;
	ans = 16'hb80c;
	#20
	A = 16'h352b;
	B = 16'h3764;
	ans = 16'h30c6;
	#20
	A = 16'h387c;
	B = 16'h3688;
	ans = 16'h3352;
	#20
	A = 16'h30af;
	B = 16'hb42d;
	ans = 16'ha8e4;
	#20
	A = 16'hb85d;
	B = 16'h38c4;
	ans = 16'hb533;
	#20
	A = 16'hb8ca;
	B = 16'hb2b4;
	ans = 16'h3003;
	#20
	A = 16'h3a7a;
	B = 16'h39c2;
	ans = 16'h38a9;
	#20
	A = 16'hb08e;
	B = 16'hb4f4;
	ans = 16'h29a4;
	#20
	A = 16'hb317;
	B = 16'h372b;
	ans = 16'hae5a;
	#20
	A = 16'hb5c2;
	B = 16'hbb92;
	ans = 16'h3573;
	#20
	A = 16'h39f7;
	B = 16'h38ab;
	ans = 16'h36f6;
	#20
	A = 16'h3b29;
	B = 16'h351b;
	ans = 16'h3492;
	#20
	A = 16'h35f3;
	B = 16'hb9a4;
	ans = 16'hb432;
	#20
	A = 16'h301e;
	B = 16'hb5a8;
	ans = 16'ha9d2;
	#20
	A = 16'hb901;
	B = 16'hbb34;
	ans = 16'h3881;
	#20
	A = 16'hb418;
	B = 16'hb828;
	ans = 16'h3041;
	#20
	A = 16'hba68;
	B = 16'h3700;
	ans = 16'hb59b;
	#20
	A = 16'hb35f;
	B = 16'h37f8;
	ans = 16'haf58;
	#20
	A = 16'h3046;
	B = 16'h3956;
	ans = 16'h2db3;
	#20
	A = 16'hbb59;
	B = 16'h39fd;
	ans = 16'hb980;
	#20
	A = 16'h2a9e;
	B = 16'h36b9;
	ans = 16'h2590;
	#20
	A = 16'h3bb6;
	B = 16'h39c8;
	ans = 16'h3993;
	#20
	A = 16'h3721;
	B = 16'hba29;
	ans = 16'hb57d;
	#20
	A = 16'ha5ba;
	B = 16'hb1b9;
	ans = 16'h1c19;
	#20
	A = 16'hbb9f;
	B = 16'hb7aa;
	ans = 16'h374d;
	#20
	A = 16'hbaa0;
	B = 16'h38df;
	ans = 16'hb809;
	#20
	A = 16'hb611;
	B = 16'h341a;
	ans = 16'hae38;
	#20
	A = 16'hb8df;
	B = 16'h3ab6;
	ans = 16'hb816;
	#20
	A = 16'h3b4c;
	B = 16'h3406;
	ans = 16'h3357;
	#20
	A = 16'hb005;
	B = 16'hb754;
	ans = 16'h2b5d;
	#20
	A = 16'h3bca;
	B = 16'h3bee;
	ans = 16'h3bb8;
	#20
	A = 16'h383b;
	B = 16'hbb77;
	ans = 16'hb7e5;
	#20
	A = 16'h35df;
	B = 16'hb446;
	ans = 16'hae46;
	#20
	A = 16'h3098;
	B = 16'hb86a;
	ans = 16'had12;
	#20
	A = 16'h2e10;
	B = 16'hb3b1;
	ans = 16'ha5d4;
	#20
	A = 16'h39b5;
	B = 16'hba2f;
	ans = 16'hb869;
	#20
	A = 16'h2d9d;
	B = 16'hb96c;
	ans = 16'hab9c;
	#20
	A = 16'hbb81;
	B = 16'h394a;
	ans = 16'hb8f6;
	#20
	A = 16'h36a3;
	B = 16'hba57;
	ans = 16'hb542;
	#20
	A = 16'h3aac;
	B = 16'h379b;
	ans = 16'h3658;
	#20
	A = 16'h3b03;
	B = 16'hba3a;
	ans = 16'hb975;
	#20
	A = 16'hbb19;
	B = 16'hb73b;
	ans = 16'h366a;
	#20
	A = 16'hb694;
	B = 16'hbb21;
	ans = 16'h35dd;
	#20
	A = 16'hb8f0;
	B = 16'ha6e5;
	ans = 16'h2441;
	#20
	A = 16'hb124;
	B = 16'hb63e;
	ans = 16'h2c03;
	#20
	A = 16'hbaa5;
	B = 16'hb8ea;
	ans = 16'h3815;
	#20
	A = 16'h3a5b;
	B = 16'h3a9c;
	ans = 16'h3940;
	#20
	A = 16'h38b8;
	B = 16'h3678;
	ans = 16'h33a2;
	#20
	A = 16'hb8cf;
	B = 16'hb4af;
	ans = 16'h31a1;
	#20
	A = 16'h397a;
	B = 16'h388e;
	ans = 16'h363c;
	#20
	A = 16'hb9a6;
	B = 16'hbac4;
	ans = 16'h38c7;
	#20
	A = 16'h392e;
	B = 16'hb3db;
	ans = 16'hb116;
	#20
	A = 16'h3089;
	B = 16'hba3c;
	ans = 16'haf12;
	#20
	A = 16'hbbef;
	B = 16'h34a9;
	ans = 16'hb49f;
	#20
	A = 16'hb2f3;
	B = 16'hb84a;
	ans = 16'h2f74;
	#20
	A = 16'hb59e;
	B = 16'hbb7d;
	ans = 16'h3542;
	#20
	A = 16'hb873;
	B = 16'h3562;
	ans = 16'hb1fd;
	#20
	A = 16'hba1a;
	B = 16'h3654;
	ans = 16'hb4d4;
	#20
	A = 16'h371b;
	B = 16'hae4f;
	ans = 16'ha99a;
	#20
	A = 16'hb9ec;
	B = 16'h3239;
	ans = 16'hb09b;
	#20
	A = 16'h3a2c;
	B = 16'hb43a;
	ans = 16'hb285;
	#20
	A = 16'h3423;
	B = 16'hb099;
	ans = 16'ha8c1;
	#20
	A = 16'haac1;
	B = 16'h3850;
	ans = 16'ha748;
	#20
	A = 16'hb7ee;
	B = 16'h3726;
	ans = 16'hb316;
	#20
	A = 16'hb93c;
	B = 16'haca2;
	ans = 16'h2a10;
	#20
	A = 16'h36c9;
	B = 16'hb3c2;
	ans = 16'hae94;
	#20
	A = 16'hb6d3;
	B = 16'hbb92;
	ans = 16'h3675;
	#20
	A = 16'hb53d;
	B = 16'h376f;
	ans = 16'hb0de;
	#20
	A = 16'hbbdc;
	B = 16'h31ca;
	ans = 16'hb1b0;
	#20
	A = 16'hb53d;
	B = 16'ha7f6;
	ans = 16'h2136;
	#20
	A = 16'h394b;
	B = 16'hb029;
	ans = 16'had81;
	#20
	A = 16'h2aa9;
	B = 16'h340d;
	ans = 16'h22bf;
	#20
	A = 16'h3568;
	B = 16'hb1ef;
	ans = 16'hac03;
	#20
	A = 16'hb71e;
	B = 16'hb4b3;
	ans = 16'h302e;
	#20
	A = 16'h3705;
	B = 16'ha690;
	ans = 16'ha1c2;
	#20
	A = 16'hb02f;
	B = 16'ha717;
	ans = 16'h1b6a;
	#20
	A = 16'h3a65;
	B = 16'h3a84;
	ans = 16'h3935;
	#20
	A = 16'h3aea;
	B = 16'h3354;
	ans = 16'h3255;
	#20
	A = 16'h3251;
	B = 16'h3aad;
	ans = 16'h3145;
	#20
	A = 16'hb61c;
	B = 16'hb812;
	ans = 16'h3237;
	#20
	A = 16'hb83c;
	B = 16'h396b;
	ans = 16'hb5bc;
	#20
	A = 16'hbab5;
	B = 16'h3b5c;
	ans = 16'hba2c;
	#20
	A = 16'hb88e;
	B = 16'h3967;
	ans = 16'hb627;
	#20
	A = 16'had38;
	B = 16'haf95;
	ans = 16'h20f2;
	#20
	A = 16'hb9c6;
	B = 16'h1cc1;
	ans = 16'h9add;
	#20
	A = 16'hb0b7;
	B = 16'h3b24;
	ans = 16'hb035;
	#20
	A = 16'h32a0;
	B = 16'h3585;
	ans = 16'h2c92;
	#20
	A = 16'hb62a;
	B = 16'h3759;
	ans = 16'hb1a9;
	#20
	A = 16'hba45;
	B = 16'haf66;
	ans = 16'h2dcc;
	#20
	A = 16'h34e7;
	B = 16'hb598;
	ans = 16'haedb;
	#20
	A = 16'hbba5;
	B = 16'hba80;
	ans = 16'h3a36;
	#20
	A = 16'h3ad4;
	B = 16'h2b1d;
	ans = 16'h2a12;
	#20
	A = 16'hbb6c;
	B = 16'h39c4;
	ans = 16'hb959;
	#20
	A = 16'h3861;
	B = 16'h3b22;
	ans = 16'h37cf;
	#20
	A = 16'h3532;
	B = 16'hba8c;
	ans = 16'hb440;
	#20
	A = 16'hb9e2;
	B = 16'hb6a3;
	ans = 16'h34e1;
	#20
	A = 16'hb69c;
	B = 16'hb945;
	ans = 16'h345b;
	#20
	A = 16'h3632;
	B = 16'h3beb;
	ans = 16'h3622;
	#20
	A = 16'hb8fd;
	B = 16'hb9ff;
	ans = 16'h377a;
	#20
	A = 16'hbabe;
	B = 16'h3664;
	ans = 16'hb563;
	#20
	A = 16'hb177;
	B = 16'h3b55;
	ans = 16'hb102;
	#20
	A = 16'hb007;
	B = 16'hbaa7;
	ans = 16'h2eb3;
	#20
	A = 16'h37dc;
	B = 16'hac85;
	ans = 16'ha871;
	#20
	A = 16'h3921;
	B = 16'hb665;
	ans = 16'hb41a;
	#20
	A = 16'h3a09;
	B = 16'h2a21;
	ans = 16'h28a0;
	#20
	A = 16'hb918;
	B = 16'h38c4;
	ans = 16'hb612;
	#20
	A = 16'hbafc;
	B = 16'hb9b5;
	ans = 16'h38fc;
	#20
	A = 16'h33e2;
	B = 16'h3538;
	ans = 16'h2d24;
	#20
	A = 16'hb78a;
	B = 16'h387d;
	ans = 16'hb43b;
	#20
	A = 16'h3b6c;
	B = 16'hb8ff;
	ans = 16'hb8a3;
	#20
	A = 16'h38dd;
	B = 16'hb98e;
	ans = 16'hb6c1;
	#20
	A = 16'h3929;
	B = 16'h3a5e;
	ans = 16'h381b;
	#20
	A = 16'hafce;
	B = 16'h3a93;
	ans = 16'hae6a;
	#20
	A = 16'hb94d;
	B = 16'hb9fa;
	ans = 16'h37ec;
	#20
	A = 16'h36cb;
	B = 16'h19f2;
	ans = 16'h150c;
	#20
	A = 16'hb565;
	B = 16'hb1c7;
	ans = 16'h2bcb;
	#20
	A = 16'h215a;
	B = 16'hb1de;
	ans = 16'h97da;
	#20
	A = 16'h39f1;
	B = 16'h36c4;
	ans = 16'h3506;
	#20
	A = 16'hb9df;
	B = 16'h34a7;
	ans = 16'hb2d4;
	#20
	A = 16'hb863;
	B = 16'hba86;
	ans = 16'h3727;
	#20
	A = 16'h3a3f;
	B = 16'hb5da;
	ans = 16'hb492;
	#20
	A = 16'h3a16;
	B = 16'hba9d;
	ans = 16'hb908;
	#20
	A = 16'h3aca;
	B = 16'h3810;
	ans = 16'h36e5;
	#20
	A = 16'hb912;
	B = 16'h3b90;
	ans = 16'hb8cb;
	#20
	A = 16'hb84d;
	B = 16'h367a;
	ans = 16'hb2f7;
	#20
	A = 16'h34a5;
	B = 16'hac1e;
	ans = 16'ha4c8;
	#20
	A = 16'hba4e;
	B = 16'hb99f;
	ans = 16'h386e;
	#20
	A = 16'hb9dc;
	B = 16'hb48b;
	ans = 16'h32a8;
	#20
	A = 16'h37e9;
	B = 16'hba61;
	ans = 16'hb64f;
	#20
	A = 16'h348d;
	B = 16'hb58d;
	ans = 16'hae51;
	#20
	A = 16'h3545;
	B = 16'hb550;
	ans = 16'haf00;
	#20
	A = 16'hac0b;
	B = 16'hafea;
	ans = 16'h2000;
	#20
	A = 16'hb4b3;
	B = 16'h3b90;
	ans = 16'hb471;
	#20
	A = 16'h24f0;
	B = 16'hb8b3;
	ans = 16'ha1cd;
	#20
	A = 16'h3998;
	B = 16'hbac6;
	ans = 16'hb8bc;
	#20
	A = 16'h3416;
	B = 16'hb5d1;
	ans = 16'hadf1;
	#20
	A = 16'h38b3;
	B = 16'h3b7f;
	ans = 16'h3867;
	#20
	A = 16'hbabe;
	B = 16'hbaf9;
	ans = 16'h39e0;
	#20
	A = 16'h358d;
	B = 16'hb37c;
	ans = 16'had31;
	#20
	A = 16'h39ee;
	B = 16'h33b7;
	ans = 16'h31b8;
	#20
	A = 16'h2dcd;
	B = 16'ha1a2;
	ans = 16'h9416;
	#20
	A = 16'haac9;
	B = 16'h3170;
	ans = 16'ha09d;
	#20
	A = 16'hb596;
	B = 16'hb78c;
	ans = 16'h3145;
	#20
	A = 16'h38b1;
	B = 16'h3352;
	ans = 16'h304b;
	#20
	A = 16'hba4f;
	B = 16'h3a42;
	ans = 16'hb8ef;
	#20
	A = 16'hb576;
	B = 16'hb814;
	ans = 16'h3191;
	#20
	A = 16'hb958;
	B = 16'h3988;
	ans = 16'hb764;
	#20
	A = 16'h38bc;
	B = 16'h25ef;
	ans = 16'h2306;
	#20
	A = 16'h3bdd;
	B = 16'hb842;
	ans = 16'hb82f;
	#20
	A = 16'h3be2;
	B = 16'h3b9e;
	ans = 16'h3b81;
	#20
	A = 16'hb8b2;
	B = 16'hb29c;
	ans = 16'h2fc2;
	#20
	A = 16'hb597;
	B = 16'h2de0;
	ans = 16'ha81b;
	#20
	A = 16'h3a82;
	B = 16'h32de;
	ans = 16'h3196;
	#20
	A = 16'hb8a4;
	B = 16'h38ae;
	ans = 16'hb56e;
	#20
	A = 16'hbac1;
	B = 16'h35f2;
	ans = 16'hb505;
	#20
	A = 16'h3be0;
	B = 16'h3507;
	ans = 16'h34f3;
	#20
	A = 16'h382b;
	B = 16'hb3b3;
	ans = 16'hb003;
	#20
	A = 16'h3436;
	B = 16'h38cd;
	ans = 16'h310e;
	#20
	A = 16'hb8e5;
	B = 16'hb727;
	ans = 16'h3460;
	#20
	A = 16'h3520;
	B = 16'hb9d4;
	ans = 16'hb378;
	#20
	A = 16'hbbd1;
	B = 16'hbbd3;
	ans = 16'h3ba5;
	#20
	A = 16'h39f6;
	B = 16'hbb93;
	ans = 16'hb9a5;
	#20
	A = 16'hbbf1;
	B = 16'h33f3;
	ans = 16'hb3e4;
	#20
	A = 16'h319d;
	B = 16'h3007;
	ans = 16'h25a7;
	#20
	A = 16'hba69;
	B = 16'h2da7;
	ans = 16'hac87;
	#20
	A = 16'hb8ec;
	B = 16'hbad0;
	ans = 16'h3831;
	#20
	A = 16'h35ca;
	B = 16'hb358;
	ans = 16'had50;
	#20
	A = 16'hb7e1;
	B = 16'h38ff;
	ans = 16'hb4ec;
	#20
	A = 16'h3246;
	B = 16'hbb56;
	ans = 16'hb1c1;
	#20
	A = 16'hb3a4;
	B = 16'hb381;
	ans = 16'h2b2b;
	#20
	A = 16'h330a;
	B = 16'h3a65;
	ans = 16'h31a0;
	#20
	A = 16'h3939;
	B = 16'h385d;
	ans = 16'h35b2;
	#20
	A = 16'h329c;
	B = 16'h3836;
	ans = 16'h2ef5;
	#20
	A = 16'h3a56;
	B = 16'hb9fd;
	ans = 16'hb8be;
	#20
	A = 16'ha46a;
	B = 16'h3721;
	ans = 16'h9fde;
	#20
	A = 16'h37fe;
	B = 16'h341c;
	ans = 16'h301b;
	#20
	A = 16'h3972;
	B = 16'h2c8b;
	ans = 16'h2a2f;
	#20
	A = 16'hb547;
	B = 16'h3bf3;
	ans = 16'hb53e;
	#20
	A = 16'h3a32;
	B = 16'hac36;
	ans = 16'haa86;
	#20
	A = 16'hb290;
	B = 16'hb8a0;
	ans = 16'h2f96;
	#20
	A = 16'h381b;
	B = 16'h37ff;
	ans = 16'h341a;
	#20
	A = 16'h2e3d;
	B = 16'h3732;
	ans = 16'h299c;
	#20
	A = 16'hba6e;
	B = 16'h39ec;
	ans = 16'hb8c2;
	#20
	A = 16'hb149;
	B = 16'ha89c;
	ans = 16'h1e17;
	#20
	A = 16'hb2d5;
	B = 16'h3bd9;
	ans = 16'hb2b4;
	#20
	A = 16'hbb12;
	B = 16'hb8fa;
	ans = 16'h3866;
	#20
	A = 16'h3a3f;
	B = 16'h3930;
	ans = 16'h380d;
	#20
	A = 16'hb702;
	B = 16'hba70;
	ans = 16'h35a4;
	#20
	A = 16'h310b;
	B = 16'h37b2;
	ans = 16'h2cda;
	#20
	A = 16'hbad2;
	B = 16'hac3d;
	ans = 16'h2b3a;
	#20
	A = 16'hba3b;
	B = 16'hb9e8;
	ans = 16'h389a;
	#20
	A = 16'hb9ba;
	B = 16'hba73;
	ans = 16'h389e;
	#20
	A = 16'h3945;
	B = 16'h3667;
	ans = 16'h3438;
	#20
	A = 16'h263b;
	B = 16'hba5a;
	ans = 16'ha4f2;
	#20
	A = 16'h3720;
	B = 16'h3a43;
	ans = 16'h3594;
	#20
	A = 16'hbbab;
	B = 16'h3840;
	ans = 16'hb813;
	#20
	A = 16'hb87f;
	B = 16'h3879;
	ans = 16'hb507;
	#20
	A = 16'h3a59;
	B = 16'hb955;
	ans = 16'hb83b;
	#20
	A = 16'hb943;
	B = 16'hb9a5;
	ans = 16'h376d;
	#20
	A = 16'h3b78;
	B = 16'hbacc;
	ans = 16'hba58;
	#20
	A = 16'hb81d;
	B = 16'hb9c5;
	ans = 16'h35ef;
	#20
	A = 16'h37e6;
	B = 16'h3bc6;
	ans = 16'h37ad;
	#20
	A = 16'hbb8e;
	B = 16'h28d6;
	ans = 16'ha891;
	#20
	A = 16'h3593;
	B = 16'h260f;
	ans = 16'h2039;
	#20
	A = 16'h36a6;
	B = 16'h3b63;
	ans = 16'h3624;
	#20
	A = 16'h3873;
	B = 16'h1590;
	ans = 16'h1230;
	#20
	A = 16'hbb9b;
	B = 16'hba0d;
	ans = 16'h39c1;
	#20
	A = 16'h2912;
	B = 16'h34ac;
	ans = 16'h21ec;
	#20
	A = 16'h39fc;
	B = 16'h38ab;
	ans = 16'h36fc;
	#20
	A = 16'h3908;
	B = 16'hbaa4;
	ans = 16'hb82d;
	#20
	A = 16'h35d5;
	B = 16'h33bd;
	ans = 16'h2da4;
	#20
	A = 16'hb5f9;
	B = 16'hb8f3;
	ans = 16'h3364;
	#20
	A = 16'hb5f6;
	B = 16'hbbe6;
	ans = 16'h35e3;
	#20
	A = 16'hbb16;
	B = 16'haefc;
	ans = 16'h2e30;
	#20
	A = 16'h3bd7;
	B = 16'h3707;
	ans = 16'h36e3;
	#20
	A = 16'h3908;
	B = 16'hb6b1;
	ans = 16'hb435;
	#20
	A = 16'hb888;
	B = 16'hb3db;
	ans = 16'h3073;
	#20
	A = 16'h3abc;
	B = 16'h3a8e;
	ans = 16'h3985;
	#20
	A = 16'h35df;
	B = 16'h3afa;
	ans = 16'h351f;
	#20
	A = 16'hb05d;
	B = 16'h3603;
	ans = 16'haa8f;
	#20
	A = 16'hafda;
	B = 16'h2a98;
	ans = 16'h9e79;
	#20
	A = 16'h9cbb;
	B = 16'hb4e5;
	ans = 16'h15ca;
	#20
	A = 16'hb26c;
	B = 16'h380f;
	ans = 16'hae84;
	#20
	A = 16'hbbc0;
	B = 16'h37d6;
	ans = 16'hb797;
	#20
	A = 16'hb766;
	B = 16'h323b;
	ans = 16'hadc3;
	#20
	A = 16'h3bcc;
	B = 16'h3613;
	ans = 16'h35ec;
	#20
	A = 16'h3ae9;
	B = 16'h3a43;
	ans = 16'h3969;
	#20
	A = 16'h3b3c;
	B = 16'hb45a;
	ans = 16'hb3df;
	#20
	A = 16'h363b;
	B = 16'hb836;
	ans = 16'hb28f;
	#20
	A = 16'h3b2c;
	B = 16'hbb42;
	ans = 16'hba82;
	#20
	A = 16'had5d;
	B = 16'hab5a;
	ans = 16'h1cee;
	#20
	A = 16'h3669;
	B = 16'habd8;
	ans = 16'ha649;
	#20
	A = 16'h373c;
	B = 16'h39b9;
	ans = 16'h352d;
	#20
	A = 16'h3788;
	B = 16'h381d;
	ans = 16'h33bf;
	#20
	A = 16'h3474;
	B = 16'h2e63;
	ans = 16'h271c;
	#20
	A = 16'hb88e;
	B = 16'h2dc8;
	ans = 16'haa95;
	#20
	A = 16'ha271;
	B = 16'h3bc4;
	ans = 16'ha241;
	#20
	A = 16'hb6e5;
	B = 16'h392a;
	ans = 16'hb473;
	#20
	A = 16'h305a;
	B = 16'hec6;
	ans = 16'h3af;
	#20
	A = 16'hb9bf;
	B = 16'hb8ab;
	ans = 16'h36b5;
	#20
	A = 16'hba4f;
	B = 16'hb1bc;
	ans = 16'h3086;
	#20
	A = 16'h39f7;
	B = 16'hb487;
	ans = 16'hb2c0;
	#20
	A = 16'hbab1;
	B = 16'h3b2c;
	ans = 16'hba00;
	#20
	A = 16'h3b94;
	B = 16'h3316;
	ans = 16'h32b6;
	#20
	A = 16'h3174;
	B = 16'hb833;
	ans = 16'hadba;
	#20
	A = 16'ha3f7;
	B = 16'h378a;
	ans = 16'h9f82;
	#20
	A = 16'h3b50;
	B = 16'hb60b;
	ans = 16'hb586;
	#20
	A = 16'h359e;
	B = 16'h3515;
	ans = 16'h2f23;
	#20
	A = 16'h3971;
	B = 16'hb65b;
	ans = 16'hb453;
	#20
	A = 16'h352f;
	B = 16'h3652;
	ans = 16'h3018;
	#20
	A = 16'hba9e;
	B = 16'h3acb;
	ans = 16'hb99e;
	#20
	A = 16'hb170;
	B = 16'h3a44;
	ans = 16'hb042;
	#20
	A = 16'h2f9d;
	B = 16'h36aa;
	ans = 16'h2a58;
	#20
	A = 16'h359d;
	B = 16'hb475;
	ans = 16'hae41;
	#20
	A = 16'hb729;
	B = 16'h32d7;
	ans = 16'hae1f;
	#20
	A = 16'h390d;
	B = 16'hbb3b;
	ans = 16'hb891;
	#20
	A = 16'hb430;
	B = 16'h256b;
	ans = 16'h9dac;
	#20
	A = 16'h2eb1;
	B = 16'h30d3;
	ans = 16'h2409;
	#20
	A = 16'h3b0f;
	B = 16'h3b5d;
	ans = 16'h3a7f;
	#20
	A = 16'h342d;
	B = 16'hb59d;
	ans = 16'haddc;
	#20
	A = 16'h3ac9;
	B = 16'hb65f;
	ans = 16'hb567;
	#20
	A = 16'hbafe;
	B = 16'hb696;
	ans = 16'h35c2;
	#20
	A = 16'hbaeb;
	B = 16'hb74d;
	ans = 16'h3650;
	#20
	A = 16'hb410;
	B = 16'h36eb;
	ans = 16'haf07;
	#20
	A = 16'h35b8;
	B = 16'h32be;
	ans = 16'h2cd2;
	#20
	A = 16'h2649;
	B = 16'hb21f;
	ans = 16'h9ccf;
	#20
	A = 16'hb383;
	B = 16'h3bd6;
	ans = 16'hb35c;
	#20
	A = 16'h3a9f;
	B = 16'h3457;
	ans = 16'h332f;
	#20
	A = 16'h3b7a;
	B = 16'ha87a;
	ans = 16'ha82f;
	#20
	A = 16'hb2d9;
	B = 16'h277a;
	ans = 16'h9e66;
	#20
	A = 16'hb8ab;
	B = 16'h2fe8;
	ans = 16'hac9d;
	#20
	A = 16'h2772;
	B = 16'h349b;
	ans = 16'h2049;
	#20
	A = 16'hb809;
	B = 16'h3b74;
	ans = 16'hb785;
	#20
	A = 16'ha5bd;
	B = 16'hb856;
	ans = 16'h2238;
	#20
	A = 16'haab1;
	B = 16'h3a6e;
	ans = 16'ha961;
	#20
	A = 16'h395c;
	B = 16'h3289;
	ans = 16'h3061;
	#20
	A = 16'hb6d9;
	B = 16'h37c9;
	ans = 16'hb2aa;
	#20
	A = 16'hb79e;
	B = 16'h38ab;
	ans = 16'hb472;
	#20
	A = 16'h35e6;
	B = 16'hb865;
	ans = 16'hb27b;
	#20
	A = 16'hb7f2;
	B = 16'hb8b1;
	ans = 16'h34a9;
	#20
	A = 16'h38c6;
	B = 16'ha411;
	ans = 16'ha0da;
	#20
	A = 16'hb7e3;
	B = 16'h384e;
	ans = 16'hb43e;
	#20
	A = 16'hbabe;
	B = 16'hace6;
	ans = 16'h2c21;
	#20
	A = 16'h3b80;
	B = 16'h218d;
	ans = 16'h2134;
	#20
	A = 16'h3502;
	B = 16'h225f;
	ans = 16'h1bfa;
	#20
	A = 16'h389a;
	B = 16'h1b8e;
	ans = 16'h1858;
	#20
	A = 16'h3bdc;
	B = 16'hb5d2;
	ans = 16'hb5b8;
	#20
	A = 16'h2ec9;
	B = 16'hb518;
	ans = 16'ha852;
	#20
	A = 16'hb5db;
	B = 16'h3bc1;
	ans = 16'hb5ad;
	#20
	A = 16'ha892;
	B = 16'h3a75;
	ans = 16'ha761;
	#20
	A = 16'h3b9b;
	B = 16'hbab8;
	ans = 16'hba63;
	#20
	A = 16'h361e;
	B = 16'hb465;
	ans = 16'haeb8;
	#20
	A = 16'hb736;
	B = 16'hb918;
	ans = 16'h3497;
	#20
	A = 16'h34c5;
	B = 16'h351a;
	ans = 16'h2e15;
	#20
	A = 16'hb1df;
	B = 16'h3bcf;
	ans = 16'hb1bb;
	#20
	A = 16'hbbe2;
	B = 16'h3beb;
	ans = 16'hbbcd;
	#20
	A = 16'h3ad1;
	B = 16'h39f2;
	ans = 16'h3911;
	#20
	A = 16'hb722;
	B = 16'h2f86;
	ans = 16'haab5;
	#20
	A = 16'hb206;
	B = 16'h3a3e;
	ans = 16'hb0b3;
	#20
	A = 16'h3725;
	B = 16'h3900;
	ans = 16'h3477;
	#20
	A = 16'h35e7;
	B = 16'hb9e6;
	ans = 16'hb45a;
	#20
	A = 16'h313f;
	B = 16'hb8cb;
	ans = 16'hae49;
	#20
	A = 16'h3b9a;
	B = 16'h35ec;
	ans = 16'h35a0;
	#20
	A = 16'hb963;
	B = 16'hacab;
	ans = 16'h2a49;
	#20
	A = 16'h39d3;
	B = 16'h3697;
	ans = 16'h34cc;
	#20
	A = 16'hb837;
	B = 16'h382d;
	ans = 16'hb466;
	#20
	A = 16'hbb36;
	B = 16'h3b5c;
	ans = 16'hbaa2;
	#20
	A = 16'h3b4e;
	B = 16'h396f;
	ans = 16'h38f6;
	#20
	A = 16'h3a99;
	B = 16'h35b0;
	ans = 16'h34b1;
	#20
	A = 16'h2566;
	B = 16'h39d7;
	ans = 16'h23e2;
	#20
	A = 16'h3669;
	B = 16'hbb73;
	ans = 16'hb5f8;
	#20
	A = 16'h381d;
	B = 16'h2f61;
	ans = 16'h2b96;
	#20
	A = 16'hb567;
	B = 16'h3af5;
	ans = 16'hb4b3;
	#20
	A = 16'hbb5a;
	B = 16'hb98f;
	ans = 16'h391c;
	#20
	A = 16'hb12c;
	B = 16'ha43c;
	ans = 16'h197a;
	#20
	A = 16'h2810;
	B = 16'hb557;
	ans = 16'ha16c;
	#20
	A = 16'h34c3;
	B = 16'ha6ad;
	ans = 16'h9ff2;
	#20
	A = 16'hb91f;
	B = 16'haddd;
	ans = 16'h2b82;
	#20
	A = 16'h3969;
	B = 16'h3a77;
	ans = 16'h385f;
	#20
	A = 16'h3923;
	B = 16'hb8fb;
	ans = 16'hb665;
	#20
	A = 16'h3692;
	B = 16'h390c;
	ans = 16'h3425;
	#20
	A = 16'hba2d;
	B = 16'h3b1e;
	ans = 16'hb97f;
	#20
	A = 16'h2db9;
	B = 16'h338e;
	ans = 16'h2567;
	#20
	A = 16'h3503;
	B = 16'hb526;
	ans = 16'hae73;
	#20
	A = 16'hb943;
	B = 16'h30c5;
	ans = 16'hae46;
	#20
	A = 16'hb4b9;
	B = 16'h3a36;
	ans = 16'hb355;
	#20
	A = 16'h386c;
	B = 16'h3717;
	ans = 16'h33d6;
	#20
	A = 16'hb5b8;
	B = 16'h389a;
	ans = 16'hb294;
	#20
	A = 16'h38a0;
	B = 16'hb427;
	ans = 16'hb0cd;
	#20
	A = 16'ha464;
	B = 16'hb56e;
	ans = 16'h1df6;
	#20
	A = 16'hb8df;
	B = 16'h312d;
	ans = 16'hae4e;
	#20
	A = 16'haeb8;
	B = 16'hb675;
	ans = 16'h296c;
	#20
	A = 16'hb963;
	B = 16'hb84c;
	ans = 16'h35c9;
	#20
	A = 16'hb80e;
	B = 16'h2f52;
	ans = 16'hab6c;
	#20
	A = 16'h3548;
	B = 16'hb489;
	ans = 16'hadfd;
	#20
	A = 16'h3010;
	B = 16'hbad4;
	ans = 16'haeef;
	#20
	A = 16'hb910;
	B = 16'h3a27;
	ans = 16'hb7c9;
	#20
	A = 16'hb99b;
	B = 16'h3772;
	ans = 16'hb538;
	#20
	A = 16'h3bd3;
	B = 16'h30fb;
	ans = 16'h30df;
	#20
	A = 16'h3b43;
	B = 16'h384d;
	ans = 16'h37cf;
	#20
	A = 16'hb532;
	B = 16'h2ed2;
	ans = 16'ha86e;
	#20
	A = 16'h374c;
	B = 16'hb793;
	ans = 16'hb2e9;
	#20
	A = 16'h3b9a;
	B = 16'h3430;
	ans = 16'h33f5;
	#20
	A = 16'h38ed;
	B = 16'h3aee;
	ans = 16'h3844;
	#20
	A = 16'hb6a6;
	B = 16'h3460;
	ans = 16'haf46;
	#20
	A = 16'hb51a;
	B = 16'hbb00;
	ans = 16'h3477;
	#20
	A = 16'h2ebd;
	B = 16'haa63;
	ans = 16'h9d61;
	#20
	A = 16'hb498;
	B = 16'h38ed;
	ans = 16'hb1a8;
	#20
	A = 16'h30a1;
	B = 16'hb25b;
	ans = 16'ha75b;
	#20
	A = 16'h37b8;
	B = 16'hb46e;
	ans = 16'hb046;
	#20
	A = 16'hba1d;
	B = 16'h3b6b;
	ans = 16'hb9ab;
	#20
	A = 16'h3b08;
	B = 16'h39ed;
	ans = 16'h3935;
	#20
	A = 16'h3805;
	B = 16'hbb21;
	ans = 16'hb72a;
	#20
	A = 16'hb55f;
	B = 16'h2d4f;
	ans = 16'ha721;
	#20
	A = 16'h3860;
	B = 16'h307b;
	ans = 16'h2ce7;
	#20
	A = 16'hb929;
	B = 16'hb847;
	ans = 16'h3585;
	#20
	A = 16'h336d;
	B = 16'hb1b8;
	ans = 16'ha94f;
	#20
	A = 16'h3b28;
	B = 16'h39ab;
	ans = 16'h3912;
	#20
	A = 16'h3997;
	B = 16'h364e;
	ans = 16'h3468;
	#20
	A = 16'h33de;
	B = 16'hafb5;
	ans = 16'ha794;
	#20
	A = 16'h34d3;
	B = 16'h28c6;
	ans = 16'h21c2;
	#20
	A = 16'hb94f;
	B = 16'hb506;
	ans = 16'h32ab;
	#20
	A = 16'h36df;
	B = 16'h353a;
	ans = 16'h307d;
	#20
	A = 16'h359c;
	B = 16'h3683;
	ans = 16'h3091;
	#20
	A = 16'h342a;
	B = 16'h3bd4;
	ans = 16'h3413;
	#20
	A = 16'hb0bf;
	B = 16'hb947;
	ans = 16'h2e43;
	#20
	A = 16'h3571;
	B = 16'h2059;
	ans = 16'h19ea;
	#20
	A = 16'h2e8b;
	B = 16'h2459;
	ans = 16'h171d;
	#20
	A = 16'ha0dc;
	B = 16'h34af;
	ans = 16'h99b1;
	#20
	A = 16'h3602;
	B = 16'h3b42;
	ans = 16'h3573;
	#20
	A = 16'hb406;
	B = 16'hb7ac;
	ans = 16'h2fb8;
	#20
	A = 16'hb619;
	B = 16'h38da;
	ans = 16'hb365;
	#20
	A = 16'hb4f0;
	B = 16'hb8c4;
	ans = 16'h31e2;
	#20
	A = 16'h3713;
	B = 16'hbb1c;
	ans = 16'hb649;
	#20
	A = 16'h3ae9;
	B = 16'h3069;
	ans = 16'h2f9e;
	#20
	A = 16'hb991;
	B = 16'hb0ae;
	ans = 16'h2e83;
	#20
	A = 16'hbbb6;
	B = 16'h3540;
	ans = 16'hb50f;
	#20
	A = 16'hb871;
	B = 16'hb7d8;
	ans = 16'h345b;
	#20
	A = 16'hb9b8;
	B = 16'h3868;
	ans = 16'hb64d;
	#20
	A = 16'h313f;
	B = 16'h36c3;
	ans = 16'h2c6f;
	#20
	A = 16'h39d1;
	B = 16'hb89b;
	ans = 16'hb6b2;
	#20
	A = 16'h399f;
	B = 16'h3809;
	ans = 16'h35ac;
	#20
	A = 16'h3b5d;
	B = 16'hba49;
	ans = 16'hb9c9;
	#20
	A = 16'hadda;
	B = 16'h327d;
	ans = 16'ha4bf;
	#20
	A = 16'hb885;
	B = 16'hb23b;
	ans = 16'h2f0a;
	#20
	A = 16'hb6dc;
	B = 16'hb704;
	ans = 16'h3204;
	#20
	A = 16'h382e;
	B = 16'h34f5;
	ans = 16'h312e;
	#20
	A = 16'h36d9;
	B = 16'hb053;
	ans = 16'hab67;
	#20
	A = 16'h360b;
	B = 16'h3a8f;
	ans = 16'h34f4;
	#20
	A = 16'hb88c;
	B = 16'h383e;
	ans = 16'hb4d2;
	#20
	A = 16'hb9db;
	B = 16'h2f4c;
	ans = 16'had57;
	#20
	A = 16'h303e;
	B = 16'hb3ae;
	ans = 16'ha813;
	#20
	A = 16'h39a1;
	B = 16'h3880;
	ans = 16'h3655;
	#20
	A = 16'h30b2;
	B = 16'had1f;
	ans = 16'ha203;
	#20
	A = 16'h3b2c;
	B = 16'h34cf;
	ans = 16'h3450;
	#20
	A = 16'h389f;
	B = 16'hbaad;
	ans = 16'hb7b6;
	#20
	A = 16'h3788;
	B = 16'h3207;
	ans = 16'h2dad;
	#20
	A = 16'h3a25;
	B = 16'hb8ed;
	ans = 16'hb791;
	#20
	A = 16'hb77e;
	B = 16'hbb49;
	ans = 16'h36d3;
	#20
	A = 16'hb810;
	B = 16'h39e8;
	ans = 16'hb600;
	#20
	A = 16'h3418;
	B = 16'ha91d;
	ans = 16'ha13c;
	#20
	A = 16'hbb4c;
	B = 16'h3950;
	ans = 16'hb8d8;
	#20
	A = 16'hb3a2;
	B = 16'h37c4;
	ans = 16'haf69;
	#20
	A = 16'h2bde;
	B = 16'h35b3;
	ans = 16'h259b;
	#20
	A = 16'hb8ec;
	B = 16'hb78f;
	ans = 16'h34a6;
	#20
	A = 16'hb77e;
	B = 16'ha2a2;
	ans = 16'h1e36;
	#20
	A = 16'hb854;
	B = 16'h34da;
	ans = 16'hb140;
	#20
	A = 16'hb2d1;
	B = 16'hb249;
	ans = 16'h295b;
	#20
	A = 16'hbbf8;
	B = 16'h37b0;
	ans = 16'hb7a8;
	#20
	A = 16'ha69e;
	B = 16'hb5f1;
	ans = 16'h20ea;
	#20
	A = 16'h24ae;
	B = 16'h338a;
	ans = 16'h1c69;
	#20
	A = 16'hb7af;
	B = 16'had97;
	ans = 16'h295e;
	#20
	A = 16'hb00b;
	B = 16'h3a39;
	ans = 16'hae4a;
	#20
	A = 16'ha28c;
	B = 16'h3b80;
	ans = 16'ha223;
	#20
	A = 16'h3bc1;
	B = 16'h3b44;
	ans = 16'h3b0b;
	#20
	A = 16'h2a99;
	B = 16'hbad1;
	ans = 16'ha99f;
	#20
	A = 16'h2b13;
	B = 16'h393e;
	ans = 16'h28a3;
	#20
	A = 16'had0e;
	B = 16'h33f8;
	ans = 16'ha509;
	#20
	A = 16'h3b06;
	B = 16'h3b72;
	ans = 16'h3a89;
	#20
	A = 16'h3989;
	B = 16'hb6e4;
	ans = 16'hb4c5;
	#20
	A = 16'hb114;
	B = 16'h3a64;
	ans = 16'hb00e;
	#20
	A = 16'hb87f;
	B = 16'h3b36;
	ans = 16'hb80d;
	#20
	A = 16'h386b;
	B = 16'hb126;
	ans = 16'hadb0;
	#20
	A = 16'hba4f;
	B = 16'hac66;
	ans = 16'h2af0;
	#20
	A = 16'h3b84;
	B = 16'h374d;
	ans = 16'h36dc;
	#20
	A = 16'h387c;
	B = 16'hb9a3;
	ans = 16'hb652;
	#20
	A = 16'hb820;
	B = 16'hb59f;
	ans = 16'h31cc;
	#20
	A = 16'h3501;
	B = 16'h2d2f;
	ans = 16'h267c;
	#20
	A = 16'hb54c;
	B = 16'hbaf1;
	ans = 16'h3499;
	#20
	A = 16'hb8c2;
	B = 16'h3960;
	ans = 16'hb665;
	#20
	A = 16'hbae7;
	B = 16'hb8e3;
	ans = 16'h3837;
	#20
	A = 16'h35c4;
	B = 16'hb967;
	ans = 16'hb3c9;
	#20
	A = 16'hbb47;
	B = 16'hb97a;
	ans = 16'h38fb;
	#20
	A = 16'hb98b;
	B = 16'h3a6d;
	ans = 16'hb874;
	#20
	A = 16'h2f90;
	B = 16'hb8e0;
	ans = 16'hac9c;
	#20
	A = 16'h3779;
	B = 16'hb444;
	ans = 16'haff8;
	#20
	A = 16'hba05;
	B = 16'h340a;
	ans = 16'hb214;
	#20
	A = 16'h3867;
	B = 16'hba04;
	ans = 16'hb69f;
	#20
	A = 16'hb6be;
	B = 16'hb145;
	ans = 16'h2c71;
	#20
	A = 16'hb828;
	B = 16'hb950;
	ans = 16'h3585;
	#20
	A = 16'h2b67;
	B = 16'hb629;
	ans = 16'ha5b3;
	#20
	A = 16'h307b;
	B = 16'hba46;
	ans = 16'haf07;
	#20
	A = 16'hb607;
	B = 16'hb8b2;
	ans = 16'h3313;
	#20
	A = 16'hacef;
	B = 16'h35fd;
	ans = 16'ha763;
	#20
	A = 16'h3873;
	B = 16'h3921;
	ans = 16'h35b4;
	#20
	A = 16'h34ac;
	B = 16'hb8dc;
	ans = 16'hb1ad;
	#20
	A = 16'hbbcd;
	B = 16'hb8be;
	ans = 16'h38a0;
	#20
	A = 16'hbbb2;
	B = 16'hb6cf;
	ans = 16'h368d;
	#20
	A = 16'hb055;
	B = 16'h3ab0;
	ans = 16'haf3e;
	#20
	A = 16'hb272;
	B = 16'h39c8;
	ans = 16'hb0a8;
	#20
	A = 16'hb836;
	B = 16'hb7d0;
	ans = 16'h341d;
	#20
	A = 16'h3b47;
	B = 16'h2d1f;
	ans = 16'h2ca9;
	#20
	A = 16'h3bbb;
	B = 16'hb3d1;
	ans = 16'hb38e;
	#20
	A = 16'h3bcd;
	B = 16'h3861;
	ans = 16'h3845;
	#20
	A = 16'hb612;
	B = 16'hb436;
	ans = 16'h2e64;
	#20
	A = 16'ha123;
	B = 16'hb8bc;
	ans = 16'h1e14;
	#20
	A = 16'hb2c0;
	B = 16'h377e;
	ans = 16'hae52;
	#20
	A = 16'hb9b3;
	B = 16'hb618;
	ans = 16'h3457;
	#20
	A = 16'hbab6;
	B = 16'h35fb;
	ans = 16'hb504;
	#20
	A = 16'h3304;
	B = 16'hba11;
	ans = 16'hb152;
	#20
	A = 16'hba10;
	B = 16'h334e;
	ans = 16'hb189;
	#20
	A = 16'h3a69;
	B = 16'h3821;
	ans = 16'h369e;
	#20
	A = 16'h39bf;
	B = 16'h390f;
	ans = 16'h3744;
	#20
	A = 16'hb181;
	B = 16'h3bc0;
	ans = 16'hb155;
	#20
	A = 16'h31f5;
	B = 16'h2f15;
	ans = 16'h2546;
	#20
	A = 16'hac26;
	B = 16'h29c8;
	ans = 16'h99ff;
	#20
	A = 16'h3964;
	B = 16'h3291;
	ans = 16'h306d;
	#20
	A = 16'hb950;
	B = 16'hb96e;
	ans = 16'h3736;
	#20
	A = 16'h382d;
	B = 16'h39d8;
	ans = 16'h361a;
	#20
	A = 16'hba6f;
	B = 16'h30b7;
	ans = 16'haf95;
	#20
	A = 16'hb43b;
	B = 16'hbba6;
	ans = 16'h340b;
	#20
	A = 16'h29b8;
	B = 16'hbb1c;
	ans = 16'ha915;
	#20
	A = 16'hbaa2;
	B = 16'hb699;
	ans = 16'h3578;
	#20
	A = 16'hb085;
	B = 16'h35d0;
	ans = 16'haa91;
	#20
	A = 16'hb9c9;
	B = 16'hb7fc;
	ans = 16'h35c6;
	#20
	A = 16'hba8e;
	B = 16'hb96d;
	ans = 16'h3872;
	#20
	A = 16'hbbbf;
	B = 16'ha7b6;
	ans = 16'h2777;
	#20
	A = 16'hb8b8;
	B = 16'hbbd9;
	ans = 16'h38a1;
	#20
	A = 16'h3a32;
	B = 16'ha76e;
	ans = 16'ha5c1;
	#20
	A = 16'hbac0;
	B = 16'h3b45;
	ans = 16'hba22;
	#20
	A = 16'hb8bd;
	B = 16'hb281;
	ans = 16'h2fb4;
	#20
	A = 16'h3a65;
	B = 16'h3413;
	ans = 16'h3283;
	#20
	A = 16'h345d;
	B = 16'hb0de;
	ans = 16'ha94f;
	#20
	A = 16'hb964;
	B = 16'hb526;
	ans = 16'h32f0;
	#20
	A = 16'hb224;
	B = 16'h37b5;
	ans = 16'hadea;
	#20
	A = 16'h39dc;
	B = 16'hb842;
	ans = 16'hb63d;
	#20
	A = 16'hb79f;
	B = 16'h2a5a;
	ans = 16'ha60d;
	#20
	A = 16'hb972;
	B = 16'h2fc1;
	ans = 16'had47;
	#20
	A = 16'ha9ac;
	B = 16'h34d0;
	ans = 16'ha2d3;
	#20
	A = 16'h3ae8;
	B = 16'h3a4c;
	ans = 16'h3970;
	#20
	A = 16'hba57;
	B = 16'hb3e3;
	ans = 16'h3240;
	#20
	A = 16'h3068;
	B = 16'h3b33;
	ans = 16'h2fee;
	#20
	A = 16'h3a6b;
	B = 16'hb498;
	ans = 16'hb35f;
	#20
	A = 16'hbbb5;
	B = 16'h3a1c;
	ans = 16'hb9e3;
	#20
	A = 16'hbbcf;
	B = 16'hb8f7;
	ans = 16'h38d9;
	#20
	A = 16'hb6b4;
	B = 16'hb980;
	ans = 16'h349c;
	#20
	A = 16'hb750;
	B = 16'hb52b;
	ans = 16'h30b9;
	#20
	A = 16'h3bb8;
	B = 16'hb58d;
	ans = 16'hb55b;
	#20
	A = 16'h3736;
	B = 16'hbb69;
	ans = 16'hb6ae;
	#20
	A = 16'hb92d;
	B = 16'h385b;
	ans = 16'hb5a3;
	#20
	A = 16'h3930;
	B = 16'h264a;
	ans = 16'h2414;
	#20
	A = 16'h3bf4;
	B = 16'hbb47;
	ans = 16'hbb3c;
	#20
	A = 16'h2d25;
	B = 16'hb81d;
	ans = 16'ha94a;
	#20
	A = 16'h3a1a;
	B = 16'hb4f5;
	ans = 16'hb390;
	#20
	A = 16'hb47c;
	B = 16'hb9e5;
	ans = 16'h329c;
	#20
	A = 16'h36a6;
	B = 16'h3b73;
	ans = 16'h3631;
	#20
	A = 16'hb52c;
	B = 16'h340d;
	ans = 16'had3d;
	#20
	A = 16'h37d3;
	B = 16'h3bd7;
	ans = 16'h37ab;
	#20
	A = 16'hbb4f;
	B = 16'h3a74;
	ans = 16'hb9e5;
	#20
	A = 16'h3a71;
	B = 16'hb458;
	ans = 16'hb2ff;
	#20
	A = 16'hb8b5;
	B = 16'hb678;
	ans = 16'h339d;
	#20
	A = 16'h3885;
	B = 16'hb657;
	ans = 16'hb32a;
	#20
	A = 16'ha987;
	B = 16'hb31b;
	ans = 16'h20e9;
	#20
	A = 16'h38d4;
	B = 16'hbb3c;
	ans = 16'hb85e;
	#20
	A = 16'hbaad;
	B = 16'hbae8;
	ans = 16'h39c3;
	#20
	A = 16'hb0b1;
	B = 16'hbb7a;
	ans = 16'h3062;
	#20
	A = 16'h36e0;
	B = 16'hb88a;
	ans = 16'hb3cd;
	#20
	A = 16'hb639;
	B = 16'hb5f2;
	ans = 16'h30a0;
	#20
	A = 16'h35a6;
	B = 16'hb8fe;
	ans = 16'hb30d;
	#20
	A = 16'h39f6;
	B = 16'hb984;
	ans = 16'hb81c;
	#20
	A = 16'h38ab;
	B = 16'h3bdc;
	ans = 16'h3896;
	#20
	A = 16'h36c6;
	B = 16'h3a42;
	ans = 16'h354c;
	#20
	A = 16'h3761;
	B = 16'hb8c9;
	ans = 16'hb46a;
	#20
	A = 16'hb5e8;
	B = 16'hb8df;
	ans = 16'h3331;
	#20
	A = 16'hb487;
	B = 16'h35bc;
	ans = 16'hae7e;
	#20
	A = 16'hb5d8;
	B = 16'ha8f6;
	ans = 16'h233f;
	#20
	A = 16'hb9af;
	B = 16'hb935;
	ans = 16'h3766;
	#20
	A = 16'hbac3;
	B = 16'h3210;
	ans = 16'hb120;
	#20
	A = 16'hb97b;
	B = 16'haa65;
	ans = 16'h2861;
	#20
	A = 16'h36f6;
	B = 16'h32d6;
	ans = 16'h2df3;
	#20
	A = 16'hb4a2;
	B = 16'h3985;
	ans = 16'hb265;
	#20
	A = 16'h375b;
	B = 16'hae12;
	ans = 16'ha995;
	#20
	A = 16'h354c;
	B = 16'hbb6e;
	ans = 16'hb4eb;
	#20
	A = 16'hb64a;
	B = 16'h3a01;
	ans = 16'hb4b8;
	#20
	A = 16'hb468;
	B = 16'hbbfe;
	ans = 16'h3467;
	#20
	A = 16'hb353;
	B = 16'h3958;
	ans = 16'hb0e4;
	#20
	A = 16'h33c9;
	B = 16'h3883;
	ans = 16'h3064;
	#20
	A = 16'h3405;
	B = 16'h36ab;
	ans = 16'h2eb3;
	#20
	A = 16'hb052;
	B = 16'hbb8b;
	ans = 16'h3013;
	#20
	A = 16'hb989;
	B = 16'h3ad3;
	ans = 16'hb8b9;
	#20
	A = 16'hbaa2;
	B = 16'h38e9;
	ans = 16'hb812;
	#20
	A = 16'h3a1e;
	B = 16'hb8d6;
	ans = 16'hb765;
	#20
	A = 16'h3b57;
	B = 16'hba56;
	ans = 16'hb9d0;
	#20
	A = 16'h36a3;
	B = 16'hb2f8;
	ans = 16'hadc8;
	#20
	A = 16'hb994;
	B = 16'hb423;
	ans = 16'h31c5;
	#20
	A = 16'hb6dc;
	B = 16'h395e;
	ans = 16'hb49a;
	#20
	A = 16'hb1fd;
	B = 16'ha6b7;
	ans = 16'h1d07;
	#20
	A = 16'h1fbe;
	B = 16'h3800;
	ans = 16'h1bbe;
	#20
	A = 16'h999c;
	B = 16'h3a84;
	ans = 16'h9892;
	#20
	A = 16'h396f;
	B = 16'hb9e2;
	ans = 16'hb7fe;
	#20
	A = 16'hb880;
	B = 16'haebf;
	ans = 16'h2b97;
	#20
	A = 16'h3886;
	B = 16'hb9fd;
	ans = 16'hb6c6;
	#20
	A = 16'hb85a;
	B = 16'h3a07;
	ans = 16'hb68f;
	#20
	A = 16'hbab6;
	B = 16'hac09;
	ans = 16'h2ac5;
	#20
	A = 16'h34c4;
	B = 16'h29f9;
	ans = 16'h231e;
	#20
	A = 16'h388c;
	B = 16'h2e51;
	ans = 16'h2b2e;
	#20
	A = 16'hb8ac;
	B = 16'h38f3;
	ans = 16'hb5c8;
	#20
	A = 16'hb502;
	B = 16'h31fc;
	ans = 16'hab7e;
	#20
	A = 16'hba5b;
	B = 16'h3132;
	ans = 16'hb021;
	#20
	A = 16'h30ec;
	B = 16'hbb17;
	ans = 16'hb05d;
	#20
	A = 16'h2acb;
	B = 16'hb526;
	ans = 16'ha45f;
	#20
	A = 16'h3964;
	B = 16'hbbff;
	ans = 16'hb963;
	#20
	A = 16'h3485;
	B = 16'h391e;
	ans = 16'h31c8;
	#20
	A = 16'h392e;
	B = 16'hb993;
	ans = 16'hb738;
	#20
	A = 16'h3823;
	B = 16'h36cd;
	ans = 16'h3309;
	#20
	A = 16'h392a;
	B = 16'h3779;
	ans = 16'h34d3;
	#20
	A = 16'haec5;
	B = 16'hb984;
	ans = 16'h2cab;
	#20
	A = 16'h3900;
	B = 16'h234f;
	ans = 16'h2091;
	#20
	A = 16'hb4c0;
	B = 16'h38c8;
	ans = 16'hb1ae;
	#20
	A = 16'hb25a;
	B = 16'h32ec;
	ans = 16'ha97f;
	#20
	A = 16'h3314;
	B = 16'h39d4;
	ans = 16'h3128;
	#20
	A = 16'h38f4;
	B = 16'hb9d0;
	ans = 16'hb733;
	#20
	A = 16'h2fda;
	B = 16'hbadb;
	ans = 16'haeba;
	#20
	A = 16'h3905;
	B = 16'hba80;
	ans = 16'hb814;
	#20
	A = 16'h240c;
	B = 16'hbabf;
	ans = 16'ha2d3;
	#20
	A = 16'hb160;
	B = 16'hbb35;
	ans = 16'h30d8;
	#20
	A = 16'h3008;
	B = 16'h3b31;
	ans = 16'h2f3f;
	#20
	A = 16'hb204;
	B = 16'hb8fa;
	ans = 16'h2f7c;
	#20
	A = 16'h39d1;
	B = 16'h38ee;
	ans = 16'h372b;
	#20
	A = 16'h3bce;
	B = 16'hac21;
	ans = 16'hac07;
	#20
	A = 16'hbb32;
	B = 16'h3a92;
	ans = 16'hb9e9;
	#20
	A = 16'h3b6d;
	B = 16'h39b5;
	ans = 16'h394c;
	#20
	A = 16'hba19;
	B = 16'hb685;
	ans = 16'h34f8;
	#20
	A = 16'had9d;
	B = 16'hb639;
	ans = 16'h285e;
	#20
	A = 16'h34b3;
	B = 16'h390f;
	ans = 16'h31f1;
	#20
	A = 16'hb6c9;
	B = 16'hae89;
	ans = 16'h298b;
	#20
	A = 16'h376a;
	B = 16'h2733;
	ans = 16'h22ac;
	#20
	A = 16'h360a;
	B = 16'hb955;
	ans = 16'hb406;
	#20
	A = 16'hb9c1;
	B = 16'hb903;
	ans = 16'h3736;
	#20
	A = 16'hb87e;
	B = 16'h345f;
	ans = 16'hb0e9;
	#20
	A = 16'h388e;
	B = 16'h2e51;
	ans = 16'h2b31;
	#20
	A = 16'h3944;
	B = 16'hb683;
	ans = 16'hb449;
	#20
	A = 16'h9d42;
	B = 16'hb67a;
	ans = 16'h1842;
	#20
	A = 16'h3a5b;
	B = 16'h3b35;
	ans = 16'h39ba;
	#20
	A = 16'hab4b;
	B = 16'h3656;
	ans = 16'ha5c7;
	#20
	A = 16'h380c;
	B = 16'h2fb5;
	ans = 16'h2bcc;
	#20
	A = 16'hb946;
	B = 16'hba0f;
	ans = 16'h37fd;
	#20
	A = 16'hb2af;
	B = 16'h38f0;
	ans = 16'hb020;
	#20
	A = 16'hb955;
	B = 16'h35e0;
	ans = 16'hb3d5;
	#20
	A = 16'hb913;
	B = 16'h398c;
	ans = 16'hb709;
	#20
	A = 16'hb7fa;
	B = 16'h2cc9;
	ans = 16'ha8c5;
	#20
	A = 16'hbaf4;
	B = 16'hb623;
	ans = 16'h3555;
	#20
	A = 16'h27f8;
	B = 16'hb985;
	ans = 16'ha57f;
	#20
	A = 16'hb31b;
	B = 16'hb532;
	ans = 16'h2c9d;
	#20
	A = 16'hb92b;
	B = 16'h35d4;
	ans = 16'hb388;
	#20
	A = 16'hb616;
	B = 16'hb971;
	ans = 16'h3424;
	#20
	A = 16'h2efa;
	B = 16'h3bbf;
	ans = 16'h2ec1;
	#20
	A = 16'hb7fd;
	B = 16'h2aff;
	ans = 16'ha6fc;
	#20
	A = 16'h38a1;
	B = 16'hb922;
	ans = 16'hb5f1;
	#20
	A = 16'h3b33;
	B = 16'hbbd7;
	ans = 16'hbb0e;
	#20
	A = 16'hb9c5;
	B = 16'h3991;
	ans = 16'hb804;
	#20
	A = 16'h335a;
	B = 16'hbb26;
	ans = 16'hb292;
	#20
	A = 16'h374e;
	B = 16'h2762;
	ans = 16'h22be;
	#20
	A = 16'hba21;
	B = 16'hb6b2;
	ans = 16'h3521;
	#20
	A = 16'h3762;
	B = 16'h3807;
	ans = 16'h336f;
	#20
	A = 16'hbbef;
	B = 16'ha818;
	ans = 16'h280f;
	#20
	A = 16'h2c22;
	B = 16'h3a9e;
	ans = 16'h2ad6;
	#20
	A = 16'h3a1c;
	B = 16'hb843;
	ans = 16'hb682;
	#20
	A = 16'hb89e;
	B = 16'h360c;
	ans = 16'hb2fb;
	#20
	A = 16'hb224;
	B = 16'h3443;
	ans = 16'haa8b;
	#20
	A = 16'h38aa;
	B = 16'h3a37;
	ans = 16'h373f;
	#20
	A = 16'haa5b;
	B = 16'hb474;
	ans = 16'h2313;
	#20
	A = 16'hba07;
	B = 16'h2fe9;
	ans = 16'hadf6;
	#20
	A = 16'h38f5;
	B = 16'h3a28;
	ans = 16'h37a1;
	#20
	A = 16'hbb60;
	B = 16'h36f2;
	ans = 16'hb667;
	#20
	A = 16'h394e;
	B = 16'h369a;
	ans = 16'h3461;
	#20
	A = 16'h3a1d;
	B = 16'hb8c2;
	ans = 16'hb745;
	#20
	A = 16'h3962;
	B = 16'hba6e;
	ans = 16'hb854;
	#20
	A = 16'hb80e;
	B = 16'hb559;
	ans = 16'h316c;
	#20
	A = 16'hb4a3;
	B = 16'hb5a9;
	ans = 16'h2e90;
	#20
	A = 16'hba65;
	B = 16'h3665;
	ans = 16'hb51c;
	#20
	A = 16'h3b22;
	B = 16'h3a78;
	ans = 16'h39c4;
	#20
	A = 16'haea2;
	B = 16'h39f7;
	ans = 16'hacf2;
	#20
	A = 16'h3973;
	B = 16'h384e;
	ans = 16'h35dd;
	#20
	A = 16'h3843;
	B = 16'hb16a;
	ans = 16'hadc5;
	#20
	A = 16'h2d45;
	B = 16'h3a8b;
	ans = 16'h2c4f;
	#20
	A = 16'hb669;
	B = 16'hafed;
	ans = 16'h2a5a;
	#20
	A = 16'h3746;
	B = 16'h2e77;
	ans = 16'h29e1;
	#20
	A = 16'h3532;
	B = 16'hac2f;
	ans = 16'ha56f;
	#20
	A = 16'hb745;
	B = 16'h3252;
	ans = 16'hadbe;
	#20
	A = 16'hae9e;
	B = 16'hb76e;
	ans = 16'h2a25;
	#20
	A = 16'hb15a;
	B = 16'hb44a;
	ans = 16'h29bd;
	#20
	A = 16'h3809;
	B = 16'h387e;
	ans = 16'h3488;
	#20
	A = 16'hb365;
	B = 16'h392d;
	ans = 16'hb0c9;
	#20
	A = 16'h3552;
	B = 16'hbb6e;
	ans = 16'hb4f1;
	#20
	A = 16'h34b7;
	B = 16'hbb45;
	ans = 16'hb449;
	#20
	A = 16'hb969;
	B = 16'h38ed;
	ans = 16'hb6aa;
	#20
	A = 16'hbb7d;
	B = 16'hba01;
	ans = 16'h399f;
	#20
	A = 16'h2883;
	B = 16'h388d;
	ans = 16'h2522;
	#20
	A = 16'hb929;
	B = 16'hbaf2;
	ans = 16'h387b;
	#20
	A = 16'h3181;
	B = 16'hb037;
	ans = 16'ha5cd;
	#20
	A = 16'hb90b;
	B = 16'hbb8c;
	ans = 16'h38c2;
	#20
	A = 16'h3b64;
	B = 16'hb884;
	ans = 16'hb82c;
	#20
	A = 16'hb7c9;
	B = 16'h3670;
	ans = 16'hb244;
	#20
	A = 16'haa15;
	B = 16'h37b6;
	ans = 16'ha5dd;
	#20
	A = 16'hb30d;
	B = 16'hbabe;
	ans = 16'h31f1;
	#20
	A = 16'hb9da;
	B = 16'h2d57;
	ans = 16'habd0;
	#20
	A = 16'h36c0;
	B = 16'hae98;
	ans = 16'ha990;
	#20
	A = 16'h3828;
	B = 16'haff4;
	ans = 16'hac22;
	#20
	A = 16'hbbc3;
	B = 16'h2e92;
	ans = 16'hae60;
	#20
	A = 16'hbab0;
	B = 16'h3ba4;
	ans = 16'hba63;
	#20
	A = 16'hbbe5;
	B = 16'h3697;
	ans = 16'hb681;
	#20
	A = 16'h37ac;
	B = 16'hb9cb;
	ans = 16'hb58e;
	#20
	A = 16'hbb6f;
	B = 16'hb45c;
	ans = 16'h340d;
	#20
	A = 16'h2e9d;
	B = 16'h3358;
	ans = 16'h2612;
	#20
	A = 16'hbbc8;
	B = 16'h3a10;
	ans = 16'hb9e6;
	#20
	A = 16'h36dd;
	B = 16'hbaed;
	ans = 16'hb5f1;
	#20
	A = 16'h3898;
	B = 16'h2e37;
	ans = 16'h2b23;
	#20
	A = 16'h3850;
	B = 16'hbb9c;
	ans = 16'hb81a;
	#20
	A = 16'hbbe9;
	B = 16'hbbbf;
	ans = 16'h3ba9;
	#20
	A = 16'h3b50;
	B = 16'h3a8a;
	ans = 16'h39fa;
	#20
	A = 16'h3a58;
	B = 16'h3688;
	ans = 16'h352e;
	#20
	A = 16'hbabc;
	B = 16'hb6eb;
	ans = 16'h35d3;
	#20
	A = 16'hb9f2;
	B = 16'hacb4;
	ans = 16'h2afe;
	#20
	A = 16'h2ce2;
	B = 16'h379c;
	ans = 16'h28a5;
	#20
	A = 16'hb8b4;
	B = 16'hba0c;
	ans = 16'h371c;
	#20
	A = 16'hb9e8;
	B = 16'h3731;
	ans = 16'hb54f;
	#20
	A = 16'h2f5c;
	B = 16'hb9fb;
	ans = 16'had80;
	#20
	A = 16'h3a3d;
	B = 16'h3300;
	ans = 16'h3175;
	#20
	A = 16'h273e;
	B = 16'hbac0;
	ans = 16'ha61c;
	#20
	A = 16'h3852;
	B = 16'h33eb;
	ans = 16'h3047;
	#20
	A = 16'h385e;
	B = 16'h396a;
	ans = 16'h35e9;
	#20
	A = 16'h3ac2;
	B = 16'hb844;
	ans = 16'hb735;
	#20
	A = 16'hb9c4;
	B = 16'h3634;
	ans = 16'hb478;
	#20
	A = 16'hb7af;
	B = 16'hb054;
	ans = 16'h2c28;
	#20
	A = 16'hb700;
	B = 16'h3b6e;
	ans = 16'hb680;
	#20
	A = 16'h3805;
	B = 16'h3813;
	ans = 16'h3418;
	#20
	A = 16'h355a;
	B = 16'hb537;
	ans = 16'haefa;
	#20
	A = 16'hb8a1;
	B = 16'hade7;
	ans = 16'h2ad5;
	#20
	A = 16'h3b07;
	B = 16'h372b;
	ans = 16'h364c;
	#20
	A = 16'hb193;
	B = 16'hb48a;
	ans = 16'h2a53;
	#20
	A = 16'hbbb0;
	B = 16'h3adf;
	ans = 16'hba9a;
	#20
	A = 16'hbb7b;
	B = 16'h3966;
	ans = 16'hb90c;
	#20
	A = 16'hb565;
	B = 16'h3abc;
	ans = 16'hb48b;
	#20
	A = 16'ha929;
	B = 16'hb9de;
	ans = 16'h2792;
	#20
	A = 16'h3ae4;
	B = 16'h3b39;
	ans = 16'h3a39;
	#20
	A = 16'h3b95;
	B = 16'h3298;
	ans = 16'h3240;
	#20
	A = 16'h3ac3;
	B = 16'h3963;
	ans = 16'h388e;
	#20
	A = 16'haf81;
	B = 16'h3871;
	ans = 16'hac2a;
	#20
	A = 16'hae72;
	B = 16'h2fce;
	ans = 16'ha24a;
	#20
	A = 16'hb7d7;
	B = 16'hbb54;
	ans = 16'h372e;
	#20
	A = 16'hb206;
	B = 16'h38df;
	ans = 16'haf56;
	#20
	A = 16'hb83c;
	B = 16'h3607;
	ans = 16'hb261;
	#20
	A = 16'h3a1f;
	B = 16'h3986;
	ans = 16'h383a;
	#20
	A = 16'hb8c5;
	B = 16'h39d5;
	ans = 16'hb6f4;
	#20
	A = 16'h212c;
	B = 16'ha99f;
	ans = 16'h8f45;
	#20
	A = 16'hae8b;
	B = 16'h3be9;
	ans = 16'hae78;
	#20
	A = 16'h357c;
	B = 16'h3749;
	ans = 16'h30ff;
	#20
	A = 16'hb183;
	B = 16'hbbbd;
	ans = 16'h3155;
	#20
	A = 16'hb820;
	B = 16'hb8d7;
	ans = 16'h34fe;
	#20
	A = 16'h35f0;
	B = 16'h364c;
	ans = 16'h30ac;
	#20
	A = 16'hb8d8;
	B = 16'h386a;
	ans = 16'hb558;
	#20
	A = 16'hb4e5;
	B = 16'hba70;
	ans = 16'h33e1;
	#20
	A = 16'hbb05;
	B = 16'hb69a;
	ans = 16'h35cb;
	#20
	A = 16'hb979;
	B = 16'hb89b;
	ans = 16'h364d;
	#20
	A = 16'ha584;
	B = 16'hbb77;
	ans = 16'h2526;
	#20
	A = 16'hb9d9;
	B = 16'hb239;
	ans = 16'h308c;
	#20
	A = 16'hbb90;
	B = 16'hba91;
	ans = 16'h3a35;
	#20
	A = 16'h3684;
	B = 16'h3968;
	ans = 16'h3467;
	#20
	A = 16'habbc;
	B = 16'hb7f2;
	ans = 16'h27ae;
	#20
	A = 16'h3642;
	B = 16'h3374;
	ans = 16'h2dd4;
	#20
	A = 16'hafe7;
	B = 16'h37ec;
	ans = 16'habd3;
	#20
	A = 16'h395b;
	B = 16'hba96;
	ans = 16'hb869;
	#20
	A = 16'h34e8;
	B = 16'h35bb;
	ans = 16'h2f07;
	#20
	A = 16'h3b28;
	B = 16'h3b58;
	ans = 16'h3a92;
	#20
	A = 16'hb56d;
	B = 16'hb2e0;
	ans = 16'h2caa;
	#20
	A = 16'h2f9a;
	B = 16'hb240;
	ans = 16'ha5f0;
	#20
	A = 16'h3a1d;
	B = 16'h3b78;
	ans = 16'h39b5;
	#20
	A = 16'hb405;
	B = 16'h37fa;
	ans = 16'hb002;
	#20
	A = 16'hb4be;
	B = 16'hb8c7;
	ans = 16'h31aa;
	#20
	A = 16'h2d39;
	B = 16'h2da9;
	ans = 16'h1f64;
	#20
	A = 16'hb60a;
	B = 16'hb889;
	ans = 16'h32d9;
	#20
	A = 16'h37ca;
	B = 16'h2d60;
	ans = 16'h293c;
	#20
	A = 16'h391d;
	B = 16'hbbc1;
	ans = 16'hb8f5;
	#20
	A = 16'h369b;
	B = 16'h39df;
	ans = 16'h34d9;
	#20
	A = 16'h398c;
	B = 16'h38d0;
	ans = 16'h36ac;
	#20
	A = 16'h3590;
	B = 16'hba6a;
	ans = 16'hb476;
	#20
	A = 16'h3a4b;
	B = 16'hb0a2;
	ans = 16'haf4a;
	#20
	A = 16'h3812;
	B = 16'hb843;
	ans = 16'hb456;
	#20
	A = 16'hb6cb;
	B = 16'hb4c9;
	ans = 16'h3010;
	#20
	A = 16'h2270;
	B = 16'hb41b;
	ans = 16'h9a9b;
	#20
	A = 16'haeb9;
	B = 16'h3b40;
	ans = 16'hae18;
	#20
	A = 16'hb98a;
	B = 16'hba4b;
	ans = 16'h385b;
	#20
	A = 16'hb839;
	B = 16'h3859;
	ans = 16'hb497;
	#20
	A = 16'h36eb;
	B = 16'h2fa7;
	ans = 16'h2a9e;
	#20
	A = 16'hbb3e;
	B = 16'hb617;
	ans = 16'h3583;
	#20
	A = 16'h318b;
	B = 16'h3409;
	ans = 16'h2997;
	#20
	A = 16'h388e;
	B = 16'h312d;
	ans = 16'h2de5;
	#20
	A = 16'hb928;
	B = 16'haea6;
	ans = 16'h2c49;
	#20
	A = 16'hbbc8;
	B = 16'hbac1;
	ans = 16'h3a92;
	#20
	A = 16'h3903;
	B = 16'h38a6;
	ans = 16'h35d3;
	#20
	A = 16'h3564;
	B = 16'hba3f;
	ans = 16'hb435;
	#20
	A = 16'h38e2;
	B = 16'hb7c2;
	ans = 16'hb4bc;
	#20
	A = 16'h386b;
	B = 16'h3753;
	ans = 16'h340b;
	#20
	A = 16'hb94b;
	B = 16'hb874;
	ans = 16'h35e4;
	#20
	A = 16'hb159;
	B = 16'h3b9c;
	ans = 16'hb116;
	#20
	A = 16'h33d1;
	B = 16'hbbe5;
	ans = 16'hb3b7;
	#20
	A = 16'hb781;
	B = 16'h2d2e;
	ans = 16'ha8dc;
	#20
	A = 16'h33b8;
	B = 16'hb9a1;
	ans = 16'hb16e;
	#20
	A = 16'hb9f7;
	B = 16'hbbcd;
	ans = 16'h39d1;
	#20
	A = 16'h376f;
	B = 16'h3bf2;
	ans = 16'h3762;
	#20
	A = 16'hb0cf;
	B = 16'hba07;
	ans = 16'h2f3f;
	#20
	A = 16'h3a8e;
	B = 16'hb8bb;
	ans = 16'hb7c0;
	#20
	A = 16'h369d;
	B = 16'h343b;
	ans = 16'h2eff;
	#20
	A = 16'h3bc4;
	B = 16'hb472;
	ans = 16'hb451;
	#20
	A = 16'h3587;
	B = 16'hb473;
	ans = 16'hae26;
	#20
	A = 16'h3b36;
	B = 16'h37b7;
	ans = 16'h36f4;
	#20
	A = 16'h3a72;
	B = 16'h3b3c;
	ans = 16'h39d4;
	#20
	A = 16'h363b;
	B = 16'hb2d0;
	ans = 16'had4e;
	#20
	A = 16'h38ae;
	B = 16'hb602;
	ans = 16'hb307;
	#20
	A = 16'h3072;
	B = 16'h3a1f;
	ans = 16'h2ecd;
	#20
	A = 16'h35ce;
	B = 16'hb885;
	ans = 16'hb28f;
	#20
	A = 16'h3ac0;
	B = 16'hb20b;
	ans = 16'hb119;
	#20
	A = 16'hb596;
	B = 16'ha4c3;
	ans = 16'h1ea6;
	#20
	A = 16'h3a02;
	B = 16'hba98;
	ans = 16'hb8f4;
	#20
	A = 16'hb324;
	B = 16'hb33f;
	ans = 16'h2a78;
	#20
	A = 16'hb82b;
	B = 16'hb192;
	ans = 16'h2dce;
	#20
	A = 16'h377c;
	B = 16'hb9af;
	ans = 16'hb551;
	#20
	A = 16'hbbce;
	B = 16'ha91f;
	ans = 16'h28ff;
	#20
	A = 16'h39a8;
	B = 16'h3a3a;
	ans = 16'h3867;
	#20
	A = 16'hb8a7;
	B = 16'h39fa;
	ans = 16'hb6f4;
	#20
	A = 16'hb59d;
	B = 16'hbb42;
	ans = 16'h3518;
	#20
	A = 16'h39ed;
	B = 16'hb8e8;
	ans = 16'hb745;
	#20
	A = 16'hb6ab;
	B = 16'h2742;
	ans = 16'ha20d;
	#20
	A = 16'ha51b;
	B = 16'h3a38;
	ans = 16'ha3f0;
	#20
	A = 16'h34d1;
	B = 16'hb6e7;
	ans = 16'hb028;
	#20
	A = 16'hb76e;
	B = 16'hb815;
	ans = 16'h3395;
	#20
	A = 16'hb5ee;
	B = 16'h398a;
	ans = 16'hb41b;
	#20
	A = 16'hae8e;
	B = 16'h37bc;
	ans = 16'haa56;
	#20
	A = 16'h3b78;
	B = 16'hbb6a;
	ans = 16'hbaec;
	#20
	A = 16'h3767;
	B = 16'ha8c3;
	ans = 16'ha468;
	#20
	A = 16'h39cd;
	B = 16'hb9c3;
	ans = 16'hb82e;
	#20
	A = 16'h26e6;
	B = 16'hbafd;
	ans = 16'ha607;
	#20
	A = 16'h3946;
	B = 16'haf60;
	ans = 16'hacdd;
	#20
	A = 16'h2c79;
	B = 16'h384f;
	ans = 16'h28d1;
	#20
	A = 16'hb9b9;
	B = 16'hb5b9;
	ans = 16'h3418;
	#20
	A = 16'hb3f6;
	B = 16'hba60;
	ans = 16'h3258;
	#20
	A = 16'hba0b;
	B = 16'h3a92;
	ans = 16'hb8f7;
	#20
	A = 16'h3a91;
	B = 16'h3465;
	ans = 16'h3337;
	#20
	A = 16'h3be5;
	B = 16'h3897;
	ans = 16'h3888;
	#20
	A = 16'h39ff;
	B = 16'h39c2;
	ans = 16'h3851;
	#20
	A = 16'hbb8c;
	B = 16'h36ce;
	ans = 16'hb66b;
	#20
	A = 16'hb7d7;
	B = 16'hb209;
	ans = 16'h2dea;
	#20
	A = 16'hb555;
	B = 16'hb7b9;
	ans = 16'h3126;
	#20
	A = 16'hac9c;
	B = 16'h974d;
	ans = 16'h835;
	#20
	A = 16'hb42b;
	B = 16'h383d;
	ans = 16'hb06b;
	#20
	A = 16'h3ab5;
	B = 16'h246d;
	ans = 16'h236c;
	#20
	A = 16'hbbc4;
	B = 16'h3b13;
	ans = 16'hbade;
	#20
	A = 16'h3827;
	B = 16'h37a8;
	ans = 16'h33f3;
	#20
	A = 16'h260e;
	B = 16'hb1cc;
	ans = 16'h9c63;
	#20
	A = 16'h329d;
	B = 16'h36f8;
	ans = 16'h2dc3;
	#20
	A = 16'hbb75;
	B = 16'hb9e4;
	ans = 16'h397e;
	#20
	A = 16'h30e6;
	B = 16'hb088;
	ans = 16'ha58d;
	#20
	A = 16'hb895;
	B = 16'h2d0f;
	ans = 16'ha9cb;
	#20
	A = 16'h3712;
	B = 16'hb7fa;
	ans = 16'hb30d;
	#20
	A = 16'hb128;
	B = 16'hb960;
	ans = 16'h2eee;
	#20
	A = 16'hb8d1;
	B = 16'hbb11;
	ans = 16'h3841;
	#20
	A = 16'hbb0a;
	B = 16'h3821;
	ans = 16'hb744;
	#20
	A = 16'hb7ad;
	B = 16'h350e;
	ans = 16'hb0da;
	#20
	A = 16'hb564;
	B = 16'hb82a;
	ans = 16'h319d;
	#20
	A = 16'hb954;
	B = 16'hb8a4;
	ans = 16'h362e;
	#20
	A = 16'hb87e;
	B = 16'hb90a;
	ans = 16'h35a9;
	#20
	A = 16'h33e6;
	B = 16'h3a83;
	ans = 16'h326e;
	#20
	A = 16'h3b1b;
	B = 16'h388a;
	ans = 16'h3808;
	#20
	A = 16'h3641;
	B = 16'h3b0b;
	ans = 16'h3581;
	#20
	A = 16'h3397;
	B = 16'hb05c;
	ans = 16'ha823;
	#20
	A = 16'h3aff;
	B = 16'h3897;
	ans = 16'h3804;
	#20
	A = 16'h309f;
	B = 16'h33e8;
	ans = 16'h2891;
	#20
	A = 16'h37ca;
	B = 16'h31e1;
	ans = 16'h2db9;
	#20
	A = 16'hbbb0;
	B = 16'h39dd;
	ans = 16'hb9a2;
	#20
	A = 16'hb4e9;
	B = 16'h2087;
	ans = 16'h998f;
	#20
	A = 16'hbaff;
	B = 16'h3a6f;
	ans = 16'hb9a0;
	#20
	A = 16'hb627;
	B = 16'h3b8a;
	ans = 16'hb5cc;
	#20
	A = 16'hbabd;
	B = 16'h3833;
	ans = 16'hb713;
	#20
	A = 16'hb798;
	B = 16'hb962;
	ans = 16'h351c;
	#20
	A = 16'had3f;
	B = 16'h3586;
	ans = 16'ha73e;
	#20
	A = 16'h3bf4;
	B = 16'h3b7e;
	ans = 16'h3b73;
	#20
	A = 16'hbb45;
	B = 16'h3b65;
	ans = 16'hbab8;
	#20
	A = 16'haa3b;
	B = 16'hb0fd;
	ans = 16'h1fc5;
	#20
	A = 16'h3b83;
	B = 16'hb6ae;
	ans = 16'hb646;
	#20
	A = 16'h3a11;
	B = 16'hb887;
	ans = 16'hb6de;
	#20
	A = 16'h334b;
	B = 16'hb4fa;
	ans = 16'hac89;
	#20
	A = 16'h39e5;
	B = 16'hbb89;
	ans = 16'hb98d;
	#20
	A = 16'hb9b5;
	B = 16'hbbe8;
	ans = 16'h39a4;
	#20
	A = 16'hba48;
	B = 16'hb930;
	ans = 16'h3813;
	#20
	A = 16'hbb41;
	B = 16'h3b58;
	ans = 16'hbaa9;
	#20
	A = 16'h353b;
	B = 16'h2e33;
	ans = 16'h280e;
	#20
	A = 16'hb52c;
	B = 16'ha878;
	ans = 16'h21c7;
	#20
	A = 16'h32eb;
	B = 16'haef9;
	ans = 16'ha608;
	#20
	A = 16'hb1ce;
	B = 16'hadbe;
	ans = 16'h242b;
	#20
	A = 16'hbaa6;
	B = 16'hb2db;
	ans = 16'h31b3;
	#20
	A = 16'h3b66;
	B = 16'hb120;
	ans = 16'hb0bd;
	#20
	A = 16'hbb2f;
	B = 16'h3899;
	ans = 16'hb821;
	#20
	A = 16'h3440;
	B = 16'h3af5;
	ans = 16'h3364;
	#20
	A = 16'hb322;
	B = 16'hb116;
	ans = 16'h2889;
	#20
	A = 16'h3771;
	B = 16'h3b96;
	ans = 16'h370e;
	#20
	A = 16'hbb84;
	B = 16'h3554;
	ans = 16'hb501;
	#20
	A = 16'hb99c;
	B = 16'h3b4e;
	ans = 16'hb91f;
	#20
	A = 16'hb7ab;
	B = 16'hb899;
	ans = 16'h3468;
	#20
	A = 16'ha04f;
	B = 16'h3b95;
	ans = 16'ha015;
	#20
	A = 16'hbb19;
	B = 16'h3933;
	ans = 16'hb89d;
	#20
	A = 16'h35ca;
	B = 16'h36b1;
	ans = 16'h30d8;
	#20
	A = 16'hb853;
	B = 16'hb933;
	ans = 16'h359f;
	#20
	A = 16'h388c;
	B = 16'hb47e;
	ans = 16'hb11b;
	#20
	A = 16'h3bc5;
	B = 16'hb82e;
	ans = 16'hb80f;
	#20
	A = 16'hbaf2;
	B = 16'hbbde;
	ans = 16'h3ad4;
	#20
	A = 16'h2f12;
	B = 16'h382a;
	ans = 16'h2b5c;
	#20
	A = 16'h2ba5;
	B = 16'hb82a;
	ans = 16'ha7f5;
	#20
	A = 16'h381a;
	B = 16'hbb40;
	ans = 16'hb76f;
	#20
	A = 16'hb5ae;
	B = 16'hb933;
	ans = 16'h3362;
	#20
	A = 16'h35b0;
	B = 16'h39c1;
	ans = 16'h3417;
	#20
	A = 16'hb31c;
	B = 16'hba21;
	ans = 16'h3172;
	#20
	A = 16'hb98f;
	B = 16'h239c;
	ans = 16'ha14a;
	#20
	A = 16'h3971;
	B = 16'hacf1;
	ans = 16'haab9;
	#20
	A = 16'h3b26;
	B = 16'h3b50;
	ans = 16'h3a89;
	#20
	A = 16'h39ef;
	B = 16'h2509;
	ans = 16'h2378;
	#20
	A = 16'h3bd7;
	B = 16'h367a;
	ans = 16'h3659;
	#20
	A = 16'habe7;
	B = 16'h3353;
	ans = 16'ha33c;
	#20
	A = 16'h2e17;
	B = 16'hb72f;
	ans = 16'ha978;
	#20
	A = 16'hb69c;
	B = 16'h3982;
	ans = 16'hb48d;
	#20
	A = 16'hb81c;
	B = 16'hb419;
	ans = 16'h3036;
	#20
	A = 16'hb695;
	B = 16'hb9e9;
	ans = 16'h34dd;
	#20
	A = 16'h389c;
	B = 16'h3837;
	ans = 16'h34db;
	#20
	A = 16'h3121;
	B = 16'hb1d2;
	ans = 16'ha777;
	#20
	A = 16'h3ab8;
	B = 16'h3ae5;
	ans = 16'h39ca;
	#20
	A = 16'hbb89;
	B = 16'hba5e;
	ans = 16'h39ff;
	#20
	A = 16'hb13e;
	B = 16'h3811;
	ans = 16'had54;
	#20
	A = 16'h3a92;
	B = 16'hb77e;
	ans = 16'hb627;
	#20
	A = 16'hba2a;
	B = 16'hb9e0;
	ans = 16'h3887;
	#20
	A = 16'hb975;
	B = 16'hba20;
	ans = 16'h382e;
	#20
	A = 16'h35ca;
	B = 16'hb844;
	ans = 16'hb22c;
	#20
	A = 16'h257d;
	B = 16'h386b;
	ans = 16'h2210;
	#20
	A = 16'h30b0;
	B = 16'h3b4e;
	ans = 16'h3048;
	#20
	A = 16'h389e;
	B = 16'hba57;
	ans = 16'hb751;
	#20
	A = 16'hb41a;
	B = 16'h3886;
	ans = 16'hb0a3;
	#20
	A = 16'hb9d4;
	B = 16'h3944;
	ans = 16'hb7ac;
	#20
	A = 16'hb7f4;
	B = 16'hb99f;
	ans = 16'h3597;
	#20
	A = 16'hac10;
	B = 16'hb519;
	ans = 16'h252d;
	#20
	A = 16'h2a76;
	B = 16'h3b90;
	ans = 16'h2a1c;
	#20
	A = 16'h35cb;
	B = 16'hb692;
	ans = 16'hb0c2;
	#20
	A = 16'hb5a2;
	B = 16'hb687;
	ans = 16'h3099;
	#20
	A = 16'hbaf2;
	B = 16'h3921;
	ans = 16'hb874;
	#20
	A = 16'h3906;
	B = 16'hbaba;
	ans = 16'hb839;
	#20
	A = 16'hba2c;
	B = 16'h39b4;
	ans = 16'hb866;
	#20
	A = 16'h38cb;
	B = 16'hb95b;
	ans = 16'hb66b;
	#20
	A = 16'hb121;
	B = 16'ha8e5;
	ans = 16'h1e47;
	#20
	A = 16'hb8db;
	B = 16'h382a;
	ans = 16'hb50e;
	#20
	A = 16'h37d9;
	B = 16'hae26;
	ans = 16'haa08;
	#20
	A = 16'hab9f;
	B = 16'h3710;
	ans = 16'ha6ba;
	#20
	A = 16'hb483;
	B = 16'h396a;
	ans = 16'hb21b;
	#20
	A = 16'h36ab;
	B = 16'h38f7;
	ans = 16'h3423;
	#20
	A = 16'h37a4;
	B = 16'h37f4;
	ans = 16'h3399;
	#20
	A = 16'h36e9;
	B = 16'h39d9;
	ans = 16'h350d;
	#20
	A = 16'hb89d;
	B = 16'hb4ec;
	ans = 16'h31ad;
	#20
	A = 16'hba2a;
	B = 16'hb9c7;
	ans = 16'h3874;
	#20
	A = 16'h3501;
	B = 16'hb87b;
	ans = 16'hb19b;
	#20
	A = 16'h3a03;
	B = 16'hb351;
	ans = 16'hb17f;
	#20
	A = 16'hbb38;
	B = 16'hb832;
	ans = 16'h3792;
	#20
	A = 16'h30f4;
	B = 16'hbbdb;
	ans = 16'hb0dd;
	#20
	A = 16'hbb59;
	B = 16'h3b0b;
	ans = 16'hba78;
	#20
	A = 16'hbabb;
	B = 16'h39be;
	ans = 16'hb8d5;
	#20
	A = 16'hb5f3;
	B = 16'hba2f;
	ans = 16'h3499;
	#20
	A = 16'h3afa;
	B = 16'h2d4d;
	ans = 16'h2c9f;
	#20
	A = 16'hbbe4;
	B = 16'h3516;
	ans = 16'hb504;
	#20
	A = 16'h33aa;
	B = 16'h39ec;
	ans = 16'h31ac;
	#20
	A = 16'h3b69;
	B = 16'h3978;
	ans = 16'h3911;
	#20
	A = 16'hb6c9;
	B = 16'hbbbd;
	ans = 16'h3690;
	#20
	A = 16'h345b;
	B = 16'hb0d6;
	ans = 16'ha944;
	#20
	A = 16'h396a;
	B = 16'hbb28;
	ans = 16'hb8d8;
	#20
	A = 16'h37d7;
	B = 16'h30fd;
	ans = 16'h2ce3;
	#20
	A = 16'hbb62;
	B = 16'hbb26;
	ans = 16'h3a99;
	#20
	A = 16'h2f7e;
	B = 16'hb085;
	ans = 16'ha43c;
	#20
	A = 16'h393a;
	B = 16'hb238;
	ans = 16'hb010;
	#20
	A = 16'hb96d;
	B = 16'h3198;
	ans = 16'haf96;
	#20
	A = 16'hb652;
	B = 16'hba08;
	ans = 16'h34c4;
	#20
	A = 16'hb441;
	B = 16'h3356;
	ans = 16'habcd;
	#20
	A = 16'hb628;
	B = 16'h38b7;
	ans = 16'hb342;
	#20
	A = 16'h3bbb;
	B = 16'hab50;
	ans = 16'hab11;
	#20
	A = 16'hb921;
	B = 16'hb51c;
	ans = 16'h328d;
	#20
	A = 16'ha8af;
	B = 16'h31e7;
	ans = 16'h9ee9;
	#20
	A = 16'h35ba;
	B = 16'h3aeb;
	ans = 16'h34f4;
	#20
	A = 16'h38ae;
	B = 16'hbae3;
	ans = 16'hb807;
	#20
	A = 16'h311e;
	B = 16'hba74;
	ans = 16'hb021;
	#20
	A = 16'hbb7a;
	B = 16'h3745;
	ans = 16'hb6cb;
	#20
	A = 16'h3b26;
	B = 16'hb97a;
	ans = 16'hb8e5;
	#20
	A = 16'h2d24;
	B = 16'h399b;
	ans = 16'h2b34;
	#20
	A = 16'ha3eb;
	B = 16'h3680;
	ans = 16'h9e6f;
	#20
	A = 16'hbaef;
	B = 16'hb6af;
	ans = 16'h35cb;
	#20
	A = 16'hbbe8;
	B = 16'h36b3;
	ans = 16'hb69f;
	#20
	A = 16'hb5bc;
	B = 16'h2de6;
	ans = 16'ha83a;
	#20
	A = 16'h3304;
	B = 16'h3a81;
	ans = 16'h31b4;
	#20
	A = 16'hb8e6;
	B = 16'h3a35;
	ans = 16'hb79a;
	#20
	A = 16'hb828;
	B = 16'h3516;
	ans = 16'hb149;
	#20
	A = 16'h3b0f;
	B = 16'h3898;
	ans = 16'h380e;
	#20
	A = 16'hb673;
	B = 16'h3922;
	ans = 16'hb423;
	#20
	A = 16'hba99;
	B = 16'h3bcd;
	ans = 16'hba6f;
	#20
	A = 16'hba3f;
	B = 16'h2f2e;
	ans = 16'had9b;
	#20
	A = 16'h3504;
	B = 16'hb9db;
	ans = 16'hb358;
	#20
	A = 16'hba6d;
	B = 16'h3b81;
	ans = 16'hba07;
	#20
	A = 16'h3b03;
	B = 16'haf6c;
	ans = 16'hae81;
	#20
	A = 16'h3837;
	B = 16'h3004;
	ans = 16'h2c3b;
	#20
	A = 16'hab5a;
	B = 16'h3a4f;
	ans = 16'ha9cc;
	#20
	A = 16'hba68;
	B = 16'hbabd;
	ans = 16'h3965;
	#20
	A = 16'hb962;
	B = 16'hb91d;
	ans = 16'h36e2;
	#20
	A = 16'hb8f1;
	B = 16'hb8ee;
	ans = 16'h3617;
	#20
	A = 16'hbb66;
	B = 16'h3946;
	ans = 16'hb8e0;
	#20
	A = 16'h37ad;
	B = 16'h3888;
	ans = 16'h3459;
	#20
	A = 16'hb7ab;
	B = 16'h3bde;
	ans = 16'hb78a;
	#20
	A = 16'h326c;
	B = 16'h370b;
	ans = 16'h2da7;
	#20
	A = 16'hb706;
	B = 16'hb9e6;
	ans = 16'h352e;
	#20
	A = 16'hb9ac;
	B = 16'hb73b;
	ans = 16'h3520;
	#20
	A = 16'h3974;
	B = 16'hbbd7;
	ans = 16'hb958;
	#20
	A = 16'h3968;
	B = 16'h365a;
	ans = 16'h344b;
	#20
	A = 16'h2d1a;
	B = 16'h3894;
	ans = 16'h29d7;
	#20
	A = 16'h38fc;
	B = 16'h3bcd;
	ans = 16'h38dc;
	#20
	A = 16'h3786;
	B = 16'h3acf;
	ans = 16'h3667;
	#20
	A = 16'h37de;
	B = 16'h3856;
	ans = 16'h3444;
	#20
	A = 16'h3477;
	B = 16'h3750;
	ans = 16'h3015;
	#20
	A = 16'hbb5d;
	B = 16'hb9fc;
	ans = 16'h3982;
	#20
	A = 16'h27ef;
	B = 16'h3626;
	ans = 16'h2219;
	#20
	A = 16'h3af6;
	B = 16'h2d69;
	ans = 16'h2cb5;
	#20
	A = 16'hb9af;
	B = 16'h34c4;
	ans = 16'hb2c5;
	#20
	A = 16'hb803;
	B = 16'h2ca7;
	ans = 16'ha8aa;
	#20
	A = 16'haf0c;
	B = 16'h33b9;
	ans = 16'ha6cd;
	#20
	A = 16'hb5a5;
	B = 16'h35fc;
	ans = 16'hb039;
	#20
	A = 16'hb70d;
	B = 16'hbb9f;
	ans = 16'h36b8;
	#20
	A = 16'h3af1;
	B = 16'h26fc;
	ans = 16'h260f;
	#20
	A = 16'hb7c5;
	B = 16'h34c5;
	ans = 16'hb0a2;
	#20
	A = 16'hac8e;
	B = 16'h39dd;
	ans = 16'haaad;
	#20
	A = 16'hb450;
	B = 16'hb5f5;
	ans = 16'h2e6c;
	#20
	A = 16'hb986;
	B = 16'h3851;
	ans = 16'hb5f6;
	#20
	A = 16'h3436;
	B = 16'ha4b1;
	ans = 16'h9cf0;
	#20
	A = 16'h3b91;
	B = 16'hb978;
	ans = 16'hb92c;
	#20
	A = 16'h377c;
	B = 16'h3765;
	ans = 16'h32eb;
	#20
	A = 16'hb402;
	B = 16'h3515;
	ans = 16'had18;
	#20
	A = 16'hb0db;
	B = 16'h9b83;
	ans = 16'h108f;
	#20
	A = 16'h3ba7;
	B = 16'hb1d3;
	ans = 16'hb192;
	#20
	A = 16'h358e;
	B = 16'hb44f;
	ans = 16'hadfc;
	#20
	A = 16'hb9b7;
	B = 16'hb974;
	ans = 16'h37ca;
	#20
	A = 16'hbb7c;
	B = 16'h3a11;
	ans = 16'hb9ad;
	#20
	A = 16'hb195;
	B = 16'hab98;
	ans = 16'h214c;
	#20
	A = 16'h2f81;
	B = 16'hbbcb;
	ans = 16'haf4f;
	#20
	A = 16'h3acb;
	B = 16'hb791;
	ans = 16'hb66d;
	#20
	A = 16'hba5f;
	B = 16'h3bf5;
	ans = 16'hba56;
	#20
	A = 16'h3179;
	B = 16'hb8bb;
	ans = 16'hae79;
	#20
	A = 16'hb370;
	B = 16'ha0c1;
	ans = 16'h186b;
	#20
	A = 16'hb40a;
	B = 16'hbaf5;
	ans = 16'h3306;
	#20
	A = 16'h33a3;
	B = 16'h3b45;
	ans = 16'h32f0;
	#20
	A = 16'hb31d;
	B = 16'haa31;
	ans = 16'h2181;
	#20
	A = 16'h3828;
	B = 16'h340c;
	ans = 16'h3034;
	#20
	A = 16'h35c0;
	B = 16'hb801;
	ans = 16'hb1c1;
	#20
	A = 16'h3549;
	B = 16'h39cf;
	ans = 16'h33ad;
	#20
	A = 16'hbaba;
	B = 16'h243f;
	ans = 16'ha324;
	#20
	A = 16'hbbae;
	B = 16'hac59;
	ans = 16'h2c2c;
	#20
	A = 16'h31d9;
	B = 16'hbbc0;
	ans = 16'hb1aa;
	#20
	A = 16'hb717;
	B = 16'hb614;
	ans = 16'h3163;
	#20
	A = 16'h39e4;
	B = 16'h394e;
	ans = 16'h37d0;
	#20
	A = 16'hafad;
	B = 16'hba07;
	ans = 16'h2dc8;
	#20
	A = 16'h389f;
	B = 16'h3705;
	ans = 16'h340e;
	#20
	A = 16'had33;
	B = 16'hac6e;
	ans = 16'h1dc2;
	#20
	A = 16'hb79e;
	B = 16'h3504;
	ans = 16'hb0c7;
	#20
	A = 16'hb926;
	B = 16'hba87;
	ans = 16'h3833;
	#20
	A = 16'hb9a6;
	B = 16'h38a8;
	ans = 16'hb693;
	#20
	A = 16'h3222;
	B = 16'hb229;
	ans = 16'ha8b9;
	#20
	A = 16'h34c3;
	B = 16'hb8ea;
	ans = 16'hb1da;
	#20
	A = 16'hb16d;
	B = 16'h381b;
	ans = 16'had92;
	#20
	A = 16'h3870;
	B = 16'hb898;
	ans = 16'hb519;
	#20
	A = 16'h39b6;
	B = 16'hbb76;
	ans = 16'hb953;
	#20
	A = 16'h386b;
	B = 16'h38e3;
	ans = 16'h3566;
	#20
	A = 16'hba68;
	B = 16'hb806;
	ans = 16'h3672;
	#20
	A = 16'hbbd5;
	B = 16'hb9ab;
	ans = 16'h398d;
	#20
	A = 16'hb553;
	B = 16'hb136;
	ans = 16'h2af0;
	#20
	A = 16'h2f54;
	B = 16'h3588;
	ans = 16'h2911;
	#20
	A = 16'h37e4;
	B = 16'hb4ca;
	ans = 16'hb0b9;
	#20
	A = 16'hb8e5;
	B = 16'hbb2e;
	ans = 16'h3865;
	#20
	A = 16'hb924;
	B = 16'hb56e;
	ans = 16'h32fa;
	#20
	A = 16'h3a92;
	B = 16'hb366;
	ans = 16'hb214;
	#20
	A = 16'hb6a2;
	B = 16'hb8bc;
	ans = 16'h33da;
	#20
	A = 16'h398f;
	B = 16'h37ec;
	ans = 16'h3581;
	#20
	A = 16'hba46;
	B = 16'h3469;
	ans = 16'hb2eb;
	#20
	A = 16'hb913;
	B = 16'h3826;
	ans = 16'hb543;
	#20
	A = 16'h3441;
	B = 16'h38a0;
	ans = 16'h30eb;
	#20
	A = 16'h2e0d;
	B = 16'hba43;
	ans = 16'hacbc;
	#20
	A = 16'haac8;
	B = 16'h3b84;
	ans = 16'haa5f;
	#20
	A = 16'hb43e;
	B = 16'hb5c7;
	ans = 16'h2e21;
	#20
	A = 16'hbad3;
	B = 16'h3ae3;
	ans = 16'hb9e0;
	#20
	A = 16'h2e11;
	B = 16'hb9a7;
	ans = 16'hac49;
	#20
	A = 16'hb7dc;
	B = 16'h3bbb;
	ans = 16'hb798;
	#20
	A = 16'hb99c;
	B = 16'h31ec;
	ans = 16'hb027;
	#20
	A = 16'hb3f2;
	B = 16'hbac2;
	ans = 16'h32b6;
	#20
	A = 16'hb877;
	B = 16'h24ee;
	ans = 16'ha181;
	#20
	A = 16'hbb0f;
	B = 16'h3a3c;
	ans = 16'hb980;
	#20
	A = 16'hb6ce;
	B = 16'h35e5;
	ans = 16'hb104;
	#20
	A = 16'h39a8;
	B = 16'hba87;
	ans = 16'hb89d;
	#20
	A = 16'hb478;
	B = 16'hb2d3;
	ans = 16'h2ba0;
	#20
	A = 16'hb86b;
	B = 16'h387b;
	ans = 16'hb4f3;
	#20
	A = 16'h3b22;
	B = 16'h3712;
	ans = 16'h364e;
	#20
	A = 16'hb6ff;
	B = 16'h3aee;
	ans = 16'hb60f;
	#20
	A = 16'h3349;
	B = 16'h3bde;
	ans = 16'h332a;
	#20
	A = 16'hb521;
	B = 16'had10;
	ans = 16'h267e;
	#20
	A = 16'h3afc;
	B = 16'h3afe;
	ans = 16'h3a1b;
	#20
	A = 16'h397e;
	B = 16'h39c0;
	ans = 16'h37e5;
	#20
	A = 16'h36b6;
	B = 16'hb783;
	ans = 16'hb24d;
	#20
	A = 16'h1ef3;
	B = 16'h3086;
	ans = 16'h13dc;
	#20
	A = 16'h2a37;
	B = 16'h3809;
	ans = 16'h2645;
	#20
	A = 16'hbb54;
	B = 16'h3b11;
	ans = 16'hba79;
	#20
	A = 16'hbaf9;
	B = 16'hb695;
	ans = 16'h35bd;
	#20
	A = 16'h373e;
	B = 16'hb90e;
	ans = 16'hb493;
	#20
	A = 16'h2b82;
	B = 16'h39e1;
	ans = 16'h2984;
	#20
	A = 16'h3868;
	B = 16'h3a28;
	ans = 16'h36c8;
	#20
	A = 16'h34b0;
	B = 16'h39b9;
	ans = 16'h32b5;
	#20
	A = 16'h31f5;
	B = 16'h38d6;
	ans = 16'h2f34;
	#20
	A = 16'hb904;
	B = 16'hb91e;
	ans = 16'h366b;
	#20
	A = 16'hb482;
	B = 16'ha809;
	ans = 16'h208c;
	#20
	A = 16'h3961;
	B = 16'hba51;
	ans = 16'hb83f;
	#20
	A = 16'h36d8;
	B = 16'h3bed;
	ans = 16'h36c8;
	#20
	A = 16'hba84;
	B = 16'hab13;
	ans = 16'h29c3;
	#20
	A = 16'h38ef;
	B = 16'h3700;
	ans = 16'h3451;
	#20
	A = 16'hb588;
	B = 16'h3a56;
	ans = 16'hb461;
	#20
	A = 16'hb83a;
	B = 16'h391d;
	ans = 16'hb567;
	#20
	A = 16'h3bd8;
	B = 16'h3aab;
	ans = 16'h3a8a;
	#20
	A = 16'hb997;
	B = 16'hacd2;
	ans = 16'h2abc;
	#20
	A = 16'h3b14;
	B = 16'hb774;
	ans = 16'hb698;
	#20
	A = 16'h391c;
	B = 16'hb63a;
	ans = 16'hb3f4;
	#20
	A = 16'h3a53;
	B = 16'hb857;
	ans = 16'hb6dd;
	#20
	A = 16'hafd2;
	B = 16'hb606;
	ans = 16'h29e3;
	#20
	A = 16'hae40;
	B = 16'h2e98;
	ans = 16'ha127;
	#20
	A = 16'h30e0;
	B = 16'h3b9e;
	ans = 16'h30a4;
	#20
	A = 16'h3514;
	B = 16'hb974;
	ans = 16'hb2ec;
	#20
	A = 16'h3958;
	B = 16'hb9b9;
	ans = 16'hb7a5;
	#20
	A = 16'h39a4;
	B = 16'h37b9;
	ans = 16'h3572;
	#20
	A = 16'hb815;
	B = 16'hba81;
	ans = 16'h36a3;
	#20
	A = 16'hb084;
	B = 16'hb91f;
	ans = 16'h2dc8;
	#20
	A = 16'h3b18;
	B = 16'h30f5;
	ans = 16'h3065;
	#20
	A = 16'hbb53;
	B = 16'h3ba2;
	ans = 16'hbafd;
	#20
	A = 16'hb0b2;
	B = 16'h22b9;
	ans = 16'h97e4;
	#20
	A = 16'h25d6;
	B = 16'h3493;
	ans = 16'h1eac;
	#20
	A = 16'hb417;
	B = 16'ha81f;
	ans = 16'h2037;
	#20
	A = 16'h3039;
	B = 16'hbb21;
	ans = 16'haf87;
	#20
	A = 16'h3ad5;
	B = 16'h30b1;
	ans = 16'h3002;
	#20
	A = 16'h3b84;
	B = 16'h3af9;
	ans = 16'h3a8d;
	#20
	A = 16'h3641;
	B = 16'hb811;
	ans = 16'hb25c;
	#20
	A = 16'hba14;
	B = 16'h3b05;
	ans = 16'hb955;
	#20
	A = 16'h3939;
	B = 16'h3ac5;
	ans = 16'h386b;
	#20
	A = 16'hba55;
	B = 16'hb627;
	ans = 16'h34df;
	#20
	A = 16'hb4a1;
	B = 16'hb8ab;
	ans = 16'h3167;
	#20
	A = 16'h388b;
	B = 16'hb453;
	ans = 16'hb0e9;
	#20
	A = 16'h345a;
	B = 16'hb71f;
	ans = 16'hafbf;
	#20
	A = 16'hb630;
	B = 16'h3257;
	ans = 16'hace7;
	#20
	A = 16'hb9f2;
	B = 16'hb9f3;
	ans = 16'h386c;
	#20
	A = 16'h35ac;
	B = 16'h3a61;
	ans = 16'h3486;
	#20
	A = 16'hba03;
	B = 16'hb25f;
	ans = 16'h30ca;
	#20
	A = 16'hbbca;
	B = 16'hb5b5;
	ans = 16'h358e;
	#20
	A = 16'hb26a;
	B = 16'hbbe9;
	ans = 16'h3258;
	#20
	A = 16'h39b1;
	B = 16'hb8cd;
	ans = 16'hb6d5;
	#20
	A = 16'h3be8;
	B = 16'h36c9;
	ans = 16'h36b5;
	#20
	A = 16'h35db;
	B = 16'hb80a;
	ans = 16'hb1ea;
	#20
	A = 16'h27d6;
	B = 16'hb785;
	ans = 16'ha35e;
	#20
	A = 16'h366f;
	B = 16'h2932;
	ans = 16'h242e;
	#20
	A = 16'h374a;
	B = 16'hb990;
	ans = 16'hb511;
	#20
	A = 16'h2fa8;
	B = 16'h31b7;
	ans = 16'h2578;
	#20
	A = 16'haf11;
	B = 16'h354e;
	ans = 16'ha8b0;
	#20
	A = 16'hb52c;
	B = 16'h3401;
	ans = 16'had2d;
	#20
	A = 16'hb42b;
	B = 16'h3903;
	ans = 16'hb139;
	#20
	A = 16'hb86a;
	B = 16'h3162;
	ans = 16'hadf1;
	#20
	A = 16'h3975;
	B = 16'hafca;
	ans = 16'had50;
	#20
	A = 16'h1c8d;
	B = 16'hb9ab;
	ans = 16'h9a73;
	#20
	A = 16'hb9e6;
	B = 16'h3851;
	ans = 16'hb65d;
	#20
	A = 16'hba60;
	B = 16'h38b1;
	ans = 16'hb77a;
	#20
	A = 16'hbb90;
	B = 16'hb9de;
	ans = 16'h398c;
	#20
	A = 16'hba45;
	B = 16'hb69a;
	ans = 16'h352c;
	#20
	A = 16'h3b4d;
	B = 16'hb975;
	ans = 16'hb8fb;
	#20
	A = 16'hb9ab;
	B = 16'hb365;
	ans = 16'h313d;
	#20
	A = 16'hbb6c;
	B = 16'h32fb;
	ans = 16'hb27a;
	#20
	A = 16'hb520;
	B = 16'h384f;
	ans = 16'hb185;
	#20
	A = 16'haf9c;
	B = 16'hae39;
	ans = 16'h21eb;
	#20
	A = 16'h3497;
	B = 16'h3a31;
	ans = 16'h331b;
	#20
	A = 16'hb1e3;
	B = 16'h3a76;
	ans = 16'hb0c1;
	#20
	A = 16'hb854;
	B = 16'h3933;
	ans = 16'hb5a0;
	#20
	A = 16'hb9f0;
	B = 16'h385b;
	ans = 16'hb677;
	#20
	A = 16'hb404;
	B = 16'h3863;
	ans = 16'hb067;
	#20
	A = 16'hab94;
	B = 16'h2f43;
	ans = 16'h9ee1;
	#20
	A = 16'h3628;
	B = 16'h365a;
	ans = 16'h30e3;
	#20
	A = 16'h3a2c;
	B = 16'hb9a5;
	ans = 16'hb85b;
	#20
	A = 16'h3bce;
	B = 16'h3a02;
	ans = 16'h39dc;
	#20
	A = 16'hb423;
	B = 16'hb90c;
	ans = 16'h3138;
	#20
	A = 16'hba3e;
	B = 16'h3558;
	ans = 16'hb42b;
	#20
	A = 16'hb71c;
	B = 16'hba43;
	ans = 16'h3591;
	#20
	A = 16'hb053;
	B = 16'hb68b;
	ans = 16'h2b13;
	#20
	A = 16'hbaf5;
	B = 16'h367d;
	ans = 16'hb5a4;
	#20
	A = 16'h3a62;
	B = 16'hb8c0;
	ans = 16'hb794;
	#20
	A = 16'h35ae;
	B = 16'hbbbf;
	ans = 16'hb580;
	#20
	A = 16'h3a77;
	B = 16'hb622;
	ans = 16'hb4f5;
	#20
	A = 16'hb897;
	B = 16'h3620;
	ans = 16'hb307;
	#20
	A = 16'hb896;
	B = 16'hb851;
	ans = 16'h34f3;
	#20
	A = 16'h2801;
	B = 16'h38ec;
	ans = 16'h24ed;
	#20
	A = 16'hbab2;
	B = 16'hb081;
	ans = 16'h2f8a;
	#20
	A = 16'ha795;
	B = 16'hbbc0;
	ans = 16'h2758;
	#20
	A = 16'h3987;
	B = 16'hae73;
	ans = 16'hac75;
	#20
	A = 16'h2d7f;
	B = 16'h3438;
	ans = 16'h25cc;
	#20
	A = 16'h390b;
	B = 16'h2f22;
	ans = 16'h2c7f;
	#20
	A = 16'h2f7e;
	B = 16'hacb6;
	ans = 16'ha069;
	#20
	A = 16'h30f9;
	B = 16'hba00;
	ans = 16'haf76;
	#20
	A = 16'h3a6b;
	B = 16'hb52f;
	ans = 16'hb429;
	#20
	A = 16'h3998;
	B = 16'hb989;
	ans = 16'hb7be;
	#20
	A = 16'hb00d;
	B = 16'hbaf0;
	ans = 16'h2f07;
	#20
	A = 16'hafdd;
	B = 16'h38ef;
	ans = 16'hacd9;
	#20
	A = 16'hb258;
	B = 16'hbbc8;
	ans = 16'h322c;
	#20
	A = 16'h32ad;
	B = 16'h3415;
	ans = 16'h2ad0;
	#20
	A = 16'hb4f3;
	B = 16'h3aad;
	ans = 16'hb421;
	#20
	A = 16'h34d6;
	B = 16'hb8a1;
	ans = 16'hb199;
	#20
	A = 16'hba6b;
	B = 16'h38ba;
	ans = 16'hb795;
	#20
	A = 16'h312e;
	B = 16'hb894;
	ans = 16'hadee;
	#20
	A = 16'h377d;
	B = 16'h31ae;
	ans = 16'h2d51;
	#20
	A = 16'hb4f4;
	B = 16'haa79;
	ans = 16'h2402;
	#20
	A = 16'hb459;
	B = 16'hb648;
	ans = 16'h2ed4;
	#20
	A = 16'h9ce3;
	B = 16'h2cf3;
	ans = 16'h8e0c;
	#20
	A = 16'h3730;
	B = 16'hb88f;
	ans = 16'hb418;
	#20
	A = 16'hb405;
	B = 16'hb1be;
	ans = 16'h29c5;
	#20
	A = 16'ha953;
	B = 16'hb6b8;
	ans = 16'h2479;
	#20
	A = 16'h352b;
	B = 16'h30a0;
	ans = 16'h29fa;
	#20
	A = 16'hb9a8;
	B = 16'hb7a6;
	ans = 16'h3568;
	#20
	A = 16'hb40c;
	B = 16'hb01d;
	ans = 16'h2829;
	#20
	A = 16'h34a4;
	B = 16'hb029;
	ans = 16'ha8d4;
	#20
	A = 16'hbaf1;
	B = 16'hb204;
	ans = 16'h3138;
	#20
	A = 16'h349f;
	B = 16'h3495;
	ans = 16'h2d4b;
	#20
	A = 16'h3038;
	B = 16'hb7d8;
	ans = 16'hac23;
	#20
	A = 16'hbbd0;
	B = 16'h2332;
	ans = 16'ha307;
	#20
	A = 16'h3b3d;
	B = 16'h3a83;
	ans = 16'h39e4;
	#20
	A = 16'h383e;
	B = 16'hb90e;
	ans = 16'hb55c;
	#20
	A = 16'hb570;
	B = 16'h3906;
	ans = 16'hb2d4;
	#20
	A = 16'h38a5;
	B = 16'h354c;
	ans = 16'h3226;
	#20
	A = 16'hbbe6;
	B = 16'hb61b;
	ans = 16'h3607;
	#20
	A = 16'hb721;
	B = 16'hb381;
	ans = 16'h2eb0;
	#20
	A = 16'h39f0;
	B = 16'h3656;
	ans = 16'h34b4;
	#20
	A = 16'ha9e5;
	B = 16'h2982;
	ans = 16'h980f;
	#20
	A = 16'hb9bd;
	B = 16'hb6f7;
	ans = 16'h34ff;
	#20
	A = 16'hb490;
	B = 16'h3297;
	ans = 16'hab84;
	#20
	A = 16'h3838;
	B = 16'h3946;
	ans = 16'h3590;
	#20
	A = 16'hb2d8;
	B = 16'h3511;
	ans = 16'hac56;
	#20
	A = 16'hb3a7;
	B = 16'h352b;
	ans = 16'hacf2;
	#20
	A = 16'h337b;
	B = 16'h2b65;
	ans = 16'h22ea;
	#20
	A = 16'hb92b;
	B = 16'hba65;
	ans = 16'h3821;
	#20
	A = 16'hbb42;
	B = 16'h34a9;
	ans = 16'hb43a;
	#20
	A = 16'h2ae5;
	B = 16'hb345;
	ans = 16'ha244;
	#20
	A = 16'h3426;
	B = 16'h2b4a;
	ans = 16'h238f;
	#20
	A = 16'hb9a8;
	B = 16'hb58e;
	ans = 16'h33db;
	#20
	A = 16'h3acc;
	B = 16'h3b68;
	ans = 16'h3a4b;
	#20
	A = 16'hacc1;
	B = 16'h3afe;
	ans = 16'hac28;
	#20
	A = 16'hb9a9;
	B = 16'h3861;
	ans = 16'hb632;
	#20
	A = 16'hbb3d;
	B = 16'h3a39;
	ans = 16'hb9a1;
	#20
	A = 16'h3a3f;
	B = 16'h3031;
	ans = 16'h2e8c;
	#20
	A = 16'hb8cc;
	B = 16'hbb9c;
	ans = 16'h3890;
	#20
	A = 16'h3610;
	B = 16'h3aa5;
	ans = 16'h3509;
	#20
	A = 16'h3be0;
	B = 16'h3573;
	ans = 16'h355d;
	#20
	A = 16'h2d91;
	B = 16'hb21a;
	ans = 16'ha43f;
	#20
	A = 16'h36ba;
	B = 16'h349f;
	ans = 16'h2fc5;
	#20
	A = 16'h38e4;
	B = 16'hb0b6;
	ans = 16'hadc3;
	#20
	A = 16'h3aaa;
	B = 16'h3b9f;
	ans = 16'h3a59;
	#20
	A = 16'hb8df;
	B = 16'h2949;
	ans = 16'ha670;
	#20
	A = 16'h39cf;
	B = 16'hb44c;
	ans = 16'hb23d;
	#20
	A = 16'h3830;
	B = 16'ha826;
	ans = 16'ha458;
	#20
	A = 16'hba31;
	B = 16'h29b0;
	ans = 16'ha867;
	#20
	A = 16'h35ac;
	B = 16'h324e;
	ans = 16'h2c78;
	#20
	A = 16'h3a3e;
	B = 16'hb83e;
	ans = 16'hb69f;
	#20
	A = 16'hbb27;
	B = 16'h3bb0;
	ans = 16'hbadf;
	#20
	A = 16'hbb83;
	B = 16'hb8ad;
	ans = 16'h3864;
	#20
	A = 16'hb849;
	B = 16'hb60e;
	ans = 16'h327c;
	#20
	A = 16'h9d54;
	B = 16'h3ab3;
	ans = 16'h9c76;
	#20
	A = 16'h34db;
	B = 16'hb757;
	ans = 16'hb074;
	#20
	A = 16'h387f;
	B = 16'h3504;
	ans = 16'h31a3;
	#20
	A = 16'haa01;
	B = 16'hb949;
	ans = 16'h27ef;
	#20
	A = 16'h38d8;
	B = 16'hb470;
	ans = 16'hb160;
	#20
	A = 16'h31c8;
	B = 16'hb42f;
	ans = 16'haa0c;
	#20
	A = 16'h3bfb;
	B = 16'h2f87;
	ans = 16'h2f82;
	#20
	A = 16'haf23;
	B = 16'h3860;
	ans = 16'habce;
	#20
	A = 16'h2f59;
	B = 16'hba23;
	ans = 16'hada3;
	#20
	A = 16'h38e2;
	B = 16'hbaa1;
	ans = 16'hb80c;
	#20
	A = 16'hb62c;
	B = 16'h3409;
	ans = 16'hae3a;
	#20
	A = 16'h38ca;
	B = 16'h2e71;
	ans = 16'h2bb6;
	#20
	A = 16'h397a;
	B = 16'h31d9;
	ans = 16'h3001;
	#20
	A = 16'hb9d4;
	B = 16'hb7b5;
	ans = 16'h359d;
	#20
	A = 16'hb367;
	B = 16'h3792;
	ans = 16'haf01;
	#20
	A = 16'hb0e9;
	B = 16'hbacb;
	ans = 16'h302b;
	#20
	A = 16'h388e;
	B = 16'h3865;
	ans = 16'h3501;
	#20
	A = 16'hae4c;
	B = 16'h3b16;
	ans = 16'had94;
	#20
	A = 16'hb048;
	B = 16'h2cf1;
	ans = 16'ha14a;
	#20
	A = 16'h3a29;
	B = 16'hb8c0;
	ans = 16'hb751;
	#20
	A = 16'hba8a;
	B = 16'hb77d;
	ans = 16'h361f;
	#20
	A = 16'hac87;
	B = 16'hb7ff;
	ans = 16'h2886;
	#20
	A = 16'h35a1;
	B = 16'h3813;
	ans = 16'h31bc;
	#20
	A = 16'h3993;
	B = 16'hb6bf;
	ans = 16'hb4b3;
	#20
	A = 16'h3949;
	B = 16'hbbfa;
	ans = 16'hb945;
	#20
	A = 16'h3a60;
	B = 16'hb6c6;
	ans = 16'hb566;
	#20
	A = 16'h37bc;
	B = 16'hb252;
	ans = 16'hae1c;
	#20
	A = 16'h3983;
	B = 16'hba0b;
	ans = 16'hb82a;
	#20
	A = 16'hbac4;
	B = 16'hb9cf;
	ans = 16'h38ea;
	#20
	A = 16'h2856;
	B = 16'h36df;
	ans = 16'h2373;
	#20
	A = 16'hb6cb;
	B = 16'hb228;
	ans = 16'h2d3a;
	#20
	A = 16'hb83c;
	B = 16'h9fa2;
	ans = 16'h1c0a;
	#20
	A = 16'hbbbf;
	B = 16'h389b;
	ans = 16'hb876;
	#20
	A = 16'hb86d;
	B = 16'hbbfd;
	ans = 16'h386b;
	#20
	A = 16'h3a73;
	B = 16'hb0e2;
	ans = 16'hafdf;
	#20
	A = 16'hb3e4;
	B = 16'hbb0a;
	ans = 16'h32f1;
	#20
	A = 16'haf00;
	B = 16'hb6f1;
	ans = 16'h2a13;
	#20
	A = 16'h3b57;
	B = 16'hb9a6;
	ans = 16'hb92f;
	#20
	A = 16'hab33;
	B = 16'h3bc3;
	ans = 16'haafc;
	#20
	A = 16'hb2d6;
	B = 16'hbace;
	ans = 16'h31d1;
	#20
	A = 16'h36db;
	B = 16'h37e2;
	ans = 16'h32c1;
	#20
	A = 16'h38cb;
	B = 16'hb36b;
	ans = 16'hb072;
	#20
	A = 16'h30df;
	B = 16'h36f7;
	ans = 16'h2c3e;
	#20
	A = 16'h3139;
	B = 16'h2cab;
	ans = 16'h2218;
	#20
	A = 16'h3ab3;
	B = 16'h3a01;
	ans = 16'h3907;
	#20
	A = 16'hbb2c;
	B = 16'hb2f2;
	ans = 16'h323a;
	#20
	A = 16'h3443;
	B = 16'hbaef;
	ans = 16'hb363;
	#20
	A = 16'hb985;
	B = 16'hb98f;
	ans = 16'h37ac;
	#20
	A = 16'hbbad;
	B = 16'h3851;
	ans = 16'hb824;
	#20
	A = 16'h320f;
	B = 16'h39bb;
	ans = 16'h3057;
	#20
	A = 16'h38c2;
	B = 16'h324b;
	ans = 16'h2f7c;
	#20
	A = 16'h39ad;
	B = 16'h3537;
	ans = 16'h3366;
	#20
	A = 16'h346d;
	B = 16'hb579;
	ans = 16'hae0e;
	#20
	A = 16'h38de;
	B = 16'hb795;
	ans = 16'hb49d;
	#20
	A = 16'h35b3;
	B = 16'hb595;
	ans = 16'haff4;
	#20
	A = 16'h3826;
	B = 16'hb904;
	ans = 16'hb534;
	#20
	A = 16'h24f3;
	B = 16'hb43f;
	ans = 16'h9d41;
	#20
	A = 16'h1fe5;
	B = 16'hb87f;
	ans = 16'h9c70;
	#20
	A = 16'h3bfa;
	B = 16'h39d4;
	ans = 16'h39d0;
	#20
	A = 16'hb681;
	B = 16'hb94f;
	ans = 16'h3451;
	#20
	A = 16'hb8c2;
	B = 16'hbb77;
	ans = 16'h3871;
	#20
	A = 16'hb87c;
	B = 16'h3ac3;
	ans = 16'hb795;
	#20
	A = 16'hb513;
	B = 16'hb88d;
	ans = 16'h31c6;
	#20
	A = 16'h3b5e;
	B = 16'h3696;
	ans = 16'h3611;
	#20
	A = 16'h3474;
	B = 16'h3af6;
	ans = 16'h33c0;
	#20
	A = 16'hb390;
	B = 16'hb7f2;
	ans = 16'h2f83;
	#20
	A = 16'hb3c5;
	B = 16'h36df;
	ans = 16'haeac;
	#20
	A = 16'h378c;
	B = 16'hb2af;
	ans = 16'hae4e;
	#20
	A = 16'h3702;
	B = 16'h25c5;
	ans = 16'h210e;
	#20
	A = 16'h3b3c;
	B = 16'h30ef;
	ans = 16'h3076;
	#20
	A = 16'hbab2;
	B = 16'h353a;
	ans = 16'hb460;
	#20
	A = 16'hb407;
	B = 16'h3bb5;
	ans = 16'hb3c2;
	#20
	A = 16'h3a90;
	B = 16'hb609;
	ans = 16'hb4f3;
	#20
	A = 16'h3aff;
	B = 16'h3a61;
	ans = 16'h3994;
	#20
	A = 16'hb560;
	B = 16'h2e76;
	ans = 16'ha857;
	#20
	A = 16'hbbdf;
	B = 16'hb8a1;
	ans = 16'h388e;
	#20
	A = 16'hbb8c;
	B = 16'h304b;
	ans = 16'hb00d;
	#20
	A = 16'h2501;
	B = 16'hb97e;
	ans = 16'ha2df;
	#20
	A = 16'h3439;
	B = 16'hb08c;
	ans = 16'ha8cd;
	#20
	A = 16'hb1c1;
	B = 16'h3baf;
	ans = 16'hb187;
	#20
	A = 16'h2ce0;
	B = 16'hb4b8;
	ans = 16'ha5c0;
	#20
	A = 16'h2201;
	B = 16'h345f;
	ans = 16'h1a90;
	#20
	A = 16'h3be0;
	B = 16'h3227;
	ans = 16'h320e;
	#20
	A = 16'h341f;
	B = 16'hbb16;
	ans = 16'hb34d;
	#20
	A = 16'h287f;
	B = 16'h3738;
	ans = 16'h240f;
	#20
	A = 16'hbb6f;
	B = 16'h3623;
	ans = 16'hb5b4;
	#20
	A = 16'hb9e8;
	B = 16'hb571;
	ans = 16'h3404;
	#20
	A = 16'hba53;
	B = 16'hb44d;
	ans = 16'h32cd;
	#20
	A = 16'hba6d;
	B = 16'h396c;
	ans = 16'hb85b;
	#20
	A = 16'h36c0;
	B = 16'hb42d;
	ans = 16'haf0c;
	#20
	A = 16'h3846;
	B = 16'hba7c;
	ans = 16'hb6ed;
	#20
	A = 16'h3224;
	B = 16'h393c;
	ans = 16'h3005;
	#20
	A = 16'h3980;
	B = 16'h34ee;
	ans = 16'h32c7;
	#20
	A = 16'h38af;
	B = 16'h3bc9;
	ans = 16'h388f;
	#20
	A = 16'h3826;
	B = 16'h3741;
	ans = 16'h3386;
	#20
	A = 16'h3246;
	B = 16'h38f5;
	ans = 16'h2fc6;
	#20
	A = 16'h34e9;
	B = 16'had25;
	ans = 16'ha651;
	#20
	A = 16'hbbdc;
	B = 16'h31f5;
	ans = 16'hb1da;
	#20
	A = 16'hac04;
	B = 16'hb1f4;
	ans = 16'h21fa;
	#20
	A = 16'h3753;
	B = 16'h3943;
	ans = 16'h34d1;
	#20
	A = 16'hb90d;
	B = 16'hb43a;
	ans = 16'h3156;
	#20
	A = 16'h2adf;
	B = 16'hbbd6;
	ans = 16'haabb;
	#20
	A = 16'h3692;
	B = 16'hb80f;
	ans = 16'hb2ab;
	#20
	A = 16'hbaf3;
	B = 16'hb402;
	ans = 16'h32f6;
	#20
	A = 16'hb9db;
	B = 16'h304a;
	ans = 16'hae47;
	#20
	A = 16'h346e;
	B = 16'hb0a7;
	ans = 16'ha927;
	#20
	A = 16'hae28;
	B = 16'hb858;
	ans = 16'h2aaf;
	#20
	A = 16'hba57;
	B = 16'hb756;
	ans = 16'h35d0;
	#20
	A = 16'hba8f;
	B = 16'hbaa8;
	ans = 16'h3975;
	#20
	A = 16'hba66;
	B = 16'hbb4b;
	ans = 16'h39d5;
	#20
	A = 16'hacf1;
	B = 16'h2e2a;
	ans = 16'h9f9d;
	#20
	A = 16'h3551;
	B = 16'h3b57;
	ans = 16'h34e1;
	#20
	A = 16'h3899;
	B = 16'hb503;
	ans = 16'hb1c3;
	#20
	A = 16'hb903;
	B = 16'h3805;
	ans = 16'hb509;
	#20
	A = 16'hacea;
	B = 16'hb9ad;
	ans = 16'h2af9;
	#20
	A = 16'h35e5;
	B = 16'ha9f1;
	ans = 16'ha461;
	#20
	A = 16'h3534;
	B = 16'h38ed;
	ans = 16'h3268;
	#20
	A = 16'h386c;
	B = 16'h2cef;
	ans = 16'h2974;
	#20
	A = 16'h3abe;
	B = 16'h31c3;
	ans = 16'h30db;
	#20
	A = 16'hbb9a;
	B = 16'h3abe;
	ans = 16'hba68;
	#20
	A = 16'hb958;
	B = 16'hba90;
	ans = 16'h3862;
	#20
	A = 16'h3bb5;
	B = 16'h3376;
	ans = 16'h3330;
	#20
	A = 16'hba81;
	B = 16'hb87c;
	ans = 16'h374b;
	#20
	A = 16'h2cfd;
	B = 16'hb3cb;
	ans = 16'ha4dc;
	#20
	A = 16'hae1e;
	B = 16'hba50;
	ans = 16'h2cd4;
	#20
	A = 16'h381e;
	B = 16'h362a;
	ans = 16'h3258;
	#20
	A = 16'h3b81;
	B = 16'hb8c7;
	ans = 16'hb87b;
	#20
	A = 16'hb4fe;
	B = 16'hb4d0;
	ans = 16'h2e02;
	#20
	A = 16'h31f3;
	B = 16'h2fcd;
	ans = 16'h25cd;
	#20
	A = 16'hbb41;
	B = 16'h389c;
	ans = 16'hb82e;
	#20
	A = 16'hba94;
	B = 16'h3923;
	ans = 16'hb839;
	#20
	A = 16'hbb6a;
	B = 16'hbb81;
	ans = 16'h3af4;
	#20
	A = 16'h3640;
	B = 16'h34ed;
	ans = 16'h2fb2;
	#20
	A = 16'hb86d;
	B = 16'h314b;
	ans = 16'haddb;
	#20
	A = 16'hb85e;
	B = 16'hb918;
	ans = 16'h3590;
	#20
	A = 16'hb86c;
	B = 16'hb381;
	ans = 16'h3026;
	#20
	A = 16'h2ae7;
	B = 16'hb476;
	ans = 16'ha3b3;
	#20
	A = 16'hb6c6;
	B = 16'h2f88;
	ans = 16'haa60;
	#20
	A = 16'hb860;
	B = 16'hb9fd;
	ans = 16'h368d;
	#20
	A = 16'h3be6;
	B = 16'hb944;
	ans = 16'hb933;
	#20
	A = 16'h31b2;
	B = 16'h3b0c;
	ans = 16'h3104;
	#20
	A = 16'h3407;
	B = 16'hb00b;
	ans = 16'ha812;
	#20
	A = 16'h3824;
	B = 16'hbbee;
	ans = 16'hb81b;
	#20
	A = 16'h31ac;
	B = 16'hb34d;
	ans = 16'ha92d;
	#20
	A = 16'ha810;
	B = 16'h3311;
	ans = 16'h9f2d;
	#20
	A = 16'h38d8;
	B = 16'h3826;
	ans = 16'h3506;
	#20
	A = 16'hba15;
	B = 16'h35ab;
	ans = 16'hb44f;
	#20
	A = 16'h38a6;
	B = 16'hbb17;
	ans = 16'hb81f;
	#20
	A = 16'h3994;
	B = 16'hb835;
	ans = 16'hb5de;
	#20
	A = 16'h3a1f;
	B = 16'hb07b;
	ans = 16'haedb;
	#20
	A = 16'h31a8;
	B = 16'h35bf;
	ans = 16'h2c10;
	#20
	A = 16'hbb3f;
	B = 16'hb27b;
	ans = 16'h31df;
	#20
	A = 16'hac4d;
	B = 16'hb94c;
	ans = 16'h29b2;
	#20
	A = 16'hba6d;
	B = 16'h39d2;
	ans = 16'hb8ad;
	#20
	A = 16'h37f9;
	B = 16'hb84d;
	ans = 16'hb449;
	#20
	A = 16'h3b04;
	B = 16'hb703;
	ans = 16'hb626;
	#20
	A = 16'h318b;
	B = 16'h2867;
	ans = 16'h1e1a;
	#20
	A = 16'h3462;
	B = 16'h3b9e;
	ans = 16'h342c;
	#20
	A = 16'hb02e;
	B = 16'hba35;
	ans = 16'h2e7c;
	#20
	A = 16'hb619;
	B = 16'hba0f;
	ans = 16'h349e;
	#20
	A = 16'hb191;
	B = 16'hb9f8;
	ans = 16'h3027;
	#20
	A = 16'h3680;
	B = 16'hba8f;
	ans = 16'hb554;
	#20
	A = 16'hb63f;
	B = 16'h3afb;
	ans = 16'hb573;
	#20
	A = 16'hbbb4;
	B = 16'h3552;
	ans = 16'hb51f;
	#20
	A = 16'h360e;
	B = 16'ha975;
	ans = 16'ha421;
	#20
	A = 16'h2eb7;
	B = 16'hb834;
	ans = 16'hab0e;
	#20
	A = 16'hb6c6;
	B = 16'h2c88;
	ans = 16'ha7ac;
	#20
	A = 16'h3a8a;
	B = 16'h36e8;
	ans = 16'h35a5;
	#20
	A = 16'hb8f4;
	B = 16'h3189;
	ans = 16'haedb;
	#20
	A = 16'h32a5;
	B = 16'hba6f;
	ans = 16'hb158;
	#20
	A = 16'h3ae0;
	B = 16'ha872;
	ans = 16'ha7a4;
	#20
	A = 16'h2c9b;
	B = 16'h38f6;
	ans = 16'h29b6;
	#20
	A = 16'hb816;
	B = 16'h36bd;
	ans = 16'hb2e2;
	#20
	A = 16'h39cb;
	B = 16'h2f95;
	ans = 16'h2d7e;
	#20
	A = 16'hb746;
	B = 16'hb597;
	ans = 16'h3115;
	#20
	A = 16'h2e56;
	B = 16'haff6;
	ans = 16'ha24e;
	#20
	A = 16'hb63e;
	B = 16'h3bd0;
	ans = 16'hb619;
	#20
	A = 16'hbabd;
	B = 16'hb1df;
	ans = 16'h30f2;
	#20
	A = 16'hb8e7;
	B = 16'h285e;
	ans = 16'ha55a;
	#20
	A = 16'hbb94;
	B = 16'h3985;
	ans = 16'hb93a;
	#20
	A = 16'hb56f;
	B = 16'hb5fa;
	ans = 16'h300f;
	#20
	A = 16'h384e;
	B = 16'had2d;
	ans = 16'ha992;
	#20
	A = 16'h39e0;
	B = 16'hb8a3;
	ans = 16'hb6cf;
	#20
	A = 16'hba55;
	B = 16'hb91d;
	ans = 16'h380c;
	#20
	A = 16'hb58e;
	B = 16'h39f3;
	ans = 16'hb421;
	#20
	A = 16'h3be9;
	B = 16'h141b;
	ans = 16'h140f;
	#20
	A = 16'h33f8;
	B = 16'h3ba9;
	ans = 16'h33a1;
	#20
	A = 16'h3b7f;
	B = 16'h378e;
	ans = 16'h3714;
	#20
	A = 16'h3271;
	B = 16'h3bd1;
	ans = 16'h324b;
	#20
	A = 16'h3570;
	B = 16'h3978;
	ans = 16'h336f;
	#20
	A = 16'h2a29;
	B = 16'h384a;
	ans = 16'h269b;
	#20
	A = 16'h3282;
	B = 16'h2d7e;
	ans = 16'h2478;
	#20
	A = 16'hbaed;
	B = 16'hbb79;
	ans = 16'h3a78;
	#20
	A = 16'haae0;
	B = 16'hbb75;
	ans = 16'h2a69;
	#20
	A = 16'h32c4;
	B = 16'h3679;
	ans = 16'h2d79;
	#20
	A = 16'hb7d3;
	B = 16'h2be9;
	ans = 16'ha7bd;
	#20
	A = 16'h3b95;
	B = 16'h32fe;
	ans = 16'h32a0;
	#20
	A = 16'h9fda;
	B = 16'hb442;
	ans = 16'h182e;
	#20
	A = 16'h393e;
	B = 16'h2925;
	ans = 16'h26be;
	#20
	A = 16'hbaa3;
	B = 16'hb5bd;
	ans = 16'h34c3;
	#20
	A = 16'h3ab8;
	B = 16'h3b06;
	ans = 16'h39e6;
	#20
	A = 16'h3409;
	B = 16'hac61;
	ans = 16'ha46b;
	#20
	A = 16'hb88c;
	B = 16'h3516;
	ans = 16'hb1c8;
	#20
	A = 16'h3a85;
	B = 16'hacfa;
	ans = 16'hac0e;
	#20
	A = 16'hbb36;
	B = 16'hb375;
	ans = 16'h32b9;
	#20
	A = 16'hb907;
	B = 16'h39bf;
	ans = 16'hb739;
	#20
	A = 16'h39b6;
	B = 16'h3050;
	ans = 16'h2e28;
	#20
	A = 16'h39c9;
	B = 16'hb04c;
	ans = 16'hae37;
	#20
	A = 16'h3282;
	B = 16'hb8d6;
	ans = 16'hafde;
	#20
	A = 16'hbbfa;
	B = 16'hb6a9;
	ans = 16'h36a4;
	#20
	A = 16'h3a3b;
	B = 16'hb9f9;
	ans = 16'hb8a7;
	#20
	A = 16'hb6a6;
	B = 16'hbb44;
	ans = 16'h360a;
	#20
	A = 16'h39e8;
	B = 16'h28b0;
	ans = 16'h26ec;
	#20
	A = 16'hbbfc;
	B = 16'haec0;
	ans = 16'h2ebd;
	#20
	A = 16'hb256;
	B = 16'hb327;
	ans = 16'h29aa;
	#20
	A = 16'h308f;
	B = 16'h331b;
	ans = 16'h280d;
	#20
	A = 16'h3b3e;
	B = 16'hbb06;
	ans = 16'hba5c;
	#20
	A = 16'hba4e;
	B = 16'h33a5;
	ans = 16'hb206;
	#20
	A = 16'h39cd;
	B = 16'hb19f;
	ans = 16'hb013;
	#20
	A = 16'h356c;
	B = 16'hb965;
	ans = 16'hb350;
	#20
	A = 16'hb837;
	B = 16'h2bca;
	ans = 16'ha81b;
	#20
	A = 16'hae6d;
	B = 16'hb972;
	ans = 16'h2c60;
	#20
	A = 16'hbacb;
	B = 16'h391b;
	ans = 16'hb856;
	#20
	A = 16'hb46d;
	B = 16'hb80f;
	ans = 16'h307e;
	#20
	A = 16'hb3e0;
	B = 16'hb88f;
	ans = 16'h307d;
	#20
	A = 16'h3b1e;
	B = 16'h3745;
	ans = 16'h3678;
	#20
	A = 16'h3962;
	B = 16'hb329;
	ans = 16'hb0d1;
	#20
	A = 16'h29b7;
	B = 16'hb6b3;
	ans = 16'ha4c9;
	#20
	A = 16'hb300;
	B = 16'hb9c2;
	ans = 16'h310a;
	#20
	A = 16'h380f;
	B = 16'hb2eb;
	ans = 16'haf05;
	#20
	A = 16'hb2ce;
	B = 16'h300e;
	ans = 16'ha6e6;
	#20
	A = 16'hb508;
	B = 16'h369e;
	ans = 16'hb029;
	#20
	A = 16'h3a3b;
	B = 16'hb850;
	ans = 16'hb6b8;
	#20
	A = 16'hb4ff;
	B = 16'h38f5;
	ans = 16'hb231;
	#20
	A = 16'hb424;
	B = 16'h322f;
	ans = 16'haa67;
	#20
	A = 16'h3bdb;
	B = 16'h3a81;
	ans = 16'h3a63;
	#20
	A = 16'h346b;
	B = 16'h353e;
	ans = 16'h2dca;
	#20
	A = 16'h25cb;
	B = 16'hbb23;
	ans = 16'ha52b;
	#20
	A = 16'h3382;
	B = 16'hba74;
	ans = 16'hb20e;
	#20
	A = 16'h9ee1;
	B = 16'h3b04;
	ans = 16'h9e08;
	#20
	A = 16'hba9c;
	B = 16'hba8e;
	ans = 16'h396a;
	#20
	A = 16'h3ac4;
	B = 16'h9f4a;
	ans = 16'h9e2a;
	#20
	A = 16'hbaef;
	B = 16'hb808;
	ans = 16'h36fd;
	#20
	A = 16'hb421;
	B = 16'hba94;
	ans = 16'h32ca;
	#20
	A = 16'hb490;
	B = 16'hb5e2;
	ans = 16'h2eb6;
	#20
	A = 16'h34e0;
	B = 16'hb674;
	ans = 16'hafdd;
	#20
	A = 16'h3804;
	B = 16'h2e08;
	ans = 16'h2a0e;
	#20
	A = 16'hbb76;
	B = 16'h3ac5;
	ans = 16'hba50;
	#20
	A = 16'h3af7;
	B = 16'h3af2;
	ans = 16'h3a0c;
	#20
	A = 16'hb819;
	B = 16'hb889;
	ans = 16'h34a5;
	#20
	A = 16'hb764;
	B = 16'hb9f9;
	ans = 16'h3585;
	#20
	A = 16'hb8b1;
	B = 16'h378a;
	ans = 16'hb46c;
	#20
	A = 16'h39b7;
	B = 16'h3a9f;
	ans = 16'h38bb;
	#20
	A = 16'h2b30;
	B = 16'hb89f;
	ans = 16'ha827;
	#20
	A = 16'hba44;
	B = 16'hb8b7;
	ans = 16'h3763;
	#20
	A = 16'h3806;
	B = 16'h395e;
	ans = 16'h3566;
	#20
	A = 16'h37cb;
	B = 16'h34b8;
	ans = 16'h3099;
	#20
	A = 16'h3ae9;
	B = 16'h338d;
	ans = 16'h3286;
	#20
	A = 16'h3a83;
	B = 16'hba0b;
	ans = 16'hb8eb;
	#20
	A = 16'h37e6;
	B = 16'h393b;
	ans = 16'h352a;
	#20
	A = 16'hb93f;
	B = 16'h3658;
	ans = 16'hb429;
	#20
	A = 16'ha7f2;
	B = 16'h304b;
	ans = 16'h9c43;
	#20
	A = 16'hb699;
	B = 16'h35a0;
	ans = 16'hb0a4;
	#20
	A = 16'hb79b;
	B = 16'h3b39;
	ans = 16'hb6de;
	#20
	A = 16'h3100;
	B = 16'h3b65;
	ans = 16'h309f;
	#20
	A = 16'hb60b;
	B = 16'h37ff;
	ans = 16'hb20a;
	#20
	A = 16'h30e7;
	B = 16'hb41f;
	ans = 16'ha90d;
	#20
	A = 16'h3bd0;
	B = 16'h3ac3;
	ans = 16'h3a9a;
	#20
	A = 16'h3826;
	B = 16'hb47c;
	ans = 16'hb0a7;
	#20
	A = 16'hb3eb;
	B = 16'h2ad0;
	ans = 16'ha2be;
	#20
	A = 16'h389f;
	B = 16'hb8a2;
	ans = 16'hb55a;
	#20
	A = 16'h38a4;
	B = 16'h3690;
	ans = 16'h339d;
	#20
	A = 16'h38c8;
	B = 16'h3743;
	ans = 16'h3457;
	#20
	A = 16'hb4e0;
	B = 16'hb053;
	ans = 16'h2945;
	#20
	A = 16'h3a0d;
	B = 16'hb562;
	ans = 16'hb412;
	#20
	A = 16'h2c2c;
	B = 16'hb98e;
	ans = 16'ha9cb;
	#20
	A = 16'h3a66;
	B = 16'hbbea;
	ans = 16'hba54;
	#20
	A = 16'hb783;
	B = 16'h36a8;
	ans = 16'hb240;
	#20
	A = 16'hb61e;
	B = 16'h3787;
	ans = 16'hb1c1;
	#20
	A = 16'hb96e;
	B = 16'hb894;
	ans = 16'h3637;
	#20
	A = 16'h332f;
	B = 16'h3a32;
	ans = 16'h3190;
	#20
	A = 16'h38a5;
	B = 16'h2c5a;
	ans = 16'h290e;
	#20
	A = 16'h345d;
	B = 16'h2048;
	ans = 16'h18ac;
	#20
	A = 16'h36aa;
	B = 16'h3aa8;
	ans = 16'h358b;
	#20
	A = 16'hb8fe;
	B = 16'hbbad;
	ans = 16'h38ca;
	#20
	A = 16'h312a;
	B = 16'h3bca;
	ans = 16'h3107;
	#20
	A = 16'hb43a;
	B = 16'h3927;
	ans = 16'hb172;
	#20
	A = 16'h3952;
	B = 16'h3872;
	ans = 16'h35ea;
	#20
	A = 16'hb9e3;
	B = 16'h2c3c;
	ans = 16'haa3b;
	#20
	A = 16'h3568;
	B = 16'hadc3;
	ans = 16'ha7ca;
	#20
	A = 16'h34de;
	B = 16'hbbfa;
	ans = 16'hb4da;
	#20
	A = 16'hb88e;
	B = 16'had0e;
	ans = 16'h29c1;
	#20
	A = 16'hb72b;
	B = 16'h38cf;
	ans = 16'hb44f;
	#20
	A = 16'hbb41;
	B = 16'h376e;
	ans = 16'hb6bd;
	#20
	A = 16'hb53f;
	B = 16'h2684;
	ans = 16'ha046;
	#20
	A = 16'hbbcb;
	B = 16'h38a0;
	ans = 16'hb881;
	#20
	A = 16'h3ae6;
	B = 16'h38c2;
	ans = 16'h381a;
	#20
	A = 16'h3084;
	B = 16'h3312;
	ans = 16'h27fb;
	#20
	A = 16'hb8f6;
	B = 16'h2e1d;
	ans = 16'hab95;
	#20
	A = 16'hb282;
	B = 16'hb6ac;
	ans = 16'h2d6d;
	#20
	A = 16'hb40f;
	B = 16'hb9c3;
	ans = 16'h31d9;
	#20
	A = 16'h37fc;
	B = 16'hac5d;
	ans = 16'ha85b;
	#20
	A = 16'h32a0;
	B = 16'ha78d;
	ans = 16'h9e41;
	#20
	A = 16'h3bba;
	B = 16'h3899;
	ans = 16'h3871;
	#20
	A = 16'h3453;
	B = 16'hb59d;
	ans = 16'hae11;
	#20
	A = 16'hba31;
	B = 16'hafea;
	ans = 16'h2e20;
	#20
	A = 16'h3b64;
	B = 16'hb83d;
	ans = 16'hb7d5;
	#20
	A = 16'h3882;
	B = 16'h3974;
	ans = 16'h3625;
	#20
	A = 16'hacf5;
	B = 16'hadde;
	ans = 16'h1f45;
	#20
	A = 16'hb892;
	B = 16'h35c6;
	ans = 16'hb299;
	#20
	A = 16'hba2d;
	B = 16'hb29c;
	ans = 16'h311a;
	#20
	A = 16'hbb03;
	B = 16'hb08a;
	ans = 16'h2ff5;
	#20
	A = 16'hbaf3;
	B = 16'hb258;
	ans = 16'h3183;
	#20
	A = 16'h3bfc;
	B = 16'hb762;
	ans = 16'hb75e;
	#20
	A = 16'hb45a;
	B = 16'h3b59;
	ans = 16'hb3fe;
	#20
	A = 16'h320e;
	B = 16'hb4fb;
	ans = 16'hab8a;
	#20
	A = 16'h38e2;
	B = 16'hbb09;
	ans = 16'hb84b;
	#20
	A = 16'h3a72;
	B = 16'hb850;
	ans = 16'hb6f3;
	#20
	A = 16'hbb33;
	B = 16'hb7f3;
	ans = 16'h3727;
	#20
	A = 16'h393e;
	B = 16'ha310;
	ans = 16'ha0a1;
	#20
	A = 16'h3a1b;
	B = 16'h3883;
	ans = 16'h36e3;
	#20
	A = 16'hb841;
	B = 16'hb7f6;
	ans = 16'h343c;
	#20
	A = 16'hb932;
	B = 16'hb8e8;
	ans = 16'h365f;
	#20
	A = 16'hb936;
	B = 16'h3a26;
	ans = 16'hb801;
	#20
	A = 16'h2cca;
	B = 16'h3a7a;
	ans = 16'h2bc1;
	#20
	A = 16'hb5d0;
	B = 16'hb895;
	ans = 16'h32a9;
	#20
	A = 16'h383a;
	B = 16'h3b29;
	ans = 16'h3791;
	#20
	A = 16'h36aa;
	B = 16'hbbdc;
	ans = 16'hb68c;
	#20
	A = 16'hb6ad;
	B = 16'h3b60;
	ans = 16'hb627;
	#20
	A = 16'h33af;
	B = 16'h3843;
	ans = 16'h3018;
	#20
	A = 16'hb95a;
	B = 16'hbb9a;
	ans = 16'h3916;
	#20
	A = 16'hba7e;
	B = 16'hb47d;
	ans = 16'h3349;
	#20
	A = 16'h37fd;
	B = 16'hb4bb;
	ans = 16'hb0b9;
	#20
	A = 16'h3676;
	B = 16'h32ce;
	ans = 16'h2d7f;
	#20
	A = 16'h3b87;
	B = 16'hb91b;
	ans = 16'hb8ce;
	#20
	A = 16'hb852;
	B = 16'hb8e2;
	ans = 16'h3546;
	#20
	A = 16'h2b55;
	B = 16'ha25f;
	ans = 16'h91d7;
	#20
	A = 16'h3b03;
	B = 16'hb98c;
	ans = 16'hb8dd;
	#20
	A = 16'hba93;
	B = 16'hb92b;
	ans = 16'h383f;
	#20
	A = 16'h3aa4;
	B = 16'h3ba0;
	ans = 16'h3a54;
	#20
	A = 16'h3a3c;
	B = 16'hb8c0;
	ans = 16'hb767;
	#20
	A = 16'ha498;
	B = 16'h3b19;
	ans = 16'ha413;
	#20
	A = 16'hba5d;
	B = 16'h2de4;
	ans = 16'hacaf;
	#20
	A = 16'hb47d;
	B = 16'hba5c;
	ans = 16'h3323;
	#20
	A = 16'hb482;
	B = 16'hb9c0;
	ans = 16'h327b;
	#20
	A = 16'h3881;
	B = 16'h35b9;
	ans = 16'h3272;
	#20
	A = 16'h3992;
	B = 16'h3481;
	ans = 16'h3246;
	#20
	A = 16'hbbdd;
	B = 16'h3ba8;
	ans = 16'hbb87;
	#20
	A = 16'h3695;
	B = 16'h3994;
	ans = 16'h3497;
	#20
	A = 16'hb5f5;
	B = 16'hb659;
	ans = 16'h30ba;
	#20
	A = 16'hbad0;
	B = 16'hba7d;
	ans = 16'h3986;
	#20
	A = 16'h37a5;
	B = 16'h3b03;
	ans = 16'h36b3;
	#20
	A = 16'hd0b;
	B = 16'hb58a;
	ans = 16'h86fc;
	#20
	A = 16'hbbe4;
	B = 16'hbb6c;
	ans = 16'h3b52;
	#20
	A = 16'h3a64;
	B = 16'hb2ae;
	ans = 16'hb156;
	#20
	A = 16'h384d;
	B = 16'hb929;
	ans = 16'hb58c;
	#20
	A = 16'h3b6e;
	B = 16'h3b61;
	ans = 16'h3ada;
	#20
	A = 16'h3bba;
	B = 16'ha52d;
	ans = 16'ha500;
	#20
	A = 16'h396e;
	B = 16'h34a7;
	ans = 16'h3251;
	#20
	A = 16'h3b7a;
	B = 16'h3b7d;
	ans = 16'h3b00;
	#20
	A = 16'h3bfd;
	B = 16'hb95c;
	ans = 16'hb95a;
	#20
	A = 16'ha953;
	B = 16'h350b;
	ans = 16'ha2b6;
	#20
	A = 16'h3ada;
	B = 16'hb827;
	ans = 16'hb71d;
	#20
	A = 16'h2b2a;
	B = 16'hb8d3;
	ans = 16'ha852;
	#20
	A = 16'h3461;
	B = 16'hb907;
	ans = 16'hb181;
	#20
	A = 16'hbbbf;
	B = 16'h39f2;
	ans = 16'hb9c2;
	#20
	A = 16'hbbd2;
	B = 16'h3686;
	ans = 16'hb660;
	#20
	A = 16'h3a93;
	B = 16'h3831;
	ans = 16'h36e4;
	#20
	A = 16'h37b1;
	B = 16'h35b6;
	ans = 16'h317e;
	#20
	A = 16'hb6e1;
	B = 16'hb30a;
	ans = 16'h2e0d;
	#20
	A = 16'h3472;
	B = 16'h39b1;
	ans = 16'h3253;
	#20
	A = 16'h3a95;
	B = 16'h33da;
	ans = 16'h3276;
	#20
	A = 16'h37dc;
	B = 16'haf61;
	ans = 16'hab40;
	#20
	A = 16'h3311;
	B = 16'h2cfc;
	ans = 16'h2467;
	#20
	A = 16'habc9;
	B = 16'h3a3b;
	ans = 16'haa10;
	#20
	A = 16'hb897;
	B = 16'hbb48;
	ans = 16'h382d;
	#20
	A = 16'hba53;
	B = 16'hb509;
	ans = 16'h33f6;
	#20
	A = 16'h3b0c;
	B = 16'h3b01;
	ans = 16'h3a2b;
	#20
	A = 16'h33fe;
	B = 16'h398e;
	ans = 16'h318d;
	#20
	A = 16'hb8ec;
	B = 16'hb901;
	ans = 16'h3628;
	#20
	A = 16'h3bab;
	B = 16'h3b82;
	ans = 16'h3b32;
	#20
	A = 16'hbbab;
	B = 16'h3b2f;
	ans = 16'hbae3;
	#20
	A = 16'hb715;
	B = 16'h3a17;
	ans = 16'hb564;
	#20
	A = 16'h3aa1;
	B = 16'h3b01;
	ans = 16'h39ce;
	#20
	A = 16'haeb8;
	B = 16'hba6c;
	ans = 16'h2d65;
	#20
	A = 16'h3944;
	B = 16'hb852;
	ans = 16'hb5b0;
	#20
	A = 16'h35ae;
	B = 16'hb89a;
	ans = 16'hb289;
	#20
	A = 16'hb5d8;
	B = 16'hb40a;
	ans = 16'h2de7;
	#20
	A = 16'hba88;
	B = 16'h3594;
	ans = 16'hb48e;
	#20
	A = 16'hbb5b;
	B = 16'h3990;
	ans = 16'hb91d;
	#20
	A = 16'h1dc0;
	B = 16'h3731;
	ans = 16'h192b;
	#20
	A = 16'h3a50;
	B = 16'h147c;
	ans = 16'h1314;
	#20
	A = 16'h2f9c;
	B = 16'h357a;
	ans = 16'h2936;
	#20
	A = 16'hb474;
	B = 16'hba87;
	ans = 16'h3344;
	#20
	A = 16'h3b56;
	B = 16'h3a43;
	ans = 16'h39be;
	#20
	A = 16'hbb59;
	B = 16'hb17a;
	ans = 16'h3108;
	#20
	A = 16'h3935;
	B = 16'hb8b9;
	ans = 16'hb626;
	#20
	A = 16'hb5ed;
	B = 16'hb898;
	ans = 16'h32ce;
	#20
	A = 16'h3aa2;
	B = 16'hb60d;
	ans = 16'hb504;
	#20
	A = 16'h3a4a;
	B = 16'h399a;
	ans = 16'h3867;
	#20
	A = 16'h394c;
	B = 16'hb7ae;
	ans = 16'hb516;
	#20
	A = 16'h3bf8;
	B = 16'h2dc4;
	ans = 16'h2dbe;
	#20
	A = 16'h3834;
	B = 16'ha66a;
	ans = 16'ha2bd;
	#20
	A = 16'h36cb;
	B = 16'hb49f;
	ans = 16'hafd9;
	#20
	A = 16'hb8db;
	B = 16'h2c7e;
	ans = 16'ha974;
	#20
	A = 16'hb9a0;
	B = 16'hba8f;
	ans = 16'h389d;
	#20
	A = 16'hb596;
	B = 16'h31a1;
	ans = 16'habdc;
	#20
	A = 16'hb9d3;
	B = 16'habb5;
	ans = 16'h299c;
	#20
	A = 16'h36b7;
	B = 16'h3802;
	ans = 16'h32ba;
	#20
	A = 16'h3814;
	B = 16'hb8d7;
	ans = 16'hb4ef;
	#20
	A = 16'h3962;
	B = 16'h2602;
	ans = 16'h240b;
	#20
	A = 16'hbab2;
	B = 16'h3a74;
	ans = 16'hb967;
	#20
	A = 16'hb932;
	B = 16'h364b;
	ans = 16'hb416;
	#20
	A = 16'hb75b;
	B = 16'hb009;
	ans = 16'h2b6c;
	#20
	A = 16'h3915;
	B = 16'h3686;
	ans = 16'h3425;
	#20
	A = 16'ha5c5;
	B = 16'h39e6;
	ans = 16'ha441;
	#20
	A = 16'hb76b;
	B = 16'h3541;
	ans = 16'hb0df;
	#20
	A = 16'h2ce7;
	B = 16'h3930;
	ans = 16'h2a5c;
	#20
	A = 16'hb482;
	B = 16'h3b51;
	ans = 16'hb41f;
	#20
	A = 16'h320d;
	B = 16'h2cb8;
	ans = 16'h2323;
	#20
	A = 16'hb7bd;
	B = 16'hb947;
	ans = 16'h351b;
	#20
	A = 16'hbbdc;
	B = 16'h269e;
	ans = 16'ha680;
	#20
	A = 16'hb76a;
	B = 16'h33b5;
	ans = 16'haf24;
	#20
	A = 16'hbbb9;
	B = 16'hbbd4;
	ans = 16'h3b8f;
	#20
	A = 16'h30ac;
	B = 16'h3631;
	ans = 16'h2b3b;
	#20
	A = 16'h37c2;
	B = 16'h39f0;
	ans = 16'h35c2;
	#20
	A = 16'hbae6;
	B = 16'hba16;
	ans = 16'h393f;
	#20
	A = 16'h3165;
	B = 16'h3a3e;
	ans = 16'h3036;
	#20
	A = 16'hba5a;
	B = 16'hb600;
	ans = 16'h34c4;
	#20
	A = 16'h3834;
	B = 16'hba31;
	ans = 16'hb681;
	#20
	A = 16'h3996;
	B = 16'h37af;
	ans = 16'h355d;
	#20
	A = 16'hb7c9;
	B = 16'hbb9e;
	ans = 16'h376a;
	#20
	A = 16'hba71;
	B = 16'hb6a4;
	ans = 16'h3559;
	#20
	A = 16'hbb92;
	B = 16'h3b93;
	ans = 16'hbb2b;
	#20
	A = 16'h39c6;
	B = 16'hb63a;
	ans = 16'hb47e;
	#20
	A = 16'hb929;
	B = 16'hbb1c;
	ans = 16'h3896;
	#20
	A = 16'hb735;
	B = 16'h3891;
	ans = 16'hb41d;
	#20
	A = 16'h3662;
	B = 16'hbb66;
	ans = 16'hb5e7;
	#20
	A = 16'hb262;
	B = 16'h387a;
	ans = 16'haf25;
	#20
	A = 16'h3484;
	B = 16'h3955;
	ans = 16'h3205;
	#20
	A = 16'h344c;
	B = 16'hb7c3;
	ans = 16'hb02b;
	#20
	A = 16'hb01c;
	B = 16'h3904;
	ans = 16'had27;
	#20
	A = 16'hba0f;
	B = 16'hb488;
	ans = 16'h32dd;
	#20
	A = 16'h32a0;
	B = 16'hb6f7;
	ans = 16'hadc5;
	#20
	A = 16'h38b5;
	B = 16'hb406;
	ans = 16'hb0bc;
	#20
	A = 16'haac5;
	B = 16'hb88f;
	ans = 16'h27b7;
	#20
	A = 16'h3a9c;
	B = 16'h34ff;
	ans = 16'h3421;
	#20
	A = 16'h3866;
	B = 16'h31a0;
	ans = 16'h2e2f;
	#20
	A = 16'h355f;
	B = 16'hb821;
	ans = 16'hb18b;
	#20
	A = 16'hb774;
	B = 16'h2485;
	ans = 16'ha036;
	#20
	A = 16'h2acf;
	B = 16'h363d;
	ans = 16'h254f;
	#20
	A = 16'hb526;
	B = 16'hbb29;
	ans = 16'h349c;
	#20
	A = 16'h3aa1;
	B = 16'h279e;
	ans = 16'h2650;
	#20
	A = 16'h34f5;
	B = 16'haedf;
	ans = 16'ha842;
	#20
	A = 16'hbbe3;
	B = 16'hb6a5;
	ans = 16'h368d;
	#20
	A = 16'hb9b2;
	B = 16'h38f3;
	ans = 16'hb70c;
	#20
	A = 16'h3751;
	B = 16'hb99a;
	ans = 16'hb51f;
	#20
	A = 16'h2fda;
	B = 16'hb8b2;
	ans = 16'hac9c;
	#20
	A = 16'hb944;
	B = 16'h2740;
	ans = 16'ha4c6;
	#20
	A = 16'hb990;
	B = 16'hbad2;
	ans = 16'h38be;
	#20
	A = 16'h35d5;
	B = 16'h2fdc;
	ans = 16'h29bb;
	#20
	A = 16'hacfe;
	B = 16'hb964;
	ans = 16'h2aba;
	#20
	A = 16'ha00f;
	B = 16'h34be;
	ans = 16'h98d0;
	#20
	A = 16'h308e;
	B = 16'h385b;
	ans = 16'h2cf6;
	#20
	A = 16'hb84a;
	B = 16'h37a1;
	ans = 16'hb417;
	#20
	A = 16'h3a21;
	B = 16'hb75a;
	ans = 16'hb5a2;
	#20
	A = 16'h314a;
	B = 16'h37e3;
	ans = 16'h2d37;
	#20
	A = 16'hbba9;
	B = 16'h3ad7;
	ans = 16'hba8d;
	#20
	A = 16'h3768;
	B = 16'hb8a6;
	ans = 16'hb44e;
	#20
	A = 16'h2174;
	B = 16'h3930;
	ans = 16'h1f12;
	#20
	A = 16'hb833;
	B = 16'h350a;
	ans = 16'hb14a;
	#20
	A = 16'hb709;
	B = 16'hb9f9;
	ans = 16'h3541;
	#20
	A = 16'hb93e;
	B = 16'h3ad6;
	ans = 16'hb87b;
	#20
	A = 16'hba2f;
	B = 16'h35c4;
	ans = 16'hb475;
	#20
	A = 16'h3a7a;
	B = 16'h322b;
	ans = 16'h30fe;
	#20
	A = 16'hb18f;
	B = 16'h3a9a;
	ans = 16'hb096;
	#20
	A = 16'h35d4;
	B = 16'h3415;
	ans = 16'h2df3;
	#20
	A = 16'hbb73;
	B = 16'hbb78;
	ans = 16'h3af4;
	#20
	A = 16'h39a1;
	B = 16'hb765;
	ans = 16'hb534;
	#20
	A = 16'ha8fa;
	B = 16'h3bed;
	ans = 16'ha8ee;
	#20
	A = 16'hb61a;
	B = 16'h345d;
	ans = 16'haea8;
	#20
	A = 16'h3bb3;
	B = 16'hb099;
	ans = 16'hb06d;
	#20
	A = 16'hb7f1;
	B = 16'hb81e;
	ans = 16'h3416;
	#20
	A = 16'hba98;
	B = 16'h3a7b;
	ans = 16'hb957;
	#20
	A = 16'h34e8;
	B = 16'hba61;
	ans = 16'hb3d3;
	#20
	A = 16'h395d;
	B = 16'h2ee3;
	ans = 16'h2c9e;
	#20
	A = 16'hb856;
	B = 16'h386c;
	ans = 16'hb4cb;
	#20
	A = 16'h395b;
	B = 16'h39af;
	ans = 16'h379c;
	#20
	A = 16'hb16f;
	B = 16'h3935;
	ans = 16'haf13;
	#20
	A = 16'hb748;
	B = 16'hb945;
	ans = 16'h34cc;
	#20
	A = 16'hb2e9;
	B = 16'ha95a;
	ans = 16'h209f;
	#20
	A = 16'had93;
	B = 16'h39ac;
	ans = 16'habe7;
	#20
	A = 16'hb91a;
	B = 16'h3576;
	ans = 16'hb2f7;
	#20
	A = 16'h3746;
	B = 16'hb9bb;
	ans = 16'hb536;
	#20
	A = 16'h3630;
	B = 16'hac47;
	ans = 16'ha69e;
	#20
	A = 16'hbaa4;
	B = 16'hb0b7;
	ans = 16'h2fd4;
	#20
	A = 16'hb62c;
	B = 16'h3818;
	ans = 16'hb251;
	#20
	A = 16'hb43f;
	B = 16'h38ac;
	ans = 16'hb0f6;
	#20
	A = 16'h3574;
	B = 16'hb876;
	ans = 16'hb215;
	#20
	A = 16'hb598;
	B = 16'hb770;
	ans = 16'h3133;
	#20
	A = 16'h39e0;
	B = 16'h29a4;
	ans = 16'h2824;
	#20
	A = 16'h3afc;
	B = 16'h3797;
	ans = 16'h36a0;
	#20
	A = 16'h3720;
	B = 16'hb6ca;
	ans = 16'hb20c;
	#20
	A = 16'hb75e;
	B = 16'h385f;
	ans = 16'hb406;
	#20
	A = 16'hb341;
	B = 16'h35ab;
	ans = 16'had24;
	#20
	A = 16'h3a48;
	B = 16'ha3aa;
	ans = 16'ha204;
	#20
	A = 16'hafcf;
	B = 16'hadd5;
	ans = 16'h21b1;
	#20
	A = 16'hb9c2;
	B = 16'h383f;
	ans = 16'hb61d;
	#20
	A = 16'h3ac7;
	B = 16'h3804;
	ans = 16'h36ce;
	#20
	A = 16'h37ec;
	B = 16'h3953;
	ans = 16'h3546;
	#20
	A = 16'hb9e9;
	B = 16'h38a4;
	ans = 16'hb6db;
	#20
	A = 16'h36d3;
	B = 16'h3bb9;
	ans = 16'h3696;
	#20
	A = 16'h31f5;
	B = 16'hbacf;
	ans = 16'hb112;
	#20
	A = 16'hba4b;
	B = 16'h34ec;
	ans = 16'hb3be;
	#20
	A = 16'h3b17;
	B = 16'hbb80;
	ans = 16'hbaa6;
	#20
	A = 16'h38ae;
	B = 16'h3bb2;
	ans = 16'h3880;
	#20
	A = 16'hb96f;
	B = 16'hb95e;
	ans = 16'h374a;
	#20
	A = 16'h363c;
	B = 16'h3bfc;
	ans = 16'h3639;
	#20
	A = 16'hbabc;
	B = 16'hb8ba;
	ans = 16'h37f5;
	#20
	A = 16'hb302;
	B = 16'hb719;
	ans = 16'h2e38;
	#20
	A = 16'h3ab5;
	B = 16'hb4ad;
	ans = 16'hb3d7;
	#20
	A = 16'h3714;
	B = 16'h3b0d;
	ans = 16'h363d;
	#20
	A = 16'hb2d1;
	B = 16'h3ab3;
	ans = 16'hb1b5;
	#20
	A = 16'hb801;
	B = 16'hba8e;
	ans = 16'h3690;
	#20
	A = 16'h89a5;
	B = 16'h3b1a;
	ans = 16'h8903;
	#20
	A = 16'hb982;
	B = 16'hb393;
	ans = 16'h3137;
	#20
	A = 16'ha50e;
	B = 16'hb7af;
	ans = 16'h20db;
	#20
	A = 16'ha218;
	B = 16'hb197;
	ans = 16'h1842;
	#20
	A = 16'hb441;
	B = 16'hb4f4;
	ans = 16'h2d44;
	#20
	A = 16'h38df;
	B = 16'h36d1;
	ans = 16'h3427;
	#20
	A = 16'had9a;
	B = 16'h3631;
	ans = 16'ha856;
	#20
	A = 16'h3aa0;
	B = 16'hbb1a;
	ans = 16'hb9e2;
	#20
	A = 16'h2d73;
	B = 16'h3a71;
	ans = 16'h2c63;
	#20
	A = 16'hb042;
	B = 16'hba77;
	ans = 16'h2ee2;
	#20
	A = 16'h3803;
	B = 16'h36ab;
	ans = 16'h32b0;
	#20
	A = 16'hb80e;
	B = 16'h3b5c;
	ans = 16'hb776;
	#20
	A = 16'hbaa3;
	B = 16'hb9ef;
	ans = 16'h38ec;
	#20
	A = 16'h3a5e;
	B = 16'h3bbc;
	ans = 16'h3a28;
	#20
	A = 16'hbb6b;
	B = 16'hb8ca;
	ans = 16'h3871;
	#20
	A = 16'hb9a3;
	B = 16'h1d90;
	ans = 16'h9bd7;
	#20
	A = 16'h3989;
	B = 16'hb73c;
	ans = 16'hb501;
	#20
	A = 16'hb80a;
	B = 16'hb192;
	ans = 16'h2da0;
	#20
	A = 16'h2f1f;
	B = 16'h2930;
	ans = 16'h1c9e;
	#20
	A = 16'haf9d;
	B = 16'hb1f1;
	ans = 16'h25a7;
	#20
	A = 16'hb667;
	B = 16'h3b41;
	ans = 16'hb5ce;
	#20
	A = 16'hb8aa;
	B = 16'ha595;
	ans = 16'h2282;
	#20
	A = 16'hbac9;
	B = 16'h39a0;
	ans = 16'hb8c5;
	#20
	A = 16'hb550;
	B = 16'hbab1;
	ans = 16'h3472;
	#20
	A = 16'ha5c9;
	B = 16'h391e;
	ans = 16'ha367;
	#20
	A = 16'h348e;
	B = 16'hb9ed;
	ans = 16'hb2bf;
	#20
	A = 16'h3b82;
	B = 16'hb26c;
	ans = 16'hb207;
	#20
	A = 16'h34a5;
	B = 16'h3be9;
	ans = 16'h3498;
	#20
	A = 16'hb721;
	B = 16'hb773;
	ans = 16'h32a3;
	#20
	A = 16'hb37d;
	B = 16'h3849;
	ans = 16'hb003;
	#20
	A = 16'hb8a0;
	B = 16'hb44d;
	ans = 16'h30f9;
	#20
	A = 16'hb61a;
	B = 16'h3826;
	ans = 16'hb254;
	#20
	A = 16'hb61d;
	B = 16'hb668;
	ans = 16'h30e5;
	#20
	A = 16'hb3d9;
	B = 16'h3549;
	ans = 16'had2f;
	#20
	A = 16'hb958;
	B = 16'hb9d4;
	ans = 16'h37c9;
	#20
	A = 16'h3958;
	B = 16'h35cd;
	ans = 16'h33c0;
	#20
	A = 16'hbb2b;
	B = 16'hbb37;
	ans = 16'h3a77;
	#20
	A = 16'h30c7;
	B = 16'h35e0;
	ans = 16'h2b04;
	#20
	A = 16'hb929;
	B = 16'h2bb7;
	ans = 16'ha8fa;
	#20
	A = 16'h3805;
	B = 16'h2edb;
	ans = 16'h2ae4;
	#20
	A = 16'h3293;
	B = 16'h3b39;
	ans = 16'h31ef;
	#20
	A = 16'h3bc8;
	B = 16'ha91d;
	ans = 16'ha8f9;
	#20
	A = 16'hbb73;
	B = 16'h32a7;
	ans = 16'hb232;
	#20
	A = 16'ha88b;
	B = 16'h39d9;
	ans = 16'ha6a4;
	#20
	A = 16'h399d;
	B = 16'hb458;
	ans = 16'hb218;
	#20
	A = 16'h3863;
	B = 16'hba62;
	ans = 16'hb700;
	#20
	A = 16'hbb16;
	B = 16'hba7f;
	ans = 16'h39c1;
	#20
	A = 16'hb891;
	B = 16'hb9f5;
	ans = 16'h36cd;
	#20
	A = 16'h3904;
	B = 16'h385b;
	ans = 16'h3576;
	#20
	A = 16'h303c;
	B = 16'h3aa2;
	ans = 16'h2f05;
	#20
	A = 16'hbab4;
	B = 16'hb651;
	ans = 16'h354b;
	#20
	A = 16'hba6a;
	B = 16'h3a78;
	ans = 16'hb930;
	#20
	A = 16'hb9ae;
	B = 16'hba76;
	ans = 16'h3896;
	#20
	A = 16'h3a3b;
	B = 16'hbb17;
	ans = 16'hb986;
	#20
	A = 16'hae50;
	B = 16'h3bfc;
	ans = 16'hae4d;
	#20
	A = 16'hb639;
	B = 16'hb80e;
	ans = 16'h324f;
	#20
	A = 16'hb78e;
	B = 16'h3182;
	ans = 16'had34;
	#20
	A = 16'h359c;
	B = 16'h3461;
	ans = 16'h2e24;
	#20
	A = 16'ha18b;
	B = 16'h2c74;
	ans = 16'h922c;
	#20
	A = 16'h3742;
	B = 16'h2fe8;
	ans = 16'h2b2c;
	#20
	A = 16'hb89d;
	B = 16'h3b73;
	ans = 16'hb84c;
	#20
	A = 16'hba50;
	B = 16'h2f83;
	ans = 16'haded;
	#20
	A = 16'h3951;
	B = 16'h2bdd;
	ans = 16'h293a;
	#20
	A = 16'h35a5;
	B = 16'hb596;
	ans = 16'hafe2;
	#20
	A = 16'h3997;
	B = 16'h3313;
	ans = 16'h30f1;
	#20
	A = 16'h37c8;
	B = 16'h3b96;
	ans = 16'h3761;
	#20
	A = 16'h3b17;
	B = 16'h3080;
	ans = 16'h2ffa;
	#20
	A = 16'h3b68;
	B = 16'h3ac3;
	ans = 16'h3a43;
	#20
	A = 16'h2d08;
	B = 16'hb16f;
	ans = 16'ha2d6;
	#20
	A = 16'h37d5;
	B = 16'hb3f5;
	ans = 16'hafca;
	#20
	A = 16'h2dad;
	B = 16'h244a;
	ans = 16'h1616;
	#20
	A = 16'h3358;
	B = 16'h3ba0;
	ans = 16'h3300;
	#20
	A = 16'hba2d;
	B = 16'hb6a0;
	ans = 16'h351d;
	#20
	A = 16'h37a5;
	B = 16'h3a35;
	ans = 16'h35ee;
	#20
	A = 16'hb935;
	B = 16'h39d9;
	ans = 16'hb79d;
	#20
	A = 16'hb94e;
	B = 16'h3924;
	ans = 16'hb6d1;
	#20
	A = 16'hb4fa;
	B = 16'hb692;
	ans = 16'h3016;
	#20
	A = 16'h3bbe;
	B = 16'h39e0;
	ans = 16'h39b0;
	#20
	A = 16'hb7fd;
	B = 16'hb529;
	ans = 16'h3127;
	#20
	A = 16'hb9ee;
	B = 16'hb525;
	ans = 16'h33a0;
	#20
	A = 16'h3aca;
	B = 16'h397a;
	ans = 16'h38a6;
	#20
	A = 16'hbbca;
	B = 16'h3ae7;
	ans = 16'hbab8;
	#20
	A = 16'hb959;
	B = 16'hba25;
	ans = 16'h381b;
	#20
	A = 16'hb98e;
	B = 16'h3703;
	ans = 16'hb4de;
	#20
	A = 16'hb339;
	B = 16'h3b84;
	ans = 16'hb2c9;
	#20
	A = 16'hb9b8;
	B = 16'hb73f;
	ans = 16'h352e;
	#20
	A = 16'h3278;
	B = 16'hbb96;
	ans = 16'hb222;
	#20
	A = 16'hba03;
	B = 16'hb698;
	ans = 16'h34f4;
	#20
	A = 16'h3447;
	B = 16'h37eb;
	ans = 16'h303c;
	#20
	A = 16'hb966;
	B = 16'h3bee;
	ans = 16'hb95a;
	#20
	A = 16'h31c5;
	B = 16'h36c7;
	ans = 16'h2ce3;
	#20
	A = 16'hb5c7;
	B = 16'h2150;
	ans = 16'h9bac;
	#20
	A = 16'h3465;
	B = 16'h28c9;
	ans = 16'h2142;
	#20
	A = 16'hae4d;
	B = 16'ha45d;
	ans = 16'h16df;
	#20
	A = 16'hb91f;
	B = 16'h30bb;
	ans = 16'hae0e;
	#20
	A = 16'h3247;
	B = 16'h398d;
	ans = 16'h305b;
	#20
	A = 16'h3a19;
	B = 16'h358c;
	ans = 16'h343a;
	#20
	A = 16'h3b9f;
	B = 16'h3869;
	ans = 16'h3834;
	#20
	A = 16'hb7cf;
	B = 16'hb1b2;
	ans = 16'h2d8f;
	#20
	A = 16'h373d;
	B = 16'h3ace;
	ans = 16'h3628;
	#20
	A = 16'hb1b8;
	B = 16'h3b70;
	ans = 16'hb151;
	#20
	A = 16'hb844;
	B = 16'h3080;
	ans = 16'haccc;
	#20
	A = 16'hbb61;
	B = 16'hb7e9;
	ans = 16'h374c;
	#20
	A = 16'hba85;
	B = 16'h3996;
	ans = 16'hb88d;
	#20
	A = 16'h3b29;
	B = 16'hb82e;
	ans = 16'hb77b;
	#20
	A = 16'h3bf7;
	B = 16'hb9b9;
	ans = 16'hb9b3;
	#20
	A = 16'h1c53;
	B = 16'hb8ef;
	ans = 16'h9955;
	#20
	A = 16'hbb04;
	B = 16'hb83c;
	ans = 16'h376d;
	#20
	A = 16'hb801;
	B = 16'haf9f;
	ans = 16'h2ba1;
	#20
	A = 16'h39b3;
	B = 16'hbc00;
	ans = 16'hb9b3;
	#20
	A = 16'h39c2;
	B = 16'h37ca;
	ans = 16'h359b;
	#20
	A = 16'h2fd6;
	B = 16'hbaca;
	ans = 16'haea6;
	#20
	A = 16'h31a1;
	B = 16'haee8;
	ans = 16'ha4dc;
	#20
	A = 16'h3b35;
	B = 16'hb8f8;
	ans = 16'hb87a;
	#20
	A = 16'hafbb;
	B = 16'h39cc;
	ans = 16'had9a;
	#20
	A = 16'h3832;
	B = 16'hb915;
	ans = 16'hb555;
	#20
	A = 16'h309e;
	B = 16'h3912;
	ans = 16'h2dda;
	#20
	A = 16'h38e2;
	B = 16'hb8a0;
	ans = 16'hb5a5;
	#20
	A = 16'h3938;
	B = 16'h3035;
	ans = 16'h2d7d;
	#20
	A = 16'h352f;
	B = 16'h313e;
	ans = 16'h2acb;
	#20
	A = 16'hb87c;
	B = 16'hb563;
	ans = 16'h320a;
	#20
	A = 16'h33f9;
	B = 16'hb0aa;
	ans = 16'ha8a6;
	#20
	A = 16'h38f3;
	B = 16'hb087;
	ans = 16'had9a;
	#20
	A = 16'h382c;
	B = 16'h3b92;
	ans = 16'h37e5;
	#20
	A = 16'h31e2;
	B = 16'hbae5;
	ans = 16'hb112;
	#20
	A = 16'hb0c1;
	B = 16'hac25;
	ans = 16'h20ed;
	#20
	A = 16'hb697;
	B = 16'h2e05;
	ans = 16'ha8f5;
	#20
	A = 16'h3a8c;
	B = 16'h3a5f;
	ans = 16'h3937;
	#20
	A = 16'h3598;
	B = 16'h395f;
	ans = 16'h3383;
	#20
	A = 16'hb834;
	B = 16'ha9f0;
	ans = 16'h263d;
	#20
	A = 16'hbb2a;
	B = 16'h32cc;
	ans = 16'hb216;
	#20
	A = 16'hb62c;
	B = 16'hb947;
	ans = 16'h3412;
	#20
	A = 16'h2ba2;
	B = 16'hbb61;
	ans = 16'hab0a;
	#20
	A = 16'hb99c;
	B = 16'h3420;
	ans = 16'hb1c9;
	#20
	A = 16'ha235;
	B = 16'hae01;
	ans = 16'h14a9;
	#20
	A = 16'hb2b1;
	B = 16'hbb0d;
	ans = 16'h31e6;
	#20
	A = 16'h3541;
	B = 16'hb664;
	ans = 16'hb032;
	#20
	A = 16'h3639;
	B = 16'h390a;
	ans = 16'h33d7;
	#20
	A = 16'hb55e;
	B = 16'hbba4;
	ans = 16'h3520;
	#20
	A = 16'hb62d;
	B = 16'hac7f;
	ans = 16'h26f1;
	#20
	A = 16'h352b;
	B = 16'h3270;
	ans = 16'h2c29;
	#20
	A = 16'h383c;
	B = 16'h3921;
	ans = 16'h356e;
	#20
	A = 16'h3462;
	B = 16'hae3b;
	ans = 16'ha6d4;
	#20
	A = 16'hb52a;
	B = 16'haefb;
	ans = 16'h2882;
	#20
	A = 16'h3b95;
	B = 16'hb54a;
	ans = 16'hb503;
	#20
	A = 16'h30b5;
	B = 16'hb3dd;
	ans = 16'ha8a0;
	#20
	A = 16'h3449;
	B = 16'h3811;
	ans = 16'h305b;
	#20
	A = 16'hb75e;
	B = 16'h3427;
	ans = 16'hafa6;
	#20
	A = 16'hb7b8;
	B = 16'hb230;
	ans = 16'h2df8;
	#20
	A = 16'h3887;
	B = 16'h305f;
	ans = 16'h2cf3;
	#20
	A = 16'hb3b2;
	B = 16'h389b;
	ans = 16'hb06e;
	#20
	A = 16'hb69f;
	B = 16'h3bed;
	ans = 16'hb68f;
	#20
	A = 16'hb80c;
	B = 16'hb8f5;
	ans = 16'h3504;
	#20
	A = 16'hacb9;
	B = 16'hb1a7;
	ans = 16'h22ac;
	#20
	A = 16'h3bec;
	B = 16'h2fa6;
	ans = 16'h2f93;
	#20
	A = 16'h291d;
	B = 16'h2717;
	ans = 16'h1488;
	#20
	A = 16'h342c;
	B = 16'hb758;
	ans = 16'hafa9;
	#20
	A = 16'h3958;
	B = 16'h32e6;
	ans = 16'h309c;
	#20
	A = 16'h3a73;
	B = 16'h35f3;
	ans = 16'h34cc;
	#20
	A = 16'h3921;
	B = 16'h3697;
	ans = 16'h343a;
	#20
	A = 16'h2a0f;
	B = 16'hbbd5;
	ans = 16'ha9ee;
	#20
	A = 16'h3a42;
	B = 16'h3480;
	ans = 16'h330a;
	#20
	A = 16'h393b;
	B = 16'h3825;
	ans = 16'h356b;
	#20
	A = 16'hb5f6;
	B = 16'h33b0;
	ans = 16'hadba;
	#20
	A = 16'hb9a5;
	B = 16'hb143;
	ans = 16'h2f6d;
	#20
	A = 16'hb5ce;
	B = 16'hb29e;
	ans = 16'h2ccd;
	#20
	A = 16'h39b0;
	B = 16'h3046;
	ans = 16'h2e14;
	#20
	A = 16'h39cf;
	B = 16'hb661;
	ans = 16'hb4a2;
	#20
	A = 16'ha8c4;
	B = 16'hb412;
	ans = 16'h20d9;
	#20
	A = 16'h3b11;
	B = 16'h3ac3;
	ans = 16'h39f9;
	#20
	A = 16'hb982;
	B = 16'hb184;
	ans = 16'h2f98;
	#20
	A = 16'hb849;
	B = 16'hb90c;
	ans = 16'h3568;
	#20
	A = 16'hb6a3;
	B = 16'hbab2;
	ans = 16'h358e;
	#20
	A = 16'hbac6;
	B = 16'hba3b;
	ans = 16'h3946;
	#20
	A = 16'h2a68;
	B = 16'h35b9;
	ans = 16'h2495;
	#20
	A = 16'h37f5;
	B = 16'h3814;
	ans = 16'h340e;
	#20
	A = 16'h3787;
	B = 16'h33e3;
	ans = 16'h2f6c;
	#20
	A = 16'h2d3f;
	B = 16'h3afb;
	ans = 16'h2c94;
	#20
	A = 16'h363a;
	B = 16'h3412;
	ans = 16'h2e56;
	#20
	A = 16'hba04;
	B = 16'h3989;
	ans = 16'hb82a;
	#20
	A = 16'hb9c2;
	B = 16'h3710;
	ans = 16'hb515;
	#20
	A = 16'h33d7;
	B = 16'hb516;
	ans = 16'hacfc;
	#20
	A = 16'h3bf6;
	B = 16'h393e;
	ans = 16'h3937;
	#20
	A = 16'h36cf;
	B = 16'hb828;
	ans = 16'hb313;
	#20
	A = 16'hbb37;
	B = 16'h3090;
	ans = 16'hb01d;
	#20
	A = 16'h343f;
	B = 16'h359e;
	ans = 16'h2df6;
	#20
	A = 16'hb9dd;
	B = 16'h3264;
	ans = 16'hb0af;
	#20
	A = 16'hb944;
	B = 16'hbabb;
	ans = 16'h386e;
	#20
	A = 16'had02;
	B = 16'h300b;
	ans = 16'ha110;
	#20
	A = 16'hb366;
	B = 16'h32e1;
	ans = 16'haa5d;
	#20
	A = 16'hb4c0;
	B = 16'hb5c4;
	ans = 16'h2ed9;
	#20
	A = 16'hb5aa;
	B = 16'hb00b;
	ans = 16'h29ba;
	#20
	A = 16'hbbca;
	B = 16'h39e6;
	ans = 16'hb9be;
	#20
	A = 16'h34f2;
	B = 16'h374d;
	ans = 16'h3083;
	#20
	A = 16'hb498;
	B = 16'h33f7;
	ans = 16'hac93;
	#20
	A = 16'hb81d;
	B = 16'h38a8;
	ans = 16'hb4ca;
	#20
	A = 16'hb73e;
	B = 16'hb5d9;
	ans = 16'h314b;
	#20
	A = 16'h36af;
	B = 16'hb6fa;
	ans = 16'hb1d4;
	#20
	A = 16'hbbc7;
	B = 16'h36cc;
	ans = 16'hb69c;
	#20
	A = 16'hb627;
	B = 16'hb126;
	ans = 16'h2beb;
	#20
	A = 16'h3658;
	B = 16'h39be;
	ans = 16'h348e;
	#20
	A = 16'hb120;
	B = 16'h2a3d;
	ans = 16'h9ffe;
	#20
	A = 16'h3646;
	B = 16'hb6bc;
	ans = 16'hb148;
	#20
	A = 16'h31c5;
	B = 16'h30c8;
	ans = 16'h26e5;
	#20
	A = 16'hb1fa;
	B = 16'h39e5;
	ans = 16'hb067;
	#20
	A = 16'hb9b8;
	B = 16'h3123;
	ans = 16'haf58;
	#20
	A = 16'ha536;
	B = 16'hba62;
	ans = 16'h2428;
	#20
	A = 16'hb72f;
	B = 16'h383d;
	ans = 16'hb39d;
	#20
	A = 16'h3555;
	B = 16'hb235;
	ans = 16'hac23;
	#20
	A = 16'hba73;
	B = 16'hb7aa;
	ans = 16'h362e;
	#20
	A = 16'h3a13;
	B = 16'h38a1;
	ans = 16'h3707;
	#20
	A = 16'h9a7d;
	B = 16'h328f;
	ans = 16'h9152;
	#20
	A = 16'h343b;
	B = 16'h380d;
	ans = 16'h3049;
	#20
	A = 16'hb86d;
	B = 16'h3977;
	ans = 16'hb60c;
	#20
	A = 16'hb7ee;
	B = 16'h3a26;
	ans = 16'hb618;
	#20
	A = 16'hb287;
	B = 16'hbaf2;
	ans = 16'h31ab;
	#20
	A = 16'hbb0a;
	B = 16'hb991;
	ans = 16'h38e6;
	#20
	A = 16'hbb79;
	B = 16'hb65b;
	ans = 16'h35f0;
	#20
	A = 16'hbbcc;
	B = 16'h3aac;
	ans = 16'hba81;
	#20
	A = 16'hba7e;
	B = 16'h3574;
	ans = 16'hb46d;
	#20
	A = 16'hba4d;
	B = 16'h280c;
	ans = 16'ha660;
	#20
	A = 16'hb19b;
	B = 16'h3647;
	ans = 16'hac66;
	#20
	A = 16'h3ae9;
	B = 16'hba0a;
	ans = 16'hb937;
	#20
	A = 16'hba0a;
	B = 16'hb52d;
	ans = 16'h33d0;
	#20
	A = 16'hba33;
	B = 16'hb605;
	ans = 16'h34aa;
	#20
	A = 16'hbaf7;
	B = 16'h3a95;
	ans = 16'hb9bb;
	#20
	A = 16'hbb0a;
	B = 16'h3581;
	ans = 16'hb4d8;
	#20
	A = 16'hbbbb;
	B = 16'hb414;
	ans = 16'h33e2;
	#20
	A = 16'hb8ab;
	B = 16'h3943;
	ans = 16'hb624;
	#20
	A = 16'h369c;
	B = 16'hb93f;
	ans = 16'hb456;
	#20
	A = 16'h3940;
	B = 16'hbb72;
	ans = 16'hb8e3;
	#20
	A = 16'h3b09;
	B = 16'h3475;
	ans = 16'h33d7;
	#20
	A = 16'h349c;
	B = 16'h3b57;
	ans = 16'h343b;
	#20
	A = 16'hb74f;
	B = 16'hb922;
	ans = 16'h34b0;
	#20
	A = 16'h24b8;
	B = 16'hb392;
	ans = 16'h9c77;
	#20
	A = 16'h3bb7;
	B = 16'hba9d;
	ans = 16'hba61;
	#20
	A = 16'h2409;
	B = 16'hbaae;
	ans = 16'ha2bd;
	#20
	A = 16'h3832;
	B = 16'h3386;
	ans = 16'h2fe4;
	#20
	A = 16'hb782;
	B = 16'h3ad8;
	ans = 16'hb66c;
	#20
	A = 16'hb9be;
	B = 16'h3411;
	ans = 16'hb1d6;
	#20
	A = 16'hab1e;
	B = 16'h347c;
	ans = 16'ha3fb;
	#20
	A = 16'h2665;
	B = 16'hbad5;
	ans = 16'ha576;
	#20
	A = 16'h34ac;
	B = 16'h3a07;
	ans = 16'h330a;
	#20
	A = 16'h3687;
	B = 16'h2d60;
	ans = 16'h2863;
	#20
	A = 16'hb976;
	B = 16'h3aac;
	ans = 16'hb88e;
	#20
	A = 16'hbae7;
	B = 16'h337a;
	ans = 16'hb273;
	#20
	A = 16'h3b24;
	B = 16'hb695;
	ans = 16'hb5e0;
	#20
	A = 16'h3b1e;
	B = 16'hb99d;
	ans = 16'hb8fe;
	#20
	A = 16'h2db2;
	B = 16'h395b;
	ans = 16'h2ba0;
	#20
	A = 16'h3ad5;
	B = 16'h3669;
	ans = 16'h3579;
	#20
	A = 16'h3a0f;
	B = 16'h332d;
	ans = 16'h316f;
	#20
	A = 16'hb5bc;
	B = 16'hb97a;
	ans = 16'h33da;
	#20
	A = 16'h3a7b;
	B = 16'hb901;
	ans = 16'hb80e;
	#20
	A = 16'hb275;
	B = 16'h3b81;
	ans = 16'hb20e;
	#20
	A = 16'h33c3;
	B = 16'h3954;
	ans = 16'h312b;
	#20
	A = 16'hba75;
	B = 16'h340d;
	ans = 16'hb28a;
	#20
	A = 16'hbb09;
	B = 16'hba8e;
	ans = 16'h39c4;
	#20
	A = 16'h3720;
	B = 16'h3850;
	ans = 16'h33ae;
	#20
	A = 16'hada9;
	B = 16'h2e73;
	ans = 16'ha090;
	#20
	A = 16'hbab9;
	B = 16'h3624;
	ans = 16'hb529;
	#20
	A = 16'hb9f3;
	B = 16'hb523;
	ans = 16'h33a4;
	#20
	A = 16'h3b44;
	B = 16'h3afc;
	ans = 16'h3a58;
	#20
	A = 16'h3ade;
	B = 16'h3ad9;
	ans = 16'h39e1;
	#20
	A = 16'h35fb;
	B = 16'hab47;
	ans = 16'ha571;
	#20
	A = 16'h3776;
	B = 16'hb087;
	ans = 16'hac39;
	#20
	A = 16'h31ad;
	B = 16'h3a16;
	ans = 16'h3051;
	#20
	A = 16'h33d2;
	B = 16'h3473;
	ans = 16'h2c59;
	#20
	A = 16'hb777;
	B = 16'h3b99;
	ans = 16'hb717;
	#20
	A = 16'h38ab;
	B = 16'h3862;
	ans = 16'h351d;
	#20
	A = 16'h31b6;
	B = 16'h2d55;
	ans = 16'h239d;
	#20
	A = 16'hbac4;
	B = 16'h3407;
	ans = 16'hb2d0;
	#20
	A = 16'habb0;
	B = 16'h31bd;
	ans = 16'ha184;
	#20
	A = 16'h3b55;
	B = 16'h3989;
	ans = 16'h3913;
	#20
	A = 16'h267b;
	B = 16'hb6a6;
	ans = 16'ha163;
	#20
	A = 16'h2bd8;
	B = 16'ha2e5;
	ans = 16'h92c3;
	#20
	A = 16'hb1ee;
	B = 16'h3a6c;
	ans = 16'hb0c3;
	#20
	A = 16'hb4d3;
	B = 16'hbb60;
	ans = 16'h3473;
	#20
	A = 16'h2cae;
	B = 16'hbb12;
	ans = 16'hac23;
	#20
	A = 16'hb99f;
	B = 16'h349a;
	ans = 16'hb277;
	#20
	A = 16'h3a86;
	B = 16'h386f;
	ans = 16'h373b;
	#20
	A = 16'hb2a0;
	B = 16'h37ab;
	ans = 16'hae5a;
	#20
	A = 16'h395e;
	B = 16'h2f24;
	ans = 16'h2cca;
	#20
	A = 16'h341f;
	B = 16'hb2aa;
	ans = 16'haade;
	#20
	A = 16'ha63b;
	B = 16'hb549;
	ans = 16'h201e;
	#20
	A = 16'hbaa0;
	B = 16'hbb0d;
	ans = 16'h39d7;
	#20
	A = 16'h3592;
	B = 16'h2dea;
	ans = 16'h281e;
	#20
	A = 16'h3a0e;
	B = 16'hb75e;
	ans = 16'hb593;
	#20
	A = 16'h3a26;
	B = 16'h27ce;
	ans = 16'h2600;
	#20
	A = 16'h386e;
	B = 16'h30ea;
	ans = 16'h2d71;
	#20
	A = 16'h39fd;
	B = 16'hab50;
	ans = 16'ha979;
	#20
	A = 16'h365f;
	B = 16'h398d;
	ans = 16'h346c;
	#20
	A = 16'hb67a;
	B = 16'hb058;
	ans = 16'h2b08;
	#20
	A = 16'h389b;
	B = 16'hac65;
	ans = 16'ha90f;
	#20
	A = 16'h3641;
	B = 16'h3014;
	ans = 16'h2a60;
	#20
	A = 16'hba96;
	B = 16'hb3c9;
	ans = 16'h3269;
	#20
	A = 16'h3b6c;
	B = 16'h34be;
	ans = 16'h3466;
	#20
	A = 16'h3735;
	B = 16'hb85f;
	ans = 16'hb3e0;
	#20
	A = 16'hbbc2;
	B = 16'hb4a5;
	ans = 16'h3481;
	#20
	A = 16'h3aee;
	B = 16'h3b2f;
	ans = 16'h3a39;
	#20
	A = 16'h3a60;
	B = 16'hb1e5;
	ans = 16'hb0b2;
	#20
	A = 16'hb82d;
	B = 16'hba91;
	ans = 16'h36db;
	#20
	A = 16'h33b7;
	B = 16'h38e0;
	ans = 16'h30b4;
	#20
	A = 16'h36a4;
	B = 16'hbbb2;
	ans = 16'hb663;
	#20
	A = 16'h375e;
	B = 16'hb9e7;
	ans = 16'hb56f;
	#20
	A = 16'h3a8c;
	B = 16'hbb75;
	ans = 16'hba1a;
	#20
	A = 16'h3995;
	B = 16'hb95b;
	ans = 16'hb779;
	#20
	A = 16'hb17e;
	B = 16'hb38f;
	ans = 16'h2930;
	#20
	A = 16'hb983;
	B = 16'hb87e;
	ans = 16'h3631;
	#20
	A = 16'hae8d;
	B = 16'hb928;
	ans = 16'h2c39;
	#20
	A = 16'h36db;
	B = 16'hb691;
	ans = 16'hb1a1;
	#20
	A = 16'h3add;
	B = 16'hb88c;
	ans = 16'hb7cd;
	#20
	A = 16'h3aad;
	B = 16'hbb5d;
	ans = 16'hba25;
	#20
	A = 16'h3bad;
	B = 16'h34e1;
	ans = 16'h34ae;
	#20
	A = 16'h2d98;
	B = 16'h3b51;
	ans = 16'h2d1e;
	#20
	A = 16'hb670;
	B = 16'h34a3;
	ans = 16'haf76;
	#20
	A = 16'hbb81;
	B = 16'hb7ac;
	ans = 16'h3732;
	#20
	A = 16'hb92e;
	B = 16'h3b17;
	ans = 16'hb897;
	#20
	A = 16'h3af1;
	B = 16'h3afe;
	ans = 16'h3a11;
	#20
	A = 16'h3308;
	B = 16'h3834;
	ans = 16'h2f63;
	#20
	A = 16'hb29e;
	B = 16'hbad1;
	ans = 16'h31a3;
	#20
	A = 16'hb852;
	B = 16'hb40b;
	ans = 16'h305e;
	#20
	A = 16'h31ef;
	B = 16'h3987;
	ans = 16'h301a;
	#20
	A = 16'hb6f3;
	B = 16'ha64b;
	ans = 16'h2177;
	#20
	A = 16'hb881;
	B = 16'hb50f;
	ans = 16'h31b2;
	#20
	A = 16'hb723;
	B = 16'hb5da;
	ans = 16'h3138;
	#20
	A = 16'h2e01;
	B = 16'h308f;
	ans = 16'h22d8;
	#20
	A = 16'h35f0;
	B = 16'hb287;
	ans = 16'hacd8;
	#20
	A = 16'h2c1a;
	B = 16'h3a5f;
	ans = 16'h2a88;
	#20
	A = 16'h2d94;
	B = 16'hb364;
	ans = 16'ha527;
	#20
	A = 16'hb18d;
	B = 16'hba11;
	ans = 16'h3036;
	#20
	A = 16'hba9d;
	B = 16'hb97c;
	ans = 16'h3889;
	#20
	A = 16'hb875;
	B = 16'h38d0;
	ans = 16'hb55d;
	#20
	A = 16'h388a;
	B = 16'h2d68;
	ans = 16'h2a23;
	#20
	A = 16'h38bd;
	B = 16'hb422;
	ans = 16'hb0e5;
	#20
	A = 16'h340e;
	B = 16'h383f;
	ans = 16'h304e;
	#20
	A = 16'h350d;
	B = 16'hbb98;
	ans = 16'hb4cb;
	#20
	A = 16'hb19b;
	B = 16'h3b79;
	ans = 16'hb13c;
	#20
	A = 16'h36ca;
	B = 16'h3b60;
	ans = 16'h3642;
	#20
	A = 16'h2f70;
	B = 16'hbb8d;
	ans = 16'haf05;
	#20
	A = 16'ha96d;
	B = 16'h37ba;
	ans = 16'ha53e;
	#20
	A = 16'hbac4;
	B = 16'hbbb5;
	ans = 16'h3a85;
	#20
	A = 16'h3582;
	B = 16'hbbc5;
	ans = 16'hb559;
	#20
	A = 16'hb139;
	B = 16'h31b2;
	ans = 16'ha770;
	#20
	A = 16'h3724;
	B = 16'hb792;
	ans = 16'hb2c2;
	#20
	A = 16'h3156;
	B = 16'hb81e;
	ans = 16'had7e;
	#20
	A = 16'hbb37;
	B = 16'hb990;
	ans = 16'h3904;
	#20
	A = 16'hb8dd;
	B = 16'h347c;
	ans = 16'hb174;
	#20
	A = 16'hbaea;
	B = 16'h395a;
	ans = 16'hb8a0;
	#20
	A = 16'h3ab1;
	B = 16'h380a;
	ans = 16'h36c2;
	#20
	A = 16'h37cf;
	B = 16'h3b3c;
	ans = 16'h3710;
	#20
	A = 16'hba64;
	B = 16'h302b;
	ans = 16'haea9;
	#20
	A = 16'h1436;
	B = 16'hb136;
	ans = 16'h897c;
	#20
	A = 16'h3b40;
	B = 16'hb8c5;
	ans = 16'hb853;
	#20
	A = 16'hbbfe;
	B = 16'h2eb1;
	ans = 16'haeaf;
	#20
	A = 16'h3bd7;
	B = 16'hb812;
	ans = 16'hb7fa;
	#20
	A = 16'hb938;
	B = 16'hb7e2;
	ans = 16'h3524;
	#20
	A = 16'hbbb7;
	B = 16'had86;
	ans = 16'h2d54;
	#20
	A = 16'h2ebc;
	B = 16'h3969;
	ans = 16'h2c8e;
	#20
	A = 16'had2b;
	B = 16'hb75e;
	ans = 16'h28c2;
	#20
	A = 16'hb929;
	B = 16'h38d0;
	ans = 16'hb635;
	#20
	A = 16'hb716;
	B = 16'hb8f5;
	ans = 16'h3464;
	#20
	A = 16'h3bc8;
	B = 16'h39c6;
	ans = 16'h399e;
	#20
	A = 16'h3ab9;
	B = 16'h396c;
	ans = 16'h388e;
	#20
	A = 16'h3045;
	B = 16'h193e;
	ans = 16'hd98;
	#20
	A = 16'h372b;
	B = 16'h3936;
	ans = 16'h34ab;
	#20
	A = 16'h29f5;
	B = 16'hb93d;
	ans = 16'ha7cd;
	#20
	A = 16'h2aca;
	B = 16'h34a0;
	ans = 16'h23da;
	#20
	A = 16'hb125;
	B = 16'h3b7d;
	ans = 16'hb0d1;
	#20
	A = 16'hba12;
	B = 16'hbaad;
	ans = 16'h3911;
	#20
	A = 16'hb840;
	B = 16'h38fc;
	ans = 16'hb54c;
	#20
	A = 16'h2c42;
	B = 16'hbb3c;
	ans = 16'habb3;
	#20
	A = 16'h3835;
	B = 16'h28d1;
	ans = 16'h2511;
	#20
	A = 16'h36a9;
	B = 16'h3b41;
	ans = 16'h360a;
	#20
	A = 16'h3b87;
	B = 16'h3aa3;
	ans = 16'h3a3f;
	#20
	A = 16'haa2e;
	B = 16'hb59d;
	ans = 16'h2456;
	#20
	A = 16'h39e8;
	B = 16'h38a1;
	ans = 16'h36d6;
	#20
	A = 16'hb803;
	B = 16'hb6fa;
	ans = 16'h32ff;
	#20
	A = 16'hb5bd;
	B = 16'hb894;
	ans = 16'h3291;
	#20
	A = 16'hbbc8;
	B = 16'hbae2;
	ans = 16'h3ab2;
	#20
	A = 16'h3b7c;
	B = 16'hac31;
	ans = 16'habd8;
	#20
	A = 16'hb97f;
	B = 16'h281c;
	ans = 16'ha5a5;
	#20
	A = 16'h3bd6;
	B = 16'h385f;
	ans = 16'h3848;
	#20
	A = 16'h3635;
	B = 16'h32b1;
	ans = 16'h2d31;
	#20
	A = 16'h3968;
	B = 16'h3482;
	ans = 16'h3218;
	#20
	A = 16'h3b43;
	B = 16'h38f0;
	ans = 16'h387b;
	#20
	A = 16'h39e8;
	B = 16'hbb6d;
	ans = 16'hb97b;
	#20
	A = 16'hbaf2;
	B = 16'hb8d8;
	ans = 16'h3835;
	#20
	A = 16'h3a4f;
	B = 16'hafe7;
	ans = 16'hae3b;
	#20
	A = 16'h3b5b;
	B = 16'h39d3;
	ans = 16'h395b;
	#20
	A = 16'hb90a;
	B = 16'h2cd2;
	ans = 16'haa13;
	#20
	A = 16'hafa7;
	B = 16'h3566;
	ans = 16'ha92a;
	#20
	A = 16'hb774;
	B = 16'h3562;
	ans = 16'hb104;
	#20
	A = 16'ha55a;
	B = 16'ha92e;
	ans = 16'h12ee;
	#20
	A = 16'h367f;
	B = 16'h34df;
	ans = 16'h2fe9;
	#20
	A = 16'h361e;
	B = 16'hb933;
	ans = 16'hb3f3;
	#20
	A = 16'h3630;
	B = 16'hba35;
	ans = 16'hb4cd;
	#20
	A = 16'h37e7;
	B = 16'hb3c6;
	ans = 16'hafae;
	#20
	A = 16'h3555;
	B = 16'hb370;
	ans = 16'hacf5;
	#20
	A = 16'h3a6c;
	B = 16'h3437;
	ans = 16'h32c4;
	#20
	A = 16'hba6f;
	B = 16'h32e2;
	ans = 16'hb189;
	#20
	A = 16'h33bd;
	B = 16'h36f4;
	ans = 16'h2eba;
	#20
	A = 16'h3804;
	B = 16'h353a;
	ans = 16'h313f;
	#20
	A = 16'hb529;
	B = 16'h3a8c;
	ans = 16'hb439;
	#20
	A = 16'h379d;
	B = 16'h3169;
	ans = 16'h2d26;
	#20
	A = 16'h39e1;
	B = 16'hb9cd;
	ans = 16'hb843;
	#20
	A = 16'hb6ed;
	B = 16'h2d16;
	ans = 16'ha867;
	#20
	A = 16'h3b6d;
	B = 16'hb498;
	ans = 16'hb444;
	#20
	A = 16'hba91;
	B = 16'hbae8;
	ans = 16'h39ab;
	#20
	A = 16'hb902;
	B = 16'h3987;
	ans = 16'hb6ec;
	#20
	A = 16'hb015;
	B = 16'ha8bf;
	ans = 16'h1cd8;
	#20
	A = 16'h34a3;
	B = 16'hb75e;
	ans = 16'hb045;
	#20
	A = 16'h3a76;
	B = 16'hb9b1;
	ans = 16'hb899;
	#20
	A = 16'hb70c;
	B = 16'h3775;
	ans = 16'hb292;
	#20
	A = 16'h3795;
	B = 16'hb8c0;
	ans = 16'hb480;
	#20
	A = 16'h3917;
	B = 16'hbaf1;
	ans = 16'hb86b;
	#20
	A = 16'hb83f;
	B = 16'h31a4;
	ans = 16'hadfd;
	#20
	A = 16'h3aa5;
	B = 16'hb949;
	ans = 16'hb864;
	#20
	A = 16'h3b5a;
	B = 16'h38ba;
	ans = 16'h3858;
	#20
	A = 16'hb609;
	B = 16'hb030;
	ans = 16'h2a51;
	#20
	A = 16'hb0a3;
	B = 16'h3a51;
	ans = 16'haf52;
	#20
	A = 16'hba4a;
	B = 16'h363e;
	ans = 16'hb4e8;
	#20
	A = 16'hb9c9;
	B = 16'h381a;
	ans = 16'hb5ef;
	#20
	A = 16'h2c54;
	B = 16'hb7d9;
	ans = 16'ha83f;
	#20
	A = 16'hb83d;
	B = 16'h373c;
	ans = 16'hb3aa;
	#20
	A = 16'h3154;
	B = 16'h38af;
	ans = 16'h2e3d;
	#20
	A = 16'hb417;
	B = 16'h39bb;
	ans = 16'hb1dc;
	#20
	A = 16'h3714;
	B = 16'hb50a;
	ans = 16'hb075;
	#20
	A = 16'hb5d5;
	B = 16'hb603;
	ans = 16'h3062;
	#20
	A = 16'h36e3;
	B = 16'hb8ea;
	ans = 16'hb43b;
	#20
	A = 16'h3965;
	B = 16'h3906;
	ans = 16'h36c6;
	#20
	A = 16'h3324;
	B = 16'h3b29;
	ans = 16'h3264;
	#20
	A = 16'hbb6a;
	B = 16'h34d9;
	ans = 16'hb47e;
	#20
	A = 16'h25ce;
	B = 16'haf8c;
	ans = 16'h997a;
	#20
	A = 16'hab84;
	B = 16'h3514;
	ans = 16'ha4c5;
	#20
	A = 16'h367e;
	B = 16'hbaf8;
	ans = 16'hb5a8;
	#20
	A = 16'hb1b9;
	B = 16'h3a07;
	ans = 16'hb050;
	#20
	A = 16'hb454;
	B = 16'hb06b;
	ans = 16'h28c8;
	#20
	A = 16'h3646;
	B = 16'hb804;
	ans = 16'hb24c;
	#20
	A = 16'h3a91;
	B = 16'h38ea;
	ans = 16'h3809;
	#20
	A = 16'h3885;
	B = 16'h348a;
	ans = 16'h3121;
	#20
	A = 16'hb99b;
	B = 16'h3803;
	ans = 16'hb59f;
	#20
	A = 16'hb8b5;
	B = 16'h3454;
	ans = 16'hb118;
	#20
	A = 16'hb57e;
	B = 16'h3a8f;
	ans = 16'hb481;
	#20
	A = 16'h38a3;
	B = 16'hb94b;
	ans = 16'hb623;
	#20
	A = 16'hba5b;
	B = 16'h3775;
	ans = 16'hb5ed;
	#20
	A = 16'hbb0b;
	B = 16'hb99f;
	ans = 16'h38f3;
	#20
	A = 16'h35d4;
	B = 16'h3b3b;
	ans = 16'h3544;
	#20
	A = 16'h384b;
	B = 16'h1df1;
	ans = 16'h1a60;
	#20
	A = 16'h3bc0;
	B = 16'h3ae0;
	ans = 16'h3aa9;
	#20
	A = 16'h3b6e;
	B = 16'h3ba1;
	ans = 16'h3b16;
	#20
	A = 16'h3bd0;
	B = 16'h337d;
	ans = 16'h3350;
	#20
	A = 16'hb9c0;
	B = 16'h3b07;
	ans = 16'hb90d;
	#20
	A = 16'hbb8f;
	B = 16'hb886;
	ans = 16'h3846;
	#20
	A = 16'haf9a;
	B = 16'h3865;
	ans = 16'hac2d;
	#20
	A = 16'hb2f6;
	B = 16'h3aec;
	ans = 16'hb206;
	#20
	A = 16'hb762;
	B = 16'hbae3;
	ans = 16'h365b;
	#20
	A = 16'hb4f2;
	B = 16'h3bb3;
	ans = 16'hb4c2;
	#20
	A = 16'hb47e;
	B = 16'hb730;
	ans = 16'h3009;
	#20
	A = 16'h372f;
	B = 16'hb50a;
	ans = 16'hb086;
	#20
	A = 16'h381f;
	B = 16'h3ba1;
	ans = 16'h37dc;
	#20
	A = 16'h38c7;
	B = 16'hbb51;
	ans = 16'hb85e;
	#20
	A = 16'h3798;
	B = 16'h278a;
	ans = 16'h2328;
	#20
	A = 16'h3bb8;
	B = 16'hba65;
	ans = 16'hba2b;
	#20
	A = 16'ha8a1;
	B = 16'hbaee;
	ans = 16'h2802;
	#20
	A = 16'h3916;
	B = 16'hb3f8;
	ans = 16'hb111;
	#20
	A = 16'h3bed;
	B = 16'hb66e;
	ans = 16'hb65f;
	#20
	A = 16'h3be8;
	B = 16'h3b67;
	ans = 16'h3b51;
	#20
	A = 16'h35f8;
	B = 16'h3b84;
	ans = 16'h359b;
	#20
	A = 16'h3978;
	B = 16'hb2f2;
	ans = 16'hb0bf;
	#20
	A = 16'ha664;
	B = 16'h3987;
	ans = 16'ha46a;
	#20
	A = 16'h36f1;
	B = 16'hbade;
	ans = 16'hb5f5;
	#20
	A = 16'h2a65;
	B = 16'h33bd;
	ans = 16'h222f;
	#20
	A = 16'h275d;
	B = 16'h398c;
	ans = 16'h251b;
	#20
	A = 16'hb534;
	B = 16'h2acf;
	ans = 16'ha46e;
	#20
	A = 16'h3705;
	B = 16'h3ab8;
	ans = 16'h35e5;
	#20
	A = 16'hb903;
	B = 16'h317e;
	ans = 16'haee2;
	#20
	A = 16'hba99;
	B = 16'hb980;
	ans = 16'h3889;
	#20
	A = 16'hb48d;
	B = 16'hba3f;
	ans = 16'h331b;
	#20
	A = 16'hb430;
	B = 16'hb82f;
	ans = 16'h3061;
	#20
	A = 16'h3ab5;
	B = 16'hb86a;
	ans = 16'hb767;
	#20
	A = 16'hb645;
	B = 16'h3884;
	ans = 16'hb314;
	#20
	A = 16'hb03b;
	B = 16'h3593;
	ans = 16'ha9e5;
	#20
	A = 16'hbaf2;
	B = 16'hb02c;
	ans = 16'h2f3e;
	#20
	A = 16'hb89d;
	B = 16'h388b;
	ans = 16'hb53d;
	#20
	A = 16'hb7d8;
	B = 16'h3946;
	ans = 16'hb52c;
	#20
	A = 16'h2474;
	B = 16'h3bf2;
	ans = 16'h246c;
	#20
	A = 16'h3b88;
	B = 16'hb65d;
	ans = 16'hb5fe;
	#20
	A = 16'hb6f8;
	B = 16'h3a58;
	ans = 16'hb587;
	#20
	A = 16'ha99b;
	B = 16'h388b;
	ans = 16'ha65e;
	#20
	A = 16'hba2f;
	B = 16'h39dd;
	ans = 16'hb888;
	#20
	A = 16'h3b40;
	B = 16'h3906;
	ans = 16'h388d;
	#20
	A = 16'h340f;
	B = 16'hb528;
	ans = 16'had3b;
	#20
	A = 16'h2d85;
	B = 16'hbb1c;
	ans = 16'hace8;
	#20
	A = 16'h13ef;
	B = 16'h3977;
	ans = 16'h116b;
	#20
	A = 16'h29f2;
	B = 16'hb732;
	ans = 16'ha559;
	#20
	A = 16'hb69b;
	B = 16'h360e;
	ans = 16'hb100;
	#20
	A = 16'h312d;
	B = 16'h2c74;
	ans = 16'h21c3;
	#20
	A = 16'h25c3;
	B = 16'hb5f6;
	ans = 16'ha04b;
	#20
	A = 16'h3681;
	B = 16'hba54;
	ans = 16'hb525;
	#20
	A = 16'h344a;
	B = 16'h348c;
	ans = 16'h2ce0;
	#20
	A = 16'h31d2;
	B = 16'h38de;
	ans = 16'h2f15;
	#20
	A = 16'h35f5;
	B = 16'hb8ef;
	ans = 16'hb359;
	#20
	A = 16'h3a52;
	B = 16'h39ee;
	ans = 16'h38af;
	#20
	A = 16'ha185;
	B = 16'h363f;
	ans = 16'h9c4f;
	#20
	A = 16'h3945;
	B = 16'h393b;
	ans = 16'h36e4;
	#20
	A = 16'h3877;
	B = 16'h33e7;
	ans = 16'h3069;
	#20
	A = 16'h392f;
	B = 16'h3a89;
	ans = 16'h383c;
	#20
	A = 16'hb117;
	B = 16'h2c5c;
	ans = 16'ha18c;
	#20
	A = 16'h3a75;
	B = 16'h3a6a;
	ans = 16'h392d;
	#20
	A = 16'h3a85;
	B = 16'h3bb5;
	ans = 16'h3a48;
	#20
	A = 16'h362f;
	B = 16'hb562;
	ans = 16'hb029;
	#20
	A = 16'h39dc;
	B = 16'hb327;
	ans = 16'hb13d;
	#20
	A = 16'hba93;
	B = 16'haec1;
	ans = 16'h2d8d;
	#20
	A = 16'hb8e8;
	B = 16'hbbb5;
	ans = 16'h38ba;
	#20
	A = 16'h25d3;
	B = 16'hb372;
	ans = 16'h9d6c;
	#20
	A = 16'h3571;
	B = 16'h389b;
	ans = 16'h3244;
	#20
	A = 16'h36ae;
	B = 16'h39ab;
	ans = 16'h34bc;
	#20
	A = 16'h3205;
	B = 16'h3af1;
	ans = 16'h3139;
	#20
	A = 16'hb660;
	B = 16'hb208;
	ans = 16'h2cce;
	#20
	A = 16'hb622;
	B = 16'hb254;
	ans = 16'h2cda;
	#20
	A = 16'haafc;
	B = 16'hb82a;
	ans = 16'h2745;
	#20
	A = 16'hb45b;
	B = 16'hb8c8;
	ans = 16'h3135;
	#20
	A = 16'hb84a;
	B = 16'h3acf;
	ans = 16'hb74d;
	#20
	A = 16'hb92e;
	B = 16'hb6c9;
	ans = 16'h3465;
	#20
	A = 16'h347b;
	B = 16'hb659;
	ans = 16'haf1c;
	#20
	A = 16'hbb00;
	B = 16'h367c;
	ans = 16'hb5ac;
	#20
	A = 16'h2ea9;
	B = 16'hbc00;
	ans = 16'haea9;
	#20
	A = 16'h34b8;
	B = 16'h3518;
	ans = 16'h2e02;
	#20
	A = 16'h2ad6;
	B = 16'h260e;
	ans = 16'h152c;
	#20
	A = 16'h2ef6;
	B = 16'hba2a;
	ans = 16'had5d;
	#20
	A = 16'h353c;
	B = 16'hb6fb;
	ans = 16'hb091;
	#20
	A = 16'hb58b;
	B = 16'h37c4;
	ans = 16'hb161;
	#20
	A = 16'h3895;
	B = 16'ha0f9;
	ans = 16'h9db2;
	#20
	A = 16'hb4f3;
	B = 16'hb1d0;
	ans = 16'h2b31;
	#20
	A = 16'hbaef;
	B = 16'hbb16;
	ans = 16'h3a24;
	#20
	A = 16'hbbfe;
	B = 16'h3afd;
	ans = 16'hbafb;
	#20
	A = 16'h3a54;
	B = 16'hb1aa;
	ans = 16'hb07b;
	#20
	A = 16'h3902;
	B = 16'h3a70;
	ans = 16'h3808;
	#20
	A = 16'h39e5;
	B = 16'h3b43;
	ans = 16'h395a;
	#20
	A = 16'haea7;
	B = 16'h3917;
	ans = 16'hac3c;
	#20
	A = 16'h377a;
	B = 16'h3809;
	ans = 16'h338b;
	#20
	A = 16'h362a;
	B = 16'hb8f4;
	ans = 16'hb3a2;
	#20
	A = 16'h3a6c;
	B = 16'hb279;
	ans = 16'hb132;
	#20
	A = 16'h31c7;
	B = 16'h27cf;
	ans = 16'h1da4;
	#20
	A = 16'hb003;
	B = 16'hbb54;
	ans = 16'h2f59;
	#20
	A = 16'hbb8c;
	B = 16'h3471;
	ans = 16'hb431;
	#20
	A = 16'hbbe3;
	B = 16'h326b;
	ans = 16'hb254;
	#20
	A = 16'hb342;
	B = 16'h35e0;
	ans = 16'had54;
	#20
	A = 16'hb3ac;
	B = 16'h3be6;
	ans = 16'hb393;
	#20
	A = 16'hb5dd;
	B = 16'h3217;
	ans = 16'hac77;
	#20
	A = 16'hbb08;
	B = 16'ha589;
	ans = 16'h24dd;
	#20
	A = 16'h3961;
	B = 16'hb713;
	ans = 16'hb4c2;
	#20
	A = 16'hbada;
	B = 16'hb8a2;
	ans = 16'h37ef;
	#20
	A = 16'hb0c4;
	B = 16'h39df;
	ans = 16'haeff;
	#20
	A = 16'h37c7;
	B = 16'hbad5;
	ans = 16'hb6a4;
	#20
	A = 16'h3816;
	B = 16'hb86b;
	ans = 16'hb483;
	#20
	A = 16'h3061;
	B = 16'h3811;
	ans = 16'h2c74;
	#20
	A = 16'hb59a;
	B = 16'hbaef;
	ans = 16'h34db;
	#20
	A = 16'hb9b1;
	B = 16'h3a66;
	ans = 16'hb88d;
	#20
	A = 16'hbbbf;
	B = 16'h32ff;
	ans = 16'hb2c6;
	#20
	A = 16'h3939;
	B = 16'hba30;
	ans = 16'hb80a;
	#20
	A = 16'h3183;
	B = 16'h2b16;
	ans = 16'h20e2;
	#20
	A = 16'hb9c7;
	B = 16'hb46f;
	ans = 16'h3267;
	#20
	A = 16'hbbea;
	B = 16'hb921;
	ans = 16'h3913;
	#20
	A = 16'hb89b;
	B = 16'hb87c;
	ans = 16'h352a;
	#20
	A = 16'h2a92;
	B = 16'h37f4;
	ans = 16'h2688;
	#20
	A = 16'hb97d;
	B = 16'h3a90;
	ans = 16'hb881;
	#20
	A = 16'hb9cf;
	B = 16'hb887;
	ans = 16'h3693;
	#20
	A = 16'h332b;
	B = 16'h3492;
	ans = 16'h2c18;
	#20
	A = 16'h35ae;
	B = 16'hb1b7;
	ans = 16'hac0f;
	#20
	A = 16'h3abc;
	B = 16'hb16e;
	ans = 16'hb092;
	#20
	A = 16'hb2ab;
	B = 16'hb8d1;
	ans = 16'h3004;
	#20
	A = 16'hb882;
	B = 16'h3558;
	ans = 16'hb206;
	#20
	A = 16'hb448;
	B = 16'h3431;
	ans = 16'hac7c;
	#20
	A = 16'h3209;
	B = 16'ha202;
	ans = 16'h9888;
	#20
	A = 16'h39c2;
	B = 16'h3045;
	ans = 16'h2e25;
	#20
	A = 16'hba6f;
	B = 16'hb652;
	ans = 16'h3515;
	#20
	A = 16'h31d2;
	B = 16'haef1;
	ans = 16'ha50d;
	#20
	A = 16'h39c0;
	B = 16'hbadb;
	ans = 16'hb8ed;
	#20
	A = 16'hb1ce;
	B = 16'h3a02;
	ans = 16'hb05c;
	#20
	A = 16'h2da3;
	B = 16'h3a7a;
	ans = 16'h2c90;
	#20
	A = 16'hb50d;
	B = 16'h2a87;
	ans = 16'ha41f;
	#20
	A = 16'h3396;
	B = 16'had5d;
	ans = 16'ha516;
	#20
	A = 16'hb702;
	B = 16'h3683;
	ans = 16'hb1b4;
	#20
	A = 16'h3abd;
	B = 16'hb94a;
	ans = 16'hb874;
	#20
	A = 16'h3ba0;
	B = 16'h3a92;
	ans = 16'h3a43;
	#20
	A = 16'hb20f;
	B = 16'hb9d3;
	ans = 16'h3069;
	#20
	A = 16'h2f40;
	B = 16'hb80d;
	ans = 16'hab58;
	#20
	A = 16'hb192;
	B = 16'hb89e;
	ans = 16'h2e6e;
	#20
	A = 16'hb31b;
	B = 16'hbab2;
	ans = 16'h31f2;
	#20
	A = 16'h350f;
	B = 16'h3474;
	ans = 16'h2da2;
	#20
	A = 16'hae1e;
	B = 16'ha865;
	ans = 16'h1ab8;
	#20
	A = 16'hb1a3;
	B = 16'h3af2;
	ans = 16'hb0e5;
	#20
	A = 16'h39b5;
	B = 16'h3b38;
	ans = 16'h3926;
	#20
	A = 16'h34e4;
	B = 16'hb28b;
	ans = 16'hac00;
	#20
	A = 16'h3366;
	B = 16'hb68f;
	ans = 16'hae11;
	#20
	A = 16'hb5b7;
	B = 16'hb37f;
	ans = 16'h2d5b;
	#20
	A = 16'hb9d5;
	B = 16'hb6ca;
	ans = 16'h34f3;
	#20
	A = 16'h3053;
	B = 16'h3a86;
	ans = 16'h2f0d;
	#20
	A = 16'h3644;
	B = 16'h3445;
	ans = 16'h2eb0;
	#20
	A = 16'hbaf6;
	B = 16'hbb1e;
	ans = 16'h3a31;
	#20
	A = 16'hbb0a;
	B = 16'hb139;
	ans = 16'h3098;
	#20
	A = 16'h2c1d;
	B = 16'h357a;
	ans = 16'h25a2;
	#20
	A = 16'h2c66;
	B = 16'h9a0d;
	ans = 16'h8aa7;
	#20
	A = 16'hb639;
	B = 16'h3644;
	ans = 16'hb0e0;
	#20
	A = 16'h391e;
	B = 16'h3bdf;
	ans = 16'h3909;
	#20
	A = 16'hbae5;
	B = 16'hba88;
	ans = 16'h39a1;
	#20
	A = 16'h35ef;
	B = 16'h3ba1;
	ans = 16'h35a9;
	#20
	A = 16'hb871;
	B = 16'hb135;
	ans = 16'h2dc8;
	#20
	A = 16'h35e7;
	B = 16'ha9ec;
	ans = 16'ha45e;
	#20
	A = 16'h2d5d;
	B = 16'had06;
	ans = 16'h9ebc;
	#20
	A = 16'hb8e1;
	B = 16'h3a48;
	ans = 16'hb7a9;
	#20
	A = 16'h29fb;
	B = 16'h3a28;
	ans = 16'h289a;
	#20
	A = 16'h391a;
	B = 16'h391f;
	ans = 16'h3688;
	#20
	A = 16'h2c99;
	B = 16'h3b87;
	ans = 16'h2c53;
	#20
	A = 16'hb96e;
	B = 16'h39d4;
	ans = 16'hb7e9;
	#20
	A = 16'hb7b3;
	B = 16'hb7eb;
	ans = 16'h339f;
	#20
	A = 16'h3430;
	B = 16'hb5cf;
	ans = 16'hae15;
	#20
	A = 16'h2a53;
	B = 16'h3957;
	ans = 16'h2839;
	#20
	A = 16'h3ae0;
	B = 16'h3af9;
	ans = 16'h39fe;
	#20
	A = 16'h3bf4;
	B = 16'hba89;
	ans = 16'hba7f;
	#20
	A = 16'h38f4;
	B = 16'hb27a;
	ans = 16'hb003;
	#20
	A = 16'hb811;
	B = 16'h3b58;
	ans = 16'hb777;
	#20
	A = 16'hb658;
	B = 16'hafaf;
	ans = 16'h2a18;
	#20
	A = 16'h3a34;
	B = 16'hbbda;
	ans = 16'hba17;
	#20
	A = 16'hb805;
	B = 16'h329b;
	ans = 16'haea3;
	#20
	A = 16'h3699;
	B = 16'h31c7;
	ans = 16'h2cc4;
	#20
	A = 16'hb964;
	B = 16'h3baa;
	ans = 16'hb92a;
	#20
	A = 16'hbb73;
	B = 16'h3bb7;
	ans = 16'hbb2f;
	#20
	A = 16'hb562;
	B = 16'hba95;
	ans = 16'h346e;
	#20
	A = 16'h3a4f;
	B = 16'h3bd7;
	ans = 16'h3a2f;
	#20
	A = 16'h3512;
	B = 16'hb781;
	ans = 16'hb0c2;
	#20
	A = 16'hba65;
	B = 16'hbb11;
	ans = 16'h39a6;
	#20
	A = 16'h39a5;
	B = 16'h3b3f;
	ans = 16'h391d;
	#20
	A = 16'h35be;
	B = 16'hb455;
	ans = 16'hae38;
	#20
	A = 16'hbb9e;
	B = 16'h3a94;
	ans = 16'hba43;
	#20
	A = 16'h3600;
	B = 16'h283f;
	ans = 16'h225e;
	#20
	A = 16'h2dae;
	B = 16'hb12a;
	ans = 16'ha355;
	#20
	A = 16'hb8cd;
	B = 16'h3b69;
	ans = 16'hb872;
	#20
	A = 16'h36f0;
	B = 16'hb903;
	ans = 16'hb459;
	#20
	A = 16'h337b;
	B = 16'hbb2a;
	ans = 16'hb2b3;
	#20
	A = 16'hb8b1;
	B = 16'hb60c;
	ans = 16'h3318;
	#20
	A = 16'hb612;
	B = 16'h392e;
	ans = 16'hb3dc;
	#20
	A = 16'h3805;
	B = 16'h3849;
	ans = 16'h344e;
	#20
	A = 16'h3948;
	B = 16'hb300;
	ans = 16'hb09f;
	#20
	A = 16'hb89a;
	B = 16'h3bc4;
	ans = 16'hb877;
	#20
	A = 16'hb975;
	B = 16'haae4;
	ans = 16'h28b3;
	#20
	A = 16'ha924;
	B = 16'h3b0d;
	ans = 16'ha888;
	#20
	A = 16'h39ea;
	B = 16'hadb3;
	ans = 16'hac37;
	#20
	A = 16'h37e6;
	B = 16'h3146;
	ans = 16'h2d35;
	#20
	A = 16'h3246;
	B = 16'h3b9c;
	ans = 16'h31f8;
	#20
	A = 16'hb631;
	B = 16'hb8b3;
	ans = 16'h3346;
	#20
	A = 16'hba41;
	B = 16'h3a89;
	ans = 16'hb91c;
	#20
	A = 16'h2958;
	B = 16'h39d0;
	ans = 16'h27c4;
	#20
	A = 16'h3754;
	B = 16'ha9d8;
	ans = 16'ha55a;
	#20
	A = 16'hb919;
	B = 16'ha69e;
	ans = 16'h2437;
	#20
	A = 16'ha444;
	B = 16'hbb53;
	ans = 16'h23d0;
	#20
	A = 16'h3a6a;
	B = 16'h3606;
	ans = 16'h34d4;
	#20
	A = 16'h3951;
	B = 16'haa3e;
	ans = 16'ha826;
	#20
	A = 16'hb87c;
	B = 16'hb553;
	ans = 16'h31f8;
	#20
	A = 16'h3589;
	B = 16'h3a18;
	ans = 16'h3437;
	#20
	A = 16'hb709;
	B = 16'hb47f;
	ans = 16'h2fe8;
	#20
	A = 16'h3a0f;
	B = 16'hb521;
	ans = 16'hb3c5;
	#20
	A = 16'hb3e0;
	B = 16'hbab6;
	ans = 16'h329b;
	#20
	A = 16'hb6db;
	B = 16'h3b20;
	ans = 16'hb61b;
	#20
	A = 16'hac3b;
	B = 16'hb760;
	ans = 16'h27cd;
	#20
	A = 16'h33b3;
	B = 16'hb89d;
	ans = 16'hb071;
	#20
	A = 16'h2fd2;
	B = 16'h35db;
	ans = 16'h29b9;
	#20
	A = 16'hb12c;
	B = 16'h3511;
	ans = 16'haa8d;
	#20
	A = 16'ha654;
	B = 16'hb1ee;
	ans = 16'h1cb1;
	#20
	A = 16'hb3ad;
	B = 16'h3859;
	ans = 16'hb02c;
	#20
	A = 16'hb919;
	B = 16'h36ca;
	ans = 16'hb453;
	#20
	A = 16'h3b50;
	B = 16'hb64f;
	ans = 16'hb5c4;
	#20
	A = 16'h38ce;
	B = 16'hba0d;
	ans = 16'hb745;
	#20
	A = 16'hba77;
	B = 16'hba62;
	ans = 16'h3928;
	#20
	A = 16'haea6;
	B = 16'h3a34;
	ans = 16'had28;
	#20
	A = 16'hb64b;
	B = 16'hb953;
	ans = 16'h3430;
	#20
	A = 16'h3819;
	B = 16'hac03;
	ans = 16'ha81c;
	#20
	A = 16'h34dc;
	B = 16'hb52c;
	ans = 16'hae48;
	#20
	A = 16'hba8c;
	B = 16'hb532;
	ans = 16'h3440;
	#20
	A = 16'hafef;
	B = 16'h383d;
	ans = 16'hac34;
	#20
	A = 16'h39e9;
	B = 16'h3630;
	ans = 16'h3492;
	#20
	A = 16'hb282;
	B = 16'hb8e6;
	ans = 16'h2ff8;
	#20
	A = 16'h2e82;
	B = 16'hbbb9;
	ans = 16'hae48;
	#20
	A = 16'h3bed;
	B = 16'hb6e8;
	ans = 16'hb6d8;
	#20
	A = 16'h3a22;
	B = 16'h3914;
	ans = 16'h37c9;
	#20
	A = 16'hae6e;
	B = 16'h38cd;
	ans = 16'habb8;
	#20
	A = 16'hb951;
	B = 16'h3695;
	ans = 16'hb460;
	#20
	A = 16'hb022;
	B = 16'h362c;
	ans = 16'haa60;
	#20
	A = 16'h3a5b;
	B = 16'hb4c4;
	ans = 16'hb392;
	#20
	A = 16'h34ec;
	B = 16'ha244;
	ans = 16'h9bb6;
	#20
	A = 16'hbb8b;
	B = 16'hb630;
	ans = 16'h35d6;
	#20
	A = 16'hb8b0;
	B = 16'h35de;
	ans = 16'hb2e0;
	#20
	A = 16'hb072;
	B = 16'h3796;
	ans = 16'hac37;
	#20
	A = 16'hb49f;
	B = 16'h3213;
	ans = 16'hab04;
	#20
	A = 16'h3a0d;
	B = 16'hb4ae;
	ans = 16'hb314;
	#20
	A = 16'hb28c;
	B = 16'h3b89;
	ans = 16'hb22b;
	#20
	A = 16'h3b59;
	B = 16'h3082;
	ans = 16'h3024;
	#20
	A = 16'h39a4;
	B = 16'h27bd;
	ans = 16'h2575;
	#20
	A = 16'hba94;
	B = 16'h37e2;
	ans = 16'hb67b;
	#20
	A = 16'hbbbd;
	B = 16'h37c8;
	ans = 16'hb787;
	#20
	A = 16'hbbe4;
	B = 16'hb8ae;
	ans = 16'h389e;
	#20
	A = 16'h3af4;
	B = 16'h3351;
	ans = 16'h325c;
	#20
	A = 16'h2b1d;
	B = 16'h368e;
	ans = 16'h25d4;
	#20
	A = 16'hb967;
	B = 16'hbab0;
	ans = 16'h3884;
	#20
	A = 16'hb19f;
	B = 16'h3b3c;
	ans = 16'hb115;
	#20
	A = 16'h38c2;
	B = 16'hb514;
	ans = 16'hb20a;
	#20
	A = 16'h3b27;
	B = 16'h3b37;
	ans = 16'h3a73;
	#20
	A = 16'h380d;
	B = 16'h36bb;
	ans = 16'h32d1;
	#20
	A = 16'hb824;
	B = 16'h3940;
	ans = 16'hb56f;
	#20
	A = 16'h2bda;
	B = 16'h32cb;
	ans = 16'h22ab;
	#20
	A = 16'hb76f;
	B = 16'hb674;
	ans = 16'h31ff;
	#20
	A = 16'h39bc;
	B = 16'h384f;
	ans = 16'h362d;
	#20
	A = 16'h34b2;
	B = 16'hbba9;
	ans = 16'hb47f;
	#20
	A = 16'hbb41;
	B = 16'ha4b3;
	ans = 16'h2443;
	#20
	A = 16'h3b33;
	B = 16'h345e;
	ans = 16'h33dc;
	#20
	A = 16'h34ed;
	B = 16'h349b;
	ans = 16'h2dac;
	#20
	A = 16'hba55;
	B = 16'hb867;
	ans = 16'h36f8;
	#20
	A = 16'h3ac1;
	B = 16'hb5ac;
	ans = 16'hb4ca;
	#20
	A = 16'h39f8;
	B = 16'hb6df;
	ans = 16'hb520;
	#20
	A = 16'hb245;
	B = 16'h2c47;
	ans = 16'ha2b4;
	#20
	A = 16'hb443;
	B = 16'h3a0b;
	ans = 16'hb270;
	#20
	A = 16'h30ac;
	B = 16'h33b9;
	ans = 16'h2883;
	#20
	A = 16'hb885;
	B = 16'h36a5;
	ans = 16'hb382;
	#20
	A = 16'h3601;
	B = 16'h2b6c;
	ans = 16'h2592;
	#20
	A = 16'hbb47;
	B = 16'hb8fb;
	ans = 16'h3888;
	#20
	A = 16'hb5e9;
	B = 16'h383a;
	ans = 16'hb23f;
	#20
	A = 16'hbbd2;
	B = 16'hbb74;
	ans = 16'h3b49;
	#20
	A = 16'h38da;
	B = 16'h3b5b;
	ans = 16'h3876;
	#20
	A = 16'hb8f3;
	B = 16'hae8a;
	ans = 16'h2c0c;
	#20
	A = 16'hb8d5;
	B = 16'h30dd;
	ans = 16'hade0;
	#20
	A = 16'hb118;
	B = 16'hbb8a;
	ans = 16'h30cd;
	#20
	A = 16'h3b8c;
	B = 16'h3ab8;
	ans = 16'h3a57;
	#20
	A = 16'h9974;
	B = 16'h3853;
	ans = 16'h95e5;
	#20
	A = 16'h3b78;
	B = 16'h37d5;
	ans = 16'h3750;
	#20
	A = 16'hbbe6;
	B = 16'hb396;
	ans = 16'h337d;
	#20
	A = 16'h3a8e;
	B = 16'hbb9c;
	ans = 16'hba3c;
	#20
	A = 16'hbb60;
	B = 16'hb541;
	ans = 16'h34d8;
	#20
	A = 16'hb65c;
	B = 16'h263d;
	ans = 16'ha0f5;
	#20
	A = 16'h32f9;
	B = 16'h3891;
	ans = 16'h2ff6;
	#20
	A = 16'hb435;
	B = 16'hae16;
	ans = 16'h2667;
	#20
	A = 16'hba8a;
	B = 16'hbadc;
	ans = 16'h399b;
	#20
	A = 16'h3467;
	B = 16'h353d;
	ans = 16'h2dc4;
	#20
	A = 16'h380d;
	B = 16'h3b7f;
	ans = 16'h3797;
	#20
	A = 16'hb431;
	B = 16'hb73b;
	ans = 16'h2f94;
	#20
	A = 16'haeba;
	B = 16'hb3e3;
	ans = 16'h26a2;
	#20
	A = 16'h3bb6;
	B = 16'hbb68;
	ans = 16'hbb23;
	#20
	A = 16'h2d0c;
	B = 16'h2f4f;
	ans = 16'h209c;
	#20
	A = 16'h34c7;
	B = 16'hb049;
	ans = 16'ha91e;
	#20
	A = 16'hb562;
	B = 16'haa96;
	ans = 16'h246e;
	#20
	A = 16'hbb5e;
	B = 16'h2edd;
	ans = 16'hae52;
	#20
	A = 16'h3a6a;
	B = 16'h3aaf;
	ans = 16'h395c;
	#20
	A = 16'h3bb2;
	B = 16'h398d;
	ans = 16'h3957;
	#20
	A = 16'h317d;
	B = 16'hbb34;
	ans = 16'hb0f1;
	#20
	A = 16'h31e2;
	B = 16'h2a54;
	ans = 16'h20a7;
	#20
	A = 16'hb069;
	B = 16'h38ac;
	ans = 16'had27;
	#20
	A = 16'hbac9;
	B = 16'h395f;
	ans = 16'hb88e;
	#20
	A = 16'hba34;
	B = 16'hb81d;
	ans = 16'h3661;
	#20
	A = 16'h38ac;
	B = 16'h2ac7;
	ans = 16'h27ea;
	#20
	A = 16'hb17b;
	B = 16'hb6c4;
	ans = 16'h2ca3;
	#20
	A = 16'h3599;
	B = 16'h3705;
	ans = 16'h30e9;
	#20
	A = 16'h3700;
	B = 16'h36e1;
	ans = 16'h3205;
	#20
	A = 16'h39c4;
	B = 16'h37ca;
	ans = 16'h359d;
	#20
	A = 16'h3908;
	B = 16'hbafb;
	ans = 16'hb864;
	#20
	A = 16'hbbf5;
	B = 16'h3bec;
	ans = 16'hbbe1;
	#20
	A = 16'h3825;
	B = 16'h3028;
	ans = 16'h2c4e;
	#20
	A = 16'ha9ff;
	B = 16'hbbbd;
	ans = 16'h29cd;
	#20
	A = 16'h3388;
	B = 16'h3316;
	ans = 16'h2aac;
	#20
	A = 16'hba97;
	B = 16'hb700;
	ans = 16'h35c4;
	#20
	A = 16'h2ece;
	B = 16'had65;
	ans = 16'ha097;
	#20
	A = 16'hbb40;
	B = 16'hb4c7;
	ans = 16'h3454;
	#20
	A = 16'h3970;
	B = 16'h383a;
	ans = 16'h35bf;
	#20
	A = 16'h3aa9;
	B = 16'hba73;
	ans = 16'hb95e;
	#20
	A = 16'hb8ab;
	B = 16'h392d;
	ans = 16'hb60a;
	#20
	A = 16'hbbf5;
	B = 16'hb138;
	ans = 16'h3131;
	#20
	A = 16'h2d97;
	B = 16'hbbe0;
	ans = 16'had81;
	#20
	A = 16'h30b9;
	B = 16'h381a;
	ans = 16'h2cd8;
	#20
	A = 16'h2d1e;
	B = 16'hb4a2;
	ans = 16'ha5ed;
	#20
	A = 16'h3979;
	B = 16'hb18d;
	ans = 16'haf98;
	#20
	A = 16'h3b15;
	B = 16'h3944;
	ans = 16'h38a9;
	#20
	A = 16'hbb83;
	B = 16'h3a5b;
	ans = 16'hb9f8;
	#20
	A = 16'hb4bc;
	B = 16'hb050;
	ans = 16'h291b;
	#20
	A = 16'h3769;
	B = 16'hb215;
	ans = 16'hada2;
	#20
	A = 16'hb85e;
	B = 16'h373e;
	ans = 16'hb3e8;
	#20
	A = 16'haba5;
	B = 16'h982d;
	ans = 16'h7fb;
	#20
	A = 16'hb5e8;
	B = 16'h394f;
	ans = 16'hb3d7;
	#20
	A = 16'hb527;
	B = 16'h39da;
	ans = 16'hb38a;
	#20
	A = 16'h3067;
	B = 16'hba38;
	ans = 16'haed8;
	#20
	A = 16'h311c;
	B = 16'hb760;
	ans = 16'hacb6;
	#20
	A = 16'h3559;
	B = 16'h3373;
	ans = 16'h2cfb;
	#20
	A = 16'hb65e;
	B = 16'h355b;
	ans = 16'hb043;
	#20
	A = 16'h3628;
	B = 16'hb5d3;
	ans = 16'hb07b;
	#20
	A = 16'haa48;
	B = 16'h310c;
	ans = 16'h9fed;
	#20
	A = 16'hb6af;
	B = 16'h3b59;
	ans = 16'hb623;
	#20
	A = 16'hb956;
	B = 16'hb894;
	ans = 16'h361b;
	#20
	A = 16'hba17;
	B = 16'h3b38;
	ans = 16'hb97f;
	#20
	A = 16'hafd8;
	B = 16'hb6b7;
	ans = 16'h2a95;
	#20
	A = 16'hbbe4;
	B = 16'h38ce;
	ans = 16'hb8bd;
	#20
	A = 16'h38c9;
	B = 16'h3635;
	ans = 16'h336d;
	#20
	A = 16'h3895;
	B = 16'hbae7;
	ans = 16'hb7e8;
	#20
	A = 16'hb75d;
	B = 16'hb956;
	ans = 16'h34e9;
	#20
	A = 16'h2c7c;
	B = 16'h3a8e;
	ans = 16'h2b59;
	#20
	A = 16'hb43a;
	B = 16'hb273;
	ans = 16'h2ad1;
	#20
	A = 16'h340f;
	B = 16'h286b;
	ans = 16'h207c;
	#20
	A = 16'h38d2;
	B = 16'hbb20;
	ans = 16'hb84b;
	#20
	A = 16'h3672;
	B = 16'hb631;
	ans = 16'hb0fd;
	#20
	A = 16'hbb67;
	B = 16'h3490;
	ans = 16'hb439;
	#20
	A = 16'h22eb;
	B = 16'h3637;
	ans = 16'h1d60;
	#20
	A = 16'h399c;
	B = 16'hb40f;
	ans = 16'hb1b1;
	#20
	A = 16'hbabe;
	B = 16'h2e56;
	ans = 16'had57;
	#20
	A = 16'h367d;
	B = 16'hb6b9;
	ans = 16'hb174;
	#20
	A = 16'h37b2;
	B = 16'h3772;
	ans = 16'h3329;
	#20
	A = 16'h3b28;
	B = 16'h3817;
	ans = 16'h3751;
	#20
	A = 16'hb9d2;
	B = 16'hb990;
	ans = 16'h380c;
	#20
	A = 16'h3a82;
	B = 16'h3366;
	ans = 16'h3205;
	#20
	A = 16'h2cbc;
	B = 16'h3a92;
	ans = 16'h2bc7;
	#20
	A = 16'h3a2c;
	B = 16'h3a43;
	ans = 16'h38d5;
	#20
	A = 16'hab3f;
	B = 16'hb52b;
	ans = 16'h24ae;
	#20
	A = 16'h354e;
	B = 16'hb582;
	ans = 16'haf4e;
	#20
	A = 16'h346f;
	B = 16'hab38;
	ans = 16'ha400;
	#20
	A = 16'haea8;
	B = 16'hbb42;
	ans = 16'h2e0a;
	#20
	A = 16'h3935;
	B = 16'hb693;
	ans = 16'hb447;
	#20
	A = 16'hb97c;
	B = 16'h39bf;
	ans = 16'hb7e1;
	#20
	A = 16'h2fb8;
	B = 16'h33d9;
	ans = 16'h2792;
	#20
	A = 16'h38e3;
	B = 16'h32d9;
	ans = 16'h302f;
	#20
	A = 16'hbb3e;
	B = 16'h3b94;
	ans = 16'hbadc;
	#20
	A = 16'hb8cd;
	B = 16'hb8d5;
	ans = 16'h35cd;
	#20
	A = 16'h39c5;
	B = 16'h390a;
	ans = 16'h3745;
	#20
	A = 16'h3087;
	B = 16'h331d;
	ans = 16'h2807;
	#20
	A = 16'h396c;
	B = 16'h3a2a;
	ans = 16'h382d;
	#20
	A = 16'hb85b;
	B = 16'h3bfd;
	ans = 16'hb859;
	#20
	A = 16'h31f9;
	B = 16'hba9a;
	ans = 16'hb0ee;
	#20
	A = 16'h38b4;
	B = 16'hb0e6;
	ans = 16'hadc2;
	#20
	A = 16'h2964;
	B = 16'hb8b9;
	ans = 16'ha65d;
	#20
	A = 16'h2e5c;
	B = 16'h3807;
	ans = 16'h2a67;
	#20
	A = 16'h390b;
	B = 16'hb669;
	ans = 16'hb40a;
	#20
	A = 16'hb9c3;
	B = 16'h33c0;
	ans = 16'hb195;
	#20
	A = 16'h28fe;
	B = 16'haf3b;
	ans = 16'h9c83;
	#20
	A = 16'hb8d1;
	B = 16'h37ed;
	ans = 16'hb4c6;
	#20
	A = 16'h3465;
	B = 16'hb9c4;
	ans = 16'hb256;
	#20
	A = 16'h353e;
	B = 16'h3579;
	ans = 16'h2f2c;
	#20
	A = 16'hba9c;
	B = 16'hbbd4;
	ans = 16'h3a78;
	#20
	A = 16'hb78d;
	B = 16'h3b9a;
	ans = 16'hb72d;
	#20
	A = 16'hb412;
	B = 16'h3769;
	ans = 16'haf8a;
	#20
	A = 16'h3b0a;
	B = 16'hba12;
	ans = 16'hb957;
	#20
	A = 16'h2e4b;
	B = 16'h3833;
	ans = 16'h2a9b;
	#20
	A = 16'hb55f;
	B = 16'hb99c;
	ans = 16'h3388;
	#20
	A = 16'h398e;
	B = 16'h3bb4;
	ans = 16'h3959;
	#20
	A = 16'h357c;
	B = 16'h3402;
	ans = 16'h2d7f;
	#20
	A = 16'hb6b2;
	B = 16'h3487;
	ans = 16'haf94;
	#20
	A = 16'hb86e;
	B = 16'h2da0;
	ans = 16'haa3b;
	#20
	A = 16'hbb28;
	B = 16'h3456;
	ans = 16'hb3c2;
	#20
	A = 16'hb261;
	B = 16'hb89e;
	ans = 16'h2f5d;
	#20
	A = 16'h39f9;
	B = 16'h3312;
	ans = 16'h3147;
	#20
	A = 16'hb74b;
	B = 16'h28bb;
	ans = 16'ha450;
	#20
	A = 16'h39a9;
	B = 16'hbb0e;
	ans = 16'hb8fe;
	#20
	A = 16'h3b8e;
	B = 16'h39fc;
	ans = 16'h39a7;
	#20
	A = 16'hba03;
	B = 16'ha94f;
	ans = 16'h27fa;
	#20
	A = 16'h3081;
	B = 16'hb512;
	ans = 16'ha9b6;
	#20
	A = 16'hb631;
	B = 16'hbb99;
	ans = 16'h35e1;
	#20
	A = 16'h3b19;
	B = 16'h35c7;
	ans = 16'h3520;
	#20
	A = 16'h3870;
	B = 16'hb8f2;
	ans = 16'hb57c;
	#20
	A = 16'h3915;
	B = 16'h3982;
	ans = 16'h36ff;
	#20
	A = 16'h3156;
	B = 16'h3857;
	ans = 16'h2dca;
	#20
	A = 16'ha8bc;
	B = 16'hb587;
	ans = 16'h228b;
	#20
	A = 16'h3afe;
	B = 16'h3961;
	ans = 16'h38b4;
	#20
	A = 16'hb701;
	B = 16'h3b01;
	ans = 16'hb622;
	#20
	A = 16'h33e8;
	B = 16'h3b5e;
	ans = 16'h3348;
	#20
	A = 16'hba9f;
	B = 16'hb728;
	ans = 16'h35ec;
	#20
	A = 16'h3873;
	B = 16'hb01b;
	ans = 16'hac91;
	#20
	A = 16'hb971;
	B = 16'h3a56;
	ans = 16'hb84f;
	#20
	A = 16'hb831;
	B = 16'h38c1;
	ans = 16'hb4fb;
	#20
	A = 16'h33a0;
	B = 16'h31a3;
	ans = 16'h295f;
	#20
	A = 16'h38c8;
	B = 16'h3a07;
	ans = 16'h3734;
	#20
	A = 16'h3492;
	B = 16'hb93a;
	ans = 16'hb1f9;
	#20
	A = 16'haa9a;
	B = 16'h2fb0;
	ans = 16'h9e58;
	#20
	A = 16'hb987;
	B = 16'h3aca;
	ans = 16'hb8b1;
	#20
	A = 16'hb958;
	B = 16'h31f3;
	ans = 16'haff3;
	#20
	A = 16'h3b6d;
	B = 16'hb474;
	ans = 16'hb422;
	#20
	A = 16'h3754;
	B = 16'h3bc1;
	ans = 16'h371a;
	#20
	A = 16'h355c;
	B = 16'h3690;
	ans = 16'h3065;
	#20
	A = 16'h3534;
	B = 16'hb626;
	ans = 16'hafff;
	#20
	A = 16'hb286;
	B = 16'hb7ee;
	ans = 16'h2e77;
	#20
	A = 16'h3aad;
	B = 16'hb8f9;
	ans = 16'hb826;
	#20
	A = 16'h3b83;
	B = 16'h3153;
	ans = 16'h3100;
	#20
	A = 16'h3732;
	B = 16'h308d;
	ans = 16'h2c18;
	#20
	A = 16'h2aa2;
	B = 16'h39a8;
	ans = 16'h28b1;
	#20
	A = 16'h3a38;
	B = 16'hb1e0;
	ans = 16'hb091;
	#20
	A = 16'hb02a;
	B = 16'h3985;
	ans = 16'hadbf;
	#20
	A = 16'h3208;
	B = 16'h3bbb;
	ans = 16'h31d4;
	#20
	A = 16'h2f8a;
	B = 16'hb586;
	ans = 16'ha935;
	#20
	A = 16'hb8fd;
	B = 16'hb72b;
	ans = 16'h3478;
	#20
	A = 16'hbafc;
	B = 16'h3545;
	ans = 16'hb49a;
	#20
	A = 16'hba86;
	B = 16'hb85a;
	ans = 16'h3719;
	#20
	A = 16'h24b4;
	B = 16'hb7c7;
	ans = 16'ha092;
	#20
	A = 16'hb213;
	B = 16'h3979;
	ans = 16'hb028;
	#20
	A = 16'h3697;
	B = 16'h3890;
	ans = 16'h3384;
	#20
	A = 16'hb8e5;
	B = 16'hb448;
	ans = 16'h313d;
	#20
	A = 16'hb8c0;
	B = 16'hbb6d;
	ans = 16'h3869;
	#20
	A = 16'h37a5;
	B = 16'hb4db;
	ans = 16'hb0a4;
	#20
	A = 16'h348a;
	B = 16'h38f5;
	ans = 16'h31a0;
	#20
	A = 16'hb143;
	B = 16'hb52b;
	ans = 16'h2acc;
	#20
	A = 16'hbb3c;
	B = 16'h3901;
	ans = 16'hb886;
	#20
	A = 16'h2eec;
	B = 16'hbae9;
	ans = 16'hadfb;
	#20
	A = 16'h2fb4;
	B = 16'h3a8b;
	ans = 16'h2e4d;
	#20
	A = 16'h3080;
	B = 16'hb83f;
	ans = 16'hacc7;
	#20
	A = 16'hb17d;
	B = 16'h3aae;
	ans = 16'hb095;
	#20
	A = 16'hb4cc;
	B = 16'hba2c;
	ans = 16'h3367;
	#20
	A = 16'hb8b1;
	B = 16'h3161;
	ans = 16'hae4f;
	#20
	A = 16'h3a4f;
	B = 16'h3943;
	ans = 16'h3826;
	#20
	A = 16'h2cfe;
	B = 16'hba6f;
	ans = 16'hac04;
	#20
	A = 16'h36b1;
	B = 16'ha011;
	ans = 16'h9acd;
	#20
	A = 16'hb976;
	B = 16'h387e;
	ans = 16'hb622;
	#20
	A = 16'h3a96;
	B = 16'hbbc0;
	ans = 16'hba61;
	#20
	A = 16'hb534;
	B = 16'hb49a;
	ans = 16'h2dfc;
	#20
	A = 16'h3893;
	B = 16'h313e;
	ans = 16'h2dff;
	#20
	A = 16'hba98;
	B = 16'h3968;
	ans = 16'hb875;
	#20
	A = 16'hb927;
	B = 16'h2a7d;
	ans = 16'ha82e;
	#20
	A = 16'hba0f;
	B = 16'hb686;
	ans = 16'h34f1;
	#20
	A = 16'hba08;
	B = 16'h3932;
	ans = 16'hb7d5;
	#20
	A = 16'h3b41;
	B = 16'hb270;
	ans = 16'hb1d6;
	#20
	A = 16'h305b;
	B = 16'hb91b;
	ans = 16'had8f;
	#20
	A = 16'h30b9;
	B = 16'ha517;
	ans = 16'h9a02;
	#20
	A = 16'hbb86;
	B = 16'ha9e7;
	ans = 16'h298d;
	#20
	A = 16'h3443;
	B = 16'hbbd0;
	ans = 16'hb429;
	#20
	A = 16'ha4bc;
	B = 16'h3b12;
	ans = 16'ha42f;
	#20
	A = 16'hb70d;
	B = 16'hb487;
	ans = 16'h2ffb;
	#20
	A = 16'hb769;
	B = 16'hacde;
	ans = 16'h2882;
	#20
	A = 16'h339c;
	B = 16'h3272;
	ans = 16'h2a21;
	#20
	A = 16'h3a18;
	B = 16'hb54c;
	ans = 16'hb409;
	#20
	A = 16'h3964;
	B = 16'hb91f;
	ans = 16'hb6e7;
	#20
	A = 16'h2ff7;
	B = 16'h3458;
	ans = 16'h2853;
	#20
	A = 16'h284c;
	B = 16'hba9b;
	ans = 16'ha719;
	#20
	A = 16'h360d;
	B = 16'h3b89;
	ans = 16'h35b3;
	#20
	A = 16'h20c5;
	B = 16'h2f83;
	ans = 16'h147a;
	#20
	A = 16'h391f;
	B = 16'h3814;
	ans = 16'h3539;
	#20
	A = 16'hb1d8;
	B = 16'hb76a;
	ans = 16'h2d6a;
	#20
	A = 16'hb196;
	B = 16'hb8d1;
	ans = 16'h2eba;
	#20
	A = 16'hb1d4;
	B = 16'ha3c2;
	ans = 16'h19a7;
	#20
	A = 16'h2cdc;
	B = 16'h357a;
	ans = 16'h26a7;
	#20
	A = 16'h3571;
	B = 16'h3b01;
	ans = 16'h34c4;
	#20
	A = 16'hb959;
	B = 16'h38c6;
	ans = 16'hb662;
	#20
	A = 16'hba38;
	B = 16'h98f6;
	ans = 16'h17b6;
	#20
	A = 16'h386c;
	B = 16'h3827;
	ans = 16'h3497;
	#20
	A = 16'h38ff;
	B = 16'h3a60;
	ans = 16'h37f6;
	#20
	A = 16'h3ada;
	B = 16'h3a2b;
	ans = 16'h3948;
	#20
	A = 16'h38b8;
	B = 16'h3b82;
	ans = 16'h386e;
	#20
	A = 16'h2e2b;
	B = 16'hb627;
	ans = 16'ha8be;
	#20
	A = 16'h35ae;
	B = 16'hb220;
	ans = 16'hac59;
	#20
	A = 16'h3432;
	B = 16'h3923;
	ans = 16'h3163;
	#20
	A = 16'hbb52;
	B = 16'hb1a0;
	ans = 16'h3126;
	#20
	A = 16'hb666;
	B = 16'hb8b0;
	ans = 16'h3380;
	#20
	A = 16'hb72c;
	B = 16'h38d3;
	ans = 16'hb453;
	#20
	A = 16'hb924;
	B = 16'ha949;
	ans = 16'h26cb;
	#20
	A = 16'had75;
	B = 16'hb7b6;
	ans = 16'h2943;
	#20
	A = 16'h380b;
	B = 16'hb4b8;
	ans = 16'hb0c5;
	#20
	A = 16'h38a5;
	B = 16'h38e7;
	ans = 16'h35b1;
	#20
	A = 16'hba28;
	B = 16'h3a75;
	ans = 16'hb8f8;
	#20
	A = 16'h39d8;
	B = 16'hb6b2;
	ans = 16'hb4e4;
	#20
	A = 16'hb510;
	B = 16'h375f;
	ans = 16'hb0aa;
	#20
	A = 16'h3747;
	B = 16'h342f;
	ans = 16'h2f9d;
	#20
	A = 16'had41;
	B = 16'h3ad7;
	ans = 16'hac7e;
	#20
	A = 16'h2b16;
	B = 16'h374e;
	ans = 16'h2678;
	#20
	A = 16'h358c;
	B = 16'hbada;
	ans = 16'hb4c0;
	#20
	A = 16'hb743;
	B = 16'hbaa2;
	ans = 16'h3605;
	#20
	A = 16'h3adf;
	B = 16'ha8cf;
	ans = 16'ha821;
	#20
	A = 16'hbb18;
	B = 16'hb12d;
	ans = 16'h3097;
	#20
	A = 16'hb1c9;
	B = 16'hbb34;
	ans = 16'h3135;
	#20
	A = 16'h3bde;
	B = 16'h38ae;
	ans = 16'h389a;
	#20
	A = 16'haa71;
	B = 16'h3a65;
	ans = 16'ha926;
	#20
	A = 16'hb9a5;
	B = 16'hb95c;
	ans = 16'h3790;
	#20
	A = 16'ha756;
	B = 16'hb772;
	ans = 16'h22d4;
	#20
	A = 16'h34a9;
	B = 16'h2caf;
	ans = 16'h2575;
	#20
	A = 16'hba94;
	B = 16'hb52c;
	ans = 16'h3441;
	#20
	A = 16'h36bd;
	B = 16'hba5a;
	ans = 16'hb55a;
	#20
	A = 16'h31df;
	B = 16'hb155;
	ans = 16'ha7d4;
	#20
	A = 16'hb938;
	B = 16'h3ad4;
	ans = 16'hb874;
	#20
	A = 16'h384b;
	B = 16'hb82e;
	ans = 16'hb47c;
	#20
	A = 16'hb576;
	B = 16'h38d1;
	ans = 16'hb293;
	#20
	A = 16'h2aaa;
	B = 16'h2be0;
	ans = 16'h1a8f;
	#20
	A = 16'h3985;
	B = 16'h300e;
	ans = 16'h2d98;
	#20
	A = 16'hbb34;
	B = 16'h39ab;
	ans = 16'hb91a;
	#20
	A = 16'hb5ac;
	B = 16'h3a12;
	ans = 16'hb44e;
	#20
	A = 16'h3b7d;
	B = 16'h3728;
	ans = 16'h36b3;
	#20
	A = 16'h3a4e;
	B = 16'hb9fd;
	ans = 16'hb8b8;
	#20
	A = 16'hbb75;
	B = 16'h3abf;
	ans = 16'hba4a;
	#20
	A = 16'hb7ff;
	B = 16'hb99d;
	ans = 16'h359c;
	#20
	A = 16'hb514;
	B = 16'hb8b6;
	ans = 16'h31fb;
	#20
	A = 16'had5f;
	B = 16'h2cb8;
	ans = 16'h9e56;
	#20
	A = 16'hb94a;
	B = 16'hac07;
	ans = 16'h2953;
	#20
	A = 16'hb988;
	B = 16'hba0c;
	ans = 16'h382e;
	#20
	A = 16'hb0b2;
	B = 16'h3a19;
	ans = 16'haf28;
	#20
	A = 16'h3916;
	B = 16'hbb6c;
	ans = 16'hb8b8;
	#20
	A = 16'hb10b;
	B = 16'hb9c6;
	ans = 16'h2f47;
	#20
	A = 16'h36b6;
	B = 16'hb94a;
	ans = 16'hb470;
	#20
	A = 16'h364f;
	B = 16'hadc1;
	ans = 16'ha88a;
	#20
	A = 16'hb157;
	B = 16'h3697;
	ans = 16'hac66;
	#20
	A = 16'hbbf7;
	B = 16'hb811;
	ans = 16'h380c;
	#20
	A = 16'h3a4d;
	B = 16'hb870;
	ans = 16'hb6fd;
	#20
	A = 16'h2e1c;
	B = 16'h3540;
	ans = 16'h2802;
	#20
	A = 16'hb3ec;
	B = 16'h3aad;
	ans = 16'hb29c;
	#20
	A = 16'h3516;
	B = 16'h368e;
	ans = 16'h302b;
	#20
	A = 16'hb826;
	B = 16'h387c;
	ans = 16'hb4a7;
	#20
	A = 16'hbb69;
	B = 16'hb940;
	ans = 16'h38dd;
	#20
	A = 16'hb40d;
	B = 16'hbb05;
	ans = 16'h331c;
	#20
	A = 16'h38c4;
	B = 16'h2ffd;
	ans = 16'h2cc2;
	#20
	A = 16'hb750;
	B = 16'h3327;
	ans = 16'hae8a;
	#20
	A = 16'h395e;
	B = 16'h39c5;
	ans = 16'h37be;
	#20
	A = 16'h323a;
	B = 16'hb99c;
	ans = 16'hb05e;
	#20
	A = 16'h3969;
	B = 16'h2b11;
	ans = 16'h28c7;
	#20
	A = 16'h3798;
	B = 16'hb2b2;
	ans = 16'hae5b;
	#20
	A = 16'h3797;
	B = 16'hbb4a;
	ans = 16'hb6ea;
	#20
	A = 16'h2cbf;
	B = 16'h3a34;
	ans = 16'h2b5c;
	#20
	A = 16'hb97a;
	B = 16'hb852;
	ans = 16'h35ea;
	#20
	A = 16'hbbc8;
	B = 16'h3812;
	ans = 16'hb7eb;
	#20
	A = 16'h36df;
	B = 16'hb5cc;
	ans = 16'hb0fb;
	#20
	A = 16'h341d;
	B = 16'h3a67;
	ans = 16'h3295;
	#20
	A = 16'hb305;
	B = 16'hb746;
	ans = 16'h2e62;
	#20
	A = 16'hbacb;
	B = 16'hb965;
	ans = 16'h3895;
	#20
	A = 16'h3a12;
	B = 16'hbaf9;
	ans = 16'hb94a;
	#20
	A = 16'hbbd3;
	B = 16'h2f22;
	ans = 16'haefa;
	#20
	A = 16'hb195;
	B = 16'h3b75;
	ans = 16'hb134;
	#20
	A = 16'hb90f;
	B = 16'hb999;
	ans = 16'h3714;
	#20
	A = 16'hb911;
	B = 16'hb9e1;
	ans = 16'h3772;
	#20
	A = 16'h3215;
	B = 16'ha91d;
	ans = 16'h9fc6;
	#20
	A = 16'hb8c0;
	B = 16'h346a;
	ans = 16'hb13e;
	#20
	A = 16'hbb48;
	B = 16'h30f7;
	ans = 16'hb085;
	#20
	A = 16'hba84;
	B = 16'hbb1c;
	ans = 16'h39ca;
	#20
	A = 16'hb806;
	B = 16'h35b0;
	ans = 16'hb1b9;
	#20
	A = 16'ha651;
	B = 16'h2c17;
	ans = 16'h9675;
	#20
	A = 16'hbba9;
	B = 16'h351c;
	ans = 16'hb4e4;
	#20
	A = 16'h3549;
	B = 16'h3b91;
	ans = 16'h3500;
	#20
	A = 16'hb8b1;
	B = 16'hbb2e;
	ans = 16'h3836;
	#20
	A = 16'hbbfc;
	B = 16'h2e87;
	ans = 16'hae84;
	#20
	A = 16'h3794;
	B = 16'hb711;
	ans = 16'hb2b2;
	#20
	A = 16'hb470;
	B = 16'h3826;
	ans = 16'hb09a;
	#20
	A = 16'hbaa3;
	B = 16'hb813;
	ans = 16'h36c3;
	#20
	A = 16'h350a;
	B = 16'h374c;
	ans = 16'h3099;
	#20
	A = 16'h3518;
	B = 16'h395c;
	ans = 16'h32d3;
	#20
	A = 16'hb8fe;
	B = 16'h361a;
	ans = 16'hb39d;
	#20
	A = 16'h3b49;
	B = 16'h2d2a;
	ans = 16'h2cb4;
	#20
	A = 16'h3b7b;
	B = 16'hb9c9;
	ans = 16'hb969;
	#20
	A = 16'h3b57;
	B = 16'hb944;
	ans = 16'hb8d5;
	#20
	A = 16'h39a8;
	B = 16'h3132;
	ans = 16'h2f59;
	#20
	A = 16'h3526;
	B = 16'hb76e;
	ans = 16'hb0c8;
	#20
	A = 16'h283c;
	B = 16'hb03e;
	ans = 16'h9c7e;
	#20
	A = 16'hafe9;
	B = 16'ha41d;
	ans = 16'h1811;
	#20
	A = 16'hb9a6;
	B = 16'h3b70;
	ans = 16'hb940;
	#20
	A = 16'hb63f;
	B = 16'h380d;
	ans = 16'hb253;
	#20
	A = 16'h329e;
	B = 16'h2d2e;
	ans = 16'h2449;
	#20
	A = 16'hb9c0;
	B = 16'h38df;
	ans = 16'hb701;
	#20
	A = 16'h27e3;
	B = 16'had45;
	ans = 16'h9932;
	#20
	A = 16'hb0a9;
	B = 16'hb494;
	ans = 16'h2955;
	#20
	A = 16'h38ab;
	B = 16'hb955;
	ans = 16'hb639;
	#20
	A = 16'h3443;
	B = 16'h37d2;
	ans = 16'h302a;
	#20
	A = 16'hb7c1;
	B = 16'hb5a9;
	ans = 16'h317c;
	#20
	A = 16'hb47a;
	B = 16'hb86f;
	ans = 16'h30f6;
	#20
	A = 16'h37c2;
	B = 16'hb5c1;
	ans = 16'hb194;
	#20
	A = 16'hb9d2;
	B = 16'hbba8;
	ans = 16'h3992;
	#20
	A = 16'h3893;
	B = 16'h2d9d;
	ans = 16'h2a6b;
	#20
	A = 16'hb758;
	B = 16'h29b0;
	ans = 16'ha539;
	#20
	A = 16'hb9f4;
	B = 16'h2f7d;
	ans = 16'had93;
	#20
	A = 16'h3bf2;
	B = 16'hbaac;
	ans = 16'hbaa0;
	#20
	A = 16'h3a63;
	B = 16'hb866;
	ans = 16'hb706;
	#20
	A = 16'h3b59;
	B = 16'hb9b7;
	ans = 16'hb940;
	#20
	A = 16'hba07;
	B = 16'hb220;
	ans = 16'h309d;
	#20
	A = 16'hba6c;
	B = 16'hb8d3;
	ans = 16'h37bf;
	#20
	A = 16'h3af4;
	B = 16'h3be7;
	ans = 16'h3ade;
	#20
	A = 16'h3a42;
	B = 16'hb8d9;
	ans = 16'hb795;
	#20
	A = 16'hb870;
	B = 16'h3975;
	ans = 16'hb60e;
	#20
	A = 16'h3899;
	B = 16'h2cc0;
	ans = 16'h2976;
	#20
	A = 16'hb9ed;
	B = 16'hb47b;
	ans = 16'h32a3;
	#20
	A = 16'h31f9;
	B = 16'hb6fc;
	ans = 16'had37;
	#20
	A = 16'hbb0b;
	B = 16'h3b54;
	ans = 16'hba74;
	#20
	A = 16'h3a44;
	B = 16'h39cf;
	ans = 16'h388d;
	#20
	A = 16'h3a9d;
	B = 16'h3a08;
	ans = 16'h38fc;
	#20
	A = 16'hb2e7;
	B = 16'h350f;
	ans = 16'hac5d;
	#20
	A = 16'h3a0f;
	B = 16'hb738;
	ans = 16'hb578;
	#20
	A = 16'hba29;
	B = 16'hb2db;
	ans = 16'h3147;
	#20
	A = 16'hbbf8;
	B = 16'h33b4;
	ans = 16'hb3ac;
	#20
	A = 16'h3992;
	B = 16'hbba1;
	ans = 16'hb950;
	#20
	A = 16'h39a9;
	B = 16'h2fe6;
	ans = 16'h2d97;
	#20
	A = 16'h2c33;
	B = 16'hb56d;
	ans = 16'ha5b2;
	#20
	A = 16'hb5cd;
	B = 16'hb88b;
	ans = 16'h3297;
	#20
	A = 16'hb9e0;
	B = 16'h3694;
	ans = 16'hb4d5;
	#20
	A = 16'h2c42;
	B = 16'hb9e5;
	ans = 16'haa46;
	#20
	A = 16'h342a;
	B = 16'h25db;
	ans = 16'h1e18;
	#20
	A = 16'h3a25;
	B = 16'h392f;
	ans = 16'h37f6;
	#20
	A = 16'ha878;
	B = 16'hade2;
	ans = 16'h1a92;
	#20
	A = 16'h3a42;
	B = 16'hb9e4;
	ans = 16'hb89c;
	#20
	A = 16'hb61c;
	B = 16'hba6c;
	ans = 16'h34e7;
	#20
	A = 16'h32b0;
	B = 16'h3222;
	ans = 16'h2920;
	#20
	A = 16'hb3bc;
	B = 16'hb9f6;
	ans = 16'h31c3;
	#20
	A = 16'h3990;
	B = 16'hb2d1;
	ans = 16'hb0bd;
	#20
	A = 16'hb95e;
	B = 16'h371a;
	ans = 16'hb4c4;
	#20
	A = 16'hb838;
	B = 16'h3748;
	ans = 16'hb3ae;
	#20
	A = 16'h386a;
	B = 16'h32fa;
	ans = 16'h2fb3;
	#20
	A = 16'h3784;
	B = 16'hb837;
	ans = 16'hb3eb;
	#20
	A = 16'h3797;
	B = 16'h3add;
	ans = 16'h3683;
	#20
	A = 16'h3a85;
	B = 16'h395d;
	ans = 16'h385f;
	#20
	A = 16'h3b51;
	B = 16'h3459;
	ans = 16'h33f4;
	#20
	A = 16'h2976;
	B = 16'h384f;
	ans = 16'h25e2;
	#20
	A = 16'hb4cd;
	B = 16'h39d0;
	ans = 16'hb2fa;
	#20
	A = 16'h3480;
	B = 16'hb591;
	ans = 16'hae43;
	#20
	A = 16'hb5c9;
	B = 16'h39ea;
	ans = 16'hb447;
	#20
	A = 16'hb782;
	B = 16'hb21b;
	ans = 16'h2dbb;
	#20
	A = 16'hb98b;
	B = 16'hba9a;
	ans = 16'h3893;
	#20
	A = 16'h3460;
	B = 16'h2e7c;
	ans = 16'h2718;
	#20
	A = 16'hba87;
	B = 16'h367f;
	ans = 16'hb54d;
	#20
	A = 16'h387c;
	B = 16'h395f;
	ans = 16'h3606;
	#20
	A = 16'h3bb8;
	B = 16'h3326;
	ans = 16'h32e6;
	#20
	A = 16'h3b95;
	B = 16'hb14a;
	ans = 16'hb103;
	#20
	A = 16'h2b53;
	B = 16'hb958;
	ans = 16'ha8e4;
	#20
	A = 16'hb588;
	B = 16'h3ad6;
	ans = 16'hb4ba;
	#20
	A = 16'h3317;
	B = 16'h380c;
	ans = 16'h2f2c;
	#20
	A = 16'h38d1;
	B = 16'hb77e;
	ans = 16'hb483;
	#20
	A = 16'h3ad5;
	B = 16'h3379;
	ans = 16'h3262;
	#20
	A = 16'h3882;
	B = 16'h3a29;
	ans = 16'h36f1;
	#20
	A = 16'hb56e;
	B = 16'h281e;
	ans = 16'ha197;
	#20
	A = 16'h352e;
	B = 16'h2ec8;
	ans = 16'h2864;
	#20
	A = 16'hb528;
	B = 16'hb981;
	ans = 16'h3318;
	#20
	A = 16'hb90e;
	B = 16'h32b7;
	ans = 16'hb03e;
	#20
	A = 16'haa05;
	B = 16'hb4b4;
	ans = 16'h2314;
	#20
	A = 16'h3704;
	B = 16'hb9b1;
	ans = 16'hb4fe;
	#20
	A = 16'h2531;
	B = 16'hb913;
	ans = 16'ha296;
	#20
	A = 16'hb7ee;
	B = 16'hb80a;
	ans = 16'h3401;
	#20
	A = 16'hb98c;
	B = 16'h3b25;
	ans = 16'hb8f4;
	#20
	A = 16'h3609;
	B = 16'h3b7c;
	ans = 16'h35a5;
	#20
	A = 16'hb41b;
	B = 16'h3570;
	ans = 16'had95;
	#20
	A = 16'h3607;
	B = 16'hb211;
	ans = 16'hac92;
	#20
	A = 16'hb932;
	B = 16'h3759;
	ans = 16'hb4c6;
	#20
	A = 16'hba9e;
	B = 16'h3a60;
	ans = 16'hb946;
	#20
	A = 16'h390d;
	B = 16'h391a;
	ans = 16'h3671;
	#20
	A = 16'h386b;
	B = 16'hb6fb;
	ans = 16'hb3b6;
	#20
	A = 16'h380a;
	B = 16'hb9d3;
	ans = 16'hb5e2;
	#20
	A = 16'hbb83;
	B = 16'hbb4c;
	ans = 16'h3ada;
	#20
	A = 16'haada;
	B = 16'h3508;
	ans = 16'ha44f;
	#20
	A = 16'hae38;
	B = 16'hb31c;
	ans = 16'h2587;
	#20
	A = 16'hbaf9;
	B = 16'hb4ec;
	ans = 16'h344a;
	#20
	A = 16'h318a;
	B = 16'h3aab;
	ans = 16'h309e;
	#20
	A = 16'hb963;
	B = 16'hb830;
	ans = 16'h35a4;
	#20
	A = 16'h3a7c;
	B = 16'hb85f;
	ans = 16'hb716;
	#20
	A = 16'hb75a;
	B = 16'h36e6;
	ans = 16'hb257;
	#20
	A = 16'hbbe2;
	B = 16'hb84b;
	ans = 16'h383b;
	#20
	A = 16'hb524;
	B = 16'h362b;
	ans = 16'hafed;
	#20
	A = 16'h3830;
	B = 16'hba66;
	ans = 16'hb6b3;
	#20
	A = 16'h3820;
	B = 16'hb84f;
	ans = 16'hb471;
	#20
	A = 16'hba73;
	B = 16'h3935;
	ans = 16'hb833;
	#20
	A = 16'h364f;
	B = 16'h3805;
	ans = 16'h3257;
	#20
	A = 16'h38e2;
	B = 16'h2429;
	ans = 16'h2114;
	#20
	A = 16'h37d1;
	B = 16'ha45b;
	ans = 16'ha041;
	#20
	A = 16'h3b47;
	B = 16'hb563;
	ans = 16'hb4e6;
	#20
	A = 16'h39ab;
	B = 16'h3888;
	ans = 16'h366c;
	#20
	A = 16'hb6a8;
	B = 16'h350c;
	ans = 16'hb033;
	#20
	A = 16'h3bbc;
	B = 16'hb6c7;
	ans = 16'hb68d;
	#20
	A = 16'h31e2;
	B = 16'h3bd6;
	ans = 16'h31c3;
	#20
	A = 16'hbb66;
	B = 16'hb6e4;
	ans = 16'h365f;
	#20
	A = 16'h387c;
	B = 16'h383b;
	ans = 16'h34be;
	#20
	A = 16'h3871;
	B = 16'h31ec;
	ans = 16'h2e93;
	#20
	A = 16'hb79a;
	B = 16'hbb6d;
	ans = 16'h370e;
	#20
	A = 16'h3945;
	B = 16'hb660;
	ans = 16'hb433;
	#20
	A = 16'hb8cc;
	B = 16'hb40e;
	ans = 16'h30dd;
	#20
	A = 16'h2ca0;
	B = 16'hba0a;
	ans = 16'haafc;
	#20
	A = 16'h24b6;
	B = 16'hb955;
	ans = 16'ha248;
	#20
	A = 16'h396a;
	B = 16'h3916;
	ans = 16'h36e2;
	#20
	A = 16'h3b53;
	B = 16'hb899;
	ans = 16'hb836;
	#20
	A = 16'h3625;
	B = 16'h396a;
	ans = 16'h3429;
	#20
	A = 16'hb469;
	B = 16'h39db;
	ans = 16'hb275;
	#20
	A = 16'h2de1;
	B = 16'hb28a;
	ans = 16'ha4ce;
	#20
	A = 16'h3b54;
	B = 16'h3bfd;
	ans = 16'h3b51;
	#20
	A = 16'hb1cf;
	B = 16'hb992;
	ans = 16'h300b;
	#20
	A = 16'h3581;
	B = 16'hb9c0;
	ans = 16'hb3e9;
	#20
	A = 16'h3702;
	B = 16'h3925;
	ans = 16'h3482;
	#20
	A = 16'h301e;
	B = 16'hb158;
	ans = 16'ha580;
	#20
	A = 16'h338d;
	B = 16'hba5a;
	ans = 16'hb1ff;
	#20
	A = 16'h3a5c;
	B = 16'h3be8;
	ans = 16'h3a49;
	#20
	A = 16'h1499;
	B = 16'hb780;
	ans = 16'h904f;
	#20
	A = 16'h369e;
	B = 16'h36d4;
	ans = 16'h31a6;
	#20
	A = 16'h3a10;
	B = 16'ha296;
	ans = 16'ha0fe;
	#20
	A = 16'h3a56;
	B = 16'h39f2;
	ans = 16'h38b5;
	#20
	A = 16'h2d6e;
	B = 16'hac3e;
	ans = 16'h9dc2;
	#20
	A = 16'hba34;
	B = 16'hb8d3;
	ans = 16'h377b;
	#20
	A = 16'hb494;
	B = 16'hb418;
	ans = 16'h2caf;
	#20
	A = 16'hb556;
	B = 16'hb835;
	ans = 16'h319d;
	#20
	A = 16'hb402;
	B = 16'h37b6;
	ans = 16'hafba;
	#20
	A = 16'hbbbd;
	B = 16'hbb6f;
	ans = 16'h3b31;
	#20
	A = 16'h3861;
	B = 16'h3604;
	ans = 16'h3296;
	#20
	A = 16'ha8e3;
	B = 16'h3a16;
	ans = 16'ha76f;
	#20
	A = 16'hbb23;
	B = 16'h397c;
	ans = 16'hb8e4;
	#20
	A = 16'hb3ab;
	B = 16'hbbb0;
	ans = 16'h335e;
	#20
	A = 16'h396c;
	B = 16'hb029;
	ans = 16'hada4;
	#20
	A = 16'h2c3e;
	B = 16'h325f;
	ans = 16'h22c2;
	#20
	A = 16'h3367;
	B = 16'h29bf;
	ans = 16'h2151;
	#20
	A = 16'h3483;
	B = 16'hb97b;
	ans = 16'hb22e;
	#20
	A = 16'hb9f4;
	B = 16'h2c28;
	ans = 16'haa30;
	#20
	A = 16'h2d0e;
	B = 16'h3237;
	ans = 16'h23db;
	#20
	A = 16'h3815;
	B = 16'h3508;
	ans = 16'h3122;
	#20
	A = 16'hbaf2;
	B = 16'h3977;
	ans = 16'hb8bf;
	#20
	A = 16'h369f;
	B = 16'hba2c;
	ans = 16'hb51c;
	#20
	A = 16'h3a5c;
	B = 16'h3b4c;
	ans = 16'h39cd;
	#20
	A = 16'hb3c7;
	B = 16'hbb82;
	ans = 16'h334d;
	#20
	A = 16'hb300;
	B = 16'hb667;
	ans = 16'h2d9a;
	#20
	A = 16'hb92e;
	B = 16'h2cbd;
	ans = 16'haa23;
	#20
	A = 16'hb894;
	B = 16'h3b31;
	ans = 16'hb81e;
	#20
	A = 16'h396d;
	B = 16'hb79e;
	ans = 16'hb52b;
	#20
	A = 16'hb77c;
	B = 16'h3b1d;
	ans = 16'hb6a8;
	#20
	A = 16'h2dc8;
	B = 16'h3435;
	ans = 16'h2615;
	#20
	A = 16'hbbdd;
	B = 16'h33ea;
	ans = 16'hb3c7;
	#20
	A = 16'hbb38;
	B = 16'hba63;
	ans = 16'h39c3;
	#20
	A = 16'h34c0;
	B = 16'h3536;
	ans = 16'h2e30;
	#20
	A = 16'h32d1;
	B = 16'hb2a5;
	ans = 16'ha9a9;
	#20
	A = 16'hba9e;
	B = 16'hb9f8;
	ans = 16'h38f0;
	#20
	A = 16'hb952;
	B = 16'hb711;
	ans = 16'h34b3;
	#20
	A = 16'h3121;
	B = 16'h3b0a;
	ans = 16'h3083;
	#20
	A = 16'h3b0f;
	B = 16'h309e;
	ans = 16'h3013;
	#20
	A = 16'hb679;
	B = 16'hb616;
	ans = 16'h30ed;
	#20
	A = 16'h3464;
	B = 16'h3889;
	ans = 16'h30fa;
	#20
	A = 16'hba32;
	B = 16'h3827;
	ans = 16'hb66e;
	#20
	A = 16'hbaf9;
	B = 16'hb4f9;
	ans = 16'h3456;
	#20
	A = 16'hbbef;
	B = 16'hb52a;
	ans = 16'h351f;
	#20
	A = 16'h3b69;
	B = 16'hb34b;
	ans = 16'hb2c1;
	#20
	A = 16'hb2a5;
	B = 16'h36b4;
	ans = 16'had91;
	#20
	A = 16'hb148;
	B = 16'h3bcc;
	ans = 16'hb126;
	#20
	A = 16'haf7f;
	B = 16'h3826;
	ans = 16'habc6;
	#20
	A = 16'h39d0;
	B = 16'h32ef;
	ans = 16'h310a;
	#20
	A = 16'h3ba8;
	B = 16'hb263;
	ans = 16'hb21d;
	#20
	A = 16'h3432;
	B = 16'h3afd;
	ans = 16'h3354;
	#20
	A = 16'hb7b4;
	B = 16'h3a5e;
	ans = 16'hb622;
	#20
	A = 16'h3005;
	B = 16'h3af0;
	ans = 16'h2ef9;
	#20
	A = 16'hb2c6;
	B = 16'h3915;
	ans = 16'hb04e;
	#20
	A = 16'hbb38;
	B = 16'h380b;
	ans = 16'hb74c;
	#20
	A = 16'hba81;
	B = 16'hb93d;
	ans = 16'h3842;
	#20
	A = 16'h363d;
	B = 16'h3117;
	ans = 16'h2bf0;
	#20
	A = 16'hbb62;
	B = 16'hba95;
	ans = 16'h3a13;
	#20
	A = 16'hace2;
	B = 16'hb8a8;
	ans = 16'h29af;
	#20
	A = 16'h38eb;
	B = 16'hba3b;
	ans = 16'hb7a9;
	#20
	A = 16'h3919;
	B = 16'h3686;
	ans = 16'h3428;
	#20
	A = 16'hb840;
	B = 16'h384c;
	ans = 16'hb491;
	#20
	A = 16'h395e;
	B = 16'h3911;
	ans = 16'h36cc;
	#20
	A = 16'hb8dd;
	B = 16'h2ee1;
	ans = 16'hac2f;
	#20
	A = 16'hb260;
	B = 16'h395c;
	ans = 16'hb045;
	#20
	A = 16'h37e1;
	B = 16'h3bfb;
	ans = 16'h37dc;
	#20
	A = 16'h3b59;
	B = 16'hb79d;
	ans = 16'hb6fe;
	#20
	A = 16'hb018;
	B = 16'hb57e;
	ans = 16'h299f;
	#20
	A = 16'hb626;
	B = 16'hbb9c;
	ans = 16'h35d9;
	#20
	A = 16'hb921;
	B = 16'h3b87;
	ans = 16'hb8d3;
	#20
	A = 16'h3bf4;
	B = 16'h9caa;
	ans = 16'h9ca3;
	#20
	A = 16'hb8a4;
	B = 16'hbb59;
	ans = 16'h3843;
	#20
	A = 16'hb9aa;
	B = 16'hb362;
	ans = 16'h313a;
	#20
	A = 16'hb23a;
	B = 16'hbaf4;
	ans = 16'h3169;
	#20
	A = 16'hba9c;
	B = 16'hb105;
	ans = 16'h3026;
	#20
	A = 16'h37e4;
	B = 16'h3505;
	ans = 16'h30f3;
	#20
	A = 16'hb349;
	B = 16'hb329;
	ans = 16'h2a85;
	#20
	A = 16'hb5f4;
	B = 16'h39fe;
	ans = 16'hb476;
	#20
	A = 16'h39dc;
	B = 16'hb5ee;
	ans = 16'hb458;
	#20
	A = 16'hba1b;
	B = 16'h3982;
	ans = 16'hb834;
	#20
	A = 16'hb831;
	B = 16'hb802;
	ans = 16'h3433;
	#20
	A = 16'hb806;
	B = 16'h34f1;
	ans = 16'hb0f8;
	#20
	A = 16'h3416;
	B = 16'hb841;
	ans = 16'hb058;
	#20
	A = 16'h37d3;
	B = 16'hae1e;
	ans = 16'ha9fc;
	#20
	A = 16'hb57d;
	B = 16'h3887;
	ans = 16'hb236;
	#20
	A = 16'h2dd4;
	B = 16'h3a6a;
	ans = 16'h2cac;
	#20
	A = 16'h3af9;
	B = 16'h329e;
	ans = 16'h31c4;
	#20
	A = 16'hb52c;
	B = 16'h334a;
	ans = 16'hacb6;
	#20
	A = 16'h3777;
	B = 16'hbab1;
	ans = 16'hb63e;
	#20
	A = 16'h2d30;
	B = 16'h3a8c;
	ans = 16'h2c3f;
	#20
	A = 16'h2c13;
	B = 16'hbac1;
	ans = 16'haae1;
	#20
	A = 16'h3ba0;
	B = 16'h3a6d;
	ans = 16'h3a20;
	#20
	A = 16'h39f8;
	B = 16'hb6a4;
	ans = 16'hb4f4;
	#20
	A = 16'h299e;
	B = 16'h3ba2;
	ans = 16'h295c;
	#20
	A = 16'ha538;
	B = 16'hb913;
	ans = 16'h229f;
	#20
	A = 16'h39a5;
	B = 16'h32d6;
	ans = 16'h30d3;
	#20
	A = 16'h3101;
	B = 16'h3b86;
	ans = 16'h30b5;
	#20
	A = 16'ha609;
	B = 16'hb9e2;
	ans = 16'h2470;
	#20
	A = 16'h342d;
	B = 16'h2d2c;
	ans = 16'h2566;
	#20
	A = 16'h3bce;
	B = 16'hb84d;
	ans = 16'hb832;
	#20
	A = 16'hb907;
	B = 16'h3506;
	ans = 16'hb250;
	#20
	A = 16'hb835;
	B = 16'hb72a;
	ans = 16'h3389;
	#20
	A = 16'h3bd0;
	B = 16'h35b7;
	ans = 16'h3595;
	#20
	A = 16'h2984;
	B = 16'hb0b7;
	ans = 16'h9e80;
	#20
	A = 16'hb560;
	B = 16'hb546;
	ans = 16'h2f16;
	#20
	A = 16'hb552;
	B = 16'h2e19;
	ans = 16'ha80e;
	#20
	A = 16'h3583;
	B = 16'ha67a;
	ans = 16'ha076;
	#20
	A = 16'h3bec;
	B = 16'hb1fb;
	ans = 16'hb1ec;
	#20
	A = 16'hb762;
	B = 16'hb48e;
	ans = 16'h3034;
	#20
	A = 16'hb94c;
	B = 16'hbbc9;
	ans = 16'h3928;
	#20
	A = 16'hb9c2;
	B = 16'h3870;
	ans = 16'hb663;
	#20
	A = 16'hb646;
	B = 16'hb61b;
	ans = 16'h30ca;
	#20
	A = 16'hbaeb;
	B = 16'hb9f6;
	ans = 16'h3928;
	#20
	A = 16'h2d43;
	B = 16'h3a34;
	ans = 16'h2c14;
	#20
	A = 16'haf78;
	B = 16'hacc3;
	ans = 16'h2072;
	#20
	A = 16'hb0a1;
	B = 16'h3132;
	ans = 16'ha603;
	#20
	A = 16'hba25;
	B = 16'hb9ce;
	ans = 16'h3875;
	#20
	A = 16'h38eb;
	B = 16'hb978;
	ans = 16'hb6b9;
	#20
	A = 16'h3b42;
	B = 16'h2e33;
	ans = 16'h2da0;
	#20
	A = 16'h370c;
	B = 16'hb96a;
	ans = 16'hb4c5;
	#20
	A = 16'h3a82;
	B = 16'hbbd3;
	ans = 16'hba5d;
	#20
	A = 16'h39c4;
	B = 16'hb762;
	ans = 16'hb552;
	#20
	A = 16'hb9de;
	B = 16'hb445;
	ans = 16'h3243;
	#20
	A = 16'h384b;
	B = 16'hb970;
	ans = 16'hb5d6;
	#20
	A = 16'hba3b;
	B = 16'hb360;
	ans = 16'h31be;
	#20
	A = 16'h3629;
	B = 16'h3a5a;
	ans = 16'h34e4;
	#20
	A = 16'h32c2;
	B = 16'hb6aa;
	ans = 16'hada1;
	#20
	A = 16'h34ba;
	B = 16'h2e28;
	ans = 16'h2746;
	#20
	A = 16'hb8f3;
	B = 16'hb913;
	ans = 16'h3647;
	#20
	A = 16'hb95d;
	B = 16'h3845;
	ans = 16'hb5ba;
	#20
	A = 16'h38a1;
	B = 16'h255a;
	ans = 16'h2231;
	#20
	A = 16'h35b6;
	B = 16'h3b49;
	ans = 16'h3533;
	#20
	A = 16'h3809;
	B = 16'hb376;
	ans = 16'haf87;
	#20
	A = 16'hbac1;
	B = 16'hb6dd;
	ans = 16'h35cb;
	#20
	A = 16'h2fb0;
	B = 16'hbb6f;
	ans = 16'haf25;
	#20
	A = 16'h383c;
	B = 16'h3bbf;
	ans = 16'h381a;
	#20
	A = 16'hb933;
	B = 16'hb4b9;
	ans = 16'h3223;
	#20
	A = 16'hb209;
	B = 16'h399f;
	ans = 16'hb03e;
	#20
	A = 16'h39e8;
	B = 16'hb20a;
	ans = 16'hb075;
	#20
	A = 16'hb6f9;
	B = 16'hb8f9;
	ans = 16'h3456;
	#20
	A = 16'ha8a6;
	B = 16'hb38e;
	ans = 16'h2064;
	#20
	A = 16'h36db;
	B = 16'hba4d;
	ans = 16'hb566;
	#20
	A = 16'h3be0;
	B = 16'h37cf;
	ans = 16'h37b0;
	#20
	A = 16'hb6c0;
	B = 16'h38e0;
	ans = 16'hb41d;
	#20
	A = 16'h3ade;
	B = 16'h38d0;
	ans = 16'h3822;
	#20
	A = 16'h38cc;
	B = 16'hb49b;
	ans = 16'hb186;
	#20
	A = 16'h3a36;
	B = 16'hb873;
	ans = 16'hb6e9;
	#20
	A = 16'h3857;
	B = 16'hb64f;
	ans = 16'hb2d8;
	#20
	A = 16'hb5a4;
	B = 16'h2cfe;
	ans = 16'ha70a;
	#20
	A = 16'h397d;
	B = 16'h368f;
	ans = 16'h3480;
	#20
	A = 16'hb8dd;
	B = 16'hb66f;
	ans = 16'h33d2;
	#20
	A = 16'h3a93;
	B = 16'hb4ab;
	ans = 16'hb3ac;
	#20
	A = 16'ha925;
	B = 16'hb6b3;
	ans = 16'h244f;
	#20
	A = 16'h2ded;
	B = 16'hb404;
	ans = 16'ha5f3;
	#20
	A = 16'h3764;
	B = 16'h3a8e;
	ans = 16'h360e;
	#20
	A = 16'h3aa1;
	B = 16'hb808;
	ans = 16'hb6ae;
	#20
	A = 16'hb44c;
	B = 16'h3b0f;
	ans = 16'hb395;
	#20
	A = 16'h2aa3;
	B = 16'hb9bd;
	ans = 16'ha8c3;
	#20
	A = 16'hb6a1;
	B = 16'h3b7f;
	ans = 16'hb636;
	#20
	A = 16'hb8b2;
	B = 16'h3922;
	ans = 16'hb606;
	#20
	A = 16'hb8f2;
	B = 16'h33bb;
	ans = 16'hb0c7;
	#20
	A = 16'hb4ce;
	B = 16'hb119;
	ans = 16'h2a20;
	#20
	A = 16'h2f5f;
	B = 16'h3ac9;
	ans = 16'h2e40;
	#20
	A = 16'h37f1;
	B = 16'hb187;
	ans = 16'had7d;
	#20
	A = 16'ha8d5;
	B = 16'h305b;
	ans = 16'h9d43;
	#20
	A = 16'h39e6;
	B = 16'h3b19;
	ans = 16'h393c;
	#20
	A = 16'ha8db;
	B = 16'hbbb1;
	ans = 16'h28ab;
	#20
	A = 16'haf79;
	B = 16'hba3c;
	ans = 16'h2dd3;
	#20
	A = 16'h3bc1;
	B = 16'hb193;
	ans = 16'hb167;
	#20
	A = 16'h2e8b;
	B = 16'h3806;
	ans = 16'h2a95;
	#20
	A = 16'h38b6;
	B = 16'h342c;
	ans = 16'h30ea;
	#20
	A = 16'hba9b;
	B = 16'h3afa;
	ans = 16'hb9c3;
	#20
	A = 16'h35ed;
	B = 16'hb4a1;
	ans = 16'haedc;
	#20
	A = 16'hb041;
	B = 16'h2fe8;
	ans = 16'ha434;
	#20
	A = 16'h393f;
	B = 16'h324a;
	ans = 16'h3020;
	#20
	A = 16'hb988;
	B = 16'hb9bd;
	ans = 16'h37ef;
	#20
	A = 16'h35c3;
	B = 16'h3bfb;
	ans = 16'h35bf;
	#20
	A = 16'hafcf;
	B = 16'h362f;
	ans = 16'haa09;
	#20
	A = 16'hb8b3;
	B = 16'hb6b2;
	ans = 16'h33de;
	#20
	A = 16'h33dc;
	B = 16'h2c80;
	ans = 16'h246c;
	#20
	A = 16'hb914;
	B = 16'hbb9b;
	ans = 16'h38d4;
	#20
	A = 16'hbad3;
	B = 16'h3863;
	ans = 16'hb77c;
	#20
	A = 16'h2c5a;
	B = 16'h3066;
	ans = 16'h20c9;
	#20
	A = 16'h3497;
	B = 16'hb920;
	ans = 16'hb1e1;
	#20
	A = 16'hbb0a;
	B = 16'hb701;
	ans = 16'h362a;
	#20
	A = 16'h3909;
	B = 16'hb66a;
	ans = 16'hb409;
	#20
	A = 16'h3b53;
	B = 16'hb8c0;
	ans = 16'hb859;
	#20
	A = 16'h2f33;
	B = 16'h2ab5;
	ans = 16'h1e09;
	#20
	A = 16'haee3;
	B = 16'h3092;
	ans = 16'ha3de;
	#20
	A = 16'hb6b2;
	B = 16'h3b2b;
	ans = 16'hb600;
	#20
	A = 16'h383c;
	B = 16'h3b55;
	ans = 16'h37c3;
	#20
	A = 16'h3837;
	B = 16'hb9b3;
	ans = 16'hb601;
	#20
	A = 16'h3bcb;
	B = 16'h38f6;
	ans = 16'h38d5;
	#20
	A = 16'h3bbd;
	B = 16'h3a39;
	ans = 16'h3a05;
	#20
	A = 16'h375b;
	B = 16'ha8cc;
	ans = 16'ha469;
	#20
	A = 16'ha5da;
	B = 16'hb8ab;
	ans = 16'h22d4;
	#20
	A = 16'hb9be;
	B = 16'hb812;
	ans = 16'h35d8;
	#20
	A = 16'h3bae;
	B = 16'hba6e;
	ans = 16'hba2c;
	#20
	A = 16'h3a55;
	B = 16'h3a20;
	ans = 16'h38d9;
	#20
	A = 16'h384c;
	B = 16'h3431;
	ans = 16'h3081;
	#20
	A = 16'h374a;
	B = 16'hb43c;
	ans = 16'hafb7;
	#20
	A = 16'h2a69;
	B = 16'hb628;
	ans = 16'ha4ef;
	#20
	A = 16'hb562;
	B = 16'hb6d5;
	ans = 16'h3099;
	#20
	A = 16'hb768;
	B = 16'hb6f0;
	ans = 16'h326c;
	#20
	A = 16'hb2ad;
	B = 16'h38de;
	ans = 16'hb010;
	#20
	A = 16'h3957;
	B = 16'h39ca;
	ans = 16'h37ba;
	#20
	A = 16'hbb9d;
	B = 16'hbacc;
	ans = 16'h3a78;
	#20
	A = 16'h2f33;
	B = 16'hb8a5;
	ans = 16'hac2e;
	#20
	A = 16'h3792;
	B = 16'hb7c3;
	ans = 16'hb358;
	#20
	A = 16'h354d;
	B = 16'hb572;
	ans = 16'haf37;
	#20
	A = 16'haab9;
	B = 16'h3bd1;
	ans = 16'haa92;
	#20
	A = 16'hb8d5;
	B = 16'h287d;
	ans = 16'ha56c;
	#20
	A = 16'hb977;
	B = 16'h3343;
	ans = 16'hb0f6;
	#20
	A = 16'hbac3;
	B = 16'hb6f6;
	ans = 16'h35e2;
	#20
	A = 16'hb19e;
	B = 16'ha158;
	ans = 16'h1781;
	#20
	A = 16'hb987;
	B = 16'hb191;
	ans = 16'h2fb1;
	#20
	A = 16'hb429;
	B = 16'hb387;
	ans = 16'h2bd4;
	#20
	A = 16'h34d7;
	B = 16'h36c3;
	ans = 16'h3017;
	#20
	A = 16'h393f;
	B = 16'h387b;
	ans = 16'h35e0;
	#20
	A = 16'h39c6;
	B = 16'hb037;
	ans = 16'hae15;
	#20
	A = 16'hba91;
	B = 16'hb828;
	ans = 16'h36d3;
	#20
	A = 16'h3a11;
	B = 16'h36bd;
	ans = 16'h351c;
	#20
	A = 16'h350d;
	B = 16'h38aa;
	ans = 16'h31e4;
	#20
	A = 16'hb938;
	B = 16'h39b5;
	ans = 16'hb772;
	#20
	A = 16'hbb41;
	B = 16'hb76e;
	ans = 16'h36bd;
	#20
	A = 16'hb4dd;
	B = 16'hb9d6;
	ans = 16'h3318;
	#20
	A = 16'hba9a;
	B = 16'hab55;
	ans = 16'h2a0d;
	#20
	A = 16'h3b82;
	B = 16'h29b2;
	ans = 16'h2958;
	#20
	A = 16'h3a89;
	B = 16'h1a6c;
	ans = 16'h193f;
	#20
	A = 16'ha8f5;
	B = 16'hbb3e;
	ans = 16'h287d;
	#20
	A = 16'hae23;
	B = 16'hb85e;
	ans = 16'h2ab3;
	#20
	A = 16'h3423;
	B = 16'hb6af;
	ans = 16'haee9;
	#20
	A = 16'hbbea;
	B = 16'h3bd1;
	ans = 16'hbbbc;
	#20
	A = 16'ha851;
	B = 16'h3a72;
	ans = 16'ha6f5;
	#20
	A = 16'hbac0;
	B = 16'hbbbb;
	ans = 16'h3a86;
	#20
	A = 16'hb389;
	B = 16'h348e;
	ans = 16'hac4a;
	#20
	A = 16'h3a56;
	B = 16'h3686;
	ans = 16'h352b;
	#20
	A = 16'h3ba9;
	B = 16'hb429;
	ans = 16'hb3f8;
	#20
	A = 16'h37e0;
	B = 16'h3849;
	ans = 16'h3438;
	#20
	A = 16'h3b9f;
	B = 16'hb076;
	ans = 16'hb040;
	#20
	A = 16'ha84d;
	B = 16'h2a44;
	ans = 16'h96bd;
	#20
	A = 16'hb259;
	B = 16'hb084;
	ans = 16'h272a;
	#20
	A = 16'hbb31;
	B = 16'h3912;
	ans = 16'hb88f;
	#20
	A = 16'h30e5;
	B = 16'h35db;
	ans = 16'h2b2a;
	#20
	A = 16'h37b2;
	B = 16'hb077;
	ans = 16'hac4b;
	#20
	A = 16'hb301;
	B = 16'h38aa;
	ans = 16'hb015;
	#20
	A = 16'hbb1e;
	B = 16'h3b70;
	ans = 16'hba9e;
	#20
	A = 16'hb125;
	B = 16'h38b8;
	ans = 16'hae12;
	#20
	A = 16'h3563;
	B = 16'h30d4;
	ans = 16'h2a80;
	#20
	A = 16'hb16d;
	B = 16'hb1dd;
	ans = 16'h27f4;
	#20
	A = 16'hb746;
	B = 16'hb62b;
	ans = 16'h319c;
	#20
	A = 16'hb02f;
	B = 16'hb94c;
	ans = 16'h2d8a;
	#20
	A = 16'hb744;
	B = 16'h3beb;
	ans = 16'hb731;
	#20
	A = 16'hac50;
	B = 16'h3641;
	ans = 16'ha6be;
	#20
	A = 16'hb503;
	B = 16'h3449;
	ans = 16'had5e;
	#20
	A = 16'h356d;
	B = 16'hb79d;
	ans = 16'hb12a;
	#20
	A = 16'h2b97;
	B = 16'hb9b4;
	ans = 16'ha969;
	#20
	A = 16'hb60c;
	B = 16'hb15a;
	ans = 16'h2c0c;
	#20
	A = 16'h3b48;
	B = 16'hb97d;
	ans = 16'hb8ff;
	#20
	A = 16'h3839;
	B = 16'h3908;
	ans = 16'h3550;
	#20
	A = 16'hb8d9;
	B = 16'h3b98;
	ans = 16'hb89a;
	#20
	A = 16'had80;
	B = 16'hb3b8;
	ans = 16'h254e;
	#20
	A = 16'hb79a;
	B = 16'hbbf5;
	ans = 16'h3790;
	#20
	A = 16'h3bfb;
	B = 16'hba93;
	ans = 16'hba8f;
	#20
	A = 16'had9c;
	B = 16'h1467;
	ans = 16'h862c;
	#20
	A = 16'hba8e;
	B = 16'h3ba5;
	ans = 16'hba43;
	#20
	A = 16'h3b7e;
	B = 16'h33c7;
	ans = 16'h3349;
	#20
	A = 16'h39f8;
	B = 16'hb827;
	ans = 16'hb632;
	#20
	A = 16'ha9b2;
	B = 16'hb9c0;
	ans = 16'h2818;
	#20
	A = 16'h372d;
	B = 16'hb62d;
	ans = 16'hb18a;
	#20
	A = 16'h3bce;
	B = 16'h3a7a;
	ans = 16'h3a52;
	#20
	A = 16'h3b91;
	B = 16'h388c;
	ans = 16'h384d;
	#20
	A = 16'hb6bd;
	B = 16'h34ae;
	ans = 16'hafe2;
	#20
	A = 16'hb9c8;
	B = 16'h3323;
	ans = 16'hb128;
	#20
	A = 16'hba25;
	B = 16'h375a;
	ans = 16'hb5a6;
	#20
	A = 16'hb262;
	B = 16'hb9e0;
	ans = 16'h30b0;
	#20
	A = 16'h35d2;
	B = 16'hb042;
	ans = 16'haa32;
	#20
	A = 16'hae09;
	B = 16'hba99;
	ans = 16'h2cfa;
	#20
	A = 16'h2892;
	B = 16'hba82;
	ans = 16'ha770;
	#20
	A = 16'h3a1f;
	B = 16'hb9d7;
	ans = 16'hb878;
	#20
	A = 16'h3890;
	B = 16'h2ba2;
	ans = 16'h285a;
	#20
	A = 16'h3b32;
	B = 16'hb897;
	ans = 16'hb821;
	#20
	A = 16'hbb6b;
	B = 16'h394d;
	ans = 16'hb8ea;
	#20
	A = 16'h3888;
	B = 16'h3861;
	ans = 16'h34f6;
	#20
	A = 16'hbbe0;
	B = 16'h3bcb;
	ans = 16'hbbac;
	#20
	A = 16'h3798;
	B = 16'haaa5;
	ans = 16'ha64f;
	#20
	A = 16'hb798;
	B = 16'hb9fe;
	ans = 16'h35b0;
	#20
	A = 16'hb503;
	B = 16'hb81c;
	ans = 16'h3126;
	#20
	A = 16'hbaf1;
	B = 16'hb605;
	ans = 16'h3539;
	#20
	A = 16'hada7;
	B = 16'h3077;
	ans = 16'ha24f;
	#20
	A = 16'h3b2f;
	B = 16'h3659;
	ans = 16'h35b3;
	#20
	A = 16'hb30c;
	B = 16'had9a;
	ans = 16'h24ef;
	#20
	A = 16'hb5dc;
	B = 16'h394c;
	ans = 16'hb3c2;
	#20
	A = 16'h2cec;
	B = 16'hb755;
	ans = 16'ha883;
	#20
	A = 16'hb4e8;
	B = 16'hbaea;
	ans = 16'h343e;
	#20
	A = 16'hb45d;
	B = 16'h3495;
	ans = 16'had00;
	#20
	A = 16'h39d8;
	B = 16'h2ae2;
	ans = 16'h2907;
	#20
	A = 16'h36b2;
	B = 16'h34a0;
	ans = 16'h2fbe;
	#20
	A = 16'h2f44;
	B = 16'h352e;
	ans = 16'h28b4;
	#20
	A = 16'hba55;
	B = 16'hb8a8;
	ans = 16'h375f;
	#20
	A = 16'hbadd;
	B = 16'h3a12;
	ans = 16'hb935;
	#20
	A = 16'hb526;
	B = 16'h323e;
	ans = 16'hac04;
	#20
	A = 16'hbbcb;
	B = 16'hb901;
	ans = 16'h38e0;
	#20
	A = 16'h3826;
	B = 16'h34f1;
	ans = 16'h3120;
	#20
	A = 16'hb8dd;
	B = 16'haf1e;
	ans = 16'h2c54;
	#20
	A = 16'h3992;
	B = 16'h38de;
	ans = 16'h36c7;
	#20
	A = 16'ha985;
	B = 16'hbb93;
	ans = 16'h293a;
	#20
	A = 16'hb9a7;
	B = 16'h3853;
	ans = 16'hb61c;
	#20
	A = 16'hab8f;
	B = 16'h35ec;
	ans = 16'ha598;
	#20
	A = 16'h3b0d;
	B = 16'h3842;
	ans = 16'h3781;
	#20
	A = 16'h30dd;
	B = 16'h34a8;
	ans = 16'h29a9;
	#20
	A = 16'h19d9;
	B = 16'hb930;
	ans = 16'h9795;
	#20
	A = 16'h32a7;
	B = 16'h3430;
	ans = 16'h2af7;
	#20
	A = 16'h33a1;
	B = 16'h9e76;
	ans = 16'h9629;
	#20
	A = 16'h39e1;
	B = 16'ha89a;
	ans = 16'ha6c3;
	#20
	A = 16'h388d;
	B = 16'h3ace;
	ans = 16'h37be;
	#20
	A = 16'hb574;
	B = 16'hb6a8;
	ans = 16'h308a;
	#20
	A = 16'h20f8;
	B = 16'h33b6;
	ans = 16'h18ca;
	#20
	A = 16'ha5f0;
	B = 16'h3aa9;
	ans = 16'ha4f1;
	#20
	A = 16'hb0a2;
	B = 16'h333e;
	ans = 16'ha832;
	#20
	A = 16'hac61;
	B = 16'hb781;
	ans = 16'h281b;
	#20
	A = 16'hbbce;
	B = 16'hb2a6;
	ans = 16'h327c;
	#20
	A = 16'h39c1;
	B = 16'h3ae5;
	ans = 16'h38f5;
	#20
	A = 16'h3a92;
	B = 16'h2145;
	ans = 16'h2054;
	#20
	A = 16'h39ee;
	B = 16'h3979;
	ans = 16'h380e;
	#20
	A = 16'hb8dc;
	B = 16'h3559;
	ans = 16'hb27f;
	#20
	A = 16'hafcf;
	B = 16'h39cc;
	ans = 16'hada8;
	#20
	A = 16'h3512;
	B = 16'h36eb;
	ans = 16'h3062;
	#20
	A = 16'h39b2;
	B = 16'h3b49;
	ans = 16'h3930;
	#20
	A = 16'hb9ad;
	B = 16'hba43;
	ans = 16'h3871;
	#20
	A = 16'hb899;
	B = 16'h393d;
	ans = 16'hb605;
	#20
	A = 16'h35de;
	B = 16'hbb8a;
	ans = 16'hb587;
	#20
	A = 16'h383b;
	B = 16'h3b49;
	ans = 16'h37b4;
	#20
	A = 16'h3a42;
	B = 16'hb62f;
	ans = 16'hb4d6;
	#20
	A = 16'hb6d5;
	B = 16'hb7c0;
	ans = 16'h329e;
	#20
	A = 16'hb8b5;
	B = 16'h372e;
	ans = 16'hb439;
	#20
	A = 16'hb5d0;
	B = 16'h3a27;
	ans = 16'hb478;
	#20
	A = 16'h3146;
	B = 16'h30ae;
	ans = 16'h262b;
	#20
	A = 16'hba4b;
	B = 16'hb7a9;
	ans = 16'h3607;
	#20
	A = 16'h3b38;
	B = 16'h2f7e;
	ans = 16'h2ec3;
	#20
	A = 16'h36af;
	B = 16'hb8a2;
	ans = 16'hb3be;
	#20
	A = 16'h3191;
	B = 16'hb324;
	ans = 16'ha8f8;
	#20
	A = 16'hb819;
	B = 16'hbb16;
	ans = 16'h3742;
	#20
	A = 16'hae45;
	B = 16'h387e;
	ans = 16'hab0a;
	#20
	A = 16'h3ad8;
	B = 16'h278e;
	ans = 16'h2676;
	#20
	A = 16'hb5f2;
	B = 16'h3876;
	ans = 16'hb2a1;
	#20
	A = 16'h3a53;
	B = 16'h37d8;
	ans = 16'h3633;
	#20
	A = 16'h3397;
	B = 16'hb24e;
	ans = 16'ha9fb;
	#20
	A = 16'h329f;
	B = 16'hafa6;
	ans = 16'ha655;
	#20
	A = 16'hb5bb;
	B = 16'hb573;
	ans = 16'h2fcf;
	#20
	A = 16'hb8bc;
	B = 16'h39cc;
	ans = 16'hb6dc;
	#20
	A = 16'hb5b3;
	B = 16'hb879;
	ans = 16'h325f;
	#20
	A = 16'h3893;
	B = 16'h3662;
	ans = 16'h334d;
	#20
	A = 16'hacd5;
	B = 16'hb9cf;
	ans = 16'h2b04;
	#20
	A = 16'hbbba;
	B = 16'hb3c2;
	ans = 16'h337e;
	#20
	A = 16'hba87;
	B = 16'hb9b6;
	ans = 16'h38a9;
	#20
	A = 16'h3683;
	B = 16'h375c;
	ans = 16'h31fe;
	#20
	A = 16'h2ff2;
	B = 16'h39e5;
	ans = 16'h2ddb;
	#20
	A = 16'h3a21;
	B = 16'h3a5d;
	ans = 16'h38e0;
	#20
	A = 16'hb808;
	B = 16'h321d;
	ans = 16'hae29;
	#20
	A = 16'h3a9c;
	B = 16'h3bb5;
	ans = 16'h3a5e;
	#20
	A = 16'hb134;
	B = 16'hb774;
	ans = 16'h2cd9;
	#20
	A = 16'hb9d8;
	B = 16'hb9df;
	ans = 16'h384a;
	#20
	A = 16'h37d3;
	B = 16'h357e;
	ans = 16'h315f;
	#20
	A = 16'h34fa;
	B = 16'h38a6;
	ans = 16'h31c9;
	#20
	A = 16'hb484;
	B = 16'had16;
	ans = 16'h25be;
	#20
	A = 16'h351f;
	B = 16'hb5f2;
	ans = 16'haf9d;
	#20
	A = 16'h3457;
	B = 16'hba21;
	ans = 16'hb2a6;
	#20
	A = 16'h340d;
	B = 16'hb8b4;
	ans = 16'hb0c3;
	#20
	A = 16'h386f;
	B = 16'hba71;
	ans = 16'hb724;
	#20
	A = 16'hba7e;
	B = 16'hba2e;
	ans = 16'h3904;
	#20
	A = 16'h29c2;
	B = 16'h2d52;
	ans = 16'h1ba9;
	#20
	A = 16'h361f;
	B = 16'h36af;
	ans = 16'h311d;
	#20
	A = 16'hb950;
	B = 16'h380d;
	ans = 16'hb561;
	#20
	A = 16'h34ed;
	B = 16'hafa4;
	ans = 16'ha8b4;
	#20
	A = 16'h3a40;
	B = 16'hbae6;
	ans = 16'hb964;
	#20
	A = 16'hbac7;
	B = 16'ha37d;
	ans = 16'h2258;
	#20
	A = 16'h3ad9;
	B = 16'hbb80;
	ans = 16'hba6b;
	#20
	A = 16'hb811;
	B = 16'h311e;
	ans = 16'had34;
	#20
	A = 16'hba46;
	B = 16'hba5b;
	ans = 16'h38fc;
	#20
	A = 16'h36d2;
	B = 16'hb329;
	ans = 16'hae1b;
	#20
	A = 16'h389d;
	B = 16'h38c7;
	ans = 16'h3583;
	#20
	A = 16'hbabb;
	B = 16'haeca;
	ans = 16'h2db6;
	#20
	A = 16'h3b46;
	B = 16'hba25;
	ans = 16'hb996;
	#20
	A = 16'hbb7e;
	B = 16'h3b00;
	ans = 16'hba8e;
	#20
	A = 16'hbbad;
	B = 16'h3b44;
	ans = 16'hbaf9;
	#20
	A = 16'h212e;
	B = 16'h34c3;
	ans = 16'h1a2b;
	#20
	A = 16'h2504;
	B = 16'h3956;
	ans = 16'h22b1;
	#20
	A = 16'h9fc8;
	B = 16'hb653;
	ans = 16'h1a27;
	#20
	A = 16'h35d4;
	B = 16'hb70e;
	ans = 16'hb124;
	#20
	A = 16'hb600;
	B = 16'h3a68;
	ans = 16'hb4ce;
	#20
	A = 16'hb0c6;
	B = 16'hb1d9;
	ans = 16'h26fa;
	#20
	A = 16'hae04;
	B = 16'hb3e3;
	ans = 16'h25ee;
	#20
	A = 16'h3000;
	B = 16'haa52;
	ans = 16'h9e52;
	#20
	A = 16'h3813;
	B = 16'hb955;
	ans = 16'hb56e;
	#20
	A = 16'hbbd7;
	B = 16'h3a49;
	ans = 16'hba29;
	#20
	A = 16'h36d1;
	B = 16'hb437;
	ans = 16'haf2f;
	#20
	A = 16'h3576;
	B = 16'hbbda;
	ans = 16'hb55c;
	#20
	A = 16'hb9a1;
	B = 16'h2bc0;
	ans = 16'ha974;
	#20
	A = 16'h3169;
	B = 16'had5a;
	ans = 16'ha33d;
	#20
	A = 16'h3211;
	B = 16'h34cd;
	ans = 16'h2b48;
	#20
	A = 16'h3aed;
	B = 16'h3035;
	ans = 16'h2f49;
	#20
	A = 16'hbb69;
	B = 16'h382b;
	ans = 16'hb7b9;
	#20
	A = 16'hb635;
	B = 16'h34ab;
	ans = 16'haf3e;
	#20
	A = 16'h3031;
	B = 16'h3975;
	ans = 16'h2db8;
	#20
	A = 16'h38cf;
	B = 16'hb7bf;
	ans = 16'hb4a8;
	#20
	A = 16'hbab6;
	B = 16'h394f;
	ans = 16'hb874;
	#20
	A = 16'h36e7;
	B = 16'h37c3;
	ans = 16'h32b2;
	#20
	A = 16'h3a46;
	B = 16'hb86c;
	ans = 16'hb6ef;
	#20
	A = 16'h33c9;
	B = 16'hb866;
	ans = 16'hb048;
	#20
	A = 16'hb20e;
	B = 16'hadb7;
	ans = 16'h2453;
	#20
	A = 16'h391e;
	B = 16'hb60e;
	ans = 16'hb3bf;
	#20
	A = 16'h310d;
	B = 16'hb837;
	ans = 16'had52;
	#20
	A = 16'h3bac;
	B = 16'hb1b1;
	ans = 16'hb175;
	#20
	A = 16'haa7a;
	B = 16'h3a17;
	ans = 16'ha8ee;
	#20
	A = 16'hbbc3;
	B = 16'hb686;
	ans = 16'h3654;
	#20
	A = 16'h32e6;
	B = 16'h3acd;
	ans = 16'h31dd;
	#20
	A = 16'hb74b;
	B = 16'h3a6c;
	ans = 16'hb5db;
	#20
	A = 16'hb389;
	B = 16'hbbe3;
	ans = 16'h336e;
	#20
	A = 16'h3ac2;
	B = 16'hb82f;
	ans = 16'hb711;
	#20
	A = 16'hd77;
	B = 16'hb2dc;
	ans = 16'h84b0;
	#20
	A = 16'hb824;
	B = 16'h10a1;
	ans = 16'h8ccb;
	#20
	A = 16'hb660;
	B = 16'hb9dd;
	ans = 16'h34ac;
	#20
	A = 16'h32de;
	B = 16'h3b0f;
	ans = 16'h320f;
	#20
	A = 16'hb0c2;
	B = 16'h3512;
	ans = 16'haa08;
	#20
	A = 16'h3974;
	B = 16'h387f;
	ans = 16'h3621;
	#20
	A = 16'hb1fa;
	B = 16'hb7a4;
	ans = 16'h2db5;
	#20
	A = 16'h3a7f;
	B = 16'hb937;
	ans = 16'hb83c;
	#20
	A = 16'h2e3c;
	B = 16'h37c3;
	ans = 16'h2a0c;
	#20
	A = 16'hab75;
	B = 16'habc1;
	ans = 16'h1b3a;
	#20
	A = 16'hb869;
	B = 16'hb931;
	ans = 16'h35b9;
	#20
	A = 16'hac23;
	B = 16'h3a8a;
	ans = 16'haac3;
	#20
	A = 16'h37f1;
	B = 16'hb747;
	ans = 16'hb339;
	#20
	A = 16'hb3a4;
	B = 16'hb184;
	ans = 16'h2945;
	#20
	A = 16'h2ec1;
	B = 16'h3962;
	ans = 16'h2c8b;
	#20
	A = 16'h3bf0;
	B = 16'h3826;
	ans = 16'h381e;
	#20
	A = 16'h3719;
	B = 16'hbbc7;
	ans = 16'hb6e6;
	#20
	A = 16'hb823;
	B = 16'h36ae;
	ans = 16'hb2e8;
	#20
	A = 16'h3718;
	B = 16'hb10b;
	ans = 16'hac79;
	#20
	A = 16'h3b88;
	B = 16'hb971;
	ans = 16'hb91f;
	#20
	A = 16'hb995;
	B = 16'h3391;
	ans = 16'hb148;
	#20
	A = 16'h312e;
	B = 16'ha7e8;
	ans = 16'h9d1e;
	#20
	A = 16'h3269;
	B = 16'hb808;
	ans = 16'hae76;
	#20
	A = 16'hb8b6;
	B = 16'h3635;
	ans = 16'hb34f;
	#20
	A = 16'hab30;
	B = 16'hba0d;
	ans = 16'h2970;
	#20
	A = 16'hb697;
	B = 16'h3b59;
	ans = 16'hb60d;
	#20
	A = 16'hb683;
	B = 16'h396f;
	ans = 16'hb46c;
	#20
	A = 16'hbacb;
	B = 16'hb7d1;
	ans = 16'h36a3;
	#20
	A = 16'h3626;
	B = 16'hba19;
	ans = 16'hb4b0;
	#20
	A = 16'hba1c;
	B = 16'hb2bd;
	ans = 16'h3125;
	#20
	A = 16'hb8f5;
	B = 16'h3bea;
	ans = 16'hb8e7;
	#20
	A = 16'hba9e;
	B = 16'h34f5;
	ans = 16'hb41a;
	#20
	A = 16'h39c4;
	B = 16'h3932;
	ans = 16'h377d;
	#20
	A = 16'h357a;
	B = 16'h3692;
	ans = 16'h307f;
	#20
	A = 16'hba52;
	B = 16'h3889;
	ans = 16'hb72a;
	#20
	A = 16'hb13a;
	B = 16'hb809;
	ans = 16'h2d46;
	#20
	A = 16'h3a19;
	B = 16'h3734;
	ans = 16'h357e;
	#20
	A = 16'h3906;
	B = 16'hb63e;
	ans = 16'hb3d7;
	#20
	A = 16'hb334;
	B = 16'hbab2;
	ans = 16'h3207;
	#20
	A = 16'h358e;
	B = 16'h348f;
	ans = 16'h2e55;
	#20
	A = 16'hb4fe;
	B = 16'hba30;
	ans = 16'h33b9;
	#20
	A = 16'h1321;
	B = 16'ha621;
	ans = 16'h815e;
	#20
	A = 16'hbab2;
	B = 16'hb434;
	ans = 16'h3309;
	#20
	A = 16'h35bc;
	B = 16'hb0b6;
	ans = 16'haac1;
	#20
	A = 16'hb971;
	B = 16'h385b;
	ans = 16'hb5ed;
	#20
	A = 16'hb84e;
	B = 16'h3abc;
	ans = 16'hb73f;
	#20
	A = 16'h374c;
	B = 16'hb5ec;
	ans = 16'hb167;
	#20
	A = 16'h3991;
	B = 16'h3790;
	ans = 16'h3543;
	#20
	A = 16'h3b7f;
	B = 16'hb840;
	ans = 16'hb7f7;
	#20
	A = 16'h384d;
	B = 16'h34ae;
	ans = 16'h3108;
	#20
	A = 16'hbbcc;
	B = 16'hb93b;
	ans = 16'h3919;
	#20
	A = 16'h38f3;
	B = 16'h3735;
	ans = 16'h3475;
	#20
	A = 16'hb713;
	B = 16'h38ad;
	ans = 16'hb422;
	#20
	A = 16'h39f5;
	B = 16'h379a;
	ans = 16'h35a9;
	#20
	A = 16'hbabc;
	B = 16'hb894;
	ans = 16'h37b5;
	#20
	A = 16'hb69a;
	B = 16'hb86b;
	ans = 16'h334b;
	#20
	A = 16'h3a34;
	B = 16'hb173;
	ans = 16'hb03a;
	#20
	A = 16'hb529;
	B = 16'hb6cf;
	ans = 16'h3064;
	#20
	A = 16'hba0c;
	B = 16'h392f;
	ans = 16'hb7d6;
	#20
	A = 16'hb749;
	B = 16'hb992;
	ans = 16'h3513;
	#20
	A = 16'h3b43;
	B = 16'hba06;
	ans = 16'hb978;
	#20
	A = 16'hafc4;
	B = 16'hb86b;
	ans = 16'h2c4a;
	#20
	A = 16'hb5f2;
	B = 16'h38c0;
	ans = 16'hb30f;
	#20
	A = 16'h39b2;
	B = 16'hbbe4;
	ans = 16'hb99e;
	#20
	A = 16'hbbfb;
	B = 16'hba4f;
	ans = 16'h3a4b;
	#20
	A = 16'hb81f;
	B = 16'h38d2;
	ans = 16'hb4f7;
	#20
	A = 16'h3ad6;
	B = 16'h3b38;
	ans = 16'h3a2b;
	#20
	A = 16'hb87e;
	B = 16'haa38;
	ans = 16'h26fc;
	#20
	A = 16'hbb1a;
	B = 16'h3505;
	ans = 16'hb475;
	#20
	A = 16'h37c0;
	B = 16'h347a;
	ans = 16'h3056;
	#20
	A = 16'hbb05;
	B = 16'hb008;
	ans = 16'h2f13;
	#20
	A = 16'hb5c5;
	B = 16'hb697;
	ans = 16'h30c1;
	#20
	A = 16'hbadc;
	B = 16'hb81b;
	ans = 16'h370a;
	#20
	A = 16'hb976;
	B = 16'h2909;
	ans = 16'ha6e0;
	#20
	A = 16'hac25;
	B = 16'hba83;
	ans = 16'h2abf;
	#20
	A = 16'hb65a;
	B = 16'hb4e4;
	ans = 16'h2fc4;
	#20
	A = 16'hbbfd;
	B = 16'h3af0;
	ans = 16'hbaed;
	#20
	A = 16'h31f4;
	B = 16'h3891;
	ans = 16'h2ecc;
	#20
	A = 16'hbbcd;
	B = 16'h3399;
	ans = 16'hb369;
	#20
	A = 16'h3bee;
	B = 16'hb821;
	ans = 16'hb818;
	#20
	A = 16'h31a8;
	B = 16'h3a9a;
	ans = 16'h30ab;
	#20
	A = 16'h301e;
	B = 16'hbafc;
	ans = 16'haf30;
	#20
	A = 16'h3a37;
	B = 16'ha5a1;
	ans = 16'ha45f;
	#20
	A = 16'h3594;
	B = 16'hb453;
	ans = 16'hae08;
	#20
	A = 16'hba6c;
	B = 16'haa2b;
	ans = 16'h28f4;
	#20
	A = 16'hb941;
	B = 16'h2e4d;
	ans = 16'hac23;
	#20
	A = 16'hb975;
	B = 16'hb6ff;
	ans = 16'h34c6;
	#20
	A = 16'h2909;
	B = 16'h3b60;
	ans = 16'h28a4;
	#20
	A = 16'h3b1c;
	B = 16'hb514;
	ans = 16'hb483;
	#20
	A = 16'h386b;
	B = 16'hb9a4;
	ans = 16'hb63b;
	#20
	A = 16'h2411;
	B = 16'hba91;
	ans = 16'ha2ad;
	#20
	A = 16'h354a;
	B = 16'h3a10;
	ans = 16'h3402;
	#20
	A = 16'h3a9e;
	B = 16'h34de;
	ans = 16'h3407;
	#20
	A = 16'hbb00;
	B = 16'ha9dd;
	ans = 16'h2921;
	#20
	A = 16'hb8f8;
	B = 16'hba23;
	ans = 16'h379f;
	#20
	A = 16'h35dc;
	B = 16'hba36;
	ans = 16'hb48d;
	#20
	A = 16'hba7d;
	B = 16'hab8a;
	ans = 16'h2a1d;
	#20
	A = 16'hba98;
	B = 16'h392a;
	ans = 16'hb842;
	#20
	A = 16'h30db;
	B = 16'h33c2;
	ans = 16'h28b5;
	#20
	A = 16'hb701;
	B = 16'hb8c6;
	ans = 16'h342e;
	#20
	A = 16'h337d;
	B = 16'hbb64;
	ans = 16'hb2eb;
	#20
	A = 16'haeca;
	B = 16'h3b4a;
	ans = 16'hae30;
	#20
	A = 16'hb686;
	B = 16'h3c00;
	ans = 16'hb686;
	#20
	A = 16'hb840;
	B = 16'h38a1;
	ans = 16'hb4eb;
	#20
	A = 16'h38e1;
	B = 16'hb9d0;
	ans = 16'hb717;
	#20
	A = 16'h2a2f;
	B = 16'h3206;
	ans = 16'h20a8;
	#20
	A = 16'h3904;
	B = 16'h2e9b;
	ans = 16'h2c24;
	#20
	A = 16'hb8c3;
	B = 16'h369c;
	ans = 16'hb3de;
	#20
	A = 16'hb813;
	B = 16'hbaf9;
	ans = 16'h371a;
	#20
	A = 16'h3b39;
	B = 16'hb84d;
	ans = 16'hb7c4;
	#20
	A = 16'hb855;
	B = 16'hb76b;
	ans = 16'h3404;
	#20
	A = 16'hb6a0;
	B = 16'hbbea;
	ans = 16'h368e;
	#20
	A = 16'h3491;
	B = 16'hb725;
	ans = 16'hb014;
	#20
	A = 16'hbb40;
	B = 16'hbad5;
	ans = 16'h3a31;
	#20
	A = 16'hb161;
	B = 16'hb7a0;
	ans = 16'h2d20;
	#20
	A = 16'hb53a;
	B = 16'h39e7;
	ans = 16'hb3b6;
	#20
	A = 16'h3b78;
	B = 16'h390d;
	ans = 16'h38b7;
	#20
	A = 16'h396e;
	B = 16'h3a52;
	ans = 16'h384a;
	#20
	A = 16'h3415;
	B = 16'h36de;
	ans = 16'h2f02;
	#20
	A = 16'hae51;
	B = 16'h3b55;
	ans = 16'hadca;
	#20
	A = 16'h2ebd;
	B = 16'h2c83;
	ans = 16'h1f9a;
	#20
	A = 16'h2c48;
	B = 16'hac26;
	ans = 16'h9c71;
	#20
	A = 16'hb7f2;
	B = 16'hb7df;
	ans = 16'h33d1;
	#20
	A = 16'h3a24;
	B = 16'h2f2d;
	ans = 16'h2d82;
	#20
	A = 16'hb017;
	B = 16'h35ab;
	ans = 16'ha9cc;
	#20
	A = 16'hac51;
	B = 16'hb81c;
	ans = 16'h286f;
	#20
	A = 16'hb018;
	B = 16'h3a9f;
	ans = 16'haec7;
	#20
	A = 16'h321b;
	B = 16'hbbf3;
	ans = 16'hb211;
	#20
	A = 16'hba28;
	B = 16'h38ad;
	ans = 16'hb732;
	#20
	A = 16'h3b75;
	B = 16'hba4a;
	ans = 16'hb9dd;
	#20
	A = 16'h349b;
	B = 16'h3436;
	ans = 16'h2cd9;
	#20
	A = 16'hba2c;
	B = 16'hb8f5;
	ans = 16'h37a6;
	#20
	A = 16'hb5eb;
	B = 16'h2c9c;
	ans = 16'ha6d2;
	#20
	A = 16'h30c9;
	B = 16'h3acd;
	ans = 16'h3011;
	#20
	A = 16'h39f8;
	B = 16'hb909;
	ans = 16'hb783;
	#20
	A = 16'h33d6;
	B = 16'h3bdd;
	ans = 16'h33b4;
	#20
	A = 16'h2b32;
	B = 16'hb8d0;
	ans = 16'ha854;
	#20
	A = 16'hb471;
	B = 16'hb009;
	ans = 16'h287b;
	#20
	A = 16'h38c1;
	B = 16'h2a25;
	ans = 16'h274d;
	#20
	A = 16'h88b4;
	B = 16'hb6f8;
	ans = 16'h419;
	#20
	A = 16'h3adf;
	B = 16'hb13f;
	ans = 16'hb081;
	#20
	A = 16'hbbc7;
	B = 16'h356a;
	ans = 16'hb543;
	#20
	A = 16'hbaae;
	B = 16'hbad6;
	ans = 16'h39b5;
	#20
	A = 16'h3b57;
	B = 16'hb078;
	ans = 16'hb01a;
	#20
	A = 16'hb8ac;
	B = 16'haab1;
	ans = 16'h27d1;
	#20
	A = 16'h389b;
	B = 16'hb4e6;
	ans = 16'hb1a4;
	#20
	A = 16'h329f;
	B = 16'hb880;
	ans = 16'haf73;
	#20
	A = 16'hb8aa;
	B = 16'hb9b7;
	ans = 16'h36aa;
	#20
	A = 16'h193f;
	B = 16'hb82b;
	ans = 16'h9577;
	#20
	A = 16'h3afd;
	B = 16'h3598;
	ans = 16'h34e3;
	#20
	A = 16'hb6b2;
	B = 16'hacd3;
	ans = 16'h280a;
	#20
	A = 16'hb813;
	B = 16'hb6c6;
	ans = 16'h32e6;
	#20
	A = 16'hbbf9;
	B = 16'hb9ea;
	ans = 16'h39e5;
	#20
	A = 16'h3797;
	B = 16'h3423;
	ans = 16'h2fd9;
	#20
	A = 16'hadba;
	B = 16'h39c6;
	ans = 16'hac22;
	#20
	A = 16'hba57;
	B = 16'h221d;
	ans = 16'ha0d8;
	#20
	A = 16'h38b0;
	B = 16'hbb51;
	ans = 16'hb849;
	#20
	A = 16'hac1a;
	B = 16'h3216;
	ans = 16'ha23e;
	#20
	A = 16'h3952;
	B = 16'h2dfa;
	ans = 16'h2bf3;
	#20
	A = 16'h3a4a;
	B = 16'h309d;
	ans = 16'h2f41;
	#20
	A = 16'h32a9;
	B = 16'ha82d;
	ans = 16'h9ef4;
	#20
	A = 16'h3773;
	B = 16'hb791;
	ans = 16'hb30c;
	#20
	A = 16'h334d;
	B = 16'h36f1;
	ans = 16'h2e56;
	#20
	A = 16'h2e38;
	B = 16'hacd4;
	ans = 16'h9f82;
	#20
	A = 16'h3759;
	B = 16'hb7ca;
	ans = 16'hb327;
	#20
	A = 16'hba77;
	B = 16'h3b6a;
	ans = 16'hb9fe;
	#20
	A = 16'hb1b0;
	B = 16'h9f76;
	ans = 16'h154e;
	#20
	A = 16'h3966;
	B = 16'hb8d7;
	ans = 16'hb688;
	#20
	A = 16'h3079;
	B = 16'hb940;
	ans = 16'haddf;
	#20
	A = 16'hbab8;
	B = 16'haf45;
	ans = 16'h2e1b;
	#20
	A = 16'h3a3f;
	B = 16'hb849;
	ans = 16'hb6b1;
	#20
	A = 16'h32be;
	B = 16'hb594;
	ans = 16'hacb3;
	#20
	A = 16'hb7ed;
	B = 16'h3a39;
	ans = 16'hb62a;
	#20
	A = 16'hba35;
	B = 16'ha852;
	ans = 16'h26b4;
	#20
	A = 16'hbbd2;
	B = 16'h399b;
	ans = 16'hb97b;
	#20
	A = 16'hb8ed;
	B = 16'h3714;
	ans = 16'hb45c;
	#20
	A = 16'hbbe6;
	B = 16'hbadb;
	ans = 16'h3ac5;
	#20
	A = 16'hb6e7;
	B = 16'hb8ce;
	ans = 16'h3425;
	#20
	A = 16'hba8e;
	B = 16'h3981;
	ans = 16'hb882;
	#20
	A = 16'h3b43;
	B = 16'h1db6;
	ans = 16'h1d2f;
	#20
	A = 16'h29aa;
	B = 16'hb262;
	ans = 16'ha085;
	#20
	A = 16'hbbff;
	B = 16'hbb6a;
	ans = 16'h3b69;
	#20
	A = 16'h337e;
	B = 16'hb2ae;
	ans = 16'haa41;
	#20
	A = 16'hb98d;
	B = 16'hafb0;
	ans = 16'h2d55;
	#20
	A = 16'hb8be;
	B = 16'hb41f;
	ans = 16'h30e3;
	#20
	A = 16'hb882;
	B = 16'hbb09;
	ans = 16'h37ee;
	#20
	A = 16'hb97a;
	B = 16'h2f8e;
	ans = 16'had2c;
	#20
	A = 16'h3056;
	B = 16'hbbb5;
	ans = 16'hb02d;
	#20
	A = 16'h39a3;
	B = 16'had19;
	ans = 16'hab2f;
	#20
	A = 16'h36ba;
	B = 16'hb394;
	ans = 16'hae5f;
	#20
	A = 16'hb094;
	B = 16'h3421;
	ans = 16'ha8ba;
	#20
	A = 16'h380a;
	B = 16'hb9d7;
	ans = 16'hb5e6;
	#20
	A = 16'h3429;
	B = 16'hba78;
	ans = 16'hb2ba;
	#20
	A = 16'h2970;
	B = 16'h3950;
	ans = 16'h2739;
	#20
	A = 16'h360b;
	B = 16'h38cc;
	ans = 16'h333f;
	#20
	A = 16'h3be1;
	B = 16'hb5a0;
	ans = 16'hb58a;
	#20
	A = 16'ha4d6;
	B = 16'hb87d;
	ans = 16'h216d;
	#20
	A = 16'h39bf;
	B = 16'h3a14;
	ans = 16'h385e;
	#20
	A = 16'h31e3;
	B = 16'hb5c7;
	ans = 16'hac40;
	#20
	A = 16'hacae;
	B = 16'hbbf6;
	ans = 16'h2ca8;
	#20
	A = 16'hba0b;
	B = 16'h3b40;
	ans = 16'hb97a;
	#20
	A = 16'h39d1;
	B = 16'h3b7e;
	ans = 16'h3972;
	#20
	A = 16'hb6e1;
	B = 16'h36e2;
	ans = 16'hb1eb;
	#20
	A = 16'hb5eb;
	B = 16'hb720;
	ans = 16'h3145;
	#20
	A = 16'hb8b7;
	B = 16'h3b6c;
	ans = 16'hb860;
	#20
	A = 16'h3bbf;
	B = 16'hb1b7;
	ans = 16'hb189;
	#20
	A = 16'h3bb2;
	B = 16'hb99f;
	ans = 16'hb968;
	#20
	A = 16'h351b;
	B = 16'hbb00;
	ans = 16'hb478;
	#20
	A = 16'h3814;
	B = 16'h3bee;
	ans = 16'h380b;
	#20
	A = 16'hb493;
	B = 16'hb81a;
	ans = 16'h30b1;
	#20
	A = 16'h33dc;
	B = 16'hb20f;
	ans = 16'ha9f4;
	#20
	A = 16'hba5f;
	B = 16'hba17;
	ans = 16'h38da;
	#20
	A = 16'h371e;
	B = 16'hb514;
	ans = 16'hb085;
	#20
	A = 16'h389d;
	B = 16'h2f2a;
	ans = 16'h2c22;
	#20
	A = 16'h343b;
	B = 16'hba85;
	ans = 16'hb2e5;
	#20
	A = 16'h3a40;
	B = 16'hb1c2;
	ans = 16'hb080;
	#20
	A = 16'h303b;
	B = 16'hbb25;
	ans = 16'haf8e;
	#20
	A = 16'hbbc2;
	B = 16'h389c;
	ans = 16'hb878;
	#20
	A = 16'h3b85;
	B = 16'hb249;
	ans = 16'hb1e8;
	#20
	A = 16'ha4a9;
	B = 16'h3a9a;
	ans = 16'ha3b1;
	#20
	A = 16'hb358;
	B = 16'ha82b;
	ans = 16'h1fa7;
	#20
	A = 16'hb993;
	B = 16'h399c;
	ans = 16'hb7d1;
	#20
	A = 16'haf2c;
	B = 16'hb8d4;
	ans = 16'h2c54;
	#20
	A = 16'hb6ac;
	B = 16'h34ed;
	ans = 16'hb01c;
	#20
	A = 16'hbb1b;
	B = 16'h3408;
	ans = 16'hb329;
	#20
	A = 16'h3bab;
	B = 16'h3425;
	ans = 16'h33f2;
	#20
	A = 16'hb4b7;
	B = 16'hba8c;
	ans = 16'h33b8;
	#20
	A = 16'h38af;
	B = 16'hb88e;
	ans = 16'hb555;
	#20
	A = 16'h3929;
	B = 16'h35fd;
	ans = 16'h33ba;
	#20
	A = 16'h3955;
	B = 16'ha1e9;
	ans = 16'h9fe1;
	#20
	A = 16'hb7f0;
	B = 16'h3221;
	ans = 16'hae15;
	#20
	A = 16'hba51;
	B = 16'h3bfa;
	ans = 16'hba4c;
	#20
	A = 16'h37c0;
	B = 16'hb9d6;
	ans = 16'hb5a7;
	#20
	A = 16'h360d;
	B = 16'h37a0;
	ans = 16'h31c4;
	#20
	A = 16'hb440;
	B = 16'hb07b;
	ans = 16'h28c3;
	#20
	A = 16'hb779;
	B = 16'h346c;
	ans = 16'hb021;
	#20
	A = 16'hb4da;
	B = 16'hb665;
	ans = 16'h2fc2;
	#20
	A = 16'hb49c;
	B = 16'h3367;
	ans = 16'hac44;
	#20
	A = 16'hba8d;
	B = 16'h1dbc;
	ans = 16'h9cb2;
	#20
	A = 16'hb8e8;
	B = 16'h2b09;
	ans = 16'ha851;
	#20
	A = 16'h3528;
	B = 16'hba3a;
	ans = 16'hb403;
	#20
	A = 16'hb750;
	B = 16'h33a3;
	ans = 16'haefb;
	#20
	A = 16'h3ac0;
	B = 16'hbb9c;
	ans = 16'hba6c;
	#20
	A = 16'hba29;
	B = 16'hbb60;
	ans = 16'h39ae;
	#20
	A = 16'h3605;
	B = 16'h35dd;
	ans = 16'h3069;
	#20
	A = 16'hba15;
	B = 16'hbbc4;
	ans = 16'h39e7;
	#20
	A = 16'h39b2;
	B = 16'hb5aa;
	ans = 16'hb408;
	#20
	A = 16'h3af9;
	B = 16'hbac3;
	ans = 16'hb9e5;
	#20
	A = 16'h3b29;
	B = 16'hac3b;
	ans = 16'hab93;
	#20
	A = 16'hb337;
	B = 16'h3829;
	ans = 16'haf81;
	#20
	A = 16'hb098;
	B = 16'h3b82;
	ans = 16'hb050;
	#20
	A = 16'hb8af;
	B = 16'hab7d;
	ans = 16'h2862;
	#20
	A = 16'hba45;
	B = 16'h301e;
	ans = 16'hae74;
	#20
	A = 16'hb9fc;
	B = 16'h3979;
	ans = 16'hb818;
	#20
	A = 16'hb6d4;
	B = 16'h25ef;
	ans = 16'ha110;
	#20
	A = 16'h38ce;
	B = 16'hbadf;
	ans = 16'hb820;
	#20
	A = 16'hb77c;
	B = 16'h3b6c;
	ans = 16'hb6f2;
	#20
	A = 16'h2cf3;
	B = 16'h3590;
	ans = 16'h26e2;
	#20
	A = 16'h34ce;
	B = 16'h3a5b;
	ans = 16'h33a2;
	#20
	A = 16'hb4ea;
	B = 16'h25a7;
	ans = 16'h9ef2;
	#20
	A = 16'h3924;
	B = 16'h3b02;
	ans = 16'h3881;
	#20
	A = 16'hb819;
	B = 16'h3232;
	ans = 16'hae59;
	#20
	A = 16'hb6dd;
	B = 16'hbb98;
	ans = 16'h3684;
	#20
	A = 16'hb8e2;
	B = 16'h3097;
	ans = 16'had9a;
	#20
	A = 16'hb9ea;
	B = 16'hae10;
	ans = 16'h2c7b;
	#20
	A = 16'hbb66;
	B = 16'h3b26;
	ans = 16'hba9c;
	#20
	A = 16'hb721;
	B = 16'hac67;
	ans = 16'h27d9;
	#20
	A = 16'hb155;
	B = 16'h39a8;
	ans = 16'haf8a;
	#20
	A = 16'hb801;
	B = 16'h34a6;
	ans = 16'hb0a7;
	#20
	A = 16'h39ff;
	B = 16'h2706;
	ans = 16'h2544;
	#20
	A = 16'hb93d;
	B = 16'h314b;
	ans = 16'haeee;
	#20
	A = 16'hb906;
	B = 16'h398f;
	ans = 16'hb6fb;
	#20
	A = 16'hb9fa;
	B = 16'hbac1;
	ans = 16'h390c;
	#20
	A = 16'h3b65;
	B = 16'hb7e9;
	ans = 16'hb750;
	#20
	A = 16'hb88c;
	B = 16'h38ee;
	ans = 16'hb59b;
	#20
	A = 16'hb968;
	B = 16'hb987;
	ans = 16'h3778;
	#20
	A = 16'hb521;
	B = 16'h3a74;
	ans = 16'hb423;
	#20
	A = 16'hb5bb;
	B = 16'h3b92;
	ans = 16'hb56c;
	#20
	A = 16'hb26d;
	B = 16'h367b;
	ans = 16'had35;
	#20
	A = 16'h39c7;
	B = 16'h396b;
	ans = 16'h37d3;
	#20
	A = 16'hb7b8;
	B = 16'h2f00;
	ans = 16'haac1;
	#20
	A = 16'hba43;
	B = 16'h353e;
	ans = 16'hb41a;
	#20
	A = 16'hb9a8;
	B = 16'ha3ba;
	ans = 16'h2177;
	#20
	A = 16'ha86b;
	B = 16'hb2e9;
	ans = 16'h1fa2;
	#20
	A = 16'h399b;
	B = 16'h2967;
	ans = 16'h2792;
	#20
	A = 16'h3bf0;
	B = 16'h2d72;
	ans = 16'h2d67;
	#20
	A = 16'hb949;
	B = 16'hbbd4;
	ans = 16'h392c;
	#20
	A = 16'hb6fc;
	B = 16'hb62c;
	ans = 16'h3163;
	#20
	A = 16'hb827;
	B = 16'h36b2;
	ans = 16'hb2f3;
	#20
	A = 16'h39ee;
	B = 16'h25a1;
	ans = 16'h242c;
	#20
	A = 16'h3937;
	B = 16'h3762;
	ans = 16'h34d0;
	#20
	A = 16'h380c;
	B = 16'hba44;
	ans = 16'hb657;
	#20
	A = 16'hb7a8;
	B = 16'h357c;
	ans = 16'hb140;
	#20
	A = 16'h2ab6;
	B = 16'hb2f8;
	ans = 16'ha1d9;
	#20
	A = 16'h39d3;
	B = 16'hb4f8;
	ans = 16'hb33c;
	#20
	A = 16'hba96;
	B = 16'h380e;
	ans = 16'hb6ad;
	#20
	A = 16'h37d3;
	B = 16'hb9fb;
	ans = 16'hb5d9;
	#20
	A = 16'h362f;
	B = 16'h387b;
	ans = 16'h32ed;
	#20
	A = 16'hbbb1;
	B = 16'ha51f;
	ans = 16'h24ec;
	#20
	A = 16'h3ad1;
	B = 16'hb1a3;
	ans = 16'hb0ce;
	#20
	A = 16'h3944;
	B = 16'hb633;
	ans = 16'hb415;
	#20
	A = 16'h37f7;
	B = 16'hb885;
	ans = 16'hb480;
	#20
	A = 16'hb6eb;
	B = 16'hb625;
	ans = 16'h3150;
	#20
	A = 16'hb9de;
	B = 16'hb492;
	ans = 16'h32b4;
	#20
	A = 16'h3331;
	B = 16'h3917;
	ans = 16'h3093;
	#20
	A = 16'h3150;
	B = 16'hb980;
	ans = 16'haf4e;
	#20
	A = 16'h3acc;
	B = 16'habd8;
	ans = 16'haaaa;
	#20
	A = 16'h304d;
	B = 16'hb0cd;
	ans = 16'ha529;
	#20
	A = 16'h32e7;
	B = 16'h39cf;
	ans = 16'h3103;
	#20
	A = 16'h3a70;
	B = 16'h38fc;
	ans = 16'h3803;
	#20
	A = 16'hb844;
	B = 16'hba59;
	ans = 16'h36c5;
	#20
	A = 16'hb051;
	B = 16'hb2e7;
	ans = 16'h2773;
	#20
	A = 16'hba7d;
	B = 16'hb545;
	ans = 16'h3446;
	#20
	A = 16'hbb79;
	B = 16'h3538;
	ans = 16'hb4e0;
	#20
	A = 16'h2c6c;
	B = 16'h1a05;
	ans = 16'haa8;
	#20
	A = 16'hb135;
	B = 16'h3aa7;
	ans = 16'hb054;
	#20
	A = 16'h36dd;
	B = 16'hb879;
	ans = 16'hb3ad;
	#20
	A = 16'h39ce;
	B = 16'h36ae;
	ans = 16'h34d9;
	#20
	A = 16'hbb49;
	B = 16'h334b;
	ans = 16'hb2a4;
	#20
	A = 16'hb5e7;
	B = 16'h3055;
	ans = 16'haa64;
	#20
	A = 16'h31e8;
	B = 16'hb6d7;
	ans = 16'had0d;
	#20
	A = 16'hb66e;
	B = 16'hb8f5;
	ans = 16'h33f8;
	#20
	A = 16'h32fd;
	B = 16'h3b91;
	ans = 16'h329c;
	#20
	A = 16'h31d9;
	B = 16'hb402;
	ans = 16'ha9dc;
	#20
	A = 16'h2489;
	B = 16'h3835;
	ans = 16'h20c5;
	#20
	A = 16'hb992;
	B = 16'had17;
	ans = 16'h2b17;
	#20
	A = 16'h354e;
	B = 16'h302d;
	ans = 16'h298a;
	#20
	A = 16'h375f;
	B = 16'hb32d;
	ans = 16'hae9d;
	#20
	A = 16'h2d94;
	B = 16'h37f1;
	ans = 16'h298a;
	#20
	A = 16'h3ae7;
	B = 16'h3799;
	ans = 16'h368e;
	#20
	A = 16'h3877;
	B = 16'h383f;
	ans = 16'h34bd;
	#20
	A = 16'h2cc1;
	B = 16'h3746;
	ans = 16'h2852;
	#20
	A = 16'hacc8;
	B = 16'hb876;
	ans = 16'h2955;
	#20
	A = 16'hbbcf;
	B = 16'h362f;
	ans = 16'hb609;
	#20
	A = 16'h390b;
	B = 16'h3a8b;
	ans = 16'h3820;
	#20
	A = 16'h37dc;
	B = 16'h394c;
	ans = 16'h3534;
	#20
	A = 16'h3a55;
	B = 16'hbb98;
	ans = 16'hba03;
	#20
	A = 16'hb559;
	B = 16'h3a8b;
	ans = 16'hb460;
	#20
	A = 16'hbac3;
	B = 16'h198f;
	ans = 16'h98b3;
	#20
	A = 16'h36a5;
	B = 16'h30d1;
	ans = 16'h2c00;
	#20
	A = 16'h2d2e;
	B = 16'h3061;
	ans = 16'h21ac;
	#20
	A = 16'h3b78;
	B = 16'hb479;
	ans = 16'hb42d;
	#20
	A = 16'h3992;
	B = 16'hb860;
	ans = 16'hb618;
	#20
	A = 16'h3558;
	B = 16'h38f8;
	ans = 16'h32a3;
	#20
	A = 16'hb99c;
	B = 16'hb155;
	ans = 16'h2f7a;
	#20
	A = 16'h36c8;
	B = 16'hb41e;
	ans = 16'haefb;
	#20
	A = 16'h9fe8;
	B = 16'h3b2a;
	ans = 16'h9f15;
	#20
	A = 16'h38e1;
	B = 16'hb98f;
	ans = 16'hb6c8;
	#20
	A = 16'h35f5;
	B = 16'h3b65;
	ans = 16'h3582;
	#20
	A = 16'h2548;
	B = 16'hb02c;
	ans = 16'h9982;
	#20
	A = 16'hac7b;
	B = 16'h3515;
	ans = 16'ha5b1;
	#20
	A = 16'h34af;
	B = 16'hb989;
	ans = 16'hb27b;
	#20
	A = 16'hbae6;
	B = 16'hb87b;
	ans = 16'h37ba;
	#20
	A = 16'hb6fe;
	B = 16'hbae3;
	ans = 16'h3605;
	#20
	A = 16'h2b7e;
	B = 16'h3bc1;
	ans = 16'h2b43;
	#20
	A = 16'h3942;
	B = 16'hba91;
	ans = 16'hb851;
	#20
	A = 16'h3176;
	B = 16'hbac6;
	ans = 16'hb0a0;
	#20
	A = 16'h371b;
	B = 16'hbaef;
	ans = 16'hb629;
	#20
	A = 16'hbbab;
	B = 16'haabc;
	ans = 16'h2a74;
	#20
	A = 16'hb582;
	B = 16'hba25;
	ans = 16'h343b;
	#20
	A = 16'h32d8;
	B = 16'hbb5f;
	ans = 16'hb24e;
	#20
	A = 16'h39f5;
	B = 16'h314a;
	ans = 16'h2fe0;
	#20
	A = 16'h252a;
	B = 16'h33f4;
	ans = 16'h1d22;
	#20
	A = 16'hae12;
	B = 16'hba0b;
	ans = 16'h2c96;
	#20
	A = 16'hb48b;
	B = 16'h36f1;
	ans = 16'hafe2;
	#20
	A = 16'hbaa5;
	B = 16'h384a;
	ans = 16'hb720;
	#20
	A = 16'h2985;
	B = 16'haeea;
	ans = 16'h9cc5;
	#20
	A = 16'hb303;
	B = 16'h381d;
	ans = 16'haf36;
	#20
	A = 16'h33e5;
	B = 16'h31f4;
	ans = 16'h29e0;
	#20
	A = 16'hb2d3;
	B = 16'h3558;
	ans = 16'hac8f;
	#20
	A = 16'hb4f2;
	B = 16'hb4ce;
	ans = 16'h2df1;
	#20
	A = 16'hb6a6;
	B = 16'hb901;
	ans = 16'h3429;
	#20
	A = 16'hb9f2;
	B = 16'h3859;
	ans = 16'hb676;
	#20
	A = 16'haf5b;
	B = 16'haefd;
	ans = 16'h226d;
	#20
	A = 16'h38a9;
	B = 16'hb591;
	ans = 16'hb27c;
	#20
	A = 16'hba0c;
	B = 16'h3801;
	ans = 16'hb60e;
	#20
	A = 16'hb8be;
	B = 16'h3261;
	ans = 16'haf90;
	#20
	A = 16'ha6a3;
	B = 16'h370a;
	ans = 16'ha1d7;
	#20
	A = 16'hbb63;
	B = 16'hb5e1;
	ans = 16'h356e;
	#20
	A = 16'hb86d;
	B = 16'h3b8f;
	ans = 16'hb82e;
	#20
	A = 16'hb977;
	B = 16'h3748;
	ans = 16'hb4f9;
	#20
	A = 16'h3a27;
	B = 16'hbb47;
	ans = 16'hb999;
	#20
	A = 16'hba05;
	B = 16'hb996;
	ans = 16'h3834;
	#20
	A = 16'hb929;
	B = 16'hb5de;
	ans = 16'h3392;
	#20
	A = 16'hb584;
	B = 16'hba04;
	ans = 16'h3426;
	#20
	A = 16'h3b12;
	B = 16'hbab7;
	ans = 16'hb9ef;
	#20
	A = 16'h34d0;
	B = 16'hb814;
	ans = 16'hb0e8;
	#20
	A = 16'hbbd9;
	B = 16'h3b53;
	ans = 16'hbb2f;
	#20
	A = 16'hb995;
	B = 16'hba49;
	ans = 16'h3863;
	#20
	A = 16'h34e5;
	B = 16'h3130;
	ans = 16'h2a59;
	#20
	A = 16'hb559;
	B = 16'h39c6;
	ans = 16'hb3b8;
	#20
	A = 16'h3822;
	B = 16'h2ace;
	ans = 16'h2708;
	#20
	A = 16'h3b4e;
	B = 16'haa67;
	ans = 16'ha9d9;
	#20
	A = 16'h38c3;
	B = 16'hbb9a;
	ans = 16'hb886;
	#20
	A = 16'h3b46;
	B = 16'h35d9;
	ans = 16'h3551;
	#20
	A = 16'h25cc;
	B = 16'h2c09;
	ans = 16'h15d9;
	#20
	A = 16'hb860;
	B = 16'h360b;
	ans = 16'hb29c;
	#20
	A = 16'hbbca;
	B = 16'hba18;
	ans = 16'h39ef;
	#20
	A = 16'h3816;
	B = 16'hb959;
	ans = 16'hb576;
	#20
	A = 16'hbb78;
	B = 16'h36f5;
	ans = 16'hb67f;
	#20
	A = 16'had4d;
	B = 16'hb7af;
	ans = 16'h2917;
	#20
	A = 16'hb3b0;
	B = 16'hb007;
	ans = 16'h27bd;
	#20
	A = 16'haf33;
	B = 16'hb617;
	ans = 16'h297b;
	#20
	A = 16'h39a1;
	B = 16'h398a;
	ans = 16'h37cb;
	#20
	A = 16'h3bd0;
	B = 16'h3b30;
	ans = 16'h3b05;
	#20
	A = 16'hb4b3;
	B = 16'h37b6;
	ans = 16'hb088;
	#20
	A = 16'h3b98;
	B = 16'h3367;
	ans = 16'h3307;
	#20
	A = 16'h3910;
	B = 16'hb887;
	ans = 16'hb5bb;
	#20
	A = 16'hb8d1;
	B = 16'h39d3;
	ans = 16'hb703;
	#20
	A = 16'hb9f4;
	B = 16'h359e;
	ans = 16'hb42e;
	#20
	A = 16'h3741;
	B = 16'hbbc5;
	ans = 16'hb70c;
	#20
	A = 16'hb992;
	B = 16'hba34;
	ans = 16'h3852;
	#20
	A = 16'hb91b;
	B = 16'hba52;
	ans = 16'h3809;
	#20
	A = 16'hb417;
	B = 16'h3788;
	ans = 16'hafb3;
	#20
	A = 16'hb72f;
	B = 16'h3a35;
	ans = 16'hb593;
	#20
	A = 16'hadb2;
	B = 16'h3447;
	ans = 16'ha617;
	#20
	A = 16'hba22;
	B = 16'h37c7;
	ans = 16'hb5f6;
	#20
	A = 16'hb124;
	B = 16'h2346;
	ans = 16'h98ac;
	#20
	A = 16'hb50a;
	B = 16'hba0b;
	ans = 16'h339d;
	#20
	A = 16'hb871;
	B = 16'h3873;
	ans = 16'hb4f1;
	#20
	A = 16'hb921;
	B = 16'h3a78;
	ans = 16'hb826;
	#20
	A = 16'hb4b1;
	B = 16'h3549;
	ans = 16'hae33;
	#20
	A = 16'h37f6;
	B = 16'hb1b9;
	ans = 16'hadb2;
	#20
	A = 16'hb9dd;
	B = 16'hba70;
	ans = 16'h38b8;
	#20
	A = 16'hba21;
	B = 16'hb6b0;
	ans = 16'h3520;
	#20
	A = 16'haae8;
	B = 16'hb098;
	ans = 16'h1fee;
	#20
	A = 16'h3965;
	B = 16'h3a91;
	ans = 16'h386e;
	#20
	A = 16'h31f1;
	B = 16'hbabc;
	ans = 16'hb100;
	#20
	A = 16'h393c;
	B = 16'h3aa2;
	ans = 16'h3857;
	#20
	A = 16'h3bc2;
	B = 16'h397d;
	ans = 16'h3952;
	#20
	A = 16'h351d;
	B = 16'hb7a2;
	ans = 16'hb0e1;
	#20
	A = 16'hba57;
	B = 16'h394e;
	ans = 16'hb834;
	#20
	A = 16'h3a2c;
	B = 16'h3ab5;
	ans = 16'h392d;
	#20
	A = 16'h3204;
	B = 16'hb9e0;
	ans = 16'hb06b;
	#20
	A = 16'hab57;
	B = 16'h3a54;
	ans = 16'ha9ce;
	#20
	A = 16'h3b94;
	B = 16'h2f77;
	ans = 16'h2f12;
	#20
	A = 16'h3a29;
	B = 16'h34f8;
	ans = 16'h33a7;
	#20
	A = 16'h2f60;
	B = 16'hac63;
	ans = 16'ha00b;
	#20
	A = 16'h3b8f;
	B = 16'h3782;
	ans = 16'h3718;
	#20
	A = 16'hbb80;
	B = 16'h399f;
	ans = 16'hb945;
	#20
	A = 16'h3adb;
	B = 16'h2a13;
	ans = 16'h2935;
	#20
	A = 16'h3a52;
	B = 16'h365d;
	ans = 16'h3507;
	#20
	A = 16'hbaf5;
	B = 16'hb9dc;
	ans = 16'h3918;
	#20
	A = 16'h370f;
	B = 16'hba71;
	ans = 16'hb5af;
	#20
	A = 16'h39b1;
	B = 16'h216b;
	ans = 16'h1fb5;
	#20
	A = 16'hb788;
	B = 16'ha56f;
	ans = 16'h211d;
	#20
	A = 16'hbb1d;
	B = 16'hb861;
	ans = 16'h37c9;
	#20
	A = 16'h3307;
	B = 16'h3791;
	ans = 16'h2ea5;
	#20
	A = 16'h3027;
	B = 16'hb951;
	ans = 16'had85;
	#20
	A = 16'h3a91;
	B = 16'hba6c;
	ans = 16'hb945;
	#20
	A = 16'hba9d;
	B = 16'hb51f;
	ans = 16'h343c;
	#20
	A = 16'h3bd7;
	B = 16'hb5e6;
	ans = 16'hb5c8;
	#20
	A = 16'ha5ca;
	B = 16'h3ac5;
	ans = 16'ha4e6;
	#20
	A = 16'hb096;
	B = 16'h3afa;
	ans = 16'hb000;
	#20
	A = 16'ha80d;
	B = 16'h3451;
	ans = 16'ha05f;
	#20
	A = 16'hb1b7;
	B = 16'ha62d;
	ans = 16'h1c69;
	#20
	A = 16'hb99c;
	B = 16'h368d;
	ans = 16'hb498;
	#20
	A = 16'hb987;
	B = 16'h38dd;
	ans = 16'hb6b8;
	#20
	A = 16'h2802;
	B = 16'h386b;
	ans = 16'h246d;
	#20
	A = 16'hb675;
	B = 16'h3ae3;
	ans = 16'hb58f;
	#20
	A = 16'hb911;
	B = 16'hb991;
	ans = 16'h370d;
	#20
	A = 16'h3acf;
	B = 16'hb823;
	ans = 16'hb70b;
	#20
	A = 16'h28ca;
	B = 16'hb9ea;
	ans = 16'ha715;
	#20
	A = 16'h38ee;
	B = 16'h2d5b;
	ans = 16'h2a9a;
	#20
	A = 16'h38a4;
	B = 16'h3a30;
	ans = 16'h372e;
	#20
	A = 16'h3a8c;
	B = 16'h3104;
	ans = 16'h301b;
	#20
	A = 16'h2749;
	B = 16'hbb85;
	ans = 16'ha6d9;
	#20
	A = 16'h35a4;
	B = 16'hb43e;
	ans = 16'hadfb;
	#20
	A = 16'hbaec;
	B = 16'hbb4c;
	ans = 16'h3a50;
	#20
	A = 16'h3a83;
	B = 16'hb430;
	ans = 16'hb2d1;
	#20
	A = 16'hb9b5;
	B = 16'hbb61;
	ans = 16'h3944;
	#20
	A = 16'hb8fa;
	B = 16'h3913;
	ans = 16'hb650;
	#20
	A = 16'h3b6c;
	B = 16'hb9b3;
	ans = 16'hb94a;
	#20
	A = 16'hbb91;
	B = 16'h3804;
	ans = 16'hb799;
	#20
	A = 16'hb41c;
	B = 16'hbab0;
	ans = 16'h32df;
	#20
	A = 16'hb66b;
	B = 16'hb86d;
	ans = 16'h331a;
	#20
	A = 16'hb63d;
	B = 16'hbacd;
	ans = 16'h354e;
	#20
	A = 16'h2d78;
	B = 16'h3747;
	ans = 16'h28fa;
	#20
	A = 16'hb896;
	B = 16'ha987;
	ans = 16'h2656;
	#20
	A = 16'h3257;
	B = 16'hbaa8;
	ans = 16'hb146;
	#20
	A = 16'h2a70;
	B = 16'hb1d8;
	ans = 16'ha0b4;
	#20
	A = 16'hba2e;
	B = 16'h3472;
	ans = 16'hb2de;
	#20
	A = 16'hb40e;
	B = 16'h3349;
	ans = 16'hab62;
	#20
	A = 16'had06;
	B = 16'h3a4d;
	ans = 16'habea;
	#20
	A = 16'hbaf4;
	B = 16'hb95b;
	ans = 16'h38a8;
	#20
	A = 16'hb467;
	B = 16'hbaf0;
	ans = 16'h33a3;
	#20
	A = 16'hb45a;
	B = 16'h3a1e;
	ans = 16'hb2a8;
	#20
	A = 16'hb7a9;
	B = 16'hb7db;
	ans = 16'h3386;
	#20
	A = 16'ha932;
	B = 16'h3b3c;
	ans = 16'ha8b3;
	#20
	A = 16'h3514;
	B = 16'h3697;
	ans = 16'h302f;
	#20
	A = 16'hba74;
	B = 16'h381a;
	ans = 16'hb69e;
	#20
	A = 16'hb0cf;
	B = 16'h3b5f;
	ans = 16'hb06e;
	#20
	A = 16'hb833;
	B = 16'hb590;
	ans = 16'h31d7;
	#20
	A = 16'hb984;
	B = 16'hbbd2;
	ans = 16'h3964;
	#20
	A = 16'ha99f;
	B = 16'h370c;
	ans = 16'ha4f4;
	#20
	A = 16'hae5e;
	B = 16'hb9b7;
	ans = 16'h2c8c;
	#20
	A = 16'hb16a;
	B = 16'hb516;
	ans = 16'h2ae2;
	#20
	A = 16'hba6b;
	B = 16'hbbbb;
	ans = 16'h3a34;
	#20
	A = 16'hb6ec;
	B = 16'hb9d9;
	ans = 16'h350f;
	#20
	A = 16'hb9fd;
	B = 16'h3a81;
	ans = 16'hb8de;
	#20
	A = 16'h359f;
	B = 16'hb852;
	ans = 16'hb212;
	#20
	A = 16'hb83e;
	B = 16'hb62a;
	ans = 16'h328a;
	#20
	A = 16'hbbb8;
	B = 16'hb87d;
	ans = 16'h3855;
	#20
	A = 16'h30f2;
	B = 16'h98ef;
	ans = 16'h8e19;
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
