//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Tue Feb  6 15:38:35 2024
//Host        : MrKaushal22 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (Rx_Byte,
    Rx_DV,
    Tx_Active,
    Tx_Byte,
    Tx_DV,
    Tx_Done,
    clock);
  output [7:0]Rx_Byte;
  output Rx_DV;
  output Tx_Active;
  input [7:0]Tx_Byte;
  input Tx_DV;
  output Tx_Done;
  input clock;

  wire [7:0]Tx_Byte_1;
  wire Tx_DV_1;
  wire r_clock_1;
  wire [7:0]uart_rx_0_o_Rx_Byte;
  wire uart_rx_0_o_Rx_DV;
  wire uart_tx_0_o_Tx_Active;
  wire uart_tx_0_o_Tx_Done;
  wire uart_tx_0_o_Tx_Serial;

  assign Rx_Byte[7:0] = uart_rx_0_o_Rx_Byte;
  assign Rx_DV = uart_rx_0_o_Rx_DV;
  assign Tx_Active = uart_tx_0_o_Tx_Active;
  assign Tx_Byte_1 = Tx_Byte[7:0];
  assign Tx_DV_1 = Tx_DV;
  assign Tx_Done = uart_tx_0_o_Tx_Done;
  assign r_clock_1 = clock;
  design_1_uart_rx_0_0 uart_rx_0
       (.i_Clock(r_clock_1),
        .i_Rx_Serial(uart_tx_0_o_Tx_Serial),
        .o_Rx_Byte(uart_rx_0_o_Rx_Byte),
        .o_Rx_DV(uart_rx_0_o_Rx_DV));
  design_1_uart_tx_0_0 uart_tx_0
       (.i_Clock(r_clock_1),
        .i_Tx_Byte(Tx_Byte_1),
        .i_Tx_DV(Tx_DV_1),
        .o_Tx_Active(uart_tx_0_o_Tx_Active),
        .o_Tx_Done(uart_tx_0_o_Tx_Done),
        .o_Tx_Serial(uart_tx_0_o_Tx_Serial));
endmodule
