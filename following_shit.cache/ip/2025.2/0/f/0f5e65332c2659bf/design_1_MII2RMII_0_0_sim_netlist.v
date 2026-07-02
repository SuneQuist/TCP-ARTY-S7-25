// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat Jun 20 15:43:32 2026
// Host        : Sune running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_MII2RMII_0_0_sim_netlist.v
// Design      : design_1_MII2RMII_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MII2RMII
   (phy_mdio_i,
    mii_rxd,
    phase_reg_0,
    mii_rx_dv,
    ETH_TXD,
    ETH_TXEN,
    ETH_MDIO,
    phy_mdio_o,
    phy_mdio_t,
    rst,
    ETH_RXD,
    ETH_REFCLK,
    ETH_CRSDV,
    mii_txd,
    mii_tx_en);
  output phy_mdio_i;
  output [3:0]mii_rxd;
  output phase_reg_0;
  output mii_rx_dv;
  output [1:0]ETH_TXD;
  output ETH_TXEN;
  inout ETH_MDIO;
  input phy_mdio_o;
  input phy_mdio_t;
  input rst;
  input [1:0]ETH_RXD;
  input ETH_REFCLK;
  input ETH_CRSDV;
  input [3:0]mii_txd;
  input mii_tx_en;

  wire ETH_CRSDV;
  wire ETH_MDIO;
  wire ETH_REFCLK;
  wire [1:0]ETH_RXD;
  wire [1:0]ETH_TXD;
  wire \ETH_TXD[0]_i_1_n_0 ;
  wire \ETH_TXD[1]_i_1_n_0 ;
  wire ETH_TXEN;
  wire crsdv_latch;
  wire mii_rx_dv;
  wire mii_rx_dv_i_1_n_0;
  wire [3:0]mii_rxd;
  wire mii_tx_en;
  wire [3:0]mii_txd;
  wire p_0_in;
  wire [1:0]p_0_in_0;
  wire phase_i_1_n_0;
  wire phase_reg_0;
  wire phy_mdio_i;
  wire phy_mdio_o;
  wire phy_mdio_t;
  wire rst;
  wire [1:0]rx_latch;

  LUT4 #(
    .INIT(16'h00E2)) 
    \ETH_TXD[0]_i_1 
       (.I0(mii_txd[0]),
        .I1(phase_reg_0),
        .I2(p_0_in_0[0]),
        .I3(rst),
        .O(\ETH_TXD[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \ETH_TXD[1]_i_1 
       (.I0(mii_txd[1]),
        .I1(phase_reg_0),
        .I2(p_0_in_0[1]),
        .I3(rst),
        .O(\ETH_TXD[1]_i_1_n_0 ));
  FDRE \ETH_TXD_reg[0] 
       (.C(ETH_REFCLK),
        .CE(1'b1),
        .D(\ETH_TXD[0]_i_1_n_0 ),
        .Q(ETH_TXD[0]),
        .R(1'b0));
  FDRE \ETH_TXD_reg[1] 
       (.C(ETH_REFCLK),
        .CE(1'b1),
        .D(\ETH_TXD[1]_i_1_n_0 ),
        .Q(ETH_TXD[1]),
        .R(1'b0));
  FDRE crsdv_latch_reg
       (.C(ETH_REFCLK),
        .CE(p_0_in),
        .D(ETH_CRSDV),
        .Q(crsdv_latch),
        .R(rst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    mdio_iobuf
       (.I(phy_mdio_o),
        .IO(ETH_MDIO),
        .O(phy_mdio_i),
        .T(phy_mdio_t));
  LUT2 #(
    .INIT(4'h8)) 
    mii_rx_dv_i_1
       (.I0(crsdv_latch),
        .I1(ETH_CRSDV),
        .O(mii_rx_dv_i_1_n_0));
  FDRE mii_rx_dv_reg
       (.C(ETH_REFCLK),
        .CE(phase_reg_0),
        .D(mii_rx_dv_i_1_n_0),
        .Q(mii_rx_dv),
        .R(rst));
  FDRE \mii_rxd_reg[0] 
       (.C(ETH_REFCLK),
        .CE(phase_reg_0),
        .D(rx_latch[0]),
        .Q(mii_rxd[0]),
        .R(rst));
  FDRE \mii_rxd_reg[1] 
       (.C(ETH_REFCLK),
        .CE(phase_reg_0),
        .D(rx_latch[1]),
        .Q(mii_rxd[1]),
        .R(rst));
  FDRE \mii_rxd_reg[2] 
       (.C(ETH_REFCLK),
        .CE(phase_reg_0),
        .D(ETH_RXD[0]),
        .Q(mii_rxd[2]),
        .R(rst));
  FDRE \mii_rxd_reg[3] 
       (.C(ETH_REFCLK),
        .CE(phase_reg_0),
        .D(ETH_RXD[1]),
        .Q(mii_rxd[3]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    phase_i_1
       (.I0(phase_reg_0),
        .I1(rst),
        .O(phase_i_1_n_0));
  FDRE phase_reg
       (.C(ETH_REFCLK),
        .CE(1'b1),
        .D(phase_i_1_n_0),
        .Q(phase_reg_0),
        .R(1'b0));
  FDRE \rx_latch_reg[0] 
       (.C(ETH_REFCLK),
        .CE(p_0_in),
        .D(ETH_RXD[0]),
        .Q(rx_latch[0]),
        .R(rst));
  FDRE \rx_latch_reg[1] 
       (.C(ETH_REFCLK),
        .CE(p_0_in),
        .D(ETH_RXD[1]),
        .Q(rx_latch[1]),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    tx_en_latch_i_1
       (.I0(phase_reg_0),
        .O(p_0_in));
  FDRE tx_en_latch_reg
       (.C(ETH_REFCLK),
        .CE(p_0_in),
        .D(mii_tx_en),
        .Q(ETH_TXEN),
        .R(rst));
  FDRE \tx_latch_reg[2] 
       (.C(ETH_REFCLK),
        .CE(p_0_in),
        .D(mii_txd[2]),
        .Q(p_0_in_0[0]),
        .R(rst));
  FDRE \tx_latch_reg[3] 
       (.C(ETH_REFCLK),
        .CE(p_0_in),
        .D(mii_txd[3]),
        .Q(p_0_in_0[1]),
        .R(rst));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_MII2RMII_0_0,MII2RMII,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "MII2RMII,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    mii_txd,
    mii_tx_en,
    mii_tx_clk,
    mii_rxd,
    mii_rx_dv,
    mii_rx_er,
    mii_rx_clk,
    mii_crs,
    mii_col,
    phy_mdc_o,
    phy_mdio_o,
    phy_mdio_i,
    phy_mdio_t,
    ETH_RXD,
    ETH_CRSDV,
    ETH_REFCLK,
    ETH_TXD,
    ETH_TXEN,
    ETH_MDC,
    ETH_MDIO);
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
  input ETH_REFCLK;
  output [1:0]ETH_TXD;
  output ETH_TXEN;
  output ETH_MDC;
  inout ETH_MDIO;

  wire \<const0> ;
  wire ETH_CRSDV;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire ETH_MDIO;
  wire ETH_REFCLK;
  wire [1:0]ETH_RXD;
  wire [1:0]ETH_TXD;
  wire ETH_TXEN;
  wire mii_rx_dv;
  wire [3:0]mii_rxd;
  wire mii_tx_clk;
  wire mii_tx_en;
  wire [3:0]mii_txd;
  wire phy_mdc_o;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire phy_mdio_i;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire phy_mdio_o;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire phy_mdio_t;
  wire rst;

  assign ETH_MDC = phy_mdc_o;
  assign mii_col = \<const0> ;
  assign mii_crs = ETH_CRSDV;
  assign mii_rx_clk = mii_tx_clk;
  assign mii_rx_er = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MII2RMII inst
       (.ETH_CRSDV(ETH_CRSDV),
        .ETH_MDIO(ETH_MDIO),
        .ETH_REFCLK(ETH_REFCLK),
        .ETH_RXD(ETH_RXD),
        .ETH_TXD(ETH_TXD),
        .ETH_TXEN(ETH_TXEN),
        .mii_rx_dv(mii_rx_dv),
        .mii_rxd(mii_rxd),
        .mii_tx_en(mii_tx_en),
        .mii_txd(mii_txd),
        .phase_reg_0(mii_tx_clk),
        .phy_mdio_i(phy_mdio_i),
        .phy_mdio_o(phy_mdio_o),
        .phy_mdio_t(phy_mdio_t),
        .rst(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
