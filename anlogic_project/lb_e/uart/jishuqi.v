module jishuqi(
    input wire clk,
    output reg cmd
);
	reg [13:0] num;
	always@(posedge clk) begin
    	if(num!=(14'd2170-14'b1)) begin
        	num<=num+14'b1;
        end
        else begin
        	num<=14'b00000000000;
            cmd<=~cmd;
        end
    end
endmodule