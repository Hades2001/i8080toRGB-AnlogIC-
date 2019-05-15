module LCD8080Ctrl
(
    input                   CLK,
    input                   nRST,

    input                   HSYNC,
    input                   VSYNC,

    input                   J80_CS,
    inout                   J80_RS,
    input                   J80_We,
    input       [7:0]       J80_Data,

    output                  FIFOWe,
    output                  FIFO_WClk,

    output                  LCD_BL,
    output                  FrameCtrl,

    output      [7:0]       RGBData

);

//************************************************************************
//                  |                   |
//  LCD_Ctrl_Reg    |   8'b001A_BCDE    |   A=1 : DisPlayON 
//                                      |   B=1 : Auto Mode
//                                      |
//                                      |
//                                      |
//                                      |
//  LCD_Pix_Reg     |   8'b010x_xxxn    |   n=1 : Frame Start
//  LCD_BL_Reg      |   8'b011x_xxxn    |   n=1 : BL ON , n=0 : BL OFF
//  LCD_Test_Reg    |   8'b100n_nnnn    |
//************************************************************************

    parameter   [2:0]   A_Res       = 3'b000,
                        A_CTRL      = 3'b001,
                        A_Pix       = 3'b010,  
                        A_BL        = 3'b011,
                        A_Test      = 3'b100;

    reg         [4:0]       LCD_Ctrl_Reg;
    reg         [4:0]       LCD_Pix_Reg;     
    reg         [4:0]       LCD_BL_Reg;  
    reg         [4:0]       LCD_Test_Reg;

    reg         [7:0]       OutDataReg;

    wire        [7:0]       IDELData;  
    wire        [7:0]       i8080Data; 
    wire                    IDELWe; 
    wire                    i8080We; 
    wire                    FrameSync;

    always @( posedge J80_We or negedge nRST ) begin
    if( !nRST ) begin
        LCD_Ctrl_Reg    <=  5'b0_1000;
        LCD_Pix_Reg     <=  5'b0_0000;
        LCD_BL_Reg      <=  5'b0_0001;
        LCD_Test_Reg    <=  5'b0_0000;
        end
    else if(( J80_RS == 1'b1 )&&( J80_CS == 1'b0 ))begin
        case( J80_Data[7:5] )
            A_CTRL  :   LCD_Ctrl_Reg    <=  J80_Data[4:0] ;
            A_Pix   :   LCD_Pix_Reg     <=  J80_Data[4:0] ;
            A_BL    :   LCD_BL_Reg      <=  J80_Data[4:0] ;
            A_Test  :   LCD_Test_Reg    <=  J80_Data[4:0] ;
        endcase
        end
    end

    assign  J80_RS      = ( LCD_Ctrl_Reg[4] == 1'b0 ) ?  1'bz : FrameSync ;

    assign  i8080We     = (( J80_RS == 1'b0 )&&( J80_We == 1'b1 )) ? 1'b1   : 1'b0 ;
    assign  i8080Data   = (( J80_RS == 1'b0 )&&( J80_We == 1'b1 )) ? J80_Data : 1'b0 ;
    
    assign  FrameSync   = ( LCD_Ctrl_Reg[3] == 1'b1 ) ? ( HSYNC | VSYNC ) : ( HSYNC & ( ~VSYNC )) ;
        
    assign  RGBData     = ( LCD_Ctrl_Reg[4] == 1'b1 ) ? J80_Data  : IDELData;     
    assign  FIFOWe      = ( LCD_Ctrl_Reg[4] == 1'b1 ) ? ~J80_CS   : IDELWe; 
    assign  FIFO_WClk   = ( LCD_Ctrl_Reg[4] == 1'b1 ) ? J80_We    : CLK; 

    assign  FrameCtrl   = ( LCD_Ctrl_Reg[3] == 1'b1 ) ? 1'b1 : LCD_Pix_Reg[0];

    assign  LCD_BL      = ( LCD_BL_Reg[0] == 1'b1 ) ? 1'b1 : 1'b0 ;     //背光控制

    //------------------------------------------------------------------------------------
    //
    reg     [15:0]  AddrCtrl;

    always@( posedge CLK or negedge nRST )begin
    if( !nRST ) begin 
        AddrCtrl        <= 16'd0;
        end
    else if(    VSYNC   ) begin
        AddrCtrl        <= 16'd0;
        end
    else if(    HSYNC   ) begin
        AddrCtrl        <= 16'd0;
        end
    else if( AddrCtrl < 16'd2000 )begin
        AddrCtrl        <= AddrCtrl + 1'b1;
        end
    end

    assign IDELWe  = (( AddrCtrl >= 12'd0 )&&(AddrCtrl < 16'd1600)&&( VSYNC == 1'b0 )&&( HSYNC == 1'b0 )) ? 1'b1 : 1'b0;

    assign IDELData = (( AddrCtrl[0] == 0 )&&( AddrCtrl >= 16'd0    )&&(AddrCtrl < 16'd400  )) ? 8'b0000_0000 : 
                     (( AddrCtrl[0] == 1 )&&( AddrCtrl >= 16'd0    )&&(AddrCtrl < 16'd400  )) ? 8'b0001_1111 :
                     (( AddrCtrl[0] == 0 )&&( AddrCtrl >= 16'd400  )&&(AddrCtrl < 16'd800  )) ? 8'b0000_0111 : 
                     (( AddrCtrl[0] == 1 )&&( AddrCtrl >= 16'd400  )&&(AddrCtrl < 16'd800  )) ? 8'b1110_0000 :
                     (( AddrCtrl[0] == 0 )&&( AddrCtrl >= 16'd800  )&&(AddrCtrl < 16'd1200 )) ? 8'b1111_1000 : 
                     (( AddrCtrl[0] == 1 )&&( AddrCtrl >= 16'd800  )&&(AddrCtrl < 16'd1200 )) ? 8'b0000_0000 :
                     (( AddrCtrl[0] == 0 )&&( AddrCtrl >= 16'd1200 )&&(AddrCtrl < 16'd1600 )) ? 8'b1111_1111 : 
                     (( AddrCtrl[0] == 1 )&&( AddrCtrl >= 16'd1200 )&&(AddrCtrl < 16'd1600 )) ? 8'b1111_1111 : 8'b0000_0000;


endmodule