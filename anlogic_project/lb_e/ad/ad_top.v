module ad_top( 
input        I_sysclk_p,
input        I_reset_n,

input         DOUTA_IN,
input         DOUTB_IN,
output wire   CS,
output wire    SCK,
output wire    sck_test,
output wire[2:0] AD_A2_A0,
//output reg    AD_RANGE,
//output reg    AD_DIFF,
output wire         RD_DONE,
output wire[11:0] A1_Result,
output wire[11:0] B1_Result,
output wire[11:0] A2_Result,
output wire[11:0] B2_Result,
output wire[11:0] A3_Result,
output wire[11:0] B3_Result,
output wire[11:0] A4_Result,
output wire[11:0] B4_Result,
output wire[11:0] A5_Result,
output wire[11:0] B5_Result,
output wire[11:0] A6_Result,
output wire[11:0] B6_Result,
output wire[2:0]  Vdd_fmc_adj
);
/*
wire        clk0;
wire        clk1;
//pll instance
mypll u_mypll(
.reset       (1'b0),
.refclk      (I_sysclk_p),
.clk0_out    (clk0),
.clk1_out    (clk1)
);
*/
assign Vdd_fmc_adj = 3'd7;

AD7266_Read u_AD7266(
.sys_clk    (I_sysclk_p),//SPI时钟是sys_clk的四分频
.rst_n      (I_reset_n),
.OUTA_IN    (DOUTA_IN),//数据输出1
.OUTB_IN    (DOUTB_IN),//数据输出2
.CS         (CS),
.SCK        (SCK),
.AD_A2_A0   (AD_A2_A0),
//.AD_RANGE   (),
//.AD_DIFF    (),	
.RD_DONE    (RD_DONE),
.A1_Result  (A1_Result),
.B1_Result  (B1_Result),
.A2_Result  (A2_Result),
.B2_Result  (B2_Result),
.A3_Result  (A3_Result),
.B3_Result  (B3_Result),
.A4_Result  (A4_Result),
.B4_Result  (B4_Result),
.A5_Result  (A5_Result),
.B5_Result  (B5_Result),
.A6_Result  (A6_Result),
.B6_Result  (B6_Result)
);


assign sck_test = SCK;







endmodule
