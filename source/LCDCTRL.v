<<<<<<< HEAD
module LCDCTRL
(
    input                   CLK,
    input                   nRST,

    input                   HSYNC,
    input                   VSYNC,

    output                  FIFOWe,

    output      [7:0]       RGBData

);

    reg     [15:0]      AddrCtrl;
    reg     [15:0]      LineConut;
    reg     [15:0]      PixCount;
    reg     [14:0]      Addr;

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

    always@( posedge CLK or negedge nRST )begin
    if( !nRST ) begin 
        LineConut        <= 16'd0;
        end
    else if(    VSYNC   ) begin
        LineConut        <= 16'd0;
        end
    else if( AddrCtrl == 16'd1600 ) begin
        LineConut        <= LineConut + 1'b1;
        end
    end

    reg          [15:0]  Count;
    wire         [15:0]  XPos;
    reg                  VsFlag;
    
    always@( posedge CLK or negedge nRST )begin
    if( !nRST ) begin
        Count       <= 16'd2;
        end
    else if(  Count >= 16'd2688 ) begin
        Count       <= 16'd2;
        end
    else if(( AddrCtrl == 16'd20 )&&( LineConut == 16'd200))begin
        Count       <= Count + 16'd16;
        end
    end

    assign  XPos = ( Count > 16'd1344 ) ? ( 16'd2688 - Count ) : Count;

    always@( posedge CLK or negedge nRST )begin
    if( !nRST ) begin 
        Addr    <= 15'd0;
        end
    else if(    VSYNC   ) begin
        Addr            <= 15'd0;
        end
    else if(  ( AddrCtrl >= XPos )&&( AddrCtrl < ( XPos + 16'd256 ) ) ) begin
        Addr            <= Addr + 1'b1;            
        end
    end
    

    assign FIFOWe = (( AddrCtrl >= 12'd0 )&&(AddrCtrl < 16'd1600)&&( VSYNC == 1'b0 )&&( HSYNC == 1'b0 )) ? 1'b1 : 1'b0;

    wire    [7:0]   RomData;


    ImgROM ROM0
    ( 
        .rsta   (   ~nRST   ), 
        .clka   (   CLK     ),
        .doa    (   RomData ), 
        .addra  (   Addr    )
    );

    assign  RGBData = (( AddrCtrl >= XPos )&&( AddrCtrl < ( XPos + 16'd256 ) )&&( LineConut < 129 )&&( LineConut >= 1 )) ? RomData : 8'b1111_1111;
    
    /*
    assign RGBData = (( AddrCtrl[0] == 0 )&&( AddrCtrl >= 16'd0    )&&(AddrCtrl < 16'd400  )) ? 8'b0000_0000 : 
                     (( AddrCtrl[0] == 1 )&&( AddrCtrl >= 16'd0    )&&(AddrCtrl < 16'd400  )) ? 8'b0001_1111 :
                     (( AddrCtrl[0] == 0 )&&( AddrCtrl >= 16'd400  )&&(AddrCtrl < 16'd800  )) ? 8'b0000_0111 : 
                     (( AddrCtrl[0] == 1 )&&( AddrCtrl >= 16'd400  )&&(AddrCtrl < 16'd800  )) ? 8'b1110_0000 :
                     (( AddrCtrl[0] == 0 )&&( AddrCtrl >= 16'd800  )&&(AddrCtrl < 16'd1200 )) ? 8'b1111_1000 : 
                     (( AddrCtrl[0] == 1 )&&( AddrCtrl >= 16'd800  )&&(AddrCtrl < 16'd1200 )) ? 8'b0000_0000 :
                     (( AddrCtrl[0] == 0 )&&( AddrCtrl >= 16'd1200 )&&(AddrCtrl < 16'd1600 )) ? 8'b1111_1111 : 
                     (( AddrCtrl[0] == 1 )&&( AddrCtrl >= 16'd1200 )&&(AddrCtrl < 16'd1600 )) ? 8'b1111_1111 : 8'b0000_0000;
    */
=======
module LCDCTRL
(
    input                   CLK,
    input                   nRST,

    input                   HSYNC,
    input                   VSYNC,

    output                  FIFOWe,

    output      [7:0]       RGBData

);

    reg     [15:0]      AddrCtrl;
    reg     [15:0]      LineConut;
    reg     [15:0]      PixCount;
    reg     [14:0]      Addr;

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

    always@( posedge CLK or negedge nRST )begin
    if( !nRST ) begin 
        LineConut        <= 16'd0;
        end
    else if(    VSYNC   ) begin
        LineConut        <= 16'd0;
        end
    else if( AddrCtrl == 16'd1600 ) begin
        LineConut        <= LineConut + 1'b1;
        end
    end

    reg          [15:0]  Count;
    wire         [15:0]  XPos;
    reg                  VsFlag;
    
    always@( posedge CLK or negedge nRST )begin
    if( !nRST ) begin
        Count       <= 16'd2;
        end
    else if(  Count >= 16'd2688 ) begin
        Count       <= 16'd2;
        end
    else if(( AddrCtrl == 16'd20 )&&( LineConut == 16'd200))begin
        Count       <= Count + 16'd16;
        end
    end

    assign  XPos = ( Count > 16'd1344 ) ? ( 16'd2688 - Count ) : Count;

    always@( posedge CLK or negedge nRST )begin
    if( !nRST ) begin 
        Addr    <= 15'd0;
        end
    else if(    VSYNC   ) begin
        Addr            <= 15'd0;
        end
    else if(  ( AddrCtrl >= XPos )&&( AddrCtrl < ( XPos + 16'd256 ) ) ) begin
        Addr            <= Addr + 1'b1;            
        end
    end
    

    assign FIFOWe = (( AddrCtrl >= 12'd0 )&&(AddrCtrl < 16'd1600)&&( VSYNC == 1'b0 )&&( HSYNC == 1'b0 )) ? 1'b1 : 1'b0;

    wire    [7:0]   RomData;


    ImgROM ROM0
    ( 
        .rsta   (   ~nRST   ), 
        .clka   (   CLK     ),
        .doa    (   RomData ), 
        .addra  (   Addr    )
    );

    assign  RGBData = (( AddrCtrl >= XPos )&&( AddrCtrl < ( XPos + 16'd256 ) )&&( LineConut < 129 )&&( LineConut >= 1 )) ? RomData : 8'b1111_1111;
    
    /*
    assign RGBData = (( AddrCtrl[0] == 0 )&&( AddrCtrl >= 16'd0    )&&(AddrCtrl < 16'd400  )) ? 8'b0000_0000 : 
                     (( AddrCtrl[0] == 1 )&&( AddrCtrl >= 16'd0    )&&(AddrCtrl < 16'd400  )) ? 8'b0001_1111 :
                     (( AddrCtrl[0] == 0 )&&( AddrCtrl >= 16'd400  )&&(AddrCtrl < 16'd800  )) ? 8'b0000_0111 : 
                     (( AddrCtrl[0] == 1 )&&( AddrCtrl >= 16'd400  )&&(AddrCtrl < 16'd800  )) ? 8'b1110_0000 :
                     (( AddrCtrl[0] == 0 )&&( AddrCtrl >= 16'd800  )&&(AddrCtrl < 16'd1200 )) ? 8'b1111_1000 : 
                     (( AddrCtrl[0] == 1 )&&( AddrCtrl >= 16'd800  )&&(AddrCtrl < 16'd1200 )) ? 8'b0000_0000 :
                     (( AddrCtrl[0] == 0 )&&( AddrCtrl >= 16'd1200 )&&(AddrCtrl < 16'd1600 )) ? 8'b1111_1111 : 
                     (( AddrCtrl[0] == 1 )&&( AddrCtrl >= 16'd1200 )&&(AddrCtrl < 16'd1600 )) ? 8'b1111_1111 : 8'b0000_0000;
    */
>>>>>>> 83143dc14f73979f6f9d35bcd5b4eaf0572fb17e
endmodule