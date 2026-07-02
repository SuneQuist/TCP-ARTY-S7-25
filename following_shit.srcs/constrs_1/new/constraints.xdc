## Clock signal
## 12 MHz is common since USB Full-Speed uses 12Mbit/s
set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports { CLK12MHZ }]; #IO_L13P_T2_MRCC_15 Sch=uclk
create_clock -add -name clf_clk_pin -period 83.333 -waveform {0 41.667} [get_ports { CLK12MHZ }]; # Clock Frequency for Verilog e.g. posedge

#set_property -dict {PACKAGE_PIN R2 IOSTANDARD SSTL135} [get_ports { SYS_CLK }]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports { sys_clk_i }]

## LEDs
set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { INIT_CALIB_WORKING }]; #IO_L16N_T2_A27_15 Sch=led[2]
#set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { LED[1] }]; #IO_L17P_T2_A26_15 Sch=led[3]
#set_property -dict { PACKAGE_PIN E13   IOSTANDARD LVCMOS33 } [get_ports { LED[2] }]; #IO_L17N_T2_A25_15 Sch=led[4]
#set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { LED[3] }]; #IO_L18P_T2_A24_15 Sch=led[5]

## USB-UART Interface
set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports { UART_RXD }]; #IO_25_14 Sch=uart_rxd_out
set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { UART_TXD  }]; #IO_L24N_T3_A00_D16_14 Sch=uart_txd_in

set_property -dict { PACKAGE_PIN C18   IOSTANDARD LVCMOS33 } [get_ports { RST_L }]; #IO_L11N_T1_SRCC_15

## PMOD Header JB
set_property -dict { PACKAGE_PIN P17 IOSTANDARD LVCMOS33 } [get_ports { ETH_TXD[1] }]
set_property -dict { PACKAGE_PIN P18 IOSTANDARD LVCMOS33 } [get_ports { ETH_TXEN }]
set_property -dict { PACKAGE_PIN R18 IOSTANDARD LVCMOS33 } [get_ports { ETH_RXD[0] }]
set_property -dict { PACKAGE_PIN T18 IOSTANDARD LVCMOS33 } [get_ports { ETH_REFCLK }]

set_property -dict { PACKAGE_PIN P14 IOSTANDARD LVCMOS33 } [get_ports { ETH_TXD[0] }]
set_property -dict { PACKAGE_PIN P15 IOSTANDARD LVCMOS33 } [get_ports { ETH_RXD[1] }]
set_property -dict { PACKAGE_PIN N15 IOSTANDARD LVCMOS33 } [get_ports { ETH_CRSDV }]

set_property -dict { PACKAGE_PIN U15 IOSTANDARD LVCMOS33 } [get_ports { ETH_MDIO }]
set_property -dict { PACKAGE_PIN V16 IOSTANDARD LVCMOS33 } [get_ports { ETH_MDC }]