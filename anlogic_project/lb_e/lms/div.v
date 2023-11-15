module div(
    input clk,
    input rst,
    output reg out
);
	parameter N=20'd20;
	reg [20:0] num;
	always@(posedge clk,posedge rst) begin
    	if(!rst) begin
    		if(num!=(N-20'b1)) begin
        		num<=num+20'b1;
        	    out<=1'b0;
        	end
        	else begin
        		num<=20'b0;
        	    out<=1'b1;
        	end
        end else begin
        	num<=20'b0;
        	out<=1'b0;
        end
    end
endmodule