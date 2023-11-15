module cwclk(
    input wire clk,
    output reg cmd/*synthesis keep*/
);
	reg [11:0] num/*synthesis keep*/;
	always@(posedge clk) begin
    	if(num!=(12'd217-12'b1)) begin
        	num<=num+12'b1;
        end
        else begin
        	num<=12'b0000000000;
            cmd<=~cmd;
        end
    end
endmodule