module change(
	input [15:0] dataInput,
    output [15:0] dataOutput
);
	reg [15:0] dataInputComplement;   //消除直流偏转并转为补码表达
	always@(dataInput) begin
    	if(dataInput<=16'd450) begin
        	dataInputComplement<=dataInput-16'd450;
        end else begin
        	dataInputComplement<=~(16'd450-dataInput)+16'd1;
        end
    end
	
	assign dataOutput=dataInputComplement;
endmodule
