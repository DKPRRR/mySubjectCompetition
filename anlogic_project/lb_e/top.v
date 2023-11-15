module top( 
	input        clkSorce,
	input        resetSorce,

	input         adAIn,
	input         adBIn,
	output wire   CS,
	output wire    SCK,
	output wire[2:0] AD_A2_A0,
	output wire         RD_DONE,
	//output wire[11:0] A1_Result,
	//output wire[11:0] B1_Result,
	output wire[2:0]  Vdd_fmc_adj,
    output wire txd

);

    //时钟锁相环
	wire clk0;
    wire clk1;
    wire clk2;
	mypll mypll (
		.refclk(clkSorce),
		.clk0_out(clk0),  //24mhz ad模块时钟
		.clk1_out(clk1),   //13mhz  lsm模块时钟
        .clk2_out(clk2)  //32mhz uart模块时钟
	);
    
	//ad模块
    wire [11:0] a1Out;
    wire [11:0] b1Out;
	ad_top ad_top(               //采样率325k
	.I_sysclk_p(clk0),
	.I_reset_n(resetSorce),

	.DOUTA_IN(adAIn),
	.DOUTB_IN(adBIn),
	.CS(CS),
	.SCK(SCK),
	.AD_A2_A0(AD_A2_A0),
	.RD_DONE(RD_DONE),
	.A1_Result(a1Out),
	.B1_Result(b1Out),
	.Vdd_fmc_adj(Vdd_fmc_adj)
);

	//消去直流偏转电压，原码转补码
	wire [15:0] changeOut;
	change change(
	.dataInput({4'b0000,a1Out}),
    .dataOutput(changeOut)             //为符合lsm对声波为[1:-1]的需要,转换后即视为：[1:1]为整数，[2:15]为小数的定点浮点数
);
	
    //lsm滤波         //采样率与ad保持同步
	wire [15:0] errorOut;
    wire [15:0] lsmOut;
    lsm_top lsm_top(
    .clk_i(clk1),
    .rst_n_i(~resetSorce),
    .data_in(changeOut),        //输入待滤波数据
    .data_ref(16'b0000_0001_0010_1010),       //参考数据
    .error_o(errorOut),         //误差
    .data_o(lsmOut)         //输出数据
    );
    
    //uart通信     降频减少采样率发送   波特率上限2mhz   采样率100k
    uart_top uart_top(
	.clk_i(clk2),
    .rst_n(~resetSorce),
    .data({4'b0000,lsmOut}),   //临时测试
    .txd(txd)
);
    
    
endmodule
