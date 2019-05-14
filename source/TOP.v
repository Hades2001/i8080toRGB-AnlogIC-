module TOP
(
	input			clk,
	input			nRST,
	
	output	[1:0]	LED,

	input			i8080_CS,	
	input			i8080_RST,	
	input			i8080_RS,	
	input			i8080_WR,	
	output			i8080_RD,

	input	[7:0]	i8080_D,

	output			LCDBK,
	output			LCD_CLK,
	output			LCD_HYNC,
	output			LCD_SYNC,
	output			LCD_DEN,
	output	[7:0]	LCD_R,
	output	[7:0]	LCD_G,
	output	[7:0]	LCD_B
);
	wire 		PixeClk;	
	wire		CLK_33M;	
	wire		CLK_100M;
	wire		CLK_50M;
	wire		CLK_25M;
	wire		CLK_9M;

//		Clock name	| Frequency 	| Phase shift
//		C0        	| 100.000000MHZ	| 0  DEG     
//		C1        	| 33.333333 MHZ	| 0  DEG     
//		C2        	| 25.000000 MHZ	| 0  DEG     
//		C3        	| 9.009009  MHZ	| 0  DEG    
	LCDPLL	PLL1
	(	
		.refclk		(	clk			),
		.reset		(	1'b0		),
		.clk0_out	(	CLK_100M	),
		.clk1_out	(	CLK_33M		),
		.clk2_out	(	CLK_25M		),
		.clk3_out	(	CLK_9M		)
	);

	assign	PixeClk = CLK_33M;

	wire	FIFO_RST;
    wire    FIFO_CLK_R;
    wire    FIFO_CLK_W;
    wire    FIFO_RE;
    wire    FIFO_WE;
    wire    FIFO_EMPTY;
    wire    FIFO_FULL;
    wire    [15:0]  FIFO_DO;
    wire    [7:0]  	FIFO_DI;
	
	DisFIFO 	FIFO0
	(
		.rst		(	~nRST		),
		.di			(	FIFO_DI		), 
		.clkw		(	FIFO_CLK_W	), 
		.we			(	FIFO_WE		),
		.do			(	FIFO_DO		), 
		.clkr		(	FIFO_CLK_R	), 
		.re			(	FIFO_RE		),
		.empty_flag	(	FIFO_EMPTY	),
		.full_flag	(	FIFO_FULL	) 
	);
	
	wire			FrameCtrl;		

	LCD8080Ctrl		U4
	(
		.CLK		(	CLK_100M	),
		.nRST		(	nRST		),

		.HSYNC		(	LCD_HYNC	),
		.VSYNC		(	LCD_SYNC	),

		.FIFOWe		(	FIFO_WE		),
		.FIFO_WClk	(	FIFO_CLK_W	),
		.FrameCtrl	(	FrameCtrl	),

		.LCD_BL		(	LCDBK		),

		.RGBData	(	FIFO_DI		)

	);
	
	//assign	FIFO_CLK_W 	= CLK_100M;

	VGAMod	D1
	(
		.CLK		(	clk			),
		.nRST		(	nRST		),

		.PixelClk	(	PixeClk		),
		.FrameCtrl	(	FrameCtrl	),

		.LCD_DE		(	LCD_DEN	 	),
		.LCD_HSYNC	(	LCD_HYNC 	),
    	.LCD_VSYNC	(	LCD_SYNC 	),

		.LCD_B		(	LCD_B		),
		.LCD_G		(	LCD_G		),
		.LCD_R		(	LCD_R		),

		.FIFO_RST	(	FIFO_RST	),
		.FIFO_CLK	(	FIFO_CLK_R	),
		.FIFO_RE	(	FIFO_RE		),
		.FIFO_Empty	(	FIFO_EMPTY	),
		.FIFO_Data	(	FIFO_DO		)

	);

	assign		LCD_CLK		=	PixeClk;

	CLK_MOD	U1
	(
		.CLK		(	PixeClk	),
		.RSTn		(	nRST	),
		
		.CLK_OUT	(	LED[0]	),
		
		.Count_REG	(	32'd33000000 )
	);

	CLK_MOD	U2
	(
		.CLK		(	clk		),
		.RSTn		(	nRST	),
		
		.CLK_OUT	(	LED[1]	),

		.Count_REG	(	32'd24000000)	
	);

endmodule