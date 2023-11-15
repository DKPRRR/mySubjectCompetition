module fir(
    input                clk_i,
    input                rst_n_i,
    input  signed [15:0] data_in,                       //fir_i,

    input signed [15:0] coef1,      //权值
    input signed [15:0] coef2,
    input signed [15:0] coef3,
    input signed [15:0] coef4,
    input signed [15:0] coef5,
    input signed [15:0] coef6,
    input signed [15:0] coef7,
    input signed [15:0] coef8,
    input signed [15:0] coef9,

    output signed [15:0] data_o                   //fir_o        //输出位宽待设置
    );


//移位寄存器
reg signed [15:0] data_shift1;
reg signed [15:0] data_shift2;
reg signed [15:0] data_shift3;
reg signed [15:0] data_shift4;
reg signed [15:0] data_shift5;
reg signed [15:0] data_shift6;
reg signed [15:0] data_shift7;
reg signed [15:0] data_shift8;
reg signed [15:0] data_shift9;

always @(posedge clk_i or negedge rst_n_i) begin
    if(!rst_n_i)begin
        data_shift1 <= 16'd0;
        data_shift2 <= 16'd0;
        data_shift3 <= 16'd0;
        data_shift4 <= 16'd0;
        data_shift5 <= 16'd0;
        data_shift6 <= 16'd0;
        data_shift7 <= 16'd0;
        data_shift8 <= 16'd0;
        data_shift9 <= 16'd0;
    end
    else begin
        data_shift9 <= data_shift8;
        data_shift8 <= data_shift7;
        data_shift7 <= data_shift6;
        data_shift6 <= data_shift5;
        data_shift5 <= data_shift4;
        data_shift4 <= data_shift3;
        data_shift3 <= data_shift2;
        data_shift2 <= data_shift1;
        data_shift1 <= data_in    ;
    end
end


//乘法器

//单独fir时固定的权值数据
//parameter signed COEF1 = 16'h2FB1;           //14'h304F;
//parameter signed COEF2 = 16'h2E51;           //14'h31AF;
//parameter signed COEF3 = 16'h19DC;           //14'h19DC;
//parameter signed COEF4 = 16'h4926;           //14'h4926;
//parameter signed COEF5 = 16'h6927;           //14'h6927;
//parameter signed COEF6 = 16'h4926;           //14'h4926;
//parameter signed COEF7 = 16'h19DC;           //14'h19DC;
//parameter signed COEF8 = 16'h2E51;           //14'h31AF;
//parameter signed COEF9 = 16'h2FB1;           //14'h304F;



reg signed [31:0] multi_data1;
reg signed [31:0] multi_data2;
reg signed [31:0] multi_data3;
reg signed [31:0] multi_data4;
reg signed [31:0] multi_data5;
reg signed [31:0] multi_data6;
reg signed [31:0] multi_data7;
reg signed [31:0] multi_data8;
reg signed [31:0] multi_data9;

always @(posedge clk_i or negedge rst_n_i) begin
    if(!rst_n_i)begin
        multi_data1 <= 32'd0;
        multi_data2 <= 32'd0;
        multi_data3 <= 32'd0;
        multi_data4 <= 32'd0;
        multi_data5 <= 32'd0;
        multi_data6 <= 32'd0;
        multi_data7 <= 32'd0;
        multi_data8 <= 32'd0;
        multi_data9 <= 32'd0;
    end
    else begin
        multi_data1 <= data_shift1 * coef1 ;
        multi_data2 <= data_shift2 * coef2 ;
        multi_data3 <= data_shift3 * coef3 ;
        multi_data4 <= data_shift4 * coef4 ;
        multi_data5 <= data_shift5 * coef5 ;
        multi_data6 <= data_shift6 * coef6 ;
        multi_data7 <= data_shift7 * coef7 ;
        multi_data8 <= data_shift8 * coef8 ;
        multi_data9 <= data_shift9 * coef9 ;
    end
end



//加法树
reg signed [40:0] adder_data_one_1;
reg signed [40:0] adder_data_one_2;
reg signed [40:0] adder_data_one_3;
reg signed [40:0] adder_data_one_4;
reg signed [40:0] adder_data_one_5;

reg signed [40:0] adder_data_two_1;
reg signed [40:0] adder_data_two_2;
reg signed [40:0] adder_data_two_3;

reg signed [40:0] adder_data_three_1;
reg signed [40:0] adder_data_three_2;

reg signed [40:0] adder_data_four;


always @(posedge clk_i or negedge rst_n_i) begin
    if(!rst_n_i)begin
        adder_data_one_1   <= 40'd0;
        adder_data_one_2   <= 40'd0;
        adder_data_one_3   <= 40'd0;
        adder_data_one_4   <= 40'd0;
        adder_data_one_5   <= 40'd0;

        adder_data_two_1   <= 40'd0;
        adder_data_two_2   <= 40'd0;
        adder_data_two_3   <= 40'd0;

        adder_data_three_1 <= 40'd0;
        adder_data_three_2 <= 40'd0;

        adder_data_four    <= 40'd0;
    end
    else begin
        adder_data_one_1   <= multi_data1 + multi_data2;
        adder_data_one_2   <= multi_data3 + multi_data4;
        adder_data_one_3   <= multi_data5 + multi_data6;
        adder_data_one_4   <= multi_data7 + multi_data8;
        adder_data_one_5   <= multi_data9;

        adder_data_two_1   <= adder_data_one_1 + adder_data_one_2;
        adder_data_two_2   <= adder_data_one_3 + adder_data_one_4;
        adder_data_two_3   <= adder_data_one_5;

        adder_data_three_1 <= adder_data_two_1 + adder_data_two_2;
        adder_data_three_2 <= adder_data_two_3;

        adder_data_four    <= adder_data_three_1 + adder_data_three_2;
    end
end


assign data_o = adder_data_four>>24;
//assign fir_o = adder_data_four>>n;

endmodule
