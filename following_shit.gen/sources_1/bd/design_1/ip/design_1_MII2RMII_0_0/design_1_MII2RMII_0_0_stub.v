// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat Jun 20 15:43:32 2026
// Host        : Sune running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Vivado_Projects/Vivado/following_shit/following_shit.gen/sources_1/bd/design_1/ip/design_1_MII2RMII_0_0/design_1_MII2RMII_0_0_stub.v
// Design      : design_1_MII2RMII_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s25csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_MII2RMII_0_0,MII2RMII,{}" *) (* CORE_GENERATION_INFO = "design_1_MII2RMII_0_0,MII2RMII,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=MII2RMII,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "package_project" *) (* X_CORE_INFO = "MII2RMII,Vivado 2025.2" *) 
module design_1_MII2RMII_0_0(clk, rst, mii_txd, mii_tx_en, mii_tx_clk, mii_rxd, 
  mii_rx_dv, mii_rx_er, mii_rx_clk, mii_crs, mii_col, phy_mdc_o, phy_mdio_o, phy_mdio_i, 
  phy_mdio_t, ETH_RXD, ETH_CRSDV, ETH_REFCLK, ETH_TXD, ETH_TXEN, ETH_MDC, ETH_MDIO)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,mii_txd[3:0],mii_tx_en,mii_tx_clk,mii_rxd[3:0],mii_rx_dv,mii_rx_er,mii_rx_clk,mii_crs,mii_col,phy_mdc_o,phy_mdio_o,phy_mdio_i,phy_mdio_t,ETH_RXD[1:0],ETH_CRSDV,ETH_TXD[1:0],ETH_TXEN,ETH_MDC,ETH_MDIO" */
/* synthesis syn_force_seq_prim="ETH_REFCLK" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50006971, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input [3:0]mii_txd;
  input mii_tx_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 mii_tx_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mii_tx_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_MII2RMII_0_0_mii_tx_clk, INSERT_VIP 0" *) output mii_tx_clk;
  output [3:0]mii_rxd;
  output mii_rx_dv;
  output mii_rx_er;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 mii_rx_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mii_rx_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_MII2RMII_0_0_mii_rx_clk, INSERT_VIP 0" *) output mii_rx_clk;
  output mii_crs;
  output mii_col;
  input phy_mdc_o;
  input phy_mdio_o;
  output phy_mdio_i;
  input phy_mdio_t;
  input [1:0]ETH_RXD;
  input ETH_CRSDV;
  input ETH_REFCLK /* synthesis syn_isclock = 1 */;
  output [1:0]ETH_TXD;
  output ETH_TXEN;
  output ETH_MDC;
  inout ETH_MDIO;
endmodule
