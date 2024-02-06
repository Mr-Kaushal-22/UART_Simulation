//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Tue Feb  6 16:02:12 2024
//Host        : MrKaushal22 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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

  wire [7:0]Rx_Byte;
  wire Rx_DV;
  wire Tx_Active;
  wire [7:0]Tx_Byte;
  wire Tx_DV;
  wire Tx_Done;
  wire clock;

  design_1 design_1_i
       (.Rx_Byte(Rx_Byte),
        .Rx_DV(Rx_DV),
        .Tx_Active(Tx_Active),
        .Tx_Byte(Tx_Byte),
        .Tx_DV(Tx_DV),
        .Tx_Done(Tx_Done),
        .clock(clock));
endmodule
