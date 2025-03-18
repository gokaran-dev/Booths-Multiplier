// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Mar 18 11:59:48 2025
// Host        : DESKTOP-IJF0GJG running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {D:/Mtech/Vivado/Booths Multiplier/Booths
//               Multiplier.sim/sim_1/synth/func/xsim/Booths_MultiplierTB_func_synth.v}
// Design      : Booths_Multiplier
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module Booths_Multiplier
   (multi,
    multiplier,
    clk,
    rst,
    product);
  input [7:0]multi;
  input [7:0]multiplier;
  input clk;
  input rst;
  output [15:0]product;

  wire CE;
  wire CE_i_1_n_0;
  wire D0;
  wire \UUT/carry_1 ;
  wire \UUT/carry_2 ;
  wire \UUT/carry_3 ;
  wire \UUT/carry_4 ;
  wire \UUT/carry_5 ;
  wire \UUT/mod8/temp1 ;
  wire \UUT/xor_output_2 ;
  wire \UUT/xor_output_3 ;
  wire \UUT/xor_output_4 ;
  wire \UUT/xor_output_5 ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]count;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire ff10_i_1_n_0;
  wire ff11_i_1_n_0;
  wire ff12_i_1_n_0;
  wire ff13_i_1_n_0;
  wire ff14_i_1_n_0;
  wire ff15_i_1_n_0;
  wire ff1_i_1_n_0;
  wire ff2_i_1_n_0;
  wire ff3_i_1_n_0;
  wire ff4_i_1_n_0;
  wire ff5_i_1_n_0;
  wire ff6_i_1_n_0;
  wire ff7_i_1_n_0;
  wire ff8_i_1_n_0;
  wire ff9_i_1_n_0;
  wire [7:0]multi;
  wire [7:0]multi_IBUF;
  wire [7:0]multiplier;
  wire [7:0]multiplier_IBUF;
  wire p_0_in;
  wire [15:0]product;
  wire [15:0]product_OBUF;
  wire q_0;
  wire q_1;
  wire q_10;
  wire q_11;
  wire q_12;
  wire q_13;
  wire q_14;
  wire q_15;
  wire q_16;
  wire q_2;
  wire q_3;
  wire q_4;
  wire q_5;
  wire q_6;
  wire q_7;
  wire q_8;
  wire q_9;
  wire rst;
  wire rst_IBUF;
  wire shift_mode;
  wire \shifted_data[7]_i_1_n_0 ;
  wire \shifted_data_reg_n_0_[0] ;
  wire \shifted_data_reg_n_0_[1] ;
  wire \shifted_data_reg_n_0_[2] ;
  wire \shifted_data_reg_n_0_[3] ;
  wire \shifted_data_reg_n_0_[4] ;
  wire \shifted_data_reg_n_0_[5] ;
  wire \shifted_data_reg_n_0_[6] ;
  wire [7:0]sum;

  LUT3 #(
    .INIT(8'h80)) 
    CE_i_1
       (.I0(count[1]),
        .I1(count[2]),
        .I2(count[0]),
        .O(CE_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    CE_reg
       (.C(clk_IBUF_BUFG),
        .CE(rst_IBUF),
        .D(rst_IBUF),
        .Q(CE),
        .R(CE_i_1_n_0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h3B33)) 
    \count[0]_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(rst_IBUF),
        .I3(count[2]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6E66)) 
    \count[1]_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(rst_IBUF),
        .I3(count[2]),
        .O(\count[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F88)) 
    \count[2]_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(rst_IBUF),
        .I3(count[2]),
        .O(\count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(count[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    ff0
       (.C(clk_IBUF_BUFG),
        .CE(CE),
        .D(q_1),
        .Q(q_0),
        .R(rst_IBUF));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    ff1
       (.C(clk_IBUF_BUFG),
        .CE(CE),
        .D(ff1_i_1_n_0),
        .Q(q_1),
        .R(rst_IBUF));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    ff10
       (.C(clk_IBUF_BUFG),
        .CE(CE),
        .D(ff10_i_1_n_0),
        .Q(q_10),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ff10_i_1
       (.I0(\shifted_data_reg_n_0_[1] ),
        .I1(q_11),
        .I2(shift_mode),
        .O(ff10_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    ff11
       (.C(clk_IBUF_BUFG),
        .CE(CE),
        .D(ff11_i_1_n_0),
        .Q(q_11),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ff11_i_1
       (.I0(\shifted_data_reg_n_0_[2] ),
        .I1(q_12),
        .I2(shift_mode),
        .O(ff11_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    ff12
       (.C(clk_IBUF_BUFG),
        .CE(CE),
        .D(ff12_i_1_n_0),
        .Q(q_12),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ff12_i_1
       (.I0(\shifted_data_reg_n_0_[3] ),
        .I1(q_13),
        .I2(shift_mode),
        .O(ff12_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    ff13
       (.C(clk_IBUF_BUFG),
        .CE(CE),
        .D(ff13_i_1_n_0),
        .Q(q_13),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ff13_i_1
       (.I0(\shifted_data_reg_n_0_[4] ),
        .I1(q_14),
        .I2(shift_mode),
        .O(ff13_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    ff14
       (.C(clk_IBUF_BUFG),
        .CE(CE),
        .D(ff14_i_1_n_0),
        .Q(q_14),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ff14_i_1
       (.I0(\shifted_data_reg_n_0_[5] ),
        .I1(q_15),
        .I2(shift_mode),
        .O(ff14_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    ff15
       (.C(clk_IBUF_BUFG),
        .CE(CE),
        .D(ff15_i_1_n_0),
        .Q(q_15),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ff15_i_1
       (.I0(\shifted_data_reg_n_0_[6] ),
        .I1(q_16),
        .I2(shift_mode),
        .O(ff15_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    ff16
       (.C(clk_IBUF_BUFG),
        .CE(CE),
        .D(D0),
        .Q(q_16),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ff16_i_1
       (.I0(p_0_in),
        .I1(q_16),
        .I2(shift_mode),
        .O(D0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ff1_i_1
       (.I0(multiplier_IBUF[0]),
        .I1(q_2),
        .I2(shift_mode),
        .O(ff1_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    ff2
       (.C(clk_IBUF_BUFG),
        .CE(CE),
        .D(ff2_i_1_n_0),
        .Q(q_2),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ff2_i_1
       (.I0(multiplier_IBUF[1]),
        .I1(q_3),
        .I2(shift_mode),
        .O(ff2_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    ff3
       (.C(clk_IBUF_BUFG),
        .CE(CE),
        .D(ff3_i_1_n_0),
        .Q(q_3),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ff3_i_1
       (.I0(multiplier_IBUF[2]),
        .I1(q_4),
        .I2(shift_mode),
        .O(ff3_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    ff4
       (.C(clk_IBUF_BUFG),
        .CE(CE),
        .D(ff4_i_1_n_0),
        .Q(q_4),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ff4_i_1
       (.I0(multiplier_IBUF[3]),
        .I1(q_5),
        .I2(shift_mode),
        .O(ff4_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    ff5
       (.C(clk_IBUF_BUFG),
        .CE(CE),
        .D(ff5_i_1_n_0),
        .Q(q_5),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ff5_i_1
       (.I0(multiplier_IBUF[4]),
        .I1(q_6),
        .I2(shift_mode),
        .O(ff5_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    ff6
       (.C(clk_IBUF_BUFG),
        .CE(CE),
        .D(ff6_i_1_n_0),
        .Q(q_6),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ff6_i_1
       (.I0(multiplier_IBUF[5]),
        .I1(q_7),
        .I2(shift_mode),
        .O(ff6_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    ff7
       (.C(clk_IBUF_BUFG),
        .CE(CE),
        .D(ff7_i_1_n_0),
        .Q(q_7),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ff7_i_1
       (.I0(multiplier_IBUF[6]),
        .I1(q_8),
        .I2(shift_mode),
        .O(ff7_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    ff8
       (.C(clk_IBUF_BUFG),
        .CE(CE),
        .D(ff8_i_1_n_0),
        .Q(q_8),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ff8_i_1
       (.I0(multiplier_IBUF[7]),
        .I1(q_9),
        .I2(shift_mode),
        .O(ff8_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    ff9
       (.C(clk_IBUF_BUFG),
        .CE(CE),
        .D(ff9_i_1_n_0),
        .Q(q_9),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ff9_i_1
       (.I0(\shifted_data_reg_n_0_[0] ),
        .I1(q_10),
        .I2(shift_mode),
        .O(ff9_i_1_n_0));
  IBUF \multi_IBUF[0]_inst 
       (.I(multi[0]),
        .O(multi_IBUF[0]));
  IBUF \multi_IBUF[1]_inst 
       (.I(multi[1]),
        .O(multi_IBUF[1]));
  IBUF \multi_IBUF[2]_inst 
       (.I(multi[2]),
        .O(multi_IBUF[2]));
  IBUF \multi_IBUF[3]_inst 
       (.I(multi[3]),
        .O(multi_IBUF[3]));
  IBUF \multi_IBUF[4]_inst 
       (.I(multi[4]),
        .O(multi_IBUF[4]));
  IBUF \multi_IBUF[5]_inst 
       (.I(multi[5]),
        .O(multi_IBUF[5]));
  IBUF \multi_IBUF[6]_inst 
       (.I(multi[6]),
        .O(multi_IBUF[6]));
  IBUF \multi_IBUF[7]_inst 
       (.I(multi[7]),
        .O(multi_IBUF[7]));
  IBUF \multiplier_IBUF[0]_inst 
       (.I(multiplier[0]),
        .O(multiplier_IBUF[0]));
  IBUF \multiplier_IBUF[1]_inst 
       (.I(multiplier[1]),
        .O(multiplier_IBUF[1]));
  IBUF \multiplier_IBUF[2]_inst 
       (.I(multiplier[2]),
        .O(multiplier_IBUF[2]));
  IBUF \multiplier_IBUF[3]_inst 
       (.I(multiplier[3]),
        .O(multiplier_IBUF[3]));
  IBUF \multiplier_IBUF[4]_inst 
       (.I(multiplier[4]),
        .O(multiplier_IBUF[4]));
  IBUF \multiplier_IBUF[5]_inst 
       (.I(multiplier[5]),
        .O(multiplier_IBUF[5]));
  IBUF \multiplier_IBUF[6]_inst 
       (.I(multiplier[6]),
        .O(multiplier_IBUF[6]));
  IBUF \multiplier_IBUF[7]_inst 
       (.I(multiplier[7]),
        .O(multiplier_IBUF[7]));
  OBUF \product_OBUF[0]_inst 
       (.I(product_OBUF[0]),
        .O(product[0]));
  OBUF \product_OBUF[10]_inst 
       (.I(product_OBUF[10]),
        .O(product[10]));
  OBUF \product_OBUF[11]_inst 
       (.I(product_OBUF[11]),
        .O(product[11]));
  OBUF \product_OBUF[12]_inst 
       (.I(product_OBUF[12]),
        .O(product[12]));
  OBUF \product_OBUF[13]_inst 
       (.I(product_OBUF[13]),
        .O(product[13]));
  OBUF \product_OBUF[14]_inst 
       (.I(product_OBUF[14]),
        .O(product[14]));
  OBUF \product_OBUF[15]_inst 
       (.I(product_OBUF[15]),
        .O(product[15]));
  OBUF \product_OBUF[1]_inst 
       (.I(product_OBUF[1]),
        .O(product[1]));
  OBUF \product_OBUF[2]_inst 
       (.I(product_OBUF[2]),
        .O(product[2]));
  OBUF \product_OBUF[3]_inst 
       (.I(product_OBUF[3]),
        .O(product[3]));
  OBUF \product_OBUF[4]_inst 
       (.I(product_OBUF[4]),
        .O(product[4]));
  OBUF \product_OBUF[5]_inst 
       (.I(product_OBUF[5]),
        .O(product[5]));
  OBUF \product_OBUF[6]_inst 
       (.I(product_OBUF[6]),
        .O(product[6]));
  OBUF \product_OBUF[7]_inst 
       (.I(product_OBUF[7]),
        .O(product[7]));
  OBUF \product_OBUF[8]_inst 
       (.I(product_OBUF[8]),
        .O(product[8]));
  OBUF \product_OBUF[9]_inst 
       (.I(product_OBUF[9]),
        .O(product[9]));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q_1),
        .Q(product_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q_11),
        .Q(product_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q_12),
        .Q(product_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q_13),
        .Q(product_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q_14),
        .Q(product_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q_15),
        .Q(product_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q_16),
        .Q(product_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q_2),
        .Q(product_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q_3),
        .Q(product_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q_4),
        .Q(product_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q_5),
        .Q(product_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q_6),
        .Q(product_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q_7),
        .Q(product_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q_8),
        .Q(product_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q_9),
        .Q(product_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q_10),
        .Q(product_OBUF[9]),
        .R(1'b0));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  FDRE #(
    .INIT(1'b1)) 
    shift_mode_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(shift_mode),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hA66A)) 
    \shifted_data[0]_i_1 
       (.I0(q_9),
        .I1(multi_IBUF[0]),
        .I2(q_0),
        .I3(q_1),
        .O(sum[0]));
  LUT6 #(
    .INIT(64'hF0F04BB48778F0F0)) 
    \shifted_data[1]_i_1 
       (.I0(q_9),
        .I1(multi_IBUF[0]),
        .I2(q_10),
        .I3(multi_IBUF[1]),
        .I4(q_0),
        .I5(q_1),
        .O(sum[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h66699666)) 
    \shifted_data[2]_i_1 
       (.I0(\UUT/carry_1 ),
        .I1(q_11),
        .I2(multi_IBUF[2]),
        .I3(q_0),
        .I4(q_1),
        .O(sum[2]));
  LUT6 #(
    .INIT(64'h00DFF800000D8000)) 
    \shifted_data[2]_i_2 
       (.I0(multi_IBUF[0]),
        .I1(q_9),
        .I2(multi_IBUF[1]),
        .I3(q_0),
        .I4(q_1),
        .I5(q_10),
        .O(\UUT/carry_1 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h66699666)) 
    \shifted_data[3]_i_1 
       (.I0(\UUT/carry_2 ),
        .I1(q_12),
        .I2(multi_IBUF[3]),
        .I3(q_0),
        .I4(q_1),
        .O(sum[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hABEA0280)) 
    \shifted_data[3]_i_2 
       (.I0(\UUT/carry_1 ),
        .I1(multi_IBUF[2]),
        .I2(q_0),
        .I3(q_1),
        .I4(q_11),
        .O(\UUT/carry_2 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h66699666)) 
    \shifted_data[4]_i_1 
       (.I0(\UUT/carry_3 ),
        .I1(q_13),
        .I2(multi_IBUF[4]),
        .I3(q_0),
        .I4(q_1),
        .O(sum[4]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \shifted_data[4]_i_2 
       (.I0(\UUT/carry_1 ),
        .I1(\UUT/xor_output_2 ),
        .I2(q_11),
        .I3(\UUT/xor_output_3 ),
        .I4(q_12),
        .O(\UUT/carry_3 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h18)) 
    \shifted_data[4]_i_3 
       (.I0(multi_IBUF[2]),
        .I1(q_0),
        .I2(q_1),
        .O(\UUT/xor_output_2 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h18)) 
    \shifted_data[4]_i_4 
       (.I0(multi_IBUF[3]),
        .I1(q_0),
        .I2(q_1),
        .O(\UUT/xor_output_3 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h66699666)) 
    \shifted_data[5]_i_1 
       (.I0(\UUT/carry_4 ),
        .I1(q_14),
        .I2(multi_IBUF[5]),
        .I3(q_0),
        .I4(q_1),
        .O(sum[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hABEA0280)) 
    \shifted_data[5]_i_2 
       (.I0(\UUT/carry_3 ),
        .I1(multi_IBUF[4]),
        .I2(q_0),
        .I3(q_1),
        .I4(q_13),
        .O(\UUT/carry_4 ));
  LUT5 #(
    .INIT(32'h66699666)) 
    \shifted_data[6]_i_1 
       (.I0(\UUT/carry_5 ),
        .I1(q_15),
        .I2(multi_IBUF[6]),
        .I3(q_0),
        .I4(q_1),
        .O(sum[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \shifted_data[7]_i_1 
       (.I0(q_0),
        .I1(q_1),
        .O(\shifted_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4551DFF7BAAE2008)) 
    \shifted_data[7]_i_2 
       (.I0(q_15),
        .I1(q_1),
        .I2(q_0),
        .I3(multi_IBUF[6]),
        .I4(\UUT/carry_5 ),
        .I5(\UUT/mod8/temp1 ),
        .O(sum[7]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \shifted_data[7]_i_3 
       (.I0(\UUT/carry_3 ),
        .I1(\UUT/xor_output_4 ),
        .I2(q_13),
        .I3(\UUT/xor_output_5 ),
        .I4(q_14),
        .O(\UUT/carry_5 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hBD42)) 
    \shifted_data[7]_i_4 
       (.I0(q_1),
        .I1(q_0),
        .I2(multi_IBUF[7]),
        .I3(q_16),
        .O(\UUT/mod8/temp1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h18)) 
    \shifted_data[7]_i_5 
       (.I0(multi_IBUF[4]),
        .I1(q_0),
        .I2(q_1),
        .O(\UUT/xor_output_4 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h18)) 
    \shifted_data[7]_i_6 
       (.I0(multi_IBUF[5]),
        .I1(q_0),
        .I2(q_1),
        .O(\UUT/xor_output_5 ));
  FDRE #(
    .INIT(1'b0)) 
    \shifted_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\shifted_data[7]_i_1_n_0 ),
        .D(sum[0]),
        .Q(\shifted_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shifted_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\shifted_data[7]_i_1_n_0 ),
        .D(sum[1]),
        .Q(\shifted_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shifted_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\shifted_data[7]_i_1_n_0 ),
        .D(sum[2]),
        .Q(\shifted_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shifted_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\shifted_data[7]_i_1_n_0 ),
        .D(sum[3]),
        .Q(\shifted_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shifted_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\shifted_data[7]_i_1_n_0 ),
        .D(sum[4]),
        .Q(\shifted_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shifted_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\shifted_data[7]_i_1_n_0 ),
        .D(sum[5]),
        .Q(\shifted_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shifted_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\shifted_data[7]_i_1_n_0 ),
        .D(sum[6]),
        .Q(\shifted_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shifted_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\shifted_data[7]_i_1_n_0 ),
        .D(sum[7]),
        .Q(p_0_in),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
