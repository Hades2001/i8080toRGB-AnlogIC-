// Verilog netlist created by TD v4.4.433
// Tue May 14 11:24:13 2019

`timescale 1ns / 1ps
module TOP  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(1)
  (
  clk,
  i8080_CS,
  i8080_D,
  i8080_RS,
  i8080_RST,
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
  i8080_RD
  );

  input clk;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(3)
  input i8080_CS;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(8)
  input [7:0] i8080_D;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(14)
  input i8080_RS;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(10)
  input i8080_RST;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(9)
  input i8080_WR;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(11)
  input nRST;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(4)
  output LCDBK;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(16)
  output [7:0] LCD_B;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(23)
  output LCD_CLK;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(17)
  output LCD_DEN;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(20)
  output [7:0] LCD_G;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(22)
  output LCD_HYNC;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(18)
  output [7:0] LCD_R;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(21)
  output LCD_SYNC;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(19)
  output [1:0] LED;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(6)
  output i8080_RD;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(12)

  wire [7:0] FIFO_DI;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(57)
  wire [15:0] FIFO_DO;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(56)
  wire CLK_100M;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(27)
  wire CLK_33M;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(26)
  wire FIFO_CLK_R;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(50)
  wire FIFO_CLK_W;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(51)
  wire FIFO_EMPTY;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(54)
  wire FIFO_RE;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(52)
  wire FIFO_WE;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(53)
  wire FrameCtrl;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(72)
  wire PixeClk;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(25)
  wire n0;

  VGAMod D1 (
    .CLK(clk),
    .FIFO_Data(FIFO_DO),
    .FIFO_Empty(FIFO_EMPTY),
    .FrameCtrl(FrameCtrl),
    .PixelClk(PixeClk),
    .nRST(nRST),
    .FIFO_CLK(FIFO_CLK_R),
    .FIFO_RE(FIFO_RE),
    .LCD_B(LCD_B),
    .LCD_DE(LCD_DEN),
    .LCD_G(LCD_G),
    .LCD_HSYNC(LCD_HYNC),
    .LCD_R(LCD_R),
    .LCD_VSYNC(LCD_SYNC));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(94)
  DisFIFO FIFO0 (
    .clkr(FIFO_CLK_R),
    .clkw(FIFO_CLK_W),
    .di(FIFO_DI),
    .re(FIFO_RE),
    .rst(n0),
    .we(FIFO_WE),
    .do(FIFO_DO),
    .empty_flag(FIFO_EMPTY));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(59)
  LCDPLL PLL1 (
    .refclk(clk),
    .reset(1'b0),
    .clk0_out(CLK_100M),
    .clk1_out(CLK_33M));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(37)
  CLK_MOD U1 (
    .CLK(PixeClk),
    .Count_REG(32'b00000001111101111000101001000000),
    .RSTn(nRST),
    .CLK_OUT(LED[0]));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(120)
  CLK_MOD U2 (
    .CLK(clk),
    .Count_REG(32'b00000001011011100011011000000000),
    .RSTn(nRST),
    .CLK_OUT(LED[1]));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(130)
  LCD8080Ctrl U4 (
    .CLK(CLK_100M),
    .HSYNC(LCD_HYNC),
    .VSYNC(LCD_SYNC),
    .nRST(nRST),
    .FIFOWe(FIFO_WE),
    .FIFO_WClk(FIFO_CLK_W),
    .FrameCtrl(FrameCtrl),
    .LCD_BL(LCDBK),
    .RGBData(FIFO_DI));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(74)
  buf u2 (PixeClk, CLK_33M);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(47)
  not u3 (n0, nRST);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(61)
  buf u4 (LCD_CLK, PixeClk);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/TOP.v(118)

endmodule 

module VGAMod  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(1)
  (
  CLK,
  FIFO_Data,
  FIFO_Empty,
  FrameCtrl,
  PixelClk,
  nRST,
  FIFO_CLK,
  FIFO_RE,
  FIFO_RST,
  LCD_B,
  LCD_DE,
  LCD_G,
  LCD_HSYNC,
  LCD_R,
  LCD_VSYNC
  );

  input CLK;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(3)
  input [15:0] FIFO_Data;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(22)
  input FIFO_Empty;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(21)
  input FrameCtrl;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(8)
  input PixelClk;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(6)
  input nRST;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(4)
  output FIFO_CLK;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(19)
  output FIFO_RE;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(20)
  output FIFO_RST;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(18)
  output [7:0] LCD_B;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(14)
  output LCD_DE;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(10)
  output [7:0] LCD_G;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(15)
  output LCD_HSYNC;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(11)
  output [7:0] LCD_R;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(16)
  output LCD_VSYNC;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(12)

  // localparam FIFOReEnd = 16'b0000010000100001;
  // localparam FIFOReStart = 16'b0000000011111111;
  // localparam H_BackPorch = 16'b0000000100000000;
  // localparam HightPixel = 16'b0000000111100000;
  // localparam LineForVS = 16'b0000001000111010;
  // localparam PixelForHS = 16'b0000010100100000;
  // localparam V_BackPorch = 16'b0000000000101101;
  // localparam WidthPixel = 16'b0000001100100000;
  wire [15:0] LineCount;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(27)
  wire [15:0] PixelCount;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(26)
  wire [15:0] n2;
  wire [15:0] n4;
  wire [15:0] n5;
  wire [15:0] n6;
  wire [15:0] n7;
  wire [15:0] n8;
  wire [15:0] n9;
  wire FrameFlag;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(42)
  wire n0;
  wire n1;
  wire n10;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire n21;
  wire n22;
  wire n23;
  wire n24;
  wire n25;
  wire n26;
  wire n27;
  wire n28;
  wire n3;

  AL_DFF FrameFlag_reg (
    .clk(PixelClk),
    .d(n13),
    .reset(n0),
    .set(1'b0),
    .q(FrameFlag));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(71)
  add_pu16_pu16_o16 add0 (
    .i0(LineCount),
    .i1(16'b0000000000000001),
    .o(n2));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(51)
  add_pu16_pu16_o16 add1 (
    .i0(PixelCount),
    .i1(16'b0000000000000001),
    .o(n4));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(58)
  eq_w16 eq0 (
    .i0(PixelCount),
    .i1(16'b0000010100100000),
    .o(n1));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(49)
  eq_w16 eq1 (
    .i0(LineCount),
    .i1(16'b0000001000111010),
    .o(n3));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(53)
  lt_u16_u16 lt0 (
    .ci(1'b1),
    .i0(16'b0000000000111000),
    .i1(PixelCount),
    .o(n14));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(74)
  lt_u16_u16 lt1 (
    .ci(1'b0),
    .i0(PixelCount),
    .i1(16'b0000010100011111),
    .o(n15));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(74)
  lt_u16_u16 lt2 (
    .ci(1'b0),
    .i0(LineCount),
    .i1(16'b0000000000101101),
    .o(LCD_VSYNC));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(75)
  lt_u16_u16 lt3 (
    .ci(1'b0),
    .i0(PixelCount),
    .i1(16'b0000000000010100),
    .o(FIFO_RST));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(81)
  lt_u16_u16 lt4 (
    .ci(1'b1),
    .i0(16'b0000000100000000),
    .i1(PixelCount),
    .o(n17));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(83)
  lt_u16_u16 lt5 (
    .ci(1'b1),
    .i0(PixelCount),
    .i1(16'b0000010100100000),
    .o(n18));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(84)
  lt_u16_u16 lt6 (
    .ci(1'b1),
    .i0(16'b0000000000101101),
    .i1(LineCount),
    .o(n20));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(85)
  lt_u16_u16 lt7 (
    .ci(1'b0),
    .i0(LineCount),
    .i1(16'b0000001000111010),
    .o(n22));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(86)
  lt_u16_u16 lt8 (
    .ci(1'b1),
    .i0(16'b0000000011111111),
    .i1(PixelCount),
    .o(n24));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(89)
  lt_u16_u16 lt9 (
    .ci(1'b1),
    .i0(PixelCount),
    .i1(16'b0000010000100001),
    .o(n26));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(89)
  binary_mux_s1_w16 mux0 (
    .i0(PixelCount),
    .i1(n4),
    .sel(FrameFlag),
    .o(n5));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(59)
  binary_mux_s1_w16 mux1 (
    .i0(LineCount),
    .i1(16'b0000000000000000),
    .sel(n3),
    .o(n6));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(59)
  binary_mux_s1_w16 mux2 (
    .i0(n5),
    .i1(16'b0000000000000000),
    .sel(n3),
    .o(n7));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(59)
  binary_mux_s1_w16 mux3 (
    .i0(n7),
    .i1(16'b0000000000000000),
    .sel(n1),
    .o(n8));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(59)
  binary_mux_s1_w16 mux4 (
    .i0(n6),
    .i1(n2),
    .sel(n1),
    .o(n9));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(59)
  binary_mux_s1_w8 mux5 (
    .i0({FIFO_Data[15:11],3'b111}),
    .i1(8'b11111111),
    .sel(FIFO_Empty),
    .o(LCD_R));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(91)
  binary_mux_s1_w8 mux6 (
    .i0({FIFO_Data[10:5],2'b11}),
    .i1(8'b00000000),
    .sel(FIFO_Empty),
    .o(LCD_G));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(92)
  binary_mux_s1_w8 mux7 (
    .i0({FIFO_Data[4:0],3'b111}),
    .i1(8'b00000000),
    .sel(FIFO_Empty),
    .o(LCD_B));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(93)
  reg_ar_as_w16 reg0 (
    .clk(PixelClk),
    .d(n8),
    .reset({n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0}),
    .set(16'b0000000000000000),
    .q(PixelCount));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(59)
  reg_ar_as_w16 reg1 (
    .clk(PixelClk),
    .d(n9),
    .reset({n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0}),
    .set(16'b0000000000000000),
    .q(LineCount));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(59)
  and u10 (n21, n19, n20);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(85)
  and u11 (LCD_DE, n21, n22);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(86)
  buf u12 (FIFO_CLK, PixelClk);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(88)
  and u13 (n23, n20, n22);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(89)
  and u14 (n25, n23, n24);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(89)
  and u15 (n27, n25, n26);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(89)
  not u16 (n28, FIFO_Empty);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(89)
  and u17 (FIFO_RE, n27, n28);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(89)
  not u2 (n0, nRST);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(45)
  not u3 (n10, FrameFlag);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(69)
  and u4 (n11, n10, FrameCtrl);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(69)
  AL_MUX u5 (
    .i0(FrameFlag),
    .i1(1'b1),
    .sel(n11),
    .o(n12));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(71)
  AL_MUX u6 (
    .i0(n12),
    .i1(1'b0),
    .sel(n3),
    .o(n13));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(71)
  and u7 (n16, n14, n15);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(74)
  not u8 (LCD_HSYNC, n16);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(74)
  and u9 (n19, n17, n18);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/VGAMod.v(84)

endmodule 

module DisFIFO  // al_ip/DisFIFO.v(14)
  (
  clkr,
  clkw,
  di,
  re,
  rst,
  we,
  do,
  empty_flag,
  full_flag
  );

  input clkr;  // al_ip/DisFIFO.v(25)
  input clkw;  // al_ip/DisFIFO.v(24)
  input [7:0] di;  // al_ip/DisFIFO.v(23)
  input re;  // al_ip/DisFIFO.v(25)
  input rst;  // al_ip/DisFIFO.v(22)
  input we;  // al_ip/DisFIFO.v(24)
  output [15:0] do;  // al_ip/DisFIFO.v(27)
  output empty_flag;  // al_ip/DisFIFO.v(28)
  output full_flag;  // al_ip/DisFIFO.v(29)


  EF2_LOGIC_FIFO #(
    .AE(6),
    .AF(2042),
    .ASYNC_RESET_RELEASE("SYNC"),
    .DATA_DEPTH_R(1024),
    .DATA_DEPTH_W(2048),
    .DATA_WIDTH_R(16),
    .DATA_WIDTH_W(8),
    .E(0),
    .ENDIAN("BIG"),
    .F(2048),
    .GSR("DISABLE"),
    .MODE("FIFO8K"),
    .REGMODE_R("NOREG"),
    .REGMODE_W("NOREG"),
    .RESETMODE("ASYNC"))
    logic_fifo (
    .clkr(clkr),
    .clkw(clkw),
    .csr(3'b111),
    .csw(3'b111),
    .di(di),
    .ore(1'b0),
    .re(re),
    .rst(rst),
    .we(we),
    .do(do),
    .empty_flag(empty_flag),
    .full_flag(full_flag));  // al_ip/DisFIFO.v(41)

endmodule 

module LCDPLL  // al_ip/LCDPLL.v(25)
  (
  refclk,
  reset,
  clk0_out,
  clk1_out,
  clk2_out,
  clk3_out
  );

  input refclk;  // al_ip/LCDPLL.v(32)
  input reset;  // al_ip/LCDPLL.v(33)
  output clk0_out;  // al_ip/LCDPLL.v(34)
  output clk1_out;  // al_ip/LCDPLL.v(35)
  output clk2_out;  // al_ip/LCDPLL.v(36)
  output clk3_out;  // al_ip/LCDPLL.v(37)

  wire clk0_buf;  // al_ip/LCDPLL.v(39)

  EF2_LOGIC_BUFG bufg_feedback (
    .i(clk0_buf),
    .o(clk0_out));  // al_ip/LCDPLL.v(41)
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
    pll_inst (
    .daddr(6'b000000),
    .dclk(1'b0),
    .dcs(1'b0),
    .di(8'b00000000),
    .dsm_refclk(1'b0),
    .dsm_rst(reset),
    .dwe(1'b0),
    .fbclk(clk0_out),
    .frac_offset_valid(1'b0),
    .psclk(1'b0),
    .psclksel(3'b000),
    .psdown(1'b0),
    .psstep(1'b0),
    .refclk(refclk),
    .reset(reset),
    .ssc_en(1'b0),
    .stdby(1'b0),
    .clkc({open_n0,open_n1,open_n2,clk3_out,clk2_out,clk1_out,clk0_buf}));  // al_ip/LCDPLL.v(93)

endmodule 

module CLK_MOD  // source/CLK_MOD.v(1)
  (
  CLK,
  Count_REG,
  RSTn,
  CLK_OUT
  );

  input CLK;  // source/CLK_MOD.v(11)
  input [31:0] Count_REG;  // source/CLK_MOD.v(14)
  input RSTn;  // source/CLK_MOD.v(12)
  output CLK_OUT;  // source/CLK_MOD.v(17)

  wire [31:0] Count;  // source/CLK_MOD.v(15)
  wire [31:0] n3;
  wire [31:0] n5;
  wire n0;
  wire n1;
  wire n2;
  wire n4;

  AL_DFF CLK_OUT_reg (
    .clk(CLK),
    .d(n4),
    .reset(1'b0),
    .set(n0),
    .q(CLK_OUT));  // source/CLK_MOD.v(32)
  add_pu32_pu32_o32 add0 (
    .i0(Count),
    .i1(32'b00000000000000000000000000000001),
    .o(n3));  // source/CLK_MOD.v(32)
  eq_w32 eq0 (
    .i0(Count),
    .i1(Count_REG),
    .o(n1));  // source/CLK_MOD.v(26)
  binary_mux_s1_w32 mux0 (
    .i0(n3),
    .i1(32'b00000000000000000000000000000000),
    .sel(n1),
    .o(n5));  // source/CLK_MOD.v(32)
  reg_ar_as_w32 reg0 (
    .clk(CLK),
    .d(n5),
    .reset({n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0}),
    .set(32'b00000000000000000000000000000000),
    .q(Count));  // source/CLK_MOD.v(32)
  not u2 (n0, RSTn);  // source/CLK_MOD.v(21)
  not u3 (n2, CLK_OUT);  // source/CLK_MOD.v(28)
  AL_MUX u4 (
    .i0(CLK_OUT),
    .i1(n2),
    .sel(n1),
    .o(n4));  // source/CLK_MOD.v(32)

endmodule 

module LCD8080Ctrl  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(1)
  (
  CLK,
  HSYNC,
  J80_CLK,
  J80_Data,
  J80_RS,
  J80_We,
  VSYNC,
  nRST,
  FIFOWe,
  FIFO_WClk,
  FrameCtrl,
  J80_Re,
  LCD_BL,
  RGBData
  );

  input CLK;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(3)
  input HSYNC;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(6)
  input J80_CLK;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(9)
  input [7:0] J80_Data;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(13)
  input J80_RS;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(10)
  input J80_We;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(11)
  input VSYNC;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(7)
  input nRST;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(4)
  output FIFOWe;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(15)
  output FIFO_WClk;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(16)
  output FrameCtrl;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(19)
  output J80_Re;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(12)
  output LCD_BL;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(18)
  output [7:0] RGBData;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(21)

  parameter A_BL = 3'b011;
  parameter A_CTRL = 3'b001;
  parameter A_Pix = 3'b010;
  parameter A_Res = 3'b000;
  parameter A_Test = 3'b100;
  wire [15:0] AddrCtrl;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(89)
  wire [7:0] IDELData;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(51)
  wire [4:0] LCD_BL_Reg;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(46)
  wire [4:0] LCD_Ctrl_Reg;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(44)
  wire [4:0] LCD_Pix_Reg;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(45)
  wire [7:0] i8080Data;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(52)
  wire [4:0] n10;
  wire [4:0] n11;
  wire [4:0] n12;
  wire [15:0] n19;
  wire [15:0] n20;
  wire [15:0] n21;
  wire [15:0] n22;
  wire [7:0] n51;
  wire [7:0] n52;
  wire [7:0] n53;
  wire [7:0] n54;
  wire [7:0] n55;
  wire [7:0] n56;
  wire [4:0] n7;
  wire [4:0] n8;
  wire [4:0] n9;
  wire IDELWe;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(53)
  wire i8080We;  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(54)
  wire n0;
  wire n1;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n2;
  wire n23;
  wire n24;
  wire n25;
  wire n26;
  wire n27;
  wire n28;
  wire n29;
  wire n3;
  wire n30;
  wire n31;
  wire n32;
  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n4;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n5;
  wire n50;
  wire n6;

  add_pu16_pu16_o16 add0 (
    .i0(AddrCtrl),
    .i1(16'b0000000000000001),
    .o(n19));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(102)
  eq_w3 eq0 (
    .i0(J80_Data[7:5]),
    .i1(3'b001),
    .o(n2));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(65)
  eq_w3 eq1 (
    .i0(J80_Data[7:5]),
    .i1(3'b010),
    .o(n3));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(66)
  eq_w3 eq2 (
    .i0(J80_Data[7:5]),
    .i1(3'b011),
    .o(n4));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(67)
  eq_w3 eq3 (
    .i0(J80_Data[7:5]),
    .i1(3'b100),
    .o(n5));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(68)
  eq_w1 eq4 (
    .i0(AddrCtrl[0]),
    .i1(1'b0),
    .o(n27));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(108)
  eq_w1 eq5 (
    .i0(AddrCtrl[0]),
    .i1(1'b1),
    .o(n30));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(109)
  lt_u16_u16 lt0 (
    .ci(1'b0),
    .i0(AddrCtrl),
    .i1(16'b0000011111010000),
    .o(n18));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(101)
  lt_u16_u16 lt1 (
    .ci(1'b0),
    .i0(AddrCtrl),
    .i1(16'b0000011001000000),
    .o(n24));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(106)
  lt_u16_u16 lt2 (
    .ci(1'b0),
    .i0(AddrCtrl),
    .i1(16'b0000000110010000),
    .o(n28));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(108)
  lt_u16_u16 lt3 (
    .ci(1'b1),
    .i0(16'b0000000110010000),
    .i1(AddrCtrl),
    .o(n32));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(110)
  lt_u16_u16 lt4 (
    .ci(1'b0),
    .i0(AddrCtrl),
    .i1(16'b0000001100100000),
    .o(n34));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(110)
  lt_u16_u16 lt5 (
    .ci(1'b1),
    .i0(16'b0000001100100000),
    .i1(AddrCtrl),
    .o(n38));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(112)
  lt_u16_u16 lt6 (
    .ci(1'b0),
    .i0(AddrCtrl),
    .i1(16'b0000010010110000),
    .o(n40));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(112)
  lt_u16_u16 lt7 (
    .ci(1'b1),
    .i0(16'b0000010010110000),
    .i1(AddrCtrl),
    .o(n44));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(114)
  binary_mux_s1_w5 mux0 (
    .i0(LCD_Ctrl_Reg),
    .i1(n7),
    .sel(n1),
    .o(n10));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(70)
  binary_mux_s1_w5 mux1 (
    .i0(LCD_Pix_Reg),
    .i1(n8),
    .sel(n1),
    .o(n11));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(70)
  binary_mux_s1_w8 mux10 (
    .i0(n52),
    .i1(8'b11111000),
    .sel(n41),
    .o(n53));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(115)
  binary_mux_s1_w8 mux11 (
    .i0(n53),
    .i1(8'b11100000),
    .sel(n37),
    .o(n54));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(115)
  binary_mux_s1_w8 mux12 (
    .i0(n54),
    .i1(8'b00000111),
    .sel(n35),
    .o(n55));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(115)
  binary_mux_s1_w8 mux13 (
    .i0(n55),
    .i1(8'b00011111),
    .sel(n31),
    .o(n56));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(115)
  binary_mux_s1_w8 mux14 (
    .i0(n56),
    .i1(8'b00000000),
    .sel(n29),
    .o(IDELData));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(115)
  binary_mux_s1_w5 mux2 (
    .i0(LCD_BL_Reg),
    .i1(n9),
    .sel(n1),
    .o(n12));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(70)
  binary_mux_s1_w8 mux3 (
    .i0(8'b00000000),
    .i1(J80_Data),
    .sel(i8080We),
    .o(i8080Data));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(75)
  binary_mux_s1_w8 mux4 (
    .i0(IDELData),
    .i1(i8080Data),
    .sel(LCD_Ctrl_Reg[4]),
    .o(RGBData));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(82)
  binary_mux_s1_w16 mux5 (
    .i0(AddrCtrl),
    .i1(n19),
    .sel(n18),
    .o(n20));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(103)
  binary_mux_s1_w16 mux6 (
    .i0(n20),
    .i1(16'b0000000000000000),
    .sel(HSYNC),
    .o(n21));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(103)
  binary_mux_s1_w16 mux7 (
    .i0(n21),
    .i1(16'b0000000000000000),
    .sel(VSYNC),
    .o(n22));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(103)
  binary_mux_s1_w8 mux8 (
    .i0({n50,n50,n50,n50,n50,n50,n50,n50}),
    .i1(8'b11111111),
    .sel(n46),
    .o(n51));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(115)
  binary_mux_s1_w8 mux9 (
    .i0(n51),
    .i1(8'b00000000),
    .sel(n43),
    .o(n52));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(115)
  reg_ar_as_w5 reg0 (
    .clk(J80_CLK),
    .d(n11),
    .reset({n0,n0,n0,n0,n0}),
    .set(5'b00000),
    .q(LCD_Pix_Reg));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(70)
  reg_ar_as_w5 reg1 (
    .clk(J80_CLK),
    .d(n12),
    .reset({n0,n0,n0,n0,1'b0}),
    .set({4'b0000,n0}),
    .q(LCD_BL_Reg));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(70)
  reg_ar_as_w16 reg2 (
    .clk(CLK),
    .d(n22),
    .reset({n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0}),
    .set(16'b0000000000000000),
    .q(AddrCtrl));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(103)
  reg_ar_as_w5 reg3 (
    .clk(J80_CLK),
    .d(n10),
    .reset({n0,1'b0,n0,n0,n0}),
    .set({1'b0,n0,3'b000}),
    .q(LCD_Ctrl_Reg));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(70)
  onehot_mux_s5_w5 sel0 (
    .i0(LCD_Ctrl_Reg),
    .i1(LCD_Ctrl_Reg),
    .i2(LCD_Ctrl_Reg),
    .i3(LCD_Ctrl_Reg),
    .i4(J80_Data[4:0]),
    .sel({n2,n3,n4,n5,n6}),
    .o(n7));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(69)
  onehot_mux_s5_w5 sel1 (
    .i0(LCD_Pix_Reg),
    .i1(LCD_Pix_Reg),
    .i2(LCD_Pix_Reg),
    .i3(J80_Data[4:0]),
    .i4(LCD_Pix_Reg),
    .sel({n2,n3,n4,n5,n6}),
    .o(n8));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(69)
  onehot_mux_s5_w5 sel2 (
    .i0(LCD_BL_Reg),
    .i1(LCD_BL_Reg),
    .i2(J80_Data[4:0]),
    .i3(LCD_BL_Reg),
    .i4(LCD_BL_Reg),
    .sel({n2,n3,n4,n5,n6}),
    .o(n9));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(69)
  AL_MUX u10 (
    .i0(LCD_Pix_Reg[0]),
    .i1(1'b1),
    .sel(LCD_Ctrl_Reg[3]),
    .o(FrameCtrl));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(78)
  and u11 (n17, i8080We, LCD_Ctrl_Reg[4]);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(81)
  AL_MUX u12 (
    .i0(CLK),
    .i1(J80_CLK),
    .sel(n17),
    .o(FIFO_WClk));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(81)
  AL_MUX u13 (
    .i0(IDELWe),
    .i1(i8080We),
    .sel(LCD_Ctrl_Reg[4]),
    .o(FIFOWe));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(83)
  buf u14 (LCD_BL, LCD_BL_Reg[0]);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(85)
  and u15 (n25, n24, n15);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(106)
  not u16 (n26, HSYNC);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(106)
  and u17 (IDELWe, n25, n26);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(106)
  and u18 (n29, n27, n28);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(108)
  and u19 (n31, n30, n28);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(109)
  not u2 (n0, nRST);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(57)
  and u20 (n33, n27, n32);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(110)
  and u21 (n35, n33, n34);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(110)
  and u22 (n36, n30, n32);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(111)
  and u23 (n37, n36, n34);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(111)
  and u24 (n39, n27, n38);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(112)
  and u25 (n41, n39, n40);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(112)
  and u26 (n42, n30, n38);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(113)
  and u27 (n43, n42, n40);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(113)
  and u28 (n45, n27, n44);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(114)
  and u29 (n46, n45, n24);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(114)
  and u3 (n1, J80_RS, J80_We);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(63)
  not u30 (n6, n47);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(69)
  or u31 (n47, n23, n49);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(69)
  and u32 (n48, n30, n44);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(115)
  or u33 (n49, n3, n2);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(69)
  and u34 (n50, n48, n24);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(115)
  or u35 (n23, n5, n4);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(69)
  not u4 (n13, J80_RS);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(74)
  and u5 (i8080We, n13, J80_We);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(74)
  or u6 (n14, HSYNC, VSYNC);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(76)
  not u7 (n15, VSYNC);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(76)
  and u8 (n16, HSYNC, n15);  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(76)
  AL_MUX u9 (
    .i0(n16),
    .i1(n14),
    .sel(LCD_Ctrl_Reg[3]),
    .o(J80_Re));  // E:/Fpga_Prj/Anlogic/LCD_8080ToRGB/source/LCD8080Ctrl.v(76)

endmodule 

module add_pu16_pu16_o16
  (
  i0,
  i1,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  output [15:0] o;



endmodule 

module eq_w16
  (
  i0,
  i1,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  output o;



endmodule 

module lt_u16_u16
  (
  ci,
  i0,
  i1,
  o
  );

  input ci;
  input [15:0] i0;
  input [15:0] i1;
  output o;



endmodule 

module binary_mux_s1_w16
  (
  i0,
  i1,
  sel,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  input sel;
  output [15:0] o;



endmodule 

module binary_mux_s1_w8
  (
  i0,
  i1,
  sel,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  input sel;
  output [7:0] o;



endmodule 

module reg_ar_as_w16
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [15:0] d;
  input en;
  input [15:0] reset;
  input [15:0] set;
  output [15:0] q;



endmodule 

module add_pu32_pu32_o32
  (
  i0,
  i1,
  o
  );

  input [31:0] i0;
  input [31:0] i1;
  output [31:0] o;



endmodule 

module eq_w32
  (
  i0,
  i1,
  o
  );

  input [31:0] i0;
  input [31:0] i1;
  output o;



endmodule 

module binary_mux_s1_w32
  (
  i0,
  i1,
  sel,
  o
  );

  input [31:0] i0;
  input [31:0] i1;
  input sel;
  output [31:0] o;



endmodule 

module reg_ar_as_w32
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [31:0] d;
  input en;
  input [31:0] reset;
  input [31:0] set;
  output [31:0] q;



endmodule 

module eq_w3
  (
  i0,
  i1,
  o
  );

  input [2:0] i0;
  input [2:0] i1;
  output o;



endmodule 

module eq_w1
  (
  i0,
  i1,
  o
  );

  input i0;
  input i1;
  output o;



endmodule 

module binary_mux_s1_w5
  (
  i0,
  i1,
  sel,
  o
  );

  input [4:0] i0;
  input [4:0] i1;
  input sel;
  output [4:0] o;



endmodule 

module reg_ar_as_w5
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [4:0] d;
  input en;
  input [4:0] reset;
  input [4:0] set;
  output [4:0] q;



endmodule 

module onehot_mux_s5_w5
  (
  i0,
  i1,
  i2,
  i3,
  i4,
  sel,
  o
  );

  input [4:0] i0;
  input [4:0] i1;
  input [4:0] i2;
  input [4:0] i3;
  input [4:0] i4;
  input [4:0] sel;
  output [4:0] o;



endmodule 

module AL_DFF
  (
  input reset,
  input set,
  input clk,
  input d,
  output reg q
  );

  parameter INI = 1'b0;

  always @(posedge reset or posedge set or posedge clk)
  begin
    if (reset)
      q <= 1'b0;
    else if (set)
      q <= 1'b1;
    else
      q <= d;
  end

endmodule

module AL_MUX
  (
  input i0,
  input i1,
  input sel,
  output o
  );

  wire not_sel, sel_i0, sel_i1;
  not u0 (not_sel, sel);
  and u1 (sel_i1, sel, i1);
  and u2 (sel_i0, not_sel, i0);
  or u3 (o, sel_i1, sel_i0);

endmodule

