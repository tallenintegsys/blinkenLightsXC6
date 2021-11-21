`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:16:46 11/06/2021 
// Design Name: 
// Module Name:    test 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module testTop(input CLK
	   , output [7:0] LED
		, input SW0
		, input SW1
		, input SW2
		, input SW3
	   );
		
reg [3:0] led;
reg [31:0] counter;
assign LED[3:0] = led;
assign LED[6:4] = 0;
assign LED[7] = counter[25];

always @ (posedge CLK) begin
	counter = counter + 1;
	end
	
always begin
	led[0] = SW0;
	led[1] = SW1;
	led[2] = SW2;
	led[3] = SW3;
end

endmodule
