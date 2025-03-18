// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 13 21:03:21 2025
// Host        : DESKTOP-IJF0GJG running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {D:/Mtech/Vivado/Booths Multiplier/Booths
//               Multiplier.sim/sim_1/synth/func/xsim/controlled_adder_sub_TB_func_synth.v}
// Design      : Controlled_adder_sub
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module Controlled_adder_sub
   (A,
    B,
    mode0,
    mode1,
    result,
    cout);
  input [15:0]A;
  input [15:0]B;
  input mode0;
  input mode1;
  output [15:0]result;
  output cout;

  wire [15:0]A;
  wire [15:0]A_IBUF;
  wire [15:0]B;
  wire [15:0]B_IBUF;
  wire carry_1;
  wire carry_10;
  wire carry_11;
  wire carry_12;
  wire carry_13;
  wire carry_3;
  wire carry_5;
  wire carry_6;
  wire carry_7;
  wire carry_8;
  wire carry_9;
  wire cout;
  wire cout_OBUF;
  wire \mod10/temp1 ;
  wire \mod11/temp1 ;
  wire \mod12/temp1 ;
  wire \mod3/temp1 ;
  wire \mod4/temp1 ;
  wire \mod5/temp1 ;
  wire \mod6/temp1 ;
  wire \mod7/temp1 ;
  wire \mod8/temp1 ;
  wire \mod9/temp1 ;
  wire mode;
  wire mode0;
  wire mode0_IBUF;
  wire mode1;
  wire mode1_IBUF;
  wire [15:0]result;
  wire [15:0]result_OBUF;
  wire temp2__3;
  wire temp2__8;
  wire temp3__1;
  wire temp3__10;
  wire temp3__2;
  wire temp3__3;
  wire temp3__4;
  wire temp3__5;
  wire temp3__6;
  wire temp3__7;
  wire temp3__8;
  wire temp3__9;

  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[10]_inst 
       (.I(A[10]),
        .O(A_IBUF[10]));
  IBUF \A_IBUF[11]_inst 
       (.I(A[11]),
        .O(A_IBUF[11]));
  IBUF \A_IBUF[12]_inst 
       (.I(A[12]),
        .O(A_IBUF[12]));
  IBUF \A_IBUF[13]_inst 
       (.I(A[13]),
        .O(A_IBUF[13]));
  IBUF \A_IBUF[14]_inst 
       (.I(A[14]),
        .O(A_IBUF[14]));
  IBUF \A_IBUF[15]_inst 
       (.I(A[15]),
        .O(A_IBUF[15]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \A_IBUF[4]_inst 
       (.I(A[4]),
        .O(A_IBUF[4]));
  IBUF \A_IBUF[5]_inst 
       (.I(A[5]),
        .O(A_IBUF[5]));
  IBUF \A_IBUF[6]_inst 
       (.I(A[6]),
        .O(A_IBUF[6]));
  IBUF \A_IBUF[7]_inst 
       (.I(A[7]),
        .O(A_IBUF[7]));
  IBUF \A_IBUF[8]_inst 
       (.I(A[8]),
        .O(A_IBUF[8]));
  IBUF \A_IBUF[9]_inst 
       (.I(A[9]),
        .O(A_IBUF[9]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[10]_inst 
       (.I(B[10]),
        .O(B_IBUF[10]));
  IBUF \B_IBUF[11]_inst 
       (.I(B[11]),
        .O(B_IBUF[11]));
  IBUF \B_IBUF[12]_inst 
       (.I(B[12]),
        .O(B_IBUF[12]));
  IBUF \B_IBUF[13]_inst 
       (.I(B[13]),
        .O(B_IBUF[13]));
  IBUF \B_IBUF[14]_inst 
       (.I(B[14]),
        .O(B_IBUF[14]));
  IBUF \B_IBUF[15]_inst 
       (.I(B[15]),
        .O(B_IBUF[15]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  IBUF \B_IBUF[4]_inst 
       (.I(B[4]),
        .O(B_IBUF[4]));
  IBUF \B_IBUF[5]_inst 
       (.I(B[5]),
        .O(B_IBUF[5]));
  IBUF \B_IBUF[6]_inst 
       (.I(B[6]),
        .O(B_IBUF[6]));
  IBUF \B_IBUF[7]_inst 
       (.I(B[7]),
        .O(B_IBUF[7]));
  IBUF \B_IBUF[8]_inst 
       (.I(B[8]),
        .O(B_IBUF[8]));
  IBUF \B_IBUF[9]_inst 
       (.I(B[9]),
        .O(B_IBUF[9]));
  OBUF cout_OBUF_inst
       (.I(cout_OBUF),
        .O(cout));
  LUT6 #(
    .INIT(64'hB2FFFFE800B2E800)) 
    cout_OBUF_inst_i_1
       (.I0(carry_13),
        .I1(B_IBUF[14]),
        .I2(A_IBUF[14]),
        .I3(B_IBUF[15]),
        .I4(mode),
        .I5(A_IBUF[15]),
        .O(cout_OBUF));
  IBUF mode0_IBUF_inst
       (.I(mode0),
        .O(mode0_IBUF));
  IBUF mode1_IBUF_inst
       (.I(mode1),
        .O(mode1_IBUF));
  OBUF \result_OBUF[0]_inst 
       (.I(result_OBUF[0]),
        .O(result[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[0]_inst_i_1 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[0]),
        .O(result_OBUF[0]));
  OBUF \result_OBUF[10]_inst 
       (.I(result_OBUF[10]),
        .O(result[10]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    \result_OBUF[10]_inst_i_1 
       (.I0(mode1_IBUF),
        .I1(mode0_IBUF),
        .I2(A_IBUF[10]),
        .I3(B_IBUF[10]),
        .I4(carry_9),
        .O(result_OBUF[10]));
  OBUF \result_OBUF[11]_inst 
       (.I(result_OBUF[11]),
        .O(result[11]));
  LUT6 #(
    .INIT(64'h6966999699699666)) 
    \result_OBUF[11]_inst_i_1 
       (.I0(A_IBUF[11]),
        .I1(B_IBUF[11]),
        .I2(carry_9),
        .I3(B_IBUF[10]),
        .I4(mode),
        .I5(A_IBUF[10]),
        .O(result_OBUF[11]));
  LUT6 #(
    .INIT(64'hB2FFFFE800B2E800)) 
    \result_OBUF[11]_inst_i_2 
       (.I0(carry_7),
        .I1(B_IBUF[8]),
        .I2(A_IBUF[8]),
        .I3(B_IBUF[9]),
        .I4(mode),
        .I5(A_IBUF[9]),
        .O(carry_9));
  OBUF \result_OBUF[12]_inst 
       (.I(result_OBUF[12]),
        .O(result[12]));
  LUT6 #(
    .INIT(64'h6966999699699666)) 
    \result_OBUF[12]_inst_i_1 
       (.I0(A_IBUF[12]),
        .I1(B_IBUF[12]),
        .I2(carry_10),
        .I3(B_IBUF[11]),
        .I4(mode),
        .I5(A_IBUF[11]),
        .O(result_OBUF[12]));
  LUT4 #(
    .INIT(16'hA208)) 
    \result_OBUF[12]_inst_i_10 
       (.I0(A_IBUF[6]),
        .I1(mode1_IBUF),
        .I2(mode0_IBUF),
        .I3(B_IBUF[6]),
        .O(temp3__5));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    \result_OBUF[12]_inst_i_11 
       (.I0(A_IBUF[3]),
        .I1(mode1_IBUF),
        .I2(mode0_IBUF),
        .I3(B_IBUF[3]),
        .O(temp3__2));
  LUT4 #(
    .INIT(16'hA208)) 
    \result_OBUF[12]_inst_i_12 
       (.I0(A_IBUF[2]),
        .I1(mode1_IBUF),
        .I2(mode0_IBUF),
        .I3(B_IBUF[2]),
        .O(temp3__1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6966)) 
    \result_OBUF[12]_inst_i_13 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[2]),
        .I2(mode0_IBUF),
        .I3(mode1_IBUF),
        .O(\mod3/temp1 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6966)) 
    \result_OBUF[12]_inst_i_14 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[3]),
        .I2(mode0_IBUF),
        .I3(mode1_IBUF),
        .O(\mod4/temp1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6966)) 
    \result_OBUF[12]_inst_i_15 
       (.I0(A_IBUF[4]),
        .I1(B_IBUF[4]),
        .I2(mode0_IBUF),
        .I3(mode1_IBUF),
        .O(\mod5/temp1 ));
  LUT6 #(
    .INIT(64'hB2FFFFE800B2E800)) 
    \result_OBUF[12]_inst_i_2 
       (.I0(carry_8),
        .I1(B_IBUF[9]),
        .I2(A_IBUF[9]),
        .I3(B_IBUF[10]),
        .I4(mode),
        .I5(A_IBUF[10]),
        .O(carry_10));
  LUT6 #(
    .INIT(64'hB2FFFFE800B2E800)) 
    \result_OBUF[12]_inst_i_3 
       (.I0(carry_6),
        .I1(B_IBUF[7]),
        .I2(A_IBUF[7]),
        .I3(B_IBUF[8]),
        .I4(mode),
        .I5(A_IBUF[8]),
        .O(carry_8));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAA8880)) 
    \result_OBUF[12]_inst_i_4 
       (.I0(\mod7/temp1 ),
        .I1(\mod6/temp1 ),
        .I2(temp2__3),
        .I3(temp3__3),
        .I4(temp3__4),
        .I5(temp3__5),
        .O(carry_6));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6966)) 
    \result_OBUF[12]_inst_i_5 
       (.I0(A_IBUF[6]),
        .I1(B_IBUF[6]),
        .I2(mode0_IBUF),
        .I3(mode1_IBUF),
        .O(\mod7/temp1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6966)) 
    \result_OBUF[12]_inst_i_6 
       (.I0(A_IBUF[5]),
        .I1(B_IBUF[5]),
        .I2(mode0_IBUF),
        .I3(mode1_IBUF),
        .O(\mod6/temp1 ));
  LUT6 #(
    .INIT(64'hFEEEAAAA00000000)) 
    \result_OBUF[12]_inst_i_7 
       (.I0(temp3__2),
        .I1(temp3__1),
        .I2(carry_1),
        .I3(\mod3/temp1 ),
        .I4(\mod4/temp1 ),
        .I5(\mod5/temp1 ),
        .O(temp2__3));
  LUT4 #(
    .INIT(16'hA208)) 
    \result_OBUF[12]_inst_i_8 
       (.I0(A_IBUF[4]),
        .I1(mode1_IBUF),
        .I2(mode0_IBUF),
        .I3(B_IBUF[4]),
        .O(temp3__3));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    \result_OBUF[12]_inst_i_9 
       (.I0(A_IBUF[5]),
        .I1(mode1_IBUF),
        .I2(mode0_IBUF),
        .I3(B_IBUF[5]),
        .O(temp3__4));
  OBUF \result_OBUF[13]_inst 
       (.I(result_OBUF[13]),
        .O(result[13]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    \result_OBUF[13]_inst_i_1 
       (.I0(mode1_IBUF),
        .I1(mode0_IBUF),
        .I2(A_IBUF[13]),
        .I3(B_IBUF[13]),
        .I4(carry_12),
        .O(result_OBUF[13]));
  OBUF \result_OBUF[14]_inst 
       (.I(result_OBUF[14]),
        .O(result[14]));
  LUT6 #(
    .INIT(64'h6966999699699666)) 
    \result_OBUF[14]_inst_i_1 
       (.I0(A_IBUF[14]),
        .I1(B_IBUF[14]),
        .I2(carry_12),
        .I3(B_IBUF[13]),
        .I4(mode),
        .I5(A_IBUF[13]),
        .O(result_OBUF[14]));
  LUT6 #(
    .INIT(64'hB2FFFFE800B2E800)) 
    \result_OBUF[14]_inst_i_2 
       (.I0(carry_10),
        .I1(B_IBUF[11]),
        .I2(A_IBUF[11]),
        .I3(B_IBUF[12]),
        .I4(mode),
        .I5(A_IBUF[12]),
        .O(carry_12));
  OBUF \result_OBUF[15]_inst 
       (.I(result_OBUF[15]),
        .O(result[15]));
  LUT6 #(
    .INIT(64'h6966999699699666)) 
    \result_OBUF[15]_inst_i_1 
       (.I0(A_IBUF[15]),
        .I1(B_IBUF[15]),
        .I2(carry_13),
        .I3(B_IBUF[14]),
        .I4(mode),
        .I5(A_IBUF[14]),
        .O(result_OBUF[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    \result_OBUF[15]_inst_i_10 
       (.I0(A_IBUF[11]),
        .I1(mode1_IBUF),
        .I2(mode0_IBUF),
        .I3(B_IBUF[11]),
        .O(temp3__10));
  LUT4 #(
    .INIT(16'hA208)) 
    \result_OBUF[15]_inst_i_11 
       (.I0(A_IBUF[8]),
        .I1(mode1_IBUF),
        .I2(mode0_IBUF),
        .I3(B_IBUF[8]),
        .O(temp3__7));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    \result_OBUF[15]_inst_i_12 
       (.I0(A_IBUF[7]),
        .I1(mode1_IBUF),
        .I2(mode0_IBUF),
        .I3(B_IBUF[7]),
        .O(temp3__6));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6966)) 
    \result_OBUF[15]_inst_i_13 
       (.I0(A_IBUF[7]),
        .I1(B_IBUF[7]),
        .I2(mode0_IBUF),
        .I3(mode1_IBUF),
        .O(\mod8/temp1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6966)) 
    \result_OBUF[15]_inst_i_14 
       (.I0(A_IBUF[8]),
        .I1(B_IBUF[8]),
        .I2(mode0_IBUF),
        .I3(mode1_IBUF),
        .O(\mod9/temp1 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6966)) 
    \result_OBUF[15]_inst_i_15 
       (.I0(A_IBUF[9]),
        .I1(B_IBUF[9]),
        .I2(mode0_IBUF),
        .I3(mode1_IBUF),
        .O(\mod10/temp1 ));
  LUT6 #(
    .INIT(64'hB2FFFFE800B2E800)) 
    \result_OBUF[15]_inst_i_2 
       (.I0(carry_11),
        .I1(B_IBUF[12]),
        .I2(A_IBUF[12]),
        .I3(B_IBUF[13]),
        .I4(mode),
        .I5(A_IBUF[13]),
        .O(carry_13));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[15]_inst_i_3 
       (.I0(mode1_IBUF),
        .I1(mode0_IBUF),
        .O(mode));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAA8880)) 
    \result_OBUF[15]_inst_i_4 
       (.I0(\mod12/temp1 ),
        .I1(\mod11/temp1 ),
        .I2(temp2__8),
        .I3(temp3__8),
        .I4(temp3__9),
        .I5(temp3__10),
        .O(carry_11));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6966)) 
    \result_OBUF[15]_inst_i_5 
       (.I0(A_IBUF[11]),
        .I1(B_IBUF[11]),
        .I2(mode0_IBUF),
        .I3(mode1_IBUF),
        .O(\mod12/temp1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6966)) 
    \result_OBUF[15]_inst_i_6 
       (.I0(A_IBUF[10]),
        .I1(B_IBUF[10]),
        .I2(mode0_IBUF),
        .I3(mode1_IBUF),
        .O(\mod11/temp1 ));
  LUT6 #(
    .INIT(64'hFEEEAAAA00000000)) 
    \result_OBUF[15]_inst_i_7 
       (.I0(temp3__7),
        .I1(temp3__6),
        .I2(carry_6),
        .I3(\mod8/temp1 ),
        .I4(\mod9/temp1 ),
        .I5(\mod10/temp1 ),
        .O(temp2__8));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    \result_OBUF[15]_inst_i_8 
       (.I0(A_IBUF[9]),
        .I1(mode1_IBUF),
        .I2(mode0_IBUF),
        .I3(B_IBUF[9]),
        .O(temp3__8));
  LUT4 #(
    .INIT(16'hA208)) 
    \result_OBUF[15]_inst_i_9 
       (.I0(A_IBUF[10]),
        .I1(mode1_IBUF),
        .I2(mode0_IBUF),
        .I3(B_IBUF[10]),
        .O(temp3__9));
  OBUF \result_OBUF[1]_inst 
       (.I(result_OBUF[1]),
        .O(result[1]));
  LUT6 #(
    .INIT(64'h9666969666966666)) 
    \result_OBUF[1]_inst_i_1 
       (.I0(A_IBUF[1]),
        .I1(B_IBUF[1]),
        .I2(B_IBUF[0]),
        .I3(mode0_IBUF),
        .I4(mode1_IBUF),
        .I5(A_IBUF[0]),
        .O(result_OBUF[1]));
  OBUF \result_OBUF[2]_inst 
       (.I(result_OBUF[2]),
        .O(result[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    \result_OBUF[2]_inst_i_1 
       (.I0(mode1_IBUF),
        .I1(mode0_IBUF),
        .I2(A_IBUF[2]),
        .I3(B_IBUF[2]),
        .I4(carry_1),
        .O(result_OBUF[2]));
  OBUF \result_OBUF[3]_inst 
       (.I(result_OBUF[3]),
        .O(result[3]));
  LUT6 #(
    .INIT(64'h6966999699699666)) 
    \result_OBUF[3]_inst_i_1 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[3]),
        .I2(carry_1),
        .I3(B_IBUF[2]),
        .I4(mode),
        .I5(A_IBUF[2]),
        .O(result_OBUF[3]));
  LUT6 #(
    .INIT(64'hF8DFF8F8800D8080)) 
    \result_OBUF[3]_inst_i_2 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[0]),
        .I2(B_IBUF[1]),
        .I3(mode0_IBUF),
        .I4(mode1_IBUF),
        .I5(A_IBUF[1]),
        .O(carry_1));
  OBUF \result_OBUF[4]_inst 
       (.I(result_OBUF[4]),
        .O(result[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    \result_OBUF[4]_inst_i_1 
       (.I0(mode1_IBUF),
        .I1(mode0_IBUF),
        .I2(A_IBUF[4]),
        .I3(B_IBUF[4]),
        .I4(carry_3),
        .O(result_OBUF[4]));
  OBUF \result_OBUF[5]_inst 
       (.I(result_OBUF[5]),
        .O(result[5]));
  LUT6 #(
    .INIT(64'h6966999699699666)) 
    \result_OBUF[5]_inst_i_1 
       (.I0(A_IBUF[5]),
        .I1(B_IBUF[5]),
        .I2(carry_3),
        .I3(B_IBUF[4]),
        .I4(mode),
        .I5(A_IBUF[4]),
        .O(result_OBUF[5]));
  LUT6 #(
    .INIT(64'hB2FFFFE800B2E800)) 
    \result_OBUF[5]_inst_i_2 
       (.I0(carry_1),
        .I1(B_IBUF[2]),
        .I2(A_IBUF[2]),
        .I3(B_IBUF[3]),
        .I4(mode),
        .I5(A_IBUF[3]),
        .O(carry_3));
  OBUF \result_OBUF[6]_inst 
       (.I(result_OBUF[6]),
        .O(result[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    \result_OBUF[6]_inst_i_1 
       (.I0(mode1_IBUF),
        .I1(mode0_IBUF),
        .I2(A_IBUF[6]),
        .I3(B_IBUF[6]),
        .I4(carry_5),
        .O(result_OBUF[6]));
  OBUF \result_OBUF[7]_inst 
       (.I(result_OBUF[7]),
        .O(result[7]));
  LUT6 #(
    .INIT(64'h6966999699699666)) 
    \result_OBUF[7]_inst_i_1 
       (.I0(A_IBUF[7]),
        .I1(B_IBUF[7]),
        .I2(carry_5),
        .I3(B_IBUF[6]),
        .I4(mode),
        .I5(A_IBUF[6]),
        .O(result_OBUF[7]));
  LUT6 #(
    .INIT(64'hB2FFFFE800B2E800)) 
    \result_OBUF[7]_inst_i_2 
       (.I0(carry_3),
        .I1(B_IBUF[4]),
        .I2(A_IBUF[4]),
        .I3(B_IBUF[5]),
        .I4(mode),
        .I5(A_IBUF[5]),
        .O(carry_5));
  OBUF \result_OBUF[8]_inst 
       (.I(result_OBUF[8]),
        .O(result[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    \result_OBUF[8]_inst_i_1 
       (.I0(mode1_IBUF),
        .I1(mode0_IBUF),
        .I2(A_IBUF[8]),
        .I3(B_IBUF[8]),
        .I4(carry_7),
        .O(result_OBUF[8]));
  OBUF \result_OBUF[9]_inst 
       (.I(result_OBUF[9]),
        .O(result[9]));
  LUT6 #(
    .INIT(64'h6966999699699666)) 
    \result_OBUF[9]_inst_i_1 
       (.I0(A_IBUF[9]),
        .I1(B_IBUF[9]),
        .I2(carry_7),
        .I3(B_IBUF[8]),
        .I4(mode),
        .I5(A_IBUF[8]),
        .O(result_OBUF[9]));
  LUT6 #(
    .INIT(64'hB2FFFFE800B2E800)) 
    \result_OBUF[9]_inst_i_2 
       (.I0(carry_5),
        .I1(B_IBUF[6]),
        .I2(A_IBUF[6]),
        .I3(B_IBUF[7]),
        .I4(mode),
        .I5(A_IBUF[7]),
        .O(carry_7));
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
