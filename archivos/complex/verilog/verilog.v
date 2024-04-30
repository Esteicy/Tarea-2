// Created Fri Apr 19 12:05:36 2024
`timescale 1ns/10ps
module complex (A, B, C, D, Q);
	input A,B,C,D;
	output Q;
	always@(*) begin
		Q <= (A|B)&(C|D);
  end
endmodule
