//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Sat Jun 20 16:22:25 2026
//Host        : Sune running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (CLK12MHZ,
    ETH_CRSDV,
    ETH_MDC,
    ETH_MDIO,
    ETH_REFCLK,
    ETH_RXD,
    ETH_TXD,
    ETH_TXEN,
    INIT_CALIB_WORKING,
    RST_L,
    UART_RXD,
    UART_TXD,
    ddr3_sdram_addr,
    ddr3_sdram_ba,
    ddr3_sdram_cas_n,
    ddr3_sdram_ck_n,
    ddr3_sdram_ck_p,
    ddr3_sdram_cke,
    ddr3_sdram_cs_n,
    ddr3_sdram_dm,
    ddr3_sdram_dq,
    ddr3_sdram_dqs_n,
    ddr3_sdram_dqs_p,
    ddr3_sdram_odt,
    ddr3_sdram_ras_n,
    ddr3_sdram_reset_n,
    ddr3_sdram_we_n,
    sys_clk_i);
  input CLK12MHZ;
  input ETH_CRSDV;
  output ETH_MDC;
  inout ETH_MDIO;
  input ETH_REFCLK;
  input [1:0]ETH_RXD;
  output [1:0]ETH_TXD;
  output ETH_TXEN;
  output INIT_CALIB_WORKING;
  input RST_L;
  input UART_RXD;
  output UART_TXD;
  output [13:0]ddr3_sdram_addr;
  output [2:0]ddr3_sdram_ba;
  output ddr3_sdram_cas_n;
  output [0:0]ddr3_sdram_ck_n;
  output [0:0]ddr3_sdram_ck_p;
  output [0:0]ddr3_sdram_cke;
  output [0:0]ddr3_sdram_cs_n;
  output [1:0]ddr3_sdram_dm;
  inout [15:0]ddr3_sdram_dq;
  inout [1:0]ddr3_sdram_dqs_n;
  inout [1:0]ddr3_sdram_dqs_p;
  output [0:0]ddr3_sdram_odt;
  output ddr3_sdram_ras_n;
  output ddr3_sdram_reset_n;
  output ddr3_sdram_we_n;
  input sys_clk_i;

  wire CLK12MHZ;
  wire ETH_CRSDV;
  wire ETH_MDC;
  wire ETH_MDIO;
  wire ETH_REFCLK;
  wire [1:0]ETH_RXD;
  wire [1:0]ETH_TXD;
  wire ETH_TXEN;
  wire INIT_CALIB_WORKING;
  wire RST_L;
  wire UART_RXD;
  wire UART_TXD;
  wire [13:0]ddr3_sdram_addr;
  wire [2:0]ddr3_sdram_ba;
  wire ddr3_sdram_cas_n;
  wire [0:0]ddr3_sdram_ck_n;
  wire [0:0]ddr3_sdram_ck_p;
  wire [0:0]ddr3_sdram_cke;
  wire [0:0]ddr3_sdram_cs_n;
  wire [1:0]ddr3_sdram_dm;
  wire [15:0]ddr3_sdram_dq;
  wire [1:0]ddr3_sdram_dqs_n;
  wire [1:0]ddr3_sdram_dqs_p;
  wire [0:0]ddr3_sdram_odt;
  wire ddr3_sdram_ras_n;
  wire ddr3_sdram_reset_n;
  wire ddr3_sdram_we_n;
  wire sys_clk_i;

  design_1 design_1_i
       (.CLK12MHZ(CLK12MHZ),
        .ETH_CRSDV(ETH_CRSDV),
        .ETH_MDC(ETH_MDC),
        .ETH_MDIO(ETH_MDIO),
        .ETH_REFCLK(ETH_REFCLK),
        .ETH_RXD(ETH_RXD),
        .ETH_TXD(ETH_TXD),
        .ETH_TXEN(ETH_TXEN),
        .INIT_CALIB_WORKING(INIT_CALIB_WORKING),
        .RST_L(RST_L),
        .UART_RXD(UART_RXD),
        .UART_TXD(UART_TXD),
        .ddr3_sdram_addr(ddr3_sdram_addr),
        .ddr3_sdram_ba(ddr3_sdram_ba),
        .ddr3_sdram_cas_n(ddr3_sdram_cas_n),
        .ddr3_sdram_ck_n(ddr3_sdram_ck_n),
        .ddr3_sdram_ck_p(ddr3_sdram_ck_p),
        .ddr3_sdram_cke(ddr3_sdram_cke),
        .ddr3_sdram_cs_n(ddr3_sdram_cs_n),
        .ddr3_sdram_dm(ddr3_sdram_dm),
        .ddr3_sdram_dq(ddr3_sdram_dq),
        .ddr3_sdram_dqs_n(ddr3_sdram_dqs_n),
        .ddr3_sdram_dqs_p(ddr3_sdram_dqs_p),
        .ddr3_sdram_odt(ddr3_sdram_odt),
        .ddr3_sdram_ras_n(ddr3_sdram_ras_n),
        .ddr3_sdram_reset_n(ddr3_sdram_reset_n),
        .ddr3_sdram_we_n(ddr3_sdram_we_n),
        .sys_clk_i(sys_clk_i));
endmodule
