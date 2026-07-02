-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Sat Jun 20 15:43:32 2026
-- Host        : Sune running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_MII2RMII_0_0_stub.vhdl
-- Design      : design_1_MII2RMII_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s25csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    mii_txd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mii_tx_en : in STD_LOGIC;
    mii_tx_clk : out STD_LOGIC;
    mii_rxd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mii_rx_dv : out STD_LOGIC;
    mii_rx_er : out STD_LOGIC;
    mii_rx_clk : out STD_LOGIC;
    mii_crs : out STD_LOGIC;
    mii_col : out STD_LOGIC;
    phy_mdc_o : in STD_LOGIC;
    phy_mdio_o : in STD_LOGIC;
    phy_mdio_i : out STD_LOGIC;
    phy_mdio_t : in STD_LOGIC;
    ETH_RXD : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ETH_CRSDV : in STD_LOGIC;
    ETH_REFCLK : in STD_LOGIC;
    ETH_TXD : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ETH_TXEN : out STD_LOGIC;
    ETH_MDC : out STD_LOGIC;
    ETH_MDIO : inout STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_MII2RMII_0_0,MII2RMII,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_MII2RMII_0_0,MII2RMII,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=MII2RMII,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,rst,mii_txd[3:0],mii_tx_en,mii_tx_clk,mii_rxd[3:0],mii_rx_dv,mii_rx_er,mii_rx_clk,mii_crs,mii_col,phy_mdc_o,phy_mdio_o,phy_mdio_i,phy_mdio_t,ETH_RXD[1:0],ETH_CRSDV,ETH_REFCLK,ETH_TXD[1:0],ETH_TXEN,ETH_MDC,ETH_MDIO";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50006971, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_MODE of rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of mii_tx_clk : signal is "xilinx.com:signal:clock:1.0 mii_tx_clk CLK";
  attribute X_INTERFACE_MODE of mii_tx_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of mii_tx_clk : signal is "XIL_INTERFACENAME mii_tx_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_MII2RMII_0_0_mii_tx_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of mii_rx_clk : signal is "xilinx.com:signal:clock:1.0 mii_rx_clk CLK";
  attribute X_INTERFACE_MODE of mii_rx_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of mii_rx_clk : signal is "XIL_INTERFACENAME mii_rx_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_MII2RMII_0_0_mii_rx_clk, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "MII2RMII,Vivado 2025.2";
begin
end;
