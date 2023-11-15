// Verilog netlist created by Tang Dynasty v5.6.71036
// Thu Nov 16 02:28:29 2023

`timescale 1ns / 1ps
module top  // ../../top.v(1)
  (
  adAIn,
  adBIn,
  clkSorce,
  resetSorce,
  AD_A2_A0,
  CS,
  RD_DONE,
  SCK,
  Vdd_fmc_adj,
  txd
  );

  input adAIn;  // ../../top.v(5)
  input adBIn;  // ../../top.v(6)
  input clkSorce;  // ../../top.v(2)
  input resetSorce;  // ../../top.v(3)
  output [2:0] AD_A2_A0;  // ../../top.v(9)
  output CS;  // ../../top.v(7)
  output RD_DONE;  // ../../top.v(10)
  output SCK;  // ../../top.v(8)
  output [2:0] Vdd_fmc_adj;  // ../../top.v(13)
  output txd;  // ../../top.v(14)

  wire [27:0] \ad_top/u_AD7266/A1B1_Result ;  // ../../ad/ad7266.v(39)
  wire [11:0] \ad_top/u_AD7266/A1_Result  /* synthesis keep=true */ ;  // ../../ad/ad7266.v(14)
  wire [11:0] \ad_top/u_AD7266/A1_Result_b ;
  wire [11:0] \ad_top/u_AD7266/B1_Result  /* synthesis keep=true */ ;  // ../../ad/ad7266.v(15)
  wire [11:0] \ad_top/u_AD7266/B1_Result_b ;
  wire [15:0] \ad_top/u_AD7266/CONVST_time ;  // ../../ad/ad7266.v(32)
  wire [15:0] \ad_top/u_AD7266/CONVST_time_b ;
  wire [5:0] \ad_top/u_AD7266/count_SCK ;  // ../../ad/ad7266.v(33)
  wire [5:0] \ad_top/u_AD7266/count_SCK_b ;
  wire [5:0] \ad_top/u_AD7266/count_SCK_b1 ;
  wire [15:0] \ad_top/u_AD7266/count_clk ;  // ../../ad/ad7266.v(31)
  wire [15:0] \ad_top/u_AD7266/count_clk_b ;
  wire [5:0] \ad_top/u_AD7266/count_spi_clk_N ;  // ../../ad/ad7266.v(36)
  wire [5:0] \ad_top/u_AD7266/count_spi_clk_N_b ;
  wire [5:0] \ad_top/u_AD7266/count_spi_clk_P ;  // ../../ad/ad7266.v(35)
  wire [5:0] \ad_top/u_AD7266/count_spi_clk_P_b ;
  wire [5:0] \ad_top/u_AD7266/count_spi_clk_P_b2 ;
  wire  \ad_top/u_AD7266/sel0_syn_2 ;
  wire [15:0] \change/dataInput ;  // ../../shift/change.v(2)
  wire [15:0] \change/dataInputComplement ;  // ../../shift/change.v(5)
  wire [15:0] \change/dataInputComplement_b ;
  wire [15:0] \change/dataInputComplement_b3 ;
  wire [11:0] \change/dataInput[1]_syn_2 ;
  wire [15:0] \lsm_top/coef_update_dut/coef1 ;  // ../../lms/coef_update.v(8)
  wire [47:0] \lsm_top/coef_update_dut/coef1_b ;
  wire [47:0] \lsm_top/coef_update_dut/coef1_reg ;  // ../../lms/coef_update.v(63)
  wire [15:0] \lsm_top/coef_update_dut/coef2 ;  // ../../lms/coef_update.v(9)
  wire [47:0] \lsm_top/coef_update_dut/coef2_b ;
  wire [47:0] \lsm_top/coef_update_dut/coef2_reg ;  // ../../lms/coef_update.v(64)
  wire [15:0] \lsm_top/coef_update_dut/coef3 ;  // ../../lms/coef_update.v(10)
  wire [47:0] \lsm_top/coef_update_dut/coef3_b ;
  wire [47:0] \lsm_top/coef_update_dut/coef3_reg ;  // ../../lms/coef_update.v(65)
  wire [15:0] \lsm_top/coef_update_dut/coef4 ;  // ../../lms/coef_update.v(11)
  wire [47:0] \lsm_top/coef_update_dut/coef4_b ;
  wire [47:0] \lsm_top/coef_update_dut/coef4_reg ;  // ../../lms/coef_update.v(66)
  wire [15:0] \lsm_top/coef_update_dut/coef5 ;  // ../../lms/coef_update.v(12)
  wire [47:0] \lsm_top/coef_update_dut/coef5_b ;
  wire [47:0] \lsm_top/coef_update_dut/coef5_reg ;  // ../../lms/coef_update.v(67)
  wire [15:0] \lsm_top/coef_update_dut/coef6 ;  // ../../lms/coef_update.v(13)
  wire [47:0] \lsm_top/coef_update_dut/coef6_b ;
  wire [47:0] \lsm_top/coef_update_dut/coef6_reg ;  // ../../lms/coef_update.v(68)
  wire [15:0] \lsm_top/coef_update_dut/coef7 ;  // ../../lms/coef_update.v(14)
  wire [47:0] \lsm_top/coef_update_dut/coef7_b ;
  wire [47:0] \lsm_top/coef_update_dut/coef7_reg ;  // ../../lms/coef_update.v(69)
  wire [15:0] \lsm_top/coef_update_dut/coef8 ;  // ../../lms/coef_update.v(15)
  wire [47:0] \lsm_top/coef_update_dut/coef8_b ;
  wire [47:0] \lsm_top/coef_update_dut/coef8_reg ;  // ../../lms/coef_update.v(70)
  wire [15:0] \lsm_top/coef_update_dut/coef9 ;  // ../../lms/coef_update.v(16)
  wire [47:0] \lsm_top/coef_update_dut/coef9_b ;
  wire [47:0] \lsm_top/coef_update_dut/coef9_reg ;  // ../../lms/coef_update.v(71)
  wire [15:0] \lsm_top/coef_update_dut/data_shift1 ;  // ../../lms/coef_update.v(22)
  wire [15:0] \lsm_top/coef_update_dut/data_shift2 ;  // ../../lms/coef_update.v(23)
  wire [15:0] \lsm_top/coef_update_dut/data_shift3 ;  // ../../lms/coef_update.v(24)
  wire [15:0] \lsm_top/coef_update_dut/data_shift4 ;  // ../../lms/coef_update.v(25)
  wire [15:0] \lsm_top/coef_update_dut/data_shift5 ;  // ../../lms/coef_update.v(26)
  wire [15:0] \lsm_top/coef_update_dut/data_shift6 ;  // ../../lms/coef_update.v(27)
  wire [15:0] \lsm_top/coef_update_dut/data_shift7 ;  // ../../lms/coef_update.v(28)
  wire [15:0] \lsm_top/coef_update_dut/data_shift8 ;  // ../../lms/coef_update.v(29)
  wire [15:0] \lsm_top/coef_update_dut/data_shift9 ;  // ../../lms/coef_update.v(30)
  wire [44:0] \lsm_top/coef_update_dut/mult0_syn_4 ;
  wire [53:0] \lsm_top/coef_update_dut/mult0_syn_49_syn_19 ;
  wire [44:0] \lsm_top/coef_update_dut/mult1_syn_49_syn_118 ;
  wire [3:0] \lsm_top/coef_update_dut/mult1_syn_49_syn_163 ;
  wire [53:0] \lsm_top/coef_update_dut/mult1_syn_49_syn_186 ;
  wire [44:0] \lsm_top/coef_update_dut/mult2_syn_49_syn_289 ;
  wire [3:0] \lsm_top/coef_update_dut/mult2_syn_49_syn_334 ;
  wire [53:0] \lsm_top/coef_update_dut/mult2_syn_49_syn_357 ;
  wire [44:0] \lsm_top/coef_update_dut/mult3_syn_49_syn_460 ;
  wire [3:0] \lsm_top/coef_update_dut/mult3_syn_49_syn_505 ;
  wire [53:0] \lsm_top/coef_update_dut/mult3_syn_49_syn_528 ;
  wire [44:0] \lsm_top/coef_update_dut/mult4_syn_49_syn_631 ;
  wire [3:0] \lsm_top/coef_update_dut/mult4_syn_49_syn_676 ;
  wire [53:0] \lsm_top/coef_update_dut/mult4_syn_49_syn_699 ;
  wire [44:0] \lsm_top/coef_update_dut/mult5_syn_49_syn_802 ;
  wire [3:0] \lsm_top/coef_update_dut/mult5_syn_49_syn_847 ;
  wire [53:0] \lsm_top/coef_update_dut/mult5_syn_49_syn_870 ;
  wire [3:0] \lsm_top/coef_update_dut/mult6_syn_49_syn_1018 ;
  wire [53:0] \lsm_top/coef_update_dut/mult6_syn_49_syn_1041 ;
  wire [44:0] \lsm_top/coef_update_dut/mult6_syn_49_syn_973 ;
  wire [44:0] \lsm_top/coef_update_dut/mult7_syn_49_syn_1144 ;
  wire [3:0] \lsm_top/coef_update_dut/mult7_syn_49_syn_1189 ;
  wire [53:0] \lsm_top/coef_update_dut/mult7_syn_49_syn_1212 ;
  wire [44:0] \lsm_top/coef_update_dut/mult8_syn_49_syn_1315 ;
  wire [3:0] \lsm_top/coef_update_dut/mult8_syn_49_syn_1360 ;
  wire [53:0] \lsm_top/coef_update_dut/mult8_syn_49_syn_1383 ;
  wire [44:0] \lsm_top/coef_update_dut/mult9_syn_49_syn_1486 ;
  wire [3:0] \lsm_top/coef_update_dut/mult9_syn_49_syn_1531 ;
  wire [53:0] \lsm_top/coef_update_dut/mult9_syn_49_syn_1554 ;
  wire [20:0] \lsm_top/div40/num ;  // ../../lms/div.v(7)
  wire [20:0] \lsm_top/div40/num_b ;
  wire [20:0] \lsm_top/div40/num_b1 ;
  wire [15:0] \lsm_top/error_calcu_dut/data_ref ;  // ../../lms/error_calcu.v(5)
  wire [15:0] \lsm_top/error_calcu_dut/data_shift1 ;  // ../../lms/error_calcu.v(13)
  wire [15:0] \lsm_top/error_calcu_dut/data_shift2 ;  // ../../lms/error_calcu.v(14)
  wire [15:0] \lsm_top/error_calcu_dut/data_shift3 ;  // ../../lms/error_calcu.v(15)
  wire [15:0] \lsm_top/error_calcu_dut/data_shift4 ;  // ../../lms/error_calcu.v(16)
  wire [15:0] \lsm_top/error_calcu_dut/data_shift5 ;  // ../../lms/error_calcu.v(17)
  wire [15:0] \lsm_top/error_calcu_dut/data_shift6 ;  // ../../lms/error_calcu.v(18)
  wire [15:0] \lsm_top/error_calcu_dut/data_shift7 ;  // ../../lms/error_calcu.v(19)
  wire [15:0] \lsm_top/error_calcu_dut/data_shift8 ;  // ../../lms/error_calcu.v(20)
  wire [15:0] \lsm_top/error_calcu_dut/data_shift9 ;  // ../../lms/error_calcu.v(21)
  wire [15:0] \lsm_top/error_calcu_dut/error ;  // ../../lms/error_calcu.v(9)
  wire [40:0] \lsm_top/fir_dut/adder_data_four ;  // ../../lms/fir.v(123)
  wire [40:0] \lsm_top/fir_dut/adder_data_four_b ;
  wire [40:0] \lsm_top/fir_dut/adder_data_one_1 ;  // ../../lms/fir.v(110)
  wire [40:0] \lsm_top/fir_dut/adder_data_one_2 ;  // ../../lms/fir.v(111)
  wire [40:0] \lsm_top/fir_dut/adder_data_one_3 ;  // ../../lms/fir.v(112)
  wire [40:0] \lsm_top/fir_dut/adder_data_one_4 ;  // ../../lms/fir.v(113)
  wire [40:0] \lsm_top/fir_dut/adder_data_one_5 ;  // ../../lms/fir.v(114)
  wire [40:0] \lsm_top/fir_dut/adder_data_three_1 ;  // ../../lms/fir.v(120)
  wire [40:0] \lsm_top/fir_dut/adder_data_three_1_b ;
  wire [40:0] \lsm_top/fir_dut/adder_data_three_2 ;  // ../../lms/fir.v(121)
  wire [40:0] \lsm_top/fir_dut/adder_data_two_1 ;  // ../../lms/fir.v(116)
  wire [40:0] \lsm_top/fir_dut/adder_data_two_1_b ;
  wire [40:0] \lsm_top/fir_dut/adder_data_two_2 ;  // ../../lms/fir.v(117)
  wire [40:0] \lsm_top/fir_dut/adder_data_two_2_b ;
  wire [40:0] \lsm_top/fir_dut/adder_data_two_3 ;  // ../../lms/fir.v(118)
  wire [44:0] \lsm_top/fir_dut/mult0_syn_48_syn_1657 ;
  wire [44:0] \lsm_top/fir_dut/mult0_syn_48_syn_1702 ;
  wire [53:0] \lsm_top/fir_dut/mult0_syn_48_syn_1747 ;
  wire [53:0] \lsm_top/fir_dut/mult0_syn_48_syn_1801 ;
  wire [3:0] \lsm_top/fir_dut/mult0_syn_48_syn_1855 ;
  wire [53:0] \lsm_top/fir_dut/mult0_syn_48_syn_1915 ;
  wire [26:0] \lsm_top/fir_dut/mult0_syn_48_syn_2000 ;
  wire [17:0] \lsm_top/fir_dut/mult0_syn_48_syn_2045 ;
  wire [26:0] \lsm_top/fir_dut/mult0_syn_49 ;
  wire [44:0] \lsm_top/fir_dut/mult1_syn_3 ;
  wire [3:0] \lsm_top/fir_dut/mult1_syn_48_syn_2119 ;
  wire [53:0] \lsm_top/fir_dut/mult1_syn_48_syn_2142 ;
  wire [26:0] \lsm_top/fir_dut/mult1_syn_48_syn_2227 ;
  wire [17:0] \lsm_top/fir_dut/mult1_syn_48_syn_2272 ;
  wire [44:0] \lsm_top/fir_dut/mult2_syn_48_syn_2290 ;
  wire [44:0] \lsm_top/fir_dut/mult2_syn_48_syn_2335 ;
  wire [53:0] \lsm_top/fir_dut/mult2_syn_48_syn_2380 ;
  wire [53:0] \lsm_top/fir_dut/mult2_syn_48_syn_2434 ;
  wire [3:0] \lsm_top/fir_dut/mult2_syn_48_syn_2488 ;
  wire [53:0] \lsm_top/fir_dut/mult2_syn_48_syn_2575 ;
  wire [26:0] \lsm_top/fir_dut/mult2_syn_48_syn_2633 ;
  wire [17:0] \lsm_top/fir_dut/mult2_syn_48_syn_2678 ;
  wire [26:0] \lsm_top/fir_dut/mult2_syn_49 ;
  wire [44:0] \lsm_top/fir_dut/mult3_syn_3 ;
  wire [3:0] \lsm_top/fir_dut/mult3_syn_48_syn_2752 ;
  wire [53:0] \lsm_top/fir_dut/mult3_syn_48_syn_2829 ;
  wire [26:0] \lsm_top/fir_dut/mult3_syn_48_syn_2887 ;
  wire [17:0] \lsm_top/fir_dut/mult3_syn_48_syn_2932 ;
  wire [26:0] \lsm_top/fir_dut/mult3_syn_49 ;
  wire [44:0] \lsm_top/fir_dut/mult4_syn_48_syn_2950 ;
  wire [44:0] \lsm_top/fir_dut/mult4_syn_48_syn_2995 ;
  wire [53:0] \lsm_top/fir_dut/mult4_syn_48_syn_3040 ;
  wire [53:0] \lsm_top/fir_dut/mult4_syn_48_syn_3094 ;
  wire [3:0] \lsm_top/fir_dut/mult4_syn_48_syn_3148 ;
  wire [53:0] \lsm_top/fir_dut/mult4_syn_48_syn_3235 ;
  wire [26:0] \lsm_top/fir_dut/mult4_syn_48_syn_3293 ;
  wire [17:0] \lsm_top/fir_dut/mult4_syn_48_syn_3338 ;
  wire [26:0] \lsm_top/fir_dut/mult4_syn_49 ;
  wire [44:0] \lsm_top/fir_dut/mult5_syn_3 ;
  wire [3:0] \lsm_top/fir_dut/mult5_syn_48_syn_3412 ;
  wire [53:0] \lsm_top/fir_dut/mult5_syn_48_syn_3489 ;
  wire [26:0] \lsm_top/fir_dut/mult5_syn_48_syn_3547 ;
  wire [17:0] \lsm_top/fir_dut/mult5_syn_48_syn_3592 ;
  wire [26:0] \lsm_top/fir_dut/mult5_syn_49 ;
  wire [44:0] \lsm_top/fir_dut/mult6_syn_48_syn_3610 ;
  wire [44:0] \lsm_top/fir_dut/mult6_syn_48_syn_3655 ;
  wire [53:0] \lsm_top/fir_dut/mult6_syn_48_syn_3700 ;
  wire [53:0] \lsm_top/fir_dut/mult6_syn_48_syn_3754 ;
  wire [3:0] \lsm_top/fir_dut/mult6_syn_48_syn_3808 ;
  wire [53:0] \lsm_top/fir_dut/mult6_syn_48_syn_3895 ;
  wire [26:0] \lsm_top/fir_dut/mult6_syn_48_syn_3953 ;
  wire [17:0] \lsm_top/fir_dut/mult6_syn_48_syn_3998 ;
  wire [26:0] \lsm_top/fir_dut/mult6_syn_49 ;
  wire [44:0] \lsm_top/fir_dut/mult7_syn_3 ;
  wire [3:0] \lsm_top/fir_dut/mult7_syn_48_syn_4072 ;
  wire [53:0] \lsm_top/fir_dut/mult7_syn_48_syn_4149 ;
  wire [26:0] \lsm_top/fir_dut/mult7_syn_48_syn_4207 ;
  wire [17:0] \lsm_top/fir_dut/mult7_syn_48_syn_4252 ;
  wire [26:0] \lsm_top/fir_dut/mult7_syn_49 ;
  wire [44:0] \lsm_top/fir_dut/mult8_syn_48_syn_4270 ;
  wire [44:0] \lsm_top/fir_dut/mult8_syn_48_syn_4315 ;
  wire [53:0] \lsm_top/fir_dut/mult8_syn_48_syn_4360 ;
  wire [3:0] \lsm_top/fir_dut/mult8_syn_48_syn_4414 ;
  wire [53:0] \lsm_top/fir_dut/mult8_syn_48_syn_4474 ;
  wire [26:0] \lsm_top/fir_dut/mult8_syn_48_syn_4532 ;
  wire [17:0] \lsm_top/fir_dut/mult8_syn_48_syn_4577 ;
  wire [2:0] \uart_top/UART/al_51453453 ;  // ../../uart/al_ip/UART_gate.v(44)
  wire [3:0] \uart_top/UART/al_5394316e ;  // ../../uart/al_ip/UART_gate.v(48)
  wire [7:0] \uart_top/UART/al_66ac1e2c ;  // ../../uart/al_ip/UART_gate.v(49)
  wire [2:0] \uart_top/UART/al_82156b0c ;  // ../../uart/al_ip/UART_gate.v(46)
  wire [2:0] \uart_top/UART/al_90ec5389 ;  // ../../uart/al_ip/UART_gate.v(34)
  wire [3:0] \uart_top/UART/al_ab9d8a6b ;  // ../../uart/al_ip/UART_gate.v(47)
  wire [7:0] \uart_top/UART/al_bbbd5217 ;  // ../../uart/al_ip/UART_gate.v(50)
  wire [2:0] \uart_top/UART/al_f45e6b02 ;  // ../../uart/al_ip/UART_gate.v(35)
  wire [7:0] \uart_top/UART/tx_data ;  // ../../uart/al_ip/UART_gate.v(22)
  wire [20:0] \uart_top/div160/num ;  // ../../lms/div.v(7)
  wire [20:0] \uart_top/div160/num_b ;
  wire [20:0] \uart_top/div160/num_b1 ;
  wire [7:0] \uart_top/tx_data_b ;
  wire CS_dup_21;  // ../../top.v(7)
  wire RD_DONE_dup_3;  // ../../top.v(10)
  wire SCK_dup_3;  // ../../top.v(8)
  wire adAIn_dup_3;  // ../../top.v(5)
  wire adBIn_dup_1;  // ../../top.v(6)
  wire clkSorce_dup_1;  // ../../top.v(2)
  wire resetSorce_dup_1;  // ../../top.v(3)
  wire txd_dup_3;  // ../../top.v(14)
  wire \ad_top/u_AD7266/add1_syn_20 ;  // ../../ad/ad7266.v(95)
  wire \ad_top/u_AD7266/add3_syn_20 ;  // ../../ad/ad7266.v(182)
  wire \ad_top/u_AD7266/add4_syn_33 ;  // ../../ad/ad7266.v(293)
  wire \ad_top/u_AD7266/mux22_syn_31 ;  // ../../ad/ad7266.v(130)
  wire \ad_top/u_AD7266/mux4_syn_13 ;  // ../../ad/ad7266.v(118)
  wire \ad_top/u_AD7266/reg0_syn_31 ;  // ../../ad/ad7266.v(128)
  wire \ad_top/u_AD7266/reg0_syn_33 ;  // ../../ad/ad7266.v(128)
  wire \ad_top/u_AD7266/reg0_syn_35 ;  // ../../ad/ad7266.v(128)
  wire \ad_top/u_AD7266/reg0_syn_37 ;  // ../../ad/ad7266.v(128)
  wire \ad_top/u_AD7266/reg0_syn_39 ;  // ../../ad/ad7266.v(128)
  wire \ad_top/u_AD7266/reg0_syn_41 ;  // ../../ad/ad7266.v(128)
  wire \ad_top/u_AD7266/reg0_syn_43 ;  // ../../ad/ad7266.v(128)
  wire \ad_top/u_AD7266/reg0_syn_45 ;  // ../../ad/ad7266.v(128)
  wire \ad_top/u_AD7266/reg0_syn_47 ;  // ../../ad/ad7266.v(128)
  wire \ad_top/u_AD7266/reg0_syn_49 ;  // ../../ad/ad7266.v(128)
  wire \ad_top/u_AD7266/reg0_syn_51 ;  // ../../ad/ad7266.v(128)
  wire \ad_top/u_AD7266/reg0_syn_53 ;  // ../../ad/ad7266.v(128)
  wire \ad_top/u_AD7266/sel0_syn_23 ;  // ../../ad/ad7266.v(341)
  wire \ad_top/u_AD7266/sel0_syn_25 ;  // ../../ad/ad7266.v(341)
  wire \ad_top/u_AD7266/sel0_syn_27 ;  // ../../ad/ad7266.v(341)
  wire \ad_top/u_AD7266/sel0_syn_29 ;  // ../../ad/ad7266.v(341)
  wire \ad_top/u_AD7266/sel0_syn_31 ;  // ../../ad/ad7266.v(341)
  wire \ad_top/u_AD7266/sel0_syn_33 ;  // ../../ad/ad7266.v(341)
  wire \ad_top/u_AD7266/sel0_syn_35 ;  // ../../ad/ad7266.v(341)
  wire \ad_top/u_AD7266/sel0_syn_37 ;  // ../../ad/ad7266.v(341)
  wire \ad_top/u_AD7266/sel0_syn_39 ;  // ../../ad/ad7266.v(341)
  wire \ad_top/u_AD7266/sel0_syn_41 ;  // ../../ad/ad7266.v(341)
  wire \ad_top/u_AD7266/sel0_syn_43 ;  // ../../ad/ad7266.v(341)
  wire \ad_top/u_AD7266/sel0_syn_45 ;  // ../../ad/ad7266.v(341)
  wire \ad_top/u_AD7266/sel0_syn_47 ;  // ../../ad/ad7266.v(341)
  wire \ad_top/u_AD7266/spi_clk_reg_syn_4 ;  // ../../ad/ad7266.v(54)
  wire \ad_top/u_AD7266/A1_Result[11]_syn_3 ;  // ../../ad/ad7266.v(14)
  wire \ad_top/u_AD7266/A1_Result[10]_syn_3 ;  // ../../ad/ad7266.v(14)
  wire \ad_top/u_AD7266/A1_Result[9]_syn_3 ;  // ../../ad/ad7266.v(14)
  wire \ad_top/u_AD7266/A1_Result[8]_syn_3 ;  // ../../ad/ad7266.v(14)
  wire \ad_top/u_AD7266/A1_Result[7]_syn_3 ;  // ../../ad/ad7266.v(14)
  wire \ad_top/u_AD7266/A1_Result[6]_syn_3 ;  // ../../ad/ad7266.v(14)
  wire \ad_top/u_AD7266/A1_Result[5]_syn_3 ;  // ../../ad/ad7266.v(14)
  wire \ad_top/u_AD7266/A1_Result[4]_syn_3 ;  // ../../ad/ad7266.v(14)
  wire \ad_top/u_AD7266/A1_Result[3]_syn_3 ;  // ../../ad/ad7266.v(14)
  wire \ad_top/u_AD7266/A1_Result[2]_syn_3 ;  // ../../ad/ad7266.v(14)
  wire \ad_top/u_AD7266/A1_Result[1]_syn_3 ;  // ../../ad/ad7266.v(14)
  wire \ad_top/u_AD7266/A1_Result[0]_syn_3 ;  // ../../ad/ad7266.v(14)
  wire \ad_top/u_AD7266/B1_Result[11]_syn_3 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[11]_syn_4 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[10]_syn_3 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[10]_syn_4 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[9]_syn_3 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[9]_syn_4 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[8]_syn_3 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[8]_syn_4 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[7]_syn_3 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[7]_syn_4 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[6]_syn_3 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[6]_syn_4 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[5]_syn_3 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[5]_syn_4 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[4]_syn_3 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[4]_syn_4 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[3]_syn_3 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[3]_syn_4 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[2]_syn_3 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[2]_syn_4 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[1]_syn_3 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[1]_syn_4 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[0]_syn_3 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/B1_Result[0]_syn_4 ;  // ../../ad/ad7266.v(15)
  wire \ad_top/u_AD7266/CONVST_time_b[7]_syn_2 ;
  wire \ad_top/u_AD7266/count_spi_clk_N_b[4]_syn_3 ;
  wire \ad_top/u_AD7266/count_spi_clk_P_b[4]_syn_2 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n105 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n106 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n109 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n110 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n16 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n17 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n18 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n19 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n19_syn_3 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n20 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n21 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n21_syn_3 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n21_syn_5 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n22 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n22_syn_2 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n22_syn_4 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n22_syn_6 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n22_syn_9 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n23 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n24 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n25 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n26 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n26_syn_2 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n27 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n87 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n88 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n89 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n90 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n93 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n94 ;
  wire \ad_top/u_AD7266/A1B1_Result_b2_n97 ;
  wire \ad_top/u_AD7266/CS_n ;
  wire \ad_top/u_AD7266/READY_FLAG ;  // ../../ad/ad7266.v(46)
  wire \ad_top/u_AD7266/SCK_n ;
  wire \ad_top/u_AD7266/count_SCK_b_n ;
  wire \ad_top/u_AD7266/spi_clk ;  // ../../ad/ad7266.v(34)
  wire \ad_top/u_AD7266/spi_rd_done_n ;
  wire \ad_top/u_AD7266/spi_rd_done_n_syn_2 ;
  wire \ad_top/u_AD7266/sys_clk ;  // ../../ad/ad7266.v(3)
  wire \change/lt0_syn_103 ;  // ../../shift/change.v(7)
  wire \change/dataInput[1]_syn_71 ;  // ../../shift/change.v(2)
  wire \change/dataInputComplement[15]_syn_2 ;  // ../../shift/change.v(5)
  wire \change/dataInputComplement[15]_syn_5 ;  // ../../shift/change.v(5)
  wire \change/dataInputComplement[15]_syn_8 ;  // ../../shift/change.v(5)
  wire \change/dataInputComplement_n ;
  wire \lsm_top/coef_update_dut/add0_syn_68 ;  // ../../lms/coef_update.v(105)
  wire \lsm_top/coef_update_dut/add0_syn_69 ;  // ../../lms/coef_update.v(105)
  wire \lsm_top/coef_update_dut/add0_syn_70 ;  // ../../lms/coef_update.v(105)
  wire \lsm_top/coef_update_dut/add0_syn_71 ;  // ../../lms/coef_update.v(105)
  wire \lsm_top/coef_update_dut/add0_syn_72 ;  // ../../lms/coef_update.v(105)
  wire \lsm_top/coef_update_dut/add0_syn_73 ;  // ../../lms/coef_update.v(105)
  wire \lsm_top/coef_update_dut/add0_syn_74 ;  // ../../lms/coef_update.v(105)
  wire \lsm_top/coef_update_dut/add0_syn_75 ;  // ../../lms/coef_update.v(105)
  wire \lsm_top/coef_update_dut/add0_syn_76 ;  // ../../lms/coef_update.v(105)
  wire \lsm_top/coef_update_dut/add0_syn_77 ;  // ../../lms/coef_update.v(105)
  wire \lsm_top/coef_update_dut/add0_syn_78 ;  // ../../lms/coef_update.v(105)
  wire \lsm_top/coef_update_dut/add0_syn_79 ;  // ../../lms/coef_update.v(105)
  wire \lsm_top/coef_update_dut/add0_syn_80 ;  // ../../lms/coef_update.v(105)
  wire \lsm_top/coef_update_dut/add0_syn_81 ;  // ../../lms/coef_update.v(105)
  wire \lsm_top/coef_update_dut/add0_syn_82 ;  // ../../lms/coef_update.v(105)
  wire \lsm_top/coef_update_dut/add0_syn_83 ;  // ../../lms/coef_update.v(105)
  wire \lsm_top/coef_update_dut/add1_syn_68 ;  // ../../lms/coef_update.v(106)
  wire \lsm_top/coef_update_dut/add1_syn_69 ;  // ../../lms/coef_update.v(106)
  wire \lsm_top/coef_update_dut/add1_syn_70 ;  // ../../lms/coef_update.v(106)
  wire \lsm_top/coef_update_dut/add1_syn_71 ;  // ../../lms/coef_update.v(106)
  wire \lsm_top/coef_update_dut/add1_syn_72 ;  // ../../lms/coef_update.v(106)
  wire \lsm_top/coef_update_dut/add1_syn_73 ;  // ../../lms/coef_update.v(106)
  wire \lsm_top/coef_update_dut/add1_syn_74 ;  // ../../lms/coef_update.v(106)
  wire \lsm_top/coef_update_dut/add1_syn_75 ;  // ../../lms/coef_update.v(106)
  wire \lsm_top/coef_update_dut/add1_syn_76 ;  // ../../lms/coef_update.v(106)
  wire \lsm_top/coef_update_dut/add1_syn_77 ;  // ../../lms/coef_update.v(106)
  wire \lsm_top/coef_update_dut/add1_syn_78 ;  // ../../lms/coef_update.v(106)
  wire \lsm_top/coef_update_dut/add1_syn_79 ;  // ../../lms/coef_update.v(106)
  wire \lsm_top/coef_update_dut/add1_syn_80 ;  // ../../lms/coef_update.v(106)
  wire \lsm_top/coef_update_dut/add1_syn_81 ;  // ../../lms/coef_update.v(106)
  wire \lsm_top/coef_update_dut/add1_syn_82 ;  // ../../lms/coef_update.v(106)
  wire \lsm_top/coef_update_dut/add1_syn_83 ;  // ../../lms/coef_update.v(106)
  wire \lsm_top/coef_update_dut/add2_syn_68 ;  // ../../lms/coef_update.v(107)
  wire \lsm_top/coef_update_dut/add2_syn_69 ;  // ../../lms/coef_update.v(107)
  wire \lsm_top/coef_update_dut/add2_syn_70 ;  // ../../lms/coef_update.v(107)
  wire \lsm_top/coef_update_dut/add2_syn_71 ;  // ../../lms/coef_update.v(107)
  wire \lsm_top/coef_update_dut/add2_syn_72 ;  // ../../lms/coef_update.v(107)
  wire \lsm_top/coef_update_dut/add2_syn_73 ;  // ../../lms/coef_update.v(107)
  wire \lsm_top/coef_update_dut/add2_syn_74 ;  // ../../lms/coef_update.v(107)
  wire \lsm_top/coef_update_dut/add2_syn_75 ;  // ../../lms/coef_update.v(107)
  wire \lsm_top/coef_update_dut/add2_syn_76 ;  // ../../lms/coef_update.v(107)
  wire \lsm_top/coef_update_dut/add2_syn_77 ;  // ../../lms/coef_update.v(107)
  wire \lsm_top/coef_update_dut/add2_syn_78 ;  // ../../lms/coef_update.v(107)
  wire \lsm_top/coef_update_dut/add2_syn_79 ;  // ../../lms/coef_update.v(107)
  wire \lsm_top/coef_update_dut/add2_syn_80 ;  // ../../lms/coef_update.v(107)
  wire \lsm_top/coef_update_dut/add2_syn_81 ;  // ../../lms/coef_update.v(107)
  wire \lsm_top/coef_update_dut/add2_syn_82 ;  // ../../lms/coef_update.v(107)
  wire \lsm_top/coef_update_dut/add2_syn_83 ;  // ../../lms/coef_update.v(107)
  wire \lsm_top/coef_update_dut/add3_syn_68 ;  // ../../lms/coef_update.v(108)
  wire \lsm_top/coef_update_dut/add3_syn_69 ;  // ../../lms/coef_update.v(108)
  wire \lsm_top/coef_update_dut/add3_syn_70 ;  // ../../lms/coef_update.v(108)
  wire \lsm_top/coef_update_dut/add3_syn_71 ;  // ../../lms/coef_update.v(108)
  wire \lsm_top/coef_update_dut/add3_syn_72 ;  // ../../lms/coef_update.v(108)
  wire \lsm_top/coef_update_dut/add3_syn_73 ;  // ../../lms/coef_update.v(108)
  wire \lsm_top/coef_update_dut/add3_syn_74 ;  // ../../lms/coef_update.v(108)
  wire \lsm_top/coef_update_dut/add3_syn_75 ;  // ../../lms/coef_update.v(108)
  wire \lsm_top/coef_update_dut/add3_syn_76 ;  // ../../lms/coef_update.v(108)
  wire \lsm_top/coef_update_dut/add3_syn_77 ;  // ../../lms/coef_update.v(108)
  wire \lsm_top/coef_update_dut/add3_syn_78 ;  // ../../lms/coef_update.v(108)
  wire \lsm_top/coef_update_dut/add3_syn_79 ;  // ../../lms/coef_update.v(108)
  wire \lsm_top/coef_update_dut/add3_syn_80 ;  // ../../lms/coef_update.v(108)
  wire \lsm_top/coef_update_dut/add3_syn_81 ;  // ../../lms/coef_update.v(108)
  wire \lsm_top/coef_update_dut/add3_syn_82 ;  // ../../lms/coef_update.v(108)
  wire \lsm_top/coef_update_dut/add3_syn_83 ;  // ../../lms/coef_update.v(108)
  wire \lsm_top/coef_update_dut/add4_syn_68 ;  // ../../lms/coef_update.v(109)
  wire \lsm_top/coef_update_dut/add4_syn_69 ;  // ../../lms/coef_update.v(109)
  wire \lsm_top/coef_update_dut/add4_syn_70 ;  // ../../lms/coef_update.v(109)
  wire \lsm_top/coef_update_dut/add4_syn_71 ;  // ../../lms/coef_update.v(109)
  wire \lsm_top/coef_update_dut/add4_syn_72 ;  // ../../lms/coef_update.v(109)
  wire \lsm_top/coef_update_dut/add4_syn_73 ;  // ../../lms/coef_update.v(109)
  wire \lsm_top/coef_update_dut/add4_syn_74 ;  // ../../lms/coef_update.v(109)
  wire \lsm_top/coef_update_dut/add4_syn_75 ;  // ../../lms/coef_update.v(109)
  wire \lsm_top/coef_update_dut/add4_syn_76 ;  // ../../lms/coef_update.v(109)
  wire \lsm_top/coef_update_dut/add4_syn_77 ;  // ../../lms/coef_update.v(109)
  wire \lsm_top/coef_update_dut/add4_syn_78 ;  // ../../lms/coef_update.v(109)
  wire \lsm_top/coef_update_dut/add4_syn_79 ;  // ../../lms/coef_update.v(109)
  wire \lsm_top/coef_update_dut/add4_syn_80 ;  // ../../lms/coef_update.v(109)
  wire \lsm_top/coef_update_dut/add4_syn_81 ;  // ../../lms/coef_update.v(109)
  wire \lsm_top/coef_update_dut/add4_syn_82 ;  // ../../lms/coef_update.v(109)
  wire \lsm_top/coef_update_dut/add4_syn_83 ;  // ../../lms/coef_update.v(109)
  wire \lsm_top/coef_update_dut/add5_syn_68 ;  // ../../lms/coef_update.v(110)
  wire \lsm_top/coef_update_dut/add5_syn_69 ;  // ../../lms/coef_update.v(110)
  wire \lsm_top/coef_update_dut/add5_syn_70 ;  // ../../lms/coef_update.v(110)
  wire \lsm_top/coef_update_dut/add5_syn_71 ;  // ../../lms/coef_update.v(110)
  wire \lsm_top/coef_update_dut/add5_syn_72 ;  // ../../lms/coef_update.v(110)
  wire \lsm_top/coef_update_dut/add5_syn_73 ;  // ../../lms/coef_update.v(110)
  wire \lsm_top/coef_update_dut/add5_syn_74 ;  // ../../lms/coef_update.v(110)
  wire \lsm_top/coef_update_dut/add5_syn_75 ;  // ../../lms/coef_update.v(110)
  wire \lsm_top/coef_update_dut/add5_syn_76 ;  // ../../lms/coef_update.v(110)
  wire \lsm_top/coef_update_dut/add5_syn_77 ;  // ../../lms/coef_update.v(110)
  wire \lsm_top/coef_update_dut/add5_syn_78 ;  // ../../lms/coef_update.v(110)
  wire \lsm_top/coef_update_dut/add5_syn_79 ;  // ../../lms/coef_update.v(110)
  wire \lsm_top/coef_update_dut/add5_syn_80 ;  // ../../lms/coef_update.v(110)
  wire \lsm_top/coef_update_dut/add5_syn_81 ;  // ../../lms/coef_update.v(110)
  wire \lsm_top/coef_update_dut/add5_syn_82 ;  // ../../lms/coef_update.v(110)
  wire \lsm_top/coef_update_dut/add5_syn_83 ;  // ../../lms/coef_update.v(110)
  wire \lsm_top/coef_update_dut/add6_syn_68 ;  // ../../lms/coef_update.v(111)
  wire \lsm_top/coef_update_dut/add6_syn_69 ;  // ../../lms/coef_update.v(111)
  wire \lsm_top/coef_update_dut/add6_syn_70 ;  // ../../lms/coef_update.v(111)
  wire \lsm_top/coef_update_dut/add6_syn_71 ;  // ../../lms/coef_update.v(111)
  wire \lsm_top/coef_update_dut/add6_syn_72 ;  // ../../lms/coef_update.v(111)
  wire \lsm_top/coef_update_dut/add6_syn_73 ;  // ../../lms/coef_update.v(111)
  wire \lsm_top/coef_update_dut/add6_syn_74 ;  // ../../lms/coef_update.v(111)
  wire \lsm_top/coef_update_dut/add6_syn_75 ;  // ../../lms/coef_update.v(111)
  wire \lsm_top/coef_update_dut/add6_syn_76 ;  // ../../lms/coef_update.v(111)
  wire \lsm_top/coef_update_dut/add6_syn_77 ;  // ../../lms/coef_update.v(111)
  wire \lsm_top/coef_update_dut/add6_syn_78 ;  // ../../lms/coef_update.v(111)
  wire \lsm_top/coef_update_dut/add6_syn_79 ;  // ../../lms/coef_update.v(111)
  wire \lsm_top/coef_update_dut/add6_syn_80 ;  // ../../lms/coef_update.v(111)
  wire \lsm_top/coef_update_dut/add6_syn_81 ;  // ../../lms/coef_update.v(111)
  wire \lsm_top/coef_update_dut/add6_syn_82 ;  // ../../lms/coef_update.v(111)
  wire \lsm_top/coef_update_dut/add6_syn_83 ;  // ../../lms/coef_update.v(111)
  wire \lsm_top/coef_update_dut/add7_syn_68 ;  // ../../lms/coef_update.v(112)
  wire \lsm_top/coef_update_dut/add7_syn_69 ;  // ../../lms/coef_update.v(112)
  wire \lsm_top/coef_update_dut/add7_syn_70 ;  // ../../lms/coef_update.v(112)
  wire \lsm_top/coef_update_dut/add7_syn_71 ;  // ../../lms/coef_update.v(112)
  wire \lsm_top/coef_update_dut/add7_syn_72 ;  // ../../lms/coef_update.v(112)
  wire \lsm_top/coef_update_dut/add7_syn_73 ;  // ../../lms/coef_update.v(112)
  wire \lsm_top/coef_update_dut/add7_syn_74 ;  // ../../lms/coef_update.v(112)
  wire \lsm_top/coef_update_dut/add7_syn_75 ;  // ../../lms/coef_update.v(112)
  wire \lsm_top/coef_update_dut/add7_syn_76 ;  // ../../lms/coef_update.v(112)
  wire \lsm_top/coef_update_dut/add7_syn_77 ;  // ../../lms/coef_update.v(112)
  wire \lsm_top/coef_update_dut/add7_syn_78 ;  // ../../lms/coef_update.v(112)
  wire \lsm_top/coef_update_dut/add7_syn_79 ;  // ../../lms/coef_update.v(112)
  wire \lsm_top/coef_update_dut/add7_syn_80 ;  // ../../lms/coef_update.v(112)
  wire \lsm_top/coef_update_dut/add7_syn_81 ;  // ../../lms/coef_update.v(112)
  wire \lsm_top/coef_update_dut/add7_syn_82 ;  // ../../lms/coef_update.v(112)
  wire \lsm_top/coef_update_dut/add7_syn_83 ;  // ../../lms/coef_update.v(112)
  wire \lsm_top/coef_update_dut/add8_syn_68 ;  // ../../lms/coef_update.v(113)
  wire \lsm_top/coef_update_dut/add8_syn_69 ;  // ../../lms/coef_update.v(113)
  wire \lsm_top/coef_update_dut/add8_syn_70 ;  // ../../lms/coef_update.v(113)
  wire \lsm_top/coef_update_dut/add8_syn_71 ;  // ../../lms/coef_update.v(113)
  wire \lsm_top/coef_update_dut/add8_syn_72 ;  // ../../lms/coef_update.v(113)
  wire \lsm_top/coef_update_dut/add8_syn_73 ;  // ../../lms/coef_update.v(113)
  wire \lsm_top/coef_update_dut/add8_syn_74 ;  // ../../lms/coef_update.v(113)
  wire \lsm_top/coef_update_dut/add8_syn_75 ;  // ../../lms/coef_update.v(113)
  wire \lsm_top/coef_update_dut/add8_syn_76 ;  // ../../lms/coef_update.v(113)
  wire \lsm_top/coef_update_dut/add8_syn_77 ;  // ../../lms/coef_update.v(113)
  wire \lsm_top/coef_update_dut/add8_syn_78 ;  // ../../lms/coef_update.v(113)
  wire \lsm_top/coef_update_dut/add8_syn_79 ;  // ../../lms/coef_update.v(113)
  wire \lsm_top/coef_update_dut/add8_syn_80 ;  // ../../lms/coef_update.v(113)
  wire \lsm_top/coef_update_dut/add8_syn_81 ;  // ../../lms/coef_update.v(113)
  wire \lsm_top/coef_update_dut/add8_syn_82 ;  // ../../lms/coef_update.v(113)
  wire \lsm_top/coef_update_dut/add8_syn_83 ;  // ../../lms/coef_update.v(113)
  wire \lsm_top/coef_update_dut/clk_i ;  // ../../lms/coef_update.v(2)
  wire \lsm_top/div40/add0_syn_106 ;  // ../../lms/div.v(11)
  wire \lsm_top/div40/add0_syn_107 ;  // ../../lms/div.v(11)
  wire \lsm_top/div40/add0_syn_108 ;  // ../../lms/div.v(11)
  wire \lsm_top/div40/add0_syn_109 ;  // ../../lms/div.v(11)
  wire \lsm_top/div40/add0_syn_110 ;  // ../../lms/div.v(11)
  wire \lsm_top/div40/add0_syn_111 ;  // ../../lms/div.v(11)
  wire \lsm_top/div40/add0_syn_112 ;  // ../../lms/div.v(11)
  wire \lsm_top/div40/add0_syn_113 ;  // ../../lms/div.v(11)
  wire \lsm_top/div40/add0_syn_114 ;  // ../../lms/div.v(11)
  wire \lsm_top/div40/add0_syn_115 ;  // ../../lms/div.v(11)
  wire \lsm_top/div40/add0_syn_116 ;  // ../../lms/div.v(11)
  wire \lsm_top/div40/add0_syn_117 ;  // ../../lms/div.v(11)
  wire \lsm_top/div40/add0_syn_118 ;  // ../../lms/div.v(11)
  wire \lsm_top/div40/add0_syn_119 ;  // ../../lms/div.v(11)
  wire \lsm_top/div40/add0_syn_120 ;  // ../../lms/div.v(11)
  wire \lsm_top/div40/add0_syn_121 ;  // ../../lms/div.v(11)
  wire \lsm_top/div40/add0_syn_122 ;  // ../../lms/div.v(11)
  wire \lsm_top/div40/add0_syn_123 ;  // ../../lms/div.v(11)
  wire \lsm_top/div40/add0_syn_124 ;  // ../../lms/div.v(11)
  wire \lsm_top/div40/add0_syn_125 ;  // ../../lms/div.v(11)
  wire \lsm_top/div40/add0_syn_126 ;  // ../../lms/div.v(11)
  wire \lsm_top/div40/num_b[3]_syn_2 ;
  wire \lsm_top/div40/num_b[3]_syn_4 ;
  wire \lsm_top/div40/num_b[3]_syn_6 ;
  wire \lsm_top/div40/num_b[3]_syn_8 ;
  wire \lsm_top/div40/clk ;  // ../../lms/div.v(2)
  wire \lsm_top/div40/out_n ;
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_200 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_201 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_202 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_203 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_204 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_205 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_206 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_207 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_208 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_209 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_210 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_211 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_212 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_213 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_214 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_215 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_286 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_287 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_288 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_289 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_290 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_291 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_292 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_293 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_294 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_295 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_296 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_297 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_298 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_391 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_392 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_393 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_394 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_395 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_396 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_397 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_398 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_399 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_400 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_401 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_402 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_403 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_404 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_405 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/error_calcu_dut/data_ref[0]_syn_406 ;  // ../../lms/error_calcu.v(5)
  wire \lsm_top/fir_dut/add4_syn_143 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_144 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_145 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_146 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_147 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_148 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_149 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_150 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_151 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_152 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_153 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_154 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_155 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_156 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_157 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_158 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_159 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_160 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_161 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_162 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_163 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_164 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_165 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_166 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_167 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_168 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_169 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_170 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_171 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_172 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_173 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_174 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_175 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add4_syn_176 ;  // ../../lms/fir.v(150)
  wire \lsm_top/fir_dut/add5_syn_143 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_144 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_145 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_146 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_147 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_148 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_149 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_150 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_151 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_152 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_153 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_154 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_155 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_156 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_157 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_158 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_159 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_160 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_161 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_162 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_163 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_164 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_165 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_166 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_167 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_168 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_169 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_170 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_171 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_172 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_173 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_174 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_175 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add5_syn_176 ;  // ../../lms/fir.v(151)
  wire \lsm_top/fir_dut/add6_syn_148 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_149 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_150 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_151 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_152 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_153 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_154 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_155 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_156 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_157 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_158 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_159 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_160 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_161 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_162 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_163 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_164 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_165 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_166 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_167 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_168 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_169 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_170 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_171 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_172 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_173 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_174 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_175 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_176 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_177 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_178 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_179 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_180 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_181 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add6_syn_182 ;  // ../../lms/fir.v(154)
  wire \lsm_top/fir_dut/add7_syn_155 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_156 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_157 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_158 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_159 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_160 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_161 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_162 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_163 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_164 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_165 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_166 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_167 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_168 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_169 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_170 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_171 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_172 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_173 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_174 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_175 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_176 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_177 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_178 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_179 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_180 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_181 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_182 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_183 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_184 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_185 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_186 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_187 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_188 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_189 ;  // ../../lms/fir.v(157)
  wire \lsm_top/fir_dut/add7_syn_190 ;  // ../../lms/fir.v(157)
  wire \mypll/clk0_buf ;  // ../../ad/al_ip/mypll.v(36)
  wire \uart_top/clkI160 ;  // ../../uart/uart_top.v(15)
  wire \uart_top/j ;  // ../../uart/uart_top.v(38)
  wire \uart_top/j_n ;
  wire \uart_top/UART/al_10c8d026 ;  // ../../uart/al_ip/UART_gate.v(84)
  wire \uart_top/UART/al_1810ff50 ;  // ../../uart/al_ip/UART_gate.v(94)
  wire \uart_top/UART/al_1b288f5f ;  // ../../uart/al_ip/UART_gate.v(89)
  wire \uart_top/UART/al_3e90220e ;  // ../../uart/al_ip/UART_gate.v(99)
  wire \uart_top/UART/al_4240b8f4 ;  // ../../uart/al_ip/UART_gate.v(95)
  wire \uart_top/UART/al_46e816d3 ;  // ../../uart/al_ip/UART_gate.v(97)
  wire \uart_top/UART/al_4ee01277 ;  // ../../uart/al_ip/UART_gate.v(93)
  wire \uart_top/UART/al_5ea12a83 ;  // ../../uart/al_ip/UART_gate.v(86)
  wire \uart_top/UART/al_660a0fdc ;  // ../../uart/al_ip/UART_gate.v(105)
  wire \uart_top/UART/al_6b9aadef ;  // ../../uart/al_ip/UART_gate.v(91)
  wire \uart_top/UART/al_742955f5 ;  // ../../uart/al_ip/UART_gate.v(92)
  wire \uart_top/UART/al_7a41626d ;  // ../../uart/al_ip/UART_gate.v(87)
  wire \uart_top/UART/al_7e8b6626 ;  // ../../uart/al_ip/UART_gate.v(104)
  wire \uart_top/UART/al_92a6b6c5 ;  // ../../uart/al_ip/UART_gate.v(96)
  wire \uart_top/UART/al_9d8d5066 ;  // ../../uart/al_ip/UART_gate.v(90)
  wire \uart_top/UART/al_9ebf6313 ;  // ../../uart/al_ip/UART_gate.v(85)
  wire \uart_top/UART/al_a576c55c ;  // ../../uart/al_ip/UART_gate.v(107)
  wire \uart_top/UART/al_adf78afa ;  // ../../uart/al_ip/UART_gate.v(101)
  wire \uart_top/UART/al_afca84e ;  // ../../uart/al_ip/UART_gate.v(103)
  wire \uart_top/UART/al_b1e4d128 ;  // ../../uart/al_ip/UART_gate.v(106)
  wire \uart_top/UART/al_c9feb186 ;  // ../../uart/al_ip/UART_gate.v(82)
  wire \uart_top/UART/al_cac3f349 ;  // ../../uart/al_ip/UART_gate.v(98)
  wire \uart_top/UART/al_ccf0619 ;  // ../../uart/al_ip/UART_gate.v(102)
  wire \uart_top/UART/al_ce8dc8c6 ;  // ../../uart/al_ip/UART_gate.v(88)
  wire \uart_top/UART/al_da7ff39c ;  // ../../uart/al_ip/UART_gate.v(100)
  wire \uart_top/UART/al_f46dca84 ;  // ../../uart/al_ip/UART_gate.v(45)
  wire \uart_top/UART/al_fb00635b ;  // ../../uart/al_ip/UART_gate.v(83)
  wire \uart_top/UART/clk ;  // ../../uart/al_ip/UART_gate.v(19)
  wire \uart_top/UART/tx_en ;  // ../../uart/al_ip/UART_gate.v(23)
  wire \uart_top/UART/tx_rdy ;  // ../../uart/al_ip/UART_gate.v(27)
  wire \uart_top/div160/add0_syn_106 ;  // ../../lms/div.v(11)
  wire \uart_top/div160/add0_syn_107 ;  // ../../lms/div.v(11)
  wire \uart_top/div160/add0_syn_108 ;  // ../../lms/div.v(11)
  wire \uart_top/div160/add0_syn_109 ;  // ../../lms/div.v(11)
  wire \uart_top/div160/add0_syn_110 ;  // ../../lms/div.v(11)
  wire \uart_top/div160/add0_syn_111 ;  // ../../lms/div.v(11)
  wire \uart_top/div160/add0_syn_112 ;  // ../../lms/div.v(11)
  wire \uart_top/div160/add0_syn_113 ;  // ../../lms/div.v(11)
  wire \uart_top/div160/add0_syn_114 ;  // ../../lms/div.v(11)
  wire \uart_top/div160/add0_syn_115 ;  // ../../lms/div.v(11)
  wire \uart_top/div160/add0_syn_116 ;  // ../../lms/div.v(11)
  wire \uart_top/div160/add0_syn_117 ;  // ../../lms/div.v(11)
  wire \uart_top/div160/add0_syn_118 ;  // ../../lms/div.v(11)
  wire \uart_top/div160/add0_syn_119 ;  // ../../lms/div.v(11)
  wire \uart_top/div160/add0_syn_120 ;  // ../../lms/div.v(11)
  wire \uart_top/div160/add0_syn_121 ;  // ../../lms/div.v(11)
  wire \uart_top/div160/add0_syn_122 ;  // ../../lms/div.v(11)
  wire \uart_top/div160/add0_syn_123 ;  // ../../lms/div.v(11)
  wire \uart_top/div160/add0_syn_124 ;  // ../../lms/div.v(11)
  wire \uart_top/div160/add0_syn_125 ;  // ../../lms/div.v(11)
  wire \uart_top/div160/add0_syn_126 ;  // ../../lms/div.v(11)
  wire \uart_top/div160/num_b[5]_syn_2 ;
  wire \uart_top/div160/num_b[5]_syn_4 ;
  wire \uart_top/div160/num_b[5]_syn_6 ;
  wire \uart_top/div160/num_b[5]_syn_8 ;
  wire \uart_top/div160/out_n ;

  PH1_PHY_PAD #(
    //.DRIVE("8"),
    //.IOTYPE("LVCMOS33"),
    //.LOCATION("D19"),
    //.ODT("OFF"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("MED"),
    //.VREF_VAL("25"),
    .DO_DFFMODE("NONE"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTDELMUX("NODEL"),
    .TSMUX("TS"))
    \AD_A2_A0[0]_syn_289  (
    .doq({open_n1,open_n2,open_n3,1'b0}),
    .ts(1'b0),
    .opad(AD_A2_A0[0]));  // ../../top.v(9)
  PH1_PHY_PAD #(
    //.DRIVE("8"),
    //.IOTYPE("LVCMOS33"),
    //.LOCATION("J17"),
    //.ODT("OFF"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("MED"),
    //.VREF_VAL("25"),
    .DO_DFFMODE("NONE"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTDELMUX("NODEL"),
    .TSMUX("TS"))
    \AD_A2_A0[1]_syn_1  (
    .doq({open_n29,open_n30,open_n31,1'b0}),
    .ts(1'b0),
    .opad(AD_A2_A0[1]));  // ../../top.v(9)
  PH1_PHY_PAD #(
    //.DRIVE("8"),
    //.IOTYPE("LVCMOS33"),
    //.LOCATION("J16"),
    //.ODT("OFF"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("MED"),
    //.VREF_VAL("25"),
    .DO_DFFMODE("NONE"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTDELMUX("NODEL"),
    .TSMUX("TS"))
    \AD_A2_A0[2]_syn_1  (
    .doq({open_n57,open_n58,open_n59,1'b0}),
    .ts(1'b0),
    .opad(AD_A2_A0[2]));  // ../../top.v(9)
  PH1_PHY_PAD #(
    //.DRIVE("8"),
    //.IOTYPE("LVCMOS33"),
    //.LOCATION("D20"),
    //.ODT("OFF"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("MED"),
    //.VREF_VAL("25"),
    .DO_DFFMODE("NONE"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTDELMUX("NODEL"),
    .TSMUX("TS"))
    CS_syn_22 (
    .doq({open_n85,open_n86,open_n87,CS_dup_21}),
    .ts(1'b0),
    .opad(CS));  // ../../top.v(7)
  PH1_PHY_HP_PAD #(
    //.DRIVE("8"),
    //.LOCATION("T6"),
    //.ODT(OFF),
    //.PULLMODE("PULLUP"),
    //.PULL_STRENGTH("DISABLE"),
    //.SLEWRATE("MED"),
    .IOTYPE("LVCMOS18"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTDELMUX("NODEL"),
    .TSMUX("TS"))
    RD_DONE_syn_4 (
    .doq({open_n114,open_n115,open_n116,open_n117,open_n118,open_n119,open_n120,open_n121,open_n122,RD_DONE_dup_3}),
    .ts(1'b0),
    .opad(RD_DONE));  // ../../top.v(10)
  PH1_PHY_PAD #(
    //.DRIVE("8"),
    //.IOTYPE("LVCMOS33"),
    //.LOCATION("B18"),
    //.ODT("OFF"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("MED"),
    //.VREF_VAL("25"),
    .DO_DFFMODE("NONE"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTDELMUX("NODEL"),
    .TSMUX("TS"))
    SCK_syn_4 (
    .doq({open_n161,open_n162,open_n163,SCK_dup_3}),
    .ts(1'b0),
    .opad(SCK));  // ../../top.v(8)
  PH1_PHY_PAD #(
    //.DRIVE("8"),
    //.IOTYPE("LVCMOS18"),
    //.LOCATION("G11"),
    //.ODT("OFF"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("MED"),
    //.VREF_VAL("25"),
    .DO_DFFMODE("NONE"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTDELMUX("NODEL"),
    .TSMUX("TS"))
    \Vdd_fmc_adj[0]_syn_1  (
    .doq({open_n189,open_n190,open_n191,1'b1}),
    .ts(1'b0),
    .opad(Vdd_fmc_adj[0]));  // ../../top.v(13)
  PH1_PHY_PAD #(
    //.DRIVE("8"),
    //.IOTYPE("LVCMOS18"),
    //.LOCATION("G10"),
    //.ODT("OFF"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("MED"),
    //.VREF_VAL("25"),
    .DO_DFFMODE("NONE"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTDELMUX("NODEL"),
    .TSMUX("TS"))
    \Vdd_fmc_adj[1]_syn_1  (
    .doq({open_n217,open_n218,open_n219,1'b1}),
    .ts(1'b0),
    .opad(Vdd_fmc_adj[1]));  // ../../top.v(13)
  PH1_PHY_PAD #(
    //.DRIVE("8"),
    //.IOTYPE("LVCMOS18"),
    //.LOCATION("H12"),
    //.ODT("OFF"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("MED"),
    //.VREF_VAL("25"),
    .DO_DFFMODE("NONE"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTDELMUX("NODEL"),
    .TSMUX("TS"))
    \Vdd_fmc_adj[2]_syn_1  (
    .doq({open_n245,open_n246,open_n247,1'b1}),
    .ts(1'b0),
    .opad(Vdd_fmc_adj[2]));  // ../../top.v(13)
  PH1_PHY_PAD #(
    //.HYSTERESIS("ON"),
    //.IOTYPE("LVCMOS33"),
    //.LOCATION("B15"),
    //.ODT("OFF"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    //.VREF_VAL("25"),
    .IDDRMODE("OFF"),
    .IDDRPIPEMODE("NONE"),
    .INDELMUX("NODEL"),
    .IN_DFFMODE("NONE"),
    .MODE("IN"),
    .TSMUX("1"))
    adAIn_syn_4 (
    .ipad(adAIn),
    .di(adAIn_dup_3));  // ../../top.v(5)
  PH1_PHY_PAD #(
    //.HYSTERESIS("ON"),
    //.IOTYPE("LVCMOS33"),
    //.LOCATION("A19"),
    //.ODT("OFF"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    //.VREF_VAL("25"),
    .IDDRMODE("OFF"),
    .IDDRPIPEMODE("NONE"),
    .INDELMUX("NODEL"),
    .IN_DFFMODE("NONE"),
    .MODE("IN"),
    .TSMUX("1"))
    adBIn_syn_2 (
    .ipad(adBIn),
    .di(adBIn_dup_1));  // ../../top.v(6)
  AL_MAP_LUT5 #(
    .EQN("(~E*~D*~C*~B*A)"),
    .INIT(32'h00000002))
    \ad_top/u_AD7266/A1B1_Result_b2_n16_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_6 ),
    .b(\ad_top/u_AD7266/count_SCK [2]),
    .c(\ad_top/u_AD7266/count_SCK [3]),
    .d(\ad_top/u_AD7266/count_SCK [4]),
    .e(\ad_top/u_AD7266/count_SCK [5]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n87 ));
  AL_MAP_LUT6 #(
    .EQN("((F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*~(E)*~(A)+(F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*E*~(A)+~((F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B)))*E*A+(F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*E*A)"),
    .INIT(64'hffbf5515eaaa4000))
    \ad_top/u_AD7266/A1B1_Result_b2_n16_syn_2  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n87 ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n19_syn_3 ),
    .c(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_2 ),
    .d(adAIn_dup_3),
    .e(adBIn_dup_1),
    .f(\ad_top/u_AD7266/A1B1_Result [11]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n16 ));
  AL_MAP_LUT5 #(
    .EQN("(~E*~D*~C*~B*A)"),
    .INIT(32'h00000002))
    \ad_top/u_AD7266/A1B1_Result_b2_n17_syn_1  (
    .a(\ad_top/u_AD7266/add3_syn_20 ),
    .b(\ad_top/u_AD7266/count_SCK [2]),
    .c(\ad_top/u_AD7266/count_SCK [3]),
    .d(\ad_top/u_AD7266/count_SCK [4]),
    .e(\ad_top/u_AD7266/count_SCK [5]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n88 ));
  AL_MAP_LUT6 #(
    .EQN("((F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*~(E)*~(A)+(F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*E*~(A)+~((F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B)))*E*A+(F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*E*A)"),
    .INIT(64'hffbf5515eaaa4000))
    \ad_top/u_AD7266/A1B1_Result_b2_n17_syn_2  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n88 ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n19_syn_3 ),
    .c(\ad_top/u_AD7266/A1B1_Result_b2_n21_syn_3 ),
    .d(adAIn_dup_3),
    .e(adBIn_dup_1),
    .f(\ad_top/u_AD7266/A1B1_Result [10]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n17 ));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    \ad_top/u_AD7266/A1B1_Result_b2_n18_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n21_syn_5 ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_2 ),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n89 ));
  AL_MAP_LUT6 #(
    .EQN("((F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*~(E)*~(A)+(F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*E*~(A)+~((F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B)))*E*A+(F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*E*A)"),
    .INIT(64'hffbf5515eaaa4000))
    \ad_top/u_AD7266/A1B1_Result_b2_n18_syn_2  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n89 ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n19_syn_3 ),
    .c(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_6 ),
    .d(adAIn_dup_3),
    .e(adBIn_dup_1),
    .f(\ad_top/u_AD7266/A1B1_Result [9]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n18 ));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    \ad_top/u_AD7266/A1B1_Result_b2_n19_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n21_syn_5 ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n21_syn_3 ),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n90 ));
  AL_MAP_LUT4 #(
    .EQN("(~D*C*~B*~A)"),
    .INIT(16'h0010))
    \ad_top/u_AD7266/A1B1_Result_b2_n19_syn_2  (
    .a(\ad_top/u_AD7266/count_SCK [2]),
    .b(\ad_top/u_AD7266/count_SCK [3]),
    .c(\ad_top/u_AD7266/count_SCK [4]),
    .d(\ad_top/u_AD7266/count_SCK [5]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n19_syn_3 ));
  AL_MAP_LUT6 #(
    .EQN("((F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*~(E)*~(A)+(F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*E*~(A)+~((F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B)))*E*A+(F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*E*A)"),
    .INIT(64'hffbf5515eaaa4000))
    \ad_top/u_AD7266/A1B1_Result_b2_n19_syn_4  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n90 ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n19_syn_3 ),
    .c(\ad_top/u_AD7266/add3_syn_20 ),
    .d(adAIn_dup_3),
    .e(adBIn_dup_1),
    .f(\ad_top/u_AD7266/A1B1_Result [8]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n19 ));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    \ad_top/u_AD7266/A1B1_Result_b2_n20_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_9 ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_2 ),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n105 ));
  AL_MAP_LUT6 #(
    .EQN("((F*~(D)*~(A)+F*D*~(A)+~(F)*D*A+F*D*A)*~(E)*~((C*B))+(F*~(D)*~(A)+F*D*~(A)+~(F)*D*A+F*D*A)*E*~((C*B))+~((F*~(D)*~(A)+F*D*~(A)+~(F)*D*A+F*D*A))*E*(C*B)+(F*~(D)*~(A)+F*D*~(A)+~(F)*D*A+F*D*A)*E*(C*B))"),
    .INIT(64'hffd53f15eac02a00))
    \ad_top/u_AD7266/A1B1_Result_b2_n20_syn_2  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n105 ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n21_syn_5 ),
    .c(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_6 ),
    .d(adAIn_dup_3),
    .e(adBIn_dup_1),
    .f(\ad_top/u_AD7266/A1B1_Result [7]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n20 ));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    \ad_top/u_AD7266/A1B1_Result_b2_n21_syn_1  (
    .a(\ad_top/u_AD7266/count_SCK [0]),
    .b(\ad_top/u_AD7266/count_SCK [1]),
    .o(\ad_top/u_AD7266/add3_syn_20 ));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    \ad_top/u_AD7266/A1B1_Result_b2_n21_syn_2  (
    .a(\ad_top/u_AD7266/count_SCK [0]),
    .b(\ad_top/u_AD7266/count_SCK [1]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n21_syn_3 ));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*A)"),
    .INIT(16'h0002))
    \ad_top/u_AD7266/A1B1_Result_b2_n21_syn_4  (
    .a(\ad_top/u_AD7266/count_SCK [2]),
    .b(\ad_top/u_AD7266/count_SCK [3]),
    .c(\ad_top/u_AD7266/count_SCK [4]),
    .d(\ad_top/u_AD7266/count_SCK [5]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n21_syn_5 ));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    \ad_top/u_AD7266/A1B1_Result_b2_n21_syn_6  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_9 ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n21_syn_3 ),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n106 ));
  AL_MAP_LUT6 #(
    .EQN("((F*~(D)*~(A)+F*D*~(A)+~(F)*D*A+F*D*A)*~(E)*~((C*B))+(F*~(D)*~(A)+F*D*~(A)+~(F)*D*A+F*D*A)*E*~((C*B))+~((F*~(D)*~(A)+F*D*~(A)+~(F)*D*A+F*D*A))*E*(C*B)+(F*~(D)*~(A)+F*D*~(A)+~(F)*D*A+F*D*A)*E*(C*B))"),
    .INIT(64'hffd53f15eac02a00))
    \ad_top/u_AD7266/A1B1_Result_b2_n21_syn_7  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n106 ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n21_syn_5 ),
    .c(\ad_top/u_AD7266/add3_syn_20 ),
    .d(adAIn_dup_3),
    .e(adBIn_dup_1),
    .f(\ad_top/u_AD7266/A1B1_Result [6]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n21 ));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    \ad_top/u_AD7266/A1B1_Result_b2_n22_syn_1  (
    .a(\ad_top/u_AD7266/count_SCK [0]),
    .b(\ad_top/u_AD7266/count_SCK [1]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_2 ));
  AL_MAP_LUT6 #(
    .EQN("((F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*~(E)*~(A)+(F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*E*~(A)+~((F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B)))*E*A+(F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*E*A)"),
    .INIT(64'hffbf5515eaaa4000))
    \ad_top/u_AD7266/A1B1_Result_b2_n22_syn_10  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n93 ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_9 ),
    .c(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_6 ),
    .d(adAIn_dup_3),
    .e(adBIn_dup_1),
    .f(\ad_top/u_AD7266/A1B1_Result [5]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n22 ));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*B*~A)"),
    .INIT(16'h0004))
    \ad_top/u_AD7266/A1B1_Result_b2_n22_syn_3  (
    .a(\ad_top/u_AD7266/count_SCK [2]),
    .b(\ad_top/u_AD7266/count_SCK [3]),
    .c(\ad_top/u_AD7266/count_SCK [4]),
    .d(\ad_top/u_AD7266/count_SCK [5]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_4 ));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \ad_top/u_AD7266/A1B1_Result_b2_n22_syn_5  (
    .a(\ad_top/u_AD7266/count_SCK [0]),
    .b(\ad_top/u_AD7266/count_SCK [1]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_6 ));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    \ad_top/u_AD7266/A1B1_Result_b2_n22_syn_7  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_4 ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_2 ),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n93 ));
  AL_MAP_LUT4 #(
    .EQN("(~D*C*~B*A)"),
    .INIT(16'h0020))
    \ad_top/u_AD7266/A1B1_Result_b2_n22_syn_8  (
    .a(\ad_top/u_AD7266/count_SCK [2]),
    .b(\ad_top/u_AD7266/count_SCK [3]),
    .c(\ad_top/u_AD7266/count_SCK [4]),
    .d(\ad_top/u_AD7266/count_SCK [5]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_9 ));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    \ad_top/u_AD7266/A1B1_Result_b2_n23_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_4 ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n21_syn_3 ),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n94 ));
  AL_MAP_LUT6 #(
    .EQN("((F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*~(E)*~(A)+(F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*E*~(A)+~((F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B)))*E*A+(F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*E*A)"),
    .INIT(64'hffbf5515eaaa4000))
    \ad_top/u_AD7266/A1B1_Result_b2_n23_syn_2  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n94 ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_9 ),
    .c(\ad_top/u_AD7266/add3_syn_20 ),
    .d(adAIn_dup_3),
    .e(adBIn_dup_1),
    .f(\ad_top/u_AD7266/A1B1_Result [4]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n23 ));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    \ad_top/u_AD7266/A1B1_Result_b2_n24_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n26_syn_2 ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_2 ),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n109 ));
  AL_MAP_LUT6 #(
    .EQN("((F*~(D)*~(A)+F*D*~(A)+~(F)*D*A+F*D*A)*~(E)*~((C*B))+(F*~(D)*~(A)+F*D*~(A)+~(F)*D*A+F*D*A)*E*~((C*B))+~((F*~(D)*~(A)+F*D*~(A)+~(F)*D*A+F*D*A))*E*(C*B)+(F*~(D)*~(A)+F*D*~(A)+~(F)*D*A+F*D*A)*E*(C*B))"),
    .INIT(64'hffd53f15eac02a00))
    \ad_top/u_AD7266/A1B1_Result_b2_n24_syn_2  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n109 ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_4 ),
    .c(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_6 ),
    .d(adAIn_dup_3),
    .e(adBIn_dup_1),
    .f(\ad_top/u_AD7266/A1B1_Result [3]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n24 ));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    \ad_top/u_AD7266/A1B1_Result_b2_n25_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n26_syn_2 ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n21_syn_3 ),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n110 ));
  AL_MAP_LUT6 #(
    .EQN("((F*~(D)*~(A)+F*D*~(A)+~(F)*D*A+F*D*A)*~(E)*~((C*B))+(F*~(D)*~(A)+F*D*~(A)+~(F)*D*A+F*D*A)*E*~((C*B))+~((F*~(D)*~(A)+F*D*~(A)+~(F)*D*A+F*D*A))*E*(C*B)+(F*~(D)*~(A)+F*D*~(A)+~(F)*D*A+F*D*A)*E*(C*B))"),
    .INIT(64'hffd53f15eac02a00))
    \ad_top/u_AD7266/A1B1_Result_b2_n25_syn_2  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n110 ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_4 ),
    .c(\ad_top/u_AD7266/add3_syn_20 ),
    .d(adAIn_dup_3),
    .e(adBIn_dup_1),
    .f(\ad_top/u_AD7266/A1B1_Result [2]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n25 ));
  AL_MAP_LUT4 #(
    .EQN("(~D*C*B*~A)"),
    .INIT(16'h0040))
    \ad_top/u_AD7266/A1B1_Result_b2_n26_syn_1  (
    .a(\ad_top/u_AD7266/count_SCK [2]),
    .b(\ad_top/u_AD7266/count_SCK [3]),
    .c(\ad_top/u_AD7266/count_SCK [4]),
    .d(\ad_top/u_AD7266/count_SCK [5]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n26_syn_2 ));
  AL_MAP_LUT5 #(
    .EQN("(~E*~D*C*B*A)"),
    .INIT(32'h00000080))
    \ad_top/u_AD7266/A1B1_Result_b2_n26_syn_3  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_2 ),
    .b(\ad_top/u_AD7266/count_SCK [2]),
    .c(\ad_top/u_AD7266/count_SCK [3]),
    .d(\ad_top/u_AD7266/count_SCK [4]),
    .e(\ad_top/u_AD7266/count_SCK [5]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n97 ));
  AL_MAP_LUT6 #(
    .EQN("((F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*~(E)*~(A)+(F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*E*~(A)+~((F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B)))*E*A+(F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*E*A)"),
    .INIT(64'hffbf5515eaaa4000))
    \ad_top/u_AD7266/A1B1_Result_b2_n26_syn_4  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n97 ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n26_syn_2 ),
    .c(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_6 ),
    .d(adAIn_dup_3),
    .e(adBIn_dup_1),
    .f(\ad_top/u_AD7266/A1B1_Result [1]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n26 ));
  AL_MAP_LUT5 #(
    .EQN("(~E*~D*C*B*A)"),
    .INIT(32'h00000080))
    \ad_top/u_AD7266/A1B1_Result_b2_n27_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n21_syn_3 ),
    .b(\ad_top/u_AD7266/count_SCK [2]),
    .c(\ad_top/u_AD7266/count_SCK [3]),
    .d(\ad_top/u_AD7266/count_SCK [4]),
    .e(\ad_top/u_AD7266/count_SCK [5]),
    .o(\ad_top/u_AD7266/count_SCK_b_n ));
  AL_MAP_LUT6 #(
    .EQN("((F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*~(E)*~(A)+(F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*E*~(A)+~((F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B)))*E*A+(F*~(D)*~((C*B))+F*D*~((C*B))+~(F)*D*(C*B)+F*D*(C*B))*E*A)"),
    .INIT(64'hffbf5515eaaa4000))
    \ad_top/u_AD7266/A1B1_Result_b2_n27_syn_2  (
    .a(\ad_top/u_AD7266/count_SCK_b_n ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n26_syn_2 ),
    .c(\ad_top/u_AD7266/add3_syn_20 ),
    .d(adAIn_dup_3),
    .e(adBIn_dup_1),
    .f(\ad_top/u_AD7266/A1B1_Result [0]),
    .o(\ad_top/u_AD7266/A1B1_Result_b2_n27 ));
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/A1_Result[0]_syn_1  (
    .i(\ad_top/u_AD7266/A1_Result[0]_syn_3 ),
    .o(\ad_top/u_AD7266/A1_Result [0]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/A1_Result[0]_syn_2  (
    .i(\ad_top/u_AD7266/A1_Result [0]),
    .o(\change/dataInput [0]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/A1_Result[10]_syn_1  (
    .i(\ad_top/u_AD7266/A1_Result[10]_syn_3 ),
    .o(\ad_top/u_AD7266/A1_Result [10]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/A1_Result[10]_syn_2  (
    .i(\ad_top/u_AD7266/A1_Result [10]),
    .o(\change/dataInput [10]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/A1_Result[11]_syn_1  (
    .i(\ad_top/u_AD7266/A1_Result[11]_syn_3 ),
    .o(\ad_top/u_AD7266/A1_Result [11]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/A1_Result[11]_syn_2  (
    .i(\ad_top/u_AD7266/A1_Result [11]),
    .o(\change/dataInput [11]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/A1_Result[1]_syn_1  (
    .i(\ad_top/u_AD7266/A1_Result[1]_syn_3 ),
    .o(\ad_top/u_AD7266/A1_Result [1]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/A1_Result[1]_syn_2  (
    .i(\ad_top/u_AD7266/A1_Result [1]),
    .o(\change/dataInput [1]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/A1_Result[2]_syn_1  (
    .i(\ad_top/u_AD7266/A1_Result[2]_syn_3 ),
    .o(\ad_top/u_AD7266/A1_Result [2]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/A1_Result[2]_syn_2  (
    .i(\ad_top/u_AD7266/A1_Result [2]),
    .o(\change/dataInput [2]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/A1_Result[3]_syn_1  (
    .i(\ad_top/u_AD7266/A1_Result[3]_syn_3 ),
    .o(\ad_top/u_AD7266/A1_Result [3]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/A1_Result[3]_syn_2  (
    .i(\ad_top/u_AD7266/A1_Result [3]),
    .o(\change/dataInput [3]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/A1_Result[4]_syn_1  (
    .i(\ad_top/u_AD7266/A1_Result[4]_syn_3 ),
    .o(\ad_top/u_AD7266/A1_Result [4]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/A1_Result[4]_syn_2  (
    .i(\ad_top/u_AD7266/A1_Result [4]),
    .o(\change/dataInput [4]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/A1_Result[5]_syn_1  (
    .i(\ad_top/u_AD7266/A1_Result[5]_syn_3 ),
    .o(\ad_top/u_AD7266/A1_Result [5]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/A1_Result[5]_syn_2  (
    .i(\ad_top/u_AD7266/A1_Result [5]),
    .o(\change/dataInput [5]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/A1_Result[6]_syn_1  (
    .i(\ad_top/u_AD7266/A1_Result[6]_syn_3 ),
    .o(\ad_top/u_AD7266/A1_Result [6]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/A1_Result[6]_syn_2  (
    .i(\ad_top/u_AD7266/A1_Result [6]),
    .o(\change/dataInput [6]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/A1_Result[7]_syn_1  (
    .i(\ad_top/u_AD7266/A1_Result[7]_syn_3 ),
    .o(\ad_top/u_AD7266/A1_Result [7]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/A1_Result[7]_syn_2  (
    .i(\ad_top/u_AD7266/A1_Result [7]),
    .o(\change/dataInput [7]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/A1_Result[8]_syn_1  (
    .i(\ad_top/u_AD7266/A1_Result[8]_syn_3 ),
    .o(\ad_top/u_AD7266/A1_Result [8]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/A1_Result[8]_syn_2  (
    .i(\ad_top/u_AD7266/A1_Result [8]),
    .o(\change/dataInput [8]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/A1_Result[9]_syn_1  (
    .i(\ad_top/u_AD7266/A1_Result[9]_syn_3 ),
    .o(\ad_top/u_AD7266/A1_Result [9]));  // ../../ad/ad7266.v(14)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/A1_Result[9]_syn_2  (
    .i(\ad_top/u_AD7266/A1_Result [9]),
    .o(\change/dataInput [9]));  // ../../ad/ad7266.v(14)
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/A1_Result_b[0]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [14]),
    .b(RD_DONE_dup_3),
    .c(\change/dataInput [0]),
    .o(\ad_top/u_AD7266/A1_Result_b [0]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/A1_Result_b[10]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [24]),
    .b(RD_DONE_dup_3),
    .c(\change/dataInput [10]),
    .o(\ad_top/u_AD7266/A1_Result_b [10]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/A1_Result_b[11]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [25]),
    .b(RD_DONE_dup_3),
    .c(\change/dataInput [11]),
    .o(\ad_top/u_AD7266/A1_Result_b [11]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/A1_Result_b[1]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [15]),
    .b(RD_DONE_dup_3),
    .c(\change/dataInput [1]),
    .o(\ad_top/u_AD7266/A1_Result_b [1]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/A1_Result_b[2]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [16]),
    .b(RD_DONE_dup_3),
    .c(\change/dataInput [2]),
    .o(\ad_top/u_AD7266/A1_Result_b [2]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/A1_Result_b[3]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [17]),
    .b(RD_DONE_dup_3),
    .c(\change/dataInput [3]),
    .o(\ad_top/u_AD7266/A1_Result_b [3]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/A1_Result_b[4]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [18]),
    .b(RD_DONE_dup_3),
    .c(\change/dataInput [4]),
    .o(\ad_top/u_AD7266/A1_Result_b [4]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/A1_Result_b[5]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [19]),
    .b(RD_DONE_dup_3),
    .c(\change/dataInput [5]),
    .o(\ad_top/u_AD7266/A1_Result_b [5]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/A1_Result_b[6]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [20]),
    .b(RD_DONE_dup_3),
    .c(\change/dataInput [6]),
    .o(\ad_top/u_AD7266/A1_Result_b [6]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/A1_Result_b[7]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [21]),
    .b(RD_DONE_dup_3),
    .c(\change/dataInput [7]),
    .o(\ad_top/u_AD7266/A1_Result_b [7]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/A1_Result_b[8]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [22]),
    .b(RD_DONE_dup_3),
    .c(\change/dataInput [8]),
    .o(\ad_top/u_AD7266/A1_Result_b [8]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/A1_Result_b[9]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [23]),
    .b(RD_DONE_dup_3),
    .c(\change/dataInput [9]),
    .o(\ad_top/u_AD7266/A1_Result_b [9]));
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/B1_Result[0]_syn_1  (
    .i(\ad_top/u_AD7266/B1_Result[0]_syn_3 ),
    .o(\ad_top/u_AD7266/B1_Result [0]));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/B1_Result[0]_syn_2  (
    .i(\ad_top/u_AD7266/B1_Result [0]),
    .o(\ad_top/u_AD7266/B1_Result[0]_syn_4 ));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/B1_Result[10]_syn_1  (
    .i(\ad_top/u_AD7266/B1_Result[10]_syn_3 ),
    .o(\ad_top/u_AD7266/B1_Result [10]));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/B1_Result[10]_syn_2  (
    .i(\ad_top/u_AD7266/B1_Result [10]),
    .o(\ad_top/u_AD7266/B1_Result[10]_syn_4 ));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/B1_Result[11]_syn_1  (
    .i(\ad_top/u_AD7266/B1_Result[11]_syn_3 ),
    .o(\ad_top/u_AD7266/B1_Result [11]));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/B1_Result[11]_syn_2  (
    .i(\ad_top/u_AD7266/B1_Result [11]),
    .o(\ad_top/u_AD7266/B1_Result[11]_syn_4 ));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/B1_Result[1]_syn_1  (
    .i(\ad_top/u_AD7266/B1_Result[1]_syn_3 ),
    .o(\ad_top/u_AD7266/B1_Result [1]));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/B1_Result[1]_syn_2  (
    .i(\ad_top/u_AD7266/B1_Result [1]),
    .o(\ad_top/u_AD7266/B1_Result[1]_syn_4 ));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/B1_Result[2]_syn_1  (
    .i(\ad_top/u_AD7266/B1_Result[2]_syn_3 ),
    .o(\ad_top/u_AD7266/B1_Result [2]));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/B1_Result[2]_syn_2  (
    .i(\ad_top/u_AD7266/B1_Result [2]),
    .o(\ad_top/u_AD7266/B1_Result[2]_syn_4 ));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/B1_Result[3]_syn_1  (
    .i(\ad_top/u_AD7266/B1_Result[3]_syn_3 ),
    .o(\ad_top/u_AD7266/B1_Result [3]));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/B1_Result[3]_syn_2  (
    .i(\ad_top/u_AD7266/B1_Result [3]),
    .o(\ad_top/u_AD7266/B1_Result[3]_syn_4 ));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/B1_Result[4]_syn_1  (
    .i(\ad_top/u_AD7266/B1_Result[4]_syn_3 ),
    .o(\ad_top/u_AD7266/B1_Result [4]));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/B1_Result[4]_syn_2  (
    .i(\ad_top/u_AD7266/B1_Result [4]),
    .o(\ad_top/u_AD7266/B1_Result[4]_syn_4 ));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/B1_Result[5]_syn_1  (
    .i(\ad_top/u_AD7266/B1_Result[5]_syn_3 ),
    .o(\ad_top/u_AD7266/B1_Result [5]));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/B1_Result[5]_syn_2  (
    .i(\ad_top/u_AD7266/B1_Result [5]),
    .o(\ad_top/u_AD7266/B1_Result[5]_syn_4 ));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/B1_Result[6]_syn_1  (
    .i(\ad_top/u_AD7266/B1_Result[6]_syn_3 ),
    .o(\ad_top/u_AD7266/B1_Result [6]));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/B1_Result[6]_syn_2  (
    .i(\ad_top/u_AD7266/B1_Result [6]),
    .o(\ad_top/u_AD7266/B1_Result[6]_syn_4 ));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/B1_Result[7]_syn_1  (
    .i(\ad_top/u_AD7266/B1_Result[7]_syn_3 ),
    .o(\ad_top/u_AD7266/B1_Result [7]));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/B1_Result[7]_syn_2  (
    .i(\ad_top/u_AD7266/B1_Result [7]),
    .o(\ad_top/u_AD7266/B1_Result[7]_syn_4 ));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/B1_Result[8]_syn_1  (
    .i(\ad_top/u_AD7266/B1_Result[8]_syn_3 ),
    .o(\ad_top/u_AD7266/B1_Result [8]));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/B1_Result[8]_syn_2  (
    .i(\ad_top/u_AD7266/B1_Result [8]),
    .o(\ad_top/u_AD7266/B1_Result[8]_syn_4 ));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("OUT"))
    \ad_top/u_AD7266/B1_Result[9]_syn_1  (
    .i(\ad_top/u_AD7266/B1_Result[9]_syn_3 ),
    .o(\ad_top/u_AD7266/B1_Result [9]));  // ../../ad/ad7266.v(15)
  AL_BUFKEEP #(
    .KEEP("IN"))
    \ad_top/u_AD7266/B1_Result[9]_syn_2  (
    .i(\ad_top/u_AD7266/B1_Result [9]),
    .o(\ad_top/u_AD7266/B1_Result[9]_syn_4 ));  // ../../ad/ad7266.v(15)
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/B1_Result_b[0]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [0]),
    .b(RD_DONE_dup_3),
    .c(\ad_top/u_AD7266/B1_Result[0]_syn_4 ),
    .o(\ad_top/u_AD7266/B1_Result_b [0]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/B1_Result_b[10]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [10]),
    .b(RD_DONE_dup_3),
    .c(\ad_top/u_AD7266/B1_Result[10]_syn_4 ),
    .o(\ad_top/u_AD7266/B1_Result_b [10]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/B1_Result_b[11]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [11]),
    .b(RD_DONE_dup_3),
    .c(\ad_top/u_AD7266/B1_Result[11]_syn_4 ),
    .o(\ad_top/u_AD7266/B1_Result_b [11]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/B1_Result_b[1]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [1]),
    .b(RD_DONE_dup_3),
    .c(\ad_top/u_AD7266/B1_Result[1]_syn_4 ),
    .o(\ad_top/u_AD7266/B1_Result_b [1]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/B1_Result_b[2]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [2]),
    .b(RD_DONE_dup_3),
    .c(\ad_top/u_AD7266/B1_Result[2]_syn_4 ),
    .o(\ad_top/u_AD7266/B1_Result_b [2]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/B1_Result_b[3]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [3]),
    .b(RD_DONE_dup_3),
    .c(\ad_top/u_AD7266/B1_Result[3]_syn_4 ),
    .o(\ad_top/u_AD7266/B1_Result_b [3]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/B1_Result_b[4]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [4]),
    .b(RD_DONE_dup_3),
    .c(\ad_top/u_AD7266/B1_Result[4]_syn_4 ),
    .o(\ad_top/u_AD7266/B1_Result_b [4]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/B1_Result_b[5]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [5]),
    .b(RD_DONE_dup_3),
    .c(\ad_top/u_AD7266/B1_Result[5]_syn_4 ),
    .o(\ad_top/u_AD7266/B1_Result_b [5]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/B1_Result_b[6]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [6]),
    .b(RD_DONE_dup_3),
    .c(\ad_top/u_AD7266/B1_Result[6]_syn_4 ),
    .o(\ad_top/u_AD7266/B1_Result_b [6]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/B1_Result_b[7]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [7]),
    .b(RD_DONE_dup_3),
    .c(\ad_top/u_AD7266/B1_Result[7]_syn_4 ),
    .o(\ad_top/u_AD7266/B1_Result_b [7]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/B1_Result_b[8]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [8]),
    .b(RD_DONE_dup_3),
    .c(\ad_top/u_AD7266/B1_Result[8]_syn_4 ),
    .o(\ad_top/u_AD7266/B1_Result_b [8]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \ad_top/u_AD7266/B1_Result_b[9]_syn_1  (
    .a(\ad_top/u_AD7266/A1B1_Result [9]),
    .b(RD_DONE_dup_3),
    .c(\ad_top/u_AD7266/B1_Result[9]_syn_4 ),
    .o(\ad_top/u_AD7266/B1_Result_b [9]));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    \ad_top/u_AD7266/CONVST_time_b[0]_syn_1  (
    .a(\ad_top/u_AD7266/CONVST_time_b[7]_syn_2 ),
    .b(\ad_top/u_AD7266/CONVST_time [0]),
    .o(\ad_top/u_AD7266/CONVST_time_b [0]));
  AL_MAP_LUT3 #(
    .EQN("(~A*(C@B))"),
    .INIT(8'h14))
    \ad_top/u_AD7266/CONVST_time_b[1]_syn_1  (
    .a(\ad_top/u_AD7266/CONVST_time_b[7]_syn_2 ),
    .b(\ad_top/u_AD7266/CONVST_time [0]),
    .c(\ad_top/u_AD7266/CONVST_time [1]),
    .o(\ad_top/u_AD7266/CONVST_time_b [1]));
  AL_MAP_LUT4 #(
    .EQN("(~A*(D@(C*B)))"),
    .INIT(16'h1540))
    \ad_top/u_AD7266/CONVST_time_b[2]_syn_1  (
    .a(\ad_top/u_AD7266/CONVST_time_b[7]_syn_2 ),
    .b(\ad_top/u_AD7266/CONVST_time [0]),
    .c(\ad_top/u_AD7266/CONVST_time [1]),
    .d(\ad_top/u_AD7266/CONVST_time [2]),
    .o(\ad_top/u_AD7266/CONVST_time_b [2]));
  AL_MAP_LUT5 #(
    .EQN("(~A*(E@(D*C*B)))"),
    .INIT(32'h15554000))
    \ad_top/u_AD7266/CONVST_time_b[3]_syn_1  (
    .a(\ad_top/u_AD7266/CONVST_time_b[7]_syn_2 ),
    .b(\ad_top/u_AD7266/CONVST_time [0]),
    .c(\ad_top/u_AD7266/CONVST_time [1]),
    .d(\ad_top/u_AD7266/CONVST_time [2]),
    .e(\ad_top/u_AD7266/CONVST_time [3]),
    .o(\ad_top/u_AD7266/CONVST_time_b [3]));
  AL_MAP_LUT3 #(
    .EQN("(~A*(C@B))"),
    .INIT(8'h14))
    \ad_top/u_AD7266/CONVST_time_b[4]_syn_1  (
    .a(\ad_top/u_AD7266/CONVST_time_b[7]_syn_2 ),
    .b(\ad_top/u_AD7266/add4_syn_33 ),
    .c(\ad_top/u_AD7266/CONVST_time [4]),
    .o(\ad_top/u_AD7266/CONVST_time_b [4]));
  AL_MAP_LUT4 #(
    .EQN("(~A*(D@(C*B)))"),
    .INIT(16'h1540))
    \ad_top/u_AD7266/CONVST_time_b[5]_syn_1  (
    .a(\ad_top/u_AD7266/CONVST_time_b[7]_syn_2 ),
    .b(\ad_top/u_AD7266/add4_syn_33 ),
    .c(\ad_top/u_AD7266/CONVST_time [4]),
    .d(\ad_top/u_AD7266/CONVST_time [5]),
    .o(\ad_top/u_AD7266/CONVST_time_b [5]));
  AL_MAP_LUT5 #(
    .EQN("(~A*(E@(D*C*B)))"),
    .INIT(32'h15554000))
    \ad_top/u_AD7266/CONVST_time_b[6]_syn_1  (
    .a(\ad_top/u_AD7266/CONVST_time_b[7]_syn_2 ),
    .b(\ad_top/u_AD7266/add4_syn_33 ),
    .c(\ad_top/u_AD7266/CONVST_time [4]),
    .d(\ad_top/u_AD7266/CONVST_time [5]),
    .e(\ad_top/u_AD7266/CONVST_time [6]),
    .o(\ad_top/u_AD7266/CONVST_time_b [6]));
  AL_MAP_LUT6 #(
    .EQN("(F*~(~E*~(D*C*~(~B*~A))))"),
    .INIT(64'hffffe00000000000))
    \ad_top/u_AD7266/CONVST_time_b[7]_syn_1  (
    .a(\ad_top/u_AD7266/CONVST_time [2]),
    .b(\ad_top/u_AD7266/CONVST_time [3]),
    .c(\ad_top/u_AD7266/CONVST_time [4]),
    .d(\ad_top/u_AD7266/CONVST_time [5]),
    .e(\ad_top/u_AD7266/CONVST_time [6]),
    .f(\ad_top/u_AD7266/CONVST_time [7]),
    .o(\ad_top/u_AD7266/CONVST_time_b[7]_syn_2 ));
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    \ad_top/u_AD7266/CONVST_time_b[7]_syn_3  (
    .a(\ad_top/u_AD7266/CONVST_time [0]),
    .b(\ad_top/u_AD7266/CONVST_time [1]),
    .c(\ad_top/u_AD7266/CONVST_time [2]),
    .d(\ad_top/u_AD7266/CONVST_time [3]),
    .o(\ad_top/u_AD7266/add4_syn_33 ));
  AL_MAP_LUT6 #(
    .EQN("(~A*~(~F*~(E*D*C*B)))"),
    .INIT(64'h5555555540000000))
    \ad_top/u_AD7266/CONVST_time_b[7]_syn_4  (
    .a(\ad_top/u_AD7266/CONVST_time_b[7]_syn_2 ),
    .b(\ad_top/u_AD7266/add4_syn_33 ),
    .c(\ad_top/u_AD7266/CONVST_time [4]),
    .d(\ad_top/u_AD7266/CONVST_time [5]),
    .e(\ad_top/u_AD7266/CONVST_time [6]),
    .f(\ad_top/u_AD7266/CONVST_time [7]),
    .o(\ad_top/u_AD7266/CONVST_time_b [7]));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    \ad_top/u_AD7266/CS_n_syn_1  (
    .a(\ad_top/u_AD7266/mux4_syn_13 ),
    .b(\ad_top/u_AD7266/READY_FLAG ),
    .o(\ad_top/u_AD7266/CS_n ));
  AL_DFF_X \ad_top/u_AD7266/CS_reg  (
    .ar(1'b0),
    .as(~resetSorce_dup_1),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/CS_n ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(CS_dup_21));  // ../../ad/ad7266.v(101)
  AL_DFF_X \ad_top/u_AD7266/READY_FLAG_reg  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/sel0_syn_2 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/READY_FLAG ));  // ../../ad/ad7266.v(335)
  AL_MAP_LUT2 #(
    .EQN("~(B*A)"),
    .INIT(4'h7))
    \ad_top/u_AD7266/SCK_n_syn_1  (
    .a(\ad_top/u_AD7266/count_spi_clk_N_b[4]_syn_3 ),
    .b(SCK_dup_3),
    .o(\ad_top/u_AD7266/SCK_n ));
  AL_DFF_X \ad_top/u_AD7266/SCK_reg  (
    .ar(1'b0),
    .as(~resetSorce_dup_1),
    .clk(~\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/SCK_n ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(SCK_dup_3));  // ../../ad/ad7266.v(70)
  AL_MAP_LUT4 #(
    .EQN("(D@(C*B*A))"),
    .INIT(16'h7f80))
    \ad_top/u_AD7266/count_SCK_b1[4]_syn_1  (
    .a(\ad_top/u_AD7266/add3_syn_20 ),
    .b(\ad_top/u_AD7266/count_SCK [2]),
    .c(\ad_top/u_AD7266/count_SCK [3]),
    .d(\ad_top/u_AD7266/count_SCK [4]),
    .o(\ad_top/u_AD7266/count_SCK_b1 [4]));
  AL_MAP_LUT5 #(
    .EQN("(E@(D*C*B*A))"),
    .INIT(32'h7fff8000))
    \ad_top/u_AD7266/count_SCK_b1[5]_syn_1  (
    .a(\ad_top/u_AD7266/add3_syn_20 ),
    .b(\ad_top/u_AD7266/count_SCK [2]),
    .c(\ad_top/u_AD7266/count_SCK [3]),
    .d(\ad_top/u_AD7266/count_SCK [4]),
    .e(\ad_top/u_AD7266/count_SCK [5]),
    .o(\ad_top/u_AD7266/count_SCK_b1 [5]));
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    \ad_top/u_AD7266/count_SCK_b[0]_syn_1  (
    .a(\ad_top/u_AD7266/count_SCK [0]),
    .o(\ad_top/u_AD7266/count_SCK_b [0]));
  AL_MAP_LUT3 #(
    .EQN("(~A*(C@B))"),
    .INIT(8'h14))
    \ad_top/u_AD7266/count_SCK_b[1]_syn_1  (
    .a(\ad_top/u_AD7266/count_SCK_b_n ),
    .b(\ad_top/u_AD7266/count_SCK [0]),
    .c(\ad_top/u_AD7266/count_SCK [1]),
    .o(\ad_top/u_AD7266/count_SCK_b [1]));
  AL_MAP_LUT3 #(
    .EQN("(~A*(C@B))"),
    .INIT(8'h14))
    \ad_top/u_AD7266/count_SCK_b[2]_syn_1  (
    .a(\ad_top/u_AD7266/count_SCK_b_n ),
    .b(\ad_top/u_AD7266/add3_syn_20 ),
    .c(\ad_top/u_AD7266/count_SCK [2]),
    .o(\ad_top/u_AD7266/count_SCK_b [2]));
  AL_MAP_LUT4 #(
    .EQN("(~A*(D@(C*B)))"),
    .INIT(16'h1540))
    \ad_top/u_AD7266/count_SCK_b[3]_syn_1  (
    .a(\ad_top/u_AD7266/count_SCK_b_n ),
    .b(\ad_top/u_AD7266/add3_syn_20 ),
    .c(\ad_top/u_AD7266/count_SCK [2]),
    .d(\ad_top/u_AD7266/count_SCK [3]),
    .o(\ad_top/u_AD7266/count_SCK_b [3]));
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    \ad_top/u_AD7266/count_clk_b[0]_syn_1  (
    .a(\ad_top/u_AD7266/count_clk [0]),
    .o(\ad_top/u_AD7266/count_clk_b [0]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    \ad_top/u_AD7266/count_spi_clk_N_b[0]_syn_1  (
    .a(\ad_top/u_AD7266/count_spi_clk_N_b[4]_syn_3 ),
    .b(\ad_top/u_AD7266/count_spi_clk_N [0]),
    .o(\ad_top/u_AD7266/count_spi_clk_N_b [0]));
  AL_MAP_LUT3 #(
    .EQN("(~A*(C@B))"),
    .INIT(8'h14))
    \ad_top/u_AD7266/count_spi_clk_N_b[1]_syn_1  (
    .a(CS_dup_21),
    .b(\ad_top/u_AD7266/count_spi_clk_N [0]),
    .c(\ad_top/u_AD7266/count_spi_clk_N [1]),
    .o(\ad_top/u_AD7266/count_spi_clk_N_b [1]));
  AL_MAP_LUT3 #(
    .EQN("(A*(C@B))"),
    .INIT(8'h28))
    \ad_top/u_AD7266/count_spi_clk_N_b[2]_syn_1  (
    .a(\ad_top/u_AD7266/count_spi_clk_N_b[4]_syn_3 ),
    .b(\ad_top/u_AD7266/add1_syn_20 ),
    .c(\ad_top/u_AD7266/count_spi_clk_N [2]),
    .o(\ad_top/u_AD7266/count_spi_clk_N_b [2]));
  AL_MAP_LUT4 #(
    .EQN("(A*(D@(C*B)))"),
    .INIT(16'h2a80))
    \ad_top/u_AD7266/count_spi_clk_N_b[3]_syn_1  (
    .a(\ad_top/u_AD7266/count_spi_clk_N_b[4]_syn_3 ),
    .b(\ad_top/u_AD7266/add1_syn_20 ),
    .c(\ad_top/u_AD7266/count_spi_clk_N [2]),
    .d(\ad_top/u_AD7266/count_spi_clk_N [3]),
    .o(\ad_top/u_AD7266/count_spi_clk_N_b [3]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    \ad_top/u_AD7266/count_spi_clk_N_b[4]_syn_1  (
    .a(\ad_top/u_AD7266/count_spi_clk_N [0]),
    .b(\ad_top/u_AD7266/count_spi_clk_N [1]),
    .o(\ad_top/u_AD7266/add1_syn_20 ));
  AL_MAP_LUT6 #(
    .EQN("(~B*~(~F*E*D*~C*A))"),
    .INIT(64'h3333333331333333))
    \ad_top/u_AD7266/count_spi_clk_N_b[4]_syn_2  (
    .a(\ad_top/u_AD7266/add1_syn_20 ),
    .b(CS_dup_21),
    .c(\ad_top/u_AD7266/count_spi_clk_N [2]),
    .d(\ad_top/u_AD7266/count_spi_clk_N [3]),
    .e(\ad_top/u_AD7266/count_spi_clk_N [4]),
    .f(\ad_top/u_AD7266/count_spi_clk_N [5]),
    .o(\ad_top/u_AD7266/count_spi_clk_N_b[4]_syn_3 ));
  AL_MAP_LUT5 #(
    .EQN("(A*(E@(D*C*B)))"),
    .INIT(32'h2aaa8000))
    \ad_top/u_AD7266/count_spi_clk_N_b[4]_syn_4  (
    .a(\ad_top/u_AD7266/count_spi_clk_N_b[4]_syn_3 ),
    .b(\ad_top/u_AD7266/add1_syn_20 ),
    .c(\ad_top/u_AD7266/count_spi_clk_N [2]),
    .d(\ad_top/u_AD7266/count_spi_clk_N [3]),
    .e(\ad_top/u_AD7266/count_spi_clk_N [4]),
    .o(\ad_top/u_AD7266/count_spi_clk_N_b [4]));
  AL_MAP_LUT6 #(
    .EQN("(~B*(F@(E*D*C*A)))"),
    .INIT(64'h1333333320000000))
    \ad_top/u_AD7266/count_spi_clk_N_b[5]_syn_1  (
    .a(\ad_top/u_AD7266/add1_syn_20 ),
    .b(CS_dup_21),
    .c(\ad_top/u_AD7266/count_spi_clk_N [2]),
    .d(\ad_top/u_AD7266/count_spi_clk_N [3]),
    .e(\ad_top/u_AD7266/count_spi_clk_N [4]),
    .f(\ad_top/u_AD7266/count_spi_clk_N [5]),
    .o(\ad_top/u_AD7266/count_spi_clk_N_b [5]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    \ad_top/u_AD7266/count_spi_clk_P_b[0]_syn_1  (
    .a(\ad_top/u_AD7266/mux4_syn_13 ),
    .b(\ad_top/u_AD7266/count_spi_clk_P [0]),
    .o(\ad_top/u_AD7266/count_spi_clk_P_b [0]));
  AL_MAP_LUT3 #(
    .EQN("(A*(C@B))"),
    .INIT(8'h28))
    \ad_top/u_AD7266/count_spi_clk_P_b[1]_syn_1  (
    .a(\ad_top/u_AD7266/mux4_syn_13 ),
    .b(\ad_top/u_AD7266/count_spi_clk_P [0]),
    .c(\ad_top/u_AD7266/count_spi_clk_P [1]),
    .o(\ad_top/u_AD7266/count_spi_clk_P_b [1]));
  AL_MAP_LUT4 #(
    .EQN("(~A*(D@(C*B)))"),
    .INIT(16'h1540))
    \ad_top/u_AD7266/count_spi_clk_P_b[2]_syn_1  (
    .a(CS_dup_21),
    .b(\ad_top/u_AD7266/count_spi_clk_P [0]),
    .c(\ad_top/u_AD7266/count_spi_clk_P [1]),
    .d(\ad_top/u_AD7266/count_spi_clk_P [2]),
    .o(\ad_top/u_AD7266/count_spi_clk_P_b [2]));
  AL_MAP_LUT5 #(
    .EQN("(A*(E@(D*C*B)))"),
    .INIT(32'h2aaa8000))
    \ad_top/u_AD7266/count_spi_clk_P_b[3]_syn_1  (
    .a(\ad_top/u_AD7266/mux4_syn_13 ),
    .b(\ad_top/u_AD7266/count_spi_clk_P [0]),
    .c(\ad_top/u_AD7266/count_spi_clk_P [1]),
    .d(\ad_top/u_AD7266/count_spi_clk_P [2]),
    .e(\ad_top/u_AD7266/count_spi_clk_P [3]),
    .o(\ad_top/u_AD7266/count_spi_clk_P_b [3]));
  AL_MAP_LUT6 #(
    .EQN("(~F*E*D*~C*B*~A)"),
    .INIT(64'h0000000004000000))
    \ad_top/u_AD7266/count_spi_clk_P_b[4]_syn_1  (
    .a(\ad_top/u_AD7266/count_spi_clk_P [0]),
    .b(\ad_top/u_AD7266/count_spi_clk_P [1]),
    .c(\ad_top/u_AD7266/count_spi_clk_P [2]),
    .d(\ad_top/u_AD7266/count_spi_clk_P [3]),
    .e(\ad_top/u_AD7266/count_spi_clk_P [4]),
    .f(\ad_top/u_AD7266/count_spi_clk_P [5]),
    .o(\ad_top/u_AD7266/count_spi_clk_P_b[4]_syn_2 ));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    \ad_top/u_AD7266/count_spi_clk_P_b[4]_syn_3  (
    .a(\ad_top/u_AD7266/count_spi_clk_P_b[4]_syn_2 ),
    .b(CS_dup_21),
    .o(\ad_top/u_AD7266/mux4_syn_13 ));
  AL_MAP_LUT6 #(
    .EQN("(A*(F@(E*D*C*B)))"),
    .INIT(64'h2aaaaaaa80000000))
    \ad_top/u_AD7266/count_spi_clk_P_b[4]_syn_4  (
    .a(\ad_top/u_AD7266/mux4_syn_13 ),
    .b(\ad_top/u_AD7266/count_spi_clk_P [0]),
    .c(\ad_top/u_AD7266/count_spi_clk_P [1]),
    .d(\ad_top/u_AD7266/count_spi_clk_P [2]),
    .e(\ad_top/u_AD7266/count_spi_clk_P [3]),
    .f(\ad_top/u_AD7266/count_spi_clk_P [4]),
    .o(\ad_top/u_AD7266/count_spi_clk_P_b [4]));
  AL_MAP_LUT6 #(
    .EQN("(F@(E*D*C*B*A))"),
    .INIT(64'h7fffffff80000000))
    \ad_top/u_AD7266/count_spi_clk_P_b[5]_syn_1  (
    .a(\ad_top/u_AD7266/count_spi_clk_P [0]),
    .b(\ad_top/u_AD7266/count_spi_clk_P [1]),
    .c(\ad_top/u_AD7266/count_spi_clk_P [2]),
    .d(\ad_top/u_AD7266/count_spi_clk_P [3]),
    .e(\ad_top/u_AD7266/count_spi_clk_P [4]),
    .f(\ad_top/u_AD7266/count_spi_clk_P [5]),
    .o(\ad_top/u_AD7266/count_spi_clk_P_b2 [5]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    \ad_top/u_AD7266/count_spi_clk_P_b[5]_syn_2  (
    .a(\ad_top/u_AD7266/count_spi_clk_P_b2 [5]),
    .b(CS_dup_21),
    .o(\ad_top/u_AD7266/count_spi_clk_P_b [5]));
  AL_MAP_LUT6 #(
    .EQN("(~F*~E*~A*~(D*C*B))"),
    .INIT(64'h0000000000001555))
    \ad_top/u_AD7266/mux22_syn_125  (
    .a(CS_dup_21),
    .b(\ad_top/u_AD7266/count_SCK [1]),
    .c(\ad_top/u_AD7266/count_SCK [2]),
    .d(\ad_top/u_AD7266/count_SCK [3]),
    .e(\ad_top/u_AD7266/count_SCK [4]),
    .f(\ad_top/u_AD7266/count_SCK [5]),
    .o(\ad_top/u_AD7266/mux22_syn_31 ));  // ../../ad/ad7266.v(130)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_10  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/A1B1_Result_b2_n19 ),
    .en(\ad_top/u_AD7266/mux22_syn_31 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [8]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_11  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/A1B1_Result_b2_n18 ),
    .en(\ad_top/u_AD7266/mux22_syn_31 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [9]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_12  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/A1B1_Result_b2_n17 ),
    .en(\ad_top/u_AD7266/mux22_syn_31 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [10]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_13  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/A1B1_Result_b2_n16 ),
    .en(\ad_top/u_AD7266/mux22_syn_31 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [11]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_16  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/reg0_syn_43 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [14]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_17  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/reg0_syn_45 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [15]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_18  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/reg0_syn_47 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [16]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_19  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/reg0_syn_49 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [17]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_2  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/A1B1_Result_b2_n27 ),
    .en(\ad_top/u_AD7266/mux22_syn_31 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [0]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_20  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/reg0_syn_51 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [18]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_21  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/reg0_syn_53 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [19]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_22  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/reg0_syn_31 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [20]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_23  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/reg0_syn_33 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [21]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_24  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/reg0_syn_35 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [22]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_25  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/reg0_syn_37 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [23]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_26  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/reg0_syn_39 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [24]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_27  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/reg0_syn_41 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [25]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_3  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/A1B1_Result_b2_n26 ),
    .en(\ad_top/u_AD7266/mux22_syn_31 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [1]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_4  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/A1B1_Result_b2_n25 ),
    .en(\ad_top/u_AD7266/mux22_syn_31 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [2]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_5  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/A1B1_Result_b2_n24 ),
    .en(\ad_top/u_AD7266/mux22_syn_31 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [3]));  // ../../ad/ad7266.v(128)
  AL_MAP_LUT4 #(
    .EQN("(D*~(B)*~((~C*A))+D*B*~((~C*A))+~(D)*B*(~C*A)+D*B*(~C*A))"),
    .INIT(16'hfd08))
    \ad_top/u_AD7266/reg0_syn_54  (
    .a(\ad_top/u_AD7266/count_SCK_b_n ),
    .b(adAIn_dup_3),
    .c(CS_dup_21),
    .d(\ad_top/u_AD7266/A1B1_Result [14]),
    .o(\ad_top/u_AD7266/reg0_syn_43 ));  // ../../ad/ad7266.v(128)
  AL_MAP_LUT4 #(
    .EQN("(D*~(B)*~((~C*A))+D*B*~((~C*A))+~(D)*B*(~C*A)+D*B*(~C*A))"),
    .INIT(16'hfd08))
    \ad_top/u_AD7266/reg0_syn_55  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n87 ),
    .b(adAIn_dup_3),
    .c(CS_dup_21),
    .d(\ad_top/u_AD7266/A1B1_Result [25]),
    .o(\ad_top/u_AD7266/reg0_syn_41 ));  // ../../ad/ad7266.v(128)
  AL_MAP_LUT4 #(
    .EQN("(D*~(B)*~((~C*A))+D*B*~((~C*A))+~(D)*B*(~C*A)+D*B*(~C*A))"),
    .INIT(16'hfd08))
    \ad_top/u_AD7266/reg0_syn_56  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n88 ),
    .b(adAIn_dup_3),
    .c(CS_dup_21),
    .d(\ad_top/u_AD7266/A1B1_Result [24]),
    .o(\ad_top/u_AD7266/reg0_syn_39 ));  // ../../ad/ad7266.v(128)
  AL_MAP_LUT4 #(
    .EQN("(D*~(B)*~((~C*A))+D*B*~((~C*A))+~(D)*B*(~C*A)+D*B*(~C*A))"),
    .INIT(16'hfd08))
    \ad_top/u_AD7266/reg0_syn_57  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n89 ),
    .b(adAIn_dup_3),
    .c(CS_dup_21),
    .d(\ad_top/u_AD7266/A1B1_Result [23]),
    .o(\ad_top/u_AD7266/reg0_syn_37 ));  // ../../ad/ad7266.v(128)
  AL_MAP_LUT4 #(
    .EQN("(D*~(B)*~((~C*A))+D*B*~((~C*A))+~(D)*B*(~C*A)+D*B*(~C*A))"),
    .INIT(16'hfd08))
    \ad_top/u_AD7266/reg0_syn_58  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n90 ),
    .b(adAIn_dup_3),
    .c(CS_dup_21),
    .d(\ad_top/u_AD7266/A1B1_Result [22]),
    .o(\ad_top/u_AD7266/reg0_syn_35 ));  // ../../ad/ad7266.v(128)
  AL_MAP_LUT5 #(
    .EQN("(E*~(C)*~((~D*B*A))+E*C*~((~D*B*A))+~(E)*C*(~D*B*A)+E*C*(~D*B*A))"),
    .INIT(32'hfff70080))
    \ad_top/u_AD7266/reg0_syn_59  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n21_syn_5 ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_6 ),
    .c(adAIn_dup_3),
    .d(CS_dup_21),
    .e(\ad_top/u_AD7266/A1B1_Result [21]),
    .o(\ad_top/u_AD7266/reg0_syn_33 ));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_6  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/A1B1_Result_b2_n23 ),
    .en(\ad_top/u_AD7266/mux22_syn_31 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [4]));  // ../../ad/ad7266.v(128)
  AL_MAP_LUT5 #(
    .EQN("(E*~(C)*~((~D*B*A))+E*C*~((~D*B*A))+~(E)*C*(~D*B*A)+E*C*(~D*B*A))"),
    .INIT(32'hfff70080))
    \ad_top/u_AD7266/reg0_syn_60  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n21_syn_5 ),
    .b(\ad_top/u_AD7266/add3_syn_20 ),
    .c(adAIn_dup_3),
    .d(CS_dup_21),
    .e(\ad_top/u_AD7266/A1B1_Result [20]),
    .o(\ad_top/u_AD7266/reg0_syn_31 ));  // ../../ad/ad7266.v(128)
  AL_MAP_LUT4 #(
    .EQN("(D*~(B)*~((~C*A))+D*B*~((~C*A))+~(D)*B*(~C*A)+D*B*(~C*A))"),
    .INIT(16'hfd08))
    \ad_top/u_AD7266/reg0_syn_61  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n93 ),
    .b(adAIn_dup_3),
    .c(CS_dup_21),
    .d(\ad_top/u_AD7266/A1B1_Result [19]),
    .o(\ad_top/u_AD7266/reg0_syn_53 ));  // ../../ad/ad7266.v(128)
  AL_MAP_LUT4 #(
    .EQN("(D*~(B)*~((~C*A))+D*B*~((~C*A))+~(D)*B*(~C*A)+D*B*(~C*A))"),
    .INIT(16'hfd08))
    \ad_top/u_AD7266/reg0_syn_62  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n94 ),
    .b(adAIn_dup_3),
    .c(CS_dup_21),
    .d(\ad_top/u_AD7266/A1B1_Result [18]),
    .o(\ad_top/u_AD7266/reg0_syn_51 ));  // ../../ad/ad7266.v(128)
  AL_MAP_LUT5 #(
    .EQN("(E*~(C)*~((~D*B*A))+E*C*~((~D*B*A))+~(E)*C*(~D*B*A)+E*C*(~D*B*A))"),
    .INIT(32'hfff70080))
    \ad_top/u_AD7266/reg0_syn_63  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_4 ),
    .b(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_6 ),
    .c(adAIn_dup_3),
    .d(CS_dup_21),
    .e(\ad_top/u_AD7266/A1B1_Result [17]),
    .o(\ad_top/u_AD7266/reg0_syn_49 ));  // ../../ad/ad7266.v(128)
  AL_MAP_LUT5 #(
    .EQN("(E*~(C)*~((~D*B*A))+E*C*~((~D*B*A))+~(E)*C*(~D*B*A)+E*C*(~D*B*A))"),
    .INIT(32'hfff70080))
    \ad_top/u_AD7266/reg0_syn_64  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n22_syn_4 ),
    .b(\ad_top/u_AD7266/add3_syn_20 ),
    .c(adAIn_dup_3),
    .d(CS_dup_21),
    .e(\ad_top/u_AD7266/A1B1_Result [16]),
    .o(\ad_top/u_AD7266/reg0_syn_47 ));  // ../../ad/ad7266.v(128)
  AL_MAP_LUT4 #(
    .EQN("(D*~(B)*~((~C*A))+D*B*~((~C*A))+~(D)*B*(~C*A)+D*B*(~C*A))"),
    .INIT(16'hfd08))
    \ad_top/u_AD7266/reg0_syn_65  (
    .a(\ad_top/u_AD7266/A1B1_Result_b2_n97 ),
    .b(adAIn_dup_3),
    .c(CS_dup_21),
    .d(\ad_top/u_AD7266/A1B1_Result [15]),
    .o(\ad_top/u_AD7266/reg0_syn_45 ));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_7  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/A1B1_Result_b2_n22 ),
    .en(\ad_top/u_AD7266/mux22_syn_31 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [5]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_8  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/A1B1_Result_b2_n21 ),
    .en(\ad_top/u_AD7266/mux22_syn_31 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [6]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg0_syn_9  (
    .ar(1'b0),
    .as(1'b0),
    .clk(SCK_dup_3),
    .d(\ad_top/u_AD7266/A1B1_Result_b2_n20 ),
    .en(\ad_top/u_AD7266/mux22_syn_31 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1B1_Result [7]));  // ../../ad/ad7266.v(128)
  AL_DFF_X \ad_top/u_AD7266/reg13_syn_10  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/B1_Result_b [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/B1_Result[8]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg13_syn_11  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/B1_Result_b [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/B1_Result[9]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg13_syn_12  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/B1_Result_b [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/B1_Result[10]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg13_syn_13  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/B1_Result_b [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/B1_Result[11]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg13_syn_2  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/B1_Result_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/B1_Result[0]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg13_syn_3  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/B1_Result_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/B1_Result[1]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg13_syn_4  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/B1_Result_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/B1_Result[2]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg13_syn_5  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/B1_Result_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/B1_Result[3]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg13_syn_6  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/B1_Result_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/B1_Result[4]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg13_syn_7  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/B1_Result_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/B1_Result[5]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg13_syn_8  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/B1_Result_b [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/B1_Result[6]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg13_syn_9  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/B1_Result_b [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/B1_Result[7]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg19_syn_2  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/CONVST_time_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/CONVST_time [0]));  // ../../ad/ad7266.v(282)
  AL_DFF_X \ad_top/u_AD7266/reg19_syn_3  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/CONVST_time_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/CONVST_time [1]));  // ../../ad/ad7266.v(282)
  AL_DFF_X \ad_top/u_AD7266/reg19_syn_4  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/CONVST_time_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/CONVST_time [2]));  // ../../ad/ad7266.v(282)
  AL_DFF_X \ad_top/u_AD7266/reg19_syn_5  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/CONVST_time_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/CONVST_time [3]));  // ../../ad/ad7266.v(282)
  AL_DFF_X \ad_top/u_AD7266/reg19_syn_6  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/CONVST_time_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/CONVST_time [4]));  // ../../ad/ad7266.v(282)
  AL_DFF_X \ad_top/u_AD7266/reg19_syn_7  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/CONVST_time_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/CONVST_time [5]));  // ../../ad/ad7266.v(282)
  AL_DFF_X \ad_top/u_AD7266/reg19_syn_8  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/CONVST_time_b [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/CONVST_time [6]));  // ../../ad/ad7266.v(282)
  AL_DFF_X \ad_top/u_AD7266/reg19_syn_9  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/CONVST_time_b [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/CONVST_time [7]));  // ../../ad/ad7266.v(282)
  AL_DFF_X \ad_top/u_AD7266/reg1_syn_10  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/A1_Result_b [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1_Result[8]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg1_syn_11  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/A1_Result_b [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1_Result[9]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg1_syn_12  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/A1_Result_b [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1_Result[10]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg1_syn_13  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/A1_Result_b [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1_Result[11]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg1_syn_2  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/A1_Result_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1_Result[0]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg1_syn_3  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/A1_Result_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1_Result[1]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg1_syn_4  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/A1_Result_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1_Result[2]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg1_syn_5  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/A1_Result_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1_Result[3]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg1_syn_6  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/A1_Result_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1_Result[4]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg1_syn_7  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/A1_Result_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1_Result[5]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg1_syn_8  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/A1_Result_b [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1_Result[6]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg1_syn_9  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/A1_Result_b [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/A1_Result[7]_syn_3 ));  // ../../ad/ad7266.v(199)
  AL_DFF_X \ad_top/u_AD7266/reg20_syn_2  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(~SCK_dup_3),
    .d(\ad_top/u_AD7266/count_SCK_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/count_SCK [0]));  // ../../ad/ad7266.v(173)
  AL_DFF_X \ad_top/u_AD7266/reg20_syn_3  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(~SCK_dup_3),
    .d(\ad_top/u_AD7266/count_SCK_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/count_SCK [1]));  // ../../ad/ad7266.v(173)
  AL_DFF_X \ad_top/u_AD7266/reg20_syn_4  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(~SCK_dup_3),
    .d(\ad_top/u_AD7266/count_SCK_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/count_SCK [2]));  // ../../ad/ad7266.v(173)
  AL_DFF_X \ad_top/u_AD7266/reg20_syn_5  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(~SCK_dup_3),
    .d(\ad_top/u_AD7266/count_SCK_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/count_SCK [3]));  // ../../ad/ad7266.v(173)
  AL_DFF_X \ad_top/u_AD7266/reg20_syn_6  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(~SCK_dup_3),
    .d(\ad_top/u_AD7266/count_SCK_b1 [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/count_SCK [4]));  // ../../ad/ad7266.v(173)
  AL_DFF_X \ad_top/u_AD7266/reg20_syn_7  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(~SCK_dup_3),
    .d(\ad_top/u_AD7266/count_SCK_b1 [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/count_SCK [5]));  // ../../ad/ad7266.v(173)
  AL_DFF_0 \ad_top/u_AD7266/reg21_syn_18  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/sys_clk ),
    .d(\ad_top/u_AD7266/count_clk_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/count_clk [0]));  // ../../ad/ad7266.v(54)
  AL_DFF_X \ad_top/u_AD7266/reg22_syn_2  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(~\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/count_spi_clk_N_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/count_spi_clk_N [0]));  // ../../ad/ad7266.v(86)
  AL_DFF_X \ad_top/u_AD7266/reg22_syn_3  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(~\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/count_spi_clk_N_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/count_spi_clk_N [1]));  // ../../ad/ad7266.v(86)
  AL_DFF_X \ad_top/u_AD7266/reg22_syn_4  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(~\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/count_spi_clk_N_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/count_spi_clk_N [2]));  // ../../ad/ad7266.v(86)
  AL_DFF_X \ad_top/u_AD7266/reg22_syn_5  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(~\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/count_spi_clk_N_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/count_spi_clk_N [3]));  // ../../ad/ad7266.v(86)
  AL_DFF_X \ad_top/u_AD7266/reg22_syn_6  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(~\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/count_spi_clk_N_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/count_spi_clk_N [4]));  // ../../ad/ad7266.v(86)
  AL_DFF_X \ad_top/u_AD7266/reg22_syn_7  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(~\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/count_spi_clk_N_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/count_spi_clk_N [5]));  // ../../ad/ad7266.v(86)
  AL_DFF_X \ad_top/u_AD7266/reg23_syn_2  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/count_spi_clk_P_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/count_spi_clk_P [0]));  // ../../ad/ad7266.v(114)
  AL_DFF_X \ad_top/u_AD7266/reg23_syn_3  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/count_spi_clk_P_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/count_spi_clk_P [1]));  // ../../ad/ad7266.v(114)
  AL_DFF_X \ad_top/u_AD7266/reg23_syn_4  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/count_spi_clk_P_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/count_spi_clk_P [2]));  // ../../ad/ad7266.v(114)
  AL_DFF_X \ad_top/u_AD7266/reg23_syn_5  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/count_spi_clk_P_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/count_spi_clk_P [3]));  // ../../ad/ad7266.v(114)
  AL_DFF_X \ad_top/u_AD7266/reg23_syn_6  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/count_spi_clk_P_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/count_spi_clk_P [4]));  // ../../ad/ad7266.v(114)
  AL_DFF_X \ad_top/u_AD7266/reg23_syn_7  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/count_spi_clk_P_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/count_spi_clk_P [5]));  // ../../ad/ad7266.v(114)
  AL_MAP_LUT6 #(
    .EQN("(~F*~E*~D*~C*~B*A)"),
    .INIT(64'h0000000000000002))
    \ad_top/u_AD7266/sel0_syn_22  (
    .a(\ad_top/u_AD7266/CONVST_time [1]),
    .b(\ad_top/u_AD7266/CONVST_time [2]),
    .c(\ad_top/u_AD7266/CONVST_time [3]),
    .d(\ad_top/u_AD7266/CONVST_time [4]),
    .e(\ad_top/u_AD7266/CONVST_time [5]),
    .f(\ad_top/u_AD7266/CONVST_time [7]),
    .o(\ad_top/u_AD7266/sel0_syn_23 ));  // ../../ad/ad7266.v(341)
  AL_MAP_LUT4 #(
    .EQN("(A*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+~(A)*B*C*D)"),
    .INIT(16'h7ffe))
    \ad_top/u_AD7266/sel0_syn_24  (
    .a(\ad_top/u_AD7266/CONVST_time [1]),
    .b(\ad_top/u_AD7266/CONVST_time [2]),
    .c(\ad_top/u_AD7266/CONVST_time [3]),
    .d(\ad_top/u_AD7266/CONVST_time [4]),
    .o(\ad_top/u_AD7266/sel0_syn_25 ));  // ../../ad/ad7266.v(341)
  AL_MAP_LUT6 #(
    .EQN("(F*~(~D*~(~A*~(~E*C*~B))))"),
    .INIT(64'hff55ff4500000000))
    \ad_top/u_AD7266/sel0_syn_26  (
    .a(\ad_top/u_AD7266/sel0_syn_23 ),
    .b(\ad_top/u_AD7266/sel0_syn_25 ),
    .c(\ad_top/u_AD7266/CONVST_time [5]),
    .d(\ad_top/u_AD7266/CONVST_time [6]),
    .e(\ad_top/u_AD7266/CONVST_time [7]),
    .f(\ad_top/u_AD7266/READY_FLAG ),
    .o(\ad_top/u_AD7266/sel0_syn_27 ));  // ../../ad/ad7266.v(341)
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*B*~A)"),
    .INIT(16'h0004))
    \ad_top/u_AD7266/sel0_syn_28  (
    .a(\ad_top/u_AD7266/CONVST_time [3]),
    .b(\ad_top/u_AD7266/CONVST_time [4]),
    .c(\ad_top/u_AD7266/CONVST_time [5]),
    .d(\ad_top/u_AD7266/CONVST_time [6]),
    .o(\ad_top/u_AD7266/sel0_syn_29 ));  // ../../ad/ad7266.v(341)
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*A)"),
    .INIT(16'h0002))
    \ad_top/u_AD7266/sel0_syn_30  (
    .a(\ad_top/u_AD7266/CONVST_time [1]),
    .b(\ad_top/u_AD7266/CONVST_time [2]),
    .c(\ad_top/u_AD7266/CONVST_time [5]),
    .d(\ad_top/u_AD7266/CONVST_time [7]),
    .o(\ad_top/u_AD7266/sel0_syn_31 ));  // ../../ad/ad7266.v(341)
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    \ad_top/u_AD7266/sel0_syn_32  (
    .a(\ad_top/u_AD7266/CONVST_time [3]),
    .b(\ad_top/u_AD7266/CONVST_time [4]),
    .o(\ad_top/u_AD7266/sel0_syn_33 ));  // ../../ad/ad7266.v(341)
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    \ad_top/u_AD7266/sel0_syn_34  (
    .a(\ad_top/u_AD7266/CONVST_time [1]),
    .b(\ad_top/u_AD7266/CONVST_time [2]),
    .o(\ad_top/u_AD7266/sel0_syn_35 ));  // ../../ad/ad7266.v(341)
  AL_MAP_LUT6 #(
    .EQN("(~(E*C*B)*~(F*D*A))"),
    .INIT(64'h153f55ff3f3fffff))
    \ad_top/u_AD7266/sel0_syn_36  (
    .a(\ad_top/u_AD7266/sel0_syn_29 ),
    .b(\ad_top/u_AD7266/sel0_syn_31 ),
    .c(\ad_top/u_AD7266/sel0_syn_33 ),
    .d(\ad_top/u_AD7266/sel0_syn_35 ),
    .e(\ad_top/u_AD7266/CONVST_time [6]),
    .f(\ad_top/u_AD7266/CONVST_time [7]),
    .o(\ad_top/u_AD7266/sel0_syn_37 ));  // ../../ad/ad7266.v(341)
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*~A)"),
    .INIT(16'h4000))
    \ad_top/u_AD7266/sel0_syn_38  (
    .a(\ad_top/u_AD7266/CONVST_time [1]),
    .b(\ad_top/u_AD7266/CONVST_time [3]),
    .c(\ad_top/u_AD7266/CONVST_time [4]),
    .d(\ad_top/u_AD7266/CONVST_time [5]),
    .o(\ad_top/u_AD7266/sel0_syn_39 ));  // ../../ad/ad7266.v(341)
  AL_MAP_LUT5 #(
    .EQN("(~B*~(~E*A*(D@C)))"),
    .INIT(32'h33333113))
    \ad_top/u_AD7266/sel0_syn_40  (
    .a(\ad_top/u_AD7266/sel0_syn_39 ),
    .b(\ad_top/u_AD7266/READY_FLAG ),
    .c(\ad_top/u_AD7266/CONVST_time [2]),
    .d(\ad_top/u_AD7266/CONVST_time [6]),
    .e(\ad_top/u_AD7266/CONVST_time [7]),
    .o(\ad_top/u_AD7266/sel0_syn_41 ));  // ../../ad/ad7266.v(341)
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*~A)"),
    .INIT(8'h01))
    \ad_top/u_AD7266/sel0_syn_42  (
    .a(\ad_top/u_AD7266/CONVST_time [5]),
    .b(\ad_top/u_AD7266/CONVST_time [6]),
    .c(\ad_top/u_AD7266/CONVST_time [7]),
    .o(\ad_top/u_AD7266/sel0_syn_43 ));  // ../../ad/ad7266.v(341)
  AL_MAP_LUT5 #(
    .EQN("(A*(~(B)*~(C)*~(D)*~(E)+B*C*D*E))"),
    .INIT(32'h80000002))
    \ad_top/u_AD7266/sel0_syn_44  (
    .a(\ad_top/u_AD7266/sel0_syn_43 ),
    .b(\ad_top/u_AD7266/CONVST_time [1]),
    .c(\ad_top/u_AD7266/CONVST_time [2]),
    .d(\ad_top/u_AD7266/CONVST_time [3]),
    .e(\ad_top/u_AD7266/CONVST_time [4]),
    .o(\ad_top/u_AD7266/sel0_syn_45 ));  // ../../ad/ad7266.v(341)
  AL_MAP_LUT6 #(
    .EQN("(A*(~(B)*C*~(D)*E*~(F)+B*~(C)*D*E*~(F)+~(B)*~(C)*~(D)*~(E)*F))"),
    .INIT(64'h0000000208200000))
    \ad_top/u_AD7266/sel0_syn_46  (
    .a(\ad_top/u_AD7266/sel0_syn_33 ),
    .b(\ad_top/u_AD7266/CONVST_time [1]),
    .c(\ad_top/u_AD7266/CONVST_time [2]),
    .d(\ad_top/u_AD7266/CONVST_time [5]),
    .e(\ad_top/u_AD7266/CONVST_time [6]),
    .f(\ad_top/u_AD7266/CONVST_time [7]),
    .o(\ad_top/u_AD7266/sel0_syn_47 ));  // ../../ad/ad7266.v(341)
  AL_MAP_LUT6 #(
    .EQN("~(~(F*~(~D*C*B))*~(~E*A))"),
    .INIT(64'hff3fffbf0000aaaa))
    \ad_top/u_AD7266/sel0_syn_48  (
    .a(\ad_top/u_AD7266/sel0_syn_27 ),
    .b(\ad_top/u_AD7266/sel0_syn_37 ),
    .c(\ad_top/u_AD7266/sel0_syn_41 ),
    .d(\ad_top/u_AD7266/sel0_syn_45 ),
    .e(\ad_top/u_AD7266/sel0_syn_47 ),
    .f(\ad_top/u_AD7266/CONVST_time [0]),
    .o(\ad_top/u_AD7266/sel0_syn_2 ));  // ../../ad/ad7266.v(341)
  AL_DFF_0 \ad_top/u_AD7266/spi_clk_reg_syn_2  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/sys_clk ),
    .d(\ad_top/u_AD7266/spi_clk_reg_syn_4 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\ad_top/u_AD7266/spi_clk ));  // ../../ad/ad7266.v(54)
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    \ad_top/u_AD7266/spi_clk_reg_syn_5  (
    .a(\ad_top/u_AD7266/count_clk [0]),
    .b(\ad_top/u_AD7266/spi_clk ),
    .o(\ad_top/u_AD7266/spi_clk_reg_syn_4 ));  // ../../ad/ad7266.v(54)
  AL_MAP_LUT6 #(
    .EQN("(~F*E*D*~C*B*~A)"),
    .INIT(64'h0000000004000000))
    \ad_top/u_AD7266/spi_rd_done_n_syn_1  (
    .a(\ad_top/u_AD7266/count_spi_clk_N [0]),
    .b(\ad_top/u_AD7266/count_spi_clk_N [1]),
    .c(\ad_top/u_AD7266/count_spi_clk_N [2]),
    .d(\ad_top/u_AD7266/count_spi_clk_N [3]),
    .e(\ad_top/u_AD7266/count_spi_clk_N [4]),
    .f(\ad_top/u_AD7266/count_spi_clk_N [5]),
    .o(\ad_top/u_AD7266/spi_rd_done_n_syn_2 ));
  AL_MAP_LUT3 #(
    .EQN("~(~A*~(C*~B))"),
    .INIT(8'hba))
    \ad_top/u_AD7266/spi_rd_done_n_syn_3  (
    .a(\ad_top/u_AD7266/spi_rd_done_n_syn_2 ),
    .b(CS_dup_21),
    .c(RD_DONE_dup_3),
    .o(\ad_top/u_AD7266/spi_rd_done_n ));
  AL_DFF_X \ad_top/u_AD7266/spi_rd_done_reg  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\ad_top/u_AD7266/spi_clk ),
    .d(\ad_top/u_AD7266/spi_rd_done_n ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(RD_DONE_dup_3));  // ../../ad/ad7266.v(187)
  AL_MAP_LUT3 #(
    .EQN("~(~C*~(B)*~(A)+~C*B*~(A)+~(~C)*B*A+~C*B*A)"),
    .INIT(8'h72))
    \change/dataInputComplement[12]_syn_1  (
    .a(\change/dataInputComplement_n ),
    .b(\change/dataInputComplement[15]_syn_8 ),
    .c(\change/dataInputComplement_b [12]),
    .o(\change/dataInputComplement [12]));  // ../../shift/change.v(5)
  AL_MAP_LUT3 #(
    .EQN("~(~C*~(B)*~(A)+~C*B*~(A)+~(~C)*B*A+~C*B*A)"),
    .INIT(8'h72))
    \change/dataInputComplement[13]_syn_1  (
    .a(\change/dataInputComplement_n ),
    .b(\change/dataInputComplement[15]_syn_8 ),
    .c(\change/dataInputComplement_b [13]),
    .o(\change/dataInputComplement [13]));  // ../../shift/change.v(5)
  AL_MAP_LUT3 #(
    .EQN("~(~C*~(B)*~(A)+~C*B*~(A)+~(~C)*B*A+~C*B*A)"),
    .INIT(8'h72))
    \change/dataInputComplement[14]_syn_1  (
    .a(\change/dataInputComplement_n ),
    .b(\change/dataInputComplement[15]_syn_8 ),
    .c(\change/dataInputComplement_b [14]),
    .o(\change/dataInputComplement [14]));  // ../../shift/change.v(5)
  AL_MAP_LUT5 #(
    .EQN("(~E*~D*~C*~B*~A)"),
    .INIT(32'h00000001))
    \change/dataInputComplement[15]_syn_1  (
    .a(\change/dataInput [5]),
    .b(\change/dataInput [4]),
    .c(\change/dataInput [3]),
    .d(\change/dataInput [2]),
    .e(\change/dataInput [1]),
    .o(\change/dataInputComplement[15]_syn_2 ));  // ../../shift/change.v(5)
  AL_MAP_LUT6 #(
    .EQN("(~D*~C*~B*~A*~(F*E))"),
    .INIT(64'h0000000100010001))
    \change/dataInputComplement[15]_syn_3  (
    .a(\change/dataInput [5]),
    .b(\change/dataInput [4]),
    .c(\change/dataInput [3]),
    .d(\change/dataInput [2]),
    .e(\change/dataInput [1]),
    .f(\change/dataInput [0]),
    .o(\change/lt0_syn_103 ));  // ../../shift/change.v(5)
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*~A)"),
    .INIT(8'h01))
    \change/dataInputComplement[15]_syn_4  (
    .a(\change/dataInput [11]),
    .b(\change/dataInput [10]),
    .c(\change/dataInput [9]),
    .o(\change/dataInputComplement[15]_syn_5 ));  // ../../shift/change.v(5)
  AL_MAP_LUT5 #(
    .EQN("(B*~(E*D*C*~A))"),
    .INIT(32'h8ccccccc))
    \change/dataInputComplement[15]_syn_6  (
    .a(\change/lt0_syn_103 ),
    .b(\change/dataInputComplement[15]_syn_5 ),
    .c(\change/dataInput [8]),
    .d(\change/dataInput [7]),
    .e(\change/dataInput [6]),
    .o(\change/dataInputComplement_n ));  // ../../shift/change.v(5)
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*~A)"),
    .INIT(16'h4000))
    \change/dataInputComplement[15]_syn_7  (
    .a(\change/dataInputComplement[15]_syn_2 ),
    .b(\change/dataInput [8]),
    .c(\change/dataInput [7]),
    .d(\change/dataInput [6]),
    .o(\change/dataInputComplement[15]_syn_8 ));  // ../../shift/change.v(5)
  AL_MAP_LUT3 #(
    .EQN("~(~C*~(B)*~(A)+~C*B*~(A)+~(~C)*B*A+~C*B*A)"),
    .INIT(8'h72))
    \change/dataInputComplement[15]_syn_9  (
    .a(\change/dataInputComplement_n ),
    .b(\change/dataInputComplement[15]_syn_8 ),
    .c(\change/dataInputComplement_b [15]),
    .o(\change/dataInputComplement [15]));  // ../../shift/change.v(5)
  AL_MAP_LUT3 #(
    .EQN("~(~C*~(B)*~(A)+~C*B*~(A)+~(~C)*B*A+~C*B*A)"),
    .INIT(8'h72))
    \change/dataInputComplement[1]_syn_1  (
    .a(\change/dataInputComplement_n ),
    .b(\change/dataInput [1]),
    .c(\change/dataInputComplement_b [1]),
    .o(\change/dataInputComplement [1]));  // ../../shift/change.v(5)
  AL_MAP_LUT2 #(
    .EQN("~(B@A)"),
    .INIT(4'h9))
    \change/dataInput[1]_syn_104  (
    .a(\change/dataInput [2]),
    .b(\change/dataInput [1]),
    .o(\change/dataInput[1]_syn_2 [1]));  // ../../shift/change.v(2)
  AL_MAP_LUT3 #(
    .EQN("(A@(~C*~B))"),
    .INIT(8'ha9))
    \change/dataInput[1]_syn_105  (
    .a(\change/dataInput [3]),
    .b(\change/dataInput [2]),
    .c(\change/dataInput [1]),
    .o(\change/dataInput[1]_syn_2 [2]));  // ../../shift/change.v(2)
  AL_MAP_LUT4 #(
    .EQN("(A@(~D*~C*~B))"),
    .INIT(16'haaa9))
    \change/dataInput[1]_syn_106  (
    .a(\change/dataInput [4]),
    .b(\change/dataInput [3]),
    .c(\change/dataInput [2]),
    .d(\change/dataInput [1]),
    .o(\change/dataInput[1]_syn_2 [3]));  // ../../shift/change.v(2)
  AL_MAP_LUT5 #(
    .EQN("(A@(~E*~D*~C*~B))"),
    .INIT(32'haaaaaaa9))
    \change/dataInput[1]_syn_107  (
    .a(\change/dataInput [5]),
    .b(\change/dataInput [4]),
    .c(\change/dataInput [3]),
    .d(\change/dataInput [2]),
    .e(\change/dataInput [1]),
    .o(\change/dataInput[1]_syn_2 [4]));  // ../../shift/change.v(2)
  AL_MAP_LUT2 #(
    .EQN("~(B@A)"),
    .INIT(4'h9))
    \change/dataInput[1]_syn_108  (
    .a(\change/dataInputComplement[15]_syn_2 ),
    .b(\change/dataInput [6]),
    .o(\change/dataInput[1]_syn_2 [5]));  // ../../shift/change.v(2)
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \change/dataInput[1]_syn_109  (
    .a(\change/dataInputComplement[15]_syn_2 ),
    .b(\change/dataInput [6]),
    .o(\change/dataInput[1]_syn_71 ));  // ../../shift/change.v(2)
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    \change/dataInput[1]_syn_110  (
    .a(\change/dataInput[1]_syn_71 ),
    .b(\change/dataInput [7]),
    .o(\change/dataInput[1]_syn_2 [6]));  // ../../shift/change.v(2)
  AL_MAP_LUT3 #(
    .EQN("(B@(C*A))"),
    .INIT(8'h6c))
    \change/dataInput[1]_syn_111  (
    .a(\change/dataInput[1]_syn_71 ),
    .b(\change/dataInput [8]),
    .c(\change/dataInput [7]),
    .o(\change/dataInput[1]_syn_2 [7]));  // ../../shift/change.v(2)
  AL_MAP_LUT2 #(
    .EQN("~(B@A)"),
    .INIT(4'h9))
    \change/dataInput[1]_syn_112  (
    .a(\change/dataInputComplement[15]_syn_8 ),
    .b(\change/dataInput [9]),
    .o(\change/dataInput[1]_syn_2 [8]));  // ../../shift/change.v(2)
  AL_MAP_LUT3 #(
    .EQN("(B@(~C*~A))"),
    .INIT(8'hc9))
    \change/dataInput[1]_syn_113  (
    .a(\change/dataInputComplement[15]_syn_8 ),
    .b(\change/dataInput [10]),
    .c(\change/dataInput [9]),
    .o(\change/dataInput[1]_syn_2 [9]));  // ../../shift/change.v(2)
  AL_MAP_LUT4 #(
    .EQN("(B@(~D*~C*~A))"),
    .INIT(16'hccc9))
    \change/dataInput[1]_syn_114  (
    .a(\change/dataInputComplement[15]_syn_8 ),
    .b(\change/dataInput [11]),
    .c(\change/dataInput [10]),
    .d(\change/dataInput [9]),
    .o(\change/dataInput[1]_syn_2 [10]));  // ../../shift/change.v(2)
  PH1_PHY_PAD #(
    //.HYSTERESIS("ON"),
    //.IOTYPE("LVCMOS33"),
    //.LOCATION("N18"),
    //.ODT("OFF"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    //.VREF_VAL("25"),
    .IDDRMODE("OFF"),
    .IDDRPIPEMODE("NONE"),
    .INDELMUX("NODEL"),
    .IN_DFFMODE("NONE"),
    .MODE("IN"),
    .TSMUX("1"))
    clkSorce_syn_2 (
    .ipad(clkSorce),
    .di(clkSorce_dup_1));  // ../../top.v(2)
  PH1_PHY_CONFIG_V2 #(
    .JTAG_PERSISTN("DISABLE"),
    .SPIX4_PERSISTN("ENABLE"))
    config_inst ();
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add0_syn_10  (
    .a(\lsm_top/coef_update_dut/coef1 [7]),
    .b(\lsm_top/coef_update_dut/coef1_reg [7]),
    .c(\lsm_top/coef_update_dut/add0_syn_75 ),
    .o({\lsm_top/coef_update_dut/add0_syn_76 ,\lsm_top/coef_update_dut/coef1_b [7]}));  // ../../lms/coef_update.v(105)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add0_syn_11  (
    .a(\lsm_top/coef_update_dut/coef1 [8]),
    .b(\lsm_top/coef_update_dut/coef1_reg [8]),
    .c(\lsm_top/coef_update_dut/add0_syn_76 ),
    .o({\lsm_top/coef_update_dut/add0_syn_77 ,\lsm_top/coef_update_dut/coef1_b [8]}));  // ../../lms/coef_update.v(105)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add0_syn_12  (
    .a(\lsm_top/coef_update_dut/coef1 [9]),
    .b(\lsm_top/coef_update_dut/coef1_reg [9]),
    .c(\lsm_top/coef_update_dut/add0_syn_77 ),
    .o({\lsm_top/coef_update_dut/add0_syn_78 ,\lsm_top/coef_update_dut/coef1_b [9]}));  // ../../lms/coef_update.v(105)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add0_syn_13  (
    .a(\lsm_top/coef_update_dut/coef1 [10]),
    .b(\lsm_top/coef_update_dut/coef1_reg [10]),
    .c(\lsm_top/coef_update_dut/add0_syn_78 ),
    .o({\lsm_top/coef_update_dut/add0_syn_79 ,\lsm_top/coef_update_dut/coef1_b [10]}));  // ../../lms/coef_update.v(105)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add0_syn_14  (
    .a(\lsm_top/coef_update_dut/coef1 [11]),
    .b(\lsm_top/coef_update_dut/coef1_reg [11]),
    .c(\lsm_top/coef_update_dut/add0_syn_79 ),
    .o({\lsm_top/coef_update_dut/add0_syn_80 ,\lsm_top/coef_update_dut/coef1_b [11]}));  // ../../lms/coef_update.v(105)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add0_syn_15  (
    .a(\lsm_top/coef_update_dut/coef1 [12]),
    .b(\lsm_top/coef_update_dut/coef1_reg [12]),
    .c(\lsm_top/coef_update_dut/add0_syn_80 ),
    .o({\lsm_top/coef_update_dut/add0_syn_81 ,\lsm_top/coef_update_dut/coef1_b [12]}));  // ../../lms/coef_update.v(105)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add0_syn_16  (
    .a(\lsm_top/coef_update_dut/coef1 [13]),
    .b(\lsm_top/coef_update_dut/coef1_reg [13]),
    .c(\lsm_top/coef_update_dut/add0_syn_81 ),
    .o({\lsm_top/coef_update_dut/add0_syn_82 ,\lsm_top/coef_update_dut/coef1_b [13]}));  // ../../lms/coef_update.v(105)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add0_syn_17  (
    .a(\lsm_top/coef_update_dut/coef1 [14]),
    .b(\lsm_top/coef_update_dut/coef1_reg [14]),
    .c(\lsm_top/coef_update_dut/add0_syn_82 ),
    .o({\lsm_top/coef_update_dut/add0_syn_83 ,\lsm_top/coef_update_dut/coef1_b [14]}));  // ../../lms/coef_update.v(105)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add0_syn_18  (
    .a(\lsm_top/coef_update_dut/coef1 [15]),
    .b(\lsm_top/coef_update_dut/coef1_reg [15]),
    .c(\lsm_top/coef_update_dut/add0_syn_83 ),
    .o({open_n558,\lsm_top/coef_update_dut/coef1_b [15]}));  // ../../lms/coef_update.v(105)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \lsm_top/coef_update_dut/add0_syn_2  (
    .a(1'b0),
    .o({\lsm_top/coef_update_dut/add0_syn_68 ,open_n561}));  // ../../lms/coef_update.v(105)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add0_syn_3  (
    .a(\lsm_top/coef_update_dut/coef1 [0]),
    .b(\lsm_top/coef_update_dut/coef1_reg [0]),
    .c(\lsm_top/coef_update_dut/add0_syn_68 ),
    .o({\lsm_top/coef_update_dut/add0_syn_69 ,\lsm_top/coef_update_dut/coef1_b [0]}));  // ../../lms/coef_update.v(105)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add0_syn_4  (
    .a(\lsm_top/coef_update_dut/coef1 [1]),
    .b(\lsm_top/coef_update_dut/coef1_reg [1]),
    .c(\lsm_top/coef_update_dut/add0_syn_69 ),
    .o({\lsm_top/coef_update_dut/add0_syn_70 ,\lsm_top/coef_update_dut/coef1_b [1]}));  // ../../lms/coef_update.v(105)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add0_syn_5  (
    .a(\lsm_top/coef_update_dut/coef1 [2]),
    .b(\lsm_top/coef_update_dut/coef1_reg [2]),
    .c(\lsm_top/coef_update_dut/add0_syn_70 ),
    .o({\lsm_top/coef_update_dut/add0_syn_71 ,\lsm_top/coef_update_dut/coef1_b [2]}));  // ../../lms/coef_update.v(105)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add0_syn_6  (
    .a(\lsm_top/coef_update_dut/coef1 [3]),
    .b(\lsm_top/coef_update_dut/coef1_reg [3]),
    .c(\lsm_top/coef_update_dut/add0_syn_71 ),
    .o({\lsm_top/coef_update_dut/add0_syn_72 ,\lsm_top/coef_update_dut/coef1_b [3]}));  // ../../lms/coef_update.v(105)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add0_syn_7  (
    .a(\lsm_top/coef_update_dut/coef1 [4]),
    .b(\lsm_top/coef_update_dut/coef1_reg [4]),
    .c(\lsm_top/coef_update_dut/add0_syn_72 ),
    .o({\lsm_top/coef_update_dut/add0_syn_73 ,\lsm_top/coef_update_dut/coef1_b [4]}));  // ../../lms/coef_update.v(105)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add0_syn_8  (
    .a(\lsm_top/coef_update_dut/coef1 [5]),
    .b(\lsm_top/coef_update_dut/coef1_reg [5]),
    .c(\lsm_top/coef_update_dut/add0_syn_73 ),
    .o({\lsm_top/coef_update_dut/add0_syn_74 ,\lsm_top/coef_update_dut/coef1_b [5]}));  // ../../lms/coef_update.v(105)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add0_syn_9  (
    .a(\lsm_top/coef_update_dut/coef1 [6]),
    .b(\lsm_top/coef_update_dut/coef1_reg [6]),
    .c(\lsm_top/coef_update_dut/add0_syn_74 ),
    .o({\lsm_top/coef_update_dut/add0_syn_75 ,\lsm_top/coef_update_dut/coef1_b [6]}));  // ../../lms/coef_update.v(105)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add1_syn_10  (
    .a(\lsm_top/coef_update_dut/coef2 [7]),
    .b(\lsm_top/coef_update_dut/coef2_reg [7]),
    .c(\lsm_top/coef_update_dut/add1_syn_75 ),
    .o({\lsm_top/coef_update_dut/add1_syn_76 ,\lsm_top/coef_update_dut/coef2_b [7]}));  // ../../lms/coef_update.v(106)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add1_syn_11  (
    .a(\lsm_top/coef_update_dut/coef2 [8]),
    .b(\lsm_top/coef_update_dut/coef2_reg [8]),
    .c(\lsm_top/coef_update_dut/add1_syn_76 ),
    .o({\lsm_top/coef_update_dut/add1_syn_77 ,\lsm_top/coef_update_dut/coef2_b [8]}));  // ../../lms/coef_update.v(106)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add1_syn_12  (
    .a(\lsm_top/coef_update_dut/coef2 [9]),
    .b(\lsm_top/coef_update_dut/coef2_reg [9]),
    .c(\lsm_top/coef_update_dut/add1_syn_77 ),
    .o({\lsm_top/coef_update_dut/add1_syn_78 ,\lsm_top/coef_update_dut/coef2_b [9]}));  // ../../lms/coef_update.v(106)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add1_syn_13  (
    .a(\lsm_top/coef_update_dut/coef2 [10]),
    .b(\lsm_top/coef_update_dut/coef2_reg [10]),
    .c(\lsm_top/coef_update_dut/add1_syn_78 ),
    .o({\lsm_top/coef_update_dut/add1_syn_79 ,\lsm_top/coef_update_dut/coef2_b [10]}));  // ../../lms/coef_update.v(106)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add1_syn_14  (
    .a(\lsm_top/coef_update_dut/coef2 [11]),
    .b(\lsm_top/coef_update_dut/coef2_reg [11]),
    .c(\lsm_top/coef_update_dut/add1_syn_79 ),
    .o({\lsm_top/coef_update_dut/add1_syn_80 ,\lsm_top/coef_update_dut/coef2_b [11]}));  // ../../lms/coef_update.v(106)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add1_syn_15  (
    .a(\lsm_top/coef_update_dut/coef2 [12]),
    .b(\lsm_top/coef_update_dut/coef2_reg [12]),
    .c(\lsm_top/coef_update_dut/add1_syn_80 ),
    .o({\lsm_top/coef_update_dut/add1_syn_81 ,\lsm_top/coef_update_dut/coef2_b [12]}));  // ../../lms/coef_update.v(106)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add1_syn_16  (
    .a(\lsm_top/coef_update_dut/coef2 [13]),
    .b(\lsm_top/coef_update_dut/coef2_reg [13]),
    .c(\lsm_top/coef_update_dut/add1_syn_81 ),
    .o({\lsm_top/coef_update_dut/add1_syn_82 ,\lsm_top/coef_update_dut/coef2_b [13]}));  // ../../lms/coef_update.v(106)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add1_syn_17  (
    .a(\lsm_top/coef_update_dut/coef2 [14]),
    .b(\lsm_top/coef_update_dut/coef2_reg [14]),
    .c(\lsm_top/coef_update_dut/add1_syn_82 ),
    .o({\lsm_top/coef_update_dut/add1_syn_83 ,\lsm_top/coef_update_dut/coef2_b [14]}));  // ../../lms/coef_update.v(106)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add1_syn_18  (
    .a(\lsm_top/coef_update_dut/coef2 [15]),
    .b(\lsm_top/coef_update_dut/coef2_reg [15]),
    .c(\lsm_top/coef_update_dut/add1_syn_83 ),
    .o({open_n562,\lsm_top/coef_update_dut/coef2_b [15]}));  // ../../lms/coef_update.v(106)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \lsm_top/coef_update_dut/add1_syn_2  (
    .a(1'b0),
    .o({\lsm_top/coef_update_dut/add1_syn_68 ,open_n565}));  // ../../lms/coef_update.v(106)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add1_syn_3  (
    .a(\lsm_top/coef_update_dut/coef2 [0]),
    .b(\lsm_top/coef_update_dut/coef2_reg [0]),
    .c(\lsm_top/coef_update_dut/add1_syn_68 ),
    .o({\lsm_top/coef_update_dut/add1_syn_69 ,\lsm_top/coef_update_dut/coef2_b [0]}));  // ../../lms/coef_update.v(106)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add1_syn_4  (
    .a(\lsm_top/coef_update_dut/coef2 [1]),
    .b(\lsm_top/coef_update_dut/coef2_reg [1]),
    .c(\lsm_top/coef_update_dut/add1_syn_69 ),
    .o({\lsm_top/coef_update_dut/add1_syn_70 ,\lsm_top/coef_update_dut/coef2_b [1]}));  // ../../lms/coef_update.v(106)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add1_syn_5  (
    .a(\lsm_top/coef_update_dut/coef2 [2]),
    .b(\lsm_top/coef_update_dut/coef2_reg [2]),
    .c(\lsm_top/coef_update_dut/add1_syn_70 ),
    .o({\lsm_top/coef_update_dut/add1_syn_71 ,\lsm_top/coef_update_dut/coef2_b [2]}));  // ../../lms/coef_update.v(106)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add1_syn_6  (
    .a(\lsm_top/coef_update_dut/coef2 [3]),
    .b(\lsm_top/coef_update_dut/coef2_reg [3]),
    .c(\lsm_top/coef_update_dut/add1_syn_71 ),
    .o({\lsm_top/coef_update_dut/add1_syn_72 ,\lsm_top/coef_update_dut/coef2_b [3]}));  // ../../lms/coef_update.v(106)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add1_syn_7  (
    .a(\lsm_top/coef_update_dut/coef2 [4]),
    .b(\lsm_top/coef_update_dut/coef2_reg [4]),
    .c(\lsm_top/coef_update_dut/add1_syn_72 ),
    .o({\lsm_top/coef_update_dut/add1_syn_73 ,\lsm_top/coef_update_dut/coef2_b [4]}));  // ../../lms/coef_update.v(106)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add1_syn_8  (
    .a(\lsm_top/coef_update_dut/coef2 [5]),
    .b(\lsm_top/coef_update_dut/coef2_reg [5]),
    .c(\lsm_top/coef_update_dut/add1_syn_73 ),
    .o({\lsm_top/coef_update_dut/add1_syn_74 ,\lsm_top/coef_update_dut/coef2_b [5]}));  // ../../lms/coef_update.v(106)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add1_syn_9  (
    .a(\lsm_top/coef_update_dut/coef2 [6]),
    .b(\lsm_top/coef_update_dut/coef2_reg [6]),
    .c(\lsm_top/coef_update_dut/add1_syn_74 ),
    .o({\lsm_top/coef_update_dut/add1_syn_75 ,\lsm_top/coef_update_dut/coef2_b [6]}));  // ../../lms/coef_update.v(106)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add2_syn_10  (
    .a(\lsm_top/coef_update_dut/coef3 [7]),
    .b(\lsm_top/coef_update_dut/coef3_reg [7]),
    .c(\lsm_top/coef_update_dut/add2_syn_75 ),
    .o({\lsm_top/coef_update_dut/add2_syn_76 ,\lsm_top/coef_update_dut/coef3_b [7]}));  // ../../lms/coef_update.v(107)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add2_syn_11  (
    .a(\lsm_top/coef_update_dut/coef3 [8]),
    .b(\lsm_top/coef_update_dut/coef3_reg [8]),
    .c(\lsm_top/coef_update_dut/add2_syn_76 ),
    .o({\lsm_top/coef_update_dut/add2_syn_77 ,\lsm_top/coef_update_dut/coef3_b [8]}));  // ../../lms/coef_update.v(107)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add2_syn_12  (
    .a(\lsm_top/coef_update_dut/coef3 [9]),
    .b(\lsm_top/coef_update_dut/coef3_reg [9]),
    .c(\lsm_top/coef_update_dut/add2_syn_77 ),
    .o({\lsm_top/coef_update_dut/add2_syn_78 ,\lsm_top/coef_update_dut/coef3_b [9]}));  // ../../lms/coef_update.v(107)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add2_syn_13  (
    .a(\lsm_top/coef_update_dut/coef3 [10]),
    .b(\lsm_top/coef_update_dut/coef3_reg [10]),
    .c(\lsm_top/coef_update_dut/add2_syn_78 ),
    .o({\lsm_top/coef_update_dut/add2_syn_79 ,\lsm_top/coef_update_dut/coef3_b [10]}));  // ../../lms/coef_update.v(107)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add2_syn_14  (
    .a(\lsm_top/coef_update_dut/coef3 [11]),
    .b(\lsm_top/coef_update_dut/coef3_reg [11]),
    .c(\lsm_top/coef_update_dut/add2_syn_79 ),
    .o({\lsm_top/coef_update_dut/add2_syn_80 ,\lsm_top/coef_update_dut/coef3_b [11]}));  // ../../lms/coef_update.v(107)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add2_syn_15  (
    .a(\lsm_top/coef_update_dut/coef3 [12]),
    .b(\lsm_top/coef_update_dut/coef3_reg [12]),
    .c(\lsm_top/coef_update_dut/add2_syn_80 ),
    .o({\lsm_top/coef_update_dut/add2_syn_81 ,\lsm_top/coef_update_dut/coef3_b [12]}));  // ../../lms/coef_update.v(107)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add2_syn_16  (
    .a(\lsm_top/coef_update_dut/coef3 [13]),
    .b(\lsm_top/coef_update_dut/coef3_reg [13]),
    .c(\lsm_top/coef_update_dut/add2_syn_81 ),
    .o({\lsm_top/coef_update_dut/add2_syn_82 ,\lsm_top/coef_update_dut/coef3_b [13]}));  // ../../lms/coef_update.v(107)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add2_syn_17  (
    .a(\lsm_top/coef_update_dut/coef3 [14]),
    .b(\lsm_top/coef_update_dut/coef3_reg [14]),
    .c(\lsm_top/coef_update_dut/add2_syn_82 ),
    .o({\lsm_top/coef_update_dut/add2_syn_83 ,\lsm_top/coef_update_dut/coef3_b [14]}));  // ../../lms/coef_update.v(107)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add2_syn_18  (
    .a(\lsm_top/coef_update_dut/coef3 [15]),
    .b(\lsm_top/coef_update_dut/coef3_reg [15]),
    .c(\lsm_top/coef_update_dut/add2_syn_83 ),
    .o({open_n566,\lsm_top/coef_update_dut/coef3_b [15]}));  // ../../lms/coef_update.v(107)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \lsm_top/coef_update_dut/add2_syn_2  (
    .a(1'b0),
    .o({\lsm_top/coef_update_dut/add2_syn_68 ,open_n569}));  // ../../lms/coef_update.v(107)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add2_syn_3  (
    .a(\lsm_top/coef_update_dut/coef3 [0]),
    .b(\lsm_top/coef_update_dut/coef3_reg [0]),
    .c(\lsm_top/coef_update_dut/add2_syn_68 ),
    .o({\lsm_top/coef_update_dut/add2_syn_69 ,\lsm_top/coef_update_dut/coef3_b [0]}));  // ../../lms/coef_update.v(107)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add2_syn_4  (
    .a(\lsm_top/coef_update_dut/coef3 [1]),
    .b(\lsm_top/coef_update_dut/coef3_reg [1]),
    .c(\lsm_top/coef_update_dut/add2_syn_69 ),
    .o({\lsm_top/coef_update_dut/add2_syn_70 ,\lsm_top/coef_update_dut/coef3_b [1]}));  // ../../lms/coef_update.v(107)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add2_syn_5  (
    .a(\lsm_top/coef_update_dut/coef3 [2]),
    .b(\lsm_top/coef_update_dut/coef3_reg [2]),
    .c(\lsm_top/coef_update_dut/add2_syn_70 ),
    .o({\lsm_top/coef_update_dut/add2_syn_71 ,\lsm_top/coef_update_dut/coef3_b [2]}));  // ../../lms/coef_update.v(107)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add2_syn_6  (
    .a(\lsm_top/coef_update_dut/coef3 [3]),
    .b(\lsm_top/coef_update_dut/coef3_reg [3]),
    .c(\lsm_top/coef_update_dut/add2_syn_71 ),
    .o({\lsm_top/coef_update_dut/add2_syn_72 ,\lsm_top/coef_update_dut/coef3_b [3]}));  // ../../lms/coef_update.v(107)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add2_syn_7  (
    .a(\lsm_top/coef_update_dut/coef3 [4]),
    .b(\lsm_top/coef_update_dut/coef3_reg [4]),
    .c(\lsm_top/coef_update_dut/add2_syn_72 ),
    .o({\lsm_top/coef_update_dut/add2_syn_73 ,\lsm_top/coef_update_dut/coef3_b [4]}));  // ../../lms/coef_update.v(107)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add2_syn_8  (
    .a(\lsm_top/coef_update_dut/coef3 [5]),
    .b(\lsm_top/coef_update_dut/coef3_reg [5]),
    .c(\lsm_top/coef_update_dut/add2_syn_73 ),
    .o({\lsm_top/coef_update_dut/add2_syn_74 ,\lsm_top/coef_update_dut/coef3_b [5]}));  // ../../lms/coef_update.v(107)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add2_syn_9  (
    .a(\lsm_top/coef_update_dut/coef3 [6]),
    .b(\lsm_top/coef_update_dut/coef3_reg [6]),
    .c(\lsm_top/coef_update_dut/add2_syn_74 ),
    .o({\lsm_top/coef_update_dut/add2_syn_75 ,\lsm_top/coef_update_dut/coef3_b [6]}));  // ../../lms/coef_update.v(107)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add3_syn_10  (
    .a(\lsm_top/coef_update_dut/coef4 [7]),
    .b(\lsm_top/coef_update_dut/coef4_reg [7]),
    .c(\lsm_top/coef_update_dut/add3_syn_75 ),
    .o({\lsm_top/coef_update_dut/add3_syn_76 ,\lsm_top/coef_update_dut/coef4_b [7]}));  // ../../lms/coef_update.v(108)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add3_syn_11  (
    .a(\lsm_top/coef_update_dut/coef4 [8]),
    .b(\lsm_top/coef_update_dut/coef4_reg [8]),
    .c(\lsm_top/coef_update_dut/add3_syn_76 ),
    .o({\lsm_top/coef_update_dut/add3_syn_77 ,\lsm_top/coef_update_dut/coef4_b [8]}));  // ../../lms/coef_update.v(108)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add3_syn_12  (
    .a(\lsm_top/coef_update_dut/coef4 [9]),
    .b(\lsm_top/coef_update_dut/coef4_reg [9]),
    .c(\lsm_top/coef_update_dut/add3_syn_77 ),
    .o({\lsm_top/coef_update_dut/add3_syn_78 ,\lsm_top/coef_update_dut/coef4_b [9]}));  // ../../lms/coef_update.v(108)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add3_syn_13  (
    .a(\lsm_top/coef_update_dut/coef4 [10]),
    .b(\lsm_top/coef_update_dut/coef4_reg [10]),
    .c(\lsm_top/coef_update_dut/add3_syn_78 ),
    .o({\lsm_top/coef_update_dut/add3_syn_79 ,\lsm_top/coef_update_dut/coef4_b [10]}));  // ../../lms/coef_update.v(108)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add3_syn_14  (
    .a(\lsm_top/coef_update_dut/coef4 [11]),
    .b(\lsm_top/coef_update_dut/coef4_reg [11]),
    .c(\lsm_top/coef_update_dut/add3_syn_79 ),
    .o({\lsm_top/coef_update_dut/add3_syn_80 ,\lsm_top/coef_update_dut/coef4_b [11]}));  // ../../lms/coef_update.v(108)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add3_syn_15  (
    .a(\lsm_top/coef_update_dut/coef4 [12]),
    .b(\lsm_top/coef_update_dut/coef4_reg [12]),
    .c(\lsm_top/coef_update_dut/add3_syn_80 ),
    .o({\lsm_top/coef_update_dut/add3_syn_81 ,\lsm_top/coef_update_dut/coef4_b [12]}));  // ../../lms/coef_update.v(108)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add3_syn_16  (
    .a(\lsm_top/coef_update_dut/coef4 [13]),
    .b(\lsm_top/coef_update_dut/coef4_reg [13]),
    .c(\lsm_top/coef_update_dut/add3_syn_81 ),
    .o({\lsm_top/coef_update_dut/add3_syn_82 ,\lsm_top/coef_update_dut/coef4_b [13]}));  // ../../lms/coef_update.v(108)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add3_syn_17  (
    .a(\lsm_top/coef_update_dut/coef4 [14]),
    .b(\lsm_top/coef_update_dut/coef4_reg [14]),
    .c(\lsm_top/coef_update_dut/add3_syn_82 ),
    .o({\lsm_top/coef_update_dut/add3_syn_83 ,\lsm_top/coef_update_dut/coef4_b [14]}));  // ../../lms/coef_update.v(108)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add3_syn_18  (
    .a(\lsm_top/coef_update_dut/coef4 [15]),
    .b(\lsm_top/coef_update_dut/coef4_reg [15]),
    .c(\lsm_top/coef_update_dut/add3_syn_83 ),
    .o({open_n570,\lsm_top/coef_update_dut/coef4_b [15]}));  // ../../lms/coef_update.v(108)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \lsm_top/coef_update_dut/add3_syn_2  (
    .a(1'b0),
    .o({\lsm_top/coef_update_dut/add3_syn_68 ,open_n573}));  // ../../lms/coef_update.v(108)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add3_syn_3  (
    .a(\lsm_top/coef_update_dut/coef4 [0]),
    .b(\lsm_top/coef_update_dut/coef4_reg [0]),
    .c(\lsm_top/coef_update_dut/add3_syn_68 ),
    .o({\lsm_top/coef_update_dut/add3_syn_69 ,\lsm_top/coef_update_dut/coef4_b [0]}));  // ../../lms/coef_update.v(108)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add3_syn_4  (
    .a(\lsm_top/coef_update_dut/coef4 [1]),
    .b(\lsm_top/coef_update_dut/coef4_reg [1]),
    .c(\lsm_top/coef_update_dut/add3_syn_69 ),
    .o({\lsm_top/coef_update_dut/add3_syn_70 ,\lsm_top/coef_update_dut/coef4_b [1]}));  // ../../lms/coef_update.v(108)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add3_syn_5  (
    .a(\lsm_top/coef_update_dut/coef4 [2]),
    .b(\lsm_top/coef_update_dut/coef4_reg [2]),
    .c(\lsm_top/coef_update_dut/add3_syn_70 ),
    .o({\lsm_top/coef_update_dut/add3_syn_71 ,\lsm_top/coef_update_dut/coef4_b [2]}));  // ../../lms/coef_update.v(108)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add3_syn_6  (
    .a(\lsm_top/coef_update_dut/coef4 [3]),
    .b(\lsm_top/coef_update_dut/coef4_reg [3]),
    .c(\lsm_top/coef_update_dut/add3_syn_71 ),
    .o({\lsm_top/coef_update_dut/add3_syn_72 ,\lsm_top/coef_update_dut/coef4_b [3]}));  // ../../lms/coef_update.v(108)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add3_syn_7  (
    .a(\lsm_top/coef_update_dut/coef4 [4]),
    .b(\lsm_top/coef_update_dut/coef4_reg [4]),
    .c(\lsm_top/coef_update_dut/add3_syn_72 ),
    .o({\lsm_top/coef_update_dut/add3_syn_73 ,\lsm_top/coef_update_dut/coef4_b [4]}));  // ../../lms/coef_update.v(108)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add3_syn_8  (
    .a(\lsm_top/coef_update_dut/coef4 [5]),
    .b(\lsm_top/coef_update_dut/coef4_reg [5]),
    .c(\lsm_top/coef_update_dut/add3_syn_73 ),
    .o({\lsm_top/coef_update_dut/add3_syn_74 ,\lsm_top/coef_update_dut/coef4_b [5]}));  // ../../lms/coef_update.v(108)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add3_syn_9  (
    .a(\lsm_top/coef_update_dut/coef4 [6]),
    .b(\lsm_top/coef_update_dut/coef4_reg [6]),
    .c(\lsm_top/coef_update_dut/add3_syn_74 ),
    .o({\lsm_top/coef_update_dut/add3_syn_75 ,\lsm_top/coef_update_dut/coef4_b [6]}));  // ../../lms/coef_update.v(108)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add4_syn_10  (
    .a(\lsm_top/coef_update_dut/coef5 [7]),
    .b(\lsm_top/coef_update_dut/coef5_reg [7]),
    .c(\lsm_top/coef_update_dut/add4_syn_75 ),
    .o({\lsm_top/coef_update_dut/add4_syn_76 ,\lsm_top/coef_update_dut/coef5_b [7]}));  // ../../lms/coef_update.v(109)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add4_syn_11  (
    .a(\lsm_top/coef_update_dut/coef5 [8]),
    .b(\lsm_top/coef_update_dut/coef5_reg [8]),
    .c(\lsm_top/coef_update_dut/add4_syn_76 ),
    .o({\lsm_top/coef_update_dut/add4_syn_77 ,\lsm_top/coef_update_dut/coef5_b [8]}));  // ../../lms/coef_update.v(109)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add4_syn_12  (
    .a(\lsm_top/coef_update_dut/coef5 [9]),
    .b(\lsm_top/coef_update_dut/coef5_reg [9]),
    .c(\lsm_top/coef_update_dut/add4_syn_77 ),
    .o({\lsm_top/coef_update_dut/add4_syn_78 ,\lsm_top/coef_update_dut/coef5_b [9]}));  // ../../lms/coef_update.v(109)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add4_syn_13  (
    .a(\lsm_top/coef_update_dut/coef5 [10]),
    .b(\lsm_top/coef_update_dut/coef5_reg [10]),
    .c(\lsm_top/coef_update_dut/add4_syn_78 ),
    .o({\lsm_top/coef_update_dut/add4_syn_79 ,\lsm_top/coef_update_dut/coef5_b [10]}));  // ../../lms/coef_update.v(109)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add4_syn_14  (
    .a(\lsm_top/coef_update_dut/coef5 [11]),
    .b(\lsm_top/coef_update_dut/coef5_reg [11]),
    .c(\lsm_top/coef_update_dut/add4_syn_79 ),
    .o({\lsm_top/coef_update_dut/add4_syn_80 ,\lsm_top/coef_update_dut/coef5_b [11]}));  // ../../lms/coef_update.v(109)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add4_syn_15  (
    .a(\lsm_top/coef_update_dut/coef5 [12]),
    .b(\lsm_top/coef_update_dut/coef5_reg [12]),
    .c(\lsm_top/coef_update_dut/add4_syn_80 ),
    .o({\lsm_top/coef_update_dut/add4_syn_81 ,\lsm_top/coef_update_dut/coef5_b [12]}));  // ../../lms/coef_update.v(109)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add4_syn_16  (
    .a(\lsm_top/coef_update_dut/coef5 [13]),
    .b(\lsm_top/coef_update_dut/coef5_reg [13]),
    .c(\lsm_top/coef_update_dut/add4_syn_81 ),
    .o({\lsm_top/coef_update_dut/add4_syn_82 ,\lsm_top/coef_update_dut/coef5_b [13]}));  // ../../lms/coef_update.v(109)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add4_syn_17  (
    .a(\lsm_top/coef_update_dut/coef5 [14]),
    .b(\lsm_top/coef_update_dut/coef5_reg [14]),
    .c(\lsm_top/coef_update_dut/add4_syn_82 ),
    .o({\lsm_top/coef_update_dut/add4_syn_83 ,\lsm_top/coef_update_dut/coef5_b [14]}));  // ../../lms/coef_update.v(109)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add4_syn_18  (
    .a(\lsm_top/coef_update_dut/coef5 [15]),
    .b(\lsm_top/coef_update_dut/coef5_reg [15]),
    .c(\lsm_top/coef_update_dut/add4_syn_83 ),
    .o({open_n574,\lsm_top/coef_update_dut/coef5_b [15]}));  // ../../lms/coef_update.v(109)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \lsm_top/coef_update_dut/add4_syn_2  (
    .a(1'b0),
    .o({\lsm_top/coef_update_dut/add4_syn_68 ,open_n577}));  // ../../lms/coef_update.v(109)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add4_syn_3  (
    .a(\lsm_top/coef_update_dut/coef5 [0]),
    .b(\lsm_top/coef_update_dut/coef5_reg [0]),
    .c(\lsm_top/coef_update_dut/add4_syn_68 ),
    .o({\lsm_top/coef_update_dut/add4_syn_69 ,\lsm_top/coef_update_dut/coef5_b [0]}));  // ../../lms/coef_update.v(109)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add4_syn_4  (
    .a(\lsm_top/coef_update_dut/coef5 [1]),
    .b(\lsm_top/coef_update_dut/coef5_reg [1]),
    .c(\lsm_top/coef_update_dut/add4_syn_69 ),
    .o({\lsm_top/coef_update_dut/add4_syn_70 ,\lsm_top/coef_update_dut/coef5_b [1]}));  // ../../lms/coef_update.v(109)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add4_syn_5  (
    .a(\lsm_top/coef_update_dut/coef5 [2]),
    .b(\lsm_top/coef_update_dut/coef5_reg [2]),
    .c(\lsm_top/coef_update_dut/add4_syn_70 ),
    .o({\lsm_top/coef_update_dut/add4_syn_71 ,\lsm_top/coef_update_dut/coef5_b [2]}));  // ../../lms/coef_update.v(109)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add4_syn_6  (
    .a(\lsm_top/coef_update_dut/coef5 [3]),
    .b(\lsm_top/coef_update_dut/coef5_reg [3]),
    .c(\lsm_top/coef_update_dut/add4_syn_71 ),
    .o({\lsm_top/coef_update_dut/add4_syn_72 ,\lsm_top/coef_update_dut/coef5_b [3]}));  // ../../lms/coef_update.v(109)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add4_syn_7  (
    .a(\lsm_top/coef_update_dut/coef5 [4]),
    .b(\lsm_top/coef_update_dut/coef5_reg [4]),
    .c(\lsm_top/coef_update_dut/add4_syn_72 ),
    .o({\lsm_top/coef_update_dut/add4_syn_73 ,\lsm_top/coef_update_dut/coef5_b [4]}));  // ../../lms/coef_update.v(109)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add4_syn_8  (
    .a(\lsm_top/coef_update_dut/coef5 [5]),
    .b(\lsm_top/coef_update_dut/coef5_reg [5]),
    .c(\lsm_top/coef_update_dut/add4_syn_73 ),
    .o({\lsm_top/coef_update_dut/add4_syn_74 ,\lsm_top/coef_update_dut/coef5_b [5]}));  // ../../lms/coef_update.v(109)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add4_syn_9  (
    .a(\lsm_top/coef_update_dut/coef5 [6]),
    .b(\lsm_top/coef_update_dut/coef5_reg [6]),
    .c(\lsm_top/coef_update_dut/add4_syn_74 ),
    .o({\lsm_top/coef_update_dut/add4_syn_75 ,\lsm_top/coef_update_dut/coef5_b [6]}));  // ../../lms/coef_update.v(109)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add5_syn_10  (
    .a(\lsm_top/coef_update_dut/coef6 [7]),
    .b(\lsm_top/coef_update_dut/coef6_reg [7]),
    .c(\lsm_top/coef_update_dut/add5_syn_75 ),
    .o({\lsm_top/coef_update_dut/add5_syn_76 ,\lsm_top/coef_update_dut/coef6_b [7]}));  // ../../lms/coef_update.v(110)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add5_syn_11  (
    .a(\lsm_top/coef_update_dut/coef6 [8]),
    .b(\lsm_top/coef_update_dut/coef6_reg [8]),
    .c(\lsm_top/coef_update_dut/add5_syn_76 ),
    .o({\lsm_top/coef_update_dut/add5_syn_77 ,\lsm_top/coef_update_dut/coef6_b [8]}));  // ../../lms/coef_update.v(110)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add5_syn_12  (
    .a(\lsm_top/coef_update_dut/coef6 [9]),
    .b(\lsm_top/coef_update_dut/coef6_reg [9]),
    .c(\lsm_top/coef_update_dut/add5_syn_77 ),
    .o({\lsm_top/coef_update_dut/add5_syn_78 ,\lsm_top/coef_update_dut/coef6_b [9]}));  // ../../lms/coef_update.v(110)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add5_syn_13  (
    .a(\lsm_top/coef_update_dut/coef6 [10]),
    .b(\lsm_top/coef_update_dut/coef6_reg [10]),
    .c(\lsm_top/coef_update_dut/add5_syn_78 ),
    .o({\lsm_top/coef_update_dut/add5_syn_79 ,\lsm_top/coef_update_dut/coef6_b [10]}));  // ../../lms/coef_update.v(110)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add5_syn_14  (
    .a(\lsm_top/coef_update_dut/coef6 [11]),
    .b(\lsm_top/coef_update_dut/coef6_reg [11]),
    .c(\lsm_top/coef_update_dut/add5_syn_79 ),
    .o({\lsm_top/coef_update_dut/add5_syn_80 ,\lsm_top/coef_update_dut/coef6_b [11]}));  // ../../lms/coef_update.v(110)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add5_syn_15  (
    .a(\lsm_top/coef_update_dut/coef6 [12]),
    .b(\lsm_top/coef_update_dut/coef6_reg [12]),
    .c(\lsm_top/coef_update_dut/add5_syn_80 ),
    .o({\lsm_top/coef_update_dut/add5_syn_81 ,\lsm_top/coef_update_dut/coef6_b [12]}));  // ../../lms/coef_update.v(110)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add5_syn_16  (
    .a(\lsm_top/coef_update_dut/coef6 [13]),
    .b(\lsm_top/coef_update_dut/coef6_reg [13]),
    .c(\lsm_top/coef_update_dut/add5_syn_81 ),
    .o({\lsm_top/coef_update_dut/add5_syn_82 ,\lsm_top/coef_update_dut/coef6_b [13]}));  // ../../lms/coef_update.v(110)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add5_syn_17  (
    .a(\lsm_top/coef_update_dut/coef6 [14]),
    .b(\lsm_top/coef_update_dut/coef6_reg [14]),
    .c(\lsm_top/coef_update_dut/add5_syn_82 ),
    .o({\lsm_top/coef_update_dut/add5_syn_83 ,\lsm_top/coef_update_dut/coef6_b [14]}));  // ../../lms/coef_update.v(110)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add5_syn_18  (
    .a(\lsm_top/coef_update_dut/coef6 [15]),
    .b(\lsm_top/coef_update_dut/coef6_reg [15]),
    .c(\lsm_top/coef_update_dut/add5_syn_83 ),
    .o({open_n578,\lsm_top/coef_update_dut/coef6_b [15]}));  // ../../lms/coef_update.v(110)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \lsm_top/coef_update_dut/add5_syn_2  (
    .a(1'b0),
    .o({\lsm_top/coef_update_dut/add5_syn_68 ,open_n581}));  // ../../lms/coef_update.v(110)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add5_syn_3  (
    .a(\lsm_top/coef_update_dut/coef6 [0]),
    .b(\lsm_top/coef_update_dut/coef6_reg [0]),
    .c(\lsm_top/coef_update_dut/add5_syn_68 ),
    .o({\lsm_top/coef_update_dut/add5_syn_69 ,\lsm_top/coef_update_dut/coef6_b [0]}));  // ../../lms/coef_update.v(110)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add5_syn_4  (
    .a(\lsm_top/coef_update_dut/coef6 [1]),
    .b(\lsm_top/coef_update_dut/coef6_reg [1]),
    .c(\lsm_top/coef_update_dut/add5_syn_69 ),
    .o({\lsm_top/coef_update_dut/add5_syn_70 ,\lsm_top/coef_update_dut/coef6_b [1]}));  // ../../lms/coef_update.v(110)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add5_syn_5  (
    .a(\lsm_top/coef_update_dut/coef6 [2]),
    .b(\lsm_top/coef_update_dut/coef6_reg [2]),
    .c(\lsm_top/coef_update_dut/add5_syn_70 ),
    .o({\lsm_top/coef_update_dut/add5_syn_71 ,\lsm_top/coef_update_dut/coef6_b [2]}));  // ../../lms/coef_update.v(110)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add5_syn_6  (
    .a(\lsm_top/coef_update_dut/coef6 [3]),
    .b(\lsm_top/coef_update_dut/coef6_reg [3]),
    .c(\lsm_top/coef_update_dut/add5_syn_71 ),
    .o({\lsm_top/coef_update_dut/add5_syn_72 ,\lsm_top/coef_update_dut/coef6_b [3]}));  // ../../lms/coef_update.v(110)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add5_syn_7  (
    .a(\lsm_top/coef_update_dut/coef6 [4]),
    .b(\lsm_top/coef_update_dut/coef6_reg [4]),
    .c(\lsm_top/coef_update_dut/add5_syn_72 ),
    .o({\lsm_top/coef_update_dut/add5_syn_73 ,\lsm_top/coef_update_dut/coef6_b [4]}));  // ../../lms/coef_update.v(110)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add5_syn_8  (
    .a(\lsm_top/coef_update_dut/coef6 [5]),
    .b(\lsm_top/coef_update_dut/coef6_reg [5]),
    .c(\lsm_top/coef_update_dut/add5_syn_73 ),
    .o({\lsm_top/coef_update_dut/add5_syn_74 ,\lsm_top/coef_update_dut/coef6_b [5]}));  // ../../lms/coef_update.v(110)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add5_syn_9  (
    .a(\lsm_top/coef_update_dut/coef6 [6]),
    .b(\lsm_top/coef_update_dut/coef6_reg [6]),
    .c(\lsm_top/coef_update_dut/add5_syn_74 ),
    .o({\lsm_top/coef_update_dut/add5_syn_75 ,\lsm_top/coef_update_dut/coef6_b [6]}));  // ../../lms/coef_update.v(110)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add6_syn_10  (
    .a(\lsm_top/coef_update_dut/coef7 [7]),
    .b(\lsm_top/coef_update_dut/coef7_reg [7]),
    .c(\lsm_top/coef_update_dut/add6_syn_75 ),
    .o({\lsm_top/coef_update_dut/add6_syn_76 ,\lsm_top/coef_update_dut/coef7_b [7]}));  // ../../lms/coef_update.v(111)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add6_syn_11  (
    .a(\lsm_top/coef_update_dut/coef7 [8]),
    .b(\lsm_top/coef_update_dut/coef7_reg [8]),
    .c(\lsm_top/coef_update_dut/add6_syn_76 ),
    .o({\lsm_top/coef_update_dut/add6_syn_77 ,\lsm_top/coef_update_dut/coef7_b [8]}));  // ../../lms/coef_update.v(111)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add6_syn_12  (
    .a(\lsm_top/coef_update_dut/coef7 [9]),
    .b(\lsm_top/coef_update_dut/coef7_reg [9]),
    .c(\lsm_top/coef_update_dut/add6_syn_77 ),
    .o({\lsm_top/coef_update_dut/add6_syn_78 ,\lsm_top/coef_update_dut/coef7_b [9]}));  // ../../lms/coef_update.v(111)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add6_syn_13  (
    .a(\lsm_top/coef_update_dut/coef7 [10]),
    .b(\lsm_top/coef_update_dut/coef7_reg [10]),
    .c(\lsm_top/coef_update_dut/add6_syn_78 ),
    .o({\lsm_top/coef_update_dut/add6_syn_79 ,\lsm_top/coef_update_dut/coef7_b [10]}));  // ../../lms/coef_update.v(111)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add6_syn_14  (
    .a(\lsm_top/coef_update_dut/coef7 [11]),
    .b(\lsm_top/coef_update_dut/coef7_reg [11]),
    .c(\lsm_top/coef_update_dut/add6_syn_79 ),
    .o({\lsm_top/coef_update_dut/add6_syn_80 ,\lsm_top/coef_update_dut/coef7_b [11]}));  // ../../lms/coef_update.v(111)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add6_syn_15  (
    .a(\lsm_top/coef_update_dut/coef7 [12]),
    .b(\lsm_top/coef_update_dut/coef7_reg [12]),
    .c(\lsm_top/coef_update_dut/add6_syn_80 ),
    .o({\lsm_top/coef_update_dut/add6_syn_81 ,\lsm_top/coef_update_dut/coef7_b [12]}));  // ../../lms/coef_update.v(111)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add6_syn_16  (
    .a(\lsm_top/coef_update_dut/coef7 [13]),
    .b(\lsm_top/coef_update_dut/coef7_reg [13]),
    .c(\lsm_top/coef_update_dut/add6_syn_81 ),
    .o({\lsm_top/coef_update_dut/add6_syn_82 ,\lsm_top/coef_update_dut/coef7_b [13]}));  // ../../lms/coef_update.v(111)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add6_syn_17  (
    .a(\lsm_top/coef_update_dut/coef7 [14]),
    .b(\lsm_top/coef_update_dut/coef7_reg [14]),
    .c(\lsm_top/coef_update_dut/add6_syn_82 ),
    .o({\lsm_top/coef_update_dut/add6_syn_83 ,\lsm_top/coef_update_dut/coef7_b [14]}));  // ../../lms/coef_update.v(111)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add6_syn_18  (
    .a(\lsm_top/coef_update_dut/coef7 [15]),
    .b(\lsm_top/coef_update_dut/coef7_reg [15]),
    .c(\lsm_top/coef_update_dut/add6_syn_83 ),
    .o({open_n582,\lsm_top/coef_update_dut/coef7_b [15]}));  // ../../lms/coef_update.v(111)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \lsm_top/coef_update_dut/add6_syn_2  (
    .a(1'b0),
    .o({\lsm_top/coef_update_dut/add6_syn_68 ,open_n585}));  // ../../lms/coef_update.v(111)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add6_syn_3  (
    .a(\lsm_top/coef_update_dut/coef7 [0]),
    .b(\lsm_top/coef_update_dut/coef7_reg [0]),
    .c(\lsm_top/coef_update_dut/add6_syn_68 ),
    .o({\lsm_top/coef_update_dut/add6_syn_69 ,\lsm_top/coef_update_dut/coef7_b [0]}));  // ../../lms/coef_update.v(111)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add6_syn_4  (
    .a(\lsm_top/coef_update_dut/coef7 [1]),
    .b(\lsm_top/coef_update_dut/coef7_reg [1]),
    .c(\lsm_top/coef_update_dut/add6_syn_69 ),
    .o({\lsm_top/coef_update_dut/add6_syn_70 ,\lsm_top/coef_update_dut/coef7_b [1]}));  // ../../lms/coef_update.v(111)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add6_syn_5  (
    .a(\lsm_top/coef_update_dut/coef7 [2]),
    .b(\lsm_top/coef_update_dut/coef7_reg [2]),
    .c(\lsm_top/coef_update_dut/add6_syn_70 ),
    .o({\lsm_top/coef_update_dut/add6_syn_71 ,\lsm_top/coef_update_dut/coef7_b [2]}));  // ../../lms/coef_update.v(111)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add6_syn_6  (
    .a(\lsm_top/coef_update_dut/coef7 [3]),
    .b(\lsm_top/coef_update_dut/coef7_reg [3]),
    .c(\lsm_top/coef_update_dut/add6_syn_71 ),
    .o({\lsm_top/coef_update_dut/add6_syn_72 ,\lsm_top/coef_update_dut/coef7_b [3]}));  // ../../lms/coef_update.v(111)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add6_syn_7  (
    .a(\lsm_top/coef_update_dut/coef7 [4]),
    .b(\lsm_top/coef_update_dut/coef7_reg [4]),
    .c(\lsm_top/coef_update_dut/add6_syn_72 ),
    .o({\lsm_top/coef_update_dut/add6_syn_73 ,\lsm_top/coef_update_dut/coef7_b [4]}));  // ../../lms/coef_update.v(111)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add6_syn_8  (
    .a(\lsm_top/coef_update_dut/coef7 [5]),
    .b(\lsm_top/coef_update_dut/coef7_reg [5]),
    .c(\lsm_top/coef_update_dut/add6_syn_73 ),
    .o({\lsm_top/coef_update_dut/add6_syn_74 ,\lsm_top/coef_update_dut/coef7_b [5]}));  // ../../lms/coef_update.v(111)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add6_syn_9  (
    .a(\lsm_top/coef_update_dut/coef7 [6]),
    .b(\lsm_top/coef_update_dut/coef7_reg [6]),
    .c(\lsm_top/coef_update_dut/add6_syn_74 ),
    .o({\lsm_top/coef_update_dut/add6_syn_75 ,\lsm_top/coef_update_dut/coef7_b [6]}));  // ../../lms/coef_update.v(111)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add7_syn_10  (
    .a(\lsm_top/coef_update_dut/coef8 [7]),
    .b(\lsm_top/coef_update_dut/coef8_reg [7]),
    .c(\lsm_top/coef_update_dut/add7_syn_75 ),
    .o({\lsm_top/coef_update_dut/add7_syn_76 ,\lsm_top/coef_update_dut/coef8_b [7]}));  // ../../lms/coef_update.v(112)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add7_syn_11  (
    .a(\lsm_top/coef_update_dut/coef8 [8]),
    .b(\lsm_top/coef_update_dut/coef8_reg [8]),
    .c(\lsm_top/coef_update_dut/add7_syn_76 ),
    .o({\lsm_top/coef_update_dut/add7_syn_77 ,\lsm_top/coef_update_dut/coef8_b [8]}));  // ../../lms/coef_update.v(112)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add7_syn_12  (
    .a(\lsm_top/coef_update_dut/coef8 [9]),
    .b(\lsm_top/coef_update_dut/coef8_reg [9]),
    .c(\lsm_top/coef_update_dut/add7_syn_77 ),
    .o({\lsm_top/coef_update_dut/add7_syn_78 ,\lsm_top/coef_update_dut/coef8_b [9]}));  // ../../lms/coef_update.v(112)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add7_syn_13  (
    .a(\lsm_top/coef_update_dut/coef8 [10]),
    .b(\lsm_top/coef_update_dut/coef8_reg [10]),
    .c(\lsm_top/coef_update_dut/add7_syn_78 ),
    .o({\lsm_top/coef_update_dut/add7_syn_79 ,\lsm_top/coef_update_dut/coef8_b [10]}));  // ../../lms/coef_update.v(112)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add7_syn_14  (
    .a(\lsm_top/coef_update_dut/coef8 [11]),
    .b(\lsm_top/coef_update_dut/coef8_reg [11]),
    .c(\lsm_top/coef_update_dut/add7_syn_79 ),
    .o({\lsm_top/coef_update_dut/add7_syn_80 ,\lsm_top/coef_update_dut/coef8_b [11]}));  // ../../lms/coef_update.v(112)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add7_syn_15  (
    .a(\lsm_top/coef_update_dut/coef8 [12]),
    .b(\lsm_top/coef_update_dut/coef8_reg [12]),
    .c(\lsm_top/coef_update_dut/add7_syn_80 ),
    .o({\lsm_top/coef_update_dut/add7_syn_81 ,\lsm_top/coef_update_dut/coef8_b [12]}));  // ../../lms/coef_update.v(112)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add7_syn_16  (
    .a(\lsm_top/coef_update_dut/coef8 [13]),
    .b(\lsm_top/coef_update_dut/coef8_reg [13]),
    .c(\lsm_top/coef_update_dut/add7_syn_81 ),
    .o({\lsm_top/coef_update_dut/add7_syn_82 ,\lsm_top/coef_update_dut/coef8_b [13]}));  // ../../lms/coef_update.v(112)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add7_syn_17  (
    .a(\lsm_top/coef_update_dut/coef8 [14]),
    .b(\lsm_top/coef_update_dut/coef8_reg [14]),
    .c(\lsm_top/coef_update_dut/add7_syn_82 ),
    .o({\lsm_top/coef_update_dut/add7_syn_83 ,\lsm_top/coef_update_dut/coef8_b [14]}));  // ../../lms/coef_update.v(112)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add7_syn_18  (
    .a(\lsm_top/coef_update_dut/coef8 [15]),
    .b(\lsm_top/coef_update_dut/coef8_reg [15]),
    .c(\lsm_top/coef_update_dut/add7_syn_83 ),
    .o({open_n586,\lsm_top/coef_update_dut/coef8_b [15]}));  // ../../lms/coef_update.v(112)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \lsm_top/coef_update_dut/add7_syn_2  (
    .a(1'b0),
    .o({\lsm_top/coef_update_dut/add7_syn_68 ,open_n589}));  // ../../lms/coef_update.v(112)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add7_syn_3  (
    .a(\lsm_top/coef_update_dut/coef8 [0]),
    .b(\lsm_top/coef_update_dut/coef8_reg [0]),
    .c(\lsm_top/coef_update_dut/add7_syn_68 ),
    .o({\lsm_top/coef_update_dut/add7_syn_69 ,\lsm_top/coef_update_dut/coef8_b [0]}));  // ../../lms/coef_update.v(112)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add7_syn_4  (
    .a(\lsm_top/coef_update_dut/coef8 [1]),
    .b(\lsm_top/coef_update_dut/coef8_reg [1]),
    .c(\lsm_top/coef_update_dut/add7_syn_69 ),
    .o({\lsm_top/coef_update_dut/add7_syn_70 ,\lsm_top/coef_update_dut/coef8_b [1]}));  // ../../lms/coef_update.v(112)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add7_syn_5  (
    .a(\lsm_top/coef_update_dut/coef8 [2]),
    .b(\lsm_top/coef_update_dut/coef8_reg [2]),
    .c(\lsm_top/coef_update_dut/add7_syn_70 ),
    .o({\lsm_top/coef_update_dut/add7_syn_71 ,\lsm_top/coef_update_dut/coef8_b [2]}));  // ../../lms/coef_update.v(112)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add7_syn_6  (
    .a(\lsm_top/coef_update_dut/coef8 [3]),
    .b(\lsm_top/coef_update_dut/coef8_reg [3]),
    .c(\lsm_top/coef_update_dut/add7_syn_71 ),
    .o({\lsm_top/coef_update_dut/add7_syn_72 ,\lsm_top/coef_update_dut/coef8_b [3]}));  // ../../lms/coef_update.v(112)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add7_syn_7  (
    .a(\lsm_top/coef_update_dut/coef8 [4]),
    .b(\lsm_top/coef_update_dut/coef8_reg [4]),
    .c(\lsm_top/coef_update_dut/add7_syn_72 ),
    .o({\lsm_top/coef_update_dut/add7_syn_73 ,\lsm_top/coef_update_dut/coef8_b [4]}));  // ../../lms/coef_update.v(112)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add7_syn_8  (
    .a(\lsm_top/coef_update_dut/coef8 [5]),
    .b(\lsm_top/coef_update_dut/coef8_reg [5]),
    .c(\lsm_top/coef_update_dut/add7_syn_73 ),
    .o({\lsm_top/coef_update_dut/add7_syn_74 ,\lsm_top/coef_update_dut/coef8_b [5]}));  // ../../lms/coef_update.v(112)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add7_syn_9  (
    .a(\lsm_top/coef_update_dut/coef8 [6]),
    .b(\lsm_top/coef_update_dut/coef8_reg [6]),
    .c(\lsm_top/coef_update_dut/add7_syn_74 ),
    .o({\lsm_top/coef_update_dut/add7_syn_75 ,\lsm_top/coef_update_dut/coef8_b [6]}));  // ../../lms/coef_update.v(112)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add8_syn_10  (
    .a(\lsm_top/coef_update_dut/coef9 [7]),
    .b(\lsm_top/coef_update_dut/coef9_reg [7]),
    .c(\lsm_top/coef_update_dut/add8_syn_75 ),
    .o({\lsm_top/coef_update_dut/add8_syn_76 ,\lsm_top/coef_update_dut/coef9_b [7]}));  // ../../lms/coef_update.v(113)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add8_syn_11  (
    .a(\lsm_top/coef_update_dut/coef9 [8]),
    .b(\lsm_top/coef_update_dut/coef9_reg [8]),
    .c(\lsm_top/coef_update_dut/add8_syn_76 ),
    .o({\lsm_top/coef_update_dut/add8_syn_77 ,\lsm_top/coef_update_dut/coef9_b [8]}));  // ../../lms/coef_update.v(113)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add8_syn_12  (
    .a(\lsm_top/coef_update_dut/coef9 [9]),
    .b(\lsm_top/coef_update_dut/coef9_reg [9]),
    .c(\lsm_top/coef_update_dut/add8_syn_77 ),
    .o({\lsm_top/coef_update_dut/add8_syn_78 ,\lsm_top/coef_update_dut/coef9_b [9]}));  // ../../lms/coef_update.v(113)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add8_syn_13  (
    .a(\lsm_top/coef_update_dut/coef9 [10]),
    .b(\lsm_top/coef_update_dut/coef9_reg [10]),
    .c(\lsm_top/coef_update_dut/add8_syn_78 ),
    .o({\lsm_top/coef_update_dut/add8_syn_79 ,\lsm_top/coef_update_dut/coef9_b [10]}));  // ../../lms/coef_update.v(113)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add8_syn_14  (
    .a(\lsm_top/coef_update_dut/coef9 [11]),
    .b(\lsm_top/coef_update_dut/coef9_reg [11]),
    .c(\lsm_top/coef_update_dut/add8_syn_79 ),
    .o({\lsm_top/coef_update_dut/add8_syn_80 ,\lsm_top/coef_update_dut/coef9_b [11]}));  // ../../lms/coef_update.v(113)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add8_syn_15  (
    .a(\lsm_top/coef_update_dut/coef9 [12]),
    .b(\lsm_top/coef_update_dut/coef9_reg [12]),
    .c(\lsm_top/coef_update_dut/add8_syn_80 ),
    .o({\lsm_top/coef_update_dut/add8_syn_81 ,\lsm_top/coef_update_dut/coef9_b [12]}));  // ../../lms/coef_update.v(113)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add8_syn_16  (
    .a(\lsm_top/coef_update_dut/coef9 [13]),
    .b(\lsm_top/coef_update_dut/coef9_reg [13]),
    .c(\lsm_top/coef_update_dut/add8_syn_81 ),
    .o({\lsm_top/coef_update_dut/add8_syn_82 ,\lsm_top/coef_update_dut/coef9_b [13]}));  // ../../lms/coef_update.v(113)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add8_syn_17  (
    .a(\lsm_top/coef_update_dut/coef9 [14]),
    .b(\lsm_top/coef_update_dut/coef9_reg [14]),
    .c(\lsm_top/coef_update_dut/add8_syn_82 ),
    .o({\lsm_top/coef_update_dut/add8_syn_83 ,\lsm_top/coef_update_dut/coef9_b [14]}));  // ../../lms/coef_update.v(113)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add8_syn_18  (
    .a(\lsm_top/coef_update_dut/coef9 [15]),
    .b(\lsm_top/coef_update_dut/coef9_reg [15]),
    .c(\lsm_top/coef_update_dut/add8_syn_83 ),
    .o({open_n590,\lsm_top/coef_update_dut/coef9_b [15]}));  // ../../lms/coef_update.v(113)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \lsm_top/coef_update_dut/add8_syn_2  (
    .a(1'b0),
    .o({\lsm_top/coef_update_dut/add8_syn_68 ,open_n593}));  // ../../lms/coef_update.v(113)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add8_syn_3  (
    .a(\lsm_top/coef_update_dut/coef9 [0]),
    .b(\lsm_top/coef_update_dut/coef9_reg [0]),
    .c(\lsm_top/coef_update_dut/add8_syn_68 ),
    .o({\lsm_top/coef_update_dut/add8_syn_69 ,\lsm_top/coef_update_dut/coef9_b [0]}));  // ../../lms/coef_update.v(113)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add8_syn_4  (
    .a(\lsm_top/coef_update_dut/coef9 [1]),
    .b(\lsm_top/coef_update_dut/coef9_reg [1]),
    .c(\lsm_top/coef_update_dut/add8_syn_69 ),
    .o({\lsm_top/coef_update_dut/add8_syn_70 ,\lsm_top/coef_update_dut/coef9_b [1]}));  // ../../lms/coef_update.v(113)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add8_syn_5  (
    .a(\lsm_top/coef_update_dut/coef9 [2]),
    .b(\lsm_top/coef_update_dut/coef9_reg [2]),
    .c(\lsm_top/coef_update_dut/add8_syn_70 ),
    .o({\lsm_top/coef_update_dut/add8_syn_71 ,\lsm_top/coef_update_dut/coef9_b [2]}));  // ../../lms/coef_update.v(113)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add8_syn_6  (
    .a(\lsm_top/coef_update_dut/coef9 [3]),
    .b(\lsm_top/coef_update_dut/coef9_reg [3]),
    .c(\lsm_top/coef_update_dut/add8_syn_71 ),
    .o({\lsm_top/coef_update_dut/add8_syn_72 ,\lsm_top/coef_update_dut/coef9_b [3]}));  // ../../lms/coef_update.v(113)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add8_syn_7  (
    .a(\lsm_top/coef_update_dut/coef9 [4]),
    .b(\lsm_top/coef_update_dut/coef9_reg [4]),
    .c(\lsm_top/coef_update_dut/add8_syn_72 ),
    .o({\lsm_top/coef_update_dut/add8_syn_73 ,\lsm_top/coef_update_dut/coef9_b [4]}));  // ../../lms/coef_update.v(113)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add8_syn_8  (
    .a(\lsm_top/coef_update_dut/coef9 [5]),
    .b(\lsm_top/coef_update_dut/coef9_reg [5]),
    .c(\lsm_top/coef_update_dut/add8_syn_73 ),
    .o({\lsm_top/coef_update_dut/add8_syn_74 ,\lsm_top/coef_update_dut/coef9_b [5]}));  // ../../lms/coef_update.v(113)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/coef_update_dut/add8_syn_9  (
    .a(\lsm_top/coef_update_dut/coef9 [6]),
    .b(\lsm_top/coef_update_dut/coef9_reg [6]),
    .c(\lsm_top/coef_update_dut/add8_syn_74 ),
    .o({\lsm_top/coef_update_dut/add8_syn_75 ,\lsm_top/coef_update_dut/coef9_b [6]}));  // ../../lms/coef_update.v(113)
  PH1_PHY_DSPMULT
    \lsm_top/coef_update_dut/mult0_syn_49/_mult  (
    .opctrl(2'b11),
    .x(27'b000000000000000000101111111),
    .y({\lsm_top/error_calcu_dut/error [15],\lsm_top/error_calcu_dut/error [15],\lsm_top/error_calcu_dut/error }),
    .p({\lsm_top/coef_update_dut/mult0_syn_49_syn_19 [44:18],\lsm_top/coef_update_dut/mult0_syn_4 [17:0]}));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(45))
    \lsm_top/coef_update_dut/mult1_syn_49/M_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/mult1_syn_49_syn_118 ),
    .rst(resetSorce_dup_1),
    .q({\lsm_top/coef_update_dut/mult1_syn_49_syn_186 [44:18],\lsm_top/coef_update_dut/coef1_reg [15:0],\lsm_top/coef_update_dut/mult1_syn_49_syn_186 [1:0]}));
  PH1_PHY_DSPMULT
    \lsm_top/coef_update_dut/mult1_syn_49/_mult  (
    .opctrl(2'b11),
    .x({\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17:0]}),
    .y({\lsm_top/coef_update_dut/data_shift1 [13],\lsm_top/coef_update_dut/data_shift1 [13],\lsm_top/coef_update_dut/data_shift1 [13],\lsm_top/coef_update_dut/data_shift1 [13],\lsm_top/coef_update_dut/data_shift1 [13:0]}),
    .p(\lsm_top/coef_update_dut/mult1_syn_49_syn_118 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(45))
    \lsm_top/coef_update_dut/mult2_syn_49/M_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/mult2_syn_49_syn_289 ),
    .rst(resetSorce_dup_1),
    .q({\lsm_top/coef_update_dut/mult2_syn_49_syn_357 [44:18],\lsm_top/coef_update_dut/coef2_reg [15:0],\lsm_top/coef_update_dut/mult2_syn_49_syn_357 [1:0]}));
  PH1_PHY_DSPMULT
    \lsm_top/coef_update_dut/mult2_syn_49/_mult  (
    .opctrl(2'b11),
    .x({\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17:0]}),
    .y({\lsm_top/coef_update_dut/data_shift2 [13],\lsm_top/coef_update_dut/data_shift2 [13],\lsm_top/coef_update_dut/data_shift2 [13],\lsm_top/coef_update_dut/data_shift2 [13],\lsm_top/coef_update_dut/data_shift2 [13:0]}),
    .p(\lsm_top/coef_update_dut/mult2_syn_49_syn_289 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(45))
    \lsm_top/coef_update_dut/mult3_syn_49/M_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/mult3_syn_49_syn_460 ),
    .rst(resetSorce_dup_1),
    .q({\lsm_top/coef_update_dut/mult3_syn_49_syn_528 [44:18],\lsm_top/coef_update_dut/coef3_reg [15:0],\lsm_top/coef_update_dut/mult3_syn_49_syn_528 [1:0]}));
  PH1_PHY_DSPMULT
    \lsm_top/coef_update_dut/mult3_syn_49/_mult  (
    .opctrl(2'b11),
    .x({\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17:0]}),
    .y({\lsm_top/coef_update_dut/data_shift3 [13],\lsm_top/coef_update_dut/data_shift3 [13],\lsm_top/coef_update_dut/data_shift3 [13],\lsm_top/coef_update_dut/data_shift3 [13],\lsm_top/coef_update_dut/data_shift3 [13:0]}),
    .p(\lsm_top/coef_update_dut/mult3_syn_49_syn_460 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(45))
    \lsm_top/coef_update_dut/mult4_syn_49/M_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/mult4_syn_49_syn_631 ),
    .rst(resetSorce_dup_1),
    .q({\lsm_top/coef_update_dut/mult4_syn_49_syn_699 [44:18],\lsm_top/coef_update_dut/coef4_reg [15:0],\lsm_top/coef_update_dut/mult4_syn_49_syn_699 [1:0]}));
  PH1_PHY_DSPMULT
    \lsm_top/coef_update_dut/mult4_syn_49/_mult  (
    .opctrl(2'b11),
    .x({\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17:0]}),
    .y({\lsm_top/coef_update_dut/data_shift4 [13],\lsm_top/coef_update_dut/data_shift4 [13],\lsm_top/coef_update_dut/data_shift4 [13],\lsm_top/coef_update_dut/data_shift4 [13],\lsm_top/coef_update_dut/data_shift4 [13:0]}),
    .p(\lsm_top/coef_update_dut/mult4_syn_49_syn_631 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(45))
    \lsm_top/coef_update_dut/mult5_syn_49/M_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/mult5_syn_49_syn_802 ),
    .rst(resetSorce_dup_1),
    .q({\lsm_top/coef_update_dut/mult5_syn_49_syn_870 [44:18],\lsm_top/coef_update_dut/coef5_reg [15:0],\lsm_top/coef_update_dut/mult5_syn_49_syn_870 [1:0]}));
  PH1_PHY_DSPMULT
    \lsm_top/coef_update_dut/mult5_syn_49/_mult  (
    .opctrl(2'b11),
    .x({\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17:0]}),
    .y({\lsm_top/coef_update_dut/data_shift5 [13],\lsm_top/coef_update_dut/data_shift5 [13],\lsm_top/coef_update_dut/data_shift5 [13],\lsm_top/coef_update_dut/data_shift5 [13],\lsm_top/coef_update_dut/data_shift5 [13:0]}),
    .p(\lsm_top/coef_update_dut/mult5_syn_49_syn_802 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(45))
    \lsm_top/coef_update_dut/mult6_syn_49/M_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/mult6_syn_49_syn_973 ),
    .rst(resetSorce_dup_1),
    .q({\lsm_top/coef_update_dut/mult6_syn_49_syn_1041 [44:18],\lsm_top/coef_update_dut/coef6_reg [15:0],\lsm_top/coef_update_dut/mult6_syn_49_syn_1041 [1:0]}));
  PH1_PHY_DSPMULT
    \lsm_top/coef_update_dut/mult6_syn_49/_mult  (
    .opctrl(2'b11),
    .x({\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17:0]}),
    .y({\lsm_top/coef_update_dut/data_shift6 [13],\lsm_top/coef_update_dut/data_shift6 [13],\lsm_top/coef_update_dut/data_shift6 [13],\lsm_top/coef_update_dut/data_shift6 [13],\lsm_top/coef_update_dut/data_shift6 [13:0]}),
    .p(\lsm_top/coef_update_dut/mult6_syn_49_syn_973 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(45))
    \lsm_top/coef_update_dut/mult7_syn_49/M_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/mult7_syn_49_syn_1144 ),
    .rst(resetSorce_dup_1),
    .q({\lsm_top/coef_update_dut/mult7_syn_49_syn_1212 [44:18],\lsm_top/coef_update_dut/coef7_reg [15:0],\lsm_top/coef_update_dut/mult7_syn_49_syn_1212 [1:0]}));
  PH1_PHY_DSPMULT
    \lsm_top/coef_update_dut/mult7_syn_49/_mult  (
    .opctrl(2'b11),
    .x({\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17:0]}),
    .y({\lsm_top/coef_update_dut/data_shift7 [13],\lsm_top/coef_update_dut/data_shift7 [13],\lsm_top/coef_update_dut/data_shift7 [13],\lsm_top/coef_update_dut/data_shift7 [13],\lsm_top/coef_update_dut/data_shift7 [13:0]}),
    .p(\lsm_top/coef_update_dut/mult7_syn_49_syn_1144 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(45))
    \lsm_top/coef_update_dut/mult8_syn_49/M_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/mult8_syn_49_syn_1315 ),
    .rst(resetSorce_dup_1),
    .q({\lsm_top/coef_update_dut/mult8_syn_49_syn_1383 [44:18],\lsm_top/coef_update_dut/coef8_reg [15:0],\lsm_top/coef_update_dut/mult8_syn_49_syn_1383 [1:0]}));
  PH1_PHY_DSPMULT
    \lsm_top/coef_update_dut/mult8_syn_49/_mult  (
    .opctrl(2'b11),
    .x({\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17:0]}),
    .y({\lsm_top/coef_update_dut/data_shift8 [13],\lsm_top/coef_update_dut/data_shift8 [13],\lsm_top/coef_update_dut/data_shift8 [13],\lsm_top/coef_update_dut/data_shift8 [13],\lsm_top/coef_update_dut/data_shift8 [13:0]}),
    .p(\lsm_top/coef_update_dut/mult8_syn_49_syn_1315 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(45))
    \lsm_top/coef_update_dut/mult9_syn_49/M_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/mult9_syn_49_syn_1486 ),
    .rst(resetSorce_dup_1),
    .q({\lsm_top/coef_update_dut/mult9_syn_49_syn_1554 [44:18],\lsm_top/coef_update_dut/coef9_reg [15:0],\lsm_top/coef_update_dut/mult9_syn_49_syn_1554 [1:0]}));
  PH1_PHY_DSPMULT
    \lsm_top/coef_update_dut/mult9_syn_49/_mult  (
    .opctrl(2'b11),
    .x({\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17],\lsm_top/coef_update_dut/mult0_syn_4 [17:0]}),
    .y({\lsm_top/coef_update_dut/data_shift9 [13],\lsm_top/coef_update_dut/data_shift9 [13],\lsm_top/coef_update_dut/data_shift9 [13],\lsm_top/coef_update_dut/data_shift9 [13],\lsm_top/coef_update_dut/data_shift9 [13:0]}),
    .p(\lsm_top/coef_update_dut/mult9_syn_49_syn_1486 ));
  AL_DFF_0 \lsm_top/coef_update_dut/reg0_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef1_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef1 [0]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg0_syn_19  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef1_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef1 [1]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg0_syn_20  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef1_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef1 [2]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg0_syn_21  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef1_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef1 [3]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg0_syn_22  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef1_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef1 [4]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg0_syn_23  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef1_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef1 [5]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg0_syn_24  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef1_b [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef1 [6]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg0_syn_25  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef1_b [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef1 [7]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg0_syn_26  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef1_b [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef1 [8]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg0_syn_27  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef1_b [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef1 [9]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg0_syn_28  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef1_b [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef1 [10]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg0_syn_29  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef1_b [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef1 [11]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg0_syn_30  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef1_b [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef1 [12]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg0_syn_31  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef1_b [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef1 [13]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg0_syn_32  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef1_b [14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef1 [14]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg0_syn_33  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef1_b [15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef1 [15]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg10_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef6_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef6 [0]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg10_syn_19  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef6_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef6 [1]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg10_syn_20  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef6_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef6 [2]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg10_syn_21  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef6_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef6 [3]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg10_syn_22  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef6_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef6 [4]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg10_syn_23  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef6_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef6 [5]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg10_syn_24  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef6_b [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef6 [6]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg10_syn_25  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef6_b [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef6 [7]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg10_syn_26  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef6_b [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef6 [8]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg10_syn_27  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef6_b [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef6 [9]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg10_syn_28  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef6_b [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef6 [10]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg10_syn_29  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef6_b [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef6 [11]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg10_syn_30  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef6_b [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef6 [12]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg10_syn_31  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef6_b [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef6 [13]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg10_syn_32  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef6_b [14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef6 [14]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg10_syn_33  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef6_b [15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef6 [15]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg12_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef7_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef7 [0]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg12_syn_19  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef7_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef7 [1]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg12_syn_20  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef7_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef7 [2]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg12_syn_21  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef7_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef7 [3]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg12_syn_22  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef7_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef7 [4]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg12_syn_23  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef7_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef7 [5]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg12_syn_24  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef7_b [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef7 [6]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg12_syn_25  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef7_b [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef7 [7]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg12_syn_26  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef7_b [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef7 [8]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg12_syn_27  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef7_b [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef7 [9]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg12_syn_28  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef7_b [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef7 [10]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg12_syn_29  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef7_b [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef7 [11]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg12_syn_30  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef7_b [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef7 [12]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg12_syn_31  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef7_b [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef7 [13]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg12_syn_32  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef7_b [14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef7 [14]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg12_syn_33  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef7_b [15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef7 [15]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg14_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef8_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef8 [0]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg14_syn_19  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef8_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef8 [1]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg14_syn_20  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef8_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef8 [2]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg14_syn_21  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef8_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef8 [3]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg14_syn_22  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef8_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef8 [4]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg14_syn_23  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef8_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef8 [5]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg14_syn_24  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef8_b [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef8 [6]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg14_syn_25  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef8_b [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef8 [7]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg14_syn_26  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef8_b [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef8 [8]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg14_syn_27  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef8_b [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef8 [9]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg14_syn_28  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef8_b [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef8 [10]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg14_syn_29  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef8_b [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef8 [11]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg14_syn_30  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef8_b [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef8 [12]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg14_syn_31  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef8_b [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef8 [13]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg14_syn_32  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef8_b [14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef8 [14]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg14_syn_33  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef8_b [15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef8 [15]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg16_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef9_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef9 [0]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg16_syn_19  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef9_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef9 [1]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg16_syn_20  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef9_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef9 [2]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg16_syn_21  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef9_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef9 [3]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg16_syn_22  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef9_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef9 [4]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg16_syn_23  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef9_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef9 [5]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg16_syn_24  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef9_b [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef9 [6]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg16_syn_25  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef9_b [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef9 [7]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg16_syn_26  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef9_b [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef9 [8]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg16_syn_27  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef9_b [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef9 [9]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg16_syn_28  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef9_b [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef9 [10]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg16_syn_29  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef9_b [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef9 [11]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg16_syn_30  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef9_b [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef9 [12]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg16_syn_31  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef9_b [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef9 [13]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg16_syn_32  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef9_b [14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef9 [14]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg16_syn_33  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef9_b [15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef9 [15]));  // ../../lms/coef_update.v(73)
  AL_DFF_X \lsm_top/coef_update_dut/reg18_syn_10  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\change/dataInput[1]_syn_2 [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift1 [8]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg18_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\change/dataInput [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift1 [0]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg18_syn_19  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\change/dataInput[1]_syn_2 [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift1 [2]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg18_syn_20  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\change/dataInput[1]_syn_2 [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift1 [4]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg18_syn_21  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\change/dataInput[1]_syn_2 [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift1 [6]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg18_syn_22  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\change/dataInput[1]_syn_2 [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift1 [7]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg18_syn_23  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\change/dataInput[1]_syn_2 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift1 [9]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg18_syn_24  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\change/dataInput[1]_syn_2 [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift1 [10]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg18_syn_25  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\change/dataInput[1]_syn_2 [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift1 [11]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg18_syn_26  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\change/dataInputComplement [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift1 [12]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg18_syn_27  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\change/dataInputComplement [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift1 [13]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg18_syn_3  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\change/dataInputComplement [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift1 [1]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg18_syn_5  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\change/dataInput[1]_syn_2 [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift1 [3]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg18_syn_7  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\change/dataInput[1]_syn_2 [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift1 [5]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg19_syn_10  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift1 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift2 [8]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg19_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift1 [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift2 [2]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg19_syn_19  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift1 [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift2 [4]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg19_syn_2  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift1 [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift2 [0]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg19_syn_20  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift1 [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift2 [6]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg19_syn_21  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift1 [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift2 [7]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg19_syn_22  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift1 [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift2 [9]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg19_syn_23  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift1 [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift2 [10]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg19_syn_24  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift1 [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift2 [11]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg19_syn_25  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift1 [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift2 [12]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg19_syn_26  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift1 [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift2 [13]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg19_syn_3  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift1 [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift2 [1]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg19_syn_5  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift1 [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift2 [3]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg19_syn_7  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift1 [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift2 [5]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg20_syn_10  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift2 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift3 [8]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg20_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift2 [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift3 [0]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg20_syn_19  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift2 [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift3 [1]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg20_syn_20  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift2 [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift3 [4]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg20_syn_21  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift2 [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift3 [6]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg20_syn_22  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift2 [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift3 [7]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg20_syn_23  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift2 [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift3 [9]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg20_syn_24  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift2 [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift3 [10]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg20_syn_25  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift2 [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift3 [11]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg20_syn_26  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift2 [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift3 [12]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg20_syn_27  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift2 [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift3 [13]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg20_syn_4  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift2 [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift3 [2]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg20_syn_5  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift2 [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift3 [3]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg20_syn_7  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift2 [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift3 [5]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg21_syn_10  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift3 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift4 [8]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg21_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift3 [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift4 [1]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg21_syn_19  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift3 [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift4 [4]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg21_syn_2  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift3 [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift4 [0]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg21_syn_20  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift3 [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift4 [6]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg21_syn_21  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift3 [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift4 [7]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg21_syn_22  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift3 [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift4 [9]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg21_syn_23  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift3 [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift4 [10]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg21_syn_24  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift3 [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift4 [11]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg21_syn_25  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift3 [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift4 [12]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg21_syn_26  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift3 [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift4 [13]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg21_syn_4  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift3 [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift4 [2]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg21_syn_5  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift3 [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift4 [3]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg21_syn_7  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift3 [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift4 [5]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg22_syn_10  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift4 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift5 [8]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg22_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift4 [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift5 [1]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg22_syn_19  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift4 [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift5 [4]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg22_syn_2  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift4 [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift5 [0]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg22_syn_20  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift4 [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift5 [6]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg22_syn_21  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift4 [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift5 [7]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg22_syn_22  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift4 [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift5 [9]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg22_syn_23  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift4 [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift5 [10]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg22_syn_24  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift4 [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift5 [11]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg22_syn_25  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift4 [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift5 [12]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg22_syn_26  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift4 [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift5 [13]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg22_syn_4  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift4 [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift5 [2]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg22_syn_5  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift4 [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift5 [3]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg22_syn_7  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift4 [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift5 [5]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg23_syn_10  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift5 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift6 [8]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg23_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift5 [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift6 [0]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg23_syn_19  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift5 [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift6 [4]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg23_syn_20  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift5 [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift6 [6]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg23_syn_21  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift5 [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift6 [7]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg23_syn_22  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift5 [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift6 [9]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg23_syn_23  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift5 [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift6 [10]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg23_syn_24  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift5 [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift6 [11]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg23_syn_25  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift5 [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift6 [12]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg23_syn_26  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift5 [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift6 [13]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg23_syn_3  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift5 [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift6 [1]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg23_syn_4  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift5 [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift6 [2]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg23_syn_5  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift5 [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift6 [3]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg23_syn_7  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift5 [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift6 [5]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg24_syn_10  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift6 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift7 [8]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg24_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift6 [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift7 [0]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg24_syn_19  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift6 [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift7 [1]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg24_syn_20  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift6 [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift7 [4]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg24_syn_21  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift6 [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift7 [6]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg24_syn_22  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift6 [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift7 [7]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg24_syn_23  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift6 [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift7 [9]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg24_syn_24  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift6 [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift7 [10]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg24_syn_25  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift6 [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift7 [11]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg24_syn_26  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift6 [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift7 [12]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg24_syn_27  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift6 [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift7 [13]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg24_syn_4  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift6 [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift7 [2]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg24_syn_5  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift6 [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift7 [3]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg24_syn_7  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift6 [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift7 [5]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg25_syn_10  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift7 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift8 [8]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg25_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift7 [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift8 [2]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg25_syn_19  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift7 [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift8 [4]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg25_syn_2  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift7 [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift8 [0]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg25_syn_20  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift7 [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift8 [6]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg25_syn_21  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift7 [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift8 [7]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg25_syn_22  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift7 [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift8 [9]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg25_syn_23  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift7 [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift8 [10]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg25_syn_24  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift7 [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift8 [11]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg25_syn_25  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift7 [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift8 [12]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg25_syn_26  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift7 [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift8 [13]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg25_syn_3  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift7 [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift8 [1]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg25_syn_5  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift7 [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift8 [3]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg25_syn_7  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift7 [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift8 [5]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg26_syn_10  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift8 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift9 [8]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg26_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift8 [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift9 [1]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg26_syn_19  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift8 [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift9 [2]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg26_syn_2  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift8 [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift9 [0]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg26_syn_20  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift8 [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift9 [4]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg26_syn_21  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift8 [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift9 [6]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg26_syn_22  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift8 [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift9 [7]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg26_syn_23  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift8 [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift9 [9]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg26_syn_24  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift8 [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift9 [10]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg26_syn_25  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift8 [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift9 [11]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg26_syn_26  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift8 [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift9 [12]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg26_syn_27  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift8 [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift9 [13]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg26_syn_5  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift8 [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift9 [3]));  // ../../lms/coef_update.v(33)
  AL_DFF_X \lsm_top/coef_update_dut/reg26_syn_7  (
    .ar(1'b0),
    .as(resetSorce_dup_1),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/data_shift8 [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/data_shift9 [5]));  // ../../lms/coef_update.v(33)
  AL_DFF_0 \lsm_top/coef_update_dut/reg2_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef2_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef2 [0]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg2_syn_19  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef2_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef2 [1]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg2_syn_20  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef2_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef2 [2]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg2_syn_21  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef2_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef2 [3]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg2_syn_22  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef2_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef2 [4]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg2_syn_23  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef2_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef2 [5]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg2_syn_24  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef2_b [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef2 [6]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg2_syn_25  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef2_b [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef2 [7]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg2_syn_26  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef2_b [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef2 [8]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg2_syn_27  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef2_b [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef2 [9]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg2_syn_28  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef2_b [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef2 [10]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg2_syn_29  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef2_b [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef2 [11]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg2_syn_30  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef2_b [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef2 [12]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg2_syn_31  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef2_b [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef2 [13]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg2_syn_32  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef2_b [14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef2 [14]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg2_syn_33  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef2_b [15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef2 [15]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg4_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef3_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef3 [0]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg4_syn_19  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef3_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef3 [1]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg4_syn_20  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef3_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef3 [2]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg4_syn_21  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef3_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef3 [3]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg4_syn_22  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef3_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef3 [4]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg4_syn_23  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef3_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef3 [5]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg4_syn_24  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef3_b [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef3 [6]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg4_syn_25  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef3_b [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef3 [7]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg4_syn_26  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef3_b [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef3 [8]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg4_syn_27  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef3_b [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef3 [9]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg4_syn_28  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef3_b [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef3 [10]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg4_syn_29  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef3_b [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef3 [11]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg4_syn_30  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef3_b [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef3 [12]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg4_syn_31  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef3_b [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef3 [13]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg4_syn_32  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef3_b [14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef3 [14]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg4_syn_33  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef3_b [15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef3 [15]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg6_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef4_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef4 [0]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg6_syn_19  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef4_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef4 [1]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg6_syn_20  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef4_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef4 [2]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg6_syn_21  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef4_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef4 [3]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg6_syn_22  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef4_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef4 [4]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg6_syn_23  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef4_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef4 [5]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg6_syn_24  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef4_b [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef4 [6]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg6_syn_25  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef4_b [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef4 [7]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg6_syn_26  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef4_b [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef4 [8]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg6_syn_27  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef4_b [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef4 [9]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg6_syn_28  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef4_b [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef4 [10]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg6_syn_29  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef4_b [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef4 [11]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg6_syn_30  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef4_b [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef4 [12]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg6_syn_31  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef4_b [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef4 [13]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg6_syn_32  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef4_b [14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef4 [14]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg6_syn_33  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef4_b [15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef4 [15]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg8_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef5_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef5 [0]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg8_syn_19  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef5_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef5 [1]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg8_syn_20  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef5_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef5 [2]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg8_syn_21  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef5_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef5 [3]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg8_syn_22  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef5_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef5 [4]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg8_syn_23  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef5_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef5 [5]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg8_syn_24  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef5_b [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef5 [6]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg8_syn_25  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef5_b [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef5 [7]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg8_syn_26  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef5_b [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef5 [8]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg8_syn_27  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef5_b [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef5 [9]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg8_syn_28  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef5_b [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef5 [10]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg8_syn_29  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef5_b [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef5 [11]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg8_syn_30  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef5_b [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef5 [12]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg8_syn_31  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef5_b [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef5 [13]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg8_syn_32  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef5_b [14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef5 [14]));  // ../../lms/coef_update.v(73)
  AL_DFF_0 \lsm_top/coef_update_dut/reg8_syn_33  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/coef_update_dut/coef5_b [15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/coef5 [15]));  // ../../lms/coef_update.v(73)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \lsm_top/div40/add0_syn_20  (
    .a(1'b0),
    .o({\lsm_top/div40/add0_syn_106 ,open_n596}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/div40/add0_syn_21  (
    .a(\lsm_top/div40/num [0]),
    .b(1'b1),
    .c(\lsm_top/div40/add0_syn_106 ),
    .o({\lsm_top/div40/add0_syn_107 ,\lsm_top/div40/num_b1 [0]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/div40/add0_syn_22  (
    .a(\lsm_top/div40/num [1]),
    .b(1'b0),
    .c(\lsm_top/div40/add0_syn_107 ),
    .o({\lsm_top/div40/add0_syn_108 ,\lsm_top/div40/num_b1 [1]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/div40/add0_syn_23  (
    .a(\lsm_top/div40/num [2]),
    .b(1'b0),
    .c(\lsm_top/div40/add0_syn_108 ),
    .o({\lsm_top/div40/add0_syn_109 ,\lsm_top/div40/num_b1 [2]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/div40/add0_syn_24  (
    .a(\lsm_top/div40/num [3]),
    .b(1'b0),
    .c(\lsm_top/div40/add0_syn_109 ),
    .o({\lsm_top/div40/add0_syn_110 ,\lsm_top/div40/num_b1 [3]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/div40/add0_syn_25  (
    .a(\lsm_top/div40/num [4]),
    .b(1'b0),
    .c(\lsm_top/div40/add0_syn_110 ),
    .o({\lsm_top/div40/add0_syn_111 ,\lsm_top/div40/num_b1 [4]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/div40/add0_syn_26  (
    .a(\lsm_top/div40/num [5]),
    .b(1'b0),
    .c(\lsm_top/div40/add0_syn_111 ),
    .o({\lsm_top/div40/add0_syn_112 ,\lsm_top/div40/num_b1 [5]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/div40/add0_syn_27  (
    .a(\lsm_top/div40/num [6]),
    .b(1'b0),
    .c(\lsm_top/div40/add0_syn_112 ),
    .o({\lsm_top/div40/add0_syn_113 ,\lsm_top/div40/num_b1 [6]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/div40/add0_syn_28  (
    .a(\lsm_top/div40/num [7]),
    .b(1'b0),
    .c(\lsm_top/div40/add0_syn_113 ),
    .o({\lsm_top/div40/add0_syn_114 ,\lsm_top/div40/num_b1 [7]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/div40/add0_syn_29  (
    .a(\lsm_top/div40/num [8]),
    .b(1'b0),
    .c(\lsm_top/div40/add0_syn_114 ),
    .o({\lsm_top/div40/add0_syn_115 ,\lsm_top/div40/num_b1 [8]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/div40/add0_syn_30  (
    .a(\lsm_top/div40/num [9]),
    .b(1'b0),
    .c(\lsm_top/div40/add0_syn_115 ),
    .o({\lsm_top/div40/add0_syn_116 ,\lsm_top/div40/num_b1 [9]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/div40/add0_syn_31  (
    .a(\lsm_top/div40/num [10]),
    .b(1'b0),
    .c(\lsm_top/div40/add0_syn_116 ),
    .o({\lsm_top/div40/add0_syn_117 ,\lsm_top/div40/num_b1 [10]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/div40/add0_syn_32  (
    .a(\lsm_top/div40/num [11]),
    .b(1'b0),
    .c(\lsm_top/div40/add0_syn_117 ),
    .o({\lsm_top/div40/add0_syn_118 ,\lsm_top/div40/num_b1 [11]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/div40/add0_syn_33  (
    .a(\lsm_top/div40/num [12]),
    .b(1'b0),
    .c(\lsm_top/div40/add0_syn_118 ),
    .o({\lsm_top/div40/add0_syn_119 ,\lsm_top/div40/num_b1 [12]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/div40/add0_syn_34  (
    .a(\lsm_top/div40/num [13]),
    .b(1'b0),
    .c(\lsm_top/div40/add0_syn_119 ),
    .o({\lsm_top/div40/add0_syn_120 ,\lsm_top/div40/num_b1 [13]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/div40/add0_syn_35  (
    .a(\lsm_top/div40/num [14]),
    .b(1'b0),
    .c(\lsm_top/div40/add0_syn_120 ),
    .o({\lsm_top/div40/add0_syn_121 ,\lsm_top/div40/num_b1 [14]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/div40/add0_syn_36  (
    .a(\lsm_top/div40/num [15]),
    .b(1'b0),
    .c(\lsm_top/div40/add0_syn_121 ),
    .o({\lsm_top/div40/add0_syn_122 ,\lsm_top/div40/num_b1 [15]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/div40/add0_syn_37  (
    .a(\lsm_top/div40/num [16]),
    .b(1'b0),
    .c(\lsm_top/div40/add0_syn_122 ),
    .o({\lsm_top/div40/add0_syn_123 ,\lsm_top/div40/num_b1 [16]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/div40/add0_syn_38  (
    .a(\lsm_top/div40/num [17]),
    .b(1'b0),
    .c(\lsm_top/div40/add0_syn_123 ),
    .o({\lsm_top/div40/add0_syn_124 ,\lsm_top/div40/num_b1 [17]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/div40/add0_syn_39  (
    .a(\lsm_top/div40/num [18]),
    .b(1'b0),
    .c(\lsm_top/div40/add0_syn_124 ),
    .o({\lsm_top/div40/add0_syn_125 ,\lsm_top/div40/num_b1 [18]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/div40/add0_syn_40  (
    .a(\lsm_top/div40/num [19]),
    .b(1'b0),
    .c(\lsm_top/div40/add0_syn_125 ),
    .o({\lsm_top/div40/add0_syn_126 ,\lsm_top/div40/num_b1 [19]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/div40/add0_syn_41  (
    .a(\lsm_top/div40/num [20]),
    .b(1'b0),
    .c(\lsm_top/div40/add0_syn_126 ),
    .o({open_n597,\lsm_top/div40/num_b1 [20]}));  // ../../lms/div.v(11)
  AL_MAP_LUT6 #(
    .EQN("(C*~(~F*~E*~D*B*A))"),
    .INIT(64'hf0f0f0f0f0f0f070))
    \lsm_top/div40/num_b[0]_syn_1  (
    .a(\lsm_top/div40/num_b[3]_syn_6 ),
    .b(\lsm_top/div40/num_b[3]_syn_8 ),
    .c(\lsm_top/div40/num_b1 [0]),
    .d(\lsm_top/div40/num [6]),
    .e(\lsm_top/div40/num [7]),
    .f(\lsm_top/div40/num [20]),
    .o(\lsm_top/div40/num_b [0]));
  AL_MAP_LUT6 #(
    .EQN("(~F*~E*~D*~C*~B*~A)"),
    .INIT(64'h0000000000000001))
    \lsm_top/div40/num_b[3]_syn_1  (
    .a(\lsm_top/div40/num [8]),
    .b(\lsm_top/div40/num [9]),
    .c(\lsm_top/div40/num [10]),
    .d(\lsm_top/div40/num [11]),
    .e(\lsm_top/div40/num [12]),
    .f(\lsm_top/div40/num [13]),
    .o(\lsm_top/div40/num_b[3]_syn_2 ));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*~A)"),
    .INIT(16'h0001))
    \lsm_top/div40/num_b[3]_syn_3  (
    .a(\lsm_top/div40/num [16]),
    .b(\lsm_top/div40/num [17]),
    .c(\lsm_top/div40/num [18]),
    .d(\lsm_top/div40/num [19]),
    .o(\lsm_top/div40/num_b[3]_syn_4 ));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*B*A)"),
    .INIT(16'h0008))
    \lsm_top/div40/num_b[3]_syn_5  (
    .a(\lsm_top/div40/num_b[3]_syn_2 ),
    .b(\lsm_top/div40/num_b[3]_syn_4 ),
    .c(\lsm_top/div40/num [14]),
    .d(\lsm_top/div40/num [15]),
    .o(\lsm_top/div40/num_b[3]_syn_6 ));
  AL_MAP_LUT6 #(
    .EQN("(F*~E*~D*C*B*A)"),
    .INIT(64'h0000008000000000))
    \lsm_top/div40/num_b[3]_syn_7  (
    .a(\lsm_top/div40/num [0]),
    .b(\lsm_top/div40/num [1]),
    .c(\lsm_top/div40/num [2]),
    .d(\lsm_top/div40/num [3]),
    .e(\lsm_top/div40/num [4]),
    .f(\lsm_top/div40/num [5]),
    .o(\lsm_top/div40/num_b[3]_syn_8 ));
  AL_MAP_LUT6 #(
    .EQN("(C*~(~F*~E*~D*B*A))"),
    .INIT(64'hf0f0f0f0f0f0f070))
    \lsm_top/div40/num_b[3]_syn_9  (
    .a(\lsm_top/div40/num_b[3]_syn_6 ),
    .b(\lsm_top/div40/num_b[3]_syn_8 ),
    .c(\lsm_top/div40/num_b1 [3]),
    .d(\lsm_top/div40/num [6]),
    .e(\lsm_top/div40/num [7]),
    .f(\lsm_top/div40/num [20]),
    .o(\lsm_top/div40/num_b [3]));
  AL_MAP_LUT6 #(
    .EQN("(C*~(~F*~E*~D*B*A))"),
    .INIT(64'hf0f0f0f0f0f0f070))
    \lsm_top/div40/num_b[5]_syn_1  (
    .a(\lsm_top/div40/num_b[3]_syn_6 ),
    .b(\lsm_top/div40/num_b[3]_syn_8 ),
    .c(\lsm_top/div40/num_b1 [5]),
    .d(\lsm_top/div40/num [6]),
    .e(\lsm_top/div40/num [7]),
    .f(\lsm_top/div40/num [20]),
    .o(\lsm_top/div40/num_b [5]));
  AL_MAP_LUT5 #(
    .EQN("(~E*~D*~C*B*A)"),
    .INIT(32'h00000008))
    \lsm_top/div40/out_n_syn_1  (
    .a(\lsm_top/div40/num_b[3]_syn_6 ),
    .b(\lsm_top/div40/num_b[3]_syn_8 ),
    .c(\lsm_top/div40/num [6]),
    .d(\lsm_top/div40/num [7]),
    .e(\lsm_top/div40/num [20]),
    .o(\lsm_top/div40/out_n ));
  AL_DFF_X \lsm_top/div40/out_reg  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/out_n ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/coef_update_dut/clk_i ));  // ../../lms/div.v(9)
  AL_DFF_X \lsm_top/div40/reg0_syn_10  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/num_b1 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/div40/num [8]));  // ../../lms/div.v(9)
  AL_DFF_X \lsm_top/div40/reg0_syn_11  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/num_b1 [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/div40/num [9]));  // ../../lms/div.v(9)
  AL_DFF_X \lsm_top/div40/reg0_syn_12  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/num_b1 [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/div40/num [10]));  // ../../lms/div.v(9)
  AL_DFF_X \lsm_top/div40/reg0_syn_13  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/num_b1 [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/div40/num [11]));  // ../../lms/div.v(9)
  AL_DFF_X \lsm_top/div40/reg0_syn_14  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/num_b1 [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/div40/num [12]));  // ../../lms/div.v(9)
  AL_DFF_X \lsm_top/div40/reg0_syn_15  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/num_b1 [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/div40/num [13]));  // ../../lms/div.v(9)
  AL_DFF_X \lsm_top/div40/reg0_syn_16  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/num_b1 [14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/div40/num [14]));  // ../../lms/div.v(9)
  AL_DFF_X \lsm_top/div40/reg0_syn_17  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/num_b1 [15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/div40/num [15]));  // ../../lms/div.v(9)
  AL_DFF_X \lsm_top/div40/reg0_syn_18  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/num_b1 [16]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/div40/num [16]));  // ../../lms/div.v(9)
  AL_DFF_X \lsm_top/div40/reg0_syn_19  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/num_b1 [17]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/div40/num [17]));  // ../../lms/div.v(9)
  AL_DFF_X \lsm_top/div40/reg0_syn_2  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/num_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/div40/num [0]));  // ../../lms/div.v(9)
  AL_DFF_X \lsm_top/div40/reg0_syn_20  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/num_b1 [18]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/div40/num [18]));  // ../../lms/div.v(9)
  AL_DFF_X \lsm_top/div40/reg0_syn_21  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/num_b1 [19]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/div40/num [19]));  // ../../lms/div.v(9)
  AL_DFF_X \lsm_top/div40/reg0_syn_22  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/num_b1 [20]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/div40/num [20]));  // ../../lms/div.v(9)
  AL_DFF_X \lsm_top/div40/reg0_syn_3  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/num_b1 [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/div40/num [1]));  // ../../lms/div.v(9)
  AL_DFF_X \lsm_top/div40/reg0_syn_4  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/num_b1 [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/div40/num [2]));  // ../../lms/div.v(9)
  AL_DFF_X \lsm_top/div40/reg0_syn_5  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/num_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/div40/num [3]));  // ../../lms/div.v(9)
  AL_DFF_X \lsm_top/div40/reg0_syn_6  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/num_b1 [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/div40/num [4]));  // ../../lms/div.v(9)
  AL_DFF_X \lsm_top/div40/reg0_syn_7  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/num_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/div40/num [5]));  // ../../lms/div.v(9)
  AL_DFF_X \lsm_top/div40/reg0_syn_8  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/num_b1 [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/div40/num [6]));  // ../../lms/div.v(9)
  AL_DFF_X \lsm_top/div40/reg0_syn_9  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/div40/clk ),
    .d(\lsm_top/div40/num_b1 [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/div40/num [7]));  // ../../lms/div.v(9)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB_CARRY"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_134  (
    .a(1'b0),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_200 ,open_n600}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_135  (
    .a(1'b0),
    .b(\change/dataInput [0]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_200 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_201 ,open_n601}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_136  (
    .a(1'b0),
    .b(\change/dataInputComplement_b3 [1]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_201 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_202 ,\change/dataInputComplement_b [1]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_137  (
    .a(1'b0),
    .b(\change/dataInputComplement_b3 [2]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_202 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_203 ,open_n602}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_138  (
    .a(1'b0),
    .b(\change/dataInputComplement_b3 [3]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_203 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_204 ,open_n603}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_139  (
    .a(1'b0),
    .b(\change/dataInputComplement_b3 [4]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_204 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_205 ,open_n604}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_140  (
    .a(1'b0),
    .b(\change/dataInputComplement_b3 [5]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_205 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_206 ,open_n605}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_141  (
    .a(1'b0),
    .b(\change/dataInputComplement_b3 [6]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_206 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_207 ,open_n606}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_142  (
    .a(1'b0),
    .b(\change/dataInputComplement_b3 [7]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_207 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_208 ,open_n607}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_143  (
    .a(1'b0),
    .b(\change/dataInputComplement_b3 [8]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_208 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_209 ,open_n608}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_144  (
    .a(1'b0),
    .b(\change/dataInputComplement_b3 [9]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_209 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_210 ,open_n609}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_145  (
    .a(1'b0),
    .b(\change/dataInputComplement_b3 [10]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_210 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_211 ,open_n610}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_146  (
    .a(1'b0),
    .b(\change/dataInputComplement_b3 [11]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_211 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_212 ,open_n611}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_147  (
    .a(1'b0),
    .b(\change/dataInputComplement_b3 [12]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_212 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_213 ,\change/dataInputComplement_b [12]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_148  (
    .a(1'b0),
    .b(\change/dataInputComplement_b3 [12]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_213 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_214 ,\change/dataInputComplement_b [13]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_149  (
    .a(1'b0),
    .b(\change/dataInputComplement_b3 [12]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_214 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_215 ,\change/dataInputComplement_b [14]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_150  (
    .a(1'b0),
    .b(\change/dataInputComplement_b3 [12]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_215 ),
    .o({open_n612,\change/dataInputComplement_b [15]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB_CARRY"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_234  (
    .a(1'b0),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_286 ,open_n615}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_235  (
    .a(1'b0),
    .b(\change/dataInput [0]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_286 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_287 ,open_n616}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_236  (
    .a(1'b1),
    .b(\change/dataInput [1]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_287 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_288 ,\change/dataInputComplement_b3 [1]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_237  (
    .a(1'b0),
    .b(\change/dataInput [2]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_288 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_289 ,\change/dataInputComplement_b3 [2]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_238  (
    .a(1'b0),
    .b(\change/dataInput [3]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_289 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_290 ,\change/dataInputComplement_b3 [3]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_239  (
    .a(1'b0),
    .b(\change/dataInput [4]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_290 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_291 ,\change/dataInputComplement_b3 [4]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_240  (
    .a(1'b0),
    .b(\change/dataInput [5]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_291 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_292 ,\change/dataInputComplement_b3 [5]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_241  (
    .a(1'b1),
    .b(\change/dataInput [6]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_292 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_293 ,\change/dataInputComplement_b3 [6]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_242  (
    .a(1'b1),
    .b(\change/dataInput [7]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_293 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_294 ,\change/dataInputComplement_b3 [7]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_243  (
    .a(1'b1),
    .b(\change/dataInput [8]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_294 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_295 ,\change/dataInputComplement_b3 [8]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_244  (
    .a(1'b0),
    .b(\change/dataInput [9]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_295 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_296 ,\change/dataInputComplement_b3 [9]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_245  (
    .a(1'b0),
    .b(\change/dataInput [10]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_296 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_297 ,\change/dataInputComplement_b3 [10]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_246  (
    .a(1'b0),
    .b(\change/dataInput [11]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_297 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_298 ,\change/dataInputComplement_b3 [11]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_247  (
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_298 ),
    .o({open_n619,\change/dataInputComplement_b3 [12]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB_CARRY"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_325  (
    .a(1'b0),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_391 ,open_n622}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_326  (
    .a(1'b0),
    .b(\change/dataInput [0]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_391 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_392 ,\lsm_top/error_calcu_dut/error [0]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_327  (
    .a(\lsm_top/error_calcu_dut/data_shift9 [8]),
    .b(\change/dataInputComplement [1]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_392 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_393 ,\lsm_top/error_calcu_dut/error [1]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_328  (
    .a(1'b0),
    .b(\change/dataInput[1]_syn_2 [1]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_393 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_394 ,\lsm_top/error_calcu_dut/error [2]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_329  (
    .a(\lsm_top/error_calcu_dut/data_shift9 [8]),
    .b(\change/dataInput[1]_syn_2 [2]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_394 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_395 ,\lsm_top/error_calcu_dut/error [3]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_330  (
    .a(1'b0),
    .b(\change/dataInput[1]_syn_2 [3]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_395 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_396 ,\lsm_top/error_calcu_dut/error [4]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_331  (
    .a(\lsm_top/error_calcu_dut/data_shift9 [8]),
    .b(\change/dataInput[1]_syn_2 [4]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_396 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_397 ,\lsm_top/error_calcu_dut/error [5]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_332  (
    .a(1'b0),
    .b(\change/dataInput[1]_syn_2 [5]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_397 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_398 ,\lsm_top/error_calcu_dut/error [6]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_333  (
    .a(1'b0),
    .b(\change/dataInput[1]_syn_2 [6]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_398 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_399 ,\lsm_top/error_calcu_dut/error [7]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_334  (
    .a(\lsm_top/error_calcu_dut/data_shift9 [8]),
    .b(\change/dataInput[1]_syn_2 [7]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_399 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_400 ,\lsm_top/error_calcu_dut/error [8]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_335  (
    .a(1'b0),
    .b(\change/dataInput[1]_syn_2 [8]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_400 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_401 ,\lsm_top/error_calcu_dut/error [9]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_336  (
    .a(1'b0),
    .b(\change/dataInput[1]_syn_2 [9]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_401 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_402 ,\lsm_top/error_calcu_dut/error [10]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_337  (
    .a(1'b0),
    .b(\change/dataInput[1]_syn_2 [10]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_402 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_403 ,\lsm_top/error_calcu_dut/error [11]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_338  (
    .a(1'b0),
    .b(\change/dataInputComplement [12]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_403 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_404 ,\lsm_top/error_calcu_dut/error [12]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_339  (
    .a(1'b0),
    .b(\change/dataInputComplement [13]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_404 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_405 ,\lsm_top/error_calcu_dut/error [13]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_340  (
    .a(1'b0),
    .b(\change/dataInputComplement [14]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_405 ),
    .o({\lsm_top/error_calcu_dut/data_ref[0]_syn_406 ,\lsm_top/error_calcu_dut/error [14]}));  // ../../lms/error_calcu.v(5)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \lsm_top/error_calcu_dut/data_ref[0]_syn_341  (
    .a(1'b0),
    .b(\change/dataInputComplement [15]),
    .c(\lsm_top/error_calcu_dut/data_ref[0]_syn_406 ),
    .o({open_n623,\lsm_top/error_calcu_dut/error [15]}));  // ../../lms/error_calcu.v(5)
  AL_DFF_0 \lsm_top/error_calcu_dut/reg0_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(1'b1),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/error_calcu_dut/data_shift1 [8]));  // ../../lms/error_calcu.v(24)
  AL_DFF_0 \lsm_top/error_calcu_dut/reg1_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/error_calcu_dut/data_shift1 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/error_calcu_dut/data_shift2 [8]));  // ../../lms/error_calcu.v(24)
  AL_DFF_0 \lsm_top/error_calcu_dut/reg2_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/error_calcu_dut/data_shift2 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/error_calcu_dut/data_shift3 [8]));  // ../../lms/error_calcu.v(24)
  AL_DFF_0 \lsm_top/error_calcu_dut/reg3_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/error_calcu_dut/data_shift3 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/error_calcu_dut/data_shift4 [8]));  // ../../lms/error_calcu.v(24)
  AL_DFF_0 \lsm_top/error_calcu_dut/reg4_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/error_calcu_dut/data_shift4 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/error_calcu_dut/data_shift5 [8]));  // ../../lms/error_calcu.v(24)
  AL_DFF_0 \lsm_top/error_calcu_dut/reg5_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/error_calcu_dut/data_shift5 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/error_calcu_dut/data_shift6 [8]));  // ../../lms/error_calcu.v(24)
  AL_DFF_0 \lsm_top/error_calcu_dut/reg6_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/error_calcu_dut/data_shift6 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/error_calcu_dut/data_shift7 [8]));  // ../../lms/error_calcu.v(24)
  AL_DFF_0 \lsm_top/error_calcu_dut/reg7_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/error_calcu_dut/data_shift7 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/error_calcu_dut/data_shift8 [8]));  // ../../lms/error_calcu.v(24)
  AL_DFF_0 \lsm_top/error_calcu_dut/reg8_syn_18  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/error_calcu_dut/data_shift8 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/error_calcu_dut/data_shift9 [8]));  // ../../lms/error_calcu.v(24)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_10  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [4]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [4]),
    .c(\lsm_top/fir_dut/add4_syn_147 ),
    .o({\lsm_top/fir_dut/add4_syn_148 ,\lsm_top/fir_dut/adder_data_two_1_b [4]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_11  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [5]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [5]),
    .c(\lsm_top/fir_dut/add4_syn_148 ),
    .o({\lsm_top/fir_dut/add4_syn_149 ,\lsm_top/fir_dut/adder_data_two_1_b [5]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_12  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [6]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [6]),
    .c(\lsm_top/fir_dut/add4_syn_149 ),
    .o({\lsm_top/fir_dut/add4_syn_150 ,\lsm_top/fir_dut/adder_data_two_1_b [6]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_13  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [7]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [7]),
    .c(\lsm_top/fir_dut/add4_syn_150 ),
    .o({\lsm_top/fir_dut/add4_syn_151 ,\lsm_top/fir_dut/adder_data_two_1_b [7]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_14  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [8]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [8]),
    .c(\lsm_top/fir_dut/add4_syn_151 ),
    .o({\lsm_top/fir_dut/add4_syn_152 ,\lsm_top/fir_dut/adder_data_two_1_b [8]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_15  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [9]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [9]),
    .c(\lsm_top/fir_dut/add4_syn_152 ),
    .o({\lsm_top/fir_dut/add4_syn_153 ,\lsm_top/fir_dut/adder_data_two_1_b [9]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_16  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [10]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [10]),
    .c(\lsm_top/fir_dut/add4_syn_153 ),
    .o({\lsm_top/fir_dut/add4_syn_154 ,\lsm_top/fir_dut/adder_data_two_1_b [10]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_17  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [11]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [11]),
    .c(\lsm_top/fir_dut/add4_syn_154 ),
    .o({\lsm_top/fir_dut/add4_syn_155 ,\lsm_top/fir_dut/adder_data_two_1_b [11]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_18  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [12]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [12]),
    .c(\lsm_top/fir_dut/add4_syn_155 ),
    .o({\lsm_top/fir_dut/add4_syn_156 ,\lsm_top/fir_dut/adder_data_two_1_b [12]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_19  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [13]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [13]),
    .c(\lsm_top/fir_dut/add4_syn_156 ),
    .o({\lsm_top/fir_dut/add4_syn_157 ,\lsm_top/fir_dut/adder_data_two_1_b [13]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_20  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [14]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [14]),
    .c(\lsm_top/fir_dut/add4_syn_157 ),
    .o({\lsm_top/fir_dut/add4_syn_158 ,\lsm_top/fir_dut/adder_data_two_1_b [14]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_21  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [15]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [15]),
    .c(\lsm_top/fir_dut/add4_syn_158 ),
    .o({\lsm_top/fir_dut/add4_syn_159 ,\lsm_top/fir_dut/adder_data_two_1_b [15]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_22  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [16]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [16]),
    .c(\lsm_top/fir_dut/add4_syn_159 ),
    .o({\lsm_top/fir_dut/add4_syn_160 ,\lsm_top/fir_dut/adder_data_two_1_b [16]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_23  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [17]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [17]),
    .c(\lsm_top/fir_dut/add4_syn_160 ),
    .o({\lsm_top/fir_dut/add4_syn_161 ,\lsm_top/fir_dut/adder_data_two_1_b [17]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_24  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [18]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [18]),
    .c(\lsm_top/fir_dut/add4_syn_161 ),
    .o({\lsm_top/fir_dut/add4_syn_162 ,\lsm_top/fir_dut/adder_data_two_1_b [18]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_25  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [19]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [19]),
    .c(\lsm_top/fir_dut/add4_syn_162 ),
    .o({\lsm_top/fir_dut/add4_syn_163 ,\lsm_top/fir_dut/adder_data_two_1_b [19]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_26  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [20]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [20]),
    .c(\lsm_top/fir_dut/add4_syn_163 ),
    .o({\lsm_top/fir_dut/add4_syn_164 ,\lsm_top/fir_dut/adder_data_two_1_b [20]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_27  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [21]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [21]),
    .c(\lsm_top/fir_dut/add4_syn_164 ),
    .o({\lsm_top/fir_dut/add4_syn_165 ,\lsm_top/fir_dut/adder_data_two_1_b [21]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_28  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [22]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [22]),
    .c(\lsm_top/fir_dut/add4_syn_165 ),
    .o({\lsm_top/fir_dut/add4_syn_166 ,\lsm_top/fir_dut/adder_data_two_1_b [22]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_29  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [23]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [23]),
    .c(\lsm_top/fir_dut/add4_syn_166 ),
    .o({\lsm_top/fir_dut/add4_syn_167 ,\lsm_top/fir_dut/adder_data_two_1_b [23]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_30  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [24]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [24]),
    .c(\lsm_top/fir_dut/add4_syn_167 ),
    .o({\lsm_top/fir_dut/add4_syn_168 ,\lsm_top/fir_dut/adder_data_two_1_b [24]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_31  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [25]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [25]),
    .c(\lsm_top/fir_dut/add4_syn_168 ),
    .o({\lsm_top/fir_dut/add4_syn_169 ,\lsm_top/fir_dut/adder_data_two_1_b [25]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_32  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [26]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [26]),
    .c(\lsm_top/fir_dut/add4_syn_169 ),
    .o({\lsm_top/fir_dut/add4_syn_170 ,\lsm_top/fir_dut/adder_data_two_1_b [26]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_33  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [27]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [27]),
    .c(\lsm_top/fir_dut/add4_syn_170 ),
    .o({\lsm_top/fir_dut/add4_syn_171 ,\lsm_top/fir_dut/adder_data_two_1_b [27]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_34  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [28]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [28]),
    .c(\lsm_top/fir_dut/add4_syn_171 ),
    .o({\lsm_top/fir_dut/add4_syn_172 ,\lsm_top/fir_dut/adder_data_two_1_b [28]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_35  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [29]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [29]),
    .c(\lsm_top/fir_dut/add4_syn_172 ),
    .o({\lsm_top/fir_dut/add4_syn_173 ,\lsm_top/fir_dut/adder_data_two_1_b [29]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_36  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [30]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [30]),
    .c(\lsm_top/fir_dut/add4_syn_173 ),
    .o({\lsm_top/fir_dut/add4_syn_174 ,\lsm_top/fir_dut/adder_data_two_1_b [30]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_37  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [31]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [31]),
    .c(\lsm_top/fir_dut/add4_syn_174 ),
    .o({\lsm_top/fir_dut/add4_syn_175 ,\lsm_top/fir_dut/adder_data_two_1_b [31]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_38  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [32]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [32]),
    .c(\lsm_top/fir_dut/add4_syn_175 ),
    .o({\lsm_top/fir_dut/add4_syn_176 ,\lsm_top/fir_dut/adder_data_two_1_b [32]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_39  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [32]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [32]),
    .c(\lsm_top/fir_dut/add4_syn_176 ),
    .o({open_n624,\lsm_top/fir_dut/adder_data_two_1_b [33]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \lsm_top/fir_dut/add4_syn_5  (
    .a(1'b0),
    .o({\lsm_top/fir_dut/add4_syn_143 ,open_n627}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_6  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [0]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [0]),
    .c(\lsm_top/fir_dut/add4_syn_143 ),
    .o({\lsm_top/fir_dut/add4_syn_144 ,\lsm_top/fir_dut/adder_data_two_1_b [0]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_7  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [1]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [1]),
    .c(\lsm_top/fir_dut/add4_syn_144 ),
    .o({\lsm_top/fir_dut/add4_syn_145 ,\lsm_top/fir_dut/adder_data_two_1_b [1]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_8  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [2]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [2]),
    .c(\lsm_top/fir_dut/add4_syn_145 ),
    .o({\lsm_top/fir_dut/add4_syn_146 ,\lsm_top/fir_dut/adder_data_two_1_b [2]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add4_syn_9  (
    .a(\lsm_top/fir_dut/adder_data_one_1 [3]),
    .b(\lsm_top/fir_dut/adder_data_one_2 [3]),
    .c(\lsm_top/fir_dut/add4_syn_146 ),
    .o({\lsm_top/fir_dut/add4_syn_147 ,\lsm_top/fir_dut/adder_data_two_1_b [3]}));  // ../../lms/fir.v(150)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_10  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [4]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [4]),
    .c(\lsm_top/fir_dut/add5_syn_147 ),
    .o({\lsm_top/fir_dut/add5_syn_148 ,\lsm_top/fir_dut/adder_data_two_2_b [4]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_11  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [5]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [5]),
    .c(\lsm_top/fir_dut/add5_syn_148 ),
    .o({\lsm_top/fir_dut/add5_syn_149 ,\lsm_top/fir_dut/adder_data_two_2_b [5]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_12  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [6]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [6]),
    .c(\lsm_top/fir_dut/add5_syn_149 ),
    .o({\lsm_top/fir_dut/add5_syn_150 ,\lsm_top/fir_dut/adder_data_two_2_b [6]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_13  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [7]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [7]),
    .c(\lsm_top/fir_dut/add5_syn_150 ),
    .o({\lsm_top/fir_dut/add5_syn_151 ,\lsm_top/fir_dut/adder_data_two_2_b [7]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_14  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [8]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [8]),
    .c(\lsm_top/fir_dut/add5_syn_151 ),
    .o({\lsm_top/fir_dut/add5_syn_152 ,\lsm_top/fir_dut/adder_data_two_2_b [8]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_15  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [9]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [9]),
    .c(\lsm_top/fir_dut/add5_syn_152 ),
    .o({\lsm_top/fir_dut/add5_syn_153 ,\lsm_top/fir_dut/adder_data_two_2_b [9]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_16  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [10]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [10]),
    .c(\lsm_top/fir_dut/add5_syn_153 ),
    .o({\lsm_top/fir_dut/add5_syn_154 ,\lsm_top/fir_dut/adder_data_two_2_b [10]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_17  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [11]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [11]),
    .c(\lsm_top/fir_dut/add5_syn_154 ),
    .o({\lsm_top/fir_dut/add5_syn_155 ,\lsm_top/fir_dut/adder_data_two_2_b [11]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_18  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [12]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [12]),
    .c(\lsm_top/fir_dut/add5_syn_155 ),
    .o({\lsm_top/fir_dut/add5_syn_156 ,\lsm_top/fir_dut/adder_data_two_2_b [12]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_19  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [13]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [13]),
    .c(\lsm_top/fir_dut/add5_syn_156 ),
    .o({\lsm_top/fir_dut/add5_syn_157 ,\lsm_top/fir_dut/adder_data_two_2_b [13]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_20  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [14]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [14]),
    .c(\lsm_top/fir_dut/add5_syn_157 ),
    .o({\lsm_top/fir_dut/add5_syn_158 ,\lsm_top/fir_dut/adder_data_two_2_b [14]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_21  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [15]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [15]),
    .c(\lsm_top/fir_dut/add5_syn_158 ),
    .o({\lsm_top/fir_dut/add5_syn_159 ,\lsm_top/fir_dut/adder_data_two_2_b [15]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_22  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [16]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [16]),
    .c(\lsm_top/fir_dut/add5_syn_159 ),
    .o({\lsm_top/fir_dut/add5_syn_160 ,\lsm_top/fir_dut/adder_data_two_2_b [16]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_23  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [17]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [17]),
    .c(\lsm_top/fir_dut/add5_syn_160 ),
    .o({\lsm_top/fir_dut/add5_syn_161 ,\lsm_top/fir_dut/adder_data_two_2_b [17]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_24  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [18]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [18]),
    .c(\lsm_top/fir_dut/add5_syn_161 ),
    .o({\lsm_top/fir_dut/add5_syn_162 ,\lsm_top/fir_dut/adder_data_two_2_b [18]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_25  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [19]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [19]),
    .c(\lsm_top/fir_dut/add5_syn_162 ),
    .o({\lsm_top/fir_dut/add5_syn_163 ,\lsm_top/fir_dut/adder_data_two_2_b [19]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_26  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [20]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [20]),
    .c(\lsm_top/fir_dut/add5_syn_163 ),
    .o({\lsm_top/fir_dut/add5_syn_164 ,\lsm_top/fir_dut/adder_data_two_2_b [20]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_27  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [21]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [21]),
    .c(\lsm_top/fir_dut/add5_syn_164 ),
    .o({\lsm_top/fir_dut/add5_syn_165 ,\lsm_top/fir_dut/adder_data_two_2_b [21]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_28  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [22]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [22]),
    .c(\lsm_top/fir_dut/add5_syn_165 ),
    .o({\lsm_top/fir_dut/add5_syn_166 ,\lsm_top/fir_dut/adder_data_two_2_b [22]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_29  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [23]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [23]),
    .c(\lsm_top/fir_dut/add5_syn_166 ),
    .o({\lsm_top/fir_dut/add5_syn_167 ,\lsm_top/fir_dut/adder_data_two_2_b [23]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_30  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [24]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [24]),
    .c(\lsm_top/fir_dut/add5_syn_167 ),
    .o({\lsm_top/fir_dut/add5_syn_168 ,\lsm_top/fir_dut/adder_data_two_2_b [24]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_31  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [25]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [25]),
    .c(\lsm_top/fir_dut/add5_syn_168 ),
    .o({\lsm_top/fir_dut/add5_syn_169 ,\lsm_top/fir_dut/adder_data_two_2_b [25]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_32  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [26]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [26]),
    .c(\lsm_top/fir_dut/add5_syn_169 ),
    .o({\lsm_top/fir_dut/add5_syn_170 ,\lsm_top/fir_dut/adder_data_two_2_b [26]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_33  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [27]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [27]),
    .c(\lsm_top/fir_dut/add5_syn_170 ),
    .o({\lsm_top/fir_dut/add5_syn_171 ,\lsm_top/fir_dut/adder_data_two_2_b [27]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_34  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [28]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [28]),
    .c(\lsm_top/fir_dut/add5_syn_171 ),
    .o({\lsm_top/fir_dut/add5_syn_172 ,\lsm_top/fir_dut/adder_data_two_2_b [28]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_35  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [29]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [29]),
    .c(\lsm_top/fir_dut/add5_syn_172 ),
    .o({\lsm_top/fir_dut/add5_syn_173 ,\lsm_top/fir_dut/adder_data_two_2_b [29]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_36  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [30]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [30]),
    .c(\lsm_top/fir_dut/add5_syn_173 ),
    .o({\lsm_top/fir_dut/add5_syn_174 ,\lsm_top/fir_dut/adder_data_two_2_b [30]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_37  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [31]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [31]),
    .c(\lsm_top/fir_dut/add5_syn_174 ),
    .o({\lsm_top/fir_dut/add5_syn_175 ,\lsm_top/fir_dut/adder_data_two_2_b [31]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_38  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [32]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [32]),
    .c(\lsm_top/fir_dut/add5_syn_175 ),
    .o({\lsm_top/fir_dut/add5_syn_176 ,\lsm_top/fir_dut/adder_data_two_2_b [32]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_39  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [32]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [32]),
    .c(\lsm_top/fir_dut/add5_syn_176 ),
    .o({open_n628,\lsm_top/fir_dut/adder_data_two_2_b [33]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \lsm_top/fir_dut/add5_syn_5  (
    .a(1'b0),
    .o({\lsm_top/fir_dut/add5_syn_143 ,open_n631}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_6  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [0]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [0]),
    .c(\lsm_top/fir_dut/add5_syn_143 ),
    .o({\lsm_top/fir_dut/add5_syn_144 ,\lsm_top/fir_dut/adder_data_two_2_b [0]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_7  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [1]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [1]),
    .c(\lsm_top/fir_dut/add5_syn_144 ),
    .o({\lsm_top/fir_dut/add5_syn_145 ,\lsm_top/fir_dut/adder_data_two_2_b [1]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_8  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [2]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [2]),
    .c(\lsm_top/fir_dut/add5_syn_145 ),
    .o({\lsm_top/fir_dut/add5_syn_146 ,\lsm_top/fir_dut/adder_data_two_2_b [2]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add5_syn_9  (
    .a(\lsm_top/fir_dut/adder_data_one_3 [3]),
    .b(\lsm_top/fir_dut/adder_data_one_4 [3]),
    .c(\lsm_top/fir_dut/add5_syn_146 ),
    .o({\lsm_top/fir_dut/add5_syn_147 ,\lsm_top/fir_dut/adder_data_two_2_b [3]}));  // ../../lms/fir.v(151)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_10  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [3]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [3]),
    .c(\lsm_top/fir_dut/add6_syn_151 ),
    .o({\lsm_top/fir_dut/add6_syn_152 ,\lsm_top/fir_dut/adder_data_three_1_b [3]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_11  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [4]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [4]),
    .c(\lsm_top/fir_dut/add6_syn_152 ),
    .o({\lsm_top/fir_dut/add6_syn_153 ,\lsm_top/fir_dut/adder_data_three_1_b [4]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_12  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [5]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [5]),
    .c(\lsm_top/fir_dut/add6_syn_153 ),
    .o({\lsm_top/fir_dut/add6_syn_154 ,\lsm_top/fir_dut/adder_data_three_1_b [5]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_13  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [6]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [6]),
    .c(\lsm_top/fir_dut/add6_syn_154 ),
    .o({\lsm_top/fir_dut/add6_syn_155 ,\lsm_top/fir_dut/adder_data_three_1_b [6]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_14  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [7]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [7]),
    .c(\lsm_top/fir_dut/add6_syn_155 ),
    .o({\lsm_top/fir_dut/add6_syn_156 ,\lsm_top/fir_dut/adder_data_three_1_b [7]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_15  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [8]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [8]),
    .c(\lsm_top/fir_dut/add6_syn_156 ),
    .o({\lsm_top/fir_dut/add6_syn_157 ,\lsm_top/fir_dut/adder_data_three_1_b [8]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_16  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [9]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [9]),
    .c(\lsm_top/fir_dut/add6_syn_157 ),
    .o({\lsm_top/fir_dut/add6_syn_158 ,\lsm_top/fir_dut/adder_data_three_1_b [9]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_17  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [10]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [10]),
    .c(\lsm_top/fir_dut/add6_syn_158 ),
    .o({\lsm_top/fir_dut/add6_syn_159 ,\lsm_top/fir_dut/adder_data_three_1_b [10]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_18  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [11]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [11]),
    .c(\lsm_top/fir_dut/add6_syn_159 ),
    .o({\lsm_top/fir_dut/add6_syn_160 ,\lsm_top/fir_dut/adder_data_three_1_b [11]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_19  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [12]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [12]),
    .c(\lsm_top/fir_dut/add6_syn_160 ),
    .o({\lsm_top/fir_dut/add6_syn_161 ,\lsm_top/fir_dut/adder_data_three_1_b [12]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_20  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [13]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [13]),
    .c(\lsm_top/fir_dut/add6_syn_161 ),
    .o({\lsm_top/fir_dut/add6_syn_162 ,\lsm_top/fir_dut/adder_data_three_1_b [13]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_21  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [14]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [14]),
    .c(\lsm_top/fir_dut/add6_syn_162 ),
    .o({\lsm_top/fir_dut/add6_syn_163 ,\lsm_top/fir_dut/adder_data_three_1_b [14]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_22  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [15]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [15]),
    .c(\lsm_top/fir_dut/add6_syn_163 ),
    .o({\lsm_top/fir_dut/add6_syn_164 ,\lsm_top/fir_dut/adder_data_three_1_b [15]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_23  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [16]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [16]),
    .c(\lsm_top/fir_dut/add6_syn_164 ),
    .o({\lsm_top/fir_dut/add6_syn_165 ,\lsm_top/fir_dut/adder_data_three_1_b [16]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_24  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [17]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [17]),
    .c(\lsm_top/fir_dut/add6_syn_165 ),
    .o({\lsm_top/fir_dut/add6_syn_166 ,\lsm_top/fir_dut/adder_data_three_1_b [17]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_25  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [18]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [18]),
    .c(\lsm_top/fir_dut/add6_syn_166 ),
    .o({\lsm_top/fir_dut/add6_syn_167 ,\lsm_top/fir_dut/adder_data_three_1_b [18]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_26  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [19]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [19]),
    .c(\lsm_top/fir_dut/add6_syn_167 ),
    .o({\lsm_top/fir_dut/add6_syn_168 ,\lsm_top/fir_dut/adder_data_three_1_b [19]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_27  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [20]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [20]),
    .c(\lsm_top/fir_dut/add6_syn_168 ),
    .o({\lsm_top/fir_dut/add6_syn_169 ,\lsm_top/fir_dut/adder_data_three_1_b [20]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_28  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [21]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [21]),
    .c(\lsm_top/fir_dut/add6_syn_169 ),
    .o({\lsm_top/fir_dut/add6_syn_170 ,\lsm_top/fir_dut/adder_data_three_1_b [21]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_29  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [22]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [22]),
    .c(\lsm_top/fir_dut/add6_syn_170 ),
    .o({\lsm_top/fir_dut/add6_syn_171 ,\lsm_top/fir_dut/adder_data_three_1_b [22]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_30  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [23]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [23]),
    .c(\lsm_top/fir_dut/add6_syn_171 ),
    .o({\lsm_top/fir_dut/add6_syn_172 ,\lsm_top/fir_dut/adder_data_three_1_b [23]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_31  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [24]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [24]),
    .c(\lsm_top/fir_dut/add6_syn_172 ),
    .o({\lsm_top/fir_dut/add6_syn_173 ,\lsm_top/fir_dut/adder_data_three_1_b [24]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_32  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [25]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [25]),
    .c(\lsm_top/fir_dut/add6_syn_173 ),
    .o({\lsm_top/fir_dut/add6_syn_174 ,\lsm_top/fir_dut/adder_data_three_1_b [25]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_33  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [26]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [26]),
    .c(\lsm_top/fir_dut/add6_syn_174 ),
    .o({\lsm_top/fir_dut/add6_syn_175 ,\lsm_top/fir_dut/adder_data_three_1_b [26]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_34  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [27]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [27]),
    .c(\lsm_top/fir_dut/add6_syn_175 ),
    .o({\lsm_top/fir_dut/add6_syn_176 ,\lsm_top/fir_dut/adder_data_three_1_b [27]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_35  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [28]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [28]),
    .c(\lsm_top/fir_dut/add6_syn_176 ),
    .o({\lsm_top/fir_dut/add6_syn_177 ,\lsm_top/fir_dut/adder_data_three_1_b [28]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_36  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [29]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [29]),
    .c(\lsm_top/fir_dut/add6_syn_177 ),
    .o({\lsm_top/fir_dut/add6_syn_178 ,\lsm_top/fir_dut/adder_data_three_1_b [29]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_37  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [30]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [30]),
    .c(\lsm_top/fir_dut/add6_syn_178 ),
    .o({\lsm_top/fir_dut/add6_syn_179 ,\lsm_top/fir_dut/adder_data_three_1_b [30]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_38  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [31]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [31]),
    .c(\lsm_top/fir_dut/add6_syn_179 ),
    .o({\lsm_top/fir_dut/add6_syn_180 ,\lsm_top/fir_dut/adder_data_three_1_b [31]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_39  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [32]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [32]),
    .c(\lsm_top/fir_dut/add6_syn_180 ),
    .o({\lsm_top/fir_dut/add6_syn_181 ,\lsm_top/fir_dut/adder_data_three_1_b [32]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_40  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [33]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [33]),
    .c(\lsm_top/fir_dut/add6_syn_181 ),
    .o({\lsm_top/fir_dut/add6_syn_182 ,\lsm_top/fir_dut/adder_data_three_1_b [33]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_41  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [33]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [33]),
    .c(\lsm_top/fir_dut/add6_syn_182 ),
    .o({open_n632,\lsm_top/fir_dut/adder_data_three_1_b [34]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \lsm_top/fir_dut/add6_syn_6  (
    .a(1'b0),
    .o({\lsm_top/fir_dut/add6_syn_148 ,open_n635}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_7  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [0]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [0]),
    .c(\lsm_top/fir_dut/add6_syn_148 ),
    .o({\lsm_top/fir_dut/add6_syn_149 ,\lsm_top/fir_dut/adder_data_three_1_b [0]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_8  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [1]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [1]),
    .c(\lsm_top/fir_dut/add6_syn_149 ),
    .o({\lsm_top/fir_dut/add6_syn_150 ,\lsm_top/fir_dut/adder_data_three_1_b [1]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add6_syn_9  (
    .a(\lsm_top/fir_dut/adder_data_two_1 [2]),
    .b(\lsm_top/fir_dut/adder_data_two_2 [2]),
    .c(\lsm_top/fir_dut/add6_syn_150 ),
    .o({\lsm_top/fir_dut/add6_syn_151 ,\lsm_top/fir_dut/adder_data_three_1_b [2]}));  // ../../lms/fir.v(154)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_10  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [0]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [0]),
    .c(\lsm_top/fir_dut/add7_syn_155 ),
    .o({\lsm_top/fir_dut/add7_syn_156 ,open_n636}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_11  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [1]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [1]),
    .c(\lsm_top/fir_dut/add7_syn_156 ),
    .o({\lsm_top/fir_dut/add7_syn_157 ,open_n637}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_12  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [2]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [2]),
    .c(\lsm_top/fir_dut/add7_syn_157 ),
    .o({\lsm_top/fir_dut/add7_syn_158 ,open_n638}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_13  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [3]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [3]),
    .c(\lsm_top/fir_dut/add7_syn_158 ),
    .o({\lsm_top/fir_dut/add7_syn_159 ,open_n639}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_14  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [4]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [4]),
    .c(\lsm_top/fir_dut/add7_syn_159 ),
    .o({\lsm_top/fir_dut/add7_syn_160 ,open_n640}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_15  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [5]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [5]),
    .c(\lsm_top/fir_dut/add7_syn_160 ),
    .o({\lsm_top/fir_dut/add7_syn_161 ,open_n641}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_16  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [6]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [6]),
    .c(\lsm_top/fir_dut/add7_syn_161 ),
    .o({\lsm_top/fir_dut/add7_syn_162 ,open_n642}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_17  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [7]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [7]),
    .c(\lsm_top/fir_dut/add7_syn_162 ),
    .o({\lsm_top/fir_dut/add7_syn_163 ,open_n643}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_18  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [8]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [8]),
    .c(\lsm_top/fir_dut/add7_syn_163 ),
    .o({\lsm_top/fir_dut/add7_syn_164 ,open_n644}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_19  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [9]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [9]),
    .c(\lsm_top/fir_dut/add7_syn_164 ),
    .o({\lsm_top/fir_dut/add7_syn_165 ,open_n645}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_20  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [10]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [10]),
    .c(\lsm_top/fir_dut/add7_syn_165 ),
    .o({\lsm_top/fir_dut/add7_syn_166 ,open_n646}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_21  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [11]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [11]),
    .c(\lsm_top/fir_dut/add7_syn_166 ),
    .o({\lsm_top/fir_dut/add7_syn_167 ,open_n647}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_22  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [12]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [12]),
    .c(\lsm_top/fir_dut/add7_syn_167 ),
    .o({\lsm_top/fir_dut/add7_syn_168 ,open_n648}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_23  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [13]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [13]),
    .c(\lsm_top/fir_dut/add7_syn_168 ),
    .o({\lsm_top/fir_dut/add7_syn_169 ,open_n649}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_24  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [14]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [14]),
    .c(\lsm_top/fir_dut/add7_syn_169 ),
    .o({\lsm_top/fir_dut/add7_syn_170 ,open_n650}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_25  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [15]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [15]),
    .c(\lsm_top/fir_dut/add7_syn_170 ),
    .o({\lsm_top/fir_dut/add7_syn_171 ,open_n651}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_26  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [16]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [16]),
    .c(\lsm_top/fir_dut/add7_syn_171 ),
    .o({\lsm_top/fir_dut/add7_syn_172 ,open_n652}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_27  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [17]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [17]),
    .c(\lsm_top/fir_dut/add7_syn_172 ),
    .o({\lsm_top/fir_dut/add7_syn_173 ,open_n653}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_28  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [18]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [18]),
    .c(\lsm_top/fir_dut/add7_syn_173 ),
    .o({\lsm_top/fir_dut/add7_syn_174 ,open_n654}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_29  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [19]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [19]),
    .c(\lsm_top/fir_dut/add7_syn_174 ),
    .o({\lsm_top/fir_dut/add7_syn_175 ,open_n655}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_30  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [20]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [20]),
    .c(\lsm_top/fir_dut/add7_syn_175 ),
    .o({\lsm_top/fir_dut/add7_syn_176 ,open_n656}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_31  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [21]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [21]),
    .c(\lsm_top/fir_dut/add7_syn_176 ),
    .o({\lsm_top/fir_dut/add7_syn_177 ,open_n657}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_32  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [22]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [22]),
    .c(\lsm_top/fir_dut/add7_syn_177 ),
    .o({\lsm_top/fir_dut/add7_syn_178 ,open_n658}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_33  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [23]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [23]),
    .c(\lsm_top/fir_dut/add7_syn_178 ),
    .o({\lsm_top/fir_dut/add7_syn_179 ,open_n659}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_34  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [24]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [24]),
    .c(\lsm_top/fir_dut/add7_syn_179 ),
    .o({\lsm_top/fir_dut/add7_syn_180 ,\lsm_top/fir_dut/adder_data_four_b [24]}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_35  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [25]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [25]),
    .c(\lsm_top/fir_dut/add7_syn_180 ),
    .o({\lsm_top/fir_dut/add7_syn_181 ,\lsm_top/fir_dut/adder_data_four_b [25]}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_36  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [26]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [26]),
    .c(\lsm_top/fir_dut/add7_syn_181 ),
    .o({\lsm_top/fir_dut/add7_syn_182 ,\lsm_top/fir_dut/adder_data_four_b [26]}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_37  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [27]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [27]),
    .c(\lsm_top/fir_dut/add7_syn_182 ),
    .o({\lsm_top/fir_dut/add7_syn_183 ,\lsm_top/fir_dut/adder_data_four_b [27]}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_38  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [28]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [28]),
    .c(\lsm_top/fir_dut/add7_syn_183 ),
    .o({\lsm_top/fir_dut/add7_syn_184 ,\lsm_top/fir_dut/adder_data_four_b [28]}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_39  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [29]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [29]),
    .c(\lsm_top/fir_dut/add7_syn_184 ),
    .o({\lsm_top/fir_dut/add7_syn_185 ,\lsm_top/fir_dut/adder_data_four_b [29]}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_40  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [30]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [29]),
    .c(\lsm_top/fir_dut/add7_syn_185 ),
    .o({\lsm_top/fir_dut/add7_syn_186 ,\lsm_top/fir_dut/adder_data_four_b [30]}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_41  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [31]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [29]),
    .c(\lsm_top/fir_dut/add7_syn_186 ),
    .o({\lsm_top/fir_dut/add7_syn_187 ,\lsm_top/fir_dut/adder_data_four_b [31]}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_42  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [32]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [29]),
    .c(\lsm_top/fir_dut/add7_syn_187 ),
    .o({\lsm_top/fir_dut/add7_syn_188 ,\lsm_top/fir_dut/adder_data_four_b [32]}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_43  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [33]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [29]),
    .c(\lsm_top/fir_dut/add7_syn_188 ),
    .o({\lsm_top/fir_dut/add7_syn_189 ,\lsm_top/fir_dut/adder_data_four_b [33]}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_44  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [34]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [29]),
    .c(\lsm_top/fir_dut/add7_syn_189 ),
    .o({\lsm_top/fir_dut/add7_syn_190 ,\lsm_top/fir_dut/adder_data_four_b [34]}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \lsm_top/fir_dut/add7_syn_45  (
    .a(\lsm_top/fir_dut/adder_data_three_1 [34]),
    .b(\lsm_top/fir_dut/adder_data_three_2 [29]),
    .c(\lsm_top/fir_dut/add7_syn_190 ),
    .o({open_n660,\lsm_top/fir_dut/adder_data_four_b [35]}));  // ../../lms/fir.v(157)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \lsm_top/fir_dut/add7_syn_9  (
    .a(1'b0),
    .o({\lsm_top/fir_dut/add7_syn_155 ,open_n663}));  // ../../lms/fir.v(157)
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(45))
    \lsm_top/fir_dut/mult0_syn_48/M_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult0_syn_48_syn_1657 ),
    .rst(resetSorce_dup_1),
    .q(\lsm_top/fir_dut/mult0_syn_48_syn_1702 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(54))
    \lsm_top/fir_dut/mult0_syn_48/POU_p_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult0_syn_48_syn_1747 ),
    .rst(resetSorce_dup_1),
    .q({\lsm_top/fir_dut/mult0_syn_48_syn_1915 [53:33],\lsm_top/fir_dut/adder_data_one_1 [32:0]}));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(27))
    \lsm_top/fir_dut/mult0_syn_48/XAREG  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d({\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13:12],\change/dataInput[1]_syn_2 [10:1],\change/dataInputComplement [1],\change/dataInput [0]}),
    .rst(resetSorce_dup_1),
    .q(\lsm_top/fir_dut/mult0_syn_49 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(54))
    \lsm_top/fir_dut/mult0_syn_48/Z_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d({21'b000000000000000000000,\lsm_top/fir_dut/mult1_syn_3 [29],\lsm_top/fir_dut/mult1_syn_3 [29],\lsm_top/fir_dut/mult1_syn_3 [29],\lsm_top/fir_dut/mult1_syn_3 [29:0]}),
    .rst(resetSorce_dup_1),
    .q(\lsm_top/fir_dut/mult0_syn_48_syn_1801 ));
  PH1_PHY_DSPMULT \lsm_top/fir_dut/mult0_syn_48/_mult  (
    .opctrl(2'b11),
    .x(\lsm_top/fir_dut/mult0_syn_48_syn_2000 ),
    .y(\lsm_top/fir_dut/mult0_syn_48_syn_2045 ),
    .p(\lsm_top/fir_dut/mult0_syn_48_syn_1657 ));
  PH1_PHY_DSPTADD #(
    .CI_INVERT("NO"),
    .INV_OPCTRL(4'b0000),
    .RND_CONST(54'b0),
    .USE_OVERFLOW("S53"),
    .X1_EXTEND("YES"),
    .Y1_ROUND("NO"),
    .Z1_SHIFT("NO"))
    \lsm_top/fir_dut/mult0_syn_48/_tadd  (
    .ci(1'b0),
    .ci_special(1'b0),
    .opctrl(9'b001100000),
    .x1_special({\lsm_top/fir_dut/mult0_syn_48_syn_1702 [44],\lsm_top/fir_dut/mult0_syn_48_syn_1702 [44],\lsm_top/fir_dut/mult0_syn_48_syn_1702 [44],\lsm_top/fir_dut/mult0_syn_48_syn_1702 [44],\lsm_top/fir_dut/mult0_syn_48_syn_1702 [44],\lsm_top/fir_dut/mult0_syn_48_syn_1702 [44],\lsm_top/fir_dut/mult0_syn_48_syn_1702 [44],\lsm_top/fir_dut/mult0_syn_48_syn_1702 [44],\lsm_top/fir_dut/mult0_syn_48_syn_1702 [44],\lsm_top/fir_dut/mult0_syn_48_syn_1702 }),
    .y0(\lsm_top/fir_dut/mult0_syn_48_syn_1801 ),
    .y1_special(\lsm_top/fir_dut/mult0_syn_48_syn_1801 ),
    .z0(54'b000000000000000000000000000000000000000000000000000000),
    .z1_special(54'b000000000000000000000000000000000000000000000000000000),
    .sum(\lsm_top/fir_dut/mult0_syn_48_syn_1747 ));
  PH1_PHY_DSPMREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .DYNAMIC_DATA("Q"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(27))
    \lsm_top/fir_dut/mult0_syn_48/xa_mreg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d({\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13:12],\change/dataInput[1]_syn_2 [10:1],\change/dataInputComplement [1],\change/dataInput [0]}),
    .opctrl(1'b1),
    .rst(resetSorce_dup_1),
    .dynamic_q(\lsm_top/fir_dut/mult0_syn_48_syn_2000 ));
  PH1_PHY_DSPMREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .DYNAMIC_DATA("Q"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(18))
    \lsm_top/fir_dut/mult0_syn_48/y_mreg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d({\lsm_top/coef_update_dut/coef1_b [15],\lsm_top/coef_update_dut/coef1_b [15],\lsm_top/coef_update_dut/coef1_b [15:0]}),
    .opctrl(1'b1),
    .rst(resetSorce_dup_1),
    .dynamic_q(\lsm_top/fir_dut/mult0_syn_48_syn_2045 ));
  PH1_PHY_DSPMULT \lsm_top/fir_dut/mult1_syn_48/_mult  (
    .opctrl(2'b11),
    .x(\lsm_top/fir_dut/mult1_syn_48_syn_2227 ),
    .y(\lsm_top/fir_dut/mult1_syn_48_syn_2272 ),
    .p({\lsm_top/fir_dut/mult1_syn_48_syn_2142 [44:30],\lsm_top/fir_dut/mult1_syn_3 [29:0]}));
  PH1_PHY_DSPMREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .DYNAMIC_DATA("Q"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(27))
    \lsm_top/fir_dut/mult1_syn_48/xa_mreg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d({\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13],\change/dataInputComplement [13:12],\change/dataInput[1]_syn_2 [10:1],\change/dataInputComplement [1],\change/dataInput [0]}),
    .opctrl(1'b0),
    .rst(resetSorce_dup_1),
    .dynamic_q(\lsm_top/fir_dut/mult1_syn_48_syn_2227 ));
  PH1_PHY_DSPMREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .DYNAMIC_DATA("Q"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(18))
    \lsm_top/fir_dut/mult1_syn_48/y_mreg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d({\lsm_top/coef_update_dut/coef2_b [15],\lsm_top/coef_update_dut/coef2_b [15],\lsm_top/coef_update_dut/coef2_b [15:0]}),
    .opctrl(1'b1),
    .rst(resetSorce_dup_1),
    .dynamic_q(\lsm_top/fir_dut/mult1_syn_48_syn_2272 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(45))
    \lsm_top/fir_dut/mult2_syn_48/M_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult2_syn_48_syn_2290 ),
    .rst(resetSorce_dup_1),
    .q(\lsm_top/fir_dut/mult2_syn_48_syn_2335 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(54))
    \lsm_top/fir_dut/mult2_syn_48/POU_p_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult2_syn_48_syn_2380 ),
    .rst(resetSorce_dup_1),
    .q({\lsm_top/fir_dut/mult2_syn_48_syn_2575 [53:33],\lsm_top/fir_dut/adder_data_one_2 [32:0]}));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(27))
    \lsm_top/fir_dut/mult2_syn_48/XAREG  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult0_syn_49 ),
    .rst(resetSorce_dup_1),
    .q(\lsm_top/fir_dut/mult2_syn_49 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(54))
    \lsm_top/fir_dut/mult2_syn_48/Z_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d({21'b000000000000000000000,\lsm_top/fir_dut/mult3_syn_3 [29],\lsm_top/fir_dut/mult3_syn_3 [29],\lsm_top/fir_dut/mult3_syn_3 [29],\lsm_top/fir_dut/mult3_syn_3 [29:0]}),
    .rst(resetSorce_dup_1),
    .q(\lsm_top/fir_dut/mult2_syn_48_syn_2434 ));
  PH1_PHY_DSPMULT \lsm_top/fir_dut/mult2_syn_48/_mult  (
    .opctrl(2'b11),
    .x(\lsm_top/fir_dut/mult2_syn_48_syn_2633 ),
    .y(\lsm_top/fir_dut/mult2_syn_48_syn_2678 ),
    .p(\lsm_top/fir_dut/mult2_syn_48_syn_2290 ));
  PH1_PHY_DSPTADD #(
    .CI_INVERT("NO"),
    .INV_OPCTRL(4'b0000),
    .RND_CONST(54'b0),
    .USE_OVERFLOW("S53"),
    .X1_EXTEND("YES"),
    .Y1_ROUND("NO"),
    .Z1_SHIFT("NO"))
    \lsm_top/fir_dut/mult2_syn_48/_tadd  (
    .ci(1'b0),
    .ci_special(1'b0),
    .opctrl(9'b001100000),
    .x1_special({\lsm_top/fir_dut/mult2_syn_48_syn_2335 [44],\lsm_top/fir_dut/mult2_syn_48_syn_2335 [44],\lsm_top/fir_dut/mult2_syn_48_syn_2335 [44],\lsm_top/fir_dut/mult2_syn_48_syn_2335 [44],\lsm_top/fir_dut/mult2_syn_48_syn_2335 [44],\lsm_top/fir_dut/mult2_syn_48_syn_2335 [44],\lsm_top/fir_dut/mult2_syn_48_syn_2335 [44],\lsm_top/fir_dut/mult2_syn_48_syn_2335 [44],\lsm_top/fir_dut/mult2_syn_48_syn_2335 [44],\lsm_top/fir_dut/mult2_syn_48_syn_2335 }),
    .y0(\lsm_top/fir_dut/mult2_syn_48_syn_2434 ),
    .y1_special(\lsm_top/fir_dut/mult2_syn_48_syn_2434 ),
    .z0(54'b000000000000000000000000000000000000000000000000000000),
    .z1_special(54'b000000000000000000000000000000000000000000000000000000),
    .sum(\lsm_top/fir_dut/mult2_syn_48_syn_2380 ));
  PH1_PHY_DSPMREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .DYNAMIC_DATA("Q"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(27))
    \lsm_top/fir_dut/mult2_syn_48/xa_mreg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult0_syn_49 ),
    .opctrl(1'b0),
    .rst(resetSorce_dup_1),
    .dynamic_q(\lsm_top/fir_dut/mult2_syn_48_syn_2633 ));
  PH1_PHY_DSPMREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .DYNAMIC_DATA("Q"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(18))
    \lsm_top/fir_dut/mult2_syn_48/y_mreg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d({\lsm_top/coef_update_dut/coef3_b [15],\lsm_top/coef_update_dut/coef3_b [15],\lsm_top/coef_update_dut/coef3_b [15:0]}),
    .opctrl(1'b1),
    .rst(resetSorce_dup_1),
    .dynamic_q(\lsm_top/fir_dut/mult2_syn_48_syn_2678 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(27))
    \lsm_top/fir_dut/mult3_syn_48/XAREG  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult2_syn_49 ),
    .rst(resetSorce_dup_1),
    .q(\lsm_top/fir_dut/mult3_syn_49 ));
  PH1_PHY_DSPMULT \lsm_top/fir_dut/mult3_syn_48/_mult  (
    .opctrl(2'b11),
    .x(\lsm_top/fir_dut/mult3_syn_48_syn_2887 ),
    .y(\lsm_top/fir_dut/mult3_syn_48_syn_2932 ),
    .p({\lsm_top/fir_dut/mult3_syn_48_syn_2829 [44:30],\lsm_top/fir_dut/mult3_syn_3 [29:0]}));
  PH1_PHY_DSPMREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .DYNAMIC_DATA("Q"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(27))
    \lsm_top/fir_dut/mult3_syn_48/xa_mreg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult2_syn_49 ),
    .opctrl(1'b0),
    .rst(resetSorce_dup_1),
    .dynamic_q(\lsm_top/fir_dut/mult3_syn_48_syn_2887 ));
  PH1_PHY_DSPMREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .DYNAMIC_DATA("Q"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(18))
    \lsm_top/fir_dut/mult3_syn_48/y_mreg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d({\lsm_top/coef_update_dut/coef4_b [15],\lsm_top/coef_update_dut/coef4_b [15],\lsm_top/coef_update_dut/coef4_b [15:0]}),
    .opctrl(1'b1),
    .rst(resetSorce_dup_1),
    .dynamic_q(\lsm_top/fir_dut/mult3_syn_48_syn_2932 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(45))
    \lsm_top/fir_dut/mult4_syn_48/M_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult4_syn_48_syn_2995 ),
    .rst(resetSorce_dup_1),
    .q(\lsm_top/fir_dut/mult4_syn_48_syn_2950 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(54))
    \lsm_top/fir_dut/mult4_syn_48/POU_p_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult4_syn_48_syn_3040 ),
    .rst(resetSorce_dup_1),
    .q({\lsm_top/fir_dut/mult4_syn_48_syn_3235 [53:33],\lsm_top/fir_dut/adder_data_one_3 [32:0]}));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(27))
    \lsm_top/fir_dut/mult4_syn_48/XAREG  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult3_syn_49 ),
    .rst(resetSorce_dup_1),
    .q(\lsm_top/fir_dut/mult4_syn_49 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(54))
    \lsm_top/fir_dut/mult4_syn_48/Z_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d({21'b000000000000000000000,\lsm_top/fir_dut/mult5_syn_3 [29],\lsm_top/fir_dut/mult5_syn_3 [29],\lsm_top/fir_dut/mult5_syn_3 [29],\lsm_top/fir_dut/mult5_syn_3 [29:0]}),
    .rst(resetSorce_dup_1),
    .q(\lsm_top/fir_dut/mult4_syn_48_syn_3094 ));
  PH1_PHY_DSPMULT \lsm_top/fir_dut/mult4_syn_48/_mult  (
    .opctrl(2'b11),
    .x(\lsm_top/fir_dut/mult4_syn_48_syn_3293 ),
    .y(\lsm_top/fir_dut/mult4_syn_48_syn_3338 ),
    .p(\lsm_top/fir_dut/mult4_syn_48_syn_2995 ));
  PH1_PHY_DSPTADD #(
    .CI_INVERT("NO"),
    .INV_OPCTRL(4'b0000),
    .RND_CONST(54'b0),
    .USE_OVERFLOW("S53"),
    .X1_EXTEND("YES"),
    .Y1_ROUND("NO"),
    .Z1_SHIFT("NO"))
    \lsm_top/fir_dut/mult4_syn_48/_tadd  (
    .ci(1'b0),
    .ci_special(1'b0),
    .opctrl(9'b001100000),
    .x1_special({\lsm_top/fir_dut/mult4_syn_48_syn_2950 [44],\lsm_top/fir_dut/mult4_syn_48_syn_2950 [44],\lsm_top/fir_dut/mult4_syn_48_syn_2950 [44],\lsm_top/fir_dut/mult4_syn_48_syn_2950 [44],\lsm_top/fir_dut/mult4_syn_48_syn_2950 [44],\lsm_top/fir_dut/mult4_syn_48_syn_2950 [44],\lsm_top/fir_dut/mult4_syn_48_syn_2950 [44],\lsm_top/fir_dut/mult4_syn_48_syn_2950 [44],\lsm_top/fir_dut/mult4_syn_48_syn_2950 [44],\lsm_top/fir_dut/mult4_syn_48_syn_2950 }),
    .y0(\lsm_top/fir_dut/mult4_syn_48_syn_3094 ),
    .y1_special(\lsm_top/fir_dut/mult4_syn_48_syn_3094 ),
    .z0(54'b000000000000000000000000000000000000000000000000000000),
    .z1_special(54'b000000000000000000000000000000000000000000000000000000),
    .sum(\lsm_top/fir_dut/mult4_syn_48_syn_3040 ));
  PH1_PHY_DSPMREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .DYNAMIC_DATA("Q"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(27))
    \lsm_top/fir_dut/mult4_syn_48/xa_mreg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult3_syn_49 ),
    .opctrl(1'b0),
    .rst(resetSorce_dup_1),
    .dynamic_q(\lsm_top/fir_dut/mult4_syn_48_syn_3293 ));
  PH1_PHY_DSPMREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .DYNAMIC_DATA("Q"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(18))
    \lsm_top/fir_dut/mult4_syn_48/y_mreg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d({\lsm_top/coef_update_dut/coef5_b [15],\lsm_top/coef_update_dut/coef5_b [15],\lsm_top/coef_update_dut/coef5_b [15:0]}),
    .opctrl(1'b1),
    .rst(resetSorce_dup_1),
    .dynamic_q(\lsm_top/fir_dut/mult4_syn_48_syn_3338 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(27))
    \lsm_top/fir_dut/mult5_syn_48/XAREG  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult4_syn_49 ),
    .rst(resetSorce_dup_1),
    .q(\lsm_top/fir_dut/mult5_syn_49 ));
  PH1_PHY_DSPMULT \lsm_top/fir_dut/mult5_syn_48/_mult  (
    .opctrl(2'b11),
    .x(\lsm_top/fir_dut/mult5_syn_48_syn_3547 ),
    .y(\lsm_top/fir_dut/mult5_syn_48_syn_3592 ),
    .p({\lsm_top/fir_dut/mult5_syn_48_syn_3489 [44:30],\lsm_top/fir_dut/mult5_syn_3 [29:0]}));
  PH1_PHY_DSPMREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .DYNAMIC_DATA("Q"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(27))
    \lsm_top/fir_dut/mult5_syn_48/xa_mreg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult4_syn_49 ),
    .opctrl(1'b0),
    .rst(resetSorce_dup_1),
    .dynamic_q(\lsm_top/fir_dut/mult5_syn_48_syn_3547 ));
  PH1_PHY_DSPMREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .DYNAMIC_DATA("Q"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(18))
    \lsm_top/fir_dut/mult5_syn_48/y_mreg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d({\lsm_top/coef_update_dut/coef6_b [15],\lsm_top/coef_update_dut/coef6_b [15],\lsm_top/coef_update_dut/coef6_b [15:0]}),
    .opctrl(1'b1),
    .rst(resetSorce_dup_1),
    .dynamic_q(\lsm_top/fir_dut/mult5_syn_48_syn_3592 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(45))
    \lsm_top/fir_dut/mult6_syn_48/M_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult6_syn_48_syn_3610 ),
    .rst(resetSorce_dup_1),
    .q(\lsm_top/fir_dut/mult6_syn_48_syn_3655 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(54))
    \lsm_top/fir_dut/mult6_syn_48/POU_p_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult6_syn_48_syn_3700 ),
    .rst(resetSorce_dup_1),
    .q({\lsm_top/fir_dut/mult6_syn_48_syn_3895 [53:33],\lsm_top/fir_dut/adder_data_one_4 [32:0]}));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(27))
    \lsm_top/fir_dut/mult6_syn_48/XAREG  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult5_syn_49 ),
    .rst(resetSorce_dup_1),
    .q(\lsm_top/fir_dut/mult6_syn_49 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(54))
    \lsm_top/fir_dut/mult6_syn_48/Z_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d({21'b000000000000000000000,\lsm_top/fir_dut/mult7_syn_3 [29],\lsm_top/fir_dut/mult7_syn_3 [29],\lsm_top/fir_dut/mult7_syn_3 [29],\lsm_top/fir_dut/mult7_syn_3 [29:0]}),
    .rst(resetSorce_dup_1),
    .q(\lsm_top/fir_dut/mult6_syn_48_syn_3754 ));
  PH1_PHY_DSPMULT \lsm_top/fir_dut/mult6_syn_48/_mult  (
    .opctrl(2'b11),
    .x(\lsm_top/fir_dut/mult6_syn_48_syn_3953 ),
    .y(\lsm_top/fir_dut/mult6_syn_48_syn_3998 ),
    .p(\lsm_top/fir_dut/mult6_syn_48_syn_3610 ));
  PH1_PHY_DSPTADD #(
    .CI_INVERT("NO"),
    .INV_OPCTRL(4'b0000),
    .RND_CONST(54'b0),
    .USE_OVERFLOW("S53"),
    .X1_EXTEND("YES"),
    .Y1_ROUND("NO"),
    .Z1_SHIFT("NO"))
    \lsm_top/fir_dut/mult6_syn_48/_tadd  (
    .ci(1'b0),
    .ci_special(1'b0),
    .opctrl(9'b001100000),
    .x1_special({\lsm_top/fir_dut/mult6_syn_48_syn_3655 [44],\lsm_top/fir_dut/mult6_syn_48_syn_3655 [44],\lsm_top/fir_dut/mult6_syn_48_syn_3655 [44],\lsm_top/fir_dut/mult6_syn_48_syn_3655 [44],\lsm_top/fir_dut/mult6_syn_48_syn_3655 [44],\lsm_top/fir_dut/mult6_syn_48_syn_3655 [44],\lsm_top/fir_dut/mult6_syn_48_syn_3655 [44],\lsm_top/fir_dut/mult6_syn_48_syn_3655 [44],\lsm_top/fir_dut/mult6_syn_48_syn_3655 [44],\lsm_top/fir_dut/mult6_syn_48_syn_3655 }),
    .y0(\lsm_top/fir_dut/mult6_syn_48_syn_3754 ),
    .y1_special(\lsm_top/fir_dut/mult6_syn_48_syn_3754 ),
    .z0(54'b000000000000000000000000000000000000000000000000000000),
    .z1_special(54'b000000000000000000000000000000000000000000000000000000),
    .sum(\lsm_top/fir_dut/mult6_syn_48_syn_3700 ));
  PH1_PHY_DSPMREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .DYNAMIC_DATA("Q"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(27))
    \lsm_top/fir_dut/mult6_syn_48/xa_mreg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult5_syn_49 ),
    .opctrl(1'b0),
    .rst(resetSorce_dup_1),
    .dynamic_q(\lsm_top/fir_dut/mult6_syn_48_syn_3953 ));
  PH1_PHY_DSPMREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .DYNAMIC_DATA("Q"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(18))
    \lsm_top/fir_dut/mult6_syn_48/y_mreg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d({\lsm_top/coef_update_dut/coef7_b [15],\lsm_top/coef_update_dut/coef7_b [15],\lsm_top/coef_update_dut/coef7_b [15:0]}),
    .opctrl(1'b1),
    .rst(resetSorce_dup_1),
    .dynamic_q(\lsm_top/fir_dut/mult6_syn_48_syn_3998 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(27))
    \lsm_top/fir_dut/mult7_syn_48/XAREG  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult6_syn_49 ),
    .rst(resetSorce_dup_1),
    .q(\lsm_top/fir_dut/mult7_syn_49 ));
  PH1_PHY_DSPMULT \lsm_top/fir_dut/mult7_syn_48/_mult  (
    .opctrl(2'b11),
    .x(\lsm_top/fir_dut/mult7_syn_48_syn_4207 ),
    .y(\lsm_top/fir_dut/mult7_syn_48_syn_4252 ),
    .p({\lsm_top/fir_dut/mult7_syn_48_syn_4149 [44:30],\lsm_top/fir_dut/mult7_syn_3 [29:0]}));
  PH1_PHY_DSPMREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .DYNAMIC_DATA("Q"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(27))
    \lsm_top/fir_dut/mult7_syn_48/xa_mreg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult6_syn_49 ),
    .opctrl(1'b0),
    .rst(resetSorce_dup_1),
    .dynamic_q(\lsm_top/fir_dut/mult7_syn_48_syn_4207 ));
  PH1_PHY_DSPMREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .DYNAMIC_DATA("Q"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(18))
    \lsm_top/fir_dut/mult7_syn_48/y_mreg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d({\lsm_top/coef_update_dut/coef8_b [15],\lsm_top/coef_update_dut/coef8_b [15],\lsm_top/coef_update_dut/coef8_b [15:0]}),
    .opctrl(1'b1),
    .rst(resetSorce_dup_1),
    .dynamic_q(\lsm_top/fir_dut/mult7_syn_48_syn_4252 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(45))
    \lsm_top/fir_dut/mult8_syn_48/M_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult8_syn_48_syn_4270 ),
    .rst(resetSorce_dup_1),
    .q(\lsm_top/fir_dut/mult8_syn_48_syn_4315 ));
  PH1_PHY_DSPREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(54))
    \lsm_top/fir_dut/mult8_syn_48/POU_p_reg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult8_syn_48_syn_4360 ),
    .rst(resetSorce_dup_1),
    .q({\lsm_top/fir_dut/mult8_syn_48_syn_4474 [53:30],\lsm_top/fir_dut/adder_data_one_5 [29:0]}));
  PH1_PHY_DSPMULT \lsm_top/fir_dut/mult8_syn_48/_mult  (
    .opctrl(2'b11),
    .x(\lsm_top/fir_dut/mult8_syn_48_syn_4532 ),
    .y(\lsm_top/fir_dut/mult8_syn_48_syn_4577 ),
    .p(\lsm_top/fir_dut/mult8_syn_48_syn_4270 ));
  PH1_PHY_DSPTADD #(
    .CI_INVERT("NO"),
    .INV_OPCTRL(4'b0000),
    .RND_CONST(54'b0),
    .USE_OVERFLOW("S53"),
    .X1_EXTEND("YES"),
    .Y1_ROUND("NO"),
    .Z1_SHIFT("NO"))
    \lsm_top/fir_dut/mult8_syn_48/_tadd  (
    .ci(1'b0),
    .ci_special(1'b0),
    .opctrl(9'b000100000),
    .x1_special({\lsm_top/fir_dut/mult8_syn_48_syn_4315 [44],\lsm_top/fir_dut/mult8_syn_48_syn_4315 [44],\lsm_top/fir_dut/mult8_syn_48_syn_4315 [44],\lsm_top/fir_dut/mult8_syn_48_syn_4315 [44],\lsm_top/fir_dut/mult8_syn_48_syn_4315 [44],\lsm_top/fir_dut/mult8_syn_48_syn_4315 [44],\lsm_top/fir_dut/mult8_syn_48_syn_4315 [44],\lsm_top/fir_dut/mult8_syn_48_syn_4315 [44],\lsm_top/fir_dut/mult8_syn_48_syn_4315 [44],\lsm_top/fir_dut/mult8_syn_48_syn_4315 }),
    .y0(54'b000000000000000000000000000000000000000000000000000000),
    .y1_special(54'b000000000000000000000000000000000000000000000000000000),
    .z0(54'b000000000000000000000000000000000000000000000000000000),
    .z1_special(54'b000000000000000000000000000000000000000000000000000000),
    .sum(\lsm_top/fir_dut/mult8_syn_48_syn_4360 ));
  PH1_PHY_DSPMREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .DYNAMIC_DATA("Q"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(27))
    \lsm_top/fir_dut/mult8_syn_48/xa_mreg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/mult7_syn_49 ),
    .opctrl(1'b0),
    .rst(resetSorce_dup_1),
    .dynamic_q(\lsm_top/fir_dut/mult8_syn_48_syn_4532 ));
  PH1_PHY_DSPMREG #(
    .CEMUX("1"),
    .CLKMUX("SIG"),
    .DYNAMIC_DATA("Q"),
    .RSTMODE("ASYNC"),
    .RSTMUX("SIG"),
    .WIDTH(18))
    \lsm_top/fir_dut/mult8_syn_48/y_mreg  (
    .ce(1'bx),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d({\lsm_top/coef_update_dut/coef9_b [15],\lsm_top/coef_update_dut/coef9_b [15],\lsm_top/coef_update_dut/coef9_b [15:0]}),
    .opctrl(1'b1),
    .rst(resetSorce_dup_1),
    .dynamic_q(\lsm_top/fir_dut/mult8_syn_48_syn_4577 ));
  AL_DFF_0 \lsm_top/fir_dut/reg0_syn_43  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_four_b [24]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_four [24]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg0_syn_44  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_four_b [25]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_four [25]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg0_syn_45  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_four_b [26]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_four [26]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg0_syn_46  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_four_b [27]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_four [27]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg0_syn_47  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_four_b [28]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_four [28]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg0_syn_48  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_four_b [29]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_four [29]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg0_syn_49  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_four_b [30]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_four [30]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg0_syn_50  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_four_b [31]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_four [31]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg0_syn_51  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_four_b [32]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_four [32]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg0_syn_52  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_four_b [33]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_four [33]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg0_syn_53  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_four_b [34]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_four [34]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg0_syn_54  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_four_b [35]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_four [35]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_43  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [0]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_44  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [1]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_45  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [2]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_46  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [3]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_47  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [4]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_48  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [5]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_49  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [6]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_50  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [7]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_51  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [8]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_52  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [9]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_53  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [10]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_54  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [11]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_55  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [12]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_56  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [13]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_57  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [14]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_58  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [15]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_59  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [16]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [16]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_60  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [17]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [17]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_61  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [18]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [18]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_62  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [19]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [19]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_63  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [20]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [20]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_64  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [21]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [21]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_65  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [22]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [22]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_66  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [23]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [23]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_67  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [24]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [24]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_68  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [25]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [25]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_69  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [26]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [26]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_70  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [27]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [27]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_71  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [28]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [28]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg10_syn_72  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_one_5 [29]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_3 [29]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_43  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [0]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_44  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [1]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_45  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [2]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_46  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [3]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_47  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [4]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_48  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [5]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_49  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [6]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_50  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [7]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_51  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [8]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_52  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [9]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_53  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [10]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_54  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [11]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_55  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [12]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_56  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [13]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_57  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [14]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_58  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [15]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_59  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [16]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [16]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_60  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [17]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [17]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_61  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [18]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [18]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_62  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [19]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [19]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_63  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [20]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [20]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_64  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [21]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [21]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_65  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [22]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [22]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_66  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [23]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [23]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_67  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [24]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [24]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_68  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [25]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [25]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_69  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [26]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [26]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_70  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [27]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [27]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_71  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [28]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [28]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_72  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [29]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [29]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_73  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [30]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [30]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_74  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [31]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [31]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_75  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [32]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [32]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_76  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [33]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [33]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg6_syn_77  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_three_1_b [34]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_1 [34]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_43  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [0]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_44  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [1]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_45  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [2]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_46  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [3]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_47  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [4]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_48  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [5]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_49  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [6]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_50  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [7]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_51  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [8]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_52  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [9]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_53  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [10]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_54  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [11]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_55  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [12]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_56  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [13]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_57  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [14]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_58  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [15]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_59  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [16]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [16]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_60  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [17]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [17]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_61  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [18]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [18]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_62  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [19]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [19]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_63  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [20]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [20]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_64  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [21]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [21]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_65  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [22]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [22]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_66  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [23]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [23]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_67  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [24]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [24]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_68  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [25]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [25]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_69  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [26]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [26]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_70  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [27]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [27]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_71  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [28]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [28]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg7_syn_72  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_3 [29]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_three_2 [29]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_43  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [0]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_44  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [1]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_45  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [2]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_46  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [3]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_47  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [4]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_48  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [5]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_49  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [6]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_50  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [7]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_51  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [8]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_52  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [9]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_53  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [10]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_54  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [11]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_55  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [12]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_56  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [13]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_57  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [14]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_58  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [15]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_59  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [16]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [16]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_60  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [17]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [17]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_61  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [18]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [18]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_62  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [19]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [19]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_63  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [20]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [20]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_64  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [21]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [21]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_65  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [22]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [22]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_66  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [23]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [23]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_67  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [24]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [24]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_68  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [25]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [25]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_69  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [26]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [26]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_70  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [27]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [27]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_71  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [28]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [28]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_72  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [29]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [29]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_73  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [30]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [30]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_74  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [31]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [31]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_75  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [32]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [32]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg8_syn_76  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_1_b [33]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_1 [33]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_43  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [0]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_44  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [1]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_45  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [2]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_46  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [3]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_47  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [4]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_48  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [5]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_49  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [6]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_50  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [7]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_51  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [8]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_52  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [9]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_53  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [10]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_54  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [11]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_55  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [12]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_56  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [13]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_57  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [14]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_58  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [15]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_59  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [16]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [16]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_60  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [17]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [17]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_61  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [18]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [18]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_62  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [19]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [19]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_63  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [20]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [20]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_64  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [21]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [21]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_65  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [22]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [22]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_66  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [23]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [23]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_67  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [24]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [24]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_68  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [25]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [25]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_69  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [26]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [26]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_70  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [27]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [27]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_71  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [28]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [28]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_72  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [29]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [29]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_73  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [30]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [30]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_74  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [31]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [31]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_75  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [32]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [32]));  // ../../lms/fir.v(127)
  AL_DFF_0 \lsm_top/fir_dut/reg9_syn_76  (
    .ar(resetSorce_dup_1),
    .as(1'b0),
    .clk(\lsm_top/coef_update_dut/clk_i ),
    .d(\lsm_top/fir_dut/adder_data_two_2_b [33]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\lsm_top/fir_dut/adder_data_two_2 [33]));  // ../../lms/fir.v(127)
  PH1_PHY_GCLK_V2 \mypll/bufg_feedback  (
    .cen(2'b10),
    .clkin({open_n949,\mypll/clk0_buf }),
    .drct(2'b11),
    .seln(2'b10),
    .clkout(\ad_top/u_AD7266/sys_clk ));  // ../../ad/al_ip/mypll.v(38)
  PH1_PHY_PLL #(
    .CLKC0_CPHASE(63),
    .CLKC0_CPHASE_DIV2(0),
    .CLKC0_DIV(64),
    .CLKC0_DIV2_ENABLE("DISABLE"),
    .CLKC0_DUTY50("ENABLE"),
    .CLKC0_DUTY_INT(32),
    .CLKC0_ENABLE("ENABLE"),
    .CLKC0_FPHASE(0),
    .CLKC0_FPHASE_RSTSEL(0),
    .CLKC0_USR_RST("ENABLE"),
    .CLKC1_CPHASE(122),
    .CLKC1_CPHASE_DIV2(0),
    .CLKC1_DIV(123),
    .CLKC1_DIV2_ENABLE("DISABLE"),
    .CLKC1_DUTY50("ENABLE"),
    .CLKC1_DUTY_INT(62),
    .CLKC1_ENABLE("ENABLE"),
    .CLKC1_FPHASE(0),
    .CLKC1_FPHASE_RSTSEL(0),
    .CLKC1_USR_RST("ENABLE"),
    .CLKC2_CPHASE(49),
    .CLKC2_CPHASE_DIV2(0),
    .CLKC2_DIV(50),
    .CLKC2_DIV2_ENABLE("DISABLE"),
    .CLKC2_DUTY50("ENABLE"),
    .CLKC2_DUTY_INT(25),
    .CLKC2_ENABLE("ENABLE"),
    .CLKC2_FPHASE(0),
    .CLKC2_FPHASE_RSTSEL(0),
    .CLKC3_CPHASE(0),
    .CLKC3_CPHASE_DIV2(0),
    .CLKC3_DIV(1),
    .CLKC3_DIV2_ENABLE("DISABLE"),
    .CLKC3_DUTY50("ENABLE"),
    .CLKC3_DUTY_INT(1),
    .CLKC3_ENABLE("DISABLE"),
    .CLKC3_FPHASE(0),
    .CLKC3_FPHASE_RSTSEL(0),
    .CLKC4_CPHASE(0),
    .CLKC4_CPHASE_DIV2(0),
    .CLKC4_DIV(1),
    .CLKC4_DIV2_ENABLE("DISABLE"),
    .CLKC4_DUTY50("ENABLE"),
    .CLKC4_DUTY_INT(1),
    .CLKC4_ENABLE("DISABLE"),
    .CLKC4_FPHASE(0),
    .CLKC4_FPHASE_RSTSEL(0),
    .CLKC5_CPHASE(0),
    .CLKC5_CPHASE_DIV2(0),
    .CLKC5_DIV(1),
    .CLKC5_DIV2_ENABLE("DISABLE"),
    .CLKC5_DUTY50("ENABLE"),
    .CLKC5_DUTY_INT(1),
    .CLKC5_ENABLE("DISABLE"),
    .CLKC5_FPHASE(0),
    .CLKC5_FPHASE_RSTSEL(0),
    .CLKC6_CPHASE(0),
    .CLKC6_CPHASE_DIV2(0),
    .CLKC6_DIV(1),
    .CLKC6_DIV2_ENABLE("DISABLE"),
    .CLKC6_DUTY50("ENABLE"),
    .CLKC6_DUTY_INT(1),
    .CLKC6_ENABLE("DISABLE"),
    .CLKC6_FPHASE(0),
    .CLKC6_FPHASE_RSTSEL(0),
    .CLK_MAIN_ENABLE("DISABLE"),
    .DERIVE_PLL_CLOCKS("DISABLE"),
    .DITHER_ENABLE("DISABLE"),
    .DIVOUT_MUXC0("DIV"),
    .DIVOUT_MUXC1("DIV"),
    .DIVOUT_MUXC2("DIV"),
    .DIVOUT_MUXC3("DIV"),
    .DIVOUT_MUXC4("DIV"),
    .DIVOUT_MUXC5("DIV"),
    .DIVOUT_MUXC6("DIV"),
    .DYN_CPHASE_CLKC0_DIV2_EN("DISABLE"),
    .DYN_CPHASE_CLKC0_DIV_EN("DISABLE"),
    .DYN_CPHASE_CLKC1_DIV2_EN("DISABLE"),
    .DYN_CPHASE_CLKC1_DIV_EN("DISABLE"),
    .DYN_CPHASE_CLKC2_DIV2_EN("DISABLE"),
    .DYN_CPHASE_CLKC2_DIV_EN("DISABLE"),
    .DYN_CPHASE_CLKC3_DIV2_EN("DISABLE"),
    .DYN_CPHASE_CLKC3_DIV_EN("DISABLE"),
    .DYN_CPHASE_CLKC4_DIV2_EN("DISABLE"),
    .DYN_CPHASE_CLKC4_DIV_EN("DISABLE"),
    .DYN_CPHASE_CLKC5_DIV2_EN("DISABLE"),
    .DYN_CPHASE_CLKC5_DIV_EN("DISABLE"),
    .DYN_CPHASE_CLKC6_DIV2_EN("DISABLE"),
    .DYN_CPHASE_CLKC6_DIV_EN("DISABLE"),
    .DYN_FPHASE_EN("DISABLE"),
    .DYN_PHASE_PATH_SEL("DISABLE"),
    .EXT_USR_FREQ_EN("DISABLE"),
    .FBCLK_DIV(1),
    .FBKCLK("CLKC0_EXT"),
    .FBKCLK_INT("VCO_PHASE0"),
    .FEEDBK_MODE("NORMAL"),
    .FIN("25.000"),
    .FRAC_ENABLE("DISABLE"),
    .FREQ_OFFSET(0),
    .GEN_BASIC_CLOCK("DISABLE"),
    .GMC_GAIN(1),
    .HIGH_SPEED_EN("DISABLE"),
    .ICP_CUR(11),
    .INTPI(2),
    .LPF_CAP(2),
    .LPF_RES(3),
    .MAIN_MUXC("MAIN"),
    .MPHASE_ENABLE("DISABLE"),
    .PD_DIG("DISABLE"),
    .PHASE_PATH_SEL(0),
    .PLL_FEED_TYPE("EXTERNAL"),
    .PLL_USR_RST("DISABLE"),
    .PREDIV_MUXC0("VCO"),
    .PREDIV_MUXC1("VCO"),
    .PREDIV_MUXC2("VCO"),
    .PREDIV_MUXC3("VCO"),
    .PREDIV_MUXC4("VCO"),
    .PREDIV_MUXC5("VCO"),
    .PREDIV_MUXC6("VCO"),
    .REFCLK_DET_BYP("DISABLE"),
    .REFCLK_DIV(1),
    .REFCLK_OUT_ENABLE("DISABLE"),
    .REFCLK_USR_RST("DISABLE"),
    .SDM_FRAC(0),
    .SSC_AMP(0.000000),
    .SSC_ENABLE("DISABLE"),
    .SSC_FREQ_DIV(0),
    .SSC_MODE("CENTER"),
    .SSC_RNGE(0),
    .WORK_MODE("USER"))
    \mypll/pll_inst  (
    .clkc_en(8'b00000111),
    .clkc_rst(2'b00),
    .cps_step(2'b00),
    .drp_addr(8'b00000000),
    .drp_clk(1'b0),
    .drp_rd(1'b0),
    .drp_rstn(1'b1),
    .drp_sel(1'b0),
    .drp_wdata(8'b00000000),
    .drp_wr(1'b0),
    .ext_freq_mod_clk(1'b0),
    .ext_freq_mod_en(1'b0),
    .ext_freq_mod_val(17'b00000000000000000),
    .fbclk(\ad_top/u_AD7266/sys_clk ),
    .pllpd(1'b0),
    .pllreset(1'b0),
    .psclk(1'b0),
    .psclksel(3'b000),
    .psdown(1'b0),
    .psstep(1'b0),
    .refclk(clkSorce_dup_1),
    .refclk_rst(1'b0),
    .ssc_en(1'b0),
    .wakeup(1'b0),
    .clkc({open_n950,open_n951,open_n952,open_n953,open_n954,\uart_top/UART/clk ,\lsm_top/div40/clk ,\mypll/clk0_buf }));  // ../../ad/al_ip/mypll.v(89)
  PH1_PHY_HP_PAD #(
    //.HYS("ON"),
    //.LOCATION("K4"),
    //.ODT(OFF),
    //.PULLMODE("PULLUP"),
    //.PULL_STRENGTH("DISABLE"),
    .IDDRMODE("OFF"),
    .INDELMUX("NODEL"),
    .IOTYPE("LVCMOS18"),
    .MODE("IN"),
    .TSMUX("1"))
    resetSorce_syn_2 (
    .ipad(resetSorce),
    .di(resetSorce_dup_1));  // ../../top.v(3)
  PH1_PHY_PAD #(
    //.DRIVE("8"),
    //.IOTYPE("LVCMOS33"),
    //.LOCATION("R22"),
    //.ODT("OFF"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("MED"),
    //.VREF_VAL("25"),
    .DO_DFFMODE("NONE"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTDELMUX("NODEL"),
    .TSMUX("TS"))
    txd_syn_4 (
    .doq({open_n1025,open_n1026,open_n1027,txd_dup_3}),
    .ts(1'b0),
    .opad(txd));  // ../../top.v(14)
  AL_MAP_LUT6 #(
    .EQN("(B*A*~(~F*~E*~D*~C))"),
    .INIT(64'b1000100010001000100010001000100010001000100010001000100010000000))
    \uart_top/UART/al_10a416fe  (
    .a(\uart_top/UART/al_b1e4d128 ),
    .b(\uart_top/UART/al_51453453 [0]),
    .c(\uart_top/UART/al_ab9d8a6b [0]),
    .d(\uart_top/UART/al_ab9d8a6b [1]),
    .e(\uart_top/UART/al_ab9d8a6b [2]),
    .f(\uart_top/UART/al_ab9d8a6b [3]),
    .o(\uart_top/UART/al_1b288f5f ));  // ../../uart/al_ip/UART_gate.v(1474)
  AL_MAP_LUT6 #(
    .EQN("(~A*(~(B)*~(C)*~(D)*~(E)*~(F)+B*~(C)*~(D)*~(E)*~(F)+~(B)*~(C)*~(D)*E*~(F)+B*~(C)*~(D)*E*~(F)+~(B)*C*~(D)*E*~(F)+~(B)*~(C)*D*E*~(F)+B*~(C)*D*E*~(F)+~(B)*C*D*E*~(F)+B*C*D*E*~(F)+~(B)*~(C)*~(D)*~(E)*F+B*~(C)*~(D)*~(E)*F+B*C*~(D)*~(E)*F+~(B)*~(C)*~(D)*E*F+B*~(C)*~(D)*E*F+~(B)*C*~(D)*E*F+B*C*~(D)*E*F+~(B)*~(C)*D*E*F+B*~(C)*D*E*F+~(B)*C*D*E*F+B*C*D*E*F))"),
    .INIT(64'b0101010101010101000000000100010101010101000101010000000000000101))
    \uart_top/UART/al_1306aeaf  (
    .a(\uart_top/UART/al_92a6b6c5 ),
    .b(\uart_top/UART/al_9d8d5066 ),
    .c(\uart_top/UART/al_51453453 [1]),
    .d(\uart_top/UART/al_51453453 [2]),
    .e(\uart_top/UART/al_66ac1e2c [3]),
    .f(\uart_top/UART/al_66ac1e2c [4]),
    .o(\uart_top/UART/al_bbbd5217 [3]));  // ../../uart/al_ip/UART_gate.v(1364)
  AL_MAP_LUT6 #(
    .EQN("(C*(~(A)*~(B)*~(D)*~(E)*~(F)+A*~(B)*~(D)*~(E)*~(F)+~(A)*B*~(D)*~(E)*~(F)+A*B*~(D)*~(E)*~(F)+~(A)*~(B)*D*~(E)*~(F)+A*~(B)*D*~(E)*~(F)+A*~(B)*~(D)*E*~(F)+~(A)*B*~(D)*E*~(F)+A*B*~(D)*E*~(F)+A*~(B)*D*E*~(F)+~(A)*~(B)*~(D)*~(E)*F+~(A)*B*~(D)*~(E)*F+~(A)*~(B)*D*~(E)*F+~(A)*B*~(D)*E*F))"),
    .INIT(64'b0000000001000000000100000101000000100000111000000011000011110000))
    \uart_top/UART/al_183d9181  (
    .a(\uart_top/UART/al_1b288f5f ),
    .b(\uart_top/UART/al_7a41626d ),
    .c(\uart_top/UART/al_742955f5 ),
    .d(\uart_top/UART/tx_data [2]),
    .e(\uart_top/UART/al_66ac1e2c [2]),
    .f(\uart_top/UART/al_66ac1e2c [3]),
    .o(\uart_top/UART/al_46e816d3 ));  // ../../uart/al_ip/UART_gate.v(1331)
  AL_MAP_LUT4 #(
    .EQN("(~D*(C@(B*A)))"),
    .INIT(16'b0000000001111000))
    \uart_top/UART/al_1f39bb44  (
    .a(\uart_top/UART/al_90ec5389 [0]),
    .b(\uart_top/UART/al_90ec5389 [1]),
    .c(\uart_top/UART/al_90ec5389 [2]),
    .d(\uart_top/UART/tx_rdy ),
    .o(\uart_top/UART/al_f45e6b02 [2]));  // ../../uart/al_ip/UART_gate.v(127)
  AL_DFF_X \uart_top/UART/al_22f253c2  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/UART/al_10c8d026 ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/al_7e8b6626 ));  // ../../uart/al_ip/UART_gate.v(1215)
  AL_DFF_X \uart_top/UART/al_2d4e59e9  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/UART/al_82156b0c [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/al_51453453 [1]));  // ../../uart/al_ip/UART_gate.v(969)
  AL_MAP_LUT6 #(
    .EQN("(~A*(~(B)*~(C)*~(D)*~(E)*~(F)+B*~(C)*~(D)*~(E)*~(F)+~(B)*~(C)*~(D)*E*~(F)+B*~(C)*~(D)*E*~(F)+~(B)*C*~(D)*E*~(F)+~(B)*~(C)*D*E*~(F)+B*~(C)*D*E*~(F)+~(B)*C*D*E*~(F)+B*C*D*E*~(F)+~(B)*~(C)*~(D)*~(E)*F+B*~(C)*~(D)*~(E)*F+B*C*~(D)*~(E)*F+~(B)*~(C)*~(D)*E*F+B*~(C)*~(D)*E*F+~(B)*C*~(D)*E*F+B*C*~(D)*E*F+~(B)*~(C)*D*E*F+B*~(C)*D*E*F+~(B)*C*D*E*F+B*C*D*E*F))"),
    .INIT(64'b0101010101010101000000000100010101010101000101010000000000000101))
    \uart_top/UART/al_312c0da1  (
    .a(\uart_top/UART/al_1810ff50 ),
    .b(\uart_top/UART/al_9d8d5066 ),
    .c(\uart_top/UART/al_51453453 [1]),
    .d(\uart_top/UART/al_51453453 [2]),
    .e(\uart_top/UART/al_66ac1e2c [5]),
    .f(\uart_top/UART/al_66ac1e2c [6]),
    .o(\uart_top/UART/al_bbbd5217 [5]));  // ../../uart/al_ip/UART_gate.v(1408)
  AL_MAP_LUT4 #(
    .EQN("~((D*~A)*~(C)*~(B)+(D*~A)*C*~(B)+~((D*~A))*C*B+(D*~A)*C*B)"),
    .INIT(16'b0010111000111111))
    \uart_top/UART/al_45136871  (
    .a(\uart_top/UART/al_1b288f5f ),
    .b(\uart_top/UART/al_7a41626d ),
    .c(\uart_top/j ),
    .d(\uart_top/UART/al_66ac1e2c [7]),
    .o(\uart_top/UART/al_6b9aadef ));  // ../../uart/al_ip/UART_gate.v(1494)
  AL_DFF_X \uart_top/UART/al_45714151  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/UART/al_bbbd5217 [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/al_66ac1e2c [1]));  // ../../uart/al_ip/UART_gate.v(1032)
  AL_MAP_LUT6 #(
    .EQN("(F@E@D@C@B@A)"),
    .INIT(64'b0110100110010110100101100110100110010110011010010110100110010110))
    \uart_top/UART/al_45a1ea7a  (
    .a(\uart_top/UART/tx_data [5]),
    .b(\uart_top/UART/tx_data [4]),
    .c(\uart_top/UART/tx_data [3]),
    .d(\uart_top/UART/tx_data [2]),
    .e(\uart_top/UART/tx_data [1]),
    .f(\uart_top/UART/tx_data [0]),
    .o(\uart_top/UART/al_9ebf6313 ));  // ../../uart/al_ip/UART_gate.v(1227)
  AL_DFF_X \uart_top/UART/al_4c18300b  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/UART/al_bbbd5217 [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/al_66ac1e2c [2]));  // ../../uart/al_ip/UART_gate.v(1041)
  AL_MAP_LUT6 #(
    .EQN("(~(A)*B*C*~(D)*~(E)*~(F)+~(A)*B*~(C)*D*~(E)*~(F)+A*B*~(C)*D*~(E)*~(F)+~(A)*B*C*D*~(E)*~(F)+~(A)*B*~(C)*~(D)*E*~(F)+~(A)*~(B)*C*~(D)*~(E)*F+~(A)*~(B)*~(C)*D*~(E)*F+A*~(B)*~(C)*D*~(E)*F+~(A)*~(B)*C*D*~(E)*F+~(A)*~(B)*~(C)*~(D)*E*F+~(A)*~(B)*C*~(D)*E*F+A*~(B)*C*~(D)*E*F+~(A)*B*C*~(D)*E*F+A*B*C*~(D)*E*F+~(A)*~(B)*~(C)*D*E*F+A*~(B)*~(C)*D*E*F+~(A)*B*~(C)*D*E*F+A*B*~(C)*D*E*F+~(A)*~(B)*C*D*E*F+A*~(B)*C*D*E*F+~(A)*B*C*D*E*F+A*B*C*D*E*F)"),
    .INIT(64'b1111111111110001000100110001000000000000000001000100110001000000))
    \uart_top/UART/al_52ec989f  (
    .a(\uart_top/UART/al_a576c55c ),
    .b(\uart_top/UART/al_b1e4d128 ),
    .c(\uart_top/UART/al_51453453 [0]),
    .d(\uart_top/UART/al_51453453 [1]),
    .e(\uart_top/UART/al_51453453 [2]),
    .f(\uart_top/UART/al_ab9d8a6b [0]),
    .o(\uart_top/UART/al_5394316e [0]));  // ../../uart/al_ip/UART_gate.v(1160)
  AL_DFF_X \uart_top/UART/al_54eca49e  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/UART/al_f45e6b02 [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/al_90ec5389 [1]));  // ../../uart/al_ip/UART_gate.v(142)
  AL_MAP_LUT6 #(
    .EQN("(A*B*~(C)*D*~(E)*~(F)+~(A)*~(B)*C*~(D)*~(E)*F+A*~(B)*C*~(D)*~(E)*F+~(A)*~(B)*~(C)*D*~(E)*F+A*~(B)*~(C)*D*~(E)*F+~(A)*B*~(C)*D*~(E)*F+~(A)*~(B)*C*D*~(E)*F+A*~(B)*C*D*~(E)*F+~(A)*~(B)*~(C)*~(D)*E*F+A*~(B)*~(C)*~(D)*E*F+~(A)*~(B)*C*~(D)*E*F+A*~(B)*C*~(D)*E*F+~(A)*B*C*~(D)*E*F+A*B*C*~(D)*E*F+~(A)*~(B)*~(C)*D*E*F+A*~(B)*~(C)*D*E*F+~(A)*B*~(C)*D*E*F+A*B*~(C)*D*E*F+~(A)*~(B)*C*D*E*F+A*~(B)*C*D*E*F+~(A)*B*C*D*E*F+A*B*C*D*E*F)"),
    .INIT(64'b1111111111110011001101110011000000000000000000000000100000000000))
    \uart_top/UART/al_5584057c  (
    .a(\uart_top/UART/al_fb00635b ),
    .b(\uart_top/UART/al_b1e4d128 ),
    .c(\uart_top/UART/al_51453453 [0]),
    .d(\uart_top/UART/al_51453453 [1]),
    .e(\uart_top/UART/al_51453453 [2]),
    .f(\uart_top/UART/al_ab9d8a6b [3]),
    .o(\uart_top/UART/al_5394316e [3]));  // ../../uart/al_ip/UART_gate.v(1207)
  AL_DFF_X \uart_top/UART/al_56dde5cc  (
    .ar(1'b0),
    .as(~resetSorce_dup_1),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/UART/al_660a0fdc ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/tx_rdy ));  // ../../uart/al_ip/UART_gate.v(1275)
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'b0001))
    \uart_top/UART/al_599ce9e1  (
    .a(\uart_top/UART/al_90ec5389 [0]),
    .b(\uart_top/UART/tx_rdy ),
    .o(\uart_top/UART/al_f45e6b02 [0]));  // ../../uart/al_ip/UART_gate.v(112)
  AL_MAP_LUT6 #(
    .EQN("(C*(~(A)*~(B)*~(D)*~(E)*~(F)+A*~(B)*~(D)*~(E)*~(F)+~(A)*B*~(D)*~(E)*~(F)+A*B*~(D)*~(E)*~(F)+~(A)*~(B)*D*~(E)*~(F)+A*~(B)*D*~(E)*~(F)+A*~(B)*~(D)*E*~(F)+~(A)*B*~(D)*E*~(F)+A*B*~(D)*E*~(F)+A*~(B)*D*E*~(F)+~(A)*~(B)*~(D)*~(E)*F+~(A)*B*~(D)*~(E)*F+~(A)*~(B)*D*~(E)*F+~(A)*B*~(D)*E*F))"),
    .INIT(64'b0000000001000000000100000101000000100000111000000011000011110000))
    \uart_top/UART/al_5c430df1  (
    .a(\uart_top/UART/al_1b288f5f ),
    .b(\uart_top/UART/al_7a41626d ),
    .c(\uart_top/UART/al_742955f5 ),
    .d(\uart_top/UART/tx_data [0]),
    .e(\uart_top/UART/al_66ac1e2c [0]),
    .f(\uart_top/UART/al_66ac1e2c [1]),
    .o(\uart_top/UART/al_3e90220e ));  // ../../uart/al_ip/UART_gate.v(1287)
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'b1000))
    \uart_top/UART/al_5cda2ac  (
    .a(\uart_top/UART/al_ab9d8a6b [0]),
    .b(\uart_top/UART/al_ab9d8a6b [1]),
    .o(\uart_top/UART/al_c9feb186 ));  // ../../uart/al_ip/UART_gate.v(1193)
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'b10000000))
    \uart_top/UART/al_5f26eaca  (
    .a(\uart_top/UART/al_ab9d8a6b [1]),
    .b(\uart_top/UART/al_ab9d8a6b [2]),
    .c(\uart_top/UART/al_ab9d8a6b [3]),
    .o(\uart_top/UART/al_ce8dc8c6 ));  // ../../uart/al_ip/UART_gate.v(1466)
  AL_MAP_LUT5 #(
    .EQN("(~B*(~E*~((~D*~A))*~(C)+~E*(~D*~A)*~(C)+~(~E)*(~D*~A)*C+~E*(~D*~A)*C))"),
    .INIT(32'b00000000000100000000001100010011))
    \uart_top/UART/al_67a176fc  (
    .a(\uart_top/UART/al_ce8dc8c6 ),
    .b(\uart_top/UART/al_51453453 [0]),
    .c(\uart_top/UART/al_ab9d8a6b [0]),
    .d(\uart_top/UART/al_66ac1e2c [0]),
    .e(txd_dup_3),
    .o(\uart_top/UART/al_adf78afa ));  // ../../uart/al_ip/UART_gate.v(1108)
  AL_DFF_X \uart_top/UART/al_6a2a4f54  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/UART/al_5394316e [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/al_ab9d8a6b [3]));  // ../../uart/al_ip/UART_gate.v(1014)
  AL_DFF_X \uart_top/UART/al_6acfb5b0  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/UART/al_f45e6b02 [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/al_90ec5389 [0]));  // ../../uart/al_ip/UART_gate.v(133)
  AL_MAP_LUT6 #(
    .EQN("(C*(~(A)*~(B)*~(D)*~(E)*~(F)+A*~(B)*~(D)*~(E)*~(F)+~(A)*B*~(D)*~(E)*~(F)+A*B*~(D)*~(E)*~(F)+~(A)*~(B)*D*~(E)*~(F)+A*~(B)*D*~(E)*~(F)+A*~(B)*~(D)*E*~(F)+~(A)*B*~(D)*E*~(F)+A*B*~(D)*E*~(F)+A*~(B)*D*E*~(F)+~(A)*~(B)*~(D)*~(E)*F+~(A)*B*~(D)*~(E)*F+~(A)*~(B)*D*~(E)*F+~(A)*B*~(D)*E*F))"),
    .INIT(64'b0000000001000000000100000101000000100000111000000011000011110000))
    \uart_top/UART/al_6b16e0a9  (
    .a(\uart_top/UART/al_1b288f5f ),
    .b(\uart_top/UART/al_7a41626d ),
    .c(\uart_top/UART/al_742955f5 ),
    .d(\uart_top/UART/tx_data [1]),
    .e(\uart_top/UART/al_66ac1e2c [1]),
    .f(\uart_top/UART/al_66ac1e2c [2]),
    .o(\uart_top/UART/al_cac3f349 ));  // ../../uart/al_ip/UART_gate.v(1309)
  AL_MAP_LUT6 #(
    .EQN("(C*(~(A)*~(B)*~(D)*~(E)*~(F)+A*~(B)*~(D)*~(E)*~(F)+~(A)*B*~(D)*~(E)*~(F)+A*B*~(D)*~(E)*~(F)+~(A)*~(B)*D*~(E)*~(F)+A*~(B)*D*~(E)*~(F)+A*~(B)*~(D)*E*~(F)+~(A)*B*~(D)*E*~(F)+A*B*~(D)*E*~(F)+A*~(B)*D*E*~(F)+~(A)*~(B)*~(D)*~(E)*F+~(A)*B*~(D)*~(E)*F+~(A)*~(B)*D*~(E)*F+~(A)*B*~(D)*E*F))"),
    .INIT(64'b0000000001000000000100000101000000100000111000000011000011110000))
    \uart_top/UART/al_6d0a1b7b  (
    .a(\uart_top/UART/al_1b288f5f ),
    .b(\uart_top/UART/al_7a41626d ),
    .c(\uart_top/UART/al_742955f5 ),
    .d(\uart_top/UART/tx_data [6]),
    .e(\uart_top/UART/al_66ac1e2c [6]),
    .f(\uart_top/UART/al_66ac1e2c [7]),
    .o(\uart_top/UART/al_4ee01277 ));  // ../../uart/al_ip/UART_gate.v(1426)
  AL_MAP_LUT5 #(
    .EQN("(A*~(~E*~D*~C*~B))"),
    .INIT(32'b10101010101010101010101010101000))
    \uart_top/UART/al_6d1e5996  (
    .a(\uart_top/UART/al_b1e4d128 ),
    .b(\uart_top/UART/al_ab9d8a6b [0]),
    .c(\uart_top/UART/al_ab9d8a6b [1]),
    .d(\uart_top/UART/al_ab9d8a6b [2]),
    .e(\uart_top/UART/al_ab9d8a6b [3]),
    .o(\uart_top/UART/al_a576c55c ));  // ../../uart/al_ip/UART_gate.v(1257)
  AL_MAP_LUT6 #(
    .EQN("(~A*(~(B)*~(C)*~(D)*~(E)*~(F)+B*~(C)*~(D)*~(E)*~(F)+~(B)*~(C)*~(D)*E*~(F)+B*~(C)*~(D)*E*~(F)+~(B)*C*~(D)*E*~(F)+~(B)*~(C)*D*E*~(F)+B*~(C)*D*E*~(F)+~(B)*C*D*E*~(F)+B*C*D*E*~(F)+~(B)*~(C)*~(D)*~(E)*F+B*~(C)*~(D)*~(E)*F+B*C*~(D)*~(E)*F+~(B)*~(C)*~(D)*E*F+B*~(C)*~(D)*E*F+~(B)*C*~(D)*E*F+B*C*~(D)*E*F+~(B)*~(C)*D*E*F+B*~(C)*D*E*F+~(B)*C*D*E*F+B*C*D*E*F))"),
    .INIT(64'b0101010101010101000000000100010101010101000101010000000000000101))
    \uart_top/UART/al_6e1eccd6  (
    .a(\uart_top/UART/al_46e816d3 ),
    .b(\uart_top/UART/al_9d8d5066 ),
    .c(\uart_top/UART/al_51453453 [1]),
    .d(\uart_top/UART/al_51453453 [2]),
    .e(\uart_top/UART/al_66ac1e2c [2]),
    .f(\uart_top/UART/al_66ac1e2c [3]),
    .o(\uart_top/UART/al_bbbd5217 [2]));  // ../../uart/al_ip/UART_gate.v(1342)
  AL_MAP_LUT6 #(
    .EQN("(C*(~(A)*~(B)*~(D)*~(E)*~(F)+A*~(B)*~(D)*~(E)*~(F)+~(A)*B*~(D)*~(E)*~(F)+A*B*~(D)*~(E)*~(F)+~(A)*~(B)*D*~(E)*~(F)+A*~(B)*D*~(E)*~(F)+A*~(B)*~(D)*E*~(F)+~(A)*B*~(D)*E*~(F)+A*B*~(D)*E*~(F)+A*~(B)*D*E*~(F)+~(A)*~(B)*~(D)*~(E)*F+~(A)*B*~(D)*~(E)*F+~(A)*~(B)*D*~(E)*F+~(A)*B*~(D)*E*F))"),
    .INIT(64'b0000000001000000000100000101000000100000111000000011000011110000))
    \uart_top/UART/al_71ccb7f1  (
    .a(\uart_top/UART/al_1b288f5f ),
    .b(\uart_top/UART/al_7a41626d ),
    .c(\uart_top/UART/al_742955f5 ),
    .d(\uart_top/UART/tx_data [5]),
    .e(\uart_top/UART/al_66ac1e2c [5]),
    .f(\uart_top/UART/al_66ac1e2c [6]),
    .o(\uart_top/UART/al_1810ff50 ));  // ../../uart/al_ip/UART_gate.v(1397)
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)*~(E)+~(A)*B*~(C)*~(D)*~(E)+~(A)*~(B)*~(C)*~(D)*E+~(A)*B*~(C)*~(D)*E+~(A)*~(B)*C*~(D)*E+A*~(B)*C*~(D)*E+~(A)*~(B)*~(C)*D*E+A*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E+~(A)*~(B)*C*D*E+A*~(B)*C*D*E+~(A)*B*C*D*E+A*B*C*D*E)"),
    .INIT(32'b11111111001101010000000000000101))
    \uart_top/UART/al_726b0e37  (
    .a(\uart_top/UART/al_6b9aadef ),
    .b(\uart_top/UART/al_9d8d5066 ),
    .c(\uart_top/UART/al_51453453 [1]),
    .d(\uart_top/UART/al_51453453 [2]),
    .e(\uart_top/UART/al_66ac1e2c [7]),
    .o(\uart_top/UART/al_bbbd5217 [7]));  // ../../uart/al_ip/UART_gate.v(1456)
  AL_MAP_LUT6 #(
    .EQN("(~A*(~(B)*~(C)*~(D)*~(E)*~(F)+B*~(C)*~(D)*~(E)*~(F)+~(B)*~(C)*~(D)*E*~(F)+B*~(C)*~(D)*E*~(F)+~(B)*C*~(D)*E*~(F)+~(B)*~(C)*D*E*~(F)+B*~(C)*D*E*~(F)+~(B)*C*D*E*~(F)+B*C*D*E*~(F)+~(B)*~(C)*~(D)*~(E)*F+B*~(C)*~(D)*~(E)*F+B*C*~(D)*~(E)*F+~(B)*~(C)*~(D)*E*F+B*~(C)*~(D)*E*F+~(B)*C*~(D)*E*F+B*C*~(D)*E*F+~(B)*~(C)*D*E*F+B*~(C)*D*E*F+~(B)*C*D*E*F+B*C*D*E*F))"),
    .INIT(64'b0101010101010101000000000100010101010101000101010000000000000101))
    \uart_top/UART/al_79438ec0  (
    .a(\uart_top/UART/al_3e90220e ),
    .b(\uart_top/UART/al_9d8d5066 ),
    .c(\uart_top/UART/al_51453453 [1]),
    .d(\uart_top/UART/al_51453453 [2]),
    .e(\uart_top/UART/al_66ac1e2c [0]),
    .f(\uart_top/UART/al_66ac1e2c [1]),
    .o(\uart_top/UART/al_bbbd5217 [0]));  // ../../uart/al_ip/UART_gate.v(1298)
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'b10000000))
    \uart_top/UART/al_7a5ee64e  (
    .a(\uart_top/UART/al_b1e4d128 ),
    .b(\uart_top/UART/al_ce8dc8c6 ),
    .c(\uart_top/UART/al_ab9d8a6b [0]),
    .o(\uart_top/UART/al_5ea12a83 ));  // ../../uart/al_ip/UART_gate.v(936)
  AL_MAP_LUT6 #(
    .EQN("(A*~(B)*C*~(D)*E*~(F)+~(A)*B*~(C)*~(D)*~(E)*F+~(A)*~(B)*C*~(D)*~(E)*F+A*~(B)*C*~(D)*~(E)*F+~(A)*B*C*~(D)*~(E)*F+~(A)*~(B)*~(C)*D*~(E)*F+~(A)*B*~(C)*D*~(E)*F+A*B*~(C)*D*~(E)*F+~(A)*~(B)*C*D*~(E)*F+A*~(B)*C*D*~(E)*F+~(A)*B*C*D*~(E)*F+A*B*C*D*~(E)*F+~(A)*B*~(C)*~(D)*E*F+~(A)*~(B)*C*~(D)*E*F+~(A)*B*C*~(D)*E*F+~(A)*~(B)*~(C)*D*E*F+~(A)*B*~(C)*D*E*F+A*B*~(C)*D*E*F+~(A)*~(B)*C*D*E*F+A*~(B)*C*D*E*F+~(A)*B*C*D*E*F+A*B*C*D*E*F)"),
    .INIT(64'b1111110101010100111111010111010000000000001000000000000000000000))
    \uart_top/UART/al_7b1b9346  (
    .a(\uart_top/UART/al_b1e4d128 ),
    .b(\uart_top/UART/al_51453453 [0]),
    .c(\uart_top/UART/al_51453453 [1]),
    .d(\uart_top/UART/al_51453453 [2]),
    .e(\uart_top/UART/al_ab9d8a6b [0]),
    .f(\uart_top/UART/al_ab9d8a6b [1]),
    .o(\uart_top/UART/al_5394316e [1]));  // ../../uart/al_ip/UART_gate.v(1171)
  AL_DFF_X \uart_top/UART/al_7bd115f1  (
    .ar(1'b0),
    .as(~resetSorce_dup_1),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/UART/al_da7ff39c ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(txd_dup_3));  // ../../uart/al_ip/UART_gate.v(1148)
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'b0001))
    \uart_top/UART/al_8556a0f1  (
    .a(\uart_top/UART/al_51453453 [1]),
    .b(\uart_top/UART/al_51453453 [2]),
    .o(\uart_top/UART/al_742955f5 ));  // ../../uart/al_ip/UART_gate.v(1419)
  AL_MAP_LUT6 #(
    .EQN("(F*~((E@D@A))*~((C*B))+F*(E@D@A)*~((C*B))+~(F)*(E@D@A)*(C*B)+F*(E@D@A)*(C*B))"),
    .INIT(64'b1011111101111111011111111011111110000000010000000100000010000000))
    \uart_top/UART/al_8632841b  (
    .a(\uart_top/UART/al_9ebf6313 ),
    .b(\uart_top/UART/al_7a41626d ),
    .c(\uart_top/UART/al_742955f5 ),
    .d(\uart_top/j ),
    .e(\uart_top/UART/tx_data [6]),
    .f(\uart_top/UART/al_7e8b6626 ),
    .o(\uart_top/UART/al_10c8d026 ));  // ../../uart/al_ip/UART_gate.v(1238)
  AL_MAP_LUT6 #(
    .EQN("(~A*(~(B)*~(C)*~(D)*~(E)*~(F)+B*~(C)*~(D)*~(E)*~(F)+~(B)*~(C)*~(D)*E*~(F)+B*~(C)*~(D)*E*~(F)+~(B)*C*~(D)*E*~(F)+~(B)*~(C)*D*E*~(F)+B*~(C)*D*E*~(F)+~(B)*C*D*E*~(F)+B*C*D*E*~(F)+~(B)*~(C)*~(D)*~(E)*F+B*~(C)*~(D)*~(E)*F+B*C*~(D)*~(E)*F+~(B)*~(C)*~(D)*E*F+B*~(C)*~(D)*E*F+~(B)*C*~(D)*E*F+B*C*~(D)*E*F+~(B)*~(C)*D*E*F+B*~(C)*D*E*F+~(B)*C*D*E*F+B*C*D*E*F))"),
    .INIT(64'b0101010101010101000000000100010101010101000101010000000000000101))
    \uart_top/UART/al_8a5bb64b  (
    .a(\uart_top/UART/al_4ee01277 ),
    .b(\uart_top/UART/al_9d8d5066 ),
    .c(\uart_top/UART/al_51453453 [1]),
    .d(\uart_top/UART/al_51453453 [2]),
    .e(\uart_top/UART/al_66ac1e2c [6]),
    .f(\uart_top/UART/al_66ac1e2c [7]),
    .o(\uart_top/UART/al_bbbd5217 [6]));  // ../../uart/al_ip/UART_gate.v(1437)
  AL_DFF_X \uart_top/UART/al_8ca2cbad  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/UART/al_bbbd5217 [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/al_66ac1e2c [0]));  // ../../uart/al_ip/UART_gate.v(1023)
  AL_MAP_LUT4 #(
    .EQN("(D*~C*~B*A)"),
    .INIT(16'b0000001000000000))
    \uart_top/UART/al_8f3d7bde  (
    .a(\uart_top/UART/al_b1e4d128 ),
    .b(\uart_top/UART/al_ce8dc8c6 ),
    .c(\uart_top/UART/al_51453453 [0]),
    .d(\uart_top/UART/al_ab9d8a6b [0]),
    .o(\uart_top/UART/al_9d8d5066 ));  // ../../uart/al_ip/UART_gate.v(1485)
  AL_MAP_LUT3 #(
    .EQN("(~C*(B@A))"),
    .INIT(8'b00000110))
    \uart_top/UART/al_90d37ae6  (
    .a(\uart_top/UART/al_90ec5389 [0]),
    .b(\uart_top/UART/al_90ec5389 [1]),
    .c(\uart_top/UART/tx_rdy ),
    .o(\uart_top/UART/al_f45e6b02 [1]));  // ../../uart/al_ip/UART_gate.v(119)
  AL_MAP_LUT4 #(
    .EQN("(~D*(~(A)*B*~(C)+A*B*~(C)+~(A)*~(B)*C))"),
    .INIT(16'b0000000000011100))
    \uart_top/UART/al_9305430a  (
    .a(\uart_top/UART/al_5ea12a83 ),
    .b(\uart_top/UART/al_1b288f5f ),
    .c(\uart_top/UART/al_51453453 [1]),
    .d(\uart_top/UART/al_51453453 [2]),
    .o(\uart_top/UART/al_82156b0c [1]));  // ../../uart/al_ip/UART_gate.v(944)
  AL_DFF_X \uart_top/UART/al_9317e830  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/UART/al_82156b0c [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/al_51453453 [2]));  // ../../uart/al_ip/UART_gate.v(978)
  AL_DFF_X \uart_top/UART/al_93985aa0  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/UART/al_bbbd5217 [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/al_66ac1e2c [5]));  // ../../uart/al_ip/UART_gate.v(1068)
  AL_DFF_X \uart_top/UART/al_9b1e179  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/UART/al_bbbd5217 [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/al_66ac1e2c [6]));  // ../../uart/al_ip/UART_gate.v(1077)
  AL_MAP_LUT3 #(
    .EQN("(C*~B*A)"),
    .INIT(8'b00100000))
    \uart_top/UART/al_9c922cb0  (
    .a(\uart_top/UART/tx_en ),
    .b(\uart_top/UART/al_51453453 [0]),
    .c(\uart_top/UART/tx_rdy ),
    .o(\uart_top/UART/al_7a41626d ));  // ../../uart/al_ip/UART_gate.v(1448)
  AL_DFF_X \uart_top/UART/al_a536c0f1  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/UART/al_f45e6b02 [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/al_90ec5389 [2]));  // ../../uart/al_ip/UART_gate.v(151)
  AL_MAP_LUT5 #(
    .EQN("(~E*~(~(~D*B)*~(C*~A)))"),
    .INIT(32'b00000000000000000101000011011100))
    \uart_top/UART/al_aea0cca9  (
    .a(\uart_top/UART/al_a576c55c ),
    .b(\uart_top/UART/al_7a41626d ),
    .c(\uart_top/UART/al_51453453 [0]),
    .d(\uart_top/UART/al_51453453 [1]),
    .e(\uart_top/UART/al_51453453 [2]),
    .o(\uart_top/UART/al_82156b0c [0]));  // ../../uart/al_ip/UART_gate.v(926)
  AL_MAP_LUT3 #(
    .EQN("(C*B*A)"),
    .INIT(8'b10000000))
    \uart_top/UART/al_b063a97  (
    .a(\uart_top/UART/al_90ec5389 [0]),
    .b(\uart_top/UART/al_90ec5389 [1]),
    .c(\uart_top/UART/al_90ec5389 [2]),
    .o(\uart_top/UART/al_b1e4d128 ));  // ../../uart/al_ip/UART_gate.v(1249)
  AL_DFF_X \uart_top/UART/al_b58d9df0  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/UART/al_5394316e [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/al_ab9d8a6b [0]));  // ../../uart/al_ip/UART_gate.v(987)
  AL_DFF_X \uart_top/UART/al_b9976181  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/UART/al_82156b0c [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/al_51453453 [0]));  // ../../uart/al_ip/UART_gate.v(960)
  AL_MAP_LUT6 #(
    .EQN("(~F*~E*~D*~C*~B*A)"),
    .INIT(64'b0000000000000000000000000000000000000000000000000000000000000010))
    \uart_top/UART/al_b9b57107  (
    .a(\uart_top/UART/al_51453453 [0]),
    .b(\uart_top/UART/al_ab9d8a6b [0]),
    .c(\uart_top/UART/al_ab9d8a6b [1]),
    .d(\uart_top/UART/al_ab9d8a6b [2]),
    .e(\uart_top/UART/al_ab9d8a6b [3]),
    .f(\uart_top/UART/al_7e8b6626 ),
    .o(\uart_top/UART/al_ccf0619 ));  // ../../uart/al_ip/UART_gate.v(1118)
  AL_MAP_LUT5 #(
    .EQN("(~B*~(C*~(E*~(D)*~(A)+E*D*~(A)+~(E)*D*A+E*D*A)))"),
    .INIT(32'b00110011000100110010001100000011))
    \uart_top/UART/al_b9d11bc7  (
    .a(\uart_top/UART/al_a576c55c ),
    .b(\uart_top/UART/al_7a41626d ),
    .c(\uart_top/UART/al_51453453 [0]),
    .d(\uart_top/UART/al_66ac1e2c [0]),
    .e(txd_dup_3),
    .o(\uart_top/UART/al_f46dca84 ));  // ../../uart/al_ip/UART_gate.v(1098)
  AL_MAP_LUT6 #(
    .EQN("(A*B*~(C)*D*~(E)*~(F)+~(A)*~(B)*C*~(D)*~(E)*F+~(A)*B*C*~(D)*~(E)*F+~(A)*~(B)*~(C)*D*~(E)*F+A*~(B)*~(C)*D*~(E)*F+~(A)*B*~(C)*D*~(E)*F+~(A)*~(B)*C*D*~(E)*F+~(A)*B*C*D*~(E)*F+~(A)*~(B)*~(C)*~(D)*E*F+~(A)*B*~(C)*~(D)*E*F+~(A)*~(B)*C*~(D)*E*F+A*~(B)*C*~(D)*E*F+~(A)*B*C*~(D)*E*F+A*B*C*~(D)*E*F+~(A)*~(B)*~(C)*D*E*F+A*~(B)*~(C)*D*E*F+~(A)*B*~(C)*D*E*F+A*B*~(C)*D*E*F+~(A)*~(B)*C*D*E*F+A*~(B)*C*D*E*F+~(A)*B*C*D*E*F+A*B*C*D*E*F)"),
    .INIT(64'b1111111111110101010101110101000000000000000000000000100000000000))
    \uart_top/UART/al_b9ff4cc2  (
    .a(\uart_top/UART/al_b1e4d128 ),
    .b(\uart_top/UART/al_c9feb186 ),
    .c(\uart_top/UART/al_51453453 [0]),
    .d(\uart_top/UART/al_51453453 [1]),
    .e(\uart_top/UART/al_51453453 [2]),
    .f(\uart_top/UART/al_ab9d8a6b [2]),
    .o(\uart_top/UART/al_5394316e [2]));  // ../../uart/al_ip/UART_gate.v(1182)
  AL_MAP_LUT6 #(
    .EQN("(~A*(~(B)*~(C)*~(D)*~(E)*~(F)+B*~(C)*~(D)*~(E)*~(F)+~(B)*~(C)*~(D)*E*~(F)+B*~(C)*~(D)*E*~(F)+~(B)*C*~(D)*E*~(F)+~(B)*~(C)*D*E*~(F)+B*~(C)*D*E*~(F)+~(B)*C*D*E*~(F)+B*C*D*E*~(F)+~(B)*~(C)*~(D)*~(E)*F+B*~(C)*~(D)*~(E)*F+B*C*~(D)*~(E)*F+~(B)*~(C)*~(D)*E*F+B*~(C)*~(D)*E*F+~(B)*C*~(D)*E*F+B*C*~(D)*E*F+~(B)*~(C)*D*E*F+B*~(C)*D*E*F+~(B)*C*D*E*F+B*C*D*E*F))"),
    .INIT(64'b0101010101010101000000000100010101010101000101010000000000000101))
    \uart_top/UART/al_ba052234  (
    .a(\uart_top/UART/al_4240b8f4 ),
    .b(\uart_top/UART/al_9d8d5066 ),
    .c(\uart_top/UART/al_51453453 [1]),
    .d(\uart_top/UART/al_51453453 [2]),
    .e(\uart_top/UART/al_66ac1e2c [4]),
    .f(\uart_top/UART/al_66ac1e2c [5]),
    .o(\uart_top/UART/al_bbbd5217 [4]));  // ../../uart/al_ip/UART_gate.v(1386)
  AL_DFF_X \uart_top/UART/al_c76ef8bc  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/UART/al_bbbd5217 [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/al_66ac1e2c [7]));  // ../../uart/al_ip/UART_gate.v(1086)
  AL_DFF_X \uart_top/UART/al_cea83c51  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/UART/al_bbbd5217 [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/al_66ac1e2c [3]));  // ../../uart/al_ip/UART_gate.v(1050)
  AL_DFF_X \uart_top/UART/al_ceac5162  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/UART/al_5394316e [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/al_ab9d8a6b [2]));  // ../../uart/al_ip/UART_gate.v(1005)
  AL_MAP_LUT6 #(
    .EQN("(C*(~(A)*~(B)*~(D)*~(E)*~(F)+A*~(B)*~(D)*~(E)*~(F)+~(A)*B*~(D)*~(E)*~(F)+A*B*~(D)*~(E)*~(F)+~(A)*~(B)*D*~(E)*~(F)+A*~(B)*D*~(E)*~(F)+A*~(B)*~(D)*E*~(F)+~(A)*B*~(D)*E*~(F)+A*B*~(D)*E*~(F)+A*~(B)*D*E*~(F)+~(A)*~(B)*~(D)*~(E)*F+~(A)*B*~(D)*~(E)*F+~(A)*~(B)*D*~(E)*F+~(A)*B*~(D)*E*F))"),
    .INIT(64'b0000000001000000000100000101000000100000111000000011000011110000))
    \uart_top/UART/al_d2322acb  (
    .a(\uart_top/UART/al_1b288f5f ),
    .b(\uart_top/UART/al_7a41626d ),
    .c(\uart_top/UART/al_742955f5 ),
    .d(\uart_top/UART/tx_data [4]),
    .e(\uart_top/UART/al_66ac1e2c [4]),
    .f(\uart_top/UART/al_66ac1e2c [5]),
    .o(\uart_top/UART/al_4240b8f4 ));  // ../../uart/al_ip/UART_gate.v(1375)
  AL_MAP_LUT5 #(
    .EQN("(A*B*C*~(D)*~(E)+~(A)*~(B)*~(C)*D*~(E)+A*~(B)*C*~(D)*E+A*B*C*~(D)*E+~(A)*~(B)*~(C)*D*E)"),
    .INIT(32'b00000001101000000000000110000000))
    \uart_top/UART/al_d457fe39  (
    .a(\uart_top/UART/al_a576c55c ),
    .b(\uart_top/UART/al_51453453 [0]),
    .c(\uart_top/UART/al_51453453 [1]),
    .d(\uart_top/UART/al_51453453 [2]),
    .e(\uart_top/UART/al_5ea12a83 ),
    .o(\uart_top/UART/al_82156b0c [2]));  // ../../uart/al_ip/UART_gate.v(953)
  AL_MAP_LUT6 #(
    .EQN("~(~(F*~B)*~(E*~D*~C*A))"),
    .INIT(64'b0011001100111011001100110011001100000000000010100000000000000000))
    \uart_top/UART/al_d6757692  (
    .a(\uart_top/UART/al_a576c55c ),
    .b(\uart_top/UART/tx_en ),
    .c(\uart_top/UART/al_51453453 [0]),
    .d(\uart_top/UART/al_51453453 [1]),
    .e(\uart_top/UART/al_51453453 [2]),
    .f(\uart_top/UART/tx_rdy ),
    .o(\uart_top/UART/al_660a0fdc ));  // ../../uart/al_ip/UART_gate.v(1267)
  AL_MAP_LUT6 #(
    .EQN("(C*(~(A)*~(B)*~(D)*~(E)*~(F)+A*~(B)*~(D)*~(E)*~(F)+~(A)*B*~(D)*~(E)*~(F)+A*B*~(D)*~(E)*~(F)+~(A)*~(B)*D*~(E)*~(F)+A*~(B)*D*~(E)*~(F)+A*~(B)*~(D)*E*~(F)+~(A)*B*~(D)*E*~(F)+A*B*~(D)*E*~(F)+A*~(B)*D*E*~(F)+~(A)*~(B)*~(D)*~(E)*F+~(A)*B*~(D)*~(E)*F+~(A)*~(B)*D*~(E)*F+~(A)*B*~(D)*E*F))"),
    .INIT(64'b0000000001000000000100000101000000100000111000000011000011110000))
    \uart_top/UART/al_d9343e79  (
    .a(\uart_top/UART/al_1b288f5f ),
    .b(\uart_top/UART/al_7a41626d ),
    .c(\uart_top/UART/al_742955f5 ),
    .d(\uart_top/UART/tx_data [3]),
    .e(\uart_top/UART/al_66ac1e2c [3]),
    .f(\uart_top/UART/al_66ac1e2c [4]),
    .o(\uart_top/UART/al_92a6b6c5 ));  // ../../uart/al_ip/UART_gate.v(1353)
  AL_MAP_LUT6 #(
    .EQN("(~((~B*~A))*~(C)*~(D)*~(E)*~(F)+(~B*~A)*~(C)*~(D)*~(E)*~(F)+~((~B*~A))*C*~(D)*~(E)*~(F)+(~B*~A)*C*~(D)*~(E)*~(F)+~((~B*~A))*~(C)*D*~(E)*~(F)+(~B*~A)*~(C)*D*~(E)*~(F)+~((~B*~A))*C*D*~(E)*~(F)+~((~B*~A))*~(C)*~(D)*E*~(F)+(~B*~A)*~(C)*~(D)*E*~(F)+~((~B*~A))*C*~(D)*E*~(F)+(~B*~A)*C*~(D)*E*~(F)+~((~B*~A))*~(C)*D*E*~(F)+(~B*~A)*~(C)*D*E*~(F)+~((~B*~A))*C*D*E*~(F)+(~B*~A)*C*D*E*~(F)+~((~B*~A))*~(C)*~(D)*~(E)*F+(~B*~A)*~(C)*~(D)*~(E)*F+~((~B*~A))*C*~(D)*~(E)*F+(~B*~A)*C*~(D)*~(E)*F+~((~B*~A))*C*D*~(E)*F)"),
    .INIT(64'b0000000000000000111000001111111111111111111111111110111111111111))
    \uart_top/UART/al_e777be33  (
    .a(\uart_top/UART/al_adf78afa ),
    .b(\uart_top/UART/al_ccf0619 ),
    .c(\uart_top/UART/al_b1e4d128 ),
    .d(\uart_top/UART/al_51453453 [1]),
    .e(\uart_top/UART/al_51453453 [2]),
    .f(txd_dup_3),
    .o(\uart_top/UART/al_afca84e ));  // ../../uart/al_ip/UART_gate.v(1129)
  AL_DFF_X \uart_top/UART/al_ec299de1  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/UART/al_5394316e [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/al_ab9d8a6b [1]));  // ../../uart/al_ip/UART_gate.v(996)
  AL_MAP_LUT6 #(
    .EQN("(~A*(~(B)*~(C)*~(D)*~(E)*~(F)+B*~(C)*~(D)*~(E)*~(F)+~(B)*~(C)*~(D)*E*~(F)+B*~(C)*~(D)*E*~(F)+~(B)*C*~(D)*E*~(F)+~(B)*~(C)*D*E*~(F)+B*~(C)*D*E*~(F)+~(B)*C*D*E*~(F)+B*C*D*E*~(F)+~(B)*~(C)*~(D)*~(E)*F+B*~(C)*~(D)*~(E)*F+B*C*~(D)*~(E)*F+~(B)*~(C)*~(D)*E*F+B*~(C)*~(D)*E*F+~(B)*C*~(D)*E*F+B*C*~(D)*E*F+~(B)*~(C)*D*E*F+B*~(C)*D*E*F+~(B)*C*D*E*F+B*C*D*E*F))"),
    .INIT(64'b0101010101010101000000000100010101010101000101010000000000000101))
    \uart_top/UART/al_f4307f76  (
    .a(\uart_top/UART/al_cac3f349 ),
    .b(\uart_top/UART/al_9d8d5066 ),
    .c(\uart_top/UART/al_51453453 [1]),
    .d(\uart_top/UART/al_51453453 [2]),
    .e(\uart_top/UART/al_66ac1e2c [1]),
    .f(\uart_top/UART/al_66ac1e2c [2]),
    .o(\uart_top/UART/al_bbbd5217 [1]));  // ../../uart/al_ip/UART_gate.v(1320)
  AL_DFF_X \uart_top/UART/al_f5ac1211  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/UART/al_bbbd5217 [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/al_66ac1e2c [4]));  // ../../uart/al_ip/UART_gate.v(1059)
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'b1000))
    \uart_top/UART/al_f637f1aa  (
    .a(\uart_top/UART/al_c9feb186 ),
    .b(\uart_top/UART/al_ab9d8a6b [2]),
    .o(\uart_top/UART/al_fb00635b ));  // ../../uart/al_ip/UART_gate.v(1200)
  AL_MAP_LUT6 #(
    .EQN("~(B*~(~E*(A*~((~D*C))*~(F)+A*(~D*C)*~(F)+~(A)*(~D*C)*F+A*(~D*C)*F)))"),
    .INIT(64'b0011001100110011001100111111001100110011001100111011101110111011))
    \uart_top/UART/al_f6e602c0  (
    .a(\uart_top/UART/al_f46dca84 ),
    .b(\uart_top/UART/al_afca84e ),
    .c(\uart_top/UART/al_b1e4d128 ),
    .d(\uart_top/UART/al_51453453 [0]),
    .e(\uart_top/UART/al_51453453 [1]),
    .f(\uart_top/UART/al_51453453 [2]),
    .o(\uart_top/UART/al_da7ff39c ));  // ../../uart/al_ip/UART_gate.v(1140)
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    \uart_top/UART/tx_en_syn_1  (
    .a(\uart_top/clkI160 ),
    .o(\uart_top/UART/tx_en ));  // ../../uart/al_ip/UART_gate.v(23)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \uart_top/div160/add0_syn_20  (
    .a(1'b0),
    .o({\uart_top/div160/add0_syn_106 ,open_n1054}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \uart_top/div160/add0_syn_21  (
    .a(\uart_top/div160/num [0]),
    .b(1'b1),
    .c(\uart_top/div160/add0_syn_106 ),
    .o({\uart_top/div160/add0_syn_107 ,\uart_top/div160/num_b1 [0]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \uart_top/div160/add0_syn_22  (
    .a(\uart_top/div160/num [1]),
    .b(1'b0),
    .c(\uart_top/div160/add0_syn_107 ),
    .o({\uart_top/div160/add0_syn_108 ,\uart_top/div160/num_b1 [1]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \uart_top/div160/add0_syn_23  (
    .a(\uart_top/div160/num [2]),
    .b(1'b0),
    .c(\uart_top/div160/add0_syn_108 ),
    .o({\uart_top/div160/add0_syn_109 ,\uart_top/div160/num_b1 [2]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \uart_top/div160/add0_syn_24  (
    .a(\uart_top/div160/num [3]),
    .b(1'b0),
    .c(\uart_top/div160/add0_syn_109 ),
    .o({\uart_top/div160/add0_syn_110 ,\uart_top/div160/num_b1 [3]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \uart_top/div160/add0_syn_25  (
    .a(\uart_top/div160/num [4]),
    .b(1'b0),
    .c(\uart_top/div160/add0_syn_110 ),
    .o({\uart_top/div160/add0_syn_111 ,\uart_top/div160/num_b1 [4]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \uart_top/div160/add0_syn_26  (
    .a(\uart_top/div160/num [5]),
    .b(1'b0),
    .c(\uart_top/div160/add0_syn_111 ),
    .o({\uart_top/div160/add0_syn_112 ,\uart_top/div160/num_b1 [5]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \uart_top/div160/add0_syn_27  (
    .a(\uart_top/div160/num [6]),
    .b(1'b0),
    .c(\uart_top/div160/add0_syn_112 ),
    .o({\uart_top/div160/add0_syn_113 ,\uart_top/div160/num_b1 [6]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \uart_top/div160/add0_syn_28  (
    .a(\uart_top/div160/num [7]),
    .b(1'b0),
    .c(\uart_top/div160/add0_syn_113 ),
    .o({\uart_top/div160/add0_syn_114 ,\uart_top/div160/num_b1 [7]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \uart_top/div160/add0_syn_29  (
    .a(\uart_top/div160/num [8]),
    .b(1'b0),
    .c(\uart_top/div160/add0_syn_114 ),
    .o({\uart_top/div160/add0_syn_115 ,\uart_top/div160/num_b1 [8]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \uart_top/div160/add0_syn_30  (
    .a(\uart_top/div160/num [9]),
    .b(1'b0),
    .c(\uart_top/div160/add0_syn_115 ),
    .o({\uart_top/div160/add0_syn_116 ,\uart_top/div160/num_b1 [9]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \uart_top/div160/add0_syn_31  (
    .a(\uart_top/div160/num [10]),
    .b(1'b0),
    .c(\uart_top/div160/add0_syn_116 ),
    .o({\uart_top/div160/add0_syn_117 ,\uart_top/div160/num_b1 [10]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \uart_top/div160/add0_syn_32  (
    .a(\uart_top/div160/num [11]),
    .b(1'b0),
    .c(\uart_top/div160/add0_syn_117 ),
    .o({\uart_top/div160/add0_syn_118 ,\uart_top/div160/num_b1 [11]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \uart_top/div160/add0_syn_33  (
    .a(\uart_top/div160/num [12]),
    .b(1'b0),
    .c(\uart_top/div160/add0_syn_118 ),
    .o({\uart_top/div160/add0_syn_119 ,\uart_top/div160/num_b1 [12]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \uart_top/div160/add0_syn_34  (
    .a(\uart_top/div160/num [13]),
    .b(1'b0),
    .c(\uart_top/div160/add0_syn_119 ),
    .o({\uart_top/div160/add0_syn_120 ,\uart_top/div160/num_b1 [13]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \uart_top/div160/add0_syn_35  (
    .a(\uart_top/div160/num [14]),
    .b(1'b0),
    .c(\uart_top/div160/add0_syn_120 ),
    .o({\uart_top/div160/add0_syn_121 ,\uart_top/div160/num_b1 [14]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \uart_top/div160/add0_syn_36  (
    .a(\uart_top/div160/num [15]),
    .b(1'b0),
    .c(\uart_top/div160/add0_syn_121 ),
    .o({\uart_top/div160/add0_syn_122 ,\uart_top/div160/num_b1 [15]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \uart_top/div160/add0_syn_37  (
    .a(\uart_top/div160/num [16]),
    .b(1'b0),
    .c(\uart_top/div160/add0_syn_122 ),
    .o({\uart_top/div160/add0_syn_123 ,\uart_top/div160/num_b1 [16]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \uart_top/div160/add0_syn_38  (
    .a(\uart_top/div160/num [17]),
    .b(1'b0),
    .c(\uart_top/div160/add0_syn_123 ),
    .o({\uart_top/div160/add0_syn_124 ,\uart_top/div160/num_b1 [17]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \uart_top/div160/add0_syn_39  (
    .a(\uart_top/div160/num [18]),
    .b(1'b0),
    .c(\uart_top/div160/add0_syn_124 ),
    .o({\uart_top/div160/add0_syn_125 ,\uart_top/div160/num_b1 [18]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \uart_top/div160/add0_syn_40  (
    .a(\uart_top/div160/num [19]),
    .b(1'b0),
    .c(\uart_top/div160/add0_syn_125 ),
    .o({\uart_top/div160/add0_syn_126 ,\uart_top/div160/num_b1 [19]}));  // ../../lms/div.v(11)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \uart_top/div160/add0_syn_41  (
    .a(\uart_top/div160/num [20]),
    .b(1'b0),
    .c(\uart_top/div160/add0_syn_126 ),
    .o({open_n1055,\uart_top/div160/num_b1 [20]}));  // ../../lms/div.v(11)
  AL_MAP_LUT6 #(
    .EQN("(C*~(~F*E*~D*B*A))"),
    .INIT(64'hf0f0f0f0f070f0f0))
    \uart_top/div160/num_b[0]_syn_1  (
    .a(\uart_top/div160/num_b[5]_syn_6 ),
    .b(\uart_top/div160/num_b[5]_syn_8 ),
    .c(\uart_top/div160/num_b1 [0]),
    .d(\uart_top/div160/num [6]),
    .e(\uart_top/div160/num [7]),
    .f(\uart_top/div160/num [20]),
    .o(\uart_top/div160/num_b [0]));
  AL_MAP_LUT6 #(
    .EQN("(~F*~E*~D*~C*~B*~A)"),
    .INIT(64'h0000000000000001))
    \uart_top/div160/num_b[5]_syn_1  (
    .a(\uart_top/div160/num [8]),
    .b(\uart_top/div160/num [9]),
    .c(\uart_top/div160/num [10]),
    .d(\uart_top/div160/num [11]),
    .e(\uart_top/div160/num [12]),
    .f(\uart_top/div160/num [13]),
    .o(\uart_top/div160/num_b[5]_syn_2 ));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*~A)"),
    .INIT(16'h0001))
    \uart_top/div160/num_b[5]_syn_3  (
    .a(\uart_top/div160/num [16]),
    .b(\uart_top/div160/num [17]),
    .c(\uart_top/div160/num [18]),
    .d(\uart_top/div160/num [19]),
    .o(\uart_top/div160/num_b[5]_syn_4 ));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*B*A)"),
    .INIT(16'h0008))
    \uart_top/div160/num_b[5]_syn_5  (
    .a(\uart_top/div160/num_b[5]_syn_2 ),
    .b(\uart_top/div160/num_b[5]_syn_4 ),
    .c(\uart_top/div160/num [14]),
    .d(\uart_top/div160/num [15]),
    .o(\uart_top/div160/num_b[5]_syn_6 ));
  AL_MAP_LUT6 #(
    .EQN("(~F*E*D*C*B*A)"),
    .INIT(64'h0000000080000000))
    \uart_top/div160/num_b[5]_syn_7  (
    .a(\uart_top/div160/num [0]),
    .b(\uart_top/div160/num [1]),
    .c(\uart_top/div160/num [2]),
    .d(\uart_top/div160/num [3]),
    .e(\uart_top/div160/num [4]),
    .f(\uart_top/div160/num [5]),
    .o(\uart_top/div160/num_b[5]_syn_8 ));
  AL_MAP_LUT6 #(
    .EQN("(C*~(~F*E*~D*B*A))"),
    .INIT(64'hf0f0f0f0f070f0f0))
    \uart_top/div160/num_b[5]_syn_9  (
    .a(\uart_top/div160/num_b[5]_syn_6 ),
    .b(\uart_top/div160/num_b[5]_syn_8 ),
    .c(\uart_top/div160/num_b1 [5]),
    .d(\uart_top/div160/num [6]),
    .e(\uart_top/div160/num [7]),
    .f(\uart_top/div160/num [20]),
    .o(\uart_top/div160/num_b [5]));
  AL_MAP_LUT6 #(
    .EQN("(C*~(~F*E*~D*B*A))"),
    .INIT(64'hf0f0f0f0f070f0f0))
    \uart_top/div160/num_b[7]_syn_1  (
    .a(\uart_top/div160/num_b[5]_syn_6 ),
    .b(\uart_top/div160/num_b[5]_syn_8 ),
    .c(\uart_top/div160/num_b1 [7]),
    .d(\uart_top/div160/num [6]),
    .e(\uart_top/div160/num [7]),
    .f(\uart_top/div160/num [20]),
    .o(\uart_top/div160/num_b [7]));
  AL_MAP_LUT5 #(
    .EQN("(~E*D*~C*B*A)"),
    .INIT(32'h00000800))
    \uart_top/div160/out_n_syn_1  (
    .a(\uart_top/div160/num_b[5]_syn_6 ),
    .b(\uart_top/div160/num_b[5]_syn_8 ),
    .c(\uart_top/div160/num [6]),
    .d(\uart_top/div160/num [7]),
    .e(\uart_top/div160/num [20]),
    .o(\uart_top/div160/out_n ));
  AL_DFF_X \uart_top/div160/out_reg  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/out_n ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/clkI160 ));  // ../../lms/div.v(9)
  AL_DFF_X \uart_top/div160/reg0_syn_10  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/num_b1 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/div160/num [8]));  // ../../lms/div.v(9)
  AL_DFF_X \uart_top/div160/reg0_syn_11  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/num_b1 [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/div160/num [9]));  // ../../lms/div.v(9)
  AL_DFF_X \uart_top/div160/reg0_syn_12  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/num_b1 [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/div160/num [10]));  // ../../lms/div.v(9)
  AL_DFF_X \uart_top/div160/reg0_syn_13  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/num_b1 [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/div160/num [11]));  // ../../lms/div.v(9)
  AL_DFF_X \uart_top/div160/reg0_syn_14  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/num_b1 [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/div160/num [12]));  // ../../lms/div.v(9)
  AL_DFF_X \uart_top/div160/reg0_syn_15  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/num_b1 [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/div160/num [13]));  // ../../lms/div.v(9)
  AL_DFF_X \uart_top/div160/reg0_syn_16  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/num_b1 [14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/div160/num [14]));  // ../../lms/div.v(9)
  AL_DFF_X \uart_top/div160/reg0_syn_17  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/num_b1 [15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/div160/num [15]));  // ../../lms/div.v(9)
  AL_DFF_X \uart_top/div160/reg0_syn_18  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/num_b1 [16]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/div160/num [16]));  // ../../lms/div.v(9)
  AL_DFF_X \uart_top/div160/reg0_syn_19  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/num_b1 [17]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/div160/num [17]));  // ../../lms/div.v(9)
  AL_DFF_X \uart_top/div160/reg0_syn_2  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/num_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/div160/num [0]));  // ../../lms/div.v(9)
  AL_DFF_X \uart_top/div160/reg0_syn_20  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/num_b1 [18]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/div160/num [18]));  // ../../lms/div.v(9)
  AL_DFF_X \uart_top/div160/reg0_syn_21  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/num_b1 [19]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/div160/num [19]));  // ../../lms/div.v(9)
  AL_DFF_X \uart_top/div160/reg0_syn_22  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/num_b1 [20]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/div160/num [20]));  // ../../lms/div.v(9)
  AL_DFF_X \uart_top/div160/reg0_syn_3  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/num_b1 [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/div160/num [1]));  // ../../lms/div.v(9)
  AL_DFF_X \uart_top/div160/reg0_syn_4  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/num_b1 [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/div160/num [2]));  // ../../lms/div.v(9)
  AL_DFF_X \uart_top/div160/reg0_syn_5  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/num_b1 [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/div160/num [3]));  // ../../lms/div.v(9)
  AL_DFF_X \uart_top/div160/reg0_syn_6  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/num_b1 [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/div160/num [4]));  // ../../lms/div.v(9)
  AL_DFF_X \uart_top/div160/reg0_syn_7  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/num_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/div160/num [5]));  // ../../lms/div.v(9)
  AL_DFF_X \uart_top/div160/reg0_syn_8  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/num_b1 [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/div160/num [6]));  // ../../lms/div.v(9)
  AL_DFF_X \uart_top/div160/reg0_syn_9  (
    .ar(~resetSorce_dup_1),
    .as(1'b0),
    .clk(\uart_top/UART/clk ),
    .d(\uart_top/div160/num_b [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/div160/num [7]));  // ../../lms/div.v(9)
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    \uart_top/j_n_syn_1  (
    .a(\uart_top/j ),
    .o(\uart_top/j_n ));
  AL_DFF_0 \uart_top/j_reg_syn_2  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\uart_top/clkI160 ),
    .d(\uart_top/j_n ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/j ));  // ../../uart/uart_top.v(39)
  AL_DFF_0 \uart_top/reg0_syn_10  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\uart_top/clkI160 ),
    .d(\uart_top/tx_data_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/tx_data [0]));  // ../../uart/uart_top.v(39)
  AL_DFF_0 \uart_top/reg0_syn_11  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\uart_top/clkI160 ),
    .d(\uart_top/tx_data_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/tx_data [1]));  // ../../uart/uart_top.v(39)
  AL_DFF_0 \uart_top/reg0_syn_12  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\uart_top/clkI160 ),
    .d(\uart_top/tx_data_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/tx_data [2]));  // ../../uart/uart_top.v(39)
  AL_DFF_0 \uart_top/reg0_syn_13  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\uart_top/clkI160 ),
    .d(\uart_top/tx_data_b [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/tx_data [3]));  // ../../uart/uart_top.v(39)
  AL_DFF_0 \uart_top/reg0_syn_14  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\uart_top/clkI160 ),
    .d(\uart_top/tx_data_b [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/tx_data [4]));  // ../../uart/uart_top.v(39)
  AL_DFF_0 \uart_top/reg0_syn_15  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\uart_top/clkI160 ),
    .d(\uart_top/tx_data_b [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/tx_data [5]));  // ../../uart/uart_top.v(39)
  AL_DFF_0 \uart_top/reg0_syn_16  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\uart_top/clkI160 ),
    .d(\uart_top/j ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\uart_top/UART/tx_data [6]));  // ../../uart/uart_top.v(39)
  AL_MAP_LUT3 #(
    .EQN("(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C)"),
    .INIT(8'hac))
    \uart_top/tx_data_b[0]_syn_1  (
    .a(\lsm_top/fir_dut/adder_data_four [24]),
    .b(\lsm_top/fir_dut/adder_data_four [30]),
    .c(\uart_top/j ),
    .o(\uart_top/tx_data_b [0]));
  AL_MAP_LUT3 #(
    .EQN("(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C)"),
    .INIT(8'hac))
    \uart_top/tx_data_b[1]_syn_1  (
    .a(\lsm_top/fir_dut/adder_data_four [25]),
    .b(\lsm_top/fir_dut/adder_data_four [31]),
    .c(\uart_top/j ),
    .o(\uart_top/tx_data_b [1]));
  AL_MAP_LUT3 #(
    .EQN("(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C)"),
    .INIT(8'hac))
    \uart_top/tx_data_b[2]_syn_1  (
    .a(\lsm_top/fir_dut/adder_data_four [26]),
    .b(\lsm_top/fir_dut/adder_data_four [32]),
    .c(\uart_top/j ),
    .o(\uart_top/tx_data_b [2]));
  AL_MAP_LUT3 #(
    .EQN("(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C)"),
    .INIT(8'hac))
    \uart_top/tx_data_b[3]_syn_1  (
    .a(\lsm_top/fir_dut/adder_data_four [27]),
    .b(\lsm_top/fir_dut/adder_data_four [33]),
    .c(\uart_top/j ),
    .o(\uart_top/tx_data_b [3]));
  AL_MAP_LUT3 #(
    .EQN("(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C)"),
    .INIT(8'hac))
    \uart_top/tx_data_b[4]_syn_1  (
    .a(\lsm_top/fir_dut/adder_data_four [28]),
    .b(\lsm_top/fir_dut/adder_data_four [34]),
    .c(\uart_top/j ),
    .o(\uart_top/tx_data_b [4]));
  AL_MAP_LUT3 #(
    .EQN("(B*~(A)*~(C)+B*A*~(C)+~(B)*A*C+B*A*C)"),
    .INIT(8'hac))
    \uart_top/tx_data_b[5]_syn_1  (
    .a(\lsm_top/fir_dut/adder_data_four [29]),
    .b(\lsm_top/fir_dut/adder_data_four [35]),
    .c(\uart_top/j ),
    .o(\uart_top/tx_data_b [5]));

  // synthesis translate_off
  glbl glbl();
  always @(*) begin
    glbl.gsr <= PH1_PHY_GSR.gsr;
    glbl.gsrn <= PH1_PHY_GSR.gsrn;
    glbl.done_gwe <= PH1_PHY_GSR.done_gwe;
    glbl.usr_gsrn_en <= PH1_PHY_GSR.usr_gsrn_en;
  end
  // synthesis translate_on

endmodule 

module AL_BUFKEEP
  (
  i,
  o
  );

  input i;
  output o;

  parameter KEEP = "OUT";

  buf al_220 (o, i);

endmodule 

