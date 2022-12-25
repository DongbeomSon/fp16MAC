module tb_fp16MAC;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg CLK;
	reg RESETn;
	reg [15:0] ans_reg;
	// Outputs
	reg [15:0] a,b,c,r;
	reg ans_m;
	wire  [15:0] acc, error;
	reg [15:0] ans_a;
	assign error = acc - r;

	// Instantiate the Unit Under Test (UUT)
	fp16MAC uut (
		.a(A), 
		.b(B), 
		.acc(acc), 
		.CLK(CLK), 
		.RESETn(RESETn)
	);

	initial begin
		// Initialize Inputs
	#50
	A = 16'hb77d;
	B = 16'hbeee;
	ans_a = 16'h3a7d;
	#20
	A = 16'hbdb9;
	B = 16'h3edd;
	ans_a = 16'hbe94;
	#20
	A = 16'h3b8f;
	B = 16'hbc7c;
	ans_a = 16'hc168;
	#20
	A = 16'h3ed9;
	B = 16'h3b01;
	ans_a = 16'hbcd1;
	#20
	A = 16'h34dc;
	B = 16'h3c4a;
	ans_a = 16'hbb07;
	#20
	A = 16'hbf38;
	B = 16'h3e43;
	ans_a = 16'hc368;
	#20
	A = 16'hbcd7;
	B = 16'hb035;
	ans_a = 16'hc317;
	#20
	A = 16'h3cbf;
	B = 16'hbca2;
	ans_a = 16'hc4eb;
	#20
	A = 16'h3fcf;
	B = 16'hbe46;
	ans_a = 16'hc7fb;
	#20
	A = 16'h3e39;
	B = 16'hb7bf;
	ans_a = 16'hc85e;
	#20
	A = 16'h3c45;
	B = 16'hbe47;
	ans_a = 16'hc934;
	#20
	A = 16'hb931;
	B = 16'hbfa1;
	ans_a = 16'hc896;
	#20
	A = 16'hbe04;
	B = 16'hba26;
	ans_a = 16'hc802;
	#20
	A = 16'h2ea2;
	B = 16'hbc6e;
	ans_a = 16'hc811;
	#20
	A = 16'h3320;
	B = 16'hb97a;
	ans_a = 16'hc825;
	#20
	A = 16'hbf2a;
	B = 16'hbd80;
	ans_a = 16'hc5d4;
	#20
	A = 16'h3f27;
	B = 16'hb5be;
	ans_a = 16'hc678;
	#20
	A = 16'hbe5e;
	B = 16'hb542;
	ans_a = 16'hc5f2;
	#20
	A = 16'hab0b;
	B = 16'h3da8;
	ans_a = 16'hc606;
	#20
	A = 16'h3d8f;
	B = 16'h385c;
	ans_a = 16'hc544;
	#20
	A = 16'h3738;
	B = 16'hbdf2;
	ans_a = 16'hc5f0;
	#20
	A = 16'h2ca1;
	B = 16'h3c5c;
	ans_a = 16'hc5dc;
	#20
	A = 16'hbf0f;
	B = 16'hbcc0;
	ans_a = 16'hc387;
	#20
	A = 16'h3d19;
	B = 16'hba03;
	ans_a = 16'hc4b9;
	#20
	A = 16'hbf37;
	B = 16'h3dc6;
	ans_a = 16'hc754;
	#20
	A = 16'hb06b;
	B = 16'hb78b;
	ans_a = 16'hc743;
	#20
	A = 16'h3f7d;
	B = 16'hbb63;
	ans_a = 16'hc87f;
	#20
	A = 16'hbddc;
	B = 16'hb818;
	ans_a = 16'hc81f;
	#20
	A = 16'h39c5;
	B = 16'haeb0;
	ans_a = 16'hc829;
	#20
	A = 16'hbc65;
	B = 16'hbeab;
	ans_a = 16'hc67d;
	#20
	A = 16'hb97f;
	B = 16'h393d;
	ans_a = 16'hc6f0;
	#20
	A = 16'h32ed;
	B = 16'h350a;
	ans_a = 16'hc6df;
	#20
	A = 16'hb6ed;
	B = 16'h3ed0;
	ans_a = 16'hc79c;
	#20
	A = 16'hbe36;
	B = 16'hbfef;
	ans_a = 16'hc488;
	#20
	A = 16'hbf34;
	B = 16'h39eb;
	ans_a = 16'hc5dd;
	#20
	A = 16'hbe6d;
	B = 16'hbef1;
	ans_a = 16'hc227;
	#20
	A = 16'hb211;
	B = 16'h3543;
	ans_a = 16'hc247;
	#20
	A = 16'ha744;
	B = 16'hbc0b;
	ans_a = 16'hc238;
	#20
	A = 16'h3d71;
	B = 16'hb948;
	ans_a = 16'hc402;
	#20
	A = 16'h3208;
	B = 16'hb361;
	ans_a = 16'hc40d;
	#20
	A = 16'h3d4c;
	B = 16'haddd;
	ans_a = 16'hc42c;
	#20
	A = 16'hba6f;
	B = 16'hbb79;
	ans_a = 16'hc2d8;
	#20
	A = 16'hbfaa;
	B = 16'hbec2;
	ans_a = 16'hb1f0;
	#20
	A = 16'hbf30;
	B = 16'h3892;
	ans_a = 16'hbcd9;
	#20
	A = 16'hb226;
	B = 16'h311b;
	ans_a = 16'hbcf8;
	#20
	A = 16'h3c6e;
	B = 16'hbd48;
	ans_a = 16'hc168;
	#20
	A = 16'hbe28;
	B = 16'hbe83;
	ans_a = 16'hb250;
	#20
	A = 16'hbdfc;
	B = 16'h3d17;
	ans_a = 16'hc034;
	#20
	A = 16'hbd90;
	B = 16'h38d1;
	ans_a = 16'hc1e1;
	#20
	A = 16'hb072;
	B = 16'hb6be;
	ans_a = 16'hc1c3;
	#20
	A = 16'hbf0c;
	B = 16'h3f00;
	ans_a = 16'hc5f6;
	#20
	A = 16'hbad6;
	B = 16'h34d4;
	ans_a = 16'hc638;
	#20
	A = 16'hbe8f;
	B = 16'hbdbc;
	ans_a = 16'hc3bc;
	#20
	A = 16'hbfbf;
	B = 16'h3bb9;
	ans_a = 16'hc5bc;
	#20
	A = 16'hbfc3;
	B = 16'hbfaa;
	ans_a = 16'hc008;
	#20
	A = 16'h3f69;
	B = 16'hbeef;
	ans_a = 16'hc53a;
	#20
	A = 16'hada6;
	B = 16'hb60c;
	ans_a = 16'hc531;
	#20
	A = 16'h262a;
	B = 16'hbcdd;
	ans_a = 16'hc538;
	#20
	A = 16'hbe4d;
	B = 16'h2d52;
	ans_a = 16'hc55a;
	#20
	A = 16'hafeb;
	B = 16'hb7fb;
	ans_a = 16'hc54a;
	#20
	A = 16'hbaff;
	B = 16'hbde6;
	ans_a = 16'hc400;
	#20
	A = 16'h3776;
	B = 16'h29bf;
	ans_a = 16'hc3f5;
	#20
	A = 16'hbf05;
	B = 16'h3e98;
	ans_a = 16'hc6df;
	#20
	A = 16'h37b8;
	B = 16'h3d96;
	ans_a = 16'hc632;
	#20
	A = 16'h3c07;
	B = 16'hb849;
	ans_a = 16'hc6bc;
	#20
	A = 16'h3e1a;
	B = 16'hb9ef;
	ans_a = 16'hc7de;
	#20
	A = 16'h39d5;
	B = 16'hb89b;
	ans_a = 16'hc825;
	#20
	A = 16'hbfb5;
	B = 16'h37bb;
	ans_a = 16'hc89c;
	#20
	A = 16'hbf9e;
	B = 16'h397f;
	ans_a = 16'hc944;
	#20
	A = 16'h3e39;
	B = 16'h3be2;
	ans_a = 16'hc880;
	#20
	A = 16'hbb88;
	B = 16'hb095;
	ans_a = 16'hc86f;
	#20
	A = 16'hbcba;
	B = 16'h3d84;
	ans_a = 16'hc940;
	#20
	A = 16'hb7ef;
	B = 16'h2cea;
	ans_a = 16'hc945;
	#20
	A = 16'h3953;
	B = 16'hbc98;
	ans_a = 16'hc9a7;
	#20
	A = 16'h312b;
	B = 16'h3fdf;
	ans_a = 16'hc97e;
	#20
	A = 16'h3eec;
	B = 16'hb789;
	ans_a = 16'hc9e6;
	#20
	A = 16'hbf98;
	B = 16'hbea3;
	ans_a = 16'hc853;
	#20
	A = 16'h3f9a;
	B = 16'hbb99;
	ans_a = 16'hc93a;
	#20
	A = 16'hbab0;
	B = 16'h3ceb;
	ans_a = 16'hc9be;
	#20
	A = 16'hb33f;
	B = 16'hbeb2;
	ans_a = 16'hc98e;
	#20
	A = 16'hbfe7;
	B = 16'h3bc6;
	ans_a = 16'hca84;
	#20
	A = 16'h3a09;
	B = 16'h2202;
	ans_a = 16'hca83;
	#20
	A = 16'h3fd4;
	B = 16'h3d9c;
	ans_a = 16'hc924;
	#20
	A = 16'h3906;
	B = 16'hbd09;
	ans_a = 16'hc989;
	#20
	A = 16'h3ae9;
	B = 16'h3d9c;
	ans_a = 16'hc8ee;
	#20
	A = 16'hb067;
	B = 16'h3ef4;
	ans_a = 16'hc90d;
	#20
	A = 16'h3dc4;
	B = 16'hbbcd;
	ans_a = 16'hc9c1;
	#20
	A = 16'hbeeb;
	B = 16'hbfbf;
	ans_a = 16'hc814;
	#20
	A = 16'h3ee8;
	B = 16'h2d3a;
	ans_a = 16'hc802;
	#20
	A = 16'h3cad;
	B = 16'h3a95;
	ans_a = 16'hc70e;
	#20
	A = 16'hbae1;
	B = 16'h3cad;
	ans_a = 16'hc808;
	#20
	A = 16'hac37;
	B = 16'h3d7b;
	ans_a = 16'hc814;
	#20
	A = 16'hb4c3;
	B = 16'h3a1d;
	ans_a = 16'hc831;
	#20
	A = 16'h3f98;
	B = 16'h3887;
	ans_a = 16'hc74f;
	#20
	A = 16'h3b2f;
	B = 16'h3bff;
	ans_a = 16'hc669;
	#20
	A = 16'hba44;
	B = 16'hb8c9;
	ans_a = 16'hc5f1;
	#20
	A = 16'hb3d4;
	B = 16'hbfce;
	ans_a = 16'hc577;
	#20
	A = 16'hb4ba;
	B = 16'hbce0;
	ans_a = 16'hc51b;
	#20
	A = 16'hbcb3;
	B = 16'hbe2c;
	ans_a = 16'hc296;
	#20
	A = 16'h31f5;
	B = 16'h3d1a;
	ans_a = 16'hc21c;
	#20
	A = 16'hbe4f;
	B = 16'h3cde;
	ans_a = 16'hc4f9;
	#20
	A = 16'hbff3;
	B = 16'hbb89;
	ans_a = 16'hc234;
	#20
	A = 16'h3c10;
	B = 16'hbe66;
	ans_a = 16'hc4ba;
	#20
	A = 16'hb570;
	B = 16'h3d48;
	ans_a = 16'hc52d;
	#20
	A = 16'hbf69;
	B = 16'h3e66;
	ans_a = 16'hc812;
	#20
	A = 16'hb88b;
	B = 16'hb5e7;
	ans_a = 16'hc7ee;
	#20
	A = 16'hb719;
	B = 16'h3872;
	ans_a = 16'hc817;
	#20
	A = 16'hbe9b;
	B = 16'h2b9e;
	ans_a = 16'hc824;
	#20
	A = 16'h35fa;
	B = 16'hbb09;
	ans_a = 16'hc84e;
	#20
	A = 16'hbe60;
	B = 16'h3d7f;
	ans_a = 16'hc966;
	#20
	A = 16'hbc60;
	B = 16'h3ee9;
	ans_a = 16'hca58;
	#20
	A = 16'hbc2e;
	B = 16'hbc75;
	ans_a = 16'hc9c3;
	#20
	A = 16'hbee4;
	B = 16'h3da6;
	ans_a = 16'hcafa;
	#20
	A = 16'h3e97;
	B = 16'h3ffc;
	ans_a = 16'hc955;
	#20
	A = 16'h3d7a;
	B = 16'hbfbd;
	ans_a = 16'hcaa8;
	#20
	A = 16'ha55a;
	B = 16'hbbc7;
	ans_a = 16'hcaa5;
	#20
	A = 16'h2169;
	B = 16'hbc10;
	ans_a = 16'hcaa6;
	#20
	A = 16'hb9af;
	B = 16'h3b82;
	ans_a = 16'hcafb;
	#20
	A = 16'hb89e;
	B = 16'hbeed;
	ans_a = 16'hca7b;
	#20
	A = 16'hbeb0;
	B = 16'hbb79;
	ans_a = 16'hc9b3;
	#20
	A = 16'hacb8;
	B = 16'hb95d;
	ans_a = 16'hc9ad;
	#20
	A = 16'hbccf;
	B = 16'h3ee5;
	ans_a = 16'hcab6;
	#20
	A = 16'hbb58;
	B = 16'h29f9;
	ans_a = 16'hcabb;
	#20
	A = 16'hbe9a;
	B = 16'h3ee0;
	ans_a = 16'hcc13;
	#20
	A = 16'h2dae;
	B = 16'hbf1b;
	ans_a = 16'hcc1d;
	#20
	A = 16'hb785;
	B = 16'hbd90;
	ans_a = 16'hcbe6;
	#20
	A = 16'h3f58;
	B = 16'hbaaf;
	ans_a = 16'hcc55;
	#20
	A = 16'hab0b;
	B = 16'hbfb2;
	ans_a = 16'hcc4e;
	#20
	A = 16'hbf91;
	B = 16'h3cb1;
	ans_a = 16'hccdc;
	#20
	A = 16'h3f52;
	B = 16'hb9fa;
	ans_a = 16'hcd34;
	#20
	A = 16'haf72;
	B = 16'hbafa;
	ans_a = 16'hcd2e;
	#20
	A = 16'h3f26;
	B = 16'h3f80;
	ans_a = 16'hcc58;
	#20
	A = 16'h3429;
	B = 16'hb38f;
	ans_a = 16'hcc5c;
	#20
	A = 16'h3e6b;
	B = 16'h3b4d;
	ans_a = 16'hcbfd;
	#20
	A = 16'hb9c1;
	B = 16'hbf9b;
	ans_a = 16'hcb4e;
	#20
	A = 16'hbc21;
	B = 16'hbb04;
	ans_a = 16'hcada;
	#20
	A = 16'hbe70;
	B = 16'hb854;
	ans_a = 16'hca6b;
	#20
	A = 16'h3f34;
	B = 16'haf3c;
	ans_a = 16'hca85;
	#20
	A = 16'hb931;
	B = 16'hbda7;
	ans_a = 16'hca10;
	#20
	A = 16'hb980;
	B = 16'h37d4;
	ans_a = 16'hca3b;
	#20
	A = 16'h3fcd;
	B = 16'h31d5;
	ans_a = 16'hca0e;
	#20
	A = 16'h3cb8;
	B = 16'h3fa7;
	ans_a = 16'hc8ed;
	#20
	A = 16'hbe1b;
	B = 16'h3219;
	ans_a = 16'hc912;
	#20
	A = 16'hbff4;
	B = 16'hb94e;
	ans_a = 16'hc869;
	#20
	A = 16'h37d9;
	B = 16'hb405;
	ans_a = 16'hc879;
	#20
	A = 16'hbfaf;
	B = 16'hbfbd;
	ans_a = 16'hc53a;
	#20
	A = 16'h3d3d;
	B = 16'hb318;
	ans_a = 16'hc584;
	#20
	A = 16'hbc1f;
	B = 16'h3ffc;
	ans_a = 16'hc792;
	#20
	A = 16'h3d87;
	B = 16'h3c0c;
	ans_a = 16'hc62c;
	#20
	A = 16'h3e6d;
	B = 16'hb0cc;
	ans_a = 16'hc66a;
	#20
	A = 16'hb491;
	B = 16'hbc7f;
	ans_a = 16'hc618;
	#20
	A = 16'h38ec;
	B = 16'hb1e2;
	ans_a = 16'hc635;
	#20
	A = 16'hbd53;
	B = 16'hb72c;
	ans_a = 16'hc59c;
	#20
	A = 16'h39d6;
	B = 16'h3b71;
	ans_a = 16'hc4ee;
	#20
	A = 16'hbb36;
	B = 16'h3c34;
	ans_a = 16'hc5e0;
	#20
	A = 16'hb5f9;
	B = 16'h3864;
	ans_a = 16'hc614;
	#20
	A = 16'h3796;
	B = 16'hba5a;
	ans_a = 16'hc674;
	#20
	A = 16'h3bc7;
	B = 16'hbaf1;
	ans_a = 16'hc74c;
	#20
	A = 16'hbc66;
	B = 16'hb5c0;
	ans_a = 16'hc6e7;
	#20
	A = 16'h3782;
	B = 16'h39a7;
	ans_a = 16'hc692;
	#20
	A = 16'h3644;
	B = 16'h3c2a;
	ans_a = 16'hc62a;
	#20
	A = 16'hbe5e;
	B = 16'hb519;
	ans_a = 16'hc5a8;
	#20
	A = 16'h3cda;
	B = 16'h3da2;
	ans_a = 16'hc3e6;
	#20
	A = 16'h3ab2;
	B = 16'hb55a;
	ans_a = 16'hc43b;
	#20
	A = 16'h3985;
	B = 16'hbd3d;
	ans_a = 16'hc522;
	#20
	A = 16'h2c3f;
	B = 16'hbf4e;
	ans_a = 16'hc541;
	#20
	A = 16'h3ab1;
	B = 16'h3dfb;
	ans_a = 16'hc401;
	#20
	A = 16'hbcff;
	B = 16'hbe0c;
	ans_a = 16'hc03c;
	#20
	A = 16'hbe46;
	B = 16'hbf07;
	ans_a = 16'h391c;
	#20
	A = 16'hb8e7;
	B = 16'h3c6a;
	ans_a = 16'ha8d0;
	#20
	A = 16'h3d37;
	B = 16'hb7f0;
	ans_a = 16'hb97a;
	#20
	A = 16'h3d4e;
	B = 16'h3e72;
	ans_a = 16'h3dcf;
	#20
	A = 16'h34fb;
	B = 16'hb50e;
	ans_a = 16'h3d6a;
	#20
	A = 16'h34c0;
	B = 16'h3e87;
	ans_a = 16'h3f5a;
	#20
	A = 16'hbbd7;
	B = 16'hbf3a;
	ans_a = 16'h4338;
	#20
	A = 16'ha312;
	B = 16'hbaf6;
	ans_a = 16'h433e;
	#20
	A = 16'h3c86;
	B = 16'hbd00;
	ans_a = 16'h406a;
	#20
	A = 16'hbd83;
	B = 16'hb7de;
	ans_a = 16'h41c5;
	#20
	A = 16'hb72a;
	B = 16'hbc1d;
	ans_a = 16'h42b1;
	#20
	A = 16'h3ced;
	B = 16'hbcd2;
	ans_a = 16'h3f72;
	#20
	A = 16'hbe3a;
	B = 16'h3c9a;
	ans_a = 16'h2c80;
	#20
	A = 16'h372a;
	B = 16'h37d8;
	ans_a = 16'h34a3;
	#20
	A = 16'h3e39;
	B = 16'h3e28;
	ans_a = 16'h415e;
	#20
	A = 16'hbac3;
	B = 16'h3f1f;
	ans_a = 16'h3cb7;
	#20
	A = 16'hbe02;
	B = 16'h3ef0;
	ans_a = 16'hbdb5;
	#20
	A = 16'hba45;
	B = 16'h3b53;
	ans_a = 16'hc04a;
	#20
	A = 16'hbf5b;
	B = 16'h38a7;
	ans_a = 16'hc26e;
	#20
	A = 16'h3e49;
	B = 16'h3ccf;
	ans_a = 16'hbd4e;
	#20
	A = 16'h3f8d;
	B = 16'h3db7;
	ans_a = 16'h3d7c;
	#20
	A = 16'hbfc5;
	B = 16'hb69b;
	ans_a = 16'h4058;
	#20
	A = 16'hbfb8;
	B = 16'h2b10;
	ans_a = 16'h4022;
	#20
	A = 16'h2b02;
	B = 16'hbed6;
	ans_a = 16'h3fe4;
	#20
	A = 16'hbc9f;
	B = 16'h32fa;
	ans_a = 16'h3ee2;
	#20
	A = 16'hbd24;
	B = 16'h3d8f;
	ans_a = 16'hac30;
	#20
	A = 16'h3da4;
	B = 16'h3f4d;
	ans_a = 16'h4104;
	#20
	A = 16'hb829;
	B = 16'hbc2a;
	ans_a = 16'h4219;
	#20
	A = 16'h3c3c;
	B = 16'hb936;
	ans_a = 16'h40b8;
	#20
	A = 16'hbdd9;
	B = 16'hbd35;
	ans_a = 16'h4443;
	#20
	A = 16'h34fc;
	B = 16'h3c2a;
	ans_a = 16'h4496;
	#20
	A = 16'h3e08;
	B = 16'hbdf9;
	ans_a = 16'h40ab;
	#20
	A = 16'h3eb3;
	B = 16'hbc7b;
	ans_a = 16'h3754;
	#20
	A = 16'hbdb6;
	B = 16'h388a;
	ans_a = 16'hb5a2;
	#20
	A = 16'h3f9c;
	B = 16'hbcea;
	ans_a = 16'hc161;
	#20
	A = 16'h3f56;
	B = 16'h3f14;
	ans_a = 16'h3874;
	#20
	A = 16'h3f44;
	B = 16'hbae1;
	ans_a = 16'hbc05;
	#20
	A = 16'hb67e;
	B = 16'hbd00;
	ans_a = 16'hb7f6;
	#20
	A = 16'hbf76;
	B = 16'h3de5;
	ans_a = 16'hc27e;
	#20
	A = 16'h3e59;
	B = 16'hbe7b;
	ans_a = 16'hc5d1;
	#20
	A = 16'hb497;
	B = 16'h2aac;
	ans_a = 16'hc5d5;
	#20
	A = 16'h2cde;
	B = 16'h38af;
	ans_a = 16'hc5ca;
	#20
	A = 16'hb120;
	B = 16'h3e9c;
	ans_a = 16'hc60e;
	#20
	A = 16'h3b41;
	B = 16'h3ca2;
	ans_a = 16'hc501;
	#20
	A = 16'h3756;
	B = 16'hbd32;
	ans_a = 16'hc59a;
	#20
	A = 16'hbd44;
	B = 16'hbf3b;
	ans_a = 16'hc272;
	#20
	A = 16'hb867;
	B = 16'h3a2e;
	ans_a = 16'hc34c;
	#20
	A = 16'h3dd5;
	B = 16'hbbd8;
	ans_a = 16'hc514;
	#20
	A = 16'h3e04;
	B = 16'hbf7a;
	ans_a = 16'hc7e4;
	#20
	A = 16'h387b;
	B = 16'h3c14;
	ans_a = 16'hc752;
	#20
	A = 16'h3c09;
	B = 16'hbf5d;
	ans_a = 16'hc897;
	#20
	A = 16'h392c;
	B = 16'h3a45;
	ans_a = 16'hc856;
	#20
	A = 16'h3ded;
	B = 16'hbdb9;
	ans_a = 16'hc965;
	#20
	A = 16'h3fa1;
	B = 16'h2e27;
	ans_a = 16'hc94e;
	#20
	A = 16'h311d;
	B = 16'h3c1b;
	ans_a = 16'hc939;
	#20
	A = 16'hbdaa;
	B = 16'hb252;
	ans_a = 16'hc915;
	#20
	A = 16'hbf7b;
	B = 16'hbd45;
	ans_a = 16'hc7b4;
	#20
	A = 16'hbcf7;
	B = 16'h3c3b;
	ans_a = 16'hc882;
	#20
	A = 16'h3c95;
	B = 16'h3e3b;
	ans_a = 16'hc73b;
	#20
	A = 16'h37d7;
	B = 16'hbbe1;
	ans_a = 16'hc7b7;
	#20
	A = 16'hbc09;
	B = 16'h345b;
	ans_a = 16'hc7fd;
	#20
	A = 16'hbac9;
	B = 16'hb0a0;
	ans_a = 16'hc7de;
	#20
	A = 16'h3b3b;
	B = 16'h3fa4;
	ans_a = 16'hc624;
	#20
	A = 16'h3e6f;
	B = 16'h3be5;
	ans_a = 16'hc48e;
	#20
	A = 16'hbc66;
	B = 16'h3c3c;
	ans_a = 16'hc5b8;
	#20
	A = 16'h39c2;
	B = 16'hbd91;
	ans_a = 16'hc6b8;
	#20
	A = 16'hbd67;
	B = 16'h3a6e;
	ans_a = 16'hc7ce;
	#20
	A = 16'h3dc4;
	B = 16'h3ea6;
	ans_a = 16'hc568;
	#20
	A = 16'hbaf1;
	B = 16'h3efe;
	ans_a = 16'hc6ec;
	#20
	A = 16'h3e7e;
	B = 16'hb8a1;
	ans_a = 16'hc7dc;
	#20
	A = 16'h3f4f;
	B = 16'hbc8c;
	ans_a = 16'hc8f8;
	#20
	A = 16'hbf9d;
	B = 16'hb6ac;
	ans_a = 16'hc892;
	#20
	A = 16'hbb1a;
	B = 16'hbbdf;
	ans_a = 16'hc822;
	#20
	A = 16'hbd22;
	B = 16'hb09e;
	ans_a = 16'hc80a;
	#20
	A = 16'h3c83;
	B = 16'hba1e;
	ans_a = 16'hc878;
	#20
	A = 16'hbc21;
	B = 16'h3d09;
	ans_a = 16'hc91e;
	#20
	A = 16'hbe1e;
	B = 16'h3025;
	ans_a = 16'hc937;
	#20
	A = 16'hb56b;
	B = 16'h39a7;
	ans_a = 16'hc956;
	#20
	A = 16'h3e0d;
	B = 16'h3e3c;
	ans_a = 16'hc828;
	#20
	A = 16'hbfcc;
	B = 16'h2fc3;
	ans_a = 16'hc846;
	#20
	A = 16'hb553;
	B = 16'hbfdd;
	ans_a = 16'hc7e4;
	#20
	A = 16'h346b;
	B = 16'hba99;
	ans_a = 16'hc80f;
	#20
	A = 16'hb83f;
	B = 16'hac29;
	ans_a = 16'hc80b;
	#20
	A = 16'ha88b;
	B = 16'hbfb7;
	ans_a = 16'hc802;
	#20
	A = 16'h3e2e;
	B = 16'hba86;
	ans_a = 16'hc8a3;
	#20
	A = 16'h3994;
	B = 16'h303f;
	ans_a = 16'hc897;
	#20
	A = 16'hbdeb;
	B = 16'hb4de;
	ans_a = 16'hc85d;
	#20
	A = 16'hb9c4;
	B = 16'hbf34;
	ans_a = 16'hc76e;
	#20
	A = 16'hb0ad;
	B = 16'h397a;
	ans_a = 16'hc788;
	#20
	A = 16'h3284;
	B = 16'h3b93;
	ans_a = 16'hc757;
	#20
	A = 16'h38e6;
	B = 16'hbeb8;
	ans_a = 16'hc82f;
	#20
	A = 16'h3d93;
	B = 16'h3d80;
	ans_a = 16'hc674;
	#20
	A = 16'h3cde;
	B = 16'h3864;
	ans_a = 16'hc5c9;
	#20
	A = 16'hbf3a;
	B = 16'h3e8c;
	ans_a = 16'hc85f;
	#20
	A = 16'hb9c9;
	B = 16'h37c5;
	ans_a = 16'hc88c;
	#20
	A = 16'h3e50;
	B = 16'hbb0f;
	ans_a = 16'hc93e;
	#20
	A = 16'hbcbc;
	B = 16'h3e75;
	ans_a = 16'hca32;
	#20
	A = 16'hbc3e;
	B = 16'hbe70;
	ans_a = 16'hc958;
	#20
	A = 16'h3e04;
	B = 16'h35f8;
	ans_a = 16'hc910;
	#20
	A = 16'h3d13;
	B = 16'hbd08;
	ans_a = 16'hc9dc;
	#20
	A = 16'h35c3;
	B = 16'h39cf;
	ans_a = 16'hc9bb;
	#20
	A = 16'hbd38;
	B = 16'h3c3c;
	ans_a = 16'hca6c;
	#20
	A = 16'hbdc0;
	B = 16'hbdc9;
	ans_a = 16'hc962;
	#20
	A = 16'h3a0a;
	B = 16'hb5c7;
	ans_a = 16'hc985;
	#20
	A = 16'ha6c0;
	B = 16'hb7a1;
	ans_a = 16'hc983;
	#20
	A = 16'hbaff;
	B = 16'h35e1;
	ans_a = 16'hc9ac;
	#20
	A = 16'hbc81;
	B = 16'h3d56;
	ans_a = 16'hca6c;
	#20
	A = 16'hbf70;
	B = 16'hbf99;
	ans_a = 16'hc8a8;
	#20
	A = 16'h3fd4;
	B = 16'h3cfb;
	ans_a = 16'hc6e0;
	#20
	A = 16'h382c;
	B = 16'h3c86;
	ans_a = 16'hc649;
	#20
	A = 16'h3b52;
	B = 16'hbe7b;
	ans_a = 16'hc7c4;
	#20
	A = 16'h38f5;
	B = 16'h3cd0;
	ans_a = 16'hc705;
	#20
	A = 16'h386e;
	B = 16'h39dc;
	ans_a = 16'hc69d;
	#20
	A = 16'h3f58;
	B = 16'hb9ea;
	ans_a = 16'hc7f8;
	#20
	A = 16'hbd23;
	B = 16'hbce7;
	ans_a = 16'hc665;
	#20
	A = 16'h3ff8;
	B = 16'hbfb0;
	ans_a = 16'hc91c;
	#20
	A = 16'h3b16;
	B = 16'hbbe9;
	ans_a = 16'hc98c;
	#20
	A = 16'hbcc0;
	B = 16'hbffb;
	ans_a = 16'hc85d;
	#20
	A = 16'h3cdb;
	B = 16'h3f48;
	ans_a = 16'hc684;
	#20
	A = 16'h3c62;
	B = 16'hbdce;
	ans_a = 16'hc80e;
	#20
	A = 16'h344c;
	B = 16'hbc25;
	ans_a = 16'hc832;
	#20
	A = 16'hbcc4;
	B = 16'h3d71;
	ans_a = 16'hc902;
	#20
	A = 16'hb47e;
	B = 16'hb3f5;
	ans_a = 16'hc8f9;
	#20
	A = 16'hba1f;
	B = 16'h35bf;
	ans_a = 16'hc91c;
	#20
	A = 16'h3d22;
	B = 16'hb52f;
	ans_a = 16'hc951;
	#20
	A = 16'h3b67;
	B = 16'h3c46;
	ans_a = 16'hc8d2;
	#20
	A = 16'h3df3;
	B = 16'hbda6;
	ans_a = 16'hc9df;
	#20
	A = 16'h3e6c;
	B = 16'hbce6;
	ans_a = 16'hcadb;
	#20
	A = 16'h3a6b;
	B = 16'haf88;
	ans_a = 16'hcae7;
	#20
	A = 16'h3c6b;
	B = 16'h3c4a;
	ans_a = 16'hca4f;
	#20
	A = 16'h3c85;
	B = 16'h3a3a;
	ans_a = 16'hc9de;
	#20
	A = 16'h3b9f;
	B = 16'h39f8;
	ans_a = 16'hc983;
	#20
	A = 16'hbe7f;
	B = 16'hbc2b;
	ans_a = 16'hc8aa;
	#20
	A = 16'hb894;
	B = 16'h3c3d;
	ans_a = 16'hc8f8;
	#20
	A = 16'hb273;
	B = 16'hbecb;
	ans_a = 16'hc8cc;
	#20
	A = 16'h3818;
	B = 16'h3f5f;
	ans_a = 16'hc853;
	#20
	A = 16'hb759;
	B = 16'h39ff;
	ans_a = 16'hc87f;
	#20
	A = 16'h3e4e;
	B = 16'hbdfc;
	ans_a = 16'hc9ad;
	#20
	A = 16'h391c;
	B = 16'h3e19;
	ans_a = 16'hc930;
	#20
	A = 16'h3e99;
	B = 16'h3f58;
	ans_a = 16'hc759;
	#20
	A = 16'hbd67;
	B = 16'hbd1c;
	ans_a = 16'hc59f;
	#20
	A = 16'h3910;
	B = 16'h3795;
	ans_a = 16'hc552;
	#20
	A = 16'h3c59;
	B = 16'h3efe;
	ans_a = 16'hc2d7;
	#20
	A = 16'hbbb3;
	B = 16'h3880;
	ans_a = 16'hc3ec;
	#20
	A = 16'hbcd4;
	B = 16'h3e2b;
	ans_a = 16'hc5d2;
	#20
	A = 16'h3c23;
	B = 16'h3f6f;
	ans_a = 16'hc3cc;
	#20
	A = 16'hb683;
	B = 16'ha7f4;
	ans_a = 16'hc3c6;
	#20
	A = 16'h3287;
	B = 16'hbd21;
	ans_a = 16'hc426;
	#20
	A = 16'h3e9c;
	B = 16'h3ef7;
	ans_a = 16'hbd16;
	#20
	A = 16'h3e09;
	B = 16'h394a;
	ans_a = 16'hb462;
	#20
	A = 16'hbaef;
	B = 16'hb6d5;
	ans_a = 16'h2e28;
	#20
	A = 16'h3e50;
	B = 16'hbb55;
	ans_a = 16'hbd66;
	#20
	A = 16'hbd8a;
	B = 16'hb96d;
	ans_a = 16'hb692;
	#20
	A = 16'h3cce;
	B = 16'hb731;
	ans_a = 16'hbb9b;
	#20
	A = 16'h31f7;
	B = 16'h2f55;
	ans_a = 16'hbb6f;
	#20
	A = 16'hb817;
	B = 16'hbde5;
	ans_a = 16'hb1a0;
	#20
	A = 16'hbb14;
	B = 16'h39f9;
	ans_a = 16'hbab1;
	#20
	A = 16'h38d5;
	B = 16'hbf8f;
	ans_a = 16'hbfea;
	#20
	A = 16'hbdc2;
	B = 16'hbdff;
	ans_a = 16'h31c0;
	#20
	A = 16'h3a54;
	B = 16'hb0e8;
	ans_a = 16'h2b7a;
	#20
	A = 16'ha4c7;
	B = 16'hb833;
	ans_a = 16'h2c5e;
	#20
	A = 16'h3eef;
	B = 16'hb711;
	ans_a = 16'hb994;
	#20
	A = 16'hbb7f;
	B = 16'h3fd6;
	ans_a = 16'hc111;
	#20
	A = 16'hbd57;
	B = 16'h3b78;
	ans_a = 16'hc38f;
	#20
	A = 16'h3fba;
	B = 16'h3ffd;
	ans_a = 16'h2d00;
	#20
	A = 16'h3fbe;
	B = 16'h386a;
	ans_a = 16'h3c96;
	#20
	A = 16'h3739;
	B = 16'hac3e;
	ans_a = 16'h3c77;
	#20
	A = 16'hbe9f;
	B = 16'h3d5e;
	ans_a = 16'hbc6b;
	#20
	A = 16'h22bd;
	B = 16'h3f6c;
	ans_a = 16'hbc52;
	#20
	A = 16'h3e78;
	B = 16'h3ec3;
	ans_a = 16'h3e9e;
	#20
	A = 16'h3fb0;
	B = 16'h3c25;
	ans_a = 16'h434a;
	#20
	A = 16'hbd4f;
	B = 16'h37ec;
	ans_a = 16'h41fa;
	#20
	A = 16'h386f;
	B = 16'h3fa6;
	ans_a = 16'h440c;
	#20
	A = 16'hb9b0;
	B = 16'h33e5;
	ans_a = 16'h43be;
	#20
	A = 16'hb83f;
	B = 16'h3889;
	ans_a = 16'h4324;
	#20
	A = 16'hbdf3;
	B = 16'hbddd;
	ans_a = 16'h45c0;
	#20
	A = 16'hb8e7;
	B = 16'h3d5e;
	ans_a = 16'h44ee;
	#20
	A = 16'h3eb5;
	B = 16'h2da5;
	ans_a = 16'h4514;
	#20
	A = 16'hbd60;
	B = 16'h2c16;
	ans_a = 16'h44fe;
	#20
	A = 16'h3ec5;
	B = 16'hbf88;
	ans_a = 16'h3f3a;
	#20
	A = 16'h3fd2;
	B = 16'hb862;
	ans_a = 16'h39e2;
	#20
	A = 16'hbc2d;
	B = 16'h3109;
	ans_a = 16'h3892;
	#20
	A = 16'h39cc;
	B = 16'hbedf;
	ans_a = 16'hb964;
	#20
	A = 16'h30a7;
	B = 16'hba8c;
	ans_a = 16'hba58;
	#20
	A = 16'hbc35;
	B = 16'h3c15;
	ans_a = 16'hbf77;
	#20
	A = 16'hb7b1;
	B = 16'hbcff;
	ans_a = 16'hbd10;
	#20
	A = 16'hbb6b;
	B = 16'hb905;
	ans_a = 16'hb978;
	#20
	A = 16'hbfdb;
	B = 16'h3ba0;
	ans_a = 16'hc11c;
	#20
	A = 16'hb9d5;
	B = 16'hbf6a;
	ans_a = 16'hbcd0;
	#20
	A = 16'ha2e5;
	B = 16'h27c1;
	ans_a = 16'hbcd0;
	#20
	A = 16'h355f;
	B = 16'h3d95;
	ans_a = 16'hb9e0;
	#20
	A = 16'h3bec;
	B = 16'hac2c;
	ans_a = 16'hba64;
	#20
	A = 16'hbb50;
	B = 16'h3f8f;
	ans_a = 16'hc10e;
	#20
	A = 16'h3ebb;
	B = 16'h3c43;
	ans_a = 16'hb9e0;
	#20
	A = 16'h38d4;
	B = 16'h3814;
	ans_a = 16'hb6d4;
	#20
	A = 16'hb0bc;
	B = 16'hbd07;
	ans_a = 16'hb3b5;
	#20
	A = 16'hb9fa;
	B = 16'h2e29;
	ans_a = 16'hb501;
	#20
	A = 16'hb5a2;
	B = 16'h3ae8;
	ans_a = 16'hb8ef;
	#20
	A = 16'hbf63;
	B = 16'hb57f;
	ans_a = 16'h2480;
	#20
	A = 16'haf2c;
	B = 16'hbfc1;
	ans_a = 16'h3384;
	#20
	A = 16'h2ad6;
	B = 16'h3dd9;
	ans_a = 16'h3502;
	#20
	A = 16'haa16;
	B = 16'hb27e;
	ans_a = 16'h352a;
	#20
	A = 16'h3f34;
	B = 16'h3872;
	ans_a = 16'h3d4c;
	#20
	A = 16'h367b;
	B = 16'h3b62;
	ans_a = 16'h3ecb;
	#20
	A = 16'h3b9f;
	B = 16'hb128;
	ans_a = 16'h3e2e;
	#20
	A = 16'hb323;
	B = 16'hbeff;
	ans_a = 16'h3fbe;
	#20
	A = 16'hb8b3;
	B = 16'h3e09;
	ans_a = 16'h3c32;
	#20
	A = 16'h3f66;
	B = 16'h3d16;
	ans_a = 16'h42cd;
	#20
	A = 16'h3fd8;
	B = 16'ha82f;
	ans_a = 16'h42ac;
	#20
	A = 16'hb640;
	B = 16'h2b0c;
	ans_a = 16'h42a1;
	#20
	A = 16'h31d9;
	B = 16'hb89e;
	ans_a = 16'h426b;
	#20
	A = 16'h378f;
	B = 16'hbfe1;
	ans_a = 16'h408e;
	#20
	A = 16'h3539;
	B = 16'hbd39;
	ans_a = 16'h3f68;
	#20
	A = 16'h3980;
	B = 16'h3d9e;
	ans_a = 16'h41a2;
	#20
	A = 16'hbc79;
	B = 16'hbdec;
	ans_a = 16'h4479;
	#20
	A = 16'hb934;
	B = 16'hb747;
	ans_a = 16'h44c5;
	#20
	A = 16'hbdca;
	B = 16'hbce2;
	ans_a = 16'h4689;
	#20
	A = 16'h3c1b;
	B = 16'h31a3;
	ans_a = 16'h46b7;
	#20
	A = 16'hbdda;
	B = 16'h3977;
	ans_a = 16'h45b7;
	#20
	A = 16'hbea1;
	B = 16'h3e4c;
	ans_a = 16'h4236;
	#20
	A = 16'hb8d8;
	B = 16'h3919;
	ans_a = 16'h4170;
	#20
	A = 16'h3b47;
	B = 16'hb4b7;
	ans_a = 16'h40e7;
	#20
	A = 16'h3bab;
	B = 16'h30a7;
	ans_a = 16'h412e;
	#20
	A = 16'h3f46;
	B = 16'hbaa1;
	ans_a = 16'h3c55;
	#20
	A = 16'hbede;
	B = 16'h39b4;
	ans_a = 16'hb080;
	#20
	A = 16'h3866;
	B = 16'hbac5;
	ans_a = 16'hb8d9;
	#20
	A = 16'had13;
	B = 16'hb9e8;
	ans_a = 16'hb861;
	#20
	A = 16'hbe71;
	B = 16'hbeb7;
	ans_a = 16'h4050;
	#20
	A = 16'h3f8e;
	B = 16'hb9f0;
	ans_a = 16'h3a0a;
	#20
	A = 16'h3d96;
	B = 16'h3d93;
	ans_a = 16'h4167;
	#20
	A = 16'h3ee7;
	B = 16'hbd53;
	ans_a = 16'h3678;
	#20
	A = 16'hb5ef;
	B = 16'h3f4f;
	ans_a = 16'hb460;
	#20
	A = 16'hb370;
	B = 16'hb825;
	ans_a = 16'hb0e6;
	#20
	A = 16'hbebc;
	B = 16'h3dda;
	ans_a = 16'hc13b;
	#20
	A = 16'h3df8;
	B = 16'hb6f4;
	ans_a = 16'hc287;
	#20
	A = 16'hb87b;
	B = 16'hb997;
	ans_a = 16'hc1bf;
	#20
	A = 16'h374d;
	B = 16'h3990;
	ans_a = 16'hc11c;
	#20
	A = 16'hbd3e;
	B = 16'hbbfc;
	ans_a = 16'hbcfd;
	#20
	A = 16'h3984;
	B = 16'hbea3;
	ans_a = 16'hc0c8;
	#20
	A = 16'h3aaa;
	B = 16'h383f;
	ans_a = 16'hbfcb;
	#20
	A = 16'h35ac;
	B = 16'h3bee;
	ans_a = 16'hbe63;
	#20
	A = 16'h3f51;
	B = 16'h38ca;
	ans_a = 16'hb804;
	#20
	A = 16'h3e6d;
	B = 16'h3f4b;
	ans_a = 16'h40db;
	#20
	A = 16'h3f88;
	B = 16'h3d54;
	ans_a = 16'h44f0;
	#20
	A = 16'hac67;
	B = 16'h3d52;
	ans_a = 16'h44d9;
	#20
	A = 16'hb9ab;
	B = 16'hbfab;
	ans_a = 16'h4635;
	#20
	A = 16'hae96;
	B = 16'hbfe9;
	ans_a = 16'h4669;
	#20
	A = 16'h3872;
	B = 16'hbc3a;
	ans_a = 16'h45d3;
	#20
	A = 16'h1dd3;
	B = 16'hbe70;
	ans_a = 16'h45d1;
	#20
	A = 16'h3d4b;
	B = 16'h3f6c;
	ans_a = 16'h4823;
	#20
	A = 16'hbc1b;
	B = 16'hbfce;
	ans_a = 16'h4923;
	#20
	A = 16'hbe5c;
	B = 16'h3d25;
	ans_a = 16'h481d;
	#20
	A = 16'hba03;
	B = 16'h3d1d;
	ans_a = 16'h4744;
	#20
	A = 16'hba6a;
	B = 16'hba9f;
	ans_a = 16'h47ee;
	#20
	A = 16'h3ce9;
	B = 16'h34db;
	ans_a = 16'h4827;
	#20
	A = 16'h37db;
	B = 16'h3c9b;
	ans_a = 16'h486f;
	#20
	A = 16'h3f72;
	B = 16'h3ce9;
	ans_a = 16'h4994;
	#20
	A = 16'hb812;
	B = 16'h3eb6;
	ans_a = 16'h4927;
	#20
	A = 16'h3148;
	B = 16'hbd5b;
	ans_a = 16'h490b;
	#20
	A = 16'h3b11;
	B = 16'hafe0;
	ans_a = 16'h48fd;
	#20
	A = 16'h3f8e;
	B = 16'h3d25;
	ans_a = 16'h4a34;
	#20
	A = 16'h345d;
	B = 16'hbf45;
	ans_a = 16'h49f5;
	#20
	A = 16'hbfc0;
	B = 16'hbd94;
	ans_a = 16'h4b4f;
	#20
	A = 16'h3a97;
	B = 16'h3a64;
	ans_a = 16'h4ba3;
	#20
	A = 16'hbdb3;
	B = 16'hba32;
	ans_a = 16'h4c18;
	#20
	A = 16'hbce2;
	B = 16'hb204;
	ans_a = 16'h4c27;
	#20
	A = 16'hb183;
	B = 16'h3f7a;
	ans_a = 16'h4c12;
	#20
	A = 16'h3c37;
	B = 16'h3ea6;
	ans_a = 16'h4c82;
	#20
	A = 16'h3e6a;
	B = 16'hbe00;
	ans_a = 16'h4bd0;
	#20
	A = 16'hbc2f;
	B = 16'h27f3;
	ans_a = 16'h4bcc;
	#20
	A = 16'h3d9b;
	B = 16'hbc66;
	ans_a = 16'h4b07;
	#20
	A = 16'hb4d3;
	B = 16'h3fdc;
	ans_a = 16'h4abb;
	#20
	A = 16'h3509;
	B = 16'hb41c;
	ans_a = 16'h4ab1;
	#20
	A = 16'h3d78;
	B = 16'hbd7e;
	ans_a = 16'h49c1;
	#20
	A = 16'hbc63;
	B = 16'h30b5;
	ans_a = 16'h49ac;
	#20
	A = 16'h2fab;
	B = 16'h34a4;
	ans_a = 16'h49b0;
	#20
	A = 16'h3c64;
	B = 16'h3cdd;
	ans_a = 16'h4a5b;
	#20
	A = 16'h3df0;
	B = 16'hb448;
	ans_a = 16'h4a28;
	#20
	A = 16'hb9e4;
	B = 16'hbe89;
	ans_a = 16'h4ac2;
	#20
	A = 16'hba4e;
	B = 16'h34c7;
	ans_a = 16'h4aa4;
	#20
	A = 16'hbe4d;
	B = 16'hbd27;
	ans_a = 16'h4ba8;
	#20
	A = 16'hbd77;
	B = 16'h3aeb;
	ans_a = 16'h4b11;
	#20
	A = 16'hbda3;
	B = 16'hb472;
	ans_a = 16'h4b43;
	#20
	A = 16'hbc23;
	B = 16'hb6a9;
	ans_a = 16'h4b7a;
	#20
	A = 16'h3e7e;
	B = 16'h3904;
	ans_a = 16'h4bfc;
	#20
	A = 16'h3b04;
	B = 16'hb88c;
	ans_a = 16'h4bbc;
	#20
	A = 16'hbbf6;
	B = 16'h3e54;
	ans_a = 16'h4af2;
	#20
	A = 16'h3eb0;
	B = 16'h3c70;
	ans_a = 16'h4bdf;
	#20
	A = 16'h3eb0;
	B = 16'h3f9f;
	ans_a = 16'h4cbb;
	#20
	A = 16'hbcc6;
	B = 16'h3940;
	ans_a = 16'h4c89;
	#20
	A = 16'hb4f9;
	B = 16'hb913;
	ans_a = 16'h4c96;
	#20
	A = 16'h39ec;
	B = 16'hb868;
	ans_a = 16'h4c7c;
	#20
	A = 16'hbb2a;
	B = 16'ha9ce;
	ans_a = 16'h4c7f;
	#20
	A = 16'h3e3e;
	B = 16'hbfb8;
	ans_a = 16'h4b7c;
	#20
	A = 16'hb971;
	B = 16'h3c79;
	ans_a = 16'h4b1b;
	#20
	A = 16'h3cf6;
	B = 16'hbc27;
	ans_a = 16'h4a76;
	#20
	A = 16'hbed6;
	B = 16'h3d67;
	ans_a = 16'h494e;
	#20
	A = 16'h3e5e;
	B = 16'h3eed;
	ans_a = 16'h4aaf;
	#20
	A = 16'h3ea1;
	B = 16'hbd2a;
	ans_a = 16'h499d;
	#20
	A = 16'h380a;
	B = 16'h3695;
	ans_a = 16'h49b8;
	#20
	A = 16'h3cf9;
	B = 16'h3c52;
	ans_a = 16'h4a64;
	#20
	A = 16'hbcfe;
	B = 16'hbc10;
	ans_a = 16'h4b06;
	#20
	A = 16'hb0d7;
	B = 16'h39ac;
	ans_a = 16'h4af8;
	#20
	A = 16'hb937;
	B = 16'h3ddc;
	ans_a = 16'h4a7e;
	#20
	A = 16'hbeff;
	B = 16'h38b2;
	ans_a = 16'h49fb;
	#20
	A = 16'h3d7e;
	B = 16'h3b5b;
	ans_a = 16'h4a9d;
	#20
	A = 16'hbc8c;
	B = 16'hb8f9;
	ans_a = 16'h4af7;
	#20
	A = 16'hbe86;
	B = 16'h3a71;
	ans_a = 16'h4a4f;
	#20
	A = 16'hbb16;
	B = 16'hb645;
	ans_a = 16'h4a7b;
	#20
	A = 16'hbc60;
	B = 16'h36ee;
	ans_a = 16'h4a3e;
	#20
	A = 16'hbc1e;
	B = 16'hb63b;
	ans_a = 16'h4a71;
	#20
	A = 16'h3975;
	B = 16'hb808;
	ans_a = 16'h4a45;
	#20
	A = 16'hbba9;
	B = 16'hb8a9;
	ans_a = 16'h4a8c;
	#20
	A = 16'hbbde;
	B = 16'hada6;
	ans_a = 16'h4a97;
	#20
	A = 16'hbc51;
	B = 16'haa4c;
	ans_a = 16'h4a9e;
	#20
	A = 16'h3148;
	B = 16'hbdee;
	ans_a = 16'h4a7f;
	#20
	A = 16'h3783;
	B = 16'h384b;
	ans_a = 16'h4a9f;
	#20
	A = 16'h3dda;
	B = 16'h3754;
	ans_a = 16'h4af5;
	#20
	A = 16'hbe3c;
	B = 16'h30ce;
	ans_a = 16'h4ad7;
	#20
	A = 16'hb19e;
	B = 16'h3ec8;
	ans_a = 16'h4ab1;
	#20
	A = 16'h3f52;
	B = 16'h3a77;
	ans_a = 16'h4b6e;
	#20
	A = 16'h2e85;
	B = 16'hbdfe;
	ans_a = 16'h4b5a;
	#20
	A = 16'hbf1b;
	B = 16'h3f6f;
	ans_a = 16'h49b4;
	#20
	A = 16'h3890;
	B = 16'hb8f5;
	ans_a = 16'h4987;
	#20
	A = 16'h3f6e;
	B = 16'hbe3a;
	ans_a = 16'h4815;
	#20
	A = 16'h3c07;
	B = 16'h3d04;
	ans_a = 16'h48b7;
	#20
	A = 16'h3c77;
	B = 16'h3390;
	ans_a = 16'h48d9;
	#20
	A = 16'h3b15;
	B = 16'hba87;
	ans_a = 16'h487d;
	#20
	A = 16'hbc7a;
	B = 16'hbeec;
	ans_a = 16'h4975;
	#20
	A = 16'h3392;
	B = 16'hbeda;
	ans_a = 16'h4941;
	#20
	A = 16'hbf88;
	B = 16'hb9c8;
	ans_a = 16'h49ef;
	#20
	A = 16'hb621;
	B = 16'hb9d2;
	ans_a = 16'h4a13;
	#20
	A = 16'hb128;
	B = 16'hbf03;
	ans_a = 16'h4a37;
	#20
	A = 16'h3fb0;
	B = 16'h2aea;
	ans_a = 16'h4a44;
	#20
	A = 16'hbe2e;
	B = 16'hb828;
	ans_a = 16'h4aab;
	#20
	A = 16'hbe8c;
	B = 16'h3467;
	ans_a = 16'h4a71;
	#20
	A = 16'h3fbf;
	B = 16'hbe9e;
	ans_a = 16'h48d7;
	#20
	A = 16'hb86c;
	B = 16'h3ae0;
	ans_a = 16'h489a;
	#20
	A = 16'hbe5f;
	B = 16'h369a;
	ans_a = 16'h4846;
	#20
	A = 16'h3086;
	B = 16'h2b30;
	ans_a = 16'h4847;
	#20
	A = 16'h3cec;
	B = 16'hbff7;
	ans_a = 16'h461b;
	#20
	A = 16'hbc21;
	B = 16'hbfbd;
	ans_a = 16'h480d;
	#20
	A = 16'h2578;
	B = 16'hbc11;
	ans_a = 16'h480a;
	#20
	A = 16'h3e36;
	B = 16'h3ad2;
	ans_a = 16'h48b4;
	#20
	A = 16'h3f9c;
	B = 16'h3ed8;
	ans_a = 16'h4a54;
	#20
	A = 16'h3fb8;
	B = 16'hb434;
	ans_a = 16'h4a13;
	#20
	A = 16'h3e4e;
	B = 16'hb876;
	ans_a = 16'h49a2;
	#20
	A = 16'hb455;
	B = 16'h3c25;
	ans_a = 16'h497e;
	#20
	A = 16'h375e;
	B = 16'hb50a;
	ans_a = 16'h496b;
	#20
	A = 16'h30f4;
	B = 16'hb987;
	ans_a = 16'h495d;
	#20
	A = 16'hbaa9;
	B = 16'hb8c0;
	ans_a = 16'h499c;
	#20
	A = 16'hba20;
	B = 16'h3de5;
	ans_a = 16'h490c;
	#20
	A = 16'hb8a4;
	B = 16'h3655;
	ans_a = 16'h48ef;
	#20
	A = 16'h2c24;
	B = 16'h3ef1;
	ans_a = 16'h48fd;
	#20
	A = 16'hbdf7;
	B = 16'hbfd4;
	ans_a = 16'h4a72;
	#20
	A = 16'h2e6d;
	B = 16'hbe90;
	ans_a = 16'h4a5d;
	#20
	A = 16'hb0a5;
	B = 16'hbf0e;
	ans_a = 16'h4a7e;
	#20
	A = 16'hbfe8;
	B = 16'hb93b;
	ans_a = 16'h4b23;
	#20
	A = 16'hb4df;
	B = 16'h3dd8;
	ans_a = 16'h4aea;
	#20
	A = 16'h3d2e;
	B = 16'hbf69;
	ans_a = 16'h49b7;
	#20
	A = 16'h3ecf;
	B = 16'h3d52;
	ans_a = 16'h4ad9;
	#20
	A = 16'hb836;
	B = 16'h3a23;
	ans_a = 16'h4aa5;
	#20
	A = 16'h3cdc;
	B = 16'h3868;
	ans_a = 16'h4afb;
	#20
	A = 16'h3acf;
	B = 16'h381c;
	ans_a = 16'h4b33;
	#20
	A = 16'hbb94;
	B = 16'h37e5;
	ans_a = 16'h4af7;
	#20
	A = 16'hbc84;
	B = 16'hbfdd;
	ans_a = 16'h4c0a;
	#20
	A = 16'hbe49;
	B = 16'hb686;
	ans_a = 16'h4c33;
	#20
	A = 16'hbd86;
	B = 16'h3af7;
	ans_a = 16'h4bcc;
	#20
	A = 16'haed9;
	B = 16'hafca;
	ans_a = 16'h4bce;
	#20
	A = 16'h37d4;
	B = 16'h3c63;
	ans_a = 16'h4c09;
	#20
	A = 16'h3e3e;
	B = 16'hbe7d;
	ans_a = 16'h4ace;
	#20
	A = 16'hbffe;
	B = 16'h3b58;
	ans_a = 16'h49e3;
	#20
	A = 16'h3bce;
	B = 16'h3bcc;
	ans_a = 16'h4a5d;
	#20
	A = 16'hbf1d;
	B = 16'hbbe9;
	ans_a = 16'h4b3e;
	#20
	A = 16'hb99c;
	B = 16'h37c4;
	ans_a = 16'h4b12;
	#20
	A = 16'h3f9c;
	B = 16'h3d1e;
	ans_a = 16'h4c25;
	#20
	A = 16'h3f08;
	B = 16'h3e0b;
	ans_a = 16'h4ccf;
	#20
	A = 16'h3d27;
	B = 16'ha972;
	ans_a = 16'h4ccb;
	#20
	A = 16'h3b5d;
	B = 16'hbc60;
	ans_a = 16'h4c8b;
	#20
	A = 16'h35a4;
	B = 16'hbdd4;
	ans_a = 16'h4c6a;
	#20
	A = 16'hb5e4;
	B = 16'hbfb2;
	ans_a = 16'h4c97;
	#20
	A = 16'hbff7;
	B = 16'hbc6b;
	ans_a = 16'h4d24;
	#20
	A = 16'h3c66;
	B = 16'h3fb6;
	ans_a = 16'h4dac;
	#20
	A = 16'h37dd;
	B = 16'hbb2e;
	ans_a = 16'h4d90;
	#20
	A = 16'hbdcf;
	B = 16'hbe05;
	ans_a = 16'h4e1c;
	#20
	A = 16'hbd05;
	B = 16'h34fc;
	ans_a = 16'h4e03;
	#20
	A = 16'hbadd;
	B = 16'h390e;
	ans_a = 16'h4de0;
	#20
	A = 16'hb8de;
	B = 16'h3972;
	ans_a = 16'h4dc6;
	#20
	A = 16'hbcca;
	B = 16'hbbf9;
	ans_a = 16'h4e12;
	#20
	A = 16'h3e2e;
	B = 16'h3aa7;
	ans_a = 16'h4e64;
	#20
	A = 16'hbe62;
	B = 16'h3d53;
	ans_a = 16'h4ddc;
	#20
	A = 16'hbabd;
	B = 16'hbdc7;
	ans_a = 16'h4e2a;
	#20
	A = 16'h3257;
	B = 16'h3cef;
	ans_a = 16'h4e3a;
	#20
	A = 16'hb955;
	B = 16'hbe3d;
	ans_a = 16'h4e7c;
	#20
	A = 16'h3f65;
	B = 16'h3e2b;
	ans_a = 16'h4f32;
	#20
	A = 16'h3fdc;
	B = 16'hb8cc;
	ans_a = 16'h4ee7;
	#20
	A = 16'h3fdc;
	B = 16'hbdbb;
	ans_a = 16'h4e33;
	#20
	A = 16'h3f1f;
	B = 16'hbcc0;
	ans_a = 16'h4dac;
	#20
	A = 16'hbfe7;
	B = 16'hbc26;
	ans_a = 16'h4e2f;
	#20
	A = 16'hab68;
	B = 16'h3c1f;
	ans_a = 16'h4e2b;
	#20
	A = 16'h38fc;
	B = 16'h3afa;
	ans_a = 16'h4e4e;
	#20
	A = 16'hbe53;
	B = 16'h3d62;
	ans_a = 16'h4dc6;
	#20
	A = 16'h3cd5;
	B = 16'hbdd8;
	ans_a = 16'h4d55;
	#20
	A = 16'h3958;
	B = 16'hbf69;
	ans_a = 16'h4d06;
	#20
	A = 16'h3ded;
	B = 16'hbf91;
	ans_a = 16'h4c53;
	#20
	A = 16'hbf56;
	B = 16'h3e80;
	ans_a = 16'h4b28;
	#20
	A = 16'hacae;
	B = 16'hb493;
	ans_a = 16'h4b2b;
	#20
	A = 16'hb0c4;
	B = 16'hbe1c;
	ans_a = 16'h4b48;
	#20
	A = 16'h3f23;
	B = 16'hbf02;
	ans_a = 16'h49b8;
	#20
	A = 16'hbfaa;
	B = 16'h3b54;
	ans_a = 16'h48d7;
	#20
	A = 16'h3983;
	B = 16'ha901;
	ans_a = 16'h48d4;
	#20
	A = 16'h32f1;
	B = 16'hb87f;
	ans_a = 16'h48c4;
	#20
	A = 16'hbeeb;
	B = 16'h3fd4;
	ans_a = 16'h4626;
	#20
	A = 16'h2feb;
	B = 16'h3f3d;
	ans_a = 16'h465f;
	#20
	A = 16'h3f4d;
	B = 16'h3cec;
	ans_a = 16'h484f;
	#20
	A = 16'h3285;
	B = 16'h3d09;
	ans_a = 16'h4870;
	#20
	A = 16'hbc1b;
	B = 16'hbcd5;
	ans_a = 16'h490f;
	#20
	A = 16'h3256;
	B = 16'hb838;
	ans_a = 16'h4902;
	#20
	A = 16'h3dff;
	B = 16'h396a;
	ans_a = 16'h4984;
	#20
	A = 16'h1e66;
	B = 16'hbebf;
	ans_a = 16'h4983;
	#20
	A = 16'h3c29;
	B = 16'h3f5b;
	ans_a = 16'h4a78;
	#20
	A = 16'h3b67;
	B = 16'hb4d4;
	ans_a = 16'h4a54;
	#20
	A = 16'hb92f;
	B = 16'hb431;
	ans_a = 16'h4a6a;
	#20
	A = 16'hbda6;
	B = 16'h3d18;
	ans_a = 16'h4984;
	#20
	A = 16'h3861;
	B = 16'h2c40;
	ans_a = 16'h4989;
	#20
	A = 16'hb1e1;
	B = 16'hb70f;
	ans_a = 16'h4993;
	#20
	A = 16'h3aef;
	B = 16'h3961;
	ans_a = 16'h49de;
	#20
	A = 16'hbadd;
	B = 16'hbd0e;
	ans_a = 16'h4a69;
	#20
	A = 16'h3fb7;
	B = 16'hb93b;
	ans_a = 16'h49c8;
	#20
	A = 16'hb4b4;
	B = 16'hbdf2;
	ans_a = 16'h4a00;
	#20
	A = 16'hb6de;
	B = 16'hbec4;
	ans_a = 16'h4a5d;
	#20
	A = 16'h3b88;
	B = 16'hbef3;
	ans_a = 16'h498c;
	#20
	A = 16'h399d;
	B = 16'h39b9;
	ans_a = 16'h49cc;
	#20
	A = 16'hbf18;
	B = 16'h3d05;
	ans_a = 16'h48af;
	#20
	A = 16'h3de3;
	B = 16'hbc7c;
	ans_a = 16'h47b8;
	#20
	A = 16'hbc09;
	B = 16'hbe91;
	ans_a = 16'h48b0;
	#20
	A = 16'h28a5;
	B = 16'hba0d;
	ans_a = 16'h48ac;
	#20
	A = 16'hbc30;
	B = 16'h3e47;
	ans_a = 16'h47b4;
	#20
	A = 16'h3d5d;
	B = 16'h3b4a;
	ans_a = 16'h4876;
	#20
	A = 16'h336b;
	B = 16'h3f3b;
	ans_a = 16'h48ac;
	#20
	A = 16'h3515;
	B = 16'hbf75;
	ans_a = 16'h4860;
	#20
	A = 16'hb7b8;
	B = 16'h3fa5;
	ans_a = 16'h47d4;
	#20
	A = 16'hbe77;
	B = 16'hbedc;
	ans_a = 16'h494d;
	#20
	A = 16'hbebc;
	B = 16'h3966;
	ans_a = 16'h48bc;
	#20
	A = 16'h326f;
	B = 16'h2bf9;
	ans_a = 16'h48be;
	#20
	A = 16'hbc20;
	B = 16'hbb10;
	ans_a = 16'h4932;
	#20
	A = 16'hb945;
	B = 16'h2dd9;
	ans_a = 16'h492a;
	#20
	A = 16'h3e4b;
	B = 16'hbb2e;
	ans_a = 16'h4875;
	#20
	A = 16'hbe03;
	B = 16'h3f73;
	ans_a = 16'h461e;
	#20
	A = 16'hb2ea;
	B = 16'hb468;
	ans_a = 16'h462d;
	#20
	A = 16'h3e13;
	B = 16'h3ddd;
	ans_a = 16'h4834;
	#20
	A = 16'h3c9c;
	B = 16'hbfd1;
	ans_a = 16'h4628;
	#20
	A = 16'hbe40;
	B = 16'h31dd;
	ans_a = 16'h45df;
	#20
	A = 16'hb6fc;
	B = 16'h3e41;
	ans_a = 16'h4530;
	#20
	A = 16'hbb55;
	B = 16'hb8bd;
	ans_a = 16'h45bb;
	#20
	A = 16'h3e78;
	B = 16'h3bf7;
	ans_a = 16'h4757;
	#20
	A = 16'hbc60;
	B = 16'h35fd;
	ans_a = 16'h46ee;
	#20
	A = 16'h3b19;
	B = 16'h3b97;
	ans_a = 16'h47c6;
	#20
	A = 16'hb487;
	B = 16'h3cf1;
	ans_a = 16'h476c;
	#20
	A = 16'hbeaa;
	B = 16'h3f89;
	ans_a = 16'h4448;
	#20
	A = 16'h3d6b;
	B = 16'hbf06;
	ans_a = 16'h3f9c;
	#20
	A = 16'h2f7c;
	B = 16'h37d4;
	ans_a = 16'h3fd7;
	#20
	A = 16'hbf21;
	B = 16'hbcec;
	ans_a = 16'h4427;
	#20
	A = 16'h324a;
	B = 16'hb85b;
	ans_a = 16'h440c;
	#20
	A = 16'h3e0e;
	B = 16'h3962;
	ans_a = 16'h4511;
	#20
	A = 16'hbfd8;
	B = 16'hb668;
	ans_a = 16'h45da;
	#20
	A = 16'hbd33;
	B = 16'h304a;
	ans_a = 16'h45ad;
	#20
	A = 16'h3b40;
	B = 16'hb8bb;
	ans_a = 16'h4524;
	#20
	A = 16'hb822;
	B = 16'h3905;
	ans_a = 16'h44d1;
	#20
	A = 16'hb99b;
	B = 16'habc6;
	ans_a = 16'h44dc;
	#20
	A = 16'h3caa;
	B = 16'hbd74;
	ans_a = 16'h428a;
	#20
	A = 16'hbed7;
	B = 16'hbdf6;
	ans_a = 16'h45d2;
	#20
	A = 16'hbce0;
	B = 16'hbde7;
	ans_a = 16'h479e;
	#20
	A = 16'hb4d5;
	B = 16'h38dc;
	ans_a = 16'h476f;
	#20
	A = 16'hba2d;
	B = 16'h2ea9;
	ans_a = 16'h475a;
	#20
	A = 16'h3d49;
	B = 16'hbe6d;
	ans_a = 16'h453a;
	#20
	A = 16'hb6ba;
	B = 16'h3d00;
	ans_a = 16'h44b4;
	#20
	A = 16'h3c25;
	B = 16'hbee7;
	ans_a = 16'h41d4;
	#20
	A = 16'hbd88;
	B = 16'hbdba;
	ans_a = 16'h44e5;
	#20
	A = 16'h3016;
	B = 16'hb410;
	ans_a = 16'h44dd;
	#20
	A = 16'hbdaf;
	B = 16'hb078;
	ans_a = 16'h4510;
	#20
	A = 16'hbe61;
	B = 16'h3d38;
	ans_a = 16'h41f7;
	#20
	A = 16'hbd41;
	B = 16'hbdbc;
	ans_a = 16'h44de;
	#20
	A = 16'hbf8a;
	B = 16'hb901;
	ans_a = 16'h460c;
	#20
	A = 16'hbc1c;
	B = 16'h3eb8;
	ans_a = 16'h4452;
	#20
	A = 16'h3dce;
	B = 16'h3f89;
	ans_a = 16'h470e;
	#20
	A = 16'hb848;
	B = 16'hb884;
	ans_a = 16'h475b;
	#20
	A = 16'hbd9a;
	B = 16'haeee;
	ans_a = 16'h4782;
	#20
	A = 16'hb78d;
	B = 16'h3509;
	ans_a = 16'h475c;
	#20
	A = 16'h3929;
	B = 16'hbd64;
	ans_a = 16'h467e;
	#20
	A = 16'hb4b3;
	B = 16'h3ef8;
	ans_a = 16'h45fb;
	#20
	A = 16'hba47;
	B = 16'hb7f4;
	ans_a = 16'h465f;
	#20
	A = 16'h38a9;
	B = 16'h3d8e;
	ans_a = 16'h472e;
	#20
	A = 16'h3fe5;
	B = 16'hbc7e;
	ans_a = 16'h44f6;
	#20
	A = 16'hbcce;
	B = 16'h3f7e;
	ans_a = 16'h416c;
	#20
	A = 16'h3e00;
	B = 16'hbc88;
	ans_a = 16'h3c0c;
	#20
	A = 16'hb8c8;
	B = 16'h35a4;
	ans_a = 16'h3a68;
	#20
	A = 16'hb501;
	B = 16'h3fea;
	ans_a = 16'h31d4;
	#20
	A = 16'h3b7c;
	B = 16'hbc0b;
	ans_a = 16'hba1c;
	#20
	A = 16'h3d5b;
	B = 16'h336a;
	ans_a = 16'hb741;
	#20
	A = 16'h3619;
	B = 16'hbf57;
	ans_a = 16'hbc9c;
	#20
	A = 16'hbd8d;
	B = 16'hb674;
	ans_a = 16'hb8be;
	#20
	A = 16'hb754;
	B = 16'h38bc;
	ans_a = 16'hbae9;
	#20
	A = 16'hbe93;
	B = 16'h3ece;
	ans_a = 16'hc352;
	#20
	A = 16'h361f;
	B = 16'haebc;
	ans_a = 16'hc367;
	#20
	A = 16'hbd24;
	B = 16'hba41;
	ans_a = 16'hc164;
	#20
	A = 16'hb32f;
	B = 16'hbcab;
	ans_a = 16'hc0de;
	#20
	A = 16'hbe86;
	B = 16'h2f42;
	ans_a = 16'hc13d;
	#20
	A = 16'hbfc5;
	B = 16'hbe22;
	ans_a = 16'h35c0;
	#20
	A = 16'hb20b;
	B = 16'h3fe8;
	ans_a = 16'ha320;
	#20
	A = 16'h39fd;
	B = 16'h3804;
	ans_a = 16'h35ca;
	#20
	A = 16'hb4e4;
	B = 16'hb747;
	ans_a = 16'h3802;
	#20
	A = 16'h3f67;
	B = 16'hbf49;
	ans_a = 16'hc1be;
	#20
	A = 16'hb186;
	B = 16'hb902;
	ans_a = 16'hc187;
	#20
	A = 16'h318a;
	B = 16'hb9bf;
	ans_a = 16'hc1c7;
	#20
	A = 16'haa68;
	B = 16'h2c51;
	ans_a = 16'hc1c9;
	#20
	A = 16'h39db;
	B = 16'h33ae;
	ans_a = 16'hc16f;
	#20
	A = 16'hb98f;
	B = 16'h3cde;
	ans_a = 16'hc320;
	#20
	A = 16'hafc9;
	B = 16'hbe20;
	ans_a = 16'hc2c1;
	#20
	A = 16'hbad6;
	B = 16'hb877;
	ans_a = 16'hc1cd;
	#20
	A = 16'hbf80;
	B = 16'hbea6;
	ans_a = 16'h32f0;
	#20
	A = 16'hb77d;
	B = 16'hbcff;
	ans_a = 16'h3a69;
	#20
	A = 16'hb96b;
	B = 16'hb3bb;
	ans_a = 16'h3bb8;
	#20
	A = 16'h3785;
	B = 16'h36cd;
	ans_a = 16'h3ca8;
	#20
	A = 16'h3d69;
	B = 16'h3977;
	ans_a = 16'h402d;
	#20
	A = 16'h3b5d;
	B = 16'hb403;
	ans_a = 16'h3f6e;
	#20
	A = 16'hbc98;
	B = 16'hbeb0;
	ans_a = 16'h438e;
	#20
	A = 16'h3b08;
	B = 16'hb8c2;
	ans_a = 16'h4282;
	#20
	A = 16'h3b31;
	B = 16'h3cae;
	ans_a = 16'h444e;
	#20
	A = 16'hb490;
	B = 16'h3880;
	ans_a = 16'h4425;
	#20
	A = 16'hba57;
	B = 16'h3ced;
	ans_a = 16'h4256;
	#20
	A = 16'h3045;
	B = 16'h3b33;
	ans_a = 16'h4293;
	#20
	A = 16'h3e95;
	B = 16'ha77b;
	ans_a = 16'h427a;
	#20
	A = 16'hbdf5;
	B = 16'h3e07;
	ans_a = 16'h3bf4;
	#20
	A = 16'hb9d8;
	B = 16'hbed0;
	ans_a = 16'h407a;
	#20
	A = 16'h3c4c;
	B = 16'hb697;
	ans_a = 16'h3f2f;
	#20
	A = 16'hbfd6;
	B = 16'h3dc2;
	ans_a = 16'hbc19;
	#20
	A = 16'hbf61;
	B = 16'h9fb1;
	ans_a = 16'hbc0b;
	#20
	A = 16'hbfd8;
	B = 16'hbfd9;
	ans_a = 16'h41ac;
	#20
	A = 16'h3eeb;
	B = 16'h3edd;
	ans_a = 16'h45ce;
	#20
	A = 16'h36b2;
	B = 16'hb637;
	ans_a = 16'h45a4;
	#20
	A = 16'haf47;
	B = 16'hbdd7;
	ans_a = 16'h45ce;
	#20
	A = 16'h3e0f;
	B = 16'hbff5;
	ans_a = 16'h4195;
	#20
	A = 16'hbd1c;
	B = 16'h39d2;
	ans_a = 16'h3f72;
	#20
	A = 16'h3f5a;
	B = 16'h3de9;
	ans_a = 16'h4494;
	#20
	A = 16'hbd68;
	B = 16'h3d71;
	ans_a = 16'h417a;
	#20
	A = 16'hbca6;
	B = 16'hbe0e;
	ans_a = 16'h447f;
	#20
	A = 16'h354f;
	B = 16'h3f16;
	ans_a = 16'h4516;
	#20
	A = 16'hbfd3;
	B = 16'hbd1a;
	ans_a = 16'h4794;
	#20
	A = 16'hbc44;
	B = 16'h3b5e;
	ans_a = 16'h4699;
	#20
	A = 16'hbc90;
	B = 16'h2bff;
	ans_a = 16'h4687;
	#20
	A = 16'h3bc5;
	B = 16'hbf42;
	ans_a = 16'h44c4;
	#20
	A = 16'h3fce;
	B = 16'h3a78;
	ans_a = 16'h4658;
	#20
	A = 16'h38fc;
	B = 16'hbf0d;
	ans_a = 16'h453f;
	#20
	A = 16'h3fae;
	B = 16'hbcef;
	ans_a = 16'h41c2;
	#20
	A = 16'h3f18;
	B = 16'hb9d9;
	ans_a = 16'h3e55;
	#20
	A = 16'hb09c;
	B = 16'hb82a;
	ans_a = 16'h3ea2;
	#20
	A = 16'h3fa1;
	B = 16'hbf35;
	ans_a = 16'hbf1c;
	#20
	A = 16'hb732;
	B = 16'hbeeb;
	ans_a = 16'hbbff;
	#20
	A = 16'h3c8c;
	B = 16'h392d;
	ans_a = 16'hb43a;
	#20
	A = 16'h3985;
	B = 16'h2d07;
	ans_a = 16'hb2b8;
	#20
	A = 16'h3f01;
	B = 16'h3dc5;
	ans_a = 16'h40a2;
	#20
	A = 16'hb832;
	B = 16'h3f3d;
	ans_a = 16'h3d78;
	#20
	A = 16'hbda0;
	B = 16'hb8d3;
	ans_a = 16'h406e;
	#20
	A = 16'h3384;
	B = 16'hbd5b;
	ans_a = 16'h3f9a;
	#20
	A = 16'hbc86;
	B = 16'h3e4e;
	ans_a = 16'h2f90;
	#20
	A = 16'hbcdc;
	B = 16'hbdd6;
	ans_a = 16'h3f90;
	#20
	A = 16'hb320;
	B = 16'h3d84;
	ans_a = 16'h3e56;
	#20
	A = 16'hb090;
	B = 16'h3324;
	ans_a = 16'h3e35;
	#20
	A = 16'h37b3;
	B = 16'hb623;
	ans_a = 16'h3d78;
	#20
	A = 16'h3edc;
	B = 16'h3ba4;
	ans_a = 16'h4202;
	#20
	A = 16'h344f;
	B = 16'hbd87;
	ans_a = 16'h4144;
	#20
	A = 16'hbfd0;
	B = 16'hb688;
	ans_a = 16'h42dc;
	#20
	A = 16'hbcf7;
	B = 16'habda;
	ans_a = 16'h4303;
	#20
	A = 16'h3df7;
	B = 16'hb581;
	ans_a = 16'h41fc;
	#20
	A = 16'hbfa7;
	B = 16'hbf16;
	ans_a = 16'h4662;
	#20
	A = 16'hbe03;
	B = 16'h3b61;
	ans_a = 16'h44ff;
	#20
	A = 16'hba5c;
	B = 16'hbf0a;
	ans_a = 16'h4665;
	#20
	A = 16'ha41e;
	B = 16'h309e;
	ans_a = 16'h4664;
	#20
	A = 16'h3b29;
	B = 16'hb477;
	ans_a = 16'h4624;
	#20
	A = 16'hbea6;
	B = 16'h3ff1;
	ans_a = 16'h41ae;
	#20
	A = 16'h39fe;
	B = 16'hbd8d;
	ans_a = 16'h3f34;
	#20
	A = 16'hb946;
	B = 16'hb662;
	ans_a = 16'h4021;
	#20
	A = 16'h3c15;
	B = 16'hbb10;
	ans_a = 16'h3ca8;
	#20
	A = 16'hbc52;
	B = 16'h3e21;
	ans_a = 16'hb7dc;
	#20
	A = 16'hbfa7;
	B = 16'h3e59;
	ans_a = 16'hc30e;
	#20
	A = 16'hbdc2;
	B = 16'h3c71;
	ans_a = 16'hc520;
	#20
	A = 16'hae0d;
	B = 16'h3e98;
	ans_a = 16'hc548;
	#20
	A = 16'had83;
	B = 16'hbe44;
	ans_a = 16'hc525;
	#20
	A = 16'hbd2e;
	B = 16'h38e6;
	ans_a = 16'hc5f0;
	#20
	A = 16'hbf7a;
	B = 16'hb9bc;
	ans_a = 16'hc499;
	#20
	A = 16'hbd7e;
	B = 16'hbd94;
	ans_a = 16'hc15e;
	#20
	A = 16'hb16a;
	B = 16'hb8dd;
	ans_a = 16'hc129;
	#20
	A = 16'hbcec;
	B = 16'hb4bc;
	ans_a = 16'hc06f;
	#20
	A = 16'h3ce4;
	B = 16'h3023;
	ans_a = 16'hc01e;
	#20
	A = 16'h3aef;
	B = 16'haf52;
	ans_a = 16'hc051;
	#20
	A = 16'h3db6;
	B = 16'h3a1c;
	ans_a = 16'hbc46;
	#20
	A = 16'h3f43;
	B = 16'hbb79;
	ans_a = 16'hc187;
	#20
	A = 16'hb5df;
	B = 16'hb080;
	ans_a = 16'hc16d;
	#20
	A = 16'hb636;
	B = 16'h384b;
	ans_a = 16'hc1d8;
	#20
	A = 16'h3ab2;
	B = 16'h36a3;
	ans_a = 16'hc126;
	#20
	A = 16'hbe15;
	B = 16'hbd56;
	ans_a = 16'hb85c;
	#20
	A = 16'h364d;
	B = 16'h3fa9;
	ans_a = 16'h32b0;
	#20
	A = 16'hb831;
	B = 16'h3d1d;
	ans_a = 16'hb760;
	#20
	A = 16'hb556;
	B = 16'hbd05;
	ans_a = 16'ha970;
	#20
	A = 16'h3b1b;
	B = 16'hbc21;
	ans_a = 16'hbbad;
	#20
	A = 16'ha97f;
	B = 16'hb935;
	ans_a = 16'hbb74;
	#20
	A = 16'h2f23;
	B = 16'hbd24;
	ans_a = 16'hbc4d;
	#20
	A = 16'h3fd7;
	B = 16'hbf28;
	ans_a = 16'hc495;
	#20
	A = 16'hbd3c;
	B = 16'h356e;
	ans_a = 16'hc507;
	#20
	A = 16'hb9f8;
	B = 16'hb9de;
	ans_a = 16'hc47b;
	#20
	A = 16'h3e3e;
	B = 16'h3ce5;
	ans_a = 16'hc124;
	#20
	A = 16'hbf5b;
	B = 16'hb968;
	ans_a = 16'hbd50;
	#20
	A = 16'hbbe5;
	B = 16'ha129;
	ans_a = 16'hbd46;
	#20
	A = 16'hbe45;
	B = 16'h3b74;
	ans_a = 16'hc18e;
	#20
	A = 16'hbf42;
	B = 16'h3c67;
	ans_a = 16'hc4c6;
	#20
	A = 16'hbe15;
	B = 16'h3e02;
	ans_a = 16'hc70e;
	#20
	A = 16'hbb1d;
	B = 16'hbf24;
	ans_a = 16'hc578;
	#20
	A = 16'h29fb;
	B = 16'h3c9b;
	ans_a = 16'hc56a;
	#20
	A = 16'hb867;
	B = 16'h3109;
	ans_a = 16'hc580;
	#20
	A = 16'h3f41;
	B = 16'hbef2;
	ans_a = 16'hc853;
	#20
	A = 16'h3865;
	B = 16'h3ffa;
	ans_a = 16'hc78e;
	#20
	A = 16'h3f61;
	B = 16'h3f11;
	ans_a = 16'hc44c;
	#20
	A = 16'h3edf;
	B = 16'hb302;
	ans_a = 16'hc4ac;
	#20
	A = 16'h3da7;
	B = 16'hb746;
	ans_a = 16'hc550;
	#20
	A = 16'h3ab3;
	B = 16'hbdde;
	ans_a = 16'hc68a;
	#20
	A = 16'hb2b7;
	B = 16'hb693;
	ans_a = 16'hc674;
	#20
	A = 16'hbc52;
	B = 16'hb0da;
	ans_a = 16'hc64a;
	#20
	A = 16'hbf29;
	B = 16'hbc5f;
	ans_a = 16'hc455;
	#20
	A = 16'hbfe0;
	B = 16'hb452;
	ans_a = 16'hc39a;
	#20
	A = 16'hbef9;
	B = 16'hb530;
	ans_a = 16'hc279;
	#20
	A = 16'hb871;
	B = 16'hbcdf;
	ans_a = 16'hc11f;
	#20
	A = 16'hbd6a;
	B = 16'h3f8d;
	ans_a = 16'hc51e;
	#20
	A = 16'habcb;
	B = 16'hbe17;
	ans_a = 16'hc506;
	#20
	A = 16'h3526;
	B = 16'h3e7a;
	ans_a = 16'hc481;
	#20
	A = 16'hb918;
	B = 16'habb1;
	ans_a = 16'hc477;
	#20
	A = 16'h3858;
	B = 16'hbd66;
	ans_a = 16'hc533;
	#20
	A = 16'h3ea2;
	B = 16'h3dd7;
	ans_a = 16'hc18e;
	#20
	A = 16'h3bc3;
	B = 16'hbfed;
	ans_a = 16'hc4b3;
	#20
	A = 16'hbce2;
	B = 16'hb31c;
	ans_a = 16'hc46e;
	#20
	A = 16'h39c7;
	B = 16'h3c1a;
	ans_a = 16'hc361;
	#20
	A = 16'hb08c;
	B = 16'h3820;
	ans_a = 16'hc386;
	#20
	A = 16'h3ae7;
	B = 16'h3dab;
	ans_a = 16'hc114;
	#20
	A = 16'hbe78;
	B = 16'h3878;
	ans_a = 16'hc2e2;
	#20
	A = 16'hbdd9;
	B = 16'h3c11;
	ans_a = 16'hc4ee;
	#20
	A = 16'hbacc;
	B = 16'hbc34;
	ans_a = 16'hc40a;
	#20
	A = 16'h3d32;
	B = 16'hbc3f;
	ans_a = 16'hc56b;
	#20
	A = 16'hb78c;
	B = 16'h3c46;
	ans_a = 16'hc5ec;
	#20
	A = 16'hbc30;
	B = 16'h3e06;
	ans_a = 16'hc780;
	#20
	A = 16'hb838;
	B = 16'hbd30;
	ans_a = 16'hc6d1;
	#20
	A = 16'h3b55;
	B = 16'h3ada;
	ans_a = 16'hc608;
	#20
	A = 16'h31e2;
	B = 16'hba56;
	ans_a = 16'hc62d;
	#20
	A = 16'hbe26;
	B = 16'hb89f;
	ans_a = 16'hc54a;
	#20
	A = 16'h38ad;
	B = 16'h3cfa;
	ans_a = 16'hc490;
	#20
	A = 16'hbdd2;
	B = 16'hbf79;
	ans_a = 16'hbf60;
	#20
	A = 16'hba38;
	B = 16'hb9ac;
	ans_a = 16'hbd2c;
	#20
	A = 16'hab24;
	B = 16'hb321;
	ans_a = 16'hbd1f;
	#20
	A = 16'h3f09;
	B = 16'h303b;
	ans_a = 16'hbc31;
	#20
	A = 16'h28a0;
	B = 16'h3e56;
	ans_a = 16'hbbed;
	#20
	A = 16'h3f8b;
	B = 16'hb8c2;
	ans_a = 16'hc039;
	#20
	A = 16'hb6a7;
	B = 16'h3ced;
	ans_a = 16'hc13f;
	#20
	A = 16'h35f3;
	B = 16'hbeb3;
	ans_a = 16'hc27e;
	#20
	A = 16'hbd1c;
	B = 16'h39f3;
	ans_a = 16'hc432;
	#20
	A = 16'h2b03;
	B = 16'h39c3;
	ans_a = 16'hc428;
	#20
	A = 16'hbed4;
	B = 16'h3631;
	ans_a = 16'hc4d1;
	#20
	A = 16'hbab8;
	B = 16'hb6cd;
	ans_a = 16'hc476;
	#20
	A = 16'h3f3e;
	B = 16'h34cf;
	ans_a = 16'hc3d6;
	#20
	A = 16'hb996;
	B = 16'h38f7;
	ans_a = 16'hc45a;
	#20
	A = 16'h3e85;
	B = 16'h3d83;
	ans_a = 16'hc036;
	#20
	A = 16'hb969;
	B = 16'hac1e;
	ans_a = 16'hc020;
	#20
	A = 16'h298a;
	B = 16'h9c3d;
	ans_a = 16'hc020;
	#20
	A = 16'h3dcd;
	B = 16'h38c5;
	ans_a = 16'hbcca;
	#20
	A = 16'h3f5b;
	B = 16'hb93b;
	ans_a = 16'hc0cc;
	#20
	A = 16'hbc69;
	B = 16'h3cae;
	ans_a = 16'hc360;
	#20
	A = 16'hbcfb;
	B = 16'h36d7;
	ans_a = 16'hc438;
	#20
	A = 16'hbf88;
	B = 16'h38a2;
	ans_a = 16'hc54f;
	#20
	A = 16'hb6bf;
	B = 16'hbd0c;
	ans_a = 16'hc4c7;
	#20
	A = 16'hb6e4;
	B = 16'hbe83;
	ans_a = 16'hc414;
	#20
	A = 16'hbfc4;
	B = 16'h342a;
	ans_a = 16'hc495;
	#20
	A = 16'h34ce;
	B = 16'h3e37;
	ans_a = 16'hc41e;
	#20
	A = 16'hbd57;
	B = 16'h3cd6;
	ans_a = 16'hc5bb;
	#20
	A = 16'hbea9;
	B = 16'hb101;
	ans_a = 16'hc578;
	#20
	A = 16'h3e82;
	B = 16'h3e05;
	ans_a = 16'hc20a;
	#20
	A = 16'h3fdf;
	B = 16'hbe62;
	ans_a = 16'hc629;
	#20
	A = 16'h3f48;
	B = 16'hb200;
	ans_a = 16'hc680;
	#20
	A = 16'hbeae;
	B = 16'hbd15;
	ans_a = 16'hc461;
	#20
	A = 16'hbea7;
	B = 16'h3779;
	ans_a = 16'hc528;
	#20
	A = 16'hbf91;
	B = 16'hae2e;
	ans_a = 16'hc4f9;
	#20
	A = 16'h3c44;
	B = 16'hb3d5;
	ans_a = 16'hc53c;
	#20
	A = 16'h3d73;
	B = 16'hbeb5;
	ans_a = 16'hc785;
	#20
	A = 16'h3fcf;
	B = 16'h35c4;
	ans_a = 16'hc6d1;
	#20
	A = 16'h3c13;
	B = 16'h3b61;
	ans_a = 16'hc5e0;
	#20
	A = 16'hbc75;
	B = 16'h3487;
	ans_a = 16'hc631;
	#20
	A = 16'hba36;
	B = 16'hbcbf;
	ans_a = 16'hc545;
	#20
	A = 16'hb743;
	B = 16'h2e5d;
	ans_a = 16'hc551;
	#20
	A = 16'hbb7d;
	B = 16'hbcac;
	ans_a = 16'hc439;
	#20
	A = 16'h3f5a;
	B = 16'h3ea2;
	ans_a = 16'hbcb4;
	#20
	A = 16'h395a;
	B = 16'hbeb3;
	ans_a = 16'hc098;
	#20
	A = 16'h3a41;
	B = 16'h3ebe;
	ans_a = 16'hbbd6;
	#20
	A = 16'h3c24;
	B = 16'h3994;
	ans_a = 16'hb420;
	#20
	A = 16'h3edb;
	B = 16'hbfb3;
	ans_a = 16'hc31d;
	#20
	A = 16'hbff2;
	B = 16'h3c63;
	ans_a = 16'hc5bc;
	#20
	A = 16'h3ba7;
	B = 16'h3f15;
	ans_a = 16'hc40a;
	#20
	A = 16'h3835;
	B = 16'h360d;
	ans_a = 16'hc3ae;
	#20
	A = 16'haded;
	B = 16'h3d7b;
	ans_a = 16'hc3ef;
	#20
	A = 16'hbe6b;
	B = 16'h3188;
	ans_a = 16'hc43e;
	#20
	A = 16'h3e72;
	B = 16'h3c6b;
	ans_a = 16'hc0ed;
	#20
	A = 16'hb861;
	B = 16'hbf49;
	ans_a = 16'hbddd;
	#20
	A = 16'h308c;
	B = 16'hb3ec;
	ans_a = 16'hbe01;
	#20
	A = 16'h3ac8;
	B = 16'hbb3a;
	ans_a = 16'hc088;
	#20
	A = 16'hbd54;
	B = 16'h37d0;
	ans_a = 16'hc1d5;
	#20
	A = 16'h3de3;
	B = 16'h3faa;
	ans_a = 16'hae20;
	#20
	A = 16'hab3f;
	B = 16'hbf1a;
	ans_a = 16'h1cf0;
	#20
	A = 16'h3e7c;
	B = 16'hbd4e;
	ans_a = 16'hc04b;
	#20
	A = 16'hb4f0;
	B = 16'hbec3;
	ans_a = 16'hbe80;
	#20
	A = 16'hbf72;
	B = 16'h3c57;
	ans_a = 16'hc34a;
	#20
	A = 16'hbfd2;
	B = 16'hb098;
	ans_a = 16'hc2ba;
	#20
	A = 16'h3d73;
	B = 16'h3ea1;
	ans_a = 16'hbc6c;
	#20
	A = 16'h3f74;
	B = 16'hb4af;
	ans_a = 16'hbe9a;
	#20
	A = 16'hb2dc;
	B = 16'h3c8e;
	ans_a = 16'hbf94;
	#20
	A = 16'h2c94;
	B = 16'h393e;
	ans_a = 16'hbf64;
	#20
	A = 16'h3df7;
	B = 16'hbe1a;
	ans_a = 16'hc420;
	#20
	A = 16'hbce3;
	B = 16'hbed3;
	ans_a = 16'hc015;
	#20
	A = 16'hb89c;
	B = 16'hba0d;
	ans_a = 16'hbe6c;
	#20
	A = 16'hbf7c;
	B = 16'hbb84;
	ans_a = 16'h30e0;
	#20
	A = 16'hb7ae;
	B = 16'h1cc7;
	ans_a = 16'h30ce;
	#20
	A = 16'h3e58;
	B = 16'hbfdf;
	ans_a = 16'hc1f1;
	#20
	A = 16'h3973;
	B = 16'h3e13;
	ans_a = 16'hbfbf;
	#20
	A = 16'h3cca;
	B = 16'hb887;
	ans_a = 16'hc13a;
	#20
	A = 16'h22ca;
	B = 16'hb9e2;
	ans_a = 16'hc13f;
	#20
	A = 16'h3a66;
	B = 16'h3c29;
	ans_a = 16'hbf2a;
	#20
	A = 16'h3a44;
	B = 16'hba1f;
	ans_a = 16'hc0c8;
	#20
	A = 16'hb475;
	B = 16'hbeb5;
	ans_a = 16'hbfb2;
	#20
	A = 16'hbc2b;
	B = 16'h3ff4;
	ans_a = 16'hc3fe;
	#20
	A = 16'h3eae;
	B = 16'h3ecc;
	ans_a = 16'hbca2;
	#20
	A = 16'hbed5;
	B = 16'hbffc;
	ans_a = 16'h4081;
	#20
	A = 16'hbf03;
	B = 16'hbb3a;
	ans_a = 16'h43ac;
	#20
	A = 16'hb5f9;
	B = 16'hbb78;
	ans_a = 16'h442f;
	#20
	A = 16'h3205;
	B = 16'hb84e;
	ans_a = 16'h4415;
	#20
	A = 16'h38ca;
	B = 16'h39cf;
	ans_a = 16'h4484;
	#20
	A = 16'h277e;
	B = 16'hba9f;
	ans_a = 16'h447e;
	#20
	A = 16'h3296;
	B = 16'h3c5b;
	ans_a = 16'h44b7;
	#20
	A = 16'hb51d;
	B = 16'h3ea4;
	ans_a = 16'h442f;
	#20
	A = 16'h3d87;
	B = 16'h3db7;
	ans_a = 16'h4628;
	#20
	A = 16'hbe10;
	B = 16'h36ee;
	ans_a = 16'h4580;
	#20
	A = 16'h3f33;
	B = 16'h3aef;
	ans_a = 16'h470f;
	#20
	A = 16'h3dd5;
	B = 16'h3975;
	ans_a = 16'h4807;
	#20
	A = 16'haaf2;
	B = 16'h3c69;
	ans_a = 16'h47ff;
	#20
	A = 16'h3f55;
	B = 16'h2876;
	ans_a = 16'h4808;
	#20
	A = 16'h2f68;
	B = 16'h39a6;
	ans_a = 16'h4812;
	#20
	A = 16'hb3e5;
	B = 16'h3891;
	ans_a = 16'h4800;
	#20
	A = 16'hbef7;
	B = 16'hb755;
	ans_a = 16'h4866;
	#20
	A = 16'had09;
	B = 16'hbc7c;
	ans_a = 16'h4871;
	#20
	A = 16'h3c93;
	B = 16'h3d71;
	ans_a = 16'h4938;
	#20
	A = 16'h34a8;
	B = 16'h3ece;
	ans_a = 16'h4977;
	#20
	A = 16'h3794;
	B = 16'h3d93;
	ans_a = 16'h49cc;
	#20
	A = 16'h3d38;
	B = 16'h30bb;
	ans_a = 16'h49e5;
	#20
	A = 16'hbb37;
	B = 16'h3e21;
	ans_a = 16'h4934;
	#20
	A = 16'hbfb1;
	B = 16'h3fec;
	ans_a = 16'h4699;
	#20
	A = 16'h3c12;
	B = 16'h3b4d;
	ans_a = 16'h4787;
	#20
	A = 16'h3930;
	B = 16'h3da5;
	ans_a = 16'h4839;
	#20
	A = 16'hba99;
	B = 16'hbdc9;
	ans_a = 16'h48d2;
	#20
	A = 16'h3f44;
	B = 16'hb935;
	ans_a = 16'h483b;
	#20
	A = 16'hb445;
	B = 16'h382e;
	ans_a = 16'h4829;
	#20
	A = 16'h3674;
	B = 16'hb840;
	ans_a = 16'h480e;
	#20
	A = 16'hb7bb;
	B = 16'h3e84;
	ans_a = 16'h4752;
	#20
	A = 16'hb82b;
	B = 16'hbb05;
	ans_a = 16'h47c7;
	#20
	A = 16'h3605;
	B = 16'h34eb;
	ans_a = 16'h47e5;
	#20
	A = 16'hbd10;
	B = 16'h3e52;
	ans_a = 16'h45e5;
	#20
	A = 16'hbdd7;
	B = 16'hbf35;
	ans_a = 16'h4843;
	#20
	A = 16'hb876;
	B = 16'hb230;
	ans_a = 16'h4851;
	#20
	A = 16'h3b09;
	B = 16'hbddd;
	ans_a = 16'h4758;
	#20
	A = 16'h360e;
	B = 16'hb7c1;
	ans_a = 16'h4729;
	#20
	A = 16'h3423;
	B = 16'hbbb8;
	ans_a = 16'h46e9;
	#20
	A = 16'hbaa9;
	B = 16'ha150;
	ans_a = 16'h46eb;
	#20
	A = 16'ha83d;
	B = 16'h3c7a;
	ans_a = 16'h46e2;
	#20
	A = 16'hbe8c;
	B = 16'hbd6b;
	ans_a = 16'h488d;
	#20
	A = 16'hbff8;
	B = 16'hbe1e;
	ans_a = 16'h4a13;
	#20
	A = 16'h3d1e;
	B = 16'h351f;
	ans_a = 16'h4a47;
	#20
	A = 16'hbcc9;
	B = 16'h3867;
	ans_a = 16'h49f3;
	#20
	A = 16'h2d22;
	B = 16'h397e;
	ans_a = 16'h49fa;
	#20
	A = 16'hbcd2;
	B = 16'hbb64;
	ans_a = 16'h4a88;
	#20
	A = 16'hbdc3;
	B = 16'hbc09;
	ans_a = 16'h4b42;
	#20
	A = 16'hba56;
	B = 16'h3c57;
	ans_a = 16'h4ad4;
	#20
	A = 16'h2fb0;
	B = 16'h3cd3;
	ans_a = 16'h4ae7;
	#20
	A = 16'h3e7c;
	B = 16'h38a9;
	ans_a = 16'h4b60;
	#20
	A = 16'hbfe3;
	B = 16'h3c0d;
	ans_a = 16'h4a60;
	#20
	A = 16'hbb49;
	B = 16'h3f39;
	ans_a = 16'h498e;
	#20
	A = 16'h3934;
	B = 16'h3adc;
	ans_a = 16'h49d5;
	#20
	A = 16'h3c7e;
	B = 16'hbef5;
	ans_a = 16'h48db;
	#20
	A = 16'h3a7e;
	B = 16'h384a;
	ans_a = 16'h4913;
	#20
	A = 16'hbf16;
	B = 16'h3d37;
	ans_a = 16'h47d7;
	#20
	A = 16'h3f7b;
	B = 16'hb58c;
	ans_a = 16'h4731;
	#20
	A = 16'hb748;
	B = 16'h3d62;
	ans_a = 16'h4694;
	#20
	A = 16'hbe2a;
	B = 16'hb92f;
	ans_a = 16'h4794;
	#20
	A = 16'h38eb;
	B = 16'h3b12;
	ans_a = 16'h4810;
	#20
	A = 16'hb7b4;
	B = 16'hb1ce;
	ans_a = 16'h481b;
	#20
	A = 16'h3d96;
	B = 16'h3d6a;
	ans_a = 16'h490d;
	#20
	A = 16'h381b;
	B = 16'h3fe3;
	ans_a = 16'h498e;
	#20
	A = 16'hbe6e;
	B = 16'h3aad;
	ans_a = 16'h48e2;
	#20
	A = 16'hbe47;
	B = 16'h2af9;
	ans_a = 16'h48d7;
	#20
	A = 16'hbeaa;
	B = 16'h3e2d;
	ans_a = 16'h471c;
	#20
	A = 16'h3ecf;
	B = 16'hb790;
	ans_a = 16'h464e;
	#20
	A = 16'hb11b;
	B = 16'h3dfb;
	ans_a = 16'h4611;
	#20
	A = 16'h3f8a;
	B = 16'hbe0c;
	ans_a = 16'h426f;
	#20
	A = 16'hb934;
	B = 16'h3b3e;
	ans_a = 16'h4142;
	#20
	A = 16'hbecc;
	B = 16'h35bb;
	ans_a = 16'h400a;
	#20
	A = 16'h3de0;
	B = 16'h3f9a;
	ans_a = 16'h44d0;
	#20
	A = 16'h3d45;
	B = 16'h3fae;
	ans_a = 16'h4758;
	#20
	A = 16'hbfc6;
	B = 16'h3aa2;
	ans_a = 16'h45bc;
	#20
	A = 16'hbe19;
	B = 16'h3c55;
	ans_a = 16'h4415;
	#20
	A = 16'h3856;
	B = 16'hafe1;
	ans_a = 16'h4404;
	#20
	A = 16'hbcd1;
	B = 16'h3dad;
	ans_a = 16'h409d;
	#20
	A = 16'h3e6f;
	B = 16'hbae2;
	ans_a = 16'h3b62;
	#20
	A = 16'hbd93;
	B = 16'h3a02;
	ans_a = 16'haff0;
	#20
	A = 16'hb945;
	B = 16'h3c27;
	ans_a = 16'hba76;
	#20
	A = 16'h3e98;
	B = 16'hb7d2;
	ans_a = 16'hbe74;
	#20
	A = 16'h3e65;
	B = 16'hbd45;
	ans_a = 16'hc370;
	#20
	A = 16'h3c8b;
	B = 16'h3fb5;
	ans_a = 16'hbe20;
	#20
	A = 16'hb8df;
	B = 16'hb8cb;
	ans_a = 16'hbcaa;
	#20
	A = 16'hbc78;
	B = 16'h3f0f;
	ans_a = 16'hc246;
	#20
	A = 16'h3987;
	B = 16'hbdd3;
	ans_a = 16'hc424;
	#20
	A = 16'h3d1a;
	B = 16'h3f8f;
	ans_a = 16'hbeec;
	#20
	A = 16'h3c48;
	B = 16'h3f1f;
	ans_a = 16'h3198;
	#20
	A = 16'hb871;
	B = 16'hbf3b;
	ans_a = 16'h3cb7;
	#20
	A = 16'hbd9a;
	B = 16'h3af2;
	ans_a = 16'ha8c0;
	#20
	A = 16'h3519;
	B = 16'h3c1e;
	ans_a = 16'h34a7;
	#20
	A = 16'hb811;
	B = 16'h3613;
	ans_a = 16'h2e42;
	#20
	A = 16'h3cf0;
	B = 16'h3db8;
	ans_a = 16'h3f73;
	#20
	A = 16'h3fa1;
	B = 16'h389f;
	ans_a = 16'h41ee;
	#20
	A = 16'h343c;
	B = 16'hbe9b;
	ans_a = 16'h410e;
	#20
	A = 16'h394c;
	B = 16'hbd21;
	ans_a = 16'h3eb6;
	#20
	A = 16'hbe52;
	B = 16'h3ab3;
	ans_a = 16'h35ac;
	#20
	A = 16'hb929;
	B = 16'hb5a5;
	ans_a = 16'h38a8;
	#20
	A = 16'hbd34;
	B = 16'hbc6b;
	ans_a = 16'h400a;
	#20
	A = 16'h3e08;
	B = 16'h3e2c;
	ans_a = 16'h4458;
	#20
	A = 16'hbd11;
	B = 16'hb468;
	ans_a = 16'h44b1;
	#20
	A = 16'hbd40;
	B = 16'h36b3;
	ans_a = 16'h4424;
	#20
	A = 16'hbd90;
	B = 16'h38b0;
	ans_a = 16'h42a7;
	#20
	A = 16'hbd97;
	B = 16'h3dfb;
	ans_a = 16'h3cf2;
	#20
	A = 16'hbd2a;
	B = 16'h3445;
	ans_a = 16'h3b22;
	#20
	A = 16'hbf6d;
	B = 16'hb851;
	ans_a = 16'h3f93;
	#20
	A = 16'hbe5b;
	B = 16'hb8cb;
	ans_a = 16'h41b1;
	#20
	A = 16'h3029;
	B = 16'h38f6;
	ans_a = 16'h41da;
	#20
	A = 16'h3dc7;
	B = 16'hbea7;
	ans_a = 16'h3830;
	#20
	A = 16'h3bbe;
	B = 16'h3bb4;
	ans_a = 16'h3dd2;
	#20
	A = 16'had64;
	B = 16'hbf4c;
	ans_a = 16'h3e6f;
	#20
	A = 16'h3e2c;
	B = 16'hba5a;
	ans_a = 16'h3624;
	#20
	A = 16'hbdc1;
	B = 16'h3e02;
	ans_a = 16'hbf1b;
	#20
	A = 16'h34a6;
	B = 16'h39dd;
	ans_a = 16'hbe41;
	#20
	A = 16'h3eaf;
	B = 16'hbf08;
	ans_a = 16'hc480;
	#20
	A = 16'hbf12;
	B = 16'h3173;
	ans_a = 16'hc4cd;
	#20
	A = 16'hbafc;
	B = 16'h3f6b;
	ans_a = 16'hc66c;
	#20
	A = 16'hb5f6;
	B = 16'hbd1b;
	ans_a = 16'hc5f2;
	#20
	A = 16'hb017;
	B = 16'h3e9a;
	ans_a = 16'hc628;
	#20
	A = 16'h3808;
	B = 16'hba2d;
	ans_a = 16'hc68c;
	#20
	A = 16'hbb48;
	B = 16'hbf83;
	ans_a = 16'hc4d6;
	#20
	A = 16'hbe99;
	B = 16'hbc74;
	ans_a = 16'hc200;
	#20
	A = 16'h3cd6;
	B = 16'h3893;
	ans_a = 16'hc09e;
	#20
	A = 16'h34d2;
	B = 16'h3684;
	ans_a = 16'hc05f;
	#20
	A = 16'h33ff;
	B = 16'h3f55;
	ans_a = 16'hbee9;
	#20
	A = 16'h3e6e;
	B = 16'h3e88;
	ans_a = 16'h3b2e;
	#20
	A = 16'h3b36;
	B = 16'hbcfa;
	ans_a = 16'hb328;
	#20
	A = 16'h3cfa;
	B = 16'hbff2;
	ans_a = 16'hc164;
	#20
	A = 16'h3164;
	B = 16'h3ddd;
	ans_a = 16'hc0e6;
	#20
	A = 16'h2b4b;
	B = 16'hb9e4;
	ans_a = 16'hc0fb;
	#20
	A = 16'hbf5c;
	B = 16'h2a02;
	ans_a = 16'hc127;
	#20
	A = 16'h3dfb;
	B = 16'h3edf;
	ans_a = 16'ha000;
	#20
	A = 16'h3ee3;
	B = 16'h3984;
	ans_a = 16'h3cb8;
	#20
	A = 16'h35ce;
	B = 16'hbc10;
	ans_a = 16'h3a7e;
	#20
	A = 16'h3492;
	B = 16'h3ed2;
	ans_a = 16'h3d32;
	#20
	A = 16'h3c26;
	B = 16'hb729;
	ans_a = 16'h3aae;
	#20
	A = 16'h2648;
	B = 16'hbda8;
	ans_a = 16'h3a67;
	#20
	A = 16'h3dbc;
	B = 16'h3d7d;
	ans_a = 16'h4189;
	#20
	A = 16'h30e8;
	B = 16'h3d2d;
	ans_a = 16'h41ef;
	#20
	A = 16'hb528;
	B = 16'h37fd;
	ans_a = 16'h419d;
	#20
	A = 16'hbe00;
	B = 16'hb8d8;
	ans_a = 16'h436e;
	#20
	A = 16'hbc51;
	B = 16'hbf97;
	ans_a = 16'h45c3;
	#20
	A = 16'h3546;
	B = 16'h360d;
	ans_a = 16'h45e3;
	#20
	A = 16'hbd65;
	B = 16'hb403;
	ans_a = 16'h463a;
	#20
	A = 16'h36bc;
	B = 16'hbcc3;
	ans_a = 16'h45ba;
	#20
	A = 16'h3813;
	B = 16'hbf0d;
	ans_a = 16'h44d4;
	#20
	A = 16'h3d63;
	B = 16'h3d79;
	ans_a = 16'h46ac;
	#20
	A = 16'h3b61;
	B = 16'hbecc;
	ans_a = 16'h451b;
	#20
	A = 16'h380c;
	B = 16'hab06;
	ans_a = 16'h4514;
	#20
	A = 16'h3cac;
	B = 16'h3c0b;
	ans_a = 16'h4642;
	#20
	A = 16'h3d1a;
	B = 16'h3a39;
	ans_a = 16'h4740;
	#20
	A = 16'hb61d;
	B = 16'hbac8;
	ans_a = 16'h4793;
	#20
	A = 16'h3f25;
	B = 16'h36a0;
	ans_a = 16'h4828;
	#20
	A = 16'hbd17;
	B = 16'h3c64;
	ans_a = 16'h46ea;
	#20
	A = 16'h3aad;
	B = 16'hbcfb;
	ans_a = 16'h45e0;
	#20
	A = 16'hb78a;
	B = 16'h3d13;
	ans_a = 16'h4547;
	#20
	A = 16'hbef7;
	B = 16'h3c28;
	ans_a = 16'h42f0;
	#20
	A = 16'hba7a;
	B = 16'h3b8f;
	ans_a = 16'h4168;
	#20
	A = 16'h3d42;
	B = 16'h3cee;
	ans_a = 16'h4453;
	#20
	A = 16'hb20f;
	B = 16'h352f;
	ans_a = 16'h4443;
	#20
	A = 16'hba6d;
	B = 16'h3dfb;
	ans_a = 16'h421f;
	#20
	A = 16'hbfa9;
	B = 16'hb0eb;
	ans_a = 16'h42b6;
	#20
	A = 16'hb1dc;
	B = 16'hbb56;
	ans_a = 16'h430c;
	#20
	A = 16'hba06;
	B = 16'hbe3f;
	ans_a = 16'h44b3;
	#20
	A = 16'hbec3;
	B = 16'hb5c2;
	ans_a = 16'h454f;
	#20
	A = 16'hbc17;
	B = 16'h36e5;
	ans_a = 16'h44de;
	#20
	A = 16'hbfb5;
	B = 16'h3ce1;
	ans_a = 16'h4109;
	#20
	A = 16'hb0ee;
	B = 16'hbffe;
	ans_a = 16'h41a7;
	#20
	A = 16'hbd77;
	B = 16'h3f41;
	ans_a = 16'h3590;
	#20
	A = 16'h3cac;
	B = 16'h3a34;
	ans_a = 16'h3d04;
	#20
	A = 16'h39f8;
	B = 16'h36fe;
	ans_a = 16'h3e52;
	#20
	A = 16'h3e1d;
	B = 16'hbbb7;
	ans_a = 16'h2ed0;
	#20
	A = 16'h3ca9;
	B = 16'h3810;
	ans_a = 16'h3996;
	#20
	A = 16'h3885;
	B = 16'hb342;
	ans_a = 16'h3890;
	#20
	A = 16'h3334;
	B = 16'hbf32;
	ans_a = 16'h314a;
	#20
	A = 16'hb534;
	B = 16'h3542;
	ans_a = 16'h2b7a;
	#20
	A = 16'h3bc1;
	B = 16'hb95c;
	ans_a = 16'hb8ba;
	#20
	A = 16'h3d1e;
	B = 16'h3f61;
	ans_a = 16'h3f13;
	#20
	A = 16'h3a39;
	B = 16'hb4a6;
	ans_a = 16'h3e2c;
	#20
	A = 16'h3ccb;
	B = 16'h3ab7;
	ans_a = 16'h4119;
	#20
	A = 16'h3cf9;
	B = 16'h2d53;
	ans_a = 16'h414e;
	#20
	A = 16'hbca0;
	B = 16'h3966;
	ans_a = 16'h3f7d;
	#20
	A = 16'h3d5d;
	B = 16'h3e7c;
	ans_a = 16'h440c;
	#20
	A = 16'hbedf;
	B = 16'h3b02;
	ans_a = 16'h4116;
	#20
	A = 16'hbe47;
	B = 16'hb6ae;
	ans_a = 16'h4266;
	#20
	A = 16'h3d86;
	B = 16'hbd40;
	ans_a = 16'h3d8c;
	#20
	A = 16'hb9ab;
	B = 16'hbebb;
	ans_a = 16'h4128;
	#20
	A = 16'h3ec4;
	B = 16'hb7ab;
	ans_a = 16'h3f12;
	#20
	A = 16'h3b6f;
	B = 16'hba17;
	ans_a = 16'h3c3e;
	#20
	A = 16'h3f19;
	B = 16'h3e29;
	ans_a = 16'h4396;
	#20
	A = 16'hbe40;
	B = 16'hba4f;
	ans_a = 16'h4506;
	#20
	A = 16'h2c6a;
	B = 16'h3e99;
	ans_a = 16'h4523;
	#20
	A = 16'h2eec;
	B = 16'h3c9f;
	ans_a = 16'h4543;
	#20
	A = 16'h3d9f;
	B = 16'hbd59;
	ans_a = 16'h42c4;
	#20
	A = 16'h3305;
	B = 16'h3854;
	ans_a = 16'h4301;
	#20
	A = 16'hbdd6;
	B = 16'hbe93;
	ans_a = 16'h45e6;
	#20
	A = 16'haf91;
	B = 16'hbfaf;
	ans_a = 16'h4620;
	#20
	A = 16'h39c4;
	B = 16'h3262;
	ans_a = 16'h4645;
	#20
	A = 16'hbedf;
	B = 16'hb7c3;
	ans_a = 16'h471a;
	#20
	A = 16'h3c9e;
	B = 16'hb850;
	ans_a = 16'h467b;
	#20
	A = 16'hbebe;
	B = 16'h38a4;
	ans_a = 16'h4581;
	#20
	A = 16'hbf5f;
	B = 16'hbeb9;
	ans_a = 16'h484d;
	#20
	A = 16'ha3e5;
	B = 16'h2a30;
	ans_a = 16'h484d;
	#20
	A = 16'hbe86;
	B = 16'hbd6d;
	ans_a = 16'h4968;
	#20
	A = 16'h3e56;
	B = 16'h3cd7;
	ans_a = 16'h4a5d;
	#20
	A = 16'h3e48;
	B = 16'h3c0a;
	ans_a = 16'h4b28;
	#20
	A = 16'h368f;
	B = 16'h3564;
	ans_a = 16'h4b3a;
	#20
	A = 16'hbd5c;
	B = 16'h3c24;
	ans_a = 16'h4a88;
	#20
	A = 16'h378c;
	B = 16'hb89e;
	ans_a = 16'h4a65;
	#20
	A = 16'hbd24;
	B = 16'hbc2c;
	ans_a = 16'h4b11;
	#20
	A = 16'hbbeb;
	B = 16'h3d5f;
	ans_a = 16'h4a67;
	#20
	A = 16'h3e3b;
	B = 16'hbd5f;
	ans_a = 16'h495b;
	#20
	A = 16'hbf63;
	B = 16'h3cd8;
	ans_a = 16'h483d;
	#20
	A = 16'h3936;
	B = 16'h3f61;
	ans_a = 16'h48d7;
	#20
	A = 16'h3ffb;
	B = 16'hb658;
	ans_a = 16'h4872;
	#20
	A = 16'hbe9c;
	B = 16'h398f;
	ans_a = 16'h47be;
	#20
	A = 16'hb88f;
	B = 16'h3ed5;
	ans_a = 16'h46c5;
	#20
	A = 16'ha04a;
	B = 16'h3fc5;
	ans_a = 16'h46c1;
	#20
	A = 16'hbf93;
	B = 16'hbd57;
	ans_a = 16'h48a4;
	#20
	A = 16'h3a63;
	B = 16'hb1ed;
	ans_a = 16'h4891;
	#20
	A = 16'hbfc1;
	B = 16'hb80a;
	ans_a = 16'h490e;
	#20
	A = 16'hb41e;
	B = 16'h3f03;
	ans_a = 16'h48d4;
	#20
	A = 16'hbdcf;
	B = 16'hb827;
	ans_a = 16'h4934;
	#20
	A = 16'hbf46;
	B = 16'hbbde;
	ans_a = 16'h4a19;
	#20
	A = 16'hb5dc;
	B = 16'hbce1;
	ans_a = 16'h4a52;
	#20
	A = 16'hbf8d;
	B = 16'h2acd;
	ans_a = 16'h4a45;
	#20
	A = 16'h38fd;
	B = 16'h3fa3;
	ans_a = 16'h4add;
	#20
	A = 16'h3e66;
	B = 16'h3de4;
	ans_a = 16'h4c05;
	#20
	A = 16'hbc24;
	B = 16'hbc37;
	ans_a = 16'h4c4b;
	#20
	A = 16'hb7a1;
	B = 16'ha667;
	ans_a = 16'h4c4c;
	#20
	A = 16'hb73b;
	B = 16'hbd4d;
	ans_a = 16'h4c72;
	#20
	A = 16'hb84d;
	B = 16'h34fa;
	ans_a = 16'h4c67;
	#20
	A = 16'hb137;
	B = 16'hbc36;
	ans_a = 16'h4c72;
	#20
	A = 16'h32ca;
	B = 16'h3d45;
	ans_a = 16'h4c84;
	#20
	A = 16'hbc2a;
	B = 16'hbf9d;
	ans_a = 16'h4d03;
	#20
	A = 16'h3343;
	B = 16'hb8bb;
	ans_a = 16'h4cfa;
	#20
	A = 16'hb915;
	B = 16'h3563;
	ans_a = 16'h4cec;
	#20
	A = 16'hbf19;
	B = 16'h2ed5;
	ans_a = 16'h4ce0;
	#20
	A = 16'hbccb;
	B = 16'hbfb8;
	ans_a = 16'h4d74;
	#20
	A = 16'h3d19;
	B = 16'h3ea4;
	ans_a = 16'h4dfb;
	#20
	A = 16'hbdf9;
	B = 16'hbc8c;
	ans_a = 16'h4e68;
	#20
	A = 16'hbddf;
	B = 16'h3842;
	ans_a = 16'h4e36;
	#20
	A = 16'h3cba;
	B = 16'hb71f;
	ans_a = 16'h4e14;
	#20
	A = 16'h3cc0;
	B = 16'hbc9b;
	ans_a = 16'h4dbc;
	#20
	A = 16'h3c71;
	B = 16'hb129;
	ans_a = 16'h4db1;
	#20
	A = 16'hbe50;
	B = 16'hb805;
	ans_a = 16'h4de4;
	#20
	A = 16'hbc7f;
	B = 16'h3dd0;
	ans_a = 16'h4d7b;
	#20
	A = 16'haf1d;
	B = 16'hae1a;
	ans_a = 16'h4d7c;
	#20
	A = 16'hba05;
	B = 16'hbe06;
	ans_a = 16'h4dc4;
	#20
	A = 16'haaa5;
	B = 16'h3cc6;
	ans_a = 16'h4dc0;
	#20
	A = 16'h3ca4;
	B = 16'hb75b;
	ans_a = 16'h4d9e;
	#20
	A = 16'h3e53;
	B = 16'h33c8;
	ans_a = 16'h4db7;
	#20
	A = 16'h3715;
	B = 16'hbdef;
	ans_a = 16'h4d8d;
	#20
	A = 16'h3c41;
	B = 16'hbfdf;
	ans_a = 16'h4d07;
	#20
	A = 16'h3ef4;
	B = 16'h3dfc;
	ans_a = 16'h4dae;
	#20
	A = 16'h3f98;
	B = 16'hbd16;
	ans_a = 16'h4d14;
	#20
	A = 16'hb836;
	B = 16'hb8bf;
	ans_a = 16'h4d28;
	#20
	A = 16'hb465;
	B = 16'hb859;
	ans_a = 16'h4d32;
	#20
	A = 16'hb95c;
	B = 16'h2c8d;
	ans_a = 16'h4d2f;
	#20
	A = 16'h3cc2;
	B = 16'hba23;
	ans_a = 16'h4cf5;
	#20
	A = 16'hb5fc;
	B = 16'hbceb;
	ans_a = 16'h4d12;
	#20
	A = 16'hbfba;
	B = 16'h39aa;
	ans_a = 16'h4cba;
	#20
	A = 16'hbf92;
	B = 16'h32da;
	ans_a = 16'h4ca0;
	#20
	A = 16'h3a6c;
	B = 16'hb21c;
	ans_a = 16'h4c96;
	#20
	A = 16'h3d4a;
	B = 16'h3cda;
	ans_a = 16'h4cfd;
	#20
	A = 16'h3d32;
	B = 16'hbf6a;
	ans_a = 16'h4c63;
	#20
	A = 16'hbaef;
	B = 16'hb915;
	ans_a = 16'h4c86;
	#20
	A = 16'hb526;
	B = 16'h3537;
	ans_a = 16'h4c7f;
	#20
	A = 16'h3e24;
	B = 16'hbab7;
	ans_a = 16'h4c2d;
	#20
	A = 16'h3ef5;
	B = 16'h3fb1;
	ans_a = 16'h4d03;
	#20
	A = 16'h3c72;
	B = 16'h3b2b;
	ans_a = 16'h4d43;
	#20
	A = 16'h3524;
	B = 16'h3fa8;
	ans_a = 16'h4d6a;
	#20
	A = 16'hbe69;
	B = 16'hbc10;
	ans_a = 16'h4dd2;
	#20
	A = 16'h383c;
	B = 16'hba43;
	ans_a = 16'h4db7;
	#20
	A = 16'hb9b2;
	B = 16'hb17b;
	ans_a = 16'h4dbf;
	#20
	A = 16'hbe8a;
	B = 16'hb722;
	ans_a = 16'h4dee;
	#20
	A = 16'hba81;
	B = 16'hbed5;
	ans_a = 16'h4e47;
	#20
	A = 16'hbf7e;
	B = 16'hbd3a;
	ans_a = 16'h4ee4;
	#20
	A = 16'h33b1;
	B = 16'h3a3a;
	ans_a = 16'h4ef0;
	#20
	A = 16'hbd25;
	B = 16'h3636;
	ans_a = 16'h4ed0;
	#20
	A = 16'hb807;
	B = 16'h3c77;
	ans_a = 16'h4eac;
	#20
	A = 16'h3d92;
	B = 16'h3f1a;
	ans_a = 16'h4f4a;
	#20
	A = 16'hba83;
	B = 16'h366a;
	ans_a = 16'h4f35;
	#20
	A = 16'hbfa0;
	B = 16'hbe43;
	ans_a = 16'h4ff4;
	#20
	A = 16'hbfd4;
	B = 16'h38ff;
	ans_a = 16'h4fa6;
	#20
	A = 16'h3c5a;
	B = 16'hb937;
	ans_a = 16'h4f79;
	#20
	A = 16'h3c72;
	B = 16'h3c37;
	ans_a = 16'h4fc4;
	#20
	A = 16'hba9c;
	B = 16'h3d89;
	ans_a = 16'h4f7b;
	#20
	A = 16'hbda9;
	B = 16'h35e0;
	ans_a = 16'h4f5a;
	#20
	A = 16'h3183;
	B = 16'h3d55;
	ans_a = 16'h4f69;
	#20
	A = 16'h3860;
	B = 16'hb82e;
	ans_a = 16'h4f57;
	#20
	A = 16'h3dc4;
	B = 16'hba2a;
	ans_a = 16'h4f10;
	#20
	A = 16'hb7c5;
	B = 16'h3d0e;
	ans_a = 16'h4ee9;
	#20
	A = 16'h3f0e;
	B = 16'h3c0b;
	ans_a = 16'h4f5b;
	#20
	A = 16'hbddb;
	B = 16'h367a;
	ans_a = 16'h4f35;
	#20
	A = 16'hb4d4;
	B = 16'h3f87;
	ans_a = 16'h4f11;
	#20
	A = 16'hbf37;
	B = 16'hbe3a;
	ans_a = 16'h4fc5;
	#20
	A = 16'hb9a6;
	B = 16'hb466;
	ans_a = 16'h4fd1;
	#20
	A = 16'h3977;
	B = 16'hbb02;
	ans_a = 16'h4fab;
	#20
	A = 16'h2f5b;
	B = 16'hb17d;
	ans_a = 16'h4faa;
	#20
	A = 16'hb664;
	B = 16'h34bf;
	ans_a = 16'h4fa2;
	#20
	A = 16'h3e52;
	B = 16'hb4ef;
	ans_a = 16'h4f83;
	#20
	A = 16'hbd8a;
	B = 16'hbd5b;
	ans_a = 16'h4ffa;
	#20
	A = 16'h39ef;
	B = 16'hbc83;
	ans_a = 16'h4fc4;
	#20
	A = 16'hbd76;
	B = 16'h3493;
	ans_a = 16'h4fab;
	#20
	A = 16'hbff2;
	B = 16'h3bed;
	ans_a = 16'h4f2d;
	#20
	A = 16'hbdd6;
	B = 16'h3fbb;
	ans_a = 16'h4e78;
	#20
	A = 16'hbd0e;
	B = 16'h3eb1;
	ans_a = 16'h4df1;
	#20
	A = 16'hbcb1;
	B = 16'hbcb8;
	ans_a = 16'h4e4a;
	#20
	A = 16'h2ee3;
	B = 16'h3de2;
	ans_a = 16'h4e54;
	#20
	A = 16'hbede;
	B = 16'hb549;
	ans_a = 16'h4e78;
	#20
	A = 16'hba4b;
	B = 16'hbbc0;
	ans_a = 16'h4ea9;
	#20
	A = 16'hbd15;
	B = 16'hbea1;
	ans_a = 16'h4f30;
	#20
	A = 16'h3c6a;
	B = 16'hba64;
	ans_a = 16'h4ef8;
	#20
	A = 16'h3cf3;
	B = 16'hb7d6;
	ans_a = 16'h4ed1;
	#20
	A = 16'h3c09;
	B = 16'hbc31;
	ans_a = 16'h4e8d;
	#20
	A = 16'h3027;
	B = 16'hbfab;
	ans_a = 16'h4e7d;
	#20
	A = 16'h3b0c;
	B = 16'h3109;
	ans_a = 16'h4e86;
	#20
	A = 16'hbe1b;
	B = 16'h3d7d;
	ans_a = 16'h4e00;
	#20
	A = 16'hbc0c;
	B = 16'h392f;
	ans_a = 16'h4dd6;
	#20
	A = 16'h3f29;
	B = 16'hbf09;
	ans_a = 16'h4d0c;
	#20
	A = 16'hbb93;
	B = 16'h390f;
	ans_a = 16'h4ce6;
	#20
	A = 16'hbc5c;
	B = 16'hbf43;
	ans_a = 16'h4d65;
	#20
	A = 16'h3965;
	B = 16'hbff0;
	ans_a = 16'h4d0f;
	#20
	A = 16'h3682;
	B = 16'h3953;
	ans_a = 16'h4d20;
	#20
	A = 16'h3959;
	B = 16'h3e4c;
	ans_a = 16'h4d63;
	#20
	A = 16'hba08;
	B = 16'h3d53;
	ans_a = 16'h4d23;
	#20
	A = 16'h32ec;
	B = 16'hbf9a;
	ans_a = 16'h4d09;
	#20
	A = 16'h3f13;
	B = 16'hbcc9;
	ans_a = 16'h4c82;
	#20
	A = 16'hbfd3;
	B = 16'h3fe9;
	ans_a = 16'h4b15;
	#20
	A = 16'hb844;
	B = 16'h2a0f;
	ans_a = 16'h4b12;
	#20
	A = 16'hb2dd;
	B = 16'hb852;
	ans_a = 16'h4b21;
	#20
	A = 16'h3dc3;
	B = 16'hb94d;
	ans_a = 16'h4aa7;
	#20
	A = 16'h3f14;
	B = 16'hb679;
	ans_a = 16'h4a4b;
	#20
	A = 16'hbc64;
	B = 16'hbf72;
	ans_a = 16'h4b50;
	#20
	A = 16'h397d;
	B = 16'hbd9b;
	ans_a = 16'h4ad5;
	#20
	A = 16'hbee4;
	B = 16'h3b85;
	ans_a = 16'h4a06;
	#20
	A = 16'h3fd1;
	B = 16'h39e0;
	ans_a = 16'h4abe;
	#20
	A = 16'hbd74;
	B = 16'h3fba;
	ans_a = 16'h496d;
	#20
	A = 16'hb194;
	B = 16'hbc47;
	ans_a = 16'h4985;
	#20
	A = 16'hbeb4;
	B = 16'hbb7f;
	ans_a = 16'h4a4e;
	#20
	A = 16'h38d8;
	B = 16'h2bc0;
	ans_a = 16'h4a53;
	#20
	A = 16'h39b5;
	B = 16'hb982;
	ans_a = 16'h4a14;
	#20
	A = 16'h3c7a;
	B = 16'h36c7;
	ans_a = 16'h4a51;
	#20
	A = 16'hab18;
	B = 16'h3d26;
	ans_a = 16'h4a48;
	#20
	A = 16'hbf94;
	B = 16'hb653;
	ans_a = 16'h4aa8;
	#20
	A = 16'hbf9a;
	B = 16'h395d;
	ans_a = 16'h4a05;
	#20
	A = 16'h3fa1;
	B = 16'hb977;
	ans_a = 16'h495e;
	#20
	A = 16'h38ea;
	B = 16'h3d01;
	ans_a = 16'h49c0;
	#20
	A = 16'had54;
	B = 16'hbe65;
	ans_a = 16'h49d1;
	#20
	A = 16'hbcfd;
	B = 16'h3ebc;
	ans_a = 16'h48c4;
	#20
	A = 16'hb56d;
	B = 16'h3f60;
	ans_a = 16'h4874;
	#20
	A = 16'h3d65;
	B = 16'hb82a;
	ans_a = 16'h481a;
	#20
	A = 16'h3222;
	B = 16'hbc62;
	ans_a = 16'h47fe;
	#20
	A = 16'h3ddf;
	B = 16'hbd7b;
	ans_a = 16'h45fb;
	#20
	A = 16'h3c46;
	B = 16'h3972;
	ans_a = 16'h46b5;
	#20
	A = 16'hbcdb;
	B = 16'hb2c5;
	ans_a = 16'h46f7;
	#20
	A = 16'hbd37;
	B = 16'hb80f;
	ans_a = 16'h47a0;
	#20
	A = 16'hbda3;
	B = 16'h3713;
	ans_a = 16'h4700;
	#20
	A = 16'h3c39;
	B = 16'hbd0f;
	ans_a = 16'h45aa;
	#20
	A = 16'hb959;
	B = 16'hb6c4;
	ans_a = 16'h45f2;
	#20
	A = 16'h3cfa;
	B = 16'h3e1c;
	ans_a = 16'h47d8;
	#20
	A = 16'h3bea;
	B = 16'hbb4d;
	ans_a = 16'h46f1;
	#20
	A = 16'h3ddc;
	B = 16'h3b53;
	ans_a = 16'h4824;
	#20
	A = 16'h3d23;
	B = 16'hbbb7;
	ans_a = 16'h470b;
	#20
	A = 16'h3963;
	B = 16'h37e2;
	ans_a = 16'h4760;
	#20
	A = 16'h3479;
	B = 16'hba90;
	ans_a = 16'h4725;
	#20
	A = 16'h3b3f;
	B = 16'h3e9b;
	ans_a = 16'h4852;
	#20
	A = 16'hbcd5;
	B = 16'hbf59;
	ans_a = 16'h496e;
	#20
	A = 16'h36ff;
	B = 16'h3885;
	ans_a = 16'h498e;
	#20
	A = 16'hb9c0;
	B = 16'hb06d;
	ans_a = 16'h499b;
	#20
	A = 16'h3fae;
	B = 16'h3716;
	ans_a = 16'h4a08;
	#20
	A = 16'h3817;
	B = 16'hb7c5;
	ans_a = 16'h49e8;
	#20
	A = 16'hbeef;
	B = 16'h3fcb;
	ans_a = 16'h4838;
	#20
	A = 16'hbcfa;
	B = 16'hb41b;
	ans_a = 16'h4861;
	#20
	A = 16'h3cab;
	B = 16'h2c49;
	ans_a = 16'h486b;
	#20
	A = 16'hb27a;
	B = 16'h3c4b;
	ans_a = 16'h484f;
	#20
	A = 16'h37e9;
	B = 16'h3e81;
	ans_a = 16'h48b6;
	#20
	A = 16'hbde6;
	B = 16'h3ca4;
	ans_a = 16'h47b6;
	#20
	A = 16'hb3db;
	B = 16'h3d75;
	ans_a = 16'h4760;
	#20
	A = 16'h3d7c;
	B = 16'h3dd9;
	ans_a = 16'h48b0;
	#20
	A = 16'hb50c;
	B = 16'h3b07;
	ans_a = 16'h488d;
	#20
	A = 16'hbc59;
	B = 16'hbef8;
	ans_a = 16'h497f;
	#20
	A = 16'h38a4;
	B = 16'h3d86;
	ans_a = 16'h49e6;
	#20
	A = 16'h2f71;
	B = 16'hbbaa;
	ans_a = 16'h49d8;
	#20
	A = 16'hbe77;
	B = 16'hbdf2;
	ans_a = 16'h4b0c;
	#20
	A = 16'h3a9b;
	B = 16'h3c3d;
	ans_a = 16'h4b7c;
	#20
	A = 16'hbc4b;
	B = 16'h3ca7;
	ans_a = 16'h4adc;
	#20
	A = 16'hb4c2;
	B = 16'h394c;
	ans_a = 16'h4ac3;
	#20
	A = 16'h3ee4;
	B = 16'hbdb7;
	ans_a = 16'h4988;
	#20
	A = 16'hbc44;
	B = 16'h3b56;
	ans_a = 16'h490b;
	#20
	A = 16'h3b71;
	B = 16'h3e2f;
	ans_a = 16'h49c3;
	#20
	A = 16'hbefa;
	B = 16'hbee8;
	ans_a = 16'h4b44;
	#20
	A = 16'hb5ee;
	B = 16'hbbc5;
	ans_a = 16'h4b72;
	#20
	A = 16'h3cc1;
	B = 16'h3416;
	ans_a = 16'h4b99;
	#20
	A = 16'h319d;
	B = 16'hbd42;
	ans_a = 16'h4b7b;
	#20
	A = 16'hbd00;
	B = 16'hb6f8;
	ans_a = 16'h4bc1;
	#20
	A = 16'h3993;
	B = 16'h38fa;
	ans_a = 16'h4bf8;
	#20
	A = 16'h3af9;
	B = 16'h3e8b;
	ans_a = 16'h4c57;
	#20
	A = 16'h33a1;
	B = 16'h2f08;
	ans_a = 16'h4c59;
	#20
	A = 16'h3cf9;
	B = 16'hbfef;
	ans_a = 16'h4b76;
	#20
	A = 16'h3fb4;
	B = 16'h37ab;
	ans_a = 16'h4bec;
	#20
	A = 16'h352f;
	B = 16'h3c53;
	ans_a = 16'h4c0c;
	#20
	A = 16'hbae2;
	B = 16'hb9e5;
	ans_a = 16'h4c35;
	#20
	A = 16'h38cc;
	B = 16'h3a00;
	ans_a = 16'h4c52;
	#20
	A = 16'h359d;
	B = 16'h3fe6;
	ans_a = 16'h4c7e;
	#20
	A = 16'h3c07;
	B = 16'h36cc;
	ans_a = 16'h4c99;
	#20
	A = 16'hbd03;
	B = 16'h39e3;
	ans_a = 16'h4c5e;
	#20
	A = 16'hbb8f;
	B = 16'h3de8;
	ans_a = 16'h4c05;
	#20
	A = 16'h3d2c;
	B = 16'h3f13;
	ans_a = 16'h4c97;
	#20
	A = 16'hbea1;
	B = 16'h3dd1;
	ans_a = 16'h4bfa;
	#20
	A = 16'h3c9d;
	B = 16'h3cc0;
	ans_a = 16'h4c55;
	#20
	A = 16'h3726;
	B = 16'hbdeb;
	ans_a = 16'h4c2b;
	#20
	A = 16'h3a29;
	B = 16'h3fe7;
	ans_a = 16'h4c8c;
	#20
	A = 16'hbb10;
	B = 16'h3d49;
	ans_a = 16'h4c41;
	#20
	A = 16'hbee9;
	B = 16'hbb13;
	ans_a = 16'h4ca3;
	#20
	A = 16'h3c09;
	B = 16'h39c7;
	ans_a = 16'h4cd2;
	#20
	A = 16'hb8a5;
	B = 16'hbc1e;
	ans_a = 16'h4cf8;
	#20
	A = 16'hba99;
	B = 16'hbfea;
	ans_a = 16'h4d60;
	#20
	A = 16'haa1a;
	B = 16'hbf1e;
	ans_a = 16'h4d65;
	#20
	A = 16'h3854;
	B = 16'h3da5;
	ans_a = 16'h4d96;
	#20
	A = 16'h3b49;
	B = 16'h3fb2;
	ans_a = 16'h4e06;
	#20
	A = 16'h381e;
	B = 16'hb6b8;
	ans_a = 16'h4df8;
	#20
	A = 16'hac2d;
	B = 16'h323a;
	ans_a = 16'h4df7;
	#20
	A = 16'h3f11;
	B = 16'h3c17;
	ans_a = 16'h4e6b;
	#20
	A = 16'hb654;
	B = 16'h3e16;
	ans_a = 16'h4e44;
	#20
	A = 16'h3deb;
	B = 16'hb600;
	ans_a = 16'h4e20;
	#20
	A = 16'h3f34;
	B = 16'h3fae;
	ans_a = 16'h4efd;
	#20
	A = 16'h3186;
	B = 16'h3ab3;
	ans_a = 16'h4f06;
	#20
	A = 16'h3d5c;
	B = 16'hbf72;
	ans_a = 16'h4e66;
	#20
	A = 16'hba38;
	B = 16'h2c96;
	ans_a = 16'h4e62;
	#20
	A = 16'hac66;
	B = 16'habe7;
	ans_a = 16'h4e62;
	#20
	A = 16'hbd25;
	B = 16'h325a;
	ans_a = 16'h4e52;
	#20
	A = 16'h3035;
	B = 16'hb17b;
	ans_a = 16'h4e51;
	#20
	A = 16'h3b4b;
	B = 16'h3dc1;
	ans_a = 16'h4ea5;
	#20
	A = 16'hb6d4;
	B = 16'hb1a9;
	ans_a = 16'h4eaa;
	#20
	A = 16'had1c;
	B = 16'hb86d;
	ans_a = 16'h4ead;
	#20
	A = 16'h3f6e;
	B = 16'h3df7;
	ans_a = 16'h4f5e;
	#20
	A = 16'hbc40;
	B = 16'hb47e;
	ans_a = 16'h4f71;
	#20
	A = 16'hbce5;
	B = 16'hbd3a;
	ans_a = 16'h4fd7;
	#20
	A = 16'h2e2e;
	B = 16'hb809;
	ans_a = 16'h4fd4;
	#20
	A = 16'h3ef7;
	B = 16'hba1c;
	ans_a = 16'h4f7f;
	#20
	A = 16'h3f59;
	B = 16'h34e0;
	ans_a = 16'h4fa3;
	#20
	A = 16'h3dec;
	B = 16'hbd0a;
	ans_a = 16'h4f2c;
	#20
	A = 16'hb880;
	B = 16'h3a00;
	ans_a = 16'h4f11;
	#20
	A = 16'h3617;
	B = 16'h3399;
	ans_a = 16'h4f17;
	#20
	A = 16'h3624;
	B = 16'hbc5b;
	ans_a = 16'h4efc;
	#20
	A = 16'hbe79;
	B = 16'hbb74;
	ans_a = 16'h4f5c;
	#20
	A = 16'h3cfe;
	B = 16'h3281;
	ans_a = 16'h4f6c;
	#20
	A = 16'h3c1d;
	B = 16'h38b7;
	ans_a = 16'h4f93;
	#20
	A = 16'hbeaf;
	B = 16'hbbd1;
	ans_a = 16'h4ffc;
	#20
	A = 16'h3cbc;
	B = 16'h39e7;
	ans_a = 16'h501a;
	#20
	A = 16'h3d3e;
	B = 16'ha60c;
	ans_a = 16'h5019;
	#20
	A = 16'h3dea;
	B = 16'hbfe4;
	ans_a = 16'h4f77;
	#20
	A = 16'hbc0d;
	B = 16'hbcd2;
	ans_a = 16'h4fc5;
	#20
	A = 16'h3e76;
	B = 16'hbf9d;
	ans_a = 16'h4f00;
	#20
	A = 16'hbe65;
	B = 16'h3e54;
	ans_a = 16'h4e5e;
	#20
	A = 16'ha34d;
	B = 16'hbe6b;
	ans_a = 16'h4e5f;
	#20
	A = 16'h3444;
	B = 16'hbd94;
	ans_a = 16'h4e47;
	#20
	A = 16'hb992;
	B = 16'h3fb0;
	ans_a = 16'h4df1;
	#20
	A = 16'hbd20;
	B = 16'hbc70;
	ans_a = 16'h4e4c;
	#20
	A = 16'h3400;
	B = 16'h371a;
	ans_a = 16'h4e53;
	#20
	A = 16'h3b33;
	B = 16'hb88a;
	ans_a = 16'h4e32;
	#20
	A = 16'hbff4;
	B = 16'hbebf;
	ans_a = 16'h4f09;
	#20
	A = 16'hbf04;
	B = 16'hb6f7;
	ans_a = 16'h4f3a;
	#20
	A = 16'hbd37;
	B = 16'hb87a;
	ans_a = 16'h4f69;
	#20
	A = 16'h3f2e;
	B = 16'h3f6e;
	ans_a = 16'h501f;
	#20
	A = 16'h3254;
	B = 16'h3e67;
	ans_a = 16'h5029;
	#20
	A = 16'hbf7b;
	B = 16'h3eba;
	ans_a = 16'h4f89;
	#20
	A = 16'h3e40;
	B = 16'h3fbe;
	ans_a = 16'h5025;
	#20
	A = 16'h3af2;
	B = 16'h3df5;
	ans_a = 16'h504e;
	#20
	A = 16'hbbe8;
	B = 16'h3fc2;
	ans_a = 16'h5011;
	#20
	A = 16'hae76;
	B = 16'h3ed3;
	ans_a = 16'h500b;
	#20
	A = 16'h37e3;
	B = 16'hbbcc;
	ans_a = 16'h4ff7;
	#20
	A = 16'h3fbb;
	B = 16'h3efc;
	ans_a = 16'h5068;
	#20
	A = 16'h3c96;
	B = 16'hbd2b;
	ans_a = 16'h5039;
	#20
	A = 16'h3c70;
	B = 16'hbfb4;
	ans_a = 16'h4fe9;
	#20
	A = 16'hbccb;
	B = 16'h2a4f;
	ans_a = 16'h4fe5;
	#20
	A = 16'hb16e;
	B = 16'hb8de;
	ans_a = 16'h4fec;
	#20
	A = 16'hbebd;
	B = 16'h3bd9;
	ans_a = 16'h4f82;
	#20
	A = 16'h359f;
	B = 16'hbbae;
	ans_a = 16'h4f6c;
	#20
	A = 16'ha010;
	B = 16'h2ec8;
	ans_a = 16'h4f6c;
	#20
	A = 16'hbca6;
	B = 16'h3d61;
	ans_a = 16'h4f08;
	#20
	A = 16'hb4a3;
	B = 16'h3ecb;
	ans_a = 16'h4ee8;
	#20
	A = 16'h3d07;
	B = 16'hba1e;
	ans_a = 16'h4eaa;
	#20
	A = 16'h3f1b;
	B = 16'hbaeb;
	ans_a = 16'h4e48;
	#20
	A = 16'hb9ab;
	B = 16'hbc41;
	ans_a = 16'h4e78;
	#20
	A = 16'hbe80;
	B = 16'h3caf;
	ans_a = 16'h4dfe;
	#20
	A = 16'h3f9d;
	B = 16'hbfe8;
	ans_a = 16'h4d0d;
	#20
	A = 16'h3d11;
	B = 16'h3a97;
	ans_a = 16'h4d50;
	#20
	A = 16'h3e75;
	B = 16'h3c28;
	ans_a = 16'h4dbb;
	#20
	A = 16'hb051;
	B = 16'h3e83;
	ans_a = 16'h4dad;
	#20
	A = 16'h3272;
	B = 16'h3ad0;
	ans_a = 16'h4db8;
	#20
	A = 16'h239e;
	B = 16'h3f6e;
	ans_a = 16'h4dba;
	#20
	A = 16'hb82c;
	B = 16'h3140;
	ans_a = 16'h4db5;
	#20
	A = 16'hb91d;
	B = 16'h3c0f;
	ans_a = 16'h4d8c;
	#20
	A = 16'h36e1;
	B = 16'hbbc7;
	ans_a = 16'h4d71;
	#20
	A = 16'hb953;
	B = 16'hb9da;
	ans_a = 16'h4d90;
	#20
	A = 16'hb85b;
	B = 16'hb726;
	ans_a = 16'h4da0;
	#20
	A = 16'hba61;
	B = 16'hbc0e;
	ans_a = 16'h4dd4;
	#20
	A = 16'ha607;
	B = 16'h3b0a;
	ans_a = 16'h4dd3;
	#20
	A = 16'h23d8;
	B = 16'h328d;
	ans_a = 16'h4dd3;
	#20
	A = 16'hbf0d;
	B = 16'h3882;
	ans_a = 16'h4d93;
	#20
	A = 16'h3973;
	B = 16'h3ed0;
	ans_a = 16'h4ddd;
	#20
	A = 16'h3abe;
	B = 16'h3fb5;
	ans_a = 16'h4e45;
	#20
	A = 16'h3995;
	B = 16'h3377;
	ans_a = 16'h4e4f;
	#20
	A = 16'hb1ff;
	B = 16'hb38d;
	ans_a = 16'h4e52;
	#20
	A = 16'ha1b1;
	B = 16'hb98f;
	ans_a = 16'h4e52;
	#20
	A = 16'h3a9c;
	B = 16'hbe80;
	ans_a = 16'h4dfc;
	#20
	A = 16'h302d;
	B = 16'h3d3d;
	ans_a = 16'h4e07;
	#20
	A = 16'h3dda;
	B = 16'hb8c4;
	ans_a = 16'h4dcf;
	#20
	A = 16'hb995;
	B = 16'hbd13;
	ans_a = 16'h4e08;
	#20
	A = 16'hbd7d;
	B = 16'hbcd7;
	ans_a = 16'h4e72;
	#20
	A = 16'h3d29;
	B = 16'h208e;
	ans_a = 16'h4e73;
	#20
	A = 16'hb9fd;
	B = 16'hbf80;
	ans_a = 16'h4ecd;
	#20
	A = 16'h3cc5;
	B = 16'hb54b;
	ans_a = 16'h4eb4;
	#20
	A = 16'hbb59;
	B = 16'h36ca;
	ans_a = 16'h4e9b;
	#20
	A = 16'h3870;
	B = 16'hbc04;
	ans_a = 16'h4e77;
	#20
	A = 16'h3d3b;
	B = 16'h392e;
	ans_a = 16'h4ead;
	#20
	A = 16'hbbcf;
	B = 16'hb855;
	ans_a = 16'h4ecf;
	#20
	A = 16'h3742;
	B = 16'h37c3;
	ans_a = 16'h4edd;
	#20
	A = 16'h3fa3;
	B = 16'hbde1;
	ans_a = 16'h4e29;
	#20
	A = 16'h3807;
	B = 16'h3ad1;
	ans_a = 16'h4e44;
	#20
	A = 16'hbf93;
	B = 16'ha6f9;
	ans_a = 16'h4e47;
	#20
	A = 16'hbe71;
	B = 16'h3e2e;
	ans_a = 16'h4da8;
	#20
	A = 16'h3f3f;
	B = 16'hb57e;
	ans_a = 16'h4d80;
	#20
	A = 16'h33b8;
	B = 16'h3e3a;
	ans_a = 16'h4d98;
	#20
	A = 16'hbcd6;
	B = 16'hb71f;
	ans_a = 16'h4dba;
	#20
	A = 16'h387a;
	B = 16'h2437;
	ans_a = 16'h4dbb;
	#20
	A = 16'hbc1a;
	B = 16'h3a59;
	ans_a = 16'h4d87;
	#20
	A = 16'hb905;
	B = 16'h2553;
	ans_a = 16'h4d86;
	#20
	A = 16'h3d37;
	B = 16'h324f;
	ans_a = 16'h4d96;
	#20
	A = 16'h3c24;
	B = 16'hbcd1;
	ans_a = 16'h4d46;
	#20
	A = 16'hbcdf;
	B = 16'hbc6a;
	ans_a = 16'h4d9c;
	#20
	A = 16'hb8a4;
	B = 16'hbdd4;
	ans_a = 16'h4dd2;
	#20
	A = 16'hbd05;
	B = 16'hb58f;
	ans_a = 16'h4dee;
	#20
	A = 16'h3839;
	B = 16'h3573;
	ans_a = 16'h4dfa;
	#20
	A = 16'hbfef;
	B = 16'hb835;
	ans_a = 16'h4e3d;
	#20
	A = 16'h3c43;
	B = 16'h3b94;
	ans_a = 16'h4e7e;
	#20
	A = 16'hbe31;
	B = 16'h3c12;
	ans_a = 16'h4e19;
	#20
	A = 16'h3deb;
	B = 16'hbe8b;
	ans_a = 16'h4d7e;
	#20
	A = 16'h3c00;
	B = 16'hbf41;
	ans_a = 16'h4d0a;
	#20
	A = 16'hba89;
	B = 16'h3d3c;
	ans_a = 16'h4cc6;
	#20
	A = 16'hb990;
	B = 16'hb8b9;
	ans_a = 16'h4ce0;
	#20
	A = 16'hb91c;
	B = 16'hb95e;
	ans_a = 16'h4cfb;
	#20
	A = 16'hb0e5;
	B = 16'h3023;
	ans_a = 16'h4cfa;
	#20
	A = 16'hbcbc;
	B = 16'hb99d;
	ans_a = 16'h4d2f;
	#20
	A = 16'hbb3f;
	B = 16'hb2ef;
	ans_a = 16'h4d3c;
	#20
	A = 16'h3b1f;
	B = 16'hbcb5;
	ans_a = 16'h4cf9;
	#20
	A = 16'hbaa6;
	B = 16'ha899;
	ans_a = 16'h4cfb;
	#20
	A = 16'h2ecf;
	B = 16'h3f57;
	ans_a = 16'h4d07;
	#20
	A = 16'h3abc;
	B = 16'hb4c2;
	ans_a = 16'h4cf7;
	#20
	A = 16'h3e2c;
	B = 16'h3cea;
	ans_a = 16'h4d70;
	#20
	A = 16'hb9a9;
	B = 16'h3b9f;
	ans_a = 16'h4d45;
	#20
	A = 16'hbe0f;
	B = 16'hb011;
	ans_a = 16'h4d51;
	#20
	A = 16'h3845;
	B = 16'h344b;
	ans_a = 16'h4d5a;
	#20
	A = 16'h365a;
	B = 16'h3ae1;
	ans_a = 16'h4d70;
	#20
	A = 16'hbe32;
	B = 16'h3eaa;
	ans_a = 16'h4ccb;
	#20
	A = 16'h3cc7;
	B = 16'hbf9c;
	ans_a = 16'h4c3a;
	#20
	A = 16'hb7d9;
	B = 16'h3389;
	ans_a = 16'h4c33;
	#20
	A = 16'h3a58;
	B = 16'hbff4;
	ans_a = 16'h4b9c;
	#20
	A = 16'h3da9;
	B = 16'ha714;
	ans_a = 16'h4b97;
	#20
	A = 16'hb542;
	B = 16'h3bed;
	ans_a = 16'h4b6d;
	#20
	A = 16'h2ae9;
	B = 16'h3a83;
	ans_a = 16'h4b73;
	#20
	A = 16'h35b9;
	B = 16'h3dc5;
	ans_a = 16'h4bb5;
	#20
	A = 16'hbe2e;
	B = 16'h384b;
	ans_a = 16'h4b4b;
	#20
	A = 16'hbd8c;
	B = 16'h34c5;
	ans_a = 16'h4b16;
	#20
	A = 16'hbcce;
	B = 16'h3b3a;
	ans_a = 16'h4a8b;
	#20
	A = 16'hbdc9;
	B = 16'h3c01;
	ans_a = 16'h49d2;
	#20
	A = 16'h3838;
	B = 16'h3866;
	ans_a = 16'h49f7;
	#20
	A = 16'hb25a;
	B = 16'h3d28;
	ans_a = 16'h49d6;
	#20
	A = 16'h3af0;
	B = 16'h3421;
	ans_a = 16'h49f3;
	#20
	A = 16'haa8b;
	B = 16'h373b;
	ans_a = 16'h49f0;
	#20
	A = 16'hbdf5;
	B = 16'h3cb7;
	ans_a = 16'h490f;
	#20
	A = 16'hb64a;
	B = 16'h3621;
	ans_a = 16'h48fc;
	#20
	A = 16'hbd5f;
	B = 16'hb8e5;
	ans_a = 16'h4965;
	#20
	A = 16'hbf57;
	B = 16'h2f5a;
	ans_a = 16'h494a;
	#20
	A = 16'h3af8;
	B = 16'h3fcf;
	ans_a = 16'h4a24;
	#20
	A = 16'hbdd0;
	B = 16'h3da1;
	ans_a = 16'h491e;
	#20
	A = 16'hbc9f;
	B = 16'hbecd;
	ans_a = 16'h4a19;
	#20
	A = 16'h2a53;
	B = 16'hb423;
	ans_a = 16'h4a17;
	#20
	A = 16'hbddb;
	B = 16'h300d;
	ans_a = 16'h49ff;
	#20
	A = 16'hb1d9;
	B = 16'h2ccc;
	ans_a = 16'h49fd;
	#20
	A = 16'hb8f5;
	B = 16'h3854;
	ans_a = 16'h49d2;
	#20
	A = 16'hb95e;
	B = 16'h3e7d;
	ans_a = 16'h4947;
	#20
	A = 16'hbb59;
	B = 16'hbb69;
	ans_a = 16'h49b4;
	#20
	A = 16'h3b78;
	B = 16'h396c;
	ans_a = 16'h4a05;
	#20
	A = 16'hbc17;
	B = 16'hbc9f;
	ans_a = 16'h4a9c;
	#20
	A = 16'hbb98;
	B = 16'h9e71;
	ans_a = 16'h4a9d;
	#20
	A = 16'hb982;
	B = 16'hb9aa;
	ans_a = 16'h4adb;
	#20
	A = 16'h3d05;
	B = 16'hbeeb;
	ans_a = 16'h49c5;
	#20
	A = 16'hb44c;
	B = 16'h3de2;
	ans_a = 16'h4992;
	#20
	A = 16'h2c91;
	B = 16'h3bc5;
	ans_a = 16'h499b;
	#20
	A = 16'hbe20;
	B = 16'h38da;
	ans_a = 16'h4924;
	#20
	A = 16'hbc70;
	B = 16'hbe15;
	ans_a = 16'h49fc;
	#20
	A = 16'h3dea;
	B = 16'h25bb;
	ans_a = 16'h4a00;
	#20
	A = 16'had09;
	B = 16'hb90f;
	ans_a = 16'h4a06;
	#20
	A = 16'h3d93;
	B = 16'hb98d;
	ans_a = 16'h498a;
	#20
	A = 16'h3d59;
	B = 16'h3c93;
	ans_a = 16'h4a4e;
	#20
	A = 16'hb958;
	B = 16'hbe42;
	ans_a = 16'h4ad4;
	#20
	A = 16'h3efc;
	B = 16'h3ff9;
	ans_a = 16'h4c49;
	#20
	A = 16'h2c3b;
	B = 16'hb8a3;
	ans_a = 16'h4c47;
	#20
	A = 16'h3bb8;
	B = 16'hb720;
	ans_a = 16'h4c2c;
	#20
	A = 16'h3d3f;
	B = 16'h3456;
	ans_a = 16'h4c43;
	#20
	A = 16'hb51c;
	B = 16'hbed8;
	ans_a = 16'h4c66;
	#20
	A = 16'h3123;
	B = 16'h3a36;
	ans_a = 16'h4c6e;
	#20
	A = 16'h3c1f;
	B = 16'h3ca7;
	ans_a = 16'h4cbb;
	#20
	A = 16'h3e6b;
	B = 16'hb41a;
	ans_a = 16'h4ca1;
	#20
	A = 16'h3d64;
	B = 16'h33b2;
	ans_a = 16'h4cb6;
	#20
	A = 16'h3cb8;
	B = 16'h3c24;
	ans_a = 16'h4d04;
	#20
	A = 16'hab0f;
	B = 16'h37a4;
	ans_a = 16'h4d02;
	#20
	A = 16'h3d27;
	B = 16'h3189;
	ans_a = 16'h4d10;
	#20
	A = 16'h3542;
	B = 16'hbe1f;
	ans_a = 16'h4cf0;
	#20
	A = 16'h3afc;
	B = 16'hbda7;
	ans_a = 16'h4ca1;
	#20
	A = 16'hb8ed;
	B = 16'hbe75;
	ans_a = 16'h4ce1;
	#20
	A = 16'h3d6b;
	B = 16'hb8eb;
	ans_a = 16'h4cac;
	#20
	A = 16'hbf57;
	B = 16'hb95f;
	ans_a = 16'h4cfb;
	#20
	A = 16'h38d7;
	B = 16'h3cf9;
	ans_a = 16'h4d2b;
	#20
	A = 16'h3b2a;
	B = 16'h3756;
	ans_a = 16'h4d45;
	#20
	A = 16'h3ad5;
	B = 16'h34d5;
	ans_a = 16'h4d56;
	#20
	A = 16'h3a6b;
	B = 16'hb7a1;
	ans_a = 16'h4d3e;
	#20
	A = 16'hbf51;
	B = 16'h3f16;
	ans_a = 16'h4c6f;
	#20
	A = 16'hb441;
	B = 16'hbdc1;
	ans_a = 16'h4c87;
	#20
	A = 16'hbac8;
	B = 16'hbb18;
	ans_a = 16'h4cb7;
	#20
	A = 16'h3c49;
	B = 16'h3cc8;
	ans_a = 16'h4d09;
	#20
	A = 16'hb14f;
	B = 16'hb8ac;
	ans_a = 16'h4d0f;
	#20
	A = 16'h3d28;
	B = 16'hbca7;
	ans_a = 16'h4caf;
	#20
	A = 16'h3bcb;
	B = 16'h3985;
	ans_a = 16'h4cda;
	#20
	A = 16'h3cce;
	B = 16'h36da;
	ans_a = 16'h4cfb;
	#20
	A = 16'h34e8;
	B = 16'h3104;
	ans_a = 16'h4cfe;
	#20
	A = 16'h3f6d;
	B = 16'h39bf;
	ans_a = 16'h4d53;
	#20
	A = 16'h372e;
	B = 16'h38b8;
	ans_a = 16'h4d64;
	#20
	A = 16'hbd14;
	B = 16'h3fc7;
	ans_a = 16'h4cc6;
	#20
	A = 16'h3cc8;
	B = 16'hbfa0;
	ans_a = 16'h4c34;
	#20
	A = 16'hba8b;
	B = 16'h3d5e;
	ans_a = 16'h4bdc;
	#20
	A = 16'hbe6d;
	B = 16'hbead;
	ans_a = 16'h4c9a;
	#20
	A = 16'h3dfc;
	B = 16'h326b;
	ans_a = 16'h4cad;
	#20
	A = 16'h3d8b;
	B = 16'h3829;
	ans_a = 16'h4cdb;
	#20
	A = 16'h3d5f;
	B = 16'h3ce2;
	ans_a = 16'h4d44;
	#20
	A = 16'hbfb8;
	B = 16'h3c77;
	ans_a = 16'h4cba;
	#20
	A = 16'h23fa;
	B = 16'h38af;
	ans_a = 16'h4cbb;
	#20
	A = 16'hbe25;
	B = 16'h3a62;
	ans_a = 16'h4c6d;
	#20
	A = 16'hba55;
	B = 16'hbd03;
	ans_a = 16'h4cac;
	#20
	A = 16'h3dc0;
	B = 16'h3d07;
	ans_a = 16'h4d20;
	#20
	A = 16'h3da3;
	B = 16'h3d56;
	ans_a = 16'h4d98;
	#20
	A = 16'h3b10;
	B = 16'h3847;
	ans_a = 16'h4db6;
	#20
	A = 16'hbc0d;
	B = 16'hb87f;
	ans_a = 16'h4dda;
	#20
	A = 16'h3d8b;
	B = 16'hbf83;
	ans_a = 16'h4d34;
	#20
	A = 16'hbf43;
	B = 16'hb947;
	ans_a = 16'h4d81;
	#20
	A = 16'h2b51;
	B = 16'h3d27;
	ans_a = 16'h4d86;
	#20
	A = 16'hbf80;
	B = 16'h3db0;
	ans_a = 16'h4cdb;
	#20
	A = 16'hbf68;
	B = 16'hbdfe;
	ans_a = 16'h4d8c;
	#20
	A = 16'h3899;
	B = 16'hbb92;
	ans_a = 16'h4d69;
	#20
	A = 16'hba60;
	B = 16'hbe8d;
	ans_a = 16'h4dbc;
	#20
	A = 16'h3dab;
	B = 16'hbe83;
	ans_a = 16'h4d28;
	#20
	A = 16'hb811;
	B = 16'h3e6b;
	ans_a = 16'h4cf4;
	#20
	A = 16'h3b73;
	B = 16'hbcf8;
	ans_a = 16'h4caa;
	#20
	A = 16'hbee9;
	B = 16'hbf2e;
	ans_a = 16'h4d70;
	#20
	A = 16'h3de7;
	B = 16'hbe61;
	ans_a = 16'h4cd9;
	#20
	A = 16'hbf2d;
	B = 16'hbfd2;
	ans_a = 16'h4dba;
	#20
	A = 16'hbe30;
	B = 16'hbefd;
	ans_a = 16'h4e67;
	#20
	A = 16'h3f48;
	B = 16'hbf80;
	ans_a = 16'h4d8c;
	#20
	A = 16'h3057;
	B = 16'hbf23;
	ans_a = 16'h4d7d;
	#20
	A = 16'hb8ce;
	B = 16'haf66;
	ans_a = 16'h4d81;
	#20
	A = 16'h3fd9;
	B = 16'h3638;
	ans_a = 16'h4db2;
	#20
	A = 16'h3a5c;
	B = 16'hbc9e;
	ans_a = 16'h4d77;
	#20
	A = 16'hbb90;
	B = 16'hbfa4;
	ans_a = 16'h4deb;
	#20
	A = 16'h3deb;
	B = 16'h3b03;
	ans_a = 16'h4e3e;
	#20
	A = 16'h381e;
	B = 16'h3fe7;
	ans_a = 16'h4e7f;
	#20
	A = 16'h3fa7;
	B = 16'h38ad;
	ans_a = 16'h4ec7;
	#20
	A = 16'hbe2a;
	B = 16'h3d1a;
	ans_a = 16'h4e49;
	#20
	A = 16'h3600;
	B = 16'hb99a;
	ans_a = 16'h4e38;
	#20
	A = 16'h3ec9;
	B = 16'hbca6;
	ans_a = 16'h4dba;
	#20
	A = 16'hbc84;
	B = 16'hbf00;
	ans_a = 16'h4e38;
	#20
	A = 16'h3061;
	B = 16'h3c06;
	ans_a = 16'h4e41;
	#20
	A = 16'hb82e;
	B = 16'h3cc5;
	ans_a = 16'h4e19;
	#20
	A = 16'h3d62;
	B = 16'h3f6b;
	ans_a = 16'h4eb9;
	#20
	A = 16'hb083;
	B = 16'hb71f;
	ans_a = 16'h4ebd;
	#20
	A = 16'hb485;
	B = 16'hbe10;
	ans_a = 16'h4ed8;
	#20
	A = 16'hb93f;
	B = 16'h3e29;
	ans_a = 16'h4e97;
	#20
	A = 16'hbd4c;
	B = 16'hbced;
	ans_a = 16'h4eff;
	#20
	A = 16'h3438;
	B = 16'hb6a1;
	ans_a = 16'h4ef8;
	#20
	A = 16'hb62f;
	B = 16'h3829;
	ans_a = 16'h4eeb;
	#20
	A = 16'h345c;
	B = 16'h3b14;
	ans_a = 16'h4efa;
	#20
	A = 16'hb78a;
	B = 16'hbe40;
	ans_a = 16'h4f29;
	#20
	A = 16'h3558;
	B = 16'h3df6;
	ans_a = 16'h4f49;
	#20
	A = 16'h3ab2;
	B = 16'hbb0d;
	ans_a = 16'h4f1a;
	#20
	A = 16'hb81c;
	B = 16'hbd99;
	ans_a = 16'h4f48;
	#20
	A = 16'hac97;
	B = 16'hbd53;
	ans_a = 16'h4f4e;
	#20
	A = 16'h3833;
	B = 16'hb8e0;
	ans_a = 16'h4f3a;
	#20
	A = 16'h34e6;
	B = 16'h2d5d;
	ans_a = 16'h4f3c;
	#20
	A = 16'hb292;
	B = 16'hbf75;
	ans_a = 16'h4f54;
	#20
	A = 16'h3c01;
	B = 16'hbd6d;
	ans_a = 16'h4efd;
	#20
	A = 16'hba65;
	B = 16'h35d4;
	ans_a = 16'h4eea;
	#20
	A = 16'hbd9b;
	B = 16'h34e2;
	ans_a = 16'h4ecf;
	#20
	A = 16'hb7f6;
	B = 16'h3c0b;
	ans_a = 16'h4eaf;
	#20
	A = 16'hb4ab;
	B = 16'hbf42;
	ans_a = 16'h4ed1;
	#20
	A = 16'h3e1d;
	B = 16'hbd1b;
	ans_a = 16'h4e54;
	#20
	A = 16'hb471;
	B = 16'hba69;
	ans_a = 16'h4e62;
	#20
	A = 16'ha8fe;
	B = 16'h390e;
	ans_a = 16'h4e60;
	#20
	A = 16'hbe14;
	B = 16'h3aa6;
	ans_a = 16'h4e0f;
	#20
	A = 16'h3f4b;
	B = 16'h32b0;
	ans_a = 16'h4e27;
	#20
	A = 16'hbdee;
	B = 16'h3cb7;
	ans_a = 16'h4db7;
	#20
	A = 16'h26c4;
	B = 16'h3c9f;
	ans_a = 16'h4db9;
	#20
	A = 16'h3cde;
	B = 16'h39f2;
	ans_a = 16'h4df3;
	#20
	A = 16'hb3ad;
	B = 16'h3929;
	ans_a = 16'h4de9;
	#20
	A = 16'hb8c4;
	B = 16'h3534;
	ans_a = 16'h4ddd;
	#20
	A = 16'h3e2b;
	B = 16'h3e91;
	ans_a = 16'h4e7f;
	#20
	A = 16'h3ddc;
	B = 16'hbd43;
	ans_a = 16'h4e04;
	#20
	A = 16'hb250;
	B = 16'h31b1;
	ans_a = 16'h4e02;
	#20
	A = 16'h3ad7;
	B = 16'hbcf0;
	ans_a = 16'h4dbe;
	#20
	A = 16'hbd35;
	B = 16'hb411;
	ans_a = 16'h4dd3;
	#20
	A = 16'hbed4;
	B = 16'h3d49;
	ans_a = 16'h4d43;
	#20
	A = 16'h36c2;
	B = 16'hbe18;
	ans_a = 16'h4d1a;
	#20
	A = 16'hbf38;
	B = 16'h3fbd;
	ans_a = 16'h4c3a;
	#20
	A = 16'h3c20;
	B = 16'h381c;
	ans_a = 16'h4c5c;
	#20
	A = 16'h3e82;
	B = 16'hbb95;
	ans_a = 16'h4bf3;
	#20
	A = 16'hbd31;
	B = 16'h3b7c;
	ans_a = 16'h4b58;
	#20
	A = 16'h3dd2;
	B = 16'hbf42;
	ans_a = 16'h4a06;
	#20
	A = 16'h3e4c;
	B = 16'h3db6;
	ans_a = 16'h4b26;
	#20
	A = 16'hbb0b;
	B = 16'h3e10;
	ans_a = 16'h4a7b;
	#20
	A = 16'hbd94;
	B = 16'h3469;
	ans_a = 16'h4a4a;
	#20
	A = 16'h3afb;
	B = 16'hb83d;
	ans_a = 16'h4a0f;
	#20
	A = 16'hbfb9;
	B = 16'hbf74;
	ans_a = 16'h4bdc;
	#20
	A = 16'hbcd1;
	B = 16'h34bf;
	ans_a = 16'h4bae;
	#20
	A = 16'h35dc;
	B = 16'hbf52;
	ans_a = 16'h4b58;
	#20
	A = 16'hbf83;
	B = 16'h3f0d;
	ans_a = 16'h49b0;
	#20
	A = 16'h3d8b;
	B = 16'h3b0c;
	ans_a = 16'h4a4c;
	#20
	A = 16'h3722;
	B = 16'h3d63;
	ans_a = 16'h4a99;
	#20
	A = 16'h39ef;
	B = 16'hbcbf;
	ans_a = 16'h4a28;
	#20
	A = 16'h3eca;
	B = 16'hb12f;
	ans_a = 16'h4a05;
	#20
	A = 16'h3ae8;
	B = 16'h3ce2;
	ans_a = 16'h4a8c;
	#20
	A = 16'hb3bf;
	B = 16'hb4ec;
	ans_a = 16'h4a96;
	#20
	A = 16'h3800;
	B = 16'hac30;
	ans_a = 16'h4a92;
	#20
	A = 16'h3d2c;
	B = 16'hb381;
	ans_a = 16'h4a6b;
	#20
	A = 16'h2d7d;
	B = 16'hbf33;
	ans_a = 16'h4a57;
	#20
	A = 16'h332b;
	B = 16'hba6f;
	ans_a = 16'h4a40;
	#20
	A = 16'h3e51;
	B = 16'h3e8f;
	ans_a = 16'h4b8c;
	#20
	A = 16'h385d;
	B = 16'hb8fc;
	ans_a = 16'h4b60;
	#20
	A = 16'hb4e3;
	B = 16'h341c;
	ans_a = 16'h4b56;
	#20
	A = 16'h3d7d;
	B = 16'hb65e;
	ans_a = 16'h4b10;
	#20
	A = 16'hbbe5;
	B = 16'hbd85;
	ans_a = 16'h4bbe;
	#20
	A = 16'hbdbe;
	B = 16'hb892;
	ans_a = 16'h4c14;
	#20
	A = 16'h3a3d;
	B = 16'h3c5d;
	ans_a = 16'h4c4a;
	#20
	A = 16'hbf68;
	B = 16'h3af8;
	ans_a = 16'h4bc6;
	#20
	A = 16'h389e;
	B = 16'hbe33;
	ans_a = 16'h4b54;
	#20
	A = 16'h395f;
	B = 16'h3fa3;
	ans_a = 16'h4bf8;
	#20
	A = 16'hb505;
	B = 16'h35db;
	ans_a = 16'h4be9;
	#20
	A = 16'hbf43;
	B = 16'h3ca6;
	ans_a = 16'h4adb;
	#20
	A = 16'hb077;
	B = 16'hbfeb;
	ans_a = 16'h4afe;
	#20
	A = 16'h3a32;
	B = 16'hb823;
	ans_a = 16'h4acb;
	#20
	A = 16'hb428;
	B = 16'hbfc2;
	ans_a = 16'h4b0c;
	#20
	A = 16'hbcf5;
	B = 16'hbb0f;
	ans_a = 16'h4b98;
	#20
	A = 16'h3e52;
	B = 16'h3f10;
	ans_a = 16'h4c7e;
	#20
	A = 16'hbc59;
	B = 16'hbe42;
	ans_a = 16'h4ceb;
	#20
	A = 16'h3d6f;
	B = 16'hbda5;
	ans_a = 16'h4c70;
	#20
	A = 16'hbfad;
	B = 16'h3e65;
	ans_a = 16'h4b57;
	#20
	A = 16'h3f0a;
	B = 16'hbc95;
	ans_a = 16'h4a55;
	#20
	A = 16'hbcf3;
	B = 16'hbfb9;
	ans_a = 16'h4b87;
	#20
	A = 16'hb830;
	B = 16'hbf0e;
	ans_a = 16'h4bfd;
	#20
	A = 16'h3f22;
	B = 16'hbeee;
	ans_a = 16'h4a72;
	#20
	A = 16'h3e44;
	B = 16'h3f8d;
	ans_a = 16'h4bec;
	#20
	A = 16'h381e;
	B = 16'h3e1b;
	ans_a = 16'h4c28;
	#20
	A = 16'hbc00;
	B = 16'hbbf9;
	ans_a = 16'h4c68;
	#20
	A = 16'hbd6c;
	B = 16'h3bf9;
	ans_a = 16'h4c12;
	#20
	A = 16'h398b;
	B = 16'hb554;
	ans_a = 16'h4c03;
	#20
	A = 16'hb933;
	B = 16'hb6d3;
	ans_a = 16'h4c15;
	#20
	A = 16'hb6dc;
	B = 16'hbed2;
	ans_a = 16'h4c44;
	#20
	A = 16'h38cb;
	B = 16'h36ab;
	ans_a = 16'h4c54;
	#20
	A = 16'h3f98;
	B = 16'hbeeb;
	ans_a = 16'h4b04;
	#20
	A = 16'h3823;
	B = 16'h3e1d;
	ans_a = 16'h4b69;
	#20
	A = 16'hb980;
	B = 16'hbedd;
	ans_a = 16'h4c00;
	#20
	A = 16'h3813;
	B = 16'hbd90;
	ans_a = 16'h4ba5;
	#20
	A = 16'hb365;
	B = 16'h3de4;
	ans_a = 16'h4b79;
	#20
	A = 16'hb0e8;
	B = 16'h3afa;
	ans_a = 16'h4b68;
	#20
	A = 16'h3a06;
	B = 16'hb89a;
	ans_a = 16'h4b31;
	#20
	A = 16'hb8ca;
	B = 16'h38e9;
	ans_a = 16'h4b02;
	#20
	A = 16'h3a0c;
	B = 16'h38c7;
	ans_a = 16'h4b3c;
	#20
	A = 16'hb93f;
	B = 16'hbfbe;
	ans_a = 16'h4bde;
	#20
	A = 16'hb4cf;
	B = 16'h374d;
	ans_a = 16'h4bcc;
	#20
	A = 16'hbcc5;
	B = 16'h3f2c;
	ans_a = 16'h4aba;
	#20
	A = 16'h393a;
	B = 16'hb6d1;
	ans_a = 16'h4a96;
	#20
	A = 16'h3ea6;
	B = 16'h3648;
	ans_a = 16'h4aea;
	#20
	A = 16'hbe9d;
	B = 16'h2c15;
	ans_a = 16'h4adc;
	#20
	A = 16'hbdc5;
	B = 16'hbfd4;
	ans_a = 16'h4c23;
	#20
	A = 16'h3e63;
	B = 16'h3d35;
	ans_a = 16'h4ca8;
	#20
	A = 16'h377d;
	B = 16'hbf72;
	ans_a = 16'h4c70;
	#20
	A = 16'h24c5;
	B = 16'hadb3;
	ans_a = 16'h4c70;
	#20
	A = 16'hbf3a;
	B = 16'h3c5b;
	ans_a = 16'h4be4;
	#20
	A = 16'h3bc4;
	B = 16'h3450;
	ans_a = 16'h4c03;
	#20
	A = 16'h3dc6;
	B = 16'hb6da;
	ans_a = 16'h4bb7;
	#20
	A = 16'hb033;
	B = 16'hba3a;
	ans_a = 16'h4bc4;
	#20
	A = 16'h3d59;
	B = 16'hbe17;
	ans_a = 16'h4ac0;
	#20
	A = 16'hbcd6;
	B = 16'h328b;
	ans_a = 16'h4aa0;
	#20
	A = 16'hbc82;
	B = 16'h3cb6;
	ans_a = 16'h49f6;
	#20
	A = 16'hbc33;
	B = 16'h39c2;
	ans_a = 16'h4995;
	#20
	A = 16'h241a;
	B = 16'h3c92;
	ans_a = 16'h4997;
	#20
	A = 16'h36b9;
	B = 16'hbc40;
	ans_a = 16'h495e;
	#20
	A = 16'hbd6d;
	B = 16'h3598;
	ans_a = 16'h4921;
	#20
	A = 16'h3e92;
	B = 16'h3844;
	ans_a = 16'h4991;
	#20
	A = 16'h3f33;
	B = 16'hbc3c;
	ans_a = 16'h489d;
	#20
	A = 16'h3db4;
	B = 16'h3398;
	ans_a = 16'h48c8;
	#20
	A = 16'hbe0b;
	B = 16'hbe2c;
	ans_a = 16'h49f2;
	#20
	A = 16'hb850;
	B = 16'h3d6b;
	ans_a = 16'h4995;
	#20
	A = 16'hac84;
	B = 16'hb314;
	ans_a = 16'h4997;
	#20
	A = 16'h3fca;
	B = 16'h3cd2;
	ans_a = 16'h4ac3;
	#20
	A = 16'hb8f4;
	B = 16'h2fae;
	ans_a = 16'h4ab9;
	#20
	A = 16'hb1e4;
	B = 16'h34c1;
	ans_a = 16'h4ab2;
	#20
	A = 16'h39eb;
	B = 16'hb8f0;
	ans_a = 16'h4a78;
	#20
	A = 16'hbe99;
	B = 16'h3c24;
	ans_a = 16'h499e;
	#20
	A = 16'hbd09;
	B = 16'h3fb3;
	ans_a = 16'h4868;
	#20
	A = 16'h3df3;
	B = 16'hbcba;
	ans_a = 16'h470e;
	#20
	A = 16'hbc63;
	B = 16'hbc3c;
	ans_a = 16'h481c;
	#20
	A = 16'hbe43;
	B = 16'hbdb9;
	ans_a = 16'h493b;
	#20
	A = 16'h3436;
	B = 16'h3e82;
	ans_a = 16'h4972;
	#20
	A = 16'hbeeb;
	B = 16'hbbf7;
	ans_a = 16'h4a4e;
	#20
	A = 16'hbb13;
	B = 16'h3ddd;
	ans_a = 16'h49a8;
	#20
	A = 16'hb8c2;
	B = 16'hbcc4;
	ans_a = 16'h4a03;
	#20
	A = 16'h3f34;
	B = 16'hbdf6;
	ans_a = 16'h48ac;
	#20
	A = 16'h3b51;
	B = 16'hbca4;
	ans_a = 16'h4824;
	#20
	A = 16'h3a22;
	B = 16'h2c90;
	ans_a = 16'h482b;
	#20
	A = 16'h35a5;
	B = 16'h3d3f;
	ans_a = 16'h4866;
	#20
	A = 16'hb7ca;
	B = 16'h355f;
	ans_a = 16'h4851;
	#20
	A = 16'h321a;
	B = 16'hbcbf;
	ans_a = 16'h4834;
	#20
	A = 16'hbde2;
	B = 16'hb9dd;
	ans_a = 16'h48be;
	#20
	A = 16'h393c;
	B = 16'hba9e;
	ans_a = 16'h4879;
	#20
	A = 16'h3bc7;
	B = 16'hbe81;
	ans_a = 16'h475d;
	#20
	A = 16'hbe90;
	B = 16'hbd82;
	ans_a = 16'h48d0;
	#20
	A = 16'hb83b;
	B = 16'h3637;
	ans_a = 16'h48b6;
	#20
	A = 16'h3e44;
	B = 16'hb8d2;
	ans_a = 16'h483d;
	#20
	A = 16'hbeb7;
	B = 16'h3e38;
	ans_a = 16'h45de;
	#20
	A = 16'h2c9c;
	B = 16'h3ef0;
	ans_a = 16'h45fe;
	#20
	A = 16'h3646;
	B = 16'h3e56;
	ans_a = 16'h469d;
	#20
	A = 16'h397f;
	B = 16'h3e84;
	ans_a = 16'h47bc;
	#20
	A = 16'h3fa1;
	B = 16'h3f03;
	ans_a = 16'h498a;
	#20
	A = 16'h3a94;
	B = 16'h3ff8;
	ans_a = 16'h4a5c;
	#20
	A = 16'h3cea;
	B = 16'hbd23;
	ans_a = 16'h4992;
	#20
	A = 16'h3629;
	B = 16'hba42;
	ans_a = 16'h496b;
	#20
	A = 16'hb9f2;
	B = 16'h3ad9;
	ans_a = 16'h491a;
	#20
	A = 16'h3cbd;
	B = 16'hb0ed;
	ans_a = 16'h4903;
	#20
	A = 16'hba5f;
	B = 16'h36d5;
	ans_a = 16'h48d7;
	#20
	A = 16'hb46d;
	B = 16'h3352;
	ans_a = 16'h48cf;
	#20
	A = 16'h3995;
	B = 16'h3c21;
	ans_a = 16'h492b;
	#20
	A = 16'hbd99;
	B = 16'h3f09;
	ans_a = 16'h47e0;
	#20
	A = 16'h3eb1;
	B = 16'hbd31;
	ans_a = 16'h45b4;
	#20
	A = 16'hbf7c;
	B = 16'hbc90;
	ans_a = 16'h47d6;
	#20
	A = 16'h3616;
	B = 16'h3da5;
	ans_a = 16'h4830;
	#20
	A = 16'hbda4;
	B = 16'h3bf8;
	ans_a = 16'h46f8;
	#20
	A = 16'h3ea7;
	B = 16'h3126;
	ans_a = 16'h473c;
	#20
	A = 16'h3d83;
	B = 16'h3dd0;
	ans_a = 16'h489e;
	#20
	A = 16'h3e54;
	B = 16'h34ce;
	ans_a = 16'h48db;
	#20
	A = 16'h3dcd;
	B = 16'hade8;
	ans_a = 16'h48ca;
	#20
	A = 16'hbf2d;
	B = 16'hb13a;
	ans_a = 16'h48f0;
	#20
	A = 16'hbd30;
	B = 16'h3fe4;
	ans_a = 16'h4751;
	#20
	A = 16'hbd2d;
	B = 16'hba32;
	ans_a = 16'h4829;
	#20
	A = 16'h3dcb;
	B = 16'hb8c6;
	ans_a = 16'h4775;
	#20
	A = 16'hb873;
	B = 16'hb285;
	ans_a = 16'h4792;
	#20
	A = 16'h37b5;
	B = 16'hb609;
	ans_a = 16'h4764;
	#20
	A = 16'hbb8b;
	B = 16'h3a72;
	ans_a = 16'h46a2;
	#20
	A = 16'h3479;
	B = 16'hbe7d;
	ans_a = 16'h462e;
	#20
	A = 16'hbdf3;
	B = 16'h3784;
	ans_a = 16'h457b;
	#20
	A = 16'hb960;
	B = 16'h3e6f;
	ans_a = 16'h4466;
	#20
	A = 16'hbd74;
	B = 16'h3be4;
	ans_a = 16'h421c;
	#20
	A = 16'hbd5e;
	B = 16'hb9ea;
	ans_a = 16'h440c;
	#20
	A = 16'h3ea1;
	B = 16'h3d0e;
	ans_a = 16'h4624;
	#20
	A = 16'h3f20;
	B = 16'h3fdb;
	ans_a = 16'h48d2;
	#20
	A = 16'h39fe;
	B = 16'hbc21;
	ans_a = 16'h486f;
	#20
	A = 16'hb7a5;
	B = 16'hbf5a;
	ans_a = 16'h48df;
	#20
	A = 16'hbf64;
	B = 16'h36e7;
	ans_a = 16'h4879;
	#20
	A = 16'hbe32;
	B = 16'h3eae;
	ans_a = 16'h465c;
	#20
	A = 16'hbe0e;
	B = 16'hbf40;
	ans_a = 16'h488d;
	#20
	A = 16'hb027;
	B = 16'hbf61;
	ans_a = 16'h48ac;
	#20
	A = 16'h31d3;
	B = 16'hbd2f;
	ans_a = 16'h488e;
	#20
	A = 16'hbb10;
	B = 16'haccc;
	ans_a = 16'h4896;
	#20
	A = 16'hbc4b;
	B = 16'hb0f2;
	ans_a = 16'h48ab;
	#20
	A = 16'h3555;
	B = 16'hbda5;
	ans_a = 16'h486f;
	#20
	A = 16'h3e74;
	B = 16'hbd19;
	ans_a = 16'h46d0;
	#20
	A = 16'h3bdb;
	B = 16'hb86a;
	ans_a = 16'h4645;
	#20
	A = 16'hb97c;
	B = 16'h3d5b;
	ans_a = 16'h455a;
	#20
	A = 16'hbd5e;
	B = 16'h3cbc;
	ans_a = 16'h4387;
	#20
	A = 16'h3b5c;
	B = 16'h3d04;
	ans_a = 16'h44eb;
	#20
	A = 16'hbf12;
	B = 16'had41;
	ans_a = 16'h4510;
	#20
	A = 16'hbe6e;
	B = 16'h3dcf;
	ans_a = 16'h4175;
	#20
	A = 16'hb3de;
	B = 16'hbd71;
	ans_a = 16'h4220;
	#20
	A = 16'h3e80;
	B = 16'hb922;
	ans_a = 16'h400a;
	#20
	A = 16'hbd2d;
	B = 16'hbfc4;
	ans_a = 16'h4488;
	#20
	A = 16'hbd05;
	B = 16'hbd29;
	ans_a = 16'h4626;
	#20
	A = 16'h2cc0;
	B = 16'hb87a;
	ans_a = 16'h461b;
	#20
	A = 16'h3e48;
	B = 16'h3ca2;
	ans_a = 16'h47ec;
	#20
	A = 16'hb8a6;
	B = 16'h3457;
	ans_a = 16'h47c4;
	#20
	A = 16'h3df2;
	B = 16'h38db;
	ans_a = 16'h4856;
	#20
	A = 16'h2c98;
	B = 16'hbadd;
	ans_a = 16'h484e;
	#20
	A = 16'hbe57;
	B = 16'h3cec;
	ans_a = 16'h46a9;
	#20
	A = 16'h3ceb;
	B = 16'h3f04;
	ans_a = 16'h4868;
	#20
	A = 16'hbc12;
	B = 16'hb63b;
	ans_a = 16'h489b;
	#20
	A = 16'h3ddb;
	B = 16'h3c0e;
	ans_a = 16'h4959;
	#20
	A = 16'hb488;
	B = 16'h386f;
	ans_a = 16'h4945;
	#20
	A = 16'hb82f;
	B = 16'h37ec;
	ans_a = 16'h4924;
	#20
	A = 16'hbb98;
	B = 16'hbe6e;
	ans_a = 16'h49e7;
	#20
	A = 16'hb502;
	B = 16'hbc30;
	ans_a = 16'h4a11;
	#20
	A = 16'h2cc8;
	B = 16'h3e5c;
	ans_a = 16'h4a20;
	#20
	A = 16'hbc6c;
	B = 16'h3e83;
	ans_a = 16'h493a;
	#20
	A = 16'hbecd;
	B = 16'h3eb5;
	ans_a = 16'h479a;
	#20
	A = 16'hb109;
	B = 16'h3cb6;
	ans_a = 16'h476b;
	#20
	A = 16'h3f8a;
	B = 16'h3b91;
	ans_a = 16'h489a;
	#20
	A = 16'h3b4f;
	B = 16'hb8cd;
	ans_a = 16'h4854;
	#20
	A = 16'hb6e1;
	B = 16'hbedc;
	ans_a = 16'h48b2;
	#20
	A = 16'h30cb;
	B = 16'h3db6;
	ans_a = 16'h48cd;
	#20
	A = 16'h3e47;
	B = 16'h3927;
	ans_a = 16'h494e;
	#20
	A = 16'hbdf4;
	B = 16'hb845;
	ans_a = 16'h49b4;
	#20
	A = 16'hbae3;
	B = 16'hbdd7;
	ans_a = 16'h4a55;
	#20
	A = 16'habbb;
	B = 16'h3ca7;
	ans_a = 16'h4a4c;
	#20
	A = 16'h3e81;
	B = 16'hbfda;
	ans_a = 16'h48b4;
	#20
	A = 16'hac38;
	B = 16'hbf0b;
	ans_a = 16'h48c3;
	#20
	A = 16'h3f31;
	B = 16'h3c93;
	ans_a = 16'h49ca;
	#20
	A = 16'hbd0d;
	B = 16'h3ece;
	ans_a = 16'h48b7;
	#20
	A = 16'h3838;
	B = 16'hbd7d;
	ans_a = 16'h485a;
	#20
	A = 16'hbf78;
	B = 16'h364e;
	ans_a = 16'h47f8;
	#20
	A = 16'hbc22;
	B = 16'hbc0c;
	ans_a = 16'h4882;
	#20
	A = 16'hbe34;
	B = 16'hbc1a;
	ans_a = 16'h494e;
	#20
	A = 16'h3647;
	B = 16'h3843;
	ans_a = 16'h4969;
	#20
	A = 16'h3a5e;
	B = 16'h3e4c;
	ans_a = 16'h4a09;
	#20
	A = 16'h3ecb;
	B = 16'hbdc0;
	ans_a = 16'h48d0;
	#20
	A = 16'hbeae;
	B = 16'hbd1f;
	ans_a = 16'h49e2;
	#20
	A = 16'h306b;
	B = 16'hbc61;
	ans_a = 16'h49cf;
	#20
	A = 16'h3d0c;
	B = 16'hbe30;
	ans_a = 16'h48d5;
	#20
	A = 16'h3d73;
	B = 16'h3ec4;
	ans_a = 16'h49fc;
	#20
	A = 16'h3ed5;
	B = 16'hbb41;
	ans_a = 16'h4936;
	#20
	A = 16'hbf6c;
	B = 16'h3e5d;
	ans_a = 16'h4778;
	#20
	A = 16'h3c81;
	B = 16'h3cd2;
	ans_a = 16'h486a;
	#20
	A = 16'hb443;
	B = 16'h3fbb;
	ans_a = 16'h4828;
	#20
	A = 16'hbc8f;
	B = 16'hba17;
	ans_a = 16'h4897;
	#20
	A = 16'hb625;
	B = 16'h3fc0;
	ans_a = 16'h4838;
	#20
	A = 16'h3e10;
	B = 16'h3ed4;
	ans_a = 16'h4983;
	#20
	A = 16'hbfda;
	B = 16'h3d01;
	ans_a = 16'h4849;
	#20
	A = 16'h24c8;
	B = 16'h3f33;
	ans_a = 16'h484d;
	#20
	A = 16'hb0f2;
	B = 16'h3e42;
	ans_a = 16'h482e;
	#20
	A = 16'h3d50;
	B = 16'hbb2a;
	ans_a = 16'h472c;
	#20
	A = 16'h341a;
	B = 16'hbd5c;
	ans_a = 16'h46d4;
	#20
	A = 16'h3d33;
	B = 16'h3e66;
	ans_a = 16'h4874;
	#20
	A = 16'hbb5d;
	B = 16'h3679;
	ans_a = 16'h4844;
	#20
	A = 16'h3f47;
	B = 16'h3b33;
	ans_a = 16'h4916;
	#20
	A = 16'h3873;
	B = 16'hbb6b;
	ans_a = 16'h48d4;
	#20
	A = 16'h3651;
	B = 16'h3a5b;
	ans_a = 16'h48fc;
	#20
	A = 16'hbebe;
	B = 16'hac96;
	ans_a = 16'h490b;
	#20
	A = 16'h3ff6;
	B = 16'h37f4;
	ans_a = 16'h498a;
	#20
	A = 16'h31bb;
	B = 16'hbca0;
	ans_a = 16'h4970;
	#20
	A = 16'h3d7a;
	B = 16'h3232;
	ans_a = 16'h4992;
	#20
	A = 16'h3f18;
	B = 16'hbc4d;
	ans_a = 16'h489e;
	#20
	A = 16'h359b;
	B = 16'h3db1;
	ans_a = 16'h48de;
	#20
	A = 16'h3c86;
	B = 16'h9a25;
	ans_a = 16'h48de;
	#20
	A = 16'h3c50;
	B = 16'hbddb;
	ans_a = 16'h4814;
	#20
	A = 16'h3b65;
	B = 16'hbdab;
	ans_a = 16'h46d9;
	#20
	A = 16'hbba0;
	B = 16'hbd80;
	ans_a = 16'h4814;
	#20
	A = 16'hbd48;
	B = 16'hb5e7;
	ans_a = 16'h4852;
	#20
	A = 16'h397e;
	B = 16'hbbd5;
	ans_a = 16'h47f8;
	#20
	A = 16'h2d40;
	B = 16'hbd45;
	ans_a = 16'h47dc;
	#20
	A = 16'h3ddc;
	B = 16'hbec5;
	ans_a = 16'h4562;
	#20
	A = 16'hbccf;
	B = 16'h3af5;
	ans_a = 16'h4456;
	#20
	A = 16'hbe11;
	B = 16'h35c3;
	ans_a = 16'h4394;
	#20
	A = 16'h3d49;
	B = 16'hbf24;
	ans_a = 16'h3db8;
	#20
	A = 16'h3d0d;
	B = 16'hbbbd;
	ans_a = 16'h32a8;
	#20
	A = 16'ha54b;
	B = 16'h351f;
	ans_a = 16'h3272;
	#20
	A = 16'h2aa5;
	B = 16'h3d5c;
	ans_a = 16'h3456;
	#20
	A = 16'hbbd4;
	B = 16'h3e6b;
	ans_a = 16'hbd32;
	#20
	A = 16'hbc38;
	B = 16'hbb8d;
	ans_a = 16'hb4da;
	#20
	A = 16'h3cfd;
	B = 16'hbe9d;
	ans_a = 16'hc0bb;
	#20
	A = 16'hb4a9;
	B = 16'hbf75;
	ans_a = 16'hbf4a;
	#20
	A = 16'hb514;
	B = 16'hb860;
	ans_a = 16'hbe98;
	#20
	A = 16'h3d54;
	B = 16'hacf7;
	ans_a = 16'hbf02;
	#20
	A = 16'hb9c9;
	B = 16'h3a65;
	ans_a = 16'hc0a9;
	#20
	A = 16'h3975;
	B = 16'h369c;
	ans_a = 16'hc019;
	#20
	A = 16'hbda9;
	B = 16'hbf60;
	ans_a = 16'h387c;
	#20
	A = 16'hbb1a;
	B = 16'h37fa;
	ans_a = 16'h2f8c;
	#20
	A = 16'hb65b;
	B = 16'hbde6;
	ans_a = 16'h39a2;
	#20
	A = 16'hbcd4;
	B = 16'h3840;
	ans_a = 16'h2c08;
	#20
	A = 16'h3804;
	B = 16'haea9;
	ans_a = 16'h2180;
	#20
	A = 16'h34ed;
	B = 16'hbce2;
	ans_a = 16'hb5d7;
	#20
	A = 16'ha831;
	B = 16'h3ed7;
	ans_a = 16'hb6bc;
	#20
	A = 16'hbd27;
	B = 16'hbc1e;
	ans_a = 16'h3b3e;
	#20
	A = 16'hbc2f;
	B = 16'hbb6d;
	ans_a = 16'h3f81;
	#20
	A = 16'hbfbb;
	B = 16'h3d43;
	ans_a = 16'hb956;
	#20
	A = 16'h38d6;
	B = 16'hbeea;
	ans_a = 16'hbed9;
	#20
	A = 16'h3bd5;
	B = 16'h3c66;
	ans_a = 16'hb916;
	#20
	A = 16'hbdf4;
	B = 16'hba40;
	ans_a = 16'h3838;
	#20
	A = 16'h3816;
	B = 16'h3d12;
	ans_a = 16'h3cb3;
	#20
	A = 16'h3e69;
	B = 16'hbefd;
	ans_a = 16'hbe7f;
	#20
	A = 16'h2d4a;
	B = 16'h3c5f;
	ans_a = 16'hbe22;
	#20
	A = 16'hbcc4;
	B = 16'h2ad4;
	ans_a = 16'hbe63;
	#20
	A = 16'hbf0f;
	B = 16'h3274;
	ans_a = 16'hbfd0;
	#20
	A = 16'hbe7d;
	B = 16'hb835;
	ans_a = 16'hbc66;
	#20
	A = 16'h3dbd;
	B = 16'hbf0c;
	ans_a = 16'hc341;
	#20
	A = 16'hbe98;
	B = 16'h3e23;
	ans_a = 16'hc628;
	#20
	A = 16'hbd06;
	B = 16'h3be2;
	ans_a = 16'hc765;
	#20
	A = 16'h3f7a;
	B = 16'h3ca5;
	ans_a = 16'hc53a;
	#20
	A = 16'hadd1;
	B = 16'hb9e7;
	ans_a = 16'hc529;
	#20
	A = 16'h2a84;
	B = 16'h3ecc;
	ans_a = 16'hc513;
	#20
	A = 16'h3ceb;
	B = 16'hbeac;
	ans_a = 16'hc720;
	#20
	A = 16'hb008;
	B = 16'hbf47;
	ans_a = 16'hc6e5;
	#20
	A = 16'hbf20;
	B = 16'h2c2a;
	ans_a = 16'hc703;
	#20
	A = 16'hbe7d;
	B = 16'h3c25;
	ans_a = 16'hc859;
	#20
	A = 16'hbce7;
	B = 16'h3928;
	ans_a = 16'hc8be;
	#20
	A = 16'hbb53;
	B = 16'hbafa;
	ans_a = 16'hc858;
	#20
	A = 16'h3c97;
	B = 16'hb871;
	ans_a = 16'hc8aa;
	#20
	A = 16'hbee3;
	B = 16'h3f8d;
	ans_a = 16'hca4a;
	#20
	A = 16'hbc2f;
	B = 16'hb752;
	ans_a = 16'hca0d;
	#20
	A = 16'h3432;
	B = 16'hb4ac;
	ans_a = 16'hca17;
	#20
	A = 16'h3f74;
	B = 16'h3a3b;
	ans_a = 16'hc95d;
	#20
	A = 16'h3c6f;
	B = 16'h3e81;
	ans_a = 16'hc876;
	#20
	A = 16'hb5a1;
	B = 16'hbde4;
	ans_a = 16'hc834;
	#20
	A = 16'hac38;
	B = 16'hbf65;
	ans_a = 16'hc824;
	#20
	A = 16'hbd2e;
	B = 16'h3e35;
	ans_a = 16'hc925;
	#20
	A = 16'h2d49;
	B = 16'h3f32;
	ans_a = 16'hc912;
	#20
	A = 16'hb49c;
	B = 16'h3d55;
	ans_a = 16'hc943;
	#20
	A = 16'h3d35;
	B = 16'h3ed9;
	ans_a = 16'hc826;
	#20
	A = 16'hb6e8;
	B = 16'h3e50;
	ans_a = 16'hc87d;
	#20
	A = 16'h3f59;
	B = 16'hb4b5;
	ans_a = 16'hc8c2;
	#20
	A = 16'hbd14;
	B = 16'hb91e;
	ans_a = 16'hc85a;
	#20
	A = 16'h395d;
	B = 16'hb0d6;
	ans_a = 16'hc867;
	#20
	A = 16'hbccc;
	B = 16'h3b79;
	ans_a = 16'hc8f6;
	#20
	A = 16'hbe53;
	B = 16'h3e78;
	ans_a = 16'hca3d;
	#20
	A = 16'hb7d1;
	B = 16'h2ffb;
	ans_a = 16'hca45;
	#20
	A = 16'h3fb8;
	B = 16'h3b8d;
	ans_a = 16'hc95c;
	#20
	A = 16'hb7fb;
	B = 16'hbaa7;
	ans_a = 16'hc927;
	#20
	A = 16'h3a8e;
	B = 16'h3873;
	ans_a = 16'hc8ed;
	#20
	A = 16'h3c82;
	B = 16'h396b;
	ans_a = 16'hc88b;
	#20
	A = 16'hbac0;
	B = 16'h3da3;
	ans_a = 16'hc923;
	#20
	A = 16'h3c7f;
	B = 16'hbda8;
	ans_a = 16'hc9ee;
	#20
	A = 16'h383c;
	B = 16'hbd33;
	ans_a = 16'hca46;
	#20
	A = 16'h3581;
	B = 16'hbf3a;
	ans_a = 16'hca96;
	#20
	A = 16'h3e76;
	B = 16'h38c3;
	ans_a = 16'hca1b;
	#20
	A = 16'h3d03;
	B = 16'hbb35;
	ans_a = 16'hcaac;
	#20
	A = 16'hbdca;
	B = 16'hbed3;
	ans_a = 16'hc970;
	#20
	A = 16'hbb8a;
	B = 16'hbdcf;
	ans_a = 16'hc8c1;
	#20
	A = 16'hbd66;
	B = 16'hbab5;
	ans_a = 16'hc830;
	#20
	A = 16'h3b82;
	B = 16'hbd34;
	ans_a = 16'hc8cc;
	#20
	A = 16'hb2ff;
	B = 16'h3c1a;
	ans_a = 16'hc8e9;
	#20
	A = 16'h3bdd;
	B = 16'hbbdc;
	ans_a = 16'hc965;
	#20
	A = 16'h3bb9;
	B = 16'h3852;
	ans_a = 16'hc922;
	#20
	A = 16'h3a10;
	B = 16'hbebc;
	ans_a = 16'hc9c5;
	#20
	A = 16'h3c67;
	B = 16'hb90d;
	ans_a = 16'hca1e;
	#20
	A = 16'h3f82;
	B = 16'hbcd5;
	ans_a = 16'hcb40;
	#20
	A = 16'hbf56;
	B = 16'hbde0;
	ans_a = 16'hc9e7;
	#20
	A = 16'hbd8a;
	B = 16'hbef9;
	ans_a = 16'hc8b2;
	#20
	A = 16'hbd48;
	B = 16'hb6d4;
	ans_a = 16'hc86a;
	#20
	A = 16'h305a;
	B = 16'hb62e;
	ans_a = 16'hc871;
	#20
	A = 16'h3d4a;
	B = 16'hba1b;
	ans_a = 16'hc8f2;
	#20
	A = 16'hb51c;
	B = 16'hb823;
	ans_a = 16'hc8dd;
	#20
	A = 16'h3e40;
	B = 16'hb7d5;
	ans_a = 16'hc93f;
	#20
	A = 16'h3ecb;
	B = 16'h31ac;
	ans_a = 16'hc918;
	#20
	A = 16'hbcd1;
	B = 16'hbf9c;
	ans_a = 16'hc7e6;
	#20
	A = 16'ha88e;
	B = 16'hbda6;
	ans_a = 16'hc7d9;
	#20
	A = 16'h35b0;
	B = 16'h3a3e;
	ans_a = 16'hc792;
	#20
	A = 16'hbd02;
	B = 16'h300a;
	ans_a = 16'hc7ba;
	#20
	A = 16'h3c76;
	B = 16'hbc77;
	ans_a = 16'hc87c;
	#20
	A = 16'h39d2;
	B = 16'h3d78;
	ans_a = 16'hc7f9;
	#20
	A = 16'h363b;
	B = 16'h3a45;
	ans_a = 16'hc7ab;
	#20
	A = 16'h3bf0;
	B = 16'hb7f0;
	ans_a = 16'hc814;
	#20
	A = 16'h3c05;
	B = 16'h3497;
	ans_a = 16'hc7de;
	#20
	A = 16'h3db0;
	B = 16'hb832;
	ans_a = 16'hc84e;
	#20
	A = 16'h3cdb;
	B = 16'h29d2;
	ans_a = 16'hc847;
	#20
	A = 16'h3b45;
	B = 16'hbc55;
	ans_a = 16'hc8c5;
	#20
	A = 16'hbf93;
	B = 16'hb117;
	ans_a = 16'hc89e;
	#20
	A = 16'h3d80;
	B = 16'h39df;
	ans_a = 16'hc81d;
	#20
	A = 16'h3cec;
	B = 16'hbdac;
	ans_a = 16'hc8fc;
	#20
	A = 16'h3d3e;
	B = 16'hbd01;
	ans_a = 16'hc9ce;
	#20
	A = 16'hb660;
	B = 16'h386f;
	ans_a = 16'hc9ea;
	#20
	A = 16'h33ea;
	B = 16'h3465;
	ans_a = 16'hc9e1;
	#20
	A = 16'h32cc;
	B = 16'hbb22;
	ans_a = 16'hc9f9;
	#20
	A = 16'h3b12;
	B = 16'hbb5e;
	ans_a = 16'hca61;
	#20
	A = 16'h3f47;
	B = 16'hb9ee;
	ans_a = 16'hcb0e;
	#20
	A = 16'h3a11;
	B = 16'hbe2a;
	ans_a = 16'hcba4;
	#20
	A = 16'hbaf1;
	B = 16'h3ee7;
	ans_a = 16'hcc32;
	#20
	A = 16'hbc17;
	B = 16'h39e8;
	ans_a = 16'hcc62;
	#20
	A = 16'hbade;
	B = 16'hbcb8;
	ans_a = 16'hcc21;
	#20
	A = 16'hbf43;
	B = 16'hbd6e;
	ans_a = 16'hcb06;
	#20
	A = 16'had25;
	B = 16'hbe11;
	ans_a = 16'hcaf6;
	#20
	A = 16'hbc6a;
	B = 16'h3afe;
	ans_a = 16'hcb71;
	#20
	A = 16'hbe64;
	B = 16'h386b;
	ans_a = 16'hcbe2;
	#20
	A = 16'h385b;
	B = 16'h347e;
	ans_a = 16'hcbce;
	#20
	A = 16'h39b2;
	B = 16'h2fff;
	ans_a = 16'hcbc3;
	#20
	A = 16'haef2;
	B = 16'h33b2;
	ans_a = 16'hcbc6;
	#20
	A = 16'hbf21;
	B = 16'h3d49;
	ans_a = 16'hcc7a;
	#20
	A = 16'h3d5c;
	B = 16'h3df9;
	ans_a = 16'hcbf4;
	#20
	A = 16'h3cae;
	B = 16'h3895;
	ans_a = 16'hcb9e;
	#20
	A = 16'h3d1f;
	B = 16'hbc8b;
	ans_a = 16'hcc2c;
	#20
	A = 16'h3128;
	B = 16'hbc19;
	ans_a = 16'hcc37;
	#20
	A = 16'hbea8;
	B = 16'h3caf;
	ans_a = 16'hccb4;
	#20
	A = 16'h3880;
	B = 16'h3bef;
	ans_a = 16'hcc90;
	#20
	A = 16'h3ee3;
	B = 16'h2d84;
	ans_a = 16'hcc86;
	#20
	A = 16'hbcde;
	B = 16'h3d8d;
	ans_a = 16'hccf2;
	#20
	A = 16'h3877;
	B = 16'h3fab;
	ans_a = 16'hccae;
	#20
	A = 16'hb7a2;
	B = 16'hbf88;
	ans_a = 16'hcc74;
	#20
	A = 16'h3b05;
	B = 16'hb9d1;
	ans_a = 16'hcc9d;
	#20
	A = 16'h3c88;
	B = 16'h364d;
	ans_a = 16'hcc80;
	#20
	A = 16'h3419;
	B = 16'h3a03;
	ans_a = 16'hcc74;
	#20
	A = 16'hbef7;
	B = 16'hba3d;
	ans_a = 16'hcc1d;
	#20
	A = 16'h360a;
	B = 16'h3d08;
	ans_a = 16'hcbfd;
	#20
	A = 16'hbdff;
	B = 16'hbb28;
	ans_a = 16'hcb51;
	#20
	A = 16'hb796;
	B = 16'hbcb7;
	ans_a = 16'hcb09;
	#20
	A = 16'h3d64;
	B = 16'h3aab;
	ans_a = 16'hca79;
	#20
	A = 16'hb8ba;
	B = 16'hac28;
	ans_a = 16'hca74;
	#20
	A = 16'h3dc1;
	B = 16'hb87c;
	ans_a = 16'hcadb;
	#20
	A = 16'h3bdd;
	B = 16'hbdfb;
	ans_a = 16'hcb97;
	#20
	A = 16'h3db2;
	B = 16'hbb9a;
	ans_a = 16'hcc22;
	#20
	A = 16'hb8cd;
	B = 16'h3af6;
	ans_a = 16'hcc43;
	#20
	A = 16'hbd84;
	B = 16'h3a22;
	ans_a = 16'hcc87;
	#20
	A = 16'hb5cc;
	B = 16'h37ec;
	ans_a = 16'hcc92;
	#20
	A = 16'h3c04;
	B = 16'h3b45;
	ans_a = 16'hcc58;
	#20
	A = 16'hb89f;
	B = 16'h3e6d;
	ans_a = 16'hcc93;
	#20
	A = 16'hb63d;
	B = 16'h3c48;
	ans_a = 16'hccae;
	#20
	A = 16'hac31;
	B = 16'hbd7a;
	ans_a = 16'hcca8;
	#20
	A = 16'h3ca8;
	B = 16'hbd60;
	ans_a = 16'hcd0c;
	#20
	A = 16'h3e90;
	B = 16'hbe1a;
	ans_a = 16'hcdac;
	#20
	A = 16'hbcca;
	B = 16'hb827;
	ans_a = 16'hcd84;
	#20
	A = 16'h3e31;
	B = 16'hbee3;
	ans_a = 16'hce2e;
	#20
	A = 16'h3fc2;
	B = 16'haf26;
	ans_a = 16'hce3c;
	#20
	A = 16'hbdeb;
	B = 16'hbe82;
	ans_a = 16'hcda2;
	#20
	A = 16'hbc51;
	B = 16'h2ef1;
	ans_a = 16'hcda9;
	#20
	A = 16'h3d55;
	B = 16'hbf1e;
	ans_a = 16'hce41;
	#20
	A = 16'hb653;
	B = 16'h3420;
	ans_a = 16'hce48;
	#20
	A = 16'h3c9b;
	B = 16'hb41b;
	ans_a = 16'hce5b;
	#20
	A = 16'hbca8;
	B = 16'h378e;
	ans_a = 16'hce7e;
	#20
	A = 16'hba7e;
	B = 16'h3ea5;
	ans_a = 16'hced4;
	#20
	A = 16'hb8d2;
	B = 16'h3eb6;
	ans_a = 16'hcf15;
	#20
	A = 16'hbdab;
	B = 16'h3756;
	ans_a = 16'hcf3f;
	#20
	A = 16'hb6ff;
	B = 16'hbcd2;
	ans_a = 16'hcf1d;
	#20
	A = 16'h3925;
	B = 16'hbde9;
	ans_a = 16'hcf5a;
	#20
	A = 16'hbd10;
	B = 16'hbe5a;
	ans_a = 16'hced9;
	#20
	A = 16'h3495;
	B = 16'h39ea;
	ans_a = 16'hcecb;
	#20
	A = 16'h3c08;
	B = 16'h2c43;
	ans_a = 16'hcec7;
	#20
	A = 16'hbc61;
	B = 16'hbc97;
	ans_a = 16'hce77;
	#20
	A = 16'h359e;
	B = 16'hb8cb;
	ans_a = 16'hce84;
	#20
	A = 16'haef7;
	B = 16'hbb4d;
	ans_a = 16'hce7e;
	#20
	A = 16'h3135;
	B = 16'hbd24;
	ans_a = 16'hce8b;
	#20
	A = 16'hba95;
	B = 16'hbf22;
	ans_a = 16'hce2d;
	#20
	A = 16'hbaaa;
	B = 16'hbfa9;
	ans_a = 16'hcdc7;
	#20
	A = 16'h3f2b;
	B = 16'h3453;
	ans_a = 16'hcda8;
	#20
	A = 16'hbf3b;
	B = 16'hb736;
	ans_a = 16'hcd74;
	#20
	A = 16'hbced;
	B = 16'hbe40;
	ans_a = 16'hccf9;
	#20
	A = 16'h3c1e;
	B = 16'h3fe4;
	ans_a = 16'hcc77;
	#20
	A = 16'hbc30;
	B = 16'hbaa7;
	ans_a = 16'hcc3f;
	#20
	A = 16'h3cc1;
	B = 16'hbb8f;
	ans_a = 16'hcc87;
	#20
	A = 16'hbd24;
	B = 16'hbe49;
	ans_a = 16'hcc06;
	#20
	A = 16'h3cc5;
	B = 16'hbdc1;
	ans_a = 16'hcc74;
	#20
	A = 16'ha7a9;
	B = 16'hba19;
	ans_a = 16'hcc73;
	#20
	A = 16'h390c;
	B = 16'h398e;
	ans_a = 16'hcc57;
	#20
	A = 16'h2d8d;
	B = 16'hbff0;
	ans_a = 16'hcc62;
	#20
	A = 16'hbcbd;
	B = 16'hbc85;
	ans_a = 16'hcc0c;
	#20
	A = 16'h3cf7;
	B = 16'hb83c;
	ans_a = 16'hcc36;
	#20
	A = 16'h3909;
	B = 16'hbc47;
	ans_a = 16'hcc61;
	#20
	A = 16'hbef0;
	B = 16'h3a16;
	ans_a = 16'hccb5;
	#20
	A = 16'h3f8b;
	B = 16'h39ea;
	ans_a = 16'hcc5c;
	#20
	A = 16'hbe2d;
	B = 16'h3aa0;
	ans_a = 16'hccae;
	#20
	A = 16'h3fa2;
	B = 16'h35dc;
	ans_a = 16'hcc81;
	#20
	A = 16'hbced;
	B = 16'hb47f;
	ans_a = 16'hcc6b;
	#20
	A = 16'hbe8f;
	B = 16'hbd86;
	ans_a = 16'hcbb4;
	#20
	A = 16'hb8c1;
	B = 16'h3c87;
	ans_a = 16'hcc05;
	#20
	A = 16'hb511;
	B = 16'h3e6c;
	ans_a = 16'hcc26;
	#20
	A = 16'h3395;
	B = 16'hb53e;
	ans_a = 16'hcc2b;
	#20
	A = 16'h3ca4;
	B = 16'hba4c;
	ans_a = 16'hcc65;
	#20
	A = 16'haed2;
	B = 16'h3ea7;
	ans_a = 16'hcc70;
	#20
	A = 16'h3f4d;
	B = 16'h3cd6;
	ans_a = 16'hcbc6;
	#20
	A = 16'h3c15;
	B = 16'h30f1;
	ans_a = 16'hcbb2;
	#20
	A = 16'hbed6;
	B = 16'hbfda;
	ans_a = 16'hca04;
	#20
	A = 16'h28ba;
	B = 16'h38a0;
	ans_a = 16'hca01;
	#20
	A = 16'hb34f;
	B = 16'hbdf5;
	ans_a = 16'hc9d5;
	#20
	A = 16'h3a78;
	B = 16'hb6a3;
	ans_a = 16'hca00;
	#20
	A = 16'hbf9e;
	B = 16'h3e02;
	ans_a = 16'hcb6e;
	#20
	A = 16'hbc97;
	B = 16'h3c23;
	ans_a = 16'hcc03;
	#20
	A = 16'h35ff;
	B = 16'hb216;
	ans_a = 16'hcc08;
	#20
	A = 16'hbecd;
	B = 16'hb011;
	ans_a = 16'hcbf4;
	#20
	A = 16'h367c;
	B = 16'hbcd5;
	ans_a = 16'hcc19;
	#20
	A = 16'h2c33;
	B = 16'hbd28;
	ans_a = 16'hcc1e;
	#20
	A = 16'hb486;
	B = 16'h3c03;
	ans_a = 16'hcc30;
	#20
	A = 16'h3f27;
	B = 16'h34e8;
	ans_a = 16'hcc0d;
	#20
	A = 16'hbc8f;
	B = 16'hb570;
	ans_a = 16'hcbe8;
	#20
	A = 16'h3f2a;
	B = 16'hbe84;
	ans_a = 16'hccaf;
	#20
	A = 16'h3684;
	B = 16'h3de6;
	ans_a = 16'hcc89;
	#20
	A = 16'hb96a;
	B = 16'h3ead;
	ans_a = 16'hccd1;
	#20
	A = 16'hbc69;
	B = 16'hbc27;
	ans_a = 16'hcc88;
	#20
	A = 16'hac4d;
	B = 16'h3418;
	ans_a = 16'hcc89;
	#20
	A = 16'h3da8;
	B = 16'h3cfb;
	ans_a = 16'hcc18;
	#20
	A = 16'hbc26;
	B = 16'hbdcc;
	ans_a = 16'hcb70;
	#20
	A = 16'h38ce;
	B = 16'h3c8f;
	ans_a = 16'hcb18;
	#20
	A = 16'hb545;
	B = 16'hbcef;
	ans_a = 16'hcae4;
	#20
	A = 16'hb4a1;
	B = 16'hb41f;
	ans_a = 16'hcada;
	#20
	A = 16'hbf96;
	B = 16'h3e6e;
	ans_a = 16'hcc30;
	#20
	A = 16'h3e48;
	B = 16'hbaea;
	ans_a = 16'hcc87;
	#20
	A = 16'hb735;
	B = 16'h3bb7;
	ans_a = 16'hcca3;
	#20
	A = 16'h3eaa;
	B = 16'h2c5f;
	ans_a = 16'hcc9c;
	#20
	A = 16'hb774;
	B = 16'h3cec;
	ans_a = 16'hccc1;
	#20
	A = 16'hacf6;
	B = 16'hb228;
	ans_a = 16'hccc0;
	#20
	A = 16'hbcb4;
	B = 16'h3a02;
	ans_a = 16'hccf8;
	#20
	A = 16'h36ec;
	B = 16'hbbda;
	ans_a = 16'hcd13;
	#20
	A = 16'hb881;
	B = 16'hb49d;
	ans_a = 16'hcd09;
	#20
	A = 16'h35b6;
	B = 16'hbfd4;
	ans_a = 16'hcd36;
	#20
	A = 16'h39f7;
	B = 16'hb24b;
	ans_a = 16'hcd3f;
	#20
	A = 16'h3c40;
	B = 16'hb80d;
	ans_a = 16'hcd61;
	#20
	A = 16'h3de7;
	B = 16'hb882;
	ans_a = 16'hcd96;
	#20
	A = 16'h3cf6;
	B = 16'h3c79;
	ans_a = 16'hcd3d;
	#20
	A = 16'h3d12;
	B = 16'h39c7;
	ans_a = 16'hcd02;
	#20
	A = 16'h3e15;
	B = 16'h3abd;
	ans_a = 16'hccb0;
	#20
	A = 16'h38b9;
	B = 16'hba60;
	ans_a = 16'hccce;
	#20
	A = 16'hbe0a;
	B = 16'h3db4;
	ans_a = 16'hcd58;
	#20
	A = 16'h3994;
	B = 16'h3861;
	ans_a = 16'hcd40;
	#20
	A = 16'h25dc;
	B = 16'h3ad7;
	ans_a = 16'hcd3f;
	#20
	A = 16'hbc19;
	B = 16'h32db;
	ans_a = 16'hcd4d;
	#20
	A = 16'h3d0b;
	B = 16'hb591;
	ans_a = 16'hcd69;
	#20
	A = 16'h38af;
	B = 16'h3a33;
	ans_a = 16'hcd4c;
	#20
	A = 16'hbde0;
	B = 16'h36af;
	ans_a = 16'hcd73;
	#20
	A = 16'h37fd;
	B = 16'h3c42;
	ans_a = 16'hcd51;
	#20
	A = 16'h3f9c;
	B = 16'hb883;
	ans_a = 16'hcd96;
	#20
	A = 16'hb532;
	B = 16'ha9db;
	ans_a = 16'hcd95;
	#20
	A = 16'hbadd;
	B = 16'h3d21;
	ans_a = 16'hcddb;
	#20
	A = 16'hac8e;
	B = 16'hbc84;
	ans_a = 16'hcdd6;
	#20
	A = 16'hb7ca;
	B = 16'hb874;
	ans_a = 16'hcdc5;
	#20
	A = 16'h3f6e;
	B = 16'h34ad;
	ans_a = 16'hcda2;
	#20
	A = 16'h3e31;
	B = 16'hbf22;
	ans_a = 16'hce53;
	#20
	A = 16'hbc28;
	B = 16'hbf51;
	ans_a = 16'hcdd9;
	#20
	A = 16'hbcfb;
	B = 16'h360f;
	ans_a = 16'hcdf7;
	#20
	A = 16'h36e9;
	B = 16'hbee9;
	ans_a = 16'hce27;
	#20
	A = 16'hbcf3;
	B = 16'hbce0;
	ans_a = 16'hcdc6;
	#20
	A = 16'h399d;
	B = 16'h3fe6;
	ans_a = 16'hcd6d;
	#20
	A = 16'h3e04;
	B = 16'h3e46;
	ans_a = 16'hccd6;
	#20
	A = 16'h362a;
	B = 16'h3b0f;
	ans_a = 16'hccc0;
	#20
	A = 16'h2f19;
	B = 16'hbdb9;
	ans_a = 16'hccca;
	#20
	A = 16'h3fdf;
	B = 16'hbe7d;
	ans_a = 16'hcd96;
	#20
	A = 16'hba1d;
	B = 16'h3c59;
	ans_a = 16'hcdcb;
	#20
	A = 16'h2e13;
	B = 16'h3485;
	ans_a = 16'hcdc9;
	#20
	A = 16'h37d3;
	B = 16'h3f6b;
	ans_a = 16'hcd8f;
	#20
	A = 16'h3e5f;
	B = 16'h34ae;
	ans_a = 16'hcd71;
	#20
	A = 16'hbd31;
	B = 16'hbee4;
	ans_a = 16'hcce2;
	#20
	A = 16'h3c71;
	B = 16'hbc34;
	ans_a = 16'hcd2d;
	#20
	A = 16'hbc41;
	B = 16'h3e9b;
	ans_a = 16'hcd9d;
	#20
	A = 16'h3995;
	B = 16'hb9fa;
	ans_a = 16'hcdbe;
	#20
	A = 16'h3d21;
	B = 16'hbe5a;
	ans_a = 16'hce40;
	#20
	A = 16'h3c9e;
	B = 16'hbb79;
	ans_a = 16'hce85;
	#20
	A = 16'h38e0;
	B = 16'hd56;
	ans_a = 16'hce85;
	#20
	A = 16'h3e9f;
	B = 16'h3f17;
	ans_a = 16'hcdc9;
	#20
	A = 16'hbbfc;
	B = 16'hb7b0;
	ans_a = 16'hcdaa;
	#20
	A = 16'hb8a3;
	B = 16'h3a05;
	ans_a = 16'hcdc6;
	#20
	A = 16'hb4ba;
	B = 16'hb7c6;
	ans_a = 16'hcdbd;
	#20
	A = 16'h3c67;
	B = 16'h2fb8;
	ans_a = 16'hcdb5;
	#20
	A = 16'h3a4a;
	B = 16'hbbdb;
	ans_a = 16'hcde6;
	#20
	A = 16'hbace;
	B = 16'hb8fb;
	ans_a = 16'hcdc4;
	#20
	A = 16'hbfb8;
	B = 16'hbc25;
	ans_a = 16'hcd44;
	#20
	A = 16'h341b;
	B = 16'hbad6;
	ans_a = 16'hcd52;
	#20
	A = 16'h384c;
	B = 16'hb33a;
	ans_a = 16'hcd5a;
	#20
	A = 16'hb8c4;
	B = 16'h3c2e;
	ans_a = 16'hcd82;
	#20
	A = 16'hb74b;
	B = 16'hbcb7;
	ans_a = 16'hcd60;
	#20
	A = 16'h3fe1;
	B = 16'hb8a7;
	ans_a = 16'hcda9;
	#20
	A = 16'h3189;
	B = 16'hb4e3;
	ans_a = 16'hcdac;
	#20
	A = 16'hb5cf;
	B = 16'h365d;
	ans_a = 16'hcdb5;
	#20
	A = 16'h3933;
	B = 16'h3d84;
	ans_a = 16'hcd7c;
	#20
	A = 16'hb87a;
	B = 16'hb35e;
	ans_a = 16'hcd74;
	#20
	A = 16'h3e6c;
	B = 16'h3db8;
	ans_a = 16'hcce1;
	#20
	A = 16'h3e90;
	B = 16'h2b58;
	ans_a = 16'hccdb;
	#20
	A = 16'h331e;
	B = 16'hb1d0;
	ans_a = 16'hccde;
	#20
	A = 16'h3f25;
	B = 16'h3ab9;
	ans_a = 16'hcc7e;
	#20
	A = 16'h3c29;
	B = 16'h3fdd;
	ans_a = 16'hcbf6;
	#20
	A = 16'h3791;
	B = 16'h21a0;
	ans_a = 16'hcbf5;
	#20
	A = 16'h3a2d;
	B = 16'hbf55;
	ans_a = 16'hcc55;
	#20
	A = 16'h3f64;
	B = 16'hb048;
	ans_a = 16'hcc65;
	#20
	A = 16'h3d35;
	B = 16'h3d79;
	ans_a = 16'hcbe6;
	#20
	A = 16'hbe7c;
	B = 16'h393d;
	ans_a = 16'hcc37;
	#20
	A = 16'h3f50;
	B = 16'h3dc5;
	ans_a = 16'hcb1c;
	#20
	A = 16'hac5e;
	B = 16'h3b0c;
	ans_a = 16'hcb24;
	#20
	A = 16'hb6a8;
	B = 16'h3dbc;
	ans_a = 16'hcb70;
	#20
	A = 16'h3476;
	B = 16'h3596;
	ans_a = 16'hcb64;
	#20
	A = 16'h3da6;
	B = 16'h3c50;
	ans_a = 16'hcaa1;
	#20
	A = 16'h3e80;
	B = 16'hbf82;
	ans_a = 16'hcc14;
	#20
	A = 16'hba83;
	B = 16'hbf98;
	ans_a = 16'hcb62;
	#20
	A = 16'hbc47;
	B = 16'h3ae9;
	ans_a = 16'hcbd8;
	#20
	A = 16'h3327;
	B = 16'h3fa0;
	ans_a = 16'hcba1;
	#20
	A = 16'hb745;
	B = 16'h328e;
	ans_a = 16'hcbad;
	#20
	A = 16'hbf05;
	B = 16'h3f0f;
	ans_a = 16'hcc9d;
	#20
	A = 16'h350e;
	B = 16'hb412;
	ans_a = 16'hcca2;
	#20
	A = 16'h3d8c;
	B = 16'hb350;
	ans_a = 16'hccb6;
	#20
	A = 16'h3b49;
	B = 16'h3b8a;
	ans_a = 16'hcc7f;
	#20
	A = 16'h28a5;
	B = 16'hbbbb;
	ans_a = 16'hcc81;
	#20
	A = 16'h3c6a;
	B = 16'h3392;
	ans_a = 16'hcc70;
	#20
	A = 16'hbd90;
	B = 16'h31b7;
	ans_a = 16'hcc80;
	#20
	A = 16'h96d3;
	B = 16'h3dfa;
	ans_a = 16'hcc80;
	#20
	A = 16'hac31;
	B = 16'h39be;
	ans_a = 16'hcc83;
	#20
	A = 16'hbd82;
	B = 16'h3cbf;
	ans_a = 16'hccec;
	#20
	A = 16'h3d81;
	B = 16'hb93c;
	ans_a = 16'hcd26;
	#20
	A = 16'hbb18;
	B = 16'hb5d4;
	ans_a = 16'hcd11;
	#20
	A = 16'h3dbb;
	B = 16'hbf6c;
	ans_a = 16'hcdbb;
	#20
	A = 16'h3d48;
	B = 16'hbda6;
	ans_a = 16'hce32;
	#20
	A = 16'hb9ad;
	B = 16'h3d57;
	ans_a = 16'hce6f;
	#20
	A = 16'h3eaf;
	B = 16'h3dfa;
	ans_a = 16'hcdcf;
	#20
	A = 16'hba38;
	B = 16'hb32a;
	ans_a = 16'hcdc4;
	#20
	A = 16'hbd6c;
	B = 16'h3b4b;
	ans_a = 16'hce13;
	#20
	A = 16'hbe03;
	B = 16'h3eed;
	ans_a = 16'hceba;
	#20
	A = 16'hbf1e;
	B = 16'hba0c;
	ans_a = 16'hce64;
	#20
	A = 16'had51;
	B = 16'h2f0b;
	ans_a = 16'hce65;
	#20
	A = 16'h3a69;
	B = 16'hb48f;
	ans_a = 16'hce74;
	#20
	A = 16'h39cf;
	B = 16'hb916;
	ans_a = 16'hce92;
	#20
	A = 16'h3e0a;
	B = 16'hbcf7;
	ans_a = 16'hcf0a;
	#20
	A = 16'h37d8;
	B = 16'h3830;
	ans_a = 16'hcefa;
	#20
	A = 16'hbc89;
	B = 16'h3f1a;
	ans_a = 16'hcf7b;
	#20
	A = 16'h38d5;
	B = 16'h3bab;
	ans_a = 16'hcf56;
	#20
	A = 16'hbd79;
	B = 16'h37c4;
	ans_a = 16'hcf80;
	#20
	A = 16'hba12;
	B = 16'hbf66;
	ans_a = 16'hcf26;
	#20
	A = 16'h33a3;
	B = 16'hb97f;
	ans_a = 16'hcf30;
	#20
	A = 16'hb358;
	B = 16'hbc24;
	ans_a = 16'hcf21;
	#20
	A = 16'hbeaa;
	B = 16'hbdf1;
	ans_a = 16'hce83;
	#20
	A = 16'hbdfe;
	B = 16'h3421;
	ans_a = 16'hce9c;
	#20
	A = 16'h390d;
	B = 16'h2c27;
	ans_a = 16'hce99;
	#20
	A = 16'hb5b3;
	B = 16'h394e;
	ans_a = 16'hcea8;
	#20
	A = 16'h3cb4;
	B = 16'hbc42;
	ans_a = 16'hcef8;
	#20
	A = 16'h3a29;
	B = 16'h3473;
	ans_a = 16'hceea;
	#20
	A = 16'h2d4b;
	B = 16'hb41a;
	ans_a = 16'hceeb;
	#20
	A = 16'hbd57;
	B = 16'h3bd1;
	ans_a = 16'hcf3e;
	#20
	A = 16'hbe70;
	B = 16'hbf16;
	ans_a = 16'hce88;
	#20
	A = 16'hbc83;
	B = 16'h3f44;
	ans_a = 16'hcf0b;
	#20
	A = 16'hbe41;
	B = 16'h3fe0;
	ans_a = 16'hcfd0;
	#20
	A = 16'hbdb5;
	B = 16'hb581;
	ans_a = 16'hcfb1;
	#20
	A = 16'hbe36;
	B = 16'h33e4;
	ans_a = 16'hcfca;
	#20
	A = 16'hba50;
	B = 16'hbdfc;
	ans_a = 16'hcf7e;
	#20
	A = 16'hb190;
	B = 16'h39b7;
	ans_a = 16'hcf86;
	#20
	A = 16'hbf41;
	B = 16'hbea1;
	ans_a = 16'hcec6;
	#20
	A = 16'hb3a8;
	B = 16'hb9f7;
	ans_a = 16'hcebb;
	#20
	A = 16'hbb14;
	B = 16'hb095;
	ans_a = 16'hceb3;
	#20
	A = 16'h3ded;
	B = 16'h3edc;
	ans_a = 16'hce10;
	#20
	A = 16'hb550;
	B = 16'h3023;
	ans_a = 16'hce13;
	#20
	A = 16'hae57;
	B = 16'h3f2f;
	ans_a = 16'hce1e;
	#20
	A = 16'h38b5;
	B = 16'hbf76;
	ans_a = 16'hce64;
	#20
	A = 16'h36cc;
	B = 16'hbd31;
	ans_a = 16'hce87;
	#20
	A = 16'hbd80;
	B = 16'hb668;
	ans_a = 16'hce64;
	#20
	A = 16'hbf6b;
	B = 16'hbcdb;
	ans_a = 16'hcdd4;
	#20
	A = 16'h3bd4;
	B = 16'hb880;
	ans_a = 16'hcdf7;
	#20
	A = 16'hbae7;
	B = 16'hbdd4;
	ans_a = 16'hcda7;
	#20
	A = 16'hb344;
	B = 16'h3e25;
	ans_a = 16'hcdbd;
	#20
	A = 16'hbb24;
	B = 16'h3e5c;
	ans_a = 16'hce18;
	#20
	A = 16'h3ac7;
	B = 16'h3cc4;
	ans_a = 16'hcdd7;
	#20
	A = 16'hbb3f;
	B = 16'h3fbf;
	ans_a = 16'hce47;
	#20
	A = 16'h2b51;
	B = 16'h3d67;
	ans_a = 16'hce42;
	#20
	A = 16'h3d64;
	B = 16'hbd1b;
	ans_a = 16'hceb0;
	#20
	A = 16'h36e8;
	B = 16'h3e38;
	ans_a = 16'hce85;
	#20
	A = 16'h3d1e;
	B = 16'h3f98;
	ans_a = 16'hcdea;
	#20
	A = 16'h347e;
	B = 16'h38af;
	ans_a = 16'hcddf;
	#20
	A = 16'hbc96;
	B = 16'h35fb;
	ans_a = 16'hcdfa;
	#20
	A = 16'hb37c;
	B = 16'hbfa1;
	ans_a = 16'hcddd;
	#20
	A = 16'h3954;
	B = 16'hb4f0;
	ans_a = 16'hcdea;
	#20
	A = 16'hbfc1;
	B = 16'hbcd1;
	ans_a = 16'hcd55;
	#20
	A = 16'h3d5f;
	B = 16'h3a82;
	ans_a = 16'hcd0f;
	#20
	A = 16'h3c80;
	B = 16'hbde4;
	ans_a = 16'hcd79;
	#20
	A = 16'h4000;
	B = 16'h3a2d;
	ans_a = 16'hcd16;
	#20
	A = 16'h3dae;
	B = 16'h3b60;
	ans_a = 16'hccc2;
	#20
	A = 16'hba6b;
	B = 16'h3e2b;
	ans_a = 16'hcd11;
	#20
	A = 16'had4f;
	B = 16'h3c44;
	ans_a = 16'hcd17;
	#20
	A = 16'h3e9a;
	B = 16'h3384;
	ans_a = 16'hccfe;
	#20
	A = 16'h3d5d;
	B = 16'hb8b0;
	ans_a = 16'hcd30;
	#20
	A = 16'hba11;
	B = 16'hbcdc;
	ans_a = 16'hccf5;
	#20
	A = 16'h3e66;
	B = 16'hbdfa;
	ans_a = 16'hcd8e;
	#20
	A = 16'h38ed;
	B = 16'hbe4b;
	ans_a = 16'hcdcc;
	#20
	A = 16'hbff2;
	B = 16'h2bce;
	ans_a = 16'hcdd4;
	#20
	A = 16'hb57f;
	B = 16'hb5c1;
	ans_a = 16'hcdcc;
	#20
	A = 16'hbc56;
	B = 16'h3945;
	ans_a = 16'hcdfa;
	#20
	A = 16'hb8e5;
	B = 16'h3fb8;
	ans_a = 16'hce46;
	#20
	A = 16'h3b5e;
	B = 16'h3d7c;
	ans_a = 16'hcdf5;
	#20
	A = 16'hbeb3;
	B = 16'hbf6c;
	ans_a = 16'hcd2e;
	#20
	A = 16'hbd65;
	B = 16'hbca9;
	ans_a = 16'hccc9;
	#20
	A = 16'hb9ba;
	B = 16'h3b67;
	ans_a = 16'hccf3;
	#20
	A = 16'h3e70;
	B = 16'h3e7a;
	ans_a = 16'hcc4c;
	#20
	A = 16'hb1d0;
	B = 16'h3ff8;
	ans_a = 16'hcc63;
	#20
	A = 16'hbeb6;
	B = 16'hb84b;
	ans_a = 16'hcc29;
	#20
	A = 16'h3195;
	B = 16'hbfe3;
	ans_a = 16'hcc3f;
	#20
	A = 16'h3f79;
	B = 16'hbb36;
	ans_a = 16'hccab;
	#20
	A = 16'h331b;
	B = 16'h3677;
	ans_a = 16'hcca5;
	#20
	A = 16'hbd10;
	B = 16'hb5d4;
	ans_a = 16'hcc88;
	#20
	A = 16'hbad6;
	B = 16'hb8b4;
	ans_a = 16'hcc68;
	#20
	A = 16'h3fcc;
	B = 16'h3af2;
	ans_a = 16'hcbf7;
	#20
	A = 16'hb0e9;
	B = 16'h30d8;
	ans_a = 16'hcbfa;
	#20
	A = 16'hbd52;
	B = 16'hbfcf;
	ans_a = 16'hcaae;
	#20
	A = 16'h39d5;
	B = 16'h31e2;
	ans_a = 16'hca9d;
	#20
	A = 16'h329d;
	B = 16'hbca1;
	ans_a = 16'hcabc;
	#20
	A = 16'h3c43;
	B = 16'hbb8b;
	ans_a = 16'hcb3d;
	#20
	A = 16'h3dc6;
	B = 16'hbf16;
	ans_a = 16'hcc42;
	#20
	A = 16'h3f16;
	B = 16'h1660;
	ans_a = 16'hcc42;
	#20
	A = 16'hbca1;
	B = 16'hbcb1;
	ans_a = 16'hcbd6;
	#20
	A = 16'had57;
	B = 16'hbce5;
	ans_a = 16'hcbc9;
	#20
	A = 16'had77;
	B = 16'hbfde;
	ans_a = 16'hcbb4;
	#20
	A = 16'hbd63;
	B = 16'h2d93;
	ans_a = 16'hcbc3;
	#20
	A = 16'hbba4;
	B = 16'h3c0a;
	ans_a = 16'hcc1f;
	#20
	A = 16'h2879;
	B = 16'hb933;
	ans_a = 16'hcc20;
	#20
	A = 16'h3f49;
	B = 16'hbd34;
	ans_a = 16'hccb8;
	#20
	A = 16'h32b5;
	B = 16'hb911;
	ans_a = 16'hccc0;
	#20
	A = 16'h3d6f;
	B = 16'h3ea8;
	ans_a = 16'hcc2f;
	#20
	A = 16'hae05;
	B = 16'h2c44;
	ans_a = 16'hcc2f;
	#20
	A = 16'hac2d;
	B = 16'hbe8a;
	ans_a = 16'hcc28;
	#20
	A = 16'h3178;
	B = 16'hb236;
	ans_a = 16'hcc2a;
	#20
	A = 16'h39f3;
	B = 16'hb952;
	ans_a = 16'hcc4a;
	#20
	A = 16'h3ff2;
	B = 16'hb88f;
	ans_a = 16'hcc92;
	#20
	A = 16'h3c94;
	B = 16'hb022;
	ans_a = 16'hcc9b;
	#20
	A = 16'hbc60;
	B = 16'h2c5d;
	ans_a = 16'hcca0;
	#20
	A = 16'hbe55;
	B = 16'h3dc3;
	ans_a = 16'hcd32;
	#20
	A = 16'h3e8e;
	B = 16'hbca8;
	ans_a = 16'hcdac;
	#20
	A = 16'hbd4c;
	B = 16'h3c5f;
	ans_a = 16'hce09;
	#20
	A = 16'hbe94;
	B = 16'h3ea6;
	ans_a = 16'hceb8;
	#20
	A = 16'hbb3e;
	B = 16'h3e5c;
	ans_a = 16'hcf14;
	#20
	A = 16'hbf6d;
	B = 16'hb499;
	ans_a = 16'hcef2;
	#20
	A = 16'ha88d;
	B = 16'h364d;
	ans_a = 16'hcef3;
	#20
	A = 16'h3c0b;
	B = 16'h365f;
	ans_a = 16'hced9;
	#20
	A = 16'h3c04;
	B = 16'h3e23;
	ans_a = 16'hce76;
	#20
	A = 16'hbfcc;
	B = 16'hbd18;
	ans_a = 16'hcdd7;
	#20
	A = 16'hbf5a;
	B = 16'hb9cf;
	ans_a = 16'hcd82;
	#20
	A = 16'h2c33;
	B = 16'h3f96;
	ans_a = 16'hcd7a;
	#20
	A = 16'hbceb;
	B = 16'hba22;
	ans_a = 16'hcd3e;
	#20
	A = 16'h3754;
	B = 16'h3b28;
	ans_a = 16'hcd24;
	#20
	A = 16'h31db;
	B = 16'hbd9f;
	ans_a = 16'hcd34;
	#20
	A = 16'hb903;
	B = 16'h35c4;
	ans_a = 16'hcd42;
	#20
	A = 16'h38fa;
	B = 16'h378f;
	ans_a = 16'hcd2f;
	#20
	A = 16'hbba6;
	B = 16'h3d38;
	ans_a = 16'hcd7f;
	#20
	A = 16'hb942;
	B = 16'h3a34;
	ans_a = 16'hcda0;
	#20
	A = 16'h391d;
	B = 16'h3b4c;
	ans_a = 16'hcd7b;
	#20
	A = 16'h3456;
	B = 16'h38dd;
	ans_a = 16'hcd70;
	#20
	A = 16'h392f;
	B = 16'h385b;
	ans_a = 16'hcd59;
	#20
	A = 16'h2e4f;
	B = 16'hbf08;
	ans_a = 16'hcd64;
	#20
	A = 16'h3c22;
	B = 16'h3dab;
	ans_a = 16'hcd06;
	#20
	A = 16'h3f5c;
	B = 16'hac2d;
	ans_a = 16'hcd0e;
	#20
	A = 16'hbeaf;
	B = 16'hbd03;
	ans_a = 16'hcc88;
	#20
	A = 16'h3c6a;
	B = 16'h3efa;
	ans_a = 16'hcc0d;
	#20
	A = 16'h3d55;
	B = 16'h3293;
	ans_a = 16'hcbf7;
	#20
	A = 16'h3d17;
	B = 16'hb5d7;
	ans_a = 16'hcc19;
	#20
	A = 16'hbfda;
	B = 16'h3d3f;
	ans_a = 16'hccbe;
	#20
	A = 16'h3c17;
	B = 16'h3c3f;
	ans_a = 16'hcc79;
	#20
	A = 16'hb939;
	B = 16'hacee;
	ans_a = 16'hcc76;
	#20
	A = 16'h3fd4;
	B = 16'hba2b;
	ans_a = 16'hccd7;
	#20
	A = 16'hbc26;
	B = 16'hb8be;
	ans_a = 16'hccb0;
	#20
	A = 16'h3bff;
	B = 16'h39ea;
	ans_a = 16'hcc81;
	#20
	A = 16'h3d03;
	B = 16'h3a12;
	ans_a = 16'hcc44;
	#20
	A = 16'hb765;
	B = 16'hbd0c;
	ans_a = 16'hcc1f;
	#20
	A = 16'h3a3a;
	B = 16'h3e63;
	ans_a = 16'hcb9f;
	#20
	A = 16'hbf43;
	B = 16'hb505;
	ans_a = 16'hcb56;
	#20
	A = 16'h36cd;
	B = 16'hba24;
	ans_a = 16'hcb80;
	#20
	A = 16'hb855;
	B = 16'hb752;
	ans_a = 16'hcb60;
	#20
	A = 16'h36d2;
	B = 16'hbec0;
	ans_a = 16'hcbbc;
	#20
	A = 16'h3b81;
	B = 16'h3c16;
	ans_a = 16'hcb41;
	#20
	A = 16'h3904;
	B = 16'h3f7e;
	ans_a = 16'hcaab;
	#20
	A = 16'hb8c7;
	B = 16'hb95d;
	ans_a = 16'hca78;
	#20
	A = 16'h3e62;
	B = 16'h3d4c;
	ans_a = 16'hc96a;
	#20
	A = 16'hbdf3;
	B = 16'hbf7c;
	ans_a = 16'hc806;
	#20
	A = 16'hbbaa;
	B = 16'ha8fd;
	ans_a = 16'hc801;
	#20
	A = 16'h3c6e;
	B = 16'h3db4;
	ans_a = 16'hc66e;
	#20
	A = 16'hb070;
	B = 16'h37fa;
	ans_a = 16'hc680;
	#20
	A = 16'h39a2;
	B = 16'h3ad0;
	ans_a = 16'hc5e6;
	#20
	A = 16'h3873;
	B = 16'h3790;
	ans_a = 16'hc5a3;
	#20
	A = 16'h3c46;
	B = 16'h33d2;
	ans_a = 16'hc560;
	#20
	A = 16'hbf86;
	B = 16'h3b23;
	ans_a = 16'hc70e;
	#20
	A = 16'hbc38;
	B = 16'hbfda;
	ans_a = 16'hc4fc;
	#20
	A = 16'h367d;
	B = 16'hb9a2;
	ans_a = 16'hc545;
	#20
	A = 16'hbdc8;
	B = 16'h365a;
	ans_a = 16'hc5d8;
	#20
	A = 16'h3b21;
	B = 16'hbcab;
	ans_a = 16'hc6e2;
	#20
	A = 16'h39ae;
	B = 16'haf63;
	ans_a = 16'hc6f7;
	#20
	A = 16'hada8;
	B = 16'hbb65;
	ans_a = 16'hc6e2;
	#20
	A = 16'h3030;
	B = 16'haeea;
	ans_a = 16'hc6e6;
	#20
	A = 16'h3dc1;
	B = 16'h3a73;
	ans_a = 16'hc5bd;
	#20
	A = 16'h3ece;
	B = 16'hb126;
	ans_a = 16'hc603;
	#20
	A = 16'h3f30;
	B = 16'hb69f;
	ans_a = 16'hc6c1;
	#20
	A = 16'hbf85;
	B = 16'h3cdf;
	ans_a = 16'hc886;
	#20
	A = 16'hb820;
	B = 16'h3fda;
	ans_a = 16'hc908;
	#20
	A = 16'hbdc8;
	B = 16'h3c75;
	ans_a = 16'hc9d6;
	#20
	A = 16'h3677;
	B = 16'hba44;
	ans_a = 16'hc9fe;
	#20
	A = 16'hbfbc;
	B = 16'hb81c;
	ans_a = 16'hc97f;
	#20
	A = 16'hb747;
	B = 16'hbf7a;
	ans_a = 16'hc912;
	#20
	A = 16'hbd40;
	B = 16'hbf2d;
	ans_a = 16'hc7c9;
	#20
	A = 16'h3cb5;
	B = 16'h3b2c;
	ans_a = 16'hc6bb;
	#20
	A = 16'hb875;
	B = 16'h370f;
	ans_a = 16'hc6fa;
	#20
	A = 16'hb3cb;
	B = 16'h3a2a;
	ans_a = 16'hc72a;
	#20
	A = 16'ha31a;
	B = 16'h3db2;
	ans_a = 16'hc72f;
	#20
	A = 16'hb3b2;
	B = 16'h3f57;
	ans_a = 16'hc7a0;
	#20
	A = 16'h3d47;
	B = 16'hb727;
	ans_a = 16'hc81c;
	#20
	A = 16'h3763;
	B = 16'h3d58;
	ans_a = 16'hc79a;
	#20
	A = 16'h3ef5;
	B = 16'hb09d;
	ans_a = 16'hc7da;
	#20
	A = 16'hbcec;
	B = 16'hb242;
	ans_a = 16'hc79c;
	#20
	A = 16'h3c8e;
	B = 16'h38bd;
	ans_a = 16'hc6ef;
	#20
	A = 16'h3b52;
	B = 16'hbb15;
	ans_a = 16'hc7be;
	#20
	A = 16'hbbb9;
	B = 16'h3959;
	ans_a = 16'hc832;
	#20
	A = 16'h3a14;
	B = 16'h2444;
	ans_a = 16'hc830;
	#20
	A = 16'h3869;
	B = 16'h38a6;
	ans_a = 16'hc807;
	#20
	A = 16'h2cc6;
	B = 16'hb624;
	ans_a = 16'hc80b;
	#20
	A = 16'h3b49;
	B = 16'hbb53;
	ans_a = 16'hc876;
	#20
	A = 16'hb968;
	B = 16'hb8e7;
	ans_a = 16'hc841;
	#20
	A = 16'hb9dd;
	B = 16'h3f35;
	ans_a = 16'hc8ea;
	#20
	A = 16'h3e65;
	B = 16'h3a05;
	ans_a = 16'hc850;
	#20
	A = 16'hb820;
	B = 16'hbc70;
	ans_a = 16'hc807;
	#20
	A = 16'h3b5c;
	B = 16'hbb6a;
	ans_a = 16'hc874;
	#20
	A = 16'ha92b;
	B = 16'h3aba;
	ans_a = 16'hc878;
	#20
	A = 16'h3ece;
	B = 16'hbf0a;
	ans_a = 16'hc9f7;
	#20
	A = 16'hbd18;
	B = 16'h3e29;
	ans_a = 16'hcaf2;
	#20
	A = 16'hb69f;
	B = 16'h3a71;
	ans_a = 16'hcb1d;
	#20
	A = 16'hb3fc;
	B = 16'h3e3d;
	ans_a = 16'hcb4f;
	#20
	A = 16'hbe44;
	B = 16'hbe3d;
	ans_a = 16'hca16;
	#20
	A = 16'hb188;
	B = 16'ha89b;
	ans_a = 16'hca15;
	#20
	A = 16'hb64b;
	B = 16'h3913;
	ans_a = 16'hca35;
	#20
	A = 16'hbf95;
	B = 16'h3f74;
	ans_a = 16'hcbf9;
	#20
	A = 16'hb648;
	B = 16'h3ef4;
	ans_a = 16'hcc28;
	#20
	A = 16'h39f4;
	B = 16'hbad9;
	ans_a = 16'hcc51;
	#20
	A = 16'hb070;
	B = 16'h38f0;
	ans_a = 16'hcc56;
	#20
	A = 16'h3a7a;
	B = 16'hb79c;
	ans_a = 16'hcc6f;
	#20
	A = 16'hb351;
	B = 16'h3f29;
	ans_a = 16'hcc89;
	#20
	A = 16'hbab4;
	B = 16'h3da6;
	ans_a = 16'hccd5;
	#20
	A = 16'hb9c1;
	B = 16'h3f85;
	ans_a = 16'hcd2c;
	#20
	A = 16'hb87c;
	B = 16'haa69;
	ans_a = 16'hcd2a;
	#20
	A = 16'h3f75;
	B = 16'hb60f;
	ans_a = 16'hcd57;
	#20
	A = 16'h3a15;
	B = 16'hb47b;
	ans_a = 16'hcd65;
	#20
	A = 16'h3f05;
	B = 16'hbe1a;
	ans_a = 16'hce10;
	#20
	A = 16'hb799;
	B = 16'h37e9;
	ans_a = 16'hce1f;
	#20
	A = 16'h3447;
	B = 16'hbf24;
	ans_a = 16'hce3e;
	#20
	A = 16'hbdde;
	B = 16'h3ad1;
	ans_a = 16'hce8e;
	#20
	A = 16'hbcf4;
	B = 16'h3891;
	ans_a = 16'hcebb;
	#20
	A = 16'hbeb8;
	B = 16'h38e2;
	ans_a = 16'hcefd;
	#20
	A = 16'hbe29;
	B = 16'h3a1e;
	ans_a = 16'hcf48;
	#20
	A = 16'h324b;
	B = 16'h3cd0;
	ans_a = 16'hcf39;
	#20
	A = 16'h35f7;
	B = 16'hb96b;
	ans_a = 16'hcf49;
	#20
	A = 16'h3f8b;
	B = 16'hbcd3;
	ans_a = 16'hcfda;
	#20
	A = 16'hb957;
	B = 16'h34d9;
	ans_a = 16'hcfe7;
	#20
	A = 16'hb86c;
	B = 16'hbb24;
	ans_a = 16'hcfc7;
	#20
	A = 16'h3dc0;
	B = 16'h3d25;
	ans_a = 16'hcf51;
	#20
	A = 16'h3daf;
	B = 16'hbe45;
	ans_a = 16'hcfe0;
	#20
	A = 16'hbb78;
	B = 16'h3e73;
	ans_a = 16'hd020;
	#20
	A = 16'h3e16;
	B = 16'hbd09;
	ans_a = 16'hd05d;
	#20
	A = 16'hb8a6;
	B = 16'hb3df;
	ans_a = 16'hd058;
	#20
	A = 16'hbfe7;
	B = 16'h3872;
	ans_a = 16'hd07b;
	#20
	A = 16'hbec4;
	B = 16'hbcf2;
	ans_a = 16'hd038;
	#20
	A = 16'h3f94;
	B = 16'hbb69;
	ans_a = 16'hd070;
	#20
	A = 16'hbbbc;
	B = 16'h39b1;
	ans_a = 16'hd086;
	#20
	A = 16'hbd40;
	B = 16'h3c9d;
	ans_a = 16'hd0b6;
	#20
	A = 16'hb634;
	B = 16'h37ec;
	ans_a = 16'hd0bc;
	#20
	A = 16'h3f9c;
	B = 16'hbdff;
	ans_a = 16'hd117;
	#20
	A = 16'hbca7;
	B = 16'h384b;
	ans_a = 16'hd12b;
	#20
	A = 16'h3ba8;
	B = 16'h3517;
	ans_a = 16'hd121;
	#20
	A = 16'h3721;
	B = 16'hbd7e;
	ans_a = 16'hd135;
	#20
	A = 16'hb276;
	B = 16'hb934;
	ans_a = 16'hd131;
	#20
	A = 16'hbe35;
	B = 16'hbb98;
	ans_a = 16'hd102;
	#20
	A = 16'h3d7d;
	B = 16'h3f27;
	ans_a = 16'hd0b4;
	#20
	A = 16'h3e16;
	B = 16'hbc0c;
	ans_a = 16'hd0e5;
	#20
	A = 16'h3e17;
	B = 16'h395f;
	ans_a = 16'hd0c4;
	#20
	A = 16'h34da;
	B = 16'hbf91;
	ans_a = 16'hd0d6;
	#20
	A = 16'hb30e;
	B = 16'hbd9d;
	ans_a = 16'hd0cc;
	#20
	A = 16'hb1e9;
	B = 16'hb918;
	ans_a = 16'hd0c8;
	#20
	A = 16'ha932;
	B = 16'h3a21;
	ans_a = 16'hd0c9;
	#20
	A = 16'h3880;
	B = 16'h3ef4;
	ans_a = 16'hd0aa;
	#20
	A = 16'hb4a4;
	B = 16'hba92;
	ans_a = 16'hd0a2;
	#20
	A = 16'hbd56;
	B = 16'hbd90;
	ans_a = 16'hd067;
	#20
	A = 16'hbce7;
	B = 16'hbc26;
	ans_a = 16'hd03e;
	#20
	A = 16'hbdaf;
	B = 16'h38c1;
	ans_a = 16'hd059;
	#20
	A = 16'h3d66;
	B = 16'hb152;
	ans_a = 16'hd060;
	#20
	A = 16'h3cc4;
	B = 16'h36cd;
	ans_a = 16'hd050;
	#20
	A = 16'ha84b;
	B = 16'hbfc7;
	ans_a = 16'hd04e;
	#20
	A = 16'h3cc2;
	B = 16'h3a52;
	ans_a = 16'hd030;
	#20
	A = 16'hbacc;
	B = 16'h382d;
	ans_a = 16'hd03e;
	#20
	A = 16'h35eb;
	B = 16'h326a;
	ans_a = 16'hd03c;
	#20
	A = 16'h3978;
	B = 16'hbcdd;
	ans_a = 16'hd057;
	#20
	A = 16'hb45e;
	B = 16'h3703;
	ans_a = 16'hd05b;
	#20
	A = 16'hb00a;
	B = 16'hbdc8;
	ans_a = 16'hd055;
	#20
	A = 16'h3ee8;
	B = 16'h2e27;
	ans_a = 16'hd050;
	#20
	A = 16'h3bb6;
	B = 16'hbd44;
	ans_a = 16'hd079;
	#20
	A = 16'hb955;
	B = 16'hb87f;
	ans_a = 16'hd06d;
	#20
	A = 16'hbdcf;
	B = 16'hb9ac;
	ans_a = 16'hd04c;
	#20
	A = 16'hbb05;
	B = 16'h32a0;
	ans_a = 16'hd052;
	#20
	A = 16'h3d77;
	B = 16'h3eb2;
	ans_a = 16'hd009;
	#20
	A = 16'hb6e7;
	B = 16'h3ef9;
	ans_a = 16'hd021;
	#20
	A = 16'h3dfc;
	B = 16'h322c;
	ans_a = 16'hd018;
	#20
	A = 16'h3dfe;
	B = 16'hbdcd;
	ans_a = 16'hd05e;
	#20
	A = 16'hbee8;
	B = 16'hbfd5;
	ans_a = 16'hcfe4;
	#20
	A = 16'ha2ae;
	B = 16'hb16a;
	ans_a = 16'hcfe4;
	#20
	A = 16'hb88f;
	B = 16'h3e3f;
	ans_a = 16'hd00e;
	#20
	A = 16'hbf67;
	B = 16'hbe4d;
	ans_a = 16'hcf62;
	#20
	A = 16'h3c40;
	B = 16'h3a5b;
	ans_a = 16'hcf2c;
	#20
	A = 16'h3ec8;
	B = 16'hbd7f;
	ans_a = 16'hcfc1;
	#20
	A = 16'hbb65;
	B = 16'h3f3d;
	ans_a = 16'hd016;
	#20
	A = 16'hb85f;
	B = 16'hb0d3;
	ans_a = 16'hd013;
	#20
	A = 16'hbb33;
	B = 16'hbd11;
	ans_a = 16'hcfdd;
	#20
	A = 16'h3d85;
	B = 16'hbb9a;
	ans_a = 16'hd018;
	#20
	A = 16'h3a0b;
	B = 16'h3852;
	ans_a = 16'hd00b;
	#20
	A = 16'h3c7d;
	B = 16'h3869;
	ans_a = 16'hcfee;
	#20
	A = 16'hbae5;
	B = 16'h3d05;
	ans_a = 16'hd01a;
	#20
	A = 16'h3db7;
	B = 16'hbd96;
	ans_a = 16'hd05a;
	#20
	A = 16'h3a22;
	B = 16'hbb8b;
	ans_a = 16'hd071;
	#20
	A = 16'hbf5c;
	B = 16'hb1ef;
	ans_a = 16'hd066;
	#20
	A = 16'hb734;
	B = 16'h3a47;
	ans_a = 16'hd071;
	#20
	A = 16'hb88e;
	B = 16'hbdb9;
	ans_a = 16'hd057;
	#20
	A = 16'h3ee0;
	B = 16'h3d9b;
	ans_a = 16'hd00a;
	#20
	A = 16'hbaeb;
	B = 16'hb4ac;
	ans_a = 16'hd002;
	#20
	A = 16'h360a;
	B = 16'h3eb9;
	ans_a = 16'hcfdb;
	#20
	A = 16'hb652;
	B = 16'hb906;
	ans_a = 16'hcfcb;
	#20
	A = 16'hb58d;
	B = 16'hbc8e;
	ans_a = 16'hcfb2;
	#20
	A = 16'h3200;
	B = 16'h3be5;
	ans_a = 16'hcfa6;
	#20
	A = 16'h3f92;
	B = 16'h3915;
	ans_a = 16'hcf59;
	#20
	A = 16'hb54d;
	B = 16'hb85a;
	ans_a = 16'hcf4d;
	#20
	A = 16'hb528;
	B = 16'h3dc5;
	ans_a = 16'hcf6b;
	#20
	A = 16'hbeab;
	B = 16'h3548;
	ans_a = 16'hcf8e;
	#20
	A = 16'hbb3c;
	B = 16'hb7a1;
	ans_a = 16'hcf72;
	#20
	A = 16'hb7bd;
	B = 16'hbaa0;
	ans_a = 16'hcf58;
	#20
	A = 16'hab56;
	B = 16'h3d5b;
	ans_a = 16'hcf5d;
	#20
	A = 16'h303b;
	B = 16'hbe6e;
	ans_a = 16'hcf6b;
	#20
	A = 16'h3299;
	B = 16'hb883;
	ans_a = 16'hcf72;
	#20
	A = 16'h386b;
	B = 16'h3eff;
	ans_a = 16'hcf34;
	#20
	A = 16'hbd9b;
	B = 16'h3c1b;
	ans_a = 16'hcf90;
	#20
	A = 16'hbcc6;
	B = 16'h3802;
	ans_a = 16'hcfb6;
	#20
	A = 16'hb4e9;
	B = 16'hbc7d;
	ans_a = 16'hcfa0;
	#20
	A = 16'h3e03;
	B = 16'hbdd3;
	ans_a = 16'hd016;
	#20
	A = 16'h3cd9;
	B = 16'hbf05;
	ans_a = 16'hd05a;
	#20
	A = 16'hbcc1;
	B = 16'hbcfb;
	ans_a = 16'hd02b;
	#20
	A = 16'hbc91;
	B = 16'hadba;
	ans_a = 16'hd028;
	#20
	A = 16'ha9d7;
	B = 16'hbd4a;
	ans_a = 16'hd026;
	#20
	A = 16'hba41;
	B = 16'hb009;
	ans_a = 16'hd023;
	#20
	A = 16'h2ab0;
	B = 16'h3e8b;
	ans_a = 16'hd020;
	#20
	A = 16'h3894;
	B = 16'h3fa5;
	ans_a = 16'hcffa;
	#20
	A = 16'h3bff;
	B = 16'h3d67;
	ans_a = 16'hcfa4;
	#20
	A = 16'h2d1a;
	B = 16'h3e84;
	ans_a = 16'hcf9c;
	#20
	A = 16'hb2ef;
	B = 16'hbac0;
	ans_a = 16'hcf90;
	#20
	A = 16'hbd1a;
	B = 16'hb597;
	ans_a = 16'hcf73;
	#20
	A = 16'hb10a;
	B = 16'h3a32;
	ans_a = 16'hcf7b;
	#20
	A = 16'hbca7;
	B = 16'hbcfe;
	ans_a = 16'hcf1e;
	#20
	A = 16'hbacb;
	B = 16'h3b99;
	ans_a = 16'hcf52;
	#20
	A = 16'h3940;
	B = 16'hbc5f;
	ans_a = 16'hcf80;
	#20
	A = 16'hbfab;
	B = 16'h3db6;
	ans_a = 16'hd018;
	#20
	A = 16'hb781;
	B = 16'h3c5d;
	ans_a = 16'hd028;
	#20
	A = 16'hbc42;
	B = 16'h3ec6;
	ans_a = 16'hd062;
	#20
	A = 16'h3da0;
	B = 16'hbe71;
	ans_a = 16'hd0aa;
	#20
	A = 16'hbe09;
	B = 16'h28da;
	ans_a = 16'hd0ac;
	#20
	A = 16'ha9e2;
	B = 16'hbd86;
	ans_a = 16'hd0aa;
	#20
	A = 16'h3f2a;
	B = 16'h3935;
	ans_a = 16'hd085;
	#20
	A = 16'hb82d;
	B = 16'h3757;
	ans_a = 16'hd08d;
	#20
	A = 16'hbcc3;
	B = 16'h3cc2;
	ans_a = 16'hd0ba;
	#20
	A = 16'hb7fb;
	B = 16'hbcf1;
	ans_a = 16'hd0a6;
	#20
	A = 16'hb628;
	B = 16'h342e;
	ans_a = 16'hd0a9;
	#20
	A = 16'h39ef;
	B = 16'hb516;
	ans_a = 16'hd0b1;
	#20
	A = 16'hb4e7;
	B = 16'hbd0c;
	ans_a = 16'hd0a5;
	#20
	A = 16'hbfc6;
	B = 16'hbc09;
	ans_a = 16'hd066;
	#20
	A = 16'h3ddd;
	B = 16'h3c6b;
	ans_a = 16'hd032;
	#20
	A = 16'h3c8e;
	B = 16'hbd8d;
	ans_a = 16'hd065;
	#20
	A = 16'h3c7d;
	B = 16'hbc22;
	ans_a = 16'hd08a;
	#20
	A = 16'hbe05;
	B = 16'hbfed;
	ans_a = 16'hd02b;
	#20
	A = 16'h3ea5;
	B = 16'h3ef6;
	ans_a = 16'hcf9d;
	#20
	A = 16'h387b;
	B = 16'hbf00;
	ans_a = 16'hcfdc;
	#20
	A = 16'h3cd6;
	B = 16'h3f13;
	ans_a = 16'hcf53;
	#20
	A = 16'hbcee;
	B = 16'hb36f;
	ans_a = 16'hcf41;
	#20
	A = 16'hbee9;
	B = 16'hbfe9;
	ans_a = 16'hce66;
	#20
	A = 16'h3a99;
	B = 16'hbba9;
	ans_a = 16'hce99;
	#20
	A = 16'hb4f6;
	B = 16'hae15;
	ans_a = 16'hce97;
	#20
	A = 16'h3394;
	B = 16'hae15;
	ans_a = 16'hce98;
	#20
	A = 16'h3725;
	B = 16'hb563;
	ans_a = 16'hcea2;
	#20
	A = 16'h3a77;
	B = 16'hb200;
	ans_a = 16'hceac;
	#20
	A = 16'h3eea;
	B = 16'hba4a;
	ans_a = 16'hcf03;
	#20
	A = 16'hbd26;
	B = 16'h3c59;
	ans_a = 16'hcf5d;
	#20
	A = 16'hb5d2;
	B = 16'hbef7;
	ans_a = 16'hcf34;
	#20
	A = 16'h3cfb;
	B = 16'h38a4;
	ans_a = 16'hcf06;
	#20
	A = 16'hb82c;
	B = 16'h395d;
	ans_a = 16'hcf1c;
	#20
	A = 16'h3cd4;
	B = 16'hbeaf;
	ans_a = 16'hcf9d;
	#20
	A = 16'h3020;
	B = 16'h3d74;
	ans_a = 16'hcf92;
	#20
	A = 16'h3ec8;
	B = 16'h3c29;
	ans_a = 16'hcf21;
	#20
	A = 16'hac5d;
	B = 16'hbd2e;
	ans_a = 16'hcf1b;
	#20
	A = 16'hbdbd;
	B = 16'hbfd3;
	ans_a = 16'hce67;
	#20
	A = 16'hb687;
	B = 16'h3a06;
	ans_a = 16'hce7b;
	#20
	A = 16'hbfd8;
	B = 16'hba69;
	ans_a = 16'hce16;
	#20
	A = 16'hb49f;
	B = 16'h3f21;
	ans_a = 16'hce37;
	#20
	A = 16'h325b;
	B = 16'h3fb7;
	ans_a = 16'hce1e;
	#20
	A = 16'h3d37;
	B = 16'h385d;
	ans_a = 16'hcdf0;
	#20
	A = 16'h3ae3;
	B = 16'hbf73;
	ans_a = 16'hce57;
	#20
	A = 16'h3459;
	B = 16'h3e68;
	ans_a = 16'hce3b;
	#20
	A = 16'h21b1;
	B = 16'hbcb8;
	ans_a = 16'hce3c;
	#20
	A = 16'hbfbd;
	B = 16'hb7d3;
	ans_a = 16'hcdff;
	#20
	A = 16'h3ec6;
	B = 16'h3a64;
	ans_a = 16'hcda8;
	#20
	A = 16'h3eb4;
	B = 16'h370b;
	ans_a = 16'hcd79;
	#20
	A = 16'h3f9a;
	B = 16'h383d;
	ans_a = 16'hcd39;
	#20
	A = 16'h3fa8;
	B = 16'hbc91;
	ans_a = 16'hcdc5;
	#20
	A = 16'h3bd6;
	B = 16'hbfdb;
	ans_a = 16'hce40;
	#20
	A = 16'h36c8;
	B = 16'h2e7d;
	ans_a = 16'hce3d;
	#20
	A = 16'h3bc0;
	B = 16'hbb61;
	ans_a = 16'hce76;
	#20
	A = 16'hbcd0;
	B = 16'hb025;
	ans_a = 16'hce6c;
	#20
	A = 16'hbb66;
	B = 16'hbfab;
	ans_a = 16'hcdfb;
	#20
	A = 16'h3d09;
	B = 16'hbd80;
	ans_a = 16'hce6a;
	#20
	A = 16'h3d2a;
	B = 16'hbc7c;
	ans_a = 16'hcec7;
	#20
	A = 16'h3914;
	B = 16'h343b;
	ans_a = 16'hcebc;
	#20
	A = 16'hbffc;
	B = 16'hb4ee;
	ans_a = 16'hce95;
	#20
	A = 16'hbd7f;
	B = 16'hb646;
	ans_a = 16'hce73;
	#20
	A = 16'hbfb3;
	B = 16'h3668;
	ans_a = 16'hcea4;
	#20
	A = 16'h3634;
	B = 16'hbfc2;
	ans_a = 16'hced4;
	#20
	A = 16'hbfba;
	B = 16'hb60e;
	ans_a = 16'hcea5;
	#20
	A = 16'h311a;
	B = 16'hb747;
	ans_a = 16'hceaa;
	#20
	A = 16'h380c;
	B = 16'habca;
	ans_a = 16'hceac;
	#20
	A = 16'hbd2c;
	B = 16'h37df;
	ans_a = 16'hced5;
	#20
	A = 16'h399f;
	B = 16'hbfd9;
	ans_a = 16'hcf2d;
	#20
	A = 16'hb4ef;
	B = 16'hab5d;
	ans_a = 16'hcf2c;
	#20
	A = 16'hbc50;
	B = 16'hb97a;
	ans_a = 16'hcefd;
	#20
	A = 16'hbce5;
	B = 16'h3f27;
	ans_a = 16'hcf89;
	#20
	A = 16'h3d67;
	B = 16'h3721;
	ans_a = 16'hcf62;
	#20
	A = 16'hb800;
	B = 16'h2d9c;
	ans_a = 16'hcf65;
	#20
	A = 16'h3a1b;
	B = 16'hba4b;
	ans_a = 16'hcf8b;
	#20
	A = 16'hb01c;
	B = 16'h3093;
	ans_a = 16'hcf8c;
	#20
	A = 16'h38c1;
	B = 16'hbdaf;
	ans_a = 16'hcfc2;
	#20
	A = 16'hb874;
	B = 16'h3bf4;
	ans_a = 16'hcfe5;
	#20
	A = 16'hb87f;
	B = 16'hbe3d;
	ans_a = 16'hcfad;
	#20
	A = 16'h314b;
	B = 16'h3fa2;
	ans_a = 16'hcf99;
	#20
	A = 16'hbff7;
	B = 16'hbef0;
	ans_a = 16'hcebc;
	#20
	A = 16'h3b14;
	B = 16'h3e30;
	ans_a = 16'hce64;
	#20
	A = 16'h3606;
	B = 16'h3bba;
	ans_a = 16'hce4d;
	#20
	A = 16'h3e41;
	B = 16'h3f16;
	ans_a = 16'hcd9c;
	#20
	A = 16'hbe04;
	B = 16'h3bbb;
	ans_a = 16'hcdf9;
	#20
	A = 16'hbd10;
	B = 16'h396e;
	ans_a = 16'hce30;
	#20
	A = 16'hbe24;
	B = 16'h3c42;
	ans_a = 16'hce99;
	#20
	A = 16'h3e47;
	B = 16'h31a6;
	ans_a = 16'hce87;
	#20
	A = 16'hbe97;
	B = 16'hbbc7;
	ans_a = 16'hce20;
	#20
	A = 16'h34e7;
	B = 16'hbbb3;
	ans_a = 16'hce33;
	#20
	A = 16'h343c;
	B = 16'hbfb2;
	ans_a = 16'hce54;
	#20
	A = 16'hbd36;
	B = 16'h34d5;
	ans_a = 16'hce6d;
	#20
	A = 16'h3931;
	B = 16'h3471;
	ans_a = 16'hce61;
	#20
	A = 16'hbfda;
	B = 16'h3cab;
	ans_a = 16'hcef4;
	#20
	A = 16'hbee9;
	B = 16'h3d10;
	ans_a = 16'hcf80;
	#20
	A = 16'h3044;
	B = 16'h2b59;
	ans_a = 16'hcf80;
	#20
	A = 16'h34e6;
	B = 16'h3f72;
	ans_a = 16'hcf5c;
	#20
	A = 16'hbdea;
	B = 16'hb23b;
	ans_a = 16'hcf4a;
	#20
	A = 16'hbf66;
	B = 16'hbd73;
	ans_a = 16'hcea9;
	#20
	A = 16'hb493;
	B = 16'h39a4;
	ans_a = 16'hceb6;
	#20
	A = 16'h3ef0;
	B = 16'h3f45;
	ans_a = 16'hcdec;
	#20
	A = 16'h3ee3;
	B = 16'hb924;
	ans_a = 16'hce33;
	#20
	A = 16'h3c16;
	B = 16'h3542;
	ans_a = 16'hce1e;
	#20
	A = 16'hba72;
	B = 16'h3d23;
	ans_a = 16'hce60;
	#20
	A = 16'h3880;
	B = 16'hb9d9;
	ans_a = 16'hce7a;
	#20
	A = 16'h3a17;
	B = 16'hb1b3;
	ans_a = 16'hce83;
	#20
	A = 16'h3e67;
	B = 16'h3c48;
	ans_a = 16'hce15;
	#20
	A = 16'h3ebc;
	B = 16'h3f90;
	ans_a = 16'hcd49;
	#20
	A = 16'hb87f;
	B = 16'hbe0d;
	ans_a = 16'hcd13;
	#20
	A = 16'hb855;
	B = 16'h3b8e;
	ans_a = 16'hcd34;
	#20
	A = 16'hbc1b;
	B = 16'hbcfb;
	ans_a = 16'hcce2;
	#20
	A = 16'h3d02;
	B = 16'hadc7;
	ans_a = 16'hcce9;
	#20
	A = 16'h3744;
	B = 16'h3eb9;
	ans_a = 16'hccb8;
	#20
	A = 16'h3e0f;
	B = 16'hb61e;
	ans_a = 16'hccdd;
	#20
	A = 16'h3d31;
	B = 16'h3d9d;
	ans_a = 16'hcc68;
	#20
	A = 16'h3d43;
	B = 16'h3883;
	ans_a = 16'hcc39;
	#20
	A = 16'hb863;
	B = 16'hb82c;
	ans_a = 16'hcc27;
	#20
	A = 16'hbf44;
	B = 16'h3f8c;
	ans_a = 16'hcd02;
	#20
	A = 16'hb9fe;
	B = 16'hba5a;
	ans_a = 16'hccdc;
	#20
	A = 16'h3d86;
	B = 16'hbf52;
	ans_a = 16'hcd7e;
	#20
	A = 16'hbe67;
	B = 16'hbe59;
	ans_a = 16'hccdc;
	#20
	A = 16'hb34a;
	B = 16'h3fcf;
	ans_a = 16'hccf8;
	#20
	A = 16'hb7dc;
	B = 16'h338b;
	ans_a = 16'hccff;
	#20
	A = 16'h3d57;
	B = 16'hbe4d;
	ans_a = 16'hcd86;
	#20
	A = 16'hbd6e;
	B = 16'hb9b3;
	ans_a = 16'hcd48;
	#20
	A = 16'h3551;
	B = 16'h3497;
	ans_a = 16'hcd42;
	#20
	A = 16'hba55;
	B = 16'h3c4e;
	ans_a = 16'hcd78;
	#20
	A = 16'hba63;
	B = 16'h32ba;
	ans_a = 16'hcd83;
	#20
	A = 16'hbb4a;
	B = 16'hbef3;
	ans_a = 16'hcd1e;
	#20
	A = 16'hbfd9;
	B = 16'h3b90;
	ans_a = 16'hcd95;
	#20
	A = 16'hb9dc;
	B = 16'h3cb0;
	ans_a = 16'hcdcc;
	#20
	A = 16'h3df5;
	B = 16'h3fa7;
	ans_a = 16'hcd16;
	#20
	A = 16'hb309;
	B = 16'h3b73;
	ans_a = 16'hcd23;
	#20
	A = 16'hac30;
	B = 16'h3e06;
	ans_a = 16'hcd29;
	#20
	A = 16'hbc60;
	B = 16'h3d07;
	ans_a = 16'hcd81;
	#20
	A = 16'h38d6;
	B = 16'h3c60;
	ans_a = 16'hcd57;
	#20
	A = 16'h3f9f;
	B = 16'hbd1e;
	ans_a = 16'hcdf3;
	#20
	A = 16'hb4c1;
	B = 16'hbf00;
	ans_a = 16'hcdd2;
	#20
	A = 16'h38d0;
	B = 16'hbb2b;
	ans_a = 16'hcdf4;
	#20
	A = 16'h3c79;
	B = 16'h8c04;
	ans_a = 16'hcdf4;
	#20
	A = 16'hbdbc;
	B = 16'h31c7;
	ans_a = 16'hce05;
	#20
	A = 16'h3c6a;
	B = 16'hb596;
	ans_a = 16'hce1e;
	#20
	A = 16'hbf82;
	B = 16'h284b;
	ans_a = 16'hce22;
	#20
	A = 16'hb841;
	B = 16'hba4a;
	ans_a = 16'hce07;
	#20
	A = 16'hbe6e;
	B = 16'hbeaa;
	ans_a = 16'hcd5c;
	#20
	A = 16'hbedd;
	B = 16'hb400;
	ans_a = 16'hcd41;
	#20
	A = 16'hbd26;
	B = 16'h3a0e;
	ans_a = 16'hcd7f;
	#20
	A = 16'h3add;
	B = 16'h3656;
	ans_a = 16'hcd69;
	#20
	A = 16'hb7ee;
	B = 16'hb8d0;
	ans_a = 16'hcd56;
	#20
	A = 16'h2e1f;
	B = 16'h3f3c;
	ans_a = 16'hcd4b;
	#20
	A = 16'hba0c;
	B = 16'h38ff;
	ans_a = 16'hcd69;
	#20
	A = 16'h3ceb;
	B = 16'h3d20;
	ans_a = 16'hcd04;
	#20
	A = 16'h39e5;
	B = 16'h3eb2;
	ans_a = 16'hccb5;
	#20
	A = 16'h3b62;
	B = 16'h3f7d;
	ans_a = 16'hcc46;
	#20
	A = 16'hb735;
	B = 16'hbb99;
	ans_a = 16'hcc2b;
	#20
	A = 16'hbe57;
	B = 16'h36e1;
	ans_a = 16'hcc57;
	#20
	A = 16'h3c93;
	B = 16'hbbd1;
	ans_a = 16'hcc9e;
	#20
	A = 16'h3a39;
	B = 16'hb69b;
	ans_a = 16'hccb3;
	#20
	A = 16'hbcb9;
	B = 16'hbff5;
	ans_a = 16'hcc1d;
	#20
	A = 16'h3dcc;
	B = 16'hb797;
	ans_a = 16'hcc49;
	#20
	A = 16'h3d8c;
	B = 16'h3184;
	ans_a = 16'hcc3a;
	#20
	A = 16'h3fb8;
	B = 16'h3f07;
	ans_a = 16'hcac2;
	#20
	A = 16'h3c6f;
	B = 16'hbe5a;
	ans_a = 16'hcba3;
	#20
	A = 16'hbc62;
	B = 16'hb74c;
	ans_a = 16'hcb63;
	#20
	A = 16'hba80;
	B = 16'hbeb9;
	ans_a = 16'hcab4;
	#20
	A = 16'h3fef;
	B = 16'hb87a;
	ans_a = 16'hcb42;
	#20
	A = 16'h2e41;
	B = 16'h2d99;
	ans_a = 16'hcb41;
	#20
	A = 16'hb8c7;
	B = 16'h3cd8;
	ans_a = 16'hcb9e;
	#20
	A = 16'h3e0e;
	B = 16'h3a20;
	ans_a = 16'hcb0a;
	#20
	A = 16'hbc45;
	B = 16'hbba4;
	ans_a = 16'hca88;
	#20
	A = 16'h3fd6;
	B = 16'h393c;
	ans_a = 16'hc9e4;
	#20
	A = 16'hb42e;
	B = 16'hbbc0;
	ans_a = 16'hc9c4;
	#20
	A = 16'hbc04;
	B = 16'hbf96;
	ans_a = 16'hc8d0;
	#20
	A = 16'hbf9a;
	B = 16'h3e0f;
	ans_a = 16'hca40;
	#20
	A = 16'hbfa2;
	B = 16'hbea1;
	ans_a = 16'hc8ab;
	#20
	A = 16'hb8d3;
	B = 16'hbb35;
	ans_a = 16'hc865;
	#20
	A = 16'hbc78;
	B = 16'h3f86;
	ans_a = 16'hc972;
	#20
	A = 16'hb22c;
	B = 16'hbc17;
	ans_a = 16'hc959;
	#20
	A = 16'hb663;
	B = 16'h3991;
	ans_a = 16'hc97d;
	#20
	A = 16'h3df7;
	B = 16'hb916;
	ans_a = 16'hc9f6;
	#20
	A = 16'h2fd3;
	B = 16'hbd99;
	ans_a = 16'hca0c;
	#20
	A = 16'hb8a9;
	B = 16'hbea9;
	ans_a = 16'hc990;
	#20
	A = 16'h3ba9;
	B = 16'hbf22;
	ans_a = 16'hca6a;
	#20
	A = 16'h3f6b;
	B = 16'hbde8;
	ans_a = 16'hcbc8;
	#20
	A = 16'h343e;
	B = 16'h3e2e;
	ans_a = 16'hcb94;
	#20
	A = 16'hbef6;
	B = 16'h3cbf;
	ans_a = 16'hcc4e;
	#20
	A = 16'hbdf2;
	B = 16'h3fbb;
	ans_a = 16'hcd06;
	#20
	A = 16'h2efc;
	B = 16'h3dc9;
	ans_a = 16'hccfc;
	#20
	A = 16'h3e8e;
	B = 16'h3f49;
	ans_a = 16'hcc3d;
	#20
	A = 16'hbf67;
	B = 16'h3c46;
	ans_a = 16'hccbc;
	#20
	A = 16'hbaf1;
	B = 16'h3517;
	ans_a = 16'hccce;
	#20
	A = 16'h3ec4;
	B = 16'h3faa;
	ans_a = 16'hcbfd;
	#20
	A = 16'hbd9a;
	B = 16'hb79c;
	ans_a = 16'hcba8;
	#20
	A = 16'h3d66;
	B = 16'h3a42;
	ans_a = 16'hcb21;
	#20
	A = 16'h3a11;
	B = 16'hbe0b;
	ans_a = 16'hcbb4;
	#20
	A = 16'hba75;
	B = 16'hbdcf;
	ans_a = 16'hcb1e;
	#20
	A = 16'hb430;
	B = 16'h3d68;
	ans_a = 16'hcb4b;
	#20
	A = 16'h3c8b;
	B = 16'h3c38;
	ans_a = 16'hcab2;
	#20
	A = 16'hbce2;
	B = 16'hb97c;
	ans_a = 16'hca47;
	#20
	A = 16'h3bf4;
	B = 16'h3c9d;
	ans_a = 16'hc9b4;
	#20
	A = 16'h3671;
	B = 16'hb778;
	ans_a = 16'hc9cc;
	#20
	A = 16'h2c1c;
	B = 16'hb858;
	ans_a = 16'hc9d0;
	#20
	A = 16'hb4e9;
	B = 16'hbf4f;
	ans_a = 16'hc988;
	#20
	A = 16'hbacc;
	B = 16'hbdf6;
	ans_a = 16'hc8e6;
	#20
	A = 16'h3e8f;
	B = 16'hbf43;
	ans_a = 16'hca63;
	#20
	A = 16'h3fa8;
	B = 16'h3e21;
	ans_a = 16'hc8ec;
	#20
	A = 16'h35a6;
	B = 16'hbcfe;
	ans_a = 16'hc924;
	#20
	A = 16'h38a8;
	B = 16'hbd2a;
	ans_a = 16'hc984;
	#20
	A = 16'hbeb8;
	B = 16'hbf05;
	ans_a = 16'hc80b;
	#20
	A = 16'h39c3;
	B = 16'hb020;
	ans_a = 16'hc817;
	#20
	A = 16'hbfa6;
	B = 16'h39bc;
	ans_a = 16'hc8c6;
	#20
	A = 16'h3278;
	B = 16'h38c5;
	ans_a = 16'hc8b7;
	#20
	A = 16'hbe94;
	B = 16'h3442;
	ans_a = 16'hc8ef;
	#20
	A = 16'hbe0d;
	B = 16'h3d2b;
	ans_a = 16'hc9e9;
	#20
	A = 16'h3a20;
	B = 16'h330d;
	ans_a = 16'hc9d3;
	#20
	A = 16'h35f3;
	B = 16'h3e00;
	ans_a = 16'hc98c;
	#20
	A = 16'hbb28;
	B = 16'hbd17;
	ans_a = 16'hc8fa;
	#20
	A = 16'h39f9;
	B = 16'h3507;
	ans_a = 16'hc8dc;
	#20
	A = 16'hbb8f;
	B = 16'hbda1;
	ans_a = 16'hc832;
	#20
	A = 16'h2c90;
	B = 16'h2f06;
	ans_a = 16'hc831;
	#20
	A = 16'h390f;
	B = 16'hbe5c;
	ans_a = 16'hc8b2;
	#20
	A = 16'hb8ea;
	B = 16'h3461;
	ans_a = 16'hc8c8;
	#20
	A = 16'h33c1;
	B = 16'hb555;
	ans_a = 16'hc8d2;
	#20
	A = 16'hbc64;
	B = 16'h2d11;
	ans_a = 16'hc8dd;
	#20
	A = 16'h3fd6;
	B = 16'h38e8;
	ans_a = 16'hc843;
	#20
	A = 16'hbc8e;
	B = 16'h399a;
	ans_a = 16'hc8a9;
	#20
	A = 16'h3fe2;
	B = 16'h3792;
	ans_a = 16'hc832;
	#20
	A = 16'h3fbf;
	B = 16'hbf87;
	ans_a = 16'hca04;
	#20
	A = 16'h31dc;
	B = 16'hbd92;
	ans_a = 16'hca25;
	#20
	A = 16'h3a46;
	B = 16'h2cd5;
	ans_a = 16'hca1d;
	#20
	A = 16'h3ea0;
	B = 16'hbde7;
	ans_a = 16'hcb56;
	#20
	A = 16'hbbfb;
	B = 16'hbf25;
	ans_a = 16'hca72;
	#20
	A = 16'hbec4;
	B = 16'h3cbd;
	ans_a = 16'hcb72;
	#20
	A = 16'h3f6d;
	B = 16'h3b84;
	ans_a = 16'hca93;
	#20
	A = 16'h3c65;
	B = 16'hbf66;
	ans_a = 16'hcb97;
	#20
	A = 16'h3700;
	B = 16'h3e32;
	ans_a = 16'hcb40;
	#20
	A = 16'hbab2;
	B = 16'h8743;
	ans_a = 16'hcb40;
	#20
	A = 16'h3aa4;
	B = 16'hb86f;
	ans_a = 16'hcb7b;
	#20
	A = 16'hb37d;
	B = 16'h3d7a;
	ans_a = 16'hcba4;
	#20
	A = 16'h3ee1;
	B = 16'h3d43;
	ans_a = 16'hca82;
	#20
	A = 16'h382a;
	B = 16'h3d30;
	ans_a = 16'hca2c;
	#20
	A = 16'h3e92;
	B = 16'hbc1a;
	ans_a = 16'hcb04;
	#20
	A = 16'h3f66;
	B = 16'hb9d8;
	ans_a = 16'hcbb1;
	#20
	A = 16'hbc95;
	B = 16'hb41a;
	ans_a = 16'hcb8b;
	#20
	A = 16'h399c;
	B = 16'h3f1d;
	ans_a = 16'hcaeb;
	#20
	A = 16'hbb21;
	B = 16'hbbbb;
	ans_a = 16'hca7d;
	#20
	A = 16'h3f15;
	B = 16'hbeb0;
	ans_a = 16'hcbf8;
	#20
	A = 16'h3b1d;
	B = 16'h39f1;
	ans_a = 16'hcba4;
	#20
	A = 16'h3d35;
	B = 16'h3dae;
	ans_a = 16'hcab7;
	#20
	A = 16'hbe57;
	B = 16'hb89f;
	ans_a = 16'hca42;
	#20
	A = 16'h3a73;
	B = 16'hbab6;
	ans_a = 16'hca99;
	#20
	A = 16'h3469;
	B = 16'hbf55;
	ans_a = 16'hcada;
	#20
	A = 16'hbc4e;
	B = 16'hb357;
	ans_a = 16'hcaba;
	#20
	A = 16'hbe2c;
	B = 16'h3854;
	ans_a = 16'hcb25;
	#20
	A = 16'h2e5e;
	B = 16'hbb9c;
	ans_a = 16'hcb31;
	#20
	A = 16'h3560;
	B = 16'h3af6;
	ans_a = 16'hcb0c;
	#20
	A = 16'h3456;
	B = 16'h3949;
	ans_a = 16'hcaf5;
	#20
	A = 16'hb5d8;
	B = 16'h9a03;
	ans_a = 16'hcaf5;
	#20
	A = 16'hbb9e;
	B = 16'h3522;
	ans_a = 16'hcb1c;
	#20
	A = 16'h3ee4;
	B = 16'hb47d;
	ans_a = 16'hcb5a;
	#20
	A = 16'h2cc2;
	B = 16'ha7fc;
	ans_a = 16'hcb5a;
	#20
	A = 16'hb966;
	B = 16'hbd35;
	ans_a = 16'hcaea;
	#20
	A = 16'h3c9f;
	B = 16'hbb38;
	ans_a = 16'hcb6f;
	#20
	A = 16'hb646;
	B = 16'h3dc7;
	ans_a = 16'hcbb8;
	#20
	A = 16'hb8c2;
	B = 16'hbbd5;
	ans_a = 16'hcb6e;
	#20
	A = 16'h3cb3;
	B = 16'h3fcf;
	ans_a = 16'hca48;
	#20
	A = 16'hbd83;
	B = 16'h3ca8;
	ans_a = 16'hcb15;
	#20
	A = 16'hbfb9;
	B = 16'h3cc2;
	ans_a = 16'hcc1e;
	#20
	A = 16'hb518;
	B = 16'hbcb4;
	ans_a = 16'hcc06;
	#20
	A = 16'hbb3e;
	B = 16'hb9b1;
	ans_a = 16'hcbba;
	#20
	A = 16'hba16;
	B = 16'hba59;
	ans_a = 16'hcb6d;
	#20
	A = 16'hbf49;
	B = 16'hb83a;
	ans_a = 16'hcaf2;
	#20
	A = 16'h3c05;
	B = 16'haca4;
	ans_a = 16'hcafb;
	#20
	A = 16'hbe76;
	B = 16'hba94;
	ans_a = 16'hca51;
	#20
	A = 16'hb4a7;
	B = 16'h3a02;
	ans_a = 16'hca6d;
	#20
	A = 16'hb12e;
	B = 16'h3b43;
	ans_a = 16'hca80;
	#20
	A = 16'hbcf0;
	B = 16'hb1fa;
	ans_a = 16'hca62;
	#20
	A = 16'h3c13;
	B = 16'h3b26;
	ans_a = 16'hc9ee;
	#20
	A = 16'h3f50;
	B = 16'hbc12;
	ans_a = 16'hcadc;
	#20
	A = 16'h392d;
	B = 16'hbc0e;
	ans_a = 16'hcb30;
	#20
	A = 16'h3f0f;
	B = 16'h3c67;
	ans_a = 16'hca37;
	#20
	A = 16'h3d07;
	B = 16'h3e15;
	ans_a = 16'hc942;
	#20
	A = 16'h3fcb;
	B = 16'h3950;
	ans_a = 16'hc89c;
	#20
	A = 16'hbac1;
	B = 16'h3afe;
	ans_a = 16'hc8fa;
	#20
	A = 16'h3068;
	B = 16'h3d2c;
	ans_a = 16'hc8e3;
	#20
	A = 16'hbbe4;
	B = 16'hb384;
	ans_a = 16'hc8c5;
	#20
	A = 16'hb9d9;
	B = 16'h30c9;
	ans_a = 16'hc8d3;
	#20
	A = 16'h3ada;
	B = 16'hb26d;
	ans_a = 16'hc8e9;
	#20
	A = 16'hbfcd;
	B = 16'h3e22;
	ans_a = 16'hca68;
	#20
	A = 16'hb925;
	B = 16'h34f9;
	ans_a = 16'hca82;
	#20
	A = 16'h38c2;
	B = 16'h373e;
	ans_a = 16'hca60;
	#20
	A = 16'h390f;
	B = 16'h3ca6;
	ans_a = 16'hca02;
	#20
	A = 16'h3624;
	B = 16'hbc38;
	ans_a = 16'hca36;
	#20
	A = 16'h39b0;
	B = 16'h3dc8;
	ans_a = 16'hc9b2;
	#20
	A = 16'hbf0b;
	B = 16'hb42d;
	ans_a = 16'hc977;
	#20
	A = 16'hbe8f;
	B = 16'h3980;
	ans_a = 16'hca07;
	#20
	A = 16'h3dff;
	B = 16'h3a06;
	ans_a = 16'hc976;
	#20
	A = 16'hbeef;
	B = 16'hbbb4;
	ans_a = 16'hc8a0;
	#20
	A = 16'h3cd1;
	B = 16'hbf66;
	ans_a = 16'hc9bd;
	#20
	A = 16'h3f68;
	B = 16'hbf8b;
	ans_a = 16'hcb7c;
	#20
	A = 16'h3dae;
	B = 16'hb9df;
	ans_a = 16'hcc01;
	#20
	A = 16'h38a0;
	B = 16'hbd34;
	ans_a = 16'hcc31;
	#20
	A = 16'h3b6c;
	B = 16'h3ab9;
	ans_a = 16'hcbfe;
	#20
	A = 16'hbab0;
	B = 16'hbc81;
	ans_a = 16'hcb86;
	#20
	A = 16'hbf57;
	B = 16'hbcf6;
	ans_a = 16'hca63;
	#20
	A = 16'h3d30;
	B = 16'hbef6;
	ans_a = 16'hcb84;
	#20
	A = 16'h3776;
	B = 16'h2fe8;
	ans_a = 16'hcb7d;
	#20
	A = 16'h26a1;
	B = 16'hbafc;
	ans_a = 16'hcb80;
	#20
	A = 16'hb313;
	B = 16'h386b;
	ans_a = 16'hcb90;
	#20
	A = 16'ha96f;
	B = 16'hbfc9;
	ans_a = 16'hcb85;
	#20
	A = 16'h3e61;
	B = 16'h39b2;
	ans_a = 16'hcaf4;
	#20
	A = 16'h3668;
	B = 16'h3f58;
	ans_a = 16'hca96;
	#20
	A = 16'hbdaa;
	B = 16'h3ead;
	ans_a = 16'hcbc4;
	#20
	A = 16'h349b;
	B = 16'hbffe;
	ans_a = 16'hcc07;
	#20
	A = 16'h3536;
	B = 16'hbf00;
	ans_a = 16'hcc2b;
	#20
	A = 16'ha722;
	B = 16'h3a42;
	ans_a = 16'hcc2c;
	#20
	A = 16'hbc23;
	B = 16'h371f;
	ans_a = 16'hcc49;
	#20
	A = 16'hbfe4;
	B = 16'hbe2b;
	ans_a = 16'hcb0d;
	#20
	A = 16'hbcef;
	B = 16'h33c3;
	ans_a = 16'hcb33;
	#20
	A = 16'h390e;
	B = 16'hbb25;
	ans_a = 16'hcb7b;
	#20
	A = 16'h3879;
	B = 16'h3dfa;
	ans_a = 16'hcb10;
	#20
	A = 16'h3f6a;
	B = 16'hb6ae;
	ans_a = 16'hcb73;
	#20
	A = 16'h2888;
	B = 16'h3d87;
	ans_a = 16'hcb6d;
	#20
	A = 16'h36a5;
	B = 16'h3fa5;
	ans_a = 16'hcb07;
	#20
	A = 16'h3a45;
	B = 16'hbaf2;
	ans_a = 16'hcb5e;
	#20
	A = 16'hbfa6;
	B = 16'hbcb8;
	ans_a = 16'hca3d;
	#20
	A = 16'h3864;
	B = 16'h3b85;
	ans_a = 16'hc9fb;
	#20
	A = 16'h3d2f;
	B = 16'h2bc7;
	ans_a = 16'hc9f1;
	#20
	A = 16'h3d31;
	B = 16'h2ceb;
	ans_a = 16'hc9e4;
	#20
	A = 16'h3dd1;
	B = 16'hbeaa;
	ans_a = 16'hcb1a;
	#20
	A = 16'hb59a;
	B = 16'hb02f;
	ans_a = 16'hcb14;
	#20
	A = 16'hbf41;
	B = 16'h3da2;
	ans_a = 16'hcc2e;
	#20
	A = 16'hbe82;
	B = 16'hb8d8;
	ans_a = 16'hcbde;
	#20
	A = 16'hba12;
	B = 16'h2bb1;
	ans_a = 16'hcbe4;
	#20
	A = 16'hb506;
	B = 16'hba79;
	ans_a = 16'hcbc4;
	#20
	A = 16'h36cd;
	B = 16'hbe15;
	ans_a = 16'hcc0b;
	#20
	A = 16'hb193;
	B = 16'h3e74;
	ans_a = 16'hcc1d;
	#20
	A = 16'h3afe;
	B = 16'h3e2a;
	ans_a = 16'hcb8e;
	#20
	A = 16'h369b;
	B = 16'h3c4a;
	ans_a = 16'hcb55;
	#20
	A = 16'h2182;
	B = 16'h3dd1;
	ans_a = 16'hcb53;
	#20
	A = 16'h3f6d;
	B = 16'hbce1;
	ans_a = 16'hcc3a;
	#20
	A = 16'hbfd4;
	B = 16'hbdd1;
	ans_a = 16'hcb08;
	#20
	A = 16'hb51a;
	B = 16'hbbb6;
	ans_a = 16'hcae1;
	#20
	A = 16'hbeac;
	B = 16'h3f25;
	ans_a = 16'hcc2f;
	#20
	A = 16'h3e37;
	B = 16'hbe1e;
	ans_a = 16'hccc7;
	#20
	A = 16'hbabc;
	B = 16'hbb76;
	ans_a = 16'hcc95;
	#20
	A = 16'h3d3e;
	B = 16'h3d6e;
	ans_a = 16'hcc23;
	#20
	A = 16'h33eb;
	B = 16'h2fe3;
	ans_a = 16'hcc21;
	#20
	A = 16'hb351;
	B = 16'hbcb2;
	ans_a = 16'hcc10;
	#20
	A = 16'hbc46;
	B = 16'hb788;
	ans_a = 16'hcbe0;
	#20
	A = 16'h3c3a;
	B = 16'hb8ac;
	ans_a = 16'hcc18;
	#20
	A = 16'h3db8;
	B = 16'hb9df;
	ans_a = 16'hcc5b;
	#20
	A = 16'hbf5d;
	B = 16'h3d3e;
	ans_a = 16'hccf5;
	#20
	A = 16'hb1fb;
	B = 16'hbb05;
	ans_a = 16'hcceb;
	#20
	A = 16'h3dd1;
	B = 16'hb5b5;
	ans_a = 16'hcd0c;
	#20
	A = 16'h2b4c;
	B = 16'h3efb;
	ans_a = 16'hcd06;
	#20
	A = 16'h376d;
	B = 16'haeac;
	ans_a = 16'hcd09;
	#20
	A = 16'h3ce4;
	B = 16'hbdf1;
	ans_a = 16'hcd7d;
	#20
	A = 16'hba47;
	B = 16'h38f0;
	ans_a = 16'hcd9c;
	#20
	A = 16'hab7f;
	B = 16'h3179;
	ans_a = 16'hcd9d;
	#20
	A = 16'hbe87;
	B = 16'h3b5b;
	ans_a = 16'hcdfd;
	#20
	A = 16'h3e28;
	B = 16'hbcdc;
	ans_a = 16'hce75;
	#20
	A = 16'hbdf5;
	B = 16'h399b;
	ans_a = 16'hceb8;
	#20
	A = 16'hbccf;
	B = 16'h3ccd;
	ans_a = 16'hcf14;
	#20
	A = 16'h3e11;
	B = 16'h3f26;
	ans_a = 16'hce66;
	#20
	A = 16'h3d86;
	B = 16'h3c7a;
	ans_a = 16'hce03;
	#20
	A = 16'hbd29;
	B = 16'h3a28;
	ans_a = 16'hce43;
	#20
	A = 16'h3d24;
	B = 16'hb49e;
	ans_a = 16'hce5b;
	#20
	A = 16'h3841;
	B = 16'h3960;
	ans_a = 16'hce44;
	#20
	A = 16'hbf3d;
	B = 16'h3bf5;
	ans_a = 16'hceb7;
	#20
	A = 16'h35a0;
	B = 16'h39fc;
	ans_a = 16'hcea6;
	#20
	A = 16'h3c87;
	B = 16'hbe74;
	ans_a = 16'hcf1b;
	#20
	A = 16'h3cad;
	B = 16'h3fcf;
	ans_a = 16'hce89;
	#20
	A = 16'h3e60;
	B = 16'hbcd6;
	ans_a = 16'hcf04;
	#20
	A = 16'hba8f;
	B = 16'hb290;
	ans_a = 16'hcef9;
	#20
	A = 16'hb686;
	B = 16'h3cc6;
	ans_a = 16'hcf18;
	#20
	A = 16'hbe46;
	B = 16'h3d5b;
	ans_a = 16'hcf9e;
	#20
	A = 16'h3b98;
	B = 16'hb8c3;
	ans_a = 16'hcfc2;
	#20
	A = 16'h3fc8;
	B = 16'hbfd6;
	ans_a = 16'hd05b;
	#20
	A = 16'hbbde;
	B = 16'hbd26;
	ans_a = 16'hd032;
	#20
	A = 16'h2cd6;
	B = 16'hbb26;
	ans_a = 16'hd034;
	#20
	A = 16'hbe6e;
	B = 16'h3d8b;
	ans_a = 16'hd07b;
	#20
	A = 16'hbde9;
	B = 16'h3edb;
	ans_a = 16'hd0cc;
	#20
	A = 16'hbe51;
	B = 16'h3e2e;
	ans_a = 16'hd11a;
	#20
	A = 16'hb81a;
	B = 16'hbef9;
	ans_a = 16'hd0fd;
	#20
	A = 16'hba15;
	B = 16'hbdb2;
	ans_a = 16'hd0da;
	#20
	A = 16'haeea;
	B = 16'hba02;
	ans_a = 16'hd0d7;
	#20
	A = 16'hbd02;
	B = 16'hbe5b;
	ans_a = 16'hd097;
	#20
	A = 16'ha9bf;
	B = 16'h3e24;
	ans_a = 16'hd099;
	#20
	A = 16'h3f4a;
	B = 16'h3fe7;
	ans_a = 16'hd026;
	#20
	A = 16'hb57b;
	B = 16'h38eb;
	ans_a = 16'hd02d;
	#20
	A = 16'h33cc;
	B = 16'hbb78;
	ans_a = 16'hd034;
	#20
	A = 16'h38b6;
	B = 16'hbbdc;
	ans_a = 16'hd047;
	#20
	A = 16'h38a0;
	B = 16'h3ee7;
	ans_a = 16'hd027;
	#20
	A = 16'h3cc7;
	B = 16'hb6d1;
	ans_a = 16'hd037;
	#20
	A = 16'h3d20;
	B = 16'h3fb0;
	ans_a = 16'hcfd0;
	#20
	A = 16'h3d61;
	B = 16'h3de7;
	ans_a = 16'hcf51;
	#20
	A = 16'ha996;
	B = 16'h3c8e;
	ans_a = 16'hcf54;
	#20
	A = 16'h3d6f;
	B = 16'h3e28;
	ans_a = 16'hcece;
	#20
	A = 16'hb191;
	B = 16'hbdc7;
	ans_a = 16'hcebe;
	#20
	A = 16'h3562;
	B = 16'hbef0;
	ans_a = 16'hcee3;
	#20
	A = 16'hbaed;
	B = 16'hb57b;
	ans_a = 16'hced0;
	#20
	A = 16'hbe40;
	B = 16'h3987;
	ans_a = 16'hcf15;
	#20
	A = 16'h3bcf;
	B = 16'h35a7;
	ans_a = 16'hceff;
	#20
	A = 16'hbb5c;
	B = 16'h3ab2;
	ans_a = 16'hcf30;
	#20
	A = 16'hbcaf;
	B = 16'h39b6;
	ans_a = 16'hcf66;
	#20
	A = 16'h3e4c;
	B = 16'h3e32;
	ans_a = 16'hceca;
	#20
	A = 16'h3ffc;
	B = 16'hbb1c;
	ans_a = 16'hcf3c;
	#20
	A = 16'hb7f4;
	B = 16'hb98e;
	ans_a = 16'hcf26;
	#20
	A = 16'h3d8c;
	B = 16'h3de4;
	ans_a = 16'hcea3;
	#20
	A = 16'h3e62;
	B = 16'h3cda;
	ans_a = 16'hce27;
	#20
	A = 16'h3e2e;
	B = 16'h3a5a;
	ans_a = 16'hcdd8;
	#20
	A = 16'h3c84;
	B = 16'hb4ca;
	ans_a = 16'hcdee;
	#20
	A = 16'h3ec7;
	B = 16'hbc9a;
	ans_a = 16'hce6b;
	#20
	A = 16'h38bd;
	B = 16'h3fc2;
	ans_a = 16'hce22;
	#20
	A = 16'hb18c;
	B = 16'h3372;
	ans_a = 16'hce25;
	#20
	A = 16'h3e29;
	B = 16'h33ba;
	ans_a = 16'hce0d;
	#20
	A = 16'h3f4d;
	B = 16'hbf62;
	ans_a = 16'hcee5;
	#20
	A = 16'hbbdf;
	B = 16'h3f3b;
	ans_a = 16'hcf57;
	#20
	A = 16'h3864;
	B = 16'ha332;
	ans_a = 16'hcf57;
	#20
	A = 16'h2a82;
	B = 16'h3cb9;
	ans_a = 16'hcf53;
	#20
	A = 16'hbc62;
	B = 16'ha329;
	ans_a = 16'hcf52;
	#20
	A = 16'hb888;
	B = 16'h3e5f;
	ans_a = 16'hcf8c;
	#20
	A = 16'h3c12;
	B = 16'h3bcb;
	ans_a = 16'hcf4d;
	#20
	A = 16'ha63b;
	B = 16'hbfb6;
	ans_a = 16'hcf4a;
	#20
	A = 16'h37ca;
	B = 16'h3e7f;
	ans_a = 16'hcf17;
	#20
	A = 16'h3c6a;
	B = 16'hba4c;
	ans_a = 16'hcf4f;
	#20
	A = 16'h3f90;
	B = 16'h3fdb;
	ans_a = 16'hce61;
	#20
	A = 16'h3cfb;
	B = 16'h3c3a;
	ans_a = 16'hce0d;
	#20
	A = 16'h3af6;
	B = 16'hbd0f;
	ans_a = 16'hce53;
	#20
	A = 16'hbdbb;
	B = 16'h3dbd;
	ans_a = 16'hced6;
	#20
	A = 16'h3241;
	B = 16'h31ef;
	ans_a = 16'hced4;
	#20
	A = 16'hbd04;
	B = 16'hb467;
	ans_a = 16'hcebe;
	#20
	A = 16'h3581;
	B = 16'hbd87;
	ans_a = 16'hcedc;
	#20
	A = 16'hbdc7;
	B = 16'h3e8b;
	ans_a = 16'hcf73;
	#20
	A = 16'hbd2e;
	B = 16'h381f;
	ans_a = 16'hcf9e;
	#20
	A = 16'hbbb1;
	B = 16'hba48;
	ans_a = 16'hcf6e;
	#20
	A = 16'h3b63;
	B = 16'h3f17;
	ans_a = 16'hcf05;
	#20
	A = 16'h3013;
	B = 16'h3f2d;
	ans_a = 16'hcef6;
	#20
	A = 16'h298a;
	B = 16'ha7c1;
	ans_a = 16'hcef6;
	#20
	A = 16'h39ce;
	B = 16'h3d39;
	ans_a = 16'hceb9;
	#20
	A = 16'hb4d6;
	B = 16'h39a0;
	ans_a = 16'hcec7;
	#20
	A = 16'hbf89;
	B = 16'h2f33;
	ans_a = 16'hced5;
	#20
	A = 16'h37c5;
	B = 16'h32e1;
	ans_a = 16'hcece;
	#20
	A = 16'hbcb3;
	B = 16'hb949;
	ans_a = 16'hce9c;
	#20
	A = 16'h38d1;
	B = 16'h3f93;
	ans_a = 16'hce53;
	#20
	A = 16'hb697;
	B = 16'hbeb3;
	ans_a = 16'hce27;
	#20
	A = 16'h3ecb;
	B = 16'hbfe3;
	ans_a = 16'hcefd;
	#20
	A = 16'h3cf9;
	B = 16'h28eb;
	ans_a = 16'hcefa;
	#20
	A = 16'h3de5;
	B = 16'h3de2;
	ans_a = 16'hce6f;
	#20
	A = 16'h3200;
	B = 16'h3dfc;
	ans_a = 16'hce5d;
	#20
	A = 16'h3961;
	B = 16'h3419;
	ans_a = 16'hce52;
	#20
	A = 16'hbcea;
	B = 16'h3b7d;
	ans_a = 16'hce9c;
	#20
	A = 16'hbfcc;
	B = 16'hb8f8;
	ans_a = 16'hce4e;
	#20
	A = 16'hb62f;
	B = 16'hb012;
	ans_a = 16'hce4b;
	#20
	A = 16'hbdf7;
	B = 16'hb775;
	ans_a = 16'hce1f;
	#20
	A = 16'hb8e6;
	B = 16'h32e4;
	ans_a = 16'hce27;
	#20
	A = 16'hbe8c;
	B = 16'hbdb3;
	ans_a = 16'hcd92;
	#20
	A = 16'hbcdf;
	B = 16'hbdb7;
	ans_a = 16'hcd23;
	#20
	A = 16'h3f80;
	B = 16'h2d3a;
	ans_a = 16'hcd19;
	#20
	A = 16'h3e1f;
	B = 16'hbfd1;
	ans_a = 16'hcdd8;
	#20
	A = 16'hbe6d;
	B = 16'h3ab0;
	ans_a = 16'hce2e;
	#20
	A = 16'hbb04;
	B = 16'hb698;
	ans_a = 16'hce17;
	#20
	A = 16'h395e;
	B = 16'h3781;
	ans_a = 16'hce03;
	#20
	A = 16'hbf93;
	B = 16'hbc1c;
	ans_a = 16'hcd86;
	#20
	A = 16'hbd61;
	B = 16'haf46;
	ans_a = 16'hcd7c;
	#20
	A = 16'hac9e;
	B = 16'h2a20;
	ans_a = 16'hcd7c;
	#20
	A = 16'hb62a;
	B = 16'hb253;
	ans_a = 16'hcd77;
	#20
	A = 16'hb1a8;
	B = 16'h3faf;
	ans_a = 16'hcd8d;
	#20
	A = 16'hb322;
	B = 16'hbc10;
	ans_a = 16'hcd7f;
	#20
	A = 16'hb26d;
	B = 16'hb398;
	ans_a = 16'hcd7c;
	#20
	A = 16'hbf54;
	B = 16'hb385;
	ans_a = 16'hcd60;
	#20
	A = 16'hb8db;
	B = 16'hb948;
	ans_a = 16'hcd46;
	#20
	A = 16'hbe78;
	B = 16'h3f30;
	ans_a = 16'hce00;
	#20
	A = 16'hbdb4;
	B = 16'hbd4d;
	ans_a = 16'hcd87;
	#20
	A = 16'h3820;
	B = 16'h3ea7;
	ans_a = 16'hcd50;
	#20
	A = 16'h3fd3;
	B = 16'hbcdd;
	ans_a = 16'hcde8;
	#20
	A = 16'hbfec;
	B = 16'h3632;
	ans_a = 16'hce19;
	#20
	A = 16'h3c1f;
	B = 16'h3f24;
	ans_a = 16'hcda3;
	#20
	A = 16'hbbc4;
	B = 16'hb674;
	ans_a = 16'hcd8a;
	#20
	A = 16'h3d8f;
	B = 16'h3cb6;
	ans_a = 16'hcd21;
	#20
	A = 16'h3c5b;
	B = 16'h3c75;
	ans_a = 16'hccd3;
	#20
	A = 16'hbcb8;
	B = 16'hb61c;
	ans_a = 16'hccb6;
	#20
	A = 16'h3efa;
	B = 16'h3a63;
	ans_a = 16'hcc5d;
	#20
	A = 16'h3eee;
	B = 16'hbc6b;
	ans_a = 16'hccd7;
	#20
	A = 16'h2d9a;
	B = 16'hbf68;
	ans_a = 16'hcce1;
	#20
	A = 16'h39fb;
	B = 16'habdf;
	ans_a = 16'hcce4;
	#20
	A = 16'h396e;
	B = 16'hbf62;
	ans_a = 16'hcd34;
	#20
	A = 16'h3d1e;
	B = 16'hbc26;
	ans_a = 16'hcd89;
	#20
	A = 16'hbff6;
	B = 16'h397d;
	ans_a = 16'hcde0;
	#20
	A = 16'h32e2;
	B = 16'h3b29;
	ans_a = 16'hcdd4;
	#20
	A = 16'h2ef4;
	B = 16'hbede;
	ans_a = 16'hcde0;
	#20
	A = 16'h35e6;
	B = 16'h3ea0;
	ans_a = 16'hcdb9;
	#20
	A = 16'h3975;
	B = 16'hbe36;
	ans_a = 16'hcdfd;
	#20
	A = 16'h3f58;
	B = 16'h3976;
	ans_a = 16'hcdad;
	#20
	A = 16'h3029;
	B = 16'h3edf;
	ans_a = 16'hcd9f;
	#20
	A = 16'hbbd2;
	B = 16'h3d05;
	ans_a = 16'hcdee;
	#20
	A = 16'h3f10;
	B = 16'hb6e1;
	ans_a = 16'hce1f;
	#20
	A = 16'h3fd6;
	B = 16'h3dae;
	ans_a = 16'hcd6d;
	#20
	A = 16'h3c6b;
	B = 16'hb183;
	ans_a = 16'hcd79;
	#20
	A = 16'h380c;
	B = 16'h3cd2;
	ans_a = 16'hcd52;
	#20
	A = 16'h3ed8;
	B = 16'hbf17;
	ans_a = 16'hce14;
	#20
	A = 16'hbf85;
	B = 16'hbcb7;
	ans_a = 16'hcd86;
	#20
	A = 16'h3d9a;
	B = 16'hbdb1;
	ans_a = 16'hce06;
	#20
	A = 16'h3ce4;
	B = 16'h3e46;
	ans_a = 16'hcd8b;
	#20
	A = 16'hbf03;
	B = 16'hba9e;
	ans_a = 16'hcd2e;
	#20
	A = 16'hbd75;
	B = 16'h3c47;
	ans_a = 16'hcd8b;
	#20
	A = 16'h3d8c;
	B = 16'hbf64;
	ans_a = 16'hce2f;
	#20
	A = 16'h38cf;
	B = 16'h3e75;
	ans_a = 16'hcdf1;
	#20
	A = 16'h2f13;
	B = 16'hbe6f;
	ans_a = 16'hcdfc;
	#20
	A = 16'h35ac;
	B = 16'h3e12;
	ans_a = 16'hcdda;
	#20
	A = 16'hb96a;
	B = 16'h386c;
	ans_a = 16'hcdf2;
	#20
	A = 16'h3f9d;
	B = 16'hb004;
	ans_a = 16'hce01;
	#20
	A = 16'h36dc;
	B = 16'hb789;
	ans_a = 16'hce0e;
	#20
	A = 16'h3dce;
	B = 16'h3f6a;
	ans_a = 16'hcd62;
	#20
	A = 16'h3f01;
	B = 16'hbdc1;
	ans_a = 16'hce03;
	#20
	A = 16'h306b;
	B = 16'h3286;
	ans_a = 16'hce01;
	#20
	A = 16'h33fe;
	B = 16'h3f1e;
	ans_a = 16'hcde5;
	#20
	A = 16'h3d4f;
	B = 16'hbea5;
	ans_a = 16'hce72;
	#20
	A = 16'hb869;
	B = 16'hbf0b;
	ans_a = 16'hce34;
	#20
	A = 16'hb160;
	B = 16'h3fa3;
	ans_a = 16'hce49;
	#20
	A = 16'h3e9d;
	B = 16'hbf85;
	ans_a = 16'hcf10;
	#20
	A = 16'hb882;
	B = 16'h3c2c;
	ans_a = 16'hcf36;
	#20
	A = 16'h3fa9;
	B = 16'h3974;
	ans_a = 16'hcee2;
	#20
	A = 16'hbe44;
	B = 16'hba48;
	ans_a = 16'hce93;
	#20
	A = 16'h3e4e;
	B = 16'hba53;
	ans_a = 16'hcee3;
	#20
	A = 16'h324f;
	B = 16'h3dc9;
	ans_a = 16'hced1;
	#20
	A = 16'hbeb7;
	B = 16'h3b84;
	ans_a = 16'hcf36;
	#20
	A = 16'h377d;
	B = 16'h3a2f;
	ans_a = 16'hcf1f;
	#20
	A = 16'h3a8a;
	B = 16'h3f7f;
	ans_a = 16'hcebd;
	#20
	A = 16'h3f58;
	B = 16'hbe42;
	ans_a = 16'hcf75;
	#20
	A = 16'h3efa;
	B = 16'hbe3a;
	ans_a = 16'hd011;
	#20
	A = 16'h3d37;
	B = 16'hb05b;
	ans_a = 16'hd017;
	#20
	A = 16'h3720;
	B = 16'ha5a1;
	ans_a = 16'hd017;
	#20
	A = 16'h3e4f;
	B = 16'h3c28;
	ans_a = 16'hcfc5;
	#20
	A = 16'h304f;
	B = 16'h31d5;
	ans_a = 16'hcfc3;
	#20
	A = 16'hbe66;
	B = 16'h3d59;
	ans_a = 16'hd026;
	#20
	A = 16'hbf95;
	B = 16'hbb18;
	ans_a = 16'hcfe0;
	#20
	A = 16'hba68;
	B = 16'hbe39;
	ans_a = 16'hcf90;
	#20
	A = 16'hb7ef;
	B = 16'h37dc;
	ans_a = 16'hcfa0;
	#20
	A = 16'h3cb3;
	B = 16'hbe39;
	ans_a = 16'hd00a;
	#20
	A = 16'hbe9a;
	B = 16'h3dcb;
	ans_a = 16'hd056;
	#20
	A = 16'h2b36;
	B = 16'hbe68;
	ans_a = 16'hd059;
	#20
	A = 16'h3476;
	B = 16'h3c0f;
	ans_a = 16'hd050;
	#20
	A = 16'hbf59;
	B = 16'h3c5f;
	ans_a = 16'hd090;
	#20
	A = 16'h3c1b;
	B = 16'hbc0b;
	ans_a = 16'hd0b1;
	#20
	A = 16'h3c21;
	B = 16'hbb20;
	ans_a = 16'hd0ce;
	#20
	A = 16'hb8c5;
	B = 16'hbfdd;
	ans_a = 16'hd0a8;
	#20
	A = 16'h3c16;
	B = 16'hbeae;
	ans_a = 16'hd0df;
	#20
	A = 16'hb4b4;
	B = 16'h3bf3;
	ans_a = 16'hd0e8;
	#20
	A = 16'h3e09;
	B = 16'h353f;
	ans_a = 16'hd0d8;
	#20
	A = 16'h3c00;
	B = 16'h395f;
	ans_a = 16'hd0c3;
	#20
	A = 16'h3b69;
	B = 16'h34a6;
	ans_a = 16'hd0ba;
	#20
	A = 16'hb864;
	B = 16'h3736;
	ans_a = 16'hd0c2;
	#20
	A = 16'h3b48;
	B = 16'hb1cc;
	ans_a = 16'hd0c7;
	#20
	A = 16'h3be3;
	B = 16'hbfe9;
	ans_a = 16'hd105;
	#20
	A = 16'h3b36;
	B = 16'h3a09;
	ans_a = 16'hd0ef;
	#20
	A = 16'h3cf2;
	B = 16'h3aa9;
	ans_a = 16'hd0ce;
	#20
	A = 16'hb44d;
	B = 16'hbef4;
	ans_a = 16'hd0bf;
	#20
	A = 16'h3c8f;
	B = 16'h3c08;
	ans_a = 16'hd09a;
	#20
	A = 16'hbff9;
	B = 16'h3fe6;
	ans_a = 16'hd118;
	#20
	A = 16'h3bda;
	B = 16'hb493;
	ans_a = 16'hd121;
	#20
	A = 16'hba2f;
	B = 16'hbe0d;
	ans_a = 16'hd0fc;
	#20
	A = 16'hb098;
	B = 16'h3fb4;
	ans_a = 16'hd105;
	#20
	A = 16'hbc4b;
	B = 16'h3d05;
	ans_a = 16'hd130;
	#20
	A = 16'hbeaa;
	B = 16'h3bf9;
	ans_a = 16'hd165;
	#20
	A = 16'h37c9;
	B = 16'h3bce;
	ans_a = 16'hd156;
	#20
	A = 16'h3ce6;
	B = 16'h3d9b;
	ans_a = 16'hd11f;
	#20
	A = 16'hbe6b;
	B = 16'hbe60;
	ans_a = 16'hd0cd;
	#20
	A = 16'h24ec;
	B = 16'hbade;
	ans_a = 16'hd0ce;
	#20
	A = 16'h3f5c;
	B = 16'h3f74;
	ans_a = 16'hd060;
	#20
	A = 16'h3e87;
	B = 16'h3f41;
	ans_a = 16'hd001;
	#20
	A = 16'hbf71;
	B = 16'h3cce;
	ans_a = 16'hd048;
	#20
	A = 16'h3c72;
	B = 16'h3ea2;
	ans_a = 16'hd00d;
	#20
	A = 16'hbe81;
	B = 16'h2fe4;
	ans_a = 16'hd013;
	#20
	A = 16'hbfab;
	B = 16'hb3f2;
	ans_a = 16'hd004;
	#20
	A = 16'h3dac;
	B = 16'h3c05;
	ans_a = 16'hcfad;
	#20
	A = 16'hbe0a;
	B = 16'hbf1f;
	ans_a = 16'hcf01;
	#20
	A = 16'h3a8f;
	B = 16'hb832;
	ans_a = 16'hcf1d;
	#20
	A = 16'hbbe3;
	B = 16'h3ddf;
	ans_a = 16'hcf7a;
	#20
	A = 16'hbd73;
	B = 16'hbd11;
	ans_a = 16'hcf0c;
	#20
	A = 16'h3d04;
	B = 16'h3fb0;
	ans_a = 16'hce72;
	#20
	A = 16'hbb9d;
	B = 16'hbcef;
	ans_a = 16'hce27;
	#20
	A = 16'hbb39;
	B = 16'h378e;
	ans_a = 16'hce42;
	#20
	A = 16'hbaf9;
	B = 16'h3107;
	ans_a = 16'hce4b;
	#20
	A = 16'hbc80;
	B = 16'hbb1b;
	ans_a = 16'hce0b;
	#20
	A = 16'hbabc;
	B = 16'h3cdc;
	ans_a = 16'hce4c;
	#20
	A = 16'hbc44;
	B = 16'hb648;
	ans_a = 16'hce31;
	#20
	A = 16'h3bc9;
	B = 16'h3e08;
	ans_a = 16'hcdd3;
	#20
	A = 16'h399b;
	B = 16'h246f;
	ans_a = 16'hcdd2;
	#20
	A = 16'h3a7a;
	B = 16'hba86;
	ans_a = 16'hcdfc;
	#20
	A = 16'hbcf8;
	B = 16'hbb31;
	ans_a = 16'hcdb5;
	#20
	A = 16'h39ee;
	B = 16'h3e2b;
	ans_a = 16'hcd6c;
	#20
	A = 16'hb8bb;
	B = 16'h3961;
	ans_a = 16'hcd85;
	#20
	A = 16'hbc62;
	B = 16'h3857;
	ans_a = 16'hcdab;
	#20
	A = 16'h3666;
	B = 16'hbfbf;
	ans_a = 16'hcddd;
	#20
	A = 16'hbf3e;
	B = 16'h3f82;
	ans_a = 16'hceb6;
	#20
	A = 16'h3946;
	B = 16'h3d57;
	ans_a = 16'hce7e;
	#20
	A = 16'hb52e;
	B = 16'hbd97;
	ans_a = 16'hce61;
	#20
	A = 16'hbee3;
	B = 16'h3aa2;
	ans_a = 16'hcebc;
	#20
	A = 16'h390d;
	B = 16'h3db7;
	ans_a = 16'hce82;
	#20
	A = 16'hb90c;
	B = 16'h3025;
	ans_a = 16'hce87;
	#20
	A = 16'hb8db;
	B = 16'h3f22;
	ans_a = 16'hcecc;
	#20
	A = 16'h3f47;
	B = 16'hbd4a;
	ans_a = 16'hcf66;
	#20
	A = 16'h3b52;
	B = 16'hbaf5;
	ans_a = 16'hcf99;
	#20
	A = 16'h3ed2;
	B = 16'hb602;
	ans_a = 16'hcfc2;
	#20
	A = 16'h3ce9;
	B = 16'hbd7e;
	ans_a = 16'hd017;
	#20
	A = 16'h3711;
	B = 16'h3bde;
	ans_a = 16'hd009;
	#20
	A = 16'h3fd8;
	B = 16'h2a5c;
	ans_a = 16'hd006;
	#20
	A = 16'hb33f;
	B = 16'hb071;
	ans_a = 16'hd005;
	#20
	A = 16'h33a9;
	B = 16'h3ff1;
	ans_a = 16'hcfec;
	#20
	A = 16'hbdd7;
	B = 16'h3fe0;
	ans_a = 16'hd052;
	#20
	A = 16'hbe4f;
	B = 16'hbe60;
	ans_a = 16'hd002;
	#20
	A = 16'h36a6;
	B = 16'h3f89;
	ans_a = 16'hcfd2;
	#20
	A = 16'hbf03;
	B = 16'h3bcf;
	ans_a = 16'hd020;
	#20
	A = 16'h3c29;
	B = 16'h39ca;
	ans_a = 16'hd008;
	#20
	A = 16'hbcfd;
	B = 16'h3e9c;
	ans_a = 16'hd04a;
	#20
	A = 16'hbed4;
	B = 16'h2def;
	ans_a = 16'hd04f;
	#20
	A = 16'hbaf8;
	B = 16'hbac1;
	ans_a = 16'hd037;
	#20
	A = 16'h39fa;
	B = 16'hbe93;
	ans_a = 16'hd05e;
	#20
	A = 16'hbdae;
	B = 16'hb96a;
	ans_a = 16'hd03f;
	#20
	A = 16'hbe1e;
	B = 16'h3ed4;
	ans_a = 16'hd093;
	#20
	A = 16'h3ad3;
	B = 16'hba7f;
	ans_a = 16'hd0a9;
	#20
	A = 16'hba76;
	B = 16'hb99a;
	ans_a = 16'hd097;
	#20
	A = 16'h3fc5;
	B = 16'h3eb2;
	ans_a = 16'hd02f;
	#20
	A = 16'hbdd0;
	B = 16'h3e83;
	ans_a = 16'hd07b;
	#20
	A = 16'h2441;
	B = 16'h2c6f;
	ans_a = 16'hd07b;
	#20
	A = 16'hb76f;
	B = 16'h3b53;
	ans_a = 16'hd089;
	#20
	A = 16'hbd50;
	B = 16'h3d4c;
	ans_a = 16'hd0c1;
	#20
	A = 16'hb518;
	B = 16'h3abb;
	ans_a = 16'hd0ca;
	#20
	A = 16'hbc9f;
	B = 16'hb867;
	ans_a = 16'hd0b6;
	#20
	A = 16'hb1d9;
	B = 16'hbb97;
	ans_a = 16'hd0b0;
	#20
	A = 16'h3bee;
	B = 16'h3e2d;
	ans_a = 16'hd07f;
	#20
	A = 16'h28be;
	B = 16'hbf78;
	ans_a = 16'hd081;
	#20
	A = 16'hbf24;
	B = 16'hba70;
	ans_a = 16'hd053;
	#20
	A = 16'hbe66;
	B = 16'h3893;
	ans_a = 16'hd070;
	#20
	A = 16'h3792;
	B = 16'h3f3a;
	ans_a = 16'hd055;
	#20
	A = 16'h35a7;
	B = 16'h2c21;
	ans_a = 16'hd054;
	#20
	A = 16'hbd52;
	B = 16'h3e54;
	ans_a = 16'hd097;
	#20
	A = 16'h3f50;
	B = 16'hb943;
	ans_a = 16'hd0bd;
	#20
	A = 16'h3048;
	B = 16'h344b;
	ans_a = 16'hd0bc;
	#20
	A = 16'hb5a8;
	B = 16'h3e23;
	ans_a = 16'hd0cd;
	#20
	A = 16'h3ef1;
	B = 16'h3e7a;
	ans_a = 16'hd073;
	#20
	A = 16'h3208;
	B = 16'hb3c1;
	ans_a = 16'hd074;
	#20
	A = 16'hbe15;
	B = 16'hb837;
	ans_a = 16'hd05a;
	#20
	A = 16'hb51d;
	B = 16'h3409;
	ans_a = 16'hd05d;
	#20
	A = 16'h3d5d;
	B = 16'h3e6d;
	ans_a = 16'hd018;
	#20
	A = 16'hbe0f;
	B = 16'h3b66;
	ans_a = 16'hd045;
	#20
	A = 16'hbb98;
	B = 16'h38aa;
	ans_a = 16'hd057;
	#20
	A = 16'hbfac;
	B = 16'h32dd;
	ans_a = 16'hd064;
	#20
	A = 16'had5a;
	B = 16'h3894;
	ans_a = 16'hd066;
	#20
	A = 16'h3f94;
	B = 16'h2ace;
	ans_a = 16'hd063;
	#20
	A = 16'h3dee;
	B = 16'hb574;
	ans_a = 16'hd073;
	#20
	A = 16'hae54;
	B = 16'hb795;
	ans_a = 16'hd072;
	#20
	A = 16'h3558;
	B = 16'hbff7;
	ans_a = 16'hd087;
	#20
	A = 16'hbddd;
	B = 16'haf42;
	ans_a = 16'hd082;
	#20
	A = 16'h384a;
	B = 16'hbbd0;
	ans_a = 16'hd093;
	#20
	A = 16'h3a24;
	B = 16'h2818;
	ans_a = 16'hd092;
	#20
	A = 16'hbd32;
	B = 16'h3951;
	ans_a = 16'hd0ae;
	#20
	A = 16'h3bb1;
	B = 16'hbf28;
	ans_a = 16'hd0e5;
	#20
	A = 16'h3d37;
	B = 16'hbece;
	ans_a = 16'hd12c;
	#20
	A = 16'h3bb1;
	B = 16'h3c35;
	ans_a = 16'hd10c;
	#20
	A = 16'h3e8d;
	B = 16'h3df2;
	ans_a = 16'hd0be;
	#20
	A = 16'h3e16;
	B = 16'h3cf0;
	ans_a = 16'hd082;
	#20
	A = 16'hbd8e;
	B = 16'hb8e7;
	ans_a = 16'hd067;
	#20
	A = 16'hbcab;
	B = 16'hb8cf;
	ans_a = 16'hd051;
	#20
	A = 16'hb7ef;
	B = 16'hbc17;
	ans_a = 16'hd041;
	#20
	A = 16'h21a8;
	B = 16'h2f0f;
	ans_a = 16'hd041;
	#20
	A = 16'h3ac2;
	B = 16'hb91c;
	ans_a = 16'hd052;
	#20
	A = 16'hbba6;
	B = 16'hb927;
	ans_a = 16'hd03e;
	#20
	A = 16'h3a44;
	B = 16'hbc61;
	ans_a = 16'hd059;
	#20
	A = 16'hbe1c;
	B = 16'h3ccf;
	ans_a = 16'hd094;
	#20
	A = 16'hbf5a;
	B = 16'h3c08;
	ans_a = 16'hd0cf;
	#20
	A = 16'habb7;
	B = 16'h3d33;
	ans_a = 16'hd0d2;
	#20
	A = 16'h3ca4;
	B = 16'h2c38;
	ans_a = 16'hd0d0;
	#20
	A = 16'hba91;
	B = 16'hbccb;
	ans_a = 16'hd0b1;
	#20
	A = 16'h3c83;
	B = 16'h3e0b;
	ans_a = 16'hd07a;
	#20
	A = 16'h37b7;
	B = 16'hbd3d;
	ans_a = 16'hd08e;
	#20
	A = 16'hbbfc;
	B = 16'h3910;
	ans_a = 16'hd0a2;
	#20
	A = 16'h3d15;
	B = 16'h3ec3;
	ans_a = 16'hd05d;
	#20
	A = 16'hb2bb;
	B = 16'hb873;
	ans_a = 16'hd059;
	#20
	A = 16'h389f;
	B = 16'h38f0;
	ans_a = 16'hd04e;
	#20
	A = 16'hbd56;
	B = 16'hb66c;
	ans_a = 16'hd03d;
	#20
	A = 16'h3422;
	B = 16'hb853;
	ans_a = 16'hd041;
	#20
	A = 16'h38a3;
	B = 16'h3f9b;
	ans_a = 16'hd01e;
	#20
	A = 16'h3d54;
	B = 16'hbd02;
	ans_a = 16'hd053;
	#20
	A = 16'h3756;
	B = 16'hbd6b;
	ans_a = 16'hd067;
	#20
	A = 16'hbf99;
	B = 16'h3696;
	ans_a = 16'hd080;
	#20
	A = 16'h3f19;
	B = 16'hbce1;
	ans_a = 16'hd0c5;
	#20
	A = 16'h3c74;
	B = 16'h35dc;
	ans_a = 16'hd0b8;
	#20
	A = 16'h3ae9;
	B = 16'h3e93;
	ans_a = 16'hd08b;
	#20
	A = 16'h3c29;
	B = 16'hba27;
	ans_a = 16'hd0a5;
	#20
	A = 16'h3d7b;
	B = 16'hbff5;
	ans_a = 16'hd0fc;
	#20
	A = 16'h3598;
	B = 16'h38b0;
	ans_a = 16'hd0f5;
	#20
	A = 16'hbf69;
	B = 16'h32a1;
	ans_a = 16'hd101;
	#20
	A = 16'h3c61;
	B = 16'h3896;
	ans_a = 16'hd0ed;
	#20
	A = 16'hbb4d;
	B = 16'h3912;
	ans_a = 16'hd100;
	#20
	A = 16'h3f4c;
	B = 16'hbdd4;
	ans_a = 16'hd155;
	#20
	A = 16'h3d44;
	B = 16'hbff6;
	ans_a = 16'hd1a9;
	#20
	A = 16'h329a;
	B = 16'had8a;
	ans_a = 16'hd1aa;
	#20
	A = 16'hbe15;
	B = 16'hb7a6;
	ans_a = 16'hd193;
	#20
	A = 16'hbf10;
	B = 16'hb5e8;
	ans_a = 16'hd17e;
	#20
	A = 16'hbfbf;
	B = 16'h36b5;
	ans_a = 16'hd198;
	#20
	A = 16'hbea1;
	B = 16'h3926;
	ans_a = 16'hd1ba;
	#20
	A = 16'h3eb0;
	B = 16'hbd05;
	ans_a = 16'hd1fd;
	#20
	A = 16'hbfa7;
	B = 16'hb7bd;
	ans_a = 16'hd1df;
	#20
	A = 16'hb530;
	B = 16'hb5e0;
	ans_a = 16'hd1db;
	#20
	A = 16'h360e;
	B = 16'h3ec1;
	ans_a = 16'hd1c7;
	#20
	A = 16'h3f74;
	B = 16'hba82;
	ans_a = 16'hd1f8;
	#20
	A = 16'h3ca4;
	B = 16'hbbe4;
	ans_a = 16'hd21d;
	#20
	A = 16'hba5d;
	B = 16'h3e78;
	ans_a = 16'hd246;
	#20
	A = 16'h3c65;
	B = 16'h3abb;
	ans_a = 16'hd228;
	#20
	A = 16'hbfd4;
	B = 16'h38dc;
	ans_a = 16'hd24e;
	#20
	A = 16'h2753;
	B = 16'h3640;
	ans_a = 16'hd24e;
	#20
	A = 16'hbc7b;
	B = 16'h3ffc;
	ans_a = 16'hd296;
	#20
	A = 16'h383a;
	B = 16'h282a;
	ans_a = 16'hd295;
	#20
	A = 16'hbf6c;
	B = 16'h3a49;
	ans_a = 16'hd2c4;
	#20
	A = 16'hb7ae;
	B = 16'hbfcf;
	ans_a = 16'hd2a6;
	#20
	A = 16'hbf14;
	B = 16'h3ce8;
	ans_a = 16'hd2eb;
	#20
	A = 16'h29ba;
	B = 16'h3908;
	ans_a = 16'hd2ea;
	#20
	A = 16'h3036;
	B = 16'h3d4a;
	ans_a = 16'hd2e4;
	#20
	A = 16'hb20d;
	B = 16'h39bb;
	ans_a = 16'hd2e8;
	#20
	A = 16'hb50c;
	B = 16'hb8ab;
	ans_a = 16'hd2e2;
	#20
	A = 16'h3b1b;
	B = 16'hbd31;
	ans_a = 16'hd307;
	#20
	A = 16'hbaed;
	B = 16'hbde5;
	ans_a = 16'hd2de;
	#20
	A = 16'hbda7;
	B = 16'h3bc1;
	ans_a = 16'hd30a;
	#20
	A = 16'h3b56;
	B = 16'hb174;
	ans_a = 16'hd30f;
	#20
	A = 16'hbdea;
	B = 16'h340e;
	ans_a = 16'hd31b;
	#20
	A = 16'h3868;
	B = 16'hbfca;
	ans_a = 16'hd33d;
	#20
	A = 16'h395f;
	B = 16'h2f7d;
	ans_a = 16'hd33a;
	#20
	A = 16'h36f8;
	B = 16'h3fee;
	ans_a = 16'hd31e;
	#20
	A = 16'hb96e;
	B = 16'hb8c4;
	ans_a = 16'hd311;
	#20
	A = 16'hbe26;
	B = 16'h3fd4;
	ans_a = 16'hd371;
	#20
	A = 16'hbcf2;
	B = 16'hbf9f;
	ans_a = 16'hd326;
	#20
	A = 16'hbf50;
	B = 16'hbed4;
	ans_a = 16'hd2c2;
	#20
	A = 16'hb445;
	B = 16'h2e26;
	ans_a = 16'hd2c3;
	#20
	A = 16'h38d2;
	B = 16'h3629;
	ans_a = 16'hd2bc;
	#20
	A = 16'hb030;
	B = 16'hbe02;
	ans_a = 16'hd2b6;
	#20
	A = 16'hbe90;
	B = 16'h3970;
	ans_a = 16'hd2da;
	#20
	A = 16'hb0ea;
	B = 16'h3e3e;
	ans_a = 16'hd2e2;
	#20
	A = 16'hb8c6;
	B = 16'h3fe2;
	ans_a = 16'hd308;
	#20
	A = 16'h3f9c;
	B = 16'hbd20;
	ans_a = 16'hd356;
	#20
	A = 16'hb85f;
	B = 16'h351e;
	ans_a = 16'hd35c;
	#20
	A = 16'h3e24;
	B = 16'hb9b3;
	ans_a = 16'hd37f;
	#20
	A = 16'hb895;
	B = 16'h3ee7;
	ans_a = 16'hd39f;
	#20
	A = 16'hb979;
	B = 16'h9f08;
	ans_a = 16'hd39f;
	#20
	A = 16'h3ee9;
	B = 16'hbac1;
	ans_a = 16'hd3ce;
	#20
	A = 16'hbcf1;
	B = 16'h3d0b;
	ans_a = 16'hd400;
	#20
	A = 16'h32d5;
	B = 16'h3fa4;
	ans_a = 16'hd3f3;
	#20
	A = 16'h3474;
	B = 16'h3ee6;
	ans_a = 16'hd3e4;
	#20
	A = 16'h2663;
	B = 16'hbcdc;
	ans_a = 16'hd3e5;
	#20
	A = 16'hb430;
	B = 16'hbcc5;
	ans_a = 16'hd3db;
	#20
	A = 16'h2c76;
	B = 16'hb54c;
	ans_a = 16'hd3dc;
	#20
	A = 16'hbad7;
	B = 16'hbf82;
	ans_a = 16'hd3a9;
	#20
	A = 16'h3cb3;
	B = 16'hbf16;
	ans_a = 16'hd3ec;
	#20
	A = 16'hbcaf;
	B = 16'hbca4;
	ans_a = 16'hd3c1;
	#20
	A = 16'h2e74;
	B = 16'hbe79;
	ans_a = 16'hd3c6;
	#20
	A = 16'hbc26;
	B = 16'hbaff;
	ans_a = 16'hd3a9;
	#20
	A = 16'h3ea4;
	B = 16'hbde7;
	ans_a = 16'hd3f7;
	#20
	A = 16'hae69;
	B = 16'hbb23;
	ans_a = 16'hd3f4;
	#20
	A = 16'h3884;
	B = 16'hbf4f;
	ans_a = 16'hd40a;
	#20
	A = 16'h3fd9;
	B = 16'h34cb;
	ans_a = 16'hd401;
	#20
	A = 16'hb771;
	B = 16'h3100;
	ans_a = 16'hd402;
	#20
	A = 16'hba25;
	B = 16'h2a8b;
	ans_a = 16'hd403;
	#20
	A = 16'h36b0;
	B = 16'hbe01;
	ans_a = 16'hd40d;
	#20
	A = 16'hb37e;
	B = 16'hbf25;
	ans_a = 16'hd406;
	#20
	A = 16'hb332;
	B = 16'h3c63;
	ans_a = 16'hd40a;
	#20
	A = 16'h3d9d;
	B = 16'h3e91;
	ans_a = 16'hd3ca;
	#20
	A = 16'h3ead;
	B = 16'hbe2c;
	ans_a = 16'hd40e;
	#20
	A = 16'h2f11;
	B = 16'hbdc9;
	ans_a = 16'hd411;
	#20
	A = 16'h3d54;
	B = 16'h3d74;
	ans_a = 16'hd3e8;
	#20
	A = 16'hbaa2;
	B = 16'h3857;
	ans_a = 16'hd3f6;
	#20
	A = 16'h3b02;
	B = 16'hbf29;
	ans_a = 16'hd414;
	#20
	A = 16'h3b05;
	B = 16'h3af3;
	ans_a = 16'hd408;
	#20
	A = 16'haf8a;
	B = 16'hbded;
	ans_a = 16'hd405;
	#20
	A = 16'hbdcb;
	B = 16'hbecb;
	ans_a = 16'hd3bb;
	#20
	A = 16'hbc48;
	B = 16'h39b6;
	ans_a = 16'hd3d3;
	#20
	A = 16'h3f09;
	B = 16'hbfd0;
	ans_a = 16'hd420;
	#20
	A = 16'hbdb5;
	B = 16'h3bc1;
	ans_a = 16'hd436;
	#20
	A = 16'hbdb3;
	B = 16'hbea5;
	ans_a = 16'hd410;
	#20
	A = 16'hb944;
	B = 16'h3459;
	ans_a = 16'hd413;
	#20
	A = 16'hbe28;
	B = 16'h3898;
	ans_a = 16'hd421;
	#20
	A = 16'h2db9;
	B = 16'h3e5a;
	ans_a = 16'hd41f;
	#20
	A = 16'hba1b;
	B = 16'hb643;
	ans_a = 16'hd41a;
	#20
	A = 16'h3b27;
	B = 16'hbd08;
	ans_a = 16'hd42c;
	#20
	A = 16'hb982;
	B = 16'h3d4b;
	ans_a = 16'hd43b;
	#20
	A = 16'h2c57;
	B = 16'h3e3c;
	ans_a = 16'hd439;
	#20
	A = 16'h3f4c;
	B = 16'h3cb3;
	ans_a = 16'hd417;
	#20
	A = 16'hbdf4;
	B = 16'h3f20;
	ans_a = 16'hd441;
	#20
	A = 16'hbf4c;
	B = 16'hbf7b;
	ans_a = 16'hd40a;
	#20
	A = 16'hbd8c;
	B = 16'hbf36;
	ans_a = 16'hd3c4;
	#20
	A = 16'h3fb4;
	B = 16'h3d4c;
	ans_a = 16'hd372;
	#20
	A = 16'hbb39;
	B = 16'haa81;
	ans_a = 16'hd371;
	#20
	A = 16'hb735;
	B = 16'hbc88;
	ans_a = 16'hd361;
	#20
	A = 16'h3f2f;
	B = 16'hbefd;
	ans_a = 16'hd3c5;
	#20
	A = 16'h3ba8;
	B = 16'ha8d8;
	ans_a = 16'hd3c6;
	#20
	A = 16'hb229;
	B = 16'hbc77;
	ans_a = 16'hd3bf;
	#20
	A = 16'h34df;
	B = 16'hba32;
	ans_a = 16'hd3c7;
	#20
	A = 16'h32fd;
	B = 16'had13;
	ans_a = 16'hd3c8;
	#20
	A = 16'h3859;
	B = 16'hb9e3;
	ans_a = 16'hd3d5;
	#20
	A = 16'hb54b;
	B = 16'h3eae;
	ans_a = 16'hd3e7;
	#20
	A = 16'hbd50;
	B = 16'hbc5e;
	ans_a = 16'hd3b9;
	#20
	A = 16'hb92d;
	B = 16'hb710;
	ans_a = 16'hd3b0;
	#20
	A = 16'hbe37;
	B = 16'h3d4c;
	ans_a = 16'hd3f2;
	#20
	A = 16'h3cdb;
	B = 16'hbe83;
	ans_a = 16'hd419;
	#20
	A = 16'h3d83;
	B = 16'h3fad;
	ans_a = 16'hd3dd;
	#20
	A = 16'h2df2;
	B = 16'hbc20;
	ans_a = 16'hd3e0;
	#20
	A = 16'hb9ad;
	B = 16'h200c;
	ans_a = 16'hd3e0;
	#20
	A = 16'h3de1;
	B = 16'hbf21;
	ans_a = 16'hd41a;
	#20
	A = 16'hbda6;
	B = 16'hac27;
	ans_a = 16'hd419;
	#20
	A = 16'hbe9a;
	B = 16'h3d09;
	ans_a = 16'hd43a;
	#20
	A = 16'h3963;
	B = 16'h3da4;
	ans_a = 16'hd42b;
	#20
	A = 16'h2b09;
	B = 16'hbf15;
	ans_a = 16'hd42d;
	#20
	A = 16'h3b67;
	B = 16'h3bbd;
	ans_a = 16'hd41f;
	#20
	A = 16'hbcd5;
	B = 16'h38cd;
	ans_a = 16'hd42b;
	#20
	A = 16'h3bce;
	B = 16'h3fdc;
	ans_a = 16'hd40c;
	#20
	A = 16'h3f32;
	B = 16'hb51f;
	ans_a = 16'hd415;
	#20
	A = 16'hab65;
	B = 16'h3e00;
	ans_a = 16'hd416;
	#20
	A = 16'h343f;
	B = 16'h3963;
	ans_a = 16'hd413;
	#20
	A = 16'h3fe6;
	B = 16'hbe29;
	ans_a = 16'hd444;
	#20
	A = 16'h3e1b;
	B = 16'haca2;
	ans_a = 16'hd446;
	#20
	A = 16'h1886;
	B = 16'hbbde;
	ans_a = 16'hd446;
	#20
	A = 16'hb521;
	B = 16'h3aee;
	ans_a = 16'hd44a;
	#20
	A = 16'h3c86;
	B = 16'hb575;
	ans_a = 16'hd450;
	#20
	A = 16'hbbc3;
	B = 16'h3ca8;
	ans_a = 16'hd462;
	#20
	A = 16'hbfdc;
	B = 16'h3d82;
	ans_a = 16'hd48d;
	#20
	A = 16'h357d;
	B = 16'hbc65;
	ans_a = 16'hd493;
	#20
	A = 16'hbe10;
	B = 16'h3ce2;
	ans_a = 16'hd4b1;
	#20
	A = 16'h3db1;
	B = 16'hb566;
	ans_a = 16'hd4b9;
	#20
	A = 16'hbeb7;
	B = 16'hb58d;
	ans_a = 16'hd4b0;
	#20
	A = 16'h39c0;
	B = 16'h3b86;
	ans_a = 16'hd4a5;
	#20
	A = 16'h391e;
	B = 16'h30dd;
	ans_a = 16'hd4a3;
	#20
	A = 16'h3533;
	B = 16'hbec1;
	ans_a = 16'hd4ac;
	#20
	A = 16'h3866;
	B = 16'h3e5c;
	ans_a = 16'hd49e;
	#20
	A = 16'h3df7;
	B = 16'h3144;
	ans_a = 16'hd49a;
	#20
	A = 16'h3a5b;
	B = 16'hbd12;
	ans_a = 16'hd4aa;
	#20
	A = 16'hae54;
	B = 16'h381b;
	ans_a = 16'hd4ab;
	#20
	A = 16'hbb64;
	B = 16'h3c93;
	ans_a = 16'hd4bc;
	#20
	A = 16'h3d54;
	B = 16'h3d83;
	ans_a = 16'hd49f;
	#20
	A = 16'h3f08;
	B = 16'h3ae0;
	ans_a = 16'hd487;
	#20
	A = 16'hb9d3;
	B = 16'hb41f;
	ans_a = 16'hd484;
	#20
	A = 16'hbe70;
	B = 16'hb58d;
	ans_a = 16'hd47b;
	#20
	A = 16'hbf9c;
	B = 16'hbfa5;
	ans_a = 16'hd441;
	#20
	A = 16'h3aa7;
	B = 16'hbe22;
	ans_a = 16'hd455;
	#20
	A = 16'hbb0c;
	B = 16'h3cb7;
	ans_a = 16'hd466;
	#20
	A = 16'hbcae;
	B = 16'h3ef1;
	ans_a = 16'hd486;
	#20
	A = 16'hbc72;
	B = 16'hbe7c;
	ans_a = 16'hd469;
	#20
	A = 16'h3f29;
	B = 16'h3f17;
	ans_a = 16'hd436;
	#20
	A = 16'h39c0;
	B = 16'h3b55;
	ans_a = 16'hd42b;
	#20
	A = 16'hbb96;
	B = 16'h2cfe;
	ans_a = 16'hd42c;
	#20
	A = 16'h3f27;
	B = 16'h3e47;
	ans_a = 16'hd3fe;
	#20
	A = 16'h2bdf;
	B = 16'hbce5;
	ans_a = 16'hd400;
	#20
	A = 16'h3c7e;
	B = 16'hbc20;
	ans_a = 16'hd413;
	#20
	A = 16'hbe96;
	B = 16'h2483;
	ans_a = 16'hd413;
	#20
	A = 16'h2d30;
	B = 16'hbe96;
	ans_a = 16'hd415;
	#20
	A = 16'hbf89;
	B = 16'hbbc2;
	ans_a = 16'hd3f0;
	#20
	A = 16'h3ebb;
	B = 16'h2192;
	ans_a = 16'hd3ef;
	#20
	A = 16'hbbbc;
	B = 16'h315a;
	ans_a = 16'hd3f4;
	#20
	A = 16'hbd04;
	B = 16'h3efd;
	ans_a = 16'hd41d;
	#20
	A = 16'h3897;
	B = 16'hbf51;
	ans_a = 16'hd42e;
	#20
	A = 16'h3704;
	B = 16'hbda4;
	ans_a = 16'hd438;
	#20
	A = 16'hbd9d;
	B = 16'hbb42;
	ans_a = 16'hd424;
	#20
	A = 16'hba96;
	B = 16'h3f06;
	ans_a = 16'hd43b;
	#20
	A = 16'hba7c;
	B = 16'h3d58;
	ans_a = 16'hd44c;
	#20
	A = 16'hb612;
	B = 16'h3cae;
	ans_a = 16'hd453;
	#20
	A = 16'hbecd;
	B = 16'h386c;
	ans_a = 16'hd462;
	#20
	A = 16'h36b1;
	B = 16'hbae1;
	ans_a = 16'hd468;
	#20
	A = 16'h3fc1;
	B = 16'hbec9;
	ans_a = 16'hd49d;
	#20
	A = 16'h23cd;
	B = 16'h3570;
	ans_a = 16'hd49d;
	#20
	A = 16'hb89e;
	B = 16'h3e4d;
	ans_a = 16'hd4ac;
	#20
	A = 16'hab39;
	B = 16'hbfed;
	ans_a = 16'hd4aa;
	#20
	A = 16'hbe8d;
	B = 16'hbc68;
	ans_a = 16'hd48d;
	#20
	A = 16'h3bed;
	B = 16'hbd03;
	ans_a = 16'hd4a1;
	#20
	A = 16'hbf60;
	B = 16'h3946;
	ans_a = 16'hd4b4;
	#20
	A = 16'h3cd9;
	B = 16'hb183;
	ans_a = 16'hd4b7;
	#20
	A = 16'h38d3;
	B = 16'hbe6b;
	ans_a = 16'hd4c6;
	#20
	A = 16'h3c9e;
	B = 16'hbc13;
	ans_a = 16'hd4d9;
	#20
	A = 16'hbd9e;
	B = 16'hb6e0;
	ans_a = 16'hd4cf;
	#20
	A = 16'hb913;
	B = 16'h3fc9;
	ans_a = 16'hd4e3;
	#20
	A = 16'h3616;
	B = 16'hbff1;
	ans_a = 16'hd4ef;
	#20
	A = 16'h350b;
	B = 16'hbebd;
	ans_a = 16'hd4f7;
	#20
	A = 16'h318d;
	B = 16'h303c;
	ans_a = 16'hd4f7;
	#20
	A = 16'h3b51;
	B = 16'hbc75;
	ans_a = 16'hd507;
	#20
	A = 16'h3fe2;
	B = 16'h3c9b;
	ans_a = 16'hd4e3;
	#20
	A = 16'h3d32;
	B = 16'h3ae1;
	ans_a = 16'hd4d1;
	#20
	A = 16'h3b6b;
	B = 16'hb779;
	ans_a = 16'hd4d8;
	#20
	A = 16'hba83;
	B = 16'h3d87;
	ans_a = 16'hd4ea;
	#20
	A = 16'h3c8c;
	B = 16'hb20f;
	ans_a = 16'hd4ed;
	#20
	A = 16'hb851;
	B = 16'hb9ce;
	ans_a = 16'hd4e7;
	#20
	A = 16'hb6c3;
	B = 16'hbcd5;
	ans_a = 16'hd4df;
	#20
	A = 16'hb48d;
	B = 16'hb84f;
	ans_a = 16'hd4dd;
	#20
	A = 16'h3bec;
	B = 16'hb952;
	ans_a = 16'hd4e8;
	#20
	A = 16'hbebe;
	B = 16'h3db8;
	ans_a = 16'hd50f;
	#20
	A = 16'hb885;
	B = 16'hbd3f;
	ans_a = 16'hd503;
	#20
	A = 16'hbe10;
	B = 16'h2080;
	ans_a = 16'hd503;
	#20
	A = 16'h3820;
	B = 16'hb5bc;
	ans_a = 16'hd506;
	#20
	A = 16'h3810;
	B = 16'h3029;
	ans_a = 16'hd505;
	#20
	A = 16'hbdf1;
	B = 16'hbee8;
	ans_a = 16'hd4dc;
	#20
	A = 16'h3a79;
	B = 16'h3ab0;
	ans_a = 16'hd4d1;
	#20
	A = 16'hb916;
	B = 16'h3d32;
	ans_a = 16'hd4de;
	#20
	A = 16'hb3d2;
	B = 16'hbeb0;
	ans_a = 16'hd4d7;
	#20
	A = 16'h3ac6;
	B = 16'h38b6;
	ans_a = 16'hd4cf;
	#20
	A = 16'hbd1c;
	B = 16'hb5b4;
	ans_a = 16'hd4c8;
	#20
	A = 16'hb8bc;
	B = 16'h3a6d;
	ans_a = 16'hd4d0;
	#20
	A = 16'h3b85;
	B = 16'h3ec8;
	ans_a = 16'hd4b6;
	#20
	A = 16'hacfa;
	B = 16'hbe5b;
	ans_a = 16'hd4b4;
	#20
	A = 16'h3d8c;
	B = 16'hbd8a;
	ans_a = 16'hd4d3;
	#20
	A = 16'h3efe;
	B = 16'h2279;
	ans_a = 16'hd4d3;
	#20
	A = 16'hb9a8;
	B = 16'hbe0c;
	ans_a = 16'hd4c2;
	#20
	A = 16'hb9b7;
	B = 16'h3547;
	ans_a = 16'hd4c6;
	#20
	A = 16'h3ab6;
	B = 16'hbc7e;
	ans_a = 16'hd4d5;
	#20
	A = 16'h3ee2;
	B = 16'hbeef;
	ans_a = 16'hd505;
	#20
	A = 16'h3cbf;
	B = 16'h3b3c;
	ans_a = 16'hd4f4;
	#20
	A = 16'h37d5;
	B = 16'h3ae9;
	ans_a = 16'hd4ed;
	#20
	A = 16'h3cf3;
	B = 16'hbcbf;
	ans_a = 16'hd504;
	#20
	A = 16'h37f4;
	B = 16'hbd01;
	ans_a = 16'hd50e;
	#20
	A = 16'h3fd7;
	B = 16'h3d62;
	ans_a = 16'hd4e4;
	#20
	A = 16'ha9ff;
	B = 16'hbee5;
	ans_a = 16'hd4e3;
	#20
	A = 16'hbf56;
	B = 16'hb50e;
	ans_a = 16'hd4da;
	#20
	A = 16'hbca0;
	B = 16'hbda7;
	ans_a = 16'hd4c0;
	#20
	A = 16'h365e;
	B = 16'h2b9e;
	ans_a = 16'hd4c0;
	#20
	A = 16'h3d57;
	B = 16'hbc0c;
	ans_a = 16'hd4d6;
	#20
	A = 16'hbda9;
	B = 16'hac3e;
	ans_a = 16'hd4d4;
	#20
	A = 16'haf11;
	B = 16'h3e1d;
	ans_a = 16'hd4d7;
	#20
	A = 16'hb6f9;
	B = 16'hbf46;
	ans_a = 16'hd4ca;
	#20
	A = 16'h3dd0;
	B = 16'hb379;
	ans_a = 16'hd4cf;
	#20
	A = 16'hb871;
	B = 16'hba5d;
	ans_a = 16'hd4c8;
	#20
	A = 16'h3e04;
	B = 16'h3dd6;
	ans_a = 16'hd4a5;
	#20
	A = 16'h3f83;
	B = 16'h3f75;
	ans_a = 16'hd46d;
	#20
	A = 16'hb4f8;
	B = 16'h28eb;
	ans_a = 16'hd46d;
	#20
	A = 16'hbcdc;
	B = 16'hb6fe;
	ans_a = 16'hd465;
	#20
	A = 16'h3d9a;
	B = 16'h3be7;
	ans_a = 16'hd44f;
	#20
	A = 16'h3ec9;
	B = 16'h3c67;
	ans_a = 16'hd431;
	#20
	A = 16'hbc67;
	B = 16'h384b;
	ans_a = 16'hd43a;
	#20
	A = 16'hbf40;
	B = 16'h3fbd;
	ans_a = 16'hd472;
	#20
	A = 16'h3813;
	B = 16'hb48f;
	ans_a = 16'hd474;
	#20
	A = 16'hbeef;
	B = 16'h34ef;
	ans_a = 16'hd47d;
	#20
	A = 16'h3d21;
	B = 16'hba40;
	ans_a = 16'hd48d;
	#20
	A = 16'h36e1;
	B = 16'hbd89;
	ans_a = 16'hd497;
	#20
	A = 16'h3404;
	B = 16'h3bc8;
	ans_a = 16'hd493;
	#20
	A = 16'hbe5e;
	B = 16'h3dea;
	ans_a = 16'hd4b9;
	#20
	A = 16'h3fb9;
	B = 16'h3f01;
	ans_a = 16'hd483;
	#20
	A = 16'ha5ed;
	B = 16'hb837;
	ans_a = 16'hd483;
	#20
	A = 16'hbcfd;
	B = 16'h3e6e;
	ans_a = 16'hd4a3;
	#20
	A = 16'hba60;
	B = 16'hbc48;
	ans_a = 16'hd495;
	#20
	A = 16'h3940;
	B = 16'hbd11;
	ans_a = 16'hd4a2;
	#20
	A = 16'hbfcd;
	B = 16'hb87a;
	ans_a = 16'hd491;
	#20
	A = 16'h2b9e;
	B = 16'h3e6a;
	ans_a = 16'hd48f;
	#20
	A = 16'h3da4;
	B = 16'hbf94;
	ans_a = 16'hd4ba;
	#20
	A = 16'hb572;
	B = 16'h35a3;
	ans_a = 16'hd4bc;
	#20
	A = 16'h3c6f;
	B = 16'hb690;
	ans_a = 16'hd4c3;
	#20
	A = 16'hb551;
	B = 16'h3b0a;
	ans_a = 16'hd4c8;
	#20
	A = 16'ha99e;
	B = 16'h3bcd;
	ans_a = 16'hd4c9;
	#20
	A = 16'h35d8;
	B = 16'hbf9a;
	ans_a = 16'hd4d4;
	#20
	A = 16'h3e62;
	B = 16'hbae9;
	ans_a = 16'hd4ea;
	#20
	A = 16'hbe39;
	B = 16'h3fb3;
	ans_a = 16'hd51a;
	#20
	A = 16'h356e;
	B = 16'h2b94;
	ans_a = 16'hd51a;
	#20
	A = 16'h3a44;
	B = 16'hbaea;
	ans_a = 16'hd525;
	#20
	A = 16'hbf6a;
	B = 16'hb848;
	ans_a = 16'hd515;
	#20
	A = 16'hbedb;
	B = 16'h3f50;
	ans_a = 16'hd547;
	#20
	A = 16'h39de;
	B = 16'hb85c;
	ans_a = 16'hd54d;
	#20
	A = 16'h3d63;
	B = 16'hbd7b;
	ans_a = 16'hd56b;
	#20
	A = 16'hbaed;
	B = 16'hbf80;
	ans_a = 16'hd551;
	#20
	A = 16'h3c9c;
	B = 16'hb932;
	ans_a = 16'hd55d;
	#20
	A = 16'hbff0;
	B = 16'hb6e3;
	ans_a = 16'hd54f;
	#20
	A = 16'h3a56;
	B = 16'hbc1a;
	ans_a = 16'hd55c;
	#20
	A = 16'hbefd;
	B = 16'h3bf7;
	ans_a = 16'hd578;
	#20
	A = 16'h3d7c;
	B = 16'hbf98;
	ans_a = 16'hd5a2;
	#20
	A = 16'h3dc5;
	B = 16'hb95a;
	ans_a = 16'hd5b1;
	#20
	A = 16'hb87a;
	B = 16'hbab5;
	ans_a = 16'hd5a9;
	#20
	A = 16'h3d40;
	B = 16'hbd2c;
	ans_a = 16'hd5c4;
	#20
	A = 16'h3af9;
	B = 16'h3c2b;
	ans_a = 16'hd5b5;
	#20
	A = 16'h368c;
	B = 16'h3c95;
	ans_a = 16'hd5ae;
	#20
	A = 16'h3f38;
	B = 16'h3b3c;
	ans_a = 16'hd594;
	#20
	A = 16'h3e63;
	B = 16'h3fb2;
	ans_a = 16'hd563;
	#20
	A = 16'hbd7a;
	B = 16'h3bb6;
	ans_a = 16'hd578;
	#20
	A = 16'hbe76;
	B = 16'h3f85;
	ans_a = 16'hd5a9;
	#20
	A = 16'hbcc6;
	B = 16'h397c;
	ans_a = 16'hd5b6;
	#20
	A = 16'h3c00;
	B = 16'had82;
	ans_a = 16'hd5b7;
	#20
	A = 16'h3e45;
	B = 16'h3e8e;
	ans_a = 16'hd58e;
	#20
	A = 16'h3d6d;
	B = 16'h2ddd;
	ans_a = 16'hd58c;
	#20
	A = 16'h3f4a;
	B = 16'hbe10;
	ans_a = 16'hd5b8;
	#20
	A = 16'h3523;
	B = 16'hbe02;
	ans_a = 16'hd5c0;
	#20
	A = 16'h3438;
	B = 16'hbc8c;
	ans_a = 16'hd5c5;
	#20
	A = 16'hbd52;
	B = 16'h39e3;
	ans_a = 16'hd5d5;
	#20
	A = 16'hbd74;
	B = 16'h3a4e;
	ans_a = 16'hd5e6;
	#20
	A = 16'hbd08;
	B = 16'hbf92;
	ans_a = 16'hd5c0;
	#20
	A = 16'h3b0e;
	B = 16'hb83c;
	ans_a = 16'hd5c7;
	#20
	A = 16'hbc25;
	B = 16'hb847;
	ans_a = 16'hd5be;
	#20
	A = 16'hbace;
	B = 16'hbfd5;
	ans_a = 16'hd5a3;
	#20
	A = 16'hb93c;
	B = 16'hb5e5;
	ans_a = 16'hd59f;
	#20
	A = 16'h3b29;
	B = 16'hbaf3;
	ans_a = 16'hd5ab;
	#20
	A = 16'hb452;
	B = 16'hbd15;
	ans_a = 16'hd5a6;
	#20
	A = 16'h3f70;
	B = 16'hb343;
	ans_a = 16'hd5ad;
	#20
	A = 16'h3ab6;
	B = 16'hbbe8;
	ans_a = 16'hd5ba;
	#20
	A = 16'h3d54;
	B = 16'h3ddc;
	ans_a = 16'hd59b;
	#20
	A = 16'hbcb9;
	B = 16'h3304;
	ans_a = 16'hd59f;
	#20
	A = 16'hb540;
	B = 16'hbe42;
	ans_a = 16'hd597;
	#20
	A = 16'hbacc;
	B = 16'h39cc;
	ans_a = 16'hd5a1;
	#20
	A = 16'hbc2f;
	B = 16'h39e6;
	ans_a = 16'hd5ad;
	#20
	A = 16'hbe4f;
	B = 16'h3ff4;
	ans_a = 16'hd5df;
	#20
	A = 16'hbdd2;
	B = 16'h38da;
	ans_a = 16'hd5ed;
	#20
	A = 16'had0e;
	B = 16'h3989;
	ans_a = 16'hd5ee;
	#20
	A = 16'hbd2b;
	B = 16'hb88c;
	ans_a = 16'hd5e2;
	#20
	A = 16'h3e7d;
	B = 16'h3c0b;
	ans_a = 16'hd5c8;
	#20
	A = 16'h3c94;
	B = 16'h35eb;
	ans_a = 16'hd5c1;
	#20
	A = 16'h3562;
	B = 16'h3e65;
	ans_a = 16'hd5b8;
	#20
	A = 16'h3f71;
	B = 16'hb222;
	ans_a = 16'hd5be;
	#20
	A = 16'hb27c;
	B = 16'h3dc6;
	ans_a = 16'hd5c3;
	#20
	A = 16'hbdf9;
	B = 16'h3c85;
	ans_a = 16'hd5de;
	#20
	A = 16'h3a49;
	B = 16'hbf5e;
	ans_a = 16'hd5f5;
	#20
	A = 16'h3c1e;
	B = 16'hb63d;
	ans_a = 16'hd5fb;
	#20
	A = 16'hbd13;
	B = 16'h3c4d;
	ans_a = 16'hd611;
	#20
	A = 16'h3f5f;
	B = 16'h3921;
	ans_a = 16'hd5fe;
	#20
	A = 16'hbf6e;
	B = 16'hbef8;
	ans_a = 16'hd5ca;
	#20
	A = 16'hbcac;
	B = 16'h3cc3;
	ans_a = 16'hd5e0;
	#20
	A = 16'h3a38;
	B = 16'h34ed;
	ans_a = 16'hd5dc;
	#20
	A = 16'hbfda;
	B = 16'h3d06;
	ans_a = 16'hd603;
	#20
	A = 16'h398b;
	B = 16'hb870;
	ans_a = 16'hd609;
	#20
	A = 16'hbfc6;
	B = 16'h3444;
	ans_a = 16'hd611;
	#20
	A = 16'hbad9;
	B = 16'hbe38;
	ans_a = 16'hd5fc;
	#20
	A = 16'hb59b;
	B = 16'hbd17;
	ans_a = 16'hd5f5;
	#20
	A = 16'h3b08;
	B = 16'h3f7d;
	ans_a = 16'hd5db;
	#20
	A = 16'hbc00;
	B = 16'h38a2;
	ans_a = 16'hd5e4;
	#20
	A = 16'h3815;
	B = 16'hbdf0;
	ans_a = 16'hd5f0;
	#20
	A = 16'hbd45;
	B = 16'h3ea4;
	ans_a = 16'hd613;
	#20
	A = 16'hb9cd;
	B = 16'h3783;
	ans_a = 16'hd618;
	#20
	A = 16'hbe6b;
	B = 16'h3bce;
	ans_a = 16'hd631;
	#20
	A = 16'hbd32;
	B = 16'hbfd5;
	ans_a = 16'hd608;
	#20
	A = 16'h37a7;
	B = 16'hbf8b;
	ans_a = 16'hd616;
	#20
	A = 16'hbb38;
	B = 16'h3117;
	ans_a = 16'hd618;
	#20
	A = 16'hbd5d;
	B = 16'hbc13;
	ans_a = 16'hd602;
	#20
	A = 16'hbc12;
	B = 16'hb6e6;
	ans_a = 16'hd5fb;
	#20
	A = 16'hb91a;
	B = 16'hb941;
	ans_a = 16'hd5f4;
	#20
	A = 16'h3faa;
	B = 16'hbe13;
	ans_a = 16'hd623;
	#20
	A = 16'h3fd6;
	B = 16'h3ae5;
	ans_a = 16'hd608;
	#20
	A = 16'h3ee0;
	B = 16'h3ac2;
	ans_a = 16'hd5f1;
	#20
	A = 16'hbd66;
	B = 16'hb370;
	ans_a = 16'hd5ec;
	#20
	A = 16'h3ec1;
	B = 16'h3c1f;
	ans_a = 16'hd5d0;
	#20
	A = 16'h3eb1;
	B = 16'hbc2e;
	ans_a = 16'hd5ec;
	#20
	A = 16'h3fb9;
	B = 16'h3d58;
	ans_a = 16'hd5c3;
	#20
	A = 16'hb990;
	B = 16'hba2a;
	ans_a = 16'hd5ba;
	#20
	A = 16'hbf1d;
	B = 16'hb579;
	ans_a = 16'hd5b0;
	#20
	A = 16'h2afb;
	B = 16'h2967;
	ans_a = 16'hd5b0;
	#20
	A = 16'h3f90;
	B = 16'hb528;
	ans_a = 16'hd5ba;
	#20
	A = 16'h3839;
	B = 16'hbf55;
	ans_a = 16'hd5c9;
	#20
	A = 16'h3320;
	B = 16'hbc17;
	ans_a = 16'hd5cd;
	#20
	A = 16'h3e2e;
	B = 16'hb857;
	ans_a = 16'hd5da;
	#20
	A = 16'hbd36;
	B = 16'h3f4a;
	ans_a = 16'hd600;
	#20
	A = 16'h3dc8;
	B = 16'hbd86;
	ans_a = 16'hd620;
	#20
	A = 16'h3f92;
	B = 16'hbd4c;
	ans_a = 16'hd648;
	#20
	A = 16'hb5ff;
	B = 16'h38a3;
	ans_a = 16'hd64b;
	#20
	A = 16'hbd4e;
	B = 16'hb805;
	ans_a = 16'hd640;
	#20
	A = 16'hbd0e;
	B = 16'hbd14;
	ans_a = 16'hd626;
	#20
	A = 16'h3a44;
	B = 16'h3f9c;
	ans_a = 16'hd60e;
	#20
	A = 16'hbd55;
	B = 16'hba1a;
	ans_a = 16'hd5fe;
	#20
	A = 16'h3dcc;
	B = 16'hb7cb;
	ans_a = 16'hd609;
	#20
	A = 16'hb1dc;
	B = 16'h3c5d;
	ans_a = 16'hd60c;
	#20
	A = 16'hbf8d;
	B = 16'h3c9d;
	ans_a = 16'hd62f;
	#20
	A = 16'hb3eb;
	B = 16'hbfac;
	ans_a = 16'hd627;
	#20
	A = 16'h3d21;
	B = 16'hb943;
	ans_a = 16'hd634;
	#20
	A = 16'hb87e;
	B = 16'h3f8e;
	ans_a = 16'hd645;
	#20
	A = 16'hbaae;
	B = 16'hba6b;
	ans_a = 16'hd63a;
	#20
	A = 16'hbb7c;
	B = 16'hbf9c;
	ans_a = 16'hd61e;
	#20
	A = 16'h3aaa;
	B = 16'h3e33;
	ans_a = 16'hd609;
	#20
	A = 16'hb57a;
	B = 16'h3646;
	ans_a = 16'hd60b;
	#20
	A = 16'hbc8c;
	B = 16'hbc86;
	ans_a = 16'hd5f6;
	#20
	A = 16'h358b;
	B = 16'h2ee2;
	ans_a = 16'hd5f5;
	#20
	A = 16'h3c04;
	B = 16'hb969;
	ans_a = 16'hd600;
	#20
	A = 16'h3f55;
	B = 16'h37dd;
	ans_a = 16'hd5f2;
	#20
	A = 16'h3ecb;
	B = 16'h3524;
	ans_a = 16'hd5e9;
	#20
	A = 16'hb3f7;
	B = 16'hb813;
	ans_a = 16'hd5e7;
	#20
	A = 16'h3c20;
	B = 16'h3c5d;
	ans_a = 16'hd5d5;
	#20
	A = 16'h3bff;
	B = 16'h3953;
	ans_a = 16'hd5ca;
	#20
	A = 16'hbf33;
	B = 16'hbe79;
	ans_a = 16'hd59b;
	#20
	A = 16'hbcdd;
	B = 16'h3f32;
	ans_a = 16'hd5be;
	#20
	A = 16'hbf53;
	B = 16'h3c21;
	ans_a = 16'hd5dc;
	#20
	A = 16'h2d55;
	B = 16'hbae2;
	ans_a = 16'hd5dd;
	#20
	A = 16'hbf62;
	B = 16'h3993;
	ans_a = 16'hd5f2;
	#20
	A = 16'hbace;
	B = 16'hba1f;
	ans_a = 16'hd5e8;
	#20
	A = 16'hbcc1;
	B = 16'h3c19;
	ans_a = 16'hd5fb;
	#20
	A = 16'hb9a9;
	B = 16'hb42e;
	ans_a = 16'hd5f8;
	#20
	A = 16'hbe8e;
	B = 16'h3e53;
	ans_a = 16'hd621;
	#20
	A = 16'hb9ed;
	B = 16'hbed6;
	ans_a = 16'hd60d;
	#20
	A = 16'h3cca;
	B = 16'h3cb4;
	ans_a = 16'hd5f6;
	#20
	A = 16'hbe41;
	B = 16'h3f7c;
	ans_a = 16'hd625;
	#20
	A = 16'h3d99;
	B = 16'h3adb;
	ans_a = 16'hd612;
	#20
	A = 16'h3cdd;
	B = 16'hbe16;
	ans_a = 16'hd630;
	#20
	A = 16'h332f;
	B = 16'hb74a;
	ans_a = 16'hd632;
	#20
	A = 16'hb3d5;
	B = 16'h357d;
	ans_a = 16'hd633;
	#20
	A = 16'h3f4b;
	B = 16'h3ef6;
	ans_a = 16'hd600;
	#20
	A = 16'hb87d;
	B = 16'h31af;
	ans_a = 16'hd602;
	#20
	A = 16'hbd46;
	B = 16'hbbe7;
	ans_a = 16'hd5ed;
	#20
	A = 16'h3cbb;
	B = 16'hb402;
	ans_a = 16'hd5f2;
	#20
	A = 16'h3605;
	B = 16'hb53e;
	ans_a = 16'hd5f4;
	#20
	A = 16'hbf18;
	B = 16'h3e2c;
	ans_a = 16'hd620;
	#20
	A = 16'h3a9f;
	B = 16'h329c;
	ans_a = 16'hd61d;
	#20
	A = 16'hb3a1;
	B = 16'h2030;
	ans_a = 16'hd61d;
	#20
	A = 16'h3cb0;
	B = 16'hb957;
	ans_a = 16'hd62a;
	#20
	A = 16'h3e34;
	B = 16'hbac9;
	ans_a = 16'hd63f;
	#20
	A = 16'h3c91;
	B = 16'hb729;
	ans_a = 16'hd647;
	#20
	A = 16'h3d44;
	B = 16'h3b59;
	ans_a = 16'hd634;
	#20
	A = 16'hbbf8;
	B = 16'h3bb2;
	ans_a = 16'hd643;
	#20
	A = 16'hb91d;
	B = 16'h3e74;
	ans_a = 16'hd654;
	#20
	A = 16'h3a01;
	B = 16'h375f;
	ans_a = 16'hd64e;
	#20
	A = 16'hbeab;
	B = 16'hb0c1;
	ans_a = 16'hd64a;
	#20
	A = 16'hbfab;
	B = 16'h3ba5;
	ans_a = 16'hd667;
	#20
	A = 16'hc000;
	B = 16'hb954;
	ans_a = 16'hd652;
	#20
	A = 16'hb417;
	B = 16'h3b6f;
	ans_a = 16'hd656;
	#20
	A = 16'h3a74;
	B = 16'hb44f;
	ans_a = 16'hd659;
	#20
	A = 16'h3ade;
	B = 16'hbf0b;
	ans_a = 16'hd671;
	#20
	A = 16'hb548;
	B = 16'hb40a;
	ans_a = 16'hd670;
	#20
	A = 16'h2fde;
	B = 16'hbbeb;
	ans_a = 16'hd672;
	#20
	A = 16'hb99d;
	B = 16'hbcf8;
	ans_a = 16'hd664;
	#20
	A = 16'hbd47;
	B = 16'h3e66;
	ans_a = 16'hd686;
	#20
	A = 16'hb357;
	B = 16'hbdfe;
	ans_a = 16'hd681;
	#20
	A = 16'hbd9e;
	B = 16'hbf4d;
	ans_a = 16'hd658;
	#20
	A = 16'h377e;
	B = 16'h3c69;
	ans_a = 16'hd650;
	#20
	A = 16'hbc57;
	B = 16'hbb79;
	ans_a = 16'hd640;
	#20
	A = 16'h362d;
	B = 16'hb67d;
	ans_a = 16'hd643;
	#20
	A = 16'h38a8;
	B = 16'hbd32;
	ans_a = 16'hd64f;
	#20
	A = 16'h3a14;
	B = 16'hba4d;
	ans_a = 16'hd659;
	#20
	A = 16'hbe0e;
	B = 16'h3c22;
	ans_a = 16'hd672;
	#20
	A = 16'hb108;
	B = 16'h3f2c;
	ans_a = 16'hd677;
	#20
	A = 16'h3f8d;
	B = 16'h3d18;
	ans_a = 16'hd651;
	#20
	A = 16'hbe2b;
	B = 16'h3e61;
	ans_a = 16'hd678;
	#20
	A = 16'hbd39;
	B = 16'h3d30;
	ans_a = 16'hd693;
	#20
	A = 16'h3069;
	B = 16'hb885;
	ans_a = 16'hd694;
	#20
	A = 16'hbd9d;
	B = 16'h3d17;
	ans_a = 16'hd6b1;
	#20
	A = 16'hbfbb;
	B = 16'h2ec8;
	ans_a = 16'hd6b4;
	#20
	A = 16'h3ea3;
	B = 16'h3fe5;
	ans_a = 16'hd680;
	#20
	A = 16'hb598;
	B = 16'h3cd3;
	ans_a = 16'hd687;
	#20
	A = 16'hbd4b;
	B = 16'hbad3;
	ans_a = 16'hd675;
	#20
	A = 16'h3e7c;
	B = 16'h35df;
	ans_a = 16'hd66b;
	#20
	A = 16'hbf4c;
	B = 16'hbf45;
	ans_a = 16'hd636;
	#20
	A = 16'hbde6;
	B = 16'hbec2;
	ans_a = 16'hd60e;
	#20
	A = 16'hbc21;
	B = 16'hb54a;
	ans_a = 16'hd609;
	#20
	A = 16'h3c9b;
	B = 16'hbe60;
	ans_a = 16'hd626;
	#20
	A = 16'h3f77;
	B = 16'h3dfe;
	ans_a = 16'hd5f9;
	#20
	A = 16'h3d42;
	B = 16'h32d2;
	ans_a = 16'hd5f5;
	#20
	A = 16'h37ce;
	B = 16'h3e58;
	ans_a = 16'hd5e9;
	#20
	A = 16'hb186;
	B = 16'h3f91;
	ans_a = 16'hd5ee;
	#20
	A = 16'h3c98;
	B = 16'h37b1;
	ans_a = 16'hd5e5;
	#20
	A = 16'h3df0;
	B = 16'hbfb4;
	ans_a = 16'hd613;
	#20
	A = 16'h385e;
	B = 16'h3e5c;
	ans_a = 16'hd605;
	#20
	A = 16'h3c0c;
	B = 16'h3df9;
	ans_a = 16'hd5ed;
	#20
	A = 16'h363d;
	B = 16'h2436;
	ans_a = 16'hd5ed;
	#20
	A = 16'h39dc;
	B = 16'h3c6e;
	ans_a = 16'hd5e0;
	#20
	A = 16'h37da;
	B = 16'haf10;
	ans_a = 16'hd5e1;
	#20
	A = 16'hbc72;
	B = 16'h33f9;
	ans_a = 16'hd5e5;
	#20
	A = 16'h31ad;
	B = 16'hb5d7;
	ans_a = 16'hd5e6;
	#20
	A = 16'h3fe8;
	B = 16'hb53f;
	ans_a = 16'hd5f0;
	#20
	A = 16'hbc97;
	B = 16'h30cf;
	ans_a = 16'hd5f3;
	#20
	A = 16'hba2a;
	B = 16'h3db6;
	ans_a = 16'hd605;
	#20
	A = 16'hb843;
	B = 16'h3efb;
	ans_a = 16'hd614;
	#20
	A = 16'hb7f1;
	B = 16'hb755;
	ans_a = 16'hd610;
	#20
	A = 16'hb63e;
	B = 16'h3d98;
	ans_a = 16'hd619;
	#20
	A = 16'hb25f;
	B = 16'h3e73;
	ans_a = 16'hd61e;
	#20
	A = 16'h3306;
	B = 16'h3d05;
	ans_a = 16'hd61a;
	#20
	A = 16'h2d36;
	B = 16'hb772;
	ans_a = 16'hd61b;
	#20
	A = 16'h30c6;
	B = 16'h30c5;
	ans_a = 16'hd61b;
	#20
	A = 16'hbfa0;
	B = 16'hadb8;
	ans_a = 16'hd618;
	#20
	A = 16'hbfa0;
	B = 16'hbadc;
	ans_a = 16'hd5fe;
	#20
	A = 16'h33d9;
	B = 16'h3e46;
	ans_a = 16'hd5f8;
	#20
	A = 16'hbcee;
	B = 16'hbd76;
	ans_a = 16'hd5dd;
	#20
	A = 16'h3ef5;
	B = 16'hb685;
	ans_a = 16'hd5e8;
	#20
	A = 16'hbb98;
	B = 16'hb106;
	ans_a = 16'hd5e6;
	#20
	A = 16'hb34a;
	B = 16'h332d;
	ans_a = 16'hd5e7;
	#20
	A = 16'h3cde;
	B = 16'hbfb1;
	ans_a = 16'hd60c;
	#20
	A = 16'h3e17;
	B = 16'hb935;
	ans_a = 16'hd61c;
	#20
	A = 16'hbedf;
	B = 16'h3c89;
	ans_a = 16'hd63b;
	#20
	A = 16'h3e35;
	B = 16'h3f2c;
	ans_a = 16'hd60e;
	#20
	A = 16'hb12c;
	B = 16'hac9f;
	ans_a = 16'hd60e;
	#20
	A = 16'ha71c;
	B = 16'hbec5;
	ans_a = 16'hd60d;
	#20
	A = 16'hbd62;
	B = 16'hbb6f;
	ans_a = 16'hd5f9;
	#20
	A = 16'hbf9c;
	B = 16'ha9b6;
	ans_a = 16'hd5f8;
	#20
	A = 16'h2839;
	B = 16'hbc02;
	ans_a = 16'hd5f9;
	#20
	A = 16'h387f;
	B = 16'ha598;
	ans_a = 16'hd5f9;
	#20
	A = 16'h347b;
	B = 16'h3283;
	ans_a = 16'hd5f8;
	#20
	A = 16'hbe85;
	B = 16'hb5d0;
	ans_a = 16'hd5ef;
	#20
	A = 16'hbcb3;
	B = 16'h3e73;
	ans_a = 16'hd60d;
	#20
	A = 16'hbc29;
	B = 16'hbe86;
	ans_a = 16'hd5f2;
	#20
	A = 16'hbc54;
	B = 16'hbccd;
	ans_a = 16'hd5dd;
	#20
	A = 16'h3e39;
	B = 16'h3c40;
	ans_a = 16'hd5c3;
	#20
	A = 16'hba81;
	B = 16'hbcf2;
	ans_a = 16'hd5b3;
	#20
	A = 16'hbc22;
	B = 16'h35cf;
	ans_a = 16'hd5b9;
	#20
	A = 16'hbc8a;
	B = 16'h3cba;
	ans_a = 16'hd5ce;
	#20
	A = 16'hada1;
	B = 16'h2d6d;
	ans_a = 16'hd5ce;
	#20
	A = 16'hbe09;
	B = 16'h3f62;
	ans_a = 16'hd5fb;
	#20
	A = 16'hbd7e;
	B = 16'hbc5e;
	ans_a = 16'hd5e3;
	#20
	A = 16'h3d0b;
	B = 16'hbb75;
	ans_a = 16'hd5f6;
	#20
	A = 16'h351a;
	B = 16'h3cfa;
	ans_a = 16'hd5f0;
	#20
	A = 16'h37d5;
	B = 16'hbaa9;
	ans_a = 16'hd5f7;
	#20
	A = 16'h3034;
	B = 16'hbfd4;
	ans_a = 16'hd5fb;
	#20
	A = 16'hbcee;
	B = 16'h31bf;
	ans_a = 16'hd5ff;
	#20
	A = 16'hbd96;
	B = 16'hb79f;
	ans_a = 16'hd5f4;
	#20
	A = 16'h3360;
	B = 16'hb1dc;
	ans_a = 16'hd5f5;
	#20
	A = 16'h3ded;
	B = 16'hbd24;
	ans_a = 16'hd613;
	#20
	A = 16'habbb;
	B = 16'hb134;
	ans_a = 16'hd613;
	#20
	A = 16'hbf2f;
	B = 16'hbf84;
	ans_a = 16'hd5dd;
	#20
	A = 16'h3252;
	B = 16'h365c;
	ans_a = 16'hd5dc;
	#20
	A = 16'hb858;
	B = 16'h3dfb;
	ans_a = 16'hd5e9;
	#20
	A = 16'hbdd0;
	B = 16'hbda2;
	ans_a = 16'hd5c8;
	#20
	A = 16'h3c7f;
	B = 16'h3d96;
	ans_a = 16'hd5af;
	#20
	A = 16'hb353;
	B = 16'hbc26;
	ans_a = 16'hd5ab;
	#20
	A = 16'h3dde;
	B = 16'hbdcc;
	ans_a = 16'hd5cd;
	#20
	A = 16'h3c9a;
	B = 16'h3ed7;
	ans_a = 16'hd5ae;
	#20
	A = 16'hbc85;
	B = 16'hbfe5;
	ans_a = 16'hd58a;
	#20
	A = 16'hbf7d;
	B = 16'hba7e;
	ans_a = 16'hd572;
	#20
	A = 16'hbe52;
	B = 16'h3e4c;
	ans_a = 16'hd59a;
	#20
	A = 16'h3e28;
	B = 16'h3c48;
	ans_a = 16'hd580;
	#20
	A = 16'h3a04;
	B = 16'h3f02;
	ans_a = 16'hd56b;
	#20
	A = 16'h3c9e;
	B = 16'hbdaa;
	ans_a = 16'hd585;
	#20
	A = 16'hbf78;
	B = 16'hb081;
	ans_a = 16'hd581;
	#20
	A = 16'hbb93;
	B = 16'h3d9c;
	ans_a = 16'hd596;
	#20
	A = 16'h3c9b;
	B = 16'hbbeb;
	ans_a = 16'hd5a8;
	#20
	A = 16'h3c80;
	B = 16'h3b5b;
	ans_a = 16'hd597;
	#20
	A = 16'h3d97;
	B = 16'hbe91;
	ans_a = 16'hd5bc;
	#20
	A = 16'h3c73;
	B = 16'h3a63;
	ans_a = 16'hd5ae;
	#20
	A = 16'h3fe7;
	B = 16'h380e;
	ans_a = 16'hd59e;
	#20
	A = 16'h3817;
	B = 16'hbfd4;
	ans_a = 16'hd5ae;
	#20
	A = 16'h3c2a;
	B = 16'hbe69;
	ans_a = 16'hd5c9;
	#20
	A = 16'hbf46;
	B = 16'hbe13;
	ans_a = 16'hd59d;
	#20
	A = 16'ha750;
	B = 16'hbc0e;
	ans_a = 16'hd59d;
	#20
	A = 16'h3ed8;
	B = 16'hbc80;
	ans_a = 16'hd5bc;
	#20
	A = 16'h3a8f;
	B = 16'hb5ff;
	ans_a = 16'hd5c1;
	#20
	A = 16'h394d;
	B = 16'hb8f3;
	ans_a = 16'hd5c8;
	#20
	A = 16'hbf30;
	B = 16'h3d5f;
	ans_a = 16'hd5ef;
	#20
	A = 16'hb704;
	B = 16'hb9c0;
	ans_a = 16'hd5ea;
	#20
	A = 16'h322b;
	B = 16'hbe91;
	ans_a = 16'hd5ef;
	#20
	A = 16'hbe8d;
	B = 16'hbe56;
	ans_a = 16'hd5c6;
	#20
	A = 16'h3626;
	B = 16'h3990;
	ans_a = 16'hd5c2;
	#20
	A = 16'h3c55;
	B = 16'h3531;
	ans_a = 16'hd5bc;
	#20
	A = 16'hbdbe;
	B = 16'hbe6f;
	ans_a = 16'hd597;
	#20
	A = 16'hb648;
	B = 16'hbfcb;
	ans_a = 16'hd58b;
	#20
	A = 16'h3e1d;
	B = 16'h3fca;
	ans_a = 16'hd55b;
	#20
	A = 16'h3cea;
	B = 16'h2fcf;
	ans_a = 16'hd559;
	#20
	A = 16'h3a6f;
	B = 16'hbc52;
	ans_a = 16'hd567;
	#20
	A = 16'h3d2a;
	B = 16'h3aa0;
	ans_a = 16'hd556;
	#20
	A = 16'hbffb;
	B = 16'hb9eb;
	ans_a = 16'hd53e;
	#20
	A = 16'h3f71;
	B = 16'hb7a9;
	ans_a = 16'hd54c;
	#20
	A = 16'h39e8;
	B = 16'hbaa6;
	ans_a = 16'hd556;
	#20
	A = 16'h38ae;
	B = 16'hbdf7;
	ans_a = 16'hd564;
	#20
	A = 16'hbffc;
	B = 16'h3e2e;
	ans_a = 16'hd595;
	#20
	A = 16'hb977;
	B = 16'h3458;
	ans_a = 16'hd598;
	#20
	A = 16'hb8b8;
	B = 16'hbf30;
	ans_a = 16'hd587;
	#20
	A = 16'hae46;
	B = 16'h3ffa;
	ans_a = 16'hd58a;
	#20
	A = 16'h3463;
	B = 16'hb5ba;
	ans_a = 16'hd58c;
	#20
	A = 16'hbc68;
	B = 16'h3ceb;
	ans_a = 16'hd5a2;
	#20
	A = 16'h380a;
	B = 16'h3f7b;
	ans_a = 16'hd593;
	#20
	A = 16'hb5f5;
	B = 16'hb782;
	ans_a = 16'hd590;
	#20
	A = 16'hbffb;
	B = 16'h3ba7;
	ans_a = 16'hd5af;
	#20
	A = 16'h3a7c;
	B = 16'hbe86;
	ans_a = 16'hd5c4;
	#20
	A = 16'h382d;
	B = 16'h3cdd;
	ans_a = 16'hd5ba;
	#20
	A = 16'hb55c;
	B = 16'hbfe9;
	ans_a = 16'hd5af;
	#20
	A = 16'hbc04;
	B = 16'h370c;
	ans_a = 16'hd5b6;
	#20
	A = 16'h3e56;
	B = 16'h3c06;
	ans_a = 16'hd59c;
	#20
	A = 16'hb741;
	B = 16'hb044;
	ans_a = 16'hd59b;
	#20
	A = 16'h38a0;
	B = 16'h38e0;
	ans_a = 16'hd595;
	#20
	A = 16'hb834;
	B = 16'hbe1e;
	ans_a = 16'hd588;
	#20
	A = 16'hbced;
	B = 16'h394d;
	ans_a = 16'hd595;
	#20
	A = 16'h3e79;
	B = 16'h2e99;
	ans_a = 16'hd592;
	#20
	A = 16'h3474;
	B = 16'hbcb4;
	ans_a = 16'hd597;
	#20
	A = 16'h3397;
	B = 16'h3e4e;
	ans_a = 16'hd591;
	#20
	A = 16'hbed8;
	B = 16'hbf44;
	ans_a = 16'hd55f;
	#20
	A = 16'h3c06;
	B = 16'hbd62;
	ans_a = 16'hd575;
	#20
	A = 16'hbf82;
	B = 16'hbf29;
	ans_a = 16'hd53f;
	#20
	A = 16'hbe65;
	B = 16'h3d4e;
	ans_a = 16'hd561;
	#20
	A = 16'h3fa7;
	B = 16'hb1da;
	ans_a = 16'hd567;
	#20
	A = 16'hb79e;
	B = 16'h3e45;
	ans_a = 16'hd573;
	#20
	A = 16'hb25f;
	B = 16'h2805;
	ans_a = 16'hd573;
	#20
	A = 16'hbc15;
	B = 16'h253d;
	ans_a = 16'hd573;
	#20
	A = 16'h3e2d;
	B = 16'h3792;
	ans_a = 16'hd567;
	#20
	A = 16'hbeba;
	B = 16'h393d;
	ans_a = 16'hd579;
	#20
	A = 16'h3ef8;
	B = 16'hbc81;
	ans_a = 16'hd598;
	#20
	A = 16'hbdac;
	B = 16'hbb72;
	ans_a = 16'hd583;
	#20
	A = 16'h37a4;
	B = 16'h33f4;
	ans_a = 16'hd581;
	#20
	A = 16'h3682;
	B = 16'h3cbd;
	ans_a = 16'hd579;
	#20
	A = 16'h35d1;
	B = 16'hbf19;
	ans_a = 16'hd583;
	#20
	A = 16'hb76f;
	B = 16'hbff6;
	ans_a = 16'hd574;
	#20
	A = 16'h3c66;
	B = 16'hbc7c;
	ans_a = 16'hd588;
	#20
	A = 16'hbc02;
	B = 16'hbde0;
	ans_a = 16'hd570;
	#20
	A = 16'ha3f7;
	B = 16'h3e36;
	ans_a = 16'hd570;
	#20
	A = 16'h37a9;
	B = 16'hb8cc;
	ans_a = 16'hd575;
	#20
	A = 16'h3833;
	B = 16'hadd5;
	ans_a = 16'hd576;
	#20
	A = 16'h3e62;
	B = 16'h3c8e;
	ans_a = 16'hd559;
	#20
	A = 16'h3433;
	B = 16'hba84;
	ans_a = 16'hd55c;
	#20
	A = 16'hb3c0;
	B = 16'h384b;
	ans_a = 16'hd55e;
	#20
	A = 16'h3c42;
	B = 16'hbcb0;
	ans_a = 16'hd572;
	#20
	A = 16'h3bff;
	B = 16'hbe52;
	ans_a = 16'hd58b;
	#20
	A = 16'hbdff;
	B = 16'ha603;
	ans_a = 16'hd58a;
	#20
	A = 16'h3d88;
	B = 16'hb8d6;
	ans_a = 16'hd597;
	#20
	A = 16'hbd02;
	B = 16'h3cdd;
	ans_a = 16'hd5af;
	#20
	A = 16'h3c6a;
	B = 16'hbc8d;
	ans_a = 16'hd5c3;
	#20
	A = 16'h39c3;
	B = 16'hb555;
	ans_a = 16'hd5c7;
	#20
	A = 16'h3bc6;
	B = 16'hb55a;
	ans_a = 16'hd5cc;
	#20
	A = 16'h3e92;
	B = 16'h36fe;
	ans_a = 16'hd5c1;
	#20
	A = 16'h3c8d;
	B = 16'h39b4;
	ans_a = 16'hd5b4;
	#20
	A = 16'hba62;
	B = 16'hb95c;
	ans_a = 16'hd5ab;
	#20
	A = 16'hb5b5;
	B = 16'h3d94;
	ans_a = 16'hd5b3;
	#20
	A = 16'h3d4f;
	B = 16'h3695;
	ans_a = 16'hd5aa;
	#20
	A = 16'hbeeb;
	B = 16'hba25;
	ans_a = 16'hd595;
	#20
	A = 16'h3f0a;
	B = 16'h3ec2;
	ans_a = 16'hd565;
	#20
	A = 16'h3e53;
	B = 16'hbff9;
	ans_a = 16'hd597;
	#20
	A = 16'hb635;
	B = 16'hbf51;
	ans_a = 16'hd58c;
	#20
	A = 16'hbbd0;
	B = 16'hbce7;
	ans_a = 16'hd579;
	#20
	A = 16'hbed2;
	B = 16'h356c;
	ans_a = 16'hd582;
	#20
	A = 16'h3d1f;
	B = 16'h3e54;
	ans_a = 16'hd562;
	#20
	A = 16'hbbff;
	B = 16'hb89d;
	ans_a = 16'hd559;
	#20
	A = 16'h3b40;
	B = 16'hb62e;
	ans_a = 16'hd55f;
	#20
	A = 16'h3ab2;
	B = 16'h3aa4;
	ans_a = 16'hd554;
	#20
	A = 16'hbc62;
	B = 16'h3330;
	ans_a = 16'hd558;
	#20
	A = 16'hb9ab;
	B = 16'h3c1e;
	ans_a = 16'hd564;
	#20
	A = 16'hb6bf;
	B = 16'hb90f;
	ans_a = 16'hd560;
	#20
	A = 16'hb094;
	B = 16'h3a2a;
	ans_a = 16'hd562;
	#20
	A = 16'hb8cf;
	B = 16'h354b;
	ans_a = 16'hd565;
	#20
	A = 16'hb9c7;
	B = 16'h2d51;
	ans_a = 16'hd566;
	#20
	A = 16'h3ef5;
	B = 16'h3cc1;
	ans_a = 16'hd545;
	#20
	A = 16'h3b40;
	B = 16'hbc58;
	ans_a = 16'hd555;
	#20
	A = 16'hba17;
	B = 16'h3817;
	ans_a = 16'hd55b;
	#20
	A = 16'h3a8d;
	B = 16'hb4fa;
	ans_a = 16'hd55f;
	#20
	A = 16'h38c4;
	B = 16'h385d;
	ans_a = 16'hd55a;
	#20
	A = 16'h3c5a;
	B = 16'haef6;
	ans_a = 16'hd55c;
	#20
	A = 16'h3ef9;
	B = 16'h3483;
	ans_a = 16'hd554;
	#20
	A = 16'hbc3a;
	B = 16'h3f25;
	ans_a = 16'hd572;
	#20
	A = 16'hbf46;
	B = 16'h3c04;
	ans_a = 16'hd58f;
	#20
	A = 16'hbfe7;
	B = 16'hbfad;
	ans_a = 16'hd552;
	#20
	A = 16'h3ede;
	B = 16'h3aac;
	ans_a = 16'hd53b;
	#20
	A = 16'hb9c2;
	B = 16'hb55b;
	ans_a = 16'hd537;
	#20
	A = 16'hbf66;
	B = 16'h2e6c;
	ans_a = 16'hd53a;
	#20
	A = 16'hbd54;
	B = 16'hb751;
	ans_a = 16'hd530;
	#20
	A = 16'hb725;
	B = 16'h38c0;
	ans_a = 16'hd534;
	#20
	A = 16'h3ce5;
	B = 16'hbdc3;
	ans_a = 16'hd550;
	#20
	A = 16'hbc35;
	B = 16'hbf8b;
	ans_a = 16'hd530;
	#20
	A = 16'h3fca;
	B = 16'hbf86;
	ans_a = 16'hd56b;
	#20
	A = 16'ha4f0;
	B = 16'h378f;
	ans_a = 16'hd56b;
	#20
	A = 16'h3028;
	B = 16'hba42;
	ans_a = 16'hd56d;
	#20
	A = 16'hb909;
	B = 16'hbdcd;
	ans_a = 16'hd55e;
	#20
	A = 16'hb94d;
	B = 16'h38eb;
	ans_a = 16'hd565;
	#20
	A = 16'hbfc0;
	B = 16'hbada;
	ans_a = 16'hd54a;
	#20
	A = 16'hbe14;
	B = 16'hbe8e;
	ans_a = 16'hd522;
	#20
	A = 16'hbc2b;
	B = 16'h3e65;
	ans_a = 16'hd53d;
	#20
	A = 16'h37a7;
	B = 16'h3fba;
	ans_a = 16'hd52e;
	#20
	A = 16'h34f3;
	B = 16'h37ec;
	ans_a = 16'hd52c;
	#20
	A = 16'hb9bc;
	B = 16'h3a5c;
	ans_a = 16'hd535;
	#20
	A = 16'hbb06;
	B = 16'h2818;
	ans_a = 16'hd535;
	#20
	A = 16'hb648;
	B = 16'ha7ac;
	ans_a = 16'hd535;
	#20
	A = 16'hbb76;
	B = 16'hbf59;
	ans_a = 16'hd51a;
	#20
	A = 16'h3e4e;
	B = 16'hb54a;
	ans_a = 16'hd522;
	#20
	A = 16'hb86b;
	B = 16'hbce7;
	ans_a = 16'hd517;
	#20
	A = 16'hba64;
	B = 16'h3963;
	ans_a = 16'hd520;
	#20
	A = 16'h3c07;
	B = 16'h37c9;
	ans_a = 16'hd518;
	#20
	A = 16'hbc5a;
	B = 16'hb42d;
	ans_a = 16'hd513;
	#20
	A = 16'h3c19;
	B = 16'h38d2;
	ans_a = 16'hd509;
	#20
	A = 16'hbc58;
	B = 16'ha789;
	ans_a = 16'hd508;
	#20
	A = 16'hbfc9;
	B = 16'ha77f;
	ans_a = 16'hd507;
	#20
	A = 16'h39c6;
	B = 16'h313a;
	ans_a = 16'hd505;
	#20
	A = 16'haede;
	B = 16'h3d58;
	ans_a = 16'hd507;
	#20
	A = 16'hb825;
	B = 16'hbea0;
	ans_a = 16'hd4f9;
	#20
	A = 16'h3aa4;
	B = 16'hbde7;
	ans_a = 16'hd50d;
	#20
	A = 16'hb726;
	B = 16'h3a76;
	ans_a = 16'hd513;
	#20
	A = 16'h3c76;
	B = 16'hbc60;
	ans_a = 16'hd527;
	#20
	A = 16'hbde0;
	B = 16'h3765;
	ans_a = 16'hd532;
	#20
	A = 16'hb926;
	B = 16'h363d;
	ans_a = 16'hd536;
	#20
	A = 16'hbe1d;
	B = 16'h3927;
	ans_a = 16'hd546;
	#20
	A = 16'h3140;
	B = 16'h25ab;
	ans_a = 16'hd546;
	#20
	A = 16'hbd14;
	B = 16'hac9c;
	ans_a = 16'hd545;
	#20
	A = 16'hb50e;
	B = 16'h394c;
	ans_a = 16'hd548;
	#20
	A = 16'h3c56;
	B = 16'h328b;
	ans_a = 16'hd544;
	#20
	A = 16'hb753;
	B = 16'h32dd;
	ans_a = 16'hd546;
	#20
	A = 16'hbf13;
	B = 16'hbf5a;
	ans_a = 16'hd512;
	#20
	A = 16'hadbf;
	B = 16'h3c84;
	ans_a = 16'hd514;
	#20
	A = 16'hbdc6;
	B = 16'h3f92;
	ans_a = 16'hd540;
	#20
	A = 16'hbf8b;
	B = 16'h3c02;
	ans_a = 16'hd55e;
	#20
	A = 16'ha4da;
	B = 16'h3804;
	ans_a = 16'hd55e;
	#20
	A = 16'h3f1c;
	B = 16'h3bdb;
	ans_a = 16'hd542;
	#20
	A = 16'h3f66;
	B = 16'hbcd4;
	ans_a = 16'hd566;
	#20
	A = 16'h3e4d;
	B = 16'hbd0f;
	ans_a = 16'hd586;
	#20
	A = 16'h3993;
	B = 16'hb9d5;
	ans_a = 16'hd58e;
	#20
	A = 16'h2803;
	B = 16'h3e92;
	ans_a = 16'hd58d;
	#20
	A = 16'hb4ea;
	B = 16'hbd36;
	ans_a = 16'hd587;
	#20
	A = 16'hb4c0;
	B = 16'hab60;
	ans_a = 16'hd587;
	#20
	A = 16'h3b37;
	B = 16'h38af;
	ans_a = 16'hd57f;
	#20
	A = 16'hbf92;
	B = 16'h3c53;
	ans_a = 16'hd5a0;
	#20
	A = 16'hbd4a;
	B = 16'hb7f6;
	ans_a = 16'hd595;
	#20
	A = 16'hbf3b;
	B = 16'h389f;
	ans_a = 16'hd5a6;
	#20
	A = 16'hbcd6;
	B = 16'hbe2f;
	ans_a = 16'hd588;
	#20
	A = 16'h3aad;
	B = 16'h3fb6;
	ans_a = 16'hd56e;
	#20
	A = 16'had7f;
	B = 16'h3b5d;
	ans_a = 16'hd56f;
	#20
	A = 16'h3643;
	B = 16'h3de1;
	ans_a = 16'hd566;
	#20
	A = 16'hbd9d;
	B = 16'h3cb9;
	ans_a = 16'hd581;
	#20
	A = 16'hbde7;
	B = 16'h3d39;
	ans_a = 16'hd5a0;
	#20
	A = 16'h2e5d;
	B = 16'h3bcf;
	ans_a = 16'hd59e;
	#20
	A = 16'h3adf;
	B = 16'hb420;
	ans_a = 16'hd5a2;
	#20
	A = 16'hbdcc;
	B = 16'hbdd7;
	ans_a = 16'hd580;
	#20
	A = 16'hbe6f;
	B = 16'h3b81;
	ans_a = 16'hd598;
	#20
	A = 16'hbc76;
	B = 16'h3c1f;
	ans_a = 16'hd5aa;
	#20
	A = 16'h3f75;
	B = 16'h3719;
	ans_a = 16'hd59d;
	#20
	A = 16'h2dc8;
	B = 16'hbe09;
	ans_a = 16'hd59f;
	#20
	A = 16'h9df9;
	B = 16'hbbce;
	ans_a = 16'hd59f;
	#20
	A = 16'h3b92;
	B = 16'hbebe;
	ans_a = 16'hd5b9;
	#20
	A = 16'hbac7;
	B = 16'hb962;
	ans_a = 16'hd5b0;
	#20
	A = 16'h3c79;
	B = 16'h2f8a;
	ans_a = 16'hd5ae;
	#20
	A = 16'h3fc7;
	B = 16'h3ee8;
	ans_a = 16'hd578;
	#20
	A = 16'h2e41;
	B = 16'h3733;
	ans_a = 16'hd577;
	#20
	A = 16'h3749;
	B = 16'hbd44;
	ans_a = 16'hd581;
	#20
	A = 16'h349a;
	B = 16'hb94d;
	ans_a = 16'hd584;
	#20
	A = 16'hb741;
	B = 16'hb041;
	ans_a = 16'hd583;
	#20
	A = 16'hbf34;
	B = 16'hb031;
	ans_a = 16'hd57f;
	#20
	A = 16'h3e75;
	B = 16'h3b8b;
	ans_a = 16'hd567;
	#20
	A = 16'hbfd2;
	B = 16'h3f9d;
	ans_a = 16'hd5a3;
	#20
	A = 16'hbcd6;
	B = 16'h38df;
	ans_a = 16'hd5af;
	#20
	A = 16'h3f78;
	B = 16'h3c9e;
	ans_a = 16'hd58c;
	#20
	A = 16'h3832;
	B = 16'hb9fc;
	ans_a = 16'hd592;
	#20
	A = 16'hb102;
	B = 16'h3c67;
	ans_a = 16'hd595;
	#20
	A = 16'hbc6b;
	B = 16'h3ea1;
	ans_a = 16'hd5b2;
	#20
	A = 16'hbd94;
	B = 16'h3cf8;
	ans_a = 16'hd5ce;
	#20
	A = 16'hbf45;
	B = 16'h3c40;
	ans_a = 16'hd5ed;
	#20
	A = 16'hb9ca;
	B = 16'hbdc6;
	ans_a = 16'hd5dc;
	#20
	A = 16'h3d76;
	B = 16'h3a83;
	ans_a = 16'hd5ca;
	#20
	A = 16'h39c4;
	B = 16'hac6a;
	ans_a = 16'hd5cb;
	#20
	A = 16'h2f81;
	B = 16'h2e18;
	ans_a = 16'hd5cb;
	#20
	A = 16'h3e36;
	B = 16'hbfce;
	ans_a = 16'hd5fb;
	#20
	A = 16'h3a68;
	B = 16'hb754;
	ans_a = 16'hd601;
	#20
	A = 16'hbcb5;
	B = 16'h3814;
	ans_a = 16'hd60b;
	#20
	A = 16'h3d51;
	B = 16'h3e38;
	ans_a = 16'hd5ea;
	#20
	A = 16'hbcb3;
	B = 16'h3297;
	ans_a = 16'hd5ee;
	#20
	A = 16'h3b46;
	B = 16'hb6d7;
	ans_a = 16'hd5f4;
	#20
	A = 16'h3e33;
	B = 16'hb67b;
	ans_a = 16'hd5fe;
	#20
	A = 16'hbf28;
	B = 16'h3cd2;
	ans_a = 16'hd620;
	#20
	A = 16'hb112;
	B = 16'h3461;
	ans_a = 16'hd621;
	#20
	A = 16'h2c81;
	B = 16'hbf53;
	ans_a = 16'hd623;
	#20
	A = 16'h3324;
	B = 16'hb57b;
	ans_a = 16'hd624;
	#20
	A = 16'hbe14;
	B = 16'hbfd9;
	ans_a = 16'hd5f4;
	#20
	A = 16'h3594;
	B = 16'hb048;
	ans_a = 16'hd5f5;
	#20
	A = 16'h3f08;
	B = 16'hb8d3;
	ans_a = 16'hd606;
	#20
	A = 16'had52;
	B = 16'hb704;
	ans_a = 16'hd605;
	#20
	A = 16'hb44e;
	B = 16'h336c;
	ans_a = 16'hd606;
	#20
	A = 16'hbe12;
	B = 16'hadd5;
	ans_a = 16'hd604;
	#20
	A = 16'h363c;
	B = 16'hbf73;
	ans_a = 16'hd610;
	#20
	A = 16'hbdbb;
	B = 16'h3ddb;
	ans_a = 16'hd632;
	#20
	A = 16'h2cd8;
	B = 16'h3959;
	ans_a = 16'hd631;
	#20
	A = 16'h3ee7;
	B = 16'hb994;
	ans_a = 16'hd644;
	#20
	A = 16'hbe44;
	B = 16'ha5c6;
	ans_a = 16'hd643;
	#20
	A = 16'hb613;
	B = 16'hb788;
	ans_a = 16'hd640;
	#20
	A = 16'h38c6;
	B = 16'h349d;
	ans_a = 16'hd63d;
	#20
	A = 16'hbb27;
	B = 16'h3346;
	ans_a = 16'hd640;
	#20
	A = 16'hbe18;
	B = 16'h3998;
	ans_a = 16'hd651;
	#20
	A = 16'hbe0b;
	B = 16'hb356;
	ans_a = 16'hd64b;
	#20
	A = 16'hbd20;
	B = 16'hbed0;
	ans_a = 16'hd628;
	#20
	A = 16'h3ff2;
	B = 16'hbd52;
	ans_a = 16'hd652;
	#20
	A = 16'hb5ce;
	B = 16'h3b9d;
	ans_a = 16'hd658;
	#20
	A = 16'hbf8c;
	B = 16'hbf71;
	ans_a = 16'hd620;
	#20
	A = 16'h3858;
	B = 16'hbdd1;
	ans_a = 16'hd62d;
	#20
	A = 16'hbbc9;
	B = 16'h2a93;
	ans_a = 16'hd62e;
	#20
	A = 16'hb9e3;
	B = 16'h3e38;
	ans_a = 16'hd640;
	#20
	A = 16'hbb47;
	B = 16'hbdd8;
	ans_a = 16'hd62b;
	#20
	A = 16'h3fc1;
	B = 16'hb870;
	ans_a = 16'hd63c;
	#20
	A = 16'hb403;
	B = 16'h3ca7;
	ans_a = 16'hd641;
	#20
	A = 16'hb766;
	B = 16'h2b13;
	ans_a = 16'hd641;
	#20
	A = 16'hbb6e;
	B = 16'hbf6c;
	ans_a = 16'hd625;
	#20
	A = 16'h3af7;
	B = 16'h3bfb;
	ans_a = 16'hd617;
	#20
	A = 16'hbad2;
	B = 16'hbc7b;
	ans_a = 16'hd608;
	#20
	A = 16'hbc75;
	B = 16'h3915;
	ans_a = 16'hd613;
	#20
	A = 16'hb74d;
	B = 16'h3c4e;
	ans_a = 16'hd61b;
	#20
	A = 16'h3a57;
	B = 16'hbd46;
	ans_a = 16'hd62c;
	#20
	A = 16'hbd55;
	B = 16'h39ec;
	ans_a = 16'hd63c;
	#20
	A = 16'hbd8c;
	B = 16'h3da8;
	ans_a = 16'hd65b;
	#20
	A = 16'hbd0a;
	B = 16'hb806;
	ans_a = 16'hd651;
	#20
	A = 16'hbb07;
	B = 16'h3a27;
	ans_a = 16'hd65c;
	#20
	A = 16'hbf83;
	B = 16'hbd7e;
	ans_a = 16'hd633;
	#20
	A = 16'h3d13;
	B = 16'hb80d;
	ans_a = 16'hd63d;
	#20
	A = 16'hbf42;
	B = 16'h3c83;
	ans_a = 16'hd65e;
	#20
	A = 16'h3efa;
	B = 16'h3624;
	ans_a = 16'hd653;
	#20
	A = 16'h3fe7;
	B = 16'h3ca8;
	ans_a = 16'hd62e;
	#20
	A = 16'hbc01;
	B = 16'hbe78;
	ans_a = 16'hd614;
	#20
	A = 16'h3e54;
	B = 16'h3daa;
	ans_a = 16'hd5f0;
	#20
	A = 16'hb40f;
	B = 16'hbfa9;
	ans_a = 16'hd5e8;
	#20
	A = 16'h3fae;
	B = 16'hbf64;
	ans_a = 16'hd621;
	#20
	A = 16'h3b1f;
	B = 16'hbe99;
	ans_a = 16'hd638;
	#20
	A = 16'h3f79;
	B = 16'h388c;
	ans_a = 16'hd627;
	#20
	A = 16'h366d;
	B = 16'h3adb;
	ans_a = 16'hd621;
	#20
	A = 16'hbd17;
	B = 16'h3ea7;
	ans_a = 16'hd643;
	#20
	A = 16'hbd7f;
	B = 16'hbb95;
	ans_a = 16'hd62e;
	#20
	A = 16'hb989;
	B = 16'h3c94;
	ans_a = 16'hd63b;
	#20
	A = 16'hb791;
	B = 16'hbe73;
	ans_a = 16'hd62f;
	#20
	A = 16'hbd94;
	B = 16'hbcd9;
	ans_a = 16'hd614;
	#20
	A = 16'habee;
	B = 16'hbd34;
	ans_a = 16'hd613;
	#20
	A = 16'h39db;
	B = 16'hbb7f;
	ans_a = 16'hd61e;
	#20
	A = 16'h3d70;
	B = 16'h3fd3;
	ans_a = 16'hd5f3;
	#20
	A = 16'h3553;
	B = 16'h3c55;
	ans_a = 16'hd5ed;
	#20
	A = 16'h3ba4;
	B = 16'h37c2;
	ans_a = 16'hd5e6;
	#20
	A = 16'h3e87;
	B = 16'h38db;
	ans_a = 16'hd5d6;
	#20
	A = 16'hb568;
	B = 16'h3ec9;
	ans_a = 16'hd5df;
	#20
	A = 16'h3826;
	B = 16'h3e3b;
	ans_a = 16'hd5d2;
	#20
	A = 16'h3ed5;
	B = 16'h3f41;
	ans_a = 16'hd5a0;
	#20
	A = 16'hbc07;
	B = 16'hbc48;
	ans_a = 16'hd58f;
	#20
	A = 16'hbcde;
	B = 16'h3dbb;
	ans_a = 16'hd5ab;
	#20
	A = 16'h3baf;
	B = 16'h391f;
	ans_a = 16'hd5a1;
	#20
	A = 16'h3876;
	B = 16'h3e28;
	ans_a = 16'hd593;
	#20
	A = 16'h3a9a;
	B = 16'hbe09;
	ans_a = 16'hd5a7;
	#20
	A = 16'hbc57;
	B = 16'hbcb0;
	ans_a = 16'hd593;
	#20
	A = 16'h3c6e;
	B = 16'hbe93;
	ans_a = 16'hd5b0;
	#20
	A = 16'h3c6c;
	B = 16'h311a;
	ans_a = 16'hd5ad;
	#20
	A = 16'hbb8d;
	B = 16'h3d15;
	ans_a = 16'hd5c0;
	#20
	A = 16'h35e6;
	B = 16'hb50b;
	ans_a = 16'hd5c2;
	#20
	A = 16'hbe93;
	B = 16'hb5e1;
	ans_a = 16'hd5b8;
	#20
	A = 16'h3cfa;
	B = 16'hb9fd;
	ans_a = 16'hd5c7;
	#20
	A = 16'h3d5d;
	B = 16'h3846;
	ans_a = 16'hd5bc;
	#20
	A = 16'h3da1;
	B = 16'hb8a8;
	ans_a = 16'hd5c9;
	#20
	A = 16'hbf8a;
	B = 16'hb4ad;
	ans_a = 16'hd5c0;
	#20
	A = 16'hbb29;
	B = 16'hbdcd;
	ans_a = 16'hd5ab;
	#20
	A = 16'hb93c;
	B = 16'hba6e;
	ans_a = 16'hd5a3;
	#20
	A = 16'hbe64;
	B = 16'hbaaf;
	ans_a = 16'hd58e;
	#20
	A = 16'hb948;
	B = 16'hbe80;
	ans_a = 16'hd57d;
	#20
	A = 16'h3ec0;
	B = 16'h3c62;
	ans_a = 16'hd55f;
	#20
	A = 16'hb7a8;
	B = 16'h39c6;
	ans_a = 16'hd565;
	#20
	A = 16'h3d8e;
	B = 16'h3fc9;
	ans_a = 16'hd53a;
	#20
	A = 16'hbf2d;
	B = 16'hbfdb;
	ans_a = 16'hd502;
	#20
	A = 16'h3efe;
	B = 16'h38dd;
	ans_a = 16'hd4f1;
	#20
	A = 16'h3e14;
	B = 16'h2e51;
	ans_a = 16'hd4ef;
	#20
	A = 16'h3c94;
	B = 16'h3ae0;
	ans_a = 16'hd4df;
	#20
	A = 16'h3d8a;
	B = 16'h3d34;
	ans_a = 16'hd4c2;
	#20
	A = 16'hbd74;
	B = 16'hb562;
	ans_a = 16'hd4bb;
	#20
	A = 16'h3d36;
	B = 16'hbc1b;
	ans_a = 16'hd4d0;
	#20
	A = 16'hb967;
	B = 16'hb008;
	ans_a = 16'hd4cf;
	#20
	A = 16'h3a77;
	B = 16'haeeb;
	ans_a = 16'hd4d0;
	#20
	A = 16'h3e6f;
	B = 16'h3da5;
	ans_a = 16'hd4ac;
	#20
	A = 16'h3969;
	B = 16'hbbc9;
	ans_a = 16'hd4b7;
	#20
	A = 16'hbc1d;
	B = 16'hb68d;
	ans_a = 16'hd4b0;
	#20
	A = 16'hb453;
	B = 16'h3d65;
	ans_a = 16'hd4b6;
	#20
	A = 16'h3b6d;
	B = 16'h2080;
	ans_a = 16'hd4b6;
	#20
	A = 16'h3552;
	B = 16'h3eac;
	ans_a = 16'hd4ad;
	#20
	A = 16'hbc06;
	B = 16'h3f7c;
	ans_a = 16'hd4cb;
	#20
	A = 16'h3f42;
	B = 16'h387c;
	ans_a = 16'hd4bb;
	#20
	A = 16'h3f14;
	B = 16'hb884;
	ans_a = 16'hd4cb;
	#20
	A = 16'h34b3;
	B = 16'h3f95;
	ans_a = 16'hd4c2;
	#20
	A = 16'h3dbf;
	B = 16'hb8d8;
	ans_a = 16'hd4d0;
	#20
	A = 16'h3893;
	B = 16'hbe82;
	ans_a = 16'hd4df;
	#20
	A = 16'hb733;
	B = 16'hbf18;
	ans_a = 16'hd4d2;
	#20
	A = 16'h3dca;
	B = 16'h388c;
	ans_a = 16'hd4c5;
	#20
	A = 16'hb5fb;
	B = 16'hbd69;
	ans_a = 16'hd4bd;
	#20
	A = 16'h343e;
	B = 16'hbd3f;
	ans_a = 16'hd4c3;
	#20
	A = 16'hbe0e;
	B = 16'h3808;
	ans_a = 16'hd4cf;
	#20
	A = 16'hb834;
	B = 16'h3342;
	ans_a = 16'hd4d1;
	#20
	A = 16'h35f1;
	B = 16'hbcd4;
	ans_a = 16'hd4d8;
	#20
	A = 16'hbc0b;
	B = 16'hafad;
	ans_a = 16'hd4d6;
	#20
	A = 16'h3e98;
	B = 16'hb2ea;
	ans_a = 16'hd4dc;
	#20
	A = 16'hbfde;
	B = 16'hb474;
	ans_a = 16'hd4d3;
	#20
	A = 16'h3677;
	B = 16'h3f0d;
	ans_a = 16'hd4c8;
	#20
	A = 16'h2ec5;
	B = 16'hbec6;
	ans_a = 16'hd4cb;
	#20
	A = 16'h3cf3;
	B = 16'h3fdd;
	ans_a = 16'hd4a4;
	#20
	A = 16'hbc5a;
	B = 16'h3f9d;
	ans_a = 16'hd4c5;
	#20
	A = 16'hbc72;
	B = 16'hb6ca;
	ans_a = 16'hd4bd;
	#20
	A = 16'h334e;
	B = 16'h3c83;
	ans_a = 16'hd4b9;
	#20
	A = 16'h3ad1;
	B = 16'h3ee0;
	ans_a = 16'hd4a2;
	#20
	A = 16'h3e4a;
	B = 16'h3df5;
	ans_a = 16'hd47d;
	#20
	A = 16'hbf0d;
	B = 16'hb6e8;
	ans_a = 16'hd471;
	#20
	A = 16'hbdf3;
	B = 16'hbb30;
	ans_a = 16'hd45c;
	#20
	A = 16'h3512;
	B = 16'h31f8;
	ans_a = 16'hd45b;
	#20
	A = 16'hbc58;
	B = 16'hbcb7;
	ans_a = 16'hd447;
	#20
	A = 16'h38ec;
	B = 16'hb5c9;
	ans_a = 16'hd44b;
	#20
	A = 16'h3d40;
	B = 16'hb2f8;
	ans_a = 16'hd450;
	#20
	A = 16'hbf76;
	B = 16'hba9e;
	ans_a = 16'hd437;
	#20
	A = 16'h3999;
	B = 16'h3dd5;
	ans_a = 16'hd427;
	#20
	A = 16'hb352;
	B = 16'hbd31;
	ans_a = 16'hd422;
	#20
	A = 16'hb7f9;
	B = 16'hbf01;
	ans_a = 16'hd414;
	#20
	A = 16'h33d6;
	B = 16'h3593;
	ans_a = 16'hd413;
	#20
	A = 16'hb60e;
	B = 16'hbe3b;
	ans_a = 16'hd40a;
	#20
	A = 16'hbfde;
	B = 16'h2e97;
	ans_a = 16'hd40d;
	#20
	A = 16'hbf31;
	B = 16'hb708;
	ans_a = 16'hd400;
	#20
	A = 16'hb4ba;
	B = 16'h3c97;
	ans_a = 16'hd405;
	#20
	A = 16'h3073;
	B = 16'h2eb2;
	ans_a = 16'hd405;
	#20
	A = 16'h3e7c;
	B = 16'hbec8;
	ans_a = 16'hd431;
	#20
	A = 16'hbf2e;
	B = 16'h3a33;
	ans_a = 16'hd447;
	#20
	A = 16'hb545;
	B = 16'h3f34;
	ans_a = 16'hd450;
	#20
	A = 16'h3934;
	B = 16'h3abc;
	ans_a = 16'hd447;
	#20
	A = 16'h2ea2;
	B = 16'h37d4;
	ans_a = 16'hd446;
	#20
	A = 16'h3e49;
	B = 16'hbfee;
	ans_a = 16'hd478;
	#20
	A = 16'hbfde;
	B = 16'h349f;
	ans_a = 16'hd481;
	#20
	A = 16'h3e44;
	B = 16'hbd19;
	ans_a = 16'hd4a1;
	#20
	A = 16'h3ba6;
	B = 16'h3f1d;
	ans_a = 16'hd486;
	#20
	A = 16'h290d;
	B = 16'h3e79;
	ans_a = 16'hd485;
	#20
	A = 16'h2aed;
	B = 16'h2d59;
	ans_a = 16'hd485;
	#20
	A = 16'h274a;
	B = 16'h2e51;
	ans_a = 16'hd485;
	#20
	A = 16'hb650;
	B = 16'h3fb3;
	ans_a = 16'hd491;
	#20
	A = 16'ha1a6;
	B = 16'h3cd4;
	ans_a = 16'hd491;
	#20
	A = 16'h3ff8;
	B = 16'h3f7b;
	ans_a = 16'hd455;
	#20
	A = 16'hbf3d;
	B = 16'hbc61;
	ans_a = 16'hd435;
	#20
	A = 16'hbe57;
	B = 16'hb9f1;
	ans_a = 16'hd422;
	#20
	A = 16'hbd6e;
	B = 16'hbf6e;
	ans_a = 16'hd3f3;
	#20
	A = 16'hbf3e;
	B = 16'h3f70;
	ans_a = 16'hd42f;
	#20
	A = 16'hbcb7;
	B = 16'h2e30;
	ans_a = 16'hd431;
	#20
	A = 16'hbc23;
	B = 16'hbae2;
	ans_a = 16'hd423;
	#20
	A = 16'h3bf0;
	B = 16'hbc22;
	ans_a = 16'hd433;
	#20
	A = 16'hbbc8;
	B = 16'hbfc0;
	ans_a = 16'hd415;
	#20
	A = 16'h3a3b;
	B = 16'hb846;
	ans_a = 16'hd41c;
	#20
	A = 16'hbcd4;
	B = 16'h3fe7;
	ans_a = 16'hd442;
	#20
	A = 16'ha99b;
	B = 16'h3bb3;
	ans_a = 16'hd443;
	#20
	A = 16'hb1af;
	B = 16'h2bd2;
	ans_a = 16'hd443;
	#20
	A = 16'h3a0a;
	B = 16'h35d2;
	ans_a = 16'hd43f;
	#20
	A = 16'h3fdf;
	B = 16'h3b52;
	ans_a = 16'hd422;
	#20
	A = 16'h3f68;
	B = 16'h3ca3;
	ans_a = 16'hd3ff;
	#20
	A = 16'h320a;
	B = 16'hbcb3;
	ans_a = 16'hd403;
	#20
	A = 16'hb897;
	B = 16'h3db6;
	ans_a = 16'hd410;
	#20
	A = 16'h315c;
	B = 16'hbc70;
	ans_a = 16'hd413;
	#20
	A = 16'hbde6;
	B = 16'hbcbb;
	ans_a = 16'hd3ee;
	#20
	A = 16'h3f59;
	B = 16'h3f33;
	ans_a = 16'hd384;
	#20
	A = 16'h3c39;
	B = 16'h379e;
	ans_a = 16'hd374;
	#20
	A = 16'hb770;
	B = 16'h2ad3;
	ans_a = 16'hd375;
	#20
	A = 16'h3d25;
	B = 16'hbdaa;
	ans_a = 16'hd3af;
	#20
	A = 16'h3f2f;
	B = 16'hbb57;
	ans_a = 16'hd3e4;
	#20
	A = 16'hbb0c;
	B = 16'hbe76;
	ans_a = 16'hd3b6;
	#20
	A = 16'h3f91;
	B = 16'h3a52;
	ans_a = 16'hd386;
	#20
	A = 16'h3ebf;
	B = 16'h31d8;
	ans_a = 16'hd37c;
	#20
	A = 16'h3fa3;
	B = 16'hbff6;
	ans_a = 16'hd3f6;
	#20
	A = 16'hbd68;
	B = 16'h355a;
	ans_a = 16'hd402;
	#20
	A = 16'hbb28;
	B = 16'hbec5;
	ans_a = 16'hd3d4;
	#20
	A = 16'h3cf0;
	B = 16'h3ce4;
	ans_a = 16'hd3a4;
	#20
	A = 16'ha0ad;
	B = 16'h3ade;
	ans_a = 16'hd3a4;
	#20
	A = 16'hbe97;
	B = 16'hbf08;
	ans_a = 16'hd347;
	#20
	A = 16'hbc5e;
	B = 16'hbc2f;
	ans_a = 16'hd322;
	#20
	A = 16'hbca0;
	B = 16'h3e37;
	ans_a = 16'hd35c;
	#20
	A = 16'hb90d;
	B = 16'hbf3c;
	ans_a = 16'hd337;
	#20
	A = 16'h30d4;
	B = 16'hb889;
	ans_a = 16'hd33a;
	#20
	A = 16'h3e47;
	B = 16'hbe97;
	ans_a = 16'hd38d;
	#20
	A = 16'h3d58;
	B = 16'hbcc6;
	ans_a = 16'hd3c0;
	#20
	A = 16'h3d86;
	B = 16'hbd98;
	ans_a = 16'hd3fe;
	#20
	A = 16'h3c0b;
	B = 16'hbee9;
	ans_a = 16'hd41b;
	#20
	A = 16'hb989;
	B = 16'h3cfe;
	ans_a = 16'hd429;
	#20
	A = 16'hb963;
	B = 16'hbcaa;
	ans_a = 16'hd41c;
	#20
	A = 16'h3a4c;
	B = 16'hb3d1;
	ans_a = 16'hd41f;
	#20
	A = 16'hbc59;
	B = 16'ha016;
	ans_a = 16'hd41f;
	#20
	A = 16'hb81f;
	B = 16'hbcbf;
	ans_a = 16'hd415;
	#20
	A = 16'h3c8d;
	B = 16'h3e4f;
	ans_a = 16'hd3f1;
	#20
	A = 16'h333e;
	B = 16'hbc24;
	ans_a = 16'hd3f8;
	#20
	A = 16'h3a24;
	B = 16'h34bc;
	ans_a = 16'hd3f1;
	#20
	A = 16'hbcf4;
	B = 16'hbfdd;
	ans_a = 16'hd3a3;
	#20
	A = 16'h3792;
	B = 16'h3020;
	ans_a = 16'hd3a1;
	#20
	A = 16'h3af7;
	B = 16'hb053;
	ans_a = 16'hd3a5;
	#20
	A = 16'h3b3d;
	B = 16'h3d83;
	ans_a = 16'hd37d;
	#20
	A = 16'hb7aa;
	B = 16'h3b08;
	ans_a = 16'hd38a;
	#20
	A = 16'h3885;
	B = 16'h3c3f;
	ans_a = 16'hd377;
	#20
	A = 16'h3be9;
	B = 16'hbe18;
	ans_a = 16'hd3a7;
	#20
	A = 16'h3ec2;
	B = 16'hbe00;
	ans_a = 16'hd3f8;
	#20
	A = 16'h33c1;
	B = 16'hbd95;
	ans_a = 16'hd401;
	#20
	A = 16'h3f2d;
	B = 16'h3e28;
	ans_a = 16'hd3aa;
	#20
	A = 16'hbbb3;
	B = 16'hbcf2;
	ans_a = 16'hd384;
	#20
	A = 16'h3db4;
	B = 16'h3d0a;
	ans_a = 16'hd34b;
	#20
	A = 16'h3e72;
	B = 16'hbed3;
	ans_a = 16'hd3a3;
	#20
	A = 16'hb806;
	B = 16'hbf55;
	ans_a = 16'hd386;
	#20
	A = 16'hb968;
	B = 16'h3172;
	ans_a = 16'hd38a;
	#20
	A = 16'h3c2f;
	B = 16'hb66e;
	ans_a = 16'hd397;
	#20
	A = 16'hbe7d;
	B = 16'h37f4;
	ans_a = 16'hd3b1;
	#20
	A = 16'hbe64;
	B = 16'h3c1e;
	ans_a = 16'hd3e6;
	#20
	A = 16'hbd7a;
	B = 16'hb4d8;
	ans_a = 16'hd3d9;
	#20
	A = 16'h3672;
	B = 16'h39a0;
	ans_a = 16'hd3d0;
	#20
	A = 16'h3f77;
	B = 16'h3f6a;
	ans_a = 16'hd361;
	#20
	A = 16'hb9a8;
	B = 16'hbf67;
	ans_a = 16'hd337;
	#20
	A = 16'h3690;
	B = 16'hb949;
	ans_a = 16'hd340;
	#20
	A = 16'h3cdc;
	B = 16'h3fbb;
	ans_a = 16'hd2f5;
	#20
	A = 16'h38b0;
	B = 16'hbae1;
	ans_a = 16'hd305;
	#20
	A = 16'h3df6;
	B = 16'hbe18;
	ans_a = 16'hd34e;
	#20
	A = 16'hbb31;
	B = 16'h3cba;
	ans_a = 16'hd370;
	#20
	A = 16'hbd38;
	B = 16'hbb52;
	ans_a = 16'hd34a;
	#20
	A = 16'h36e2;
	B = 16'hbf8e;
	ans_a = 16'hd364;
	#20
	A = 16'hbc36;
	B = 16'hb0b5;
	ans_a = 16'hd35f;
	#20
	A = 16'h3841;
	B = 16'hbc81;
	ans_a = 16'hd372;
	#20
	A = 16'hb9b8;
	B = 16'hbdb5;
	ans_a = 16'hd351;
	#20
	A = 16'hbc56;
	B = 16'hbd1c;
	ans_a = 16'hd325;
	#20
	A = 16'ha27d;
	B = 16'h3d6a;
	ans_a = 16'hd326;
	#20
	A = 16'hb265;
	B = 16'hbd61;
	ans_a = 16'hd31d;
	#20
	A = 16'hbbd7;
	B = 16'h2e4a;
	ans_a = 16'hd320;
	#20
	A = 16'hb640;
	B = 16'hbe2f;
	ans_a = 16'hd30d;
	#20
	A = 16'h3d7c;
	B = 16'hbcef;
	ans_a = 16'hd343;
	#20
	A = 16'h322e;
	B = 16'h3250;
	ans_a = 16'hd342;
	#20
	A = 16'hb850;
	B = 16'h3780;
	ans_a = 16'hd34a;
	#20
	A = 16'h3d97;
	B = 16'h3ac0;
	ans_a = 16'hd324;
	#20
	A = 16'hb191;
	B = 16'h3cad;
	ans_a = 16'hd32b;
	#20
	A = 16'h3c32;
	B = 16'h1f8d;
	ans_a = 16'hd32b;
	#20
	A = 16'h3ce7;
	B = 16'h3461;
	ans_a = 16'hd320;
	#20
	A = 16'h3fa2;
	B = 16'hbb0b;
	ans_a = 16'hd356;
	#20
	A = 16'hbe8b;
	B = 16'h3a67;
	ans_a = 16'hd380;
	#20
	A = 16'h3f45;
	B = 16'hbd65;
	ans_a = 16'hd3ce;
	#20
	A = 16'hb3af;
	B = 16'hbeaa;
	ans_a = 16'hd3c1;
	#20
	A = 16'h3d71;
	B = 16'hb63f;
	ans_a = 16'hd3d2;
	#20
	A = 16'h3b82;
	B = 16'h3ad8;
	ans_a = 16'hd3b8;
	#20
	A = 16'h3dbf;
	B = 16'hb7d9;
	ans_a = 16'hd3cf;
	#20
	A = 16'h32ee;
	B = 16'h3bc6;
	ans_a = 16'hd3c8;
	#20
	A = 16'h3e08;
	B = 16'h3f65;
	ans_a = 16'hd36f;
	#20
	A = 16'h33b4;
	B = 16'h3c0a;
	ans_a = 16'hd367;
	#20
	A = 16'h3876;
	B = 16'hb276;
	ans_a = 16'hd36b;
	#20
	A = 16'hbcd6;
	B = 16'hb3b8;
	ans_a = 16'hd362;
	#20
	A = 16'hbf1d;
	B = 16'hbf39;
	ans_a = 16'hd2fb;
	#20
	A = 16'hbe6d;
	B = 16'hb189;
	ans_a = 16'hd2f2;
	#20
	A = 16'h3264;
	B = 16'h3c83;
	ans_a = 16'hd2eb;
	#20
	A = 16'h3f8b;
	B = 16'h3eb6;
	ans_a = 16'hd286;
	#20
	A = 16'h3cf3;
	B = 16'hbf7d;
	ans_a = 16'hd2d0;
	#20
	A = 16'hbc0a;
	B = 16'h328e;
	ans_a = 16'hd2d7;
	#20
	A = 16'h3ee6;
	B = 16'hb588;
	ans_a = 16'hd2ea;
	#20
	A = 16'h3cab;
	B = 16'hbc7d;
	ans_a = 16'hd314;
	#20
	A = 16'hb0cd;
	B = 16'hbfa8;
	ans_a = 16'hd30b;
	#20
	A = 16'h3a18;
	B = 16'h3830;
	ans_a = 16'hd2fe;
	#20
	A = 16'hb863;
	B = 16'hb41b;
	ans_a = 16'hd2f9;
	#20
	A = 16'ha19c;
	B = 16'hbf75;
	ans_a = 16'hd2f8;
	#20
	A = 16'h3e09;
	B = 16'hb5aa;
	ans_a = 16'hd309;
	#20
	A = 16'hbe6c;
	B = 16'hbc2b;
	ans_a = 16'hd2d3;
	#20
	A = 16'hb961;
	B = 16'hbee5;
	ans_a = 16'hd2ae;
	#20
	A = 16'hbf5d;
	B = 16'hbfa9;
	ans_a = 16'hd23d;
	#20
	A = 16'haf35;
	B = 16'hbd1d;
	ans_a = 16'hd238;
	#20
	A = 16'h3b92;
	B = 16'hbbf0;
	ans_a = 16'hd256;
	#20
	A = 16'h3c82;
	B = 16'h3a6c;
	ans_a = 16'hd239;
	#20
	A = 16'hb9cf;
	B = 16'hb889;
	ans_a = 16'hd22c;
	#20
	A = 16'h1c9b;
	B = 16'h3f1d;
	ans_a = 16'hd22c;
	#20
	A = 16'hbcfd;
	B = 16'hae4d;
	ans_a = 16'hd228;
	#20
	A = 16'h3c96;
	B = 16'h3d93;
	ans_a = 16'hd1f5;
	#20
	A = 16'h3dad;
	B = 16'h3f61;
	ans_a = 16'hd1a1;
	#20
	A = 16'h3a4a;
	B = 16'hbf67;
	ans_a = 16'hd1d0;
	#20
	A = 16'h2027;
	B = 16'hbfa5;
	ans_a = 16'hd1d0;
	#20
	A = 16'hbbeb;
	B = 16'hbe8b;
	ans_a = 16'hd19c;
	#20
	A = 16'h3bc2;
	B = 16'h3f95;
	ans_a = 16'hd161;
	#20
	A = 16'h31c0;
	B = 16'hb846;
	ans_a = 16'hd164;
	#20
	A = 16'hbe96;
	B = 16'h3fb8;
	ans_a = 16'hd1ca;
	#20
	A = 16'hbf97;
	B = 16'hbdf8;
	ans_a = 16'hd16f;
	#20
	A = 16'h3b31;
	B = 16'h35a2;
	ans_a = 16'hd165;
	#20
	A = 16'hbe35;
	B = 16'hb87b;
	ans_a = 16'hd149;
	#20
	A = 16'h394a;
	B = 16'hb02e;
	ans_a = 16'hd14c;
	#20
	A = 16'hbd61;
	B = 16'ha470;
	ans_a = 16'hd14b;
	#20
	A = 16'h3cc3;
	B = 16'hb9ad;
	ans_a = 16'hd166;
	#20
	A = 16'hb96e;
	B = 16'hb3c8;
	ans_a = 16'hd161;
	#20
	A = 16'h3eba;
	B = 16'h3e13;
	ans_a = 16'hd10f;
	#20
	A = 16'h3f20;
	B = 16'hb8e7;
	ans_a = 16'hd132;
	#20
	A = 16'h3a24;
	B = 16'hb82a;
	ans_a = 16'hd13f;
	#20
	A = 16'h3c9c;
	B = 16'h3e93;
	ans_a = 16'hd102;
	#20
	A = 16'h3ad3;
	B = 16'hbcd8;
	ans_a = 16'hd123;
	#20
	A = 16'h344d;
	B = 16'hbeca;
	ans_a = 16'hd132;
	#20
	A = 16'h3c9a;
	B = 16'h3ce7;
	ans_a = 16'hd105;
	#20
	A = 16'h3f38;
	B = 16'h3c3a;
	ans_a = 16'hd0c8;
	#20
	A = 16'hbed7;
	B = 16'h36c1;
	ans_a = 16'hd0df;
	#20
	A = 16'h3d27;
	B = 16'h38cb;
	ans_a = 16'hd0c6;
	#20
	A = 16'ha64a;
	B = 16'hb347;
	ans_a = 16'hd0c6;
	#20
	A = 16'hbd3e;
	B = 16'h39af;
	ans_a = 16'hd0e4;
	#20
	A = 16'h3c31;
	B = 16'hbe42;
	ans_a = 16'hd118;
	#20
	A = 16'hbcc0;
	B = 16'h336b;
	ans_a = 16'hd121;
	#20
	A = 16'hba28;
	B = 16'hbcf2;
	ans_a = 16'hd103;
	#20
	A = 16'hbc28;
	B = 16'hb8bb;
	ans_a = 16'hd0ef;
	#20
	A = 16'hb9c5;
	B = 16'h37c6;
	ans_a = 16'hd0fa;
	#20
	A = 16'h3e46;
	B = 16'hbd80;
	ans_a = 16'hd13f;
	#20
	A = 16'h3d1f;
	B = 16'hbf84;
	ans_a = 16'hd18c;
	#20
	A = 16'h3bdc;
	B = 16'hbc04;
	ans_a = 16'hd1ac;
	#20
	A = 16'h39fa;
	B = 16'had27;
	ans_a = 16'hd1ae;
	#20
	A = 16'h3f04;
	B = 16'h376f;
	ans_a = 16'hd194;
	#20
	A = 16'h3b55;
	B = 16'h3b6d;
	ans_a = 16'hd179;
	#20
	A = 16'h3fcb;
	B = 16'hb4c1;
	ans_a = 16'hd18c;
	#20
	A = 16'hbff2;
	B = 16'h3909;
	ans_a = 16'hd1b4;
	#20
	A = 16'hbc30;
	B = 16'hbf1c;
	ans_a = 16'hd178;
	#20
	A = 16'hbf4f;
	B = 16'h358a;
	ans_a = 16'hd18c;
	#20
	A = 16'hbc2e;
	B = 16'h3763;
	ans_a = 16'hd19b;
	#20
	A = 16'hb88d;
	B = 16'h3f89;
	ans_a = 16'hd1bd;
	#20
	A = 16'hafe4;
	B = 16'hbf7a;
	ans_a = 16'hd1b6;
	#20
	A = 16'hbe6b;
	B = 16'ha450;
	ans_a = 16'hd1b5;
	#20
	A = 16'h3e07;
	B = 16'h3add;
	ans_a = 16'hd18c;
	#20
	A = 16'h3103;
	B = 16'h3eb9;
	ans_a = 16'hd184;
	#20
	A = 16'h3c46;
	B = 16'h3ed0;
	ans_a = 16'hd14a;
	#20
	A = 16'h3dc1;
	B = 16'hb3a2;
	ans_a = 16'hd155;
	#20
	A = 16'h3beb;
	B = 16'h3cdb;
	ans_a = 16'hd12f;
	#20
	A = 16'hbc60;
	B = 16'hbc05;
	ans_a = 16'hd10c;
	#20
	A = 16'h391f;
	B = 16'hb859;
	ans_a = 16'hd117;
	#20
	A = 16'h3d21;
	B = 16'hbdf9;
	ans_a = 16'hd154;
	#20
	A = 16'h3fe8;
	B = 16'h3d2c;
	ans_a = 16'hd102;
	#20
	A = 16'h3685;
	B = 16'hbbf3;
	ans_a = 16'hd10f;
	#20
	A = 16'hbf70;
	B = 16'hb8f1;
	ans_a = 16'hd0ea;
	#20
	A = 16'hbb78;
	B = 16'hbd59;
	ans_a = 16'hd0c2;
	#20
	A = 16'hbb17;
	B = 16'hb6a9;
	ans_a = 16'hd0b6;
	#20
	A = 16'hb463;
	B = 16'hbf77;
	ans_a = 16'hd0a6;
	#20
	A = 16'h3e06;
	B = 16'hbf31;
	ans_a = 16'hd0fd;
	#20
	A = 16'hbdda;
	B = 16'h2c44;
	ans_a = 16'hd100;
	#20
	A = 16'h322a;
	B = 16'h3e24;
	ans_a = 16'hd0f7;
	#20
	A = 16'h3c14;
	B = 16'hae0e;
	ans_a = 16'hd0fa;
	#20
	A = 16'h3ea9;
	B = 16'hb925;
	ans_a = 16'hd11c;
	#20
	A = 16'h37a2;
	B = 16'h3fd3;
	ans_a = 16'hd0fe;
	#20
	A = 16'h3a99;
	B = 16'h372a;
	ans_a = 16'hd0f2;
	#20
	A = 16'hbeb3;
	B = 16'h3893;
	ans_a = 16'hd111;
	#20
	A = 16'hb8e2;
	B = 16'hbdba;
	ans_a = 16'hd0f5;
	#20
	A = 16'hb994;
	B = 16'hbece;
	ans_a = 16'hd0cf;
	#20
	A = 16'hbfd6;
	B = 16'hb880;
	ans_a = 16'hd0ac;
	#20
	A = 16'hba7c;
	B = 16'hbd05;
	ans_a = 16'hd08b;
	#20
	A = 16'h3fa7;
	B = 16'hbceb;
	ans_a = 16'hd0d6;
	#20
	A = 16'h38b3;
	B = 16'hbdbd;
	ans_a = 16'hd0f1;
	#20
	A = 16'h38fc;
	B = 16'h3d5a;
	ans_a = 16'hd0d6;
	#20
	A = 16'h3c53;
	B = 16'hb89e;
	ans_a = 16'hd0ea;
	#20
	A = 16'h37bd;
	B = 16'h39df;
	ans_a = 16'hd0df;
	#20
	A = 16'h3d5f;
	B = 16'h3fa8;
	ans_a = 16'hd08d;
	#20
	A = 16'hbe86;
	B = 16'hbd0e;
	ans_a = 16'hd04b;
	#20
	A = 16'hbf48;
	B = 16'hbf42;
	ans_a = 16'hcfc3;
	#20
	A = 16'h3e04;
	B = 16'h3e4b;
	ans_a = 16'hcf2c;
	#20
	A = 16'h32f7;
	B = 16'h3d66;
	ans_a = 16'hcf19;
	#20
	A = 16'hb76f;
	B = 16'h3f8f;
	ans_a = 16'hcf51;
	#20
	A = 16'hbc62;
	B = 16'hb6a5;
	ans_a = 16'hcf34;
	#20
	A = 16'h3ad7;
	B = 16'h3de0;
	ans_a = 16'hcee4;
	#20
	A = 16'hba12;
	B = 16'h3e8b;
	ans_a = 16'hcf33;
	#20
	A = 16'hbce8;
	B = 16'h3df4;
	ans_a = 16'hcfa8;
	#20
	A = 16'h3a59;
	B = 16'hbfb0;
	ans_a = 16'hd005;
	#20
	A = 16'hbf18;
	B = 16'hb889;
	ans_a = 16'hcfca;
	#20
	A = 16'hb85b;
	B = 16'hb7e5;
	ans_a = 16'hcfb9;
	#20
	A = 16'h38bd;
	B = 16'h3cc6;
	ans_a = 16'hcf8c;
	#20
	A = 16'hbd12;
	B = 16'h3b24;
	ans_a = 16'hcfd4;
	#20
	A = 16'hbfb0;
	B = 16'hbf25;
	ans_a = 16'hcef8;
	#20
	A = 16'hb894;
	B = 16'h346b;
	ans_a = 16'hcf02;
	#20
	A = 16'hbf6f;
	B = 16'h3cab;
	ans_a = 16'hcf8d;
	#20
	A = 16'hbf6d;
	B = 16'hbb51;
	ans_a = 16'hcf20;
	#20
	A = 16'hb8a0;
	B = 16'hbef0;
	ans_a = 16'hcee0;
	#20
	A = 16'h316b;
	B = 16'h37c6;
	ans_a = 16'hcedb;
	#20
	A = 16'h351d;
	B = 16'h3cc6;
	ans_a = 16'hcec3;
	#20
	A = 16'hbb8e;
	B = 16'h31bd;
	ans_a = 16'hcece;
	#20
	A = 16'h3be7;
	B = 16'hbcac;
	ans_a = 16'hcf18;
	#20
	A = 16'h3f0b;
	B = 16'h2d19;
	ans_a = 16'hcf0f;
	#20
	A = 16'hbc82;
	B = 16'hb965;
	ans_a = 16'hcede;
	#20
	A = 16'h3e22;
	B = 16'hb25e;
	ans_a = 16'hcef2;
	#20
	A = 16'hbe59;
	B = 16'h3d7b;
	ans_a = 16'hcf7d;
	#20
	A = 16'h330f;
	B = 16'hbd7d;
	ans_a = 16'hcf90;
	#20
	A = 16'ha728;
	B = 16'h3ed1;
	ans_a = 16'hcf93;
	#20
	A = 16'h3897;
	B = 16'hbdc2;
	ans_a = 16'hcfc8;
	#20
	A = 16'hbea9;
	B = 16'hbe02;
	ans_a = 16'hcf28;
	#20
	A = 16'h3cc2;
	B = 16'hbcc0;
	ans_a = 16'hcf82;
	#20
	A = 16'h34d5;
	B = 16'h3ecf;
	ans_a = 16'hcf61;
	#20
	A = 16'h3ccc;
	B = 16'h3cad;
	ans_a = 16'hcf07;
	#20
	A = 16'hb4ac;
	B = 16'h38cc;
	ans_a = 16'hcf12;
	#20
	A = 16'hb055;
	B = 16'h3ace;
	ans_a = 16'hcf19;
	#20
	A = 16'h3f59;
	B = 16'hb8fa;
	ans_a = 16'hcf62;
	#20
	A = 16'hb5a9;
	B = 16'hbe4a;
	ans_a = 16'hcf3e;
	#20
	A = 16'h330d;
	B = 16'hbde4;
	ans_a = 16'hcf53;
	#20
	A = 16'hb883;
	B = 16'h3ec8;
	ans_a = 16'hcf90;
	#20
	A = 16'h3c5a;
	B = 16'h3e2b;
	ans_a = 16'hcf25;
	#20
	A = 16'hbcd3;
	B = 16'h3b8c;
	ans_a = 16'hcf6e;
	#20
	A = 16'hb929;
	B = 16'h3ed6;
	ans_a = 16'hcfb5;
	#20
	A = 16'hb925;
	B = 16'hbcfc;
	ans_a = 16'hcf82;
	#20
	A = 16'h31c8;
	B = 16'hbf62;
	ans_a = 16'hcf97;
	#20
	A = 16'hbc2d;
	B = 16'h3d15;
	ans_a = 16'hcfec;
	#20
	A = 16'hb0e8;
	B = 16'h2e05;
	ans_a = 16'hcfed;
	#20
	A = 16'hb92f;
	B = 16'h35d4;
	ans_a = 16'hcffc;
	#20
	A = 16'hb2fe;
	B = 16'h37c5;
	ans_a = 16'hd001;
	#20
	A = 16'hbdd1;
	B = 16'h3883;
	ans_a = 16'hd01b;
	#20
	A = 16'hbae0;
	B = 16'hb427;
	ans_a = 16'hd014;
	#20
	A = 16'hb8c8;
	B = 16'h3d11;
	ans_a = 16'hd02c;
	#20
	A = 16'hbfa0;
	B = 16'hbcf9;
	ans_a = 16'hcfc0;
	#20
	A = 16'h3c58;
	B = 16'h3f9f;
	ans_a = 16'hcf3c;
	#20
	A = 16'h3e7f;
	B = 16'h21f3;
	ans_a = 16'hcf3b;
	#20
	A = 16'h3f4c;
	B = 16'h3caa;
	ans_a = 16'hceb3;
	#20
	A = 16'hbf6d;
	B = 16'h2ff8;
	ans_a = 16'hcec2;
	#20
	A = 16'h3c71;
	B = 16'hbe8e;
	ans_a = 16'hcf36;
	#20
	A = 16'h3de5;
	B = 16'hbc3d;
	ans_a = 16'hcf9a;
	#20
	A = 16'hbd20;
	B = 16'haf9d;
	ans_a = 16'hcf90;
	#20
	A = 16'h3d66;
	B = 16'had95;
	ans_a = 16'hcf98;
	#20
	A = 16'hbb67;
	B = 16'hb9ed;
	ans_a = 16'hcf6c;
	#20
	A = 16'h3e18;
	B = 16'h3202;
	ans_a = 16'hcf5a;
	#20
	A = 16'hbf51;
	B = 16'hb9ff;
	ans_a = 16'hcf02;
	#20
	A = 16'hbc71;
	B = 16'hbe97;
	ans_a = 16'hce8d;
	#20
	A = 16'hbf6f;
	B = 16'hbdb1;
	ans_a = 16'hcde4;
	#20
	A = 16'h3d30;
	B = 16'hbd35;
	ans_a = 16'hce50;
	#20
	A = 16'h2cd1;
	B = 16'hbde0;
	ans_a = 16'hce57;
	#20
	A = 16'h2304;
	B = 16'h3a98;
	ans_a = 16'hce56;
	#20
	A = 16'h3cc1;
	B = 16'h31da;
	ans_a = 16'hce48;
	#20
	A = 16'h39b2;
	B = 16'hba4a;
	ans_a = 16'hce6c;
	#20
	A = 16'hb2e4;
	B = 16'h3db3;
	ans_a = 16'hce80;
	#20
	A = 16'h371b;
	B = 16'h3cff;
	ans_a = 16'hce5c;
	#20
	A = 16'haaf6;
	B = 16'h3c19;
	ans_a = 16'hce60;
	#20
	A = 16'h39b9;
	B = 16'h3f23;
	ans_a = 16'hce0e;
	#20
	A = 16'hbea7;
	B = 16'hbfa6;
	ans_a = 16'hcd42;
	#20
	A = 16'hbe0a;
	B = 16'hbea1;
	ans_a = 16'hcca2;
	#20
	A = 16'h2d07;
	B = 16'h2ea3;
	ans_a = 16'hcca1;
	#20
	A = 16'h3d44;
	B = 16'hbc36;
	ans_a = 16'hccfa;
	#20
	A = 16'h3d1f;
	B = 16'h141e;
	ans_a = 16'hccfa;
	#20
	A = 16'hb65e;
	B = 16'hbc07;
	ans_a = 16'hcce0;
	#20
	A = 16'h3da8;
	B = 16'h3582;
	ans_a = 16'hccc1;
	#20
	A = 16'hbd92;
	B = 16'hba61;
	ans_a = 16'hcc7a;
	#20
	A = 16'hb321;
	B = 16'h35f3;
	ans_a = 16'hcc7f;
	#20
	A = 16'h3cf4;
	B = 16'hb8ef;
	ans_a = 16'hccb0;
	#20
	A = 16'ha9ee;
	B = 16'hbb0b;
	ans_a = 16'hccad;
	#20
	A = 16'hbeac;
	B = 16'hbc87;
	ans_a = 16'hcc34;
	#20
	A = 16'h3c4e;
	B = 16'hbe34;
	ans_a = 16'hcc9f;
	#20
	A = 16'h2fcd;
	B = 16'hbda5;
	ans_a = 16'hccaa;
	#20
	A = 16'hbf08;
	B = 16'h382c;
	ans_a = 16'hcce5;
	#20
	A = 16'hbfca;
	B = 16'h3f2c;
	ans_a = 16'hcdc4;
	#20
	A = 16'hbcfe;
	B = 16'h3f7e;
	ans_a = 16'hce5a;
	#20
	A = 16'h3a70;
	B = 16'hbdd1;
	ans_a = 16'hcea5;
	#20
	A = 16'h3d2b;
	B = 16'h3c0a;
	ans_a = 16'hce52;
	#20
	A = 16'h3dd4;
	B = 16'hbc39;
	ans_a = 16'hceb4;
	#20
	A = 16'hbf39;
	B = 16'hbad7;
	ans_a = 16'hce51;
	#20
	A = 16'h18e9;
	B = 16'h3e05;
	ans_a = 16'hce51;
	#20
	A = 16'h2903;
	B = 16'h3f1c;
	ans_a = 16'hce4d;
	#20
	A = 16'h3e82;
	B = 16'hba4c;
	ans_a = 16'hce9f;
	#20
	A = 16'hbf0d;
	B = 16'h390a;
	ans_a = 16'hcee6;
	#20
	A = 16'h3a8e;
	B = 16'hbf67;
	ans_a = 16'hcf47;
	#20
	A = 16'hbf3a;
	B = 16'h39a3;
	ans_a = 16'hcf98;
	#20
	A = 16'h3e86;
	B = 16'hbfb1;
	ans_a = 16'hd030;
	#20
	A = 16'h399c;
	B = 16'h3aa8;
	ans_a = 16'hd01d;
	#20
	A = 16'h3ebb;
	B = 16'hbecf;
	ans_a = 16'hd079;
	#20
	A = 16'hbf71;
	B = 16'hbce6;
	ans_a = 16'hd030;
	#20
	A = 16'hbb28;
	B = 16'h2e64;
	ans_a = 16'hd033;
	#20
	A = 16'hbde6;
	B = 16'h39a7;
	ans_a = 16'hd054;
	#20
	A = 16'h3cd4;
	B = 16'h3e8b;
	ans_a = 16'hd015;
	#20
	A = 16'h3c16;
	B = 16'h3548;
	ans_a = 16'hd00a;
	#20
	A = 16'h3b4d;
	B = 16'h2f12;
	ans_a = 16'hd007;
	#20
	A = 16'h3541;
	B = 16'h3ad4;
	ans_a = 16'hcffc;
	#20
	A = 16'h3c20;
	B = 16'h3019;
	ans_a = 16'hcff4;
	#20
	A = 16'h3c49;
	B = 16'h3454;
	ans_a = 16'hcfe1;
	#20
	A = 16'hbe36;
	B = 16'h3f33;
	ans_a = 16'hd04a;
	#20
	A = 16'hadd8;
	B = 16'h3444;
	ans_a = 16'hd04b;
	#20
	A = 16'hb0ba;
	B = 16'h3f5b;
	ans_a = 16'hd054;
	#20
	A = 16'h3a97;
	B = 16'h2aa8;
	ans_a = 16'hd053;
	#20
	A = 16'h3f77;
	B = 16'h3bb7;
	ans_a = 16'hd019;
	#20
	A = 16'h3f0e;
	B = 16'h3ff9;
	ans_a = 16'hcf51;
	#20
	A = 16'h34db;
	B = 16'hbbf7;
	ans_a = 16'hcf64;
	#20
	A = 16'h3f69;
	B = 16'hbe35;
	ans_a = 16'hd00e;
	#20
	A = 16'hb949;
	B = 16'h31ef;
	ans_a = 16'hd012;
	#20
	A = 16'hb770;
	B = 16'h3d61;
	ans_a = 16'hd026;
	#20
	A = 16'hbeb3;
	B = 16'h338f;
	ans_a = 16'hd033;
	#20
	A = 16'hbece;
	B = 16'hb968;
	ans_a = 16'hd00e;
	#20
	A = 16'hbb54;
	B = 16'hb26d;
	ans_a = 16'hd008;
	#20
	A = 16'h3575;
	B = 16'h3dcb;
	ans_a = 16'hcff0;
	#20
	A = 16'hbd75;
	B = 16'hb7b2;
	ans_a = 16'hcfc6;
	#20
	A = 16'h3e11;
	B = 16'hb09d;
	ans_a = 16'hcfd4;
	#20
	A = 16'hb3b2;
	B = 16'h33b9;
	ans_a = 16'hcfd8;
	#20
	A = 16'hb945;
	B = 16'hb4b9;
	ans_a = 16'hcfcc;
	#20
	A = 16'h3b1c;
	B = 16'h3e14;
	ans_a = 16'hcf76;
	#20
	A = 16'hbb3b;
	B = 16'hb9e6;
	ans_a = 16'hcf4b;
	#20
	A = 16'h3ee8;
	B = 16'hb3e5;
	ans_a = 16'hcf66;
	#20
	A = 16'hbd99;
	B = 16'had0a;
	ans_a = 16'hcf5f;
	#20
	A = 16'h3cdc;
	B = 16'h3305;
	ans_a = 16'hcf4e;
	#20
	A = 16'h39f6;
	B = 16'hbaba;
	ans_a = 16'hcf76;
	#20
	A = 16'hbb33;
	B = 16'h368a;
	ans_a = 16'hcf8e;
	#20
	A = 16'hbd61;
	B = 16'hb1d6;
	ans_a = 16'hcf7e;
	#20
	A = 16'hbd31;
	B = 16'hb6f9;
	ans_a = 16'hcf5a;
	#20
	A = 16'hb64e;
	B = 16'h3a95;
	ans_a = 16'hcf6f;
	#20
	A = 16'h3dd5;
	B = 16'hb82b;
	ans_a = 16'hcfa0;
	#20
	A = 16'hbae0;
	B = 16'h3d7a;
	ans_a = 16'hcfeb;
	#20
	A = 16'h3c9c;
	B = 16'hb37e;
	ans_a = 16'hcffc;
	#20
	A = 16'hbce4;
	B = 16'h3e69;
	ans_a = 16'hd03d;
	#20
	A = 16'hbcc4;
	B = 16'hbd37;
	ans_a = 16'hd00b;
	#20
	A = 16'hbc6c;
	B = 16'hb844;
	ans_a = 16'hcff0;
	#20
	A = 16'hb538;
	B = 16'hbf73;
	ans_a = 16'hcfc9;
	#20
	A = 16'h3d97;
	B = 16'hbc60;
	ans_a = 16'hd015;
	#20
	A = 16'h365d;
	B = 16'hb902;
	ans_a = 16'hd01d;
	#20
	A = 16'h3c3d;
	B = 16'hb890;
	ans_a = 16'hd030;
	#20
	A = 16'hb07f;
	B = 16'h3fdf;
	ans_a = 16'hd039;
	#20
	A = 16'h3d22;
	B = 16'hb182;
	ans_a = 16'hd040;
	#20
	A = 16'hb92d;
	B = 16'hbfdf;
	ans_a = 16'hd017;
	#20
	A = 16'h3e97;
	B = 16'h30eb;
	ans_a = 16'hd00f;
	#20
	A = 16'h3ecb;
	B = 16'hbd28;
	ans_a = 16'hd055;
	#20
	A = 16'hb9c6;
	B = 16'hbed8;
	ans_a = 16'hd02e;
	#20
	A = 16'h3f93;
	B = 16'h3c4e;
	ans_a = 16'hcfda;
	#20
	A = 16'hbca2;
	B = 16'h396f;
	ans_a = 16'hd006;
	#20
	A = 16'hb77c;
	B = 16'hb878;
	ans_a = 16'hcffb;
	#20
	A = 16'h3ef4;
	B = 16'ha974;
	ans_a = 16'hd000;
	#20
	A = 16'hbaec;
	B = 16'hbcc4;
	ans_a = 16'hcfbe;
	#20
	A = 16'hbe24;
	B = 16'h3fa3;
	ans_a = 16'hd03d;
	#20
	A = 16'haa99;
	B = 16'hbeb9;
	ans_a = 16'hd03a;
	#20
	A = 16'h2eee;
	B = 16'hbcbb;
	ans_a = 16'hd03e;
	#20
	A = 16'hb912;
	B = 16'hbf1a;
	ans_a = 16'hd01a;
	#20
	A = 16'h3f96;
	B = 16'hb86a;
	ans_a = 16'hd03c;
	#20
	A = 16'h3ccd;
	B = 16'h3720;
	ans_a = 16'hd02b;
	#20
	A = 16'hbddf;
	B = 16'hbbad;
	ans_a = 16'hcffc;
	#20
	A = 16'hb0f3;
	B = 16'h3bc9;
	ans_a = 16'hd003;
	#20
	A = 16'h3c22;
	B = 16'h3914;
	ans_a = 16'hcfdc;
	#20
	A = 16'hb0fd;
	B = 16'hb657;
	ans_a = 16'hcfd8;
	#20
	A = 16'h3213;
	B = 16'hbdae;
	ans_a = 16'hcfe9;
	#20
	A = 16'hb88e;
	B = 16'h3687;
	ans_a = 16'hcff8;
	#20
	A = 16'h98b5;
	B = 16'hbaed;
	ans_a = 16'hcff8;
	#20
	A = 16'h2f23;
	B = 16'h3e0e;
	ans_a = 16'hcfed;
	#20
	A = 16'hbae2;
	B = 16'ha2a1;
	ans_a = 16'hcfec;
	#20
	A = 16'h3eac;
	B = 16'h3c8f;
	ans_a = 16'hcf72;
	#20
	A = 16'hbe2c;
	B = 16'hbd37;
	ans_a = 16'hcef1;
	#20
	A = 16'hb990;
	B = 16'hbf45;
	ans_a = 16'hcea0;
	#20
	A = 16'hbe95;
	B = 16'h3f81;
	ans_a = 16'hcf66;
	#20
	A = 16'h3529;
	B = 16'hba12;
	ans_a = 16'hcf76;
	#20
	A = 16'hb7df;
	B = 16'hab2e;
	ans_a = 16'hcf74;
	#20
	A = 16'h3ef0;
	B = 16'hb17b;
	ans_a = 16'hcf87;
	#20
	A = 16'h33e8;
	B = 16'h3e38;
	ans_a = 16'hcf6e;
	#20
	A = 16'h3819;
	B = 16'h24e7;
	ans_a = 16'hcf6d;
	#20
	A = 16'hb818;
	B = 16'hb858;
	ans_a = 16'hcf5b;
	#20
	A = 16'h3c63;
	B = 16'hbf72;
	ans_a = 16'hcfde;
	#20
	A = 16'h27fd;
	B = 16'h2ff2;
	ans_a = 16'hcfde;
	#20
	A = 16'h397e;
	B = 16'hbebf;
	ans_a = 16'hd014;
	#20
	A = 16'hb9cc;
	B = 16'h3f12;
	ans_a = 16'hd03d;
	#20
	A = 16'haf32;
	B = 16'hb01c;
	ans_a = 16'hd03d;
	#20
	A = 16'h3c0b;
	B = 16'h3b98;
	ans_a = 16'hd01e;
	#20
	A = 16'hba0c;
	B = 16'hbcda;
	ans_a = 16'hd001;
	#20
	A = 16'hb675;
	B = 16'hbc31;
	ans_a = 16'hcfe7;
	#20
	A = 16'h3d55;
	B = 16'h3d40;
	ans_a = 16'hcf77;
	#20
	A = 16'h3fc3;
	B = 16'hb7c5;
	ans_a = 16'hcfb3;
	#20
	A = 16'h375a;
	B = 16'h33a5;
	ans_a = 16'hcfac;
	#20
	A = 16'h3e4c;
	B = 16'hbf10;
	ans_a = 16'hd02f;
	#20
	A = 16'hb83a;
	B = 16'hbe9f;
	ans_a = 16'hd013;
	#20
	A = 16'h26cf;
	B = 16'h35b5;
	ans_a = 16'hd013;
	#20
	A = 16'h327c;
	B = 16'hb5f0;
	ans_a = 16'hd015;
	#20
	A = 16'hbaed;
	B = 16'h32c9;
	ans_a = 16'hd01b;
	#20
	A = 16'h3c3e;
	B = 16'h3e5a;
	ans_a = 16'hcfca;
	#20
	A = 16'h3f8f;
	B = 16'hb9e7;
	ans_a = 16'hd012;
	#20
	A = 16'hb9d1;
	B = 16'hac27;
	ans_a = 16'hd010;
	#20
	A = 16'h3cb7;
	B = 16'h3b0e;
	ans_a = 16'hcfde;
	#20
	A = 16'hb8de;
	B = 16'h3e72;
	ans_a = 16'hd00e;
	#20
	A = 16'h3ef1;
	B = 16'h3d0e;
	ans_a = 16'hcf90;
	#20
	A = 16'hbe2a;
	B = 16'hba9c;
	ans_a = 16'hcf3e;
	#20
	A = 16'hba34;
	B = 16'hbf2b;
	ans_a = 16'hcee5;
	#20
	A = 16'hbac8;
	B = 16'hbe6e;
	ans_a = 16'hce8e;
	#20
	A = 16'h3c36;
	B = 16'hbecb;
	ans_a = 16'hcf00;
	#20
	A = 16'hbffe;
	B = 16'h3d8d;
	ans_a = 16'hcfb2;
	#20
	A = 16'hbe6d;
	B = 16'h3ca8;
	ans_a = 16'hd015;
	#20
	A = 16'h3e1a;
	B = 16'h390f;
	ans_a = 16'hcfec;
	#20
	A = 16'hbb3b;
	B = 16'h32fb;
	ans_a = 16'hcff9;
	#20
	A = 16'h3eca;
	B = 16'h3e65;
	ans_a = 16'hcf4b;
	#20
	A = 16'h3b35;
	B = 16'hb9b9;
	ans_a = 16'hcf74;
	#20
	A = 16'h3bbb;
	B = 16'h3c93;
	ans_a = 16'hcf2d;
	#20
	A = 16'h3c84;
	B = 16'hb59a;
	ans_a = 16'hcf46;
	#20
	A = 16'hba40;
	B = 16'h3f21;
	ans_a = 16'hcf9f;
	#20
	A = 16'h3dde;
	B = 16'hbaf1;
	ans_a = 16'hcff0;
	#20
	A = 16'hbdcf;
	B = 16'hb917;
	ans_a = 16'hcfb5;
	#20
	A = 16'h3dc5;
	B = 16'h3f68;
	ans_a = 16'hcf0a;
	#20
	A = 16'h3c20;
	B = 16'h3a20;
	ans_a = 16'hced7;
	#20
	A = 16'h3c0c;
	B = 16'hb9cb;
	ans_a = 16'hcf06;
	#20
	A = 16'ha9f6;
	B = 16'hbea0;
	ans_a = 16'hcf01;
	#20
	A = 16'h3f45;
	B = 16'hba00;
	ans_a = 16'hcf58;
	#20
	A = 16'hbda0;
	B = 16'hbdfc;
	ans_a = 16'hced1;
	#20
	A = 16'h3f7e;
	B = 16'h3295;
	ans_a = 16'hceb8;
	#20
	A = 16'h3fba;
	B = 16'hbba2;
	ans_a = 16'hcf2e;
	#20
	A = 16'hb9cc;
	B = 16'h3f65;
	ans_a = 16'hcf84;
	#20
	A = 16'h35d3;
	B = 16'hbe7d;
	ans_a = 16'hcfaa;
	#20
	A = 16'hb68a;
	B = 16'hbfca;
	ans_a = 16'hcf77;
	#20
	A = 16'h3c4a;
	B = 16'h3fd2;
	ans_a = 16'hcef1;
	#20
	A = 16'hbbc9;
	B = 16'h3995;
	ans_a = 16'hcf1c;
	#20
	A = 16'hbf61;
	B = 16'h3820;
	ans_a = 16'hcf59;
	#20
	A = 16'hbb3b;
	B = 16'hbfb6;
	ans_a = 16'hceea;
	#20
	A = 16'hbe64;
	B = 16'h30e5;
	ans_a = 16'hcefa;
	#20
	A = 16'hbdcd;
	B = 16'had00;
	ans_a = 16'hcef3;
	#20
	A = 16'h3996;
	B = 16'h394f;
	ans_a = 16'hced5;
	#20
	A = 16'h3d89;
	B = 16'hb619;
	ans_a = 16'hcef7;
	#20
	A = 16'hbff9;
	B = 16'haf8d;
	ans_a = 16'hcee8;
	#20
	A = 16'hbbc6;
	B = 16'h39af;
	ans_a = 16'hcf14;
	#20
	A = 16'hbee9;
	B = 16'hbdeb;
	ans_a = 16'hce70;
	#20
	A = 16'h3fe8;
	B = 16'h3ea3;
	ans_a = 16'hcd9e;
	#20
	A = 16'h26bb;
	B = 16'hbf89;
	ans_a = 16'hcda1;
	#20
	A = 16'hbe69;
	B = 16'h3bb4;
	ans_a = 16'hce04;
	#20
	A = 16'hbf3c;
	B = 16'hb6f4;
	ans_a = 16'hcdd2;
	#20
	A = 16'hb800;
	B = 16'hbe74;
	ans_a = 16'hcd9e;
	#20
	A = 16'hbc7d;
	B = 16'h3b39;
	ans_a = 16'hcddf;
	#20
	A = 16'h33b8;
	B = 16'h34ff;
	ans_a = 16'hcdda;
	#20
	A = 16'h3ced;
	B = 16'hbc7b;
	ans_a = 16'hce32;
	#20
	A = 16'hbf11;
	B = 16'hb086;
	ans_a = 16'hce22;
	#20
	A = 16'hbcb4;
	B = 16'h3434;
	ans_a = 16'hce36;
	#20
	A = 16'h3f27;
	B = 16'hbc17;
	ans_a = 16'hceab;
	#20
	A = 16'h3e79;
	B = 16'h3c3f;
	ans_a = 16'hce3d;
	#20
	A = 16'hbbf2;
	B = 16'hb7a8;
	ans_a = 16'hce1f;
	#20
	A = 16'h3f36;
	B = 16'h3515;
	ans_a = 16'hcdfa;
	#20
	A = 16'h3401;
	B = 16'h3e22;
	ans_a = 16'hcde1;
	#20
	A = 16'hbd83;
	B = 16'h3fcb;
	ans_a = 16'hce8d;
	#20
	A = 16'hbaf6;
	B = 16'hbba6;
	ans_a = 16'hce58;
	#20
	A = 16'hbd85;
	B = 16'h3edf;
	ans_a = 16'hcef0;
	#20
	A = 16'h3cd9;
	B = 16'h3a60;
	ans_a = 16'hceb2;
	#20
	A = 16'hbd9a;
	B = 16'h3d34;
	ans_a = 16'hcf27;
	#20
	A = 16'hb995;
	B = 16'hbda4;
	ans_a = 16'hcee8;
	#20
	A = 16'h3d05;
	B = 16'hbb88;
	ans_a = 16'hcf34;
	#20
	A = 16'h3873;
	B = 16'h3534;
	ans_a = 16'hcf28;
	#20
	A = 16'h3cc1;
	B = 16'hbc4c;
	ans_a = 16'hcf7a;
	#20
	A = 16'hbca2;
	B = 16'hbcd8;
	ans_a = 16'hcf20;
	#20
	A = 16'h3d4b;
	B = 16'h3dc0;
	ans_a = 16'hcea6;
	#20
	A = 16'hb55e;
	B = 16'hbc0e;
	ans_a = 16'hce90;
	#20
	A = 16'h3eda;
	B = 16'hb587;
	ans_a = 16'hceb6;
	#20
	A = 16'h3c67;
	B = 16'hb731;
	ans_a = 16'hced6;
	#20
	A = 16'hb4e3;
	B = 16'hbccd;
	ans_a = 16'hcebf;
	#20
	A = 16'h3e5c;
	B = 16'h3e87;
	ans_a = 16'hce19;
	#20
	A = 16'h38e3;
	B = 16'h3fbc;
	ans_a = 16'hcdcd;
	#20
	A = 16'hbf05;
	B = 16'h341d;
	ans_a = 16'hcdea;
	#20
	A = 16'h3c69;
	B = 16'h3597;
	ans_a = 16'hcdd1;
	#20
	A = 16'hbce9;
	B = 16'hbedb;
	ans_a = 16'hcd4a;
	#20
	A = 16'h2fd5;
	B = 16'h375a;
	ans_a = 16'hcd46;
	#20
	A = 16'hbed9;
	B = 16'h3d19;
	ans_a = 16'hcdd2;
	#20
	A = 16'hb2c5;
	B = 16'h3ff2;
	ans_a = 16'hcded;
	#20
	A = 16'h3762;
	B = 16'h3f5b;
	ans_a = 16'hcdb7;
	#20
	A = 16'hb696;
	B = 16'h3ec5;
	ans_a = 16'hcde4;
	#20
	A = 16'h1911;
	B = 16'h3752;
	ans_a = 16'hcde4;
	#20
	A = 16'hbc4b;
	B = 16'hbd7f;
	ans_a = 16'hcd86;
	#20
	A = 16'hbc98;
	B = 16'hb809;
	ans_a = 16'hcd61;
	#20
	A = 16'h3799;
	B = 16'hbe4c;
	ans_a = 16'hcd91;
	#20
	A = 16'hbefd;
	B = 16'h3c04;
	ans_a = 16'hce01;
	#20
	A = 16'hbd73;
	B = 16'hbeb1;
	ans_a = 16'hcd6f;
	#20
	A = 16'h3f3d;
	B = 16'h387e;
	ans_a = 16'hcd2e;
	#20
	A = 16'h2ab4;
	B = 16'hb6ae;
	ans_a = 16'hcd2f;
	#20
	A = 16'hb92a;
	B = 16'h2cca;
	ans_a = 16'hcd32;
	#20
	A = 16'hb9ca;
	B = 16'h3e7a;
	ans_a = 16'hcd7d;
	#20
	A = 16'hb83d;
	B = 16'hba89;
	ans_a = 16'hcd61;
	#20
	A = 16'h3daf;
	B = 16'h2ae5;
	ans_a = 16'hcd5c;
	#20
	A = 16'h34af;
	B = 16'hbd08;
	ans_a = 16'hcd74;
	#20
	A = 16'hbe85;
	B = 16'h3cfd;
	ans_a = 16'hcdf6;
	#20
	A = 16'hbf7d;
	B = 16'hb7c3;
	ans_a = 16'hcdbc;
	#20
	A = 16'hbd8a;
	B = 16'ha9ed;
	ans_a = 16'hcdb8;
	#20
	A = 16'hbd93;
	B = 16'hbdb7;
	ans_a = 16'hcd39;
	#20
	A = 16'hb9a0;
	B = 16'hb130;
	ans_a = 16'hcd32;
	#20
	A = 16'hbd79;
	B = 16'h3eab;
	ans_a = 16'hcdc4;
	#20
	A = 16'ha760;
	B = 16'hbc1f;
	ans_a = 16'hcdc2;
	#20
	A = 16'hb781;
	B = 16'h3849;
	ans_a = 16'hcdd2;
	#20
	A = 16'hbd0c;
	B = 16'h3ed3;
	ans_a = 16'hce5c;
	#20
	A = 16'h3ae5;
	B = 16'hbe3a;
	ans_a = 16'hceb2;
	#20
	A = 16'h3e29;
	B = 16'h3de1;
	ans_a = 16'hce21;
	#20
	A = 16'h3e36;
	B = 16'h3e9c;
	ans_a = 16'hcd7d;
	#20
	A = 16'h3da9;
	B = 16'h29cf;
	ans_a = 16'hcd79;
	#20
	A = 16'ha76d;
	B = 16'h3d63;
	ans_a = 16'hcd7c;
	#20
	A = 16'hba74;
	B = 16'hb8df;
	ans_a = 16'hcd5d;
	#20
	A = 16'hb9b8;
	B = 16'h2c7d;
	ans_a = 16'hcd60;
	#20
	A = 16'hb2bd;
	B = 16'h3a20;
	ans_a = 16'hcd6a;
	#20
	A = 16'hbea0;
	B = 16'ha918;
	ans_a = 16'hcd66;
	#20
	A = 16'hb814;
	B = 16'hbace;
	ans_a = 16'hcd4a;
	#20
	A = 16'hbd93;
	B = 16'h3fd9;
	ans_a = 16'hcdf9;
	#20
	A = 16'hb3eb;
	B = 16'h38af;
	ans_a = 16'hce02;
	#20
	A = 16'h3cc9;
	B = 16'h3c1c;
	ans_a = 16'hcdb3;
	#20
	A = 16'hbf87;
	B = 16'hb2f5;
	ans_a = 16'hcd99;
	#20
	A = 16'h31dd;
	B = 16'hb78b;
	ans_a = 16'hcd9f;
	#20
	A = 16'hbcaa;
	B = 16'h3d24;
	ans_a = 16'hcdff;
	#20
	A = 16'hb443;
	B = 16'h3ecb;
	ans_a = 16'hce1c;
	#20
	A = 16'h38b7;
	B = 16'h39a9;
	ans_a = 16'hce01;
	#20
	A = 16'haf4b;
	B = 16'ha2b1;
	ans_a = 16'hce01;
	#20
	A = 16'h3c6a;
	B = 16'h3dd7;
	ans_a = 16'hcd9a;
	#20
	A = 16'h2fb1;
	B = 16'hbd64;
	ans_a = 16'hcda4;
	#20
	A = 16'h39d7;
	B = 16'hb636;
	ans_a = 16'hcdb6;
	#20
	A = 16'h3e3a;
	B = 16'h3ca8;
	ans_a = 16'hcd42;
	#20
	A = 16'h3a55;
	B = 16'hb9b9;
	ans_a = 16'hcd66;
	#20
	A = 16'h3857;
	B = 16'hbf8d;
	ans_a = 16'hcda8;
	#20
	A = 16'hb349;
	B = 16'h3dd5;
	ans_a = 16'hcdbd;
	#20
	A = 16'h3f75;
	B = 16'hb07e;
	ans_a = 16'hcdce;
	#20
	A = 16'h347a;
	B = 16'hb58f;
	ans_a = 16'hcdd4;
	#20
	A = 16'h3f80;
	B = 16'h3ecb;
	ans_a = 16'hcd08;
	#20
	A = 16'hbdb8;
	B = 16'h3e9a;
	ans_a = 16'hcd9f;
	#20
	A = 16'hb812;
	B = 16'h3de9;
	ans_a = 16'hcdcf;
	#20
	A = 16'hb924;
	B = 16'h3145;
	ans_a = 16'hcdd6;
	#20
	A = 16'h30b2;
	B = 16'hbe88;
	ans_a = 16'hcde5;
	#20
	A = 16'hbf51;
	B = 16'hbcb7;
	ans_a = 16'hcd5b;
	#20
	A = 16'h3648;
	B = 16'hb78a;
	ans_a = 16'hcd67;
	#20
	A = 16'hb7dd;
	B = 16'h3cae;
	ans_a = 16'hcd8c;
	#20
	A = 16'hadfa;
	B = 16'hbfad;
	ans_a = 16'hcd81;
	#20
	A = 16'h3ffb;
	B = 16'h37fd;
	ans_a = 16'hcd41;
	#20
	A = 16'hbc1e;
	B = 16'h3db2;
	ans_a = 16'hcd9f;
	#20
	A = 16'hb83a;
	B = 16'hb46c;
	ans_a = 16'hcd96;
	#20
	A = 16'hb9c3;
	B = 16'h3fb2;
	ans_a = 16'hcdef;
	#20
	A = 16'hba84;
	B = 16'hbd38;
	ans_a = 16'hcdab;
	#20
	A = 16'hbd76;
	B = 16'hb9e0;
	ans_a = 16'hcd6b;
	#20
	A = 16'hb867;
	B = 16'h3f08;
	ans_a = 16'hcda9;
	#20
	A = 16'h3b46;
	B = 16'h319a;
	ans_a = 16'hcd9f;
	#20
	A = 16'hb903;
	B = 16'h2f4f;
	ans_a = 16'hcda4;
	#20
	A = 16'h3572;
	B = 16'h3902;
	ans_a = 16'hcd96;
	#20
	A = 16'hb57b;
	B = 16'hbe76;
	ans_a = 16'hcd73;
	#20
	A = 16'hbf18;
	B = 16'hb660;
	ans_a = 16'hcd46;
	#20
	A = 16'haee3;
	B = 16'hb5d4;
	ans_a = 16'hcd43;
	#20
	A = 16'hbcc6;
	B = 16'hbf1a;
	ans_a = 16'hccbb;
	#20
	A = 16'hbf58;
	B = 16'h3f17;
	ans_a = 16'hcd8b;
	#20
	A = 16'hbca3;
	B = 16'h3dd8;
	ans_a = 16'hcdf7;
	#20
	A = 16'h3bfc;
	B = 16'h380b;
	ans_a = 16'hcdd7;
	#20
	A = 16'h3a82;
	B = 16'h3c65;
	ans_a = 16'hcd9e;
	#20
	A = 16'h3c31;
	B = 16'h396b;
	ans_a = 16'hcd71;
	#20
	A = 16'h3d61;
	B = 16'hbdb6;
	ans_a = 16'hcdec;
	#20
	A = 16'hb733;
	B = 16'h3cb8;
	ans_a = 16'hce0e;
	#20
	A = 16'h3cb3;
	B = 16'h3e7f;
	ans_a = 16'hcd94;
	#20
	A = 16'hbfda;
	B = 16'hb7ae;
	ans_a = 16'hcd58;
	#20
	A = 16'hbfc5;
	B = 16'h3c7a;
	ans_a = 16'hcde3;
	#20
	A = 16'hba2a;
	B = 16'h31ff;
	ans_a = 16'hcdec;
	#20
	A = 16'h3ac7;
	B = 16'h35ce;
	ans_a = 16'hcdd8;
	#20
	A = 16'h3f05;
	B = 16'h3dc6;
	ans_a = 16'hcd36;
	#20
	A = 16'h3462;
	B = 16'h3dc8;
	ans_a = 16'hcd1d;
	#20
	A = 16'h3b49;
	B = 16'hb6be;
	ans_a = 16'hcd36;
	#20
	A = 16'hbc65;
	B = 16'hbc20;
	ans_a = 16'hccee;
	#20
	A = 16'hbaf4;
	B = 16'h3dce;
	ans_a = 16'hcd3f;
	#20
	A = 16'hb756;
	B = 16'h34bd;
	ans_a = 16'hcd48;
	#20
	A = 16'hbf70;
	B = 16'h384d;
	ans_a = 16'hcd88;
	#20
	A = 16'h3f3f;
	B = 16'hbf24;
	ans_a = 16'hce57;
	#20
	A = 16'hb667;
	B = 16'h3b91;
	ans_a = 16'hce6f;
	#20
	A = 16'hbe86;
	B = 16'h31f9;
	ans_a = 16'hce82;
	#20
	A = 16'hbb2e;
	B = 16'h389d;
	ans_a = 16'hcea3;
	#20
	A = 16'hbf6d;
	B = 16'h32d2;
	ans_a = 16'hcebc;
	#20
	A = 16'h3c26;
	B = 16'hbbeb;
	ans_a = 16'hcefe;
	#20
	A = 16'hbfc9;
	B = 16'hbfaa;
	ans_a = 16'hce0f;
	#20
	A = 16'h364c;
	B = 16'hb982;
	ans_a = 16'hce20;
	#20
	A = 16'h3da9;
	B = 16'hbf1c;
	ans_a = 16'hcec1;
	#20
	A = 16'h3e37;
	B = 16'h3154;
	ans_a = 16'hceb0;
	#20
	A = 16'hb496;
	B = 16'hbcc4;
	ans_a = 16'hce9a;
	#20
	A = 16'hbca7;
	B = 16'hba62;
	ans_a = 16'hce5f;
	#20
	A = 16'h3942;
	B = 16'h3f55;
	ans_a = 16'hce12;
	#20
	A = 16'hbca6;
	B = 16'hbcec;
	ans_a = 16'hcdb6;
	#20
	A = 16'h3f7c;
	B = 16'hb9e3;
	ans_a = 16'hce0e;
	#20
	A = 16'h35dd;
	B = 16'hb63f;
	ans_a = 16'hce17;
	#20
	A = 16'hba56;
	B = 16'h386a;
	ans_a = 16'hce33;
	#20
	A = 16'h3aca;
	B = 16'h3cbe;
	ans_a = 16'hcdf3;
	#20
	A = 16'h322d;
	B = 16'ha87b;
	ans_a = 16'hcdf3;
	#20
	A = 16'hbb2d;
	B = 16'h3f7a;
	ans_a = 16'hce5e;
	#20
	A = 16'hb406;
	B = 16'hb95b;
	ans_a = 16'hce53;
	#20
	A = 16'h3e4c;
	B = 16'h3b88;
	ans_a = 16'hcdf4;
	#20
	A = 16'h3c6e;
	B = 16'h31aa;
	ans_a = 16'hcde7;
	#20
	A = 16'h3c21;
	B = 16'h38ea;
	ans_a = 16'hcdbe;
	#20
	A = 16'h3db9;
	B = 16'h3e3c;
	ans_a = 16'hcd2f;
	#20
	A = 16'h3a37;
	B = 16'h3c9f;
	ans_a = 16'hccf6;
	#20
	A = 16'hb5ba;
	B = 16'hbca8;
	ans_a = 16'hccdb;
	#20
	A = 16'h3fd1;
	B = 16'hbe08;
	ans_a = 16'hcd98;
	#20
	A = 16'h3e12;
	B = 16'hb242;
	ans_a = 16'hcdab;
	#20
	A = 16'hbdc5;
	B = 16'h3a08;
	ans_a = 16'hcdf1;
	#20
	A = 16'hb89e;
	B = 16'h3d26;
	ans_a = 16'hce21;
	#20
	A = 16'h3cf4;
	B = 16'hbc11;
	ans_a = 16'hce72;
	#20
	A = 16'h30e4;
	B = 16'hbcd9;
	ans_a = 16'hce7e;
	#20
	A = 16'hb812;
	B = 16'hbe9c;
	ans_a = 16'hce48;
	#20
	A = 16'h3640;
	B = 16'hbdb4;
	ans_a = 16'hce6c;
	#20
	A = 16'hbcb1;
	B = 16'hbc88;
	ans_a = 16'hce17;
	#20
	A = 16'hbc15;
	B = 16'h3c7a;
	ans_a = 16'hce60;
	#20
	A = 16'hbcea;
	B = 16'h33f8;
	ans_a = 16'hce74;
	#20
	A = 16'hbca3;
	B = 16'h3c82;
	ans_a = 16'hcec8;
	#20
	A = 16'hbdf1;
	B = 16'h38be;
	ans_a = 16'hcf00;
	#20
	A = 16'hbea2;
	B = 16'hae32;
	ans_a = 16'hcef6;
	#20
	A = 16'h3938;
	B = 16'h3f6c;
	ans_a = 16'hcea9;
	#20
	A = 16'hb150;
	B = 16'hbf0c;
	ans_a = 16'hce96;
	#20
	A = 16'h3bdf;
	B = 16'hbfa2;
	ans_a = 16'hcf0e;
	#20
	A = 16'h3880;
	B = 16'h1dad;
	ans_a = 16'hcf0e;
	#20
	A = 16'h30b9;
	B = 16'h3f3c;
	ans_a = 16'hcefd;
	#20
	A = 16'hb303;
	B = 16'hb811;
	ans_a = 16'hcef6;
	#20
	A = 16'ha7e1;
	B = 16'h3b9b;
	ans_a = 16'hcef8;
	#20
	A = 16'h3734;
	B = 16'h3e03;
	ans_a = 16'hcecd;
	#20
	A = 16'h3f96;
	B = 16'h3715;
	ans_a = 16'hce97;
	#20
	A = 16'h3c31;
	B = 16'hbdb4;
	ans_a = 16'hcef7;
	#20
	A = 16'h312a;
	B = 16'h24a7;
	ans_a = 16'hcef7;
	#20
	A = 16'h3e77;
	B = 16'h3c98;
	ans_a = 16'hce80;
	#20
	A = 16'h35e7;
	B = 16'hbc1c;
	ans_a = 16'hce98;
	#20
	A = 16'h3d65;
	B = 16'h392b;
	ans_a = 16'hce60;
	#20
	A = 16'hb760;
	B = 16'h359a;
	ans_a = 16'hce6a;
	#20
	A = 16'h280b;
	B = 16'h3b71;
	ans_a = 16'hce68;
	#20
	A = 16'hbe95;
	B = 16'h355b;
	ans_a = 16'hce8b;
	#20
	A = 16'hba9f;
	B = 16'h3dcc;
	ans_a = 16'hced8;
	#20
	A = 16'h382a;
	B = 16'hbee5;
	ans_a = 16'hcf11;
	#20
	A = 16'hbf5a;
	B = 16'hbe66;
	ans_a = 16'hce55;
	#20
	A = 16'h3ff9;
	B = 16'h3d56;
	ans_a = 16'hcdab;
	#20
	A = 16'hb9b8;
	B = 16'h3cee;
	ans_a = 16'hcde3;
	#20
	A = 16'hbccf;
	B = 16'haf5f;
	ans_a = 16'hcdda;
	#20
	A = 16'h3e79;
	B = 16'h3fe1;
	ans_a = 16'hcd0e;
	#20
	A = 16'h3bdd;
	B = 16'hbe83;
	ans_a = 16'hcd74;
	#20
	A = 16'haf8e;
	B = 16'hbe9f;
	ans_a = 16'hcd67;
	#20
	A = 16'hbd7d;
	B = 16'hb8de;
	ans_a = 16'hcd32;
	#20
	A = 16'hbfc0;
	B = 16'h3d08;
	ans_a = 16'hcdce;
	#20
	A = 16'h3dd1;
	B = 16'h3ca3;
	ans_a = 16'hcd62;
	#20
	A = 16'hb69f;
	B = 16'hb588;
	ans_a = 16'hcd59;
	#20
	A = 16'h3d5a;
	B = 16'hbf19;
	ans_a = 16'hcdf1;
	#20
	A = 16'h3c04;
	B = 16'hbeed;
	ans_a = 16'hce60;
	#20
	A = 16'h3ab7;
	B = 16'hbeb3;
	ans_a = 16'hceba;
	#20
	A = 16'h3e53;
	B = 16'hbb7a;
	ans_a = 16'hcf19;
	#20
	A = 16'h3e76;
	B = 16'h3afc;
	ans_a = 16'hcebf;
	#20
	A = 16'hbd6f;
	B = 16'hbc5c;
	ans_a = 16'hce60;
	#20
	A = 16'h38a6;
	B = 16'hbf55;
	ans_a = 16'hcea4;
	#20
	A = 16'h3e91;
	B = 16'h3f3c;
	ans_a = 16'hcde6;
	#20
	A = 16'h3acd;
	B = 16'hba42;
	ans_a = 16'hce11;
	#20
	A = 16'hbe54;
	B = 16'h3d85;
	ans_a = 16'hce9d;
	#20
	A = 16'hbd58;
	B = 16'hb8d8;
	ans_a = 16'hce69;
	#20
	A = 16'hbf15;
	B = 16'h3a15;
	ans_a = 16'hcebf;
	#20
	A = 16'h3dda;
	B = 16'h3e35;
	ans_a = 16'hce2e;
	#20
	A = 16'hbf29;
	B = 16'hb41d;
	ans_a = 16'hce11;
	#20
	A = 16'hb9a4;
	B = 16'hafc7;
	ans_a = 16'hce0c;
	#20
	A = 16'h3ddd;
	B = 16'h2c78;
	ans_a = 16'hce05;
	#20
	A = 16'hbfc5;
	B = 16'hbd2d;
	ans_a = 16'hcd64;
	#20
	A = 16'hb68f;
	B = 16'h395e;
	ans_a = 16'hcd76;
	#20
	A = 16'hbc1b;
	B = 16'h3e7d;
	ans_a = 16'hcde1;
	#20
	A = 16'hb8b4;
	B = 16'hbb51;
	ans_a = 16'hcdbf;
	#20
	A = 16'hba2f;
	B = 16'h3667;
	ans_a = 16'hcdd3;
	#20
	A = 16'h3fb1;
	B = 16'hbc01;
	ans_a = 16'hce4e;
	#20
	A = 16'h3f77;
	B = 16'hbb70;
	ans_a = 16'hcebd;
	#20
	A = 16'hbc01;
	B = 16'h3aad;
	ans_a = 16'hcef2;
	#20
	A = 16'h3a2c;
	B = 16'h3ec7;
	ans_a = 16'hce9e;
	#20
	A = 16'h3ec2;
	B = 16'hb4c7;
	ans_a = 16'hcebe;
	#20
	A = 16'hbc36;
	B = 16'h3d10;
	ans_a = 16'hcf13;
	#20
	A = 16'hbf33;
	B = 16'h3d31;
	ans_a = 16'hcfa8;
	#20
	A = 16'h3c57;
	B = 16'hb8bc;
	ans_a = 16'hcfd1;
	#20
	A = 16'h26dc;
	B = 16'hbe32;
	ans_a = 16'hcfd4;
	#20
	A = 16'hb944;
	B = 16'ha853;
	ans_a = 16'hcfd3;
	#20
	A = 16'h3d94;
	B = 16'h3eb4;
	ans_a = 16'hcf3d;
	#20
	A = 16'hb023;
	B = 16'hbea8;
	ans_a = 16'hcf2f;
	#20
	A = 16'hb479;
	B = 16'h37b9;
	ans_a = 16'hcf38;
	#20
	A = 16'hb545;
	B = 16'h3f3f;
	ans_a = 16'hcf5e;
	#20
	A = 16'hb6c6;
	B = 16'h36bc;
	ans_a = 16'hcf69;
	#20
	A = 16'h3ebc;
	B = 16'hbff7;
	ans_a = 16'hd020;
	#20
	A = 16'h3d91;
	B = 16'hb6c4;
	ans_a = 16'hd033;
	#20
	A = 16'h3f95;
	B = 16'hbbec;
	ans_a = 16'hd06f;
	#20
	A = 16'h3da1;
	B = 16'h300f;
	ans_a = 16'hd069;
	#20
	A = 16'hbf65;
	B = 16'h3ea6;
	ans_a = 16'hd0cb;
	#20
	A = 16'hbcf4;
	B = 16'h34df;
	ans_a = 16'hd0d7;
	#20
	A = 16'h3dcb;
	B = 16'h3678;
	ans_a = 16'hd0c4;
	#20
	A = 16'h3cbc;
	B = 16'hbf49;
	ans_a = 16'hd109;
	#20
	A = 16'h3b22;
	B = 16'hbe51;
	ans_a = 16'hd136;
	#20
	A = 16'hbe2e;
	B = 16'h2cee;
	ans_a = 16'hd13a;
	#20
	A = 16'h363a;
	B = 16'hbd92;
	ans_a = 16'hd14b;
	#20
	A = 16'h3d9e;
	B = 16'hb59e;
	ans_a = 16'hd15b;
	#20
	A = 16'h3ee6;
	B = 16'hb49b;
	ans_a = 16'hd16b;
	#20
	A = 16'hbf5d;
	B = 16'hbc30;
	ans_a = 16'hd12d;
	#20
	A = 16'hbc62;
	B = 16'hbe63;
	ans_a = 16'hd0f5;
	#20
	A = 16'h35ff;
	B = 16'hbef5;
	ans_a = 16'hd10a;
	#20
	A = 16'h3eb7;
	B = 16'ha878;
	ans_a = 16'hd10c;
	#20
	A = 16'h3e66;
	B = 16'h3f1d;
	ans_a = 16'hd0b1;
	#20
	A = 16'h3837;
	B = 16'hb82e;
	ans_a = 16'hd0ba;
	#20
	A = 16'hbefa;
	B = 16'h3cd9;
	ans_a = 16'hd0fe;
	#20
	A = 16'hbb23;
	B = 16'h3460;
	ans_a = 16'hd106;
	#20
	A = 16'h3b1e;
	B = 16'h31c6;
	ans_a = 16'hd101;
	#20
	A = 16'h391b;
	B = 16'h3b0b;
	ans_a = 16'hd0ef;
	#20
	A = 16'hb8b2;
	B = 16'h3485;
	ans_a = 16'hd0f4;
	#20
	A = 16'hb058;
	B = 16'h3d9b;
	ans_a = 16'hd0fa;
	#20
	A = 16'h3037;
	B = 16'h3949;
	ans_a = 16'hd0f7;
	#20
	A = 16'h354d;
	B = 16'h3a0b;
	ans_a = 16'hd0ef;
	#20
	A = 16'h3923;
	B = 16'ha9d0;
	ans_a = 16'hd0f0;
	#20
	A = 16'hb2e7;
	B = 16'h3ca7;
	ans_a = 16'hd0f8;
	#20
	A = 16'hbc4d;
	B = 16'hbee2;
	ans_a = 16'hd0bd;
	#20
	A = 16'h3560;
	B = 16'hbeaf;
	ans_a = 16'hd0cf;
	#20
	A = 16'hbf18;
	B = 16'hbfe7;
	ans_a = 16'hd05f;
	#20
	A = 16'h2e92;
	B = 16'h3bcf;
	ans_a = 16'hd05c;
	#20
	A = 16'hbcd5;
	B = 16'hbf32;
	ans_a = 16'hd016;
	#20
	A = 16'hba3c;
	B = 16'h3663;
	ans_a = 16'hd020;
	#20
	A = 16'hbf58;
	B = 16'h30e5;
	ans_a = 16'hd029;
	#20
	A = 16'hbd94;
	B = 16'h3f1b;
	ans_a = 16'hd078;
	#20
	A = 16'h9c4a;
	B = 16'hbde7;
	ans_a = 16'hd078;
	#20
	A = 16'h3a7a;
	B = 16'hbd92;
	ans_a = 16'hd09c;
	#20
	A = 16'hbcd2;
	B = 16'h3ae2;
	ans_a = 16'hd0bd;
	#20
	A = 16'h3e2e;
	B = 16'hba99;
	ans_a = 16'hd0e6;
	#20
	A = 16'hb862;
	B = 16'hbeb5;
	ans_a = 16'hd0c9;
	#20
	A = 16'h3f93;
	B = 16'h3845;
	ans_a = 16'hd0a9;
	#20
	A = 16'h35cb;
	B = 16'hbf38;
	ans_a = 16'hd0be;
	#20
	A = 16'h3e6e;
	B = 16'hb5ec;
	ans_a = 16'hd0d1;
	#20
	A = 16'h3958;
	B = 16'hb86b;
	ans_a = 16'hd0dd;
	#20
	A = 16'hbc33;
	B = 16'h29f5;
	ans_a = 16'hd0df;
	#20
	A = 16'h3dda;
	B = 16'hbec0;
	ans_a = 16'hd12e;
	#20
	A = 16'h3c42;
	B = 16'hbed6;
	ans_a = 16'hd168;
	#20
	A = 16'hb893;
	B = 16'hbd3e;
	ans_a = 16'hd150;
	#20
	A = 16'h3f2d;
	B = 16'hbb5e;
	ans_a = 16'hd185;
	#20
	A = 16'hac27;
	B = 16'hb54c;
	ans_a = 16'hd184;
	#20
	A = 16'h3e12;
	B = 16'h3c80;
	ans_a = 16'hd14d;
	#20
	A = 16'hb936;
	B = 16'hb6f6;
	ans_a = 16'hd144;
	#20
	A = 16'h3787;
	B = 16'h3ed3;
	ans_a = 16'hd12a;
	#20
	A = 16'hbbd9;
	B = 16'h3da0;
	ans_a = 16'hd156;
	#20
	A = 16'hb630;
	B = 16'h3fc2;
	ans_a = 16'hd16e;
	#20
	A = 16'hbb65;
	B = 16'hb6f3;
	ans_a = 16'hd161;
	#20
	A = 16'hb826;
	B = 16'h3f0b;
	ans_a = 16'hd17e;
	#20
	A = 16'hbd3c;
	B = 16'hb006;
	ans_a = 16'hd179;
	#20
	A = 16'hbb4b;
	B = 16'h3c70;
	ans_a = 16'hd199;
	#20
	A = 16'h3ce2;
	B = 16'h3c34;
	ans_a = 16'hd170;
	#20
	A = 16'h3df6;
	B = 16'hbe32;
	ans_a = 16'hd1ba;
	#20
	A = 16'hb5f1;
	B = 16'hbf19;
	ans_a = 16'hd1a5;
	#20
	A = 16'hbe16;
	B = 16'h3ef3;
	ans_a = 16'hd1fa;
	#20
	A = 16'hbcc7;
	B = 16'h3448;
	ans_a = 16'hd204;
	#20
	A = 16'h3f40;
	B = 16'h30c6;
	ans_a = 16'hd1fb;
	#20
	A = 16'hbfa3;
	B = 16'hbd97;
	ans_a = 16'hd1a6;
	#20
	A = 16'hbc4c;
	B = 16'hbeff;
	ans_a = 16'hd16a;
	#20
	A = 16'h31c8;
	B = 16'hbc54;
	ans_a = 16'hd170;
	#20
	A = 16'hbd37;
	B = 16'hbe3e;
	ans_a = 16'hd12f;
	#20
	A = 16'hbcaf;
	B = 16'h3b26;
	ans_a = 16'hd150;
	#20
	A = 16'h3a0f;
	B = 16'hb2c5;
	ans_a = 16'hd155;
	#20
	A = 16'h36c7;
	B = 16'hbf78;
	ans_a = 16'hd16e;
	#20
	A = 16'h3c2a;
	B = 16'h3d5f;
	ans_a = 16'hd141;
	#20
	A = 16'hb817;
	B = 16'hbdb6;
	ans_a = 16'hd12a;
	#20
	A = 16'h3080;
	B = 16'hbf47;
	ans_a = 16'hd132;
	#20
	A = 16'h34b2;
	B = 16'h353a;
	ans_a = 16'hd12f;
	#20
	A = 16'hbffa;
	B = 16'hbedc;
	ans_a = 16'hd0c2;
	#20
	A = 16'h3fb3;
	B = 16'h3ee5;
	ans_a = 16'hd058;
	#20
	A = 16'h3f33;
	B = 16'hb6bf;
	ans_a = 16'hd070;
	#20
	A = 16'h3fad;
	B = 16'hb640;
	ans_a = 16'hd088;
	#20
	A = 16'ha8ec;
	B = 16'hb318;
	ans_a = 16'hd088;
	#20
	A = 16'hbec4;
	B = 16'h3f5e;
	ans_a = 16'hd0ec;
	#20
	A = 16'h3a56;
	B = 16'h3665;
	ans_a = 16'hd0e2;
	#20
	A = 16'h380c;
	B = 16'h3e6a;
	ans_a = 16'hd0c8;
	#20
	A = 16'h303b;
	B = 16'hba8a;
	ans_a = 16'hd0cb;
	#20
	A = 16'h3605;
	B = 16'h3c60;
	ans_a = 16'hd0be;
	#20
	A = 16'h3ca3;
	B = 16'h3755;
	ans_a = 16'hd0ad;
	#20
	A = 16'h3e0f;
	B = 16'h3ffe;
	ans_a = 16'hd04c;
	#20
	A = 16'hb87f;
	B = 16'hbccc;
	ans_a = 16'hd036;
	#20
	A = 16'hb99b;
	B = 16'hb8b7;
	ans_a = 16'hd029;
	#20
	A = 16'h3f88;
	B = 16'hb4b7;
	ans_a = 16'hd03b;
	#20
	A = 16'hb9a3;
	B = 16'h388f;
	ans_a = 16'hd048;
	#20
	A = 16'hbf98;
	B = 16'hbd47;
	ans_a = 16'hcff0;
	#20
	A = 16'h3a1a;
	B = 16'hba53;
	ans_a = 16'hd00b;
	#20
	A = 16'hbee0;
	B = 16'h3bcc;
	ans_a = 16'hd041;
	#20
	A = 16'h3e48;
	B = 16'h3909;
	ans_a = 16'hd021;
	#20
	A = 16'h31fa;
	B = 16'h39a5;
	ans_a = 16'hd01d;
	#20
	A = 16'h3e49;
	B = 16'h3795;
	ans_a = 16'hd005;
	#20
	A = 16'hbf3d;
	B = 16'h3fd4;
	ans_a = 16'hd076;
	#20
	A = 16'h3362;
	B = 16'h2458;
	ans_a = 16'hd076;
	#20
	A = 16'hb84e;
	B = 16'h3855;
	ans_a = 16'hd07f;
	#20
	A = 16'h372d;
	B = 16'hbc25;
	ans_a = 16'hd08e;
	#20
	A = 16'h3966;
	B = 16'h3ab1;
	ans_a = 16'hd07c;
	#20
	A = 16'h3dc6;
	B = 16'hb8ae;
	ans_a = 16'hd097;
	#20
	A = 16'hb8a1;
	B = 16'hbfc1;
	ans_a = 16'hd073;
	#20
	A = 16'h39d6;
	B = 16'hbc9f;
	ans_a = 16'hd08e;
	#20
	A = 16'hb2ec;
	B = 16'h3ec0;
	ans_a = 16'hd09a;
	#20
	A = 16'h3c8e;
	B = 16'hbe81;
	ans_a = 16'hd0d5;
	#20
	A = 16'h3960;
	B = 16'ha17a;
	ans_a = 16'hd0d5;
	#20
	A = 16'hb9fb;
	B = 16'h3948;
	ans_a = 16'hd0e5;
	#20
	A = 16'hbf6a;
	B = 16'h3d0e;
	ans_a = 16'hd130;
	#20
	A = 16'h2acb;
	B = 16'h3bcc;
	ans_a = 16'hd12e;
	#20
	A = 16'h3d3a;
	B = 16'hbe85;
	ans_a = 16'hd172;
	#20
	A = 16'h39c9;
	B = 16'hb535;
	ans_a = 16'hd17a;
	#20
	A = 16'h3ed9;
	B = 16'h3d17;
	ans_a = 16'hd134;
	#20
	A = 16'hbc93;
	B = 16'h165c;
	ans_a = 16'hd134;
	#20
	A = 16'h370e;
	B = 16'hbc9f;
	ans_a = 16'hd144;
	#20
	A = 16'hbd08;
	B = 16'h2f83;
	ans_a = 16'hd149;
	#20
	A = 16'hbec5;
	B = 16'h3ca5;
	ans_a = 16'hd188;
	#20
	A = 16'h3bf3;
	B = 16'h3c89;
	ans_a = 16'hd164;
	#20
	A = 16'h3b5f;
	B = 16'hb5fd;
	ans_a = 16'hd16f;
	#20
	A = 16'hbc19;
	B = 16'h3b02;
	ans_a = 16'hd18c;
	#20
	A = 16'hbc91;
	B = 16'h3770;
	ans_a = 16'hd19d;
	#20
	A = 16'hb697;
	B = 16'h35e8;
	ans_a = 16'hd1a2;
	#20
	A = 16'hbfc4;
	B = 16'h315b;
	ans_a = 16'hd1ac;
	#20
	A = 16'h3ffd;
	B = 16'hbca7;
	ans_a = 16'hd1f6;
	#20
	A = 16'hbbfe;
	B = 16'h3b20;
	ans_a = 16'hd212;
	#20
	A = 16'h3d59;
	B = 16'h3909;
	ans_a = 16'hd1f7;
	#20
	A = 16'h3e5e;
	B = 16'h38f2;
	ans_a = 16'hd1d8;
	#20
	A = 16'hbf78;
	B = 16'h3e39;
	ans_a = 16'hd235;
	#20
	A = 16'hba75;
	B = 16'h3ed0;
	ans_a = 16'hd261;
	#20
	A = 16'h3bde;
	B = 16'h3c0c;
	ans_a = 16'hd241;
	#20
	A = 16'h3b7c;
	B = 16'h3e22;
	ans_a = 16'hd213;
	#20
	A = 16'hbc0a;
	B = 16'hb926;
	ans_a = 16'hd1fe;
	#20
	A = 16'hbe0c;
	B = 16'hbc41;
	ans_a = 16'hd1cb;
	#20
	A = 16'ha63b;
	B = 16'h3b25;
	ans_a = 16'hd1cc;
	#20
	A = 16'hb8d3;
	B = 16'h234a;
	ans_a = 16'hd1cc;
	#20
	A = 16'h39ad;
	B = 16'hb9d5;
	ans_a = 16'hd1dd;
	#20
	A = 16'hbd9a;
	B = 16'h3f11;
	ans_a = 16'hd22c;
	#20
	A = 16'h3dc9;
	B = 16'hbf3d;
	ans_a = 16'hd280;
	#20
	A = 16'hbccf;
	B = 16'hbe1b;
	ans_a = 16'hd245;
	#20
	A = 16'hb473;
	B = 16'hbc5f;
	ans_a = 16'hd23b;
	#20
	A = 16'hadae;
	B = 16'hbbe9;
	ans_a = 16'hd238;
	#20
	A = 16'had41;
	B = 16'hbe00;
	ans_a = 16'hd234;
	#20
	A = 16'hbfbd;
	B = 16'hb871;
	ans_a = 16'hd212;
	#20
	A = 16'h30a7;
	B = 16'hbf6b;
	ans_a = 16'hd21b;
	#20
	A = 16'hbc62;
	B = 16'hbb91;
	ans_a = 16'hd1fa;
	#20
	A = 16'hbf01;
	B = 16'hb55f;
	ans_a = 16'hd1e7;
	#20
	A = 16'hbc24;
	B = 16'hb858;
	ans_a = 16'hd1d5;
	#20
	A = 16'hbfcc;
	B = 16'hbdb2;
	ans_a = 16'hd17c;
	#20
	A = 16'h2c64;
	B = 16'hbc62;
	ans_a = 16'hd17e;
	#20
	A = 16'hbdb1;
	B = 16'h38f6;
	ans_a = 16'hd19a;
	#20
	A = 16'hbde8;
	B = 16'hba44;
	ans_a = 16'hd175;
	#20
	A = 16'hbd51;
	B = 16'hbd64;
	ans_a = 16'hd13c;
	#20
	A = 16'hba0f;
	B = 16'h3c63;
	ans_a = 16'hd157;
	#20
	A = 16'h3e73;
	B = 16'hb8ff;
	ans_a = 16'hd177;
	#20
	A = 16'hbe82;
	B = 16'h3f8c;
	ans_a = 16'hd1d9;
	#20
	A = 16'hbf36;
	B = 16'hbd58;
	ans_a = 16'hd18c;
	#20
	A = 16'hbc1d;
	B = 16'hbb82;
	ans_a = 16'hd16d;
	#20
	A = 16'hb6f2;
	B = 16'hbe8b;
	ans_a = 16'hd156;
	#20
	A = 16'h38cb;
	B = 16'h3310;
	ans_a = 16'hd152;
	#20
	A = 16'hbbb8;
	B = 16'h2a30;
	ans_a = 16'hd153;
	#20
	A = 16'hbb5e;
	B = 16'h3b98;
	ans_a = 16'hd16f;
	#20
	A = 16'h3e35;
	B = 16'h3ff6;
	ans_a = 16'hd10c;
	#20
	A = 16'h2ef3;
	B = 16'hbb42;
	ans_a = 16'hd10f;
	#20
	A = 16'hb97c;
	B = 16'h344b;
	ans_a = 16'hd115;
	#20
	A = 16'hbf08;
	B = 16'hbe69;
	ans_a = 16'hd0bb;
	#20
	A = 16'h3932;
	B = 16'h39c6;
	ans_a = 16'hd0ac;
	#20
	A = 16'h381a;
	B = 16'hba08;
	ans_a = 16'hd0b8;
	#20
	A = 16'h38cb;
	B = 16'hb310;
	ans_a = 16'hd0bc;
	#20
	A = 16'hbe98;
	B = 16'h3b69;
	ans_a = 16'hd0ed;
	#20
	A = 16'h3969;
	B = 16'hb413;
	ans_a = 16'hd0f3;
	#20
	A = 16'h39e4;
	B = 16'hb93f;
	ans_a = 16'hd102;
	#20
	A = 16'hbb9c;
	B = 16'hbbb1;
	ans_a = 16'hd0e5;
	#20
	A = 16'h3c8f;
	B = 16'hba57;
	ans_a = 16'hd102;
	#20
	A = 16'h3dfa;
	B = 16'hbce8;
	ans_a = 16'hd13d;
	#20
	A = 16'h2e6f;
	B = 16'hbf83;
	ans_a = 16'hd143;
	#20
	A = 16'h3e6a;
	B = 16'h34db;
	ans_a = 16'hd133;
	#20
	A = 16'h3fea;
	B = 16'hb897;
	ans_a = 16'hd157;
	#20
	A = 16'h3c6b;
	B = 16'h3fa7;
	ans_a = 16'hd113;
	#20
	A = 16'h3c1d;
	B = 16'h39bb;
	ans_a = 16'hd0fb;
	#20
	A = 16'hbc7a;
	B = 16'h3d0e;
	ans_a = 16'hd128;
	#20
	A = 16'hbd38;
	B = 16'h3e3f;
	ans_a = 16'hd169;
	#20
	A = 16'hbe8d;
	B = 16'h3dd5;
	ans_a = 16'hd1b5;
	#20
	A = 16'hbfdd;
	B = 16'h31a2;
	ans_a = 16'hd1c0;
	#20
	A = 16'hbe70;
	B = 16'hbff4;
	ans_a = 16'hd15a;
	#20
	A = 16'hb053;
	B = 16'h3f08;
	ans_a = 16'hd162;
	#20
	A = 16'h3879;
	B = 16'h3dc2;
	ans_a = 16'hd148;
	#20
	A = 16'h3f30;
	B = 16'hbdf4;
	ans_a = 16'hd19e;
	#20
	A = 16'h3c39;
	B = 16'h33da;
	ans_a = 16'hd196;
	#20
	A = 16'h3397;
	B = 16'h3fd6;
	ans_a = 16'hd187;
	#20
	A = 16'hbe48;
	B = 16'h3b3c;
	ans_a = 16'hd1b4;
	#20
	A = 16'h38b0;
	B = 16'h3e2a;
	ans_a = 16'hd197;
	#20
	A = 16'h3936;
	B = 16'hbcb9;
	ans_a = 16'hd1b0;
	#20
	A = 16'hbd9b;
	B = 16'hbe65;
	ans_a = 16'hd168;
	#20
	A = 16'hbaf3;
	B = 16'h2b78;
	ans_a = 16'hd16a;
	#20
	A = 16'h3dc4;
	B = 16'hba59;
	ans_a = 16'hd18f;
	#20
	A = 16'h31d6;
	B = 16'h386e;
	ans_a = 16'hd18c;
	#20
	A = 16'hb97e;
	B = 16'hb741;
	ans_a = 16'hd182;
	#20
	A = 16'h3411;
	B = 16'h3de9;
	ans_a = 16'hd176;
	#20
	A = 16'h34b3;
	B = 16'hb799;
	ans_a = 16'hd17a;
	#20
	A = 16'hbd1e;
	B = 16'h3f9b;
	ans_a = 16'hd1c8;
	#20
	A = 16'h2f5d;
	B = 16'h3c95;
	ans_a = 16'hd1c4;
	#20
	A = 16'h30d1;
	B = 16'h3a63;
	ans_a = 16'hd1c0;
	#20
	A = 16'hbbee;
	B = 16'hb431;
	ans_a = 16'hd1b8;
	#20
	A = 16'h3af8;
	B = 16'h3d75;
	ans_a = 16'hd192;
	#20
	A = 16'hbd05;
	B = 16'h3a73;
	ans_a = 16'hd1b2;
	#20
	A = 16'hbd95;
	B = 16'h3982;
	ans_a = 16'hd1d1;
	#20
	A = 16'hbf65;
	B = 16'hace5;
	ans_a = 16'hd1cc;
	#20
	A = 16'hb623;
	B = 16'hb800;
	ans_a = 16'hd1c6;
	#20
	A = 16'h2658;
	B = 16'h2f64;
	ans_a = 16'hd1c6;
	#20
	A = 16'h370f;
	B = 16'h32f1;
	ans_a = 16'hd1c3;
	#20
	A = 16'hb788;
	B = 16'hbd17;
	ans_a = 16'hd1b0;
	#20
	A = 16'hbc69;
	B = 16'hb6e8;
	ans_a = 16'hd1a1;
	#20
	A = 16'h2ef0;
	B = 16'hb8ff;
	ans_a = 16'hd1a3;
	#20
	A = 16'hadc0;
	B = 16'h3f11;
	ans_a = 16'hd1a8;
	#20
	A = 16'hbc64;
	B = 16'hb1cb;
	ans_a = 16'hd1a2;
	#20
	A = 16'hbe23;
	B = 16'h3a8d;
	ans_a = 16'hd1ca;
	#20
	A = 16'h2879;
	B = 16'h3e73;
	ans_a = 16'hd1c8;
	#20
	A = 16'hbd40;
	B = 16'hbeea;
	ans_a = 16'hd17f;
	#20
	A = 16'h3456;
	B = 16'hb6ca;
	ans_a = 16'hd183;
	#20
	A = 16'h398c;
	B = 16'h3606;
	ans_a = 16'hd17b;
	#20
	A = 16'h389e;
	B = 16'h3afe;
	ans_a = 16'hd16b;
	#20
	A = 16'hbc22;
	B = 16'hafbb;
	ans_a = 16'hd167;
	#20
	A = 16'h34bf;
	B = 16'hbe6b;
	ans_a = 16'hd176;
	#20
	A = 16'h3951;
	B = 16'h38b1;
	ans_a = 16'hd16a;
	#20
	A = 16'hbbe3;
	B = 16'hb417;
	ans_a = 16'hd162;
	#20
	A = 16'hbac1;
	B = 16'h3c78;
	ans_a = 16'hd180;
	#20
	A = 16'h3d2b;
	B = 16'h3bc8;
	ans_a = 16'hd158;
	#20
	A = 16'h3a8a;
	B = 16'h3c74;
	ans_a = 16'hd13b;
	#20
	A = 16'h351d;
	B = 16'hbcb1;
	ans_a = 16'hd147;
	#20
	A = 16'hbf69;
	B = 16'h34aa;
	ans_a = 16'hd158;
	#20
	A = 16'hb99f;
	B = 16'h3dd4;
	ans_a = 16'hd179;
	#20
	A = 16'hbf13;
	B = 16'h3d1d;
	ans_a = 16'hd1c1;
	#20
	A = 16'h3f48;
	B = 16'hbd25;
	ans_a = 16'hd20c;
	#20
	A = 16'hbf0f;
	B = 16'h3845;
	ans_a = 16'hd22a;
	#20
	A = 16'hbfc1;
	B = 16'hb9ff;
	ans_a = 16'hd1fc;
	#20
	A = 16'h3e7d;
	B = 16'hbd51;
	ans_a = 16'hd241;
	#20
	A = 16'h3d7b;
	B = 16'h39a7;
	ans_a = 16'hd222;
	#20
	A = 16'h3d3c;
	B = 16'hbd98;
	ans_a = 16'hd25d;
	#20
	A = 16'h3727;
	B = 16'h3a4a;
	ans_a = 16'hd252;
	#20
	A = 16'h37e9;
	B = 16'hb603;
	ans_a = 16'hd258;
	#20
	A = 16'hbcef;
	B = 16'h3c0d;
	ans_a = 16'hd280;
	#20
	A = 16'hbf32;
	B = 16'h36d1;
	ans_a = 16'hd299;
	#20
	A = 16'hbb45;
	B = 16'hbd4a;
	ans_a = 16'hd273;
	#20
	A = 16'h37ca;
	B = 16'h31cb;
	ans_a = 16'hd270;
	#20
	A = 16'hbae1;
	B = 16'h3fdf;
	ans_a = 16'hd2a6;
	#20
	A = 16'h38fb;
	B = 16'h3943;
	ans_a = 16'hd299;
	#20
	A = 16'h35e4;
	B = 16'hbf36;
	ans_a = 16'hd2ae;
	#20
	A = 16'hbcd0;
	B = 16'h3cca;
	ans_a = 16'hd2dc;
	#20
	A = 16'h3ddc;
	B = 16'h3d70;
	ans_a = 16'hd29c;
	#20
	A = 16'h3d49;
	B = 16'hb2ad;
	ans_a = 16'hd2a5;
	#20
	A = 16'hbe7d;
	B = 16'h3967;
	ans_a = 16'hd2c8;
	#20
	A = 16'hbbcc;
	B = 16'hbedf;
	ans_a = 16'hd292;
	#20
	A = 16'hbd30;
	B = 16'h3b21;
	ans_a = 16'hd2b7;
	#20
	A = 16'hbccb;
	B = 16'h3f6e;
	ans_a = 16'hd2fe;
	#20
	A = 16'hbf69;
	B = 16'h3d15;
	ans_a = 16'hd349;
	#20
	A = 16'h33e4;
	B = 16'h324a;
	ans_a = 16'hd347;
	#20
	A = 16'h3d7a;
	B = 16'h380b;
	ans_a = 16'hd331;
	#20
	A = 16'h3f7d;
	B = 16'hbc54;
	ans_a = 16'hd372;
	#20
	A = 16'hbdb9;
	B = 16'h3d60;
	ans_a = 16'hd3b0;
	#20
	A = 16'h28b4;
	B = 16'h3a0c;
	ans_a = 16'hd3af;
	#20
	A = 16'h1fdf;
	B = 16'h3fd9;
	ans_a = 16'hd3af;
	#20
	A = 16'hbeb9;
	B = 16'h32c4;
	ans_a = 16'hd3ba;
	#20
	A = 16'h34f1;
	B = 16'hbcf6;
	ans_a = 16'hd3c6;
	#20
	A = 16'h3fee;
	B = 16'hbb8e;
	ans_a = 16'hd401;
	#20
	A = 16'h3c72;
	B = 16'h3883;
	ans_a = 16'hd3ee;
	#20
	A = 16'hbbdd;
	B = 16'hbd8f;
	ans_a = 16'hd3c2;
	#20
	A = 16'hb1b8;
	B = 16'h3c14;
	ans_a = 16'hd3c8;
	#20
	A = 16'hbcc5;
	B = 16'h392c;
	ans_a = 16'hd3e1;
	#20
	A = 16'hb3a5;
	B = 16'h3e84;
	ans_a = 16'hd3ed;
	#20
	A = 16'hbee9;
	B = 16'h39a6;
	ans_a = 16'hd40a;
	#20
	A = 16'haf7f;
	B = 16'hbed2;
	ans_a = 16'hd407;
	#20
	A = 16'h3c80;
	B = 16'h3850;
	ans_a = 16'hd3fb;
	#20
	A = 16'h38b9;
	B = 16'h3cc6;
	ans_a = 16'hd3e4;
	#20
	A = 16'h3888;
	B = 16'hbb58;
	ans_a = 16'hd3f5;
	#20
	A = 16'h3cd1;
	B = 16'hba9f;
	ans_a = 16'hd40a;
	#20
	A = 16'hba36;
	B = 16'h3f22;
	ans_a = 16'hd420;
	#20
	A = 16'h3813;
	B = 16'h3f3a;
	ans_a = 16'hd411;
	#20
	A = 16'h3de8;
	B = 16'h3d58;
	ans_a = 16'hd3e3;
	#20
	A = 16'hbfd5;
	B = 16'hb4ed;
	ans_a = 16'hd3d0;
	#20
	A = 16'haf3e;
	B = 16'h2b68;
	ans_a = 16'hd3d0;
	#20
	A = 16'hbe61;
	B = 16'h3d4a;
	ans_a = 16'hd40a;
	#20
	A = 16'hbc80;
	B = 16'hb936;
	ans_a = 16'hd3fd;
	#20
	A = 16'h3f9f;
	B = 16'h3c24;
	ans_a = 16'hd3be;
	#20
	A = 16'h3981;
	B = 16'h3c36;
	ans_a = 16'hd3a7;
	#20
	A = 16'h3e8c;
	B = 16'h3d51;
	ans_a = 16'hd361;
	#20
	A = 16'hbeb3;
	B = 16'hbebd;
	ans_a = 16'hd307;
	#20
	A = 16'h3d0f;
	B = 16'h3672;
	ans_a = 16'hd2f7;
	#20
	A = 16'hbc1c;
	B = 16'h3f59;
	ans_a = 16'hd333;
	#20
	A = 16'hbd53;
	B = 16'hbb20;
	ans_a = 16'hd30d;
	#20
	A = 16'hb8d7;
	B = 16'h3538;
	ans_a = 16'hd313;
	#20
	A = 16'hbcc9;
	B = 16'hb07a;
	ans_a = 16'hd30e;
	#20
	A = 16'h3cc5;
	B = 16'h3e41;
	ans_a = 16'hd2d2;
	#20
	A = 16'h3ae1;
	B = 16'h3ed7;
	ans_a = 16'hd2a3;
	#20
	A = 16'hbd62;
	B = 16'h3fac;
	ans_a = 16'hd2f6;
	#20
	A = 16'h3b60;
	B = 16'h3cd0;
	ans_a = 16'hd2d2;
	#20
	A = 16'h3c3e;
	B = 16'hbcb0;
	ans_a = 16'hd2fa;
	#20
	A = 16'h3c97;
	B = 16'hb284;
	ans_a = 16'hd301;
	#20
	A = 16'hbc5f;
	B = 16'hbff8;
	ans_a = 16'hd2bb;
	#20
	A = 16'h2e69;
	B = 16'hbe47;
	ans_a = 16'hd2c0;
	#20
	A = 16'h39b2;
	B = 16'h345e;
	ans_a = 16'hd2ba;
	#20
	A = 16'hb8f0;
	B = 16'h3da4;
	ans_a = 16'hd2d6;
	#20
	A = 16'hbcd0;
	B = 16'hb147;
	ans_a = 16'hd2d0;
	#20
	A = 16'hb0fb;
	B = 16'h3d63;
	ans_a = 16'hd2d7;
	#20
	A = 16'h3d26;
	B = 16'hbe73;
	ans_a = 16'hd319;
	#20
	A = 16'h3cd9;
	B = 16'hba16;
	ans_a = 16'hd336;
	#20
	A = 16'h3f2a;
	B = 16'h3a42;
	ans_a = 16'hd309;
	#20
	A = 16'h3a4c;
	B = 16'hbe2e;
	ans_a = 16'hd330;
	#20
	A = 16'hb128;
	B = 16'hafbd;
	ans_a = 16'hd32f;
	#20
	A = 16'had42;
	B = 16'hbe8d;
	ans_a = 16'hd32b;
	#20
	A = 16'hb540;
	B = 16'hbabd;
	ans_a = 16'hd322;
	#20
	A = 16'h3f16;
	B = 16'haceb;
	ans_a = 16'hd326;
	#20
	A = 16'h3c49;
	B = 16'hb770;
	ans_a = 16'hd336;
	#20
	A = 16'hb09a;
	B = 16'h3af5;
	ans_a = 16'hd33a;
	#20
	A = 16'h3f59;
	B = 16'hbd44;
	ans_a = 16'hd387;
	#20
	A = 16'hb3d8;
	B = 16'hb9cc;
	ans_a = 16'hd381;
	#20
	A = 16'haf71;
	B = 16'h34a7;
	ans_a = 16'hd382;
	#20
	A = 16'hb170;
	B = 16'h3e58;
	ans_a = 16'hd38b;
	#20
	A = 16'h396c;
	B = 16'hb46a;
	ans_a = 16'hd391;
	#20
	A = 16'hbd37;
	B = 16'hbda2;
	ans_a = 16'hd356;
	#20
	A = 16'hb889;
	B = 16'h395b;
	ans_a = 16'hd362;
	#20
	A = 16'hbaa6;
	B = 16'h39f5;
	ans_a = 16'hd376;
	#20
	A = 16'h3c88;
	B = 16'h3874;
	ans_a = 16'hd362;
	#20
	A = 16'h3eed;
	B = 16'hbf0c;
	ans_a = 16'hd3c4;
	#20
	A = 16'h35cf;
	B = 16'h3a67;
	ans_a = 16'hd3bb;
	#20
	A = 16'hb597;
	B = 16'h35ce;
	ans_a = 16'hd3bf;
	#20
	A = 16'hb69e;
	B = 16'hb868;
	ans_a = 16'hd3b8;
	#20
	A = 16'hbc2b;
	B = 16'hba13;
	ans_a = 16'hd39f;
	#20
	A = 16'hbefe;
	B = 16'h39c1;
	ans_a = 16'hd3c7;
	#20
	A = 16'h2f89;
	B = 16'hbcfc;
	ans_a = 16'hd3cc;
	#20
	A = 16'h35e2;
	B = 16'hbc9a;
	ans_a = 16'hd3da;
	#20
	A = 16'h3858;
	B = 16'h3f16;
	ans_a = 16'hd3bb;
	#20
	A = 16'h3ebe;
	B = 16'h310d;
	ans_a = 16'hd3b2;
	#20
	A = 16'h3915;
	B = 16'h3edf;
	ans_a = 16'hd38f;
	#20
	A = 16'h3c7c;
	B = 16'h39b4;
	ans_a = 16'hd375;
	#20
	A = 16'h3dec;
	B = 16'hba9e;
	ans_a = 16'hd39c;
	#20
	A = 16'hbd6b;
	B = 16'h3d69;
	ans_a = 16'hd3d7;
	#20
	A = 16'h3fcd;
	B = 16'h3b1a;
	ans_a = 16'hd3a0;
	#20
	A = 16'h38c5;
	B = 16'h3b86;
	ans_a = 16'hd38e;
	#20
	A = 16'hbe62;
	B = 16'hb815;
	ans_a = 16'hd374;
	#20
	A = 16'h28a9;
	B = 16'hb6a1;
	ans_a = 16'hd374;
	#20
	A = 16'hbe34;
	B = 16'h36e9;
	ans_a = 16'hd389;
	#20
	A = 16'hbbe0;
	B = 16'h3dbe;
	ans_a = 16'hd3b6;
	#20
	A = 16'h3bed;
	B = 16'hbf3a;
	ans_a = 16'hd3ef;
	#20
	A = 16'h37a7;
	B = 16'h3d86;
	ans_a = 16'hd3da;
	#20
	A = 16'h3cd2;
	B = 16'hb309;
	ans_a = 16'hd3e2;
	#20
	A = 16'h3e31;
	B = 16'hbd30;
	ans_a = 16'hd411;
	#20
	A = 16'h3dc5;
	B = 16'h3753;
	ans_a = 16'hd406;
	#20
	A = 16'hbe21;
	B = 16'hbeea;
	ans_a = 16'hd3b7;
	#20
	A = 16'hbc22;
	B = 16'hba54;
	ans_a = 16'hd39d;
	#20
	A = 16'hb3b7;
	B = 16'hbcce;
	ans_a = 16'hd394;
	#20
	A = 16'h3b5c;
	B = 16'hbe00;
	ans_a = 16'hd3c0;
	#20
	A = 16'hb805;
	B = 16'h38a6;
	ans_a = 16'hd3c9;
	#20
	A = 16'h3247;
	B = 16'hb3ec;
	ans_a = 16'hd3cb;
	#20
	A = 16'hb91d;
	B = 16'h3aa4;
	ans_a = 16'hd3dc;
	#20
	A = 16'h3b1d;
	B = 16'hbbbd;
	ans_a = 16'hd3f8;
	#20
	A = 16'hb93e;
	B = 16'hbe31;
	ans_a = 16'hd3d8;
	#20
	A = 16'h38a7;
	B = 16'hbdbc;
	ans_a = 16'hd3f3;
	#20
	A = 16'h3ec5;
	B = 16'h38ee;
	ans_a = 16'hd3d2;
	#20
	A = 16'hbe9e;
	B = 16'hbc96;
	ans_a = 16'hd395;
	#20
	A = 16'h36d9;
	B = 16'h3eff;
	ans_a = 16'hd37d;
	#20
	A = 16'h3c97;
	B = 16'hb447;
	ans_a = 16'hd387;
	#20
	A = 16'h3898;
	B = 16'h3c02;
	ans_a = 16'hd375;
	#20
	A = 16'h3616;
	B = 16'hb634;
	ans_a = 16'hd37a;
	#20
	A = 16'hbb5c;
	B = 16'hbd82;
	ans_a = 16'hd351;
	#20
	A = 16'hb84b;
	B = 16'hbeb3;
	ans_a = 16'hd334;
	#20
	A = 16'h395b;
	B = 16'h362e;
	ans_a = 16'hd32c;
	#20
	A = 16'h3510;
	B = 16'h3eed;
	ans_a = 16'hd31a;
	#20
	A = 16'hbe4f;
	B = 16'hb924;
	ans_a = 16'hd2fa;
	#20
	A = 16'h3913;
	B = 16'hbe58;
	ans_a = 16'hd31a;
	#20
	A = 16'hb614;
	B = 16'h368d;
	ans_a = 16'hd31f;
	#20
	A = 16'hbc4c;
	B = 16'hbb7e;
	ans_a = 16'hd2ff;
	#20
	A = 16'hbf5b;
	B = 16'hbc97;
	ans_a = 16'hd2bc;
	#20
	A = 16'hb416;
	B = 16'h320e;
	ans_a = 16'hd2be;
	#20
	A = 16'hbf3c;
	B = 16'hbffe;
	ans_a = 16'hd24a;
	#20
	A = 16'h358f;
	B = 16'h3e88;
	ans_a = 16'hd238;
	#20
	A = 16'haf27;
	B = 16'h3b04;
	ans_a = 16'hd23b;
	#20
	A = 16'hbd8a;
	B = 16'h3d2e;
	ans_a = 16'hd274;
	#20
	A = 16'h3ec6;
	B = 16'hb93a;
	ans_a = 16'hd297;
	#20
	A = 16'hbc38;
	B = 16'hbce2;
	ans_a = 16'hd26e;
	#20
	A = 16'hb9a5;
	B = 16'h33bf;
	ans_a = 16'hd273;
	#20
	A = 16'h3dbe;
	B = 16'h9db6;
	ans_a = 16'hd273;
	#20
	A = 16'hb6a3;
	B = 16'h3a4f;
	ans_a = 16'hd27d;
	#20
	A = 16'hbf54;
	B = 16'hb3b6;
	ans_a = 16'hd26f;
	#20
	A = 16'hb8b0;
	B = 16'h3a7a;
	ans_a = 16'hd27e;
	#20
	A = 16'h3359;
	B = 16'h28aa;
	ans_a = 16'hd27e;
	#20
	A = 16'h3f1d;
	B = 16'haf0e;
	ans_a = 16'hd284;
	#20
	A = 16'hb01d;
	B = 16'h3c1c;
	ans_a = 16'hd288;
	#20
	A = 16'hb85f;
	B = 16'hb848;
	ans_a = 16'hd27f;
	#20
	A = 16'hbe81;
	B = 16'hbe93;
	ans_a = 16'hd22a;
	#20
	A = 16'h3c7d;
	B = 16'hbd89;
	ans_a = 16'hd25c;
	#20
	A = 16'h3bee;
	B = 16'hbe24;
	ans_a = 16'hd28d;
	#20
	A = 16'h3aa8;
	B = 16'hbef9;
	ans_a = 16'hd2bb;
	#20
	A = 16'hb424;
	B = 16'hb581;
	ans_a = 16'hd2b8;
	#20
	A = 16'ha360;
	B = 16'h3a5c;
	ans_a = 16'hd2b8;
	#20
	A = 16'hbf61;
	B = 16'h3e4a;
	ans_a = 16'hd315;
	#20
	A = 16'hbd55;
	B = 16'hae51;
	ans_a = 16'hd311;
	#20
	A = 16'h3d3e;
	B = 16'hbe35;
	ans_a = 16'hd352;
	#20
	A = 16'hbfd6;
	B = 16'h2edf;
	ans_a = 16'hd359;
	#20
	A = 16'h3a7f;
	B = 16'h3c70;
	ans_a = 16'hd33c;
	#20
	A = 16'hbc22;
	B = 16'hb54d;
	ans_a = 16'hd331;
	#20
	A = 16'hb8cd;
	B = 16'h3dc8;
	ans_a = 16'hd34d;
	#20
	A = 16'hb5b0;
	B = 16'hbf72;
	ans_a = 16'hd338;
	#20
	A = 16'hbb1a;
	B = 16'h3d2f;
	ans_a = 16'hd35d;
	#20
	A = 16'hb2af;
	B = 16'h3c0c;
	ans_a = 16'hd364;
	#20
	A = 16'h3c2d;
	B = 16'hb96c;
	ans_a = 16'hd37b;
	#20
	A = 16'h2f5b;
	B = 16'hbf10;
	ans_a = 16'hd381;
	#20
	A = 16'h3d95;
	B = 16'h3e84;
	ans_a = 16'hd338;
	#20
	A = 16'hb81e;
	B = 16'hb8ca;
	ans_a = 16'hd32e;
	#20
	A = 16'h31a6;
	B = 16'hbf4e;
	ans_a = 16'hd338;
	#20
	A = 16'h3905;
	B = 16'hb400;
	ans_a = 16'hd33d;
	#20
	A = 16'hbd96;
	B = 16'hb907;
	ans_a = 16'hd321;
	#20
	A = 16'h3d47;
	B = 16'h35c5;
	ans_a = 16'hd312;
	#20
	A = 16'h363c;
	B = 16'h382e;
	ans_a = 16'hd30b;
	#20
	A = 16'h3d79;
	B = 16'hbf82;
	ans_a = 16'hd35d;
	#20
	A = 16'h3e03;
	B = 16'h3a4c;
	ans_a = 16'hd337;
	#20
	A = 16'hbf3e;
	B = 16'h3da5;
	ans_a = 16'hd389;
	#20
	A = 16'hbfd9;
	B = 16'h35f2;
	ans_a = 16'hd3a0;
	#20
	A = 16'hbd15;
	B = 16'hb3ac;
	ans_a = 16'hd396;
	#20
	A = 16'hb95c;
	B = 16'h3477;
	ans_a = 16'hd39c;
	#20
	A = 16'hb978;
	B = 16'hbabf;
	ans_a = 16'hd38a;
	#20
	A = 16'h3c1e;
	B = 16'h3435;
	ans_a = 16'hd381;
	#20
	A = 16'hafe4;
	B = 16'h3caf;
	ans_a = 16'hd386;
	#20
	A = 16'h3a2b;
	B = 16'hb467;
	ans_a = 16'hd38d;
	#20
	A = 16'hbd30;
	B = 16'hb534;
	ans_a = 16'hd380;
	#20
	A = 16'h3f4d;
	B = 16'hbc8e;
	ans_a = 16'hd3c2;
	#20
	A = 16'h3df3;
	B = 16'h3ee5;
	ans_a = 16'hd370;
	#20
	A = 16'h3e81;
	B = 16'hb4d3;
	ans_a = 16'hd380;
	#20
	A = 16'hbf46;
	B = 16'h35ad;
	ans_a = 16'hd395;
	#20
	A = 16'hb8af;
	B = 16'h3c4a;
	ans_a = 16'hd3a9;
	#20
	A = 16'h3e03;
	B = 16'hb2c2;
	ans_a = 16'hd3b3;
	#20
	A = 16'hbe11;
	B = 16'hbefa;
	ans_a = 16'hd35e;
	#20
	A = 16'hba6b;
	B = 16'h3f82;
	ans_a = 16'hd38e;
	#20
	A = 16'h3f42;
	B = 16'hb301;
	ans_a = 16'hd39b;
	#20
	A = 16'hbdec;
	B = 16'hbb85;
	ans_a = 16'hd36e;
	#20
	A = 16'h3f5e;
	B = 16'hbf93;
	ans_a = 16'hd3de;
	#20
	A = 16'h3cdb;
	B = 16'haeaf;
	ans_a = 16'hd3e2;
	#20
	A = 16'h3df9;
	B = 16'h3ac0;
	ans_a = 16'hd3ba;
	#20
	A = 16'hbc38;
	B = 16'hbd93;
	ans_a = 16'hd38b;
	#20
	A = 16'h33ef;
	B = 16'hb8c9;
	ans_a = 16'hd390;
	#20
	A = 16'hbeb2;
	B = 16'hbed3;
	ans_a = 16'hd335;
	#20
	A = 16'hbf23;
	B = 16'h3e0e;
	ans_a = 16'hd38b;
	#20
	A = 16'h3db8;
	B = 16'h372a;
	ans_a = 16'hd377;
	#20
	A = 16'h358b;
	B = 16'h3d47;
	ans_a = 16'hd368;
	#20
	A = 16'h39cf;
	B = 16'hbfcf;
	ans_a = 16'hd395;
	#20
	A = 16'hb694;
	B = 16'h31f9;
	ans_a = 16'hd397;
	#20
	A = 16'h3064;
	B = 16'hb281;
	ans_a = 16'hd398;
	#20
	A = 16'hb863;
	B = 16'hbbe3;
	ans_a = 16'hd387;
	#20
	A = 16'h3281;
	B = 16'hbfb2;
	ans_a = 16'hd394;
	#20
	A = 16'hb258;
	B = 16'hba40;
	ans_a = 16'hd38f;
	#20
	A = 16'h3df8;
	B = 16'h3d0f;
	ans_a = 16'hd353;
	#20
	A = 16'h3ee0;
	B = 16'hb104;
	ans_a = 16'hd35c;
	#20
	A = 16'hb642;
	B = 16'h3cd8;
	ans_a = 16'hd36b;
	#20
	A = 16'h2ecf;
	B = 16'h3f7c;
	ans_a = 16'hd365;
	#20
	A = 16'hbfff;
	B = 16'h3b2a;
	ans_a = 16'hd39e;
	#20
	A = 16'hbf79;
	B = 16'h3842;
	ans_a = 16'hd3be;
	#20
	A = 16'hbe84;
	B = 16'hb71f;
	ans_a = 16'hd3a7;
	#20
	A = 16'hbaca;
	B = 16'h3605;
	ans_a = 16'hd3b1;
	#20
	A = 16'h3849;
	B = 16'h3db2;
	ans_a = 16'hd399;
	#20
	A = 16'hbf88;
	B = 16'h3e03;
	ans_a = 16'hd3f4;
	#20
	A = 16'h3b5b;
	B = 16'hb994;
	ans_a = 16'hd404;
	#20
	A = 16'h3503;
	B = 16'h34db;
	ans_a = 16'hd402;
	#20
	A = 16'h3648;
	B = 16'h3c2c;
	ans_a = 16'hd3f7;
	#20
	A = 16'h3fca;
	B = 16'haf2d;
	ans_a = 16'hd3fe;
	#20
	A = 16'h3ea4;
	B = 16'h33c8;
	ans_a = 16'hd3f1;
	#20
	A = 16'h392e;
	B = 16'h3318;
	ans_a = 16'hd3ec;
	#20
	A = 16'hbc0b;
	B = 16'h3098;
	ans_a = 16'hd3f1;
	#20
	A = 16'hb932;
	B = 16'h3e8a;
	ans_a = 16'hd409;
	#20
	A = 16'hb778;
	B = 16'hbeae;
	ans_a = 16'hd3f9;
	#20
	A = 16'h3981;
	B = 16'hb7b4;
	ans_a = 16'hd402;
	#20
	A = 16'hb52f;
	B = 16'hbc8f;
	ans_a = 16'hd3f8;
	#20
	A = 16'h9d55;
	B = 16'hbc7f;
	ans_a = 16'hd3f8;
	#20
	A = 16'h3cc1;
	B = 16'hba38;
	ans_a = 16'hd40b;
	#20
	A = 16'h3ccc;
	B = 16'h36a4;
	ans_a = 16'hd403;
	#20
	A = 16'hbaac;
	B = 16'hbce3;
	ans_a = 16'hd3e5;
	#20
	A = 16'hb8b4;
	B = 16'hb315;
	ans_a = 16'hd3e1;
	#20
	A = 16'hbb4c;
	B = 16'hbe73;
	ans_a = 16'hd3b2;
	#20
	A = 16'h3943;
	B = 16'hb2d4;
	ans_a = 16'hd3b6;
	#20
	A = 16'h3449;
	B = 16'h36b8;
	ans_a = 16'hd3b2;
	#20
	A = 16'h2e93;
	B = 16'h3a2b;
	ans_a = 16'hd3af;
	#20
	A = 16'hbaab;
	B = 16'h3de2;
	ans_a = 16'hd3d6;
	#20
	A = 16'h2e40;
	B = 16'h348b;
	ans_a = 16'hd3d5;
	#20
	A = 16'h3908;
	B = 16'hbd7b;
	ans_a = 16'hd3f1;
	#20
	A = 16'h3cb3;
	B = 16'h3c05;
	ans_a = 16'hd3cb;
	#20
	A = 16'h3b9b;
	B = 16'hbb25;
	ans_a = 16'hd3e6;
	#20
	A = 16'h3ba2;
	B = 16'h3cc3;
	ans_a = 16'hd3c2;
	#20
	A = 16'h3cda;
	B = 16'hb701;
	ans_a = 16'hd3d3;
	#20
	A = 16'h3973;
	B = 16'h3ccc;
	ans_a = 16'hd3b9;
	#20
	A = 16'h288b;
	B = 16'h34ca;
	ans_a = 16'hd3b9;
	#20
	A = 16'h36c0;
	B = 16'hbd51;
	ans_a = 16'hd3cb;
	#20
	A = 16'h3a78;
	B = 16'hbc3b;
	ans_a = 16'hd3e6;
	#20
	A = 16'h3e23;
	B = 16'h3c32;
	ans_a = 16'hd3b2;
	#20
	A = 16'h3f2d;
	B = 16'h391f;
	ans_a = 16'hd38d;
	#20
	A = 16'hbfdc;
	B = 16'hbfb5;
	ans_a = 16'hd314;
	#20
	A = 16'hb589;
	B = 16'hb52b;
	ans_a = 16'hd310;
	#20
	A = 16'h3966;
	B = 16'hb312;
	ans_a = 16'hd315;
	#20
	A = 16'h36c4;
	B = 16'h3b5e;
	ans_a = 16'hd309;
	#20
	A = 16'hbdff;
	B = 16'h3ee1;
	ans_a = 16'hd35c;
	#20
	A = 16'h3f93;
	B = 16'h3e58;
	ans_a = 16'hd2fc;
	#20
	A = 16'hb0bf;
	B = 16'hbe21;
	ans_a = 16'hd2f5;
	#20
	A = 16'hb8ad;
	B = 16'h3eb8;
	ans_a = 16'hd314;
	#20
	A = 16'h3f4e;
	B = 16'hbfe9;
	ans_a = 16'hd388;
	#20
	A = 16'h323a;
	B = 16'h3f71;
	ans_a = 16'hd37c;
	#20
	A = 16'hbd5d;
	B = 16'hbe2c;
	ans_a = 16'hd33a;
	#20
	A = 16'hb898;
	B = 16'h3eb2;
	ans_a = 16'hd359;
	#20
	A = 16'h3a9a;
	B = 16'h3c17;
	ans_a = 16'hd33e;
	#20
	A = 16'hba75;
	B = 16'hbd67;
	ans_a = 16'hd31b;
	#20
	A = 16'haf23;
	B = 16'hb881;
	ans_a = 16'hd319;
	#20
	A = 16'hbde4;
	B = 16'h3e06;
	ans_a = 16'hd360;
	#20
	A = 16'hbeb1;
	B = 16'h3592;
	ans_a = 16'hd373;
	#20
	A = 16'h35dd;
	B = 16'h37b9;
	ans_a = 16'hd36d;
	#20
	A = 16'h95fa;
	B = 16'hbc25;
	ans_a = 16'hd36d;
	#20
	A = 16'h38a5;
	B = 16'h3c19;
	ans_a = 16'hd35a;
	#20
	A = 16'h3916;
	B = 16'hbea5;
	ans_a = 16'hd37c;
	#20
	A = 16'hbd59;
	B = 16'hb53a;
	ans_a = 16'hd36e;
	#20
	A = 16'h35a8;
	B = 16'hbe31;
	ans_a = 16'hd380;
	#20
	A = 16'hbe42;
	B = 16'hb2ec;
	ans_a = 16'hd375;
	#20
	A = 16'hb53e;
	B = 16'h3c23;
	ans_a = 16'hd380;
	#20
	A = 16'h2f36;
	B = 16'hbfc6;
	ans_a = 16'hd387;
	#20
	A = 16'hbd1f;
	B = 16'had87;
	ans_a = 16'hd383;
	#20
	A = 16'hbf2e;
	B = 16'h3d1c;
	ans_a = 16'hd3cc;
	#20
	A = 16'hbed4;
	B = 16'h3853;
	ans_a = 16'hd3ea;
	#20
	A = 16'h3dd5;
	B = 16'h3d52;
	ans_a = 16'hd3ac;
	#20
	A = 16'h3827;
	B = 16'h3d87;
	ans_a = 16'hd395;
	#20
	A = 16'hbd78;
	B = 16'h3e46;
	ans_a = 16'hd3da;
	#20
	A = 16'hb99e;
	B = 16'h3a8c;
	ans_a = 16'hd3ec;
	#20
	A = 16'h26a8;
	B = 16'hb866;
	ans_a = 16'hd3ec;
	#20
	A = 16'hbf74;
	B = 16'h3ce1;
	ans_a = 16'hd41a;
	#20
	A = 16'h38f3;
	B = 16'h3062;
	ans_a = 16'hd419;
	#20
	A = 16'hbde6;
	B = 16'hbf9d;
	ans_a = 16'hd3d8;
	#20
	A = 16'hb004;
	B = 16'h2931;
	ans_a = 16'hd3d8;
	#20
	A = 16'h3b8e;
	B = 16'hb136;
	ans_a = 16'hd3dd;
	#20
	A = 16'hbe88;
	B = 16'hb141;
	ans_a = 16'hd3d4;
	#20
	A = 16'hbc05;
	B = 16'hb85b;
	ans_a = 16'hd3c2;
	#20
	A = 16'hbf96;
	B = 16'h331f;
	ans_a = 16'hd3d0;
	#20
	A = 16'h3a77;
	B = 16'h385f;
	ans_a = 16'hd3c2;
	#20
	A = 16'h3d0c;
	B = 16'h3eb1;
	ans_a = 16'hd37e;
	#20
	A = 16'h2fc0;
	B = 16'hbd81;
	ans_a = 16'hd383;
	#20
	A = 16'h3849;
	B = 16'hb6bf;
	ans_a = 16'hd38a;
	#20
	A = 16'hbbf3;
	B = 16'hb9c6;
	ans_a = 16'hd373;
	#20
	A = 16'h38a9;
	B = 16'h3f7e;
	ans_a = 16'hd350;
	#20
	A = 16'habb6;
	B = 16'h3d1a;
	ans_a = 16'hd352;
	#20
	A = 16'hbfbd;
	B = 16'hb73b;
	ans_a = 16'hd336;
	#20
	A = 16'h2786;
	B = 16'hbdd3;
	ans_a = 16'hd337;
	#20
	A = 16'hb83e;
	B = 16'hbdef;
	ans_a = 16'hd31e;
	#20
	A = 16'h3f62;
	B = 16'hbf2c;
	ans_a = 16'hd388;
	#20
	A = 16'hbdcd;
	B = 16'h354e;
	ans_a = 16'hd397;
	#20
	A = 16'hbd87;
	B = 16'h3535;
	ans_a = 16'hd3a5;
	#20
	A = 16'hb800;
	B = 16'h3e7e;
	ans_a = 16'hd3bf;
	#20
	A = 16'hbc59;
	B = 16'h3722;
	ans_a = 16'hd3cf;
	#20
	A = 16'hbe21;
	B = 16'h3ddf;
	ans_a = 16'hd40b;
	#20
	A = 16'h3657;
	B = 16'hb581;
	ans_a = 16'hd40d;
	#20
	A = 16'hb075;
	B = 16'hbfe1;
	ans_a = 16'hd409;
	#20
	A = 16'hbf27;
	B = 16'h3e7e;
	ans_a = 16'hd437;
	#20
	A = 16'hbc3b;
	B = 16'h3a09;
	ans_a = 16'hd444;
	#20
	A = 16'hbf2d;
	B = 16'h3b6a;
	ans_a = 16'hd45f;
	#20
	A = 16'h3874;
	B = 16'h3ef7;
	ans_a = 16'hd44f;
	#20
	A = 16'hbe8d;
	B = 16'h2fb3;
	ans_a = 16'hd452;
	#20
	A = 16'h3cb7;
	B = 16'hbf39;
	ans_a = 16'hd474;
	#20
	A = 16'h3baf;
	B = 16'h3d5d;
	ans_a = 16'hd45f;
	#20
	A = 16'h3fe5;
	B = 16'hbefa;
	ans_a = 16'hd496;
	#20
	A = 16'h3f8a;
	B = 16'h3a77;
	ans_a = 16'hd47e;
	#20
	A = 16'ha512;
	B = 16'hbab2;
	ans_a = 16'hd47e;
	#20
	A = 16'hb5ff;
	B = 16'hbdae;
	ans_a = 16'hd475;
	#20
	A = 16'hbb11;
	B = 16'h37e3;
	ans_a = 16'hd47c;
	#20
	A = 16'hb099;
	B = 16'hb844;
	ans_a = 16'hd47b;
	#20
	A = 16'h2a39;
	B = 16'hbca7;
	ans_a = 16'hd47c;
	#20
	A = 16'hb725;
	B = 16'h3956;
	ans_a = 16'hd481;
	#20
	A = 16'h3b93;
	B = 16'hbc0d;
	ans_a = 16'hd490;
	#20
	A = 16'h3a3e;
	B = 16'hba48;
	ans_a = 16'hd49a;
	#20
	A = 16'h3985;
	B = 16'h3c14;
	ans_a = 16'hd48f;
	#20
	A = 16'h3eae;
	B = 16'hbbda;
	ans_a = 16'hd4a9;
	#20
	A = 16'hb9b4;
	B = 16'h1c2e;
	ans_a = 16'hd4a9;
	#20
	A = 16'hbf1a;
	B = 16'hbfe0;
	ans_a = 16'hd471;
	#20
	A = 16'hb98d;
	B = 16'hb8e1;
	ans_a = 16'hd46a;
	#20
	A = 16'hb7b0;
	B = 16'hb99d;
	ans_a = 16'hd465;
	#20
	A = 16'h38b7;
	B = 16'hbcae;
	ans_a = 16'hd470;
	#20
	A = 16'haefa;
	B = 16'h35bf;
	ans_a = 16'hd471;
	#20
	A = 16'hb89d;
	B = 16'h3b2a;
	ans_a = 16'hd479;
	#20
	A = 16'hbf6c;
	B = 16'h3e97;
	ans_a = 16'hd4aa;
	#20
	A = 16'hbce3;
	B = 16'hbb34;
	ans_a = 16'hd498;
	#20
	A = 16'h3df3;
	B = 16'hb4af;
	ans_a = 16'hd49f;
	#20
	A = 16'hbd43;
	B = 16'hbfc7;
	ans_a = 16'hd476;
	#20
	A = 16'hba41;
	B = 16'hbcf7;
	ans_a = 16'hd466;
	#20
	A = 16'h3b05;
	B = 16'hbf82;
	ans_a = 16'hd480;
	#20
	A = 16'h39ed;
	B = 16'hbc4e;
	ans_a = 16'hd48d;
	#20
	A = 16'h3d94;
	B = 16'hbde4;
	ans_a = 16'hd4ae;
	#20
	A = 16'h393f;
	B = 16'h341a;
	ans_a = 16'hd4ab;
	#20
	A = 16'h396e;
	B = 16'h3e51;
	ans_a = 16'hd49a;
	#20
	A = 16'hba41;
	B = 16'hb96e;
	ans_a = 16'hd492;
	#20
	A = 16'h3be8;
	B = 16'hbeeb;
	ans_a = 16'hd4ad;
	#20
	A = 16'h32eb;
	B = 16'hbd7c;
	ans_a = 16'hd4b2;
	#20
	A = 16'hbd25;
	B = 16'hbebb;
	ans_a = 16'hd48f;
	#20
	A = 16'hb7f3;
	B = 16'h3f08;
	ans_a = 16'hd49d;
	#20
	A = 16'h3b1a;
	B = 16'hbf0b;
	ans_a = 16'hd4b6;
	#20
	A = 16'hbab4;
	B = 16'hb920;
	ans_a = 16'hd4ad;
	#20
	A = 16'h3e84;
	B = 16'h35ac;
	ans_a = 16'hd4a4;
	#20
	A = 16'hb6af;
	B = 16'h3e5f;
	ans_a = 16'hd4af;
	#20
	A = 16'hb925;
	B = 16'h3c90;
	ans_a = 16'hd4bb;
	#20
	A = 16'hbd07;
	B = 16'h3a04;
	ans_a = 16'hd4ca;
	#20
	A = 16'hb268;
	B = 16'h3094;
	ans_a = 16'hd4ca;
	#20
	A = 16'h34f8;
	B = 16'h3ddc;
	ans_a = 16'hd4c3;
	#20
	A = 16'h384e;
	B = 16'h3479;
	ans_a = 16'hd4c1;
	#20
	A = 16'hbef4;
	B = 16'hb96b;
	ans_a = 16'hd4ae;
	#20
	A = 16'h3c16;
	B = 16'hbb3a;
	ans_a = 16'hd4bd;
	#20
	A = 16'h3694;
	B = 16'hb496;
	ans_a = 16'hd4bf;
	#20
	A = 16'h3fbf;
	B = 16'h3feb;
	ans_a = 16'hd482;
	#20
	A = 16'h3644;
	B = 16'hbf17;
	ans_a = 16'hd48d;
	#20
	A = 16'hba4f;
	B = 16'hb78c;
	ans_a = 16'hd487;
	#20
	A = 16'h3503;
	B = 16'hbf7d;
	ans_a = 16'hd490;
	#20
	A = 16'hbc28;
	B = 16'h3dc7;
	ans_a = 16'hd4a8;
	#20
	A = 16'hba92;
	B = 16'hbebd;
	ans_a = 16'hd492;
	#20
	A = 16'h3e99;
	B = 16'hba0c;
	ans_a = 16'hd4a6;
	#20
	A = 16'haffa;
	B = 16'h3d8f;
	ans_a = 16'hd4a9;
	#20
	A = 16'h3704;
	B = 16'h3f4a;
	ans_a = 16'hd49c;
	#20
	A = 16'h3ffd;
	B = 16'hbe5b;
	ans_a = 16'hd4cf;
	#20
	A = 16'hbb59;
	B = 16'h37e0;
	ans_a = 16'hd4d6;
	#20
	A = 16'hbd58;
	B = 16'h3d51;
	ans_a = 16'hd4f2;
	#20
	A = 16'had63;
	B = 16'h3c9c;
	ans_a = 16'hd4f4;
	#20
	A = 16'h334c;
	B = 16'h39a5;
	ans_a = 16'hd4f1;
	#20
	A = 16'h3501;
	B = 16'hbad4;
	ans_a = 16'hd4f5;
	#20
	A = 16'h3390;
	B = 16'hbf4c;
	ans_a = 16'hd4fc;
	#20
	A = 16'h3974;
	B = 16'hadd9;
	ans_a = 16'hd4fd;
	#20
	A = 16'hbbf1;
	B = 16'hbae8;
	ans_a = 16'hd4ef;
	#20
	A = 16'h3795;
	B = 16'h2985;
	ans_a = 16'hd4ef;
	#20
	A = 16'h380f;
	B = 16'h3f38;
	ans_a = 16'hd4e0;
	#20
	A = 16'hbfc9;
	B = 16'h3c24;
	ans_a = 16'hd500;
	#20
	A = 16'hb051;
	B = 16'h3c3c;
	ans_a = 16'hd502;
	#20
	A = 16'h2ee7;
	B = 16'h3b69;
	ans_a = 16'hd500;
	#20
	A = 16'hb9e6;
	B = 16'h3f42;
	ans_a = 16'hd515;
	#20
	A = 16'h3b48;
	B = 16'h38ba;
	ans_a = 16'hd50c;
	#20
	A = 16'h3dd4;
	B = 16'hb5ae;
	ans_a = 16'hd514;
	#20
	A = 16'hbc60;
	B = 16'ha861;
	ans_a = 16'hd513;
	#20
	A = 16'hb56f;
	B = 16'hb4cb;
	ans_a = 16'hd511;
	#20
	A = 16'hb477;
	B = 16'hbd16;
	ans_a = 16'hd50b;
	#20
	A = 16'h3eea;
	B = 16'hb668;
	ans_a = 16'hd516;
	#20
	A = 16'hacf9;
	B = 16'hbaee;
	ans_a = 16'hd515;
	#20
	A = 16'hba91;
	B = 16'h3d3e;
	ans_a = 16'hd526;
	#20
	A = 16'hb755;
	B = 16'h3bd0;
	ans_a = 16'hd52d;
	#20
	A = 16'hb568;
	B = 16'h3541;
	ans_a = 16'hd52f;
	#20
	A = 16'h3941;
	B = 16'hb9c6;
	ans_a = 16'hd537;
	#20
	A = 16'hbabd;
	B = 16'hb154;
	ans_a = 16'hd535;
	#20
	A = 16'hb85c;
	B = 16'hbc5c;
	ans_a = 16'hd52c;
	#20
	A = 16'h3ec3;
	B = 16'h3b8f;
	ans_a = 16'hd512;
	#20
	A = 16'h3e3b;
	B = 16'hbf72;
	ans_a = 16'hd540;
	#20
	A = 16'hb79c;
	B = 16'hbe5b;
	ans_a = 16'hd534;
	#20
	A = 16'h3ec7;
	B = 16'hbd4e;
	ans_a = 16'hd558;
	#20
	A = 16'h2cba;
	B = 16'h3662;
	ans_a = 16'hd558;
	#20
	A = 16'hbe19;
	B = 16'hbc9f;
	ans_a = 16'hd53c;
	#20
	A = 16'h3f96;
	B = 16'hb988;
	ans_a = 16'hd551;
	#20
	A = 16'hb8c1;
	B = 16'hb5b3;
	ans_a = 16'hd54e;
	#20
	A = 16'h3be1;
	B = 16'h3549;
	ans_a = 16'hd549;
	#20
	A = 16'h3c8e;
	B = 16'hbf7f;
	ans_a = 16'hd56b;
	#20
	A = 16'h2e94;
	B = 16'h3987;
	ans_a = 16'hd56a;
	#20
	A = 16'hbba2;
	B = 16'h2c24;
	ans_a = 16'hd56b;
	#20
	A = 16'hbc6b;
	B = 16'h3fcb;
	ans_a = 16'hd58d;
	#20
	A = 16'hbe79;
	B = 16'hb933;
	ans_a = 16'hd57c;
	#20
	A = 16'h3ef6;
	B = 16'h3cec;
	ans_a = 16'hd55a;
	#20
	A = 16'h3e59;
	B = 16'hbdf2;
	ans_a = 16'hd580;
	#20
	A = 16'hbd97;
	B = 16'hbdad;
	ans_a = 16'hd560;
	#20
	A = 16'h34cf;
	B = 16'h3548;
	ans_a = 16'hd55e;
	#20
	A = 16'h3c71;
	B = 16'h3f99;
	ans_a = 16'hd53c;
	#20
	A = 16'hbfd7;
	B = 16'hbd90;
	ans_a = 16'hd510;
	#20
	A = 16'hbfe6;
	B = 16'hbfc0;
	ans_a = 16'hd4d3;
	#20
	A = 16'ha982;
	B = 16'h3d71;
	ans_a = 16'hd4d4;
	#20
	A = 16'h38f4;
	B = 16'hbec4;
	ans_a = 16'hd4e5;
	#20
	A = 16'hb835;
	B = 16'hbafe;
	ans_a = 16'hd4de;
	#20
	A = 16'hbe25;
	B = 16'h341c;
	ans_a = 16'hd4e4;
	#20
	A = 16'hbcb2;
	B = 16'h3866;
	ans_a = 16'hd4ee;
	#20
	A = 16'h3885;
	B = 16'hbf26;
	ans_a = 16'hd4fe;
	#20
	A = 16'h3a5a;
	B = 16'h2c44;
	ans_a = 16'hd4fd;
	#20
	A = 16'h35b8;
	B = 16'haab3;
	ans_a = 16'hd4fd;
	#20
	A = 16'h38c1;
	B = 16'h3d15;
	ans_a = 16'hd4f1;
	#20
	A = 16'hbf8f;
	B = 16'hb76d;
	ans_a = 16'hd4e3;
	#20
	A = 16'h3d58;
	B = 16'hbcdc;
	ans_a = 16'hd4fd;
	#20
	A = 16'hbda8;
	B = 16'h2c0a;
	ans_a = 16'hd4fe;
	#20
	A = 16'h3de4;
	B = 16'h39e2;
	ans_a = 16'hd4ed;
	#20
	A = 16'h3d17;
	B = 16'h3b07;
	ans_a = 16'hd4db;
	#20
	A = 16'h3cf1;
	B = 16'h3c06;
	ans_a = 16'hd4c7;
	#20
	A = 16'h3afb;
	B = 16'h3f99;
	ans_a = 16'hd4ac;
	#20
	A = 16'h359a;
	B = 16'h3c47;
	ans_a = 16'hd4a6;
	#20
	A = 16'h3f46;
	B = 16'h1d50;
	ans_a = 16'hd4a6;
	#20
	A = 16'h3d25;
	B = 16'hbd5f;
	ans_a = 16'hd4c2;
	#20
	A = 16'h3625;
	B = 16'hbf01;
	ans_a = 16'hd4cd;
	#20
	A = 16'hb6bb;
	B = 16'hb8dc;
	ans_a = 16'hd4c9;
	#20
	A = 16'h3dc4;
	B = 16'h3a88;
	ans_a = 16'hd4b6;
	#20
	A = 16'hb95f;
	B = 16'hbd88;
	ans_a = 16'hd4a7;
	#20
	A = 16'hb7b1;
	B = 16'hbc59;
	ans_a = 16'hd49f;
	#20
	A = 16'h346e;
	B = 16'h3677;
	ans_a = 16'hd49d;
	#20
	A = 16'h3fd4;
	B = 16'h38a9;
	ans_a = 16'hd48b;
	#20
	A = 16'h3b76;
	B = 16'h323f;
	ans_a = 16'hd488;
	#20
	A = 16'hb98a;
	B = 16'hbc44;
	ans_a = 16'hd47c;
	#20
	A = 16'hbd54;
	B = 16'hb4d0;
	ans_a = 16'hd476;
	#20
	A = 16'h3e87;
	B = 16'h32c6;
	ans_a = 16'hd470;
	#20
	A = 16'hbbc5;
	B = 16'h138b;
	ans_a = 16'hd470;
	#20
	A = 16'hb54a;
	B = 16'hb5c6;
	ans_a = 16'hd46e;
	#20
	A = 16'h2ba4;
	B = 16'hbdd5;
	ans_a = 16'hd46f;
	#20
	A = 16'hbd25;
	B = 16'h3da1;
	ans_a = 16'hd48c;
	#20
	A = 16'h3ca9;
	B = 16'hbd3f;
	ans_a = 16'hd4a4;
	#20
	A = 16'h3c57;
	B = 16'h2a52;
	ans_a = 16'hd4a3;
	#20
	A = 16'hbb54;
	B = 16'hb571;
	ans_a = 16'hd49e;
	#20
	A = 16'hbc85;
	B = 16'hbe0e;
	ans_a = 16'hd483;
	#20
	A = 16'h9d98;
	B = 16'h3d68;
	ans_a = 16'hd483;
	#20
	A = 16'h3bc1;
	B = 16'h3985;
	ans_a = 16'hd478;
	#20
	A = 16'hb0eb;
	B = 16'hb613;
	ans_a = 16'hd477;
	#20
	A = 16'h3b87;
	B = 16'hb181;
	ans_a = 16'hd47a;
	#20
	A = 16'hbda3;
	B = 16'h35be;
	ans_a = 16'hd482;
	#20
	A = 16'hbe1d;
	B = 16'h1dc2;
	ans_a = 16'hd482;
	#20
	A = 16'h3bfe;
	B = 16'h393f;
	ans_a = 16'hd478;
	#20
	A = 16'hbdb2;
	B = 16'h3df3;
	ans_a = 16'hd49a;
	#20
	A = 16'h3dc3;
	B = 16'h3833;
	ans_a = 16'hd48e;
	#20
	A = 16'hbe37;
	B = 16'hbaac;
	ans_a = 16'hd479;
	#20
	A = 16'h3f1c;
	B = 16'hab18;
	ans_a = 16'hd47b;
	#20
	A = 16'h3c4a;
	B = 16'hae7f;
	ans_a = 16'hd47d;
	#20
	A = 16'h397d;
	B = 16'hbbb4;
	ans_a = 16'hd488;
	#20
	A = 16'hbe26;
	B = 16'hb672;
	ans_a = 16'hd47e;
	#20
	A = 16'hbcaa;
	B = 16'h3cb2;
	ans_a = 16'hd494;
	#20
	A = 16'h3b12;
	B = 16'h3bc0;
	ans_a = 16'hd486;
	#20
	A = 16'h3ad2;
	B = 16'hb886;
	ans_a = 16'hd48e;
	#20
	A = 16'hbed5;
	B = 16'hbfa8;
	ans_a = 16'hd45a;
	#20
	A = 16'hba70;
	B = 16'hbc35;
	ans_a = 16'hd44c;
	#20
	A = 16'h334c;
	B = 16'h3dd6;
	ans_a = 16'hd447;
	#20
	A = 16'h3fe1;
	B = 16'hbcd3;
	ans_a = 16'hd46d;
	#20
	A = 16'hbe69;
	B = 16'hbe85;
	ans_a = 16'hd443;
	#20
	A = 16'h39a0;
	B = 16'hba33;
	ans_a = 16'hd44c;
	#20
	A = 16'hbaa7;
	B = 16'hb858;
	ans_a = 16'hd445;
	#20
	A = 16'hb80d;
	B = 16'hb54a;
	ans_a = 16'hd442;
	#20
	A = 16'h3bff;
	B = 16'h3919;
	ans_a = 16'hd438;
	#20
	A = 16'hb0f0;
	B = 16'h3d57;
	ans_a = 16'hd43b;
	#20
	A = 16'hb220;
	B = 16'h3e7e;
	ans_a = 16'hd440;
	#20
	A = 16'h37e3;
	B = 16'h3b4c;
	ans_a = 16'hd439;
	#20
	A = 16'hbc9d;
	B = 16'hb01c;
	ans_a = 16'hd437;
	#20
	A = 16'hbcd1;
	B = 16'h35b9;
	ans_a = 16'hd43e;
	#20
	A = 16'h3ffe;
	B = 16'h3951;
	ans_a = 16'hd429;
	#20
	A = 16'hbe3c;
	B = 16'hb836;
	ans_a = 16'hd41c;
	#20
	A = 16'h375a;
	B = 16'h3a05;
	ans_a = 16'hd416;
	#20
	A = 16'h358b;
	B = 16'hbfee;
	ans_a = 16'hd421;
	#20
	A = 16'hbe5e;
	B = 16'h3bea;
	ans_a = 16'hd43a;
	#20
	A = 16'hbc7e;
	B = 16'hbfa2;
	ans_a = 16'hd418;
	#20
	A = 16'h3b62;
	B = 16'hbff0;
	ans_a = 16'hd435;
	#20
	A = 16'h3ec8;
	B = 16'h3ebe;
	ans_a = 16'hd407;
	#20
	A = 16'hbecb;
	B = 16'h357e;
	ans_a = 16'hd410;
	#20
	A = 16'hb4a2;
	B = 16'h3e98;
	ans_a = 16'hd418;
	#20
	A = 16'h2bc4;
	B = 16'hbd68;
	ans_a = 16'hd419;
	#20
	A = 16'hbdaa;
	B = 16'h3df4;
	ans_a = 16'hd43b;
	#20
	A = 16'hbc2d;
	B = 16'h3a72;
	ans_a = 16'hd448;
	#20
	A = 16'hbee6;
	B = 16'hbc6c;
	ans_a = 16'hd42a;
	#20
	A = 16'hbc92;
	B = 16'hbd64;
	ans_a = 16'hd411;
	#20
	A = 16'ha67c;
	B = 16'hb753;
	ans_a = 16'hd411;
	#20
	A = 16'haf20;
	B = 16'hbb6c;
	ans_a = 16'hd40f;
	#20
	A = 16'hb245;
	B = 16'ha81d;
	ans_a = 16'hd40f;
	#20
	A = 16'hbf1a;
	B = 16'hbf19;
	ans_a = 16'hd3b9;
	#20
	A = 16'h3b52;
	B = 16'hbb67;
	ans_a = 16'hd3d4;
	#20
	A = 16'h31d3;
	B = 16'h3c19;
	ans_a = 16'hd3ce;
	#20
	A = 16'hba8b;
	B = 16'hbbff;
	ans_a = 16'hd3b4;
	#20
	A = 16'hbe2b;
	B = 16'h3f16;
	ans_a = 16'hd406;
	#20
	A = 16'hbf34;
	B = 16'hba1f;
	ans_a = 16'hd3e0;
	#20
	A = 16'hb518;
	B = 16'hbbe4;
	ans_a = 16'hd3d6;
	#20
	A = 16'h3a2b;
	B = 16'hbe1b;
	ans_a = 16'hd3fc;
	#20
	A = 16'hbfad;
	B = 16'hbc1b;
	ans_a = 16'hd3bd;
	#20
	A = 16'h3e02;
	B = 16'hb533;
	ans_a = 16'hd3cd;
	#20
	A = 16'haef7;
	B = 16'hbda8;
	ans_a = 16'hd3c8;
	#20
	A = 16'h37c7;
	B = 16'h3902;
	ans_a = 16'hd3be;
	#20
	A = 16'h3ea8;
	B = 16'haf71;
	ans_a = 16'hd3c4;
	#20
	A = 16'hb92a;
	B = 16'h3acb;
	ans_a = 16'hd3d6;
	#20
	A = 16'hbe4e;
	B = 16'hbd1f;
	ans_a = 16'hd395;
	#20
	A = 16'h3c85;
	B = 16'h35ee;
	ans_a = 16'hd388;
	#20
	A = 16'hbf65;
	B = 16'h3eff;
	ans_a = 16'hd3ef;
	#20
	A = 16'h3311;
	B = 16'hadba;
	ans_a = 16'hd3f0;
	#20
	A = 16'h3eb0;
	B = 16'hbef6;
	ans_a = 16'hd427;
	#20
	A = 16'h3e57;
	B = 16'hbc66;
	ans_a = 16'hd443;
	#20
	A = 16'h3c5e;
	B = 16'h3e04;
	ans_a = 16'hd429;
	#20
	A = 16'hb12e;
	B = 16'h3b16;
	ans_a = 16'hd42b;
	#20
	A = 16'h3cf4;
	B = 16'hbad0;
	ans_a = 16'hd43c;
	#20
	A = 16'hbf38;
	B = 16'h36dd;
	ans_a = 16'hd448;
	#20
	A = 16'h3d62;
	B = 16'h3c1e;
	ans_a = 16'hd432;
	#20
	A = 16'hbe1d;
	B = 16'h3bb3;
	ans_a = 16'hd44a;
	#20
	A = 16'hbf87;
	B = 16'hbfd4;
	ans_a = 16'hd40f;
	#20
	A = 16'h35ea;
	B = 16'hb53e;
	ans_a = 16'hd411;
	#20
	A = 16'h3bf3;
	B = 16'hbcd3;
	ans_a = 16'hd424;
	#20
	A = 16'hb5d5;
	B = 16'h37e8;
	ans_a = 16'hd427;
	#20
	A = 16'hbc02;
	B = 16'h3be9;
	ans_a = 16'hd437;
	#20
	A = 16'hbdf9;
	B = 16'h3836;
	ans_a = 16'hd444;
	#20
	A = 16'hb90a;
	B = 16'hbfd5;
	ans_a = 16'hd430;
	#20
	A = 16'h3f56;
	B = 16'hbd9b;
	ans_a = 16'hd459;
	#20
	A = 16'h3afc;
	B = 16'hbadd;
	ans_a = 16'hd465;
	#20
	A = 16'h3e74;
	B = 16'h2e5b;
	ans_a = 16'hd462;
	#20
	A = 16'hbdf8;
	B = 16'h229e;
	ans_a = 16'hd462;
	#20
	A = 16'h3677;
	B = 16'h3acb;
	ans_a = 16'hd45d;
	#20
	A = 16'hbf66;
	B = 16'hbc2c;
	ans_a = 16'hd43e;
	#20
	A = 16'hbff8;
	B = 16'h3cf3;
	ans_a = 16'hd465;
	#20
	A = 16'h39c5;
	B = 16'hbe34;
	ans_a = 16'hd477;
	#20
	A = 16'h3e7a;
	B = 16'hbfad;
	ans_a = 16'hd4a9;
	#20
	A = 16'hbff6;
	B = 16'hbf59;
	ans_a = 16'hd46e;
	#20
	A = 16'h356b;
	B = 16'hab9e;
	ans_a = 16'hd46e;
	#20
	A = 16'h3c0e;
	B = 16'h3d1d;
	ans_a = 16'hd459;
	#20
	A = 16'h3fa4;
	B = 16'haeb4;
	ans_a = 16'hd45c;
	#20
	A = 16'h3d0a;
	B = 16'hb4ce;
	ans_a = 16'hd462;
	#20
	A = 16'h3b2c;
	B = 16'h3da3;
	ans_a = 16'hd44e;
	#20
	A = 16'hbb9d;
	B = 16'hbd51;
	ans_a = 16'hd43a;
	#20
	A = 16'h3c42;
	B = 16'h2e1e;
	ans_a = 16'hd438;
	#20
	A = 16'hbb12;
	B = 16'h39ec;
	ans_a = 16'hd442;
	#20
	A = 16'hb911;
	B = 16'hacab;
	ans_a = 16'hd441;
	#20
	A = 16'h3552;
	B = 16'h3c56;
	ans_a = 16'hd43b;
	#20
	A = 16'hbcbe;
	B = 16'h3fba;
	ans_a = 16'hd460;
	#20
	A = 16'h3bd3;
	B = 16'hbf42;
	ans_a = 16'hd47c;
	#20
	A = 16'hbc83;
	B = 16'h38e8;
	ans_a = 16'hd487;
	#20
	A = 16'hbf08;
	B = 16'hbe16;
	ans_a = 16'hd45c;
	#20
	A = 16'hb4fd;
	B = 16'h3bc5;
	ans_a = 16'hd461;
	#20
	A = 16'h3da7;
	B = 16'h3d61;
	ans_a = 16'hd443;
	#20
	A = 16'hbb5d;
	B = 16'h3d5d;
	ans_a = 16'hd457;
	#20
	A = 16'h3aa2;
	B = 16'h3ca9;
	ans_a = 16'hd448;
	#20
	A = 16'h3fe0;
	B = 16'h3b55;
	ans_a = 16'hd42b;
	#20
	A = 16'h3d93;
	B = 16'hbe54;
	ans_a = 16'hd44e;
	#20
	A = 16'hbefb;
	B = 16'hbf50;
	ans_a = 16'hd41b;
	#20
	A = 16'h316a;
	B = 16'hb1c8;
	ans_a = 16'hd41b;
	#20
	A = 16'hbe2e;
	B = 16'hbac8;
	ans_a = 16'hd406;
	#20
	A = 16'h3cd2;
	B = 16'hbd34;
	ans_a = 16'hd41f;
	#20
	A = 16'h3b0f;
	B = 16'h3cc0;
	ans_a = 16'hd40e;
	#20
	A = 16'h3ffb;
	B = 16'h3f95;
	ans_a = 16'hd3a3;
	#20
	A = 16'hba9c;
	B = 16'h3113;
	ans_a = 16'hd3a7;
	#20
	A = 16'h390a;
	B = 16'hbfdb;
	ans_a = 16'hd3cf;
	#20
	A = 16'hbb48;
	B = 16'h3b9d;
	ans_a = 16'hd3eb;
	#20
	A = 16'h3ccb;
	B = 16'h3fdd;
	ans_a = 16'hd3a0;
	#20
	A = 16'hbf98;
	B = 16'hb9d0;
	ans_a = 16'hd374;
	#20
	A = 16'hbd7a;
	B = 16'h3a5d;
	ans_a = 16'hd397;
	#20
	A = 16'h3de9;
	B = 16'hbedf;
	ans_a = 16'hd3e8;
	#20
	A = 16'h3aac;
	B = 16'hbc69;
	ans_a = 16'hd403;
	#20
	A = 16'hb746;
	B = 16'h3b61;
	ans_a = 16'hd40a;
	#20
	A = 16'hbded;
	B = 16'h3e20;
	ans_a = 16'hd42e;
	#20
	A = 16'h3de7;
	B = 16'h3f60;
	ans_a = 16'hd402;
	#20
	A = 16'h3943;
	B = 16'hbf04;
	ans_a = 16'hd414;
	#20
	A = 16'h3e77;
	B = 16'h3c41;
	ans_a = 16'hd3f1;
	#20
	A = 16'hbc1f;
	B = 16'hbcd8;
	ans_a = 16'hd3c9;
	#20
	A = 16'h3e4b;
	B = 16'h3d01;
	ans_a = 16'hd38a;
	#20
	A = 16'h3f1b;
	B = 16'hb9e0;
	ans_a = 16'hd3b4;
	#20
	A = 16'h3ea5;
	B = 16'hbc6a;
	ans_a = 16'hd3ef;
	#20
	A = 16'h3d20;
	B = 16'hbf3f;
	ans_a = 16'hd41d;
	#20
	A = 16'h3544;
	B = 16'hbe42;
	ans_a = 16'hd425;
	#20
	A = 16'hb556;
	B = 16'hba9e;
	ans_a = 16'hd421;
	#20
	A = 16'hb218;
	B = 16'h3608;
	ans_a = 16'hd422;
	#20
	A = 16'hbdca;
	B = 16'hb6a2;
	ans_a = 16'hd418;
	#20
	A = 16'h3ca9;
	B = 16'h350e;
	ans_a = 16'hd412;
	#20
	A = 16'hbc59;
	B = 16'hb64c;
	ans_a = 16'hd40b;
	#20
	A = 16'h3bc6;
	B = 16'h38cf;
	ans_a = 16'hd402;
	#20
	A = 16'hbfd2;
	B = 16'h3c8a;
	ans_a = 16'hd426;
	#20
	A = 16'h304d;
	B = 16'h3835;
	ans_a = 16'hd425;
	#20
	A = 16'hbda3;
	B = 16'h3fbe;
	ans_a = 16'hd451;
	#20
	A = 16'h3522;
	B = 16'h3bcd;
	ans_a = 16'hd44c;
	#20
	A = 16'h3b75;
	B = 16'h3ebd;
	ans_a = 16'hd433;
	#20
	A = 16'h3c27;
	B = 16'hb37e;
	ans_a = 16'hd437;
	#20
	A = 16'hb9da;
	B = 16'h3654;
	ans_a = 16'hd43c;
	#20
	A = 16'hbec5;
	B = 16'h3d95;
	ans_a = 16'hd462;
	#20
	A = 16'hb328;
	B = 16'hbe03;
	ans_a = 16'hd45d;
	#20
	A = 16'ha997;
	B = 16'h3371;
	ans_a = 16'hd45d;
	#20
	A = 16'hbe08;
	B = 16'h351b;
	ans_a = 16'hd465;
	#20
	A = 16'hbe61;
	B = 16'hbb18;
	ans_a = 16'hd44e;
	#20
	A = 16'hbd73;
	B = 16'hbf3f;
	ans_a = 16'hd426;
	#20
	A = 16'h3ee0;
	B = 16'hb89c;
	ans_a = 16'hd436;
	#20
	A = 16'hba06;
	B = 16'h3422;
	ans_a = 16'hd439;
	#20
	A = 16'h3bc0;
	B = 16'hbf69;
	ans_a = 16'hd456;
	#20
	A = 16'hb6fa;
	B = 16'hb59e;
	ans_a = 16'hd454;
	#20
	A = 16'h3f46;
	B = 16'hb83e;
	ans_a = 16'hd463;
	#20
	A = 16'hbc60;
	B = 16'h3c08;
	ans_a = 16'hd475;
	#20
	A = 16'hb29e;
	B = 16'hb1dd;
	ans_a = 16'hd474;
	#20
	A = 16'h39ec;
	B = 16'hbf73;
	ans_a = 16'hd48a;
	#20
	A = 16'hbd50;
	B = 16'h3f36;
	ans_a = 16'hd4b0;
	#20
	A = 16'hbbef;
	B = 16'hbd3d;
	ans_a = 16'hd49b;
	#20
	A = 16'hba36;
	B = 16'hbd42;
	ans_a = 16'hd48b;
	#20
	A = 16'h3acb;
	B = 16'hbd07;
	ans_a = 16'hd49c;
	#20
	A = 16'h3966;
	B = 16'hbd53;
	ans_a = 16'hd4aa;
	#20
	A = 16'h3d44;
	B = 16'hbf17;
	ans_a = 16'hd4cf;
	#20
	A = 16'h3f6e;
	B = 16'hbf75;
	ans_a = 16'hd506;
	#20
	A = 16'h38f6;
	B = 16'h3d4a;
	ans_a = 16'hd4f9;
	#20
	A = 16'hb7e0;
	B = 16'h3aea;
	ans_a = 16'hd500;
	#20
	A = 16'h39a5;
	B = 16'hbd55;
	ans_a = 16'hd50f;
	#20
	A = 16'hb884;
	B = 16'h3533;
	ans_a = 16'hd512;
	#20
	A = 16'h3663;
	B = 16'hbd9b;
	ans_a = 16'hd51b;
	#20
	A = 16'h3912;
	B = 16'h2f85;
	ans_a = 16'hd51a;
	#20
	A = 16'hbbaf;
	B = 16'h363d;
	ans_a = 16'hd520;
	#20
	A = 16'h3f53;
	B = 16'h3aa2;
	ans_a = 16'hd508;
	#20
	A = 16'hbad8;
	B = 16'hbe24;
	ans_a = 16'hd4f3;
	#20
	A = 16'h3074;
	B = 16'h3d43;
	ans_a = 16'hd4f0;
	#20
	A = 16'h3deb;
	B = 16'hbc41;
	ans_a = 16'hd509;
	#20
	A = 16'h3c08;
	B = 16'h3c9a;
	ans_a = 16'hd4f6;
	#20
	A = 16'hbfe0;
	B = 16'h3a74;
	ans_a = 16'hd50f;
	#20
	A = 16'hb934;
	B = 16'h36f8;
	ans_a = 16'hd514;
	#20
	A = 16'h2cf6;
	B = 16'h3cf3;
	ans_a = 16'hd512;
	#20
	A = 16'h1dfe;
	B = 16'ha445;
	ans_a = 16'hd512;
	#20
	A = 16'h3e1b;
	B = 16'h3d84;
	ans_a = 16'hd4f0;
	#20
	A = 16'h3b02;
	B = 16'hbfb9;
	ans_a = 16'hd50b;
	#20
	A = 16'hb89d;
	B = 16'h35a5;
	ans_a = 16'hd50e;
	#20
	A = 16'h3887;
	B = 16'hb8d5;
	ans_a = 16'hd513;
	#20
	A = 16'h38f9;
	B = 16'h313c;
	ans_a = 16'hd511;
	#20
	A = 16'hbb35;
	B = 16'hbc33;
	ans_a = 16'hd502;
	#20
	A = 16'hbf1b;
	B = 16'h3cec;
	ans_a = 16'hd525;
	#20
	A = 16'hbf05;
	B = 16'hba4a;
	ans_a = 16'hd50f;
	#20
	A = 16'h3c95;
	B = 16'hb9a3;
	ans_a = 16'hd51c;
	#20
	A = 16'hbedb;
	B = 16'h30b9;
	ans_a = 16'hd520;
	#20
	A = 16'hba1a;
	B = 16'h3e29;
	ans_a = 16'hd533;
	#20
	A = 16'h30db;
	B = 16'haaed;
	ans_a = 16'hd533;
	#20
	A = 16'hbe26;
	B = 16'hb87b;
	ans_a = 16'hd525;
	#20
	A = 16'hb52f;
	B = 16'h3f32;
	ans_a = 16'hd52e;
	#20
	A = 16'h3ae9;
	B = 16'hba19;
	ans_a = 16'hd539;
	#20
	A = 16'hbf21;
	B = 16'h3efa;
	ans_a = 16'hd56b;
	#20
	A = 16'hb77d;
	B = 16'ha973;
	ans_a = 16'hd56b;
	#20
	A = 16'h2ddf;
	B = 16'hbe3a;
	ans_a = 16'hd56d;
	#20
	A = 16'hbe93;
	B = 16'hbf80;
	ans_a = 16'hd53c;
	#20
	A = 16'hbf13;
	B = 16'hb8b0;
	ans_a = 16'hd52b;
	#20
	A = 16'h32f4;
	B = 16'h3e31;
	ans_a = 16'hd526;
	#20
	A = 16'h2cff;
	B = 16'hb962;
	ans_a = 16'hd527;
	#20
	A = 16'hbe5a;
	B = 16'h3e7e;
	ans_a = 16'hd550;
	#20
	A = 16'hbcfd;
	B = 16'h3f5f;
	ans_a = 16'hd575;
	#20
	A = 16'hbd67;
	B = 16'hbf52;
	ans_a = 16'hd54d;
	#20
	A = 16'h3c68;
	B = 16'h3df6;
	ans_a = 16'hd533;
	#20
	A = 16'h3a78;
	B = 16'hbb45;
	ans_a = 16'hd53f;
	#20
	A = 16'hbfac;
	B = 16'hbc98;
	ans_a = 16'hd51c;
	#20
	A = 16'h3d37;
	B = 16'hbac6;
	ans_a = 16'hd52e;
	#20
	A = 16'h3c0c;
	B = 16'hbf13;
	ans_a = 16'hd54b;
	#20
	A = 16'h3e98;
	B = 16'h3512;
	ans_a = 16'hd543;
	#20
	A = 16'hbdf8;
	B = 16'h346b;
	ans_a = 16'hd54a;
	#20
	A = 16'h2d32;
	B = 16'hbd16;
	ans_a = 16'hd54c;
	#20
	A = 16'h3d99;
	B = 16'hbea1;
	ans_a = 16'hd571;
	#20
	A = 16'h3c78;
	B = 16'h346b;
	ans_a = 16'hd56c;
	#20
	A = 16'h3ae1;
	B = 16'h3196;
	ans_a = 16'hd56a;
	#20
	A = 16'h3d09;
	B = 16'h3f1e;
	ans_a = 16'hd546;
	#20
	A = 16'hbba3;
	B = 16'hbbd9;
	ans_a = 16'hd537;
	#20
	A = 16'h3b14;
	B = 16'hac95;
	ans_a = 16'hd538;
	#20
	A = 16'h3aab;
	B = 16'h3e49;
	ans_a = 16'hd523;
	#20
	A = 16'h3ea1;
	B = 16'hbfc5;
	ans_a = 16'hd556;
	#20
	A = 16'h3ed5;
	B = 16'hb8eb;
	ans_a = 16'hd567;
	#20
	A = 16'h3b0e;
	B = 16'hbc85;
	ans_a = 16'hd577;
	#20
	A = 16'hbe4d;
	B = 16'h3925;
	ans_a = 16'hd587;
	#20
	A = 16'h3693;
	B = 16'hbcfa;
	ans_a = 16'hd58f;
	#20
	A = 16'h3e48;
	B = 16'hb440;
	ans_a = 16'hd596;
	#20
	A = 16'hb67e;
	B = 16'h304b;
	ans_a = 16'hd597;
	#20
	A = 16'hbf84;
	B = 16'h3b71;
	ans_a = 16'hd5b3;
	#20
	A = 16'h3441;
	B = 16'h3d8d;
	ans_a = 16'hd5ad;
	#20
	A = 16'hb96a;
	B = 16'hb1c5;
	ans_a = 16'hd5ab;
	#20
	A = 16'h3cee;
	B = 16'h3c3b;
	ans_a = 16'hd596;
	#20
	A = 16'h39b7;
	B = 16'h3dca;
	ans_a = 16'hd585;
	#20
	A = 16'haa09;
	B = 16'h3f4d;
	ans_a = 16'hd586;
	#20
	A = 16'hbe1b;
	B = 16'h3a5b;
	ans_a = 16'hd599;
	#20
	A = 16'hae1c;
	B = 16'h3baf;
	ans_a = 16'hd59a;
	#20
	A = 16'hbcc8;
	B = 16'h2bfc;
	ans_a = 16'hd59b;
	#20
	A = 16'h3ad1;
	B = 16'h3d91;
	ans_a = 16'hd588;
	#20
	A = 16'hbe9e;
	B = 16'h3cc2;
	ans_a = 16'hd5a7;
	#20
	A = 16'hb684;
	B = 16'hbece;
	ans_a = 16'hd59c;
	#20
	A = 16'h3985;
	B = 16'hba78;
	ans_a = 16'hd5a5;
	#20
	A = 16'hba8f;
	B = 16'hb971;
	ans_a = 16'hd59c;
	#20
	A = 16'hbe9d;
	B = 16'h3e5f;
	ans_a = 16'hd5c6;
	#20
	A = 16'hbb5c;
	B = 16'h3c3b;
	ans_a = 16'hd5d6;
	#20
	A = 16'hbbf1;
	B = 16'ha6eb;
	ans_a = 16'hd5d6;
	#20
	A = 16'h3a31;
	B = 16'hb97b;
	ans_a = 16'hd5de;
	#20
	A = 16'hbe61;
	B = 16'hb9b3;
	ans_a = 16'hd5cc;
	#20
	A = 16'hbe0e;
	B = 16'h3c04;
	ans_a = 16'hd5e4;
	#20
	A = 16'hb62c;
	B = 16'h3825;
	ans_a = 16'hd5e7;
	#20
	A = 16'h3828;
	B = 16'h371e;
	ans_a = 16'hd5e3;
	#20
	A = 16'hbb2e;
	B = 16'hbd8f;
	ans_a = 16'hd5cf;
	#20
	A = 16'hbfd5;
	B = 16'hbc97;
	ans_a = 16'hd5ab;
	#20
	A = 16'h3b71;
	B = 16'h37e2;
	ans_a = 16'hd5a4;
	#20
	A = 16'h33c7;
	B = 16'hbdbe;
	ans_a = 16'hd5aa;
	#20
	A = 16'h3aac;
	B = 16'h3bee;
	ans_a = 16'hd59d;
	#20
	A = 16'hb4e6;
	B = 16'h3964;
	ans_a = 16'hd5a0;
	#20
	A = 16'h385a;
	B = 16'hbf61;
	ans_a = 16'hd5b0;
	#20
	A = 16'hbcf8;
	B = 16'hbc0b;
	ans_a = 16'hd59c;
	#20
	A = 16'hbf2e;
	B = 16'h3956;
	ans_a = 16'hd5af;
	#20
	A = 16'hb966;
	B = 16'h3df7;
	ans_a = 16'hd5bf;
	#20
	A = 16'haa25;
	B = 16'h3783;
	ans_a = 16'hd5bf;
	#20
	A = 16'h38ad;
	B = 16'h3c04;
	ans_a = 16'hd5b6;
	#20
	A = 16'hba91;
	B = 16'hbb9a;
	ans_a = 16'hd5aa;
	#20
	A = 16'hb557;
	B = 16'h3932;
	ans_a = 16'hd5ad;
	#20
	A = 16'h3b9d;
	B = 16'h3204;
	ans_a = 16'hd5aa;
	#20
	A = 16'h39c1;
	B = 16'hbf3d;
	ans_a = 16'hd5bf;
	#20
	A = 16'h3a49;
	B = 16'h3649;
	ans_a = 16'hd5ba;
	#20
	A = 16'hb9ad;
	B = 16'hb12c;
	ans_a = 16'hd5b8;
	#20
	A = 16'h38d5;
	B = 16'h3d05;
	ans_a = 16'hd5ac;
	#20
	A = 16'h3a20;
	B = 16'h33da;
	ans_a = 16'hd5a9;
	#20
	A = 16'hbed6;
	B = 16'h3a10;
	ans_a = 16'hd5be;
	#20
	A = 16'hbd36;
	B = 16'h3bc7;
	ans_a = 16'hd5d2;
	#20
	A = 16'h3cb6;
	B = 16'h3e93;
	ans_a = 16'hd5b3;
	#20
	A = 16'h384d;
	B = 16'h37b8;
	ans_a = 16'hd5af;
	#20
	A = 16'hbcf7;
	B = 16'h3b08;
	ans_a = 16'hd5c0;
	#20
	A = 16'hb8b9;
	B = 16'h3e92;
	ans_a = 16'hd5d0;
	#20
	A = 16'h3a6a;
	B = 16'hbd31;
	ans_a = 16'hd5e1;
	#20
	A = 16'h39a8;
	B = 16'habc8;
	ans_a = 16'hd5e2;
	#20
	A = 16'hb5a1;
	B = 16'h3ebb;
	ans_a = 16'hd5eb;
	#20
	A = 16'h3d4d;
	B = 16'hbc4e;
	ans_a = 16'hd602;
	#20
	A = 16'h3a53;
	B = 16'hbf0a;
	ans_a = 16'hd618;
	#20
	A = 16'h3a67;
	B = 16'hbeac;
	ans_a = 16'hd62d;
	#20
	A = 16'hbf05;
	B = 16'h3d55;
	ans_a = 16'hd652;
	#20
	A = 16'h3c0b;
	B = 16'h3fcb;
	ans_a = 16'hd632;
	#20
	A = 16'h3756;
	B = 16'hbe91;
	ans_a = 16'hd63e;
	#20
	A = 16'h3b63;
	B = 16'h3cfd;
	ans_a = 16'hd62c;
	#20
	A = 16'h3e3b;
	B = 16'hbac4;
	ans_a = 16'hd641;
	#20
	A = 16'h31a8;
	B = 16'hb9af;
	ans_a = 16'hd643;
	#20
	A = 16'hbec8;
	B = 16'hb90e;
	ans_a = 16'hd632;
	#20
	A = 16'hbe69;
	B = 16'h212e;
	ans_a = 16'hd632;
	#20
	A = 16'h31a0;
	B = 16'hbbcc;
	ans_a = 16'hd635;
	#20
	A = 16'h3dea;
	B = 16'haf14;
	ans_a = 16'hd638;
	#20
	A = 16'hb4f7;
	B = 16'h3f7b;
	ans_a = 16'hd641;
	#20
	A = 16'h39c3;
	B = 16'hbfe2;
	ans_a = 16'hd658;
	#20
	A = 16'hbc19;
	B = 16'hb2b2;
	ans_a = 16'hd655;
	#20
	A = 16'hba8f;
	B = 16'haced;
	ans_a = 16'hd654;
	#20
	A = 16'hbc95;
	B = 16'hb4bd;
	ans_a = 16'hd64f;
	#20
	A = 16'h3847;
	B = 16'h3e9a;
	ans_a = 16'hd641;
	#20
	A = 16'h3ff6;
	B = 16'h350e;
	ans_a = 16'hd637;
	#20
	A = 16'h3fe7;
	B = 16'hbe45;
	ans_a = 16'hd669;
	#20
	A = 16'hbd39;
	B = 16'h33e6;
	ans_a = 16'hd66e;
	#20
	A = 16'h3eaa;
	B = 16'h3d88;
	ans_a = 16'hd649;
	#20
	A = 16'h3fbe;
	B = 16'hba51;
	ans_a = 16'hd661;
	#20
	A = 16'h3cf9;
	B = 16'h38c4;
	ans_a = 16'hd655;
	#20
	A = 16'h3f61;
	B = 16'had7c;
	ans_a = 16'hd658;
	#20
	A = 16'h39a3;
	B = 16'hbc34;
	ans_a = 16'hd664;
	#20
	A = 16'h3c9c;
	B = 16'hbeb7;
	ans_a = 16'hd683;
	#20
	A = 16'h381d;
	B = 16'hb982;
	ans_a = 16'hd689;
	#20
	A = 16'h3d68;
	B = 16'h3f3f;
	ans_a = 16'hd662;
	#20
	A = 16'hb0d1;
	B = 16'hbeaa;
	ans_a = 16'hd65e;
	#20
	A = 16'h2a45;
	B = 16'h19a3;
	ans_a = 16'hd65e;
	#20
	A = 16'h3e7d;
	B = 16'hb31f;
	ans_a = 16'hd664;
	#20
	A = 16'h3fd6;
	B = 16'h385a;
	ans_a = 16'hd653;
	#20
	A = 16'hb971;
	B = 16'hbe58;
	ans_a = 16'hd642;
	#20
	A = 16'hbd8c;
	B = 16'h3ddd;
	ans_a = 16'hd663;
	#20
	A = 16'hbbcc;
	B = 16'hb423;
	ans_a = 16'hd65f;
	#20
	A = 16'h3f44;
	B = 16'hbd04;
	ans_a = 16'hd683;
	#20
	A = 16'hbc4e;
	B = 16'hbc83;
	ans_a = 16'hd670;
	#20
	A = 16'h3fc7;
	B = 16'h3bb3;
	ans_a = 16'hd652;
	#20
	A = 16'hb70c;
	B = 16'h3cfb;
	ans_a = 16'hd65b;
	#20
	A = 16'hb5e7;
	B = 16'hbf52;
	ans_a = 16'hd650;
	#20
	A = 16'hbeb2;
	B = 16'h3f71;
	ans_a = 16'hd682;
	#20
	A = 16'h1817;
	B = 16'hb68c;
	ans_a = 16'hd682;
	#20
	A = 16'hb967;
	B = 16'h3d9f;
	ans_a = 16'hd691;
	#20
	A = 16'hbc68;
	B = 16'hbfc1;
	ans_a = 16'hd66f;
	#20
	A = 16'hb804;
	B = 16'hb926;
	ans_a = 16'hd66a;
	#20
	A = 16'hb405;
	B = 16'hbdbf;
	ans_a = 16'hd664;
	#20
	A = 16'h3d97;
	B = 16'hbc0a;
	ans_a = 16'hd67b;
	#20
	A = 16'hbd7a;
	B = 16'hbe0f;
	ans_a = 16'hd65a;
	#20
	A = 16'hb4c1;
	B = 16'hb957;
	ans_a = 16'hd657;
	#20
	A = 16'h3549;
	B = 16'hb452;
	ans_a = 16'hd658;
	#20
	A = 16'h3e49;
	B = 16'h39fc;
	ans_a = 16'hd645;
	#20
	A = 16'h3f7e;
	B = 16'h3879;
	ans_a = 16'hd634;
	#20
	A = 16'hbc9c;
	B = 16'hbc2f;
	ans_a = 16'hd621;
	#20
	A = 16'h9c0c;
	B = 16'hb740;
	ans_a = 16'hd621;
	#20
	A = 16'h3fdf;
	B = 16'hb5df;
	ans_a = 16'hd62d;
	#20
	A = 16'h3e81;
	B = 16'hb9f2;
	ans_a = 16'hd640;
	#20
	A = 16'h3928;
	B = 16'h3d22;
	ans_a = 16'hd633;
	#20
	A = 16'hb568;
	B = 16'hba8c;
	ans_a = 16'hd62f;
	#20
	A = 16'h12ae;
	B = 16'h3ff3;
	ans_a = 16'hd62f;
	#20
	A = 16'hbdf5;
	B = 16'h3b6f;
	ans_a = 16'hd645;
	#20
	A = 16'hb408;
	B = 16'hba0d;
	ans_a = 16'hd642;
	#20
	A = 16'hba53;
	B = 16'hbbde;
	ans_a = 16'hd636;
	#20
	A = 16'hb8c7;
	B = 16'h3b1c;
	ans_a = 16'hd63e;
	#20
	A = 16'h3840;
	B = 16'ha8ce;
	ans_a = 16'hd63e;
	#20
	A = 16'hbd9d;
	B = 16'h3edf;
	ans_a = 16'hd665;
	#20
	A = 16'h35ca;
	B = 16'hb966;
	ans_a = 16'hd669;
	#20
	A = 16'h333a;
	B = 16'h3c39;
	ans_a = 16'hd665;
	#20
	A = 16'h3e12;
	B = 16'hbfe9;
	ans_a = 16'hd695;
	#20
	A = 16'h38e8;
	B = 16'hbcbc;
	ans_a = 16'hd6a1;
	#20
	A = 16'hb68c;
	B = 16'h3b06;
	ans_a = 16'hd6a7;
	#20
	A = 16'haa17;
	B = 16'h3db1;
	ans_a = 16'hd6a8;
	#20
	A = 16'h3d00;
	B = 16'hbfcc;
	ans_a = 16'hd6cf;
	#20
	A = 16'hbc22;
	B = 16'h3ed5;
	ans_a = 16'hd6eb;
	#20
	A = 16'h3b6c;
	B = 16'hbfd5;
	ans_a = 16'hd708;
	#20
	A = 16'hbc59;
	B = 16'hbf5b;
	ans_a = 16'hd6e8;
	#20
	A = 16'h3a88;
	B = 16'hbf5c;
	ans_a = 16'hd700;
	#20
	A = 16'hbb1b;
	B = 16'hbe35;
	ans_a = 16'hd6ea;
	#20
	A = 16'h3d41;
	B = 16'hbc33;
	ans_a = 16'hd700;
	#20
	A = 16'hbd20;
	B = 16'hb881;
	ans_a = 16'hd6f4;
	#20
	A = 16'h3c7a;
	B = 16'h3e8a;
	ans_a = 16'hd6d7;
	#20
	A = 16'hbdba;
	B = 16'h37a4;
	ans_a = 16'hd6e2;
	#20
	A = 16'h3e0b;
	B = 16'hbacf;
	ans_a = 16'hd6f7;
	#20
	A = 16'hb970;
	B = 16'hbff5;
	ans_a = 16'hd6e1;
	#20
	A = 16'h3c1f;
	B = 16'hbd23;
	ans_a = 16'hd6f6;
	#20
	A = 16'hb771;
	B = 16'hbd8f;
	ans_a = 16'hd6ec;
	#20
	A = 16'h35c2;
	B = 16'h2a4d;
	ans_a = 16'hd6ec;
	#20
	A = 16'hbc87;
	B = 16'hb54a;
	ans_a = 16'hd6e6;
	#20
	A = 16'hbe5b;
	B = 16'h35f8;
	ans_a = 16'hd6ef;
	#20
	A = 16'h3fd4;
	B = 16'hbee6;
	ans_a = 16'hd725;
	#20
	A = 16'h3a76;
	B = 16'hbae2;
	ans_a = 16'hd730;
	#20
	A = 16'hbd37;
	B = 16'hbcce;
	ans_a = 16'hd717;
	#20
	A = 16'h34bb;
	B = 16'h3b8d;
	ans_a = 16'hd713;
	#20
	A = 16'hbca8;
	B = 16'h39a7;
	ans_a = 16'hd720;
	#20
	A = 16'hbda7;
	B = 16'hb9a8;
	ans_a = 16'hd710;
	#20
	A = 16'h3ed5;
	B = 16'hba17;
	ans_a = 16'hd725;
	#20
	A = 16'hb85b;
	B = 16'hbb45;
	ans_a = 16'hd71d;
	#20
	A = 16'hb915;
	B = 16'hb80e;
	ans_a = 16'hd718;
	#20
	A = 16'h3b29;
	B = 16'h3d47;
	ans_a = 16'hd705;
	#20
	A = 16'hbf77;
	B = 16'hbf60;
	ans_a = 16'hd6ce;
	#20
	A = 16'hbf74;
	B = 16'h39b9;
	ans_a = 16'hd6e3;
	#20
	A = 16'h3e74;
	B = 16'h3f98;
	ans_a = 16'hd6b2;
	#20
	A = 16'h3c75;
	B = 16'h3eb9;
	ans_a = 16'hd694;
	#20
	A = 16'h3f30;
	B = 16'h3f64;
	ans_a = 16'hd65f;
	#20
	A = 16'h3256;
	B = 16'h3eaa;
	ans_a = 16'hd65a;
	#20
	A = 16'h3bc1;
	B = 16'h3387;
	ans_a = 16'hd656;
	#20
	A = 16'h3da2;
	B = 16'hbabd;
	ans_a = 16'hd669;
	#20
	A = 16'h3e0a;
	B = 16'hbfeb;
	ans_a = 16'hd699;
	#20
	A = 16'hb439;
	B = 16'h3457;
	ans_a = 16'hd69a;
	#20
	A = 16'ha227;
	B = 16'h3410;
	ans_a = 16'hd69a;
	#20
	A = 16'h3e19;
	B = 16'h36cd;
	ans_a = 16'hd690;
	#20
	A = 16'hb7b7;
	B = 16'hb27e;
	ans_a = 16'hd68e;
	#20
	A = 16'hbdfb;
	B = 16'h3c3c;
	ans_a = 16'hd6a7;
	#20
	A = 16'h3e3e;
	B = 16'hb55c;
	ans_a = 16'hd6af;
	#20
	A = 16'h3f8b;
	B = 16'ha525;
	ans_a = 16'hd6b0;
	#20
	A = 16'h2ae9;
	B = 16'h3dd5;
	ans_a = 16'hd6af;
	#20
	A = 16'hbdb8;
	B = 16'h348e;
	ans_a = 16'hd6b6;
	#20
	A = 16'h3e71;
	B = 16'h38d9;
	ans_a = 16'hd6a6;
	#20
	A = 16'hb5bb;
	B = 16'hbc00;
	ans_a = 16'hd6a0;
	#20
	A = 16'hb77f;
	B = 16'hb30b;
	ans_a = 16'hd69e;
	#20
	A = 16'h34ea;
	B = 16'hba69;
	ans_a = 16'hd6a2;
	#20
	A = 16'h30d7;
	B = 16'hbc93;
	ans_a = 16'hd6a5;
	#20
	A = 16'h3d73;
	B = 16'h3cba;
	ans_a = 16'hd68b;
	#20
	A = 16'h3f1e;
	B = 16'h3a59;
	ans_a = 16'hd674;
	#20
	A = 16'h3948;
	B = 16'h3fca;
	ans_a = 16'hd65f;
	#20
	A = 16'h375f;
	B = 16'hb80f;
	ans_a = 16'hd663;
	#20
	A = 16'h3a40;
	B = 16'h3ab8;
	ans_a = 16'hd658;
	#20
	A = 16'h214c;
	B = 16'haec1;
	ans_a = 16'hd658;
	#20
	A = 16'h3f01;
	B = 16'h3eeb;
	ans_a = 16'hd628;
	#20
	A = 16'h3c0d;
	B = 16'hbd7a;
	ans_a = 16'hd63e;
	#20
	A = 16'hb6a5;
	B = 16'hbe0e;
	ans_a = 16'hd634;
	#20
	A = 16'hbc19;
	B = 16'hbac6;
	ans_a = 16'hd626;
	#20
	A = 16'hbe20;
	B = 16'hbc64;
	ans_a = 16'hd60b;
	#20
	A = 16'h3cf0;
	B = 16'hbd40;
	ans_a = 16'hd625;
	#20
	A = 16'h3bbd;
	B = 16'h3160;
	ans_a = 16'hd622;
	#20
	A = 16'h37d9;
	B = 16'h3f70;
	ans_a = 16'hd613;
	#20
	A = 16'h39ad;
	B = 16'h3cc7;
	ans_a = 16'hd605;
	#20
	A = 16'ha2bf;
	B = 16'h3862;
	ans_a = 16'hd605;
	#20
	A = 16'hbed4;
	B = 16'hbf94;
	ans_a = 16'hd5d1;
	#20
	A = 16'h3b2a;
	B = 16'hbf59;
	ans_a = 16'hd5eb;
	#20
	A = 16'hbc81;
	B = 16'hbfd0;
	ans_a = 16'hd5c8;
	#20
	A = 16'hb54e;
	B = 16'h3a4f;
	ans_a = 16'hd5cc;
	#20
	A = 16'ha089;
	B = 16'hb24f;
	ans_a = 16'hd5cc;
	#20
	A = 16'h34da;
	B = 16'hb89a;
	ans_a = 16'hd5cf;
	#20
	A = 16'h3da7;
	B = 16'hb8e5;
	ans_a = 16'hd5dd;
	#20
	A = 16'h35f9;
	B = 16'h3d8d;
	ans_a = 16'hd5d5;
	#20
	A = 16'hb8ec;
	B = 16'hbf66;
	ans_a = 16'hd5c3;
	#20
	A = 16'hb9b2;
	B = 16'hb654;
	ans_a = 16'hd5be;
	#20
	A = 16'hb8eb;
	B = 16'hb839;
	ans_a = 16'hd5b9;
	#20
	A = 16'h3c54;
	B = 16'hbbc9;
	ans_a = 16'hd5ca;
	#20
	A = 16'h34d4;
	B = 16'h3e61;
	ans_a = 16'hd5c2;
	#20
	A = 16'hba5b;
	B = 16'h3c87;
	ans_a = 16'hd5d0;
	#20
	A = 16'hb6e1;
	B = 16'h3ce6;
	ans_a = 16'hd5d8;
	#20
	A = 16'hb9c9;
	B = 16'h3db8;
	ans_a = 16'hd5e9;
	#20
	A = 16'hb42b;
	B = 16'h3f8a;
	ans_a = 16'hd5f1;
	#20
	A = 16'h3e61;
	B = 16'hbfad;
	ans_a = 16'hd622;
	#20
	A = 16'h35de;
	B = 16'hb103;
	ans_a = 16'hd623;
	#20
	A = 16'h3c74;
	B = 16'h3cdc;
	ans_a = 16'hd60d;
	#20
	A = 16'h3d16;
	B = 16'hb5a7;
	ans_a = 16'hd614;
	#20
	A = 16'hbe60;
	B = 16'hbdc7;
	ans_a = 16'hd5ef;
	#20
	A = 16'h3f47;
	B = 16'hbe12;
	ans_a = 16'hd61b;
	#20
	A = 16'h3ee2;
	B = 16'h3a20;
	ans_a = 16'hd606;
	#20
	A = 16'h3fdc;
	B = 16'hbd43;
	ans_a = 16'hd62f;
	#20
	A = 16'h3cb7;
	B = 16'hbf74;
	ans_a = 16'hd652;
	#20
	A = 16'hb9d3;
	B = 16'h3bfd;
	ans_a = 16'hd65e;
	#20
	A = 16'h3934;
	B = 16'h3b8c;
	ans_a = 16'hd654;
	#20
	A = 16'hbe91;
	B = 16'hbb21;
	ans_a = 16'hd63d;
	#20
	A = 16'hbe84;
	B = 16'hb5ed;
	ans_a = 16'hd633;
	#20
	A = 16'hb9dd;
	B = 16'hb7b6;
	ans_a = 16'hd62d;
	#20
	A = 16'hb262;
	B = 16'hbf9e;
	ans_a = 16'hd627;
	#20
	A = 16'h37c8;
	B = 16'hbca1;
	ans_a = 16'hd630;
	#20
	A = 16'hb55b;
	B = 16'hb3d1;
	ans_a = 16'hd62f;
	#20
	A = 16'hbc7f;
	B = 16'hbc47;
	ans_a = 16'hd61c;
	#20
	A = 16'hb621;
	B = 16'h3b19;
	ans_a = 16'hd621;
	#20
	A = 16'h37c0;
	B = 16'h3b59;
	ans_a = 16'hd61a;
	#20
	A = 16'h3d4a;
	B = 16'hbf31;
	ans_a = 16'hd640;
	#20
	A = 16'hbe08;
	B = 16'hb9b6;
	ans_a = 16'hd62f;
	#20
	A = 16'h3f25;
	B = 16'hbad0;
	ans_a = 16'hd647;
	#20
	A = 16'h3cfe;
	B = 16'h3ffe;
	ans_a = 16'hd61f;
	#20
	A = 16'hbed9;
	B = 16'h3ec1;
	ans_a = 16'hd64d;
	#20
	A = 16'h3871;
	B = 16'h3e7c;
	ans_a = 16'hd63f;
	#20
	A = 16'h3d14;
	B = 16'hbfd1;
	ans_a = 16'hd667;
	#20
	A = 16'h380d;
	B = 16'h3478;
	ans_a = 16'hd665;
	#20
	A = 16'h3c6c;
	B = 16'hb83c;
	ans_a = 16'hd66e;
	#20
	A = 16'h3c93;
	B = 16'h2d51;
	ans_a = 16'hd66c;
	#20
	A = 16'hb362;
	B = 16'hbebd;
	ans_a = 16'hd666;
	#20
	A = 16'h3aa1;
	B = 16'hbf53;
	ans_a = 16'hd67e;
	#20
	A = 16'h3db8;
	B = 16'h3540;
	ans_a = 16'hd676;
	#20
	A = 16'hb864;
	B = 16'h385c;
	ans_a = 16'hd67b;
	#20
	A = 16'hb7b5;
	B = 16'h3eda;
	ans_a = 16'hd688;
	#20
	A = 16'hbd1a;
	B = 16'hb88d;
	ans_a = 16'hd67c;
	#20
	A = 16'h34a2;
	B = 16'hbfad;
	ans_a = 16'hd685;
	#20
	A = 16'hbafa;
	B = 16'hac4f;
	ans_a = 16'hd684;
	#20
	A = 16'h3ebf;
	B = 16'h3056;
	ans_a = 16'hd680;
	#20
	A = 16'hbf28;
	B = 16'hbc99;
	ans_a = 16'hd65f;
	#20
	A = 16'h3c66;
	B = 16'hae37;
	ans_a = 16'hd661;
	#20
	A = 16'h3ac7;
	B = 16'hbdb1;
	ans_a = 16'hd674;
	#20
	A = 16'h3abb;
	B = 16'hb96e;
	ans_a = 16'hd67d;
	#20
	A = 16'h3c02;
	B = 16'hb69d;
	ans_a = 16'hd684;
	#20
	A = 16'h36c6;
	B = 16'hb8a1;
	ans_a = 16'hd688;
	#20
	A = 16'hb630;
	B = 16'hbe7c;
	ans_a = 16'hd67e;
	#20
	A = 16'hba43;
	B = 16'h3d7b;
	ans_a = 16'hd68f;
	#20
	A = 16'hbfd9;
	B = 16'hbda6;
	ans_a = 16'hd663;
	#20
	A = 16'h3d88;
	B = 16'hb600;
	ans_a = 16'hd66b;
	#20
	A = 16'hbcfb;
	B = 16'hbe1c;
	ans_a = 16'hd64d;
	#20
	A = 16'h3d44;
	B = 16'h3d3e;
	ans_a = 16'hd631;
	#20
	A = 16'h3e1c;
	B = 16'h3c12;
	ans_a = 16'hd618;
	#20
	A = 16'hbbc1;
	B = 16'hbc74;
	ans_a = 16'hd607;
	#20
	A = 16'hbeca;
	B = 16'hb09e;
	ans_a = 16'hd603;
	#20
	A = 16'h3ef9;
	B = 16'hbd7b;
	ans_a = 16'hd629;
	#20
	A = 16'hb2d4;
	B = 16'h3f7f;
	ans_a = 16'hd62f;
	#20
	A = 16'hb40c;
	B = 16'h3e97;
	ans_a = 16'hd636;
	#20
	A = 16'hbc49;
	B = 16'h2c04;
	ans_a = 16'hd637;
	#20
	A = 16'hba0c;
	B = 16'h3f91;
	ans_a = 16'hd64e;
	#20
	A = 16'h3f77;
	B = 16'h3249;
	ans_a = 16'hd648;
	#20
	A = 16'h339e;
	B = 16'h37ad;
	ans_a = 16'hd646;
	#20
	A = 16'hbd1c;
	B = 16'h39c3;
	ans_a = 16'hd655;
	#20
	A = 16'hbda7;
	B = 16'h3641;
	ans_a = 16'hd65e;
	#20
	A = 16'hbf75;
	B = 16'h3e0c;
	ans_a = 16'hd68b;
	#20
	A = 16'hb382;
	B = 16'h3b77;
	ans_a = 16'hd68f;
	#20
	A = 16'h3b7f;
	B = 16'h3d8f;
	ans_a = 16'hd67a;
	#20
	A = 16'h3fe0;
	B = 16'hbe0c;
	ans_a = 16'hd6aa;
	#20
	A = 16'h2baf;
	B = 16'h3a41;
	ans_a = 16'hd6a9;
	#20
	A = 16'hbe09;
	B = 16'h3046;
	ans_a = 16'hd6ac;
	#20
	A = 16'h3915;
	B = 16'hb89d;
	ans_a = 16'hd6b2;
	#20
	A = 16'hbd41;
	B = 16'hbb84;
	ans_a = 16'hd69e;
	#20
	A = 16'hbe64;
	B = 16'h3c24;
	ans_a = 16'hd6b8;
	#20
	A = 16'hb9bd;
	B = 16'hb41f;
	ans_a = 16'hd6b5;
	#20
	A = 16'hbb7d;
	B = 16'h3e56;
	ans_a = 16'hd6cd;
	#20
	A = 16'hb9f2;
	B = 16'h31ba;
	ans_a = 16'hd6cf;
	#20
	A = 16'hb810;
	B = 16'h3dfe;
	ans_a = 16'hd6db;
	#20
	A = 16'hb491;
	B = 16'hbf5f;
	ans_a = 16'hd6d3;
	#20
	A = 16'h3ed2;
	B = 16'hb30a;
	ans_a = 16'hd6d9;
	#20
	A = 16'h3c62;
	B = 16'h3c2d;
	ans_a = 16'hd6c7;
	#20
	A = 16'hbad9;
	B = 16'h3fe4;
	ans_a = 16'hd6e2;
	#20
	A = 16'h36d4;
	B = 16'h3738;
	ans_a = 16'hd6df;
	#20
	A = 16'h3b67;
	B = 16'h3f2f;
	ans_a = 16'hd6c4;
	#20
	A = 16'h3b9e;
	B = 16'hbb0f;
	ans_a = 16'hd6d1;
	#20
	A = 16'h2a39;
	B = 16'hb74b;
	ans_a = 16'hd6d1;
	#20
	A = 16'h3eb7;
	B = 16'h3e2a;
	ans_a = 16'hd6a8;
	#20
	A = 16'h3b40;
	B = 16'h34b9;
	ans_a = 16'hd6a4;
	#20
	A = 16'h3d57;
	B = 16'h397e;
	ans_a = 16'hd695;
	#20
	A = 16'hb501;
	B = 16'hb738;
	ans_a = 16'hd693;
	#20
	A = 16'h3912;
	B = 16'hb944;
	ans_a = 16'hd69a;
	#20
	A = 16'h3d46;
	B = 16'hb3f4;
	ans_a = 16'hd69f;
	#20
	A = 16'hb786;
	B = 16'h3bbc;
	ans_a = 16'hd6a6;
	#20
	A = 16'hbca6;
	B = 16'h3807;
	ans_a = 16'hd6af;
	#20
	A = 16'h342c;
	B = 16'h3ac0;
	ans_a = 16'hd6ab;
	#20
	A = 16'hb1e5;
	B = 16'h3f9f;
	ans_a = 16'hd6b1;
	#20
	A = 16'hb5ef;
	B = 16'hb823;
	ans_a = 16'hd6ae;
	#20
	A = 16'hbeaa;
	B = 16'hbb33;
	ans_a = 16'hd696;
	#20
	A = 16'hba94;
	B = 16'hbdf6;
	ans_a = 16'hd682;
	#20
	A = 16'h3231;
	B = 16'hb84e;
	ans_a = 16'hd684;
	#20
	A = 16'hbf8b;
	B = 16'h3873;
	ans_a = 16'hd695;
	#20
	A = 16'hb99a;
	B = 16'hbd79;
	ans_a = 16'hd686;
	#20
	A = 16'hbd9b;
	B = 16'h3837;
	ans_a = 16'hd692;
	#20
	A = 16'h3ec3;
	B = 16'h3baf;
	ans_a = 16'hd678;
	#20
	A = 16'hba9a;
	B = 16'h3eae;
	ans_a = 16'hd68e;
	#20
	A = 16'h3b6c;
	B = 16'h3e0c;
	ans_a = 16'hd678;
	#20
	A = 16'hbe92;
	B = 16'hbf54;
	ans_a = 16'hd648;
	#20
	A = 16'hbd59;
	B = 16'hbff5;
	ans_a = 16'hd61d;
	#20
	A = 16'h3f80;
	B = 16'hbeed;
	ans_a = 16'hd651;
	#20
	A = 16'hb976;
	B = 16'hbafe;
	ans_a = 16'hd647;
	#20
	A = 16'h3f30;
	B = 16'h3fe3;
	ans_a = 16'hd60e;
	#20
	A = 16'hb417;
	B = 16'hbd17;
	ans_a = 16'hd609;
	#20
	A = 16'h3e7c;
	B = 16'hbbc9;
	ans_a = 16'hd622;
	#20
	A = 16'h3e95;
	B = 16'h2ad7;
	ans_a = 16'hd621;
	#20
	A = 16'h343b;
	B = 16'hbee2;
	ans_a = 16'hd628;
	#20
	A = 16'hbd1a;
	B = 16'hbfbb;
	ans_a = 16'hd601;
	#20
	A = 16'hbb04;
	B = 16'h34df;
	ans_a = 16'hd605;
	#20
	A = 16'h3a8e;
	B = 16'hb979;
	ans_a = 16'hd60e;
	#20
	A = 16'hbe30;
	B = 16'h391d;
	ans_a = 16'hd61e;
	#20
	A = 16'h3f43;
	B = 16'hb9e3;
	ans_a = 16'hd633;
	#20
	A = 16'hbcdd;
	B = 16'h3845;
	ans_a = 16'hd63d;
	#20
	A = 16'h30a1;
	B = 16'hbc71;
	ans_a = 16'hd640;
	#20
	A = 16'hb5f0;
	B = 16'h3846;
	ans_a = 16'hd643;
	#20
	A = 16'h3944;
	B = 16'hbd79;
	ans_a = 16'hd651;
	#20
	A = 16'hac91;
	B = 16'hbc52;
	ans_a = 16'hd650;
	#20
	A = 16'h29b3;
	B = 16'h3eae;
	ans_a = 16'hd64f;
	#20
	A = 16'hbd09;
	B = 16'h397a;
	ans_a = 16'hd65d;
	#20
	A = 16'hbc59;
	B = 16'hb57d;
	ans_a = 16'hd657;
	#20
	A = 16'hb86f;
	B = 16'hb810;
	ans_a = 16'hd652;
	#20
	A = 16'h3c3b;
	B = 16'hbc99;
	ans_a = 16'hd665;
	#20
	A = 16'hbd8a;
	B = 16'h3ed9;
	ans_a = 16'hd68b;
	#20
	A = 16'h3c30;
	B = 16'hb5ec;
	ans_a = 16'hd691;
	#20
	A = 16'hbe1e;
	B = 16'hbfcc;
	ans_a = 16'hd661;
	#20
	A = 16'hbcab;
	B = 16'hb967;
	ans_a = 16'hd654;
	#20
	A = 16'h3963;
	B = 16'hbdf5;
	ans_a = 16'hd664;
	#20
	A = 16'hbcda;
	B = 16'h396e;
	ans_a = 16'hd671;
	#20
	A = 16'h2c6c;
	B = 16'h32c2;
	ans_a = 16'hd671;
	#20
	A = 16'h3ed4;
	B = 16'h3948;
	ans_a = 16'hd65f;
	#20
	A = 16'h3965;
	B = 16'hbe02;
	ans_a = 16'hd66f;
	#20
	A = 16'h361b;
	B = 16'h36d5;
	ans_a = 16'hd66c;
	#20
	A = 16'h3bfc;
	B = 16'h312a;
	ans_a = 16'hd669;
	#20
	A = 16'hbc72;
	B = 16'hb997;
	ans_a = 16'hd65d;
	#20
	A = 16'hb8fb;
	B = 16'h3f90;
	ans_a = 16'hd670;
	#20
	A = 16'hbc34;
	B = 16'h3ec1;
	ans_a = 16'hd68c;
	#20
	A = 16'hbcdc;
	B = 16'h32ae;
	ans_a = 16'hd690;
	#20
	A = 16'hbd80;
	B = 16'hbdf1;
	ans_a = 16'hd66f;
	#20
	A = 16'hbbca;
	B = 16'hbc27;
	ans_a = 16'hd65f;
	#20
	A = 16'hb2d7;
	B = 16'hba2b;
	ans_a = 16'hd65c;
	#20
	A = 16'h3de6;
	B = 16'h3e41;
	ans_a = 16'hd637;
	#20
	A = 16'h358f;
	B = 16'h3c68;
	ans_a = 16'hd631;
	#20
	A = 16'hbd25;
	B = 16'h395d;
	ans_a = 16'hd63f;
	#20
	A = 16'hbfdb;
	B = 16'hbd01;
	ans_a = 16'hd618;
	#20
	A = 16'h3994;
	B = 16'hb93f;
	ans_a = 16'hd61f;
	#20
	A = 16'h3d41;
	B = 16'h3cd2;
	ans_a = 16'hd606;
	#20
	A = 16'h3d2d;
	B = 16'h3397;
	ans_a = 16'hd601;
	#20
	A = 16'hbbcd;
	B = 16'h3f2a;
	ans_a = 16'hd61d;
	#20
	A = 16'hbf08;
	B = 16'hbc64;
	ans_a = 16'hd5fe;
	#20
	A = 16'h2c35;
	B = 16'hb264;
	ans_a = 16'hd5fe;
	#20
	A = 16'hb3c0;
	B = 16'hbef8;
	ans_a = 16'hd5f7;
	#20
	A = 16'h3d79;
	B = 16'hbbed;
	ans_a = 16'hd60d;
	#20
	A = 16'hbe8c;
	B = 16'h2dc4;
	ans_a = 16'hd60f;
	#20
	A = 16'hbeb0;
	B = 16'hbbbe;
	ans_a = 16'hd5f5;
	#20
	A = 16'hbdd9;
	B = 16'hbb45;
	ans_a = 16'hd5e0;
	#20
	A = 16'hbce1;
	B = 16'h3ab6;
	ans_a = 16'hd5f0;
	#20
	A = 16'hb860;
	B = 16'hbdab;
	ans_a = 16'hd5e4;
	#20
	A = 16'haf01;
	B = 16'hb47c;
	ans_a = 16'hd5e4;
	#20
	A = 16'h3ce7;
	B = 16'h3dc5;
	ans_a = 16'hd5c8;
	#20
	A = 16'hbc4c;
	B = 16'h3d31;
	ans_a = 16'hd5de;
	#20
	A = 16'hb666;
	B = 16'h39f3;
	ans_a = 16'hd5e3;
	#20
	A = 16'hbe00;
	B = 16'hbf43;
	ans_a = 16'hd5b7;
	#20
	A = 16'hb491;
	B = 16'hb158;
	ans_a = 16'hd5b6;
	#20
	A = 16'h3dec;
	B = 16'hba1d;
	ans_a = 16'hd5c8;
	#20
	A = 16'hbfb1;
	B = 16'hbc96;
	ans_a = 16'hd5a5;
	#20
	A = 16'hbffe;
	B = 16'h3d55;
	ans_a = 16'hd5d0;
	#20
	A = 16'h38c5;
	B = 16'h3ca3;
	ans_a = 16'hd5c5;
	#20
	A = 16'h3783;
	B = 16'h3969;
	ans_a = 16'hd5c0;
	#20
	A = 16'hbd12;
	B = 16'hbf9e;
	ans_a = 16'hd599;
	#20
	A = 16'h37fe;
	B = 16'hbfe9;
	ans_a = 16'hd5a9;
	#20
	A = 16'h3e98;
	B = 16'h3bec;
	ans_a = 16'hd58f;
	#20
	A = 16'hb807;
	B = 16'haf20;
	ans_a = 16'hd58e;
	#20
	A = 16'hb9fb;
	B = 16'hbf67;
	ans_a = 16'hd578;
	#20
	A = 16'hb7fd;
	B = 16'h3c06;
	ans_a = 16'hd580;
	#20
	A = 16'hba53;
	B = 16'h390f;
	ans_a = 16'hd588;
	#20
	A = 16'h38fe;
	B = 16'h3c9a;
	ans_a = 16'hd57d;
	#20
	A = 16'hb17a;
	B = 16'h3fc6;
	ans_a = 16'hd582;
	#20
	A = 16'ha539;
	B = 16'h3cac;
	ans_a = 16'hd582;
	#20
	A = 16'hbd58;
	B = 16'h3f73;
	ans_a = 16'hd5aa;
	#20
	A = 16'hb066;
	B = 16'hbc53;
	ans_a = 16'hd5a8;
	#20
	A = 16'h3eaf;
	B = 16'hbf27;
	ans_a = 16'hd5d8;
	#20
	A = 16'hbc0a;
	B = 16'hbbd4;
	ans_a = 16'hd5c8;
	#20
	A = 16'hbdab;
	B = 16'hbce7;
	ans_a = 16'hd5ac;
	#20
	A = 16'hbbcd;
	B = 16'hbd22;
	ans_a = 16'hd598;
	#20
	A = 16'hbff3;
	B = 16'hb9ca;
	ans_a = 16'hd581;
	#20
	A = 16'h3e6b;
	B = 16'h3ec8;
	ans_a = 16'hd555;
	#20
	A = 16'h3ac3;
	B = 16'hb622;
	ans_a = 16'hd55a;
	#20
	A = 16'h3551;
	B = 16'h3261;
	ans_a = 16'hd559;
	#20
	A = 16'h3ceb;
	B = 16'hbf34;
	ans_a = 16'hd57c;
	#20
	A = 16'hbb49;
	B = 16'h3e02;
	ans_a = 16'hd592;
	#20
	A = 16'h3e9f;
	B = 16'hbb44;
	ans_a = 16'hd5aa;
	#20
	A = 16'hb944;
	B = 16'h3d65;
	ans_a = 16'hd5b8;
	#20
	A = 16'hbd74;
	B = 16'h3cad;
	ans_a = 16'hd5d2;
	#20
	A = 16'h3c17;
	B = 16'hbc07;
	ans_a = 16'hd5e2;
	#20
	A = 16'h3b70;
	B = 16'hb72a;
	ans_a = 16'hd5e9;
	#20
	A = 16'hbc27;
	B = 16'hbe8b;
	ans_a = 16'hd5ce;
	#20
	A = 16'h36e0;
	B = 16'h3605;
	ans_a = 16'hd5cb;
	#20
	A = 16'hbdad;
	B = 16'hbec8;
	ans_a = 16'hd5a4;
	#20
	A = 16'h3975;
	B = 16'h3df7;
	ans_a = 16'hd594;
	#20
	A = 16'hbc6e;
	B = 16'hb8bc;
	ans_a = 16'hd58a;
	#20
	A = 16'h3875;
	B = 16'hbca6;
	ans_a = 16'hd594;
	#20
	A = 16'hbabe;
	B = 16'hbe82;
	ans_a = 16'hd57e;
	#20
	A = 16'hbd11;
	B = 16'hbe85;
	ans_a = 16'hd55d;
	#20
	A = 16'h3a7f;
	B = 16'h3d84;
	ans_a = 16'hd54b;
	#20
	A = 16'h3e1a;
	B = 16'hb8c5;
	ans_a = 16'hd55a;
	#20
	A = 16'hbe99;
	B = 16'h3cbe;
	ans_a = 16'hd579;
	#20
	A = 16'hbcaf;
	B = 16'hbf6b;
	ans_a = 16'hd556;
	#20
	A = 16'hbf3f;
	B = 16'hb982;
	ans_a = 16'hd542;
	#20
	A = 16'hbfa0;
	B = 16'hb617;
	ans_a = 16'hd536;
	#20
	A = 16'hbc7a;
	B = 16'hb567;
	ans_a = 16'hd530;
	#20
	A = 16'h2fa4;
	B = 16'h25a6;
	ans_a = 16'hd530;
	#20
	A = 16'hb831;
	B = 16'h3a52;
	ans_a = 16'hd537;
	#20
	A = 16'h3860;
	B = 16'h3c2c;
	ans_a = 16'hd52e;
	#20
	A = 16'hba74;
	B = 16'h3955;
	ans_a = 16'hd537;
	#20
	A = 16'hbc85;
	B = 16'h3e84;
	ans_a = 16'hd554;
	#20
	A = 16'h3b62;
	B = 16'h36ef;
	ans_a = 16'hd54e;
	#20
	A = 16'hbdcd;
	B = 16'h3fe5;
	ans_a = 16'hd57c;
	#20
	A = 16'hbb8e;
	B = 16'h3a8c;
	ans_a = 16'hd588;
	#20
	A = 16'h393d;
	B = 16'h3cc1;
	ans_a = 16'hd57c;
	#20
	A = 16'h38f9;
	B = 16'hadd5;
	ans_a = 16'hd57d;
	#20
	A = 16'h3e5c;
	B = 16'hbfd0;
	ans_a = 16'hd5af;
	#20
	A = 16'h345f;
	B = 16'hb987;
	ans_a = 16'hd5b2;
	#20
	A = 16'hbd9b;
	B = 16'h3e20;
	ans_a = 16'hd5d4;
	#20
	A = 16'h3cf9;
	B = 16'h392d;
	ans_a = 16'hd5c7;
	#20
	A = 16'h2feb;
	B = 16'hbe0e;
	ans_a = 16'hd5ca;
	#20
	A = 16'h3c14;
	B = 16'hbc94;
	ans_a = 16'hd5dd;
	#20
	A = 16'h3ac4;
	B = 16'hb5e1;
	ans_a = 16'hd5e2;
	#20
	A = 16'h3cb6;
	B = 16'h3f16;
	ans_a = 16'hd5c1;
	#20
	A = 16'hb1cd;
	B = 16'hbb5b;
	ans_a = 16'hd5be;
	#20
	A = 16'h3e46;
	B = 16'hbf05;
	ans_a = 16'hd5ea;
	#20
	A = 16'h3b72;
	B = 16'h3eca;
	ans_a = 16'hd5d1;
	#20
	A = 16'hbd78;
	B = 16'hb96f;
	ans_a = 16'hd5c2;
	#20
	A = 16'hb9b8;
	B = 16'h3cac;
	ans_a = 16'hd5cf;
	#20
	A = 16'hb712;
	B = 16'h350d;
	ans_a = 16'hd5d1;
	#20
	A = 16'h3931;
	B = 16'hbb59;
	ans_a = 16'hd5db;
	#20
	A = 16'h32ee;
	B = 16'hb826;
	ans_a = 16'hd5dd;
	#20
	A = 16'h30d8;
	B = 16'h3ec6;
	ans_a = 16'hd5d9;
	#20
	A = 16'hbc28;
	B = 16'hb85a;
	ans_a = 16'hd5d0;
	#20
	A = 16'h3c37;
	B = 16'hbdba;
	ans_a = 16'hd5e8;
	#20
	A = 16'h2ea9;
	B = 16'h3d3a;
	ans_a = 16'hd5e6;
	#20
	A = 16'hbca4;
	B = 16'hbba4;
	ans_a = 16'hd5d4;
	#20
	A = 16'hb894;
	B = 16'hbfa5;
	ans_a = 16'hd5c2;
	#20
	A = 16'h3cf8;
	B = 16'h3894;
	ans_a = 16'hd5b7;
	#20
	A = 16'hbc84;
	B = 16'h3bbc;
	ans_a = 16'hd5c8;
	#20
	A = 16'h3b48;
	B = 16'hbe48;
	ans_a = 16'hd5df;
	#20
	A = 16'h2f62;
	B = 16'hbcce;
	ans_a = 16'hd5e1;
	#20
	A = 16'hb79c;
	B = 16'h39e9;
	ans_a = 16'hd5e7;
	#20
	A = 16'hbed4;
	B = 16'hb3b7;
	ans_a = 16'hd5e0;
	#20
	A = 16'hbc25;
	B = 16'h3c5f;
	ans_a = 16'hd5f2;
	#20
	A = 16'h3c9c;
	B = 16'hb945;
	ans_a = 16'hd5fe;
	#20
	A = 16'hbfe3;
	B = 16'h371a;
	ans_a = 16'hd60c;
	#20
	A = 16'hb9db;
	B = 16'hbe3a;
	ans_a = 16'hd5fa;
	#20
	A = 16'h360f;
	B = 16'h389f;
	ans_a = 16'hd5f6;
	#20
	A = 16'h3cde;
	B = 16'h3c5c;
	ans_a = 16'hd5e1;
	#20
	A = 16'h3d0d;
	B = 16'h3e8e;
	ans_a = 16'hd5c0;
	#20
	A = 16'h3b7b;
	B = 16'h3944;
	ans_a = 16'hd5b6;
	#20
	A = 16'hbdf3;
	B = 16'h3ed4;
	ans_a = 16'hd5df;
	#20
	A = 16'hbacf;
	B = 16'h2a46;
	ans_a = 16'hd5e0;
	#20
	A = 16'h2c02;
	B = 16'h3e0b;
	ans_a = 16'hd5de;
	#20
	A = 16'h3c1b;
	B = 16'h3bed;
	ans_a = 16'hd5ce;
	#20
	A = 16'hbbf8;
	B = 16'h3838;
	ans_a = 16'hd5d6;
	#20
	A = 16'h3192;
	B = 16'hbd8d;
	ans_a = 16'hd5da;
	#20
	A = 16'hbbae;
	B = 16'h34da;
	ans_a = 16'hd5df;
	#20
	A = 16'hb91d;
	B = 16'hbe90;
	ans_a = 16'hd5ce;
	#20
	A = 16'h398e;
	B = 16'h3ea6;
	ans_a = 16'hd5bc;
	#20
	A = 16'h3a9a;
	B = 16'h3dce;
	ans_a = 16'hd5a9;
	#20
	A = 16'hb34c;
	B = 16'hb568;
	ans_a = 16'hd5a8;
	#20
	A = 16'hbc79;
	B = 16'hb93a;
	ans_a = 16'hd59c;
	#20
	A = 16'hb9d0;
	B = 16'h3e8f;
	ans_a = 16'hd5af;
	#20
	A = 16'h3e17;
	B = 16'hbbf2;
	ans_a = 16'hd5c7;
	#20
	A = 16'ha62a;
	B = 16'hbef2;
	ans_a = 16'hd5c6;
	#20
	A = 16'h3ef2;
	B = 16'hbe41;
	ans_a = 16'hd5f1;
	#20
	A = 16'hbda8;
	B = 16'h3ffe;
	ans_a = 16'hd61e;
	#20
	A = 16'h3949;
	B = 16'hb91d;
	ans_a = 16'hd625;
	#20
	A = 16'h3abf;
	B = 16'h38bc;
	ans_a = 16'hd61d;
	#20
	A = 16'h3204;
	B = 16'h335f;
	ans_a = 16'hd61c;
	#20
	A = 16'h38c5;
	B = 16'h2bae;
	ans_a = 16'hd61b;
	#20
	A = 16'hbcb1;
	B = 16'hb8ff;
	ans_a = 16'hd60f;
	#20
	A = 16'h3ed7;
	B = 16'h3f15;
	ans_a = 16'hd5df;
	#20
	A = 16'h3557;
	B = 16'h2d61;
	ans_a = 16'hd5df;
	#20
	A = 16'hae1b;
	B = 16'h328a;
	ans_a = 16'hd5df;
	#20
	A = 16'h35c6;
	B = 16'h3cab;
	ans_a = 16'hd5d8;
	#20
	A = 16'hbcad;
	B = 16'hbd1f;
	ans_a = 16'hd5c0;
	#20
	A = 16'hbea0;
	B = 16'hbfec;
	ans_a = 16'hd58c;
	#20
	A = 16'h3fb2;
	B = 16'hb30b;
	ans_a = 16'hd593;
	#20
	A = 16'h3a55;
	B = 16'h338f;
	ans_a = 16'hd590;
	#20
	A = 16'h3ee8;
	B = 16'hbceb;
	ans_a = 16'hd5b2;
	#20
	A = 16'hbce7;
	B = 16'h39bc;
	ans_a = 16'hd5c0;
	#20
	A = 16'h32c4;
	B = 16'hba7e;
	ans_a = 16'hd5c3;
	#20
	A = 16'h3645;
	B = 16'h3fe9;
	ans_a = 16'hd5b7;
	#20
	A = 16'h2b7f;
	B = 16'hbaf7;
	ans_a = 16'hd5b8;
	#20
	A = 16'h3bc2;
	B = 16'h3edb;
	ans_a = 16'hd59d;
	#20
	A = 16'hbf75;
	B = 16'h3dfa;
	ans_a = 16'hd5ca;
	#20
	A = 16'h3c12;
	B = 16'hbd3b;
	ans_a = 16'hd5df;
	#20
	A = 16'hbd19;
	B = 16'h35a3;
	ans_a = 16'hd5e6;
	#20
	A = 16'h2e79;
	B = 16'h3d1b;
	ans_a = 16'hd5e4;
	#20
	A = 16'h3e57;
	B = 16'hbe78;
	ans_a = 16'hd60d;
	#20
	A = 16'h3f7c;
	B = 16'h3d2a;
	ans_a = 16'hd5e6;
	#20
	A = 16'h2b98;
	B = 16'h3fcb;
	ans_a = 16'hd5e4;
	#20
	A = 16'h2e55;
	B = 16'hbda9;
	ans_a = 16'hd5e6;
	#20
	A = 16'h3d58;
	B = 16'h3a1e;
	ans_a = 16'hd5d6;
	#20
	A = 16'h3e30;
	B = 16'h317e;
	ans_a = 16'hd5d2;
	#20
	A = 16'hac60;
	B = 16'hbfe0;
	ans_a = 16'hd5d0;
	#20
	A = 16'h2d5d;
	B = 16'h39fb;
	ans_a = 16'hd5cf;
	#20
	A = 16'h9cb3;
	B = 16'h3d51;
	ans_a = 16'hd5cf;
	#20
	A = 16'hb4ca;
	B = 16'hbef2;
	ans_a = 16'hd5c7;
	#20
	A = 16'hbcd0;
	B = 16'h3165;
	ans_a = 16'hd5ca;
	#20
	A = 16'hb4e6;
	B = 16'hb982;
	ans_a = 16'hd5c7;
	#20
	A = 16'hbe6e;
	B = 16'hbcc7;
	ans_a = 16'hd5a8;
	#20
	A = 16'h3e69;
	B = 16'hbadc;
	ans_a = 16'hd5be;
	#20
	A = 16'h3611;
	B = 16'hbe28;
	ans_a = 16'hd5c7;
	#20
	A = 16'hbabd;
	B = 16'hbe99;
	ans_a = 16'hd5b1;
	#20
	A = 16'hbddb;
	B = 16'h3f60;
	ans_a = 16'hd5dc;
	#20
	A = 16'h3872;
	B = 16'hbe4e;
	ans_a = 16'hd5ea;
	#20
	A = 16'h3f73;
	B = 16'h31b9;
	ans_a = 16'hd5e5;
	#20
	A = 16'hb919;
	B = 16'h3e37;
	ans_a = 16'hd5f5;
	#20
	A = 16'h365d;
	B = 16'hbc64;
	ans_a = 16'hd5fc;
	#20
	A = 16'h342d;
	B = 16'hb823;
	ans_a = 16'hd5fe;
	#20
	A = 16'hbd0d;
	B = 16'h3e7c;
	ans_a = 16'hd61f;
	#20
	A = 16'hb536;
	B = 16'hba5f;
	ans_a = 16'hd61b;
	#20
	A = 16'h3c2c;
	B = 16'hbff2;
	ans_a = 16'hd63c;
	#20
	A = 16'hba49;
	B = 16'h3b2c;
	ans_a = 16'hd647;
	#20
	A = 16'hbaa4;
	B = 16'h3cb7;
	ans_a = 16'hd657;
	#20
	A = 16'h3daf;
	B = 16'hbd94;
	ans_a = 16'hd677;
	#20
	A = 16'hb872;
	B = 16'h3e82;
	ans_a = 16'hd685;
	#20
	A = 16'h3f38;
	B = 16'h3aa3;
	ans_a = 16'hd66d;
	#20
	A = 16'h3d91;
	B = 16'h3d38;
	ans_a = 16'hd650;
	#20
	A = 16'h3e8a;
	B = 16'hbd05;
	ans_a = 16'hd671;
	#20
	A = 16'h3c25;
	B = 16'h334c;
	ans_a = 16'hd66d;
	#20
	A = 16'h3d72;
	B = 16'hb92b;
	ans_a = 16'hd67b;
	#20
	A = 16'hbd53;
	B = 16'h3fde;
	ans_a = 16'hd6a5;
	#20
	A = 16'hbde4;
	B = 16'haaaf;
	ans_a = 16'hd6a4;
	#20
	A = 16'h3f11;
	B = 16'hb40d;
	ans_a = 16'hd6ab;
	#20
	A = 16'h3860;
	B = 16'h392c;
	ans_a = 16'hd6a5;
	#20
	A = 16'h3898;
	B = 16'h3eb9;
	ans_a = 16'hd696;
	#20
	A = 16'h3430;
	B = 16'h30de;
	ans_a = 16'hd695;
	#20
	A = 16'h3771;
	B = 16'h3880;
	ans_a = 16'hd691;
	#20
	A = 16'hbb45;
	B = 16'h3675;
	ans_a = 16'hd697;
	#20
	A = 16'hbb5c;
	B = 16'h3878;
	ans_a = 16'hd69f;
	#20
	A = 16'h3e33;
	B = 16'h38a3;
	ans_a = 16'hd691;
	#20
	A = 16'hbb11;
	B = 16'hbb65;
	ans_a = 16'hd684;
	#20
	A = 16'h3f86;
	B = 16'hbe41;
	ans_a = 16'hd6b3;
	#20
	A = 16'h3922;
	B = 16'haead;
	ans_a = 16'hd6b4;
	#20
	A = 16'hbd4e;
	B = 16'h3622;
	ans_a = 16'hd6bc;
	#20
	A = 16'hbc8f;
	B = 16'hbd5c;
	ans_a = 16'hd6a4;
	#20
	A = 16'h3ab7;
	B = 16'h39cd;
	ans_a = 16'hd69a;
	#20
	A = 16'hb45a;
	B = 16'hb7ac;
	ans_a = 16'hd698;
	#20
	A = 16'hbf36;
	B = 16'h3b6e;
	ans_a = 16'hd6b3;
	#20
	A = 16'hbb74;
	B = 16'hb76f;
	ans_a = 16'hd6ac;
	#20
	A = 16'h3d81;
	B = 16'hbf38;
	ans_a = 16'hd6d4;
	#20
	A = 16'h3ac6;
	B = 16'h3fec;
	ans_a = 16'hd6b9;
	#20
	A = 16'h2ab1;
	B = 16'hba6a;
	ans_a = 16'hd6ba;
	#20
	A = 16'h3d3b;
	B = 16'hbc22;
	ans_a = 16'hd6d0;
	#20
	A = 16'h2632;
	B = 16'h3c53;
	ans_a = 16'hd6d0;
	#20
	A = 16'h386f;
	B = 16'h3f07;
	ans_a = 16'hd6c0;
	#20
	A = 16'hbcf4;
	B = 16'hb461;
	ans_a = 16'hd6bb;
	#20
	A = 16'hbf58;
	B = 16'hbed0;
	ans_a = 16'hd689;
	#20
	A = 16'h304b;
	B = 16'hbffa;
	ans_a = 16'hd68d;
	#20
	A = 16'haa30;
	B = 16'hbdc7;
	ans_a = 16'hd68c;
	#20
	A = 16'h3d9f;
	B = 16'h3eb3;
	ans_a = 16'hd666;
	#20
	A = 16'h340b;
	B = 16'h3824;
	ans_a = 16'hd664;
	#20
	A = 16'hb944;
	B = 16'hb75e;
	ans_a = 16'hd65f;
	#20
	A = 16'h3ea5;
	B = 16'hbf30;
	ans_a = 16'hd68f;
	#20
	A = 16'h363a;
	B = 16'h3917;
	ans_a = 16'hd68b;
	#20
	A = 16'hb6df;
	B = 16'hbf29;
	ans_a = 16'hd67f;
	#20
	A = 16'hb6c1;
	B = 16'h3c58;
	ans_a = 16'hd686;
	#20
	A = 16'h3d28;
	B = 16'h3d63;
	ans_a = 16'hd66a;
	#20
	A = 16'h3677;
	B = 16'hbd43;
	ans_a = 16'hd673;
	#20
	A = 16'h3d29;
	B = 16'hba55;
	ans_a = 16'hd683;
	#20
	A = 16'h3df5;
	B = 16'h3eac;
	ans_a = 16'hd65b;
	#20
	A = 16'hb766;
	B = 16'h2f4f;
	ans_a = 16'hd65c;
	#20
	A = 16'h3a58;
	B = 16'h3bc5;
	ans_a = 16'hd650;
	#20
	A = 16'h3ff6;
	B = 16'h3d1b;
	ans_a = 16'hd627;
	#20
	A = 16'hb6cf;
	B = 16'h3fbb;
	ans_a = 16'hd634;
	#20
	A = 16'hbb33;
	B = 16'h3a3d;
	ans_a = 16'hd63f;
	#20
	A = 16'h3ff2;
	B = 16'hbfdf;
	ans_a = 16'hd67e;
	#20
	A = 16'h2f27;
	B = 16'hb5a6;
	ans_a = 16'hd67f;
	#20
	A = 16'h3fc8;
	B = 16'hbbfe;
	ans_a = 16'hd69e;
	#20
	A = 16'h3f39;
	B = 16'h327b;
	ans_a = 16'hd698;
	#20
	A = 16'h3de3;
	B = 16'hbef3;
	ans_a = 16'hd6c1;
	#20
	A = 16'h3c92;
	B = 16'h3fe8;
	ans_a = 16'hd69d;
	#20
	A = 16'hbb06;
	B = 16'hbc8f;
	ans_a = 16'hd68d;
	#20
	A = 16'h3175;
	B = 16'h3e07;
	ans_a = 16'hd689;
	#20
	A = 16'h3b2d;
	B = 16'hb916;
	ans_a = 16'hd692;
	#20
	A = 16'h1c1e;
	B = 16'hb8a7;
	ans_a = 16'hd692;
	#20
	A = 16'hbeb9;
	B = 16'h3635;
	ans_a = 16'hd69c;
	#20
	A = 16'hbd44;
	B = 16'h38bd;
	ans_a = 16'hd6a8;
	#20
	A = 16'h3ed8;
	B = 16'h3946;
	ans_a = 16'hd696;
	#20
	A = 16'hbfeb;
	B = 16'hb774;
	ans_a = 16'hd687;
	#20
	A = 16'h3fb3;
	B = 16'hbd39;
	ans_a = 16'hd6af;
	#20
	A = 16'h3798;
	B = 16'hbe82;
	ans_a = 16'hd6bb;
	#20
	A = 16'h3aba;
	B = 16'h3499;
	ans_a = 16'hd6b7;
	#20
	A = 16'h2c56;
	B = 16'h3ffb;
	ans_a = 16'hd6b5;
	#20
	A = 16'h3d85;
	B = 16'hb2cd;
	ans_a = 16'hd6ba;
	#20
	A = 16'h37a7;
	B = 16'ha2e3;
	ans_a = 16'hd6ba;
	#20
	A = 16'h3032;
	B = 16'h358d;
	ans_a = 16'hd6b9;
	#20
	A = 16'h3cf0;
	B = 16'hbc82;
	ans_a = 16'hd6cf;
	#20
	A = 16'hbb24;
	B = 16'hb7cd;
	ans_a = 16'hd6c8;
	#20
	A = 16'hbabb;
	B = 16'h3418;
	ans_a = 16'hd6cb;
	#20
	A = 16'hba43;
	B = 16'hbb89;
	ans_a = 16'hd6bf;
	#20
	A = 16'hbb51;
	B = 16'h3f2c;
	ans_a = 16'hd6d9;
	#20
	A = 16'hbe66;
	B = 16'hbec4;
	ans_a = 16'hd6ae;
	#20
	A = 16'hbc91;
	B = 16'hbe56;
	ans_a = 16'hd691;
	#20
	A = 16'hbd1b;
	B = 16'hbd78;
	ans_a = 16'hd675;
	#20
	A = 16'h3c7d;
	B = 16'h3d4a;
	ans_a = 16'hd65d;
	#20
	A = 16'hbb4f;
	B = 16'h3d23;
	ans_a = 16'hd670;
	#20
	A = 16'h3196;
	B = 16'hbff8;
	ans_a = 16'hd676;
	#20
	A = 16'h3a25;
	B = 16'hbeea;
	ans_a = 16'hd68b;
	#20
	A = 16'h3aaf;
	B = 16'hbc75;
	ans_a = 16'hd69a;
	#20
	A = 16'h322a;
	B = 16'hb912;
	ans_a = 16'hd69c;
	#20
	A = 16'h3fd2;
	B = 16'hbda0;
	ans_a = 16'hd6c8;
	#20
	A = 16'h3d1e;
	B = 16'hb034;
	ans_a = 16'hd6cb;
	#20
	A = 16'hb96a;
	B = 16'h246f;
	ans_a = 16'hd6cb;
	#20
	A = 16'h3d9c;
	B = 16'hbdea;
	ans_a = 16'hd6ec;
	#20
	A = 16'hbf73;
	B = 16'h3fab;
	ans_a = 16'hd725;
	#20
	A = 16'hbd7a;
	B = 16'h2784;
	ans_a = 16'hd726;
	#20
	A = 16'ha60f;
	B = 16'h3f15;
	ans_a = 16'hd727;
	#20
	A = 16'h3444;
	B = 16'h3ebd;
	ans_a = 16'hd720;
	#20
	A = 16'hbcf1;
	B = 16'hbfd8;
	ans_a = 16'hd6f9;
	#20
	A = 16'h3d2b;
	B = 16'h3610;
	ans_a = 16'hd6f1;
	#20
	A = 16'hb5b0;
	B = 16'h312b;
	ans_a = 16'hd6f2;
	#20
	A = 16'h3a61;
	B = 16'h3916;
	ans_a = 16'hd6ea;
	#20
	A = 16'hbe24;
	B = 16'hbe77;
	ans_a = 16'hd6c2;
	#20
	A = 16'h31f3;
	B = 16'haec3;
	ans_a = 16'hd6c2;
	#20
	A = 16'hba6d;
	B = 16'h3a54;
	ans_a = 16'hd6cc;
	#20
	A = 16'hbf76;
	B = 16'h3399;
	ans_a = 16'hd6d3;
	#20
	A = 16'hae5b;
	B = 16'hbad1;
	ans_a = 16'hd6d2;
	#20
	A = 16'h3577;
	B = 16'h3df4;
	ans_a = 16'hd6ca;
	#20
	A = 16'hb4c6;
	B = 16'hbfde;
	ans_a = 16'hd6c1;
	#20
	A = 16'h3c98;
	B = 16'hb4c7;
	ans_a = 16'hd6c6;
	#20
	A = 16'h3d81;
	B = 16'h3471;
	ans_a = 16'hd6c0;
	#20
	A = 16'h3cca;
	B = 16'hbe09;
	ans_a = 16'hd6dd;
	#20
	A = 16'hbb2e;
	B = 16'h38fb;
	ans_a = 16'hd6e6;
	#20
	A = 16'hbc70;
	B = 16'h3c8b;
	ans_a = 16'hd6fa;
	#20
	A = 16'h3ee0;
	B = 16'hbd1c;
	ans_a = 16'hd71d;
	#20
	A = 16'h3890;
	B = 16'h3ff3;
	ans_a = 16'hd70b;
	#20
	A = 16'h38c7;
	B = 16'h3e61;
	ans_a = 16'hd6fc;
	#20
	A = 16'h3bd6;
	B = 16'h3c72;
	ans_a = 16'hd6eb;
	#20
	A = 16'h3e67;
	B = 16'hb731;
	ans_a = 16'hd6f7;
	#20
	A = 16'h38f5;
	B = 16'hb8fc;
	ans_a = 16'hd6fd;
	#20
	A = 16'h3d73;
	B = 16'hbe4d;
	ans_a = 16'hd71f;
	#20
	A = 16'hafe8;
	B = 16'h3de1;
	ans_a = 16'hd722;
	#20
	A = 16'hbe07;
	B = 16'hbff1;
	ans_a = 16'hd6f2;
	#20
	A = 16'hbc42;
	B = 16'h3a13;
	ans_a = 16'hd6ff;
	#20
	A = 16'h3436;
	B = 16'hb79a;
	ans_a = 16'hd701;
	#20
	A = 16'h3dc5;
	B = 16'h3d1e;
	ans_a = 16'hd6e3;
	#20
	A = 16'h37b5;
	B = 16'h3efe;
	ans_a = 16'hd6d6;
	#20
	A = 16'hbf49;
	B = 16'h3d46;
	ans_a = 16'hd6fc;
	#20
	A = 16'hbcfd;
	B = 16'h3545;
	ans_a = 16'hd703;
	#20
	A = 16'hb897;
	B = 16'h3d5b;
	ans_a = 16'hd70f;
	#20
	A = 16'h385f;
	B = 16'h3b0f;
	ans_a = 16'hd707;
	#20
	A = 16'hba88;
	B = 16'hbf34;
	ans_a = 16'hd6ef;
	#20
	A = 16'hbf66;
	B = 16'hb9e7;
	ans_a = 16'hd6d9;
	#20
	A = 16'h3970;
	B = 16'h3cf9;
	ans_a = 16'hd6cb;
	#20
	A = 16'h3696;
	B = 16'h3c85;
	ans_a = 16'hd6c4;
	#20
	A = 16'h3cfe;
	B = 16'h3a73;
	ans_a = 16'hd6b4;
	#20
	A = 16'h3ee1;
	B = 16'hbd4c;
	ans_a = 16'hd6d8;
	#20
	A = 16'h25e0;
	B = 16'hbca6;
	ans_a = 16'hd6d8;
	#20
	A = 16'hb8ff;
	B = 16'h376b;
	ans_a = 16'hd6dd;
	#20
	A = 16'h3d8e;
	B = 16'hbfd0;
	ans_a = 16'hd708;
	#20
	A = 16'h3b12;
	B = 16'hbeb2;
	ans_a = 16'hd720;
	#20
	A = 16'had3f;
	B = 16'h3e61;
	ans_a = 16'hd722;
	#20
	A = 16'hbcdb;
	B = 16'h3cbb;
	ans_a = 16'hd739;
	#20
	A = 16'h3dbe;
	B = 16'h3882;
	ans_a = 16'hd72c;
	#20
	A = 16'hbf26;
	B = 16'hbe6f;
	ans_a = 16'hd6fe;
	#20
	A = 16'hbe92;
	B = 16'hbc58;
	ans_a = 16'hd6e1;
	#20
	A = 16'h3923;
	B = 16'h3aae;
	ans_a = 16'hd6d8;
	#20
	A = 16'h3d56;
	B = 16'hba8f;
	ans_a = 16'hd6ea;
	#20
	A = 16'hbf60;
	B = 16'h3dc2;
	ans_a = 16'hd714;
	#20
	A = 16'h3310;
	B = 16'h3f83;
	ans_a = 16'hd70d;
	#20
	A = 16'hb1ea;
	B = 16'hb5e8;
	ans_a = 16'hd70c;
	#20
	A = 16'h3ecb;
	B = 16'hbcfc;
	ans_a = 16'hd72e;
	#20
	A = 16'hbefb;
	B = 16'hb500;
	ans_a = 16'hd725;
	#20
	A = 16'hbdc1;
	B = 16'haa6e;
	ans_a = 16'hd724;
	#20
	A = 16'h35cb;
	B = 16'hb61d;
	ans_a = 16'hd726;
	#20
	A = 16'h3986;
	B = 16'hb864;
	ans_a = 16'hd72c;
	#20
	A = 16'h3d9d;
	B = 16'hbd78;
	ans_a = 16'hd74b;
	#20
	A = 16'hb500;
	B = 16'h3d63;
	ans_a = 16'hd752;
	#20
	A = 16'hb9e4;
	B = 16'h3c94;
	ans_a = 16'hd75f;
	#20
	A = 16'h35f7;
	B = 16'h3e3a;
	ans_a = 16'hd756;
	#20
	A = 16'hbbb8;
	B = 16'hb11d;
	ans_a = 16'hd754;
	#20
	A = 16'h3f37;
	B = 16'hbda1;
	ans_a = 16'hd77d;
	#20
	A = 16'hbbfc;
	B = 16'h3818;
	ans_a = 16'hd785;
	#20
	A = 16'hbca4;
	B = 16'hbb1b;
	ans_a = 16'hd775;
	#20
	A = 16'h3e96;
	B = 16'h3316;
	ans_a = 16'hd76f;
	#20
	A = 16'hbd4b;
	B = 16'hb36d;
	ans_a = 16'hd76a;
	#20
	A = 16'hb72d;
	B = 16'h3f6f;
	ans_a = 16'hd777;
	#20
	A = 16'h3c23;
	B = 16'h3d75;
	ans_a = 16'hd760;
	#20
	A = 16'h3da3;
	B = 16'h375e;
	ans_a = 16'hd756;
	#20
	A = 16'h3e91;
	B = 16'hbcc9;
	ans_a = 16'hd775;
	#20
	A = 16'h3cc9;
	B = 16'hbb24;
	ans_a = 16'hd786;
	#20
	A = 16'h3c5d;
	B = 16'h2d3b;
	ans_a = 16'hd785;
	#20
	A = 16'hbd5d;
	B = 16'h3f70;
	ans_a = 16'hd7ad;
	#20
	A = 16'h3d37;
	B = 16'h3de7;
	ans_a = 16'hd78e;
	#20
	A = 16'hb56b;
	B = 16'hbfdd;
	ans_a = 16'hd783;
	#20
	A = 16'h3c4c;
	B = 16'h3f90;
	ans_a = 16'hd762;
	#20
	A = 16'hbfd5;
	B = 16'h3d7f;
	ans_a = 16'hd78d;
	#20
	A = 16'hbc2f;
	B = 16'hbece;
	ans_a = 16'hd771;
	#20
	A = 16'h3bcf;
	B = 16'h3fde;
	ans_a = 16'hd752;
	#20
	A = 16'h3af6;
	B = 16'hbd24;
	ans_a = 16'hd764;
	#20
	A = 16'hb03c;
	B = 16'h3bab;
	ans_a = 16'hd766;
	#20
	A = 16'hb649;
	B = 16'h3861;
	ans_a = 16'hd769;
	#20
	A = 16'hb7a4;
	B = 16'h3c95;
	ans_a = 16'hd772;
	#20
	A = 16'h2f5c;
	B = 16'hbcce;
	ans_a = 16'hd774;
	#20
	A = 16'hbba8;
	B = 16'hbe1f;
	ans_a = 16'hd75d;
	#20
	A = 16'haa64;
	B = 16'hbe23;
	ans_a = 16'hd75c;
	#20
	A = 16'h3202;
	B = 16'hbec8;
	ans_a = 16'hd761;
	#20
	A = 16'h3d18;
	B = 16'hbfeb;
	ans_a = 16'hd789;
	#20
	A = 16'hbc80;
	B = 16'hbf17;
	ans_a = 16'hd769;
	#20
	A = 16'hb935;
	B = 16'h3d05;
	ans_a = 16'hd776;
	#20
	A = 16'hbd13;
	B = 16'h3ec3;
	ans_a = 16'hd798;
	#20
	A = 16'hb3f0;
	B = 16'hb6d7;
	ans_a = 16'hd796;
	#20
	A = 16'hb38d;
	B = 16'h3d8a;
	ans_a = 16'hd79b;
	#20
	A = 16'h3eae;
	B = 16'hbb1c;
	ans_a = 16'hd7b3;
	#20
	A = 16'hba2a;
	B = 16'h3c5a;
	ans_a = 16'hd7c0;
	#20
	A = 16'hbff1;
	B = 16'h3c03;
	ans_a = 16'hd7e0;
	#20
	A = 16'h2e4b;
	B = 16'h3d81;
	ans_a = 16'hd7de;
	#20
	A = 16'haf7f;
	B = 16'hbb1d;
	ans_a = 16'hd7dc;
	#20
	A = 16'hbc17;
	B = 16'h3452;
	ans_a = 16'hd7e0;
	#20
	A = 16'h3da1;
	B = 16'h3e2f;
	ans_a = 16'hd7bd;
	#20
	A = 16'h2c5a;
	B = 16'hbd81;
	ans_a = 16'hd7be;
	#20
	A = 16'h3f6f;
	B = 16'h3ca5;
	ans_a = 16'hd79b;
	#20
	A = 16'h3cc0;
	B = 16'hbe7a;
	ans_a = 16'hd7ba;
	#20
	A = 16'hbf37;
	B = 16'hbada;
	ans_a = 16'hd7a1;
	#20
	A = 16'hacff;
	B = 16'h3f8f;
	ans_a = 16'hd7a3;
	#20
	A = 16'h302f;
	B = 16'hbee8;
	ans_a = 16'hd7a7;
	#20
	A = 16'h3f11;
	B = 16'hb950;
	ans_a = 16'hd7ba;
	#20
	A = 16'hbd10;
	B = 16'hbea6;
	ans_a = 16'hd798;
	#20
	A = 16'h3484;
	B = 16'h3cba;
	ans_a = 16'hd793;
	#20
	A = 16'haeba;
	B = 16'hbd2d;
	ans_a = 16'hd791;
	#20
	A = 16'h3e11;
	B = 16'h3364;
	ans_a = 16'hd78b;
	#20
	A = 16'h3d43;
	B = 16'h3c6a;
	ans_a = 16'hd774;
	#20
	A = 16'h38f8;
	B = 16'h3b59;
	ans_a = 16'hd76b;
	#20
	A = 16'hbfaa;
	B = 16'h3a01;
	ans_a = 16'hd782;
	#20
	A = 16'hb912;
	B = 16'h34ea;
	ans_a = 16'hd785;
	#20
	A = 16'h3e49;
	B = 16'h3c61;
	ans_a = 16'hd769;
	#20
	A = 16'h3e0f;
	B = 16'hb689;
	ans_a = 16'hd773;
	#20
	A = 16'h3c5d;
	B = 16'hb2d0;
	ans_a = 16'hd777;
	#20
	A = 16'h346d;
	B = 16'habc0;
	ans_a = 16'hd777;
	#20
	A = 16'h3744;
	B = 16'h38e1;
	ans_a = 16'hd773;
	#20
	A = 16'hbb9e;
	B = 16'hbdac;
	ans_a = 16'hd75d;
	#20
	A = 16'h380c;
	B = 16'h3503;
	ans_a = 16'hd75a;
	#20
	A = 16'hb978;
	B = 16'h3d93;
	ans_a = 16'hd769;
	#20
	A = 16'hbc12;
	B = 16'h26a5;
	ans_a = 16'hd769;
	#20
	A = 16'h3de8;
	B = 16'hb436;
	ans_a = 16'hd76f;
	#20
	A = 16'h9d53;
	B = 16'h3fa9;
	ans_a = 16'hd76f;
	#20
	A = 16'h3e9e;
	B = 16'hbdbd;
	ans_a = 16'hd795;
	#20
	A = 16'hbfcc;
	B = 16'h2df3;
	ans_a = 16'hd798;
	#20
	A = 16'h2dde;
	B = 16'hbe84;
	ans_a = 16'hd79a;
	#20
	A = 16'h3355;
	B = 16'h3e48;
	ans_a = 16'hd794;
	#20
	A = 16'hbec9;
	B = 16'h3bf4;
	ans_a = 16'hd7af;
	#20
	A = 16'h38f1;
	B = 16'h353c;
	ans_a = 16'hd7ac;
	#20
	A = 16'hb975;
	B = 16'hb910;
	ans_a = 16'hd7a5;
	#20
	A = 16'hbe63;
	B = 16'hbd21;
	ans_a = 16'hd784;
	#20
	A = 16'h3640;
	B = 16'hbd99;
	ans_a = 16'hd78d;
	#20
	A = 16'hb84d;
	B = 16'h38fa;
	ans_a = 16'hd792;
	#20
	A = 16'hbd59;
	B = 16'h38a8;
	ans_a = 16'hd79e;
	#20
	A = 16'hbea4;
	B = 16'h3afa;
	ans_a = 16'hd7b5;
	#20
	A = 16'hbdef;
	B = 16'h3adb;
	ans_a = 16'hd7c9;
	#20
	A = 16'h3d8d;
	B = 16'h2bbc;
	ans_a = 16'hd7c8;
	#20
	A = 16'hbd9c;
	B = 16'h2c57;
	ans_a = 16'hd7ca;
	#20
	A = 16'hbd3a;
	B = 16'h3e2a;
	ans_a = 16'hd7ea;
	#20
	A = 16'h3ef7;
	B = 16'h3c06;
	ans_a = 16'hd7ce;
	#20
	A = 16'hb60b;
	B = 16'h3d9f;
	ans_a = 16'hd7d6;
	#20
	A = 16'h3df1;
	B = 16'h3e56;
	ans_a = 16'hd7b0;
	#20
	A = 16'h3f09;
	B = 16'hb8b8;
	ans_a = 16'hd7c1;
	#20
	A = 16'h3415;
	B = 16'hb9fe;
	ans_a = 16'hd7c4;
	#20
	A = 16'h346d;
	B = 16'h3bda;
	ans_a = 16'hd7c0;
	#20
	A = 16'hb8b2;
	B = 16'haab4;
	ans_a = 16'hd7c0;
	#20
	A = 16'h3cd6;
	B = 16'hbf9f;
	ans_a = 16'hd7e5;
	#20
	A = 16'hb92a;
	B = 16'h1f9d;
	ans_a = 16'hd7e5;
	#20
	A = 16'h3dc2;
	B = 16'hb74a;
	ans_a = 16'hd7ef;
	#20
	A = 16'h3ef1;
	B = 16'h3b0c;
	ans_a = 16'hd7d7;
	#20
	A = 16'hbddc;
	B = 16'h3ca2;
	ans_a = 16'hd7f2;
	#20
	A = 16'hbf15;
	B = 16'h3eec;
	ans_a = 16'hd812;
	#20
	A = 16'hbf0e;
	B = 16'h3db5;
	ans_a = 16'hd826;
	#20
	A = 16'hbf36;
	B = 16'hb2f8;
	ans_a = 16'hd823;
	#20
	A = 16'h3e0f;
	B = 16'hb7f0;
	ans_a = 16'hd829;
	#20
	A = 16'hbd2c;
	B = 16'h3bed;
	ans_a = 16'hd833;
	#20
	A = 16'h3a13;
	B = 16'hbf52;
	ans_a = 16'hd83e;
	#20
	A = 16'h3ebf;
	B = 16'hbd35;
	ans_a = 16'hd850;
	#20
	A = 16'h3e56;
	B = 16'hbdf1;
	ans_a = 16'hd863;
	#20
	A = 16'h34b3;
	B = 16'h3c1e;
	ans_a = 16'hd861;
	#20
	A = 16'h3186;
	B = 16'hbd7c;
	ans_a = 16'hd863;
	#20
	A = 16'hb87a;
	B = 16'hb69a;
	ans_a = 16'hd861;
	#20
	A = 16'h3d64;
	B = 16'hbd46;
	ans_a = 16'hd86f;
	#20
	A = 16'hbe7e;
	B = 16'hb857;
	ans_a = 16'hd868;
	#20
	A = 16'hba92;
	B = 16'hbc88;
	ans_a = 16'hd861;
	#20
	A = 16'h3a44;
	B = 16'h3c79;
	ans_a = 16'hd85a;
	#20
	A = 16'hbd50;
	B = 16'h3e8e;
	ans_a = 16'hd86b;
	#20
	A = 16'h3fdb;
	B = 16'h309a;
	ans_a = 16'hd869;
	#20
	A = 16'h3c30;
	B = 16'hb7c8;
	ans_a = 16'hd86d;
	#20
	A = 16'h34e5;
	B = 16'hb632;
	ans_a = 16'hd86e;
	#20
	A = 16'hbd86;
	B = 16'hbc6e;
	ans_a = 16'hd862;
	#20
	A = 16'hbd2b;
	B = 16'h3412;
	ans_a = 16'hd865;
	#20
	A = 16'hbf74;
	B = 16'had2c;
	ans_a = 16'hd864;
	#20
	A = 16'h3921;
	B = 16'h3e9c;
	ans_a = 16'hd85c;
	#20
	A = 16'h3c03;
	B = 16'h3fb8;
	ans_a = 16'hd84d;
	#20
	A = 16'h3f68;
	B = 16'h3865;
	ans_a = 16'hd845;
	#20
	A = 16'hbf42;
	B = 16'hbfc2;
	ans_a = 16'hd829;
	#20
	A = 16'hbc79;
	B = 16'hbaaa;
	ans_a = 16'hd822;
	#20
	A = 16'hbdae;
	B = 16'h3f4d;
	ans_a = 16'hd837;
	#20
	A = 16'hbc30;
	B = 16'hba0c;
	ans_a = 16'hd831;
	#20
	A = 16'h3c6c;
	B = 16'h3f91;
	ans_a = 16'hd820;
	#20
	A = 16'hbd03;
	B = 16'hb9c6;
	ans_a = 16'hd819;
	#20
	A = 16'hbcc5;
	B = 16'h39a6;
	ans_a = 16'hd820;
	#20
	A = 16'hbf7f;
	B = 16'hbc9a;
	ans_a = 16'hd80f;
	#20
	A = 16'h3b74;
	B = 16'h3919;
	ans_a = 16'hd80a;
	#20
	A = 16'h3dff;
	B = 16'h30a2;
	ans_a = 16'hd808;
	#20
	A = 16'hbe8e;
	B = 16'hbea5;
	ans_a = 16'hd7e4;
	#20
	A = 16'h3e49;
	B = 16'hb164;
	ans_a = 16'hd7e8;
	#20
	A = 16'h386e;
	B = 16'h34e4;
	ans_a = 16'hd7e5;
	#20
	A = 16'h3b27;
	B = 16'hbb59;
	ans_a = 16'hd7f2;
	#20
	A = 16'hbc97;
	B = 16'hbf6c;
	ans_a = 16'hd7d0;
	#20
	A = 16'hb409;
	B = 16'h385e;
	ans_a = 16'hd7d2;
	#20
	A = 16'h3ead;
	B = 16'h39bb;
	ans_a = 16'hd7bf;
	#20
	A = 16'h3956;
	B = 16'hbef2;
	ans_a = 16'hd7d2;
	#20
	A = 16'h3a66;
	B = 16'h3631;
	ans_a = 16'hd7cd;
	#20
	A = 16'hb9d4;
	B = 16'hbf2e;
	ans_a = 16'hd7b8;
	#20
	A = 16'h368d;
	B = 16'h3cc7;
	ans_a = 16'hd7b0;
	#20
	A = 16'h3c7f;
	B = 16'h3c58;
	ans_a = 16'hd79c;
	#20
	A = 16'h38ed;
	B = 16'h3cf3;
	ans_a = 16'hd790;
	#20
	A = 16'haea6;
	B = 16'hbeb5;
	ans_a = 16'hd78d;
	#20
	A = 16'h2a89;
	B = 16'hb8ef;
	ans_a = 16'hd78e;
	#20
	A = 16'h3c5c;
	B = 16'hbdee;
	ans_a = 16'hd7a8;
	#20
	A = 16'hbb43;
	B = 16'h3cd8;
	ans_a = 16'hd7ba;
	#20
	A = 16'hbdd2;
	B = 16'hbf45;
	ans_a = 16'hd790;
	#20
	A = 16'h3dda;
	B = 16'hb0ef;
	ans_a = 16'hd794;
	#20
	A = 16'h37c6;
	B = 16'hb53d;
	ans_a = 16'hd797;
	#20
	A = 16'hbfb4;
	B = 16'h3154;
	ans_a = 16'hd79c;
	#20
	A = 16'h3f0f;
	B = 16'h3dd4;
	ans_a = 16'hd773;
	#20
	A = 16'h3f43;
	B = 16'h3f0a;
	ans_a = 16'hd740;
	#20
	A = 16'hbc67;
	B = 16'hbee8;
	ans_a = 16'hd722;
	#20
	A = 16'hafc3;
	B = 16'h1ae9;
	ans_a = 16'hd722;
	#20
	A = 16'hb430;
	B = 16'hb2ab;
	ans_a = 16'hd721;
	#20
	A = 16'hb695;
	B = 16'h3ccf;
	ans_a = 16'hd729;
	#20
	A = 16'hb9a1;
	B = 16'hbd6a;
	ans_a = 16'hd71a;
	#20
	A = 16'hb7fb;
	B = 16'hb135;
	ans_a = 16'hd719;
	#20
	A = 16'h3aad;
	B = 16'h3ac4;
	ans_a = 16'hd70e;
	#20
	A = 16'h3ac4;
	B = 16'h3da6;
	ans_a = 16'hd6fb;
	#20
	A = 16'hbc05;
	B = 16'hb851;
	ans_a = 16'hd6f2;
	#20
	A = 16'hbf5f;
	B = 16'hbe44;
	ans_a = 16'hd6c4;
	#20
	A = 16'h3f89;
	B = 16'ha713;
	ans_a = 16'hd6c5;
	#20
	A = 16'h2f81;
	B = 16'h38f4;
	ans_a = 16'hd6c4;
	#20
	A = 16'hbd84;
	B = 16'hbe52;
	ans_a = 16'hd6a1;
	#20
	A = 16'h3e9a;
	B = 16'h3b57;
	ans_a = 16'hd689;
	#20
	A = 16'hbe47;
	B = 16'hba58;
	ans_a = 16'hd675;
	#20
	A = 16'hb870;
	B = 16'h3f50;
	ans_a = 16'hd685;
	#20
	A = 16'hb8df;
	B = 16'h344a;
	ans_a = 16'hd688;
	#20
	A = 16'h3957;
	B = 16'h3f54;
	ans_a = 16'hd674;
	#20
	A = 16'hb4cc;
	B = 16'h3746;
	ans_a = 16'hd676;
	#20
	A = 16'h3e95;
	B = 16'h3ec8;
	ans_a = 16'hd649;
	#20
	A = 16'h35f5;
	B = 16'hb5c0;
	ans_a = 16'hd64b;
	#20
	A = 16'h39e7;
	B = 16'h3c5d;
	ans_a = 16'hd63e;
	#20
	A = 16'h30b7;
	B = 16'h3e80;
	ans_a = 16'hd63a;
	#20
	A = 16'hbfb8;
	B = 16'h3f30;
	ans_a = 16'hd671;
	#20
	A = 16'hb99e;
	B = 16'hbe9e;
	ans_a = 16'hd65e;
	#20
	A = 16'hbc6f;
	B = 16'hbf47;
	ans_a = 16'hd63e;
	#20
	A = 16'h38dc;
	B = 16'hb4e0;
	ans_a = 16'hd641;
	#20
	A = 16'h3e63;
	B = 16'h3dbb;
	ans_a = 16'hd61c;
	#20
	A = 16'hbe16;
	B = 16'hb885;
	ans_a = 16'hd60e;
	#20
	A = 16'hbcd4;
	B = 16'h3489;
	ans_a = 16'hd613;
	#20
	A = 16'hbbfa;
	B = 16'h2c35;
	ans_a = 16'hd614;
	#20
	A = 16'h3952;
	B = 16'h290b;
	ans_a = 16'hd614;
	#20
	A = 16'h3819;
	B = 16'hbde5;
	ans_a = 16'hd620;
	#20
	A = 16'h3b26;
	B = 16'h3b5b;
	ans_a = 16'hd613;
	#20
	A = 16'h3ed7;
	B = 16'h3fcf;
	ans_a = 16'hd5de;
	#20
	A = 16'h3eb2;
	B = 16'hbc10;
	ans_a = 16'hd5f9;
	#20
	A = 16'h30f0;
	B = 16'hbdc4;
	ans_a = 16'hd5fd;
	#20
	A = 16'h3a76;
	B = 16'hbce0;
	ans_a = 16'hd60d;
	#20
	A = 16'h3d0d;
	B = 16'h3fd1;
	ans_a = 16'hd5e6;
	#20
	A = 16'hbd79;
	B = 16'hb8a4;
	ans_a = 16'hd5d9;
	#20
	A = 16'h3e4d;
	B = 16'h3583;
	ans_a = 16'hd5d0;
	#20
	A = 16'h3d99;
	B = 16'hbdd7;
	ans_a = 16'hd5f1;
	#20
	A = 16'h3868;
	B = 16'h3a0b;
	ans_a = 16'hd5ea;
	#20
	A = 16'hbea6;
	B = 16'haa8e;
	ans_a = 16'hd5e9;
	#20
	A = 16'h3e5f;
	B = 16'hbe36;
	ans_a = 16'hd611;
	#20
	A = 16'h3ed1;
	B = 16'hba0f;
	ans_a = 16'hd626;
	#20
	A = 16'h3ef1;
	B = 16'hbce2;
	ans_a = 16'hd648;
	#20
	A = 16'h39d3;
	B = 16'hbcc9;
	ans_a = 16'hd656;
	#20
	A = 16'h3b67;
	B = 16'h3fbb;
	ans_a = 16'hd639;
	#20
	A = 16'ha525;
	B = 16'hb6b6;
	ans_a = 16'hd639;
	#20
	A = 16'hbbf5;
	B = 16'h3d9f;
	ans_a = 16'hd64f;
	#20
	A = 16'hbcfa;
	B = 16'hbe96;
	ans_a = 16'hd62e;
	#20
	A = 16'hb873;
	B = 16'hb840;
	ans_a = 16'hd629;
	#20
	A = 16'h3d2d;
	B = 16'h3aea;
	ans_a = 16'hd617;
	#20
	A = 16'hb892;
	B = 16'hbf08;
	ans_a = 16'hd607;
	#20
	A = 16'hb806;
	B = 16'hb029;
	ans_a = 16'hd606;
	#20
	A = 16'hbb6f;
	B = 16'hbae0;
	ans_a = 16'hd5f9;
	#20
	A = 16'h3a7e;
	B = 16'h3c64;
	ans_a = 16'hd5eb;
	#20
	A = 16'hbba2;
	B = 16'h3d69;
	ans_a = 16'hd600;
	#20
	A = 16'hbbd7;
	B = 16'h323d;
	ans_a = 16'hd603;
	#20
	A = 16'hbdd0;
	B = 16'h2edc;
	ans_a = 16'hd605;
	#20
	A = 16'hbc06;
	B = 16'hbd0d;
	ans_a = 16'hd5f1;
	#20
	A = 16'hb5a5;
	B = 16'hb6af;
	ans_a = 16'hd5ef;
	#20
	A = 16'h3812;
	B = 16'hbc9b;
	ans_a = 16'hd5f8;
	#20
	A = 16'hb647;
	B = 16'h39e9;
	ans_a = 16'hd5fd;
	#20
	A = 16'hb7f3;
	B = 16'h39da;
	ans_a = 16'hd603;
	#20
	A = 16'h31de;
	B = 16'hb6f3;
	ans_a = 16'hd604;
	#20
	A = 16'h3fae;
	B = 16'hbc93;
	ans_a = 16'hd627;
	#20
	A = 16'h390a;
	B = 16'h3e3e;
	ans_a = 16'hd617;
	#20
	A = 16'hba7e;
	B = 16'h3d69;
	ans_a = 16'hd629;
	#20
	A = 16'hb88f;
	B = 16'h3f33;
	ans_a = 16'hd639;
	#20
	A = 16'h38d8;
	B = 16'h3b07;
	ans_a = 16'hd630;
	#20
	A = 16'hba26;
	B = 16'hb8f6;
	ans_a = 16'hd628;
	#20
	A = 16'h21f5;
	B = 16'h3e18;
	ans_a = 16'hd628;
	#20
	A = 16'h3bbb;
	B = 16'hb4d3;
	ans_a = 16'hd62d;
	#20
	A = 16'hbbe3;
	B = 16'hb890;
	ans_a = 16'hd624;
	#20
	A = 16'hbb75;
	B = 16'h3bfe;
	ans_a = 16'hd633;
	#20
	A = 16'h3938;
	B = 16'hbf43;
	ans_a = 16'hd646;
	#20
	A = 16'hbcf4;
	B = 16'h3aa5;
	ans_a = 16'hd656;
	#20
	A = 16'h3d48;
	B = 16'h3b76;
	ans_a = 16'hd642;
	#20
	A = 16'h3fef;
	B = 16'hba2b;
	ans_a = 16'hd65a;
	#20
	A = 16'h2e20;
	B = 16'h3806;
	ans_a = 16'hd659;
	#20
	A = 16'hbd8f;
	B = 16'h3679;
	ans_a = 16'hd662;
	#20
	A = 16'hb8f4;
	B = 16'h3a05;
	ans_a = 16'hd669;
	#20
	A = 16'h3dfc;
	B = 16'hbed7;
	ans_a = 16'hd692;
	#20
	A = 16'hb469;
	B = 16'h343f;
	ans_a = 16'hd693;
	#20
	A = 16'h3e21;
	B = 16'hbcff;
	ans_a = 16'hd6b2;
	#20
	A = 16'h3d9a;
	B = 16'h3ce1;
	ans_a = 16'hd697;
	#20
	A = 16'h3828;
	B = 16'ha967;
	ans_a = 16'hd697;
	#20
	A = 16'hbe50;
	B = 16'h3bc5;
	ans_a = 16'hd6b0;
	#20
	A = 16'hbb27;
	B = 16'hbd4d;
	ans_a = 16'hd69d;
	#20
	A = 16'hbf9d;
	B = 16'h3c4c;
	ans_a = 16'hd6be;
	#20
	A = 16'hb035;
	B = 16'h394b;
	ans_a = 16'hd6bf;
	#20
	A = 16'h3b45;
	B = 16'h37b0;
	ans_a = 16'hd6b8;
	#20
	A = 16'hbfd0;
	B = 16'hbcf2;
	ans_a = 16'hd691;
	#20
	A = 16'h3d1b;
	B = 16'h3efc;
	ans_a = 16'hd66d;
	#20
	A = 16'h3d2c;
	B = 16'hbf46;
	ans_a = 16'hd693;
	#20
	A = 16'hbe03;
	B = 16'hbd4f;
	ans_a = 16'hd673;
	#20
	A = 16'h3c15;
	B = 16'h3dfc;
	ans_a = 16'hd65b;
	#20
	A = 16'hbd1a;
	B = 16'h12fd;
	ans_a = 16'hd65b;
	#20
	A = 16'h3e2e;
	B = 16'hb9e6;
	ans_a = 16'hd66d;
	#20
	A = 16'h3fbc;
	B = 16'h3193;
	ans_a = 16'hd668;
	#20
	A = 16'hbec4;
	B = 16'h29c9;
	ans_a = 16'hd669;
	#20
	A = 16'h3a00;
	B = 16'h3faf;
	ans_a = 16'hd652;
	#20
	A = 16'h2ec9;
	B = 16'hbd68;
	ans_a = 16'hd654;
	#20
	A = 16'h37e0;
	B = 16'hadba;
	ans_a = 16'hd655;
	#20
	A = 16'hbe43;
	B = 16'hba61;
	ans_a = 16'hd641;
	#20
	A = 16'h3e72;
	B = 16'h3b4b;
	ans_a = 16'hd62a;
	#20
	A = 16'hbd8f;
	B = 16'hbd3d;
	ans_a = 16'hd60d;
	#20
	A = 16'hb362;
	B = 16'hb31f;
	ans_a = 16'hd60c;
	#20
	A = 16'h3a43;
	B = 16'h3b99;
	ans_a = 16'hd600;
	#20
	A = 16'h3bc5;
	B = 16'h3f89;
	ans_a = 16'hd5e3;
	#20
	A = 16'h3e68;
	B = 16'hbc1e;
	ans_a = 16'hd5fd;
	#20
	A = 16'h3e35;
	B = 16'h38ff;
	ans_a = 16'hd5ed;
	#20
	A = 16'hacb9;
	B = 16'hbfdc;
	ans_a = 16'hd5eb;
	#20
	A = 16'h3c39;
	B = 16'hb67d;
	ans_a = 16'hd5f2;
	#20
	A = 16'h38fe;
	B = 16'hbf47;
	ans_a = 16'hd604;
	#20
	A = 16'h3d19;
	B = 16'h8a68;
	ans_a = 16'hd604;
	#20
	A = 16'hbed7;
	B = 16'hbcf7;
	ans_a = 16'hd5e2;
	#20
	A = 16'h3ce3;
	B = 16'hb6e6;
	ans_a = 16'hd5ea;
	#20
	A = 16'h3caf;
	B = 16'hb850;
	ans_a = 16'hd5f4;
	#20
	A = 16'hbf31;
	B = 16'h3865;
	ans_a = 16'hd604;
	#20
	A = 16'h3d36;
	B = 16'hb0f7;
	ans_a = 16'hd607;
	#20
	A = 16'h3eba;
	B = 16'hb60d;
	ans_a = 16'hd611;
	#20
	A = 16'h3cac;
	B = 16'hb13b;
	ans_a = 16'hd614;
	#20
	A = 16'h3d84;
	B = 16'h3ccc;
	ans_a = 16'hd5fa;
	#20
	A = 16'hb1b4;
	B = 16'h3f12;
	ans_a = 16'hd5ff;
	#20
	A = 16'h3b3a;
	B = 16'hbfdf;
	ans_a = 16'hd61b;
	#20
	A = 16'hbe26;
	B = 16'h350a;
	ans_a = 16'hd623;
	#20
	A = 16'h3d91;
	B = 16'h3a62;
	ans_a = 16'hd611;
	#20
	A = 16'h3e9d;
	B = 16'h25be;
	ans_a = 16'hd610;
	#20
	A = 16'h3d13;
	B = 16'hbcce;
	ans_a = 16'hd628;
	#20
	A = 16'h237e;
	B = 16'hb96c;
	ans_a = 16'hd628;
	#20
	A = 16'hb51f;
	B = 16'h347f;
	ans_a = 16'hd629;
	#20
	A = 16'h3a85;
	B = 16'hba0d;
	ans_a = 16'hd633;
	#20
	A = 16'hbcc0;
	B = 16'hbedc;
	ans_a = 16'hd612;
	#20
	A = 16'h3eb8;
	B = 16'h3a02;
	ans_a = 16'hd5fe;
	#20
	A = 16'hbd5c;
	B = 16'hbf9f;
	ans_a = 16'hd5d5;
	#20
	A = 16'h3c4b;
	B = 16'h3d10;
	ans_a = 16'hd5bf;
	#20
	A = 16'h3b98;
	B = 16'h3adb;
	ans_a = 16'hd5b2;
	#20
	A = 16'ha776;
	B = 16'hb65b;
	ans_a = 16'hd5b2;
	#20
	A = 16'hbb50;
	B = 16'h3d55;
	ans_a = 16'hd5c6;
	#20
	A = 16'hbd14;
	B = 16'h1b27;
	ans_a = 16'hd5c6;
	#20
	A = 16'h3cdf;
	B = 16'hbd8b;
	ans_a = 16'hd5e1;
	#20
	A = 16'h3458;
	B = 16'h397d;
	ans_a = 16'hd5de;
	#20
	A = 16'h31b3;
	B = 16'h3101;
	ans_a = 16'hd5de;
	#20
	A = 16'hbee2;
	B = 16'hbc8f;
	ans_a = 16'hd5bf;
	#20
	A = 16'h3cd6;
	B = 16'h3867;
	ans_a = 16'hd5b4;
	#20
	A = 16'h3d50;
	B = 16'hb9b8;
	ans_a = 16'hd5c3;
	#20
	A = 16'h3bab;
	B = 16'h3fb1;
	ans_a = 16'hd5a6;
	#20
	A = 16'h3d3b;
	B = 16'hbcf6;
	ans_a = 16'hd5c0;
	#20
	A = 16'hae58;
	B = 16'h3c65;
	ans_a = 16'hd5c2;
	#20
	A = 16'hbb69;
	B = 16'hbc6c;
	ans_a = 16'hd5b2;
	#20
	A = 16'hb916;
	B = 16'ha6a7;
	ans_a = 16'hd5b2;
	#20
	A = 16'hbe25;
	B = 16'h3cd6;
	ans_a = 16'hd5d0;
	#20
	A = 16'hb1e6;
	B = 16'h3fc1;
	ans_a = 16'hd5d6;
	#20
	A = 16'hb6f0;
	B = 16'hbc91;
	ans_a = 16'hd5ce;
	#20
	A = 16'haf90;
	B = 16'h3ca3;
	ans_a = 16'hd5d0;
	#20
	A = 16'hb19a;
	B = 16'hb959;
	ans_a = 16'hd5ce;
	#20
	A = 16'hb60e;
	B = 16'h3ef6;
	ans_a = 16'hd5d9;
	#20
	A = 16'hbdaa;
	B = 16'hbc4d;
	ans_a = 16'hd5c1;
	#20
	A = 16'hb6ef;
	B = 16'hbd5c;
	ans_a = 16'hd5b8;
	#20
	A = 16'h3e93;
	B = 16'hb8e0;
	ans_a = 16'hd5c8;
	#20
	A = 16'ha501;
	B = 16'hba05;
	ans_a = 16'hd5c8;
	#20
	A = 16'hb91f;
	B = 16'hbd0b;
	ans_a = 16'hd5bb;
	#20
	A = 16'hbe87;
	B = 16'h34d9;
	ans_a = 16'hd5c3;
	#20
	A = 16'h3b12;
	B = 16'h2c6e;
	ans_a = 16'hd5c2;
	#20
	A = 16'hba54;
	B = 16'h2f52;
	ans_a = 16'hd5c3;
	#20
	A = 16'h3c83;
	B = 16'h2bd6;
	ans_a = 16'hd5c2;
	#20
	A = 16'h3d69;
	B = 16'hbd77;
	ans_a = 16'hd5e0;
	#20
	A = 16'h367c;
	B = 16'h3f66;
	ans_a = 16'hd5d4;
	#20
	A = 16'h38b0;
	B = 16'hbc95;
	ans_a = 16'hd5df;
	#20
	A = 16'h3c78;
	B = 16'h3da1;
	ans_a = 16'hd5c6;
	#20
	A = 16'hbd0b;
	B = 16'hbdf9;
	ans_a = 16'hd5a8;
	#20
	A = 16'h28e8;
	B = 16'hbd2a;
	ans_a = 16'hd5a9;
	#20
	A = 16'h3a0b;
	B = 16'h3d89;
	ans_a = 16'hd598;
	#20
	A = 16'hbb37;
	B = 16'h3e3a;
	ans_a = 16'hd5ae;
	#20
	A = 16'hb9b4;
	B = 16'ha442;
	ans_a = 16'hd5ae;
	#20
	A = 16'h2caf;
	B = 16'h3f08;
	ans_a = 16'hd5ac;
	#20
	A = 16'h3e3c;
	B = 16'hbec0;
	ans_a = 16'hd5d6;
	#20
	A = 16'hbd68;
	B = 16'h3eee;
	ans_a = 16'hd5fb;
	#20
	A = 16'hbe61;
	B = 16'h38b7;
	ans_a = 16'hd60a;
	#20
	A = 16'hbea2;
	B = 16'h398b;
	ans_a = 16'hd61c;
	#20
	A = 16'h3d62;
	B = 16'h3b41;
	ans_a = 16'hd608;
	#20
	A = 16'hb599;
	B = 16'hbd7f;
	ans_a = 16'hd600;
	#20
	A = 16'hb5e2;
	B = 16'hbc95;
	ans_a = 16'hd5f9;
	#20
	A = 16'hb99e;
	B = 16'h37c2;
	ans_a = 16'hd5fe;
	#20
	A = 16'h3d69;
	B = 16'h3d4b;
	ans_a = 16'hd5e1;
	#20
	A = 16'h3d9b;
	B = 16'hb68f;
	ans_a = 16'hd5ea;
	#20
	A = 16'hb5ae;
	B = 16'h3fd3;
	ans_a = 16'hd5f5;
	#20
	A = 16'h34e8;
	B = 16'hbddd;
	ans_a = 16'hd5fc;
	#20
	A = 16'hb9bc;
	B = 16'hbad8;
	ans_a = 16'hd5f2;
	#20
	A = 16'hbea2;
	B = 16'hba70;
	ans_a = 16'hd5dd;
	#20
	A = 16'hb0ea;
	B = 16'h3ff9;
	ans_a = 16'hd5e2;
	#20
	A = 16'hbc72;
	B = 16'h3c40;
	ans_a = 16'hd5f5;
	#20
	A = 16'h3bfb;
	B = 16'hbb0d;
	ans_a = 16'hd603;
	#20
	A = 16'hba92;
	B = 16'h3fce;
	ans_a = 16'hd61d;
	#20
	A = 16'h3def;
	B = 16'h3e9a;
	ans_a = 16'hd5f6;
	#20
	A = 16'hba95;
	B = 16'h3509;
	ans_a = 16'hd5fa;
	#20
	A = 16'hb390;
	B = 16'h3894;
	ans_a = 16'hd5fc;
	#20
	A = 16'hbd81;
	B = 16'h3f25;
	ans_a = 16'hd623;
	#20
	A = 16'h3fba;
	B = 16'h30b2;
	ans_a = 16'hd61e;
	#20
	A = 16'hb722;
	B = 16'hb4e7;
	ans_a = 16'hd61c;
	#20
	A = 16'hb802;
	B = 16'h392a;
	ans_a = 16'hd621;
	#20
	A = 16'h3e4f;
	B = 16'h3d62;
	ans_a = 16'hd5ff;
	#20
	A = 16'hbcfb;
	B = 16'h3d0d;
	ans_a = 16'hd618;
	#20
	A = 16'h3ccf;
	B = 16'hb7e6;
	ans_a = 16'hd621;
	#20
	A = 16'hb11c;
	B = 16'hb9aa;
	ans_a = 16'hd61f;
	#20
	A = 16'h3bfa;
	B = 16'h32ea;
	ans_a = 16'hd61c;
	#20
	A = 16'h3c0e;
	B = 16'h3b2a;
	ans_a = 16'hd60d;
	#20
	A = 16'h3ce0;
	B = 16'h3db3;
	ans_a = 16'hd5f1;
	#20
	A = 16'h3f49;
	B = 16'h3fdb;
	ans_a = 16'hd5b8;
	#20
	A = 16'h3795;
	B = 16'h3f7e;
	ans_a = 16'hd5aa;
	#20
	A = 16'hb4c5;
	B = 16'hbd00;
	ans_a = 16'hd5a4;
	#20
	A = 16'h3a64;
	B = 16'hb9d0;
	ans_a = 16'hd5ad;
	#20
	A = 16'hbadb;
	B = 16'h3bd8;
	ans_a = 16'hd5ba;
	#20
	A = 16'hbd05;
	B = 16'h2fa6;
	ans_a = 16'hd5bc;
	#20
	A = 16'h3f38;
	B = 16'hbc4c;
	ans_a = 16'hd5db;
	#20
	A = 16'h3cc4;
	B = 16'hbde6;
	ans_a = 16'hd5f7;
	#20
	A = 16'h3d68;
	B = 16'hbbc6;
	ans_a = 16'hd60c;
	#20
	A = 16'hbd51;
	B = 16'h3926;
	ans_a = 16'hd61a;
	#20
	A = 16'hb519;
	B = 16'h3c0b;
	ans_a = 16'hd61f;
	#20
	A = 16'h38b6;
	B = 16'h36d0;
	ans_a = 16'hd61b;
	#20
	A = 16'hbc95;
	B = 16'hb343;
	ans_a = 16'hd617;
	#20
	A = 16'h3f37;
	B = 16'hbc6a;
	ans_a = 16'hd637;
	#20
	A = 16'h38cf;
	B = 16'hbe42;
	ans_a = 16'hd646;
	#20
	A = 16'hbe74;
	B = 16'hbb29;
	ans_a = 16'hd62f;
	#20
	A = 16'hbd1c;
	B = 16'h3ed0;
	ans_a = 16'hd652;
	#20
	A = 16'h3ee3;
	B = 16'h3816;
	ans_a = 16'hd644;
	#20
	A = 16'hbdb4;
	B = 16'h2c7b;
	ans_a = 16'hd646;
	#20
	A = 16'h3fd1;
	B = 16'hb40f;
	ans_a = 16'hd64e;
	#20
	A = 16'h3e29;
	B = 16'h3d9e;
	ans_a = 16'hd62b;
	#20
	A = 16'hbd95;
	B = 16'hbc89;
	ans_a = 16'hd612;
	#20
	A = 16'hbc90;
	B = 16'hb9ad;
	ans_a = 16'hd605;
	#20
	A = 16'hb84a;
	B = 16'hba1d;
	ans_a = 16'hd5fe;
	#20
	A = 16'h3a06;
	B = 16'h3f7d;
	ans_a = 16'hd5e7;
	#20
	A = 16'hb934;
	B = 16'h39db;
	ans_a = 16'hd5ef;
	#20
	A = 16'hbf43;
	B = 16'hbe35;
	ans_a = 16'hd5c2;
	#20
	A = 16'h266e;
	B = 16'hbfd1;
	ans_a = 16'hd5c3;
	#20
	A = 16'hbab4;
	B = 16'h374d;
	ans_a = 16'hd5c9;
	#20
	A = 16'h3ee8;
	B = 16'hbd20;
	ans_a = 16'hd5ec;
	#20
	A = 16'hb4ab;
	B = 16'h3e6c;
	ans_a = 16'hd5f3;
	#20
	A = 16'hbfcf;
	B = 16'hbde6;
	ans_a = 16'hd5c5;
	#20
	A = 16'hbf3b;
	B = 16'h3e64;
	ans_a = 16'hd5f3;
	#20
	A = 16'hba7a;
	B = 16'h319b;
	ans_a = 16'hd5f5;
	#20
	A = 16'h3bfb;
	B = 16'hbd91;
	ans_a = 16'hd60b;
	#20
	A = 16'hb9c9;
	B = 16'h3c3d;
	ans_a = 16'hd617;
	#20
	A = 16'h3a6d;
	B = 16'hb977;
	ans_a = 16'hd620;
	#20
	A = 16'had58;
	B = 16'hbdd6;
	ans_a = 16'hd61e;
	#20
	A = 16'h3a25;
	B = 16'h3785;
	ans_a = 16'hd618;
	#20
	A = 16'hbe05;
	B = 16'h384d;
	ans_a = 16'hd625;
	#20
	A = 16'hb83e;
	B = 16'hbdb4;
	ans_a = 16'hd619;
	#20
	A = 16'hbdf5;
	B = 16'hb32e;
	ans_a = 16'hd614;
	#20
	A = 16'h32c7;
	B = 16'h3986;
	ans_a = 16'hd612;
	#20
	A = 16'hbf7b;
	B = 16'hb84c;
	ans_a = 16'hd602;
	#20
	A = 16'hb5e9;
	B = 16'hb1cf;
	ans_a = 16'hd601;
	#20
	A = 16'h3e3c;
	B = 16'hb5f1;
	ans_a = 16'hd60a;
	#20
	A = 16'h34ac;
	B = 16'h3de9;
	ans_a = 16'hd603;
	#20
	A = 16'h3c03;
	B = 16'h3451;
	ans_a = 16'hd5ff;
	#20
	A = 16'hb9ac;
	B = 16'h3c92;
	ans_a = 16'hd60c;
	#20
	A = 16'h3eab;
	B = 16'hbd77;
	ans_a = 16'hd630;
	#20
	A = 16'h3e63;
	B = 16'h3194;
	ans_a = 16'hd62c;
	#20
	A = 16'h34a9;
	B = 16'h3e0d;
	ans_a = 16'hd625;
	#20
	A = 16'h3d18;
	B = 16'h3d8a;
	ans_a = 16'hd609;
	#20
	A = 16'hbb7c;
	B = 16'h3d13;
	ans_a = 16'hd61c;
	#20
	A = 16'hb00b;
	B = 16'hba50;
	ans_a = 16'hd61a;
	#20
	A = 16'hba32;
	B = 16'hbcf8;
	ans_a = 16'hd60b;
	#20
	A = 16'h3bd1;
	B = 16'h3932;
	ans_a = 16'hd601;
	#20
	A = 16'h3ec6;
	B = 16'hb9e3;
	ans_a = 16'hd615;
	#20
	A = 16'h3c5e;
	B = 16'h3946;
	ans_a = 16'hd609;
	#20
	A = 16'h3e4f;
	B = 16'hbf1c;
	ans_a = 16'hd636;
	#20
	A = 16'h3cc0;
	B = 16'hbc3c;
	ans_a = 16'hd64a;
	#20
	A = 16'h39d7;
	B = 16'h3a98;
	ans_a = 16'hd640;
	#20
	A = 16'h3b9c;
	B = 16'hb2fe;
	ans_a = 16'hd643;
	#20
	A = 16'h3761;
	B = 16'hbe45;
	ans_a = 16'hd64f;
	#20
	A = 16'h2fbc;
	B = 16'hb0a3;
	ans_a = 16'hd64f;
	#20
	A = 16'h3f81;
	B = 16'h3f65;
	ans_a = 16'hd618;
	#20
	A = 16'h358e;
	B = 16'h3acb;
	ans_a = 16'hd613;
	#20
	A = 16'h3e23;
	B = 16'hb7df;
	ans_a = 16'hd61f;
	#20
	A = 16'hbb17;
	B = 16'hbc7e;
	ans_a = 16'hd60f;
	#20
	A = 16'h3d95;
	B = 16'h2d71;
	ans_a = 16'hd60d;
	#20
	A = 16'h3f29;
	B = 16'h3fe7;
	ans_a = 16'hd5d4;
	#20
	A = 16'h39ee;
	B = 16'hbf9e;
	ans_a = 16'hd5eb;
	#20
	A = 16'hbe46;
	B = 16'hb855;
	ans_a = 16'hd5dd;
	#20
	A = 16'h3612;
	B = 16'h3d78;
	ans_a = 16'hd5d5;
	#20
	A = 16'h3d1c;
	B = 16'hb000;
	ans_a = 16'hd5d8;
	#20
	A = 16'hbf22;
	B = 16'h3f18;
	ans_a = 16'hd60b;
	#20
	A = 16'ha60f;
	B = 16'hbc94;
	ans_a = 16'hd60b;
	#20
	A = 16'h3fd8;
	B = 16'h341e;
	ans_a = 16'hd603;
	#20
	A = 16'hbfdb;
	B = 16'hb1d3;
	ans_a = 16'hd5fd;
	#20
	A = 16'h3b8b;
	B = 16'haab3;
	ans_a = 16'hd5fe;
	#20
	A = 16'h3f7a;
	B = 16'h3ce4;
	ans_a = 16'hd5d9;
	#20
	A = 16'h3e9f;
	B = 16'h3fdd;
	ans_a = 16'hd5a5;
	#20
	A = 16'h3d92;
	B = 16'hb6bb;
	ans_a = 16'hd5ae;
	#20
	A = 16'h3da0;
	B = 16'hb863;
	ans_a = 16'hd5ba;
	#20
	A = 16'hbd02;
	B = 16'h3afc;
	ans_a = 16'hd5cb;
	#20
	A = 16'h1edd;
	B = 16'hb7d4;
	ans_a = 16'hd5cb;
	#20
	A = 16'hb86f;
	B = 16'h3db3;
	ans_a = 16'hd5d8;
	#20
	A = 16'hbe57;
	B = 16'hba4d;
	ans_a = 16'hd5c4;
	#20
	A = 16'h2ab6;
	B = 16'hba73;
	ans_a = 16'hd5c5;
	#20
	A = 16'h3acf;
	B = 16'h3c87;
	ans_a = 16'hd5b6;
	#20
	A = 16'hb945;
	B = 16'hbcb8;
	ans_a = 16'hd5aa;
	#20
	A = 16'hbf85;
	B = 16'hbca3;
	ans_a = 16'hd587;
	#20
	A = 16'h3a01;
	B = 16'hb837;
	ans_a = 16'hd58d;
	#20
	A = 16'h3ec9;
	B = 16'h3aae;
	ans_a = 16'hd576;
	#20
	A = 16'h3832;
	B = 16'hb235;
	ans_a = 16'hd578;
	#20
	A = 16'hb7e7;
	B = 16'h3f16;
	ans_a = 16'hd586;
	#20
	A = 16'hbf67;
	B = 16'h3cd6;
	ans_a = 16'hd5aa;
	#20
	A = 16'hbd37;
	B = 16'h3e9b;
	ans_a = 16'hd5cc;
	#20
	A = 16'hb5e6;
	B = 16'hbebd;
	ans_a = 16'hd5c2;
	#20
	A = 16'h2a38;
	B = 16'hbf2f;
	ans_a = 16'hd5c3;
	#20
	A = 16'h35c6;
	B = 16'hbda5;
	ans_a = 16'hd5cb;
	#20
	A = 16'h3d4d;
	B = 16'hb014;
	ans_a = 16'hd5ce;
	#20
	A = 16'h3cfb;
	B = 16'hb658;
	ans_a = 16'hd5d6;
	#20
	A = 16'hbe2d;
	B = 16'hbbb3;
	ans_a = 16'hd5be;
	#20
	A = 16'h3614;
	B = 16'h37fb;
	ans_a = 16'hd5bb;
	#20
	A = 16'hbe8b;
	B = 16'h38d1;
	ans_a = 16'hd5cb;
	#20
	A = 16'hb09b;
	B = 16'hbe9d;
	ans_a = 16'hd5c7;
	#20
	A = 16'h3461;
	B = 16'hbd53;
	ans_a = 16'hd5cd;
	#20
	A = 16'h3fd3;
	B = 16'hbc12;
	ans_a = 16'hd5ed;
	#20
	A = 16'h387a;
	B = 16'h302d;
	ans_a = 16'hd5ec;
	#20
	A = 16'hbcb4;
	B = 16'h38ad;
	ans_a = 16'hd5f7;
	#20
	A = 16'hb494;
	B = 16'hbcea;
	ans_a = 16'hd5f1;
	#20
	A = 16'h3d9a;
	B = 16'h38d1;
	ans_a = 16'hd5e4;
	#20
	A = 16'hb638;
	B = 16'h3aaf;
	ans_a = 16'hd5e9;
	#20
	A = 16'hbdfa;
	B = 16'hbd1a;
	ans_a = 16'hd5cb;
	#20
	A = 16'hbf2e;
	B = 16'h3b59;
	ans_a = 16'hd5e5;
	#20
	A = 16'hb77c;
	B = 16'h3195;
	ans_a = 16'hd5e6;
	#20
	A = 16'h35e5;
	B = 16'hbc20;
	ans_a = 16'hd5ec;
	#20
	A = 16'h3c24;
	B = 16'h3e2d;
	ans_a = 16'hd5d2;
	#20
	A = 16'h1c93;
	B = 16'h3984;
	ans_a = 16'hd5d2;
	#20
	A = 16'h3ac2;
	B = 16'h3969;
	ans_a = 16'hd5c9;
	#20
	A = 16'hb617;
	B = 16'hae74;
	ans_a = 16'hd5c8;
	#20
	A = 16'h3bb5;
	B = 16'hbda5;
	ans_a = 16'hd5de;
	#20
	A = 16'hbc88;
	B = 16'hb24d;
	ans_a = 16'hd5da;
	#20
	A = 16'hbf5a;
	B = 16'hbd82;
	ans_a = 16'hd5b2;
	#20
	A = 16'hb5c9;
	B = 16'hb45f;
	ans_a = 16'hd5b0;
	#20
	A = 16'hbacc;
	B = 16'hb567;
	ans_a = 16'hd5ab;
	#20
	A = 16'h38bf;
	B = 16'hbabc;
	ans_a = 16'hd5b3;
	#20
	A = 16'hbda9;
	B = 16'h3ba6;
	ans_a = 16'hd5c9;
	#20
	A = 16'h3c4b;
	B = 16'h3d8f;
	ans_a = 16'hd5b1;
	#20
	A = 16'hb331;
	B = 16'h36b3;
	ans_a = 16'hd5b3;
	#20
	A = 16'hba92;
	B = 16'h36ae;
	ans_a = 16'hd5b8;
	#20
	A = 16'h3c0f;
	B = 16'h3db6;
	ans_a = 16'hd5a1;
	#20
	A = 16'hb15c;
	B = 16'hbc3d;
	ans_a = 16'hd59e;
	#20
	A = 16'hbb44;
	B = 16'h3e13;
	ans_a = 16'hd5b4;
	#20
	A = 16'hbd20;
	B = 16'hbb63;
	ans_a = 16'hd5a1;
	#20
	A = 16'h2fe3;
	B = 16'h381a;
	ans_a = 16'hd5a0;
	#20
	A = 16'hb74c;
	B = 16'h3ca2;
	ans_a = 16'hd5a8;
	#20
	A = 16'h337f;
	B = 16'h3ea8;
	ans_a = 16'hd5a2;
	#20
	A = 16'h3217;
	B = 16'hb93e;
	ans_a = 16'hd5a4;
	#20
	A = 16'h357a;
	B = 16'hbaad;
	ans_a = 16'hd5a9;
	#20
	A = 16'hbd02;
	B = 16'h2ec9;
	ans_a = 16'hd5ab;
	#20
	A = 16'hbd01;
	B = 16'hbdc5;
	ans_a = 16'hd58e;
	#20
	A = 16'hb499;
	B = 16'h351b;
	ans_a = 16'hd58f;
	#20
	A = 16'hbff8;
	B = 16'h39cd;
	ans_a = 16'hd5a6;
	#20
	A = 16'h3b4a;
	B = 16'h3a2a;
	ans_a = 16'hd59b;
	#20
	A = 16'hbff3;
	B = 16'h32ba;
	ans_a = 16'hd5a2;
	#20
	A = 16'h3842;
	B = 16'h3e89;
	ans_a = 16'hd594;
	#20
	A = 16'h3ef5;
	B = 16'hb22e;
	ans_a = 16'hd599;
	#20
	A = 16'h3c5b;
	B = 16'h3d99;
	ans_a = 16'hd581;
	#20
	A = 16'hae78;
	B = 16'h3caf;
	ans_a = 16'hd583;
	#20
	A = 16'h28da;
	B = 16'h3ff4;
	ans_a = 16'hd582;
	#20
	A = 16'hbfa8;
	B = 16'hbd76;
	ans_a = 16'hd558;
	#20
	A = 16'ha90b;
	B = 16'h3704;
	ans_a = 16'hd558;
	#20
	A = 16'h3801;
	B = 16'h3686;
	ans_a = 16'hd555;
	#20
	A = 16'hab94;
	B = 16'h3da3;
	ans_a = 16'hd556;
	#20
	A = 16'h33fd;
	B = 16'h2cb0;
	ans_a = 16'hd556;
	#20
	A = 16'hbe5c;
	B = 16'h3a6b;
	ans_a = 16'hd56a;
	#20
	A = 16'h3c27;
	B = 16'hbad8;
	ans_a = 16'hd578;
	#20
	A = 16'hbe77;
	B = 16'h3c7e;
	ans_a = 16'hd595;
	#20
	A = 16'h3f7c;
	B = 16'h3be9;
	ans_a = 16'hd577;
	#20
	A = 16'hb27d;
	B = 16'h338d;
	ans_a = 16'hd578;
	#20
	A = 16'h3dd1;
	B = 16'hbddd;
	ans_a = 16'hd59a;
	#20
	A = 16'hbdcc;
	B = 16'h3e1e;
	ans_a = 16'hd5bd;
	#20
	A = 16'h3edb;
	B = 16'h3d81;
	ans_a = 16'hd597;
	#20
	A = 16'hb057;
	B = 16'h2f06;
	ans_a = 16'hd597;
	#20
	A = 16'hbd2d;
	B = 16'hbb61;
	ans_a = 16'hd584;
	#20
	A = 16'h3b4c;
	B = 16'h3c63;
	ans_a = 16'hd574;
	#20
	A = 16'hb8be;
	B = 16'hb5cd;
	ans_a = 16'hd571;
	#20
	A = 16'hbff3;
	B = 16'h393e;
	ans_a = 16'hd586;
	#20
	A = 16'hb9cf;
	B = 16'hbf7b;
	ans_a = 16'hd570;
	#20
	A = 16'hbe03;
	B = 16'h2aec;
	ans_a = 16'hd571;
	#20
	A = 16'hb6d7;
	B = 16'hb8b8;
	ans_a = 16'hd56d;
	#20
	A = 16'h3b5b;
	B = 16'h3cc5;
	ans_a = 16'hd55b;
	#20
	A = 16'h3aca;
	B = 16'hb242;
	ans_a = 16'hd55e;
	#20
	A = 16'h3ea6;
	B = 16'hba16;
	ans_a = 16'hd572;
	#20
	A = 16'hb482;
	B = 16'hb771;
	ans_a = 16'hd570;
	#20
	A = 16'h3eb6;
	B = 16'h227a;
	ans_a = 16'hd570;
	#20
	A = 16'hb55d;
	B = 16'h3515;
	ans_a = 16'hd572;
	#20
	A = 16'h34af;
	B = 16'hbd5e;
	ans_a = 16'hd578;
	#20
	A = 16'h3a48;
	B = 16'hb3eb;
	ans_a = 16'hd57b;
	#20
	A = 16'hbdbc;
	B = 16'ha585;
	ans_a = 16'hd57b;
	#20
	A = 16'hbd9e;
	B = 16'h3d6e;
	ans_a = 16'hd59a;
	#20
	A = 16'hb768;
	B = 16'hbcef;
	ans_a = 16'hd591;
	#20
	A = 16'h3d50;
	B = 16'hbefb;
	ans_a = 16'hd5b6;
	#20
	A = 16'h3486;
	B = 16'h356c;
	ans_a = 16'hd5b4;
	#20
	A = 16'hbd9a;
	B = 16'h3c12;
	ans_a = 16'hd5cb;
	#20
	A = 16'hbdd9;
	B = 16'hb451;
	ans_a = 16'hd5c5;
	#20
	A = 16'hbff9;
	B = 16'h3483;
	ans_a = 16'hd5ce;
	#20
	A = 16'hb1cc;
	B = 16'hb08b;
	ans_a = 16'hd5ce;
	#20
	A = 16'hbda3;
	B = 16'hb87c;
	ans_a = 16'hd5c1;
	#20
	A = 16'h3e11;
	B = 16'h3abf;
	ans_a = 16'hd5ad;
	#20
	A = 16'h3fa1;
	B = 16'h2ddc;
	ans_a = 16'hd5aa;
	#20
	A = 16'hbb33;
	B = 16'h3e6c;
	ans_a = 16'hd5c1;
	#20
	A = 16'h3aa0;
	B = 16'hb480;
	ans_a = 16'hd5c5;
	#20
	A = 16'h3c1e;
	B = 16'h3cad;
	ans_a = 16'hd5b2;
	#20
	A = 16'hb00d;
	B = 16'h3dcb;
	ans_a = 16'hd5b5;
	#20
	A = 16'h3d98;
	B = 16'hba28;
	ans_a = 16'hd5c6;
	#20
	A = 16'hbd16;
	B = 16'hbb33;
	ans_a = 16'hd5b4;
	#20
	A = 16'h3e19;
	B = 16'h3a75;
	ans_a = 16'hd5a0;
	#20
	A = 16'hafe7;
	B = 16'hbad9;
	ans_a = 16'hd59e;
	#20
	A = 16'hbc6b;
	B = 16'hbe07;
	ans_a = 16'hd583;
	#20
	A = 16'h3ece;
	B = 16'h3919;
	ans_a = 16'hd572;
	#20
	A = 16'hbf3e;
	B = 16'h319d;
	ans_a = 16'hd577;
	#20
	A = 16'hbc3b;
	B = 16'hbd2f;
	ans_a = 16'hd561;
	#20
	A = 16'hbf07;
	B = 16'hb288;
	ans_a = 16'hd55b;
	#20
	A = 16'hafe6;
	B = 16'hbf80;
	ans_a = 16'hd557;
	#20
	A = 16'hbdfa;
	B = 16'h2982;
	ans_a = 16'hd558;
	#20
	A = 16'hbd3d;
	B = 16'h3f9c;
	ans_a = 16'hd580;
	#20
	A = 16'h3e4a;
	B = 16'hbef1;
	ans_a = 16'hd5ac;
	#20
	A = 16'h3ea0;
	B = 16'h3e0c;
	ans_a = 16'hd584;
	#20
	A = 16'hb8da;
	B = 16'hbc9b;
	ans_a = 16'hd579;
	#20
	A = 16'hbb01;
	B = 16'hba04;
	ans_a = 16'hd56e;
	#20
	A = 16'h33c0;
	B = 16'h3c4d;
	ans_a = 16'hd56a;
	#20
	A = 16'hbcc9;
	B = 16'h31d4;
	ans_a = 16'hd56d;
	#20
	A = 16'hb4be;
	B = 16'hbced;
	ans_a = 16'hd567;
	#20
	A = 16'hbf0a;
	B = 16'h3c87;
	ans_a = 16'hd587;
	#20
	A = 16'hb694;
	B = 16'h399c;
	ans_a = 16'hd58c;
	#20
	A = 16'hb039;
	B = 16'hbc16;
	ans_a = 16'hd58a;
	#20
	A = 16'h3c6c;
	B = 16'h34d0;
	ans_a = 16'hd585;
	#20
	A = 16'hbf28;
	B = 16'h3c72;
	ans_a = 16'hd5a5;
	#20
	A = 16'h3a69;
	B = 16'h3d11;
	ans_a = 16'hd595;
	#20
	A = 16'h3d6f;
	B = 16'h3d98;
	ans_a = 16'hd577;
	#20
	A = 16'hb8f7;
	B = 16'hbb3d;
	ans_a = 16'hd56e;
	#20
	A = 16'hbe28;
	B = 16'h3ce4;
	ans_a = 16'hd58c;
	#20
	A = 16'hb878;
	B = 16'h3cd3;
	ans_a = 16'hd597;
	#20
	A = 16'had4a;
	B = 16'h3d95;
	ans_a = 16'hd599;
	#20
	A = 16'h305f;
	B = 16'hbe9e;
	ans_a = 16'hd59d;
	#20
	A = 16'hbd5e;
	B = 16'hb989;
	ans_a = 16'hd58e;
	#20
	A = 16'h3cec;
	B = 16'hbec9;
	ans_a = 16'hd5af;
	#20
	A = 16'h3b33;
	B = 16'hbc23;
	ans_a = 16'hd5be;
	#20
	A = 16'h3d7f;
	B = 16'hbd8b;
	ans_a = 16'hd5dc;
	#20
	A = 16'hbafb;
	B = 16'h2f50;
	ans_a = 16'hd5de;
	#20
	A = 16'hbb78;
	B = 16'hbb5f;
	ans_a = 16'hd5d0;
	#20
	A = 16'h3c0e;
	B = 16'h3d6d;
	ans_a = 16'hd5ba;
	#20
	A = 16'hb62b;
	B = 16'h3f2f;
	ans_a = 16'hd5c5;
	#20
	A = 16'hb5bd;
	B = 16'hb8ad;
	ans_a = 16'hd5c2;
	#20
	A = 16'hb623;
	B = 16'ha097;
	ans_a = 16'hd5c2;
	#20
	A = 16'hb97e;
	B = 16'h3c27;
	ans_a = 16'hd5cd;
	#20
	A = 16'h3613;
	B = 16'h3533;
	ans_a = 16'hd5cb;
	#20
	A = 16'h3dd2;
	B = 16'hbccb;
	ans_a = 16'hd5e7;
	#20
	A = 16'hbe8e;
	B = 16'h36f7;
	ans_a = 16'hd5f2;
	#20
	A = 16'hb076;
	B = 16'hbc0e;
	ans_a = 16'hd5f0;
	#20
	A = 16'hb5c4;
	B = 16'hbb36;
	ans_a = 16'hd5eb;
	#20
	A = 16'hb9aa;
	B = 16'hbdef;
	ans_a = 16'hd5da;
	#20
	A = 16'h3e80;
	B = 16'h3a76;
	ans_a = 16'hd5c5;
	#20
	A = 16'hb602;
	B = 16'h3faf;
	ans_a = 16'hd5d1;
	#20
	A = 16'hbf95;
	B = 16'hbce5;
	ans_a = 16'hd5ac;
	#20
	A = 16'hb22e;
	B = 16'h3a3d;
	ans_a = 16'hd5ae;
	#20
	A = 16'h3ecc;
	B = 16'hbe7d;
	ans_a = 16'hd5da;
	#20
	A = 16'hba52;
	B = 16'hb6d8;
	ans_a = 16'hd5d5;
	#20
	A = 16'hbc33;
	B = 16'hbfad;
	ans_a = 16'hd5b5;
	#20
	A = 16'h30ba;
	B = 16'h3e16;
	ans_a = 16'hd5b1;
	#20
	A = 16'hb95e;
	B = 16'hbe6d;
	ans_a = 16'hd5a0;
	#20
	A = 16'h38a3;
	B = 16'hbfbb;
	ans_a = 16'hd5b2;
	#20
	A = 16'hbd8c;
	B = 16'hbf02;
	ans_a = 16'hd58b;
	#20
	A = 16'hbc46;
	B = 16'hbfb8;
	ans_a = 16'hd56a;
	#20
	A = 16'h3edc;
	B = 16'hba4d;
	ans_a = 16'hd580;
	#20
	A = 16'hb2e1;
	B = 16'h356d;
	ans_a = 16'hd581;
	#20
	A = 16'hbc6b;
	B = 16'hb9e8;
	ans_a = 16'hd574;
	#20
	A = 16'h34b4;
	B = 16'h3f05;
	ans_a = 16'hd56c;
	#20
	A = 16'hb489;
	B = 16'h339d;
	ans_a = 16'hd56d;
	#20
	A = 16'h3e43;
	B = 16'hbc54;
	ans_a = 16'hd588;
	#20
	A = 16'hbca5;
	B = 16'h3cd2;
	ans_a = 16'hd59e;
	#20
	A = 16'h3e87;
	B = 16'h3a56;
	ans_a = 16'hd589;
	#20
	A = 16'hb390;
	B = 16'hbf0d;
	ans_a = 16'hd582;
	#20
	A = 16'h3730;
	B = 16'h3d6d;
	ans_a = 16'hd578;
	#20
	A = 16'hb44d;
	B = 16'h3fdb;
	ans_a = 16'hd580;
	#20
	A = 16'h3289;
	B = 16'h3dcd;
	ans_a = 16'hd57b;
	#20
	A = 16'haefb;
	B = 16'hbd72;
	ans_a = 16'hd579;
	#20
	A = 16'h3fd0;
	B = 16'h3d48;
	ans_a = 16'hd550;
	#20
	A = 16'h3f52;
	B = 16'h3cee;
	ans_a = 16'hd52c;
	#20
	A = 16'h3be1;
	B = 16'h3ff4;
	ans_a = 16'hd50d;
	#20
	A = 16'hb825;
	B = 16'hb9d5;
	ans_a = 16'hd507;
	#20
	A = 16'haf83;
	B = 16'hb9da;
	ans_a = 16'hd506;
	#20
	A = 16'hac1d;
	B = 16'h3ab9;
	ans_a = 16'hd507;
	#20
	A = 16'hbb66;
	B = 16'h291e;
	ans_a = 16'hd508;
	#20
	A = 16'h3c15;
	B = 16'h3c7a;
	ans_a = 16'hd4f6;
	#20
	A = 16'hbd0c;
	B = 16'hbd61;
	ans_a = 16'hd4db;
	#20
	A = 16'hb986;
	B = 16'hbc65;
	ans_a = 16'hd4cf;
	#20
	A = 16'h3ee6;
	B = 16'hb9fe;
	ans_a = 16'hd4e4;
	#20
	A = 16'h36be;
	B = 16'h3d67;
	ans_a = 16'hd4db;
	#20
	A = 16'hb738;
	B = 16'h3f53;
	ans_a = 16'hd4e8;
	#20
	A = 16'h3ebb;
	B = 16'hbee2;
	ans_a = 16'hd516;
	#20
	A = 16'hb84a;
	B = 16'hbffe;
	ans_a = 16'hd505;
	#20
	A = 16'h3f42;
	B = 16'hb172;
	ans_a = 16'hd50a;
	#20
	A = 16'hb92e;
	B = 16'h36e5;
	ans_a = 16'hd50e;
	#20
	A = 16'h3db6;
	B = 16'h3f82;
	ans_a = 16'hd4e3;
	#20
	A = 16'h35d4;
	B = 16'h373e;
	ans_a = 16'hd4e0;
	#20
	A = 16'h3a4d;
	B = 16'h3c05;
	ans_a = 16'hd4d3;
	#20
	A = 16'hb747;
	B = 16'h3ff4;
	ans_a = 16'hd4e1;
	#20
	A = 16'h3406;
	B = 16'hbda0;
	ans_a = 16'hd4e7;
	#20
	A = 16'hbb69;
	B = 16'hbc8b;
	ans_a = 16'hd4d6;
	#20
	A = 16'h32f7;
	B = 16'h3619;
	ans_a = 16'hd4d5;
	#20
	A = 16'h2940;
	B = 16'hbefc;
	ans_a = 16'hd4d6;
	#20
	A = 16'hbdbc;
	B = 16'h39d8;
	ans_a = 16'hd4e7;
	#20
	A = 16'h3e4a;
	B = 16'h3f77;
	ans_a = 16'hd4b8;
	#20
	A = 16'hb86f;
	B = 16'h3c5b;
	ans_a = 16'hd4c2;
	#20
	A = 16'h3a94;
	B = 16'hbc2d;
	ans_a = 16'hd4d0;
	#20
	A = 16'h3329;
	B = 16'h3a87;
	ans_a = 16'hd4cd;
	#20
	A = 16'h3b48;
	B = 16'h3016;
	ans_a = 16'hd4cb;
	#20
	A = 16'h3694;
	B = 16'hb851;
	ans_a = 16'hd4cf;
	#20
	A = 16'h3edb;
	B = 16'h3c05;
	ans_a = 16'hd4b3;
	#20
	A = 16'hbf5f;
	B = 16'hbcc9;
	ans_a = 16'hd490;
	#20
	A = 16'hb5c1;
	B = 16'h3a46;
	ans_a = 16'hd495;
	#20
	A = 16'hbeb9;
	B = 16'h3912;
	ans_a = 16'hd4a6;
	#20
	A = 16'hb830;
	B = 16'hbe92;
	ans_a = 16'hd498;
	#20
	A = 16'h3bba;
	B = 16'hbf5d;
	ans_a = 16'hd4b4;
	#20
	A = 16'hbbbb;
	B = 16'hb7b1;
	ans_a = 16'hd4ad;
	#20
	A = 16'h3b29;
	B = 16'hbcdc;
	ans_a = 16'hd4be;
	#20
	A = 16'h3f97;
	B = 16'h3edb;
	ans_a = 16'hd48a;
	#20
	A = 16'hbf25;
	B = 16'hb323;
	ans_a = 16'hd484;
	#20
	A = 16'h3896;
	B = 16'h2ec7;
	ans_a = 16'hd483;
	#20
	A = 16'hbc01;
	B = 16'hb608;
	ans_a = 16'hd47d;
	#20
	A = 16'h3703;
	B = 16'hb41c;
	ans_a = 16'hd47f;
	#20
	A = 16'h3c5e;
	B = 16'ha1f3;
	ans_a = 16'hd47f;
	#20
	A = 16'hbb50;
	B = 16'ha4d2;
	ans_a = 16'hd47f;
	#20
	A = 16'hbe41;
	B = 16'h3dc4;
	ans_a = 16'hd4a3;
	#20
	A = 16'hb905;
	B = 16'h383d;
	ans_a = 16'hd4a8;
	#20
	A = 16'hbbe1;
	B = 16'h3f6d;
	ans_a = 16'hd4c5;
	#20
	A = 16'h3c1c;
	B = 16'h3c98;
	ans_a = 16'hd4b2;
	#20
	A = 16'hbd02;
	B = 16'h3d03;
	ans_a = 16'hd4cb;
	#20
	A = 16'h3e14;
	B = 16'hbb8a;
	ans_a = 16'hd4e2;
	#20
	A = 16'h3d75;
	B = 16'h3dd3;
	ans_a = 16'hd4c2;
	#20
	A = 16'h3c8f;
	B = 16'h3e11;
	ans_a = 16'hd4a6;
	#20
	A = 16'h3816;
	B = 16'hbc07;
	ans_a = 16'hd4ae;
	#20
	A = 16'h3f76;
	B = 16'hba19;
	ans_a = 16'hd4c5;
	#20
	A = 16'hb840;
	B = 16'hbf66;
	ans_a = 16'hd4b5;
	#20
	A = 16'ha4a8;
	B = 16'hbb4b;
	ans_a = 16'hd4b5;
	#20
	A = 16'hbe3e;
	B = 16'hbbf5;
	ans_a = 16'hd49c;
	#20
	A = 16'h3aa4;
	B = 16'hbdb1;
	ans_a = 16'hd4af;
	#20
	A = 16'h3ed0;
	B = 16'h385f;
	ans_a = 16'hd4a0;
	#20
	A = 16'hbebd;
	B = 16'h3b8b;
	ans_a = 16'hd4b9;
	#20
	A = 16'h3d3d;
	B = 16'h3fd3;
	ans_a = 16'hd490;
	#20
	A = 16'h3815;
	B = 16'h3d87;
	ans_a = 16'hd485;
	#20
	A = 16'hbdbf;
	B = 16'hadb6;
	ans_a = 16'hd483;
	#20
	A = 16'hbf59;
	B = 16'h3e4f;
	ans_a = 16'hd4b1;
	#20
	A = 16'hb839;
	B = 16'h3dce;
	ans_a = 16'hd4bd;
	#20
	A = 16'h3f45;
	B = 16'h3729;
	ans_a = 16'hd4b0;
	#20
	A = 16'hb4d3;
	B = 16'h2351;
	ans_a = 16'hd4b0;
	#20
	A = 16'hbe97;
	B = 16'hbdef;
	ans_a = 16'hd489;
	#20
	A = 16'h3cc8;
	B = 16'h2bba;
	ans_a = 16'hd488;
	#20
	A = 16'h3e47;
	B = 16'hb98d;
	ans_a = 16'hd499;
	#20
	A = 16'hb778;
	B = 16'hbcc3;
	ans_a = 16'hd490;
	#20
	A = 16'h3aba;
	B = 16'h3f01;
	ans_a = 16'hd478;
	#20
	A = 16'h3d0a;
	B = 16'h3e9b;
	ans_a = 16'hd457;
	#20
	A = 16'h30f4;
	B = 16'hb9bb;
	ans_a = 16'hd459;
	#20
	A = 16'h3f63;
	B = 16'h3ab5;
	ans_a = 16'hd440;
	#20
	A = 16'hbb54;
	B = 16'h39be;
	ans_a = 16'hd44b;
	#20
	A = 16'hbc9d;
	B = 16'h3e68;
	ans_a = 16'hd469;
	#20
	A = 16'hbd5d;
	B = 16'hbf7f;
	ans_a = 16'hd441;
	#20
	A = 16'h3481;
	B = 16'h3d39;
	ans_a = 16'hd43b;
	#20
	A = 16'hb0c4;
	B = 16'hbdd0;
	ans_a = 16'hd438;
	#20
	A = 16'h3227;
	B = 16'h378e;
	ans_a = 16'hd437;
	#20
	A = 16'hbdca;
	B = 16'hbfe7;
	ans_a = 16'hd409;
	#20
	A = 16'hb448;
	B = 16'hb852;
	ans_a = 16'hd407;
	#20
	A = 16'hb416;
	B = 16'h3ce4;
	ans_a = 16'hd40c;
	#20
	A = 16'hbd09;
	B = 16'hbd53;
	ans_a = 16'hd3e2;
	#20
	A = 16'h3d99;
	B = 16'h3bd6;
	ans_a = 16'hd3b6;
	#20
	A = 16'h33d7;
	B = 16'h369b;
	ans_a = 16'hd3b3;
	#20
	A = 16'h3cf1;
	B = 16'hb8a3;
	ans_a = 16'hd3ca;
	#20
	A = 16'h3f7b;
	B = 16'h3ea4;
	ans_a = 16'hd367;
	#20
	A = 16'hbd4a;
	B = 16'hb4e9;
	ans_a = 16'hd35a;
	#20
	A = 16'hbb37;
	B = 16'hbe69;
	ans_a = 16'hd32c;
	#20
	A = 16'hb6d9;
	B = 16'h3b98;
	ans_a = 16'hd339;
	#20
	A = 16'hbd1b;
	B = 16'hbbf9;
	ans_a = 16'hd310;
	#20
	A = 16'h37fb;
	B = 16'h3eed;
	ans_a = 16'hd2f4;
	#20
	A = 16'hbde7;
	B = 16'hb983;
	ans_a = 16'hd2d3;
	#20
	A = 16'h3a69;
	B = 16'h3d44;
	ans_a = 16'hd2b1;
	#20
	A = 16'h3bb3;
	B = 16'h33fa;
	ans_a = 16'hd2a9;
	#20
	A = 16'hbdd2;
	B = 16'hbef0;
	ans_a = 16'hd258;
	#20
	A = 16'hb77e;
	B = 16'hba56;
	ans_a = 16'hd24c;
	#20
	A = 16'h3885;
	B = 16'hbd6e;
	ans_a = 16'hd265;
	#20
	A = 16'hb89f;
	B = 16'h3ecf;
	ans_a = 16'hd284;
	#20
	A = 16'ha1ed;
	B = 16'hb875;
	ans_a = 16'hd284;
	#20
	A = 16'hb856;
	B = 16'h3c54;
	ans_a = 16'hd297;
	#20
	A = 16'h36ef;
	B = 16'h390b;
	ans_a = 16'hd28e;
	#20
	A = 16'h3322;
	B = 16'h2a6a;
	ans_a = 16'hd28e;
	#20
	A = 16'h3843;
	B = 16'hbf14;
	ans_a = 16'hd2ac;
	#20
	A = 16'h3134;
	B = 16'hae89;
	ans_a = 16'hd2ad;
	#20
	A = 16'hbb56;
	B = 16'hb909;
	ans_a = 16'hd29b;
	#20
	A = 16'hb18d;
	B = 16'h3ea5;
	ans_a = 16'hd2a4;
	#20
	A = 16'h3f83;
	B = 16'hbd2b;
	ans_a = 16'hd2f2;
	#20
	A = 16'hb818;
	B = 16'hbd38;
	ans_a = 16'hd2dd;
	#20
	A = 16'hbcc5;
	B = 16'hb94b;
	ans_a = 16'hd2c4;
	#20
	A = 16'h35f6;
	B = 16'h3cd2;
	ans_a = 16'hd2b6;
	#20
	A = 16'h3e9b;
	B = 16'h2f0b;
	ans_a = 16'hd2b0;
	#20
	A = 16'h3a01;
	B = 16'h3a0f;
	ans_a = 16'hd29e;
	#20
	A = 16'hbe23;
	B = 16'h3b3f;
	ans_a = 16'hd2ca;
	#20
	A = 16'hbded;
	B = 16'h2da2;
	ans_a = 16'hd2ce;
	#20
	A = 16'hbf10;
	B = 16'hbdec;
	ans_a = 16'hd27a;
	#20
	A = 16'h3a4b;
	B = 16'h3d91;
	ans_a = 16'hd257;
	#20
	A = 16'hbe19;
	B = 16'hbc4f;
	ans_a = 16'hd222;
	#20
	A = 16'hbb46;
	B = 16'h35ef;
	ans_a = 16'hd22d;
	#20
	A = 16'hbe3e;
	B = 16'h39fc;
	ans_a = 16'hd252;
	#20
	A = 16'hbd32;
	B = 16'hb781;
	ans_a = 16'hd23e;
	#20
	A = 16'hbe4f;
	B = 16'h388c;
	ans_a = 16'hd25b;
	#20
	A = 16'hbfff;
	B = 16'h3f32;
	ans_a = 16'hd2ce;
	#20
	A = 16'hb2ec;
	B = 16'hbf60;
	ans_a = 16'hd2c1;
	#20
	A = 16'h3c46;
	B = 16'h3f57;
	ans_a = 16'hd282;
	#20
	A = 16'h399b;
	B = 16'h3545;
	ans_a = 16'hd27b;
	#20
	A = 16'h36e4;
	B = 16'hb276;
	ans_a = 16'hd27e;
	#20
	A = 16'hb783;
	B = 16'hafeb;
	ans_a = 16'hd27c;
	#20
	A = 16'h370c;
	B = 16'h3732;
	ans_a = 16'hd276;
	#20
	A = 16'hb966;
	B = 16'h36dd;
	ans_a = 16'hd27f;
	#20
	A = 16'hac82;
	B = 16'hbf12;
	ans_a = 16'hd27b;
	#20
	A = 16'h2ee1;
	B = 16'hbd52;
	ans_a = 16'hd280;
	#20
	A = 16'hbe7b;
	B = 16'h3cb3;
	ans_a = 16'hd2bd;
	#20
	A = 16'h3e7e;
	B = 16'h3dad;
	ans_a = 16'hd273;
	#20
	A = 16'hb79e;
	B = 16'hbcfb;
	ans_a = 16'hd260;
	#20
	A = 16'h30d1;
	B = 16'hb486;
	ans_a = 16'hd261;
	#20
	A = 16'h39ac;
	B = 16'h3e64;
	ans_a = 16'hd23d;
	#20
	A = 16'h3e84;
	B = 16'hb6bc;
	ans_a = 16'hd253;
	#20
	A = 16'h309e;
	B = 16'hbd1b;
	ans_a = 16'hd259;
	#20
	A = 16'h3e00;
	B = 16'h3db7;
	ans_a = 16'hd214;
	#20
	A = 16'h38e9;
	B = 16'hb94f;
	ans_a = 16'hd221;
	#20
	A = 16'hbcbb;
	B = 16'h3f25;
	ans_a = 16'hd265;
	#20
	A = 16'h2e93;
	B = 16'h3d01;
	ans_a = 16'hd261;
	#20
	A = 16'h3fc2;
	B = 16'hbdaa;
	ans_a = 16'hd2b9;
	#20
	A = 16'h3d1d;
	B = 16'hbe20;
	ans_a = 16'hd2f8;
	#20
	A = 16'h3545;
	B = 16'h3caf;
	ans_a = 16'hd2ec;
	#20
	A = 16'h37cd;
	B = 16'hbf1d;
	ans_a = 16'hd308;
	#20
	A = 16'hb598;
	B = 16'h39ee;
	ans_a = 16'hd310;
	#20
	A = 16'hbf8e;
	B = 16'hbc73;
	ans_a = 16'hd2cd;
	#20
	A = 16'hbda6;
	B = 16'hb817;
	ans_a = 16'hd2b6;
	#20
	A = 16'hbdd3;
	B = 16'h3bdb;
	ans_a = 16'hd2e4;
	#20
	A = 16'h3fe7;
	B = 16'hbe1f;
	ans_a = 16'hd345;
	#20
	A = 16'hbea4;
	B = 16'hbef1;
	ans_a = 16'hd2e9;
	#20
	A = 16'hb91a;
	B = 16'hb8fc;
	ans_a = 16'hd2dc;
	#20
	A = 16'h3fd6;
	B = 16'h33d9;
	ans_a = 16'hd2cd;
	#20
	A = 16'hb967;
	B = 16'hb9bf;
	ans_a = 16'hd2bd;
	#20
	A = 16'hbc0e;
	B = 16'hbad5;
	ans_a = 16'hd2a1;
	#20
	A = 16'h3f6e;
	B = 16'h3903;
	ans_a = 16'hd27c;
	#20
	A = 16'h3c5f;
	B = 16'h3755;
	ans_a = 16'hd26c;
	#20
	A = 16'h3eae;
	B = 16'h3a4d;
	ans_a = 16'hd242;
	#20
	A = 16'hbebd;
	B = 16'h3f8b;
	ans_a = 16'hd2a8;
	#20
	A = 16'h3dc8;
	B = 16'hbcbd;
	ans_a = 16'hd2df;
	#20
	A = 16'h3d2c;
	B = 16'hbf68;
	ans_a = 16'hd32c;
	#20
	A = 16'hbffd;
	B = 16'hbea0;
	ans_a = 16'hd2c2;
	#20
	A = 16'h3f1a;
	B = 16'hbbb2;
	ans_a = 16'hd2f9;
	#20
	A = 16'h31f6;
	B = 16'hb70f;
	ans_a = 16'hd2fc;
	#20
	A = 16'h3b69;
	B = 16'hbe58;
	ans_a = 16'hd32b;
	#20
	A = 16'hbfae;
	B = 16'h38b8;
	ans_a = 16'hd34f;
	#20
	A = 16'h39b1;
	B = 16'hb19f;
	ans_a = 16'hd353;
	#20
	A = 16'hb307;
	B = 16'h3e4c;
	ans_a = 16'hd35e;
	#20
	A = 16'h3eea;
	B = 16'h3828;
	ans_a = 16'hd341;
	#20
	A = 16'h3d3a;
	B = 16'hbd8b;
	ans_a = 16'hd37b;
	#20
	A = 16'h380f;
	B = 16'hbeaf;
	ans_a = 16'hd396;
	#20
	A = 16'hbfb0;
	B = 16'h3844;
	ans_a = 16'hd3b7;
	#20
	A = 16'h3a5b;
	B = 16'h3cb5;
	ans_a = 16'hd399;
	#20
	A = 16'h310c;
	B = 16'hbb77;
	ans_a = 16'hd39e;
	#20
	A = 16'h3460;
	B = 16'hb979;
	ans_a = 16'hd3a4;
	#20
	A = 16'h375a;
	B = 16'hbd83;
	ans_a = 16'hd3b8;
	#20
	A = 16'h3dd7;
	B = 16'hb970;
	ans_a = 16'hd3d8;
	#20
	A = 16'hb37f;
	B = 16'hbde0;
	ans_a = 16'hd3cd;
	#20
	A = 16'hbc5c;
	B = 16'hbc24;
	ans_a = 16'hd3a9;
	#20
	A = 16'hb74d;
	B = 16'h3d99;
	ans_a = 16'hd3bd;
	#20
	A = 16'h3cb3;
	B = 16'hbe8c;
	ans_a = 16'hd3fb;
	#20
	A = 16'hba72;
	B = 16'hb52a;
	ans_a = 16'hd3f3;
	#20
	A = 16'h37f1;
	B = 16'hb9ce;
	ans_a = 16'hd3ff;
	#20
	A = 16'h3604;
	B = 16'h2d0c;
	ans_a = 16'hd3fe;
	#20
	A = 16'h3cc6;
	B = 16'hbc7b;
	ans_a = 16'hd414;
	#20
	A = 16'h3f0a;
	B = 16'hba58;
	ans_a = 16'hd42a;
	#20
	A = 16'h26cb;
	B = 16'h3d6a;
	ans_a = 16'hd429;
	#20
	A = 16'ha8da;
	B = 16'h3b4e;
	ans_a = 16'hd42a;
	#20
	A = 16'h348c;
	B = 16'hb2cb;
	ans_a = 16'hd42b;
	#20
	A = 16'h1e6e;
	B = 16'hbc31;
	ans_a = 16'hd42b;
	#20
	A = 16'h3c2d;
	B = 16'hba14;
	ans_a = 16'hd438;
	#20
	A = 16'h3575;
	B = 16'hbb8a;
	ans_a = 16'hd43d;
	#20
	A = 16'h3e38;
	B = 16'h3d42;
	ans_a = 16'hd41c;
	#20
	A = 16'hbc74;
	B = 16'h3f67;
	ans_a = 16'hd43d;
	#20
	A = 16'hbf6a;
	B = 16'h3f1a;
	ans_a = 16'hd472;
	#20
	A = 16'hbc41;
	B = 16'hbc5a;
	ans_a = 16'hd45f;
	#20
	A = 16'hbbf6;
	B = 16'hbd43;
	ans_a = 16'hd44a;
	#20
	A = 16'hbfcb;
	B = 16'hb2ab;
	ans_a = 16'hd444;
	#20
	A = 16'h3dd3;
	B = 16'hb81f;
	ans_a = 16'hd450;
	#20
	A = 16'hbed5;
	B = 16'hb846;
	ans_a = 16'hd441;
	#20
	A = 16'hbdbc;
	B = 16'h3c25;
	ans_a = 16'hd459;
	#20
	A = 16'h3cb4;
	B = 16'h3b0f;
	ans_a = 16'hd448;
	#20
	A = 16'hbf20;
	B = 16'h3955;
	ans_a = 16'hd45b;
	#20
	A = 16'hba19;
	B = 16'h3827;
	ans_a = 16'hd461;
	#20
	A = 16'h3c9a;
	B = 16'hbdb5;
	ans_a = 16'hd47b;
	#20
	A = 16'hb0e1;
	B = 16'h2004;
	ans_a = 16'hd47b;
	#20
	A = 16'hbf86;
	B = 16'hb567;
	ans_a = 16'hd471;
	#20
	A = 16'h344b;
	B = 16'hbed4;
	ans_a = 16'hd478;
	#20
	A = 16'h3a5c;
	B = 16'hbc7b;
	ans_a = 16'hd486;
	#20
	A = 16'hbeb2;
	B = 16'hb2ad;
	ans_a = 16'hd480;
	#20
	A = 16'h3ad8;
	B = 16'hbcc9;
	ans_a = 16'hd490;
	#20
	A = 16'h3bea;
	B = 16'hb928;
	ans_a = 16'hd49a;
	#20
	A = 16'h38db;
	B = 16'hbbea;
	ans_a = 16'hd4a4;
	#20
	A = 16'h36cd;
	B = 16'hb8fe;
	ans_a = 16'hd4a8;
	#20
	A = 16'hb9be;
	B = 16'h3aad;
	ans_a = 16'hd4b2;
	#20
	A = 16'hbf45;
	B = 16'h3fe7;
	ans_a = 16'hd4eb;
	#20
	A = 16'h2d98;
	B = 16'hbd6b;
	ans_a = 16'hd4ed;
	#20
	A = 16'hbe86;
	B = 16'h26f2;
	ans_a = 16'hd4ee;
	#20
	A = 16'h3838;
	B = 16'h3f9f;
	ans_a = 16'hd4de;
	#20
	A = 16'h3d24;
	B = 16'h3bc3;
	ans_a = 16'hd4ca;
	#20
	A = 16'hbc76;
	B = 16'h31a5;
	ans_a = 16'hd4cd;
	#20
	A = 16'h3c5e;
	B = 16'hbe6e;
	ans_a = 16'hd4e9;
	#20
	A = 16'h3be8;
	B = 16'h3c66;
	ans_a = 16'hd4d8;
	#20
	A = 16'h3cd5;
	B = 16'hbea7;
	ans_a = 16'hd4f8;
	#20
	A = 16'h3e57;
	B = 16'hb9d7;
	ans_a = 16'hd50b;
	#20
	A = 16'h3d74;
	B = 16'h3de7;
	ans_a = 16'hd4eb;
	#20
	A = 16'hbecf;
	B = 16'hbffb;
	ans_a = 16'hd4b5;
	#20
	A = 16'hba76;
	B = 16'h353d;
	ans_a = 16'hd4b9;
	#20
	A = 16'hbd14;
	B = 16'hba89;
	ans_a = 16'hd4a8;
	#20
	A = 16'hbc27;
	B = 16'hb806;
	ans_a = 16'hd4a0;
	#20
	A = 16'hb4cd;
	B = 16'h3dca;
	ans_a = 16'hd4a7;
	#20
	A = 16'hbecb;
	B = 16'hba0e;
	ans_a = 16'hd492;
	#20
	A = 16'hbe02;
	B = 16'hbc4b;
	ans_a = 16'hd478;
	#20
	A = 16'h3e44;
	B = 16'h3ac9;
	ans_a = 16'hd463;
	#20
	A = 16'h3eb0;
	B = 16'h3d54;
	ans_a = 16'hd43f;
	#20
	A = 16'hbebe;
	B = 16'hba59;
	ans_a = 16'hd42a;
	#20
	A = 16'h3d7d;
	B = 16'h3b69;
	ans_a = 16'hd416;
	#20
	A = 16'hbc6b;
	B = 16'h32b4;
	ans_a = 16'hd41a;
	#20
	A = 16'h38b3;
	B = 16'h3927;
	ans_a = 16'hd414;
	#20
	A = 16'h3c80;
	B = 16'hbe33;
	ans_a = 16'hd430;
	#20
	A = 16'h3e27;
	B = 16'hbeab;
	ans_a = 16'hd459;
	#20
	A = 16'h2c2a;
	B = 16'hbc7f;
	ans_a = 16'hd45a;
	#20
	A = 16'hbe69;
	B = 16'h3d8a;
	ans_a = 16'hd47e;
	#20
	A = 16'h3375;
	B = 16'hb000;
	ans_a = 16'hd47e;
	#20
	A = 16'h395d;
	B = 16'h3a09;
	ans_a = 16'hd476;
	#20
	A = 16'hb906;
	B = 16'hb269;
	ans_a = 16'hd474;
	#20
	A = 16'hbee5;
	B = 16'h3d3f;
	ans_a = 16'hd498;
	#20
	A = 16'hbd8e;
	B = 16'h3bc3;
	ans_a = 16'hd4ae;
	#20
	A = 16'h3528;
	B = 16'h3966;
	ans_a = 16'hd4ab;
	#20
	A = 16'h3727;
	B = 16'h3b6e;
	ans_a = 16'hd4a4;
	#20
	A = 16'hbdbe;
	B = 16'hba5e;
	ans_a = 16'hd492;
	#20
	A = 16'ha7cc;
	B = 16'hb950;
	ans_a = 16'hd492;
	#20
	A = 16'hb40c;
	B = 16'hb9ac;
	ans_a = 16'hd48f;
	#20
	A = 16'hbf8b;
	B = 16'h3f65;
	ans_a = 16'hd4c7;
	#20
	A = 16'hbc4a;
	B = 16'h38db;
	ans_a = 16'hd4d1;
	#20
	A = 16'hbca2;
	B = 16'hb2a9;
	ans_a = 16'hd4cd;
	#20
	A = 16'h3bb7;
	B = 16'hbc32;
	ans_a = 16'hd4dd;
	#20
	A = 16'hac60;
	B = 16'h3f8a;
	ans_a = 16'hd4df;
	#20
	A = 16'h3f6c;
	B = 16'hbc51;
	ans_a = 16'hd4ff;
	#20
	A = 16'hb73d;
	B = 16'hbfc7;
	ans_a = 16'hd4f1;
	#20
	A = 16'h3fbd;
	B = 16'h3f77;
	ans_a = 16'hd4b7;
	#20
	A = 16'hbde3;
	B = 16'h3f5b;
	ans_a = 16'hd4e2;
	#20
	A = 16'h3c87;
	B = 16'h3740;
	ans_a = 16'hd4da;
	#20
	A = 16'h3d27;
	B = 16'hbf37;
	ans_a = 16'hd4ff;
	#20
	A = 16'hac47;
	B = 16'h3a86;
	ans_a = 16'hd500;
	#20
	A = 16'hba5f;
	B = 16'hab4c;
	ans_a = 16'hd4ff;
	#20
	A = 16'h3c74;
	B = 16'h3d51;
	ans_a = 16'hd4e7;
	#20
	A = 16'hb6c5;
	B = 16'hbcb0;
	ans_a = 16'hd4df;
	#20
	A = 16'h35e2;
	B = 16'hbfb1;
	ans_a = 16'hd4ea;
	#20
	A = 16'h3eef;
	B = 16'h3e5c;
	ans_a = 16'hd4be;
	#20
	A = 16'h3e26;
	B = 16'hb990;
	ans_a = 16'hd4cf;
	#20
	A = 16'hb97f;
	B = 16'h2d15;
	ans_a = 16'hd4d0;
	#20
	A = 16'h3ce7;
	B = 16'hb4de;
	ans_a = 16'hd4d6;
	#20
	A = 16'hbf2a;
	B = 16'hb8ad;
	ans_a = 16'hd4c5;
	#20
	A = 16'h3bf8;
	B = 16'hbc1e;
	ans_a = 16'hd4d5;
	#20
	A = 16'hbb81;
	B = 16'h34aa;
	ans_a = 16'hd4d9;
	#20
	A = 16'h38c8;
	B = 16'h3e8e;
	ans_a = 16'hd4c9;
	#20
	A = 16'h3e42;
	B = 16'hbe35;
	ans_a = 16'hd4f0;
	#20
	A = 16'h3b35;
	B = 16'hb4bc;
	ans_a = 16'hd4f4;
	#20
	A = 16'hb4ce;
	B = 16'h3e79;
	ans_a = 16'hd4fc;
	#20
	A = 16'h2470;
	B = 16'hbede;
	ans_a = 16'hd4fc;
	#20
	A = 16'hbc18;
	B = 16'h37dd;
	ans_a = 16'hd504;
	#20
	A = 16'h32b3;
	B = 16'h3f15;
	ans_a = 16'hd4fe;
	#20
	A = 16'hbef1;
	B = 16'h3048;
	ans_a = 16'hd502;
	#20
	A = 16'h35fb;
	B = 16'h3c2d;
	ans_a = 16'hd4fc;
	#20
	A = 16'hb19a;
	B = 16'hb199;
	ans_a = 16'hd4fc;
	#20
	A = 16'hba73;
	B = 16'h3da2;
	ans_a = 16'hd50e;
	#20
	A = 16'h3d78;
	B = 16'h3f2b;
	ans_a = 16'hd4e7;
	#20
	A = 16'h3f30;
	B = 16'h3dca;
	ans_a = 16'hd4bd;
	#20
	A = 16'h3b74;
	B = 16'h3884;
	ans_a = 16'hd4b5;
	#20
	A = 16'hbedb;
	B = 16'hbf70;
	ans_a = 16'hd482;
	#20
	A = 16'h3c86;
	B = 16'h325a;
	ans_a = 16'hd47e;
	#20
	A = 16'hba5c;
	B = 16'hb7b9;
	ans_a = 16'hd478;
	#20
	A = 16'h3d46;
	B = 16'hb85e;
	ans_a = 16'hd484;
	#20
	A = 16'hb7e3;
	B = 16'hb9e3;
	ans_a = 16'hd47e;
	#20
	A = 16'hba50;
	B = 16'hbcbc;
	ans_a = 16'hd46f;
	#20
	A = 16'h39a7;
	B = 16'hb5fc;
	ans_a = 16'hd473;
	#20
	A = 16'h36e3;
	B = 16'hb014;
	ans_a = 16'hd474;
	#20
	A = 16'h3eee;
	B = 16'h31f5;
	ans_a = 16'hd46f;
	#20
	A = 16'h3ef4;
	B = 16'h378d;
	ans_a = 16'hd462;
	#20
	A = 16'hbe7f;
	B = 16'hb894;
	ans_a = 16'hd453;
	#20
	A = 16'hbf61;
	B = 16'hb29c;
	ans_a = 16'hd44d;
	#20
	A = 16'h3999;
	B = 16'h3d4b;
	ans_a = 16'hd43e;
	#20
	A = 16'h3d4a;
	B = 16'h2572;
	ans_a = 16'hd43e;
	#20
	A = 16'h3c4f;
	B = 16'hbbaf;
	ans_a = 16'hd44f;
	#20
	A = 16'h3b53;
	B = 16'h3c5c;
	ans_a = 16'hd43f;
	#20
	A = 16'hb882;
	B = 16'h3f8e;
	ans_a = 16'hd450;
	#20
	A = 16'hbcb2;
	B = 16'hbc5e;
	ans_a = 16'hd43c;
	#20
	A = 16'hb0c2;
	B = 16'h38db;
	ans_a = 16'hd43d;
	#20
	A = 16'h3f7b;
	B = 16'h3c31;
	ans_a = 16'hd41e;
	#20
	A = 16'hbbb1;
	B = 16'h3885;
	ans_a = 16'hd427;
	#20
	A = 16'h38c4;
	B = 16'hbe87;
	ans_a = 16'hd437;
	#20
	A = 16'h37bb;
	B = 16'h256b;
	ans_a = 16'hd437;
	#20
	A = 16'hb4ac;
	B = 16'h3dac;
	ans_a = 16'hd43e;
	#20
	A = 16'hb84b;
	B = 16'h37a0;
	ans_a = 16'hd442;
	#20
	A = 16'h3528;
	B = 16'hbcdb;
	ans_a = 16'hd448;
	#20
	A = 16'h2e71;
	B = 16'hbb74;
	ans_a = 16'hd44a;
	#20
	A = 16'h3f2d;
	B = 16'h3d0a;
	ans_a = 16'hd426;
	#20
	A = 16'hbd98;
	B = 16'hb393;
	ans_a = 16'hd421;
	#20
	A = 16'h2ff0;
	B = 16'h3fcb;
	ans_a = 16'hd41d;
	#20
	A = 16'h397b;
	B = 16'h3fd1;
	ans_a = 16'hd408;
	#20
	A = 16'h3872;
	B = 16'h3847;
	ans_a = 16'hd403;
	#20
	A = 16'hbd9a;
	B = 16'hbff0;
	ans_a = 16'hd3ad;
	#20
	A = 16'h3e71;
	B = 16'h30b2;
	ans_a = 16'hd3a5;
	#20
	A = 16'hb820;
	B = 16'h3ecf;
	ans_a = 16'hd3c1;
	#20
	A = 16'hbdc6;
	B = 16'h3dd8;
	ans_a = 16'hd402;
	#20
	A = 16'h3891;
	B = 16'h222d;
	ans_a = 16'hd402;
	#20
	A = 16'hb63f;
	B = 16'h3c62;
	ans_a = 16'hd409;
	#20
	A = 16'hbd86;
	B = 16'hb8ba;
	ans_a = 16'hd3f8;
	#20
	A = 16'hbcfd;
	B = 16'h3f8c;
	ans_a = 16'hd422;
	#20
	A = 16'h3d57;
	B = 16'h37df;
	ans_a = 16'hd417;
	#20
	A = 16'hbe6f;
	B = 16'h349a;
	ans_a = 16'hd41e;
	#20
	A = 16'hbe58;
	B = 16'h3d44;
	ans_a = 16'hd43f;
	#20
	A = 16'h3846;
	B = 16'h28ee;
	ans_a = 16'hd43f;
	#20
	A = 16'h3fb2;
	B = 16'hbb02;
	ans_a = 16'hd45a;
	#20
	A = 16'hb6a5;
	B = 16'h3fe7;
	ans_a = 16'hd467;
	#20
	A = 16'h3c04;
	B = 16'hbc2e;
	ans_a = 16'hd478;
	#20
	A = 16'h3e0e;
	B = 16'h3fe1;
	ans_a = 16'hd448;
	#20
	A = 16'h39de;
	B = 16'h3f1c;
	ans_a = 16'hd433;
	#20
	A = 16'h38c5;
	B = 16'h39e4;
	ans_a = 16'hd42c;
	#20
	A = 16'h388b;
	B = 16'hbf2b;
	ans_a = 16'hd43c;
	#20
	A = 16'hb773;
	B = 16'h3e0c;
	ans_a = 16'hd447;
	#20
	A = 16'hba55;
	B = 16'h3c0f;
	ans_a = 16'hd454;
	#20
	A = 16'h3904;
	B = 16'h3f73;
	ans_a = 16'hd441;
	#20
	A = 16'h3e83;
	B = 16'h2bf3;
	ans_a = 16'hd43f;
	#20
	A = 16'hb7e0;
	B = 16'hbf4c;
	ans_a = 16'hd431;
	#20
	A = 16'h3a97;
	B = 16'h367c;
	ans_a = 16'hd42c;
	#20
	A = 16'hbf9b;
	B = 16'h390e;
	ans_a = 16'hd43f;
	#20
	A = 16'hbf4b;
	B = 16'hbce7;
	ans_a = 16'hd41b;
	#20
	A = 16'h3b35;
	B = 16'hbe7d;
	ans_a = 16'hd432;
	#20
	A = 16'hba1c;
	B = 16'hb718;
	ans_a = 16'hd42d;
	#20
	A = 16'h3c18;
	B = 16'hbc15;
	ans_a = 16'hd43e;
	#20
	A = 16'hbcb7;
	B = 16'hbc1f;
	ans_a = 16'hd42b;
	#20
	A = 16'h36f3;
	B = 16'h362d;
	ans_a = 16'hd428;
	#20
	A = 16'h3d1d;
	B = 16'hbd25;
	ans_a = 16'hd442;
	#20
	A = 16'h3d46;
	B = 16'h3601;
	ans_a = 16'hd43a;
	#20
	A = 16'hb941;
	B = 16'h3881;
	ans_a = 16'hd440;
	#20
	A = 16'h3cd3;
	B = 16'hbf3d;
	ans_a = 16'hd463;
	#20
	A = 16'h3b43;
	B = 16'h3ed7;
	ans_a = 16'hd44a;
	#20
	A = 16'h3c31;
	B = 16'hbd2f;
	ans_a = 16'hd460;
	#20
	A = 16'h3d44;
	B = 16'h3b1c;
	ans_a = 16'hd44d;
	#20
	A = 16'h2acc;
	B = 16'h3f3d;
	ans_a = 16'hd44b;
	#20
	A = 16'h3dbe;
	B = 16'h3a4b;
	ans_a = 16'hd439;
	#20
	A = 16'hbcec;
	B = 16'had05;
	ans_a = 16'hd437;
	#20
	A = 16'h3fdd;
	B = 16'h36b7;
	ans_a = 16'hd42a;
	#20
	A = 16'h3e91;
	B = 16'hafcb;
	ans_a = 16'hd42d;
	#20
	A = 16'hb5e6;
	B = 16'h3cf9;
	ans_a = 16'hd434;
	#20
	A = 16'h3d42;
	B = 16'h3586;
	ans_a = 16'hd42d;
	#20
	A = 16'hbe30;
	B = 16'hbf15;
	ans_a = 16'hd401;
	#20
	A = 16'hba14;
	B = 16'hbd92;
	ans_a = 16'hd3e0;
	#20
	A = 16'hbf11;
	B = 16'hb530;
	ans_a = 16'hd3ce;
	#20
	A = 16'h3b41;
	B = 16'hbc2b;
	ans_a = 16'hd3ec;
	#20
	A = 16'hbca9;
	B = 16'h3e89;
	ans_a = 16'hd414;
	#20
	A = 16'hb65a;
	B = 16'hbc04;
	ans_a = 16'hd40e;
	#20
	A = 16'hbd80;
	B = 16'h2393;
	ans_a = 16'hd40e;
	#20
	A = 16'h3d15;
	B = 16'h3c2c;
	ans_a = 16'hd3f2;
	#20
	A = 16'h3fa3;
	B = 16'h3cca;
	ans_a = 16'hd3a9;
	#20
	A = 16'hb7be;
	B = 16'hbec1;
	ans_a = 16'hd38f;
	#20
	A = 16'hbecc;
	B = 16'h3bcc;
	ans_a = 16'hd3c4;
	#20
	A = 16'h3e1e;
	B = 16'h34fd;
	ans_a = 16'hd3b5;
	#20
	A = 16'hbf73;
	B = 16'hbbd7;
	ans_a = 16'hd37b;
	#20
	A = 16'hbc8b;
	B = 16'hba8b;
	ans_a = 16'hd35d;
	#20
	A = 16'h320f;
	B = 16'hb928;
	ans_a = 16'hd361;
	#20
	A = 16'h23ed;
	B = 16'hbf62;
	ans_a = 16'hd362;
	#20
	A = 16'h3fae;
	B = 16'hbca2;
	ans_a = 16'hd3a9;
	#20
	A = 16'hbd5b;
	B = 16'h3f45;
	ans_a = 16'hd3f7;
	#20
	A = 16'hbed1;
	B = 16'hb417;
	ans_a = 16'hd3e9;
	#20
	A = 16'hb664;
	B = 16'h3126;
	ans_a = 16'hd3eb;
	#20
	A = 16'hbc39;
	B = 16'h3f60;
	ans_a = 16'hd415;
	#20
	A = 16'h3d90;
	B = 16'h35f9;
	ans_a = 16'hd40d;
	#20
	A = 16'h3cb2;
	B = 16'h3c76;
	ans_a = 16'hd3f0;
	#20
	A = 16'h3c5d;
	B = 16'h3c9a;
	ans_a = 16'hd3c8;
	#20
	A = 16'hbbce;
	B = 16'hb50e;
	ans_a = 16'hd3be;
	#20
	A = 16'hbe74;
	B = 16'h3d4f;
	ans_a = 16'hd401;
	#20
	A = 16'hb755;
	B = 16'h3a76;
	ans_a = 16'hd407;
	#20
	A = 16'h3c7f;
	B = 16'h3dd2;
	ans_a = 16'hd3da;
	#20
	A = 16'hbcde;
	B = 16'h3ac6;
	ans_a = 16'hd3fb;
	#20
	A = 16'h3c70;
	B = 16'hbeed;
	ans_a = 16'hd41c;
	#20
	A = 16'hbe73;
	B = 16'h3d1a;
	ans_a = 16'hd43d;
	#20
	A = 16'hbfe0;
	B = 16'h3d78;
	ans_a = 16'hd468;
	#20
	A = 16'hbe90;
	B = 16'h3d13;
	ans_a = 16'hd489;
	#20
	A = 16'h39ba;
	B = 16'hbc95;
	ans_a = 16'hd496;
	#20
	A = 16'h3936;
	B = 16'h3859;
	ans_a = 16'hd490;
	#20
	A = 16'h3f20;
	B = 16'hae4d;
	ans_a = 16'hd493;
	#20
	A = 16'hbc66;
	B = 16'h3923;
	ans_a = 16'hd49e;
	#20
	A = 16'hbe10;
	B = 16'h2c30;
	ans_a = 16'hd4a0;
	#20
	A = 16'hb213;
	B = 16'hbb03;
	ans_a = 16'hd49d;
	#20
	A = 16'hbb79;
	B = 16'h3c69;
	ans_a = 16'hd4ad;
	#20
	A = 16'hb905;
	B = 16'hac62;
	ans_a = 16'hd4ac;
	#20
	A = 16'hbf50;
	B = 16'h3ffc;
	ans_a = 16'hd4e6;
	#20
	A = 16'hac4f;
	B = 16'hbc7b;
	ans_a = 16'hd4e5;
	#20
	A = 16'h35f1;
	B = 16'hbf5d;
	ans_a = 16'hd4f0;
	#20
	A = 16'h3424;
	B = 16'h3f3b;
	ans_a = 16'hd4e9;
	#20
	A = 16'hb8d8;
	B = 16'h3e8f;
	ans_a = 16'hd4f9;
	#20
	A = 16'ha65c;
	B = 16'h3d08;
	ans_a = 16'hd4fa;
	#20
	A = 16'h2dae;
	B = 16'hb2e9;
	ans_a = 16'hd4fa;
	#20
	A = 16'h3d8f;
	B = 16'h3bd9;
	ans_a = 16'hd4e4;
	#20
	A = 16'hb39b;
	B = 16'h3c79;
	ans_a = 16'hd4e8;
	#20
	A = 16'hbfcb;
	B = 16'hbce3;
	ans_a = 16'hd4c2;
	#20
	A = 16'hbcca;
	B = 16'h3c2b;
	ans_a = 16'hd4d6;
	#20
	A = 16'hb45b;
	B = 16'h385a;
	ans_a = 16'hd4d8;
	#20
	A = 16'h3e0d;
	B = 16'h3a3d;
	ans_a = 16'hd4c5;
	#20
	A = 16'h3fac;
	B = 16'hb5c0;
	ans_a = 16'hd4d0;
	#20
	A = 16'h3dc0;
	B = 16'hb309;
	ans_a = 16'hd4d5;
	#20
	A = 16'h3f2e;
	B = 16'hbc7c;
	ans_a = 16'hd4f5;
	#20
	A = 16'hbba9;
	B = 16'h3ef3;
	ans_a = 16'hd510;
	#20
	A = 16'h3f99;
	B = 16'h38e6;
	ans_a = 16'hd4fd;
	#20
	A = 16'h3cca;
	B = 16'hbef2;
	ans_a = 16'hd51e;
	#20
	A = 16'h2412;
	B = 16'hbedd;
	ans_a = 16'hd51e;
	#20
	A = 16'hb34a;
	B = 16'hb8d1;
	ans_a = 16'hd51c;
	#20
	A = 16'hbf03;
	B = 16'h3f0c;
	ans_a = 16'hd54d;
	#20
	A = 16'hbdc9;
	B = 16'h3aba;
	ans_a = 16'hd560;
	#20
	A = 16'h2eee;
	B = 16'h3f76;
	ans_a = 16'hd55d;
	#20
	A = 16'h3e29;
	B = 16'hbde3;
	ans_a = 16'hd581;
	#20
	A = 16'h3cd5;
	B = 16'hbd2b;
	ans_a = 16'hd59a;
	#20
	A = 16'hbe4c;
	B = 16'h3907;
	ans_a = 16'hd5aa;
	#20
	A = 16'hbc5e;
	B = 16'hbdd1;
	ans_a = 16'hd591;
	#20
	A = 16'hbffa;
	B = 16'h326b;
	ans_a = 16'hd597;
	#20
	A = 16'hbad0;
	B = 16'hbf95;
	ans_a = 16'hd57d;
	#20
	A = 16'h3f2a;
	B = 16'hb868;
	ans_a = 16'hd58d;
	#20
	A = 16'h3a8d;
	B = 16'h3c31;
	ans_a = 16'hd57f;
	#20
	A = 16'haed2;
	B = 16'hbb13;
	ans_a = 16'hd57d;
	#20
	A = 16'h3d6b;
	B = 16'h3a37;
	ans_a = 16'hd56c;
	#20
	A = 16'h3907;
	B = 16'hbcd3;
	ans_a = 16'hd578;
	#20
	A = 16'h2fdd;
	B = 16'hbae0;
	ans_a = 16'hd57a;
	#20
	A = 16'hbcd7;
	B = 16'hb5b2;
	ans_a = 16'hd573;
	#20
	A = 16'h3f56;
	B = 16'had68;
	ans_a = 16'hd575;
	#20
	A = 16'hbf42;
	B = 16'hbef5;
	ans_a = 16'hd542;
	#20
	A = 16'hb846;
	B = 16'h9c36;
	ans_a = 16'hd542;
	#20
	A = 16'hb678;
	B = 16'h326b;
	ans_a = 16'hd543;
	#20
	A = 16'haafa;
	B = 16'h3ffb;
	ans_a = 16'hd545;
	#20
	A = 16'h3824;
	B = 16'hbd1d;
	ans_a = 16'hd550;
	#20
	A = 16'hb95d;
	B = 16'h3b59;
	ans_a = 16'hd55a;
	#20
	A = 16'h3fed;
	B = 16'h368b;
	ans_a = 16'hd54d;
	#20
	A = 16'hbb15;
	B = 16'h3935;
	ans_a = 16'hd556;
	#20
	A = 16'hb8dc;
	B = 16'hbee1;
	ans_a = 16'hd545;
	#20
	A = 16'hb075;
	B = 16'hbebd;
	ans_a = 16'hd541;
	#20
	A = 16'h3dca;
	B = 16'hb431;
	ans_a = 16'hd547;
	#20
	A = 16'h39a4;
	B = 16'h3ccb;
	ans_a = 16'hd539;
	#20
	A = 16'hb843;
	B = 16'h3d9e;
	ans_a = 16'hd545;
	#20
	A = 16'h3c16;
	B = 16'h3d56;
	ans_a = 16'hd52f;
	#20
	A = 16'h3fae;
	B = 16'hbdd6;
	ans_a = 16'hd55c;
	#20
	A = 16'hbedf;
	B = 16'hbfc0;
	ans_a = 16'hd527;
	#20
	A = 16'hb8c5;
	B = 16'h399a;
	ans_a = 16'hd52e;
	#20
	A = 16'h3a25;
	B = 16'hbdfa;
	ans_a = 16'hd540;
	#20
	A = 16'hbf14;
	B = 16'h2580;
	ans_a = 16'hd541;
	#20
	A = 16'h3aaf;
	B = 16'hb9ca;
	ans_a = 16'hd54b;
	#20
	A = 16'h3f3e;
	B = 16'h3dcf;
	ans_a = 16'hd521;
	#20
	A = 16'h3f40;
	B = 16'hbb9a;
	ans_a = 16'hd53d;
	#20
	A = 16'h3647;
	B = 16'hbde7;
	ans_a = 16'hd546;
	#20
	A = 16'h26c4;
	B = 16'h3951;
	ans_a = 16'hd546;
	#20
	A = 16'h396f;
	B = 16'h3c24;
	ans_a = 16'hd53b;
	#20
	A = 16'hbc65;
	B = 16'hb931;
	ans_a = 16'hd530;
	#20
	A = 16'h3a78;
	B = 16'hbd52;
	ans_a = 16'hd541;
	#20
	A = 16'hbd16;
	B = 16'hbd4f;
	ans_a = 16'hd526;
	#20
	A = 16'h3dda;
	B = 16'h331c;
	ans_a = 16'hd521;
	#20
	A = 16'hb897;
	B = 16'hbdae;
	ans_a = 16'hd514;
	#20
	A = 16'hbf06;
	B = 16'h3a57;
	ans_a = 16'hd52a;
	#20
	A = 16'hba6c;
	B = 16'h3ca8;
	ans_a = 16'hd539;
	#20
	A = 16'hb245;
	B = 16'hbf0c;
	ans_a = 16'hd533;
	#20
	A = 16'hbe2c;
	B = 16'hbcbf;
	ans_a = 16'hd516;
	#20
	A = 16'h3686;
	B = 16'h2e9c;
	ans_a = 16'hd515;
	#20
	A = 16'h3d8a;
	B = 16'hbd3f;
	ans_a = 16'hd532;
	#20
	A = 16'hb469;
	B = 16'hbc1b;
	ans_a = 16'hd52d;
	#20
	A = 16'hb0cd;
	B = 16'h3f6b;
	ans_a = 16'hd531;
	#20
	A = 16'hbd76;
	B = 16'h3c9e;
	ans_a = 16'hd54a;
	#20
	A = 16'hbdb8;
	B = 16'h3f6e;
	ans_a = 16'hd574;
	#20
	A = 16'hbfa8;
	B = 16'h3fea;
	ans_a = 16'hd5b1;
	#20
	A = 16'h370b;
	B = 16'hb76f;
	ans_a = 16'hd5b4;
	#20
	A = 16'hac17;
	B = 16'hbe11;
	ans_a = 16'hd5b2;
	#20
	A = 16'hbdb0;
	B = 16'h361b;
	ans_a = 16'hd5bb;
	#20
	A = 16'hae57;
	B = 16'h379b;
	ans_a = 16'hd5bc;
	#20
	A = 16'hbe27;
	B = 16'hbc1c;
	ans_a = 16'hd5a3;
	#20
	A = 16'hb22b;
	B = 16'hbd0c;
	ans_a = 16'hd59f;
	#20
	A = 16'h384e;
	B = 16'h3080;
	ans_a = 16'hd59e;
	#20
	A = 16'hb8b6;
	B = 16'h3488;
	ans_a = 16'hd5a1;
	#20
	A = 16'had9f;
	B = 16'hbf50;
	ans_a = 16'hd59e;
	#20
	A = 16'hbe95;
	B = 16'hbb47;
	ans_a = 16'hd586;
	#20
	A = 16'h3e32;
	B = 16'h322d;
	ans_a = 16'hd581;
	#20
	A = 16'hb9a2;
	B = 16'h3989;
	ans_a = 16'hd589;
	#20
	A = 16'h393b;
	B = 16'h2b73;
	ans_a = 16'hd588;
	#20
	A = 16'h3b8b;
	B = 16'h3609;
	ans_a = 16'hd582;
	#20
	A = 16'h3cfd;
	B = 16'hbc9b;
	ans_a = 16'hd599;
	#20
	A = 16'h3ffe;
	B = 16'hb909;
	ans_a = 16'hd5ad;
	#20
	A = 16'hb55b;
	B = 16'h3ed1;
	ans_a = 16'hd5b6;
	#20
	A = 16'hbda9;
	B = 16'hb544;
	ans_a = 16'hd5af;
	#20
	A = 16'hb973;
	B = 16'hb050;
	ans_a = 16'hd5ae;
	#20
	A = 16'hb620;
	B = 16'hb97e;
	ans_a = 16'hd5aa;
	#20
	A = 16'h3b86;
	B = 16'hbd4f;
	ans_a = 16'hd5be;
	#20
	A = 16'h35ac;
	B = 16'hbbdc;
	ans_a = 16'hd5c4;
	#20
	A = 16'h3cfe;
	B = 16'h3bcd;
	ans_a = 16'hd5b1;
	#20
	A = 16'h396f;
	B = 16'hb514;
	ans_a = 16'hd5b4;
	#20
	A = 16'h3f89;
	B = 16'hbe1f;
	ans_a = 16'hd5e2;
	#20
	A = 16'hb6b3;
	B = 16'h3c19;
	ans_a = 16'hd5e9;
	#20
	A = 16'hb3c9;
	B = 16'h3b23;
	ans_a = 16'hd5ec;
	#20
	A = 16'hbd0e;
	B = 16'hb983;
	ans_a = 16'hd5de;
	#20
	A = 16'h1f77;
	B = 16'h3da7;
	ans_a = 16'hd5de;
	#20
	A = 16'hb785;
	B = 16'h3b1d;
	ans_a = 16'hd5e5;
	#20
	A = 16'hbed7;
	B = 16'h3fb2;
	ans_a = 16'hd61a;
	#20
	A = 16'hb949;
	B = 16'h3d7c;
	ans_a = 16'hd628;
	#20
	A = 16'h39cd;
	B = 16'hbecf;
	ans_a = 16'hd63c;
	#20
	A = 16'hb735;
	B = 16'h4000;
	ans_a = 16'hd64a;
	#20
	A = 16'h3f08;
	B = 16'hb982;
	ans_a = 16'hd65d;
	#20
	A = 16'hbfb2;
	B = 16'hbb09;
	ans_a = 16'hd642;
	#20
	A = 16'hbc17;
	B = 16'h3d28;
	ans_a = 16'hd657;
	#20
	A = 16'h3c72;
	B = 16'hbc02;
	ans_a = 16'hd669;
	#20
	A = 16'h3937;
	B = 16'hb28a;
	ans_a = 16'hd66b;
	#20
	A = 16'h3d18;
	B = 16'h3e94;
	ans_a = 16'hd64a;
	#20
	A = 16'h2f82;
	B = 16'h3f15;
	ans_a = 16'hd647;
	#20
	A = 16'hb40a;
	B = 16'hb138;
	ans_a = 16'hd646;
	#20
	A = 16'h3a1d;
	B = 16'hbc98;
	ans_a = 16'hd654;
	#20
	A = 16'hbc35;
	B = 16'h3df1;
	ans_a = 16'hd66d;
	#20
	A = 16'h3950;
	B = 16'hb8c8;
	ans_a = 16'hd673;
	#20
	A = 16'hac20;
	B = 16'h3ab2;
	ans_a = 16'hd674;
	#20
	A = 16'hb39e;
	B = 16'hb05a;
	ans_a = 16'hd673;
	#20
	A = 16'h3894;
	B = 16'h3ef3;
	ans_a = 16'hd663;
	#20
	A = 16'h3856;
	B = 16'hba48;
	ans_a = 16'hd66a;
	#20
	A = 16'h3a91;
	B = 16'hbd99;
	ans_a = 16'hd67c;
	#20
	A = 16'h3d81;
	B = 16'hbde8;
	ans_a = 16'hd69c;
	#20
	A = 16'haa84;
	B = 16'h3e76;
	ans_a = 16'hd69d;
	#20
	A = 16'h3922;
	B = 16'h3dbd;
	ans_a = 16'hd68e;
	#20
	A = 16'h3bee;
	B = 16'h3b98;
	ans_a = 16'hd67f;
	#20
	A = 16'hbd67;
	B = 16'h3c5b;
	ans_a = 16'hd697;
	#20
	A = 16'h3e6c;
	B = 16'hb9ab;
	ans_a = 16'hd6a9;
	#20
	A = 16'h3a76;
	B = 16'h3e53;
	ans_a = 16'hd695;
	#20
	A = 16'h3d83;
	B = 16'hbdb4;
	ans_a = 16'hd6b4;
	#20
	A = 16'hb8f2;
	B = 16'h3e98;
	ans_a = 16'hd6c4;
	#20
	A = 16'hadc9;
	B = 16'h3c8c;
	ans_a = 16'hd6c6;
	#20
	A = 16'hb58e;
	B = 16'hbb37;
	ans_a = 16'hd6c1;
	#20
	A = 16'hb543;
	B = 16'h3f83;
	ans_a = 16'hd6cb;
	#20
	A = 16'hbd67;
	B = 16'h3c6f;
	ans_a = 16'hd6e3;
	#20
	A = 16'h3667;
	B = 16'hb145;
	ans_a = 16'hd6e4;
	#20
	A = 16'h3dec;
	B = 16'hbfc4;
	ans_a = 16'hd712;
	#20
	A = 16'h3e33;
	B = 16'hb806;
	ans_a = 16'hd71e;
	#20
	A = 16'hb0aa;
	B = 16'hbd9e;
	ans_a = 16'hd71b;
	#20
	A = 16'hb518;
	B = 16'h3c9d;
	ans_a = 16'hd721;
	#20
	A = 16'hbf93;
	B = 16'hbc46;
	ans_a = 16'hd701;
	#20
	A = 16'hbdcf;
	B = 16'hb556;
	ans_a = 16'hd6f9;
	#20
	A = 16'h39c0;
	B = 16'h3f73;
	ans_a = 16'hd6e4;
	#20
	A = 16'hb837;
	B = 16'haecb;
	ans_a = 16'hd6e3;
	#20
	A = 16'hbc6a;
	B = 16'had44;
	ans_a = 16'hd6e2;
	#20
	A = 16'h3003;
	B = 16'h9d24;
	ans_a = 16'hd6e2;
	#20
	A = 16'h3879;
	B = 16'hbba9;
	ans_a = 16'hd6eb;
	#20
	A = 16'hbdb9;
	B = 16'hbec3;
	ans_a = 16'hd6c4;
	#20
	A = 16'h3ee2;
	B = 16'h3e42;
	ans_a = 16'hd699;
	#20
	A = 16'hbbf2;
	B = 16'hbf14;
	ans_a = 16'hd67d;
	#20
	A = 16'hbdac;
	B = 16'hba56;
	ans_a = 16'hd66b;
	#20
	A = 16'hb432;
	B = 16'hbc62;
	ans_a = 16'hd666;
	#20
	A = 16'h3ccc;
	B = 16'h273c;
	ans_a = 16'hd665;
	#20
	A = 16'hbee8;
	B = 16'hbc04;
	ans_a = 16'hd649;
	#20
	A = 16'hb96d;
	B = 16'h3d46;
	ans_a = 16'hd657;
	#20
	A = 16'h3f7b;
	B = 16'hb882;
	ans_a = 16'hd668;
	#20
	A = 16'h3c23;
	B = 16'h3ee6;
	ans_a = 16'hd64b;
	#20
	A = 16'hbe09;
	B = 16'h3f55;
	ans_a = 16'hd677;
	#20
	A = 16'h3ac0;
	B = 16'h34e4;
	ans_a = 16'hd673;
	#20
	A = 16'h3f36;
	B = 16'h33d8;
	ans_a = 16'hd66c;
	#20
	A = 16'h38c2;
	B = 16'hbd9d;
	ans_a = 16'hd679;
	#20
	A = 16'hbfc7;
	B = 16'h3524;
	ans_a = 16'hd683;
	#20
	A = 16'h3948;
	B = 16'hb972;
	ans_a = 16'hd68a;
	#20
	A = 16'h325e;
	B = 16'hacdf;
	ans_a = 16'hd68a;
	#20
	A = 16'h322d;
	B = 16'h3970;
	ans_a = 16'hd688;
	#20
	A = 16'hbba3;
	B = 16'hbe26;
	ans_a = 16'hd671;
	#20
	A = 16'h3de6;
	B = 16'h3f0a;
	ans_a = 16'hd647;
	#20
	A = 16'h3e6b;
	B = 16'hb74b;
	ans_a = 16'hd653;
	#20
	A = 16'h3e37;
	B = 16'h3d3b;
	ans_a = 16'hd632;
	#20
	A = 16'hb6c6;
	B = 16'h2e55;
	ans_a = 16'hd633;
	#20
	A = 16'h9ce8;
	B = 16'h3655;
	ans_a = 16'hd633;
	#20
	A = 16'hbc67;
	B = 16'h3d9b;
	ans_a = 16'hd64c;
	#20
	A = 16'h3e11;
	B = 16'h3597;
	ans_a = 16'hd644;
	#20
	A = 16'h3fda;
	B = 16'hb2ab;
	ans_a = 16'hd64b;
	#20
	A = 16'hbb27;
	B = 16'h39e7;
	ans_a = 16'hd656;
	#20
	A = 16'h31fe;
	B = 16'h3055;
	ans_a = 16'hd656;
	#20
	A = 16'hb905;
	B = 16'hbecd;
	ans_a = 16'hd645;
	#20
	A = 16'h3c04;
	B = 16'hbc70;
	ans_a = 16'hd657;
	#20
	A = 16'hbd83;
	B = 16'hb12d;
	ans_a = 16'hd653;
	#20
	A = 16'h3931;
	B = 16'hb73e;
	ans_a = 16'hd658;
	#20
	A = 16'h3c81;
	B = 16'hbe63;
	ans_a = 16'hd675;
	#20
	A = 16'h3b8f;
	B = 16'hbffa;
	ans_a = 16'hd693;
	#20
	A = 16'hbd5f;
	B = 16'hb48d;
	ans_a = 16'hd68d;
	#20
	A = 16'h3dab;
	B = 16'hb68f;
	ans_a = 16'hd696;
	#20
	A = 16'hbc81;
	B = 16'hb177;
	ans_a = 16'hd693;
	#20
	A = 16'hbbbf;
	B = 16'hbad7;
	ans_a = 16'hd686;
	#20
	A = 16'hbb38;
	B = 16'h29ea;
	ans_a = 16'hd687;
	#20
	A = 16'hb40d;
	B = 16'h3d20;
	ans_a = 16'hd68c;
	#20
	A = 16'h3c49;
	B = 16'h3d43;
	ans_a = 16'hd675;
	#20
	A = 16'hbbbe;
	B = 16'h3b75;
	ans_a = 16'hd683;
	#20
	A = 16'h396a;
	B = 16'hb87a;
	ans_a = 16'hd689;
	#20
	A = 16'h3f70;
	B = 16'hb2f3;
	ans_a = 16'hd68f;
	#20
	A = 16'hbf0a;
	B = 16'h3fc1;
	ans_a = 16'hd6c6;
	#20
	A = 16'h32c5;
	B = 16'hbb08;
	ans_a = 16'hd6c9;
	#20
	A = 16'h35eb;
	B = 16'h3864;
	ans_a = 16'hd6c6;
	#20
	A = 16'h3bbc;
	B = 16'h348d;
	ans_a = 16'hd6c2;
	#20
	A = 16'h335a;
	B = 16'h3dba;
	ans_a = 16'hd6bd;
	#20
	A = 16'hbef0;
	B = 16'hbc84;
	ans_a = 16'hd69e;
	#20
	A = 16'hb337;
	B = 16'hbd73;
	ans_a = 16'hd699;
	#20
	A = 16'h3f70;
	B = 16'hbc03;
	ans_a = 16'hd6b7;
	#20
	A = 16'hbe73;
	B = 16'hbd57;
	ans_a = 16'hd695;
	#20
	A = 16'hb682;
	B = 16'h3ebf;
	ans_a = 16'hd6a0;
	#20
	A = 16'h361f;
	B = 16'hb3df;
	ans_a = 16'hd6a2;
	#20
	A = 16'h39ce;
	B = 16'hb9c9;
	ans_a = 16'hd6aa;
	#20
	A = 16'ha972;
	B = 16'hb65c;
	ans_a = 16'hd6aa;
	#20
	A = 16'hbea4;
	B = 16'h3f87;
	ans_a = 16'hd6dc;
	#20
	A = 16'hbc96;
	B = 16'h2402;
	ans_a = 16'hd6dc;
	#20
	A = 16'h3e11;
	B = 16'hbbb3;
	ans_a = 16'hd6f3;
	#20
	A = 16'hb3d4;
	B = 16'hacdc;
	ans_a = 16'hd6f3;
	#20
	A = 16'h323b;
	B = 16'h3a38;
	ans_a = 16'hd6f1;
	#20
	A = 16'hafb4;
	B = 16'h3c21;
	ans_a = 16'hd6f3;
	#20
	A = 16'h3e24;
	B = 16'h3baf;
	ans_a = 16'hd6db;
	#20
	A = 16'h2342;
	B = 16'h3d90;
	ans_a = 16'hd6db;
	#20
	A = 16'hbf3f;
	B = 16'hbc21;
	ans_a = 16'hd6bd;
	#20
	A = 16'hbd4a;
	B = 16'hbfc6;
	ans_a = 16'hd694;
	#20
	A = 16'h30c9;
	B = 16'hb778;
	ans_a = 16'hd695;
	#20
	A = 16'hbb80;
	B = 16'h390b;
	ans_a = 16'hd69e;
	#20
	A = 16'hbfb1;
	B = 16'h30c0;
	ans_a = 16'hd6a3;
	#20
	A = 16'hbd46;
	B = 16'h3a8c;
	ans_a = 16'hd6b4;
	#20
	A = 16'hbc9b;
	B = 16'hb9d1;
	ans_a = 16'hd6a7;
	#20
	A = 16'hb884;
	B = 16'h3fb4;
	ans_a = 16'hd6b8;
	#20
	A = 16'hbf24;
	B = 16'h3d0e;
	ans_a = 16'hd6dc;
	#20
	A = 16'hbe6a;
	B = 16'h3902;
	ans_a = 16'hd6ec;
	#20
	A = 16'h3d2d;
	B = 16'hbe2e;
	ans_a = 16'hd70c;
	#20
	A = 16'h3c0f;
	B = 16'hae66;
	ans_a = 16'hd70e;
	#20
	A = 16'hb93f;
	B = 16'hbcfa;
	ans_a = 16'hd701;
	#20
	A = 16'h3983;
	B = 16'h3ab5;
	ans_a = 16'hd6f8;
	#20
	A = 16'h3f71;
	B = 16'h3af4;
	ans_a = 16'hd6de;
	#20
	A = 16'hb524;
	B = 16'h2dc4;
	ans_a = 16'hd6de;
	#20
	A = 16'h3e6a;
	B = 16'h3cab;
	ans_a = 16'hd6c0;
	#20
	A = 16'hba36;
	B = 16'h3c55;
	ans_a = 16'hd6cd;
	#20
	A = 16'hbf83;
	B = 16'haf89;
	ans_a = 16'hd6c9;
	#20
	A = 16'hbaab;
	B = 16'hbf24;
	ans_a = 16'hd6b1;
	#20
	A = 16'h3f8b;
	B = 16'hb7f0;
	ans_a = 16'hd6c0;
	#20
	A = 16'hbd69;
	B = 16'h3ed6;
	ans_a = 16'hd6e5;
	#20
	A = 16'hbd70;
	B = 16'hb64a;
	ans_a = 16'hd6dc;
	#20
	A = 16'hbe52;
	B = 16'h3d76;
	ans_a = 16'hd6fe;
	#20
	A = 16'hbd8a;
	B = 16'hbd17;
	ans_a = 16'hd6e2;
	#20
	A = 16'hbd99;
	B = 16'hb59b;
	ans_a = 16'hd6da;
	#20
	A = 16'hbd89;
	B = 16'hbe65;
	ans_a = 16'hd6b7;
	#20
	A = 16'h35fc;
	B = 16'h2cf4;
	ans_a = 16'hd6b7;
	#20
	A = 16'hb62f;
	B = 16'hb4da;
	ans_a = 16'hd6b5;
	#20
	A = 16'h2c41;
	B = 16'h3520;
	ans_a = 16'hd6b5;
	#20
	A = 16'h3e35;
	B = 16'hbe21;
	ans_a = 16'hd6db;
	#20
	A = 16'hbed2;
	B = 16'hbd25;
	ans_a = 16'hd6b8;
	#20
	A = 16'h32e1;
	B = 16'h3fe2;
	ans_a = 16'hd6b1;
	#20
	A = 16'hba83;
	B = 16'h3de6;
	ans_a = 16'hd6c4;
	#20
	A = 16'h3df6;
	B = 16'hbe7b;
	ans_a = 16'hd6eb;
	#20
	A = 16'hb381;
	B = 16'h3c6e;
	ans_a = 16'hd6ef;
	#20
	A = 16'h3506;
	B = 16'hbcb4;
	ans_a = 16'hd6f5;
	#20
	A = 16'hb39d;
	B = 16'hb4f9;
	ans_a = 16'hd6f4;
	#20
	A = 16'h3a66;
	B = 16'h3f7a;
	ans_a = 16'hd6dc;
	#20
	A = 16'h3b16;
	B = 16'h39ea;
	ans_a = 16'hd6d2;
	#20
	A = 16'h3ceb;
	B = 16'hbc49;
	ans_a = 16'hd6e7;
	#20
	A = 16'h3e1a;
	B = 16'hba30;
	ans_a = 16'hd6fa;
	#20
	A = 16'hbf91;
	B = 16'hbbe4;
	ans_a = 16'hd6dc;
	#20
	A = 16'hb2d6;
	B = 16'hbe04;
	ans_a = 16'hd6d7;
	#20
	A = 16'h3e98;
	B = 16'hbd9c;
	ans_a = 16'hd6fc;
	#20
	A = 16'hbbe2;
	B = 16'h3250;
	ans_a = 16'hd6ff;
	#20
	A = 16'hbff3;
	B = 16'hb743;
	ans_a = 16'hd6f1;
	#20
	A = 16'h3e9a;
	B = 16'hbee1;
	ans_a = 16'hd71e;
	#20
	A = 16'h2ae7;
	B = 16'h3cc0;
	ans_a = 16'hd71d;
	#20
	A = 16'h382e;
	B = 16'hb6de;
	ans_a = 16'hd721;
	#20
	A = 16'hb94c;
	B = 16'h35d1;
	ans_a = 16'hd725;
	#20
	A = 16'h3a74;
	B = 16'hb55b;
	ans_a = 16'hd729;
	#20
	A = 16'h3fee;
	B = 16'h3a61;
	ans_a = 16'hd710;
	#20
	A = 16'haddc;
	B = 16'hb634;
	ans_a = 16'hd70f;
	#20
	A = 16'h3e5d;
	B = 16'hb429;
	ans_a = 16'hd716;
	#20
	A = 16'hbad0;
	B = 16'hb6ab;
	ans_a = 16'hd710;
	#20
	A = 16'h37de;
	B = 16'hafa2;
	ans_a = 16'hd711;
	#20
	A = 16'ha249;
	B = 16'h3c80;
	ans_a = 16'hd711;
	#20
	A = 16'h294e;
	B = 16'h38f4;
	ans_a = 16'hd711;
	#20
	A = 16'hbc7f;
	B = 16'hbe70;
	ans_a = 16'hd6f4;
	#20
	A = 16'h3e6a;
	B = 16'hbdf7;
	ans_a = 16'hd71a;
	#20
	A = 16'h39b9;
	B = 16'h3dcb;
	ans_a = 16'hd709;
	#20
	A = 16'h2dee;
	B = 16'h3e26;
	ans_a = 16'hd707;
	#20
	A = 16'hb1cd;
	B = 16'h3f4f;
	ans_a = 16'hd70c;
	#20
	A = 16'hbde1;
	B = 16'hb6c7;
	ans_a = 16'hd702;
	#20
	A = 16'hbc17;
	B = 16'h3c06;
	ans_a = 16'hd712;
	#20
	A = 16'hbc1b;
	B = 16'hbe5d;
	ans_a = 16'hd6f8;
	#20
	A = 16'h3d64;
	B = 16'h39a3;
	ans_a = 16'hd6e9;
	#20
	A = 16'h368d;
	B = 16'hbcb3;
	ans_a = 16'hd6f1;
	#20
	A = 16'h3426;
	B = 16'h3f27;
	ans_a = 16'hd6ea;
	#20
	A = 16'hbed2;
	B = 16'hbc14;
	ans_a = 16'hd6ce;
	#20
	A = 16'h3ceb;
	B = 16'h26d3;
	ans_a = 16'hd6cd;
	#20
	A = 16'hbc21;
	B = 16'hbfce;
	ans_a = 16'hd6ad;
	#20
	A = 16'hb255;
	B = 16'hb76f;
	ans_a = 16'hd6ac;
	#20
	A = 16'hbc56;
	B = 16'hbd7a;
	ans_a = 16'hd694;
	#20
	A = 16'hb87a;
	B = 16'h391c;
	ans_a = 16'hd69a;
	#20
	A = 16'hb995;
	B = 16'hbd56;
	ans_a = 16'hd68b;
	#20
	A = 16'h36f2;
	B = 16'h39db;
	ans_a = 16'hd686;
	#20
	A = 16'h3c03;
	B = 16'h3f76;
	ans_a = 16'hd668;
	#20
	A = 16'hbdaa;
	B = 16'hbd4f;
	ans_a = 16'hd64a;
	#20
	A = 16'hbd5b;
	B = 16'hb9d7;
	ans_a = 16'hd63a;
	#20
	A = 16'h3eba;
	B = 16'hb804;
	ans_a = 16'hd648;
	#20
	A = 16'hbdb3;
	B = 16'h3054;
	ans_a = 16'hd64b;
	#20
	A = 16'hbbb0;
	B = 16'h3922;
	ans_a = 16'hd655;
	#20
	A = 16'h3c5e;
	B = 16'hbd9d;
	ans_a = 16'hd66e;
	#20
	A = 16'hb998;
	B = 16'hb978;
	ans_a = 16'hd666;
	#20
	A = 16'h3258;
	B = 16'h3ad7;
	ans_a = 16'hd663;
	#20
	A = 16'h2f05;
	B = 16'h342f;
	ans_a = 16'hd663;
	#20
	A = 16'h3497;
	B = 16'h39e1;
	ans_a = 16'hd660;
	#20
	A = 16'h3985;
	B = 16'h380c;
	ans_a = 16'hd65a;
	#20
	A = 16'h3d7a;
	B = 16'h3c88;
	ans_a = 16'hd641;
	#20
	A = 16'hbcf5;
	B = 16'hbee4;
	ans_a = 16'hd61f;
	#20
	A = 16'hbf0f;
	B = 16'hbef8;
	ans_a = 16'hd5ee;
	#20
	A = 16'ha909;
	B = 16'ha4c7;
	ans_a = 16'hd5ee;
	#20
	A = 16'h1ef5;
	B = 16'hbcef;
	ans_a = 16'hd5ee;
	#20
	A = 16'h3f15;
	B = 16'h3d27;
	ans_a = 16'hd5ca;
	#20
	A = 16'hb64e;
	B = 16'h3ee4;
	ans_a = 16'hd5d5;
	#20
	A = 16'h3d7b;
	B = 16'hb756;
	ans_a = 16'hd5df;
	#20
	A = 16'hba35;
	B = 16'h32d6;
	ans_a = 16'hd5e2;
	#20
	A = 16'hbde7;
	B = 16'hada1;
	ans_a = 16'hd5e0;
	#20
	A = 16'h35fc;
	B = 16'h3c34;
	ans_a = 16'hd5da;
	#20
	A = 16'hbc9c;
	B = 16'h3ed9;
	ans_a = 16'hd5fa;
	#20
	A = 16'h3e2b;
	B = 16'h3ecc;
	ans_a = 16'hd5d0;
	#20
	A = 16'hbe9c;
	B = 16'hbdf8;
	ans_a = 16'hd5a9;
	#20
	A = 16'h3df5;
	B = 16'hbc6e;
	ans_a = 16'hd5c3;
	#20
	A = 16'hbee0;
	B = 16'h321a;
	ans_a = 16'hd5c8;
	#20
	A = 16'h3c17;
	B = 16'hb988;
	ans_a = 16'hd5d3;
	#20
	A = 16'hbc56;
	B = 16'hb574;
	ans_a = 16'hd5cd;
	#20
	A = 16'h3ea2;
	B = 16'hb775;
	ans_a = 16'hd5d9;
	#20
	A = 16'hac50;
	B = 16'h3c17;
	ans_a = 16'hd5da;
	#20
	A = 16'h3f94;
	B = 16'h3be1;
	ans_a = 16'hd5bc;
	#20
	A = 16'hbaab;
	B = 16'hbf31;
	ans_a = 16'hd5a4;
	#20
	A = 16'hbd1d;
	B = 16'h39ae;
	ans_a = 16'hd5b3;
	#20
	A = 16'h3d09;
	B = 16'h394a;
	ans_a = 16'hd5a6;
	#20
	A = 16'hbea7;
	B = 16'hbcdf;
	ans_a = 16'hd586;
	#20
	A = 16'h3d8a;
	B = 16'hb0a3;
	ans_a = 16'hd589;
	#20
	A = 16'hbb7d;
	B = 16'hba10;
	ans_a = 16'hd57e;
	#20
	A = 16'hbd49;
	B = 16'h3e13;
	ans_a = 16'hd59e;
	#20
	A = 16'ha9fa;
	B = 16'h38c0;
	ans_a = 16'hd59e;
	#20
	A = 16'h3c6d;
	B = 16'h3f5b;
	ans_a = 16'hd57d;
	#20
	A = 16'h2b7a;
	B = 16'h394f;
	ans_a = 16'hd57c;
	#20
	A = 16'hbd3e;
	B = 16'hbd87;
	ans_a = 16'hd55f;
	#20
	A = 16'h3e39;
	B = 16'hbdbc;
	ans_a = 16'hd583;
	#20
	A = 16'h3b75;
	B = 16'h3e0e;
	ans_a = 16'hd56c;
	#20
	A = 16'hbf70;
	B = 16'h3ad9;
	ans_a = 16'hd585;
	#20
	A = 16'hbd34;
	B = 16'hbede;
	ans_a = 16'hd561;
	#20
	A = 16'hb4f0;
	B = 16'hb42a;
	ans_a = 16'hd560;
	#20
	A = 16'h3e59;
	B = 16'hbe36;
	ans_a = 16'hd587;
	#20
	A = 16'hb416;
	B = 16'h2db8;
	ans_a = 16'hd587;
	#20
	A = 16'hbe95;
	B = 16'hb2bb;
	ans_a = 16'hd581;
	#20
	A = 16'h3c42;
	B = 16'hbc6f;
	ans_a = 16'hd594;
	#20
	A = 16'h3566;
	B = 16'h3e4f;
	ans_a = 16'hd58b;
	#20
	A = 16'h3f97;
	B = 16'hbdda;
	ans_a = 16'hd5b7;
	#20
	A = 16'hb450;
	B = 16'h3e0e;
	ans_a = 16'hd5be;
	#20
	A = 16'hb58c;
	B = 16'h3d76;
	ans_a = 16'hd5c6;
	#20
	A = 16'hb7ed;
	B = 16'h2ee7;
	ans_a = 16'hd5c7;
	#20
	A = 16'h3b9a;
	B = 16'h3dff;
	ans_a = 16'hd5b0;
	#20
	A = 16'hbf29;
	B = 16'h3e15;
	ans_a = 16'hd5dc;
	#20
	A = 16'hbcbd;
	B = 16'hb788;
	ans_a = 16'hd5d3;
	#20
	A = 16'h3fd4;
	B = 16'hbbe6;
	ans_a = 16'hd5f2;
	#20
	A = 16'h3d40;
	B = 16'hbad3;
	ans_a = 16'hd604;
	#20
	A = 16'hb028;
	B = 16'hbd7d;
	ans_a = 16'hd601;
	#20
	A = 16'h32fe;
	B = 16'h3afe;
	ans_a = 16'hd5fe;
	#20
	A = 16'h3dc1;
	B = 16'h33f3;
	ans_a = 16'hd5f8;
	#20
	A = 16'h3dd8;
	B = 16'h3bc3;
	ans_a = 16'hd5e1;
	#20
	A = 16'h3a2f;
	B = 16'ha5ef;
	ans_a = 16'hd5e1;
	#20
	A = 16'h2e4c;
	B = 16'h39df;
	ans_a = 16'hd5e0;
	#20
	A = 16'hbe16;
	B = 16'h3a11;
	ans_a = 16'hd5f2;
	#20
	A = 16'h3332;
	B = 16'hbf16;
	ans_a = 16'hd5f8;
	#20
	A = 16'h38e1;
	B = 16'h3cf2;
	ans_a = 16'hd5ec;
	#20
	A = 16'h31bf;
	B = 16'hbed9;
	ans_a = 16'hd5f1;
	#20
	A = 16'hb3df;
	B = 16'h3d91;
	ans_a = 16'hd5f6;
	#20
	A = 16'hbe23;
	B = 16'h3c76;
	ans_a = 16'hd611;
	#20
	A = 16'h343c;
	B = 16'hb889;
	ans_a = 16'hd613;
	#20
	A = 16'h3ab7;
	B = 16'hb78f;
	ans_a = 16'hd619;
	#20
	A = 16'hbcfe;
	B = 16'h3f44;
	ans_a = 16'hd63d;
	#20
	A = 16'hbab0;
	B = 16'h3c07;
	ans_a = 16'hd64a;
	#20
	A = 16'hbcfc;
	B = 16'h3c84;
	ans_a = 16'hd660;
	#20
	A = 16'h3e25;
	B = 16'hb72a;
	ans_a = 16'hd66b;
	#20
	A = 16'h3edf;
	B = 16'hbe71;
	ans_a = 16'hd697;
	#20
	A = 16'h379f;
	B = 16'ha86a;
	ans_a = 16'hd697;
	#20
	A = 16'h3ab2;
	B = 16'hbc6b;
	ans_a = 16'hd6a6;
	#20
	A = 16'h2e7a;
	B = 16'hbac3;
	ans_a = 16'hd6a7;
	#20
	A = 16'h3f47;
	B = 16'hbd96;
	ans_a = 16'hd6d0;
	#20
	A = 16'hbdff;
	B = 16'h3fe8;
	ans_a = 16'hd6ff;
	#20
	A = 16'h3d61;
	B = 16'h3f1a;
	ans_a = 16'hd6d9;
	#20
	A = 16'hb929;
	B = 16'h3a9d;
	ans_a = 16'hd6e2;
	#20
	A = 16'h3cae;
	B = 16'h3805;
	ans_a = 16'hd6d9;
	#20
	A = 16'h3835;
	B = 16'h307b;
	ans_a = 16'hd6d8;
	#20
	A = 16'h3efc;
	B = 16'h398f;
	ans_a = 16'hd6c5;
	#20
	A = 16'h3d9f;
	B = 16'hbf9c;
	ans_a = 16'hd6f0;
	#20
	A = 16'hb2fc;
	B = 16'hbe1a;
	ans_a = 16'hd6eb;
	#20
	A = 16'hb41a;
	B = 16'hba8b;
	ans_a = 16'hd6e8;
	#20
	A = 16'h38f7;
	B = 16'hb878;
	ans_a = 16'hd6ee;
	#20
	A = 16'hbb73;
	B = 16'h3bf4;
	ans_a = 16'hd6fd;
	#20
	A = 16'h3df4;
	B = 16'h3fff;
	ans_a = 16'hd6cd;
	#20
	A = 16'h30b2;
	B = 16'hbea4;
	ans_a = 16'hd6d1;
	#20
	A = 16'hb101;
	B = 16'h3496;
	ans_a = 16'hd6d2;
	#20
	A = 16'h3bef;
	B = 16'h3f98;
	ans_a = 16'hd6b4;
	#20
	A = 16'h3dcb;
	B = 16'h3dea;
	ans_a = 16'hd692;
	#20
	A = 16'hbd3a;
	B = 16'hbf81;
	ans_a = 16'hd66b;
	#20
	A = 16'h9e43;
	B = 16'hbfdb;
	ans_a = 16'hd66b;
	#20
	A = 16'hbd16;
	B = 16'hbc4f;
	ans_a = 16'hd655;
	#20
	A = 16'h3ba1;
	B = 16'hbd33;
	ans_a = 16'hd669;
	#20
	A = 16'h3f57;
	B = 16'h37c4;
	ans_a = 16'hd65b;
	#20
	A = 16'hbf7d;
	B = 16'hbce4;
	ans_a = 16'hd636;
	#20
	A = 16'h3d8f;
	B = 16'h3d4f;
	ans_a = 16'hd618;
	#20
	A = 16'hbae0;
	B = 16'h3406;
	ans_a = 16'hd61b;
	#20
	A = 16'h36cb;
	B = 16'hb893;
	ans_a = 16'hd61f;
	#20
	A = 16'hbe4f;
	B = 16'h3cca;
	ans_a = 16'hd63d;
	#20
	A = 16'h315e;
	B = 16'h33f9;
	ans_a = 16'hd63c;
	#20
	A = 16'hbc7d;
	B = 16'hbb49;
	ans_a = 16'hd62c;
	#20
	A = 16'h3b6c;
	B = 16'h32e1;
	ans_a = 16'hd629;
	#20
	A = 16'hbc7a;
	B = 16'h3df7;
	ans_a = 16'hd644;
	#20
	A = 16'hbf5c;
	B = 16'h300d;
	ans_a = 16'hd648;
	#20
	A = 16'hbea5;
	B = 16'h3643;
	ans_a = 16'hd652;
	#20
	A = 16'hbc89;
	B = 16'hba51;
	ans_a = 16'hd644;
	#20
	A = 16'hbcfe;
	B = 16'hbf1b;
	ans_a = 16'hd621;
	#20
	A = 16'hbd1c;
	B = 16'hbcf7;
	ans_a = 16'hd608;
	#20
	A = 16'hbb5d;
	B = 16'h3f5a;
	ans_a = 16'hd623;
	#20
	A = 16'hbf59;
	B = 16'h3ae5;
	ans_a = 16'hd63c;
	#20
	A = 16'hbdb3;
	B = 16'hbc14;
	ans_a = 16'hd625;
	#20
	A = 16'hbd92;
	B = 16'hbc90;
	ans_a = 16'hd60c;
	#20
	A = 16'h3a1b;
	B = 16'hbfce;
	ans_a = 16'hd624;
	#20
	A = 16'hba91;
	B = 16'hbf32;
	ans_a = 16'hd60c;
	#20
	A = 16'hb8a1;
	B = 16'h3eda;
	ans_a = 16'hd61c;
	#20
	A = 16'hb9a3;
	B = 16'hb3c6;
	ans_a = 16'hd619;
	#20
	A = 16'hbe0a;
	B = 16'h3e95;
	ans_a = 16'hd641;
	#20
	A = 16'h3466;
	B = 16'hb7db;
	ans_a = 16'hd643;
	#20
	A = 16'hbec7;
	B = 16'hb36e;
	ans_a = 16'hd63d;
	#20
	A = 16'hb97b;
	B = 16'h3fdf;
	ans_a = 16'hd653;
	#20
	A = 16'hb98d;
	B = 16'h34e7;
	ans_a = 16'hd656;
	#20
	A = 16'hbe9d;
	B = 16'h3d21;
	ans_a = 16'hd678;
	#20
	A = 16'hbccc;
	B = 16'hbd27;
	ans_a = 16'hd65f;
	#20
	A = 16'h32ef;
	B = 16'h3ffe;
	ans_a = 16'hd658;
	#20
	A = 16'h3afa;
	B = 16'hbdf7;
	ans_a = 16'hd66d;
	#20
	A = 16'hbccd;
	B = 16'h3875;
	ans_a = 16'hd678;
	#20
	A = 16'h3943;
	B = 16'hbca2;
	ans_a = 16'hd684;
	#20
	A = 16'hbd1f;
	B = 16'hb093;
	ans_a = 16'hd681;
	#20
	A = 16'hbe68;
	B = 16'h3d11;
	ans_a = 16'hd6a1;
	#20
	A = 16'h3b72;
	B = 16'hbef9;
	ans_a = 16'hd6bb;
	#20
	A = 16'h3454;
	B = 16'h3e12;
	ans_a = 16'hd6b4;
	#20
	A = 16'h3ea6;
	B = 16'hbf37;
	ans_a = 16'hd6e4;
	#20
	A = 16'h2a0b;
	B = 16'hbafa;
	ans_a = 16'hd6e5;
	#20
	A = 16'hbe5a;
	B = 16'h2a90;
	ans_a = 16'hd6e6;
	#20
	A = 16'hb716;
	B = 16'hbeeb;
	ans_a = 16'hd6da;
	#20
	A = 16'hb899;
	B = 16'hbce8;
	ans_a = 16'hd6cf;
	#20
	A = 16'h39cc;
	B = 16'h3c9c;
	ans_a = 16'hd6c2;
	#20
	A = 16'hbefc;
	B = 16'h368a;
	ans_a = 16'hd6cd;
	#20
	A = 16'h3698;
	B = 16'hbcbe;
	ans_a = 16'hd6d5;
	#20
	A = 16'hb8cb;
	B = 16'h3b37;
	ans_a = 16'hd6de;
	#20
	A = 16'h3f20;
	B = 16'hbed2;
	ans_a = 16'hd70f;
	#20
	A = 16'hb45e;
	B = 16'h3e0b;
	ans_a = 16'hd716;
	#20
	A = 16'hbc2e;
	B = 16'hbfca;
	ans_a = 16'hd6f5;
	#20
	A = 16'hae97;
	B = 16'hba46;
	ans_a = 16'hd6f4;
	#20
	A = 16'h3d81;
	B = 16'hbd06;
	ans_a = 16'hd710;
	#20
	A = 16'h351e;
	B = 16'h3714;
	ans_a = 16'hd70e;
	#20
	A = 16'hac40;
	B = 16'hbe61;
	ans_a = 16'hd70c;
	#20
	A = 16'hb9b7;
	B = 16'h3e64;
	ans_a = 16'hd71e;
	#20
	A = 16'hb714;
	B = 16'h3cef;
	ans_a = 16'hd727;
	#20
	A = 16'hbd85;
	B = 16'h396d;
	ans_a = 16'hd736;
	#20
	A = 16'hb9fb;
	B = 16'h3a5b;
	ans_a = 16'hd740;
	#20
	A = 16'hbbd6;
	B = 16'ha7bc;
	ans_a = 16'hd740;
	#20
	A = 16'hba4e;
	B = 16'hb5f2;
	ans_a = 16'hd73b;
	#20
	A = 16'hbdeb;
	B = 16'hbc04;
	ans_a = 16'hd723;
	#20
	A = 16'hae9a;
	B = 16'h3e9f;
	ans_a = 16'hd726;
	#20
	A = 16'hb78c;
	B = 16'h2865;
	ans_a = 16'hd726;
	#20
	A = 16'hb583;
	B = 16'h395f;
	ans_a = 16'hd72a;
	#20
	A = 16'h3dd2;
	B = 16'hb929;
	ans_a = 16'hd739;
	#20
	A = 16'hbdc2;
	B = 16'h3bfe;
	ans_a = 16'hd750;
	#20
	A = 16'h34a0;
	B = 16'hbd8c;
	ans_a = 16'hd756;
	#20
	A = 16'h3f4b;
	B = 16'hbb17;
	ans_a = 16'hd770;
	#20
	A = 16'hbf0d;
	B = 16'h3559;
	ans_a = 16'hd779;
	#20
	A = 16'h2ac3;
	B = 16'hb863;
	ans_a = 16'hd779;
	#20
	A = 16'hbda4;
	B = 16'haddd;
	ans_a = 16'hd777;
	#20
	A = 16'hb955;
	B = 16'hbf26;
	ans_a = 16'hd764;
	#20
	A = 16'h35b5;
	B = 16'hbc2b;
	ans_a = 16'hd76a;
	#20
	A = 16'hbbb6;
	B = 16'h3c0e;
	ans_a = 16'hd77a;
	#20
	A = 16'hbf74;
	B = 16'h3b5a;
	ans_a = 16'hd795;
	#20
	A = 16'hbcde;
	B = 16'hbb12;
	ans_a = 16'hd784;
	#20
	A = 16'h307b;
	B = 16'h3c2a;
	ans_a = 16'hd782;
	#20
	A = 16'hbd1c;
	B = 16'hbc64;
	ans_a = 16'hd76c;
	#20
	A = 16'hbcd5;
	B = 16'h3fdb;
	ans_a = 16'hd792;
	#20
	A = 16'hb598;
	B = 16'hbc4b;
	ans_a = 16'hd78c;
	#20
	A = 16'hbdbc;
	B = 16'h3e4c;
	ans_a = 16'hd7b0;
	#20
	A = 16'h3843;
	B = 16'hbf65;
	ans_a = 16'hd7c0;
	#20
	A = 16'hbc99;
	B = 16'h39d2;
	ans_a = 16'hd7cd;
	#20
	A = 16'h3c40;
	B = 16'h3dbb;
	ans_a = 16'hd7b5;
	#20
	A = 16'h3d9e;
	B = 16'hb0f8;
	ans_a = 16'hd7b8;
	#20
	A = 16'hbcc7;
	B = 16'hb7b6;
	ans_a = 16'hd7af;
	#20
	A = 16'h3725;
	B = 16'h3e32;
	ans_a = 16'hd7a4;
	#20
	A = 16'hb90c;
	B = 16'hba4c;
	ans_a = 16'hd79c;
	#20
	A = 16'h3b0a;
	B = 16'hba88;
	ans_a = 16'hd7a7;
	#20
	A = 16'hbbcd;
	B = 16'h3e98;
	ans_a = 16'hd7c1;
	#20
	A = 16'h3e46;
	B = 16'h3ece;
	ans_a = 16'hd796;
	#20
	A = 16'h3f0d;
	B = 16'h3a1b;
	ans_a = 16'hd780;
	#20
	A = 16'h3ac5;
	B = 16'hb5ec;
	ans_a = 16'hd785;
	#20
	A = 16'hbf0e;
	B = 16'h3584;
	ans_a = 16'hd78f;
	#20
	A = 16'h3f47;
	B = 16'hbbbe;
	ans_a = 16'hd7ab;
	#20
	A = 16'h3f58;
	B = 16'h3504;
	ans_a = 16'hd7a2;
	#20
	A = 16'hbe7f;
	B = 16'h3ecd;
	ans_a = 16'hd7ce;
	#20
	A = 16'hbea0;
	B = 16'hb97f;
	ans_a = 16'hd7bc;
	#20
	A = 16'hbf7b;
	B = 16'hb958;
	ans_a = 16'hd7a8;
	#20
	A = 16'hba1a;
	B = 16'h39a5;
	ans_a = 16'hd7b1;
	#20
	A = 16'hbdf8;
	B = 16'hbc79;
	ans_a = 16'hd796;
	#20
	A = 16'hb133;
	B = 16'hbf0e;
	ans_a = 16'hd791;
	#20
	A = 16'hb8c6;
	B = 16'hb89f;
	ans_a = 16'hd78b;
	#20
	A = 16'hbf53;
	B = 16'h3561;
	ans_a = 16'hd795;
	#20
	A = 16'hb8ec;
	B = 16'hbdf9;
	ans_a = 16'hd786;
	#20
	A = 16'hbf8d;
	B = 16'hbe53;
	ans_a = 16'hd756;
	#20
	A = 16'hbe44;
	B = 16'hbc1d;
	ans_a = 16'hd73c;
	#20
	A = 16'hbef4;
	B = 16'h3f1a;
	ans_a = 16'hd76d;
	#20
	A = 16'hb051;
	B = 16'hb864;
	ans_a = 16'hd76c;
	#20
	A = 16'h3bd8;
	B = 16'h3ef0;
	ans_a = 16'hd751;
	#20
	A = 16'h3be0;
	B = 16'hbe97;
	ans_a = 16'hd76b;
	#20
	A = 16'h3d04;
	B = 16'h3f4c;
	ans_a = 16'hd746;
	#20
	A = 16'hbefd;
	B = 16'h3d8f;
	ans_a = 16'hd76d;
	#20
	A = 16'h3e62;
	B = 16'hbae5;
	ans_a = 16'hd783;
	#20
	A = 16'hb502;
	B = 16'h3b9f;
	ans_a = 16'hd788;
	#20
	A = 16'hbc78;
	B = 16'h3ae6;
	ans_a = 16'hd797;
	#20
	A = 16'h3f08;
	B = 16'hb924;
	ans_a = 16'hd7a9;
	#20
	A = 16'h3d3b;
	B = 16'hbdc3;
	ans_a = 16'hd7c7;
	#20
	A = 16'hbc76;
	B = 16'hae46;
	ans_a = 16'hd7c5;
	#20
	A = 16'hbdb6;
	B = 16'h384d;
	ans_a = 16'hd7d1;
	#20
	A = 16'h38d3;
	B = 16'h3c95;
	ans_a = 16'hd7c6;
	#20
	A = 16'hbaa3;
	B = 16'h3f4b;
	ans_a = 16'hd7de;
	#20
	A = 16'h3586;
	B = 16'hbd08;
	ans_a = 16'hd7e5;
	#20
	A = 16'h2e86;
	B = 16'h3bb5;
	ans_a = 16'hd7e3;
	#20
	A = 16'h3fc3;
	B = 16'h3130;
	ans_a = 16'hd7de;
	#20
	A = 16'h27ec;
	B = 16'hbfc4;
	ans_a = 16'hd7df;
	#20
	A = 16'hbe08;
	B = 16'h3d93;
	ans_a = 16'hd800;
	#20
	A = 16'hbfd3;
	B = 16'h3049;
	ans_a = 16'hd802;
	#20
	A = 16'hacbd;
	B = 16'h3df8;
	ans_a = 16'hd803;
	#20
	A = 16'h3a47;
	B = 16'hba31;
	ans_a = 16'hd808;
	#20
	A = 16'h2e7a;
	B = 16'hbdb5;
	ans_a = 16'hd809;
	#20
	A = 16'h2b12;
	B = 16'h3cf6;
	ans_a = 16'hd808;
	#20
	A = 16'h39f0;
	B = 16'hb588;
	ans_a = 16'hd80a;
	#20
	A = 16'h2ebe;
	B = 16'hbefc;
	ans_a = 16'hd80b;
	#20
	A = 16'h3dc8;
	B = 16'h38ac;
	ans_a = 16'hd804;
	#20
	A = 16'h3d6b;
	B = 16'h3403;
	ans_a = 16'hd801;
	#20
	A = 16'h3ee6;
	B = 16'hbb05;
	ans_a = 16'hd80d;
	#20
	A = 16'h3e22;
	B = 16'h3a6b;
	ans_a = 16'hd803;
	#20
	A = 16'hbf33;
	B = 16'h3f7e;
	ans_a = 16'hd81e;
	#20
	A = 16'hbfa7;
	B = 16'hbf21;
	ans_a = 16'hd803;
	#20
	A = 16'h35c4;
	B = 16'h3c10;
	ans_a = 16'hd800;
	#20
	A = 16'h98b5;
	B = 16'h3018;
	ans_a = 16'hd800;
	#20
	A = 16'h3960;
	B = 16'hba68;
	ans_a = 16'hd804;
	#20
	A = 16'haed3;
	B = 16'h3ff9;
	ans_a = 16'hd806;
	#20
	A = 16'hb7d1;
	B = 16'ha84a;
	ans_a = 16'hd806;
	#20
	A = 16'h3df3;
	B = 16'hbf9e;
	ans_a = 16'hd81d;
	#20
	A = 16'hbc53;
	B = 16'h3fe5;
	ans_a = 16'hd82e;
	#20
	A = 16'hba03;
	B = 16'h3b80;
	ans_a = 16'hd834;
	#20
	A = 16'h3d65;
	B = 16'h3812;
	ans_a = 16'hd82f;
	#20
	A = 16'h3f0c;
	B = 16'h3913;
	ans_a = 16'hd826;
	#20
	A = 16'h38ad;
	B = 16'h3ddd;
	ans_a = 16'hd81f;
	#20
	A = 16'h3f8b;
	B = 16'h320d;
	ans_a = 16'hd81c;
	#20
	A = 16'h3924;
	B = 16'h3ca9;
	ans_a = 16'hd816;
	#20
	A = 16'h3ef5;
	B = 16'h3ed8;
	ans_a = 16'hd7fc;
	#20
	A = 16'hbd93;
	B = 16'h3e64;
	ans_a = 16'hd810;
	#20
	A = 16'h3ea4;
	B = 16'h3eee;
	ans_a = 16'hd7f2;
	#20
	A = 16'hb78b;
	B = 16'h3050;
	ans_a = 16'hd7f3;
	#20
	A = 16'h3b55;
	B = 16'hb75b;
	ans_a = 16'hd7fa;
	#20
	A = 16'h3eed;
	B = 16'hbb33;
	ans_a = 16'hd809;
	#20
	A = 16'h2d74;
	B = 16'hb6b3;
	ans_a = 16'hd809;
	#20
	A = 16'hbfb6;
	B = 16'h3d47;
	ans_a = 16'hd81d;
	#20
	A = 16'h3d92;
	B = 16'h3f3e;
	ans_a = 16'hd809;
	#20
	A = 16'h3c26;
	B = 16'h3fcf;
	ans_a = 16'hd7f2;
	#20
	A = 16'h3120;
	B = 16'h297e;
	ans_a = 16'hd7f2;
	#20
	A = 16'hbf98;
	B = 16'h3b26;
	ans_a = 16'hd807;
	#20
	A = 16'h3dd1;
	B = 16'h3923;
	ans_a = 16'hd7ff;
	#20
	A = 16'h3d90;
	B = 16'hbea8;
	ans_a = 16'hd812;
	#20
	A = 16'hbaab;
	B = 16'h3fc5;
	ans_a = 16'hd81f;
	#20
	A = 16'hbf87;
	B = 16'hb548;
	ans_a = 16'hd81a;
	#20
	A = 16'h36b6;
	B = 16'hbcd9;
	ans_a = 16'hd81e;
	#20
	A = 16'h3223;
	B = 16'h3032;
	ans_a = 16'hd81e;
	#20
	A = 16'hbebf;
	B = 16'hb5be;
	ans_a = 16'hd819;
	#20
	A = 16'h3f7e;
	B = 16'h3d8e;
	ans_a = 16'hd804;
	#20
	A = 16'h3df3;
	B = 16'h3905;
	ans_a = 16'hd7f9;
	#20
	A = 16'hbc4c;
	B = 16'h336f;
	ans_a = 16'hd7fd;
	#20
	A = 16'h3d28;
	B = 16'h355b;
	ans_a = 16'hd7f6;
	#20
	A = 16'h2be6;
	B = 16'hbe09;
	ans_a = 16'hd7f7;
	#20
	A = 16'h3c59;
	B = 16'h3ba3;
	ans_a = 16'hd7e6;
	#20
	A = 16'hb663;
	B = 16'h3b34;
	ans_a = 16'hd7ec;
	#20
	A = 16'h3b59;
	B = 16'hbb81;
	ans_a = 16'hd7fa;
	#20
	A = 16'hbd80;
	B = 16'h3aee;
	ans_a = 16'hd807;
	#20
	A = 16'h3e9e;
	B = 16'hb696;
	ans_a = 16'hd80c;
	#20
	A = 16'h3a4a;
	B = 16'ha40c;
	ans_a = 16'hd80c;
	#20
	A = 16'h3ab8;
	B = 16'h3905;
	ans_a = 16'hd808;
	#20
	A = 16'h3bab;
	B = 16'h3f53;
	ans_a = 16'hd7f4;
	#20
	A = 16'h3d68;
	B = 16'h3485;
	ans_a = 16'hd7ee;
	#20
	A = 16'h3f01;
	B = 16'hbdc6;
	ans_a = 16'hd80b;
	#20
	A = 16'hbe0e;
	B = 16'h3e9e;
	ans_a = 16'hd81f;
	#20
	A = 16'hb6da;
	B = 16'hbe6c;
	ans_a = 16'hd81a;
	#20
	A = 16'h3eb0;
	B = 16'h3fa7;
	ans_a = 16'hd800;
	#20
	A = 16'hb998;
	B = 16'h3f6f;
	ans_a = 16'hd80a;
	#20
	A = 16'h3976;
	B = 16'h3aed;
	ans_a = 16'hd805;
	#20
	A = 16'hbcde;
	B = 16'hbc63;
	ans_a = 16'hd7f5;
	#20
	A = 16'hbe89;
	B = 16'h3958;
	ans_a = 16'hd803;
	#20
	A = 16'hbf85;
	B = 16'hba48;
	ans_a = 16'hd7ee;
	#20
	A = 16'h3c19;
	B = 16'hb4bf;
	ans_a = 16'hd7f3;
	#20
	A = 16'h3bf8;
	B = 16'hbc5e;
	ans_a = 16'hd802;
	#20
	A = 16'h39a9;
	B = 16'h3d6f;
	ans_a = 16'hd7f5;
	#20
	A = 16'hbb18;
	B = 16'h38d3;
	ans_a = 16'hd7fe;
	#20
	A = 16'hbe52;
	B = 16'hb313;
	ans_a = 16'hd7f8;
	#20
	A = 16'h39a6;
	B = 16'hbc73;
	ans_a = 16'hd802;
	#20
	A = 16'hbe17;
	B = 16'hbf97;
	ans_a = 16'hd7d6;
	#20
	A = 16'h3b1e;
	B = 16'hbc08;
	ans_a = 16'hd7e4;
	#20
	A = 16'h33a7;
	B = 16'hbf92;
	ans_a = 16'hd7eb;
	#20
	A = 16'hbdb3;
	B = 16'h3fad;
	ans_a = 16'hd80b;
	#20
	A = 16'hbd98;
	B = 16'h2790;
	ans_a = 16'hd80b;
	#20
	A = 16'hbe9c;
	B = 16'h3d12;
	ans_a = 16'hd81c;
	#20
	A = 16'hbeff;
	B = 16'h3b9c;
	ans_a = 16'hd829;
	#20
	A = 16'h3d3c;
	B = 16'hbd61;
	ans_a = 16'hd837;
	#20
	A = 16'h3e82;
	B = 16'h3b39;
	ans_a = 16'hd82b;
	#20
	A = 16'hb018;
	B = 16'hbc1f;
	ans_a = 16'hd82a;
	#20
	A = 16'hbc91;
	B = 16'hb595;
	ans_a = 16'hd827;
	#20
	A = 16'h338c;
	B = 16'hbefa;
	ans_a = 16'hd82a;
	#20
	A = 16'h1d1e;
	B = 16'h3199;
	ans_a = 16'hd82a;
	#20
	A = 16'hb2a4;
	B = 16'h3935;
	ans_a = 16'hd82b;
	#20
	A = 16'hbeae;
	B = 16'h3adb;
	ans_a = 16'hd836;
	#20
	A = 16'hbab5;
	B = 16'hbbd2;
	ans_a = 16'hd82f;
	#20
	A = 16'h17ec;
	B = 16'h3841;
	ans_a = 16'hd82f;
	#20
	A = 16'hb2f6;
	B = 16'hbe66;
	ans_a = 16'hd82c;
	#20
	A = 16'h3af9;
	B = 16'h39d3;
	ans_a = 16'hd827;
	#20
	A = 16'hbd8c;
	B = 16'hb813;
	ans_a = 16'hd821;
	#20
	A = 16'hbeb0;
	B = 16'hbaf3;
	ans_a = 16'hd815;
	#20
	A = 16'h3cb2;
	B = 16'hbd64;
	ans_a = 16'hd822;
	#20
	A = 16'h3c31;
	B = 16'hb9bc;
	ans_a = 16'hd828;
	#20
	A = 16'hbf37;
	B = 16'h3f47;
	ans_a = 16'hd842;
	#20
	A = 16'hbc42;
	B = 16'h3a4e;
	ans_a = 16'hd849;
	#20
	A = 16'hae4c;
	B = 16'h3d88;
	ans_a = 16'hd84a;
	#20
	A = 16'h3799;
	B = 16'hbd26;
	ans_a = 16'hd84f;
	#20
	A = 16'h3797;
	B = 16'h3ccf;
	ans_a = 16'hd84a;
	#20
	A = 16'hb659;
	B = 16'h2810;
	ans_a = 16'hd84a;
	#20
	A = 16'h3b87;
	B = 16'h340c;
	ans_a = 16'hd848;
	#20
	A = 16'h3b7a;
	B = 16'h3e95;
	ans_a = 16'hd83c;
	#20
	A = 16'h3988;
	B = 16'h37aa;
	ans_a = 16'hd839;
	#20
	A = 16'hbc4e;
	B = 16'hbf89;
	ans_a = 16'hd829;
	#20
	A = 16'h2946;
	B = 16'hb788;
	ans_a = 16'hd829;
	#20
	A = 16'hb7b7;
	B = 16'hb38d;
	ans_a = 16'hd828;
	#20
	A = 16'h3aec;
	B = 16'h3e46;
	ans_a = 16'hd81d;
	#20
	A = 16'hbefb;
	B = 16'h34a4;
	ans_a = 16'hd821;
	#20
	A = 16'hb61f;
	B = 16'hbe15;
	ans_a = 16'hd81c;
	#20
	A = 16'h3f3e;
	B = 16'h3d0e;
	ans_a = 16'hd80a;
	#20
	A = 16'h3be3;
	B = 16'h3e8c;
	ans_a = 16'hd7fa;
	#20
	A = 16'h3fd2;
	B = 16'h34ff;
	ans_a = 16'hd7f0;
	#20
	A = 16'hbf6a;
	B = 16'h3ae7;
	ans_a = 16'hd805;
	#20
	A = 16'h3b92;
	B = 16'h3ede;
	ans_a = 16'hd7f0;
	#20
	A = 16'h3c36;
	B = 16'h3df1;
	ans_a = 16'hd7d7;
	#20
	A = 16'h3c8d;
	B = 16'hba2e;
	ans_a = 16'hd7e5;
	#20
	A = 16'hbe88;
	B = 16'h3c47;
	ans_a = 16'hd800;
	#20
	A = 16'hbb73;
	B = 16'hbbb7;
	ans_a = 16'hd7f2;
	#20
	A = 16'h3ce0;
	B = 16'h3e0e;
	ans_a = 16'hd7d4;
	#20
	A = 16'h3c38;
	B = 16'h3e3f;
	ans_a = 16'hd7ba;
	#20
	A = 16'hbccb;
	B = 16'h38e1;
	ans_a = 16'hd7c6;
	#20
	A = 16'hb72e;
	B = 16'hbcfd;
	ans_a = 16'hd7bd;
	#20
	A = 16'h3c9a;
	B = 16'hbe8e;
	ans_a = 16'hd7db;
	#20
	A = 16'h3646;
	B = 16'h38f6;
	ans_a = 16'hd7d7;
	#20
	A = 16'h351e;
	B = 16'hbae0;
	ans_a = 16'hd7db;
	#20
	A = 16'h3ff3;
	B = 16'h3fc5;
	ans_a = 16'hd79d;
	#20
	A = 16'h3e7b;
	B = 16'h2f76;
	ans_a = 16'hd79a;
	#20
	A = 16'h34e9;
	B = 16'h3f62;
	ans_a = 16'hd791;
	#20
	A = 16'hbfe2;
	B = 16'ha8fd;
	ans_a = 16'hd790;
	#20
	A = 16'hb8ae;
	B = 16'h3ded;
	ans_a = 16'hd79e;
	#20
	A = 16'hb5d6;
	B = 16'h3c23;
	ans_a = 16'hd7a4;
	#20
	A = 16'h3dd4;
	B = 16'hbec2;
	ans_a = 16'hd7cb;
	#20
	A = 16'hb476;
	B = 16'hbb58;
	ans_a = 16'hd7c7;
	#20
	A = 16'hbfbf;
	B = 16'hb89f;
	ans_a = 16'hd7b5;
	#20
	A = 16'h3923;
	B = 16'h3fc1;
	ans_a = 16'hd7a1;
	#20
	A = 16'h340f;
	B = 16'hb848;
	ans_a = 16'hd7a3;
	#20
	A = 16'hbe0f;
	B = 16'hbb64;
	ans_a = 16'hd78d;
	#20
	A = 16'h3ed7;
	B = 16'hb806;
	ans_a = 16'hd79b;
	#20
	A = 16'h326d;
	B = 16'h3f60;
	ans_a = 16'hd795;
	#20
	A = 16'h3b9c;
	B = 16'hb011;
	ans_a = 16'hd797;
	#20
	A = 16'hb870;
	B = 16'hba57;
	ans_a = 16'hd790;
	#20
	A = 16'h3e4e;
	B = 16'h35a7;
	ans_a = 16'hd787;
	#20
	A = 16'h3460;
	B = 16'ha983;
	ans_a = 16'hd787;
	#20
	A = 16'h3cf0;
	B = 16'hbe67;
	ans_a = 16'hd7a7;
	#20
	A = 16'hbe18;
	B = 16'h3eca;
	ans_a = 16'hd7d0;
	#20
	A = 16'hb74e;
	B = 16'hb044;
	ans_a = 16'hd7cf;
	#20
	A = 16'hbc4b;
	B = 16'hbe76;
	ans_a = 16'hd7b3;
	#20
	A = 16'hb176;
	B = 16'hbcd9;
	ans_a = 16'hd7b0;
	#20
	A = 16'h3d32;
	B = 16'hba80;
	ans_a = 16'hd7c1;
	#20
	A = 16'h3e45;
	B = 16'hbf41;
	ans_a = 16'hd7ee;
	#20
	A = 16'hbeb8;
	B = 16'hba6a;
	ans_a = 16'hd7d8;
	#20
	A = 16'h2b14;
	B = 16'h34ae;
	ans_a = 16'hd7d8;
	#20
	A = 16'h3df0;
	B = 16'hbe59;
	ans_a = 16'hd7fe;
	#20
	A = 16'hbbe8;
	B = 16'hb43e;
	ans_a = 16'hd7fa;
	#20
	A = 16'hb949;
	B = 16'h3582;
	ans_a = 16'hd7fe;
	#20
	A = 16'hbe4a;
	B = 16'h3ba3;
	ans_a = 16'hd80b;
	#20
	A = 16'h3c6a;
	B = 16'h3c7d;
	ans_a = 16'hd801;
	#20
	A = 16'hadb6;
	B = 16'hb555;
	ans_a = 16'hd801;
	#20
	A = 16'hbc37;
	B = 16'hb0cb;
	ans_a = 16'hd7ff;
	#20
	A = 16'hb342;
	B = 16'hba07;
	ans_a = 16'hd7fc;
	#20
	A = 16'h2d5e;
	B = 16'hb451;
	ans_a = 16'hd7fc;
	#20
	A = 16'hb555;
	B = 16'h3dbc;
	ans_a = 16'hd802;
	#20
	A = 16'hb0d0;
	B = 16'h3d87;
	ans_a = 16'hd804;
	#20
	A = 16'h3d0f;
	B = 16'hbf32;
	ans_a = 16'hd816;
	#20
	A = 16'hb3f1;
	B = 16'hb420;
	ans_a = 16'hd815;
	#20
	A = 16'h3ec2;
	B = 16'hba55;
	ans_a = 16'hd820;
	#20
	A = 16'h370e;
	B = 16'hbc51;
	ans_a = 16'hd824;
	#20
	A = 16'h3e20;
	B = 16'h38f1;
	ans_a = 16'hd81c;
	#20
	A = 16'h3c20;
	B = 16'hbc21;
	ans_a = 16'hd825;
	#20
	A = 16'ha820;
	B = 16'hbdc5;
	ans_a = 16'hd825;
	#20
	A = 16'ha818;
	B = 16'hbc7d;
	ans_a = 16'hd825;
	#20
	A = 16'hbc7c;
	B = 16'h3fec;
	ans_a = 16'hd837;
	#20
	A = 16'h3f4e;
	B = 16'h3c77;
	ans_a = 16'hd827;
	#20
	A = 16'hbefd;
	B = 16'hbc4a;
	ans_a = 16'hd818;
	#20
	A = 16'hb837;
	B = 16'hbeaf;
	ans_a = 16'hd811;
	#20
	A = 16'h35f2;
	B = 16'h39fa;
	ans_a = 16'hd80f;
	#20
	A = 16'ha863;
	B = 16'hba68;
	ans_a = 16'hd80f;
	#20
	A = 16'hbfe9;
	B = 16'had12;
	ans_a = 16'hd80e;
	#20
	A = 16'h3efa;
	B = 16'h3f3a;
	ans_a = 16'hd7ea;
	#20
	A = 16'h3dcf;
	B = 16'hbef7;
	ans_a = 16'hd809;
	#20
	A = 16'h3c24;
	B = 16'h3d09;
	ans_a = 16'hd7fd;
	#20
	A = 16'h2ef4;
	B = 16'h348e;
	ans_a = 16'hd7fd;
	#20
	A = 16'hbfec;
	B = 16'hbf82;
	ans_a = 16'hd7c2;
	#20
	A = 16'h39af;
	B = 16'h3a4c;
	ans_a = 16'hd7b9;
	#20
	A = 16'haf63;
	B = 16'hb317;
	ans_a = 16'hd7b9;
	#20
	A = 16'hb773;
	B = 16'h3dcf;
	ans_a = 16'hd7c4;
	#20
	A = 16'h3db0;
	B = 16'h3eb3;
	ans_a = 16'hd79e;
	#20
	A = 16'h3d49;
	B = 16'h3519;
	ans_a = 16'hd797;
	#20
	A = 16'h3fd3;
	B = 16'h3c19;
	ans_a = 16'hd777;
	#20
	A = 16'h3af9;
	B = 16'hbda0;
	ans_a = 16'hd78b;
	#20
	A = 16'hb3af;
	B = 16'h38c3;
	ans_a = 16'hd78d;
	#20
	A = 16'hbc5f;
	B = 16'hbb66;
	ans_a = 16'hd77d;
	#20
	A = 16'hbb2a;
	B = 16'h325a;
	ans_a = 16'hd780;
	#20
	A = 16'h3799;
	B = 16'h3cc8;
	ans_a = 16'hd777;
	#20
	A = 16'hab3c;
	B = 16'hbd91;
	ans_a = 16'hd776;
	#20
	A = 16'hb8f8;
	B = 16'hbef2;
	ans_a = 16'hd765;
	#20
	A = 16'h3e7d;
	B = 16'h3be0;
	ans_a = 16'hd74b;
	#20
	A = 16'h3eca;
	B = 16'hbc96;
	ans_a = 16'hd76a;
	#20
	A = 16'hbec6;
	B = 16'h3e4f;
	ans_a = 16'hd795;
	#20
	A = 16'hab46;
	B = 16'h2fb6;
	ans_a = 16'hd795;
	#20
	A = 16'hb7e0;
	B = 16'h2988;
	ans_a = 16'hd795;
	#20
	A = 16'h3f01;
	B = 16'hbe68;
	ans_a = 16'hd7c2;
	#20
	A = 16'h362f;
	B = 16'h3b0c;
	ans_a = 16'hd7bd;
	#20
	A = 16'hbed3;
	B = 16'h3de9;
	ans_a = 16'hd7e5;
	#20
	A = 16'hb61e;
	B = 16'h3eda;
	ans_a = 16'hd7ef;
	#20
	A = 16'hbd60;
	B = 16'h3a13;
	ans_a = 16'hd7ff;
	#20
	A = 16'h3fe8;
	B = 16'h3d5f;
	ans_a = 16'hd7d5;
	#20
	A = 16'h3f26;
	B = 16'h3813;
	ans_a = 16'hd7c6;
	#20
	A = 16'h3ead;
	B = 16'h3b4f;
	ans_a = 16'hd7ae;
	#20
	A = 16'h3d8c;
	B = 16'h302f;
	ans_a = 16'hd7ab;
	#20
	A = 16'h3cdb;
	B = 16'h3a98;
	ans_a = 16'hd79b;
	#20
	A = 16'hbf3c;
	B = 16'h35fa;
	ans_a = 16'hd7a6;
	#20
	A = 16'hbc92;
	B = 16'hb9fb;
	ans_a = 16'hd798;
	#20
	A = 16'h3c8f;
	B = 16'h3b60;
	ans_a = 16'hd787;
	#20
	A = 16'hbceb;
	B = 16'h3686;
	ans_a = 16'hd78f;
	#20
	A = 16'hbec1;
	B = 16'h3f59;
	ans_a = 16'hd7c1;
	#20
	A = 16'haf29;
	B = 16'hb6ef;
	ans_a = 16'hd7c0;
	#20
	A = 16'h3e1d;
	B = 16'hbcd0;
	ans_a = 16'hd7dd;
	#20
	A = 16'h3c2f;
	B = 16'h3408;
	ans_a = 16'hd7d9;
	#20
	A = 16'hbc1c;
	B = 16'h3994;
	ans_a = 16'hd7e4;
	#20
	A = 16'h3a2f;
	B = 16'hb8a6;
	ans_a = 16'hd7eb;
	#20
	A = 16'hb418;
	B = 16'h32ae;
	ans_a = 16'hd7ec;
	#20
	A = 16'hbd62;
	B = 16'hb9a5;
	ans_a = 16'hd7dd;
	#20
	A = 16'h3a15;
	B = 16'h3f03;
	ans_a = 16'hd7c8;
	#20
	A = 16'hbfe6;
	B = 16'h390f;
	ans_a = 16'hd7dc;
	#20
	A = 16'h3da1;
	B = 16'hbc88;
	ans_a = 16'hd7f6;
	#20
	A = 16'h3b62;
	B = 16'h3e25;
	ans_a = 16'hd7df;
	#20
	A = 16'hbc02;
	B = 16'h3c13;
	ans_a = 16'hd7ef;
	#20
	A = 16'h3c42;
	B = 16'hbdcf;
	ans_a = 16'hd804;
	#20
	A = 16'hbef8;
	B = 16'h39c7;
	ans_a = 16'hd80e;
	#20
	A = 16'h3644;
	B = 16'h393a;
	ans_a = 16'hd80c;
	#20
	A = 16'h3c75;
	B = 16'hbf4f;
	ans_a = 16'hd81c;
	#20
	A = 16'h36af;
	B = 16'h3dad;
	ans_a = 16'hd817;
	#20
	A = 16'hbc0b;
	B = 16'hb7f7;
	ans_a = 16'hd813;
	#20
	A = 16'h3957;
	B = 16'hbd6e;
	ans_a = 16'hd81a;
	#20
	A = 16'h3dd9;
	B = 16'hb8b5;
	ans_a = 16'hd821;
	#20
	A = 16'hbafc;
	B = 16'hbda0;
	ans_a = 16'hd817;
	#20
	A = 16'h3fdb;
	B = 16'h3c36;
	ans_a = 16'hd806;
	#20
	A = 16'hbaec;
	B = 16'hbd4f;
	ans_a = 16'hd7fa;
	#20
	A = 16'h390d;
	B = 16'h3a35;
	ans_a = 16'hd7f2;
	#20
	A = 16'h3f70;
	B = 16'hac8e;
	ans_a = 16'hd7f4;
	#20
	A = 16'h3d72;
	B = 16'h320c;
	ans_a = 16'hd7f0;
	#20
	A = 16'had47;
	B = 16'hbd82;
	ans_a = 16'hd7ee;
	#20
	A = 16'h37f8;
	B = 16'h3838;
	ans_a = 16'hd7ea;
	#20
	A = 16'h3c93;
	B = 16'h3cca;
	ans_a = 16'hd7d4;
	#20
	A = 16'h3d49;
	B = 16'h3679;
	ans_a = 16'hd7cb;
	#20
	A = 16'hb9bd;
	B = 16'h3e43;
	ans_a = 16'hd7dd;
	#20
	A = 16'h2ce8;
	B = 16'ha896;
	ans_a = 16'hd7dd;
	#20
	A = 16'hbc1a;
	B = 16'hb7fe;
	ans_a = 16'hd7d5;
	#20
	A = 16'hbf37;
	B = 16'h2488;
	ans_a = 16'hd7d6;
	#20
	A = 16'hba1d;
	B = 16'hb1a6;
	ans_a = 16'hd7d4;
	#20
	A = 16'hbdd3;
	B = 16'hbdc5;
	ans_a = 16'hd7b2;
	#20
	A = 16'hab31;
	B = 16'hbab5;
	ans_a = 16'hd7b1;
	#20
	A = 16'h3d9d;
	B = 16'hb934;
	ans_a = 16'hd7c0;
	#20
	A = 16'h3861;
	B = 16'hbe81;
	ans_a = 16'hd7ce;
	#20
	A = 16'h3b39;
	B = 16'h3918;
	ans_a = 16'hd7c5;
	#20
	A = 16'hbc12;
	B = 16'hbeee;
	ans_a = 16'hd7a9;
	#20
	A = 16'hbaff;
	B = 16'hb4b9;
	ans_a = 16'hd7a5;
	#20
	A = 16'hbe57;
	B = 16'hae58;
	ans_a = 16'hd7a2;
	#20
	A = 16'h3dee;
	B = 16'hb7ee;
	ans_a = 16'hd7ae;
	#20
	A = 16'h38cf;
	B = 16'hbc44;
	ans_a = 16'hd7b8;
	#20
	A = 16'h3f84;
	B = 16'ha514;
	ans_a = 16'hd7b9;
	#20
	A = 16'h3e61;
	B = 16'hbec3;
	ans_a = 16'hd7e4;
	#20
	A = 16'h3bf9;
	B = 16'hbe1a;
	ans_a = 16'hd7fc;
	#20
	A = 16'h3be6;
	B = 16'hbb9b;
	ans_a = 16'hd806;
	#20
	A = 16'h3de3;
	B = 16'h3d02;
	ans_a = 16'hd7ef;
	#20
	A = 16'h3d0c;
	B = 16'h383c;
	ans_a = 16'hd7e4;
	#20
	A = 16'hbd54;
	B = 16'h3595;
	ans_a = 16'hd7eb;
	#20
	A = 16'h3f83;
	B = 16'hbc6e;
	ans_a = 16'hd806;
	#20
	A = 16'h3e41;
	B = 16'h3e1f;
	ans_a = 16'hd7e6;
	#20
	A = 16'h3fd0;
	B = 16'h3eb8;
	ans_a = 16'hd7b2;
	#20
	A = 16'h3ccb;
	B = 16'hb884;
	ans_a = 16'hd7bd;
	#20
	A = 16'haae3;
	B = 16'h3fb2;
	ans_a = 16'hd7bf;
	#20
	A = 16'haa98;
	B = 16'h3c00;
	ans_a = 16'hd7c0;
	#20
	A = 16'hbde6;
	B = 16'hbf26;
	ans_a = 16'hd796;
	#20
	A = 16'h3c49;
	B = 16'h3ece;
	ans_a = 16'hd779;
	#20
	A = 16'hb5a8;
	B = 16'hbb2a;
	ans_a = 16'hd774;
	#20
	A = 16'hbae3;
	B = 16'hbaca;
	ans_a = 16'hd768;
	#20
	A = 16'h3e6a;
	B = 16'h3f0a;
	ans_a = 16'hd73b;
	#20
	A = 16'hb7fe;
	B = 16'h3dc5;
	ans_a = 16'hd747;
	#20
	A = 16'h30e6;
	B = 16'h3cde;
	ans_a = 16'hd744;
	#20
	A = 16'hbd61;
	B = 16'h3332;
	ans_a = 16'hd749;
	#20
	A = 16'hb87e;
	B = 16'h3c0d;
	ans_a = 16'hd752;
	#20
	A = 16'h3d8b;
	B = 16'hbe95;
	ans_a = 16'hd776;
	#20
	A = 16'h3e1c;
	B = 16'hbd75;
	ans_a = 16'hd797;
	#20
	A = 16'hadb6;
	B = 16'h3cf9;
	ans_a = 16'hd799;
	#20
	A = 16'h3394;
	B = 16'h3d4b;
	ans_a = 16'hd794;
	#20
	A = 16'ha6c1;
	B = 16'h3955;
	ans_a = 16'hd794;
	#20
	A = 16'hbb8b;
	B = 16'h3c2e;
	ans_a = 16'hd7a4;
	#20
	A = 16'hbfad;
	B = 16'hb4fc;
	ans_a = 16'hd79a;
	#20
	A = 16'h38c2;
	B = 16'hb3a5;
	ans_a = 16'hd79c;
	#20
	A = 16'h3c64;
	B = 16'h387a;
	ans_a = 16'hd792;
	#20
	A = 16'h3e7f;
	B = 16'h2d77;
	ans_a = 16'hd790;
	#20
	A = 16'h3c2a;
	B = 16'hbfd5;
	ans_a = 16'hd7b1;
	#20
	A = 16'h3eac;
	B = 16'haea7;
	ans_a = 16'hd7b4;
	#20
	A = 16'h36a3;
	B = 16'h3e96;
	ans_a = 16'hd7a9;
	#20
	A = 16'h3c01;
	B = 16'hb466;
	ans_a = 16'hd7ad;
	#20
	A = 16'hb64e;
	B = 16'h2e71;
	ans_a = 16'hd7ae;
	#20
	A = 16'hb181;
	B = 16'hb99e;
	ans_a = 16'hd7ac;
	#20
	A = 16'hbf64;
	B = 16'hbc85;
	ans_a = 16'hd78b;
	#20
	A = 16'hbc2c;
	B = 16'hba19;
	ans_a = 16'hd77e;
	#20
	A = 16'h38c8;
	B = 16'h3b10;
	ans_a = 16'hd776;
	#20
	A = 16'h3052;
	B = 16'h3df6;
	ans_a = 16'hd773;
	#20
	A = 16'h3afc;
	B = 16'h3e8f;
	ans_a = 16'hd75c;
	#20
	A = 16'hb1db;
	B = 16'hbb41;
	ans_a = 16'hd759;
	#20
	A = 16'hbdb2;
	B = 16'h3c1b;
	ans_a = 16'hd770;
	#20
	A = 16'h3940;
	B = 16'hadd5;
	ans_a = 16'hd771;
	#20
	A = 16'hbdaf;
	B = 16'hbfd1;
	ans_a = 16'hd745;
	#20
	A = 16'hba9a;
	B = 16'hab3a;
	ans_a = 16'hd744;
	#20
	A = 16'h3e6b;
	B = 16'h3d79;
	ans_a = 16'hd721;
	#20
	A = 16'hbcf9;
	B = 16'h3f5a;
	ans_a = 16'hd746;
	#20
	A = 16'h1737;
	B = 16'hbda4;
	ans_a = 16'hd746;
	#20
	A = 16'h37d2;
	B = 16'h3978;
	ans_a = 16'hd741;
	#20
	A = 16'hb699;
	B = 16'h3689;
	ans_a = 16'hd744;
	#20
	A = 16'hbd09;
	B = 16'h356a;
	ans_a = 16'hd74b;
	#20
	A = 16'h3cb2;
	B = 16'h3cbb;
	ans_a = 16'hd735;
	#20
	A = 16'hbc69;
	B = 16'hbd04;
	ans_a = 16'hd71f;
	#20
	A = 16'h2c56;
	B = 16'h179b;
	ans_a = 16'hd71f;
	#20
	A = 16'hbcca;
	B = 16'h3d53;
	ans_a = 16'hd738;
	#20
	A = 16'h3eae;
	B = 16'h3c7b;
	ans_a = 16'hd71a;
	#20
	A = 16'h3d09;
	B = 16'h3582;
	ans_a = 16'hd713;
	#20
	A = 16'hbc4c;
	B = 16'hb5cc;
	ans_a = 16'hd70d;
	#20
	A = 16'hbd78;
	B = 16'h3da5;
	ans_a = 16'hd72c;
	#20
	A = 16'hbe6d;
	B = 16'hbc6c;
	ans_a = 16'hd710;
	#20
	A = 16'hb3b9;
	B = 16'hbedc;
	ans_a = 16'hd709;
	#20
	A = 16'hb919;
	B = 16'hb1dc;
	ans_a = 16'hd707;
	#20
	A = 16'hbf16;
	B = 16'h3827;
	ans_a = 16'hd716;
	#20
	A = 16'hbc12;
	B = 16'h3676;
	ans_a = 16'hd71d;
	#20
	A = 16'hbe60;
	B = 16'h3baf;
	ans_a = 16'hd735;
	#20
	A = 16'h3c8c;
	B = 16'hbcf6;
	ans_a = 16'hd74c;
	#20
	A = 16'h2d72;
	B = 16'h3b78;
	ans_a = 16'hd74b;
	#20
	A = 16'hbca0;
	B = 16'hbb00;
	ans_a = 16'hd73b;
	#20
	A = 16'hb12e;
	B = 16'h3fef;
	ans_a = 16'hd740;
	#20
	A = 16'hb7d2;
	B = 16'h3eea;
	ans_a = 16'hd74e;
	#20
	A = 16'h398d;
	B = 16'h3fb4;
	ans_a = 16'hd739;
	#20
	A = 16'h3d36;
	B = 16'h3ec8;
	ans_a = 16'hd716;
	#20
	A = 16'hba26;
	B = 16'hbef9;
	ans_a = 16'hd701;
	#20
	A = 16'hb99a;
	B = 16'hbc93;
	ans_a = 16'hd6f4;
	#20
	A = 16'h3627;
	B = 16'hbf1a;
	ans_a = 16'hd6ff;
	#20
	A = 16'hbfdc;
	B = 16'hbc4a;
	ans_a = 16'hd6dd;
	#20
	A = 16'hb5ef;
	B = 16'h3be7;
	ans_a = 16'hd6e3;
	#20
	A = 16'h32b0;
	B = 16'h3048;
	ans_a = 16'hd6e3;
	#20
	A = 16'hb781;
	B = 16'hbc3a;
	ans_a = 16'hd6db;
	#20
	A = 16'h3a44;
	B = 16'hbc50;
	ans_a = 16'hd6e9;
	#20
	A = 16'hbf35;
	B = 16'h2f07;
	ans_a = 16'hd6ec;
	#20
	A = 16'hb15b;
	B = 16'hbad5;
	ans_a = 16'hd6ea;
	#20
	A = 16'hbfed;
	B = 16'h3a74;
	ans_a = 16'hd704;
	#20
	A = 16'h3e1f;
	B = 16'hb8d2;
	ans_a = 16'hd713;
	#20
	A = 16'hbd0b;
	B = 16'hb7ea;
	ans_a = 16'hd709;
	#20
	A = 16'h3ece;
	B = 16'hbc81;
	ans_a = 16'hd728;
	#20
	A = 16'hbd5b;
	B = 16'ha8a3;
	ans_a = 16'hd727;
	#20
	A = 16'h2fb2;
	B = 16'h3a60;
	ans_a = 16'hd725;
	#20
	A = 16'hbf9b;
	B = 16'hbff0;
	ans_a = 16'hd6e9;
	#20
	A = 16'hafbb;
	B = 16'h3ff8;
	ans_a = 16'hd6ed;
	#20
	A = 16'hb5db;
	B = 16'h3bd4;
	ans_a = 16'hd6f3;
	#20
	A = 16'h2be7;
	B = 16'h31d1;
	ans_a = 16'hd6f3;
	#20
	A = 16'h3eb9;
	B = 16'h3c69;
	ans_a = 16'hd6d5;
	#20
	A = 16'hb875;
	B = 16'h3a62;
	ans_a = 16'hd6dc;
	#20
	A = 16'h3e58;
	B = 16'h3ec5;
	ans_a = 16'hd6b1;
	#20
	A = 16'hb933;
	B = 16'hbf4e;
	ans_a = 16'hd69e;
	#20
	A = 16'h38b5;
	B = 16'hbcd4;
	ans_a = 16'hd6a9;
	#20
	A = 16'haf0f;
	B = 16'h3d48;
	ans_a = 16'hd6ab;
	#20
	A = 16'hb341;
	B = 16'h395e;
	ans_a = 16'hd6ad;
	#20
	A = 16'hbcd6;
	B = 16'h3e3f;
	ans_a = 16'hd6cb;
	#20
	A = 16'h3c16;
	B = 16'h35bd;
	ans_a = 16'hd6c5;
	#20
	A = 16'hbc7c;
	B = 16'h323a;
	ans_a = 16'hd6c8;
	#20
	A = 16'h3494;
	B = 16'hbf49;
	ans_a = 16'hd6d0;
	#20
	A = 16'h3758;
	B = 16'h34de;
	ans_a = 16'hd6ce;
	#20
	A = 16'h3ea9;
	B = 16'h3406;
	ans_a = 16'hd6c7;
	#20
	A = 16'h3b7e;
	B = 16'hb4e9;
	ans_a = 16'hd6cc;
	#20
	A = 16'hbac7;
	B = 16'h3d9c;
	ans_a = 16'hd6df;
	#20
	A = 16'hbdeb;
	B = 16'h3f04;
	ans_a = 16'hd709;
	#20
	A = 16'h3cc3;
	B = 16'h3b0e;
	ans_a = 16'hd6f8;
	#20
	A = 16'h3df3;
	B = 16'h3ee8;
	ans_a = 16'hd6cf;
	#20
	A = 16'h9f4e;
	B = 16'h3e4f;
	ans_a = 16'hd6cf;
	#20
	A = 16'h3d83;
	B = 16'h3674;
	ans_a = 16'hd6c6;
	#20
	A = 16'h3d36;
	B = 16'hb712;
	ans_a = 16'hd6cf;
	#20
	A = 16'h372d;
	B = 16'hbb9c;
	ans_a = 16'hd6d6;
	#20
	A = 16'h3f5c;
	B = 16'hbc64;
	ans_a = 16'hd6f6;
	#20
	A = 16'h3982;
	B = 16'hb582;
	ans_a = 16'hd6fa;
	#20
	A = 16'h3b1a;
	B = 16'h3e9c;
	ans_a = 16'hd6e3;
	#20
	A = 16'h3ea9;
	B = 16'h35c8;
	ans_a = 16'hd6d9;
	#20
	A = 16'hbc67;
	B = 16'h38ca;
	ans_a = 16'hd6e4;
	#20
	A = 16'h3e6c;
	B = 16'hbe3a;
	ans_a = 16'hd70c;
	#20
	A = 16'hba30;
	B = 16'h368c;
	ans_a = 16'hd711;
	#20
	A = 16'h388c;
	B = 16'hbcd5;
	ans_a = 16'hd71c;
	#20
	A = 16'h366b;
	B = 16'hb83e;
	ans_a = 16'hd71f;
	#20
	A = 16'hb94b;
	B = 16'h3cf6;
	ans_a = 16'hd72c;
	#20
	A = 16'h357f;
	B = 16'hae63;
	ans_a = 16'hd72d;
	#20
	A = 16'h3922;
	B = 16'h3901;
	ans_a = 16'hd727;
	#20
	A = 16'hbfea;
	B = 16'h35db;
	ans_a = 16'hd733;
	#20
	A = 16'h3af9;
	B = 16'hb6dc;
	ans_a = 16'hd739;
	#20
	A = 16'h38a1;
	B = 16'hb867;
	ans_a = 16'hd73e;
	#20
	A = 16'hb204;
	B = 16'h346f;
	ans_a = 16'hd73f;
	#20
	A = 16'hbc4b;
	B = 16'h3659;
	ans_a = 16'hd746;
	#20
	A = 16'hbb80;
	B = 16'h3edf;
	ans_a = 16'hd760;
	#20
	A = 16'h3f70;
	B = 16'h39b7;
	ans_a = 16'hd74b;
	#20
	A = 16'hbb81;
	B = 16'haf40;
	ans_a = 16'hd749;
	#20
	A = 16'had36;
	B = 16'hbfb3;
	ans_a = 16'hd746;
	#20
	A = 16'h3ab3;
	B = 16'h3dd6;
	ans_a = 16'hd732;
	#20
	A = 16'haed5;
	B = 16'hb308;
	ans_a = 16'hd732;
	#20
	A = 16'h3e0b;
	B = 16'haeb8;
	ans_a = 16'hd735;
	#20
	A = 16'hb912;
	B = 16'hbfc3;
	ans_a = 16'hd721;
	#20
	A = 16'h3ff5;
	B = 16'hbc7b;
	ans_a = 16'hd745;
	#20
	A = 16'h3579;
	B = 16'hbf87;
	ans_a = 16'hd74f;
	#20
	A = 16'hbfc4;
	B = 16'h372f;
	ans_a = 16'hd75d;
	#20
	A = 16'h3e65;
	B = 16'hb43d;
	ans_a = 16'hd764;
	#20
	A = 16'h39e2;
	B = 16'h2fb4;
	ans_a = 16'hd763;
	#20
	A = 16'hbfb9;
	B = 16'hbd4f;
	ans_a = 16'hd73a;
	#20
	A = 16'h3ba0;
	B = 16'h3e25;
	ans_a = 16'hd723;
	#20
	A = 16'h3362;
	B = 16'hb830;
	ans_a = 16'hd725;
	#20
	A = 16'hbf0d;
	B = 16'hb87d;
	ans_a = 16'hd715;
	#20
	A = 16'hb902;
	B = 16'h2eed;
	ans_a = 16'hd716;
	#20
	A = 16'hbf5c;
	B = 16'h3c91;
	ans_a = 16'hd738;
	#20
	A = 16'hb2ef;
	B = 16'hbb8a;
	ans_a = 16'hd735;
	#20
	A = 16'h3e34;
	B = 16'h3807;
	ans_a = 16'hd729;
	#20
	A = 16'h3e45;
	B = 16'hae6d;
	ans_a = 16'hd72c;
	#20
	A = 16'hba3f;
	B = 16'h385b;
	ans_a = 16'hd733;
	#20
	A = 16'h3e96;
	B = 16'hb55b;
	ans_a = 16'hd73c;
	#20
	A = 16'hbd87;
	B = 16'h39b5;
	ans_a = 16'hd74c;
	#20
	A = 16'h3d34;
	B = 16'h3a1a;
	ans_a = 16'hd73c;
	#20
	A = 16'hacbf;
	B = 16'h3b79;
	ans_a = 16'hd73d;
	#20
	A = 16'h38c0;
	B = 16'h3a88;
	ans_a = 16'hd735;
	#20
	A = 16'h3a3e;
	B = 16'hbf80;
	ans_a = 16'hd74c;
	#20
	A = 16'hbc69;
	B = 16'h3fcf;
	ans_a = 16'hd76e;
	#20
	A = 16'hb874;
	B = 16'h36aa;
	ans_a = 16'hd772;
	#20
	A = 16'hbc8c;
	B = 16'h3003;
	ans_a = 16'hd774;
	#20
	A = 16'hbb1e;
	B = 16'h3f96;
	ans_a = 16'hd78f;
	#20
	A = 16'hbc3f;
	B = 16'hb597;
	ans_a = 16'hd789;
	#20
	A = 16'hbc37;
	B = 16'h3e20;
	ans_a = 16'hd7a3;
	#20
	A = 16'hbc9e;
	B = 16'h3caf;
	ans_a = 16'hd7b9;
	#20
	A = 16'h3c2c;
	B = 16'hb1fc;
	ans_a = 16'hd7bc;
	#20
	A = 16'h3f94;
	B = 16'h3959;
	ans_a = 16'hd7a8;
	#20
	A = 16'hac99;
	B = 16'h3e66;
	ans_a = 16'hd7aa;
	#20
	A = 16'h3dd6;
	B = 16'h3bc4;
	ans_a = 16'hd793;
	#20
	A = 16'hbce1;
	B = 16'h364c;
	ans_a = 16'hd79b;
	#20
	A = 16'h3eb5;
	B = 16'hb877;
	ans_a = 16'hd7aa;
	#20
	A = 16'hbb0a;
	B = 16'h396c;
	ans_a = 16'hd7b4;
	#20
	A = 16'h3aca;
	B = 16'hb8f3;
	ans_a = 16'hd7bc;
	#20
	A = 16'h34ce;
	B = 16'hbd6d;
	ans_a = 16'hd7c3;
	#20
	A = 16'h3665;
	B = 16'ha466;
	ans_a = 16'hd7c3;
	#20
	A = 16'hb561;
	B = 16'h3c23;
	ans_a = 16'hd7c9;
	#20
	A = 16'hb9c6;
	B = 16'h28ad;
	ans_a = 16'hd7c9;
	#20
	A = 16'hbee6;
	B = 16'h32a8;
	ans_a = 16'hd7cf;
	#20
	A = 16'hbd5f;
	B = 16'hbf81;
	ans_a = 16'hd7a7;
	#20
	A = 16'hb7eb;
	B = 16'hbac8;
	ans_a = 16'hd7a0;
	#20
	A = 16'h3140;
	B = 16'h3ce0;
	ans_a = 16'hd79d;
	#20
	A = 16'hbf74;
	B = 16'h382f;
	ans_a = 16'hd7ad;
	#20
	A = 16'hb91a;
	B = 16'h3dad;
	ans_a = 16'hd7bb;
	#20
	A = 16'h374c;
	B = 16'hbf6e;
	ans_a = 16'hd7c9;
	#20
	A = 16'h3607;
	B = 16'h3f9d;
	ans_a = 16'hd7be;
	#20
	A = 16'h3af3;
	B = 16'hb8b5;
	ans_a = 16'hd7c6;
	#20
	A = 16'h3c47;
	B = 16'h39d4;
	ans_a = 16'hd7ba;
	#20
	A = 16'hb745;
	B = 16'hbfbc;
	ans_a = 16'hd7ac;
	#20
	A = 16'hbecc;
	B = 16'hbbc5;
	ans_a = 16'hd792;
	#20
	A = 16'hbbe3;
	B = 16'h3efa;
	ans_a = 16'hd7ae;
	#20
	A = 16'h3a2d;
	B = 16'hb522;
	ans_a = 16'hd7b2;
	#20
	A = 16'hbdbd;
	B = 16'hb911;
	ans_a = 16'hd7a3;
	#20
	A = 16'hbc91;
	B = 16'hbe13;
	ans_a = 16'hd787;
	#20
	A = 16'hbf7d;
	B = 16'h377c;
	ans_a = 16'hd795;
	#20
	A = 16'hb4e5;
	B = 16'hbd43;
	ans_a = 16'hd78f;
	#20
	A = 16'hac42;
	B = 16'h3703;
	ans_a = 16'hd78f;
	#20
	A = 16'h3854;
	B = 16'hbd9f;
	ans_a = 16'hd79b;
	#20
	A = 16'hbc42;
	B = 16'h3eb4;
	ans_a = 16'hd7b8;
	#20
	A = 16'h367c;
	B = 16'hbabb;
	ans_a = 16'hd7bd;
	#20
	A = 16'hbe8d;
	B = 16'h3b54;
	ans_a = 16'hd7d5;
	#20
	A = 16'hbb04;
	B = 16'h3d98;
	ans_a = 16'hd7e9;
	#20
	A = 16'hb8a6;
	B = 16'h3fd5;
	ans_a = 16'hd7fb;
	#20
	A = 16'hbc3f;
	B = 16'hac47;
	ans_a = 16'hd7fa;
	#20
	A = 16'h3bcc;
	B = 16'hbf1e;
	ans_a = 16'hd80b;
	#20
	A = 16'hbde2;
	B = 16'hbd71;
	ans_a = 16'hd7f6;
	#20
	A = 16'h38fc;
	B = 16'h32a0;
	ans_a = 16'hd7f4;
	#20
	A = 16'h3bd0;
	B = 16'h3cb8;
	ans_a = 16'hd7e2;
	#20
	A = 16'h39d7;
	B = 16'h3007;
	ans_a = 16'hd7e1;
	#20
	A = 16'h3540;
	B = 16'h2ec9;
	ans_a = 16'hd7e0;
	#20
	A = 16'h3e40;
	B = 16'h3ed7;
	ans_a = 16'hd7b5;
	#20
	A = 16'hbbdd;
	B = 16'hbb86;
	ans_a = 16'hd7a6;
	#20
	A = 16'hbdfa;
	B = 16'ha805;
	ans_a = 16'hd7a5;
	#20
	A = 16'hbde9;
	B = 16'h3e8a;
	ans_a = 16'hd7cc;
	#20
	A = 16'h39cc;
	B = 16'h3e47;
	ans_a = 16'hd7ba;
	#20
	A = 16'hbc0b;
	B = 16'hb1cd;
	ans_a = 16'hd7b7;
	#20
	A = 16'h38cd;
	B = 16'hb728;
	ans_a = 16'hd7bb;
	#20
	A = 16'h3f5d;
	B = 16'hbf8d;
	ans_a = 16'hd7f3;
	#20
	A = 16'hbf96;
	B = 16'h35da;
	ans_a = 16'hd7fe;
	#20
	A = 16'h3c2d;
	B = 16'h3c74;
	ans_a = 16'hd7eb;
	#20
	A = 16'hba34;
	B = 16'h35c4;
	ans_a = 16'hd7ef;
	#20
	A = 16'h3efd;
	B = 16'h3db7;
	ans_a = 16'hd7c7;
	#20
	A = 16'h3fcd;
	B = 16'h3b98;
	ans_a = 16'hd7a9;
	#20
	A = 16'h3d4e;
	B = 16'hbdf7;
	ans_a = 16'hd7c9;
	#20
	A = 16'h3fcf;
	B = 16'h3da7;
	ans_a = 16'hd79d;
	#20
	A = 16'hbf02;
	B = 16'hb819;
	ans_a = 16'hd78f;
	#20
	A = 16'hb525;
	B = 16'hbc9c;
	ans_a = 16'hd789;
	#20
	A = 16'hbd79;
	B = 16'hb95b;
	ans_a = 16'hd77a;
	#20
	A = 16'h3d12;
	B = 16'hbecf;
	ans_a = 16'hd79d;
	#20
	A = 16'hbde3;
	B = 16'h2f52;
	ans_a = 16'hd7a0;
	#20
	A = 16'hb772;
	B = 16'hbd79;
	ans_a = 16'hd796;
	#20
	A = 16'hbb82;
	B = 16'hbf33;
	ans_a = 16'hd77b;
	#20
	A = 16'hbf10;
	B = 16'hbbea;
	ans_a = 16'hd75f;
	#20
	A = 16'h37d8;
	B = 16'hacca;
	ans_a = 16'hd760;
	#20
	A = 16'hbe47;
	B = 16'hab01;
	ans_a = 16'hd75f;
	#20
	A = 16'hbd11;
	B = 16'hb4b0;
	ans_a = 16'hd759;
	#20
	A = 16'hb89d;
	B = 16'h330b;
	ans_a = 16'hd75b;
	#20
	A = 16'h3abe;
	B = 16'h3d5e;
	ans_a = 16'hd749;
	#20
	A = 16'h3b00;
	B = 16'hb889;
	ans_a = 16'hd751;
	#20
	A = 16'hbedd;
	B = 16'hbb57;
	ans_a = 16'hd738;
	#20
	A = 16'hbf07;
	B = 16'hb7e8;
	ans_a = 16'hd72a;
	#20
	A = 16'h3cf5;
	B = 16'h3558;
	ans_a = 16'hd723;
	#20
	A = 16'hbe5d;
	B = 16'haeb3;
	ans_a = 16'hd720;
	#20
	A = 16'hbe4d;
	B = 16'hb34f;
	ans_a = 16'hd71a;
	#20
	A = 16'h3ae6;
	B = 16'hbff0;
	ans_a = 16'hd735;
	#20
	A = 16'h3fd6;
	B = 16'hba41;
	ans_a = 16'hd74e;
	#20
	A = 16'h33fe;
	B = 16'hbd68;
	ans_a = 16'hd753;
	#20
	A = 16'hbe5b;
	B = 16'hbc5b;
	ans_a = 16'hd737;
	#20
	A = 16'h3c98;
	B = 16'hb925;
	ans_a = 16'hd743;
	#20
	A = 16'hbdac;
	B = 16'hbd45;
	ans_a = 16'hd725;
	#20
	A = 16'h3edb;
	B = 16'hb919;
	ans_a = 16'hd736;
	#20
	A = 16'h3d74;
	B = 16'h3dca;
	ans_a = 16'hd716;
	#20
	A = 16'hbf45;
	B = 16'h3b15;
	ans_a = 16'hd730;
	#20
	A = 16'h3e54;
	B = 16'h3fd8;
	ans_a = 16'hd6fe;
	#20
	A = 16'hb612;
	B = 16'h39a8;
	ans_a = 16'hd702;
	#20
	A = 16'h38c9;
	B = 16'hbbf7;
	ans_a = 16'hd70c;
	#20
	A = 16'h3f53;
	B = 16'hb4d1;
	ans_a = 16'hd715;
	#20
	A = 16'hbfdd;
	B = 16'hacd5;
	ans_a = 16'hd713;
	#20
	A = 16'h3f06;
	B = 16'h375d;
	ans_a = 16'hd706;
	#20
	A = 16'h3f25;
	B = 16'hbdaa;
	ans_a = 16'hd72e;
	#20
	A = 16'h3e05;
	B = 16'h3cac;
	ans_a = 16'hd712;
	#20
	A = 16'hbbf0;
	B = 16'h3bd6;
	ans_a = 16'hd722;
	#20
	A = 16'h3e69;
	B = 16'h395c;
	ans_a = 16'hd711;
	#20
	A = 16'hbc64;
	B = 16'hba05;
	ans_a = 16'hd704;
	#20
	A = 16'h3c17;
	B = 16'hbd2a;
	ans_a = 16'hd719;
	#20
	A = 16'h2c6c;
	B = 16'h3eb0;
	ans_a = 16'hd717;
	#20
	A = 16'hb318;
	B = 16'hbfe2;
	ans_a = 16'hd710;
	#20
	A = 16'h3ad4;
	B = 16'hbfe9;
	ans_a = 16'hd72b;
	#20
	A = 16'h34ee;
	B = 16'hb41c;
	ans_a = 16'hd72c;
	#20
	A = 16'h3ef7;
	B = 16'hbbeb;
	ans_a = 16'hd748;
	#20
	A = 16'hbe8f;
	B = 16'h3829;
	ans_a = 16'hd756;
	#20
	A = 16'h2cfc;
	B = 16'h3bd6;
	ans_a = 16'hd755;
	#20
	A = 16'hb913;
	B = 16'hbab5;
	ans_a = 16'hd74c;
	#20
	A = 16'hbee1;
	B = 16'hbd4a;
	ans_a = 16'hd728;
	#20
	A = 16'hb345;
	B = 16'hbeba;
	ans_a = 16'hd722;
	#20
	A = 16'hbf5c;
	B = 16'h39d6;
	ans_a = 16'hd737;
	#20
	A = 16'h3b83;
	B = 16'h3e69;
	ans_a = 16'hd71f;
	#20
	A = 16'h3ed3;
	B = 16'hb76f;
	ans_a = 16'hd72c;
	#20
	A = 16'h3354;
	B = 16'hbcf3;
	ans_a = 16'hd731;
	#20
	A = 16'h37c9;
	B = 16'hb779;
	ans_a = 16'hd735;
	#20
	A = 16'h38cb;
	B = 16'hb550;
	ans_a = 16'hd738;
	#20
	A = 16'hb549;
	B = 16'hbb0c;
	ans_a = 16'hd733;
	#20
	A = 16'h3ebf;
	B = 16'hbe26;
	ans_a = 16'hd75c;
	#20
	A = 16'hbd43;
	B = 16'h3e98;
	ans_a = 16'hd77f;
	#20
	A = 16'h3379;
	B = 16'hbfc1;
	ans_a = 16'hd786;
	#20
	A = 16'h3835;
	B = 16'hbde4;
	ans_a = 16'hd792;
	#20
	A = 16'h3968;
	B = 16'h3f7e;
	ans_a = 16'hd77e;
	#20
	A = 16'hbd27;
	B = 16'hb1f3;
	ans_a = 16'hd77a;
	#20
	A = 16'ha921;
	B = 16'hb5e0;
	ans_a = 16'hd77a;
	#20
	A = 16'h3d08;
	B = 16'h3728;
	ans_a = 16'hd771;
	#20
	A = 16'h3e02;
	B = 16'hb8fe;
	ans_a = 16'hd780;
	#20
	A = 16'h3ee2;
	B = 16'hbc7a;
	ans_a = 16'hd79f;
	#20
	A = 16'h3982;
	B = 16'h3829;
	ans_a = 16'hd799;
	#20
	A = 16'h3f41;
	B = 16'hbfcd;
	ans_a = 16'hd7d2;
	#20
	A = 16'hafab;
	B = 16'hb818;
	ans_a = 16'hd7d1;
	#20
	A = 16'h3ed4;
	B = 16'hbcd7;
	ans_a = 16'hd7f2;
	#20
	A = 16'hb537;
	B = 16'h3f5b;
	ans_a = 16'hd7fc;
	#20
	A = 16'hbeb6;
	B = 16'hbd40;
	ans_a = 16'hd7d9;
	#20
	A = 16'hb1d5;
	B = 16'h3dd5;
	ans_a = 16'hd7dd;
	#20
	A = 16'h3ce6;
	B = 16'h3f6f;
	ans_a = 16'hd7b9;
	#20
	A = 16'hbdd1;
	B = 16'hbf63;
	ans_a = 16'hd78e;
	#20
	A = 16'hbe5a;
	B = 16'hbced;
	ans_a = 16'hd76f;
	#20
	A = 16'h3f78;
	B = 16'h375f;
	ans_a = 16'hd761;
	#20
	A = 16'hbe4d;
	B = 16'h3ee7;
	ans_a = 16'hd78c;
	#20
	A = 16'hb734;
	B = 16'h356b;
	ans_a = 16'hd78e;
	#20
	A = 16'hb82f;
	B = 16'hbf55;
	ans_a = 16'hd77f;
	#20
	A = 16'hbf01;
	B = 16'h3d9a;
	ans_a = 16'hd7a6;
	#20
	A = 16'hbd34;
	B = 16'h3540;
	ans_a = 16'hd7ad;
	#20
	A = 16'hbce8;
	B = 16'h3af5;
	ans_a = 16'hd7be;
	#20
	A = 16'hbe22;
	B = 16'h3b29;
	ans_a = 16'hd7d4;
	#20
	A = 16'hb4e5;
	B = 16'h3d6f;
	ans_a = 16'hd7db;
	#20
	A = 16'hbe88;
	B = 16'hbf9c;
	ans_a = 16'hd7a9;
	#20
	A = 16'h3c72;
	B = 16'hbbcc;
	ans_a = 16'hd7ba;
	#20
	A = 16'hbf4d;
	B = 16'h3c77;
	ans_a = 16'hd7db;
	#20
	A = 16'h3eb7;
	B = 16'h3a19;
	ans_a = 16'hd7c7;
	#20
	A = 16'hb3e8;
	B = 16'hb751;
	ans_a = 16'hd7c5;
	#20
	A = 16'h3e6f;
	B = 16'h3a7e;
	ans_a = 16'hd7b0;
	#20
	A = 16'h3dd2;
	B = 16'h3f7f;
	ans_a = 16'hd784;
	#20
	A = 16'hb930;
	B = 16'hbc3b;
	ans_a = 16'hd779;
	#20
	A = 16'hbed8;
	B = 16'h3467;
	ans_a = 16'hd781;
	#20
	A = 16'h3411;
	B = 16'h38e9;
	ans_a = 16'hd77f;
	#20
	A = 16'hb88b;
	B = 16'h3725;
	ans_a = 16'hd783;
	#20
	A = 16'h3539;
	B = 16'hbd9b;
	ans_a = 16'hd78a;
	#20
	A = 16'h3f7e;
	B = 16'hbdef;
	ans_a = 16'hd7b6;
	#20
	A = 16'hbf1a;
	B = 16'h3f50;
	ans_a = 16'hd7ea;
	#20
	A = 16'h3d34;
	B = 16'h3f82;
	ans_a = 16'hd7c3;
	#20
	A = 16'h3e17;
	B = 16'h3dd4;
	ans_a = 16'hd7a0;
	#20
	A = 16'hbc33;
	B = 16'hbd86;
	ans_a = 16'hd789;
	#20
	A = 16'h3e05;
	B = 16'h3c30;
	ans_a = 16'hd770;
	#20
	A = 16'h3feb;
	B = 16'h3c8c;
	ans_a = 16'hd74c;
	#20
	A = 16'hbf53;
	B = 16'hb324;
	ans_a = 16'hd745;
	#20
	A = 16'hb7f6;
	B = 16'hbdc1;
	ans_a = 16'hd73a;
	#20
	A = 16'hb86a;
	B = 16'hbb9f;
	ans_a = 16'hd732;
	#20
	A = 16'hb94d;
	B = 16'hbdb9;
	ans_a = 16'hd723;
	#20
	A = 16'hb75c;
	B = 16'hbc4c;
	ans_a = 16'hd71b;
	#20
	A = 16'h3a76;
	B = 16'hbc8b;
	ans_a = 16'hd72a;
	#20
	A = 16'hb5e5;
	B = 16'hbfc6;
	ans_a = 16'hd71f;
	#20
	A = 16'h3e51;
	B = 16'h3530;
	ans_a = 16'hd717;
	#20
	A = 16'h3efa;
	B = 16'h3f2a;
	ans_a = 16'hd6e5;
	#20
	A = 16'haf06;
	B = 16'hb612;
	ans_a = 16'hd6e4;
	#20
	A = 16'hba97;
	B = 16'hbbbe;
	ans_a = 16'hd6d7;
	#20
	A = 16'h3e22;
	B = 16'h3820;
	ans_a = 16'hd6ca;
	#20
	A = 16'h3254;
	B = 16'h2cc1;
	ans_a = 16'hd6ca;
	#20
	A = 16'h3e65;
	B = 16'h3c0c;
	ans_a = 16'hd6b0;
	#20
	A = 16'hacda;
	B = 16'hb50c;
	ans_a = 16'hd6b0;
	#20
	A = 16'h3cac;
	B = 16'hb59a;
	ans_a = 16'hd6b7;
	#20
	A = 16'h3faa;
	B = 16'hbc7f;
	ans_a = 16'hd6d9;
	#20
	A = 16'h3568;
	B = 16'hbb0d;
	ans_a = 16'hd6de;
	#20
	A = 16'hbddc;
	B = 16'h3b41;
	ans_a = 16'hd6f3;
	#20
	A = 16'hbdf4;
	B = 16'h385f;
	ans_a = 16'hd700;
	#20
	A = 16'h3cd3;
	B = 16'hbb2a;
	ans_a = 16'hd711;
	#20
	A = 16'h3478;
	B = 16'hb1b0;
	ans_a = 16'hd712;
	#20
	A = 16'h3ec9;
	B = 16'ha2e3;
	ans_a = 16'hd712;
	#20
	A = 16'hbb52;
	B = 16'hbb36;
	ans_a = 16'hd705;
	#20
	A = 16'had1f;
	B = 16'h363c;
	ans_a = 16'hd705;
	#20
	A = 16'hb9ac;
	B = 16'hb66c;
	ans_a = 16'hd700;
	#20
	A = 16'h3194;
	B = 16'hbc7c;
	ans_a = 16'hd703;
	#20
	A = 16'hbc71;
	B = 16'h371c;
	ans_a = 16'hd70b;
	#20
	A = 16'h3c00;
	B = 16'hb886;
	ans_a = 16'hd714;
	#20
	A = 16'hbe18;
	B = 16'h3919;
	ans_a = 16'hd724;
	#20
	A = 16'hb3a9;
	B = 16'h3c0c;
	ans_a = 16'hd728;
	#20
	A = 16'hbd14;
	B = 16'h2c6a;
	ans_a = 16'hd729;
	#20
	A = 16'h23a2;
	B = 16'hbd13;
	ans_a = 16'hd729;
	#20
	A = 16'hb682;
	B = 16'hbe50;
	ans_a = 16'hd71f;
	#20
	A = 16'h37d1;
	B = 16'h3fb3;
	ans_a = 16'hd710;
	#20
	A = 16'h3ebd;
	B = 16'h3420;
	ans_a = 16'hd709;
	#20
	A = 16'hb690;
	B = 16'h3c88;
	ans_a = 16'hd710;
	#20
	A = 16'h3434;
	B = 16'hb912;
	ans_a = 16'hd713;
	#20
	A = 16'hbc54;
	B = 16'h3e95;
	ans_a = 16'hd72f;
	#20
	A = 16'h3c77;
	B = 16'hbc6f;
	ans_a = 16'hd743;
	#20
	A = 16'hb91e;
	B = 16'hb722;
	ans_a = 16'hd73e;
	#20
	A = 16'h394d;
	B = 16'hb54e;
	ans_a = 16'hd742;
	#20
	A = 16'h3f62;
	B = 16'h33b7;
	ans_a = 16'hd73b;
	#20
	A = 16'hbef7;
	B = 16'hbd11;
	ans_a = 16'hd718;
	#20
	A = 16'hbe53;
	B = 16'hbd0c;
	ans_a = 16'hd6f8;
	#20
	A = 16'h392f;
	B = 16'h3f3a;
	ans_a = 16'hd6e5;
	#20
	A = 16'hbf1d;
	B = 16'h3dbd;
	ans_a = 16'hd70e;
	#20
	A = 16'hb6b3;
	B = 16'h3a24;
	ans_a = 16'hd713;
	#20
	A = 16'hb934;
	B = 16'h35cf;
	ans_a = 16'hd717;
	#20
	A = 16'h3e9d;
	B = 16'h3f6c;
	ans_a = 16'hd6e6;
	#20
	A = 16'h3abe;
	B = 16'hb82a;
	ans_a = 16'hd6ed;
	#20
	A = 16'h3f83;
	B = 16'h348e;
	ans_a = 16'hd6e4;
	#20
	A = 16'h3286;
	B = 16'h3ee5;
	ans_a = 16'hd6de;
	#20
	A = 16'hb86c;
	B = 16'h328e;
	ans_a = 16'hd6e0;
	#20
	A = 16'hbed8;
	B = 16'hbef2;
	ans_a = 16'hd6b0;
	#20
	A = 16'h3f81;
	B = 16'hb9e3;
	ans_a = 16'hd6c6;
	#20
	A = 16'h9d3e;
	B = 16'h365f;
	ans_a = 16'hd6c6;
	#20
	A = 16'hbcf4;
	B = 16'h39ea;
	ans_a = 16'hd6d5;
	#20
	A = 16'ha179;
	B = 16'hadd3;
	ans_a = 16'hd6d5;
	#20
	A = 16'hbe54;
	B = 16'hb49c;
	ans_a = 16'hd6ce;
	#20
	A = 16'h3806;
	B = 16'h39ea;
	ans_a = 16'hd6c8;
	#20
	A = 16'h3a0d;
	B = 16'hb8ce;
	ans_a = 16'hd6cf;
	#20
	A = 16'hbdec;
	B = 16'hb233;
	ans_a = 16'hd6ca;
	#20
	A = 16'h3c6c;
	B = 16'h3d59;
	ans_a = 16'hd6b2;
	#20
	A = 16'hba83;
	B = 16'h3b1d;
	ans_a = 16'hd6be;
	#20
	A = 16'h3637;
	B = 16'hbdc0;
	ans_a = 16'hd6c7;
	#20
	A = 16'hbe9c;
	B = 16'hb54d;
	ans_a = 16'hd6be;
	#20
	A = 16'hb796;
	B = 16'hb3d9;
	ans_a = 16'hd6bc;
	#20
	A = 16'hbfdb;
	B = 16'h3d6d;
	ans_a = 16'hd6e7;
	#20
	A = 16'h3db4;
	B = 16'hb55d;
	ans_a = 16'hd6ef;
	#20
	A = 16'h3af6;
	B = 16'hb89f;
	ans_a = 16'hd6f7;
	#20
	A = 16'hb8b4;
	B = 16'hba12;
	ans_a = 16'hd6f0;
	#20
	A = 16'hbf04;
	B = 16'hb9d9;
	ans_a = 16'hd6db;
	#20
	A = 16'hb47a;
	B = 16'hb641;
	ans_a = 16'hd6d9;
	#20
	A = 16'h3587;
	B = 16'h2d0c;
	ans_a = 16'hd6d9;
	#20
	A = 16'h3c23;
	B = 16'h3e31;
	ans_a = 16'hd6bf;
	#20
	A = 16'h3bc2;
	B = 16'h3b24;
	ans_a = 16'hd6b1;
	#20
	A = 16'hbea4;
	B = 16'h3a57;
	ans_a = 16'hd6c6;
	#20
	A = 16'hbca2;
	B = 16'h35a5;
	ans_a = 16'hd6cd;
	#20
	A = 16'hb96a;
	B = 16'h3510;
	ans_a = 16'hd6d0;
	#20
	A = 16'hbf97;
	B = 16'h345d;
	ans_a = 16'hd6d8;
	#20
	A = 16'hbed4;
	B = 16'h35dc;
	ans_a = 16'hd6e2;
	#20
	A = 16'hb853;
	B = 16'h3d79;
	ans_a = 16'hd6ee;
	#20
	A = 16'hbe6b;
	B = 16'h3695;
	ans_a = 16'hd6f9;
	#20
	A = 16'h3cd5;
	B = 16'h3a8a;
	ans_a = 16'hd6e9;
	#20
	A = 16'hb48d;
	B = 16'h3ece;
	ans_a = 16'hd6f1;
	#20
	A = 16'hbacf;
	B = 16'h3a6b;
	ans_a = 16'hd6fc;
	#20
	A = 16'hbe83;
	B = 16'h3570;
	ans_a = 16'hd705;
	#20
	A = 16'hae7b;
	B = 16'hb714;
	ans_a = 16'hd704;
	#20
	A = 16'h3c27;
	B = 16'h3e91;
	ans_a = 16'hd6e9;
	#20
	A = 16'hbf0b;
	B = 16'h3d5e;
	ans_a = 16'hd70f;
	#20
	A = 16'h3a48;
	B = 16'hb820;
	ans_a = 16'hd715;
	#20
	A = 16'h2988;
	B = 16'h3bff;
	ans_a = 16'hd714;
	#20
	A = 16'h39e8;
	B = 16'hbbb4;
	ans_a = 16'hd71f;
	#20
	A = 16'h3c72;
	B = 16'hbef9;
	ans_a = 16'hd73e;
	#20
	A = 16'h3835;
	B = 16'hbca7;
	ans_a = 16'hd748;
	#20
	A = 16'h3846;
	B = 16'hb76c;
	ans_a = 16'hd74c;
	#20
	A = 16'h3e44;
	B = 16'h3fcf;
	ans_a = 16'hd71b;
	#20
	A = 16'h31ea;
	B = 16'h3575;
	ans_a = 16'hd71a;
	#20
	A = 16'h3f2c;
	B = 16'h391a;
	ans_a = 16'hd708;
	#20
	A = 16'hb87e;
	B = 16'hb276;
	ans_a = 16'hd706;
	#20
	A = 16'h2d2e;
	B = 16'hb3ef;
	ans_a = 16'hd706;
	#20
	A = 16'h3b4b;
	B = 16'hbbcf;
	ans_a = 16'hd714;
	#20
	A = 16'h3890;
	B = 16'hb94c;
	ans_a = 16'hd71a;
	#20
	A = 16'hbb10;
	B = 16'hbd29;
	ans_a = 16'hd708;
	#20
	A = 16'h34d6;
	B = 16'hab71;
	ans_a = 16'hd708;
	#20
	A = 16'hbdb8;
	B = 16'h3fe2;
	ans_a = 16'hd735;
	#20
	A = 16'h31b0;
	B = 16'hbd9c;
	ans_a = 16'hd739;
	#20
	A = 16'h347f;
	B = 16'h3c09;
	ans_a = 16'hd734;
	#20
	A = 16'hbd4a;
	B = 16'hbce2;
	ans_a = 16'hd71a;
	#20
	A = 16'hbb8e;
	B = 16'hbe93;
	ans_a = 16'hd701;
	#20
	A = 16'h3d8d;
	B = 16'h3f20;
	ans_a = 16'hd6d9;
	#20
	A = 16'h3d51;
	B = 16'h392d;
	ans_a = 16'hd6cb;
	#20
	A = 16'h38da;
	B = 16'h3c57;
	ans_a = 16'hd6c0;
	#20
	A = 16'h3fe0;
	B = 16'hbfc3;
	ans_a = 16'hd6fd;
	#20
	A = 16'h3e22;
	B = 16'hb8d2;
	ans_a = 16'hd70c;
	#20
	A = 16'hbed7;
	B = 16'h2958;
	ans_a = 16'hd70d;
	#20
	A = 16'hb985;
	B = 16'h3d17;
	ans_a = 16'hd71b;
	#20
	A = 16'hb5da;
	B = 16'hbd67;
	ans_a = 16'hd713;
	#20
	A = 16'hb316;
	B = 16'hbcc5;
	ans_a = 16'hd70f;
	#20
	A = 16'h3fd2;
	B = 16'h273c;
	ans_a = 16'hd70e;
	#20
	A = 16'h32b6;
	B = 16'h3fd5;
	ans_a = 16'hd707;
	#20
	A = 16'h38e3;
	B = 16'hb0f1;
	ans_a = 16'hd709;
	#20
	A = 16'hb14c;
	B = 16'h3d24;
	ans_a = 16'hd70c;
	#20
	A = 16'hbfe1;
	B = 16'hb54e;
	ans_a = 16'hd702;
	#20
	A = 16'h3e4c;
	B = 16'hbc31;
	ans_a = 16'hd71c;
	#20
	A = 16'hba48;
	B = 16'hbc81;
	ans_a = 16'hd70e;
	#20
	A = 16'h3da2;
	B = 16'h3794;
	ans_a = 16'hd703;
	#20
	A = 16'h3a55;
	B = 16'hbd35;
	ans_a = 16'hd713;
	#20
	A = 16'h3f20;
	B = 16'h3022;
	ans_a = 16'hd70f;
	#20
	A = 16'h3f5b;
	B = 16'h3cd5;
	ans_a = 16'hd6eb;
	#20
	A = 16'h3eb3;
	B = 16'h3831;
	ans_a = 16'hd6dd;
	#20
	A = 16'hb49b;
	B = 16'h3ad1;
	ans_a = 16'hd6e1;
	#20
	A = 16'h3932;
	B = 16'h363a;
	ans_a = 16'hd6dd;
	#20
	A = 16'h3c7b;
	B = 16'hb33d;
	ans_a = 16'hd6e1;
	#20
	A = 16'h3b50;
	B = 16'hbe81;
	ans_a = 16'hd6f9;
	#20
	A = 16'h3d90;
	B = 16'hb5a6;
	ans_a = 16'hd701;
	#20
	A = 16'h3e4d;
	B = 16'h3ed9;
	ans_a = 16'hd6d6;
	#20
	A = 16'h3aa8;
	B = 16'h3c45;
	ans_a = 16'hd6c8;
	#20
	A = 16'hbefd;
	B = 16'hbd44;
	ans_a = 16'hd6a3;
	#20
	A = 16'h3754;
	B = 16'h3c96;
	ans_a = 16'hd69b;
	#20
	A = 16'h3e29;
	B = 16'hb5a1;
	ans_a = 16'hd6a4;
	#20
	A = 16'hb156;
	B = 16'h2739;
	ans_a = 16'hd6a4;
	#20
	A = 16'hbf68;
	B = 16'h3968;
	ans_a = 16'hd6b8;
	#20
	A = 16'h3d27;
	B = 16'hbd28;
	ans_a = 16'hd6d3;
	#20
	A = 16'hbe3c;
	B = 16'h3f8e;
	ans_a = 16'hd702;
	#20
	A = 16'h3df6;
	B = 16'h3db1;
	ans_a = 16'hd6e0;
	#20
	A = 16'hb436;
	B = 16'hbdb5;
	ans_a = 16'hd6da;
	#20
	A = 16'h38d9;
	B = 16'hbaf6;
	ans_a = 16'hd6e2;
	#20
	A = 16'h34a5;
	B = 16'hac08;
	ans_a = 16'hd6e2;
	#20
	A = 16'h3236;
	B = 16'h3e83;
	ans_a = 16'hd6dd;
	#20
	A = 16'h3c9b;
	B = 16'hbd55;
	ans_a = 16'hd6f6;
	#20
	A = 16'hbc3f;
	B = 16'h3df4;
	ans_a = 16'hd70f;
	#20
	A = 16'hb820;
	B = 16'ha76e;
	ans_a = 16'hd70f;
	#20
	A = 16'hbc34;
	B = 16'hbd4a;
	ans_a = 16'hd6f9;
	#20
	A = 16'h3fb2;
	B = 16'h3d4a;
	ans_a = 16'hd6d0;
	#20
	A = 16'h3bc8;
	B = 16'h2ec1;
	ans_a = 16'hd6ce;
	#20
	A = 16'hb981;
	B = 16'hbbf1;
	ans_a = 16'hd6c3;
	#20
	A = 16'h3819;
	B = 16'h3d42;
	ans_a = 16'hd6b8;
	#20
	A = 16'haf27;
	B = 16'hb8ca;
	ans_a = 16'hd6b7;
	#20
	A = 16'h38e6;
	B = 16'hbfa4;
	ans_a = 16'hd6ca;
	#20
	A = 16'hb870;
	B = 16'h3d76;
	ans_a = 16'hd6d6;
	#20
	A = 16'h3709;
	B = 16'hb0a8;
	ans_a = 16'hd6d7;
	#20
	A = 16'h3de7;
	B = 16'hbdfd;
	ans_a = 16'hd6fa;
	#20
	A = 16'hb6c7;
	B = 16'h3d51;
	ans_a = 16'hd703;
	#20
	A = 16'h351f;
	B = 16'h3f22;
	ans_a = 16'hd6fa;
	#20
	A = 16'hbeb3;
	B = 16'h398f;
	ans_a = 16'hd70d;
	#20
	A = 16'hbd42;
	B = 16'hba2c;
	ans_a = 16'hd6fd;
	#20
	A = 16'hbbf8;
	B = 16'h3b7a;
	ans_a = 16'hd70c;
	#20
	A = 16'haf7f;
	B = 16'hbeca;
	ans_a = 16'hd709;
	#20
	A = 16'hbbc8;
	B = 16'hbc42;
	ans_a = 16'hd6f8;
	#20
	A = 16'hbf20;
	B = 16'h3e13;
	ans_a = 16'hd723;
	#20
	A = 16'hbd8a;
	B = 16'h3929;
	ans_a = 16'hd731;
	#20
	A = 16'h3ce1;
	B = 16'h3f0c;
	ans_a = 16'hd70f;
	#20
	A = 16'hba74;
	B = 16'hbf7a;
	ans_a = 16'hd6f7;
	#20
	A = 16'hbf82;
	B = 16'hb614;
	ans_a = 16'hd6ec;
	#20
	A = 16'hb88a;
	B = 16'h3c51;
	ans_a = 16'hd6f6;
	#20
	A = 16'h3528;
	B = 16'h3430;
	ans_a = 16'hd6f5;
	#20
	A = 16'hbfd2;
	B = 16'h364a;
	ans_a = 16'hd701;
	#20
	A = 16'h3408;
	B = 16'hb559;
	ans_a = 16'hd702;
	#20
	A = 16'hbfda;
	B = 16'h3e1a;
	ans_a = 16'hd732;
	#20
	A = 16'hb518;
	B = 16'hb3a6;
	ans_a = 16'hd731;
	#20
	A = 16'hb64a;
	B = 16'h9d6c;
	ans_a = 16'hd731;
	#20
	A = 16'h36fc;
	B = 16'hbe19;
	ans_a = 16'hd73c;
	#20
	A = 16'hbefd;
	B = 16'h3924;
	ans_a = 16'hd74e;
	#20
	A = 16'h3e06;
	B = 16'h38cc;
	ans_a = 16'hd740;
	#20
	A = 16'h3c96;
	B = 16'h3d2e;
	ans_a = 16'hd728;
	#20
	A = 16'hbef1;
	B = 16'h3f94;
	ans_a = 16'hd75d;
	#20
	A = 16'hb58a;
	B = 16'hbf8b;
	ans_a = 16'hd753;
	#20
	A = 16'h3c5a;
	B = 16'haf1e;
	ans_a = 16'hd755;
	#20
	A = 16'h28c0;
	B = 16'h3d5f;
	ans_a = 16'hd754;
	#20
	A = 16'h3eb6;
	B = 16'h3ba6;
	ans_a = 16'hd73a;
	#20
	A = 16'h34a1;
	B = 16'h3d1e;
	ans_a = 16'hd734;
	#20
	A = 16'hbe7f;
	B = 16'h398d;
	ans_a = 16'hd746;
	#20
	A = 16'hbb17;
	B = 16'hbf87;
	ans_a = 16'hd72b;
	#20
	A = 16'hbe06;
	B = 16'h25af;
	ans_a = 16'hd72c;
	#20
	A = 16'hbdc7;
	B = 16'hbff4;
	ans_a = 16'hd6fe;
	#20
	A = 16'h382b;
	B = 16'h3d53;
	ans_a = 16'hd6f3;
	#20
	A = 16'hbbf9;
	B = 16'h3fa6;
	ans_a = 16'hd711;
	#20
	A = 16'hb0c7;
	B = 16'h31c2;
	ans_a = 16'hd711;
	#20
	A = 16'hb8ca;
	B = 16'hb81d;
	ans_a = 16'hd70c;
	#20
	A = 16'hba6a;
	B = 16'h3b7e;
	ans_a = 16'hd718;
	#20
	A = 16'hb818;
	B = 16'hbed4;
	ans_a = 16'hd70a;
	#20
	A = 16'hb71e;
	B = 16'hbdb3;
	ans_a = 16'hd700;
	#20
	A = 16'hbeeb;
	B = 16'h3b79;
	ans_a = 16'hd71a;
	#20
	A = 16'hb18c;
	B = 16'h20af;
	ans_a = 16'hd71a;
	#20
	A = 16'h3efd;
	B = 16'h30e0;
	ans_a = 16'hd716;
	#20
	A = 16'h3f15;
	B = 16'hb436;
	ans_a = 16'hd71d;
	#20
	A = 16'hbd3e;
	B = 16'h3cd2;
	ans_a = 16'hd736;
	#20
	A = 16'hbfad;
	B = 16'hbda9;
	ans_a = 16'hd70b;
	#20
	A = 16'h33c5;
	B = 16'h3ef5;
	ans_a = 16'hd704;
	#20
	A = 16'h3c78;
	B = 16'hbe36;
	ans_a = 16'hd720;
	#20
	A = 16'hbe58;
	B = 16'hb8f1;
	ans_a = 16'hd710;
	#20
	A = 16'h392a;
	B = 16'h3f72;
	ans_a = 16'hd6fd;
	#20
	A = 16'h36b4;
	B = 16'hb71e;
	ans_a = 16'hd700;
	#20
	A = 16'h3a1f;
	B = 16'h31aa;
	ans_a = 16'hd6fe;
	#20
	A = 16'hbf48;
	B = 16'hbfb8;
	ans_a = 16'hd6c6;
	#20
	A = 16'hbf3a;
	B = 16'h3bd2;
	ans_a = 16'hd6e2;
	#20
	A = 16'h3b0a;
	B = 16'hac21;
	ans_a = 16'hd6e3;
	#20
	A = 16'h3037;
	B = 16'h38f5;
	ans_a = 16'hd6e2;
	#20
	A = 16'h37e4;
	B = 16'h3d82;
	ans_a = 16'hd6d7;
	#20
	A = 16'h3b4e;
	B = 16'hbf07;
	ans_a = 16'hd6f1;
	#20
	A = 16'ha8f0;
	B = 16'h361f;
	ans_a = 16'hd6f1;
	#20
	A = 16'h33a1;
	B = 16'hbf31;
	ans_a = 16'hd6f8;
	#20
	A = 16'hbba8;
	B = 16'h340a;
	ans_a = 16'hd6fc;
	#20
	A = 16'hbd3b;
	B = 16'h3c48;
	ans_a = 16'hd712;
	#20
	A = 16'hb317;
	B = 16'h2da9;
	ans_a = 16'hd712;
	#20
	A = 16'h3235;
	B = 16'ha438;
	ans_a = 16'hd712;
	#20
	A = 16'h3df3;
	B = 16'hbe99;
	ans_a = 16'hd739;
	#20
	A = 16'hacaa;
	B = 16'hae47;
	ans_a = 16'hd739;
	#20
	A = 16'hbe89;
	B = 16'h3865;
	ans_a = 16'hd747;
	#20
	A = 16'h396e;
	B = 16'h3c7d;
	ans_a = 16'hd73b;
	#20
	A = 16'hbaf7;
	B = 16'h3c8a;
	ans_a = 16'hd74b;
	#20
	A = 16'h3d46;
	B = 16'hb68c;
	ans_a = 16'hd754;
	#20
	A = 16'h38e8;
	B = 16'h3881;
	ans_a = 16'hd74e;
	#20
	A = 16'hbbe2;
	B = 16'h3f42;
	ans_a = 16'hd76b;
	#20
	A = 16'h2a98;
	B = 16'h3c6f;
	ans_a = 16'hd76a;
	#20
	A = 16'h3b27;
	B = 16'hbf9c;
	ans_a = 16'hd785;
	#20
	A = 16'hb21f;
	B = 16'h3f58;
	ans_a = 16'hd78b;
	#20
	A = 16'hbfd3;
	B = 16'h399a;
	ans_a = 16'hd7a1;
	#20
	A = 16'h3ea7;
	B = 16'hbc1d;
	ans_a = 16'hd7bc;
	#20
	A = 16'hb24e;
	B = 16'hbcea;
	ans_a = 16'hd7b8;
	#20
	A = 16'hb95c;
	B = 16'h2033;
	ans_a = 16'hd7b8;
	#20
	A = 16'ha4b5;
	B = 16'hbf80;
	ans_a = 16'hd7b7;
	#20
	A = 16'h3ba3;
	B = 16'hbd81;
	ans_a = 16'hd7cc;
	#20
	A = 16'hbf54;
	B = 16'h3dcb;
	ans_a = 16'hd7f6;
	#20
	A = 16'h38d6;
	B = 16'h3c23;
	ans_a = 16'hd7ec;
	#20
	A = 16'h3c8d;
	B = 16'h3e73;
	ans_a = 16'hd7cf;
	#20
	A = 16'hbe21;
	B = 16'hbc51;
	ans_a = 16'hd7b5;
	#20
	A = 16'h238e;
	B = 16'hba89;
	ans_a = 16'hd7b5;
	#20
	A = 16'h3ee6;
	B = 16'h3757;
	ans_a = 16'hd7a8;
	#20
	A = 16'hbd0e;
	B = 16'h373b;
	ans_a = 16'hd7b1;
	#20
	A = 16'h3a7d;
	B = 16'hbe23;
	ans_a = 16'hd7c5;
	#20
	A = 16'hba7f;
	B = 16'hbbbe;
	ans_a = 16'hd7b8;
	#20
	A = 16'h3fb5;
	B = 16'h3e0e;
	ans_a = 16'hd789;
	#20
	A = 16'h350c;
	B = 16'hbee0;
	ans_a = 16'hd792;
	#20
	A = 16'hbafa;
	B = 16'hbc6d;
	ans_a = 16'hd783;
	#20
	A = 16'hb580;
	B = 16'h3f4f;
	ans_a = 16'hd78d;
	#20
	A = 16'hbaad;
	B = 16'h3c2b;
	ans_a = 16'hd79b;
	#20
	A = 16'hb7fa;
	B = 16'hbe9a;
	ans_a = 16'hd78e;
	#20
	A = 16'hbd4d;
	B = 16'hbd04;
	ans_a = 16'hd773;
	#20
	A = 16'hb957;
	B = 16'hb001;
	ans_a = 16'hd772;
	#20
	A = 16'hba1e;
	B = 16'h3eec;
	ans_a = 16'hd787;
	#20
	A = 16'hbe0f;
	B = 16'h1e6d;
	ans_a = 16'hd787;
	#20
	A = 16'h39b6;
	B = 16'h390f;
	ans_a = 16'hd780;
	#20
	A = 16'h3d97;
	B = 16'hbf78;
	ans_a = 16'hd7aa;
	#20
	A = 16'h3d59;
	B = 16'h3d44;
	ans_a = 16'hd78e;
	#20
	A = 16'hbc4f;
	B = 16'hb57d;
	ans_a = 16'hd788;
	#20
	A = 16'hbfd8;
	B = 16'h3b5f;
	ans_a = 16'hd7a5;
	#20
	A = 16'hbc45;
	B = 16'hbb6a;
	ans_a = 16'hd795;
	#20
	A = 16'hbc35;
	B = 16'h3d76;
	ans_a = 16'hd7ac;
	#20
	A = 16'hbe59;
	B = 16'hbcde;
	ans_a = 16'hd78d;
	#20
	A = 16'h3d4d;
	B = 16'hbb75;
	ans_a = 16'hd7a1;
	#20
	A = 16'h3f82;
	B = 16'h3fdb;
	ans_a = 16'hd766;
	#20
	A = 16'h3d15;
	B = 16'hbf1e;
	ans_a = 16'hd78a;
	#20
	A = 16'hba65;
	B = 16'hbeda;
	ans_a = 16'hd774;
	#20
	A = 16'hbec6;
	B = 16'hba61;
	ans_a = 16'hd75e;
	#20
	A = 16'h32e2;
	B = 16'h3c64;
	ans_a = 16'hd75a;
	#20
	A = 16'hbee9;
	B = 16'h3ecd;
	ans_a = 16'hd789;
	#20
	A = 16'h3ba7;
	B = 16'hbc16;
	ans_a = 16'hd799;
	#20
	A = 16'hbe51;
	B = 16'hbb91;
	ans_a = 16'hd781;
	#20
	A = 16'hbe4e;
	B = 16'h38fd;
	ans_a = 16'hd791;
	#20
	A = 16'hb64a;
	B = 16'h27c0;
	ans_a = 16'hd791;
	#20
	A = 16'hac3c;
	B = 16'hb918;
	ans_a = 16'hd790;
	#20
	A = 16'h3c5a;
	B = 16'h3601;
	ans_a = 16'hd789;
	#20
	A = 16'h30e2;
	B = 16'hbfc3;
	ans_a = 16'hd78e;
	#20
	A = 16'h3d79;
	B = 16'h39a8;
	ans_a = 16'hd77f;
	#20
	A = 16'h3c82;
	B = 16'hbd83;
	ans_a = 16'hd798;
	#20
	A = 16'hb8f8;
	B = 16'h3e7d;
	ans_a = 16'hd7a8;
	#20
	A = 16'h3858;
	B = 16'hbeda;
	ans_a = 16'hd7b7;
	#20
	A = 16'hb801;
	B = 16'h1a32;
	ans_a = 16'hd7b7;
	#20
	A = 16'h3f87;
	B = 16'h2b09;
	ans_a = 16'hd7b5;
	#20
	A = 16'h3cc1;
	B = 16'hb4af;
	ans_a = 16'hd7bb;
	#20
	A = 16'hbd47;
	B = 16'hb1fa;
	ans_a = 16'hd7b7;
	#20
	A = 16'h3afa;
	B = 16'h3399;
	ans_a = 16'hd7b4;
	#20
	A = 16'h3a6b;
	B = 16'h36f7;
	ans_a = 16'hd7ae;
	#20
	A = 16'h3ccb;
	B = 16'h388d;
	ans_a = 16'hd7a3;
	#20
	A = 16'h3d80;
	B = 16'hbd77;
	ans_a = 16'hd7c1;
	#20
	A = 16'h338b;
	B = 16'hba82;
	ans_a = 16'hd7c4;
	#20
	A = 16'h3bfd;
	B = 16'h3eb0;
	ans_a = 16'hd7a9;
	#20
	A = 16'h338a;
	B = 16'h3a90;
	ans_a = 16'hd7a6;
	#20
	A = 16'h388e;
	B = 16'hbe8b;
	ans_a = 16'hd7b5;
	#20
	A = 16'hbcfd;
	B = 16'ha729;
	ans_a = 16'hd7b4;
	#20
	A = 16'hbd47;
	B = 16'h3278;
	ans_a = 16'hd7b8;
	#20
	A = 16'h3d60;
	B = 16'h3fea;
	ans_a = 16'hd78d;
	#20
	A = 16'hba8d;
	B = 16'h380d;
	ans_a = 16'hd794;
	#20
	A = 16'hbfe8;
	B = 16'h3f7b;
	ans_a = 16'hd7cf;
	#20
	A = 16'hb21c;
	B = 16'hb916;
	ans_a = 16'hd7cd;
	#20
	A = 16'h36d0;
	B = 16'h3f6a;
	ans_a = 16'hd7c0;
	#20
	A = 16'h3621;
	B = 16'hbd49;
	ans_a = 16'hd7c8;
	#20
	A = 16'hbfb1;
	B = 16'hba29;
	ans_a = 16'hd7b0;
	#20
	A = 16'hb855;
	B = 16'hb526;
	ans_a = 16'hd7ad;
	#20
	A = 16'h3f34;
	B = 16'hbb73;
	ans_a = 16'hd7c8;
	#20
	A = 16'h3d81;
	B = 16'h3c59;
	ans_a = 16'hd7b0;
	#20
	A = 16'hbb0b;
	B = 16'h3e33;
	ans_a = 16'hd7c6;
	#20
	A = 16'h337b;
	B = 16'hb432;
	ans_a = 16'hd7c7;
	#20
	A = 16'hbaed;
	B = 16'h38f0;
	ans_a = 16'hd7d0;
	#20
	A = 16'h3cf4;
	B = 16'h3fa7;
	ans_a = 16'hd7aa;
	#20
	A = 16'h3a8a;
	B = 16'hb1c8;
	ans_a = 16'hd7ac;
	#20
	A = 16'h3077;
	B = 16'hb2f6;
	ans_a = 16'hd7ac;
	#20
	A = 16'hbbba;
	B = 16'h3ad1;
	ans_a = 16'hd7b9;
	#20
	A = 16'hb22f;
	B = 16'h3cf0;
	ans_a = 16'hd7bd;
	#20
	A = 16'h3da5;
	B = 16'h3f42;
	ans_a = 16'hd794;
	#20
	A = 16'hbcd0;
	B = 16'hbb68;
	ans_a = 16'hd782;
	#20
	A = 16'h3b0f;
	B = 16'h3cb8;
	ans_a = 16'hd771;
	#20
	A = 16'h2d7f;
	B = 16'hbc8c;
	ans_a = 16'hd773;
	#20
	A = 16'hb3e5;
	B = 16'h318f;
	ans_a = 16'hd774;
	#20
	A = 16'h3ee9;
	B = 16'h38ce;
	ans_a = 16'hd763;
	#20
	A = 16'h3dd6;
	B = 16'hbf2d;
	ans_a = 16'hd78d;
	#20
	A = 16'hbae5;
	B = 16'h2f69;
	ans_a = 16'hd78f;
	#20
	A = 16'h3ed2;
	B = 16'hbf1a;
	ans_a = 16'hd7bf;
	#20
	A = 16'h3acf;
	B = 16'hbdeb;
	ans_a = 16'hd7d3;
	#20
	A = 16'h3ff2;
	B = 16'hbc54;
	ans_a = 16'hd7f5;
	#20
	A = 16'hbf14;
	B = 16'hbc51;
	ans_a = 16'hd7d6;
	#20
	A = 16'hbcb1;
	B = 16'h3abb;
	ans_a = 16'hd7e6;
	#20
	A = 16'hbc8c;
	B = 16'hbc17;
	ans_a = 16'hd7d3;
	#20
	A = 16'hbff7;
	B = 16'h3feb;
	ans_a = 16'hd809;
	#20
	A = 16'hb974;
	B = 16'h3e70;
	ans_a = 16'hd812;
	#20
	A = 16'haf5a;
	B = 16'h3ca1;
	ans_a = 16'hd813;
	#20
	A = 16'h3cc2;
	B = 16'h3d04;
	ans_a = 16'hd807;
	#20
	A = 16'hbb2e;
	B = 16'hbd2d;
	ans_a = 16'hd7fb;
	#20
	A = 16'hb9cc;
	B = 16'h3c25;
	ans_a = 16'hd804;
	#20
	A = 16'hb8ca;
	B = 16'hbdd9;
	ans_a = 16'hd7fa;
	#20
	A = 16'h3e88;
	B = 16'hb9fc;
	ans_a = 16'hd807;
	#20
	A = 16'hbe3d;
	B = 16'hbd0b;
	ans_a = 16'hd7ef;
	#20
	A = 16'h3fb1;
	B = 16'h3fb7;
	ans_a = 16'hd7b4;
	#20
	A = 16'hbd94;
	B = 16'h3f0f;
	ans_a = 16'hd7db;
	#20
	A = 16'h3d33;
	B = 16'h3fce;
	ans_a = 16'hd7b2;
	#20
	A = 16'hb9d7;
	B = 16'hb520;
	ans_a = 16'hd7ae;
	#20
	A = 16'hbf39;
	B = 16'hbac4;
	ans_a = 16'hd796;
	#20
	A = 16'hba1d;
	B = 16'h3928;
	ans_a = 16'hd79e;
	#20
	A = 16'hbce0;
	B = 16'h3797;
	ans_a = 16'hd7a7;
	#20
	A = 16'hbd00;
	B = 16'hba9d;
	ans_a = 16'hd796;
	#20
	A = 16'h3d9e;
	B = 16'hb96d;
	ans_a = 16'hd7a5;
	#20
	A = 16'h3a57;
	B = 16'h3df4;
	ans_a = 16'hd792;
	#20
	A = 16'h3e8b;
	B = 16'hbf23;
	ans_a = 16'hd7c1;
	#20
	A = 16'h1fd5;
	B = 16'hbe8f;
	ans_a = 16'hd7c1;
	#20
	A = 16'h3d3a;
	B = 16'hbc14;
	ans_a = 16'hd7d6;
	#20
	A = 16'h31bf;
	B = 16'hbfbb;
	ans_a = 16'hd7dc;
	#20
	A = 16'hb945;
	B = 16'hb709;
	ans_a = 16'hd7d7;
	#20
	A = 16'hbebe;
	B = 16'hb653;
	ans_a = 16'hd7cc;
	#20
	A = 16'h3e60;
	B = 16'hbe67;
	ans_a = 16'hd7f5;
	#20
	A = 16'h3f16;
	B = 16'hbf20;
	ans_a = 16'hd814;
	#20
	A = 16'h38cc;
	B = 16'hbc14;
	ans_a = 16'hd819;
	#20
	A = 16'h3948;
	B = 16'hba2e;
	ans_a = 16'hd81d;
	#20
	A = 16'hbd20;
	B = 16'hbe66;
	ans_a = 16'hd80d;
	#20
	A = 16'hbd32;
	B = 16'hbde4;
	ans_a = 16'hd7fb;
	#20
	A = 16'hb8b4;
	B = 16'h3959;
	ans_a = 16'hd801;
	#20
	A = 16'hbde9;
	B = 16'hbcb6;
	ans_a = 16'hd7e6;
	#20
	A = 16'h3366;
	B = 16'h3f30;
	ans_a = 16'hd7df;
	#20
	A = 16'h3ae4;
	B = 16'hbd3f;
	ans_a = 16'hd7f1;
	#20
	A = 16'h3ec2;
	B = 16'hbe1d;
	ans_a = 16'hd80d;
	#20
	A = 16'h3cd6;
	B = 16'hbd2a;
	ans_a = 16'hd819;
	#20
	A = 16'h25f8;
	B = 16'h3da7;
	ans_a = 16'hd819;
	#20
	A = 16'h3d3f;
	B = 16'h3e0d;
	ans_a = 16'hd809;
	#20
	A = 16'h3a7b;
	B = 16'hb46c;
	ans_a = 16'hd80b;
	#20
	A = 16'hbd6d;
	B = 16'h3e8e;
	ans_a = 16'hd81d;
	#20
	A = 16'h3932;
	B = 16'h3ee4;
	ans_a = 16'hd814;
	#20
	A = 16'hb6f2;
	B = 16'hb642;
	ans_a = 16'hd813;
	#20
	A = 16'hb529;
	B = 16'hb955;
	ans_a = 16'hd811;
	#20
	A = 16'hb5d1;
	B = 16'hbb93;
	ans_a = 16'hd80e;
	#20
	A = 16'h3686;
	B = 16'h3b8a;
	ans_a = 16'hd80b;
	#20
	A = 16'ha718;
	B = 16'h3b9b;
	ans_a = 16'hd80b;
	#20
	A = 16'h3490;
	B = 16'h3751;
	ans_a = 16'hd80a;
	#20
	A = 16'hbe06;
	B = 16'hb970;
	ans_a = 16'hd802;
	#20
	A = 16'hbe7a;
	B = 16'h3777;
	ans_a = 16'hd808;
	#20
	A = 16'h35af;
	B = 16'hbc58;
	ans_a = 16'hd80b;
	#20
	A = 16'h3d83;
	B = 16'hbf75;
	ans_a = 16'hd820;
	#20
	A = 16'hbea3;
	B = 16'h36ee;
	ans_a = 16'hd826;
	#20
	A = 16'h36a3;
	B = 16'h39bc;
	ans_a = 16'hd824;
	#20
	A = 16'h3f02;
	B = 16'hb603;
	ans_a = 16'hd829;
	#20
	A = 16'h3ba6;
	B = 16'h3c62;
	ans_a = 16'hd821;
	#20
	A = 16'hba07;
	B = 16'hbaae;
	ans_a = 16'hd81c;
	#20
	A = 16'h3e82;
	B = 16'h3e39;
	ans_a = 16'hd808;
	#20
	A = 16'hbee9;
	B = 16'h3f8d;
	ans_a = 16'hd822;
	#20
	A = 16'h3e61;
	B = 16'had3c;
	ans_a = 16'hd823;
	#20
	A = 16'h3b3e;
	B = 16'hbdd9;
	ans_a = 16'hd82e;
	#20
	A = 16'h24bf;
	B = 16'h3e9e;
	ans_a = 16'hd82e;
	#20
	A = 16'hb5b0;
	B = 16'h3c57;
	ans_a = 16'hd831;
	#20
	A = 16'hb995;
	B = 16'h3b87;
	ans_a = 16'hd836;
	#20
	A = 16'h3c86;
	B = 16'hbd34;
	ans_a = 16'hd842;
	#20
	A = 16'h3cf5;
	B = 16'h3db9;
	ans_a = 16'hd834;
	#20
	A = 16'h3a53;
	B = 16'h3cf0;
	ans_a = 16'hd82c;
	#20
	A = 16'h2fe8;
	B = 16'hbc7b;
	ans_a = 16'hd82d;
	#20
	A = 16'hbb2b;
	B = 16'h3dba;
	ans_a = 16'hd837;
	#20
	A = 16'h3d46;
	B = 16'h3e0c;
	ans_a = 16'hd827;
	#20
	A = 16'h3f95;
	B = 16'hbc75;
	ans_a = 16'hd838;
	#20
	A = 16'hb4d5;
	B = 16'h3ca2;
	ans_a = 16'hd83b;
	#20
	A = 16'h349d;
	B = 16'h3e4a;
	ans_a = 16'hd837;
	#20
	A = 16'hbc93;
	B = 16'hbe43;
	ans_a = 16'hd829;
	#20
	A = 16'h319c;
	B = 16'h38b1;
	ans_a = 16'hd828;
	#20
	A = 16'hb767;
	B = 16'h2fe8;
	ans_a = 16'hd828;
	#20
	A = 16'hb94e;
	B = 16'hb802;
	ans_a = 16'hd825;
	#20
	A = 16'hbf88;
	B = 16'h3f18;
	ans_a = 16'hd840;
	#20
	A = 16'hbe5a;
	B = 16'hb9b5;
	ans_a = 16'hd837;
	#20
	A = 16'h3f55;
	B = 16'hb884;
	ans_a = 16'hd83f;
	#20
	A = 16'hbe27;
	B = 16'hbf15;
	ans_a = 16'hd829;
	#20
	A = 16'h3b24;
	B = 16'h3e50;
	ans_a = 16'hd81e;
	#20
	A = 16'h34fe;
	B = 16'hb879;
	ans_a = 16'hd81f;
	#20
	A = 16'hbc25;
	B = 16'hb269;
	ans_a = 16'hd81d;
	#20
	A = 16'h3918;
	B = 16'ha9ac;
	ans_a = 16'hd81d;
	#20
	A = 16'h3e2c;
	B = 16'hbfc1;
	ans_a = 16'hd835;
	#20
	A = 16'hbe4c;
	B = 16'h3d9c;
	ans_a = 16'hd847;
	#20
	A = 16'h3ee1;
	B = 16'h3b36;
	ans_a = 16'hd83b;
	#20
	A = 16'h381a;
	B = 16'h38eb;
	ans_a = 16'hd838;
	#20
	A = 16'h3ed4;
	B = 16'h92a5;
	ans_a = 16'hd838;
	#20
	A = 16'h32c8;
	B = 16'h3fb5;
	ans_a = 16'hd835;
	#20
	A = 16'hbead;
	B = 16'h3ba0;
	ans_a = 16'hd842;
	#20
	A = 16'h359e;
	B = 16'hbb5f;
	ans_a = 16'hd845;
	#20
	A = 16'hb944;
	B = 16'h3d2e;
	ans_a = 16'hd84c;
	#20
	A = 16'h3e29;
	B = 16'hb8b7;
	ans_a = 16'hd853;
	#20
	A = 16'hb868;
	B = 16'h3d87;
	ans_a = 16'hd859;
	#20
	A = 16'h3427;
	B = 16'h3f95;
	ans_a = 16'hd855;
	#20
	A = 16'hb80e;
	B = 16'hbeae;
	ans_a = 16'hd84e;
	#20
	A = 16'hb803;
	B = 16'ha1b4;
	ans_a = 16'hd84e;
	#20
	A = 16'h397c;
	B = 16'h360b;
	ans_a = 16'hd84c;
	#20
	A = 16'h3ccb;
	B = 16'hac0f;
	ans_a = 16'hd84d;
	#20
	A = 16'h3dcb;
	B = 16'hbb70;
	ans_a = 16'hd858;
	#20
	A = 16'hb4cb;
	B = 16'h3b95;
	ans_a = 16'hd85a;
	#20
	A = 16'hbcbb;
	B = 16'hbe03;
	ans_a = 16'hd84c;
	#20
	A = 16'h3d03;
	B = 16'hb919;
	ans_a = 16'hd852;
	#20
	A = 16'hb2fd;
	B = 16'h3834;
	ans_a = 16'hd853;
	#20
	A = 16'hbc41;
	B = 16'hae97;
	ans_a = 16'hd852;
	#20
	A = 16'hbede;
	B = 16'hb8f5;
	ans_a = 16'hd849;
	#20
	A = 16'hb860;
	B = 16'hb79e;
	ans_a = 16'hd847;
	#20
	A = 16'h3959;
	B = 16'h3de9;
	ans_a = 16'hd83f;
	#20
	A = 16'hbb1e;
	B = 16'h34e8;
	ans_a = 16'hd841;
	#20
	A = 16'hbee8;
	B = 16'h388c;
	ans_a = 16'hd849;
	#20
	A = 16'hbfc1;
	B = 16'hbbc3;
	ans_a = 16'hd83a;
	#20
	A = 16'hb77c;
	B = 16'h3db8;
	ans_a = 16'hd83f;
	#20
	A = 16'h3e47;
	B = 16'h3d62;
	ans_a = 16'hd82e;
	#20
	A = 16'h3b82;
	B = 16'h3e49;
	ans_a = 16'hd822;
	#20
	A = 16'hb3e2;
	B = 16'hb58d;
	ans_a = 16'hd821;
	#20
	A = 16'h3c44;
	B = 16'hba13;
	ans_a = 16'hd827;
	#20
	A = 16'h3122;
	B = 16'h3d0c;
	ans_a = 16'hd825;
	#20
	A = 16'hb96c;
	B = 16'hbada;
	ans_a = 16'hd820;
	#20
	A = 16'hbf67;
	B = 16'hbf9a;
	ans_a = 16'hd804;
	#20
	A = 16'hbbb2;
	B = 16'h3c12;
	ans_a = 16'hd80c;
	#20
	A = 16'h38d5;
	B = 16'h3ffb;
	ans_a = 16'hd802;
	#20
	A = 16'h3f0b;
	B = 16'h3732;
	ans_a = 16'hd7f7;
	#20
	A = 16'h3d23;
	B = 16'h3a3e;
	ans_a = 16'hd7e7;
	#20
	A = 16'haaf9;
	B = 16'hb4cc;
	ans_a = 16'hd7e7;
	#20
	A = 16'habe0;
	B = 16'hb379;
	ans_a = 16'hd7e7;
	#20
	A = 16'hbc8c;
	B = 16'h3e3b;
	ans_a = 16'hd802;
	#20
	A = 16'h38dd;
	B = 16'hbc4c;
	ans_a = 16'hd807;
	#20
	A = 16'hb5d8;
	B = 16'hbf20;
	ans_a = 16'hd802;
	#20
	A = 16'h35ce;
	B = 16'hbce2;
	ans_a = 16'hd806;
	#20
	A = 16'h3044;
	B = 16'h3583;
	ans_a = 16'hd806;
	#20
	A = 16'hbcc3;
	B = 16'hbd41;
	ans_a = 16'hd7f3;
	#20
	A = 16'hbfb4;
	B = 16'hbe06;
	ans_a = 16'hd7c5;
	#20
	A = 16'h3cfd;
	B = 16'h39f2;
	ans_a = 16'hd7b6;
	#20
	A = 16'h3c75;
	B = 16'hbe04;
	ans_a = 16'hd7d1;
	#20
	A = 16'h3aca;
	B = 16'h3942;
	ans_a = 16'hd7c8;
	#20
	A = 16'h34b0;
	B = 16'hb1ce;
	ans_a = 16'hd7c9;
	#20
	A = 16'hb57c;
	B = 16'hb8b4;
	ans_a = 16'hd7c6;
	#20
	A = 16'hbd72;
	B = 16'h31b4;
	ans_a = 16'hd7ca;
	#20
	A = 16'hbebf;
	B = 16'h3f68;
	ans_a = 16'hd7fc;
	#20
	A = 16'hbd7f;
	B = 16'hb981;
	ans_a = 16'hd7ed;
	#20
	A = 16'h3ae0;
	B = 16'h3f5e;
	ans_a = 16'hd7d4;
	#20
	A = 16'h3ed3;
	B = 16'h34f7;
	ans_a = 16'hd7cc;
	#20
	A = 16'h3ce4;
	B = 16'hba2e;
	ans_a = 16'hd7db;
	#20
	A = 16'hbd81;
	B = 16'hb61b;
	ans_a = 16'hd7d3;
	#20
	A = 16'h3dae;
	B = 16'hb3b0;
	ans_a = 16'hd7d8;
	#20
	A = 16'h34d1;
	B = 16'hbf56;
	ans_a = 16'hd7e1;
	#20
	A = 16'h3d4d;
	B = 16'h3fe6;
	ans_a = 16'hd7b7;
	#20
	A = 16'hb80a;
	B = 16'hbe26;
	ans_a = 16'hd7ab;
	#20
	A = 16'h3b90;
	B = 16'h3803;
	ans_a = 16'hd7a3;
	#20
	A = 16'h3d41;
	B = 16'h3c6c;
	ans_a = 16'hd78c;
	#20
	A = 16'hbf81;
	B = 16'h398e;
	ans_a = 16'hd7a1;
	#20
	A = 16'hbc45;
	B = 16'hb7eb;
	ans_a = 16'hd799;
	#20
	A = 16'h3d9a;
	B = 16'h2e55;
	ans_a = 16'hd797;
	#20
	A = 16'h3da5;
	B = 16'h39b8;
	ans_a = 16'hd787;
	#20
	A = 16'hba51;
	B = 16'h3f53;
	ans_a = 16'hd79e;
	#20
	A = 16'hb67e;
	B = 16'h3de3;
	ans_a = 16'hd7a8;
	#20
	A = 16'h3c5a;
	B = 16'h3e40;
	ans_a = 16'hd78d;
	#20
	A = 16'h3c4e;
	B = 16'ha81e;
	ans_a = 16'hd78e;
	#20
	A = 16'h3fce;
	B = 16'h3de7;
	ans_a = 16'hd760;
	#20
	A = 16'h3786;
	B = 16'hbbb9;
	ans_a = 16'hd767;
	#20
	A = 16'h3cbb;
	B = 16'hbcfc;
	ans_a = 16'hd77f;
	#20
	A = 16'h3614;
	B = 16'h27a0;
	ans_a = 16'hd77f;
	#20
	A = 16'hbe45;
	B = 16'hbc8e;
	ans_a = 16'hd762;
	#20
	A = 16'h393a;
	B = 16'hb691;
	ans_a = 16'hd766;
	#20
	A = 16'h3d36;
	B = 16'h3ff5;
	ans_a = 16'hd73d;
	#20
	A = 16'hb5fe;
	B = 16'hbe55;
	ans_a = 16'hd734;
	#20
	A = 16'hbd5e;
	B = 16'hbe88;
	ans_a = 16'hd711;
	#20
	A = 16'hbeea;
	B = 16'h3d74;
	ans_a = 16'hd737;
	#20
	A = 16'hbba8;
	B = 16'h3e3b;
	ans_a = 16'hd74f;
	#20
	A = 16'hbcdb;
	B = 16'h33bd;
	ans_a = 16'hd754;
	#20
	A = 16'h3d80;
	B = 16'h3d5b;
	ans_a = 16'hd737;
	#20
	A = 16'hb475;
	B = 16'h3f73;
	ans_a = 16'hd73f;
	#20
	A = 16'hba7c;
	B = 16'hb965;
	ans_a = 16'hd736;
	#20
	A = 16'h3fd6;
	B = 16'hbf61;
	ans_a = 16'hd770;
	#20
	A = 16'hbb85;
	B = 16'h3d60;
	ans_a = 16'hd784;
	#20
	A = 16'h3f1b;
	B = 16'h3e7b;
	ans_a = 16'hd756;
	#20
	A = 16'h3bdb;
	B = 16'h3b07;
	ans_a = 16'hd748;
	#20
	A = 16'h241e;
	B = 16'hbf8b;
	ans_a = 16'hd748;
	#20
	A = 16'hbf0e;
	B = 16'h3e87;
	ans_a = 16'hd776;
	#20
	A = 16'hbfb8;
	B = 16'hbdfe;
	ans_a = 16'hd748;
	#20
	A = 16'h3d2b;
	B = 16'hbdf5;
	ans_a = 16'hd767;
	#20
	A = 16'h3dac;
	B = 16'hbc79;
	ans_a = 16'hd780;
	#20
	A = 16'hbb10;
	B = 16'h3ed2;
	ans_a = 16'hd798;
	#20
	A = 16'hbd82;
	B = 16'h3cce;
	ans_a = 16'hd7b2;
	#20
	A = 16'h3b8e;
	B = 16'hbd6d;
	ans_a = 16'hd7c6;
	#20
	A = 16'h3d95;
	B = 16'hb309;
	ans_a = 16'hd7cb;
	#20
	A = 16'hbdbd;
	B = 16'h38ff;
	ans_a = 16'hd7d9;
	#20
	A = 16'hbbb1;
	B = 16'h3c45;
	ans_a = 16'hd7e9;
	#20
	A = 16'hbc9e;
	B = 16'h3d03;
	ans_a = 16'hd800;
	#20
	A = 16'h385b;
	B = 16'hbc73;
	ans_a = 16'hd805;
	#20
	A = 16'hb887;
	B = 16'hbbf2;
	ans_a = 16'hd801;
	#20
	A = 16'h3615;
	B = 16'hbfe6;
	ans_a = 16'hd807;
	#20
	A = 16'h3648;
	B = 16'h3f8e;
	ans_a = 16'hd801;
	#20
	A = 16'h3eae;
	B = 16'hb067;
	ans_a = 16'hd803;
	#20
	A = 16'h3c39;
	B = 16'h3785;
	ans_a = 16'hd7fe;
	#20
	A = 16'hb8e1;
	B = 16'h3cf3;
	ans_a = 16'hd805;
	#20
	A = 16'hba04;
	B = 16'h3d26;
	ans_a = 16'hd80d;
	#20
	A = 16'hbf7f;
	B = 16'h3469;
	ans_a = 16'hd811;
	#20
	A = 16'h3e01;
	B = 16'h29d9;
	ans_a = 16'hd810;
	#20
	A = 16'hbbfe;
	B = 16'hb3bc;
	ans_a = 16'hd80e;
	#20
	A = 16'ha837;
	B = 16'hb8da;
	ans_a = 16'hd80e;
	#20
	A = 16'hbddb;
	B = 16'hbe11;
	ans_a = 16'hd7f8;
	#20
	A = 16'hbc90;
	B = 16'h3b6b;
	ans_a = 16'hd804;
	#20
	A = 16'h3e93;
	B = 16'h3e88;
	ans_a = 16'hd7dd;
	#20
	A = 16'hbdc3;
	B = 16'h3f6d;
	ans_a = 16'hd804;
	#20
	A = 16'h3f05;
	B = 16'h3861;
	ans_a = 16'hd7f9;
	#20
	A = 16'hbbb2;
	B = 16'h387d;
	ans_a = 16'hd801;
	#20
	A = 16'hba5e;
	B = 16'hb3b8;
	ans_a = 16'hd7ff;
	#20
	A = 16'h317c;
	B = 16'h34fb;
	ans_a = 16'hd7fe;
	#20
	A = 16'h38d0;
	B = 16'hb97e;
	ans_a = 16'hd802;
	#20
	A = 16'h3bf9;
	B = 16'h351b;
	ans_a = 16'hd7ff;
	#20
	A = 16'h3351;
	B = 16'h302b;
	ans_a = 16'hd7ff;
	#20
	A = 16'h3eb5;
	B = 16'h330c;
	ans_a = 16'hd7f9;
	#20
	A = 16'h2edb;
	B = 16'hbd60;
	ans_a = 16'hd7fb;
	#20
	A = 16'h3cbe;
	B = 16'hbb28;
	ans_a = 16'hd806;
	#20
	A = 16'hb75b;
	B = 16'hbf7c;
	ans_a = 16'hd7fe;
	#20
	A = 16'h3a3c;
	B = 16'h1ad7;
	ans_a = 16'hd7fe;
	#20
	A = 16'hbe4a;
	B = 16'h3533;
	ans_a = 16'hd803;
	#20
	A = 16'h3503;
	B = 16'hbf2d;
	ans_a = 16'hd807;
	#20
	A = 16'hba9c;
	B = 16'h3fe4;
	ans_a = 16'hd814;
	#20
	A = 16'h33dc;
	B = 16'hb2c6;
	ans_a = 16'hd814;
	#20
	A = 16'h3d66;
	B = 16'h3e69;
	ans_a = 16'hd803;
	#20
	A = 16'h3df0;
	B = 16'hbf5f;
	ans_a = 16'hd819;
	#20
	A = 16'h3487;
	B = 16'h2542;
	ans_a = 16'hd819;
	#20
	A = 16'hb8b5;
	B = 16'h33af;
	ans_a = 16'hd81a;
	#20
	A = 16'h37c3;
	B = 16'hbd8c;
	ans_a = 16'hd81f;
	#20
	A = 16'h3a4c;
	B = 16'h3418;
	ans_a = 16'hd81d;
	#20
	A = 16'hbff7;
	B = 16'h3ebd;
	ans_a = 16'hd838;
	#20
	A = 16'h34c3;
	B = 16'hbdda;
	ans_a = 16'hd83b;
	#20
	A = 16'hbf19;
	B = 16'h3d2d;
	ans_a = 16'hd84d;
	#20
	A = 16'ha58d;
	B = 16'h3050;
	ans_a = 16'hd84d;
	#20
	A = 16'hba0c;
	B = 16'h3e54;
	ans_a = 16'hd857;
	#20
	A = 16'hb442;
	B = 16'h3eda;
	ans_a = 16'hd85b;
	#20
	A = 16'hbf5e;
	B = 16'h3ff2;
	ans_a = 16'hd878;
	#20
	A = 16'hb9c8;
	B = 16'hbe57;
	ans_a = 16'hd86f;
	#20
	A = 16'hbd17;
	B = 16'h3e61;
	ans_a = 16'hd87f;
	#20
	A = 16'hb859;
	B = 16'h3c0d;
	ans_a = 16'hd883;
	#20
	A = 16'h3b73;
	B = 16'h3630;
	ans_a = 16'hd880;
	#20
	A = 16'h3f16;
	B = 16'h3ed5;
	ans_a = 16'hd868;
	#20
	A = 16'hb256;
	B = 16'h3e3b;
	ans_a = 16'hd86a;
	#20
	A = 16'hbdb8;
	B = 16'h3b0f;
	ans_a = 16'hd874;
	#20
	A = 16'hbca6;
	B = 16'hb6da;
	ans_a = 16'hd870;
	#20
	A = 16'hb355;
	B = 16'hb865;
	ans_a = 16'hd86f;
	#20
	A = 16'h3cf1;
	B = 16'h38d3;
	ans_a = 16'hd869;
	#20
	A = 16'hb541;
	B = 16'h3fc9;
	ans_a = 16'hd86e;
	#20
	A = 16'h3f16;
	B = 16'hb4a6;
	ans_a = 16'hd872;
	#20
	A = 16'h3ac2;
	B = 16'hb7b9;
	ans_a = 16'hd875;
	#20
	A = 16'hbf13;
	B = 16'hb252;
	ans_a = 16'hd872;
	#20
	A = 16'h3a57;
	B = 16'hbd02;
	ans_a = 16'hd87a;
	#20
	A = 16'h3726;
	B = 16'ha614;
	ans_a = 16'hd87a;
	#20
	A = 16'h3aa6;
	B = 16'hbcb1;
	ans_a = 16'hd882;
	#20
	A = 16'hbf75;
	B = 16'h395a;
	ans_a = 16'hd88c;
	#20
	A = 16'h3743;
	B = 16'hbfa7;
	ans_a = 16'hd893;
	#20
	A = 16'h3eb1;
	B = 16'h3c39;
	ans_a = 16'hd885;
	#20
	A = 16'h3f29;
	B = 16'h3f5e;
	ans_a = 16'hd86b;
	#20
	A = 16'h39d0;
	B = 16'h3e59;
	ans_a = 16'hd862;
	#20
	A = 16'hbcbc;
	B = 16'h3b6b;
	ans_a = 16'hd86b;
	#20
	A = 16'hb1d4;
	B = 16'hb951;
	ans_a = 16'hd86a;
	#20
	A = 16'h3b92;
	B = 16'h3ecf;
	ans_a = 16'hd85d;
	#20
	A = 16'h3974;
	B = 16'hbc71;
	ans_a = 16'hd863;
	#20
	A = 16'h3cff;
	B = 16'hb646;
	ans_a = 16'hd867;
	#20
	A = 16'h3ab5;
	B = 16'hbe81;
	ans_a = 16'hd872;
	#20
	A = 16'hb5d9;
	B = 16'h3d05;
	ans_a = 16'hd876;
	#20
	A = 16'h3ef9;
	B = 16'h3c9b;
	ans_a = 16'hd866;
	#20
	A = 16'h3e1c;
	B = 16'h3e56;
	ans_a = 16'hd853;
	#20
	A = 16'h3711;
	B = 16'h2adc;
	ans_a = 16'hd853;
	#20
	A = 16'h3b02;
	B = 16'hbac7;
	ans_a = 16'hd859;
	#20
	A = 16'h3d3e;
	B = 16'h2a61;
	ans_a = 16'hd858;
	#20
	A = 16'h39ed;
	B = 16'h3f1f;
	ans_a = 16'hd84d;
	#20
	A = 16'h3e31;
	B = 16'hbbd4;
	ans_a = 16'hd859;
	#20
	A = 16'h3f0a;
	B = 16'h3439;
	ans_a = 16'hd855;
	#20
	A = 16'h3a1f;
	B = 16'hbb99;
	ans_a = 16'hd85b;
	#20
	A = 16'hbeb2;
	B = 16'hb8bb;
	ans_a = 16'hd853;
	#20
	A = 16'h3ecc;
	B = 16'hb493;
	ans_a = 16'hd857;
	#20
	A = 16'h3e9f;
	B = 16'hb8ea;
	ans_a = 16'hd85f;
	#20
	A = 16'h2532;
	B = 16'h3f38;
	ans_a = 16'hd85f;
	#20
	A = 16'h3b28;
	B = 16'h3300;
	ans_a = 16'hd85d;
	#20
	A = 16'h392d;
	B = 16'h35b0;
	ans_a = 16'hd85b;
	#20
	A = 16'hbeb4;
	B = 16'h3c7e;
	ans_a = 16'hd86a;
	#20
	A = 16'hb991;
	B = 16'hbef8;
	ans_a = 16'hd860;
	#20
	A = 16'h39bf;
	B = 16'h3dd4;
	ans_a = 16'hd858;
	#20
	A = 16'hb585;
	B = 16'hb63d;
	ans_a = 16'hd857;
	#20
	A = 16'hbd21;
	B = 16'h381a;
	ans_a = 16'hd85c;
	#20
	A = 16'h3df6;
	B = 16'hb69a;
	ans_a = 16'hd861;
	#20
	A = 16'h391a;
	B = 16'h3f6b;
	ans_a = 16'hd858;
	#20
	A = 16'hb4f5;
	B = 16'h3ed4;
	ans_a = 16'hd85c;
	#20
	A = 16'hbebf;
	B = 16'hbcd9;
	ans_a = 16'hd84c;
	#20
	A = 16'hbe74;
	B = 16'h3324;
	ans_a = 16'hd84f;
	#20
	A = 16'hb8f8;
	B = 16'h3d94;
	ans_a = 16'hd856;
	#20
	A = 16'h3fb0;
	B = 16'h3de5;
	ans_a = 16'hd83f;
	#20
	A = 16'hb80f;
	B = 16'h3441;
	ans_a = 16'hd840;
	#20
	A = 16'hbd3d;
	B = 16'h3de9;
	ans_a = 16'hd84f;
	#20
	A = 16'hbec9;
	B = 16'hbffe;
	ans_a = 16'hd834;
	#20
	A = 16'h3f3a;
	B = 16'h3aa5;
	ans_a = 16'hd828;
	#20
	A = 16'hbf3a;
	B = 16'h3d16;
	ans_a = 16'hd83a;
	#20
	A = 16'h3e79;
	B = 16'h3893;
	ans_a = 16'hd833;
	#20
	A = 16'h3f01;
	B = 16'hbd28;
	ans_a = 16'hd845;
	#20
	A = 16'h385f;
	B = 16'h302a;
	ans_a = 16'hd844;
	#20
	A = 16'h35e0;
	B = 16'hb835;
	ans_a = 16'hd846;
	#20
	A = 16'hbfd3;
	B = 16'hbd7d;
	ans_a = 16'hd831;
	#20
	A = 16'hb89b;
	B = 16'h3e68;
	ans_a = 16'hd838;
	#20
	A = 16'haf4e;
	B = 16'hbf6d;
	ans_a = 16'hd836;
	#20
	A = 16'hba58;
	B = 16'hb544;
	ans_a = 16'hd834;
	#20
	A = 16'hbb94;
	B = 16'hbf4a;
	ans_a = 16'hd826;
	#20
	A = 16'h3c8b;
	B = 16'hb94a;
	ans_a = 16'hd82c;
	#20
	A = 16'h38df;
	B = 16'hb827;
	ans_a = 16'hd82f;
	#20
	A = 16'hbcd6;
	B = 16'h3ab2;
	ans_a = 16'hd837;
	#20
	A = 16'hba05;
	B = 16'h3e4e;
	ans_a = 16'hd840;
	#20
	A = 16'h3ce3;
	B = 16'hbf80;
	ans_a = 16'hd852;
	#20
	A = 16'h331a;
	B = 16'hb8e3;
	ans_a = 16'hd853;
	#20
	A = 16'hb3a8;
	B = 16'h3fe5;
	ans_a = 16'hd857;
	#20
	A = 16'hb863;
	B = 16'h2804;
	ans_a = 16'hd857;
	#20
	A = 16'h3fd7;
	B = 16'hbf46;
	ans_a = 16'hd874;
	#20
	A = 16'h3888;
	B = 16'hbc63;
	ans_a = 16'hd879;
	#20
	A = 16'h3c00;
	B = 16'h3868;
	ans_a = 16'hd875;
	#20
	A = 16'hb8fa;
	B = 16'hb8d7;
	ans_a = 16'hd872;
	#20
	A = 16'h3f1e;
	B = 16'h360f;
	ans_a = 16'hd86d;
	#20
	A = 16'had7d;
	B = 16'hba96;
	ans_a = 16'hd86c;
	#20
	A = 16'hbf97;
	B = 16'h3fdf;
	ans_a = 16'hd88a;
	#20
	A = 16'hb8d6;
	B = 16'h395f;
	ans_a = 16'hd88d;
	#20
	A = 16'hbda1;
	B = 16'hb8cc;
	ans_a = 16'hd886;
	#20
	A = 16'hbdea;
	B = 16'h260e;
	ans_a = 16'hd886;
	#20
	A = 16'h3a37;
	B = 16'h3649;
	ans_a = 16'hd884;
	#20
	A = 16'h3253;
	B = 16'hbd11;
	ans_a = 16'hd886;
	#20
	A = 16'hbc31;
	B = 16'h3fe8;
	ans_a = 16'hd897;
	#20
	A = 16'h3ac4;
	B = 16'h3e32;
	ans_a = 16'hd88d;
	#20
	A = 16'hbfe0;
	B = 16'hbdc9;
	ans_a = 16'hd876;
	#20
	A = 16'h3e5d;
	B = 16'hb56d;
	ans_a = 16'hd87a;
	#20
	A = 16'hbe5f;
	B = 16'hb3be;
	ans_a = 16'hd877;
	#20
	A = 16'h3d99;
	B = 16'h3d52;
	ans_a = 16'hd868;
	#20
	A = 16'h3c0f;
	B = 16'hb05f;
	ans_a = 16'hd869;
	#20
	A = 16'h3ca9;
	B = 16'hbd45;
	ans_a = 16'hd875;
	#20
	A = 16'h3cd6;
	B = 16'hb9cf;
	ans_a = 16'hd87c;
	#20
	A = 16'hbe18;
	B = 16'h3ff6;
	ans_a = 16'hd894;
	#20
	A = 16'hbdfd;
	B = 16'hb5a8;
	ans_a = 16'hd890;
	#20
	A = 16'h35aa;
	B = 16'hbe4c;
	ans_a = 16'hd894;
	#20
	A = 16'hbe39;
	B = 16'h3b94;
	ans_a = 16'hd8a0;
	#20
	A = 16'h3c46;
	B = 16'h374b;
	ans_a = 16'hd89c;
	#20
	A = 16'h2ce7;
	B = 16'hb5fb;
	ans_a = 16'hd89c;
	#20
	A = 16'h3d0d;
	B = 16'hbfec;
	ans_a = 16'hd8b0;
	#20
	A = 16'h36a3;
	B = 16'hb802;
	ans_a = 16'hd8b2;
	#20
	A = 16'hb488;
	B = 16'hbd9a;
	ans_a = 16'hd8af;
	#20
	A = 16'hbcdf;
	B = 16'h3f94;
	ans_a = 16'hd8c1;
	#20
	A = 16'h378d;
	B = 16'h384b;
	ans_a = 16'hd8bf;
	#20
	A = 16'hbcbc;
	B = 16'h2f66;
	ans_a = 16'hd8c0;
	#20
	A = 16'h3bf4;
	B = 16'h3fee;
	ans_a = 16'hd8b0;
	#20
	A = 16'hbc9f;
	B = 16'h3e21;
	ans_a = 16'hd8be;
	#20
	A = 16'h3cdd;
	B = 16'hae9a;
	ans_a = 16'hd8bf;
	#20
	A = 16'hb134;
	B = 16'hbe43;
	ans_a = 16'hd8bd;
	#20
	A = 16'hbc81;
	B = 16'h3c77;
	ans_a = 16'hd8c7;
	#20
	A = 16'hbeb1;
	B = 16'hbe95;
	ans_a = 16'hd8b1;
	#20
	A = 16'hb40d;
	B = 16'hbae0;
	ans_a = 16'hd8af;
	#20
	A = 16'h34fe;
	B = 16'hae28;
	ans_a = 16'hd8af;
	#20
	A = 16'hb8f5;
	B = 16'hb825;
	ans_a = 16'hd8ac;
	#20
	A = 16'hbed4;
	B = 16'hbd68;
	ans_a = 16'hd89a;
	#20
	A = 16'h3ac1;
	B = 16'hb4c0;
	ans_a = 16'hd89c;
	#20
	A = 16'h3e75;
	B = 16'h31de;
	ans_a = 16'hd89a;
	#20
	A = 16'h3554;
	B = 16'h3ed6;
	ans_a = 16'hd895;
	#20
	A = 16'h3747;
	B = 16'h36d3;
	ans_a = 16'hd893;
	#20
	A = 16'hb7a1;
	B = 16'hbafc;
	ans_a = 16'hd890;
	#20
	A = 16'h3f40;
	B = 16'h3f41;
	ans_a = 16'hd876;
	#20
	A = 16'hbecf;
	B = 16'h3eed;
	ans_a = 16'hd88e;
	#20
	A = 16'hbca7;
	B = 16'hbc04;
	ans_a = 16'hd885;
	#20
	A = 16'h3df3;
	B = 16'h3411;
	ans_a = 16'hd882;
	#20
	A = 16'h38f2;
	B = 16'hbeee;
	ans_a = 16'hd88b;
	#20
	A = 16'hb9ff;
	B = 16'hb335;
	ans_a = 16'hd88a;
	#20
	A = 16'had46;
	B = 16'h3ead;
	ans_a = 16'hd88b;
	#20
	A = 16'h3f7b;
	B = 16'hbd2a;
	ans_a = 16'hd89e;
	#20
	A = 16'hb598;
	B = 16'h3f09;
	ans_a = 16'hd8a3;
	#20
	A = 16'h3a6b;
	B = 16'hb96a;
	ans_a = 16'hd8a7;
	#20
	A = 16'hb6fb;
	B = 16'hbfc0;
	ans_a = 16'hd8a0;
	#20
	A = 16'h3e0c;
	B = 16'hb94f;
	ans_a = 16'hd8a8;
	#20
	A = 16'hbb28;
	B = 16'h3cd5;
	ans_a = 16'hd8b1;
	#20
	A = 16'h3eb0;
	B = 16'h38a8;
	ans_a = 16'hd8a9;
	#20
	A = 16'hbaab;
	B = 16'h3dea;
	ans_a = 16'hd8b3;
	#20
	A = 16'hbec6;
	B = 16'h3435;
	ans_a = 16'hd8b7;
	#20
	A = 16'h3607;
	B = 16'hbf60;
	ans_a = 16'hd8bd;
	#20
	A = 16'h3d80;
	B = 16'h39c9;
	ans_a = 16'hd8b5;
	#20
	A = 16'hb9dc;
	B = 16'hb41f;
	ans_a = 16'hd8b3;
	#20
	A = 16'hbf53;
	B = 16'hbfa8;
	ans_a = 16'hd897;
	#20
	A = 16'hbedf;
	B = 16'h3e3c;
	ans_a = 16'hd8ac;
	#20
	A = 16'hbfa4;
	B = 16'hbf6a;
	ans_a = 16'hd890;
	#20
	A = 16'hbb14;
	B = 16'h3d2c;
	ans_a = 16'hd899;
	#20
	A = 16'hbef7;
	B = 16'h3822;
	ans_a = 16'hd8a0;
	#20
	A = 16'h3e76;
	B = 16'h3e30;
	ans_a = 16'hd88c;
	#20
	A = 16'hbd80;
	B = 16'hb17d;
	ans_a = 16'hd88a;
	#20
	A = 16'h3ccb;
	B = 16'hbfa4;
	ans_a = 16'hd89c;
	#20
	A = 16'hb2e5;
	B = 16'had56;
	ans_a = 16'hd89c;
	#20
	A = 16'h365f;
	B = 16'h3d27;
	ans_a = 16'hd898;
	#20
	A = 16'hbfaf;
	B = 16'hbf8e;
	ans_a = 16'hd87b;
	#20
	A = 16'h3de6;
	B = 16'h3ebe;
	ans_a = 16'hd867;
	#20
	A = 16'h3671;
	B = 16'h3437;
	ans_a = 16'hd866;
	#20
	A = 16'h3d06;
	B = 16'h377e;
	ans_a = 16'hd861;
	#20
	A = 16'h2dca;
	B = 16'hbfff;
	ans_a = 16'hd862;
	#20
	A = 16'h3675;
	B = 16'hb896;
	ans_a = 16'hd864;
	#20
	A = 16'h3ef2;
	B = 16'hac2c;
	ans_a = 16'hd865;
	#20
	A = 16'hbef8;
	B = 16'h3cf8;
	ans_a = 16'hd876;
	#20
	A = 16'h3e16;
	B = 16'hb00f;
	ans_a = 16'hd878;
	#20
	A = 16'hbd28;
	B = 16'h339e;
	ans_a = 16'hd87a;
	#20
	A = 16'h3e6e;
	B = 16'hb6ea;
	ans_a = 16'hd880;
	#20
	A = 16'hbc1c;
	B = 16'hb8e9;
	ans_a = 16'hd87b;
	#20
	A = 16'h3f6d;
	B = 16'hbcc5;
	ans_a = 16'hd88d;
	#20
	A = 16'h2fb5;
	B = 16'h3d3f;
	ans_a = 16'hd88c;
	#20
	A = 16'h3645;
	B = 16'h3a9e;
	ans_a = 16'hd889;
	#20
	A = 16'h3615;
	B = 16'hb8fd;
	ans_a = 16'hd88b;
	#20
	A = 16'hba9c;
	B = 16'h3b4e;
	ans_a = 16'hd891;
	#20
	A = 16'h3f30;
	B = 16'hbe52;
	ans_a = 16'hd8a8;
	#20
	A = 16'hbb1e;
	B = 16'h3b7b;
	ans_a = 16'hd8af;
	#20
	A = 16'hbafa;
	B = 16'hb362;
	ans_a = 16'hd8ad;
	#20
	A = 16'hbcfc;
	B = 16'h3f8a;
	ans_a = 16'hd8c0;
	#20
	A = 16'hb553;
	B = 16'h3a07;
	ans_a = 16'hd8c2;
	#20
	A = 16'hbc3c;
	B = 16'ha33d;
	ans_a = 16'hd8c2;
	#20
	A = 16'h3bd0;
	B = 16'hbeaa;
	ans_a = 16'hd8cf;
	#20
	A = 16'hba5b;
	B = 16'h3485;
	ans_a = 16'hd8d1;
	#20
	A = 16'h35a1;
	B = 16'hb824;
	ans_a = 16'hd8d2;
	#20
	A = 16'h3fd3;
	B = 16'h3e02;
	ans_a = 16'hd8ba;
	#20
	A = 16'h3ff7;
	B = 16'h382e;
	ans_a = 16'hd8b2;
	#20
	A = 16'h3af9;
	B = 16'h3d40;
	ans_a = 16'hd8a9;
	#20
	A = 16'ha27f;
	B = 16'hb2dd;
	ans_a = 16'hd8a9;
	#20
	A = 16'h3773;
	B = 16'hbff9;
	ans_a = 16'hd8b0;
	#20
	A = 16'hbe2e;
	B = 16'h3d39;
	ans_a = 16'hd8c0;
	#20
	A = 16'h3fb1;
	B = 16'h3141;
	ans_a = 16'hd8bd;
	#20
	A = 16'hb0e5;
	B = 16'h3c12;
	ans_a = 16'hd8be;
	#20
	A = 16'h3e6f;
	B = 16'h3c36;
	ans_a = 16'hd8b0;
	#20
	A = 16'hb6af;
	B = 16'hb35e;
	ans_a = 16'hd8af;
	#20
	A = 16'hb012;
	B = 16'h384e;
	ans_a = 16'hd8b0;
	#20
	A = 16'h368b;
	B = 16'hbed8;
	ans_a = 16'hd8b6;
	#20
	A = 16'h3804;
	B = 16'hbb1c;
	ans_a = 16'hd8ba;
	#20
	A = 16'h3a90;
	B = 16'h38dc;
	ans_a = 16'hd8b6;
	#20
	A = 16'hbd85;
	B = 16'hb9c5;
	ans_a = 16'hd8ae;
	#20
	A = 16'hbf9d;
	B = 16'h36aa;
	ans_a = 16'hd8b4;
	#20
	A = 16'hba9f;
	B = 16'hbc90;
	ans_a = 16'hd8ac;
	#20
	A = 16'hab75;
	B = 16'hbca3;
	ans_a = 16'hd8ab;
	#20
	A = 16'h382a;
	B = 16'hafff;
	ans_a = 16'hd8ac;
	#20
	A = 16'h2b5a;
	B = 16'h3fea;
	ans_a = 16'hd8ab;
	#20
	A = 16'h3f61;
	B = 16'h3dda;
	ans_a = 16'hd895;
	#20
	A = 16'hb947;
	B = 16'h32b9;
	ans_a = 16'hd896;
	#20
	A = 16'h3dc0;
	B = 16'hb91a;
	ans_a = 16'hd89d;
	#20
	A = 16'hbf45;
	B = 16'hbdd8;
	ans_a = 16'hd888;
	#20
	A = 16'h3e31;
	B = 16'h3d01;
	ans_a = 16'hd879;
	#20
	A = 16'hbc87;
	B = 16'h392c;
	ans_a = 16'hd87f;
	#20
	A = 16'h3d71;
	B = 16'hbc68;
	ans_a = 16'hd88b;
	#20
	A = 16'ha5da;
	B = 16'hbc70;
	ans_a = 16'hd88b;
	#20
	A = 16'hb271;
	B = 16'hb2a4;
	ans_a = 16'hd88b;
	#20
	A = 16'hbf9a;
	B = 16'h3ee5;
	ans_a = 16'hd8a5;
	#20
	A = 16'hb7ce;
	B = 16'hbe5d;
	ans_a = 16'hd89f;
	#20
	A = 16'hbfaa;
	B = 16'hb902;
	ans_a = 16'hd895;
	#20
	A = 16'h3f58;
	B = 16'h35c0;
	ans_a = 16'hd890;
	#20
	A = 16'hbbeb;
	B = 16'h3f6c;
	ans_a = 16'hd89f;
	#20
	A = 16'hb63d;
	B = 16'h3372;
	ans_a = 16'hd8a0;
	#20
	A = 16'hbfac;
	B = 16'h3a5f;
	ans_a = 16'hd8ac;
	#20
	A = 16'hb966;
	B = 16'h38bf;
	ans_a = 16'hd8af;
	#20
	A = 16'h382f;
	B = 16'hbdd0;
	ans_a = 16'hd8b5;
	#20
	A = 16'h3859;
	B = 16'h37d4;
	ans_a = 16'hd8b3;
	#20
	A = 16'h3e04;
	B = 16'h332f;
	ans_a = 16'hd8b0;
	#20
	A = 16'hbcfd;
	B = 16'h3514;
	ans_a = 16'hd8b3;
	#20
	A = 16'hb84a;
	B = 16'h336c;
	ans_a = 16'hd8b4;
	#20
	A = 16'hb833;
	B = 16'hbb0b;
	ans_a = 16'hd8b0;
	#20
	A = 16'h3f4d;
	B = 16'hb070;
	ans_a = 16'hd8b2;
	#20
	A = 16'h28d5;
	B = 16'h36f0;
	ans_a = 16'hd8b2;
	#20
	A = 16'h3f17;
	B = 16'hba47;
	ans_a = 16'hd8bd;
	#20
	A = 16'hbfd3;
	B = 16'h3ba5;
	ans_a = 16'hd8cc;
	#20
	A = 16'h38c5;
	B = 16'hbf2b;
	ans_a = 16'hd8d5;
	#20
	A = 16'h3ffb;
	B = 16'hbf99;
	ans_a = 16'hd8f3;
	#20
	A = 16'hb9ba;
	B = 16'hb050;
	ans_a = 16'hd8f2;
	#20
	A = 16'h3d0b;
	B = 16'haa34;
	ans_a = 16'hd8f2;
	#20
	A = 16'h3de9;
	B = 16'hba42;
	ans_a = 16'hd8fb;
	#20
	A = 16'hb08c;
	B = 16'h3ffe;
	ans_a = 16'hd8fd;
	#20
	A = 16'hb4d5;
	B = 16'hbd1c;
	ans_a = 16'hd8fa;
	#20
	A = 16'hbd37;
	B = 16'h3b94;
	ans_a = 16'hd904;
	#20
	A = 16'hba18;
	B = 16'h3447;
	ans_a = 16'hd906;
	#20
	A = 16'h3b52;
	B = 16'h390a;
	ans_a = 16'hd901;
	#20
	A = 16'h3937;
	B = 16'h3661;
	ans_a = 16'hd8ff;
	#20
	A = 16'hb167;
	B = 16'h3c54;
	ans_a = 16'hd900;
	#20
	A = 16'hb9b9;
	B = 16'hb36f;
	ans_a = 16'hd8ff;
	#20
	A = 16'h37e4;
	B = 16'hb3d5;
	ans_a = 16'hd900;
	#20
	A = 16'hbec2;
	B = 16'hbca6;
	ans_a = 16'hd8f0;
	#20
	A = 16'hb31d;
	B = 16'hb94b;
	ans_a = 16'hd8ef;
	#20
	A = 16'hbd6b;
	B = 16'hba7d;
	ans_a = 16'hd8e6;
	#20
	A = 16'hbcd6;
	B = 16'h3636;
	ans_a = 16'hd8ea;
	#20
	A = 16'hb4c8;
	B = 16'hbf48;
	ans_a = 16'hd8e6;
	#20
	A = 16'hbc3d;
	B = 16'h3d9c;
	ans_a = 16'hd8f2;
	#20
	A = 16'h3f30;
	B = 16'hbd73;
	ans_a = 16'hd906;
	#20
	A = 16'hb9c7;
	B = 16'h3e58;
	ans_a = 16'hd90f;
	#20
	A = 16'hbe3b;
	B = 16'hbe1b;
	ans_a = 16'hd8fc;
	#20
	A = 16'hbf8e;
	B = 16'hb523;
	ans_a = 16'hd8f7;
	#20
	A = 16'hbe68;
	B = 16'hbb7f;
	ans_a = 16'hd8eb;
	#20
	A = 16'hb9e1;
	B = 16'h3d34;
	ans_a = 16'hd8f3;
	#20
	A = 16'h3dce;
	B = 16'h3f97;
	ans_a = 16'hd8dd;
	#20
	A = 16'h3a42;
	B = 16'hbcf3;
	ans_a = 16'hd8e5;
	#20
	A = 16'hbf89;
	B = 16'hbe43;
	ans_a = 16'hd8cd;
	#20
	A = 16'hb3f9;
	B = 16'hbef6;
	ans_a = 16'hd8ca;
	#20
	A = 16'h3cd5;
	B = 16'h2ed4;
	ans_a = 16'hd8c9;
	#20
	A = 16'hbede;
	B = 16'hbb94;
	ans_a = 16'hd8bc;
	#20
	A = 16'h3c60;
	B = 16'h342a;
	ans_a = 16'hd8ba;
	#20
	A = 16'hbd50;
	B = 16'hbff3;
	ans_a = 16'hd8a5;
	#20
	A = 16'h3d8e;
	B = 16'h347c;
	ans_a = 16'hd8a2;
	#20
	A = 16'hbca8;
	B = 16'hbc76;
	ans_a = 16'hd898;
	#20
	A = 16'hbe98;
	B = 16'h3945;
	ans_a = 16'hd8a1;
	#20
	A = 16'hbaae;
	B = 16'h3d48;
	ans_a = 16'hd8aa;
	#20
	A = 16'hbc6b;
	B = 16'h3f88;
	ans_a = 16'hd8bb;
	#20
	A = 16'h372e;
	B = 16'hb954;
	ans_a = 16'hd8bd;
	#20
	A = 16'hbc15;
	B = 16'hbed9;
	ans_a = 16'hd8af;
	#20
	A = 16'h342c;
	B = 16'h397c;
	ans_a = 16'hd8ae;
	#20
	A = 16'h3c40;
	B = 16'hbfa4;
	ans_a = 16'hd8be;
	#20
	A = 16'hb938;
	B = 16'h3b05;
	ans_a = 16'hd8c3;
	#20
	A = 16'hbc69;
	B = 16'hb4e1;
	ans_a = 16'hd8c0;
	#20
	A = 16'hbaf7;
	B = 16'hb5ab;
	ans_a = 16'hd8be;
	#20
	A = 16'h3e0e;
	B = 16'hbf17;
	ans_a = 16'hd8d3;
	#20
	A = 16'h3fef;
	B = 16'h3e80;
	ans_a = 16'hd8b9;
	#20
	A = 16'hbfef;
	B = 16'hbc5e;
	ans_a = 16'hd8a8;
	#20
	A = 16'hb296;
	B = 16'h3a73;
	ans_a = 16'hd8a9;
	#20
	A = 16'h3d5d;
	B = 16'h3d33;
	ans_a = 16'hd89b;
	#20
	A = 16'hae1a;
	B = 16'h3eed;
	ans_a = 16'hd89c;
	#20
	A = 16'h37b3;
	B = 16'h397d;
	ans_a = 16'hd899;
	#20
	A = 16'haf5e;
	B = 16'h2c47;
	ans_a = 16'hd899;
	#20
	A = 16'hbbd5;
	B = 16'hbe60;
	ans_a = 16'hd88d;
	#20
	A = 16'h3aa7;
	B = 16'hbd8b;
	ans_a = 16'hd896;
	#20
	A = 16'hbe85;
	B = 16'h3b7c;
	ans_a = 16'hd8a2;
	#20
	A = 16'hbdc3;
	B = 16'hb9bd;
	ans_a = 16'hd89a;
	#20
	A = 16'h3ec6;
	B = 16'h35ce;
	ans_a = 16'hd895;
	#20
	A = 16'h39bb;
	B = 16'hb221;
	ans_a = 16'hd896;
	#20
	A = 16'h3da4;
	B = 16'hbee6;
	ans_a = 16'hd8a9;
	#20
	A = 16'haf66;
	B = 16'h37e3;
	ans_a = 16'hd8a9;
	#20
	A = 16'hbf5b;
	B = 16'hbf4c;
	ans_a = 16'hd88e;
	#20
	A = 16'h293a;
	B = 16'hb873;
	ans_a = 16'hd88e;
	#20
	A = 16'h3431;
	B = 16'h3d74;
	ans_a = 16'hd88b;
	#20
	A = 16'h3d94;
	B = 16'hbc48;
	ans_a = 16'hd897;
	#20
	A = 16'hbd8d;
	B = 16'h3567;
	ans_a = 16'hd89b;
	#20
	A = 16'hbcf2;
	B = 16'h1052;
	ans_a = 16'hd89b;
	#20
	A = 16'hb8f5;
	B = 16'h389d;
	ans_a = 16'hd89e;
	#20
	A = 16'hb958;
	B = 16'hbcdf;
	ans_a = 16'hd897;
	#20
	A = 16'hb80f;
	B = 16'hbdda;
	ans_a = 16'hd891;
	#20
	A = 16'h3e33;
	B = 16'hbe2e;
	ans_a = 16'hd8a4;
	#20
	A = 16'h32c0;
	B = 16'hbfd3;
	ans_a = 16'hd8a7;
	#20
	A = 16'h3ce9;
	B = 16'hb6b9;
	ans_a = 16'hd8ab;
	#20
	A = 16'hbf18;
	B = 16'hbe88;
	ans_a = 16'hd894;
	#20
	A = 16'hbe69;
	B = 16'h3f43;
	ans_a = 16'hd8ab;
	#20
	A = 16'hbc0a;
	B = 16'h3b9d;
	ans_a = 16'hd8b3;
	#20
	A = 16'h382d;
	B = 16'hbc10;
	ans_a = 16'hd8b7;
	#20
	A = 16'h3e1f;
	B = 16'hbc92;
	ans_a = 16'hd8c5;
	#20
	A = 16'hbf3e;
	B = 16'hbdd5;
	ans_a = 16'hd8b0;
	#20
	A = 16'hb47b;
	B = 16'hadd9;
	ans_a = 16'hd8b0;
	#20
	A = 16'hba00;
	B = 16'h3d03;
	ans_a = 16'hd8b8;
	#20
	A = 16'h3e7c;
	B = 16'h2cdf;
	ans_a = 16'hd8b7;
	#20
	A = 16'h3f00;
	B = 16'hba27;
	ans_a = 16'hd8c2;
	#20
	A = 16'h3dfe;
	B = 16'h2d35;
	ans_a = 16'hd8c1;
	#20
	A = 16'hbc19;
	B = 16'hbcc2;
	ans_a = 16'hd8b7;
	#20
	A = 16'h3f8f;
	B = 16'h3895;
	ans_a = 16'hd8ae;
	#20
	A = 16'hbc74;
	B = 16'hb112;
	ans_a = 16'hd8ad;
	#20
	A = 16'h3d1c;
	B = 16'h39a1;
	ans_a = 16'hd8a6;
	#20
	A = 16'hb9cd;
	B = 16'h2c83;
	ans_a = 16'hd8a6;
	#20
	A = 16'h38c5;
	B = 16'h3ff4;
	ans_a = 16'hd89d;
	#20
	A = 16'hb4c5;
	B = 16'hbb2e;
	ans_a = 16'hd89b;
	#20
	A = 16'h3856;
	B = 16'hbe8f;
	ans_a = 16'hd8a2;
	#20
	A = 16'hb7cd;
	B = 16'hb02e;
	ans_a = 16'hd8a1;
	#20
	A = 16'hbf5b;
	B = 16'hbd3c;
	ans_a = 16'hd88e;
	#20
	A = 16'hb9d0;
	B = 16'h3484;
	ans_a = 16'hd890;
	#20
	A = 16'hba0a;
	B = 16'hba32;
	ans_a = 16'hd88b;
	#20
	A = 16'hb922;
	B = 16'h3f92;
	ans_a = 16'hd895;
	#20
	A = 16'hb460;
	B = 16'h3610;
	ans_a = 16'hd896;
	#20
	A = 16'h3a61;
	B = 16'hac7c;
	ans_a = 16'hd896;
	#20
	A = 16'hbe1c;
	B = 16'hbe31;
	ans_a = 16'hd883;
	#20
	A = 16'h399f;
	B = 16'hbf8f;
	ans_a = 16'hd88e;
	#20
	A = 16'h3d3b;
	B = 16'h3865;
	ans_a = 16'hd888;
	#20
	A = 16'hb72c;
	B = 16'h3fe4;
	ans_a = 16'hd88f;
	#20
	A = 16'h3d4a;
	B = 16'h3d5d;
	ans_a = 16'hd881;
	#20
	A = 16'hba55;
	B = 16'h3c3d;
	ans_a = 16'hd888;
	#20
	A = 16'hb965;
	B = 16'h3c99;
	ans_a = 16'hd88e;
	#20
	A = 16'hba22;
	B = 16'h3ebf;
	ans_a = 16'hd898;
	#20
	A = 16'h3ccd;
	B = 16'h3a21;
	ans_a = 16'hd891;
	#20
	A = 16'h3c17;
	B = 16'h3ace;
	ans_a = 16'hd88a;
	#20
	A = 16'h3d80;
	B = 16'h2df5;
	ans_a = 16'hd889;
	#20
	A = 16'hbb7b;
	B = 16'hbfd5;
	ans_a = 16'hd87a;
	#20
	A = 16'hb721;
	B = 16'h38d9;
	ans_a = 16'hd87c;
	#20
	A = 16'h37e0;
	B = 16'hbef0;
	ans_a = 16'hd883;
	#20
	A = 16'hbc41;
	B = 16'hbe17;
	ans_a = 16'hd876;
	#20
	A = 16'hbdd1;
	B = 16'hbe60;
	ans_a = 16'hd863;
	#20
	A = 16'hbfb2;
	B = 16'h3901;
	ans_a = 16'hd86d;
	#20
	A = 16'h3e95;
	B = 16'h3fdd;
	ans_a = 16'hd853;
	#20
	A = 16'hbbac;
	B = 16'hb6c0;
	ans_a = 16'hd850;
	#20
	A = 16'h3f1e;
	B = 16'h3b50;
	ans_a = 16'hd843;
	#20
	A = 16'haa09;
	B = 16'hb875;
	ans_a = 16'hd843;
	#20
	A = 16'hbb7f;
	B = 16'hbd06;
	ans_a = 16'hd83a;
	#20
	A = 16'hb856;
	B = 16'hbd91;
	ans_a = 16'hd834;
	#20
	A = 16'hbf7f;
	B = 16'hbe83;
	ans_a = 16'hd81c;
	#20
	A = 16'h3db1;
	B = 16'h3af8;
	ans_a = 16'hd812;
	#20
	A = 16'h3325;
	B = 16'h3c30;
	ans_a = 16'hd810;
	#20
	A = 16'hbfde;
	B = 16'h35fd;
	ans_a = 16'hd816;
	#20
	A = 16'hbe31;
	B = 16'h2fb7;
	ans_a = 16'hd817;
	#20
	A = 16'hbfe8;
	B = 16'hbddb;
	ans_a = 16'hd800;
	#20
	A = 16'h36ff;
	B = 16'h3cdd;
	ans_a = 16'hd7f7;
	#20
	A = 16'hbe73;
	B = 16'hbdf2;
	ans_a = 16'hd7d1;
	#20
	A = 16'h3cc4;
	B = 16'hbd8a;
	ans_a = 16'hd7eb;
	#20
	A = 16'hbcd8;
	B = 16'hbaf0;
	ans_a = 16'hd7da;
	#20
	A = 16'hb645;
	B = 16'hb27a;
	ans_a = 16'hd7d9;
	#20
	A = 16'hb900;
	B = 16'hbbce;
	ans_a = 16'hd7cf;
	#20
	A = 16'hb91f;
	B = 16'hb9ea;
	ans_a = 16'hd7c7;
	#20
	A = 16'h36d6;
	B = 16'h3841;
	ans_a = 16'hd7c3;
	#20
	A = 16'h348b;
	B = 16'hbe7c;
	ans_a = 16'hd7ca;
	#20
	A = 16'hbc3e;
	B = 16'h315c;
	ans_a = 16'hd7cd;
	#20
	A = 16'h3f73;
	B = 16'hbd14;
	ans_a = 16'hd7f3;
	#20
	A = 16'h2ce7;
	B = 16'h3a80;
	ans_a = 16'hd7f2;
	#20
	A = 16'hac42;
	B = 16'h3a40;
	ans_a = 16'hd7f3;
	#20
	A = 16'hbef7;
	B = 16'hb267;
	ans_a = 16'hd7ed;
	#20
	A = 16'h3d0f;
	B = 16'h3db8;
	ans_a = 16'hd7d0;
	#20
	A = 16'hb3d5;
	B = 16'h2d79;
	ans_a = 16'hd7d0;
	#20
	A = 16'h3156;
	B = 16'h3a93;
	ans_a = 16'hd7ce;
	#20
	A = 16'hbe80;
	B = 16'h3cb5;
	ans_a = 16'hd7ed;
	#20
	A = 16'h345e;
	B = 16'hb8b7;
	ans_a = 16'hd7f0;
	#20
	A = 16'hb7db;
	B = 16'hbe47;
	ans_a = 16'hd7e4;
	#20
	A = 16'h3fbb;
	B = 16'hba0c;
	ans_a = 16'hd7fb;
	#20
	A = 16'h3de7;
	B = 16'h34c0;
	ans_a = 16'hd7f4;
	#20
	A = 16'h3e7b;
	B = 16'hbeb5;
	ans_a = 16'hd810;
	#20
	A = 16'hb5ed;
	B = 16'h346a;
	ans_a = 16'hd811;
	#20
	A = 16'hbf7e;
	B = 16'h3a72;
	ans_a = 16'hd81d;
	#20
	A = 16'hbadc;
	B = 16'h39c1;
	ans_a = 16'hd822;
	#20
	A = 16'ha886;
	B = 16'h3c91;
	ans_a = 16'hd822;
	#20
	A = 16'hbf10;
	B = 16'h3e8c;
	ans_a = 16'hd839;
	#20
	A = 16'hbcd9;
	B = 16'h3f52;
	ans_a = 16'hd84b;
	#20
	A = 16'h3fae;
	B = 16'hb477;
	ans_a = 16'hd84f;
	#20
	A = 16'hbcd5;
	B = 16'h3e63;
	ans_a = 16'hd85e;
	#20
	A = 16'hbb71;
	B = 16'hb8c9;
	ans_a = 16'hd85a;
	#20
	A = 16'hbf85;
	B = 16'h349f;
	ans_a = 16'hd85e;
	#20
	A = 16'hbc07;
	B = 16'hbf98;
	ans_a = 16'hd84f;
	#20
	A = 16'had0b;
	B = 16'h3d5d;
	ans_a = 16'hd850;
	#20
	A = 16'hb460;
	B = 16'h3b19;
	ans_a = 16'hd852;
	#20
	A = 16'hb966;
	B = 16'hb40a;
	ans_a = 16'hd851;
	#20
	A = 16'h3e66;
	B = 16'h3ab0;
	ans_a = 16'hd846;
	#20
	A = 16'hbc45;
	B = 16'hbf9a;
	ans_a = 16'hd836;
	#20
	A = 16'h382d;
	B = 16'h3c6c;
	ans_a = 16'hd831;
	#20
	A = 16'hbc4f;
	B = 16'h30fd;
	ans_a = 16'hd832;
	#20
	A = 16'h3e88;
	B = 16'hb923;
	ans_a = 16'hd83a;
	#20
	A = 16'hbdc1;
	B = 16'h3e04;
	ans_a = 16'hd84b;
	#20
	A = 16'h3d6b;
	B = 16'hbbe8;
	ans_a = 16'hd856;
	#20
	A = 16'h3a19;
	B = 16'hb93b;
	ans_a = 16'hd85a;
	#20
	A = 16'hbc56;
	B = 16'h3b05;
	ans_a = 16'hd862;
	#20
	A = 16'h3ab4;
	B = 16'hbd87;
	ans_a = 16'hd86b;
	#20
	A = 16'h3ebc;
	B = 16'h3f2d;
	ans_a = 16'hd853;
	#20
	A = 16'h30dd;
	B = 16'hbcc3;
	ans_a = 16'hd854;
	#20
	A = 16'hbc72;
	B = 16'hb405;
	ans_a = 16'hd852;
	#20
	A = 16'hb912;
	B = 16'h2d55;
	ans_a = 16'hd852;
	#20
	A = 16'hbfab;
	B = 16'hb8b0;
	ans_a = 16'hd849;
	#20
	A = 16'h3a34;
	B = 16'h303f;
	ans_a = 16'hd848;
	#20
	A = 16'h313d;
	B = 16'h3cca;
	ans_a = 16'hd846;
	#20
	A = 16'hb4f7;
	B = 16'h3d68;
	ans_a = 16'hd849;
	#20
	A = 16'hb008;
	B = 16'h32e3;
	ans_a = 16'hd849;
	#20
	A = 16'hb1d5;
	B = 16'h3360;
	ans_a = 16'hd849;
	#20
	A = 16'hb45d;
	B = 16'h373c;
	ans_a = 16'hd84a;
	#20
	A = 16'h3f72;
	B = 16'hb1d7;
	ans_a = 16'hd84d;
	#20
	A = 16'hbd89;
	B = 16'h3da7;
	ans_a = 16'hd85d;
	#20
	A = 16'h25ee;
	B = 16'hb954;
	ans_a = 16'hd85d;
	#20
	A = 16'hb91d;
	B = 16'h3026;
	ans_a = 16'hd85e;
	#20
	A = 16'hbe1c;
	B = 16'h3ca0;
	ans_a = 16'hd86c;
	#20
	A = 16'h3eb4;
	B = 16'hbb3f;
	ans_a = 16'hd878;
	#20
	A = 16'ha0e2;
	B = 16'h3e30;
	ans_a = 16'hd878;
	#20
	A = 16'h34de;
	B = 16'hbaea;
	ans_a = 16'hd87a;
	#20
	A = 16'h3756;
	B = 16'hbe7e;
	ans_a = 16'hd880;
	#20
	A = 16'hbc91;
	B = 16'hbf41;
	ans_a = 16'hd86f;
	#20
	A = 16'hbca6;
	B = 16'h3d7b;
	ans_a = 16'hd87c;
	#20
	A = 16'h3bd6;
	B = 16'h38b6;
	ans_a = 16'hd877;
	#20
	A = 16'h3dba;
	B = 16'h3885;
	ans_a = 16'hd871;
	#20
	A = 16'hbdb7;
	B = 16'h3a50;
	ans_a = 16'hd87a;
	#20
	A = 16'h3da7;
	B = 16'h33e7;
	ans_a = 16'hd877;
	#20
	A = 16'h3c79;
	B = 16'h3470;
	ans_a = 16'hd875;
	#20
	A = 16'h3d1c;
	B = 16'hb6e7;
	ans_a = 16'hd879;
	#20
	A = 16'h2e27;
	B = 16'hbc98;
	ans_a = 16'hd87a;
	#20
	A = 16'h2f21;
	B = 16'h3eff;
	ans_a = 16'hd878;
	#20
	A = 16'h36a0;
	B = 16'hbefa;
	ans_a = 16'hd87e;
	#20
	A = 16'hbe03;
	B = 16'h3511;
	ans_a = 16'hd882;
	#20
	A = 16'hbc96;
	B = 16'hb5dd;
	ans_a = 16'hd87f;
	#20
	A = 16'h3d0b;
	B = 16'h3dad;
	ans_a = 16'hd871;
	#20
	A = 16'h3f2c;
	B = 16'hbf3a;
	ans_a = 16'hd88b;
	#20
	A = 16'hbfd8;
	B = 16'hbb21;
	ans_a = 16'hd87d;
	#20
	A = 16'hbfd0;
	B = 16'hbfb5;
	ans_a = 16'hd85f;
	#20
	A = 16'hb4d4;
	B = 16'hbd30;
	ans_a = 16'hd85c;
	#20
	A = 16'h110c;
	B = 16'hbe4c;
	ans_a = 16'hd85c;
	#20
	A = 16'hbd26;
	B = 16'h3da0;
	ans_a = 16'hd86a;
	#20
	A = 16'h3d05;
	B = 16'hbe00;
	ans_a = 16'hd879;
	#20
	A = 16'hbef0;
	B = 16'h9a57;
	ans_a = 16'hd879;
	#20
	A = 16'hbc36;
	B = 16'hbca5;
	ans_a = 16'hd86f;
	#20
	A = 16'h3aa5;
	B = 16'hbdea;
	ans_a = 16'hd879;
	#20
	A = 16'h3b86;
	B = 16'h3f20;
	ans_a = 16'hd86c;
	#20
	A = 16'h3032;
	B = 16'h383b;
	ans_a = 16'hd86b;
	#20
	A = 16'h3a2d;
	B = 16'hbc51;
	ans_a = 16'hd872;
	#20
	A = 16'hbcde;
	B = 16'h3ebe;
	ans_a = 16'hd882;
	#20
	A = 16'h3cda;
	B = 16'h2f2a;
	ans_a = 16'hd881;
	#20
	A = 16'h3d29;
	B = 16'hbfa2;
	ans_a = 16'hd895;
	#20
	A = 16'h3c36;
	B = 16'h37c3;
	ans_a = 16'hd891;
	#20
	A = 16'hb8fa;
	B = 16'h39fa;
	ans_a = 16'hd895;
	#20
	A = 16'h3ed0;
	B = 16'hbd32;
	ans_a = 16'hd8a7;
	#20
	A = 16'hbb3a;
	B = 16'h3d9c;
	ans_a = 16'hd8b1;
	#20
	A = 16'hbebe;
	B = 16'hbe5a;
	ans_a = 16'hd89c;
	#20
	A = 16'h3de4;
	B = 16'h3a11;
	ans_a = 16'hd893;
	#20
	A = 16'h3ef6;
	B = 16'h3d55;
	ans_a = 16'hd880;
	#20
	A = 16'hbacf;
	B = 16'h3dca;
	ans_a = 16'hd88a;
	#20
	A = 16'hbe0c;
	B = 16'h3dd2;
	ans_a = 16'hd89c;
	#20
	A = 16'h39ce;
	B = 16'hbcca;
	ans_a = 16'hd8a3;
	#20
	A = 16'hbe7d;
	B = 16'hbbb4;
	ans_a = 16'hd897;
	#20
	A = 16'h3a10;
	B = 16'hb258;
	ans_a = 16'hd898;
	#20
	A = 16'hb49d;
	B = 16'hbc1f;
	ans_a = 16'hd896;
	#20
	A = 16'hba6d;
	B = 16'h250c;
	ans_a = 16'hd896;
	#20
	A = 16'h344a;
	B = 16'hbe0d;
	ans_a = 16'hd899;
	#20
	A = 16'h3d1a;
	B = 16'h3b8a;
	ans_a = 16'hd88f;
	#20
	A = 16'hbf88;
	B = 16'h3f95;
	ans_a = 16'hd8ac;
	#20
	A = 16'h3f23;
	B = 16'h35aa;
	ans_a = 16'hd8a7;
	#20
	A = 16'h3690;
	B = 16'hbf64;
	ans_a = 16'hd8ad;
	#20
	A = 16'h3ecc;
	B = 16'h3fe0;
	ans_a = 16'hd892;
	#20
	A = 16'hb849;
	B = 16'hbf8e;
	ans_a = 16'hd88a;
	#20
	A = 16'h3944;
	B = 16'h3578;
	ans_a = 16'hd888;
	#20
	A = 16'hb2e1;
	B = 16'hb66a;
	ans_a = 16'hd887;
	#20
	A = 16'h3ca8;
	B = 16'h3ce2;
	ans_a = 16'hd87c;
	#20
	A = 16'h3c39;
	B = 16'h3a7a;
	ans_a = 16'hd875;
	#20
	A = 16'h3a6e;
	B = 16'h3fbb;
	ans_a = 16'hd869;
	#20
	A = 16'ha8db;
	B = 16'h353b;
	ans_a = 16'hd869;
	#20
	A = 16'h3da7;
	B = 16'hbeaf;
	ans_a = 16'hd87c;
	#20
	A = 16'had6b;
	B = 16'hbd46;
	ans_a = 16'hd87b;
	#20
	A = 16'h3e5d;
	B = 16'hbe78;
	ans_a = 16'hd890;
	#20
	A = 16'h3d2b;
	B = 16'h3b45;
	ans_a = 16'hd887;
	#20
	A = 16'hbd06;
	B = 16'hba0a;
	ans_a = 16'hd87f;
	#20
	A = 16'hac0c;
	B = 16'h3f68;
	ans_a = 16'hd880;
	#20
	A = 16'h3f2a;
	B = 16'hbccc;
	ans_a = 16'hd891;
	#20
	A = 16'hb97d;
	B = 16'hbbb3;
	ans_a = 16'hd88c;
	#20
	A = 16'h3d2f;
	B = 16'hbf9a;
	ans_a = 16'hd8a0;
	#20
	A = 16'hbb6f;
	B = 16'h2d93;
	ans_a = 16'hd8a1;
	#20
	A = 16'h3999;
	B = 16'h3a35;
	ans_a = 16'hd89d;
	#20
	A = 16'h3ccf;
	B = 16'h3ad4;
	ans_a = 16'hd895;
	#20
	A = 16'h3be6;
	B = 16'hbdbd;
	ans_a = 16'hd8a0;
	#20
	A = 16'h39ad;
	B = 16'hbf8b;
	ans_a = 16'hd8ab;
	#20
	A = 16'h39f9;
	B = 16'haed4;
	ans_a = 16'hd8ac;
	#20
	A = 16'h3edb;
	B = 16'h36c7;
	ans_a = 16'hd8a6;
	#20
	A = 16'hb7e8;
	B = 16'h36ac;
	ans_a = 16'hd8a8;
	#20
	A = 16'h305e;
	B = 16'h3f73;
	ans_a = 16'hd8a6;
	#20
	A = 16'h3a39;
	B = 16'hba10;
	ans_a = 16'hd8ab;
	#20
	A = 16'hba06;
	B = 16'h36d1;
	ans_a = 16'hd8ae;
	#20
	A = 16'hbe26;
	B = 16'hb86d;
	ans_a = 16'hd8a7;
	#20
	A = 16'hb6cb;
	B = 16'h3cd9;
	ans_a = 16'hd8ab;
	#20
	A = 16'hbc23;
	B = 16'hb84e;
	ans_a = 16'hd8a7;
	#20
	A = 16'h3cbf;
	B = 16'hbb8d;
	ans_a = 16'hd8b0;
	#20
	A = 16'hbfbf;
	B = 16'hb8aa;
	ans_a = 16'hd8a7;
	#20
	A = 16'hbbb3;
	B = 16'hbb60;
	ans_a = 16'hd8a0;
	#20
	A = 16'h3b9f;
	B = 16'hbe92;
	ans_a = 16'hd8ad;
	#20
	A = 16'hb5f1;
	B = 16'h3ed8;
	ans_a = 16'hd8b2;
	#20
	A = 16'hbff5;
	B = 16'h3e3b;
	ans_a = 16'hd8cb;
	#20
	A = 16'hbcfb;
	B = 16'hb89d;
	ans_a = 16'hd8c5;
	#20
	A = 16'hbc9f;
	B = 16'h3c43;
	ans_a = 16'hd8cf;
	#20
	A = 16'hb827;
	B = 16'hbee7;
	ans_a = 16'hd8c8;
	#20
	A = 16'hb47d;
	B = 16'hbf32;
	ans_a = 16'hd8c4;
	#20
	A = 16'h35cb;
	B = 16'hbded;
	ans_a = 16'hd8c8;
	#20
	A = 16'hbc57;
	B = 16'h3558;
	ans_a = 16'hd8cb;
	#20
	A = 16'hb33e;
	B = 16'hb996;
	ans_a = 16'hd8ca;
	#20
	A = 16'h3c2f;
	B = 16'hbcb0;
	ans_a = 16'hd8d4;
	#20
	A = 16'h3263;
	B = 16'h3f1a;
	ans_a = 16'hd8d1;
	#20
	A = 16'h3fd5;
	B = 16'h3e67;
	ans_a = 16'hd8b8;
	#20
	A = 16'h3b13;
	B = 16'hb419;
	ans_a = 16'hd8ba;
	#20
	A = 16'haea8;
	B = 16'h32cf;
	ans_a = 16'hd8ba;
	#20
	A = 16'h384c;
	B = 16'hbed0;
	ans_a = 16'hd8c1;
	#20
	A = 16'hbbc2;
	B = 16'h32b9;
	ans_a = 16'hd8c3;
	#20
	A = 16'hb3a1;
	B = 16'hbf9f;
	ans_a = 16'hd8bf;
	#20
	A = 16'h3ca1;
	B = 16'hb2a8;
	ans_a = 16'hd8c1;
	#20
	A = 16'h3fc9;
	B = 16'h3d9b;
	ans_a = 16'hd8ab;
	#20
	A = 16'hbf9c;
	B = 16'hbb6c;
	ans_a = 16'hd89d;
	#20
	A = 16'hb920;
	B = 16'hbf39;
	ans_a = 16'hd894;
	#20
	A = 16'h3f07;
	B = 16'h2a7b;
	ans_a = 16'hd893;
	#20
	A = 16'hbecf;
	B = 16'h3a1a;
	ans_a = 16'hd89d;
	#20
	A = 16'hbebe;
	B = 16'hb5f2;
	ans_a = 16'hd898;
	#20
	A = 16'hbb46;
	B = 16'h3328;
	ans_a = 16'hd89a;
	#20
	A = 16'hb22e;
	B = 16'h3c9e;
	ans_a = 16'hd89c;
	#20
	A = 16'hbf2f;
	B = 16'h3935;
	ans_a = 16'hd8a5;
	#20
	A = 16'h3e5c;
	B = 16'h3d12;
	ans_a = 16'hd895;
	#20
	A = 16'hbb37;
	B = 16'h3c1b;
	ans_a = 16'hd89c;
	#20
	A = 16'h3e81;
	B = 16'hbe64;
	ans_a = 16'hd8b1;
	#20
	A = 16'hb07e;
	B = 16'h3f4d;
	ans_a = 16'hd8b3;
	#20
	A = 16'h3f1a;
	B = 16'h3f7e;
	ans_a = 16'hd898;
	#20
	A = 16'h3cb7;
	B = 16'hb8c7;
	ans_a = 16'hd89e;
	#20
	A = 16'hb787;
	B = 16'h344b;
	ans_a = 16'hd89f;
	#20
	A = 16'h2ecf;
	B = 16'h2a37;
	ans_a = 16'hd89f;
	#20
	A = 16'h3478;
	B = 16'h3a85;
	ans_a = 16'hd89d;
	#20
	A = 16'h3147;
	B = 16'hb061;
	ans_a = 16'hd89d;
	#20
	A = 16'h3960;
	B = 16'h3d5b;
	ans_a = 16'hd896;
	#20
	A = 16'hbc79;
	B = 16'hbf7e;
	ans_a = 16'hd885;
	#20
	A = 16'h379b;
	B = 16'h3fc8;
	ans_a = 16'hd87e;
	#20
	A = 16'h1e4b;
	B = 16'hbcec;
	ans_a = 16'hd87e;
	#20
	A = 16'hbf11;
	B = 16'h38db;
	ans_a = 16'hd887;
	#20
	A = 16'hbce2;
	B = 16'h29f3;
	ans_a = 16'hd887;
	#20
	A = 16'hbe88;
	B = 16'hb88f;
	ans_a = 16'hd880;
	#20
	A = 16'ha160;
	B = 16'h3be8;
	ans_a = 16'hd880;
	#20
	A = 16'hbd24;
	B = 16'h3ade;
	ans_a = 16'hd889;
	#20
	A = 16'hbfc8;
	B = 16'h3ea4;
	ans_a = 16'hd8a3;
	#20
	A = 16'hbf7e;
	B = 16'hbd8c;
	ans_a = 16'hd88e;
	#20
	A = 16'hb7fd;
	B = 16'h3cad;
	ans_a = 16'hd893;
	#20
	A = 16'hbdef;
	B = 16'hb944;
	ans_a = 16'hd88b;
	#20
	A = 16'h3c05;
	B = 16'hbdad;
	ans_a = 16'hd896;
	#20
	A = 16'h3b7c;
	B = 16'h3619;
	ans_a = 16'hd893;
	#20
	A = 16'hb814;
	B = 16'hbd3b;
	ans_a = 16'hd88e;
	#20
	A = 16'hb99a;
	B = 16'h3c8c;
	ans_a = 16'hd894;
	#20
	A = 16'h365e;
	B = 16'hb84b;
	ans_a = 16'hd896;
	#20
	A = 16'hbd88;
	B = 16'ha959;
	ans_a = 16'hd896;
	#20
	A = 16'hbd84;
	B = 16'h390b;
	ans_a = 16'hd89d;
	#20
	A = 16'hbd23;
	B = 16'hbdca;
	ans_a = 16'hd88e;
	#20
	A = 16'h3c02;
	B = 16'h3c50;
	ans_a = 16'hd885;
	#20
	A = 16'hb7d5;
	B = 16'hbc77;
	ans_a = 16'hd881;
	#20
	A = 16'hbe5d;
	B = 16'h3e2a;
	ans_a = 16'hd895;
	#20
	A = 16'hbb3e;
	B = 16'hbd12;
	ans_a = 16'hd88c;
	#20
	A = 16'hbd9e;
	B = 16'hb664;
	ans_a = 16'hd888;
	#20
	A = 16'hb99d;
	B = 16'hb31d;
	ans_a = 16'hd887;
	#20
	A = 16'hbc46;
	B = 16'hb7a0;
	ans_a = 16'hd883;
	#20
	A = 16'hbe33;
	B = 16'hb671;
	ans_a = 16'hd87e;
	#20
	A = 16'h38d1;
	B = 16'h3c54;
	ans_a = 16'hd879;
	#20
	A = 16'h3e0d;
	B = 16'hbe40;
	ans_a = 16'hd88c;
	#20
	A = 16'hbfce;
	B = 16'hbf11;
	ans_a = 16'hd870;
	#20
	A = 16'h3f64;
	B = 16'h39ca;
	ans_a = 16'hd865;
	#20
	A = 16'h3d1a;
	B = 16'hb10b;
	ans_a = 16'hd867;
	#20
	A = 16'hbde4;
	B = 16'h2027;
	ans_a = 16'hd867;
	#20
	A = 16'hbcb9;
	B = 16'hb4db;
	ans_a = 16'hd864;
	#20
	A = 16'h3d7b;
	B = 16'hbc3d;
	ans_a = 16'hd870;
	#20
	A = 16'hbd13;
	B = 16'h3fb8;
	ans_a = 16'hd884;
	#20
	A = 16'ha8f5;
	B = 16'h3ce1;
	ans_a = 16'hd884;
	#20
	A = 16'hb4d7;
	B = 16'hbd85;
	ans_a = 16'hd881;
	#20
	A = 16'hbeda;
	B = 16'h3d74;
	ans_a = 16'hd894;
	#20
	A = 16'h3d4f;
	B = 16'h31b5;
	ans_a = 16'hd892;
	#20
	A = 16'h3424;
	B = 16'h3f94;
	ans_a = 16'hd88e;
	#20
	A = 16'hbc03;
	B = 16'haec5;
	ans_a = 16'hd88d;
	#20
	A = 16'h3cb1;
	B = 16'h3858;
	ans_a = 16'hd888;
	#20
	A = 16'h3769;
	B = 16'h3c3c;
	ans_a = 16'hd884;
	#20
	A = 16'h263a;
	B = 16'h39a6;
	ans_a = 16'hd884;
	#20
	A = 16'hbab6;
	B = 16'h383e;
	ans_a = 16'hd888;
	#20
	A = 16'hbf25;
	B = 16'h3d6c;
	ans_a = 16'hd89b;
	#20
	A = 16'hbacd;
	B = 16'hbe39;
	ans_a = 16'hd890;
	#20
	A = 16'h3d47;
	B = 16'h3c50;
	ans_a = 16'hd885;
	#20
	A = 16'hbe2a;
	B = 16'h3507;
	ans_a = 16'hd889;
	#20
	A = 16'h32a9;
	B = 16'hbf6d;
	ans_a = 16'hd88c;
	#20
	A = 16'h38a0;
	B = 16'ha7b7;
	ans_a = 16'hd88c;
	#20
	A = 16'hb018;
	B = 16'hbda3;
	ans_a = 16'hd88b;
	#20
	A = 16'h39f3;
	B = 16'h3f5c;
	ans_a = 16'hd880;
	#20
	A = 16'hba6c;
	B = 16'hb54c;
	ans_a = 16'hd87e;
	#20
	A = 16'hbe3f;
	B = 16'hb7e5;
	ans_a = 16'hd878;
	#20
	A = 16'h393c;
	B = 16'hbeac;
	ans_a = 16'hd881;
	#20
	A = 16'h3072;
	B = 16'h35f7;
	ans_a = 16'hd881;
	#20
	A = 16'h2bb5;
	B = 16'h318c;
	ans_a = 16'hd881;
	#20
	A = 16'hbd7b;
	B = 16'hbd07;
	ans_a = 16'hd873;
	#20
	A = 16'haf6b;
	B = 16'h3d25;
	ans_a = 16'hd874;
	#20
	A = 16'h26ae;
	B = 16'h3ddc;
	ans_a = 16'hd874;
	#20
	A = 16'hb32b;
	B = 16'hb55a;
	ans_a = 16'hd873;
	#20
	A = 16'hb985;
	B = 16'hbfec;
	ans_a = 16'hd868;
	#20
	A = 16'hbc25;
	B = 16'h3c39;
	ans_a = 16'hd871;
	#20
	A = 16'h3c36;
	B = 16'h2c0e;
	ans_a = 16'hd870;
	#20
	A = 16'hbeb1;
	B = 16'h31a5;
	ans_a = 16'hd872;
	#20
	A = 16'h3fdd;
	B = 16'hba2f;
	ans_a = 16'hd87e;
	#20
	A = 16'h3614;
	B = 16'h3684;
	ans_a = 16'hd87d;
	#20
	A = 16'h3b55;
	B = 16'hbc37;
	ans_a = 16'hd885;
	#20
	A = 16'hafda;
	B = 16'h3a16;
	ans_a = 16'hd886;
	#20
	A = 16'h3ef2;
	B = 16'h3de5;
	ans_a = 16'hd872;
	#20
	A = 16'hbcec;
	B = 16'hbf84;
	ans_a = 16'hd860;
	#20
	A = 16'h3fe1;
	B = 16'hbe2e;
	ans_a = 16'hd878;
	#20
	A = 16'h3597;
	B = 16'h3df1;
	ans_a = 16'hd874;
	#20
	A = 16'h3ecc;
	B = 16'h376c;
	ans_a = 16'hd86e;
	#20
	A = 16'h397d;
	B = 16'hbed8;
	ans_a = 16'hd877;
	#20
	A = 16'hbdc5;
	B = 16'hbedc;
	ans_a = 16'hd863;
	#20
	A = 16'hbc96;
	B = 16'h2896;
	ans_a = 16'hd863;
	#20
	A = 16'h3fc6;
	B = 16'h3e7d;
	ans_a = 16'hd84a;
	#20
	A = 16'hbf99;
	B = 16'h3c5f;
	ans_a = 16'hd85b;
	#20
	A = 16'h3d9a;
	B = 16'h373d;
	ans_a = 16'hd856;
	#20
	A = 16'hbeaa;
	B = 16'h3a6e;
	ans_a = 16'hd861;
	#20
	A = 16'haecc;
	B = 16'hbcc6;
	ans_a = 16'hd860;
	#20
	A = 16'ha99c;
	B = 16'h2898;
	ans_a = 16'hd860;
	#20
	A = 16'h3cd8;
	B = 16'hbc31;
	ans_a = 16'hd86a;
	#20
	A = 16'hbd4f;
	B = 16'hbc78;
	ans_a = 16'hd85e;
	#20
	A = 16'hbf78;
	B = 16'hbccf;
	ans_a = 16'hd84c;
	#20
	A = 16'h2f4b;
	B = 16'hb566;
	ans_a = 16'hd84c;
	#20
	A = 16'h3a75;
	B = 16'h3b84;
	ans_a = 16'hd846;
	#20
	A = 16'h39c1;
	B = 16'h36d8;
	ans_a = 16'hd844;
	#20
	A = 16'haf4a;
	B = 16'h3f37;
	ans_a = 16'hd846;
	#20
	A = 16'h3d72;
	B = 16'h3c22;
	ans_a = 16'hd83b;
	#20
	A = 16'h3b0c;
	B = 16'hbd90;
	ans_a = 16'hd845;
	#20
	A = 16'hbf8e;
	B = 16'hb519;
	ans_a = 16'hd840;
	#20
	A = 16'hb944;
	B = 16'h3b12;
	ans_a = 16'hd845;
	#20
	A = 16'hbea5;
	B = 16'hbe91;
	ans_a = 16'hd82f;
	#20
	A = 16'h3831;
	B = 16'hb8ce;
	ans_a = 16'hd832;
	#20
	A = 16'h3370;
	B = 16'h3bb1;
	ans_a = 16'hd830;
	#20
	A = 16'hbdae;
	B = 16'h38b0;
	ans_a = 16'hd837;
	#20
	A = 16'hbc4c;
	B = 16'hb0eb;
	ans_a = 16'hd836;
	#20
	A = 16'hb7f4;
	B = 16'hbd50;
	ans_a = 16'hd831;
	#20
	A = 16'h3ea4;
	B = 16'hb8ad;
	ans_a = 16'hd839;
	#20
	A = 16'h2a96;
	B = 16'h3f19;
	ans_a = 16'hd838;
	#20
	A = 16'h1d3a;
	B = 16'hbc95;
	ans_a = 16'hd838;
	#20
	A = 16'hba7b;
	B = 16'hb6ad;
	ans_a = 16'hd835;
	#20
	A = 16'hbdac;
	B = 16'hb6f4;
	ans_a = 16'hd830;
	#20
	A = 16'hbb74;
	B = 16'hbc62;
	ans_a = 16'hd828;
	#20
	A = 16'h3c8b;
	B = 16'hbbf8;
	ans_a = 16'hd831;
	#20
	A = 16'h336c;
	B = 16'hbb4d;
	ans_a = 16'hd833;
	#20
	A = 16'h3fab;
	B = 16'h36a0;
	ans_a = 16'hd82d;
	#20
	A = 16'hb88c;
	B = 16'hbd2b;
	ans_a = 16'hd827;
	#20
	A = 16'h3f51;
	B = 16'h381d;
	ans_a = 16'hd81f;
	#20
	A = 16'hbfaf;
	B = 16'hbd62;
	ans_a = 16'hd80a;
	#20
	A = 16'h3ec7;
	B = 16'h3e9e;
	ans_a = 16'hd7e7;
	#20
	A = 16'h3d4e;
	B = 16'hba48;
	ans_a = 16'hd7f8;
	#20
	A = 16'h3834;
	B = 16'h378b;
	ans_a = 16'hd7f4;
	#20
	A = 16'h3541;
	B = 16'hb70a;
	ans_a = 16'hd7f6;
	#20
	A = 16'hbfce;
	B = 16'hb70d;
	ans_a = 16'hd7e8;
	#20
	A = 16'h3cc7;
	B = 16'hbe7e;
	ans_a = 16'hd804;
	#20
	A = 16'hbc8c;
	B = 16'h3e69;
	ans_a = 16'hd813;
	#20
	A = 16'h3b40;
	B = 16'h37b9;
	ans_a = 16'hd810;
	#20
	A = 16'hb037;
	B = 16'h3c95;
	ans_a = 16'hd811;
	#20
	A = 16'h3e79;
	B = 16'h3eb8;
	ans_a = 16'hd7f6;
	#20
	A = 16'h3a8c;
	B = 16'h3d58;
	ans_a = 16'hd7e4;
	#20
	A = 16'hb4b9;
	B = 16'hbc48;
	ans_a = 16'hd7df;
	#20
	A = 16'hbebe;
	B = 16'hbdd3;
	ans_a = 16'hd7b8;
	#20
	A = 16'h3f7b;
	B = 16'hbf9f;
	ans_a = 16'hd7f1;
	#20
	A = 16'hb9bd;
	B = 16'h3dc2;
	ans_a = 16'hd801;
	#20
	A = 16'hb8d0;
	B = 16'hbc49;
	ans_a = 16'hd7f8;
	#20
	A = 16'h393b;
	B = 16'hb84f;
	ans_a = 16'hd7fe;
	#20
	A = 16'hb80d;
	B = 16'h3edd;
	ans_a = 16'hd806;
	#20
	A = 16'hb9ef;
	B = 16'hb64a;
	ans_a = 16'hd804;
	#20
	A = 16'h3dc2;
	B = 16'h3d02;
	ans_a = 16'hd7eb;
	#20
	A = 16'hb446;
	B = 16'hbb02;
	ans_a = 16'hd7e7;
	#20
	A = 16'hbc9d;
	B = 16'hb494;
	ans_a = 16'hd7e2;
	#20
	A = 16'h2d17;
	B = 16'ha8a9;
	ans_a = 16'hd7e2;
	#20
	A = 16'hbfd0;
	B = 16'h3b5c;
	ans_a = 16'hd7ff;
	#20
	A = 16'h2d3b;
	B = 16'h383c;
	ans_a = 16'hd7fe;
	#20
	A = 16'hbc8c;
	B = 16'h3d2f;
	ans_a = 16'hd80b;
	#20
	A = 16'h3d36;
	B = 16'hb651;
	ans_a = 16'hd80f;
	#20
	A = 16'h3503;
	B = 16'hb51f;
	ans_a = 16'hd810;
	#20
	A = 16'h3c2f;
	B = 16'h3f65;
	ans_a = 16'hd801;
	#20
	A = 16'h3631;
	B = 16'h3ee4;
	ans_a = 16'hd7f7;
	#20
	A = 16'hbc61;
	B = 16'h33ef;
	ans_a = 16'hd7fb;
	#20
	A = 16'hbe6c;
	B = 16'h3341;
	ans_a = 16'hd800;
	#20
	A = 16'h3eef;
	B = 16'hbf07;
	ans_a = 16'hd818;
	#20
	A = 16'hb8f4;
	B = 16'hbc27;
	ans_a = 16'hd813;
	#20
	A = 16'hbf6c;
	B = 16'ha1f5;
	ans_a = 16'hd813;
	#20
	A = 16'hb25d;
	B = 16'hbb12;
	ans_a = 16'hd812;
	#20
	A = 16'h3aee;
	B = 16'h34c8;
	ans_a = 16'hd810;
	#20
	A = 16'h37ed;
	B = 16'h32d9;
	ans_a = 16'hd80f;
	#20
	A = 16'ha317;
	B = 16'hbc6e;
	ans_a = 16'hd80f;
	#20
	A = 16'h3c92;
	B = 16'h3d24;
	ans_a = 16'hd803;
	#20
	A = 16'hbc87;
	B = 16'hbc65;
	ans_a = 16'hd7f2;
	#20
	A = 16'h35b2;
	B = 16'hbc32;
	ans_a = 16'hd7f8;
	#20
	A = 16'hbcc0;
	B = 16'hbfd3;
	ans_a = 16'hd7d3;
	#20
	A = 16'hb93b;
	B = 16'hbf1c;
	ans_a = 16'hd7c0;
	#20
	A = 16'h3afc;
	B = 16'h3e44;
	ans_a = 16'hd7aa;
	#20
	A = 16'hb2db;
	B = 16'h3bb4;
	ans_a = 16'hd7ad;
	#20
	A = 16'h321b;
	B = 16'hbd90;
	ans_a = 16'hd7b1;
	#20
	A = 16'hba22;
	B = 16'hbc85;
	ans_a = 16'hd7a3;
	#20
	A = 16'h3d05;
	B = 16'h3408;
	ans_a = 16'hd79e;
	#20
	A = 16'hbd5f;
	B = 16'hbea8;
	ans_a = 16'hd77a;
	#20
	A = 16'hbdce;
	B = 16'h3fc9;
	ans_a = 16'hd7a7;
	#20
	A = 16'hb089;
	B = 16'h3076;
	ans_a = 16'hd7a7;
	#20
	A = 16'h3c3e;
	B = 16'hbc80;
	ans_a = 16'hd7ba;
	#20
	A = 16'hbd03;
	B = 16'hb83c;
	ans_a = 16'hd7af;
	#20
	A = 16'hbea6;
	B = 16'hb1a2;
	ans_a = 16'hd7aa;
	#20
	A = 16'h3f9f;
	B = 16'h28c7;
	ans_a = 16'hd7a9;
	#20
	A = 16'h3f17;
	B = 16'h3d71;
	ans_a = 16'hd782;
	#20
	A = 16'h3b57;
	B = 16'h3fde;
	ans_a = 16'hd765;
	#20
	A = 16'h36fe;
	B = 16'h3fbe;
	ans_a = 16'hd757;
	#20
	A = 16'h3e16;
	B = 16'hb9d1;
	ans_a = 16'hd769;
	#20
	A = 16'h3fa0;
	B = 16'h331d;
	ans_a = 16'hd762;
	#20
	A = 16'h346c;
	B = 16'hb6b8;
	ans_a = 16'hd764;
	#20
	A = 16'hbdbd;
	B = 16'h3af1;
	ans_a = 16'hd778;
	#20
	A = 16'h3aef;
	B = 16'h3bac;
	ans_a = 16'hd76b;
	#20
	A = 16'hb954;
	B = 16'h2420;
	ans_a = 16'hd76b;
	#20
	A = 16'h3c6e;
	B = 16'hbd5d;
	ans_a = 16'hd783;
	#20
	A = 16'h36bc;
	B = 16'hbb07;
	ans_a = 16'hd789;
	#20
	A = 16'hbd74;
	B = 16'hb475;
	ans_a = 16'hd783;
	#20
	A = 16'hb666;
	B = 16'hbd58;
	ans_a = 16'hd77a;
	#20
	A = 16'h3e36;
	B = 16'hb9ad;
	ans_a = 16'hd78c;
	#20
	A = 16'h3c7b;
	B = 16'h3961;
	ans_a = 16'hd780;
	#20
	A = 16'h353a;
	B = 16'h357b;
	ans_a = 16'hd77e;
	#20
	A = 16'hb7af;
	B = 16'hbcde;
	ans_a = 16'hd775;
	#20
	A = 16'h374f;
	B = 16'hb660;
	ans_a = 16'hd778;
	#20
	A = 16'hb7e0;
	B = 16'hbc74;
	ans_a = 16'hd76f;
	#20
	A = 16'h3f88;
	B = 16'hba92;
	ans_a = 16'hd788;
	#20
	A = 16'h3df1;
	B = 16'hbf02;
	ans_a = 16'hd7b2;
	#20
	A = 16'h3eb9;
	B = 16'hbdb6;
	ans_a = 16'hd7d8;
	#20
	A = 16'hbc1a;
	B = 16'h3de6;
	ans_a = 16'hd7f0;
	#20
	A = 16'h38fb;
	B = 16'hb5ca;
	ans_a = 16'hd7f4;
	#20
	A = 16'hb4db;
	B = 16'hbcfa;
	ans_a = 16'hd7ee;
	#20
	A = 16'hb128;
	B = 16'hac00;
	ans_a = 16'hd7ee;
	#20
	A = 16'hba49;
	B = 16'h3ae8;
	ans_a = 16'hd7f9;
	#20
	A = 16'hb969;
	B = 16'hbd91;
	ans_a = 16'hd7ea;
	#20
	A = 16'hbddd;
	B = 16'hb706;
	ans_a = 16'hd7e0;
	#20
	A = 16'h3695;
	B = 16'hbd33;
	ans_a = 16'hd7e9;
	#20
	A = 16'h390b;
	B = 16'hbcc1;
	ans_a = 16'hd7f5;
	#20
	A = 16'h38cf;
	B = 16'h3948;
	ans_a = 16'hd7ef;
	#20
	A = 16'hb093;
	B = 16'h3734;
	ans_a = 16'hd7f0;
	#20
	A = 16'h3f52;
	B = 16'hb174;
	ans_a = 16'hd7f5;
	#20
	A = 16'hb650;
	B = 16'h3fcd;
	ans_a = 16'hd801;
	#20
	A = 16'hbe14;
	B = 16'hb8d9;
	ans_a = 16'hd7f3;
	#20
	A = 16'h3bd6;
	B = 16'hb879;
	ans_a = 16'hd7fc;
	#20
	A = 16'h39ad;
	B = 16'h3f47;
	ans_a = 16'hd7e7;
	#20
	A = 16'hb918;
	B = 16'h3d02;
	ans_a = 16'hd7f4;
	#20
	A = 16'hbe51;
	B = 16'h2ea2;
	ans_a = 16'hd7f7;
	#20
	A = 16'hb8a7;
	B = 16'h3d89;
	ans_a = 16'hd802;
	#20
	A = 16'hbcd4;
	B = 16'hb2e2;
	ans_a = 16'hd800;
	#20
	A = 16'h3bef;
	B = 16'hb988;
	ans_a = 16'hd805;
	#20
	A = 16'h3277;
	B = 16'hb669;
	ans_a = 16'hd806;
	#20
	A = 16'hbdfb;
	B = 16'h3ef5;
	ans_a = 16'hd81b;
	#20
	A = 16'h3a20;
	B = 16'haacb;
	ans_a = 16'hd81b;
	#20
	A = 16'hb8b0;
	B = 16'h2b5f;
	ans_a = 16'hd81b;
	#20
	A = 16'h36e1;
	B = 16'ha936;
	ans_a = 16'hd81b;
	#20
	A = 16'hbde9;
	B = 16'h3ea4;
	ans_a = 16'hd82f;
	#20
	A = 16'h3e5a;
	B = 16'hb6a7;
	ans_a = 16'hd834;
	#20
	A = 16'ha662;
	B = 16'h3d81;
	ans_a = 16'hd834;
	#20
	A = 16'hb806;
	B = 16'hb12a;
	ans_a = 16'hd833;
	#20
	A = 16'hbb20;
	B = 16'h3ec2;
	ans_a = 16'hd83f;
	#20
	A = 16'h3ae7;
	B = 16'hb8d7;
	ans_a = 16'hd843;
	#20
	A = 16'h3e8b;
	B = 16'h392a;
	ans_a = 16'hd83b;
	#20
	A = 16'hbe37;
	B = 16'h3522;
	ans_a = 16'hd83f;
	#20
	A = 16'h3faf;
	B = 16'hbc8b;
	ans_a = 16'hd850;
	#20
	A = 16'hbf73;
	B = 16'hbf42;
	ans_a = 16'hd835;
	#20
	A = 16'hb926;
	B = 16'h3dc0;
	ans_a = 16'hd83c;
	#20
	A = 16'hb658;
	B = 16'h39f3;
	ans_a = 16'hd83e;
	#20
	A = 16'h3d5e;
	B = 16'hbdef;
	ans_a = 16'hd84e;
	#20
	A = 16'h3c6c;
	B = 16'h3b62;
	ans_a = 16'hd846;
	#20
	A = 16'hbd10;
	B = 16'hbf53;
	ans_a = 16'hd833;
	#20
	A = 16'ha040;
	B = 16'h307f;
	ans_a = 16'hd833;
	#20
	A = 16'h3ed4;
	B = 16'hbf7b;
	ans_a = 16'hd84d;
	#20
	A = 16'h3e90;
	B = 16'h353b;
	ans_a = 16'hd849;
	#20
	A = 16'hb1be;
	B = 16'h3d3f;
	ans_a = 16'hd84b;
	#20
	A = 16'ha11e;
	B = 16'hbdfc;
	ans_a = 16'hd84b;
	#20
	A = 16'hbc17;
	B = 16'h3bee;
	ans_a = 16'hd853;
	#20
	A = 16'h3e79;
	B = 16'hbd78;
	ans_a = 16'hd865;
	#20
	A = 16'h3988;
	B = 16'hbf6a;
	ans_a = 16'hd86f;
	#20
	A = 16'h396b;
	B = 16'h3cdd;
	ans_a = 16'hd868;
	#20
	A = 16'hb100;
	B = 16'hbae8;
	ans_a = 16'hd867;
	#20
	A = 16'h32a8;
	B = 16'hb79a;
	ans_a = 16'hd868;
	#20
	A = 16'h3820;
	B = 16'h3e9a;
	ans_a = 16'hd861;
	#20
	A = 16'hbda7;
	B = 16'hb892;
	ans_a = 16'hd85b;
	#20
	A = 16'hbcf2;
	B = 16'h356c;
	ans_a = 16'hd85e;
	#20
	A = 16'h3dad;
	B = 16'h39de;
	ans_a = 16'hd856;
	#20
	A = 16'hbe94;
	B = 16'hbd2d;
	ans_a = 16'hd845;
	#20
	A = 16'h35a0;
	B = 16'hae85;
	ans_a = 16'hd845;
	#20
	A = 16'hb3a7;
	B = 16'ha96d;
	ans_a = 16'hd845;
	#20
	A = 16'h38f5;
	B = 16'h36af;
	ans_a = 16'hd843;
	#20
	A = 16'hbe1d;
	B = 16'h3eee;
	ans_a = 16'hd858;
	#20
	A = 16'ha94d;
	B = 16'h3f16;
	ans_a = 16'hd859;
	#20
	A = 16'h3d0f;
	B = 16'hb6c5;
	ans_a = 16'hd85d;
	#20
	A = 16'hbcb8;
	B = 16'h3c77;
	ans_a = 16'hd868;
	#20
	A = 16'h352d;
	B = 16'h356f;
	ans_a = 16'hd867;
	#20
	A = 16'h20a9;
	B = 16'hbf0a;
	ans_a = 16'hd867;
	#20
	A = 16'hb9c5;
	B = 16'hbfc9;
	ans_a = 16'hd85c;
	#20
	A = 16'h3d25;
	B = 16'h3fa3;
	ans_a = 16'hd848;
	#20
	A = 16'h3f00;
	B = 16'h3dbb;
	ans_a = 16'hd834;
	#20
	A = 16'hb4f4;
	B = 16'hb537;
	ans_a = 16'hd833;
	#20
	A = 16'h36d2;
	B = 16'h3c62;
	ans_a = 16'hd82f;
	#20
	A = 16'h3a2a;
	B = 16'hb5ce;
	ans_a = 16'hd831;
	#20
	A = 16'h3656;
	B = 16'hbc81;
	ans_a = 16'hd835;
	#20
	A = 16'h3e84;
	B = 16'hbcdc;
	ans_a = 16'hd845;
	#20
	A = 16'hbcaa;
	B = 16'hbcf1;
	ans_a = 16'hd839;
	#20
	A = 16'h3122;
	B = 16'h3a5c;
	ans_a = 16'hd838;
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
			A <= 0;
			B <= 0;
			a <= 0;
			b <= 0;
			c <= 0;
			r <= 0;
		end else begin
			r <= c;
			c <= b;
			b <= a;
			a <= ans_a;
		end
	end
      
endmodule

