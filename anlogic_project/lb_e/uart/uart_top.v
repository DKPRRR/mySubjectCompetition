module uart_top(  
	input clk_i,
    input rst_n,
    input [15:0] data,
    output txd
);

    wire tx_rdy;
    reg [7:0] tx_data;
	UART UART(
		.clk(clk_i),//32mhz
 		.rst_n(~rst_n),
 		.txd(txd),
 		.tx_data(tx_data),
 		.tx_en(~clkI160),    //时钟下降沿读取
        .tx_rdy(tx_rdy)
 	);
     
    //16分频
    wire clkI16;
    div #(
        .N(20'd16)
    ) div16(
		.clk(clk_i),
    	.rst(rst_n),
    	.out(clkI16)
	);
    
    //160分频
    wire clkI160;
    div #(
        .N(20'd160)
    ) div160(
		.clk(clk_i),
    	.rst(rst_n),
    	.out(clkI160)
	);
	reg j;
    always@(posedge clkI160) begin          //将目标数据拆包发送
    	//if(tx_rdy) begin
        	if(j==1'b0) begin
            	tx_data<={2'b10,data[11:6]};
            end
            else begin
            	tx_data<={2'b01,data[5:0]};   //把12位数据拆成两个6位数据包发送，前两位01表示第一个数据包，10表示第二个数据包
        	end
        	j=~j;
        //end
    end
endmodule