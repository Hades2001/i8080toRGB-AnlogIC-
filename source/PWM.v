<<<<<<< HEAD
module PWM
#(
    parameter PWMWidth = 16
)
(
    input   wire                    CLK,
    input   wire                    nRST,
    
    output  wire                    OUT,
    input   wire    [PWMWidth-1:0]  PWMUpData,
    input   wire    [PWMWidth-1:0]  PWMConData

);

    reg     [PWMWidth-1:0]  PWMCount;

    always@( posedge CLK or negedge nRST ) begin
        if( !nRST )begin
            PWMCount    <=  0;
            end
        else if ( PWMCount >= PWMUpData )begin
            PWMCount    <=  0;
            end
        else begin
            PWMCount    <=  PWMCount + 1'b1;
            end
    end

    assign  OUT = ( PWMCount <= PWMConData ) ? 1'b1 : 1'b0;

=======
module PWM
#(
    parameter PWMWidth = 16
)
(
    input   wire                    CLK,
    input   wire                    nRST,
    
    output  wire                    OUT,
    input   wire    [PWMWidth-1:0]  PWMUpData,
    input   wire    [PWMWidth-1:0]  PWMConData

);

    reg     [PWMWidth-1:0]  PWMCount;

    always@( posedge CLK or negedge nRST ) begin
        if( !nRST )begin
            PWMCount    <=  0;
            end
        else if ( PWMCount >= PWMUpData )begin
            PWMCount    <=  0;
            end
        else begin
            PWMCount    <=  PWMCount + 1'b1;
            end
    end

    assign  OUT = ( PWMCount <= PWMConData ) ? 1'b1 : 1'b0;

>>>>>>> 83143dc14f73979f6f9d35bcd5b4eaf0572fb17e
endmodule