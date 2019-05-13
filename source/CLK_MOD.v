module CLK_MOD
(
	CLK,
	RSTn,
	
	CLK_OUT,
	
	Count_REG
);

	input 	CLK;
	input 	RSTn;
	
	input  	[31:0] Count_REG;
	reg 	[31:0] Count;
	
	output reg CLK_OUT;

	always @(  posedge CLK or negedge RSTn  )
	begin
		if(  !RSTn  )
		begin
		Count		<= 32'd0;
		CLK_OUT		<= 1'b1;
		end
		else if ( Count == Count_REG )
		begin
			CLK_OUT <= ~CLK_OUT;
			Count <= 4'b0;
		end
		else
		Count <= Count + 1'b1;
	end

endmodule
