// Verilog netlist created by TD v4.4.433
// Thu May 16 15:04:52 2019

`timescale 1ns / 1ps
module TOP  // source/TOP.v(1)
  (
  clk,
  i8080_CS,
  i8080_D,
  i8080_WR,
  nRST,
  LCDBK,
  LCD_B,
  LCD_CLK,
  LCD_DEN,
  LCD_G,
  LCD_HYNC,
  LCD_R,
  LCD_SYNC,
  LED,
  i8080_RS
  );

  input clk;  // source/TOP.v(3)
  input i8080_CS;  // source/TOP.v(8)
  input [7:0] i8080_D;  // source/TOP.v(12)
  input i8080_WR;  // source/TOP.v(10)
  input nRST;  // source/TOP.v(4)
  output LCDBK;  // source/TOP.v(14)
  output [7:0] LCD_B;  // source/TOP.v(21)
  output LCD_CLK;  // source/TOP.v(15)
  output LCD_DEN;  // source/TOP.v(18)
  output [7:0] LCD_G;  // source/TOP.v(20)
  output LCD_HYNC;  // source/TOP.v(16)
  output [7:0] LCD_R;  // source/TOP.v(19)
  output LCD_SYNC;  // source/TOP.v(17)
  output [1:0] LED;  // source/TOP.v(6)
  inout i8080_RS;  // source/TOP.v(9)

  wire [15:0] \D1/LineCount ;  // source/VGAMod.v(27)
  wire [15:0] \D1/PixelCount ;  // source/VGAMod.v(26)
  wire [15:0] \D1/n2 ;
  wire [15:0] \D1/n4 ;
  wire [7:0] FIFO_DI;  // source/TOP.v(57)
  wire [15:0] FIFO_DO;  // source/TOP.v(56)
  wire [7:0] LCD_B_pad;  // source/TOP.v(21)
  wire [7:0] LCD_G_pad;  // source/TOP.v(20)
  wire [7:0] LCD_R_pad;  // source/TOP.v(19)
  wire [1:0] LED_pad;  // source/TOP.v(6)
  wire [31:0] \U1/Count ;  // source/CLK_MOD.v(15)
  wire [31:0] \U1/n3 ;
  wire [31:0] \U2/Count ;  // source/CLK_MOD.v(15)
  wire [31:0] \U2/n3 ;
  wire [15:0] \U4/AddrCtrl ;  // source/LCD8080Ctrl.v(90)
  wire [4:0] \U4/LCD_Ctrl_Reg ;  // source/LCD8080Ctrl.v(43)
  wire [4:0] \U4/LCD_Pix_Reg ;  // source/LCD8080Ctrl.v(44)
  wire [15:0] \U4/n20 ;
  wire [7:0] i8080_D_pad;  // source/TOP.v(12)
  wire CLK_100M;  // source/TOP.v(25)
  wire \D1/FrameFlag ;  // source/VGAMod.v(55)
  wire \D1/add0/c11 ;
  wire \D1/add0/c15 ;
  wire \D1/add0/c3 ;
  wire \D1/add0/c7 ;
  wire \D1/add1/c11 ;
  wire \D1/add1/c15 ;
  wire \D1/add1/c3 ;
  wire \D1/add1/c7 ;
  wire \D1/lt0_c1 ;
  wire \D1/lt0_c11 ;
  wire \D1/lt0_c13 ;
  wire \D1/lt0_c15 ;
  wire \D1/lt0_c3 ;
  wire \D1/lt0_c5 ;
  wire \D1/lt0_c7 ;
  wire \D1/lt0_c9 ;
  wire \D1/lt1_c1 ;
  wire \D1/lt1_c11 ;
  wire \D1/lt1_c13 ;
  wire \D1/lt1_c15 ;
  wire \D1/lt1_c3 ;
  wire \D1/lt1_c5 ;
  wire \D1/lt1_c7 ;
  wire \D1/lt1_c9 ;
  wire \D1/lt2_c1 ;
  wire \D1/lt2_c11 ;
  wire \D1/lt2_c13 ;
  wire \D1/lt2_c15 ;
  wire \D1/lt2_c3 ;
  wire \D1/lt2_c5 ;
  wire \D1/lt2_c7 ;
  wire \D1/lt2_c9 ;
  wire \D1/lt3_c1 ;
  wire \D1/lt3_c11 ;
  wire \D1/lt3_c13 ;
  wire \D1/lt3_c15 ;
  wire \D1/lt3_c3 ;
  wire \D1/lt3_c5 ;
  wire \D1/lt3_c7 ;
  wire \D1/lt3_c9 ;
  wire \D1/lt4_c1 ;
  wire \D1/lt4_c11 ;
  wire \D1/lt4_c13 ;
  wire \D1/lt4_c15 ;
  wire \D1/lt4_c3 ;
  wire \D1/lt4_c5 ;
  wire \D1/lt4_c7 ;
  wire \D1/lt4_c9 ;
  wire \D1/lt5_c1 ;
  wire \D1/lt5_c11 ;
  wire \D1/lt5_c13 ;
  wire \D1/lt5_c15 ;
  wire \D1/lt5_c3 ;
  wire \D1/lt5_c5 ;
  wire \D1/lt5_c7 ;
  wire \D1/lt5_c9 ;
  wire \D1/lt6_c1 ;
  wire \D1/lt6_c11 ;
  wire \D1/lt6_c13 ;
  wire \D1/lt6_c15 ;
  wire \D1/lt6_c3 ;
  wire \D1/lt6_c5 ;
  wire \D1/lt6_c7 ;
  wire \D1/lt6_c9 ;
  wire \D1/lt7_c1 ;
  wire \D1/lt7_c11 ;
  wire \D1/lt7_c13 ;
  wire \D1/lt7_c15 ;
  wire \D1/lt7_c3 ;
  wire \D1/lt7_c5 ;
  wire \D1/lt7_c7 ;
  wire \D1/lt7_c9 ;
  wire \D1/lt8_c1 ;
  wire \D1/lt8_c11 ;
  wire \D1/lt8_c13 ;
  wire \D1/lt8_c15 ;
  wire \D1/lt8_c3 ;
  wire \D1/lt8_c5 ;
  wire \D1/lt8_c7 ;
  wire \D1/lt8_c9 ;
  wire \D1/lt9_c1 ;
  wire \D1/lt9_c11 ;
  wire \D1/lt9_c13 ;
  wire \D1/lt9_c15 ;
  wire \D1/lt9_c3 ;
  wire \D1/lt9_c5 ;
  wire \D1/lt9_c7 ;
  wire \D1/lt9_c9 ;
  wire \D1/mux3_b0_sel_is_0_o ;
  wire \D1/n14 ;
  wire \D1/n15 ;
  wire \D1/n17 ;
  wire \D1/n18 ;
  wire \D1/n20 ;
  wire \D1/n22 ;
  wire \D1/n24 ;
  wire \D1/n26 ;
  wire \D1/n28 ;
  wire \FIFO0/logic_fifo_full ;
  wire \FIFO0/logic_fifo_full_neg ;
  wire FIFO_CLK_W;  // source/TOP.v(51)
  wire FIFO_EMPTY;  // source/TOP.v(54)
  wire FIFO_RE;  // source/TOP.v(52)
  wire FIFO_RST;  // source/TOP.v(49)
  wire FIFO_WE;  // source/TOP.v(53)
  wire LCD_CLK_pad;  // source/TOP.v(15)
  wire LCD_DEN_pad;  // source/TOP.v(18)
  wire LCD_HYNC_pad;  // source/TOP.v(16)
  wire LCD_SYNC_pad;  // source/TOP.v(17)
  wire \PLL1/clk0_buf ;  // al_ip/LCDPLL.v(39)
  wire \U1/add0/c11 ;
  wire \U1/add0/c15 ;
  wire \U1/add0/c19 ;
  wire \U1/add0/c23 ;
  wire \U1/add0/c27 ;
  wire \U1/add0/c3 ;
  wire \U1/add0/c31 ;
  wire \U1/add0/c7 ;
  wire \U1/n1 ;
  wire \U2/add0/c11 ;
  wire \U2/add0/c15 ;
  wire \U2/add0/c19 ;
  wire \U2/add0/c23 ;
  wire \U2/add0/c27 ;
  wire \U2/add0/c3 ;
  wire \U2/add0/c31 ;
  wire \U2/add0/c7 ;
  wire \U2/n1 ;
  wire \U4/FrameSync ;  // source/LCD8080Ctrl.v(54)
  wire \U4/add0/c11 ;
  wire \U4/add0/c15 ;
  wire \U4/add0/c3 ;
  wire \U4/add0/c7 ;
  wire \U4/lt0_c1 ;
  wire \U4/lt0_c11 ;
  wire \U4/lt0_c13 ;
  wire \U4/lt0_c15 ;
  wire \U4/lt0_c3 ;
  wire \U4/lt0_c5 ;
  wire \U4/lt0_c7 ;
  wire \U4/lt0_c9 ;
  wire \U4/lt1_c1 ;
  wire \U4/lt1_c11 ;
  wire \U4/lt1_c13 ;
  wire \U4/lt1_c15 ;
  wire \U4/lt1_c3 ;
  wire \U4/lt1_c5 ;
  wire \U4/lt1_c7 ;
  wire \U4/lt1_c9 ;
  wire \U4/lt2_c1 ;
  wire \U4/lt2_c11 ;
  wire \U4/lt2_c13 ;
  wire \U4/lt2_c15 ;
  wire \U4/lt2_c3 ;
  wire \U4/lt2_c5 ;
  wire \U4/lt2_c7 ;
  wire \U4/lt2_c9 ;
  wire \U4/lt3_c1 ;
  wire \U4/lt3_c11 ;
  wire \U4/lt3_c13 ;
  wire \U4/lt3_c15 ;
  wire \U4/lt3_c3 ;
  wire \U4/lt3_c5 ;
  wire \U4/lt3_c7 ;
  wire \U4/lt3_c9 ;
  wire \U4/lt4_c1 ;
  wire \U4/lt4_c11 ;
  wire \U4/lt4_c13 ;
  wire \U4/lt4_c15 ;
  wire \U4/lt4_c3 ;
  wire \U4/lt4_c5 ;
  wire \U4/lt4_c7 ;
  wire \U4/lt4_c9 ;
  wire \U4/lt5_c1 ;
  wire \U4/lt5_c11 ;
  wire \U4/lt5_c13 ;
  wire \U4/lt5_c15 ;
  wire \U4/lt5_c3 ;
  wire \U4/lt5_c5 ;
  wire \U4/lt5_c7 ;
  wire \U4/lt5_c9 ;
  wire \U4/lt6_c1 ;
  wire \U4/lt6_c11 ;
  wire \U4/lt6_c13 ;
  wire \U4/lt6_c15 ;
  wire \U4/lt6_c3 ;
  wire \U4/lt6_c5 ;
  wire \U4/lt6_c7 ;
  wire \U4/lt6_c9 ;
  wire \U4/lt7_c1 ;
  wire \U4/lt7_c11 ;
  wire \U4/lt7_c13 ;
  wire \U4/lt7_c15 ;
  wire \U4/lt7_c3 ;
  wire \U4/lt7_c5 ;
  wire \U4/lt7_c7 ;
  wire \U4/lt7_c9 ;
  wire \U4/mux0_b3_sel_is_3_o ;
  wire \U4/mux10_b0_sel_is_0_o ;
  wire \U4/mux1_b0_sel_is_3_o ;
  wire \U4/mux2_b0_sel_is_3_o ;
  wire \U4/n19 ;
  wire \U4/n25 ;
  wire \U4/n29 ;
  wire \U4/n33 ;
  wire \U4/n35 ;
  wire \U4/n39 ;
  wire \U4/n41 ;
  wire \U4/n45 ;
  wire _al_u125_o;
  wire _al_u146_o;
  wire _al_u147_o;
  wire _al_u151_o;
  wire _al_u152_o;
  wire _al_u153_o;
  wire _al_u154_o;
  wire _al_u155_o;
  wire _al_u157_o;
  wire _al_u158_o;
  wire _al_u159_o;
  wire _al_u160_o;
  wire _al_u161_o;
  wire _al_u162_o;
  wire _al_u163_o;
  wire _al_u164_o;
  wire _al_u166_o;
  wire _al_u167_o;
  wire _al_u168_o;
  wire _al_u169_o;
  wire _al_u170_o;
  wire _al_u171_o;
  wire _al_u172_o;
  wire _al_u173_o;
  wire _al_u175_o;
  wire _al_u176_o;
  wire _al_u177_o;
  wire _al_u178_o;
  wire _al_u179_o;
  wire _al_u278_o;
  wire _al_u279_o;
  wire _al_u280_o;
  wire _al_u281_o;
  wire _al_u285_o;
  wire _al_u289_o;
  wire _al_u290_o;
  wire clk_pad;  // source/TOP.v(3)
  wire i8080_CS_pad;  // source/TOP.v(8)
  wire i8080_RS_pad;  // source/TOP.v(9)
  wire i8080_WR_pad;  // source/TOP.v(10)
  wire nRST_pad;  // source/TOP.v(4)

  // source/VGAMod.v(72)
  // source/VGAMod.v(84)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTF1("(~D*~(~C*~B*~A))"),
    //.LUTG0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG1("(~D*~(~C*~B*~A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010110000000000),
    .INIT_LUTF1(16'b0000000011111110),
    .INIT_LUTG0(16'b1010110000000000),
    .INIT_LUTG1(16'b0000000011111110),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/FrameFlag_reg|D1/reg0_b1  (
    .a({\U4/LCD_Pix_Reg [0],\D1/n4 [1]}),
    .b({\U4/LCD_Ctrl_Reg [3],\D1/PixelCount [1]}),
    .c({\D1/FrameFlag ,\D1/FrameFlag }),
    .clk(LCD_CLK_pad),
    .d({_al_u155_o,\D1/mux3_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\D1/FrameFlag ,\D1/PixelCount [1]}));  // source/VGAMod.v(72)
  EF2_PHY_LSLICE #(
    //.MACRO("D1/add0/ucin_al_u316"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \D1/add0/u11_al_u319  (
    .a({\D1/LineCount [13],\D1/LineCount [11]}),
    .b({\D1/LineCount [14],\D1/LineCount [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\D1/add0/c11 ),
    .f({\D1/n2 [13],\D1/n2 [11]}),
    .fco(\D1/add0/c15 ),
    .fx({\D1/n2 [14],\D1/n2 [12]}));
  EF2_PHY_LSLICE #(
    //.MACRO("D1/add0/ucin_al_u316"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \D1/add0/u15_al_u320  (
    .a({open_n40,\D1/LineCount [15]}),
    .c(2'b00),
    .d({open_n45,1'b0}),
    .fci(\D1/add0/c15 ),
    .f({open_n62,\D1/n2 [15]}));
  EF2_PHY_LSLICE #(
    //.MACRO("D1/add0/ucin_al_u316"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \D1/add0/u3_al_u317  (
    .a({\D1/LineCount [5],\D1/LineCount [3]}),
    .b({\D1/LineCount [6],\D1/LineCount [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\D1/add0/c3 ),
    .f({\D1/n2 [5],\D1/n2 [3]}),
    .fco(\D1/add0/c7 ),
    .fx({\D1/n2 [6],\D1/n2 [4]}));
  EF2_PHY_LSLICE #(
    //.MACRO("D1/add0/ucin_al_u316"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \D1/add0/u7_al_u318  (
    .a({\D1/LineCount [9],\D1/LineCount [7]}),
    .b({\D1/LineCount [10],\D1/LineCount [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\D1/add0/c7 ),
    .f({\D1/n2 [9],\D1/n2 [7]}),
    .fco(\D1/add0/c11 ),
    .fx({\D1/n2 [10],\D1/n2 [8]}));
  EF2_PHY_LSLICE #(
    //.MACRO("D1/add0/ucin_al_u316"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \D1/add0/ucin_al_u316  (
    .a({\D1/LineCount [1],1'b0}),
    .b({\D1/LineCount [2],\D1/LineCount [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\D1/n2 [1],open_n121}),
    .fco(\D1/add0/c3 ),
    .fx({\D1/n2 [2],\D1/n2 [0]}));
  EF2_PHY_LSLICE #(
    //.MACRO("D1/add1/ucin_al_u321"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \D1/add1/u11_al_u324  (
    .a({\D1/PixelCount [13],\D1/PixelCount [11]}),
    .b({\D1/PixelCount [14],\D1/PixelCount [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\D1/add1/c11 ),
    .f({\D1/n4 [13],\D1/n4 [11]}),
    .fco(\D1/add1/c15 ),
    .fx({\D1/n4 [14],\D1/n4 [12]}));
  EF2_PHY_LSLICE #(
    //.MACRO("D1/add1/ucin_al_u321"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \D1/add1/u15_al_u325  (
    .a({open_n142,\D1/PixelCount [15]}),
    .c(2'b00),
    .d({open_n147,1'b0}),
    .fci(\D1/add1/c15 ),
    .f({open_n164,\D1/n4 [15]}));
  EF2_PHY_LSLICE #(
    //.MACRO("D1/add1/ucin_al_u321"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \D1/add1/u3_al_u322  (
    .a({\D1/PixelCount [5],\D1/PixelCount [3]}),
    .b({\D1/PixelCount [6],\D1/PixelCount [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\D1/add1/c3 ),
    .f({\D1/n4 [5],\D1/n4 [3]}),
    .fco(\D1/add1/c7 ),
    .fx({\D1/n4 [6],\D1/n4 [4]}));
  EF2_PHY_LSLICE #(
    //.MACRO("D1/add1/ucin_al_u321"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \D1/add1/u7_al_u323  (
    .a({\D1/PixelCount [9],\D1/PixelCount [7]}),
    .b({\D1/PixelCount [10],\D1/PixelCount [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\D1/add1/c7 ),
    .f({\D1/n4 [9],\D1/n4 [7]}),
    .fco(\D1/add1/c11 ),
    .fx({\D1/n4 [10],\D1/n4 [8]}));
  EF2_PHY_LSLICE #(
    //.MACRO("D1/add1/ucin_al_u321"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \D1/add1/ucin_al_u321  (
    .a({\D1/PixelCount [1],1'b0}),
    .b({\D1/PixelCount [2],\D1/PixelCount [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\D1/n4 [1],open_n223}),
    .fco(\D1/add1/c3 ),
    .fx({\D1/n4 [2],\D1/n4 [0]}));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt0_0|D1/lt0_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt0_0|D1/lt0_cin  (
    .a(2'b01),
    .b({\D1/PixelCount [0],open_n226}),
    .fco(\D1/lt0_c1 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt0_0|D1/lt0_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt0_10|D1/lt0_9  (
    .a(2'b00),
    .b(\D1/PixelCount [10:9]),
    .fci(\D1/lt0_c9 ),
    .fco(\D1/lt0_c11 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt0_0|D1/lt0_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt0_12|D1/lt0_11  (
    .a(2'b00),
    .b(\D1/PixelCount [12:11]),
    .fci(\D1/lt0_c11 ),
    .fco(\D1/lt0_c13 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt0_0|D1/lt0_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt0_14|D1/lt0_13  (
    .a(2'b00),
    .b(\D1/PixelCount [14:13]),
    .fci(\D1/lt0_c13 ),
    .fco(\D1/lt0_c15 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt0_0|D1/lt0_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt0_2|D1/lt0_1  (
    .a(2'b10),
    .b(\D1/PixelCount [2:1]),
    .fci(\D1/lt0_c1 ),
    .fco(\D1/lt0_c3 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt0_0|D1/lt0_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt0_4|D1/lt0_3  (
    .a(2'b10),
    .b(\D1/PixelCount [4:3]),
    .fci(\D1/lt0_c3 ),
    .fco(\D1/lt0_c5 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt0_0|D1/lt0_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt0_6|D1/lt0_5  (
    .a(2'b00),
    .b(\D1/PixelCount [6:5]),
    .fci(\D1/lt0_c5 ),
    .fco(\D1/lt0_c7 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt0_0|D1/lt0_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt0_8|D1/lt0_7  (
    .a(2'b00),
    .b(\D1/PixelCount [8:7]),
    .fci(\D1/lt0_c7 ),
    .fco(\D1/lt0_c9 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt0_0|D1/lt0_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt0_cout|D1/lt0_15  (
    .a(2'b00),
    .b({1'b1,\D1/PixelCount [15]}),
    .fci(\D1/lt0_c15 ),
    .f({\D1/n14 ,open_n438}));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt1_0|D1/lt1_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt1_0|D1/lt1_cin  (
    .a({\D1/PixelCount [0],1'b0}),
    .b({1'b1,open_n444}),
    .fco(\D1/lt1_c1 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt1_0|D1/lt1_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt1_10|D1/lt1_9  (
    .a(\D1/PixelCount [10:9]),
    .b(2'b01),
    .fci(\D1/lt1_c9 ),
    .fco(\D1/lt1_c11 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt1_0|D1/lt1_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt1_12|D1/lt1_11  (
    .a(\D1/PixelCount [12:11]),
    .b(2'b00),
    .fci(\D1/lt1_c11 ),
    .fco(\D1/lt1_c13 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt1_0|D1/lt1_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt1_14|D1/lt1_13  (
    .a(\D1/PixelCount [14:13]),
    .b(2'b00),
    .fci(\D1/lt1_c13 ),
    .fco(\D1/lt1_c15 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt1_0|D1/lt1_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt1_2|D1/lt1_1  (
    .a(\D1/PixelCount [2:1]),
    .b(2'b11),
    .fci(\D1/lt1_c1 ),
    .fco(\D1/lt1_c3 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt1_0|D1/lt1_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt1_4|D1/lt1_3  (
    .a(\D1/PixelCount [4:3]),
    .b(2'b01),
    .fci(\D1/lt1_c3 ),
    .fco(\D1/lt1_c5 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt1_0|D1/lt1_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt1_6|D1/lt1_5  (
    .a(\D1/PixelCount [6:5]),
    .b(2'b10),
    .fci(\D1/lt1_c5 ),
    .fco(\D1/lt1_c7 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt1_0|D1/lt1_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt1_8|D1/lt1_7  (
    .a(\D1/PixelCount [8:7]),
    .b(2'b01),
    .fci(\D1/lt1_c7 ),
    .fco(\D1/lt1_c9 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt1_0|D1/lt1_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt1_cout|D1/lt1_15  (
    .a({1'b0,\D1/PixelCount [15]}),
    .b(2'b10),
    .fci(\D1/lt1_c15 ),
    .f({\D1/n15 ,open_n656}));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt2_0|D1/lt2_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt2_0|D1/lt2_cin  (
    .a({\D1/LineCount [0],1'b0}),
    .b({1'b0,open_n662}),
    .fco(\D1/lt2_c1 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt2_0|D1/lt2_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt2_10|D1/lt2_9  (
    .a(\D1/LineCount [10:9]),
    .b(2'b00),
    .fci(\D1/lt2_c9 ),
    .fco(\D1/lt2_c11 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt2_0|D1/lt2_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt2_12|D1/lt2_11  (
    .a(\D1/LineCount [12:11]),
    .b(2'b00),
    .fci(\D1/lt2_c11 ),
    .fco(\D1/lt2_c13 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt2_0|D1/lt2_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt2_14|D1/lt2_13  (
    .a(\D1/LineCount [14:13]),
    .b(2'b00),
    .fci(\D1/lt2_c13 ),
    .fco(\D1/lt2_c15 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt2_0|D1/lt2_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt2_2|D1/lt2_1  (
    .a(\D1/LineCount [2:1]),
    .b(2'b01),
    .fci(\D1/lt2_c1 ),
    .fco(\D1/lt2_c3 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt2_0|D1/lt2_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt2_4|D1/lt2_3  (
    .a(\D1/LineCount [4:3]),
    .b(2'b01),
    .fci(\D1/lt2_c3 ),
    .fco(\D1/lt2_c5 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt2_0|D1/lt2_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt2_6|D1/lt2_5  (
    .a(\D1/LineCount [6:5]),
    .b(2'b00),
    .fci(\D1/lt2_c5 ),
    .fco(\D1/lt2_c7 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt2_0|D1/lt2_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt2_8|D1/lt2_7  (
    .a(\D1/LineCount [8:7]),
    .b(2'b00),
    .fci(\D1/lt2_c7 ),
    .fco(\D1/lt2_c9 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt2_0|D1/lt2_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt2_cout|D1/lt2_15  (
    .a({1'b0,\D1/LineCount [15]}),
    .b(2'b10),
    .fci(\D1/lt2_c15 ),
    .f({LCD_SYNC_pad,open_n874}));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt3_0|D1/lt3_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt3_0|D1/lt3_cin  (
    .a({\D1/PixelCount [0],1'b0}),
    .b({1'b0,open_n880}),
    .fco(\D1/lt3_c1 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt3_0|D1/lt3_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt3_10|D1/lt3_9  (
    .a(\D1/PixelCount [10:9]),
    .b(2'b00),
    .fci(\D1/lt3_c9 ),
    .fco(\D1/lt3_c11 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt3_0|D1/lt3_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt3_12|D1/lt3_11  (
    .a(\D1/PixelCount [12:11]),
    .b(2'b00),
    .fci(\D1/lt3_c11 ),
    .fco(\D1/lt3_c13 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt3_0|D1/lt3_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt3_14|D1/lt3_13  (
    .a(\D1/PixelCount [14:13]),
    .b(2'b00),
    .fci(\D1/lt3_c13 ),
    .fco(\D1/lt3_c15 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt3_0|D1/lt3_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt3_2|D1/lt3_1  (
    .a(\D1/PixelCount [2:1]),
    .b(2'b01),
    .fci(\D1/lt3_c1 ),
    .fco(\D1/lt3_c3 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt3_0|D1/lt3_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt3_4|D1/lt3_3  (
    .a(\D1/PixelCount [4:3]),
    .b(2'b01),
    .fci(\D1/lt3_c3 ),
    .fco(\D1/lt3_c5 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt3_0|D1/lt3_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt3_6|D1/lt3_5  (
    .a(\D1/PixelCount [6:5]),
    .b(2'b00),
    .fci(\D1/lt3_c5 ),
    .fco(\D1/lt3_c7 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt3_0|D1/lt3_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt3_8|D1/lt3_7  (
    .a(\D1/PixelCount [8:7]),
    .b(2'b00),
    .fci(\D1/lt3_c7 ),
    .fco(\D1/lt3_c9 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt3_0|D1/lt3_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt3_cout|D1/lt3_15  (
    .a({1'b0,\D1/PixelCount [15]}),
    .b(2'b10),
    .fci(\D1/lt3_c15 ),
    .f({FIFO_RST,open_n1092}));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt4_0|D1/lt4_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt4_0|D1/lt4_cin  (
    .a(2'b01),
    .b({\D1/PixelCount [0],open_n1098}),
    .fco(\D1/lt4_c1 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt4_0|D1/lt4_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt4_10|D1/lt4_9  (
    .a(2'b00),
    .b(\D1/PixelCount [10:9]),
    .fci(\D1/lt4_c9 ),
    .fco(\D1/lt4_c11 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt4_0|D1/lt4_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt4_12|D1/lt4_11  (
    .a(2'b00),
    .b(\D1/PixelCount [12:11]),
    .fci(\D1/lt4_c11 ),
    .fco(\D1/lt4_c13 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt4_0|D1/lt4_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt4_14|D1/lt4_13  (
    .a(2'b00),
    .b(\D1/PixelCount [14:13]),
    .fci(\D1/lt4_c13 ),
    .fco(\D1/lt4_c15 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt4_0|D1/lt4_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt4_2|D1/lt4_1  (
    .a(2'b00),
    .b(\D1/PixelCount [2:1]),
    .fci(\D1/lt4_c1 ),
    .fco(\D1/lt4_c3 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt4_0|D1/lt4_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt4_4|D1/lt4_3  (
    .a(2'b11),
    .b(\D1/PixelCount [4:3]),
    .fci(\D1/lt4_c3 ),
    .fco(\D1/lt4_c5 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt4_0|D1/lt4_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt4_6|D1/lt4_5  (
    .a(2'b11),
    .b(\D1/PixelCount [6:5]),
    .fci(\D1/lt4_c5 ),
    .fco(\D1/lt4_c7 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt4_0|D1/lt4_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt4_8|D1/lt4_7  (
    .a(2'b00),
    .b(\D1/PixelCount [8:7]),
    .fci(\D1/lt4_c7 ),
    .fco(\D1/lt4_c9 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt4_0|D1/lt4_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt4_cout|D1/lt4_15  (
    .a(2'b00),
    .b({1'b1,\D1/PixelCount [15]}),
    .fci(\D1/lt4_c15 ),
    .f({\D1/n17 ,open_n1310}));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt5_0|D1/lt5_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt5_0|D1/lt5_cin  (
    .a({\D1/PixelCount [0],1'b1}),
    .b({1'b0,open_n1316}),
    .fco(\D1/lt5_c1 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt5_0|D1/lt5_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt5_10|D1/lt5_9  (
    .a(\D1/PixelCount [10:9]),
    .b(2'b01),
    .fci(\D1/lt5_c9 ),
    .fco(\D1/lt5_c11 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt5_0|D1/lt5_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt5_12|D1/lt5_11  (
    .a(\D1/PixelCount [12:11]),
    .b(2'b00),
    .fci(\D1/lt5_c11 ),
    .fco(\D1/lt5_c13 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt5_0|D1/lt5_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt5_14|D1/lt5_13  (
    .a(\D1/PixelCount [14:13]),
    .b(2'b00),
    .fci(\D1/lt5_c13 ),
    .fco(\D1/lt5_c15 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt5_0|D1/lt5_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt5_2|D1/lt5_1  (
    .a(\D1/PixelCount [2:1]),
    .b(2'b00),
    .fci(\D1/lt5_c1 ),
    .fco(\D1/lt5_c3 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt5_0|D1/lt5_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt5_4|D1/lt5_3  (
    .a(\D1/PixelCount [4:3]),
    .b(2'b10),
    .fci(\D1/lt5_c3 ),
    .fco(\D1/lt5_c5 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt5_0|D1/lt5_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt5_6|D1/lt5_5  (
    .a(\D1/PixelCount [6:5]),
    .b(2'b10),
    .fci(\D1/lt5_c5 ),
    .fco(\D1/lt5_c7 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt5_0|D1/lt5_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt5_8|D1/lt5_7  (
    .a(\D1/PixelCount [8:7]),
    .b(2'b01),
    .fci(\D1/lt5_c7 ),
    .fco(\D1/lt5_c9 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt5_0|D1/lt5_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt5_cout|D1/lt5_15  (
    .a({1'b0,\D1/PixelCount [15]}),
    .b(2'b10),
    .fci(\D1/lt5_c15 ),
    .f({\D1/n18 ,open_n1528}));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt6_0|D1/lt6_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt6_0|D1/lt6_cin  (
    .a(2'b01),
    .b({\D1/LineCount [0],open_n1534}),
    .fco(\D1/lt6_c1 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt6_0|D1/lt6_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt6_10|D1/lt6_9  (
    .a(2'b00),
    .b(\D1/LineCount [10:9]),
    .fci(\D1/lt6_c9 ),
    .fco(\D1/lt6_c11 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt6_0|D1/lt6_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt6_12|D1/lt6_11  (
    .a(2'b00),
    .b(\D1/LineCount [12:11]),
    .fci(\D1/lt6_c11 ),
    .fco(\D1/lt6_c13 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt6_0|D1/lt6_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt6_14|D1/lt6_13  (
    .a(2'b00),
    .b(\D1/LineCount [14:13]),
    .fci(\D1/lt6_c13 ),
    .fco(\D1/lt6_c15 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt6_0|D1/lt6_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt6_2|D1/lt6_1  (
    .a(2'b01),
    .b(\D1/LineCount [2:1]),
    .fci(\D1/lt6_c1 ),
    .fco(\D1/lt6_c3 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt6_0|D1/lt6_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt6_4|D1/lt6_3  (
    .a(2'b01),
    .b(\D1/LineCount [4:3]),
    .fci(\D1/lt6_c3 ),
    .fco(\D1/lt6_c5 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt6_0|D1/lt6_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt6_6|D1/lt6_5  (
    .a(2'b00),
    .b(\D1/LineCount [6:5]),
    .fci(\D1/lt6_c5 ),
    .fco(\D1/lt6_c7 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt6_0|D1/lt6_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt6_8|D1/lt6_7  (
    .a(2'b00),
    .b(\D1/LineCount [8:7]),
    .fci(\D1/lt6_c7 ),
    .fco(\D1/lt6_c9 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt6_0|D1/lt6_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt6_cout|D1/lt6_15  (
    .a(2'b00),
    .b({1'b1,\D1/LineCount [15]}),
    .fci(\D1/lt6_c15 ),
    .f({\D1/n20 ,open_n1746}));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt7_0|D1/lt7_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt7_0|D1/lt7_cin  (
    .a({\D1/LineCount [0],1'b0}),
    .b({1'b0,open_n1752}),
    .fco(\D1/lt7_c1 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt7_0|D1/lt7_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt7_10|D1/lt7_9  (
    .a(\D1/LineCount [10:9]),
    .b(2'b00),
    .fci(\D1/lt7_c9 ),
    .fco(\D1/lt7_c11 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt7_0|D1/lt7_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt7_12|D1/lt7_11  (
    .a(\D1/LineCount [12:11]),
    .b(2'b00),
    .fci(\D1/lt7_c11 ),
    .fco(\D1/lt7_c13 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt7_0|D1/lt7_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt7_14|D1/lt7_13  (
    .a(\D1/LineCount [14:13]),
    .b(2'b00),
    .fci(\D1/lt7_c13 ),
    .fco(\D1/lt7_c15 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt7_0|D1/lt7_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt7_2|D1/lt7_1  (
    .a(\D1/LineCount [2:1]),
    .b(2'b10),
    .fci(\D1/lt7_c1 ),
    .fco(\D1/lt7_c3 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt7_0|D1/lt7_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt7_4|D1/lt7_3  (
    .a(\D1/LineCount [4:3]),
    .b(2'b00),
    .fci(\D1/lt7_c3 ),
    .fco(\D1/lt7_c5 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt7_0|D1/lt7_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt7_6|D1/lt7_5  (
    .a(\D1/LineCount [6:5]),
    .b(2'b01),
    .fci(\D1/lt7_c5 ),
    .fco(\D1/lt7_c7 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt7_0|D1/lt7_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt7_8|D1/lt7_7  (
    .a(\D1/LineCount [8:7]),
    .b(2'b10),
    .fci(\D1/lt7_c7 ),
    .fco(\D1/lt7_c9 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt7_0|D1/lt7_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt7_cout|D1/lt7_15  (
    .a({1'b0,\D1/LineCount [15]}),
    .b(2'b10),
    .fci(\D1/lt7_c15 ),
    .f({\D1/n22 ,open_n1964}));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt8_0|D1/lt8_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt8_0|D1/lt8_cin  (
    .a(2'b11),
    .b({\D1/PixelCount [0],open_n1970}),
    .fco(\D1/lt8_c1 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt8_0|D1/lt8_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt8_10|D1/lt8_9  (
    .a(2'b00),
    .b(\D1/PixelCount [10:9]),
    .fci(\D1/lt8_c9 ),
    .fco(\D1/lt8_c11 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt8_0|D1/lt8_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt8_12|D1/lt8_11  (
    .a(2'b00),
    .b(\D1/PixelCount [12:11]),
    .fci(\D1/lt8_c11 ),
    .fco(\D1/lt8_c13 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt8_0|D1/lt8_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt8_14|D1/lt8_13  (
    .a(2'b00),
    .b(\D1/PixelCount [14:13]),
    .fci(\D1/lt8_c13 ),
    .fco(\D1/lt8_c15 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt8_0|D1/lt8_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt8_2|D1/lt8_1  (
    .a(2'b11),
    .b(\D1/PixelCount [2:1]),
    .fci(\D1/lt8_c1 ),
    .fco(\D1/lt8_c3 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt8_0|D1/lt8_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt8_4|D1/lt8_3  (
    .a(2'b10),
    .b(\D1/PixelCount [4:3]),
    .fci(\D1/lt8_c3 ),
    .fco(\D1/lt8_c5 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt8_0|D1/lt8_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt8_6|D1/lt8_5  (
    .a(2'b11),
    .b(\D1/PixelCount [6:5]),
    .fci(\D1/lt8_c5 ),
    .fco(\D1/lt8_c7 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt8_0|D1/lt8_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt8_8|D1/lt8_7  (
    .a(2'b00),
    .b(\D1/PixelCount [8:7]),
    .fci(\D1/lt8_c7 ),
    .fco(\D1/lt8_c9 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt8_0|D1/lt8_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt8_cout|D1/lt8_15  (
    .a(2'b00),
    .b({1'b1,\D1/PixelCount [15]}),
    .fci(\D1/lt8_c15 ),
    .f({\D1/n24 ,open_n2182}));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt9_0|D1/lt9_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt9_0|D1/lt9_cin  (
    .a({\D1/PixelCount [0],1'b1}),
    .b({1'b1,open_n2188}),
    .fco(\D1/lt9_c1 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt9_0|D1/lt9_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt9_10|D1/lt9_9  (
    .a(\D1/PixelCount [10:9]),
    .b(2'b01),
    .fci(\D1/lt9_c9 ),
    .fco(\D1/lt9_c11 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt9_0|D1/lt9_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt9_12|D1/lt9_11  (
    .a(\D1/PixelCount [12:11]),
    .b(2'b00),
    .fci(\D1/lt9_c11 ),
    .fco(\D1/lt9_c13 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt9_0|D1/lt9_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt9_14|D1/lt9_13  (
    .a(\D1/PixelCount [14:13]),
    .b(2'b00),
    .fci(\D1/lt9_c13 ),
    .fco(\D1/lt9_c15 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt9_0|D1/lt9_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt9_2|D1/lt9_1  (
    .a(\D1/PixelCount [2:1]),
    .b(2'b00),
    .fci(\D1/lt9_c1 ),
    .fco(\D1/lt9_c3 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt9_0|D1/lt9_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt9_4|D1/lt9_3  (
    .a(\D1/PixelCount [4:3]),
    .b(2'b11),
    .fci(\D1/lt9_c3 ),
    .fco(\D1/lt9_c5 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt9_0|D1/lt9_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt9_6|D1/lt9_5  (
    .a(\D1/PixelCount [6:5]),
    .b(2'b10),
    .fci(\D1/lt9_c5 ),
    .fco(\D1/lt9_c7 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt9_0|D1/lt9_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt9_8|D1/lt9_7  (
    .a(\D1/PixelCount [8:7]),
    .b(2'b00),
    .fci(\D1/lt9_c7 ),
    .fco(\D1/lt9_c9 ));
  EF2_PHY_MSLICE #(
    //.MACRO("D1/lt9_0|D1/lt9_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt9_cout|D1/lt9_15  (
    .a({1'b0,\D1/PixelCount [15]}),
    .b(2'b10),
    .fci(\D1/lt9_c15 ),
    .f({\D1/n26 ,open_n2400}));
  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTF1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010110000000000),
    .INIT_LUTF1(16'b1010110000000000),
    .INIT_LUTG0(16'b1010110000000000),
    .INIT_LUTG1(16'b1010110000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b0|D1/reg0_b9  (
    .a({\D1/n4 [0],\D1/n4 [9]}),
    .b({\D1/PixelCount [0],\D1/PixelCount [9]}),
    .c({\D1/FrameFlag ,\D1/FrameFlag }),
    .clk(LCD_CLK_pad),
    .d({\D1/mux3_b0_sel_is_0_o ,\D1/mux3_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\D1/PixelCount [0],\D1/PixelCount [9]}));  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTF1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010110000000000),
    .INIT_LUTF1(16'b1010110000000000),
    .INIT_LUTG0(16'b1010110000000000),
    .INIT_LUTG1(16'b1010110000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b10|D1/reg0_b8  (
    .a({\D1/n4 [10],\D1/n4 [8]}),
    .b({\D1/PixelCount [10],\D1/PixelCount [8]}),
    .c({\D1/FrameFlag ,\D1/FrameFlag }),
    .clk(LCD_CLK_pad),
    .d({\D1/mux3_b0_sel_is_0_o ,\D1/mux3_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\D1/PixelCount [10],\D1/PixelCount [8]}));  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTF1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010110000000000),
    .INIT_LUTF1(16'b1010110000000000),
    .INIT_LUTG0(16'b1010110000000000),
    .INIT_LUTG1(16'b1010110000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b11|D1/reg0_b7  (
    .a({\D1/n4 [11],\D1/n4 [7]}),
    .b({\D1/PixelCount [11],\D1/PixelCount [7]}),
    .c({\D1/FrameFlag ,\D1/FrameFlag }),
    .clk(LCD_CLK_pad),
    .d({\D1/mux3_b0_sel_is_0_o ,\D1/mux3_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\D1/PixelCount [11],\D1/PixelCount [7]}));  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTF1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010110000000000),
    .INIT_LUTF1(16'b1010110000000000),
    .INIT_LUTG0(16'b1010110000000000),
    .INIT_LUTG1(16'b1010110000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b12|D1/reg0_b6  (
    .a({\D1/n4 [12],\D1/n4 [6]}),
    .b({\D1/PixelCount [12],\D1/PixelCount [6]}),
    .c({\D1/FrameFlag ,\D1/FrameFlag }),
    .clk(LCD_CLK_pad),
    .d({\D1/mux3_b0_sel_is_0_o ,\D1/mux3_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\D1/PixelCount [12],\D1/PixelCount [6]}));  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTF1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010110000000000),
    .INIT_LUTF1(16'b1010110000000000),
    .INIT_LUTG0(16'b1010110000000000),
    .INIT_LUTG1(16'b1010110000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b13|D1/reg0_b4  (
    .a({\D1/n4 [13],\D1/n4 [4]}),
    .b({\D1/PixelCount [13],\D1/PixelCount [4]}),
    .c({\D1/FrameFlag ,\D1/FrameFlag }),
    .clk(LCD_CLK_pad),
    .d({\D1/mux3_b0_sel_is_0_o ,\D1/mux3_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\D1/PixelCount [13],\D1/PixelCount [4]}));  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTF1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010110000000000),
    .INIT_LUTF1(16'b1010110000000000),
    .INIT_LUTG0(16'b1010110000000000),
    .INIT_LUTG1(16'b1010110000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b14|D1/reg0_b3  (
    .a({\D1/n4 [14],\D1/n4 [3]}),
    .b({\D1/PixelCount [14],\D1/PixelCount [3]}),
    .c({\D1/FrameFlag ,\D1/FrameFlag }),
    .clk(LCD_CLK_pad),
    .d({\D1/mux3_b0_sel_is_0_o ,\D1/mux3_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\D1/PixelCount [14],\D1/PixelCount [3]}));  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTF1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010110000000000),
    .INIT_LUTF1(16'b1010110000000000),
    .INIT_LUTG0(16'b1010110000000000),
    .INIT_LUTG1(16'b1010110000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b15|D1/reg0_b2  (
    .a({\D1/n4 [15],\D1/n4 [2]}),
    .b({\D1/PixelCount [15],\D1/PixelCount [2]}),
    .c({\D1/FrameFlag ,\D1/FrameFlag }),
    .clk(LCD_CLK_pad),
    .d({\D1/mux3_b0_sel_is_0_o ,\D1/mux3_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\D1/PixelCount [15],\D1/PixelCount [2]}));  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTF1("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTG0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTG1("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111110000001100),
    .INIT_LUTF1(16'b1111110000001100),
    .INIT_LUTG0(16'b1111110000001100),
    .INIT_LUTG1(16'b1111110000001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg1_b0|D1/reg1_b9  (
    .b({\D1/LineCount [0],\D1/LineCount [9]}),
    .c({_al_u179_o,_al_u179_o}),
    .clk(LCD_CLK_pad),
    .d({\D1/n2 [0],\D1/n2 [9]}),
    .sr(nRST_pad),
    .q({\D1/LineCount [0],\D1/LineCount [9]}));  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTF1("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTG0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTG1("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111110000001100),
    .INIT_LUTF1(16'b1111110000001100),
    .INIT_LUTG0(16'b1111110000001100),
    .INIT_LUTG1(16'b1111110000001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg1_b10|D1/reg1_b7  (
    .b({\D1/LineCount [10],\D1/LineCount [7]}),
    .c({_al_u179_o,_al_u179_o}),
    .clk(LCD_CLK_pad),
    .d({\D1/n2 [10],\D1/n2 [7]}),
    .sr(nRST_pad),
    .q({\D1/LineCount [10],\D1/LineCount [7]}));  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTF1("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTG0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTG1("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111110000001100),
    .INIT_LUTF1(16'b1111110000001100),
    .INIT_LUTG0(16'b1111110000001100),
    .INIT_LUTG1(16'b1111110000001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg1_b11|D1/reg1_b6  (
    .b({\D1/LineCount [11],\D1/LineCount [6]}),
    .c({_al_u179_o,_al_u179_o}),
    .clk(LCD_CLK_pad),
    .d({\D1/n2 [11],\D1/n2 [6]}),
    .sr(nRST_pad),
    .q({\D1/LineCount [11],\D1/LineCount [6]}));  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTF1("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTG0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTG1("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111110000001100),
    .INIT_LUTF1(16'b1111110000001100),
    .INIT_LUTG0(16'b1111110000001100),
    .INIT_LUTG1(16'b1111110000001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg1_b12|D1/reg1_b4  (
    .b({\D1/LineCount [12],\D1/LineCount [4]}),
    .c({_al_u179_o,_al_u179_o}),
    .clk(LCD_CLK_pad),
    .d({\D1/n2 [12],\D1/n2 [4]}),
    .sr(nRST_pad),
    .q({\D1/LineCount [12],\D1/LineCount [4]}));  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTF1("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTG0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTG1("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111110000001100),
    .INIT_LUTF1(16'b1111110000001100),
    .INIT_LUTG0(16'b1111110000001100),
    .INIT_LUTG1(16'b1111110000001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg1_b13|D1/reg1_b3  (
    .b({\D1/LineCount [13],\D1/LineCount [3]}),
    .c({_al_u179_o,_al_u179_o}),
    .clk(LCD_CLK_pad),
    .d({\D1/n2 [13],\D1/n2 [3]}),
    .sr(nRST_pad),
    .q({\D1/LineCount [13],\D1/LineCount [3]}));  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTF1("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTG0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTG1("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111110000001100),
    .INIT_LUTF1(16'b1111110000001100),
    .INIT_LUTG0(16'b1111110000001100),
    .INIT_LUTG1(16'b1111110000001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg1_b14|D1/reg1_b15  (
    .b({\D1/LineCount [14],\D1/LineCount [15]}),
    .c({_al_u179_o,_al_u179_o}),
    .clk(LCD_CLK_pad),
    .d({\D1/n2 [14],\D1/n2 [15]}),
    .sr(nRST_pad),
    .q({\D1/LineCount [14],\D1/LineCount [15]}));  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  // source/VGAMod.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTF1("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTG0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTG1("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000001000100),
    .INIT_LUTF1(16'b1111000001000100),
    .INIT_LUTG0(16'b1111000001000100),
    .INIT_LUTG1(16'b1111000001000100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg1_b2|D1/reg1_b8  (
    .a({_al_u155_o,_al_u155_o}),
    .b({\D1/LineCount [2],\D1/LineCount [8]}),
    .c({\D1/n2 [2],\D1/n2 [8]}),
    .clk(LCD_CLK_pad),
    .d({_al_u179_o,_al_u179_o}),
    .sr(nRST_pad),
    .q({\D1/LineCount [2],\D1/LineCount [8]}));  // source/VGAMod.v(72)
  EF2_PHY_FIFO #(
    .AE(32'b00000000000000000000000000110100),
    .AEP1(32'b00000000000000000000000000111100),
    .AF(32'b00000000000000000001111111101000),
    .AFM1(32'b00000000000000000001111111100100),
    .ASYNC_RESET_RELEASE("SYNC"),
    .DATA_WIDTH_A("4"),
    .DATA_WIDTH_B("9"),
    .E(32'b00000000000000000000000000000100),
    .EP1(32'b00000000000000000000000000001100),
    .F(32'b00000000000000000010000000000000),
    .FM1(32'b00000000000000000001111111111100),
    .GSR("DISABLE"),
    .MODE("FIFO8K"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("ASYNC"))
    \FIFO0/logic_fifo_0  (
    .clkr(LCD_CLK_pad),
    .clkw(FIFO_CLK_W),
    .csr({2'b11,\D1/n28 }),
    .csw({2'b11,\FIFO0/logic_fifo_full_neg }),
    .dia({open_n2726,open_n2727,open_n2728,open_n2729,open_n2730,FIFO_DI[3:0]}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(FIFO_RE),
    .rprst(FIFO_RST),
    .rst(FIFO_RST),
    .we(FIFO_WE),
    .dob({open_n2751,FIFO_DO[3:0],FIFO_DO[11:8]}),
    .empty_flag(FIFO_EMPTY),
    .full_flag(\FIFO0/logic_fifo_full ));
  EF2_PHY_FIFO #(
    .AE(32'b00000000000000000000000000110100),
    .AEP1(32'b00000000000000000000000000111100),
    .AF(32'b00000000000000000001111111101000),
    .AFM1(32'b00000000000000000001111111100100),
    .ASYNC_RESET_RELEASE("SYNC"),
    .DATA_WIDTH_A("4"),
    .DATA_WIDTH_B("9"),
    .E(32'b00000000000000000000000000000100),
    .EP1(32'b00000000000000000000000000001100),
    .F(32'b00000000000000000010000000000000),
    .FM1(32'b00000000000000000001111111111100),
    .GSR("DISABLE"),
    .MODE("FIFO8K"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("ASYNC"))
    \FIFO0/logic_fifo_1  (
    .clkr(LCD_CLK_pad),
    .clkw(FIFO_CLK_W),
    .csr({2'b11,\D1/n28 }),
    .csw({2'b11,\FIFO0/logic_fifo_full_neg }),
    .dia({open_n2752,open_n2753,open_n2754,open_n2755,open_n2756,FIFO_DI[7:4]}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(FIFO_RE),
    .rprst(FIFO_RST),
    .rst(FIFO_RST),
    .we(FIFO_WE),
    .dob({open_n2777,FIFO_DO[7:4],FIFO_DO[15:12]}));
  EF2_PHY_GCLK \PLL1/bufg_feedback  (
    .clki(\PLL1/clk0_buf ),
    .clko(CLK_100M));  // al_ip/LCDPLL.v(41)
  EF2_PHY_PLL #(
    .CLKC0_CPHASE(9),
    .CLKC0_DIV(10),
    .CLKC0_DIV2_ENABLE("DISABLE"),
    .CLKC0_DUTY(0.500000),
    .CLKC0_DUTY50("ENABLE"),
    .CLKC0_DUTY_INT(5),
    .CLKC0_ENABLE("ENABLE"),
    .CLKC0_FPHASE(0),
    .CLKC1_CPHASE(29),
    .CLKC1_DIV(30),
    .CLKC1_DIV2_ENABLE("DISABLE"),
    .CLKC1_DUTY(0.500000),
    .CLKC1_DUTY50("ENABLE"),
    .CLKC1_DUTY_INT(15),
    .CLKC1_ENABLE("ENABLE"),
    .CLKC1_FPHASE(0),
    .CLKC2_CPHASE(39),
    .CLKC2_DIV(40),
    .CLKC2_DIV2_ENABLE("DISABLE"),
    .CLKC2_ENABLE("ENABLE"),
    .CLKC2_FPHASE(0),
    .CLKC3_CPHASE(110),
    .CLKC3_DIV(111),
    .CLKC3_DIV2_ENABLE("DISABLE"),
    .CLKC3_ENABLE("ENABLE"),
    .CLKC3_FPHASE(0),
    .CLKC4_CPHASE(1),
    .CLKC4_DIV(1),
    .CLKC4_DIV2_ENABLE("DISABLE"),
    .CLKC4_ENABLE("DISABLE"),
    .CLKC4_FPHASE(0),
    .CLKC5_CPHASE(1),
    .CLKC5_DIV(1),
    .CLKC5_DIV2_ENABLE("DISABLE"),
    .CLKC5_ENABLE("DISABLE"),
    .CLKC6_CPHASE(1),
    .CLKC6_DIV(1),
    .CLKC6_DIV2_ENABLE("DISABLE"),
    .CLKC6_ENABLE("DISABLE"),
    .DERIVE_PLL_CLOCKS("DISABLE"),
    .DPHASE_SOURCE("DISABLE"),
    .DYNCFG("DISABLE"),
    .FBCLK_DIV(6),
    .FEEDBK_MODE("NORMAL"),
    .FEEDBK_PATH("CLKC0_EXT"),
    .FIN("50.000"),
    .FREQ_LOCK_ACCURACY(2),
    .FREQ_OFFSET("0.000000"),
    .FREQ_OFFSET_INT("0"),
    .GEN_BASIC_CLOCK("DISABLE"),
    .GMC_GAIN(6),
    .GMC_TEST(14),
    .HIGH_SPEED_EN("ENABLE"),
    .ICP_CURRENT(3),
    .IF_ESCLKSTSW("DISABLE"),
    .INTFB_WAKE("DISABLE"),
    .INTPI(3),
    .KVCO(6),
    .LPF_CAPACITOR(3),
    .LPF_RESISTOR(2),
    .NORESET("DISABLE"),
    .ODIV_MUXC0("DIV"),
    .ODIV_MUXC1("DIV"),
    .ODIV_MUXC2("DIV"),
    .ODIV_MUXC3("DIV"),
    .ODIV_MUXC4("DIV"),
    .OFFSET_MODE("EXT"),
    .PLLC2RST_ENA("DISABLE"),
    .PLLC34RST_ENA("DISABLE"),
    .PLLMRST_ENA("DISABLE"),
    .PLLRST_ENA("ENABLE"),
    .PLL_LOCK_MODE(0),
    .PREDIV_MUXC0("VCO"),
    .PREDIV_MUXC1("VCO"),
    .PREDIV_MUXC2("VCO"),
    .PREDIV_MUXC3("VCO"),
    .PREDIV_MUXC4("VCO"),
    .PREDIV_MUXC5("VCO"),
    .PREDIV_MUXC6("VCO"),
    .PU_INTP("DISABLE"),
    .REFCLK_DIV(3),
    .REFCLK_SEL("INTERNAL"),
    .SSC_AMP("0.000000"),
    .SSC_ENABLE("DISABLE"),
    .SSC_FREQ_DIV(0),
    .SSC_MODE("Down"),
    .SSC_RNGE(0),
    .STDBY_ENABLE("DISABLE"),
    .STDBY_VCO_ENA("DISABLE"),
    .SYNC_ENABLE("DISABLE"),
    .VCO_NORESET("DISABLE"))
    \PLL1/pll_inst  (
    .daddr(6'b000000),
    .dclk(1'b0),
    .dcs(1'b0),
    .di(8'b00000000),
    .dsm_refclk(1'b0),
    .dsm_rst(1'b0),
    .dwe(1'b0),
    .fbclk(CLK_100M),
    .frac_offset_valid(1'b0),
    .psclk(1'b0),
    .psclksel(3'b000),
    .psdown(1'b0),
    .psstep(1'b0),
    .refclk(clk_pad),
    .reset(1'b0),
    .ssc_en(1'b0),
    .stdby(1'b0),
    .clkc({open_n2780,open_n2781,open_n2782,LCD_CLK_pad,open_n2783,open_n2784,\PLL1/clk0_buf }));  // al_ip/LCDPLL.v(93)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTG0("(~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTG0(16'b0000000011111111),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/CLK_OUT_reg  (
    .ce(\U1/n1 ),
    .clk(LCD_CLK_pad),
    .d({open_n2801,LED_pad[0]}),
    .sr(nRST_pad),
    .q({open_n2823,LED_pad[0]}));  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u298"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0/u11_al_u301  (
    .a({\U1/Count [13],\U1/Count [11]}),
    .b({\U1/Count [14],\U1/Count [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c11 ),
    .f({\U1/n3 [13],\U1/n3 [11]}),
    .fco(\U1/add0/c15 ),
    .fx({\U1/n3 [14],\U1/n3 [12]}));
  EF2_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u298"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0/u15_al_u302  (
    .a({\U1/Count [17],\U1/Count [15]}),
    .b({\U1/Count [18],\U1/Count [16]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c15 ),
    .f({\U1/n3 [17],\U1/n3 [15]}),
    .fco(\U1/add0/c19 ),
    .fx({\U1/n3 [18],\U1/n3 [16]}));
  EF2_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u298"),
    //.R_POSITION("X0Y2Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0/u19_al_u303  (
    .a({\U1/Count [21],\U1/Count [19]}),
    .b({\U1/Count [22],\U1/Count [20]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c19 ),
    .f({\U1/n3 [21],\U1/n3 [19]}),
    .fco(\U1/add0/c23 ),
    .fx({\U1/n3 [22],\U1/n3 [20]}));
  EF2_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u298"),
    //.R_POSITION("X0Y3Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0/u23_al_u304  (
    .a({\U1/Count [25],\U1/Count [23]}),
    .b({\U1/Count [26],\U1/Count [24]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c23 ),
    .f({\U1/n3 [25],\U1/n3 [23]}),
    .fco(\U1/add0/c27 ),
    .fx({\U1/n3 [26],\U1/n3 [24]}));
  EF2_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u298"),
    //.R_POSITION("X0Y3Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0/u27_al_u305  (
    .a({\U1/Count [29],\U1/Count [27]}),
    .b({\U1/Count [30],\U1/Count [28]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c27 ),
    .f({\U1/n3 [29],\U1/n3 [27]}),
    .fco(\U1/add0/c31 ),
    .fx({\U1/n3 [30],\U1/n3 [28]}));
  EF2_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u298"),
    //.R_POSITION("X0Y4Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0/u31_al_u306  (
    .a({open_n2914,\U1/Count [31]}),
    .c(2'b00),
    .d({open_n2919,1'b0}),
    .fci(\U1/add0/c31 ),
    .f({open_n2936,\U1/n3 [31]}));
  EF2_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u298"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0/u3_al_u299  (
    .a({\U1/Count [5],\U1/Count [3]}),
    .b({\U1/Count [6],\U1/Count [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c3 ),
    .f({\U1/n3 [5],\U1/n3 [3]}),
    .fco(\U1/add0/c7 ),
    .fx({\U1/n3 [6],\U1/n3 [4]}));
  EF2_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u298"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0/u7_al_u300  (
    .a({\U1/Count [9],\U1/Count [7]}),
    .b({\U1/Count [10],\U1/Count [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c7 ),
    .f({\U1/n3 [9],\U1/n3 [7]}),
    .fco(\U1/add0/c11 ),
    .fx({\U1/n3 [10],\U1/n3 [8]}));
  EF2_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u298"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0/ucin_al_u298  (
    .a({\U1/Count [1],1'b0}),
    .b({\U1/Count [2],\U1/Count [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U1/n3 [1],open_n2995}),
    .fco(\U1/add0/c3 ),
    .fx({\U1/n3 [2],\U1/n3 [0]}));
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b0|U1/reg0_b9  (
    .c({\U1/n3 [0],\U1/n3 [9]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [0],\U1/Count [9]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b10|U1/reg0_b8  (
    .c({\U1/n3 [10],\U1/n3 [8]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [10],\U1/Count [8]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b11|U1/reg0_b7  (
    .c({\U1/n3 [11],\U1/n3 [7]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [11],\U1/Count [7]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b12|U1/reg0_b6  (
    .c({\U1/n3 [12],\U1/n3 [6]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [12],\U1/Count [6]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b13|U1/reg0_b5  (
    .c({\U1/n3 [13],\U1/n3 [5]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [13],\U1/Count [5]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b14|U1/reg0_b4  (
    .c({\U1/n3 [14],\U1/n3 [4]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [14],\U1/Count [4]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b15|U1/reg0_b31  (
    .c({\U1/n3 [15],\U1/n3 [31]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [15],\U1/Count [31]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b16|U1/reg0_b30  (
    .c({\U1/n3 [16],\U1/n3 [30]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [16],\U1/Count [30]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b17|U1/reg0_b3  (
    .c({\U1/n3 [17],\U1/n3 [3]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [17],\U1/Count [3]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b18|U1/reg0_b29  (
    .c({\U1/n3 [18],\U1/n3 [29]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [18],\U1/Count [29]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b19|U1/reg0_b28  (
    .c({\U1/n3 [19],\U1/n3 [28]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [19],\U1/Count [28]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b1|U1/reg0_b27  (
    .c({\U1/n3 [1],\U1/n3 [27]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [1],\U1/Count [27]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b20|U1/reg0_b26  (
    .c({\U1/n3 [20],\U1/n3 [26]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [20],\U1/Count [26]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b21|U1/reg0_b25  (
    .c({\U1/n3 [21],\U1/n3 [25]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [21],\U1/Count [25]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b22|U1/reg0_b24  (
    .c({\U1/n3 [22],\U1/n3 [24]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [22],\U1/Count [24]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b2|U1/reg0_b23  (
    .c({\U1/n3 [2],\U1/n3 [23]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [2],\U1/Count [23]}));  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u307"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U2/add0/u11_al_u310  (
    .a({\U2/Count [13],\U2/Count [11]}),
    .b({\U2/Count [14],\U2/Count [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U2/add0/c11 ),
    .f({\U2/n3 [13],\U2/n3 [11]}),
    .fco(\U2/add0/c15 ),
    .fx({\U2/n3 [14],\U2/n3 [12]}));
  EF2_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u307"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U2/add0/u15_al_u311  (
    .a({\U2/Count [17],\U2/Count [15]}),
    .b({\U2/Count [18],\U2/Count [16]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U2/add0/c15 ),
    .f({\U2/n3 [17],\U2/n3 [15]}),
    .fco(\U2/add0/c19 ),
    .fx({\U2/n3 [18],\U2/n3 [16]}));
  EF2_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u307"),
    //.R_POSITION("X0Y2Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U2/add0/u19_al_u312  (
    .a({\U2/Count [21],\U2/Count [19]}),
    .b({\U2/Count [22],\U2/Count [20]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U2/add0/c19 ),
    .f({\U2/n3 [21],\U2/n3 [19]}),
    .fco(\U2/add0/c23 ),
    .fx({\U2/n3 [22],\U2/n3 [20]}));
  EF2_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u307"),
    //.R_POSITION("X0Y3Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U2/add0/u23_al_u313  (
    .a({\U2/Count [25],\U2/Count [23]}),
    .b({\U2/Count [26],\U2/Count [24]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U2/add0/c23 ),
    .f({\U2/n3 [25],\U2/n3 [23]}),
    .fco(\U2/add0/c27 ),
    .fx({\U2/n3 [26],\U2/n3 [24]}));
  EF2_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u307"),
    //.R_POSITION("X0Y3Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U2/add0/u27_al_u314  (
    .a({\U2/Count [29],\U2/Count [27]}),
    .b({\U2/Count [30],\U2/Count [28]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U2/add0/c27 ),
    .f({\U2/n3 [29],\U2/n3 [27]}),
    .fco(\U2/add0/c31 ),
    .fx({\U2/n3 [30],\U2/n3 [28]}));
  EF2_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u307"),
    //.R_POSITION("X0Y4Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U2/add0/u31_al_u315  (
    .a({open_n3504,\U2/Count [31]}),
    .c(2'b00),
    .d({open_n3509,1'b0}),
    .fci(\U2/add0/c31 ),
    .f({open_n3526,\U2/n3 [31]}));
  EF2_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u307"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U2/add0/u3_al_u308  (
    .a({\U2/Count [5],\U2/Count [3]}),
    .b({\U2/Count [6],\U2/Count [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U2/add0/c3 ),
    .f({\U2/n3 [5],\U2/n3 [3]}),
    .fco(\U2/add0/c7 ),
    .fx({\U2/n3 [6],\U2/n3 [4]}));
  EF2_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u307"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U2/add0/u7_al_u309  (
    .a({\U2/Count [9],\U2/Count [7]}),
    .b({\U2/Count [10],\U2/Count [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U2/add0/c7 ),
    .f({\U2/n3 [9],\U2/n3 [7]}),
    .fco(\U2/add0/c11 ),
    .fx({\U2/n3 [10],\U2/n3 [8]}));
  EF2_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u307"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U2/add0/ucin_al_u307  (
    .a({\U2/Count [1],1'b0}),
    .b({\U2/Count [2],\U2/Count [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U2/n3 [1],open_n3585}),
    .fco(\U2/add0/c3 ),
    .fx({\U2/n3 [2],\U2/n3 [0]}));
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b0|U2/reg0_b9  (
    .c({\U2/n3 [0],\U2/n3 [9]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [0],\U2/Count [9]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b10|U2/reg0_b8  (
    .c({\U2/n3 [10],\U2/n3 [8]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [10],\U2/Count [8]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b11|U2/reg0_b7  (
    .c({\U2/n3 [11],\U2/n3 [7]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [11],\U2/Count [7]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b12|U2/reg0_b6  (
    .c({\U2/n3 [12],\U2/n3 [6]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [12],\U2/Count [6]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b13|U2/reg0_b5  (
    .c({\U2/n3 [13],\U2/n3 [5]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [13],\U2/Count [5]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b14|U2/reg0_b4  (
    .c({\U2/n3 [14],\U2/n3 [4]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [14],\U2/Count [4]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b15|U2/reg0_b31  (
    .c({\U2/n3 [15],\U2/n3 [31]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [15],\U2/Count [31]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b16|U2/reg0_b30  (
    .c({\U2/n3 [16],\U2/n3 [30]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [16],\U2/Count [30]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b17|U2/reg0_b3  (
    .c({\U2/n3 [17],\U2/n3 [3]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [17],\U2/Count [3]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b18|U2/reg0_b29  (
    .c({\U2/n3 [18],\U2/n3 [29]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [18],\U2/Count [29]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b19|U2/reg0_b28  (
    .c({\U2/n3 [19],\U2/n3 [28]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [19],\U2/Count [28]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b1|U2/reg0_b27  (
    .c({\U2/n3 [1],\U2/n3 [27]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [1],\U2/Count [27]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b20|U2/reg0_b26  (
    .c({\U2/n3 [20],\U2/n3 [26]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [20],\U2/Count [26]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b21|U2/reg0_b25  (
    .c({\U2/n3 [21],\U2/n3 [25]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [21],\U2/Count [25]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b22|U2/reg0_b24  (
    .c({\U2/n3 [22],\U2/n3 [24]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [22],\U2/Count [24]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b2|U2/reg0_b23  (
    .c({\U2/n3 [2],\U2/n3 [23]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [2],\U2/Count [23]}));  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.MACRO("U4/add0/ucin_al_u326"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U4/add0/u11_al_u329  (
    .a({\U4/AddrCtrl [13],\U4/AddrCtrl [11]}),
    .b({\U4/AddrCtrl [14],\U4/AddrCtrl [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add0/c11 ),
    .f({\U4/n20 [13],\U4/n20 [11]}),
    .fco(\U4/add0/c15 ),
    .fx({\U4/n20 [14],\U4/n20 [12]}));
  EF2_PHY_LSLICE #(
    //.MACRO("U4/add0/ucin_al_u326"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U4/add0/u15_al_u330  (
    .a({open_n4022,\U4/AddrCtrl [15]}),
    .c(2'b00),
    .d({open_n4027,1'b0}),
    .fci(\U4/add0/c15 ),
    .f({open_n4044,\U4/n20 [15]}));
  EF2_PHY_LSLICE #(
    //.MACRO("U4/add0/ucin_al_u326"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U4/add0/u3_al_u327  (
    .a({\U4/AddrCtrl [5],\U4/AddrCtrl [3]}),
    .b({\U4/AddrCtrl [6],\U4/AddrCtrl [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add0/c3 ),
    .f({\U4/n20 [5],\U4/n20 [3]}),
    .fco(\U4/add0/c7 ),
    .fx({\U4/n20 [6],\U4/n20 [4]}));
  EF2_PHY_LSLICE #(
    //.MACRO("U4/add0/ucin_al_u326"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U4/add0/u7_al_u328  (
    .a({\U4/AddrCtrl [9],\U4/AddrCtrl [7]}),
    .b({\U4/AddrCtrl [10],\U4/AddrCtrl [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add0/c7 ),
    .f({\U4/n20 [9],\U4/n20 [7]}),
    .fco(\U4/add0/c11 ),
    .fx({\U4/n20 [10],\U4/n20 [8]}));
  EF2_PHY_LSLICE #(
    //.MACRO("U4/add0/ucin_al_u326"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U4/add0/ucin_al_u326  (
    .a({\U4/AddrCtrl [1],1'b0}),
    .b({\U4/AddrCtrl [2],\U4/AddrCtrl [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U4/n20 [1],open_n4103}),
    .fco(\U4/add0/c3 ),
    .fx({\U4/n20 [2],\U4/n20 [0]}));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt0_0|U4/lt0_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt0_0|U4/lt0_cin  (
    .a({\U4/AddrCtrl [0],1'b0}),
    .b({1'b0,open_n4106}),
    .fco(\U4/lt0_c1 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt0_0|U4/lt0_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt0_10|U4/lt0_9  (
    .a(\U4/AddrCtrl [10:9]),
    .b(2'b11),
    .fci(\U4/lt0_c9 ),
    .fco(\U4/lt0_c11 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt0_0|U4/lt0_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt0_12|U4/lt0_11  (
    .a(\U4/AddrCtrl [12:11]),
    .b(2'b00),
    .fci(\U4/lt0_c11 ),
    .fco(\U4/lt0_c13 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt0_0|U4/lt0_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt0_14|U4/lt0_13  (
    .a(\U4/AddrCtrl [14:13]),
    .b(2'b00),
    .fci(\U4/lt0_c13 ),
    .fco(\U4/lt0_c15 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt0_0|U4/lt0_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt0_2|U4/lt0_1  (
    .a(\U4/AddrCtrl [2:1]),
    .b(2'b00),
    .fci(\U4/lt0_c1 ),
    .fco(\U4/lt0_c3 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt0_0|U4/lt0_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt0_4|U4/lt0_3  (
    .a(\U4/AddrCtrl [4:3]),
    .b(2'b10),
    .fci(\U4/lt0_c3 ),
    .fco(\U4/lt0_c5 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt0_0|U4/lt0_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt0_6|U4/lt0_5  (
    .a(\U4/AddrCtrl [6:5]),
    .b(2'b10),
    .fci(\U4/lt0_c5 ),
    .fco(\U4/lt0_c7 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt0_0|U4/lt0_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt0_8|U4/lt0_7  (
    .a(\U4/AddrCtrl [8:7]),
    .b(2'b11),
    .fci(\U4/lt0_c7 ),
    .fco(\U4/lt0_c9 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt0_0|U4/lt0_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt0_cout|U4/lt0_15  (
    .a({1'b0,\U4/AddrCtrl [15]}),
    .b(2'b10),
    .fci(\U4/lt0_c15 ),
    .f({\U4/n19 ,open_n4318}));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_0|U4/lt1_cin  (
    .a({\U4/AddrCtrl [0],1'b0}),
    .b({1'b0,open_n4324}),
    .fco(\U4/lt1_c1 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_10|U4/lt1_9  (
    .a(\U4/AddrCtrl [10:9]),
    .b(2'b11),
    .fci(\U4/lt1_c9 ),
    .fco(\U4/lt1_c11 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_12|U4/lt1_11  (
    .a(\U4/AddrCtrl [12:11]),
    .b(2'b00),
    .fci(\U4/lt1_c11 ),
    .fco(\U4/lt1_c13 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_14|U4/lt1_13  (
    .a(\U4/AddrCtrl [14:13]),
    .b(2'b00),
    .fci(\U4/lt1_c13 ),
    .fco(\U4/lt1_c15 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_2|U4/lt1_1  (
    .a(\U4/AddrCtrl [2:1]),
    .b(2'b00),
    .fci(\U4/lt1_c1 ),
    .fco(\U4/lt1_c3 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_4|U4/lt1_3  (
    .a(\U4/AddrCtrl [4:3]),
    .b(2'b00),
    .fci(\U4/lt1_c3 ),
    .fco(\U4/lt1_c5 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_6|U4/lt1_5  (
    .a(\U4/AddrCtrl [6:5]),
    .b(2'b10),
    .fci(\U4/lt1_c5 ),
    .fco(\U4/lt1_c7 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_8|U4/lt1_7  (
    .a(\U4/AddrCtrl [8:7]),
    .b(2'b00),
    .fci(\U4/lt1_c7 ),
    .fco(\U4/lt1_c9 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_cout|U4/lt1_15  (
    .a({1'b0,\U4/AddrCtrl [15]}),
    .b(2'b10),
    .fci(\U4/lt1_c15 ),
    .f({\U4/n25 ,open_n4536}));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_0|U4/lt2_cin  (
    .a({\U4/AddrCtrl [0],1'b0}),
    .b({1'b0,open_n4542}),
    .fco(\U4/lt2_c1 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_10|U4/lt2_9  (
    .a(\U4/AddrCtrl [10:9]),
    .b(2'b00),
    .fci(\U4/lt2_c9 ),
    .fco(\U4/lt2_c11 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_12|U4/lt2_11  (
    .a(\U4/AddrCtrl [12:11]),
    .b(2'b00),
    .fci(\U4/lt2_c11 ),
    .fco(\U4/lt2_c13 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_14|U4/lt2_13  (
    .a(\U4/AddrCtrl [14:13]),
    .b(2'b00),
    .fci(\U4/lt2_c13 ),
    .fco(\U4/lt2_c15 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_2|U4/lt2_1  (
    .a(\U4/AddrCtrl [2:1]),
    .b(2'b00),
    .fci(\U4/lt2_c1 ),
    .fco(\U4/lt2_c3 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_4|U4/lt2_3  (
    .a(\U4/AddrCtrl [4:3]),
    .b(2'b10),
    .fci(\U4/lt2_c3 ),
    .fco(\U4/lt2_c5 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_6|U4/lt2_5  (
    .a(\U4/AddrCtrl [6:5]),
    .b(2'b00),
    .fci(\U4/lt2_c5 ),
    .fco(\U4/lt2_c7 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_8|U4/lt2_7  (
    .a(\U4/AddrCtrl [8:7]),
    .b(2'b11),
    .fci(\U4/lt2_c7 ),
    .fco(\U4/lt2_c9 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_cout|U4/lt2_15  (
    .a({1'b0,\U4/AddrCtrl [15]}),
    .b(2'b10),
    .fci(\U4/lt2_c15 ),
    .f({\U4/n29 ,open_n4754}));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt3_0|U4/lt3_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt3_0|U4/lt3_cin  (
    .a(2'b01),
    .b({\U4/AddrCtrl [0],open_n4760}),
    .fco(\U4/lt3_c1 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt3_0|U4/lt3_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt3_10|U4/lt3_9  (
    .a(2'b00),
    .b(\U4/AddrCtrl [10:9]),
    .fci(\U4/lt3_c9 ),
    .fco(\U4/lt3_c11 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt3_0|U4/lt3_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt3_12|U4/lt3_11  (
    .a(2'b00),
    .b(\U4/AddrCtrl [12:11]),
    .fci(\U4/lt3_c11 ),
    .fco(\U4/lt3_c13 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt3_0|U4/lt3_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt3_14|U4/lt3_13  (
    .a(2'b00),
    .b(\U4/AddrCtrl [14:13]),
    .fci(\U4/lt3_c13 ),
    .fco(\U4/lt3_c15 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt3_0|U4/lt3_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt3_2|U4/lt3_1  (
    .a(2'b00),
    .b(\U4/AddrCtrl [2:1]),
    .fci(\U4/lt3_c1 ),
    .fco(\U4/lt3_c3 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt3_0|U4/lt3_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt3_4|U4/lt3_3  (
    .a(2'b10),
    .b(\U4/AddrCtrl [4:3]),
    .fci(\U4/lt3_c3 ),
    .fco(\U4/lt3_c5 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt3_0|U4/lt3_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt3_6|U4/lt3_5  (
    .a(2'b00),
    .b(\U4/AddrCtrl [6:5]),
    .fci(\U4/lt3_c5 ),
    .fco(\U4/lt3_c7 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt3_0|U4/lt3_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt3_8|U4/lt3_7  (
    .a(2'b11),
    .b(\U4/AddrCtrl [8:7]),
    .fci(\U4/lt3_c7 ),
    .fco(\U4/lt3_c9 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt3_0|U4/lt3_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt3_cout|U4/lt3_15  (
    .a(2'b00),
    .b({1'b1,\U4/AddrCtrl [15]}),
    .fci(\U4/lt3_c15 ),
    .f({\U4/n33 ,open_n4972}));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt4_0|U4/lt4_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt4_0|U4/lt4_cin  (
    .a({\U4/AddrCtrl [0],1'b0}),
    .b({1'b0,open_n4978}),
    .fco(\U4/lt4_c1 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt4_0|U4/lt4_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt4_10|U4/lt4_9  (
    .a(\U4/AddrCtrl [10:9]),
    .b(2'b01),
    .fci(\U4/lt4_c9 ),
    .fco(\U4/lt4_c11 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt4_0|U4/lt4_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt4_12|U4/lt4_11  (
    .a(\U4/AddrCtrl [12:11]),
    .b(2'b00),
    .fci(\U4/lt4_c11 ),
    .fco(\U4/lt4_c13 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt4_0|U4/lt4_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt4_14|U4/lt4_13  (
    .a(\U4/AddrCtrl [14:13]),
    .b(2'b00),
    .fci(\U4/lt4_c13 ),
    .fco(\U4/lt4_c15 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt4_0|U4/lt4_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt4_2|U4/lt4_1  (
    .a(\U4/AddrCtrl [2:1]),
    .b(2'b00),
    .fci(\U4/lt4_c1 ),
    .fco(\U4/lt4_c3 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt4_0|U4/lt4_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt4_4|U4/lt4_3  (
    .a(\U4/AddrCtrl [4:3]),
    .b(2'b00),
    .fci(\U4/lt4_c3 ),
    .fco(\U4/lt4_c5 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt4_0|U4/lt4_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt4_6|U4/lt4_5  (
    .a(\U4/AddrCtrl [6:5]),
    .b(2'b01),
    .fci(\U4/lt4_c5 ),
    .fco(\U4/lt4_c7 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt4_0|U4/lt4_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt4_8|U4/lt4_7  (
    .a(\U4/AddrCtrl [8:7]),
    .b(2'b10),
    .fci(\U4/lt4_c7 ),
    .fco(\U4/lt4_c9 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt4_0|U4/lt4_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt4_cout|U4/lt4_15  (
    .a({1'b0,\U4/AddrCtrl [15]}),
    .b(2'b10),
    .fci(\U4/lt4_c15 ),
    .f({\U4/n35 ,open_n5190}));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt5_0|U4/lt5_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt5_0|U4/lt5_cin  (
    .a(2'b01),
    .b({\U4/AddrCtrl [0],open_n5196}),
    .fco(\U4/lt5_c1 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt5_0|U4/lt5_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt5_10|U4/lt5_9  (
    .a(2'b01),
    .b(\U4/AddrCtrl [10:9]),
    .fci(\U4/lt5_c9 ),
    .fco(\U4/lt5_c11 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt5_0|U4/lt5_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt5_12|U4/lt5_11  (
    .a(2'b00),
    .b(\U4/AddrCtrl [12:11]),
    .fci(\U4/lt5_c11 ),
    .fco(\U4/lt5_c13 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt5_0|U4/lt5_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt5_14|U4/lt5_13  (
    .a(2'b00),
    .b(\U4/AddrCtrl [14:13]),
    .fci(\U4/lt5_c13 ),
    .fco(\U4/lt5_c15 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt5_0|U4/lt5_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt5_2|U4/lt5_1  (
    .a(2'b00),
    .b(\U4/AddrCtrl [2:1]),
    .fci(\U4/lt5_c1 ),
    .fco(\U4/lt5_c3 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt5_0|U4/lt5_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt5_4|U4/lt5_3  (
    .a(2'b00),
    .b(\U4/AddrCtrl [4:3]),
    .fci(\U4/lt5_c3 ),
    .fco(\U4/lt5_c5 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt5_0|U4/lt5_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt5_6|U4/lt5_5  (
    .a(2'b01),
    .b(\U4/AddrCtrl [6:5]),
    .fci(\U4/lt5_c5 ),
    .fco(\U4/lt5_c7 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt5_0|U4/lt5_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt5_8|U4/lt5_7  (
    .a(2'b10),
    .b(\U4/AddrCtrl [8:7]),
    .fci(\U4/lt5_c7 ),
    .fco(\U4/lt5_c9 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt5_0|U4/lt5_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt5_cout|U4/lt5_15  (
    .a(2'b00),
    .b({1'b1,\U4/AddrCtrl [15]}),
    .fci(\U4/lt5_c15 ),
    .f({\U4/n39 ,open_n5408}));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt6_0|U4/lt6_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt6_0|U4/lt6_cin  (
    .a({\U4/AddrCtrl [0],1'b0}),
    .b({1'b0,open_n5414}),
    .fco(\U4/lt6_c1 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt6_0|U4/lt6_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt6_10|U4/lt6_9  (
    .a(\U4/AddrCtrl [10:9]),
    .b(2'b10),
    .fci(\U4/lt6_c9 ),
    .fco(\U4/lt6_c11 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt6_0|U4/lt6_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt6_12|U4/lt6_11  (
    .a(\U4/AddrCtrl [12:11]),
    .b(2'b00),
    .fci(\U4/lt6_c11 ),
    .fco(\U4/lt6_c13 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt6_0|U4/lt6_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt6_14|U4/lt6_13  (
    .a(\U4/AddrCtrl [14:13]),
    .b(2'b00),
    .fci(\U4/lt6_c13 ),
    .fco(\U4/lt6_c15 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt6_0|U4/lt6_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt6_2|U4/lt6_1  (
    .a(\U4/AddrCtrl [2:1]),
    .b(2'b00),
    .fci(\U4/lt6_c1 ),
    .fco(\U4/lt6_c3 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt6_0|U4/lt6_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt6_4|U4/lt6_3  (
    .a(\U4/AddrCtrl [4:3]),
    .b(2'b10),
    .fci(\U4/lt6_c3 ),
    .fco(\U4/lt6_c5 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt6_0|U4/lt6_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt6_6|U4/lt6_5  (
    .a(\U4/AddrCtrl [6:5]),
    .b(2'b01),
    .fci(\U4/lt6_c5 ),
    .fco(\U4/lt6_c7 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt6_0|U4/lt6_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt6_8|U4/lt6_7  (
    .a(\U4/AddrCtrl [8:7]),
    .b(2'b01),
    .fci(\U4/lt6_c7 ),
    .fco(\U4/lt6_c9 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt6_0|U4/lt6_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt6_cout|U4/lt6_15  (
    .a({1'b0,\U4/AddrCtrl [15]}),
    .b(2'b10),
    .fci(\U4/lt6_c15 ),
    .f({\U4/n41 ,open_n5626}));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt7_0|U4/lt7_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt7_0|U4/lt7_cin  (
    .a(2'b01),
    .b({\U4/AddrCtrl [0],open_n5632}),
    .fco(\U4/lt7_c1 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt7_0|U4/lt7_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt7_10|U4/lt7_9  (
    .a(2'b10),
    .b(\U4/AddrCtrl [10:9]),
    .fci(\U4/lt7_c9 ),
    .fco(\U4/lt7_c11 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt7_0|U4/lt7_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt7_12|U4/lt7_11  (
    .a(2'b00),
    .b(\U4/AddrCtrl [12:11]),
    .fci(\U4/lt7_c11 ),
    .fco(\U4/lt7_c13 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt7_0|U4/lt7_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt7_14|U4/lt7_13  (
    .a(2'b00),
    .b(\U4/AddrCtrl [14:13]),
    .fci(\U4/lt7_c13 ),
    .fco(\U4/lt7_c15 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt7_0|U4/lt7_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt7_2|U4/lt7_1  (
    .a(2'b00),
    .b(\U4/AddrCtrl [2:1]),
    .fci(\U4/lt7_c1 ),
    .fco(\U4/lt7_c3 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt7_0|U4/lt7_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt7_4|U4/lt7_3  (
    .a(2'b10),
    .b(\U4/AddrCtrl [4:3]),
    .fci(\U4/lt7_c3 ),
    .fco(\U4/lt7_c5 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt7_0|U4/lt7_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt7_6|U4/lt7_5  (
    .a(2'b01),
    .b(\U4/AddrCtrl [6:5]),
    .fci(\U4/lt7_c5 ),
    .fco(\U4/lt7_c7 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt7_0|U4/lt7_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt7_8|U4/lt7_7  (
    .a(2'b01),
    .b(\U4/AddrCtrl [8:7]),
    .fci(\U4/lt7_c7 ),
    .fco(\U4/lt7_c9 ));
  EF2_PHY_MSLICE #(
    //.MACRO("U4/lt7_0|U4/lt7_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt7_cout|U4/lt7_15  (
    .a(2'b00),
    .b({1'b1,\U4/AddrCtrl [15]}),
    .fci(\U4/lt7_c15 ),
    .f({\U4/n45 ,open_n5844}));
  EF2_PHY_SPAD #(
    //.CLKSRC("CLK"),
    //.LOCATION("P9"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("SET"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .OUTCEMUX("CE"),
    .OUTCLKMUX("CLK"),
    .OUTRSTMUX("INV"),
    .SRMODE("ASYNC"),
    .TSMUX("INV"))
    \U4/reg1_b0_DO  (
    .ce(\U4/mux2_b0_sel_is_3_o ),
    .clk(i8080_WR_pad),
    .do({open_n5850,i8080_D_pad[0]}),
    .rst(nRST_pad),
    .ts(1'b1),
    .opad(LCDBK));  // source/LCD8080Ctrl.v(70)
  // source/LCD8080Ctrl.v(104)
  // source/LCD8080Ctrl.v(104)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTF1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010110000000000),
    .INIT_LUTF1(16'b1010110000000000),
    .INIT_LUTG0(16'b1010110000000000),
    .INIT_LUTG1(16'b1010110000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg2_b10|U4/reg2_b0  (
    .a({\U4/n20 [10],\U4/n20 [0]}),
    .b({\U4/AddrCtrl [10],\U4/AddrCtrl [0]}),
    .c({\U4/n19 ,\U4/n19 }),
    .clk(CLK_100M),
    .d({_al_u125_o,_al_u125_o}),
    .sr(nRST_pad),
    .q({\U4/AddrCtrl [10],\U4/AddrCtrl [0]}));  // source/LCD8080Ctrl.v(104)
  // source/LCD8080Ctrl.v(104)
  // source/LCD8080Ctrl.v(104)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTF1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010110000000000),
    .INIT_LUTF1(16'b1010110000000000),
    .INIT_LUTG0(16'b1010110000000000),
    .INIT_LUTG1(16'b1010110000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg2_b11|U4/reg2_b9  (
    .a({\U4/n20 [11],\U4/n20 [9]}),
    .b({\U4/AddrCtrl [11],\U4/AddrCtrl [9]}),
    .c({\U4/n19 ,\U4/n19 }),
    .clk(CLK_100M),
    .d({_al_u125_o,_al_u125_o}),
    .sr(nRST_pad),
    .q({\U4/AddrCtrl [11],\U4/AddrCtrl [9]}));  // source/LCD8080Ctrl.v(104)
  // source/LCD8080Ctrl.v(104)
  // source/LCD8080Ctrl.v(104)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTF1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010110000000000),
    .INIT_LUTF1(16'b1010110000000000),
    .INIT_LUTG0(16'b1010110000000000),
    .INIT_LUTG1(16'b1010110000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg2_b12|U4/reg2_b8  (
    .a({\U4/n20 [12],\U4/n20 [8]}),
    .b({\U4/AddrCtrl [12],\U4/AddrCtrl [8]}),
    .c({\U4/n19 ,\U4/n19 }),
    .clk(CLK_100M),
    .d({_al_u125_o,_al_u125_o}),
    .sr(nRST_pad),
    .q({\U4/AddrCtrl [12],\U4/AddrCtrl [8]}));  // source/LCD8080Ctrl.v(104)
  // source/LCD8080Ctrl.v(104)
  // source/LCD8080Ctrl.v(104)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTF1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010110000000000),
    .INIT_LUTF1(16'b1010110000000000),
    .INIT_LUTG0(16'b1010110000000000),
    .INIT_LUTG1(16'b1010110000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg2_b13|U4/reg2_b7  (
    .a({\U4/n20 [13],\U4/n20 [7]}),
    .b({\U4/AddrCtrl [13],\U4/AddrCtrl [7]}),
    .c({\U4/n19 ,\U4/n19 }),
    .clk(CLK_100M),
    .d({_al_u125_o,_al_u125_o}),
    .sr(nRST_pad),
    .q({\U4/AddrCtrl [13],\U4/AddrCtrl [7]}));  // source/LCD8080Ctrl.v(104)
  // source/LCD8080Ctrl.v(104)
  // source/LCD8080Ctrl.v(104)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTF1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010110000000000),
    .INIT_LUTF1(16'b1010110000000000),
    .INIT_LUTG0(16'b1010110000000000),
    .INIT_LUTG1(16'b1010110000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg2_b14|U4/reg2_b6  (
    .a({\U4/n20 [14],\U4/n20 [6]}),
    .b({\U4/AddrCtrl [14],\U4/AddrCtrl [6]}),
    .c({\U4/n19 ,\U4/n19 }),
    .clk(CLK_100M),
    .d({_al_u125_o,_al_u125_o}),
    .sr(nRST_pad),
    .q({\U4/AddrCtrl [14],\U4/AddrCtrl [6]}));  // source/LCD8080Ctrl.v(104)
  // source/LCD8080Ctrl.v(104)
  // source/LCD8080Ctrl.v(104)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTF1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010110000000000),
    .INIT_LUTF1(16'b1010110000000000),
    .INIT_LUTG0(16'b1010110000000000),
    .INIT_LUTG1(16'b1010110000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg2_b15|U4/reg2_b5  (
    .a({\U4/n20 [15],\U4/n20 [5]}),
    .b({\U4/AddrCtrl [15],\U4/AddrCtrl [5]}),
    .c({\U4/n19 ,\U4/n19 }),
    .clk(CLK_100M),
    .d({_al_u125_o,_al_u125_o}),
    .sr(nRST_pad),
    .q({\U4/AddrCtrl [15],\U4/AddrCtrl [5]}));  // source/LCD8080Ctrl.v(104)
  // source/LCD8080Ctrl.v(104)
  // source/LCD8080Ctrl.v(104)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTF1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010110000000000),
    .INIT_LUTF1(16'b1010110000000000),
    .INIT_LUTG0(16'b1010110000000000),
    .INIT_LUTG1(16'b1010110000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg2_b1|U4/reg2_b4  (
    .a({\U4/n20 [1],\U4/n20 [4]}),
    .b({\U4/AddrCtrl [1],\U4/AddrCtrl [4]}),
    .c({\U4/n19 ,\U4/n19 }),
    .clk(CLK_100M),
    .d({_al_u125_o,_al_u125_o}),
    .sr(nRST_pad),
    .q({\U4/AddrCtrl [1],\U4/AddrCtrl [4]}));  // source/LCD8080Ctrl.v(104)
  // source/LCD8080Ctrl.v(104)
  // source/LCD8080Ctrl.v(104)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTF1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG1("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010110000000000),
    .INIT_LUTF1(16'b1010110000000000),
    .INIT_LUTG0(16'b1010110000000000),
    .INIT_LUTG1(16'b1010110000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg2_b2|U4/reg2_b3  (
    .a({\U4/n20 [2],\U4/n20 [3]}),
    .b({\U4/AddrCtrl [2],\U4/AddrCtrl [3]}),
    .c({\U4/n19 ,\U4/n19 }),
    .clk(CLK_100M),
    .d({_al_u125_o,_al_u125_o}),
    .sr(nRST_pad),
    .q({\U4/AddrCtrl [2],\U4/AddrCtrl [3]}));  // source/LCD8080Ctrl.v(104)
  EF2_PHY_SPAD #(
    //.CLKSRC("CLK"),
    //.LOCATION("P20"),
    //.PULLMODE("PULLUP"),
    .INCEMUX("CE"),
    .INCLKMUX("CLK"),
    .INRSTMUX("INV"),
    .IN_DFFMODE("FF"),
    .IN_REGSET("SET"),
    .IOTYPE("LVCMOS18"),
    .MODE("IN"),
    .SRMODE("ASYNC"),
    .TSMUX("TS"))
    \U4/reg3_b3_IN  (
    .ce(\U4/mux0_b3_sel_is_3_o ),
    .clk(i8080_WR_pad),
    .ipad(i8080_D[3]),
    .rst(nRST_pad),
    .ts(1'b1),
    .di(i8080_D_pad[3]),
    .diq({open_n6034,\U4/LCD_Ctrl_Reg [3]}));  // source/LCD8080Ctrl.v(70)
  EF2_PHY_SPAD #(
    //.CLKSRC("CLK"),
    //.LOCATION("P19"),
    //.PULLMODE("PULLUP"),
    .INCEMUX("CE"),
    .INCLKMUX("CLK"),
    .INRSTMUX("INV"),
    .IN_DFFMODE("FF"),
    .IN_REGSET("RESET"),
    .IOTYPE("LVCMOS18"),
    .MODE("IN"),
    .SRMODE("ASYNC"),
    .TSMUX("TS"))
    \U4/reg3_b4_IN  (
    .ce(\U4/mux0_b3_sel_is_3_o ),
    .clk(i8080_WR_pad),
    .ipad(i8080_D[4]),
    .rst(nRST_pad),
    .ts(1'b1),
    .di(i8080_D_pad[4]),
    .diq({open_n6039,\U4/LCD_Ctrl_Reg [4]}));  // source/LCD8080Ctrl.v(70)
  EF2_PHY_SPAD #(
    //.LOCATION("P24"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS18"),
    .MODE("IN"),
    .TSMUX("TS"))
    _al_u100 (
    .ipad(i8080_D[1]),
    .ts(1'b1),
    .di(i8080_D_pad[1]));  // source/TOP.v(12)
  EF2_PHY_SPAD #(
    //.LOCATION("P25"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS18"),
    .MODE("IN"),
    .TSMUX("TS"))
    _al_u101 (
    .ipad(i8080_D[0]),
    .ts(1'b1),
    .di(i8080_D_pad[0]));  // source/TOP.v(12)
  EF2_PHY_SPAD #(
    //.LOCATION("P13"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("MED"),
    .DRIVE("12"),
    .IOTYPE("LVCMOS18"),
    .MODE("BI"),
    .TO_DFFMODE("NONE"),
    .TSMUX("INV"))
    _al_u102 (
    .do({open_n6062,\U4/FrameSync }),
    .ts(\U4/LCD_Ctrl_Reg [4]),
    .di(i8080_RS_pad),
    .bpad(i8080_RS));  // source/LCD8080Ctrl.v(73)
  EF2_PHY_SPAD #(
    //.LOCATION("P14"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS18"),
    .MODE("IN"),
    .TSMUX("TS"))
    _al_u103 (
    .ipad(i8080_WR),
    .ts(1'b1),
    .di(i8080_WR_pad));  // source/TOP.v(10)
  EF2_PHY_SPAD #(
    //.LOCATION("P12"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("TS"))
    _al_u104 (
    .ipad(nRST),
    .ts(1'b1),
    .di(nRST_pad));  // source/TOP.v(4)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(~D)"),
    //.LUTG1("(C*~D)"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011111111),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u107|_al_u294  (
    .c({FIFO_DO[3],open_n6090}),
    .d({FIFO_EMPTY,FIFO_EMPTY}),
    .f({LCD_B_pad[6],LCD_B_pad[2]}));
  EF2_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("(C*~D)"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u108|_al_u122  (
    .c({FIFO_DO[2],FIFO_DO[12]}),
    .d({FIFO_EMPTY,FIFO_EMPTY}),
    .f({LCD_B_pad[5],LCD_R_pad[4]}));
  EF2_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("(C*~D)"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u109|_al_u121  (
    .c({FIFO_DO[1],FIFO_DO[13]}),
    .d({FIFO_EMPTY,FIFO_EMPTY}),
    .f({LCD_B_pad[4],LCD_R_pad[5]}));
  EF2_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("(C*~D)"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u110|_al_u120  (
    .c({FIFO_DO[0],FIFO_DO[14]}),
    .d({FIFO_EMPTY,FIFO_EMPTY}),
    .f({LCD_B_pad[3],LCD_R_pad[6]}));
  EF2_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("(C*~D)"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u111|_al_u119  (
    .c({FIFO_DO[10],FIFO_DO[15]}),
    .d({FIFO_EMPTY,FIFO_EMPTY}),
    .f({LCD_G_pad[7],LCD_R_pad[7]}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u112|_al_u118  (
    .c({FIFO_DO[9],FIFO_DO[4]}),
    .d({FIFO_EMPTY,FIFO_EMPTY}),
    .f({LCD_G_pad[6],LCD_B_pad[7]}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u113|_al_u117  (
    .c({FIFO_DO[8],FIFO_DO[5]}),
    .d({FIFO_EMPTY,FIFO_EMPTY}),
    .f({LCD_G_pad[5],LCD_G_pad[2]}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("~(~C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("~(~C*~D)"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b1111111111110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u114|_al_u116  (
    .c({FIFO_EMPTY,FIFO_DO[6]}),
    .d({FIFO_DO[11],FIFO_EMPTY}),
    .f({LCD_R_pad[3],LCD_G_pad[3]}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("~(C*D)"),
    //.LUTG0("(C*D)"),
    //.LUTG1("~(C*D)"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b0000111111111111),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b0000111111111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u124|_al_u149  (
    .c({\D1/n15 ,i8080_D_pad[6]}),
    .d({\D1/n14 ,_al_u147_o}),
    .f({LCD_HYNC_pad,\U4/mux2_b0_sel_is_3_o }));
  EF2_PHY_LSLICE #(
    //.LUTF0("(0*D*C*B*~A)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(1*D*C*B*~A)"),
    //.LUTG1("(D*C*B*A)"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b0100000000000000),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u142|_al_u145  (
    .a({\D1/n17 ,FIFO_EMPTY}),
    .b({\D1/n18 ,\D1/n22 }),
    .c({\D1/n20 ,\D1/n24 }),
    .d({\D1/n22 ,\D1/n26 }),
    .e({open_n6341,\D1/n20 }),
    .f({LCD_DEN_pad,FIFO_RE}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(~C*~D)"),
    //.LUTF1("(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C)"),
    //.LUTG0("(~C*~D)"),
    //.LUTG1("(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C)"),
    .INIT_LUTF0(16'b0000000000001111),
    .INIT_LUTF1(16'b1100111111000000),
    .INIT_LUTG0(16'b0000000000001111),
    .INIT_LUTG1(16'b1100111111000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u143|_al_u125  (
    .b({\U4/LCD_Ctrl_Reg [3],open_n6364}),
    .c({LCD_SYNC_pad,LCD_SYNC_pad}),
    .d({LCD_HYNC_pad,LCD_HYNC_pad}),
    .f({\U4/FrameSync ,_al_u125_o}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C)"),
    //.LUTF1("~(~(B*A)*~(C)*~(D)+~(B*A)*C*~(D)+~(~(B*A))*C*D+~(B*A)*C*D)"),
    //.LUTG0("(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C)"),
    //.LUTG1("~(~(B*A)*~(C)*~(D)+~(B*A)*C*~(D)+~(~(B*A))*C*D+~(B*A)*C*D)"),
    .INIT_LUTF0(16'b1100111111000000),
    .INIT_LUTF1(16'b0000111110001000),
    .INIT_LUTG0(16'b1100111111000000),
    .INIT_LUTG1(16'b0000111110001000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u144|_al_u123  (
    .a({_al_u125_o,open_n6389}),
    .b({\U4/n25 ,i8080_WR_pad}),
    .c({i8080_CS_pad,\U4/LCD_Ctrl_Reg [4]}),
    .d({\U4/LCD_Ctrl_Reg [4],CLK_100M}),
    .f({FIFO_WE,FIFO_CLK_W}));
  // source/LCD8080Ctrl.v(70)
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*B*~D)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(C*B*~D)"),
    //.LUTG1("(C*D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011000000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b0000000011000000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u147|U4/reg0_b0  (
    .b({open_n6416,i8080_D_pad[6]}),
    .c({i8080_D_pad[5],_al_u146_o}),
    .ce(\U4/mux1_b0_sel_is_3_o ),
    .clk(i8080_WR_pad),
    .d({_al_u146_o,i8080_D_pad[5]}),
    .mi({open_n6420,i8080_D_pad[0]}),
    .sr(nRST_pad),
    .f({_al_u147_o,\U4/mux1_b0_sel_is_3_o }),
    .q({open_n6435,\U4/LCD_Pix_Reg [0]}));  // source/LCD8080Ctrl.v(70)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*C*~(B*A))"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(D*C*~(B*A))"),
    //.LUTG1("(C*~D)"),
    .INIT_LUTF0(16'b0111000000000000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0111000000000000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u148|_al_u278  (
    .a({open_n6436,\U4/n39 }),
    .b({open_n6437,\U4/n41 }),
    .c({_al_u147_o,\U4/n25 }),
    .d({i8080_D_pad[6],\U4/n45 }),
    .f({\U4/mux0_b3_sel_is_3_o ,_al_u278_o}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(0*~D*~C*~B*~A)"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(1*~D*~C*~B*~A)"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b0000000000000001),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u151|_al_u152  (
    .a({\D1/LineCount [0],\D1/LineCount [12]}),
    .b({\D1/LineCount [1],\D1/LineCount [13]}),
    .c({\D1/LineCount [10],\D1/LineCount [14]}),
    .d({\D1/LineCount [11],\D1/LineCount [15]}),
    .e({open_n6464,_al_u151_o}),
    .f({_al_u151_o,_al_u152_o}));
  // source/VGAMod.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTF1("(D*C*~B*~A)"),
    //.LUTG0("((B*~A)*~(C)*~(D)+(B*~A)*C*~(D)+~((B*~A))*C*D+(B*~A)*C*D)"),
    //.LUTG1("(D*C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000001000100),
    .INIT_LUTF1(16'b0001000000000000),
    .INIT_LUTG0(16'b1111000001000100),
    .INIT_LUTG1(16'b0001000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u153|D1/reg1_b5  (
    .a({\D1/LineCount [3],_al_u155_o}),
    .b({\D1/LineCount [4],\D1/LineCount [5]}),
    .c({\D1/LineCount [2],\D1/n2 [5]}),
    .clk(LCD_CLK_pad),
    .d({\D1/LineCount [5],_al_u179_o}),
    .sr(nRST_pad),
    .f({_al_u153_o,open_n6502}),
    .q({open_n6506,\D1/LineCount [5]}));  // source/VGAMod.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("(0*D*~C*~B*~A)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(1*D*~C*~B*~A)"),
    //.LUTG1("(C*D)"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b0000000100000000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u155|_al_u154  (
    .a({open_n6507,\D1/LineCount [6]}),
    .b({open_n6508,\D1/LineCount [7]}),
    .c({_al_u154_o,\D1/LineCount [9]}),
    .d({_al_u152_o,\D1/LineCount [8]}),
    .e({open_n6511,_al_u153_o}),
    .f({_al_u155_o,_al_u154_o}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(0*~D*~C*~B*~A)"),
    //.LUTF1("(D*C*~B*~A)"),
    //.LUTG0("(1*~D*~C*~B*~A)"),
    //.LUTG1("(D*C*~B*~A)"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0001000000000000),
    .INIT_LUTG0(16'b0000000000000001),
    .INIT_LUTG1(16'b0001000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u157|_al_u158  (
    .a({\U1/Count [25],\U1/Count [27]}),
    .b({\U1/Count [26],\U1/Count [28]}),
    .c({\U1/Count [23],\U1/Count [29]}),
    .d({\U1/Count [24],\U1/Count [3]}),
    .e({open_n6534,_al_u157_o}),
    .f({_al_u157_o,_al_u158_o}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(0*D*C*~B*~A)"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(1*D*C*~B*~A)"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b0001000000000000),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u159|_al_u160  (
    .a({\U1/Count [30],\U1/Count [7]}),
    .b({\U1/Count [31],\U1/Count [8]}),
    .c({\U1/Count [4],_al_u159_o}),
    .d({\U1/Count [5],\U1/Count [6]}),
    .e({open_n6557,\U1/Count [9]}),
    .f({_al_u159_o,_al_u160_o}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(0*D*~C*~B*~A)"),
    //.LUTF1("(D*~C*~B*~A)"),
    //.LUTG0("(1*D*~C*~B*~A)"),
    //.LUTG1("(D*~C*~B*~A)"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000100000000),
    .INIT_LUTG0(16'b0000000100000000),
    .INIT_LUTG1(16'b0000000100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u161|_al_u162  (
    .a({\U1/Count [0],\U1/Count [12]}),
    .b({\U1/Count [1],\U1/Count [13]}),
    .c({\U1/Count [10],\U1/Count [14]}),
    .d({\U1/Count [11],_al_u161_o}),
    .e({open_n6580,\U1/Count [15]}),
    .f({_al_u161_o,_al_u162_o}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(0*D*C*B*~A)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(1*D*C*B*~A)"),
    //.LUTG1("(D*C*B*A)"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b0100000000000000),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u165|_al_u164  (
    .a({_al_u158_o,\U1/Count [2]}),
    .b({_al_u160_o,_al_u163_o}),
    .c({_al_u162_o,\U1/Count [20]}),
    .d({_al_u164_o,\U1/Count [21]}),
    .e({open_n6603,\U1/Count [22]}),
    .f({\U1/n1 ,_al_u164_o}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(0*~D*~C*~B*~A)"),
    //.LUTF1("(D*~C*~B*~A)"),
    //.LUTG0("(1*~D*~C*~B*~A)"),
    //.LUTG1("(D*~C*~B*~A)"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000100000000),
    .INIT_LUTG0(16'b0000000000000001),
    .INIT_LUTG1(16'b0000000100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u166|_al_u167  (
    .a({\U2/Count [23],\U2/Count [27]}),
    .b({\U2/Count [25],\U2/Count [28]}),
    .c({\U2/Count [26],\U2/Count [29]}),
    .d({\U2/Count [24],\U2/Count [3]}),
    .e({open_n6626,_al_u166_o}),
    .f({_al_u166_o,_al_u167_o}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(0*D*~C*~B*~A)"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(1*D*~C*~B*~A)"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b0000000100000000),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u168|_al_u169  (
    .a({\U2/Count [30],\U2/Count [7]}),
    .b({\U2/Count [31],\U2/Count [8]}),
    .c({\U2/Count [4],\U2/Count [9]}),
    .d({\U2/Count [5],\U2/Count [6]}),
    .e({open_n6649,_al_u168_o}),
    .f({_al_u168_o,_al_u169_o}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(0*D*C*B*~A)"),
    //.LUTF1("(D*~C*~B*~A)"),
    //.LUTG0("(1*D*C*B*~A)"),
    //.LUTG1("(D*~C*~B*~A)"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000100000000),
    .INIT_LUTG0(16'b0100000000000000),
    .INIT_LUTG1(16'b0000000100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u170|_al_u171  (
    .a({\U2/Count [0],\U2/Count [15]}),
    .b({\U2/Count [1],\U2/Count [12]}),
    .c({\U2/Count [10],\U2/Count [13]}),
    .d({\U2/Count [11],\U2/Count [14]}),
    .e({open_n6672,_al_u170_o}),
    .f({_al_u170_o,_al_u171_o}));
  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTF1("(D*C*B*~A)"),
    //.LUTG0("(~D)"),
    //.LUTG1("(D*C*B*~A)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTF1(16'b0100000000000000),
    .INIT_LUTG0(16'b0000000011111111),
    .INIT_LUTG1(16'b0100000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u172|U2/CLK_OUT_reg  (
    .a({\U2/Count [17],open_n6693}),
    .b({\U2/Count [16],open_n6694}),
    .c({\U2/Count [18],open_n6695}),
    .ce(\U2/n1 ),
    .clk(clk_pad),
    .d({\U2/Count [19],LED_pad[1]}),
    .sr(nRST_pad),
    .f({_al_u172_o,open_n6712}),
    .q({open_n6716,LED_pad[1]}));  // source/CLK_MOD.v(32)
  EF2_PHY_LSLICE #(
    //.LUTF0("(0*D*C*B*~A)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(1*D*C*B*~A)"),
    //.LUTG1("(D*C*B*A)"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b0100000000000000),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u174|_al_u173  (
    .a({_al_u167_o,\U2/Count [2]}),
    .b({_al_u169_o,_al_u172_o}),
    .c({_al_u171_o,\U2/Count [20]}),
    .d({_al_u173_o,\U2/Count [21]}),
    .e({open_n6719,\U2/Count [22]}),
    .f({\U2/n1 ,_al_u173_o}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(0*~D*~C*~B*~A)"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(1*~D*~C*~B*~A)"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b0000000000000001),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u175|_al_u176  (
    .a({\D1/PixelCount [0],\D1/PixelCount [12]}),
    .b({\D1/PixelCount [1],\D1/PixelCount [13]}),
    .c({\D1/PixelCount [10],\D1/PixelCount [14]}),
    .d({\D1/PixelCount [11],\D1/PixelCount [15]}),
    .e({open_n6742,_al_u175_o}),
    .f({_al_u175_o,_al_u176_o}));
  // source/VGAMod.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTF1("(D*~C*~B*~A)"),
    //.LUTG0("(D*(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C))"),
    //.LUTG1("(D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010110000000000),
    .INIT_LUTF1(16'b0000000100000000),
    .INIT_LUTG0(16'b1010110000000000),
    .INIT_LUTG1(16'b0000000100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u177|D1/reg0_b5  (
    .a({\D1/PixelCount [2],\D1/n4 [5]}),
    .b({\D1/PixelCount [3],\D1/PixelCount [5]}),
    .c({\D1/PixelCount [5],\D1/FrameFlag }),
    .clk(LCD_CLK_pad),
    .d({\D1/PixelCount [4],\D1/mux3_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .f({_al_u177_o,open_n6780}),
    .q({open_n6784,\D1/PixelCount [5]}));  // source/VGAMod.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("(0*D*C*B*~A)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(1*D*C*B*~A)"),
    //.LUTG1("(C*D)"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b0100000000000000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u179|_al_u178  (
    .a({open_n6785,\D1/PixelCount [8]}),
    .b({open_n6786,\D1/PixelCount [6]}),
    .c({_al_u178_o,\D1/PixelCount [7]}),
    .d({_al_u176_o,_al_u177_o}),
    .e({open_n6789,\D1/PixelCount [9]}),
    .f({_al_u179_o,_al_u178_o}));
  // source/VGAMod.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTF1("(~C*~D)"),
    //.LUTG0("(B*~(D)*~(C)+B*D*~(C)+~(B)*D*C+B*D*C)"),
    //.LUTG1("(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111110000001100),
    .INIT_LUTF1(16'b0000000000001111),
    .INIT_LUTG0(16'b1111110000001100),
    .INIT_LUTG1(16'b0000000000001111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u260|D1/reg1_b1  (
    .b({open_n6812,\D1/LineCount [1]}),
    .c({_al_u179_o,_al_u179_o}),
    .clk(LCD_CLK_pad),
    .d({_al_u155_o,\D1/n2 [1]}),
    .sr(nRST_pad),
    .f({\D1/mux3_b0_sel_is_0_o ,open_n6830}),
    .q({open_n6834,\D1/LineCount [1]}));  // source/VGAMod.v(72)
  EF2_PHY_LSLICE #(
    //.LUTF0("~((D*C)*~((B*A))*~(0)+(D*C)*(B*A)*~(0)+~((D*C))*(B*A)*0+(D*C)*(B*A)*0)"),
    //.LUTF1("~((B*A)*~(C)*~(D)+(B*A)*C*~(D)+~((B*A))*C*D+(B*A)*C*D)"),
    //.LUTG0("~((D*C)*~((B*A))*~(1)+(D*C)*(B*A)*~(1)+~((D*C))*(B*A)*1+(D*C)*(B*A)*1)"),
    //.LUTG1("~((B*A)*~(C)*~(D)+(B*A)*C*~(D)+~((B*A))*C*D+(B*A)*C*D)"),
    .INIT_LUTF0(16'b0000111111111111),
    .INIT_LUTF1(16'b0000111101110111),
    .INIT_LUTG0(16'b0111011101110111),
    .INIT_LUTG1(16'b0000111101110111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u279|_al_u277  (
    .a({\U4/n35 ,\U4/n33 }),
    .b({\U4/n33 ,\U4/n35 }),
    .c({\U4/n29 ,\U4/n39 }),
    .d({\U4/AddrCtrl [0],\U4/n41 }),
    .e({open_n6837,\U4/AddrCtrl [0]}),
    .f({_al_u279_o,\U4/mux10_b0_sel_is_0_o }));
  EF2_PHY_LSLICE #(
    //.LUTF0("(~C*~(~B*D))"),
    //.LUTF1("(D*C*~(~B*A))"),
    //.LUTG0("(~C*~(~B*D))"),
    //.LUTG1("(D*C*~(~B*A))"),
    .INIT_LUTF0(16'b0000110000001111),
    .INIT_LUTF1(16'b1101000000000000),
    .INIT_LUTG0(16'b0000110000001111),
    .INIT_LUTG1(16'b1101000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u281|_al_u280  (
    .a({\U4/mux10_b0_sel_is_0_o ,open_n6858}),
    .b({_al_u278_o,\U4/AddrCtrl [0]}),
    .c({_al_u279_o,\U4/LCD_Ctrl_Reg [4]}),
    .d({_al_u280_o,\U4/n29 }),
    .f({_al_u281_o,_al_u280_o}));
  EF2_PHY_LSLICE #(
    //.LUTF0("~(~C*~(B*D))"),
    //.LUTF1("~(~C*~(B*D))"),
    //.LUTG0("~(~C*~(B*D))"),
    //.LUTG1("~(~C*~(B*D))"),
    .INIT_LUTF0(16'b1111110011110000),
    .INIT_LUTF1(16'b1111110011110000),
    .INIT_LUTG0(16'b1111110011110000),
    .INIT_LUTG1(16'b1111110011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u282|_al_u283  (
    .b({\U4/LCD_Ctrl_Reg [4],\U4/LCD_Ctrl_Reg [4]}),
    .c({_al_u281_o,_al_u281_o}),
    .d(i8080_D_pad[7:6]),
    .f(FIFO_DI[7:6]));
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*~C*~B*~A)"),
    //.LUTF1("~(~C*~(B*D))"),
    //.LUTG0("(D*~C*~B*~A)"),
    //.LUTG1("~(~C*~(B*D))"),
    .INIT_LUTF0(16'b0000000100000000),
    .INIT_LUTF1(16'b1111110011110000),
    .INIT_LUTG0(16'b0000000100000000),
    .INIT_LUTG1(16'b1111110011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u284|_al_u146  (
    .a({open_n6909,\U4/LCD_Ctrl_Reg [4]}),
    .b({\U4/LCD_Ctrl_Reg [4],i8080_CS_pad}),
    .c({_al_u281_o,i8080_D_pad[7]}),
    .d({i8080_D_pad[5],i8080_RS_pad}),
    .f({FIFO_DI[5],_al_u146_o}));
  EF2_PHY_LSLICE #(
    //.LUTF0("~(~C*~(B*D))"),
    //.LUTF1("(D*~(C*~(B*A)))"),
    //.LUTG0("~(~C*~(B*D))"),
    //.LUTG1("(D*~(C*~(B*A)))"),
    .INIT_LUTF0(16'b1111110011110000),
    .INIT_LUTF1(16'b1000111100000000),
    .INIT_LUTG0(16'b1111110011110000),
    .INIT_LUTG1(16'b1000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u285|_al_u287  (
    .a({\U4/mux10_b0_sel_is_0_o ,open_n6934}),
    .b({_al_u278_o,\U4/LCD_Ctrl_Reg [4]}),
    .c({_al_u279_o,_al_u285_o}),
    .d({_al_u280_o,i8080_D_pad[1]}),
    .f({_al_u285_o,FIFO_DI[1]}));
  EF2_PHY_LSLICE #(
    //.LUTF0("~(~C*~(B*D))"),
    //.LUTF1("~(~C*~(B*D))"),
    //.LUTG0("~(~C*~(B*D))"),
    //.LUTG1("~(~C*~(B*D))"),
    .INIT_LUTF0(16'b1111110011110000),
    .INIT_LUTF1(16'b1111110011110000),
    .INIT_LUTG0(16'b1111110011110000),
    .INIT_LUTG1(16'b1111110011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u286|_al_u288  (
    .b({\U4/LCD_Ctrl_Reg [4],\U4/LCD_Ctrl_Reg [4]}),
    .c({_al_u285_o,_al_u285_o}),
    .d({i8080_D_pad[2],i8080_D_pad[0]}),
    .f({FIFO_DI[2],FIFO_DI[0]}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(0*~(~C*~(~D*~(B*A))))"),
    //.LUTF1("(~D*~(C*B*~A))"),
    //.LUTG0("(1*~(~C*~(~D*~(B*A))))"),
    //.LUTG1("(~D*~(C*B*~A))"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000010111111),
    .INIT_LUTG0(16'b1111000011110111),
    .INIT_LUTG1(16'b0000000010111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u289|_al_u290  (
    .a({\U4/AddrCtrl [0],\U4/n33 }),
    .b({\U4/n39 ,\U4/n35 }),
    .c({\U4/n41 ,\U4/n29 }),
    .d({_al_u278_o,_al_u289_o}),
    .e({open_n6987,_al_u280_o}),
    .f({_al_u289_o,_al_u290_o}));
  EF2_PHY_LSLICE #(
    //.LUTF0("~(~C*~(B*D))"),
    //.LUTF1("~(~C*~(B*D))"),
    //.LUTG0("~(~C*~(B*D))"),
    //.LUTG1("~(~C*~(B*D))"),
    .INIT_LUTF0(16'b1111110011110000),
    .INIT_LUTF1(16'b1111110011110000),
    .INIT_LUTG0(16'b1111110011110000),
    .INIT_LUTG1(16'b1111110011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u291|_al_u292  (
    .b(i8080_D_pad[4:3]),
    .c({_al_u290_o,_al_u290_o}),
    .d({\U4/LCD_Ctrl_Reg [4],\U4/LCD_Ctrl_Reg [4]}),
    .f(FIFO_DI[4:3]));
  EF2_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(~D)"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011111111),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u293|_al_u115  (
    .c({open_n7038,FIFO_DO[7]}),
    .d({FIFO_EMPTY,FIFO_EMPTY}),
    .f({\D1/n28 ,LCD_G_pad[4]}));
  EF2_PHY_LSLICE #(
    //.LUTF0("(D*C*B*~A)"),
    //.LUTF1("(~D)"),
    //.LUTG0("(D*C*B*~A)"),
    //.LUTG1("(~D)"),
    .INIT_LUTF0(16'b0100000000000000),
    .INIT_LUTF1(16'b0000000011111111),
    .INIT_LUTG0(16'b0100000000000000),
    .INIT_LUTG1(16'b0000000011111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u295|_al_u163  (
    .a({open_n7063,\U1/Count [19]}),
    .b({open_n7064,\U1/Count [17]}),
    .c({open_n7065,\U1/Count [18]}),
    .d({\FIFO0/logic_fifo_full ,\U1/Count [16]}),
    .f({\FIFO0/logic_fifo_full_neg ,_al_u163_o}));
  EF2_PHY_SPAD #(
    //.LOCATION("P54"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    _al_u64 (
    .do({open_n7092,LCD_B_pad[7]}),
    .ts(1'b1),
    .opad(LCD_B[7]));  // source/TOP.v(21)
  EF2_PHY_SPAD #(
    //.LOCATION("P53"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    _al_u65 (
    .do({open_n7101,LCD_B_pad[6]}),
    .ts(1'b1),
    .opad(LCD_B[6]));  // source/TOP.v(21)
  EF2_PHY_SPAD #(
    //.LOCATION("P52"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    _al_u66 (
    .do({open_n7110,LCD_B_pad[5]}),
    .ts(1'b1),
    .opad(LCD_B[5]));  // source/TOP.v(21)
  EF2_PHY_SPAD #(
    //.LOCATION("P51"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    _al_u67 (
    .do({open_n7119,LCD_B_pad[4]}),
    .ts(1'b1),
    .opad(LCD_B[4]));  // source/TOP.v(21)
  EF2_PHY_PAD #(
    //.LOCATION("P49"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u68 (
    .do({open_n7127,open_n7128,open_n7129,LCD_B_pad[3]}),
    .opad(LCD_B[3]));  // source/TOP.v(21)
  EF2_PHY_PAD #(
    //.LOCATION("P48"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u69 (
    .do({open_n7150,open_n7151,open_n7152,LCD_B_pad[2]}),
    .opad(LCD_B[2]));  // source/TOP.v(21)
  EF2_PHY_PAD #(
    //.LOCATION("P47"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u70 (
    .do({open_n7173,open_n7174,open_n7175,LCD_B_pad[2]}),
    .opad(LCD_B[1]));  // source/TOP.v(21)
  EF2_PHY_PAD #(
    //.LOCATION("P45"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u71 (
    .do({open_n7196,open_n7197,open_n7198,LCD_B_pad[2]}),
    .opad(LCD_B[0]));  // source/TOP.v(21)
  EF2_PHY_SPAD #(
    //.LOCATION("P62"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    _al_u72 (
    .do({open_n7220,LCD_CLK_pad}),
    .ts(1'b1),
    .opad(LCD_CLK));  // source/TOP.v(15)
  EF2_PHY_SPAD #(
    //.LOCATION("P60"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    _al_u73 (
    .do({open_n7229,LCD_DEN_pad}),
    .ts(1'b1),
    .opad(LCD_DEN));  // source/TOP.v(18)
  EF2_PHY_PAD #(
    //.LOCATION("P43"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u74 (
    .do({open_n7237,open_n7238,open_n7239,LCD_G_pad[7]}),
    .opad(LCD_G[7]));  // source/TOP.v(20)
  EF2_PHY_PAD #(
    //.LOCATION("P42"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u75 (
    .do({open_n7260,open_n7261,open_n7262,LCD_G_pad[6]}),
    .opad(LCD_G[6]));  // source/TOP.v(20)
  EF2_PHY_PAD #(
    //.LOCATION("P41"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u76 (
    .do({open_n7283,open_n7284,open_n7285,LCD_G_pad[5]}),
    .opad(LCD_G[5]));  // source/TOP.v(20)
  EF2_PHY_PAD #(
    //.LOCATION("P40"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u77 (
    .do({open_n7306,open_n7307,open_n7308,LCD_G_pad[4]}),
    .opad(LCD_G[4]));  // source/TOP.v(20)
  EF2_PHY_PAD #(
    //.LOCATION("P39"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u78 (
    .do({open_n7329,open_n7330,open_n7331,LCD_G_pad[3]}),
    .opad(LCD_G[3]));  // source/TOP.v(20)
  EF2_PHY_PAD #(
    //.LOCATION("P38"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u79 (
    .do({open_n7352,open_n7353,open_n7354,LCD_G_pad[2]}),
    .opad(LCD_G[2]));  // source/TOP.v(20)
  EF2_PHY_PAD #(
    //.LOCATION("P37"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u80 (
    .do({open_n7375,open_n7376,open_n7377,LCD_B_pad[2]}),
    .opad(LCD_G[1]));  // source/TOP.v(20)
  EF2_PHY_PAD #(
    //.LOCATION("P36"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u81 (
    .do({open_n7398,open_n7399,open_n7400,LCD_B_pad[2]}),
    .opad(LCD_G[0]));  // source/TOP.v(20)
  EF2_PHY_SPAD #(
    //.LOCATION("P58"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    _al_u82 (
    .do({open_n7422,LCD_HYNC_pad}),
    .ts(1'b1),
    .opad(LCD_HYNC));  // source/TOP.v(16)
  EF2_PHY_PAD #(
    //.LOCATION("P35"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u83 (
    .do({open_n7430,open_n7431,open_n7432,LCD_R_pad[7]}),
    .opad(LCD_R[7]));  // source/TOP.v(19)
  EF2_PHY_PAD #(
    //.LOCATION("P34"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u84 (
    .do({open_n7453,open_n7454,open_n7455,LCD_R_pad[6]}),
    .opad(LCD_R[6]));  // source/TOP.v(19)
  EF2_PHY_PAD #(
    //.LOCATION("P32"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u85 (
    .do({open_n7476,open_n7477,open_n7478,LCD_R_pad[5]}),
    .opad(LCD_R[5]));  // source/TOP.v(19)
  EF2_PHY_PAD #(
    //.LOCATION("P31"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u86 (
    .do({open_n7499,open_n7500,open_n7501,LCD_R_pad[4]}),
    .opad(LCD_R[4]));  // source/TOP.v(19)
  EF2_PHY_PAD #(
    //.LOCATION("P30"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u87 (
    .do({open_n7522,open_n7523,open_n7524,LCD_R_pad[3]}),
    .opad(LCD_R[3]));  // source/TOP.v(19)
  EF2_PHY_PAD #(
    //.LOCATION("P29"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u88 (
    .do({open_n7545,open_n7546,open_n7547,1'b1}),
    .opad(LCD_R[2]));  // source/TOP.v(19)
  EF2_PHY_PAD #(
    //.LOCATION("P28"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u89 (
    .do({open_n7568,open_n7569,open_n7570,1'b1}),
    .opad(LCD_R[1]));  // source/TOP.v(19)
  EF2_PHY_PAD #(
    //.LOCATION("P27"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u90 (
    .do({open_n7591,open_n7592,open_n7593,1'b1}),
    .opad(LCD_R[0]));  // source/TOP.v(19)
  EF2_PHY_SPAD #(
    //.LOCATION("P59"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    _al_u91 (
    .do({open_n7615,LCD_SYNC_pad}),
    .ts(1'b1),
    .opad(LCD_SYNC));  // source/TOP.v(17)
  EF2_PHY_SPAD #(
    //.LOCATION("P63"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    _al_u92 (
    .do({open_n7624,LED_pad[1]}),
    .ts(1'b1),
    .opad(LED[1]));  // source/TOP.v(6)
  EF2_PHY_SPAD #(
    //.LOCATION("P64"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("FAST"),
    .DRIVE("16"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("INV"))
    _al_u93 (
    .do({open_n7633,LED_pad[0]}),
    .ts(1'b1),
    .opad(LED[0]));  // source/TOP.v(6)
  EF2_PHY_SPAD #(
    //.LOCATION("P4"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("TS"))
    _al_u94 (
    .ipad(clk),
    .ts(1'b1),
    .di(clk_pad));  // source/TOP.v(3)
  EF2_PHY_SPAD #(
    //.LOCATION("P10"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS18"),
    .MODE("IN"),
    .TSMUX("TS"))
    _al_u95 (
    .ipad(i8080_CS),
    .ts(1'b1),
    .di(i8080_CS_pad));  // source/TOP.v(8)
  EF2_PHY_SPAD #(
    //.LOCATION("P16"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS18"),
    .MODE("IN"),
    .TSMUX("TS"))
    _al_u96 (
    .ipad(i8080_D[7]),
    .ts(1'b1),
    .di(i8080_D_pad[7]));  // source/TOP.v(12)
  EF2_PHY_SPAD #(
    //.LOCATION("P17"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS18"),
    .MODE("IN"),
    .TSMUX("TS"))
    _al_u97 (
    .ipad(i8080_D[6]),
    .ts(1'b1),
    .di(i8080_D_pad[6]));  // source/TOP.v(12)
  EF2_PHY_SPAD #(
    //.LOCATION("P18"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS18"),
    .MODE("IN"),
    .TSMUX("TS"))
    _al_u98 (
    .ipad(i8080_D[5]),
    .ts(1'b1),
    .di(i8080_D_pad[5]));  // source/TOP.v(12)
  EF2_PHY_SPAD #(
    //.LOCATION("P21"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS18"),
    .MODE("IN"),
    .TSMUX("TS"))
    _al_u99 (
    .ipad(i8080_D[2]),
    .ts(1'b1),
    .di(i8080_D_pad[2]));  // source/TOP.v(12)
  EF2_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();

endmodule 

