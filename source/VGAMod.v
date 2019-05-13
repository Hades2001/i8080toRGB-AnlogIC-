module VGAMod
(
    input                   CLK,
    input                   nRST,

    input                   PixelClk,

    output                  LCD_DE,
    output                  LCD_HSYNC,
    output                  LCD_VSYNC,


	output          [7:0]   LCD_B,
	output          [7:0]   LCD_G,
	output          [7:0]   LCD_R,

    output                  FIFO_RST,
    output                  FIFO_CLK,
    output                  FIFO_RE,
    input   wire            FIFO_Empty,
    input   wire    [15:0]  FIFO_Data

);

    reg         [15:0]  PixelCount;
    reg         [15:0]  LineCount;

    localparam      WidthPixel  = 16'd800;
    localparam      HightPixel  = 16'd480;

    localparam      H_BackPorch  =  16'd256;
    localparam      V_BackPorch  =  16'd45;     // 800*480@44Hz   
    //localparam      V_BackPorch  =  16'd760;  // 800*480@20Hz

    localparam      PixelForHS  =   16'd1056 + H_BackPorch;
    localparam      LineForVS   =   16'd525  + V_BackPorch;

    localparam      FIFOReStart =   H_BackPorch - 1'b1;
    localparam      FIFOReEnd   =   16'd1056    + 1'b1;

    always @(  posedge PixelClk or negedge nRST  )begin
        if( !nRST ) begin
            LineCount       <=  16'b0;    
            PixelCount      <=  16'b0;
            end
        else if(  PixelCount  ==  PixelForHS ) begin
            PixelCount      <=  16'b0;
            LineCount       <=  LineCount + 1'b1;
            end
        else if(  LineCount  == LineForVS  ) begin
            LineCount       <=  16'b0;
            PixelCount      <=  16'b0;
            end
        else begin
            PixelCount      <=  PixelCount + 1'b1;
            end
    end

    assign  LCD_HSYNC = (( PixelCount >= ( H_BackPorch - 16'd200 ))&&( PixelCount < (PixelForHS - 1))) ? 1'b0 : 1'b1;
    assign  LCD_VSYNC = (( LineCount  >= 0 )&&( LineCount  < V_BackPorch )) ? 1'b1 : 1'b0;


    /*
    assign  LCD_HSYNC = (( PixelCount >= ( H_BackPorch - 16'd200 ))&&( PixelCount < (PixelForHS - 1))) ? 1'b0 : 1'b1;
    assign  LCD_VSYNC = (( LineCount  >= ( V_BackPorch - 16'd40  ))&&( LineCount  < (LineForVS  - 1))) ? 1'b0 : 1'b1;
    */
    assign  FIFO_RST  = (( PixelCount >= 0 )&&( PixelCount < 16'd20 )) ? 1'b1 : 1'b0;

    assign  LCD_DE = (  ( PixelCount >= H_BackPorch )&&
                        ( PixelCount <= PixelForHS ) &&
                        ( LineCount >= V_BackPorch ) &&
                        ( LineCount < LineForVS ))  ? 1'b1 : 1'b0;

    assign  FIFO_CLK = PixelClk;
    assign  FIFO_RE  = (( LineCount >= V_BackPorch )&&( LineCount < LineForVS )&&( PixelCount >= FIFOReStart )&&( PixelCount <= FIFOReEnd )&&( FIFO_Empty == 1'b0 )) ? 1'b1 : 1'b0;

    assign  LCD_R    = ( FIFO_Empty == 1'b0 ) ? {FIFO_Data[15:11], 3'b111 } : 8'b1111_1111;
    assign  LCD_G    = ( FIFO_Empty == 1'b0 ) ? {FIFO_Data[10:5] , 2'b11  } : 8'b0000_0000;
    assign  LCD_B    = ( FIFO_Empty == 1'b0 ) ? {FIFO_Data[4:0]  , 3'b111 } : 8'b0000_0000;

    
/*
    always @(  posedge PixelClk or negedge nRST  )begin
        if( !nRST ) begin
            VGA_R       <=  8'b0;
            VGA_G       <=  8'b0;
            VGA_B       <=  8'b0;
            end
        else if( LCD_DE == 1'b1 )begin
            case( PixelCount )
            1'b0            : begin
                VGA_R       <=  8'h00;
                VGA_G       <=  8'h00;
                VGA_B       <=  8'h00;
                end
            16'd256          : begin
                VGA_R       <=  8'hff;
                VGA_G       <=  8'h00;
                VGA_B       <=  8'h00;
                end
            16'd356         : begin
                VGA_R       <=  8'h00;
                VGA_G       <=  8'hff;
                VGA_B       <=  8'h00;
                end
            16'd456         : begin
                VGA_R       <=  8'hff;
                VGA_G       <=  8'hff;
                VGA_B       <=  8'h00;
                end
            16'd556         : begin
                VGA_R       <=  8'h00;
                VGA_G       <=  8'h00;
                VGA_B       <=  8'hff;
                end
            16'd656         : begin
                VGA_R       <=  8'hff;
                VGA_G       <=  8'h00;
                VGA_B       <=  8'hff;
                end
            16'd756         : begin
                VGA_R       <=  8'h00;
                VGA_G       <=  8'hff;
                VGA_B       <=  8'hff;
                end
            16'd856         : begin
                VGA_R       <=  8'hff;
                VGA_G       <=  8'hff;
                VGA_B       <=  8'hff;
                end
            16'd956         : begin
                VGA_R       <=  8'h00;
                VGA_G       <=  8'h00;
                VGA_B       <=  8'h00;
                end
            endcase
            end
    end
*/

endmodule