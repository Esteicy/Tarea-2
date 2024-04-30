// Created Fri Apr 19 12:48:28 2024

module complex_stimu (a,b,c,d);
	output a,b,c,d;
	reg a,b,c,d;
	initial begin
		a=1'b0;
		b=1'b0;
		c=1'b0;
		d=1'b0;
		#2
		a=1'b0;
		b=1'b1;
		c=1'b0;
		d=1'b1;
		#2
		a=1'b0;
		b=1'b0;
		c=1'b0;
		d=1'b1;
		#2
		$finish;

  end
endmodule
