
# Entity: uart_tx 
- **File**: uart_tx.v

## Diagram
![Diagram](uart_tx.svg "Diagram")
## Generics

| Generic name | Type | Value | Description |
| ------------ | ---- | ----- | ----------- |
| CLKS_PER_BIT |      | 1     |             |

## Ports

| Port name   | Direction | Type  | Description |
| ----------- | --------- | ----- | ----------- |
| i_Clock     | input     |       |             |
| i_Tx_DV     | input     |       |             |
| i_Tx_Byte   | input     | [7:0] |             |
| o_Tx_Active | output    |       |             |
| o_Tx_Serial | output    |       |             |
| o_Tx_Done   | output    |       |             |

## Signals

| Name              | Type      | Description |
| ----------------- | --------- | ----------- |
| r_SM_Main     = 0 | reg [2:0] |             |
| r_Clock_Count = 0 | reg [7:0] |             |
| r_Bit_Index   = 0 | reg [2:0] |             |
| r_Tx_Data     = 0 | reg [7:0] |             |
| r_Tx_Done     = 0 | reg       |             |
| r_Tx_Active   = 0 | reg       |             |

## Constants

| Name           | Type | Value  | Description |
| -------------- | ---- | ------ | ----------- |
| s_IDLE         |      | 3'b000 |             |
| s_TX_START_BIT |      | 3'b001 |             |
| s_TX_DATA_BITS |      | 3'b010 |             |
| s_TX_STOP_BIT  |      | 3'b011 |             |
| s_CLEANUP      |      | 3'b100 |             |

## Processes
- unnamed: ( @(posedge i_Clock) )
  - **Type:** always

## State machines

![Diagram_state_machine_0]( fsm_uart_tx_00.svg "Diagram")