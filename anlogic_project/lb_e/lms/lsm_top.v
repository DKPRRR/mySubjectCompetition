module lsm_top(
    (* io_buffer_type = "none" *)input clk_i,
    (* io_buffer_type = "none" *)input rst_n_i,
    (* io_buffer_type = "none" *)input signed [15:0] data_in,        //输入待滤波数据
    (* io_buffer_type = "none" *)input signed [15:0] data_ref,       //参考数据
    (* io_buffer_type = "none" *)output signed [15:0] error_o,         //误差
    (* io_buffer_type = "none" *)output signed [15:0] data_o         //输出数据
    );

    wire signed [15:0] coef1;
    wire signed [15:0] coef2;
    wire signed [15:0] coef3;
    wire signed [15:0] coef4;
    wire signed [15:0] coef5;
    wire signed [15:0] coef6;
    wire signed [15:0] coef7;
    wire signed [15:0] coef8;
    wire signed [15:0] coef9;

	wire clk_ii;
	div #(
    	.N(20'd40)
    ) div40(
		.clk(clk_i),
    	.rst(rst_n_i),
    	.out(clk_ii)
	);

    fir 
    fir_dut (
      .clk_i (clk_ii ),
      .rst_n_i (rst_n_i ),
      .data_in (data_in ),
      .coef1 (coef1 ),
      .coef2 (coef2 ),
      .coef3 (coef3 ),
      .coef4 (coef4 ),
      .coef5 (coef5 ),
      .coef6 (coef6 ),
      .coef7 (coef7 ),
      .coef8 (coef8 ),
      .coef9 (coef9 ),
      .data_o(data_o)
    );
  

    error_calcu 
    error_calcu_dut (
      .clk_i (clk_ii ),
      .rst_n_i (rst_n_i ),
      .data_in (data_in ),
      .data_ref (data_ref ),
      .error_o  ( error_o)
    );

    
    
    coef_update 
    coef_update_dut (
      .clk_i (clk_ii ),
      .rst_n_i (rst_n_i ),
      .error_o (error_o ),
      .data_in (data_in ),
      .coef1 (coef1 ),
      .coef2 (coef2 ),
      .coef3 (coef3 ),
      .coef4 (coef4 ),
      .coef5 (coef5 ),
      .coef6 (coef6 ),
      .coef7 (coef7 ),
      .coef8 (coef8 ),
      .coef9 (coef9 )
    );
  
    
    
endmodule
