module coef_update(                     //系数更新模块
    input               clk_i,
    input               rst_n_i,
    input signed [15:0] error_o,          //误差
    input signed [15:0] data_in,        //待滤波数据

    //权值更新
    output reg signed [15:0] coef1,
    output reg signed [15:0] coef2,
    output reg signed [15:0] coef3,
    output reg signed [15:0] coef4,
    output reg signed [15:0] coef5,
    output reg signed [15:0] coef6,
    output reg signed [15:0] coef7,
    output reg signed [15:0] coef8,
    output reg signed [15:0] coef9
    );

    reg signed [15:0] mu;           //遗忘因子(步长)

//延时寄存输入数据
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
        if(!rst_n_i)begin           //对参数进行四舍五入             等波纹模型
            data_shift1 <= 16'b0000_0001_0010_1010;           //0.018169554394996154794705844892632740084
            data_shift2 <= 16'b0000_0001_0010_1011;           //0.018266036126500295733166012723813764751
            data_shift3 <= 16'b0000_0001_0010_1100;           //0.018335122455396198754007386355624475982
            data_shift4 <= 16'b0000_0001_0010_1101;           //0.01837664267654669919549448309226136189
            data_shift5 <= 16'b0000_0001_0010_1101;           //0.018390494164367356816347509607112442609
            data_shift6 <= 16'b0000_0001_0010_1110;           //0.01837664267654669919549448309226136189
            data_shift7 <= 16'b0000_0001_0010_1100;           //0.018335122455396198754007386355624475982
            data_shift8 <= 16'b0000_0001_0010_1011;           //0.018266036126500295733166012723813764751
            data_shift9 <= 16'b0000_0001_0010_1001;           //0.018169554394996154794705844892632740084
            mu          <= 16'd383;             //步长不知道是多少，随便写了一个;
        end
        else begin
            data_shift1 <= data_in   ;
            data_shift2 <= data_shift1;
            data_shift3 <= data_shift2;
            data_shift4 <= data_shift3;
            data_shift5 <= data_shift4;
            data_shift6 <= data_shift5;
            data_shift7 <= data_shift6;
            data_shift8 <= data_shift7;
            data_shift9 <= data_shift8;
        end
    end    


    
//权值更新

    //mu*error*data_in*2
    reg signed [47:0] coef1_reg;
    reg signed [47:0] coef2_reg;
    reg signed [47:0] coef3_reg;
    reg signed [47:0] coef4_reg;
    reg signed [47:0] coef5_reg;
    reg signed [47:0] coef6_reg;
    reg signed [47:0] coef7_reg;
    reg signed [47:0] coef8_reg;
    reg signed [47:0] coef9_reg;
always @(posedge clk_i or negedge rst_n_i) begin
    if(!rst_n_i)begin
        coef1 <= 16'd0;
        coef2 <= 16'd0;
        coef3 <= 16'd0;
        coef4 <= 16'd0;
        coef5 <= 16'd0;
        coef6 <= 16'd0;
        coef7 <= 16'd0;
        coef8 <= 16'd0;
        coef9 <= 16'd0;

        coef1_reg <= 16'd0;
        coef2_reg <= 16'd0;
        coef3_reg <= 16'd0;
        coef4_reg <= 16'd0;
        coef5_reg <= 16'd0;
        coef6_reg <= 16'd0;
        coef7_reg <= 16'd0;
        coef8_reg <= 16'd0;
        coef9_reg <= 16'd0;
    end
    else begin
        coef1_reg <= (mu * error_o * data_shift1)>>2;
        coef2_reg <= (mu * error_o * data_shift2)>>2;
        coef3_reg <= (mu * error_o * data_shift3)>>2;
        coef4_reg <= (mu * error_o * data_shift4)>>2;
        coef5_reg <= (mu * error_o * data_shift5)>>2;
        coef6_reg <= (mu * error_o * data_shift6)>>2;
        coef7_reg <= (mu * error_o * data_shift7)>>2;
        coef8_reg <= (mu * error_o * data_shift8)>>2;
        coef9_reg <= (mu * error_o * data_shift9)>>2;

        coef1 <= coef1 + coef1_reg;
        coef2 <= coef2 + coef2_reg;
        coef3 <= coef3 + coef3_reg;
        coef4 <= coef4 + coef4_reg;
        coef5 <= coef5 + coef5_reg;
        coef6 <= coef6 + coef6_reg;
        coef7 <= coef7 + coef7_reg;
        coef8 <= coef8 + coef8_reg;
        coef9 <= coef9 + coef9_reg;
    end
end

endmodule
