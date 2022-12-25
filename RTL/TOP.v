module TOP #(parameter bw = 16)(A,B,out ,CLK, RESETn);
input   [bw-1:0]   A,B;
output	[bw-1:0] out;

input          CLK, RESETn;

    //ripple_carry_adder(.A(A),.B(B),.cin(Cin),.sum(Sum),.cout(Cout),.CLK(CLK),.RESETn(RESETn));
    //CLA_32bit cla4(.A(A),.B(B),.cin(Cin),.sum(Sum),.cout(Cout),.CLK(CLK),.RESETn(RESETn));
    //kogge_stone_Nbit kog4(.A(A),.B(B),.cin(Cin),.sum(Sum),.cout(Cout),.CLK(CLK),.RESETn(RESETn));
    //pipe_ripple_carry_adder(.A(A),.B(B),.cin(Cin),.sum(Sum),.cout(Cout),.CLK(CLK),.RESETn(RESETn));
    //pipe_CLA_32bit(.A(A),.B(B),.cin(Cin),.sum(Sum),.cout(Cout),.CLK(CLK),.RESETn(RESETn));
    //pipe_kogge_stone_Nbit pKogN(.A(A),.B(B),.cin(Cin),.sum(Sum),.cout(Cout),.CLK(CLK),.RESETn(RESETn));
    //multiplier M(.A(A),.B(B),.out(out),.CLK(CLK),.RESETn(RESETn));
	fp16MAC fp16mac(.a(A), .b(B), .acc(out), .CLK(CLK), .RESETn(RESETn));

    //multiplier_array_pipe #(.bw(bw)) M(.A(A),.B(B),.out(out),.CLK(CLK),.RESETn(RESETn));
    //multiplier_array M(.A(A),.B(B),.out(out),.CLK(CLK),.RESETn(RESETn));
endmodule

