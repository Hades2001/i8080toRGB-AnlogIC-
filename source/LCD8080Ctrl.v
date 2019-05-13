module LCD8080Ctrl
(
    input                   CLK,
    input                   nRST,

    input                   HSYNC,
    input                   VSYNC,

    input                   J80_CLK,
    input                   J80_RS,
    input                   J80_We,
    input                   J80_Re,
    inout       [7:0]       J80_Data,

    output                  FIFOWe,
    output                  FIFO_WClk,

    output                  LCD_BL,

    output      [7:0]       RGBData

);

//************************************************************************
//                  |                   |
//  LCD_Ctrl_Reg    |   8'b001A_BCDE    |  
//  LCD_Pix_Reg     |   8'b010n_nnnn    |
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

    assign      J80_Data = ( J80_Re ) && ( !J80_We ) ? OutDataReg : 8'bzzzz_zzzz;

    always @( posedge CLK or negedge nRST ) begin
    if( !nRST ) begin
        LCD_Ctrl_Reg    <=  5'b0_0000;
        LCD_Pix_Reg     <=  5'b0_0000;
        LCD_BL_Reg      <=  5'b0_0001;
        LCD_Test_Reg    <=  5'b0_0000;
        end
    else if(( J80_RS == 1'b1 )&&( J80_We == 1'b1 ))begin
        case( J80_Data[7:5] )
            A_CTRL  :   LCD_Ctrl_Reg    <=  J80_Data[4:0] ;
            A_Pix   :   LCD_Pix_Reg     <=  J80_Data[4:0] ;
            A_BL    :   LCD_BL_Reg      <=  J80_Data[4:0] ;
            A_Test  :   LCD_Test_Reg    <=  J80_Data[4:0] ;
        endcase
        end
    end
    
    assign  LCD_BL = LCD_BL_Reg[0];

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

    assign FIFOWe = (( AddrCtrl >= 16'd0 )&&(AddrCtrl < 16'd1600)&&( VSYNC == 1'b0 )&&( HSYNC == 1'b0 )) ? 1'b1 : 1'b0;

    assign RGBData = (( AddrCtrl[0] == 0 )&&( AddrCtrl >= 16'd0    )&&(AddrCtrl < 16'd400  )) ? 8'b0000_0000 : 
                     (( AddrCtrl[0] == 1 )&&( AddrCtrl >= 16'd0    )&&(AddrCtrl < 16'd400  )) ? 8'b0001_1111 :
                     (( AddrCtrl[0] == 0 )&&( AddrCtrl >= 16'd400  )&&(AddrCtrl < 16'd800  )) ? 8'b0000_0111 : 
                     (( AddrCtrl[0] == 1 )&&( AddrCtrl >= 16'd400  )&&(AddrCtrl < 16'd800  )) ? 8'b1110_0000 :
                     (( AddrCtrl[0] == 0 )&&( AddrCtrl >= 16'd800  )&&(AddrCtrl < 16'd1200 )) ? 8'b1111_1000 : 
                     (( AddrCtrl[0] == 1 )&&( AddrCtrl >= 16'd800  )&&(AddrCtrl < 16'd1200 )) ? 8'b0000_0000 :
                     (( AddrCtrl[0] == 0 )&&( AddrCtrl >= 16'd1200 )&&(AddrCtrl < 16'd1600 )) ? 8'b1111_1111 : 
                     (( AddrCtrl[0] == 1 )&&( AddrCtrl >= 16'd1200 )&&(AddrCtrl < 16'd1600 )) ? 8'b1111_1111 : 8'b0000_0000;


endmodule