`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2024 15:42:58
// Design Name: 
// Module Name: TESTBENCH
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TESTBENCH();
  wire [7:0]Rx_Byte;
  wire Rx_DV;
  wire Tx_Active;
  reg [7:0]Tx_Byte = 0;
  reg Tx_DV = 0;
  wire Tx_Done;
  reg clock = 0;

  design_1 UART_Design
       (.Rx_Byte(Rx_Byte),
        .Rx_DV(Rx_DV),
        .Tx_Active(Tx_Active),
        .Tx_Byte(Tx_Byte),
        .Tx_DV(Tx_DV),
        .Tx_Done(Tx_Done),
        .clock(clock));
        
  parameter c_CLOCK_PERIOD_NS = 100;
  parameter c_BIT_PERIOD      = 8600;
  
    always
    #(c_CLOCK_PERIOD_NS/2) clock <= !clock;
  
 initial
 begin 
      @(posedge clock);
      @(posedge clock);
      Tx_DV <= 1'b1;
      Tx_Byte <= 8'hAB;
      @(posedge clock);
      Tx_DV <= 1'b0;
      @(posedge Tx_Done);
      // Check that the correct command was received
      if (Rx_Byte == 8'hAB)
        $display("Test Passed - Correct Byte Received");
      else
        $display("Test Failed - Incorrect Byte Received");
      
  end    
endmodule
