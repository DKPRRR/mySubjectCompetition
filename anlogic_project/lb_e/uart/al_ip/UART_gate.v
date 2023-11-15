// Verilog netlist created by Tang Dynasty v5.6.71036
// Sat Nov 11 23:52:10 2023

`timescale 1ns / 1ps
module UART
  (
  clk,
  rst_n,
  rxd,
  tx_data,
  tx_en,
  rx_data,
  rx_err,
  rx_vld,
  tx_rdy,
  txd
  );

  input clk;
  input rst_n;
  input rxd;
  input [7:0] tx_data;
  input tx_en;
  output [7:0] rx_data;
  output rx_err;
  output rx_vld;
  output tx_rdy;
  output txd;

  parameter CLK_DIV_NUM = 1;
  parameter DATA_BIT = 8;
  parameter PARITY_BIT = "None";
  parameter STOP_BIT = "1";
  wire [2:0] al_90ec5389;
  wire [2:0] al_f45e6b02;
  wire [7:0] al_b9239e2f;
  wire [7:0] al_a4b303d;
  wire [7:0] al_d0c3ff20;
  wire [2:0] al_868bc035;
  wire [5:0] al_255c21cc;
  wire [5:0] al_d122a757;
  wire [2:0] al_64cda68c;
  wire [2:0] al_4bbea03;
  wire [2:0] al_51453453;
  wire  al_f46dca84;
  wire [2:0] al_82156b0c;
  wire [3:0] al_ab9d8a6b;
  wire [3:0] al_5394316e;
  wire [7:0] al_66ac1e2c;
  wire [7:0] al_bbbd5217;
  wire al_af279062;
  wire al_171a4d83;
  wire al_bff01655;
  wire al_2c4a8067;
  wire al_275eaa9f;
  wire al_7962a7db;
  wire al_590d6818;
  wire al_a11ff18f;
  wire al_35df3ed5;
  wire al_f8442531;
  wire al_3da26498;
  wire al_8767dea3;
  wire al_d7374510;
  wire al_5e3aa3d9;
  wire al_c189624b;
  wire al_ab71339f;
  wire al_7b0a6f6c;
  wire al_4d6e6ef4;
  wire al_3a1453b1;
  wire al_e89e58de;
  wire al_4fd196c4;
  wire al_1590c198;
  wire al_29d2da79;
  wire al_87548dd3;
  wire al_94a79ee1;
  wire al_66b29cce;
  wire al_8e61e858;
  wire al_bb49be63;
  wire al_aa8f67aa;
  wire al_2987377d;
  wire al_e5947718;
  wire al_c9feb186;
  wire al_fb00635b;
  wire al_10c8d026;
  wire al_9ebf6313;
  wire al_5ea12a83;
  wire al_7a41626d;
  wire al_ce8dc8c6;
  wire al_1b288f5f;
  wire al_9d8d5066;
  wire al_6b9aadef;
  wire al_742955f5;
  wire al_4ee01277;
  wire al_1810ff50;
  wire al_4240b8f4;
  wire al_92a6b6c5;
  wire al_46e816d3;
  wire al_cac3f349;
  wire al_3e90220e;
  wire al_da7ff39c;
  wire al_adf78afa;
  wire al_ccf0619;
  wire al_afca84e;
  wire al_7e8b6626;
  wire al_660a0fdc;
  wire al_b1e4d128;
  wire al_a576c55c;

  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    al_599ce9e1 (
    .a(al_90ec5389[0]),
    .b(tx_rdy),
    .o(al_f45e6b02[0]));
  AL_MAP_LUT3 #(
    .EQN("(~C*(B@A))"),
    .INIT(8'h06))
    al_90d37ae6 (
    .a(al_90ec5389[0]),
    .b(al_90ec5389[1]),
    .c(tx_rdy),
    .o(al_f45e6b02[1]));
  AL_MAP_LUT4 #(
    .EQN("(~D*(C@(B*A)))"),
    .INIT(16'h0078))
    al_1f39bb44 (
    .a(al_90ec5389[0]),
    .b(al_90ec5389[1]),
    .c(al_90ec5389[2]),
    .d(tx_rdy),
    .o(al_f45e6b02[2]));
  AL_DFF_X al_6acfb5b0 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_f45e6b02[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_90ec5389[0]));
  AL_DFF_X al_54eca49e (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_f45e6b02[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_90ec5389[1]));
  AL_DFF_X al_a536c0f1 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_f45e6b02[2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_90ec5389[2]));
  AL_MAP_LUT6 #(
    .EQN("(~F*~(~C*~A*~(E*~(D*~B))))"),
    .INIT(64'h00000000fefffafa))
    al_7e502f12 (
    .a(al_2c4a8067),
    .b(al_4bbea03[0]),
    .c(al_bff01655),
    .d(al_e89e58de),
    .e(al_35df3ed5),
    .f(al_b9239e2f[0]),
    .o(al_a4b303d[0]));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_a343731d (
    .a(al_b9239e2f[0]),
    .b(al_b9239e2f[1]),
    .o(al_d0c3ff20[1]));
  AL_MAP_LUT4 #(
    .EQN("(D*~(~C*~B*~A))"),
    .INIT(16'hfe00))
    al_423c9d73 (
    .a(al_2c4a8067),
    .b(al_bff01655),
    .c(al_35df3ed5),
    .d(al_d0c3ff20[1]),
    .o(al_a4b303d[1]));
  AL_MAP_LUT3 #(
    .EQN("(C@(B*A))"),
    .INIT(8'h78))
    al_a0719375 (
    .a(al_b9239e2f[0]),
    .b(al_b9239e2f[1]),
    .c(al_b9239e2f[2]),
    .o(al_d0c3ff20[2]));
  AL_MAP_LUT4 #(
    .EQN("(D*~(~C*~B*~A))"),
    .INIT(16'hfe00))
    al_9c4c2090 (
    .a(al_2c4a8067),
    .b(al_bff01655),
    .c(al_35df3ed5),
    .d(al_d0c3ff20[2]),
    .o(al_a4b303d[2]));
  AL_MAP_LUT3 #(
    .EQN("(C*~B*~A)"),
    .INIT(8'h10))
    al_c93481d7 (
    .a(al_868bc035[0]),
    .b(al_868bc035[1]),
    .c(al_868bc035[2]),
    .o(al_35df3ed5));
  AL_MAP_LUT4 #(
    .EQN("(D@(C*B*A))"),
    .INIT(16'h7f80))
    al_9aff3327 (
    .a(al_b9239e2f[0]),
    .b(al_b9239e2f[1]),
    .c(al_b9239e2f[2]),
    .d(al_b9239e2f[3]),
    .o(al_d0c3ff20[3]));
  AL_MAP_LUT4 #(
    .EQN("(C*~(~D*~B*~A))"),
    .INIT(16'hf0e0))
    al_c9b6be5e (
    .a(al_2c4a8067),
    .b(al_bff01655),
    .c(al_d0c3ff20[3]),
    .d(al_35df3ed5),
    .o(al_a4b303d[3]));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    al_f59fc3f (
    .a(al_f8442531),
    .b(al_b9239e2f[4]),
    .o(al_d0c3ff20[4]));
  AL_MAP_LUT4 #(
    .EQN("(C*~(~D*~B*~A))"),
    .INIT(16'hf0e0))
    al_47b98870 (
    .a(al_2c4a8067),
    .b(al_bff01655),
    .c(al_d0c3ff20[4]),
    .d(al_35df3ed5),
    .o(al_a4b303d[4]));
  AL_MAP_LUT3 #(
    .EQN("(C@(B*A))"),
    .INIT(8'h78))
    al_89be10f8 (
    .a(al_f8442531),
    .b(al_b9239e2f[4]),
    .c(al_b9239e2f[5]),
    .o(al_d0c3ff20[5]));
  AL_MAP_LUT6 #(
    .EQN("(D*~(~C*~A*~(F*~(E*~B))))"),
    .INIT(64'hfe00ff00fa00fa00))
    al_fdfcedb (
    .a(al_2c4a8067),
    .b(al_4bbea03[0]),
    .c(al_bff01655),
    .d(al_d0c3ff20[5]),
    .e(al_e89e58de),
    .f(al_35df3ed5),
    .o(al_a4b303d[5]));
  AL_MAP_LUT4 #(
    .EQN("(D@(C*B*A))"),
    .INIT(16'h7f80))
    al_2706a3d3 (
    .a(al_f8442531),
    .b(al_b9239e2f[4]),
    .c(al_b9239e2f[5]),
    .d(al_b9239e2f[6]),
    .o(al_d0c3ff20[6]));
  AL_MAP_LUT4 #(
    .EQN("(C*~(~D*~B*~A))"),
    .INIT(16'hf0e0))
    al_aa3fb0d5 (
    .a(al_2c4a8067),
    .b(al_bff01655),
    .c(al_d0c3ff20[6]),
    .d(al_35df3ed5),
    .o(al_a4b303d[6]));
  AL_MAP_LUT5 #(
    .EQN("(E@(D*C*B*A))"),
    .INIT(32'h7fff8000))
    al_4eb8476c (
    .a(al_f8442531),
    .b(al_b9239e2f[4]),
    .c(al_b9239e2f[5]),
    .d(al_b9239e2f[6]),
    .e(al_b9239e2f[7]),
    .o(al_d0c3ff20[7]));
  AL_MAP_LUT6 #(
    .EQN("(D*~(~C*~A*~(F*~(E*~B))))"),
    .INIT(64'hfe00ff00fa00fa00))
    al_ec6cd7d3 (
    .a(al_2c4a8067),
    .b(al_4bbea03[0]),
    .c(al_bff01655),
    .d(al_d0c3ff20[7]),
    .e(al_e89e58de),
    .f(al_35df3ed5),
    .o(al_a4b303d[7]));
  AL_MAP_LUT6 #(
    .EQN("(A*(E@(F*~(D@(~C*~B)))))"),
    .INIT(64'ha80202a8aaaa0000))
    al_a4f61d71 (
    .a(al_275eaa9f),
    .b(al_868bc035[0]),
    .c(al_868bc035[1]),
    .d(al_868bc035[2]),
    .e(al_255c21cc[0]),
    .f(al_8e61e858),
    .o(al_d122a757[0]));
  AL_MAP_LUT3 #(
    .EQN("(A*(C@B))"),
    .INIT(8'h28))
    al_82341d38 (
    .a(al_275eaa9f),
    .b(al_7962a7db),
    .c(al_255c21cc[1]),
    .o(al_d122a757[1]));
  AL_MAP_LUT4 #(
    .EQN("(A*(D@(C*B)))"),
    .INIT(16'h2a80))
    al_77405609 (
    .a(al_275eaa9f),
    .b(al_7962a7db),
    .c(al_255c21cc[1]),
    .d(al_255c21cc[2]),
    .o(al_d122a757[2]));
  AL_MAP_LUT5 #(
    .EQN("(A*(E@(D*C*B)))"),
    .INIT(32'h2aaa8000))
    al_e4d50e45 (
    .a(al_275eaa9f),
    .b(al_7962a7db),
    .c(al_255c21cc[1]),
    .d(al_255c21cc[2]),
    .e(al_255c21cc[3]),
    .o(al_d122a757[3]));
  AL_MAP_LUT6 #(
    .EQN("(A*(F@(E*D*C*B)))"),
    .INIT(64'h2aaaaaaa80000000))
    al_404020c9 (
    .a(al_275eaa9f),
    .b(al_7962a7db),
    .c(al_255c21cc[1]),
    .d(al_255c21cc[2]),
    .e(al_255c21cc[3]),
    .f(al_255c21cc[4]),
    .o(al_d122a757[4]));
  AL_MAP_LUT5 #(
    .EQN("(~E*~(~D*A*~(~C*~B)))"),
    .INIT(32'h0000ff57))
    al_aacd9ba9 (
    .a(al_f8442531),
    .b(al_868bc035[0]),
    .c(al_868bc035[1]),
    .d(al_868bc035[2]),
    .e(rx_vld),
    .o(al_275eaa9f));
  AL_MAP_LUT5 #(
    .EQN("(E*D*~(C@(~B*~A)))"),
    .INIT(32'h1e000000))
    al_21396e52 (
    .a(al_868bc035[0]),
    .b(al_868bc035[1]),
    .c(al_868bc035[2]),
    .d(al_255c21cc[0]),
    .e(al_8e61e858),
    .o(al_7962a7db));
  AL_MAP_LUT6 #(
    .EQN("(F@(E*D*C*B*A))"),
    .INIT(64'h7fffffff80000000))
    al_4832278d (
    .a(al_7962a7db),
    .b(al_255c21cc[1]),
    .c(al_255c21cc[2]),
    .d(al_255c21cc[3]),
    .e(al_255c21cc[4]),
    .f(al_255c21cc[5]),
    .o(al_590d6818));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_2ed8f5fa (
    .a(al_590d6818),
    .b(al_275eaa9f),
    .o(al_d122a757[5]));
  AL_MAP_LUT5 #(
    .EQN("(E*~D*~C*~(~B*~A))"),
    .INIT(32'h000e0000))
    al_832e59ab (
    .a(al_868bc035[0]),
    .b(al_868bc035[1]),
    .c(al_868bc035[2]),
    .d(al_255c21cc[2]),
    .e(al_255c21cc[3]),
    .o(al_d7374510));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*B*A)"),
    .INIT(16'h0008))
    al_2aec8b8 (
    .a(al_d7374510),
    .b(al_c189624b),
    .c(al_255c21cc[4]),
    .d(al_255c21cc[5]),
    .o(al_5e3aa3d9));
  AL_MAP_LUT5 #(
    .EQN("(~E*~(~B*~(~D*~C*A)))"),
    .INIT(32'h0000ccce))
    al_2b002e95 (
    .a(al_5e3aa3d9),
    .b(al_3da26498),
    .c(al_255c21cc[0]),
    .d(al_255c21cc[1]),
    .e(rx_vld),
    .o(al_8767dea3));
  AL_DFF_X al_b974c8e4 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_8767dea3),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_3da26498));
  AL_MAP_LUT3 #(
    .EQN("~(~A*~(C*B))"),
    .INIT(8'hea))
    al_a3ae2726 (
    .a(al_2c4a8067),
    .b(al_4bbea03[0]),
    .c(al_35df3ed5),
    .o(al_64cda68c[0]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    al_d9ac6daa (
    .a(al_a11ff18f),
    .b(al_bff01655),
    .o(al_64cda68c[1]));
  AL_MAP_LUT6 #(
    .EQN("(E*~D*A*(B*~(C)*~(F)+~(B)*C*F))"),
    .INIT(64'h0020000000080000))
    al_6d569095 (
    .a(al_c189624b),
    .b(al_b9239e2f[4]),
    .c(al_b9239e2f[5]),
    .d(al_b9239e2f[6]),
    .e(al_b9239e2f[7]),
    .f(al_868bc035[0]),
    .o(al_a11ff18f));
  AL_MAP_LUT6 #(
    .EQN("(B*~((~D*~C*~A))*E*~(F)+B*(~D*~C*~A)*E*~(F)+~(B)*(~D*~C*~A)*~(E)*F+B*(~D*~C*~A)*~(E)*F)"),
    .INIT(64'h00000005cccc0000))
    al_e0bf4957 (
    .a(al_4bbea03[0]),
    .b(al_a11ff18f),
    .c(al_e89e58de),
    .d(al_868bc035[0]),
    .e(al_868bc035[1]),
    .f(al_868bc035[2]),
    .o(al_64cda68c[2]));
  AL_DFF_X al_2236f770 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_a4b303d[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_b9239e2f[0]));
  AL_DFF_X al_102f945a (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_a4b303d[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_b9239e2f[1]));
  AL_DFF_X al_bb0bd698 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_a4b303d[2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_b9239e2f[2]));
  AL_DFF_X al_71e05574 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_a4b303d[3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_b9239e2f[3]));
  AL_DFF_X al_2d428278 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_a4b303d[4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_b9239e2f[4]));
  AL_DFF_X al_a2f7cc08 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_a4b303d[5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_b9239e2f[5]));
  AL_DFF_X al_93ae9732 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_a4b303d[6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_b9239e2f[6]));
  AL_DFF_X al_9b6bcac0 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_a4b303d[7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_b9239e2f[7]));
  AL_DFF_X al_175f0a38 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_64cda68c[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_868bc035[0]));
  AL_DFF_X al_48627e7b (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_64cda68c[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_868bc035[1]));
  AL_DFF_X al_af197da6 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_64cda68c[2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_868bc035[2]));
  AL_DFF_X al_8b9e175c (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_d122a757[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_255c21cc[0]));
  AL_DFF_X al_1f50c02b (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_d122a757[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_255c21cc[1]));
  AL_DFF_X al_fbda7685 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_d122a757[2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_255c21cc[2]));
  AL_DFF_X al_44bd86e0 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_d122a757[3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_255c21cc[3]));
  AL_DFF_X al_436ac4 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_d122a757[4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_255c21cc[4]));
  AL_DFF_X al_f9bfdb16 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_d122a757[5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_255c21cc[5]));
  AL_DFF_X al_843a39fe (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(rx_data[1]),
    .en(al_af279062),
    .sr(1'b0),
    .ss(1'b0),
    .q(rx_data[0]));
  AL_DFF_X al_8c2e424e (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(rx_data[2]),
    .en(al_af279062),
    .sr(1'b0),
    .ss(1'b0),
    .q(rx_data[1]));
  AL_DFF_X al_565780d6 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(rx_data[3]),
    .en(al_af279062),
    .sr(1'b0),
    .ss(1'b0),
    .q(rx_data[2]));
  AL_DFF_X al_184bb457 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(rx_data[4]),
    .en(al_af279062),
    .sr(1'b0),
    .ss(1'b0),
    .q(rx_data[3]));
  AL_DFF_X al_b1854c60 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(rx_data[5]),
    .en(al_af279062),
    .sr(1'b0),
    .ss(1'b0),
    .q(rx_data[4]));
  AL_DFF_X al_218d40ea (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(rx_data[6]),
    .en(al_af279062),
    .sr(1'b0),
    .ss(1'b0),
    .q(rx_data[5]));
  AL_DFF_X al_eb1ad0ee (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(rx_data[7]),
    .en(al_af279062),
    .sr(1'b0),
    .ss(1'b0),
    .q(rx_data[6]));
  AL_DFF_X al_8e7cd6db (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_29d2da79),
    .en(al_af279062),
    .sr(1'b0),
    .ss(1'b0),
    .q(rx_data[7]));
  AL_MAP_LUT5 #(
    .EQN("(E*~D*~C*~(~B*~A))"),
    .INIT(32'h000e0000))
    al_95912772 (
    .a(al_4bbea03[0]),
    .b(al_e89e58de),
    .c(al_868bc035[0]),
    .d(al_868bc035[1]),
    .e(al_868bc035[2]),
    .o(al_1590c198));
  AL_MAP_LUT5 #(
    .EQN("(E*~(~D*~C*~(B*A)))"),
    .INIT(32'hfff80000))
    al_ab0c1e3b (
    .a(al_b9239e2f[3]),
    .b(al_b9239e2f[4]),
    .c(al_b9239e2f[5]),
    .d(al_b9239e2f[6]),
    .e(al_b9239e2f[7]),
    .o(al_7b0a6f6c));
  AL_MAP_LUT5 #(
    .EQN("(D*~C*~B*~(~E*~A))"),
    .INIT(32'h03000200))
    al_a7cc788f (
    .a(al_3da26498),
    .b(al_868bc035[0]),
    .c(al_868bc035[1]),
    .d(al_868bc035[2]),
    .e(al_aa8f67aa),
    .o(al_4fd196c4));
  AL_MAP_LUT3 #(
    .EQN("(A*~(~C*~B))"),
    .INIT(8'ha8))
    al_e9a83439 (
    .a(al_4fd196c4),
    .b(al_4bbea03[0]),
    .c(al_e89e58de),
    .o(al_ab71339f));
  AL_MAP_LUT4 #(
    .EQN("(D*~C*~B*~A)"),
    .INIT(16'h0100))
    al_2c7bc9e6 (
    .a(al_94a79ee1),
    .b(al_66b29cce),
    .c(al_8e61e858),
    .d(al_bb49be63),
    .o(al_4d6e6ef4));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*~A)"),
    .INIT(8'h01))
    al_a4430ec5 (
    .a(al_b9239e2f[0]),
    .b(al_b9239e2f[1]),
    .c(al_b9239e2f[2]),
    .o(al_3a1453b1));
  AL_MAP_LUT5 #(
    .EQN("(B*A*~(~E*~D*C))"),
    .INIT(32'h88888808))
    al_f7a03072 (
    .a(al_7b0a6f6c),
    .b(al_4d6e6ef4),
    .c(al_3a1453b1),
    .d(al_b9239e2f[5]),
    .e(al_b9239e2f[6]),
    .o(al_4bbea03[0]));
  AL_MAP_LUT6 #(
    .EQN("(F*~E*D*~C*~B*A)"),
    .INIT(64'h0000020000000000))
    al_9212666f (
    .a(al_3a1453b1),
    .b(al_b9239e2f[3]),
    .c(al_b9239e2f[4]),
    .d(al_b9239e2f[5]),
    .e(al_b9239e2f[6]),
    .f(al_b9239e2f[7]),
    .o(al_e89e58de));
  AL_DFF_X al_81b1a854 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_ab71339f),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(rx_err));
  AL_DFF_X al_f840877c (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_1590c198),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(rx_vld));
  AL_DFF_X al_bc20f4c7 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_87548dd3),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_94a79ee1));
  AL_DFF_X al_b554c6ad (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_94a79ee1),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_66b29cce));
  AL_DFF_X al_5553d6a2 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_66b29cce),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_8e61e858));
  AL_DFF_X al_9a777e60 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_8e61e858),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_bb49be63));
  AL_DFF_X al_d7522e2e (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(rxd),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_87548dd3));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*~A)"),
    .INIT(16'h0001))
    al_7a9a493f (
    .a(al_b9239e2f[0]),
    .b(al_b9239e2f[1]),
    .c(al_b9239e2f[2]),
    .d(al_b9239e2f[3]),
    .o(al_c189624b));
  AL_MAP_LUT3 #(
    .EQN("(C*~B*~A)"),
    .INIT(8'h10))
    al_d44c8529 (
    .a(al_b9239e2f[6]),
    .b(al_b9239e2f[7]),
    .c(al_868bc035[0]),
    .o(al_171a4d83));
  AL_MAP_LUT6 #(
    .EQN("(~F*~(~E*~(~D*C*B*A)))"),
    .INIT(64'h00000000ffff0080))
    al_49b9e619 (
    .a(al_c189624b),
    .b(al_171a4d83),
    .c(al_b9239e2f[4]),
    .d(al_b9239e2f[5]),
    .e(al_868bc035[1]),
    .f(al_868bc035[2]),
    .o(al_bff01655));
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    al_d2d0b8dc (
    .a(al_b9239e2f[0]),
    .b(al_b9239e2f[1]),
    .c(al_b9239e2f[2]),
    .d(al_b9239e2f[3]),
    .o(al_f8442531));
  AL_MAP_LUT6 #(
    .EQN("(~E*(~(A)*B*~(C)*~(D)*~(F)+A*B*~(C)*~(D)*~(F)+~(A)*~(B)*C*~(D)*~(F)+A*~(B)*C*~(D)*~(F)+~(A)*B*C*~(D)*~(F)+A*B*C*~(D)*~(F)+~(A)*~(B)*C*D*~(F)+~(A)*B*C*D*~(F)+~(A)*B*~(C)*~(D)*F+A*B*~(C)*~(D)*F+~(A)*~(B)*C*D*F+~(A)*B*C*D*F))"),
    .INIT(64'h0000500c000050fc))
    al_2abdfb4b (
    .a(al_e89e58de),
    .b(al_4d6e6ef4),
    .c(al_868bc035[0]),
    .d(al_868bc035[1]),
    .e(al_868bc035[2]),
    .f(al_bff01655),
    .o(al_2c4a8067));
  AL_MAP_LUT3 #(
    .EQN("(C*B*~A)"),
    .INIT(8'h40))
    al_98928296 (
    .a(al_2c4a8067),
    .b(al_bff01655),
    .c(al_f8442531),
    .o(al_af279062));
  AL_MAP_LUT3 #(
    .EQN("~(~C*~B*~A)"),
    .INIT(8'hfe))
    al_7197194c (
    .a(al_255c21cc[3]),
    .b(al_255c21cc[4]),
    .c(al_255c21cc[5]),
    .o(al_29d2da79));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*~A)"),
    .INIT(16'h0001))
    al_cab6ba85 (
    .a(al_29d2da79),
    .b(al_255c21cc[0]),
    .c(al_255c21cc[1]),
    .d(al_255c21cc[2]),
    .o(al_e5947718));
  AL_MAP_LUT6 #(
    .EQN("(~E*~(~F*~(D*(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B))))"),
    .INIT(64'h0000ffff0000b800))
    al_17fce842 (
    .a(al_e5947718),
    .b(al_7b0a6f6c),
    .c(al_4d6e6ef4),
    .d(al_35df3ed5),
    .e(rx_vld),
    .f(al_aa8f67aa),
    .o(al_2987377d));
  AL_DFF_X al_e67d1776 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_2987377d),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_aa8f67aa));
  AL_MAP_LUT5 #(
    .EQN("(~E*~(~(~D*B)*~(C*~A)))"),
    .INIT(32'h000050dc))
    al_aea0cca9 (
    .a(al_a576c55c),
    .b(al_7a41626d),
    .c(al_51453453[0]),
    .d(al_51453453[1]),
    .e(al_51453453[2]),
    .o(al_82156b0c[0]));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_7a5ee64e (
    .a(al_b1e4d128),
    .b(al_ce8dc8c6),
    .c(al_ab9d8a6b[0]),
    .o(al_5ea12a83));
  AL_MAP_LUT4 #(
    .EQN("(~D*(~(A)*B*~(C)+A*B*~(C)+~(A)*~(B)*C))"),
    .INIT(16'h001c))
    al_9305430a (
    .a(al_5ea12a83),
    .b(al_1b288f5f),
    .c(al_51453453[1]),
    .d(al_51453453[2]),
    .o(al_82156b0c[1]));
  AL_MAP_LUT5 #(
    .EQN("(A*B*C*~(D)*~(E)+~(A)*~(B)*~(C)*D*~(E)+A*~(B)*C*~(D)*E+A*B*C*~(D)*E+~(A)*~(B)*~(C)*D*E)"),
    .INIT(32'h01a00180))
    al_d457fe39 (
    .a(al_a576c55c),
    .b(al_51453453[0]),
    .c(al_51453453[1]),
    .d(al_51453453[2]),
    .e(al_5ea12a83),
    .o(al_82156b0c[2]));
  AL_DFF_X al_b9976181 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_82156b0c[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_51453453[0]));
  AL_DFF_X al_2d4e59e9 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_82156b0c[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_51453453[1]));
  AL_DFF_X al_9317e830 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_82156b0c[2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_51453453[2]));
  AL_DFF_X al_b58d9df0 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_5394316e[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_ab9d8a6b[0]));
  AL_DFF_X al_ec299de1 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_5394316e[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_ab9d8a6b[1]));
  AL_DFF_X al_ceac5162 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_5394316e[2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_ab9d8a6b[2]));
  AL_DFF_X al_6a2a4f54 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_5394316e[3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_ab9d8a6b[3]));
  AL_DFF_X al_8ca2cbad (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_bbbd5217[0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_66ac1e2c[0]));
  AL_DFF_X al_45714151 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_bbbd5217[1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_66ac1e2c[1]));
  AL_DFF_X al_4c18300b (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_bbbd5217[2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_66ac1e2c[2]));
  AL_DFF_X al_cea83c51 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_bbbd5217[3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_66ac1e2c[3]));
  AL_DFF_X al_f5ac1211 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_bbbd5217[4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_66ac1e2c[4]));
  AL_DFF_X al_93985aa0 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_bbbd5217[5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_66ac1e2c[5]));
  AL_DFF_X al_9b1e179 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_bbbd5217[6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_66ac1e2c[6]));
  AL_DFF_X al_c76ef8bc (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_bbbd5217[7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_66ac1e2c[7]));
  AL_MAP_LUT5 #(
    .EQN("(~B*~(C*~(E*~(D)*~(A)+E*D*~(A)+~(E)*D*A+E*D*A)))"),
    .INIT(32'h33132303))
    al_b9d11bc7 (
    .a(al_a576c55c),
    .b(al_7a41626d),
    .c(al_51453453[0]),
    .d(al_66ac1e2c[0]),
    .e(txd),
    .o(al_f46dca84));
  AL_MAP_LUT5 #(
    .EQN("(~B*(~E*~((~D*~A))*~(C)+~E*(~D*~A)*~(C)+~(~E)*(~D*~A)*C+~E*(~D*~A)*C))"),
    .INIT(32'h00100313))
    al_67a176fc (
    .a(al_ce8dc8c6),
    .b(al_51453453[0]),
    .c(al_ab9d8a6b[0]),
    .d(al_66ac1e2c[0]),
    .e(txd),
    .o(al_adf78afa));
  AL_MAP_LUT6 #(
    .EQN("(~F*~E*~D*~C*~B*A)"),
    .INIT(64'h0000000000000002))
    al_b9b57107 (
    .a(al_51453453[0]),
    .b(al_ab9d8a6b[0]),
    .c(al_ab9d8a6b[1]),
    .d(al_ab9d8a6b[2]),
    .e(al_ab9d8a6b[3]),
    .f(al_7e8b6626),
    .o(al_ccf0619));
  AL_MAP_LUT6 #(
    .EQN("(~((~B*~A))*~(C)*~(D)*~(E)*~(F)+(~B*~A)*~(C)*~(D)*~(E)*~(F)+~((~B*~A))*C*~(D)*~(E)*~(F)+(~B*~A)*C*~(D)*~(E)*~(F)+~((~B*~A))*~(C)*D*~(E)*~(F)+(~B*~A)*~(C)*D*~(E)*~(F)+~((~B*~A))*C*D*~(E)*~(F)+~((~B*~A))*~(C)*~(D)*E*~(F)+(~B*~A)*~(C)*~(D)*E*~(F)+~((~B*~A))*C*~(D)*E*~(F)+(~B*~A)*C*~(D)*E*~(F)+~((~B*~A))*~(C)*D*E*~(F)+(~B*~A)*~(C)*D*E*~(F)+~((~B*~A))*C*D*E*~(F)+(~B*~A)*C*D*E*~(F)+~((~B*~A))*~(C)*~(D)*~(E)*F+(~B*~A)*~(C)*~(D)*~(E)*F+~((~B*~A))*C*~(D)*~(E)*F+(~B*~A)*C*~(D)*~(E)*F+~((~B*~A))*C*D*~(E)*F)"),
    .INIT(64'h0000e0ffffffefff))
    al_e777be33 (
    .a(al_adf78afa),
    .b(al_ccf0619),
    .c(al_b1e4d128),
    .d(al_51453453[1]),
    .e(al_51453453[2]),
    .f(txd),
    .o(al_afca84e));
  AL_MAP_LUT6 #(
    .EQN("~(B*~(~E*(A*~((~D*C))*~(F)+A*(~D*C)*~(F)+~(A)*(~D*C)*F+A*(~D*C)*F)))"),
    .INIT(64'h333333f33333bbbb))
    al_f6e602c0 (
    .a(al_f46dca84),
    .b(al_afca84e),
    .c(al_b1e4d128),
    .d(al_51453453[0]),
    .e(al_51453453[1]),
    .f(al_51453453[2]),
    .o(al_da7ff39c));
  AL_DFF_X al_7bd115f1 (
    .ar(1'b0),
    .as(~rst_n),
    .clk(clk),
    .d(al_da7ff39c),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(txd));
  AL_MAP_LUT6 #(
    .EQN("(~(A)*B*C*~(D)*~(E)*~(F)+~(A)*B*~(C)*D*~(E)*~(F)+A*B*~(C)*D*~(E)*~(F)+~(A)*B*C*D*~(E)*~(F)+~(A)*B*~(C)*~(D)*E*~(F)+~(A)*~(B)*C*~(D)*~(E)*F+~(A)*~(B)*~(C)*D*~(E)*F+A*~(B)*~(C)*D*~(E)*F+~(A)*~(B)*C*D*~(E)*F+~(A)*~(B)*~(C)*~(D)*E*F+~(A)*~(B)*C*~(D)*E*F+A*~(B)*C*~(D)*E*F+~(A)*B*C*~(D)*E*F+A*B*C*~(D)*E*F+~(A)*~(B)*~(C)*D*E*F+A*~(B)*~(C)*D*E*F+~(A)*B*~(C)*D*E*F+A*B*~(C)*D*E*F+~(A)*~(B)*C*D*E*F+A*~(B)*C*D*E*F+~(A)*B*C*D*E*F+A*B*C*D*E*F)"),
    .INIT(64'hfff1131000044c40))
    al_52ec989f (
    .a(al_a576c55c),
    .b(al_b1e4d128),
    .c(al_51453453[0]),
    .d(al_51453453[1]),
    .e(al_51453453[2]),
    .f(al_ab9d8a6b[0]),
    .o(al_5394316e[0]));
  AL_MAP_LUT6 #(
    .EQN("(A*~(B)*C*~(D)*E*~(F)+~(A)*B*~(C)*~(D)*~(E)*F+~(A)*~(B)*C*~(D)*~(E)*F+A*~(B)*C*~(D)*~(E)*F+~(A)*B*C*~(D)*~(E)*F+~(A)*~(B)*~(C)*D*~(E)*F+~(A)*B*~(C)*D*~(E)*F+A*B*~(C)*D*~(E)*F+~(A)*~(B)*C*D*~(E)*F+A*~(B)*C*D*~(E)*F+~(A)*B*C*D*~(E)*F+A*B*C*D*~(E)*F+~(A)*B*~(C)*~(D)*E*F+~(A)*~(B)*C*~(D)*E*F+~(A)*B*C*~(D)*E*F+~(A)*~(B)*~(C)*D*E*F+~(A)*B*~(C)*D*E*F+A*B*~(C)*D*E*F+~(A)*~(B)*C*D*E*F+A*~(B)*C*D*E*F+~(A)*B*C*D*E*F+A*B*C*D*E*F)"),
    .INIT(64'hfd54fd7400200000))
    al_7b1b9346 (
    .a(al_b1e4d128),
    .b(al_51453453[0]),
    .c(al_51453453[1]),
    .d(al_51453453[2]),
    .e(al_ab9d8a6b[0]),
    .f(al_ab9d8a6b[1]),
    .o(al_5394316e[1]));
  AL_MAP_LUT6 #(
    .EQN("(A*B*~(C)*D*~(E)*~(F)+~(A)*~(B)*C*~(D)*~(E)*F+~(A)*B*C*~(D)*~(E)*F+~(A)*~(B)*~(C)*D*~(E)*F+A*~(B)*~(C)*D*~(E)*F+~(A)*B*~(C)*D*~(E)*F+~(A)*~(B)*C*D*~(E)*F+~(A)*B*C*D*~(E)*F+~(A)*~(B)*~(C)*~(D)*E*F+~(A)*B*~(C)*~(D)*E*F+~(A)*~(B)*C*~(D)*E*F+A*~(B)*C*~(D)*E*F+~(A)*B*C*~(D)*E*F+A*B*C*~(D)*E*F+~(A)*~(B)*~(C)*D*E*F+A*~(B)*~(C)*D*E*F+~(A)*B*~(C)*D*E*F+A*B*~(C)*D*E*F+~(A)*~(B)*C*D*E*F+A*~(B)*C*D*E*F+~(A)*B*C*D*E*F+A*B*C*D*E*F)"),
    .INIT(64'hfff5575000000800))
    al_b9ff4cc2 (
    .a(al_b1e4d128),
    .b(al_c9feb186),
    .c(al_51453453[0]),
    .d(al_51453453[1]),
    .e(al_51453453[2]),
    .f(al_ab9d8a6b[2]),
    .o(al_5394316e[2]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_5cda2ac (
    .a(al_ab9d8a6b[0]),
    .b(al_ab9d8a6b[1]),
    .o(al_c9feb186));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    al_f637f1aa (
    .a(al_c9feb186),
    .b(al_ab9d8a6b[2]),
    .o(al_fb00635b));
  AL_MAP_LUT6 #(
    .EQN("(A*B*~(C)*D*~(E)*~(F)+~(A)*~(B)*C*~(D)*~(E)*F+A*~(B)*C*~(D)*~(E)*F+~(A)*~(B)*~(C)*D*~(E)*F+A*~(B)*~(C)*D*~(E)*F+~(A)*B*~(C)*D*~(E)*F+~(A)*~(B)*C*D*~(E)*F+A*~(B)*C*D*~(E)*F+~(A)*~(B)*~(C)*~(D)*E*F+A*~(B)*~(C)*~(D)*E*F+~(A)*~(B)*C*~(D)*E*F+A*~(B)*C*~(D)*E*F+~(A)*B*C*~(D)*E*F+A*B*C*~(D)*E*F+~(A)*~(B)*~(C)*D*E*F+A*~(B)*~(C)*D*E*F+~(A)*B*~(C)*D*E*F+A*B*~(C)*D*E*F+~(A)*~(B)*C*D*E*F+A*~(B)*C*D*E*F+~(A)*B*C*D*E*F+A*B*C*D*E*F)"),
    .INIT(64'hfff3373000000800))
    al_5584057c (
    .a(al_fb00635b),
    .b(al_b1e4d128),
    .c(al_51453453[0]),
    .d(al_51453453[1]),
    .e(al_51453453[2]),
    .f(al_ab9d8a6b[3]),
    .o(al_5394316e[3]));
  AL_DFF_X al_22f253c2 (
    .ar(~rst_n),
    .as(1'b0),
    .clk(clk),
    .d(al_10c8d026),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(al_7e8b6626));
  AL_MAP_LUT6 #(
    .EQN("(F@E@D@C@B@A)"),
    .INIT(64'h6996966996696996))
    al_45a1ea7a (
    .a(tx_data[5]),
    .b(tx_data[4]),
    .c(tx_data[3]),
    .d(tx_data[2]),
    .e(tx_data[1]),
    .f(tx_data[0]),
    .o(al_9ebf6313));
  AL_MAP_LUT6 #(
    .EQN("(F*~((E@D@A))*~((C*B))+F*(E@D@A)*~((C*B))+~(F)*(E@D@A)*(C*B)+F*(E@D@A)*(C*B))"),
    .INIT(64'hbf7f7fbf80404080))
    al_8632841b (
    .a(al_9ebf6313),
    .b(al_7a41626d),
    .c(al_742955f5),
    .d(tx_data[7]),
    .e(tx_data[6]),
    .f(al_7e8b6626),
    .o(al_10c8d026));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_b063a97 (
    .a(al_90ec5389[0]),
    .b(al_90ec5389[1]),
    .c(al_90ec5389[2]),
    .o(al_b1e4d128));
  AL_MAP_LUT5 #(
    .EQN("(A*~(~E*~D*~C*~B))"),
    .INIT(32'haaaaaaa8))
    al_6d1e5996 (
    .a(al_b1e4d128),
    .b(al_ab9d8a6b[0]),
    .c(al_ab9d8a6b[1]),
    .d(al_ab9d8a6b[2]),
    .e(al_ab9d8a6b[3]),
    .o(al_a576c55c));
  AL_MAP_LUT6 #(
    .EQN("~(~(F*~B)*~(E*~D*~C*A))"),
    .INIT(64'h333b3333000a0000))
    al_d6757692 (
    .a(al_a576c55c),
    .b(tx_en),
    .c(al_51453453[0]),
    .d(al_51453453[1]),
    .e(al_51453453[2]),
    .f(tx_rdy),
    .o(al_660a0fdc));
  AL_DFF_X al_56dde5cc (
    .ar(1'b0),
    .as(~rst_n),
    .clk(clk),
    .d(al_660a0fdc),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(tx_rdy));
  AL_MAP_LUT6 #(
    .EQN("(C*(~(A)*~(B)*~(D)*~(E)*~(F)+A*~(B)*~(D)*~(E)*~(F)+~(A)*B*~(D)*~(E)*~(F)+A*B*~(D)*~(E)*~(F)+~(A)*~(B)*D*~(E)*~(F)+A*~(B)*D*~(E)*~(F)+A*~(B)*~(D)*E*~(F)+~(A)*B*~(D)*E*~(F)+A*B*~(D)*E*~(F)+A*~(B)*D*E*~(F)+~(A)*~(B)*~(D)*~(E)*F+~(A)*B*~(D)*~(E)*F+~(A)*~(B)*D*~(E)*F+~(A)*B*~(D)*E*F))"),
    .INIT(64'h0040105020e030f0))
    al_5c430df1 (
    .a(al_1b288f5f),
    .b(al_7a41626d),
    .c(al_742955f5),
    .d(tx_data[0]),
    .e(al_66ac1e2c[0]),
    .f(al_66ac1e2c[1]),
    .o(al_3e90220e));
  AL_MAP_LUT6 #(
    .EQN("(~A*(~(B)*~(C)*~(D)*~(E)*~(F)+B*~(C)*~(D)*~(E)*~(F)+~(B)*~(C)*~(D)*E*~(F)+B*~(C)*~(D)*E*~(F)+~(B)*C*~(D)*E*~(F)+~(B)*~(C)*D*E*~(F)+B*~(C)*D*E*~(F)+~(B)*C*D*E*~(F)+B*C*D*E*~(F)+~(B)*~(C)*~(D)*~(E)*F+B*~(C)*~(D)*~(E)*F+B*C*~(D)*~(E)*F+~(B)*~(C)*~(D)*E*F+B*~(C)*~(D)*E*F+~(B)*C*~(D)*E*F+B*C*~(D)*E*F+~(B)*~(C)*D*E*F+B*~(C)*D*E*F+~(B)*C*D*E*F+B*C*D*E*F))"),
    .INIT(64'h5555004555150005))
    al_79438ec0 (
    .a(al_3e90220e),
    .b(al_9d8d5066),
    .c(al_51453453[1]),
    .d(al_51453453[2]),
    .e(al_66ac1e2c[0]),
    .f(al_66ac1e2c[1]),
    .o(al_bbbd5217[0]));
  AL_MAP_LUT6 #(
    .EQN("(C*(~(A)*~(B)*~(D)*~(E)*~(F)+A*~(B)*~(D)*~(E)*~(F)+~(A)*B*~(D)*~(E)*~(F)+A*B*~(D)*~(E)*~(F)+~(A)*~(B)*D*~(E)*~(F)+A*~(B)*D*~(E)*~(F)+A*~(B)*~(D)*E*~(F)+~(A)*B*~(D)*E*~(F)+A*B*~(D)*E*~(F)+A*~(B)*D*E*~(F)+~(A)*~(B)*~(D)*~(E)*F+~(A)*B*~(D)*~(E)*F+~(A)*~(B)*D*~(E)*F+~(A)*B*~(D)*E*F))"),
    .INIT(64'h0040105020e030f0))
    al_6b16e0a9 (
    .a(al_1b288f5f),
    .b(al_7a41626d),
    .c(al_742955f5),
    .d(tx_data[1]),
    .e(al_66ac1e2c[1]),
    .f(al_66ac1e2c[2]),
    .o(al_cac3f349));
  AL_MAP_LUT6 #(
    .EQN("(~A*(~(B)*~(C)*~(D)*~(E)*~(F)+B*~(C)*~(D)*~(E)*~(F)+~(B)*~(C)*~(D)*E*~(F)+B*~(C)*~(D)*E*~(F)+~(B)*C*~(D)*E*~(F)+~(B)*~(C)*D*E*~(F)+B*~(C)*D*E*~(F)+~(B)*C*D*E*~(F)+B*C*D*E*~(F)+~(B)*~(C)*~(D)*~(E)*F+B*~(C)*~(D)*~(E)*F+B*C*~(D)*~(E)*F+~(B)*~(C)*~(D)*E*F+B*~(C)*~(D)*E*F+~(B)*C*~(D)*E*F+B*C*~(D)*E*F+~(B)*~(C)*D*E*F+B*~(C)*D*E*F+~(B)*C*D*E*F+B*C*D*E*F))"),
    .INIT(64'h5555004555150005))
    al_f4307f76 (
    .a(al_cac3f349),
    .b(al_9d8d5066),
    .c(al_51453453[1]),
    .d(al_51453453[2]),
    .e(al_66ac1e2c[1]),
    .f(al_66ac1e2c[2]),
    .o(al_bbbd5217[1]));
  AL_MAP_LUT6 #(
    .EQN("(C*(~(A)*~(B)*~(D)*~(E)*~(F)+A*~(B)*~(D)*~(E)*~(F)+~(A)*B*~(D)*~(E)*~(F)+A*B*~(D)*~(E)*~(F)+~(A)*~(B)*D*~(E)*~(F)+A*~(B)*D*~(E)*~(F)+A*~(B)*~(D)*E*~(F)+~(A)*B*~(D)*E*~(F)+A*B*~(D)*E*~(F)+A*~(B)*D*E*~(F)+~(A)*~(B)*~(D)*~(E)*F+~(A)*B*~(D)*~(E)*F+~(A)*~(B)*D*~(E)*F+~(A)*B*~(D)*E*F))"),
    .INIT(64'h0040105020e030f0))
    al_183d9181 (
    .a(al_1b288f5f),
    .b(al_7a41626d),
    .c(al_742955f5),
    .d(tx_data[2]),
    .e(al_66ac1e2c[2]),
    .f(al_66ac1e2c[3]),
    .o(al_46e816d3));
  AL_MAP_LUT6 #(
    .EQN("(~A*(~(B)*~(C)*~(D)*~(E)*~(F)+B*~(C)*~(D)*~(E)*~(F)+~(B)*~(C)*~(D)*E*~(F)+B*~(C)*~(D)*E*~(F)+~(B)*C*~(D)*E*~(F)+~(B)*~(C)*D*E*~(F)+B*~(C)*D*E*~(F)+~(B)*C*D*E*~(F)+B*C*D*E*~(F)+~(B)*~(C)*~(D)*~(E)*F+B*~(C)*~(D)*~(E)*F+B*C*~(D)*~(E)*F+~(B)*~(C)*~(D)*E*F+B*~(C)*~(D)*E*F+~(B)*C*~(D)*E*F+B*C*~(D)*E*F+~(B)*~(C)*D*E*F+B*~(C)*D*E*F+~(B)*C*D*E*F+B*C*D*E*F))"),
    .INIT(64'h5555004555150005))
    al_6e1eccd6 (
    .a(al_46e816d3),
    .b(al_9d8d5066),
    .c(al_51453453[1]),
    .d(al_51453453[2]),
    .e(al_66ac1e2c[2]),
    .f(al_66ac1e2c[3]),
    .o(al_bbbd5217[2]));
  AL_MAP_LUT6 #(
    .EQN("(C*(~(A)*~(B)*~(D)*~(E)*~(F)+A*~(B)*~(D)*~(E)*~(F)+~(A)*B*~(D)*~(E)*~(F)+A*B*~(D)*~(E)*~(F)+~(A)*~(B)*D*~(E)*~(F)+A*~(B)*D*~(E)*~(F)+A*~(B)*~(D)*E*~(F)+~(A)*B*~(D)*E*~(F)+A*B*~(D)*E*~(F)+A*~(B)*D*E*~(F)+~(A)*~(B)*~(D)*~(E)*F+~(A)*B*~(D)*~(E)*F+~(A)*~(B)*D*~(E)*F+~(A)*B*~(D)*E*F))"),
    .INIT(64'h0040105020e030f0))
    al_d9343e79 (
    .a(al_1b288f5f),
    .b(al_7a41626d),
    .c(al_742955f5),
    .d(tx_data[3]),
    .e(al_66ac1e2c[3]),
    .f(al_66ac1e2c[4]),
    .o(al_92a6b6c5));
  AL_MAP_LUT6 #(
    .EQN("(~A*(~(B)*~(C)*~(D)*~(E)*~(F)+B*~(C)*~(D)*~(E)*~(F)+~(B)*~(C)*~(D)*E*~(F)+B*~(C)*~(D)*E*~(F)+~(B)*C*~(D)*E*~(F)+~(B)*~(C)*D*E*~(F)+B*~(C)*D*E*~(F)+~(B)*C*D*E*~(F)+B*C*D*E*~(F)+~(B)*~(C)*~(D)*~(E)*F+B*~(C)*~(D)*~(E)*F+B*C*~(D)*~(E)*F+~(B)*~(C)*~(D)*E*F+B*~(C)*~(D)*E*F+~(B)*C*~(D)*E*F+B*C*~(D)*E*F+~(B)*~(C)*D*E*F+B*~(C)*D*E*F+~(B)*C*D*E*F+B*C*D*E*F))"),
    .INIT(64'h5555004555150005))
    al_1306aeaf (
    .a(al_92a6b6c5),
    .b(al_9d8d5066),
    .c(al_51453453[1]),
    .d(al_51453453[2]),
    .e(al_66ac1e2c[3]),
    .f(al_66ac1e2c[4]),
    .o(al_bbbd5217[3]));
  AL_MAP_LUT6 #(
    .EQN("(C*(~(A)*~(B)*~(D)*~(E)*~(F)+A*~(B)*~(D)*~(E)*~(F)+~(A)*B*~(D)*~(E)*~(F)+A*B*~(D)*~(E)*~(F)+~(A)*~(B)*D*~(E)*~(F)+A*~(B)*D*~(E)*~(F)+A*~(B)*~(D)*E*~(F)+~(A)*B*~(D)*E*~(F)+A*B*~(D)*E*~(F)+A*~(B)*D*E*~(F)+~(A)*~(B)*~(D)*~(E)*F+~(A)*B*~(D)*~(E)*F+~(A)*~(B)*D*~(E)*F+~(A)*B*~(D)*E*F))"),
    .INIT(64'h0040105020e030f0))
    al_d2322acb (
    .a(al_1b288f5f),
    .b(al_7a41626d),
    .c(al_742955f5),
    .d(tx_data[4]),
    .e(al_66ac1e2c[4]),
    .f(al_66ac1e2c[5]),
    .o(al_4240b8f4));
  AL_MAP_LUT6 #(
    .EQN("(~A*(~(B)*~(C)*~(D)*~(E)*~(F)+B*~(C)*~(D)*~(E)*~(F)+~(B)*~(C)*~(D)*E*~(F)+B*~(C)*~(D)*E*~(F)+~(B)*C*~(D)*E*~(F)+~(B)*~(C)*D*E*~(F)+B*~(C)*D*E*~(F)+~(B)*C*D*E*~(F)+B*C*D*E*~(F)+~(B)*~(C)*~(D)*~(E)*F+B*~(C)*~(D)*~(E)*F+B*C*~(D)*~(E)*F+~(B)*~(C)*~(D)*E*F+B*~(C)*~(D)*E*F+~(B)*C*~(D)*E*F+B*C*~(D)*E*F+~(B)*~(C)*D*E*F+B*~(C)*D*E*F+~(B)*C*D*E*F+B*C*D*E*F))"),
    .INIT(64'h5555004555150005))
    al_ba052234 (
    .a(al_4240b8f4),
    .b(al_9d8d5066),
    .c(al_51453453[1]),
    .d(al_51453453[2]),
    .e(al_66ac1e2c[4]),
    .f(al_66ac1e2c[5]),
    .o(al_bbbd5217[4]));
  AL_MAP_LUT6 #(
    .EQN("(C*(~(A)*~(B)*~(D)*~(E)*~(F)+A*~(B)*~(D)*~(E)*~(F)+~(A)*B*~(D)*~(E)*~(F)+A*B*~(D)*~(E)*~(F)+~(A)*~(B)*D*~(E)*~(F)+A*~(B)*D*~(E)*~(F)+A*~(B)*~(D)*E*~(F)+~(A)*B*~(D)*E*~(F)+A*B*~(D)*E*~(F)+A*~(B)*D*E*~(F)+~(A)*~(B)*~(D)*~(E)*F+~(A)*B*~(D)*~(E)*F+~(A)*~(B)*D*~(E)*F+~(A)*B*~(D)*E*F))"),
    .INIT(64'h0040105020e030f0))
    al_71ccb7f1 (
    .a(al_1b288f5f),
    .b(al_7a41626d),
    .c(al_742955f5),
    .d(tx_data[5]),
    .e(al_66ac1e2c[5]),
    .f(al_66ac1e2c[6]),
    .o(al_1810ff50));
  AL_MAP_LUT6 #(
    .EQN("(~A*(~(B)*~(C)*~(D)*~(E)*~(F)+B*~(C)*~(D)*~(E)*~(F)+~(B)*~(C)*~(D)*E*~(F)+B*~(C)*~(D)*E*~(F)+~(B)*C*~(D)*E*~(F)+~(B)*~(C)*D*E*~(F)+B*~(C)*D*E*~(F)+~(B)*C*D*E*~(F)+B*C*D*E*~(F)+~(B)*~(C)*~(D)*~(E)*F+B*~(C)*~(D)*~(E)*F+B*C*~(D)*~(E)*F+~(B)*~(C)*~(D)*E*F+B*~(C)*~(D)*E*F+~(B)*C*~(D)*E*F+B*C*~(D)*E*F+~(B)*~(C)*D*E*F+B*~(C)*D*E*F+~(B)*C*D*E*F+B*C*D*E*F))"),
    .INIT(64'h5555004555150005))
    al_312c0da1 (
    .a(al_1810ff50),
    .b(al_9d8d5066),
    .c(al_51453453[1]),
    .d(al_51453453[2]),
    .e(al_66ac1e2c[5]),
    .f(al_66ac1e2c[6]),
    .o(al_bbbd5217[5]));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    al_8556a0f1 (
    .a(al_51453453[1]),
    .b(al_51453453[2]),
    .o(al_742955f5));
  AL_MAP_LUT6 #(
    .EQN("(C*(~(A)*~(B)*~(D)*~(E)*~(F)+A*~(B)*~(D)*~(E)*~(F)+~(A)*B*~(D)*~(E)*~(F)+A*B*~(D)*~(E)*~(F)+~(A)*~(B)*D*~(E)*~(F)+A*~(B)*D*~(E)*~(F)+A*~(B)*~(D)*E*~(F)+~(A)*B*~(D)*E*~(F)+A*B*~(D)*E*~(F)+A*~(B)*D*E*~(F)+~(A)*~(B)*~(D)*~(E)*F+~(A)*B*~(D)*~(E)*F+~(A)*~(B)*D*~(E)*F+~(A)*B*~(D)*E*F))"),
    .INIT(64'h0040105020e030f0))
    al_6d0a1b7b (
    .a(al_1b288f5f),
    .b(al_7a41626d),
    .c(al_742955f5),
    .d(tx_data[6]),
    .e(al_66ac1e2c[6]),
    .f(al_66ac1e2c[7]),
    .o(al_4ee01277));
  AL_MAP_LUT6 #(
    .EQN("(~A*(~(B)*~(C)*~(D)*~(E)*~(F)+B*~(C)*~(D)*~(E)*~(F)+~(B)*~(C)*~(D)*E*~(F)+B*~(C)*~(D)*E*~(F)+~(B)*C*~(D)*E*~(F)+~(B)*~(C)*D*E*~(F)+B*~(C)*D*E*~(F)+~(B)*C*D*E*~(F)+B*C*D*E*~(F)+~(B)*~(C)*~(D)*~(E)*F+B*~(C)*~(D)*~(E)*F+B*C*~(D)*~(E)*F+~(B)*~(C)*~(D)*E*F+B*~(C)*~(D)*E*F+~(B)*C*~(D)*E*F+B*C*~(D)*E*F+~(B)*~(C)*D*E*F+B*~(C)*D*E*F+~(B)*C*D*E*F+B*C*D*E*F))"),
    .INIT(64'h5555004555150005))
    al_8a5bb64b (
    .a(al_4ee01277),
    .b(al_9d8d5066),
    .c(al_51453453[1]),
    .d(al_51453453[2]),
    .e(al_66ac1e2c[6]),
    .f(al_66ac1e2c[7]),
    .o(al_bbbd5217[6]));
  AL_MAP_LUT3 #(
    .EQN("(C*~B*A)"),
    .INIT(8'h20))
    al_9c922cb0 (
    .a(tx_en),
    .b(al_51453453[0]),
    .c(tx_rdy),
    .o(al_7a41626d));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)*~(E)+~(A)*B*~(C)*~(D)*~(E)+~(A)*~(B)*~(C)*~(D)*E+~(A)*B*~(C)*~(D)*E+~(A)*~(B)*C*~(D)*E+A*~(B)*C*~(D)*E+~(A)*~(B)*~(C)*D*E+A*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E+~(A)*~(B)*C*D*E+A*~(B)*C*D*E+~(A)*B*C*D*E+A*B*C*D*E)"),
    .INIT(32'hff350005))
    al_726b0e37 (
    .a(al_6b9aadef),
    .b(al_9d8d5066),
    .c(al_51453453[1]),
    .d(al_51453453[2]),
    .e(al_66ac1e2c[7]),
    .o(al_bbbd5217[7]));
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'h80))
    al_5f26eaca (
    .a(al_ab9d8a6b[1]),
    .b(al_ab9d8a6b[2]),
    .c(al_ab9d8a6b[3]),
    .o(al_ce8dc8c6));
  AL_MAP_LUT6 #(
    .EQN("(B*A*~(~F*~E*~D*~C))"),
    .INIT(64'h8888888888888880))
    al_10a416fe (
    .a(al_b1e4d128),
    .b(al_51453453[0]),
    .c(al_ab9d8a6b[0]),
    .d(al_ab9d8a6b[1]),
    .e(al_ab9d8a6b[2]),
    .f(al_ab9d8a6b[3]),
    .o(al_1b288f5f));
  AL_MAP_LUT4 #(
    .EQN("(D*~C*~B*A)"),
    .INIT(16'h0200))
    al_8f3d7bde (
    .a(al_b1e4d128),
    .b(al_ce8dc8c6),
    .c(al_51453453[0]),
    .d(al_ab9d8a6b[0]),
    .o(al_9d8d5066));
  AL_MAP_LUT4 #(
    .EQN("~((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    .INIT(16'h2e3f))
    al_45136871 (
    .a(al_1b288f5f),
    .b(al_7a41626d),
    .c(tx_data[7]),
    .d(al_66ac1e2c[7]),
    .o(al_6b9aadef));

endmodule 

