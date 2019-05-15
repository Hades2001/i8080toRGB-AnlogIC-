`timescale 1ns/1ns

module ModelSim;

	reg             CLK_IN;
	reg             nRST;

    reg             PixClk;

    reg             J80_CS;
    reg             J80_RS;
    reg             J80_We;
    wire            J80_Re;
    reg     [7:0]   J80_Data;

    wire            FIFOWe;
    wire            FIFO_WClk;

    wire            LCD_BL;
    wire            FrameCtrl;

    wire    [7:0]   RGBData;
    wire            HSync;
    wire            VSync;

    integer         i;

	initial
	begin
		CLK_IN      = 1'b1;
        PixClk      = 1'b1;
        nRST        = 1'b0;
        J80_CS      = 1'b1;
        J80_RS      = 1'b1;
        J80_We      = 1'b0;
        J80_Data    = 8'b0000_0000;
        #100
        nRST        = 1'b1;
        #100

        J80_CS      = 1'b0;
        #20
        J80_RS      = 1'b1;
        J80_We      = 1'b1;
        J80_Data    = 8'h60;
        #20
        J80_We      = 1'b0;
        #20
        J80_CS      = 1'b1;
        #50
        J80_CS      = 1'b0;
        #20
        J80_RS      = 1'b1;
        J80_We      = 1'b1;
        J80_Data    = 8'h61;
        #20
        J80_We      = 1'b0;
        #20
        J80_CS      = 1'b1;
        #50
        /*
        for (i = 0;i<20 ;i=i+1 ) begin
            J80_RS      = 1'b0;
            J80_We      = 1'b1;
            J80_CLK     = 1'b0;
            J80_Data    = 8'b0110_0000;
            #20
            J80_CLK = 1'b1;
            #20
            J80_CLK = 1'b0;    
        end
        */
        J80_RS      = 1'b0;
        J80_We      = 1'b0;
        
	$stop;
	end
	  
	always #10 CLK_IN = ~CLK_IN;
    always #15 PixClk = ~PixClk;


    LCD8080Ctrl U0
    (
        .CLK        (   CLK_IN      ),
        .nRST       (   nRST        ),

        .HSYNC      (   HSync       ),
        .VSYNC      (   VSync       ),

		.J80_CS		(	J80_CS	),
		.J80_RS		(	J80_RS	    ),
		.J80_We		(	J80_We	    ),
		//.J80_Re		(	J80_Re	),
		.J80_Data	(	J80_Data	),

        .FIFOWe     (   FIFOWe      ),
        .FIFO_WClk  (   FIFO_WClk   ),

        .LCD_BL     (   LCD_BL      ),
        .FrameCtrl  (   FrameCtrl   ),

        .RGBData    (   RGBData     )

    );

    VGAMod  U1
    (
        .CLK        (   CLK_IN      ),
        .nRST       (   nRST        ),

        .PixelClk   (   PixClk      ),

        .FrameCtrl  (   FrameCtrl   ),

        .LCD_HSYNC  (   HSync       ),
        .LCD_VSYNC  (   VSync       ),

        .FIFO_Empty (   1'b0        ),
        .FIFO_Data  (   16'h1fff    )

    );

endmodule
