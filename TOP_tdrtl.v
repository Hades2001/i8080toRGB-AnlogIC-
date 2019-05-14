// Verilog netlist created by TD v4.4.433
// Tue May 14 13:46:03 2019

`timescale 1ns / 1ps
module TOP  // source/TOP.v(1)
  (
  clk,
  i8080_CS,
  i8080_D,
  i8080_RS,
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

  input clk;  // source/TOP.v(3)
  input i8080_CS;  // source/TOP.v(8)
  input [7:0] i8080_D;  // source/TOP.v(13)
  input i8080_RS;  // source/TOP.v(9)
  input i8080_WR;  // source/TOP.v(10)
  input nRST;  // source/TOP.v(4)
  output LCDBK;  // source/TOP.v(15)
  output [7:0] LCD_B;  // source/TOP.v(22)
  output LCD_CLK;  // source/TOP.v(16)
  output LCD_DEN;  // source/TOP.v(19)
  output [7:0] LCD_G;  // source/TOP.v(21)
  output LCD_HYNC;  // source/TOP.v(17)
  output [7:0] LCD_R;  // source/TOP.v(20)
  output LCD_SYNC;  // source/TOP.v(18)
  output [1:0] LED;  // source/TOP.v(6)
  output i8080_RD;  // source/TOP.v(11)

  wire [15:0] \D1/LineCount ;  // source/VGAMod.v(27)
  wire [15:0] \D1/PixelCount ;  // source/VGAMod.v(26)
  wire [15:0] \D1/n2 ;
  wire [15:0] \D1/n4 ;
  wire [15:0] \D1/n5 ;
  wire [15:0] \D1/n6 ;
  wire [15:0] \D1/n8 ;
  wire [15:0] \D1/n9 ;
  wire [7:0] FIFO_DI;  // source/TOP.v(56)
  wire [15:0] FIFO_DO;  // source/TOP.v(55)
  wire [31:0] \U1/Count ;  // source/CLK_MOD.v(15)
  wire [31:0] \U1/n3 ;
  wire [31:0] \U1/n5 ;
  wire [31:0] \U2/Count ;  // source/CLK_MOD.v(15)
  wire [31:0] \U2/n3 ;
  wire [31:0] \U2/n5 ;
  wire [15:0] \U4/AddrCtrl ;  // source/LCD8080Ctrl.v(89)
  wire [15:0] \U4/n19 ;
  wire [15:0] \U4/n20 ;
  wire [15:0] \U4/n22 ;
  wire [7:0] \U4/n51 ;
  wire [7:0] \U4/n52 ;
  wire [7:0] \U4/n53 ;
  wire [7:0] \U4/n54 ;
  wire [7:0] \U4/n55 ;
  wire [7:0] \U4/n56 ;
  wire CLK_100M;  // source/TOP.v(26)
  wire \D1/FrameFlag ;  // source/VGAMod.v(42)
  wire \D1/mux3_b0_sel_is_0_o ;
  wire \D1/n0 ;
  wire \D1/n1 ;
  wire \D1/n10 ;
  wire \D1/n12 ;
  wire \D1/n13 ;
  wire \D1/n14 ;
  wire \D1/n15 ;
  wire \D1/n16 ;
  wire \D1/n17 ;
  wire \D1/n18 ;
  wire \D1/n19 ;
  wire \D1/n1_neg ;
  wire \D1/n20 ;
  wire \D1/n21 ;
  wire \D1/n22 ;
  wire \D1/n23 ;
  wire \D1/n24 ;
  wire \D1/n25 ;
  wire \D1/n26 ;
  wire \D1/n27 ;
  wire \D1/n28 ;
  wire \D1/n3 ;
  wire \D1/n3_neg ;
  wire FIFO_EMPTY;  // source/TOP.v(53)
  wire FIFO_RE;  // source/TOP.v(51)
  wire LCD_SYNC_neg;
  wire \PLL1/clk0_buf ;  // al_ip/LCDPLL.v(39)
  wire \U1/n1 ;
  wire \U1/n2 ;
  wire \U2/n1 ;
  wire \U2/n2 ;
  wire \U4/IDELWe ;  // source/LCD8080Ctrl.v(53)
  wire \U4/mux11_b0_sel_is_0_o ;
  wire \U4/mux12_b3_sel_is_0_o ;
  wire \U4/mux13_b0_sel_is_0_o ;
  wire \U4/mux14_b5_sel_is_2_o ;
  wire \U4/mux7_b0_sel_is_0_o ;
  wire \U4/n18 ;
  wire \U4/n24 ;
  wire \U4/n25 ;
  wire \U4/n27 ;
  wire \U4/n28 ;
  wire \U4/n29 ;
  wire \U4/n29_neg ;
  wire \U4/n30 ;
  wire \U4/n31 ;
  wire \U4/n31_neg ;
  wire \U4/n32 ;
  wire \U4/n33 ;
  wire \U4/n34 ;
  wire \U4/n35 ;
  wire \U4/n35_neg ;
  wire \U4/n36 ;
  wire \U4/n37 ;
  wire \U4/n37_neg ;
  wire \U4/n38 ;
  wire \U4/n39 ;
  wire \U4/n40 ;
  wire \U4/n41 ;
  wire \U4/n41_neg ;
  wire \U4/n42 ;
  wire \U4/n43 ;
  wire \U4/n44 ;
  wire \U4/n45 ;
  wire \U4/n46 ;
  wire \U4/n48 ;
  wire \U4/n50 ;

  assign LCDBK = 1'b1;
  assign LCD_B[1] = LCD_B[2];
  assign LCD_B[0] = LCD_B[2];
  assign LCD_G[1] = LCD_B[2];
  assign LCD_G[0] = LCD_B[2];
  assign LCD_R[2] = 1'b1;
  assign LCD_R[1] = 1'b1;
  assign LCD_R[0] = 1'b1;
  assign i8080_RD = 1'b0;
  reg_ar_as_w1 \D1/FrameFlag_reg  (
    .clk(LCD_CLK),
    .d(\D1/n13 ),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/FrameFlag ));  // source/VGAMod.v(71)
  add_pu16_pu16_o16 \D1/add0  (
    .i0(\D1/LineCount ),
    .i1(16'b0000000000000001),
    .o(\D1/n2 ));  // source/VGAMod.v(51)
  add_pu16_pu16_o16 \D1/add1  (
    .i0(\D1/PixelCount ),
    .i1(16'b0000000000000001),
    .o(\D1/n4 ));  // source/VGAMod.v(58)
  eq_w16 \D1/eq0  (
    .i0(\D1/PixelCount ),
    .i1(16'b0000010100100000),
    .o(\D1/n1 ));  // source/VGAMod.v(49)
  eq_w16 \D1/eq1  (
    .i0(\D1/LineCount ),
    .i1(16'b0000001000111010),
    .o(\D1/n3 ));  // source/VGAMod.v(53)
  lt_u16_u16 \D1/lt0  (
    .ci(1'b1),
    .i0(16'b0000000000111000),
    .i1(\D1/PixelCount ),
    .o(\D1/n14 ));  // source/VGAMod.v(74)
  lt_u16_u16 \D1/lt1  (
    .ci(1'b0),
    .i0(\D1/PixelCount ),
    .i1(16'b0000010100011111),
    .o(\D1/n15 ));  // source/VGAMod.v(74)
  lt_u16_u16 \D1/lt2  (
    .ci(1'b0),
    .i0(\D1/LineCount ),
    .i1(16'b0000000000101101),
    .o(LCD_SYNC));  // source/VGAMod.v(75)
  lt_u16_u16 \D1/lt4  (
    .ci(1'b1),
    .i0(16'b0000000100000000),
    .i1(\D1/PixelCount ),
    .o(\D1/n17 ));  // source/VGAMod.v(83)
  lt_u16_u16 \D1/lt5  (
    .ci(1'b1),
    .i0(\D1/PixelCount ),
    .i1(16'b0000010100100000),
    .o(\D1/n18 ));  // source/VGAMod.v(84)
  lt_u16_u16 \D1/lt6  (
    .ci(1'b1),
    .i0(16'b0000000000101101),
    .i1(\D1/LineCount ),
    .o(\D1/n20 ));  // source/VGAMod.v(85)
  lt_u16_u16 \D1/lt7  (
    .ci(1'b0),
    .i0(\D1/LineCount ),
    .i1(16'b0000001000111010),
    .o(\D1/n22 ));  // source/VGAMod.v(86)
  lt_u16_u16 \D1/lt8  (
    .ci(1'b1),
    .i0(16'b0000000011111111),
    .i1(\D1/PixelCount ),
    .o(\D1/n24 ));  // source/VGAMod.v(89)
  lt_u16_u16 \D1/lt9  (
    .ci(1'b1),
    .i0(\D1/PixelCount ),
    .i1(16'b0000010000100001),
    .o(\D1/n26 ));  // source/VGAMod.v(89)
  binary_mux_s1_w1 \D1/mux0_b0  (
    .i0(\D1/PixelCount [0]),
    .i1(\D1/n4 [0]),
    .sel(\D1/FrameFlag ),
    .o(\D1/n5 [0]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux0_b1  (
    .i0(\D1/PixelCount [1]),
    .i1(\D1/n4 [1]),
    .sel(\D1/FrameFlag ),
    .o(\D1/n5 [1]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux0_b10  (
    .i0(\D1/PixelCount [10]),
    .i1(\D1/n4 [10]),
    .sel(\D1/FrameFlag ),
    .o(\D1/n5 [10]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux0_b11  (
    .i0(\D1/PixelCount [11]),
    .i1(\D1/n4 [11]),
    .sel(\D1/FrameFlag ),
    .o(\D1/n5 [11]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux0_b12  (
    .i0(\D1/PixelCount [12]),
    .i1(\D1/n4 [12]),
    .sel(\D1/FrameFlag ),
    .o(\D1/n5 [12]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux0_b13  (
    .i0(\D1/PixelCount [13]),
    .i1(\D1/n4 [13]),
    .sel(\D1/FrameFlag ),
    .o(\D1/n5 [13]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux0_b14  (
    .i0(\D1/PixelCount [14]),
    .i1(\D1/n4 [14]),
    .sel(\D1/FrameFlag ),
    .o(\D1/n5 [14]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux0_b15  (
    .i0(\D1/PixelCount [15]),
    .i1(\D1/n4 [15]),
    .sel(\D1/FrameFlag ),
    .o(\D1/n5 [15]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux0_b2  (
    .i0(\D1/PixelCount [2]),
    .i1(\D1/n4 [2]),
    .sel(\D1/FrameFlag ),
    .o(\D1/n5 [2]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux0_b3  (
    .i0(\D1/PixelCount [3]),
    .i1(\D1/n4 [3]),
    .sel(\D1/FrameFlag ),
    .o(\D1/n5 [3]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux0_b4  (
    .i0(\D1/PixelCount [4]),
    .i1(\D1/n4 [4]),
    .sel(\D1/FrameFlag ),
    .o(\D1/n5 [4]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux0_b5  (
    .i0(\D1/PixelCount [5]),
    .i1(\D1/n4 [5]),
    .sel(\D1/FrameFlag ),
    .o(\D1/n5 [5]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux0_b6  (
    .i0(\D1/PixelCount [6]),
    .i1(\D1/n4 [6]),
    .sel(\D1/FrameFlag ),
    .o(\D1/n5 [6]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux0_b7  (
    .i0(\D1/PixelCount [7]),
    .i1(\D1/n4 [7]),
    .sel(\D1/FrameFlag ),
    .o(\D1/n5 [7]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux0_b8  (
    .i0(\D1/PixelCount [8]),
    .i1(\D1/n4 [8]),
    .sel(\D1/FrameFlag ),
    .o(\D1/n5 [8]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux0_b9  (
    .i0(\D1/PixelCount [9]),
    .i1(\D1/n4 [9]),
    .sel(\D1/FrameFlag ),
    .o(\D1/n5 [9]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux1_b0  (
    .i0(\D1/LineCount [0]),
    .i1(1'b0),
    .sel(\D1/n3 ),
    .o(\D1/n6 [0]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux1_b1  (
    .i0(\D1/LineCount [1]),
    .i1(1'b0),
    .sel(\D1/n3 ),
    .o(\D1/n6 [1]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux1_b10  (
    .i0(\D1/LineCount [10]),
    .i1(1'b0),
    .sel(\D1/n3 ),
    .o(\D1/n6 [10]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux1_b11  (
    .i0(\D1/LineCount [11]),
    .i1(1'b0),
    .sel(\D1/n3 ),
    .o(\D1/n6 [11]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux1_b12  (
    .i0(\D1/LineCount [12]),
    .i1(1'b0),
    .sel(\D1/n3 ),
    .o(\D1/n6 [12]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux1_b13  (
    .i0(\D1/LineCount [13]),
    .i1(1'b0),
    .sel(\D1/n3 ),
    .o(\D1/n6 [13]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux1_b14  (
    .i0(\D1/LineCount [14]),
    .i1(1'b0),
    .sel(\D1/n3 ),
    .o(\D1/n6 [14]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux1_b15  (
    .i0(\D1/LineCount [15]),
    .i1(1'b0),
    .sel(\D1/n3 ),
    .o(\D1/n6 [15]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux1_b2  (
    .i0(\D1/LineCount [2]),
    .i1(1'b0),
    .sel(\D1/n3 ),
    .o(\D1/n6 [2]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux1_b3  (
    .i0(\D1/LineCount [3]),
    .i1(1'b0),
    .sel(\D1/n3 ),
    .o(\D1/n6 [3]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux1_b4  (
    .i0(\D1/LineCount [4]),
    .i1(1'b0),
    .sel(\D1/n3 ),
    .o(\D1/n6 [4]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux1_b5  (
    .i0(\D1/LineCount [5]),
    .i1(1'b0),
    .sel(\D1/n3 ),
    .o(\D1/n6 [5]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux1_b6  (
    .i0(\D1/LineCount [6]),
    .i1(1'b0),
    .sel(\D1/n3 ),
    .o(\D1/n6 [6]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux1_b7  (
    .i0(\D1/LineCount [7]),
    .i1(1'b0),
    .sel(\D1/n3 ),
    .o(\D1/n6 [7]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux1_b8  (
    .i0(\D1/LineCount [8]),
    .i1(1'b0),
    .sel(\D1/n3 ),
    .o(\D1/n6 [8]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux1_b9  (
    .i0(\D1/LineCount [9]),
    .i1(1'b0),
    .sel(\D1/n3 ),
    .o(\D1/n6 [9]));  // source/VGAMod.v(59)
  AL_MUX \D1/mux3_b0  (
    .i0(1'b0),
    .i1(\D1/n5 [0]),
    .sel(\D1/mux3_b0_sel_is_0_o ),
    .o(\D1/n8 [0]));
  and \D1/mux3_b0_sel_is_0  (\D1/mux3_b0_sel_is_0_o , \D1/n1_neg , \D1/n3_neg );
  AL_MUX \D1/mux3_b1  (
    .i0(1'b0),
    .i1(\D1/n5 [1]),
    .sel(\D1/mux3_b0_sel_is_0_o ),
    .o(\D1/n8 [1]));
  AL_MUX \D1/mux3_b10  (
    .i0(1'b0),
    .i1(\D1/n5 [10]),
    .sel(\D1/mux3_b0_sel_is_0_o ),
    .o(\D1/n8 [10]));
  AL_MUX \D1/mux3_b11  (
    .i0(1'b0),
    .i1(\D1/n5 [11]),
    .sel(\D1/mux3_b0_sel_is_0_o ),
    .o(\D1/n8 [11]));
  AL_MUX \D1/mux3_b12  (
    .i0(1'b0),
    .i1(\D1/n5 [12]),
    .sel(\D1/mux3_b0_sel_is_0_o ),
    .o(\D1/n8 [12]));
  AL_MUX \D1/mux3_b13  (
    .i0(1'b0),
    .i1(\D1/n5 [13]),
    .sel(\D1/mux3_b0_sel_is_0_o ),
    .o(\D1/n8 [13]));
  AL_MUX \D1/mux3_b14  (
    .i0(1'b0),
    .i1(\D1/n5 [14]),
    .sel(\D1/mux3_b0_sel_is_0_o ),
    .o(\D1/n8 [14]));
  AL_MUX \D1/mux3_b15  (
    .i0(1'b0),
    .i1(\D1/n5 [15]),
    .sel(\D1/mux3_b0_sel_is_0_o ),
    .o(\D1/n8 [15]));
  AL_MUX \D1/mux3_b2  (
    .i0(1'b0),
    .i1(\D1/n5 [2]),
    .sel(\D1/mux3_b0_sel_is_0_o ),
    .o(\D1/n8 [2]));
  AL_MUX \D1/mux3_b3  (
    .i0(1'b0),
    .i1(\D1/n5 [3]),
    .sel(\D1/mux3_b0_sel_is_0_o ),
    .o(\D1/n8 [3]));
  AL_MUX \D1/mux3_b4  (
    .i0(1'b0),
    .i1(\D1/n5 [4]),
    .sel(\D1/mux3_b0_sel_is_0_o ),
    .o(\D1/n8 [4]));
  AL_MUX \D1/mux3_b5  (
    .i0(1'b0),
    .i1(\D1/n5 [5]),
    .sel(\D1/mux3_b0_sel_is_0_o ),
    .o(\D1/n8 [5]));
  AL_MUX \D1/mux3_b6  (
    .i0(1'b0),
    .i1(\D1/n5 [6]),
    .sel(\D1/mux3_b0_sel_is_0_o ),
    .o(\D1/n8 [6]));
  AL_MUX \D1/mux3_b7  (
    .i0(1'b0),
    .i1(\D1/n5 [7]),
    .sel(\D1/mux3_b0_sel_is_0_o ),
    .o(\D1/n8 [7]));
  AL_MUX \D1/mux3_b8  (
    .i0(1'b0),
    .i1(\D1/n5 [8]),
    .sel(\D1/mux3_b0_sel_is_0_o ),
    .o(\D1/n8 [8]));
  AL_MUX \D1/mux3_b9  (
    .i0(1'b0),
    .i1(\D1/n5 [9]),
    .sel(\D1/mux3_b0_sel_is_0_o ),
    .o(\D1/n8 [9]));
  binary_mux_s1_w1 \D1/mux4_b0  (
    .i0(\D1/n6 [0]),
    .i1(\D1/n2 [0]),
    .sel(\D1/n1 ),
    .o(\D1/n9 [0]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux4_b1  (
    .i0(\D1/n6 [1]),
    .i1(\D1/n2 [1]),
    .sel(\D1/n1 ),
    .o(\D1/n9 [1]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux4_b10  (
    .i0(\D1/n6 [10]),
    .i1(\D1/n2 [10]),
    .sel(\D1/n1 ),
    .o(\D1/n9 [10]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux4_b11  (
    .i0(\D1/n6 [11]),
    .i1(\D1/n2 [11]),
    .sel(\D1/n1 ),
    .o(\D1/n9 [11]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux4_b12  (
    .i0(\D1/n6 [12]),
    .i1(\D1/n2 [12]),
    .sel(\D1/n1 ),
    .o(\D1/n9 [12]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux4_b13  (
    .i0(\D1/n6 [13]),
    .i1(\D1/n2 [13]),
    .sel(\D1/n1 ),
    .o(\D1/n9 [13]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux4_b14  (
    .i0(\D1/n6 [14]),
    .i1(\D1/n2 [14]),
    .sel(\D1/n1 ),
    .o(\D1/n9 [14]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux4_b15  (
    .i0(\D1/n6 [15]),
    .i1(\D1/n2 [15]),
    .sel(\D1/n1 ),
    .o(\D1/n9 [15]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux4_b2  (
    .i0(\D1/n6 [2]),
    .i1(\D1/n2 [2]),
    .sel(\D1/n1 ),
    .o(\D1/n9 [2]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux4_b3  (
    .i0(\D1/n6 [3]),
    .i1(\D1/n2 [3]),
    .sel(\D1/n1 ),
    .o(\D1/n9 [3]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux4_b4  (
    .i0(\D1/n6 [4]),
    .i1(\D1/n2 [4]),
    .sel(\D1/n1 ),
    .o(\D1/n9 [4]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux4_b5  (
    .i0(\D1/n6 [5]),
    .i1(\D1/n2 [5]),
    .sel(\D1/n1 ),
    .o(\D1/n9 [5]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux4_b6  (
    .i0(\D1/n6 [6]),
    .i1(\D1/n2 [6]),
    .sel(\D1/n1 ),
    .o(\D1/n9 [6]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux4_b7  (
    .i0(\D1/n6 [7]),
    .i1(\D1/n2 [7]),
    .sel(\D1/n1 ),
    .o(\D1/n9 [7]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux4_b8  (
    .i0(\D1/n6 [8]),
    .i1(\D1/n2 [8]),
    .sel(\D1/n1 ),
    .o(\D1/n9 [8]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux4_b9  (
    .i0(\D1/n6 [9]),
    .i1(\D1/n2 [9]),
    .sel(\D1/n1 ),
    .o(\D1/n9 [9]));  // source/VGAMod.v(59)
  binary_mux_s1_w1 \D1/mux5_b3  (
    .i0(FIFO_DO[11]),
    .i1(1'b1),
    .sel(FIFO_EMPTY),
    .o(LCD_R[3]));  // source/VGAMod.v(91)
  binary_mux_s1_w1 \D1/mux5_b4  (
    .i0(FIFO_DO[12]),
    .i1(1'b1),
    .sel(FIFO_EMPTY),
    .o(LCD_R[4]));  // source/VGAMod.v(91)
  binary_mux_s1_w1 \D1/mux5_b5  (
    .i0(FIFO_DO[13]),
    .i1(1'b1),
    .sel(FIFO_EMPTY),
    .o(LCD_R[5]));  // source/VGAMod.v(91)
  binary_mux_s1_w1 \D1/mux5_b6  (
    .i0(FIFO_DO[14]),
    .i1(1'b1),
    .sel(FIFO_EMPTY),
    .o(LCD_R[6]));  // source/VGAMod.v(91)
  binary_mux_s1_w1 \D1/mux5_b7  (
    .i0(FIFO_DO[15]),
    .i1(1'b1),
    .sel(FIFO_EMPTY),
    .o(LCD_R[7]));  // source/VGAMod.v(91)
  binary_mux_s1_w1 \D1/mux6_b0  (
    .i0(1'b1),
    .i1(1'b0),
    .sel(FIFO_EMPTY),
    .o(LCD_B[2]));  // source/VGAMod.v(92)
  binary_mux_s1_w1 \D1/mux6_b2  (
    .i0(FIFO_DO[5]),
    .i1(1'b0),
    .sel(FIFO_EMPTY),
    .o(LCD_G[2]));  // source/VGAMod.v(92)
  binary_mux_s1_w1 \D1/mux6_b3  (
    .i0(FIFO_DO[6]),
    .i1(1'b0),
    .sel(FIFO_EMPTY),
    .o(LCD_G[3]));  // source/VGAMod.v(92)
  binary_mux_s1_w1 \D1/mux6_b4  (
    .i0(FIFO_DO[7]),
    .i1(1'b0),
    .sel(FIFO_EMPTY),
    .o(LCD_G[4]));  // source/VGAMod.v(92)
  binary_mux_s1_w1 \D1/mux6_b5  (
    .i0(FIFO_DO[8]),
    .i1(1'b0),
    .sel(FIFO_EMPTY),
    .o(LCD_G[5]));  // source/VGAMod.v(92)
  binary_mux_s1_w1 \D1/mux6_b6  (
    .i0(FIFO_DO[9]),
    .i1(1'b0),
    .sel(FIFO_EMPTY),
    .o(LCD_G[6]));  // source/VGAMod.v(92)
  binary_mux_s1_w1 \D1/mux6_b7  (
    .i0(FIFO_DO[10]),
    .i1(1'b0),
    .sel(FIFO_EMPTY),
    .o(LCD_G[7]));  // source/VGAMod.v(92)
  binary_mux_s1_w1 \D1/mux7_b3  (
    .i0(FIFO_DO[0]),
    .i1(1'b0),
    .sel(FIFO_EMPTY),
    .o(LCD_B[3]));  // source/VGAMod.v(93)
  binary_mux_s1_w1 \D1/mux7_b4  (
    .i0(FIFO_DO[1]),
    .i1(1'b0),
    .sel(FIFO_EMPTY),
    .o(LCD_B[4]));  // source/VGAMod.v(93)
  binary_mux_s1_w1 \D1/mux7_b5  (
    .i0(FIFO_DO[2]),
    .i1(1'b0),
    .sel(FIFO_EMPTY),
    .o(LCD_B[5]));  // source/VGAMod.v(93)
  binary_mux_s1_w1 \D1/mux7_b6  (
    .i0(FIFO_DO[3]),
    .i1(1'b0),
    .sel(FIFO_EMPTY),
    .o(LCD_B[6]));  // source/VGAMod.v(93)
  binary_mux_s1_w1 \D1/mux7_b7  (
    .i0(FIFO_DO[4]),
    .i1(1'b0),
    .sel(FIFO_EMPTY),
    .o(LCD_B[7]));  // source/VGAMod.v(93)
  not \D1/n1_inv  (\D1/n1_neg , \D1/n1 );
  not \D1/n3_inv  (\D1/n3_neg , \D1/n3 );
  reg_ar_as_w1 \D1/reg0_b0  (
    .clk(LCD_CLK),
    .d(\D1/n8 [0]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/PixelCount [0]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg0_b1  (
    .clk(LCD_CLK),
    .d(\D1/n8 [1]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/PixelCount [1]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg0_b10  (
    .clk(LCD_CLK),
    .d(\D1/n8 [10]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/PixelCount [10]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg0_b11  (
    .clk(LCD_CLK),
    .d(\D1/n8 [11]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/PixelCount [11]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg0_b12  (
    .clk(LCD_CLK),
    .d(\D1/n8 [12]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/PixelCount [12]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg0_b13  (
    .clk(LCD_CLK),
    .d(\D1/n8 [13]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/PixelCount [13]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg0_b14  (
    .clk(LCD_CLK),
    .d(\D1/n8 [14]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/PixelCount [14]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg0_b15  (
    .clk(LCD_CLK),
    .d(\D1/n8 [15]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/PixelCount [15]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg0_b2  (
    .clk(LCD_CLK),
    .d(\D1/n8 [2]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/PixelCount [2]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg0_b3  (
    .clk(LCD_CLK),
    .d(\D1/n8 [3]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/PixelCount [3]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg0_b4  (
    .clk(LCD_CLK),
    .d(\D1/n8 [4]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/PixelCount [4]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg0_b5  (
    .clk(LCD_CLK),
    .d(\D1/n8 [5]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/PixelCount [5]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg0_b6  (
    .clk(LCD_CLK),
    .d(\D1/n8 [6]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/PixelCount [6]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg0_b7  (
    .clk(LCD_CLK),
    .d(\D1/n8 [7]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/PixelCount [7]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg0_b8  (
    .clk(LCD_CLK),
    .d(\D1/n8 [8]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/PixelCount [8]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg0_b9  (
    .clk(LCD_CLK),
    .d(\D1/n8 [9]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/PixelCount [9]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg1_b0  (
    .clk(LCD_CLK),
    .d(\D1/n9 [0]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/LineCount [0]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg1_b1  (
    .clk(LCD_CLK),
    .d(\D1/n9 [1]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/LineCount [1]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg1_b10  (
    .clk(LCD_CLK),
    .d(\D1/n9 [10]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/LineCount [10]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg1_b11  (
    .clk(LCD_CLK),
    .d(\D1/n9 [11]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/LineCount [11]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg1_b12  (
    .clk(LCD_CLK),
    .d(\D1/n9 [12]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/LineCount [12]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg1_b13  (
    .clk(LCD_CLK),
    .d(\D1/n9 [13]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/LineCount [13]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg1_b14  (
    .clk(LCD_CLK),
    .d(\D1/n9 [14]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/LineCount [14]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg1_b15  (
    .clk(LCD_CLK),
    .d(\D1/n9 [15]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/LineCount [15]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg1_b2  (
    .clk(LCD_CLK),
    .d(\D1/n9 [2]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/LineCount [2]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg1_b3  (
    .clk(LCD_CLK),
    .d(\D1/n9 [3]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/LineCount [3]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg1_b4  (
    .clk(LCD_CLK),
    .d(\D1/n9 [4]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/LineCount [4]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg1_b5  (
    .clk(LCD_CLK),
    .d(\D1/n9 [5]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/LineCount [5]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg1_b6  (
    .clk(LCD_CLK),
    .d(\D1/n9 [6]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/LineCount [6]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg1_b7  (
    .clk(LCD_CLK),
    .d(\D1/n9 [7]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/LineCount [7]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg1_b8  (
    .clk(LCD_CLK),
    .d(\D1/n9 [8]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/LineCount [8]));  // source/VGAMod.v(59)
  reg_ar_as_w1 \D1/reg1_b9  (
    .clk(LCD_CLK),
    .d(\D1/n9 [9]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\D1/LineCount [9]));  // source/VGAMod.v(59)
  and \D1/u10  (\D1/n21 , \D1/n19 , \D1/n20 );  // source/VGAMod.v(85)
  and \D1/u11  (LCD_DEN, \D1/n21 , \D1/n22 );  // source/VGAMod.v(86)
  and \D1/u13  (\D1/n23 , \D1/n20 , \D1/n22 );  // source/VGAMod.v(89)
  and \D1/u14  (\D1/n25 , \D1/n23 , \D1/n24 );  // source/VGAMod.v(89)
  and \D1/u15  (\D1/n27 , \D1/n25 , \D1/n26 );  // source/VGAMod.v(89)
  not \D1/u16  (\D1/n28 , FIFO_EMPTY);  // source/VGAMod.v(89)
  and \D1/u17  (FIFO_RE, \D1/n27 , \D1/n28 );  // source/VGAMod.v(89)
  not \D1/u2  (\D1/n0 , nRST);  // source/VGAMod.v(45)
  not \D1/u3  (\D1/n10 , \D1/FrameFlag );  // source/VGAMod.v(69)
  AL_MUX \D1/u5  (
    .i0(\D1/FrameFlag ),
    .i1(1'b1),
    .sel(\D1/n10 ),
    .o(\D1/n12 ));  // source/VGAMod.v(71)
  AL_MUX \D1/u6  (
    .i0(\D1/n12 ),
    .i1(1'b0),
    .sel(\D1/n3 ),
    .o(\D1/n13 ));  // source/VGAMod.v(71)
  and \D1/u7  (\D1/n16 , \D1/n14 , \D1/n15 );  // source/VGAMod.v(74)
  not \D1/u8  (LCD_HYNC, \D1/n16 );  // source/VGAMod.v(74)
  and \D1/u9  (\D1/n19 , \D1/n17 , \D1/n18 );  // source/VGAMod.v(84)
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
    \FIFO0/logic_fifo  (
    .clkr(LCD_CLK),
    .clkw(CLK_100M),
    .csr(3'b111),
    .csw(3'b111),
    .di({FIFO_DI[5],FIFO_DI[5],FIFO_DI[5],FIFO_DI[3],FIFO_DI[3],FIFO_DI[0],FIFO_DI[0],FIFO_DI[0]}),
    .ore(1'b0),
    .re(FIFO_RE),
    .rst(\D1/n0 ),
    .we(\U4/IDELWe ),
    .do(FIFO_DO),
    .empty_flag(FIFO_EMPTY));  // al_ip/DisFIFO.v(41)
  not LCD_SYNC_inv (LCD_SYNC_neg, LCD_SYNC);
  EF2_LOGIC_BUFG \PLL1/bufg_feedback  (
    .i(\PLL1/clk0_buf ),
    .o(CLK_100M));  // al_ip/LCDPLL.v(41)
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
    .refclk(clk),
    .reset(1'b0),
    .ssc_en(1'b0),
    .stdby(1'b0),
    .clkc({open_n3,open_n4,open_n5,open_n6,open_n7,LCD_CLK,\PLL1/clk0_buf }));  // al_ip/LCDPLL.v(93)
  reg_ar_as_w1 \U1/CLK_OUT_reg  (
    .clk(LCD_CLK),
    .d(\U1/n2 ),
    .en(\U1/n1 ),
    .reset(1'b0),
    .set(~nRST),
    .q(LED[0]));  // source/CLK_MOD.v(32)
  add_pu32_pu32_o32 \U1/add0  (
    .i0(\U1/Count ),
    .i1(32'b00000000000000000000000000000001),
    .o(\U1/n3 ));  // source/CLK_MOD.v(32)
  eq_w32 \U1/eq0  (
    .i0(\U1/Count ),
    .i1(32'b00000001111101111000101001000000),
    .o(\U1/n1 ));  // source/CLK_MOD.v(26)
  binary_mux_s1_w1 \U1/mux0_b0  (
    .i0(\U1/n3 [0]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [0]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b1  (
    .i0(\U1/n3 [1]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [1]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b10  (
    .i0(\U1/n3 [10]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [10]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b11  (
    .i0(\U1/n3 [11]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [11]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b12  (
    .i0(\U1/n3 [12]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [12]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b13  (
    .i0(\U1/n3 [13]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [13]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b14  (
    .i0(\U1/n3 [14]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [14]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b15  (
    .i0(\U1/n3 [15]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [15]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b16  (
    .i0(\U1/n3 [16]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [16]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b17  (
    .i0(\U1/n3 [17]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [17]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b18  (
    .i0(\U1/n3 [18]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [18]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b19  (
    .i0(\U1/n3 [19]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [19]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b2  (
    .i0(\U1/n3 [2]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [2]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b20  (
    .i0(\U1/n3 [20]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [20]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b21  (
    .i0(\U1/n3 [21]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [21]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b22  (
    .i0(\U1/n3 [22]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [22]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b23  (
    .i0(\U1/n3 [23]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [23]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b24  (
    .i0(\U1/n3 [24]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [24]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b25  (
    .i0(\U1/n3 [25]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [25]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b26  (
    .i0(\U1/n3 [26]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [26]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b27  (
    .i0(\U1/n3 [27]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [27]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b28  (
    .i0(\U1/n3 [28]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [28]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b29  (
    .i0(\U1/n3 [29]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [29]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b3  (
    .i0(\U1/n3 [3]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [3]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b30  (
    .i0(\U1/n3 [30]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [30]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b31  (
    .i0(\U1/n3 [31]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [31]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b4  (
    .i0(\U1/n3 [4]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [4]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b5  (
    .i0(\U1/n3 [5]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [5]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b6  (
    .i0(\U1/n3 [6]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [6]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b7  (
    .i0(\U1/n3 [7]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [7]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b8  (
    .i0(\U1/n3 [8]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [8]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U1/mux0_b9  (
    .i0(\U1/n3 [9]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n5 [9]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b0  (
    .clk(LCD_CLK),
    .d(\U1/n5 [0]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [0]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b1  (
    .clk(LCD_CLK),
    .d(\U1/n5 [1]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [1]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b10  (
    .clk(LCD_CLK),
    .d(\U1/n5 [10]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [10]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b11  (
    .clk(LCD_CLK),
    .d(\U1/n5 [11]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [11]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b12  (
    .clk(LCD_CLK),
    .d(\U1/n5 [12]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [12]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b13  (
    .clk(LCD_CLK),
    .d(\U1/n5 [13]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [13]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b14  (
    .clk(LCD_CLK),
    .d(\U1/n5 [14]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [14]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b15  (
    .clk(LCD_CLK),
    .d(\U1/n5 [15]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [15]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b16  (
    .clk(LCD_CLK),
    .d(\U1/n5 [16]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [16]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b17  (
    .clk(LCD_CLK),
    .d(\U1/n5 [17]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [17]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b18  (
    .clk(LCD_CLK),
    .d(\U1/n5 [18]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [18]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b19  (
    .clk(LCD_CLK),
    .d(\U1/n5 [19]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [19]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b2  (
    .clk(LCD_CLK),
    .d(\U1/n5 [2]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [2]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b20  (
    .clk(LCD_CLK),
    .d(\U1/n5 [20]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [20]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b21  (
    .clk(LCD_CLK),
    .d(\U1/n5 [21]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [21]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b22  (
    .clk(LCD_CLK),
    .d(\U1/n5 [22]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [22]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b23  (
    .clk(LCD_CLK),
    .d(\U1/n5 [23]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [23]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b24  (
    .clk(LCD_CLK),
    .d(\U1/n5 [24]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [24]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b25  (
    .clk(LCD_CLK),
    .d(\U1/n5 [25]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [25]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b26  (
    .clk(LCD_CLK),
    .d(\U1/n5 [26]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [26]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b27  (
    .clk(LCD_CLK),
    .d(\U1/n5 [27]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [27]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b28  (
    .clk(LCD_CLK),
    .d(\U1/n5 [28]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [28]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b29  (
    .clk(LCD_CLK),
    .d(\U1/n5 [29]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [29]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b3  (
    .clk(LCD_CLK),
    .d(\U1/n5 [3]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [3]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b30  (
    .clk(LCD_CLK),
    .d(\U1/n5 [30]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [30]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b31  (
    .clk(LCD_CLK),
    .d(\U1/n5 [31]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [31]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b4  (
    .clk(LCD_CLK),
    .d(\U1/n5 [4]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [4]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b5  (
    .clk(LCD_CLK),
    .d(\U1/n5 [5]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [5]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b6  (
    .clk(LCD_CLK),
    .d(\U1/n5 [6]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [6]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b7  (
    .clk(LCD_CLK),
    .d(\U1/n5 [7]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [7]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b8  (
    .clk(LCD_CLK),
    .d(\U1/n5 [8]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [8]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U1/reg0_b9  (
    .clk(LCD_CLK),
    .d(\U1/n5 [9]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count [9]));  // source/CLK_MOD.v(32)
  not \U1/u3  (\U1/n2 , LED[0]);  // source/CLK_MOD.v(28)
  reg_ar_as_w1 \U2/CLK_OUT_reg  (
    .clk(clk),
    .d(\U2/n2 ),
    .en(\U2/n1 ),
    .reset(1'b0),
    .set(~nRST),
    .q(LED[1]));  // source/CLK_MOD.v(32)
  add_pu32_pu32_o32 \U2/add0  (
    .i0(\U2/Count ),
    .i1(32'b00000000000000000000000000000001),
    .o(\U2/n3 ));  // source/CLK_MOD.v(32)
  eq_w32 \U2/eq0  (
    .i0(\U2/Count ),
    .i1(32'b00000001011011100011011000000000),
    .o(\U2/n1 ));  // source/CLK_MOD.v(26)
  binary_mux_s1_w1 \U2/mux0_b0  (
    .i0(\U2/n3 [0]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [0]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b1  (
    .i0(\U2/n3 [1]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [1]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b10  (
    .i0(\U2/n3 [10]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [10]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b11  (
    .i0(\U2/n3 [11]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [11]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b12  (
    .i0(\U2/n3 [12]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [12]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b13  (
    .i0(\U2/n3 [13]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [13]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b14  (
    .i0(\U2/n3 [14]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [14]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b15  (
    .i0(\U2/n3 [15]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [15]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b16  (
    .i0(\U2/n3 [16]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [16]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b17  (
    .i0(\U2/n3 [17]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [17]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b18  (
    .i0(\U2/n3 [18]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [18]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b19  (
    .i0(\U2/n3 [19]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [19]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b2  (
    .i0(\U2/n3 [2]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [2]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b20  (
    .i0(\U2/n3 [20]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [20]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b21  (
    .i0(\U2/n3 [21]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [21]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b22  (
    .i0(\U2/n3 [22]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [22]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b23  (
    .i0(\U2/n3 [23]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [23]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b24  (
    .i0(\U2/n3 [24]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [24]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b25  (
    .i0(\U2/n3 [25]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [25]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b26  (
    .i0(\U2/n3 [26]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [26]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b27  (
    .i0(\U2/n3 [27]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [27]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b28  (
    .i0(\U2/n3 [28]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [28]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b29  (
    .i0(\U2/n3 [29]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [29]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b3  (
    .i0(\U2/n3 [3]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [3]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b30  (
    .i0(\U2/n3 [30]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [30]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b31  (
    .i0(\U2/n3 [31]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [31]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b4  (
    .i0(\U2/n3 [4]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [4]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b5  (
    .i0(\U2/n3 [5]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [5]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b6  (
    .i0(\U2/n3 [6]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [6]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b7  (
    .i0(\U2/n3 [7]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [7]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b8  (
    .i0(\U2/n3 [8]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [8]));  // source/CLK_MOD.v(32)
  binary_mux_s1_w1 \U2/mux0_b9  (
    .i0(\U2/n3 [9]),
    .i1(1'b0),
    .sel(\U2/n1 ),
    .o(\U2/n5 [9]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b0  (
    .clk(clk),
    .d(\U2/n5 [0]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [0]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b1  (
    .clk(clk),
    .d(\U2/n5 [1]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [1]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b10  (
    .clk(clk),
    .d(\U2/n5 [10]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [10]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b11  (
    .clk(clk),
    .d(\U2/n5 [11]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [11]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b12  (
    .clk(clk),
    .d(\U2/n5 [12]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [12]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b13  (
    .clk(clk),
    .d(\U2/n5 [13]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [13]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b14  (
    .clk(clk),
    .d(\U2/n5 [14]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [14]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b15  (
    .clk(clk),
    .d(\U2/n5 [15]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [15]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b16  (
    .clk(clk),
    .d(\U2/n5 [16]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [16]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b17  (
    .clk(clk),
    .d(\U2/n5 [17]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [17]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b18  (
    .clk(clk),
    .d(\U2/n5 [18]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [18]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b19  (
    .clk(clk),
    .d(\U2/n5 [19]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [19]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b2  (
    .clk(clk),
    .d(\U2/n5 [2]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [2]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b20  (
    .clk(clk),
    .d(\U2/n5 [20]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [20]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b21  (
    .clk(clk),
    .d(\U2/n5 [21]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [21]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b22  (
    .clk(clk),
    .d(\U2/n5 [22]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [22]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b23  (
    .clk(clk),
    .d(\U2/n5 [23]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [23]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b24  (
    .clk(clk),
    .d(\U2/n5 [24]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [24]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b25  (
    .clk(clk),
    .d(\U2/n5 [25]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [25]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b26  (
    .clk(clk),
    .d(\U2/n5 [26]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [26]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b27  (
    .clk(clk),
    .d(\U2/n5 [27]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [27]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b28  (
    .clk(clk),
    .d(\U2/n5 [28]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [28]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b29  (
    .clk(clk),
    .d(\U2/n5 [29]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [29]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b3  (
    .clk(clk),
    .d(\U2/n5 [3]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [3]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b30  (
    .clk(clk),
    .d(\U2/n5 [30]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [30]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b31  (
    .clk(clk),
    .d(\U2/n5 [31]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [31]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b4  (
    .clk(clk),
    .d(\U2/n5 [4]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [4]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b5  (
    .clk(clk),
    .d(\U2/n5 [5]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [5]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b6  (
    .clk(clk),
    .d(\U2/n5 [6]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [6]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b7  (
    .clk(clk),
    .d(\U2/n5 [7]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [7]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b8  (
    .clk(clk),
    .d(\U2/n5 [8]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [8]));  // source/CLK_MOD.v(32)
  reg_ar_as_w1 \U2/reg0_b9  (
    .clk(clk),
    .d(\U2/n5 [9]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U2/Count [9]));  // source/CLK_MOD.v(32)
  not \U2/u3  (\U2/n2 , LED[1]);  // source/CLK_MOD.v(28)
  add_pu16_pu16_o16 \U4/add0  (
    .i0(\U4/AddrCtrl ),
    .i1(16'b0000000000000001),
    .o(\U4/n19 ));  // source/LCD8080Ctrl.v(102)
  eq_w1 \U4/eq4  (
    .i0(\U4/AddrCtrl [0]),
    .i1(1'b0),
    .o(\U4/n27 ));  // source/LCD8080Ctrl.v(108)
  eq_w1 \U4/eq5  (
    .i0(\U4/AddrCtrl [0]),
    .i1(1'b1),
    .o(\U4/n30 ));  // source/LCD8080Ctrl.v(109)
  lt_u16_u16 \U4/lt0  (
    .ci(1'b0),
    .i0(\U4/AddrCtrl ),
    .i1(16'b0000011111010000),
    .o(\U4/n18 ));  // source/LCD8080Ctrl.v(101)
  lt_u16_u16 \U4/lt1  (
    .ci(1'b0),
    .i0(\U4/AddrCtrl ),
    .i1(16'b0000011001000000),
    .o(\U4/n24 ));  // source/LCD8080Ctrl.v(106)
  lt_u16_u16 \U4/lt2  (
    .ci(1'b0),
    .i0(\U4/AddrCtrl ),
    .i1(16'b0000000110010000),
    .o(\U4/n28 ));  // source/LCD8080Ctrl.v(108)
  lt_u16_u16 \U4/lt3  (
    .ci(1'b1),
    .i0(16'b0000000110010000),
    .i1(\U4/AddrCtrl ),
    .o(\U4/n32 ));  // source/LCD8080Ctrl.v(110)
  lt_u16_u16 \U4/lt4  (
    .ci(1'b0),
    .i0(\U4/AddrCtrl ),
    .i1(16'b0000001100100000),
    .o(\U4/n34 ));  // source/LCD8080Ctrl.v(110)
  lt_u16_u16 \U4/lt5  (
    .ci(1'b1),
    .i0(16'b0000001100100000),
    .i1(\U4/AddrCtrl ),
    .o(\U4/n38 ));  // source/LCD8080Ctrl.v(112)
  lt_u16_u16 \U4/lt6  (
    .ci(1'b0),
    .i0(\U4/AddrCtrl ),
    .i1(16'b0000010010110000),
    .o(\U4/n40 ));  // source/LCD8080Ctrl.v(112)
  lt_u16_u16 \U4/lt7  (
    .ci(1'b1),
    .i0(16'b0000010010110000),
    .i1(\U4/AddrCtrl ),
    .o(\U4/n44 ));  // source/LCD8080Ctrl.v(114)
  binary_mux_s1_w1 \U4/mux10_b3  (
    .i0(\U4/n52 [0]),
    .i1(1'b1),
    .sel(\U4/n41 ),
    .o(\U4/n53 [3]));  // source/LCD8080Ctrl.v(115)
  AL_MUX \U4/mux11_b0  (
    .i0(1'b0),
    .i1(\U4/n52 [0]),
    .sel(\U4/mux11_b0_sel_is_0_o ),
    .o(\U4/n54 [0]));
  and \U4/mux11_b0_sel_is_0  (\U4/mux11_b0_sel_is_0_o , \U4/n37_neg , \U4/n41_neg );
  binary_mux_s1_w1 \U4/mux11_b5  (
    .i0(\U4/n53 [3]),
    .i1(1'b1),
    .sel(\U4/n37 ),
    .o(\U4/n54 [5]));  // source/LCD8080Ctrl.v(115)
  AL_MUX \U4/mux12_b3  (
    .i0(1'b0),
    .i1(\U4/n53 [3]),
    .sel(\U4/mux12_b3_sel_is_0_o ),
    .o(\U4/n55 [3]));
  and \U4/mux12_b3_sel_is_0  (\U4/mux12_b3_sel_is_0_o , \U4/n35_neg , \U4/n37_neg );
  AL_MUX \U4/mux13_b0  (
    .i0(1'b1),
    .i1(\U4/n54 [0]),
    .sel(\U4/mux13_b0_sel_is_0_o ),
    .o(\U4/n56 [0]));
  and \U4/mux13_b0_sel_is_0  (\U4/mux13_b0_sel_is_0_o , \U4/n31_neg , \U4/n35_neg );
  binary_mux_s1_w1 \U4/mux13_b3  (
    .i0(\U4/n55 [3]),
    .i1(1'b1),
    .sel(\U4/n31 ),
    .o(\U4/n56 [3]));  // source/LCD8080Ctrl.v(115)
  and \U4/mux14_b5_sel_is_2  (\U4/mux14_b5_sel_is_2_o , \U4/n29_neg , \U4/mux13_b0_sel_is_0_o );
  AL_MUX \U4/mux4_b0  (
    .i0(1'b0),
    .i1(\U4/n56 [0]),
    .sel(\U4/n29_neg ),
    .o(FIFO_DI[0]));
  AL_MUX \U4/mux4_b3  (
    .i0(1'b0),
    .i1(\U4/n56 [3]),
    .sel(\U4/n29_neg ),
    .o(FIFO_DI[3]));
  AL_MUX \U4/mux4_b5  (
    .i0(1'b0),
    .i1(\U4/n54 [5]),
    .sel(\U4/mux14_b5_sel_is_2_o ),
    .o(FIFO_DI[5]));
  binary_mux_s1_w1 \U4/mux5_b0  (
    .i0(\U4/AddrCtrl [0]),
    .i1(\U4/n19 [0]),
    .sel(\U4/n18 ),
    .o(\U4/n20 [0]));  // source/LCD8080Ctrl.v(103)
  binary_mux_s1_w1 \U4/mux5_b1  (
    .i0(\U4/AddrCtrl [1]),
    .i1(\U4/n19 [1]),
    .sel(\U4/n18 ),
    .o(\U4/n20 [1]));  // source/LCD8080Ctrl.v(103)
  binary_mux_s1_w1 \U4/mux5_b10  (
    .i0(\U4/AddrCtrl [10]),
    .i1(\U4/n19 [10]),
    .sel(\U4/n18 ),
    .o(\U4/n20 [10]));  // source/LCD8080Ctrl.v(103)
  binary_mux_s1_w1 \U4/mux5_b11  (
    .i0(\U4/AddrCtrl [11]),
    .i1(\U4/n19 [11]),
    .sel(\U4/n18 ),
    .o(\U4/n20 [11]));  // source/LCD8080Ctrl.v(103)
  binary_mux_s1_w1 \U4/mux5_b12  (
    .i0(\U4/AddrCtrl [12]),
    .i1(\U4/n19 [12]),
    .sel(\U4/n18 ),
    .o(\U4/n20 [12]));  // source/LCD8080Ctrl.v(103)
  binary_mux_s1_w1 \U4/mux5_b13  (
    .i0(\U4/AddrCtrl [13]),
    .i1(\U4/n19 [13]),
    .sel(\U4/n18 ),
    .o(\U4/n20 [13]));  // source/LCD8080Ctrl.v(103)
  binary_mux_s1_w1 \U4/mux5_b14  (
    .i0(\U4/AddrCtrl [14]),
    .i1(\U4/n19 [14]),
    .sel(\U4/n18 ),
    .o(\U4/n20 [14]));  // source/LCD8080Ctrl.v(103)
  binary_mux_s1_w1 \U4/mux5_b15  (
    .i0(\U4/AddrCtrl [15]),
    .i1(\U4/n19 [15]),
    .sel(\U4/n18 ),
    .o(\U4/n20 [15]));  // source/LCD8080Ctrl.v(103)
  binary_mux_s1_w1 \U4/mux5_b2  (
    .i0(\U4/AddrCtrl [2]),
    .i1(\U4/n19 [2]),
    .sel(\U4/n18 ),
    .o(\U4/n20 [2]));  // source/LCD8080Ctrl.v(103)
  binary_mux_s1_w1 \U4/mux5_b3  (
    .i0(\U4/AddrCtrl [3]),
    .i1(\U4/n19 [3]),
    .sel(\U4/n18 ),
    .o(\U4/n20 [3]));  // source/LCD8080Ctrl.v(103)
  binary_mux_s1_w1 \U4/mux5_b4  (
    .i0(\U4/AddrCtrl [4]),
    .i1(\U4/n19 [4]),
    .sel(\U4/n18 ),
    .o(\U4/n20 [4]));  // source/LCD8080Ctrl.v(103)
  binary_mux_s1_w1 \U4/mux5_b5  (
    .i0(\U4/AddrCtrl [5]),
    .i1(\U4/n19 [5]),
    .sel(\U4/n18 ),
    .o(\U4/n20 [5]));  // source/LCD8080Ctrl.v(103)
  binary_mux_s1_w1 \U4/mux5_b6  (
    .i0(\U4/AddrCtrl [6]),
    .i1(\U4/n19 [6]),
    .sel(\U4/n18 ),
    .o(\U4/n20 [6]));  // source/LCD8080Ctrl.v(103)
  binary_mux_s1_w1 \U4/mux5_b7  (
    .i0(\U4/AddrCtrl [7]),
    .i1(\U4/n19 [7]),
    .sel(\U4/n18 ),
    .o(\U4/n20 [7]));  // source/LCD8080Ctrl.v(103)
  binary_mux_s1_w1 \U4/mux5_b8  (
    .i0(\U4/AddrCtrl [8]),
    .i1(\U4/n19 [8]),
    .sel(\U4/n18 ),
    .o(\U4/n20 [8]));  // source/LCD8080Ctrl.v(103)
  binary_mux_s1_w1 \U4/mux5_b9  (
    .i0(\U4/AddrCtrl [9]),
    .i1(\U4/n19 [9]),
    .sel(\U4/n18 ),
    .o(\U4/n20 [9]));  // source/LCD8080Ctrl.v(103)
  AL_MUX \U4/mux7_b0  (
    .i0(1'b0),
    .i1(\U4/n20 [0]),
    .sel(\U4/mux7_b0_sel_is_0_o ),
    .o(\U4/n22 [0]));
  and \U4/mux7_b0_sel_is_0  (\U4/mux7_b0_sel_is_0_o , LCD_SYNC_neg, \D1/n16 );
  AL_MUX \U4/mux7_b1  (
    .i0(1'b0),
    .i1(\U4/n20 [1]),
    .sel(\U4/mux7_b0_sel_is_0_o ),
    .o(\U4/n22 [1]));
  AL_MUX \U4/mux7_b10  (
    .i0(1'b0),
    .i1(\U4/n20 [10]),
    .sel(\U4/mux7_b0_sel_is_0_o ),
    .o(\U4/n22 [10]));
  AL_MUX \U4/mux7_b11  (
    .i0(1'b0),
    .i1(\U4/n20 [11]),
    .sel(\U4/mux7_b0_sel_is_0_o ),
    .o(\U4/n22 [11]));
  AL_MUX \U4/mux7_b12  (
    .i0(1'b0),
    .i1(\U4/n20 [12]),
    .sel(\U4/mux7_b0_sel_is_0_o ),
    .o(\U4/n22 [12]));
  AL_MUX \U4/mux7_b13  (
    .i0(1'b0),
    .i1(\U4/n20 [13]),
    .sel(\U4/mux7_b0_sel_is_0_o ),
    .o(\U4/n22 [13]));
  AL_MUX \U4/mux7_b14  (
    .i0(1'b0),
    .i1(\U4/n20 [14]),
    .sel(\U4/mux7_b0_sel_is_0_o ),
    .o(\U4/n22 [14]));
  AL_MUX \U4/mux7_b15  (
    .i0(1'b0),
    .i1(\U4/n20 [15]),
    .sel(\U4/mux7_b0_sel_is_0_o ),
    .o(\U4/n22 [15]));
  AL_MUX \U4/mux7_b2  (
    .i0(1'b0),
    .i1(\U4/n20 [2]),
    .sel(\U4/mux7_b0_sel_is_0_o ),
    .o(\U4/n22 [2]));
  AL_MUX \U4/mux7_b3  (
    .i0(1'b0),
    .i1(\U4/n20 [3]),
    .sel(\U4/mux7_b0_sel_is_0_o ),
    .o(\U4/n22 [3]));
  AL_MUX \U4/mux7_b4  (
    .i0(1'b0),
    .i1(\U4/n20 [4]),
    .sel(\U4/mux7_b0_sel_is_0_o ),
    .o(\U4/n22 [4]));
  AL_MUX \U4/mux7_b5  (
    .i0(1'b0),
    .i1(\U4/n20 [5]),
    .sel(\U4/mux7_b0_sel_is_0_o ),
    .o(\U4/n22 [5]));
  AL_MUX \U4/mux7_b6  (
    .i0(1'b0),
    .i1(\U4/n20 [6]),
    .sel(\U4/mux7_b0_sel_is_0_o ),
    .o(\U4/n22 [6]));
  AL_MUX \U4/mux7_b7  (
    .i0(1'b0),
    .i1(\U4/n20 [7]),
    .sel(\U4/mux7_b0_sel_is_0_o ),
    .o(\U4/n22 [7]));
  AL_MUX \U4/mux7_b8  (
    .i0(1'b0),
    .i1(\U4/n20 [8]),
    .sel(\U4/mux7_b0_sel_is_0_o ),
    .o(\U4/n22 [8]));
  AL_MUX \U4/mux7_b9  (
    .i0(1'b0),
    .i1(\U4/n20 [9]),
    .sel(\U4/mux7_b0_sel_is_0_o ),
    .o(\U4/n22 [9]));
  binary_mux_s1_w1 \U4/mux8_b0  (
    .i0(\U4/n50 ),
    .i1(1'b1),
    .sel(\U4/n46 ),
    .o(\U4/n51 [0]));  // source/LCD8080Ctrl.v(115)
  binary_mux_s1_w1 \U4/mux9_b0  (
    .i0(\U4/n51 [0]),
    .i1(1'b0),
    .sel(\U4/n43 ),
    .o(\U4/n52 [0]));  // source/LCD8080Ctrl.v(115)
  not \U4/n29_inv  (\U4/n29_neg , \U4/n29 );
  not \U4/n31_inv  (\U4/n31_neg , \U4/n31 );
  not \U4/n35_inv  (\U4/n35_neg , \U4/n35 );
  not \U4/n37_inv  (\U4/n37_neg , \U4/n37 );
  not \U4/n41_inv  (\U4/n41_neg , \U4/n41 );
  reg_ar_as_w1 \U4/reg2_b0  (
    .clk(CLK_100M),
    .d(\U4/n22 [0]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U4/AddrCtrl [0]));  // source/LCD8080Ctrl.v(103)
  reg_ar_as_w1 \U4/reg2_b1  (
    .clk(CLK_100M),
    .d(\U4/n22 [1]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U4/AddrCtrl [1]));  // source/LCD8080Ctrl.v(103)
  reg_ar_as_w1 \U4/reg2_b10  (
    .clk(CLK_100M),
    .d(\U4/n22 [10]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U4/AddrCtrl [10]));  // source/LCD8080Ctrl.v(103)
  reg_ar_as_w1 \U4/reg2_b11  (
    .clk(CLK_100M),
    .d(\U4/n22 [11]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U4/AddrCtrl [11]));  // source/LCD8080Ctrl.v(103)
  reg_ar_as_w1 \U4/reg2_b12  (
    .clk(CLK_100M),
    .d(\U4/n22 [12]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U4/AddrCtrl [12]));  // source/LCD8080Ctrl.v(103)
  reg_ar_as_w1 \U4/reg2_b13  (
    .clk(CLK_100M),
    .d(\U4/n22 [13]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U4/AddrCtrl [13]));  // source/LCD8080Ctrl.v(103)
  reg_ar_as_w1 \U4/reg2_b14  (
    .clk(CLK_100M),
    .d(\U4/n22 [14]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U4/AddrCtrl [14]));  // source/LCD8080Ctrl.v(103)
  reg_ar_as_w1 \U4/reg2_b15  (
    .clk(CLK_100M),
    .d(\U4/n22 [15]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U4/AddrCtrl [15]));  // source/LCD8080Ctrl.v(103)
  reg_ar_as_w1 \U4/reg2_b2  (
    .clk(CLK_100M),
    .d(\U4/n22 [2]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U4/AddrCtrl [2]));  // source/LCD8080Ctrl.v(103)
  reg_ar_as_w1 \U4/reg2_b3  (
    .clk(CLK_100M),
    .d(\U4/n22 [3]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U4/AddrCtrl [3]));  // source/LCD8080Ctrl.v(103)
  reg_ar_as_w1 \U4/reg2_b4  (
    .clk(CLK_100M),
    .d(\U4/n22 [4]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U4/AddrCtrl [4]));  // source/LCD8080Ctrl.v(103)
  reg_ar_as_w1 \U4/reg2_b5  (
    .clk(CLK_100M),
    .d(\U4/n22 [5]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U4/AddrCtrl [5]));  // source/LCD8080Ctrl.v(103)
  reg_ar_as_w1 \U4/reg2_b6  (
    .clk(CLK_100M),
    .d(\U4/n22 [6]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U4/AddrCtrl [6]));  // source/LCD8080Ctrl.v(103)
  reg_ar_as_w1 \U4/reg2_b7  (
    .clk(CLK_100M),
    .d(\U4/n22 [7]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U4/AddrCtrl [7]));  // source/LCD8080Ctrl.v(103)
  reg_ar_as_w1 \U4/reg2_b8  (
    .clk(CLK_100M),
    .d(\U4/n22 [8]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U4/AddrCtrl [8]));  // source/LCD8080Ctrl.v(103)
  reg_ar_as_w1 \U4/reg2_b9  (
    .clk(CLK_100M),
    .d(\U4/n22 [9]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U4/AddrCtrl [9]));  // source/LCD8080Ctrl.v(103)
  and \U4/u15  (\U4/n25 , \U4/n24 , LCD_SYNC_neg);  // source/LCD8080Ctrl.v(106)
  and \U4/u17  (\U4/IDELWe , \U4/n25 , \D1/n16 );  // source/LCD8080Ctrl.v(106)
  and \U4/u18  (\U4/n29 , \U4/n27 , \U4/n28 );  // source/LCD8080Ctrl.v(108)
  and \U4/u19  (\U4/n31 , \U4/n30 , \U4/n28 );  // source/LCD8080Ctrl.v(109)
  and \U4/u20  (\U4/n33 , \U4/n27 , \U4/n32 );  // source/LCD8080Ctrl.v(110)
  and \U4/u21  (\U4/n35 , \U4/n33 , \U4/n34 );  // source/LCD8080Ctrl.v(110)
  and \U4/u22  (\U4/n36 , \U4/n30 , \U4/n32 );  // source/LCD8080Ctrl.v(111)
  and \U4/u23  (\U4/n37 , \U4/n36 , \U4/n34 );  // source/LCD8080Ctrl.v(111)
  and \U4/u24  (\U4/n39 , \U4/n27 , \U4/n38 );  // source/LCD8080Ctrl.v(112)
  and \U4/u25  (\U4/n41 , \U4/n39 , \U4/n40 );  // source/LCD8080Ctrl.v(112)
  and \U4/u26  (\U4/n42 , \U4/n30 , \U4/n38 );  // source/LCD8080Ctrl.v(113)
  and \U4/u27  (\U4/n43 , \U4/n42 , \U4/n40 );  // source/LCD8080Ctrl.v(113)
  and \U4/u28  (\U4/n45 , \U4/n27 , \U4/n44 );  // source/LCD8080Ctrl.v(114)
  and \U4/u29  (\U4/n46 , \U4/n45 , \U4/n24 );  // source/LCD8080Ctrl.v(114)
  and \U4/u32  (\U4/n48 , \U4/n30 , \U4/n44 );  // source/LCD8080Ctrl.v(115)
  and \U4/u34  (\U4/n50 , \U4/n48 , \U4/n24 );  // source/LCD8080Ctrl.v(115)

endmodule 

module reg_ar_as_w1
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input d;
  input en;
  input reset;
  input set;
  output q;

  parameter REGSET = "RESET";
  wire enout;

  AL_MUX u_en0 (
    .i0(q),
    .i1(d),
    .sel(en),
    .o(enout));
  AL_DFF #(
    .INI((REGSET == "SET") ? 1'b1 : 1'b0))
    u_seq0 (
    .clk(clk),
    .d(enout),
    .reset(reset),
    .set(set),
    .q(q));

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

  wire net_a0;
  wire net_a1;
  wire net_a10;
  wire net_a11;
  wire net_a12;
  wire net_a13;
  wire net_a14;
  wire net_a15;
  wire net_a2;
  wire net_a3;
  wire net_a4;
  wire net_a5;
  wire net_a6;
  wire net_a7;
  wire net_a8;
  wire net_a9;
  wire net_b0;
  wire net_b1;
  wire net_b10;
  wire net_b11;
  wire net_b12;
  wire net_b13;
  wire net_b14;
  wire net_b15;
  wire net_b2;
  wire net_b3;
  wire net_b4;
  wire net_b5;
  wire net_b6;
  wire net_b7;
  wire net_b8;
  wire net_b9;
  wire net_cout0;
  wire net_cout1;
  wire net_cout10;
  wire net_cout11;
  wire net_cout12;
  wire net_cout13;
  wire net_cout14;
  wire net_cout15;
  wire net_cout2;
  wire net_cout3;
  wire net_cout4;
  wire net_cout5;
  wire net_cout6;
  wire net_cout7;
  wire net_cout8;
  wire net_cout9;
  wire net_sum0;
  wire net_sum1;
  wire net_sum10;
  wire net_sum11;
  wire net_sum12;
  wire net_sum13;
  wire net_sum14;
  wire net_sum15;
  wire net_sum2;
  wire net_sum3;
  wire net_sum4;
  wire net_sum5;
  wire net_sum6;
  wire net_sum7;
  wire net_sum8;
  wire net_sum9;

  assign net_a15 = i0[15];
  assign net_a14 = i0[14];
  assign net_a13 = i0[13];
  assign net_a12 = i0[12];
  assign net_a11 = i0[11];
  assign net_a10 = i0[10];
  assign net_a9 = i0[9];
  assign net_a8 = i0[8];
  assign net_a7 = i0[7];
  assign net_a6 = i0[6];
  assign net_a5 = i0[5];
  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b15 = i1[15];
  assign net_b14 = i1[14];
  assign net_b13 = i1[13];
  assign net_b12 = i1[12];
  assign net_b11 = i1[11];
  assign net_b10 = i1[10];
  assign net_b9 = i1[9];
  assign net_b8 = i1[8];
  assign net_b7 = i1[7];
  assign net_b6 = i1[6];
  assign net_b5 = i1[5];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[15] = net_sum15;
  assign o[14] = net_sum14;
  assign o[13] = net_sum13;
  assign o[12] = net_sum12;
  assign o[11] = net_sum11;
  assign o[10] = net_sum10;
  assign o[9] = net_sum9;
  assign o[8] = net_sum8;
  assign o[7] = net_sum7;
  assign o[6] = net_sum6;
  assign o[5] = net_sum5;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD comp_0 (
    .a(net_a0),
    .b(net_b0),
    .c(1'b0),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD comp_1 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD comp_10 (
    .a(net_a10),
    .b(net_b10),
    .c(net_cout9),
    .cout(net_cout10),
    .sum(net_sum10));
  AL_FADD comp_11 (
    .a(net_a11),
    .b(net_b11),
    .c(net_cout10),
    .cout(net_cout11),
    .sum(net_sum11));
  AL_FADD comp_12 (
    .a(net_a12),
    .b(net_b12),
    .c(net_cout11),
    .cout(net_cout12),
    .sum(net_sum12));
  AL_FADD comp_13 (
    .a(net_a13),
    .b(net_b13),
    .c(net_cout12),
    .cout(net_cout13),
    .sum(net_sum13));
  AL_FADD comp_14 (
    .a(net_a14),
    .b(net_b14),
    .c(net_cout13),
    .cout(net_cout14),
    .sum(net_sum14));
  AL_FADD comp_15 (
    .a(net_a15),
    .b(net_b15),
    .c(net_cout14),
    .cout(net_cout15),
    .sum(net_sum15));
  AL_FADD comp_2 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD comp_3 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD comp_4 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  AL_FADD comp_5 (
    .a(net_a5),
    .b(net_b5),
    .c(net_cout4),
    .cout(net_cout5),
    .sum(net_sum5));
  AL_FADD comp_6 (
    .a(net_a6),
    .b(net_b6),
    .c(net_cout5),
    .cout(net_cout6),
    .sum(net_sum6));
  AL_FADD comp_7 (
    .a(net_a7),
    .b(net_b7),
    .c(net_cout6),
    .cout(net_cout7),
    .sum(net_sum7));
  AL_FADD comp_8 (
    .a(net_a8),
    .b(net_b8),
    .c(net_cout7),
    .cout(net_cout8),
    .sum(net_sum8));
  AL_FADD comp_9 (
    .a(net_a9),
    .b(net_b9),
    .c(net_cout8),
    .cout(net_cout9),
    .sum(net_sum9));

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

  wire \or_or_or_or_xor_i0[0_o ;
  wire \or_or_or_xor_i0[0]_i_o ;
  wire \or_or_or_xor_i0[8]_i_o ;
  wire \or_or_xor_i0[0]_i1[0_o ;
  wire \or_or_xor_i0[12]_i1[_o ;
  wire \or_or_xor_i0[4]_i1[4_o ;
  wire \or_or_xor_i0[8]_i1[8_o ;
  wire \or_xor_i0[0]_i1[0]_o_o ;
  wire \or_xor_i0[10]_i1[10]_o ;
  wire \or_xor_i0[12]_i1[12]_o ;
  wire \or_xor_i0[14]_i1[14]_o ;
  wire \or_xor_i0[2]_i1[2]_o_o ;
  wire \or_xor_i0[4]_i1[4]_o_o ;
  wire \or_xor_i0[6]_i1[6]_o_o ;
  wire \or_xor_i0[8]_i1[8]_o_o ;
  wire \xor_i0[0]_i1[0]_o ;
  wire \xor_i0[10]_i1[10]_o ;
  wire \xor_i0[11]_i1[11]_o ;
  wire \xor_i0[12]_i1[12]_o ;
  wire \xor_i0[13]_i1[13]_o ;
  wire \xor_i0[14]_i1[14]_o ;
  wire \xor_i0[15]_i1[15]_o ;
  wire \xor_i0[1]_i1[1]_o ;
  wire \xor_i0[2]_i1[2]_o ;
  wire \xor_i0[3]_i1[3]_o ;
  wire \xor_i0[4]_i1[4]_o ;
  wire \xor_i0[5]_i1[5]_o ;
  wire \xor_i0[6]_i1[6]_o ;
  wire \xor_i0[7]_i1[7]_o ;
  wire \xor_i0[8]_i1[8]_o ;
  wire \xor_i0[9]_i1[9]_o ;

  not none_diff (o, \or_or_or_or_xor_i0[0_o );
  or \or_or_or_or_xor_i0[0  (\or_or_or_or_xor_i0[0_o , \or_or_or_xor_i0[0]_i_o , \or_or_or_xor_i0[8]_i_o );
  or \or_or_or_xor_i0[0]_i  (\or_or_or_xor_i0[0]_i_o , \or_or_xor_i0[0]_i1[0_o , \or_or_xor_i0[4]_i1[4_o );
  or \or_or_or_xor_i0[8]_i  (\or_or_or_xor_i0[8]_i_o , \or_or_xor_i0[8]_i1[8_o , \or_or_xor_i0[12]_i1[_o );
  or \or_or_xor_i0[0]_i1[0  (\or_or_xor_i0[0]_i1[0_o , \or_xor_i0[0]_i1[0]_o_o , \or_xor_i0[2]_i1[2]_o_o );
  or \or_or_xor_i0[12]_i1[  (\or_or_xor_i0[12]_i1[_o , \or_xor_i0[12]_i1[12]_o , \or_xor_i0[14]_i1[14]_o );
  or \or_or_xor_i0[4]_i1[4  (\or_or_xor_i0[4]_i1[4_o , \or_xor_i0[4]_i1[4]_o_o , \or_xor_i0[6]_i1[6]_o_o );
  or \or_or_xor_i0[8]_i1[8  (\or_or_xor_i0[8]_i1[8_o , \or_xor_i0[8]_i1[8]_o_o , \or_xor_i0[10]_i1[10]_o );
  or \or_xor_i0[0]_i1[0]_o  (\or_xor_i0[0]_i1[0]_o_o , \xor_i0[0]_i1[0]_o , \xor_i0[1]_i1[1]_o );
  or \or_xor_i0[10]_i1[10]  (\or_xor_i0[10]_i1[10]_o , \xor_i0[10]_i1[10]_o , \xor_i0[11]_i1[11]_o );
  or \or_xor_i0[12]_i1[12]  (\or_xor_i0[12]_i1[12]_o , \xor_i0[12]_i1[12]_o , \xor_i0[13]_i1[13]_o );
  or \or_xor_i0[14]_i1[14]  (\or_xor_i0[14]_i1[14]_o , \xor_i0[14]_i1[14]_o , \xor_i0[15]_i1[15]_o );
  or \or_xor_i0[2]_i1[2]_o  (\or_xor_i0[2]_i1[2]_o_o , \xor_i0[2]_i1[2]_o , \xor_i0[3]_i1[3]_o );
  or \or_xor_i0[4]_i1[4]_o  (\or_xor_i0[4]_i1[4]_o_o , \xor_i0[4]_i1[4]_o , \xor_i0[5]_i1[5]_o );
  or \or_xor_i0[6]_i1[6]_o  (\or_xor_i0[6]_i1[6]_o_o , \xor_i0[6]_i1[6]_o , \xor_i0[7]_i1[7]_o );
  or \or_xor_i0[8]_i1[8]_o  (\or_xor_i0[8]_i1[8]_o_o , \xor_i0[8]_i1[8]_o , \xor_i0[9]_i1[9]_o );
  xor \xor_i0[0]_i1[0]  (\xor_i0[0]_i1[0]_o , i0[0], i1[0]);
  xor \xor_i0[10]_i1[10]  (\xor_i0[10]_i1[10]_o , i0[10], i1[10]);
  xor \xor_i0[11]_i1[11]  (\xor_i0[11]_i1[11]_o , i0[11], i1[11]);
  xor \xor_i0[12]_i1[12]  (\xor_i0[12]_i1[12]_o , i0[12], i1[12]);
  xor \xor_i0[13]_i1[13]  (\xor_i0[13]_i1[13]_o , i0[13], i1[13]);
  xor \xor_i0[14]_i1[14]  (\xor_i0[14]_i1[14]_o , i0[14], i1[14]);
  xor \xor_i0[15]_i1[15]  (\xor_i0[15]_i1[15]_o , i0[15], i1[15]);
  xor \xor_i0[1]_i1[1]  (\xor_i0[1]_i1[1]_o , i0[1], i1[1]);
  xor \xor_i0[2]_i1[2]  (\xor_i0[2]_i1[2]_o , i0[2], i1[2]);
  xor \xor_i0[3]_i1[3]  (\xor_i0[3]_i1[3]_o , i0[3], i1[3]);
  xor \xor_i0[4]_i1[4]  (\xor_i0[4]_i1[4]_o , i0[4], i1[4]);
  xor \xor_i0[5]_i1[5]  (\xor_i0[5]_i1[5]_o , i0[5], i1[5]);
  xor \xor_i0[6]_i1[6]  (\xor_i0[6]_i1[6]_o , i0[6], i1[6]);
  xor \xor_i0[7]_i1[7]  (\xor_i0[7]_i1[7]_o , i0[7], i1[7]);
  xor \xor_i0[8]_i1[8]  (\xor_i0[8]_i1[8]_o , i0[8], i1[8]);
  xor \xor_i0[9]_i1[9]  (\xor_i0[9]_i1[9]_o , i0[9], i1[9]);

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

  wire [15:0] diff;
  wire diff_12_15;
  wire diff_6_11;
  wire less_12_15;
  wire \less_12_15_inst/diff_0 ;
  wire \less_12_15_inst/diff_1 ;
  wire \less_12_15_inst/diff_2 ;
  wire \less_12_15_inst/diff_3 ;
  wire \less_12_15_inst/o_0 ;
  wire \less_12_15_inst/o_1 ;
  wire \less_12_15_inst/o_2 ;
  wire less_6_11;
  wire \less_6_11_inst/diff_0 ;
  wire \less_6_11_inst/diff_1 ;
  wire \less_6_11_inst/diff_2 ;
  wire \less_6_11_inst/diff_3 ;
  wire \less_6_11_inst/diff_4 ;
  wire \less_6_11_inst/diff_5 ;
  wire \less_6_11_inst/o_0 ;
  wire \less_6_11_inst/o_1 ;
  wire \less_6_11_inst/o_2 ;
  wire \less_6_11_inst/o_3 ;
  wire \less_6_11_inst/o_4 ;
  wire o_0;
  wire o_1;
  wire o_2;
  wire o_3;
  wire o_4;
  wire o_5;
  wire o_6;

  or any_diff_12_15 (diff_12_15, diff[12], diff[13], diff[14], diff[15]);
  or any_diff_6_11 (diff_6_11, diff[6], diff[7], diff[8], diff[9], diff[10], diff[11]);
  xor diff_0 (diff[0], i0[0], i1[0]);
  xor diff_1 (diff[1], i0[1], i1[1]);
  xor diff_10 (diff[10], i0[10], i1[10]);
  xor diff_11 (diff[11], i0[11], i1[11]);
  xor diff_12 (diff[12], i0[12], i1[12]);
  xor diff_13 (diff[13], i0[13], i1[13]);
  xor diff_14 (diff[14], i0[14], i1[14]);
  xor diff_15 (diff[15], i0[15], i1[15]);
  xor diff_2 (diff[2], i0[2], i1[2]);
  xor diff_3 (diff[3], i0[3], i1[3]);
  xor diff_4 (diff[4], i0[4], i1[4]);
  xor diff_5 (diff[5], i0[5], i1[5]);
  xor diff_6 (diff[6], i0[6], i1[6]);
  xor diff_7 (diff[7], i0[7], i1[7]);
  xor diff_8 (diff[8], i0[8], i1[8]);
  xor diff_9 (diff[9], i0[9], i1[9]);
  AL_MUX \less_12_15_inst/mux_0  (
    .i0(1'b0),
    .i1(i1[12]),
    .sel(\less_12_15_inst/diff_0 ),
    .o(\less_12_15_inst/o_0 ));
  AL_MUX \less_12_15_inst/mux_1  (
    .i0(\less_12_15_inst/o_0 ),
    .i1(i1[13]),
    .sel(\less_12_15_inst/diff_1 ),
    .o(\less_12_15_inst/o_1 ));
  AL_MUX \less_12_15_inst/mux_2  (
    .i0(\less_12_15_inst/o_1 ),
    .i1(i1[14]),
    .sel(\less_12_15_inst/diff_2 ),
    .o(\less_12_15_inst/o_2 ));
  AL_MUX \less_12_15_inst/mux_3  (
    .i0(\less_12_15_inst/o_2 ),
    .i1(i1[15]),
    .sel(\less_12_15_inst/diff_3 ),
    .o(less_12_15));
  xor \less_12_15_inst/xor_0  (\less_12_15_inst/diff_0 , i0[12], i1[12]);
  xor \less_12_15_inst/xor_1  (\less_12_15_inst/diff_1 , i0[13], i1[13]);
  xor \less_12_15_inst/xor_2  (\less_12_15_inst/diff_2 , i0[14], i1[14]);
  xor \less_12_15_inst/xor_3  (\less_12_15_inst/diff_3 , i0[15], i1[15]);
  AL_MUX \less_6_11_inst/mux_0  (
    .i0(1'b0),
    .i1(i1[6]),
    .sel(\less_6_11_inst/diff_0 ),
    .o(\less_6_11_inst/o_0 ));
  AL_MUX \less_6_11_inst/mux_1  (
    .i0(\less_6_11_inst/o_0 ),
    .i1(i1[7]),
    .sel(\less_6_11_inst/diff_1 ),
    .o(\less_6_11_inst/o_1 ));
  AL_MUX \less_6_11_inst/mux_2  (
    .i0(\less_6_11_inst/o_1 ),
    .i1(i1[8]),
    .sel(\less_6_11_inst/diff_2 ),
    .o(\less_6_11_inst/o_2 ));
  AL_MUX \less_6_11_inst/mux_3  (
    .i0(\less_6_11_inst/o_2 ),
    .i1(i1[9]),
    .sel(\less_6_11_inst/diff_3 ),
    .o(\less_6_11_inst/o_3 ));
  AL_MUX \less_6_11_inst/mux_4  (
    .i0(\less_6_11_inst/o_3 ),
    .i1(i1[10]),
    .sel(\less_6_11_inst/diff_4 ),
    .o(\less_6_11_inst/o_4 ));
  AL_MUX \less_6_11_inst/mux_5  (
    .i0(\less_6_11_inst/o_4 ),
    .i1(i1[11]),
    .sel(\less_6_11_inst/diff_5 ),
    .o(less_6_11));
  xor \less_6_11_inst/xor_0  (\less_6_11_inst/diff_0 , i0[6], i1[6]);
  xor \less_6_11_inst/xor_1  (\less_6_11_inst/diff_1 , i0[7], i1[7]);
  xor \less_6_11_inst/xor_2  (\less_6_11_inst/diff_2 , i0[8], i1[8]);
  xor \less_6_11_inst/xor_3  (\less_6_11_inst/diff_3 , i0[9], i1[9]);
  xor \less_6_11_inst/xor_4  (\less_6_11_inst/diff_4 , i0[10], i1[10]);
  xor \less_6_11_inst/xor_5  (\less_6_11_inst/diff_5 , i0[11], i1[11]);
  AL_MUX mux_0 (
    .i0(ci),
    .i1(i1[0]),
    .sel(diff[0]),
    .o(o_0));
  AL_MUX mux_1 (
    .i0(o_0),
    .i1(i1[1]),
    .sel(diff[1]),
    .o(o_1));
  AL_MUX mux_2 (
    .i0(o_1),
    .i1(i1[2]),
    .sel(diff[2]),
    .o(o_2));
  AL_MUX mux_3 (
    .i0(o_2),
    .i1(i1[3]),
    .sel(diff[3]),
    .o(o_3));
  AL_MUX mux_4 (
    .i0(o_3),
    .i1(i1[4]),
    .sel(diff[4]),
    .o(o_4));
  AL_MUX mux_5 (
    .i0(o_4),
    .i1(i1[5]),
    .sel(diff[5]),
    .o(o_5));
  AL_MUX mux_6 (
    .i0(o_5),
    .i1(less_6_11),
    .sel(diff_6_11),
    .o(o_6));
  AL_MUX mux_7 (
    .i0(o_6),
    .i1(less_12_15),
    .sel(diff_12_15),
    .o(o));

endmodule 

module binary_mux_s1_w1
  (
  i0,
  i1,
  sel,
  o
  );

  input i0;
  input i1;
  input sel;
  output o;


  AL_MUX al_mux_b0_0_0 (
    .i0(i0),
    .i1(i1),
    .sel(sel),
    .o(o));

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

  wire net_a0;
  wire net_a1;
  wire net_a10;
  wire net_a11;
  wire net_a12;
  wire net_a13;
  wire net_a14;
  wire net_a15;
  wire net_a16;
  wire net_a17;
  wire net_a18;
  wire net_a19;
  wire net_a2;
  wire net_a20;
  wire net_a21;
  wire net_a22;
  wire net_a23;
  wire net_a24;
  wire net_a25;
  wire net_a26;
  wire net_a27;
  wire net_a28;
  wire net_a29;
  wire net_a3;
  wire net_a30;
  wire net_a31;
  wire net_a4;
  wire net_a5;
  wire net_a6;
  wire net_a7;
  wire net_a8;
  wire net_a9;
  wire net_b0;
  wire net_b1;
  wire net_b10;
  wire net_b11;
  wire net_b12;
  wire net_b13;
  wire net_b14;
  wire net_b15;
  wire net_b16;
  wire net_b17;
  wire net_b18;
  wire net_b19;
  wire net_b2;
  wire net_b20;
  wire net_b21;
  wire net_b22;
  wire net_b23;
  wire net_b24;
  wire net_b25;
  wire net_b26;
  wire net_b27;
  wire net_b28;
  wire net_b29;
  wire net_b3;
  wire net_b30;
  wire net_b31;
  wire net_b4;
  wire net_b5;
  wire net_b6;
  wire net_b7;
  wire net_b8;
  wire net_b9;
  wire net_cout0;
  wire net_cout1;
  wire net_cout10;
  wire net_cout11;
  wire net_cout12;
  wire net_cout13;
  wire net_cout14;
  wire net_cout15;
  wire net_cout16;
  wire net_cout17;
  wire net_cout18;
  wire net_cout19;
  wire net_cout2;
  wire net_cout20;
  wire net_cout21;
  wire net_cout22;
  wire net_cout23;
  wire net_cout24;
  wire net_cout25;
  wire net_cout26;
  wire net_cout27;
  wire net_cout28;
  wire net_cout29;
  wire net_cout3;
  wire net_cout30;
  wire net_cout31;
  wire net_cout4;
  wire net_cout5;
  wire net_cout6;
  wire net_cout7;
  wire net_cout8;
  wire net_cout9;
  wire net_sum0;
  wire net_sum1;
  wire net_sum10;
  wire net_sum11;
  wire net_sum12;
  wire net_sum13;
  wire net_sum14;
  wire net_sum15;
  wire net_sum16;
  wire net_sum17;
  wire net_sum18;
  wire net_sum19;
  wire net_sum2;
  wire net_sum20;
  wire net_sum21;
  wire net_sum22;
  wire net_sum23;
  wire net_sum24;
  wire net_sum25;
  wire net_sum26;
  wire net_sum27;
  wire net_sum28;
  wire net_sum29;
  wire net_sum3;
  wire net_sum30;
  wire net_sum31;
  wire net_sum4;
  wire net_sum5;
  wire net_sum6;
  wire net_sum7;
  wire net_sum8;
  wire net_sum9;

  assign net_a31 = i0[31];
  assign net_a30 = i0[30];
  assign net_a29 = i0[29];
  assign net_a28 = i0[28];
  assign net_a27 = i0[27];
  assign net_a26 = i0[26];
  assign net_a25 = i0[25];
  assign net_a24 = i0[24];
  assign net_a23 = i0[23];
  assign net_a22 = i0[22];
  assign net_a21 = i0[21];
  assign net_a20 = i0[20];
  assign net_a19 = i0[19];
  assign net_a18 = i0[18];
  assign net_a17 = i0[17];
  assign net_a16 = i0[16];
  assign net_a15 = i0[15];
  assign net_a14 = i0[14];
  assign net_a13 = i0[13];
  assign net_a12 = i0[12];
  assign net_a11 = i0[11];
  assign net_a10 = i0[10];
  assign net_a9 = i0[9];
  assign net_a8 = i0[8];
  assign net_a7 = i0[7];
  assign net_a6 = i0[6];
  assign net_a5 = i0[5];
  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b31 = i1[31];
  assign net_b30 = i1[30];
  assign net_b29 = i1[29];
  assign net_b28 = i1[28];
  assign net_b27 = i1[27];
  assign net_b26 = i1[26];
  assign net_b25 = i1[25];
  assign net_b24 = i1[24];
  assign net_b23 = i1[23];
  assign net_b22 = i1[22];
  assign net_b21 = i1[21];
  assign net_b20 = i1[20];
  assign net_b19 = i1[19];
  assign net_b18 = i1[18];
  assign net_b17 = i1[17];
  assign net_b16 = i1[16];
  assign net_b15 = i1[15];
  assign net_b14 = i1[14];
  assign net_b13 = i1[13];
  assign net_b12 = i1[12];
  assign net_b11 = i1[11];
  assign net_b10 = i1[10];
  assign net_b9 = i1[9];
  assign net_b8 = i1[8];
  assign net_b7 = i1[7];
  assign net_b6 = i1[6];
  assign net_b5 = i1[5];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[31] = net_sum31;
  assign o[30] = net_sum30;
  assign o[29] = net_sum29;
  assign o[28] = net_sum28;
  assign o[27] = net_sum27;
  assign o[26] = net_sum26;
  assign o[25] = net_sum25;
  assign o[24] = net_sum24;
  assign o[23] = net_sum23;
  assign o[22] = net_sum22;
  assign o[21] = net_sum21;
  assign o[20] = net_sum20;
  assign o[19] = net_sum19;
  assign o[18] = net_sum18;
  assign o[17] = net_sum17;
  assign o[16] = net_sum16;
  assign o[15] = net_sum15;
  assign o[14] = net_sum14;
  assign o[13] = net_sum13;
  assign o[12] = net_sum12;
  assign o[11] = net_sum11;
  assign o[10] = net_sum10;
  assign o[9] = net_sum9;
  assign o[8] = net_sum8;
  assign o[7] = net_sum7;
  assign o[6] = net_sum6;
  assign o[5] = net_sum5;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD comp_0 (
    .a(net_a0),
    .b(net_b0),
    .c(1'b0),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD comp_1 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD comp_10 (
    .a(net_a10),
    .b(net_b10),
    .c(net_cout9),
    .cout(net_cout10),
    .sum(net_sum10));
  AL_FADD comp_11 (
    .a(net_a11),
    .b(net_b11),
    .c(net_cout10),
    .cout(net_cout11),
    .sum(net_sum11));
  AL_FADD comp_12 (
    .a(net_a12),
    .b(net_b12),
    .c(net_cout11),
    .cout(net_cout12),
    .sum(net_sum12));
  AL_FADD comp_13 (
    .a(net_a13),
    .b(net_b13),
    .c(net_cout12),
    .cout(net_cout13),
    .sum(net_sum13));
  AL_FADD comp_14 (
    .a(net_a14),
    .b(net_b14),
    .c(net_cout13),
    .cout(net_cout14),
    .sum(net_sum14));
  AL_FADD comp_15 (
    .a(net_a15),
    .b(net_b15),
    .c(net_cout14),
    .cout(net_cout15),
    .sum(net_sum15));
  AL_FADD comp_16 (
    .a(net_a16),
    .b(net_b16),
    .c(net_cout15),
    .cout(net_cout16),
    .sum(net_sum16));
  AL_FADD comp_17 (
    .a(net_a17),
    .b(net_b17),
    .c(net_cout16),
    .cout(net_cout17),
    .sum(net_sum17));
  AL_FADD comp_18 (
    .a(net_a18),
    .b(net_b18),
    .c(net_cout17),
    .cout(net_cout18),
    .sum(net_sum18));
  AL_FADD comp_19 (
    .a(net_a19),
    .b(net_b19),
    .c(net_cout18),
    .cout(net_cout19),
    .sum(net_sum19));
  AL_FADD comp_2 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD comp_20 (
    .a(net_a20),
    .b(net_b20),
    .c(net_cout19),
    .cout(net_cout20),
    .sum(net_sum20));
  AL_FADD comp_21 (
    .a(net_a21),
    .b(net_b21),
    .c(net_cout20),
    .cout(net_cout21),
    .sum(net_sum21));
  AL_FADD comp_22 (
    .a(net_a22),
    .b(net_b22),
    .c(net_cout21),
    .cout(net_cout22),
    .sum(net_sum22));
  AL_FADD comp_23 (
    .a(net_a23),
    .b(net_b23),
    .c(net_cout22),
    .cout(net_cout23),
    .sum(net_sum23));
  AL_FADD comp_24 (
    .a(net_a24),
    .b(net_b24),
    .c(net_cout23),
    .cout(net_cout24),
    .sum(net_sum24));
  AL_FADD comp_25 (
    .a(net_a25),
    .b(net_b25),
    .c(net_cout24),
    .cout(net_cout25),
    .sum(net_sum25));
  AL_FADD comp_26 (
    .a(net_a26),
    .b(net_b26),
    .c(net_cout25),
    .cout(net_cout26),
    .sum(net_sum26));
  AL_FADD comp_27 (
    .a(net_a27),
    .b(net_b27),
    .c(net_cout26),
    .cout(net_cout27),
    .sum(net_sum27));
  AL_FADD comp_28 (
    .a(net_a28),
    .b(net_b28),
    .c(net_cout27),
    .cout(net_cout28),
    .sum(net_sum28));
  AL_FADD comp_29 (
    .a(net_a29),
    .b(net_b29),
    .c(net_cout28),
    .cout(net_cout29),
    .sum(net_sum29));
  AL_FADD comp_3 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD comp_30 (
    .a(net_a30),
    .b(net_b30),
    .c(net_cout29),
    .cout(net_cout30),
    .sum(net_sum30));
  AL_FADD comp_31 (
    .a(net_a31),
    .b(net_b31),
    .c(net_cout30),
    .cout(net_cout31),
    .sum(net_sum31));
  AL_FADD comp_4 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  AL_FADD comp_5 (
    .a(net_a5),
    .b(net_b5),
    .c(net_cout4),
    .cout(net_cout5),
    .sum(net_sum5));
  AL_FADD comp_6 (
    .a(net_a6),
    .b(net_b6),
    .c(net_cout5),
    .cout(net_cout6),
    .sum(net_sum6));
  AL_FADD comp_7 (
    .a(net_a7),
    .b(net_b7),
    .c(net_cout6),
    .cout(net_cout7),
    .sum(net_sum7));
  AL_FADD comp_8 (
    .a(net_a8),
    .b(net_b8),
    .c(net_cout7),
    .cout(net_cout8),
    .sum(net_sum8));
  AL_FADD comp_9 (
    .a(net_a9),
    .b(net_b9),
    .c(net_cout8),
    .cout(net_cout9),
    .sum(net_sum9));

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

  wire or_or_or_or_or_xor_i_o;
  wire \or_or_or_or_xor_i0[0_o ;
  wire \or_or_or_or_xor_i0[1_o ;
  wire \or_or_or_xor_i0[0]_i_o ;
  wire \or_or_or_xor_i0[16]__o ;
  wire \or_or_or_xor_i0[24]__o ;
  wire \or_or_or_xor_i0[8]_i_o ;
  wire \or_or_xor_i0[0]_i1[0_o ;
  wire \or_or_xor_i0[12]_i1[_o ;
  wire \or_or_xor_i0[16]_i1[_o ;
  wire \or_or_xor_i0[20]_i1[_o ;
  wire \or_or_xor_i0[24]_i1[_o ;
  wire \or_or_xor_i0[28]_i1[_o ;
  wire \or_or_xor_i0[4]_i1[4_o ;
  wire \or_or_xor_i0[8]_i1[8_o ;
  wire \or_xor_i0[0]_i1[0]_o_o ;
  wire \or_xor_i0[10]_i1[10]_o ;
  wire \or_xor_i0[12]_i1[12]_o ;
  wire \or_xor_i0[14]_i1[14]_o ;
  wire \or_xor_i0[16]_i1[16]_o ;
  wire \or_xor_i0[18]_i1[18]_o ;
  wire \or_xor_i0[20]_i1[20]_o ;
  wire \or_xor_i0[22]_i1[22]_o ;
  wire \or_xor_i0[24]_i1[24]_o ;
  wire \or_xor_i0[26]_i1[26]_o ;
  wire \or_xor_i0[28]_i1[28]_o ;
  wire \or_xor_i0[2]_i1[2]_o_o ;
  wire \or_xor_i0[30]_i1[30]_o ;
  wire \or_xor_i0[4]_i1[4]_o_o ;
  wire \or_xor_i0[6]_i1[6]_o_o ;
  wire \or_xor_i0[8]_i1[8]_o_o ;
  wire \xor_i0[0]_i1[0]_o ;
  wire \xor_i0[10]_i1[10]_o ;
  wire \xor_i0[11]_i1[11]_o ;
  wire \xor_i0[12]_i1[12]_o ;
  wire \xor_i0[13]_i1[13]_o ;
  wire \xor_i0[14]_i1[14]_o ;
  wire \xor_i0[15]_i1[15]_o ;
  wire \xor_i0[16]_i1[16]_o ;
  wire \xor_i0[17]_i1[17]_o ;
  wire \xor_i0[18]_i1[18]_o ;
  wire \xor_i0[19]_i1[19]_o ;
  wire \xor_i0[1]_i1[1]_o ;
  wire \xor_i0[20]_i1[20]_o ;
  wire \xor_i0[21]_i1[21]_o ;
  wire \xor_i0[22]_i1[22]_o ;
  wire \xor_i0[23]_i1[23]_o ;
  wire \xor_i0[24]_i1[24]_o ;
  wire \xor_i0[25]_i1[25]_o ;
  wire \xor_i0[26]_i1[26]_o ;
  wire \xor_i0[27]_i1[27]_o ;
  wire \xor_i0[28]_i1[28]_o ;
  wire \xor_i0[29]_i1[29]_o ;
  wire \xor_i0[2]_i1[2]_o ;
  wire \xor_i0[30]_i1[30]_o ;
  wire \xor_i0[31]_i1[31]_o ;
  wire \xor_i0[3]_i1[3]_o ;
  wire \xor_i0[4]_i1[4]_o ;
  wire \xor_i0[5]_i1[5]_o ;
  wire \xor_i0[6]_i1[6]_o ;
  wire \xor_i0[7]_i1[7]_o ;
  wire \xor_i0[8]_i1[8]_o ;
  wire \xor_i0[9]_i1[9]_o ;

  not none_diff (o, or_or_or_or_or_xor_i_o);
  or or_or_or_or_or_xor_i (or_or_or_or_or_xor_i_o, \or_or_or_or_xor_i0[0_o , \or_or_or_or_xor_i0[1_o );
  or \or_or_or_or_xor_i0[0  (\or_or_or_or_xor_i0[0_o , \or_or_or_xor_i0[0]_i_o , \or_or_or_xor_i0[8]_i_o );
  or \or_or_or_or_xor_i0[1  (\or_or_or_or_xor_i0[1_o , \or_or_or_xor_i0[16]__o , \or_or_or_xor_i0[24]__o );
  or \or_or_or_xor_i0[0]_i  (\or_or_or_xor_i0[0]_i_o , \or_or_xor_i0[0]_i1[0_o , \or_or_xor_i0[4]_i1[4_o );
  or \or_or_or_xor_i0[16]_  (\or_or_or_xor_i0[16]__o , \or_or_xor_i0[16]_i1[_o , \or_or_xor_i0[20]_i1[_o );
  or \or_or_or_xor_i0[24]_  (\or_or_or_xor_i0[24]__o , \or_or_xor_i0[24]_i1[_o , \or_or_xor_i0[28]_i1[_o );
  or \or_or_or_xor_i0[8]_i  (\or_or_or_xor_i0[8]_i_o , \or_or_xor_i0[8]_i1[8_o , \or_or_xor_i0[12]_i1[_o );
  or \or_or_xor_i0[0]_i1[0  (\or_or_xor_i0[0]_i1[0_o , \or_xor_i0[0]_i1[0]_o_o , \or_xor_i0[2]_i1[2]_o_o );
  or \or_or_xor_i0[12]_i1[  (\or_or_xor_i0[12]_i1[_o , \or_xor_i0[12]_i1[12]_o , \or_xor_i0[14]_i1[14]_o );
  or \or_or_xor_i0[16]_i1[  (\or_or_xor_i0[16]_i1[_o , \or_xor_i0[16]_i1[16]_o , \or_xor_i0[18]_i1[18]_o );
  or \or_or_xor_i0[20]_i1[  (\or_or_xor_i0[20]_i1[_o , \or_xor_i0[20]_i1[20]_o , \or_xor_i0[22]_i1[22]_o );
  or \or_or_xor_i0[24]_i1[  (\or_or_xor_i0[24]_i1[_o , \or_xor_i0[24]_i1[24]_o , \or_xor_i0[26]_i1[26]_o );
  or \or_or_xor_i0[28]_i1[  (\or_or_xor_i0[28]_i1[_o , \or_xor_i0[28]_i1[28]_o , \or_xor_i0[30]_i1[30]_o );
  or \or_or_xor_i0[4]_i1[4  (\or_or_xor_i0[4]_i1[4_o , \or_xor_i0[4]_i1[4]_o_o , \or_xor_i0[6]_i1[6]_o_o );
  or \or_or_xor_i0[8]_i1[8  (\or_or_xor_i0[8]_i1[8_o , \or_xor_i0[8]_i1[8]_o_o , \or_xor_i0[10]_i1[10]_o );
  or \or_xor_i0[0]_i1[0]_o  (\or_xor_i0[0]_i1[0]_o_o , \xor_i0[0]_i1[0]_o , \xor_i0[1]_i1[1]_o );
  or \or_xor_i0[10]_i1[10]  (\or_xor_i0[10]_i1[10]_o , \xor_i0[10]_i1[10]_o , \xor_i0[11]_i1[11]_o );
  or \or_xor_i0[12]_i1[12]  (\or_xor_i0[12]_i1[12]_o , \xor_i0[12]_i1[12]_o , \xor_i0[13]_i1[13]_o );
  or \or_xor_i0[14]_i1[14]  (\or_xor_i0[14]_i1[14]_o , \xor_i0[14]_i1[14]_o , \xor_i0[15]_i1[15]_o );
  or \or_xor_i0[16]_i1[16]  (\or_xor_i0[16]_i1[16]_o , \xor_i0[16]_i1[16]_o , \xor_i0[17]_i1[17]_o );
  or \or_xor_i0[18]_i1[18]  (\or_xor_i0[18]_i1[18]_o , \xor_i0[18]_i1[18]_o , \xor_i0[19]_i1[19]_o );
  or \or_xor_i0[20]_i1[20]  (\or_xor_i0[20]_i1[20]_o , \xor_i0[20]_i1[20]_o , \xor_i0[21]_i1[21]_o );
  or \or_xor_i0[22]_i1[22]  (\or_xor_i0[22]_i1[22]_o , \xor_i0[22]_i1[22]_o , \xor_i0[23]_i1[23]_o );
  or \or_xor_i0[24]_i1[24]  (\or_xor_i0[24]_i1[24]_o , \xor_i0[24]_i1[24]_o , \xor_i0[25]_i1[25]_o );
  or \or_xor_i0[26]_i1[26]  (\or_xor_i0[26]_i1[26]_o , \xor_i0[26]_i1[26]_o , \xor_i0[27]_i1[27]_o );
  or \or_xor_i0[28]_i1[28]  (\or_xor_i0[28]_i1[28]_o , \xor_i0[28]_i1[28]_o , \xor_i0[29]_i1[29]_o );
  or \or_xor_i0[2]_i1[2]_o  (\or_xor_i0[2]_i1[2]_o_o , \xor_i0[2]_i1[2]_o , \xor_i0[3]_i1[3]_o );
  or \or_xor_i0[30]_i1[30]  (\or_xor_i0[30]_i1[30]_o , \xor_i0[30]_i1[30]_o , \xor_i0[31]_i1[31]_o );
  or \or_xor_i0[4]_i1[4]_o  (\or_xor_i0[4]_i1[4]_o_o , \xor_i0[4]_i1[4]_o , \xor_i0[5]_i1[5]_o );
  or \or_xor_i0[6]_i1[6]_o  (\or_xor_i0[6]_i1[6]_o_o , \xor_i0[6]_i1[6]_o , \xor_i0[7]_i1[7]_o );
  or \or_xor_i0[8]_i1[8]_o  (\or_xor_i0[8]_i1[8]_o_o , \xor_i0[8]_i1[8]_o , \xor_i0[9]_i1[9]_o );
  xor \xor_i0[0]_i1[0]  (\xor_i0[0]_i1[0]_o , i0[0], i1[0]);
  xor \xor_i0[10]_i1[10]  (\xor_i0[10]_i1[10]_o , i0[10], i1[10]);
  xor \xor_i0[11]_i1[11]  (\xor_i0[11]_i1[11]_o , i0[11], i1[11]);
  xor \xor_i0[12]_i1[12]  (\xor_i0[12]_i1[12]_o , i0[12], i1[12]);
  xor \xor_i0[13]_i1[13]  (\xor_i0[13]_i1[13]_o , i0[13], i1[13]);
  xor \xor_i0[14]_i1[14]  (\xor_i0[14]_i1[14]_o , i0[14], i1[14]);
  xor \xor_i0[15]_i1[15]  (\xor_i0[15]_i1[15]_o , i0[15], i1[15]);
  xor \xor_i0[16]_i1[16]  (\xor_i0[16]_i1[16]_o , i0[16], i1[16]);
  xor \xor_i0[17]_i1[17]  (\xor_i0[17]_i1[17]_o , i0[17], i1[17]);
  xor \xor_i0[18]_i1[18]  (\xor_i0[18]_i1[18]_o , i0[18], i1[18]);
  xor \xor_i0[19]_i1[19]  (\xor_i0[19]_i1[19]_o , i0[19], i1[19]);
  xor \xor_i0[1]_i1[1]  (\xor_i0[1]_i1[1]_o , i0[1], i1[1]);
  xor \xor_i0[20]_i1[20]  (\xor_i0[20]_i1[20]_o , i0[20], i1[20]);
  xor \xor_i0[21]_i1[21]  (\xor_i0[21]_i1[21]_o , i0[21], i1[21]);
  xor \xor_i0[22]_i1[22]  (\xor_i0[22]_i1[22]_o , i0[22], i1[22]);
  xor \xor_i0[23]_i1[23]  (\xor_i0[23]_i1[23]_o , i0[23], i1[23]);
  xor \xor_i0[24]_i1[24]  (\xor_i0[24]_i1[24]_o , i0[24], i1[24]);
  xor \xor_i0[25]_i1[25]  (\xor_i0[25]_i1[25]_o , i0[25], i1[25]);
  xor \xor_i0[26]_i1[26]  (\xor_i0[26]_i1[26]_o , i0[26], i1[26]);
  xor \xor_i0[27]_i1[27]  (\xor_i0[27]_i1[27]_o , i0[27], i1[27]);
  xor \xor_i0[28]_i1[28]  (\xor_i0[28]_i1[28]_o , i0[28], i1[28]);
  xor \xor_i0[29]_i1[29]  (\xor_i0[29]_i1[29]_o , i0[29], i1[29]);
  xor \xor_i0[2]_i1[2]  (\xor_i0[2]_i1[2]_o , i0[2], i1[2]);
  xor \xor_i0[30]_i1[30]  (\xor_i0[30]_i1[30]_o , i0[30], i1[30]);
  xor \xor_i0[31]_i1[31]  (\xor_i0[31]_i1[31]_o , i0[31], i1[31]);
  xor \xor_i0[3]_i1[3]  (\xor_i0[3]_i1[3]_o , i0[3], i1[3]);
  xor \xor_i0[4]_i1[4]  (\xor_i0[4]_i1[4]_o , i0[4], i1[4]);
  xor \xor_i0[5]_i1[5]  (\xor_i0[5]_i1[5]_o , i0[5], i1[5]);
  xor \xor_i0[6]_i1[6]  (\xor_i0[6]_i1[6]_o , i0[6], i1[6]);
  xor \xor_i0[7]_i1[7]  (\xor_i0[7]_i1[7]_o , i0[7], i1[7]);
  xor \xor_i0[8]_i1[8]  (\xor_i0[8]_i1[8]_o , i0[8], i1[8]);
  xor \xor_i0[9]_i1[9]  (\xor_i0[9]_i1[9]_o , i0[9], i1[9]);

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

  wire xor_i0_i1_o;

  not none_diff (o, xor_i0_i1_o);
  xor xor_i0_i1 (xor_i0_i1_o, i0, i1);

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

module AL_FADD
  (
  input a,
  input b,
  input c,
  output sum,
  output cout
  );

  wire prop;
  wire not_prop;
  wire sel_i0;
  wire sel_i1;

  xor u0 (prop, a, b);
  xor u1 (sum, prop, c);
  not u2 (not_prop, prop);
  and u3 (sel_i1, prop, c);
  and u4 (sel_i0, not_prop, a);
  or  u5 (cout, sel_i0, sel_i1);

endmodule

