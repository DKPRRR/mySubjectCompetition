module error_calcu(
    input                clk_i,
    input                rst_n_i,
    input  signed [15:0] data_in,           //滤波完成数据
    input  signed [15:0] data_ref,          //参考数据
    output signed [15:0] error_o            //误差输出
    );

    wire  signed [15:0] error;
    //reg signed [15:0] error_o;

//延时寄存参考数据
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
            data_shift1 <= data_ref   ;
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

assign error = data_shift9 - data_in;
assign error_o = error;
//assign error_o = data_shift9 - data_in;

endmodule
