-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Sat Jun 20 15:43:32 2026
-- Host        : Sune running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Vivado_Projects/Vivado/following_shit/following_shit.gen/sources_1/bd/design_1/ip/design_1_MII2RMII_0_0/design_1_MII2RMII_0_0_sim_netlist.vhdl
-- Design      : design_1_MII2RMII_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s25csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MII2RMII_0_0_MII2RMII is
  port (
    phy_mdio_i : out STD_LOGIC;
    mii_rxd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    phase_reg_0 : out STD_LOGIC;
    mii_rx_dv : out STD_LOGIC;
    ETH_TXD : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ETH_TXEN : out STD_LOGIC;
    ETH_MDIO : inout STD_LOGIC;
    phy_mdio_o : in STD_LOGIC;
    phy_mdio_t : in STD_LOGIC;
    rst : in STD_LOGIC;
    ETH_RXD : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ETH_REFCLK : in STD_LOGIC;
    ETH_CRSDV : in STD_LOGIC;
    mii_txd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mii_tx_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MII2RMII_0_0_MII2RMII : entity is "MII2RMII";
end design_1_MII2RMII_0_0_MII2RMII;

architecture STRUCTURE of design_1_MII2RMII_0_0_MII2RMII is
  signal \ETH_TXD[0]_i_1_n_0\ : STD_LOGIC;
  signal \ETH_TXD[1]_i_1_n_0\ : STD_LOGIC;
  signal crsdv_latch : STD_LOGIC;
  signal mii_rx_dv_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal phase_i_1_n_0 : STD_LOGIC;
  signal \^phase_reg_0\ : STD_LOGIC;
  signal rx_latch : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ETH_TXD[1]_i_1\ : label is "soft_lutpair0";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of mdio_iobuf : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of phase_i_1 : label is "soft_lutpair0";
begin
  phase_reg_0 <= \^phase_reg_0\;
\ETH_TXD[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => mii_txd(0),
      I1 => \^phase_reg_0\,
      I2 => p_0_in_0(0),
      I3 => rst,
      O => \ETH_TXD[0]_i_1_n_0\
    );
\ETH_TXD[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => mii_txd(1),
      I1 => \^phase_reg_0\,
      I2 => p_0_in_0(1),
      I3 => rst,
      O => \ETH_TXD[1]_i_1_n_0\
    );
\ETH_TXD_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ETH_REFCLK,
      CE => '1',
      D => \ETH_TXD[0]_i_1_n_0\,
      Q => ETH_TXD(0),
      R => '0'
    );
\ETH_TXD_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ETH_REFCLK,
      CE => '1',
      D => \ETH_TXD[1]_i_1_n_0\,
      Q => ETH_TXD(1),
      R => '0'
    );
crsdv_latch_reg: unisim.vcomponents.FDRE
     port map (
      C => ETH_REFCLK,
      CE => p_0_in,
      D => ETH_CRSDV,
      Q => crsdv_latch,
      R => rst
    );
mdio_iobuf: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => phy_mdio_o,
      IO => ETH_MDIO,
      O => phy_mdio_i,
      T => phy_mdio_t
    );
mii_rx_dv_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => crsdv_latch,
      I1 => ETH_CRSDV,
      O => mii_rx_dv_i_1_n_0
    );
mii_rx_dv_reg: unisim.vcomponents.FDRE
     port map (
      C => ETH_REFCLK,
      CE => \^phase_reg_0\,
      D => mii_rx_dv_i_1_n_0,
      Q => mii_rx_dv,
      R => rst
    );
\mii_rxd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ETH_REFCLK,
      CE => \^phase_reg_0\,
      D => rx_latch(0),
      Q => mii_rxd(0),
      R => rst
    );
\mii_rxd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ETH_REFCLK,
      CE => \^phase_reg_0\,
      D => rx_latch(1),
      Q => mii_rxd(1),
      R => rst
    );
\mii_rxd_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ETH_REFCLK,
      CE => \^phase_reg_0\,
      D => ETH_RXD(0),
      Q => mii_rxd(2),
      R => rst
    );
\mii_rxd_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ETH_REFCLK,
      CE => \^phase_reg_0\,
      D => ETH_RXD(1),
      Q => mii_rxd(3),
      R => rst
    );
phase_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^phase_reg_0\,
      I1 => rst,
      O => phase_i_1_n_0
    );
phase_reg: unisim.vcomponents.FDRE
     port map (
      C => ETH_REFCLK,
      CE => '1',
      D => phase_i_1_n_0,
      Q => \^phase_reg_0\,
      R => '0'
    );
\rx_latch_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ETH_REFCLK,
      CE => p_0_in,
      D => ETH_RXD(0),
      Q => rx_latch(0),
      R => rst
    );
\rx_latch_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ETH_REFCLK,
      CE => p_0_in,
      D => ETH_RXD(1),
      Q => rx_latch(1),
      R => rst
    );
tx_en_latch_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^phase_reg_0\,
      O => p_0_in
    );
tx_en_latch_reg: unisim.vcomponents.FDRE
     port map (
      C => ETH_REFCLK,
      CE => p_0_in,
      D => mii_tx_en,
      Q => ETH_TXEN,
      R => rst
    );
\tx_latch_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ETH_REFCLK,
      CE => p_0_in,
      D => mii_txd(2),
      Q => p_0_in_0(0),
      R => rst
    );
\tx_latch_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ETH_REFCLK,
      CE => p_0_in,
      D => mii_txd(3),
      Q => p_0_in_0(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MII2RMII_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_MII2RMII_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_MII2RMII_0_0 : entity is "design_1_MII2RMII_0_0,MII2RMII,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_MII2RMII_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_MII2RMII_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_MII2RMII_0_0 : entity is "MII2RMII,Vivado 2025.2";
end design_1_MII2RMII_0_0;

architecture STRUCTURE of design_1_MII2RMII_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^eth_crsdv\ : STD_LOGIC;
  signal \^mii_tx_clk\ : STD_LOGIC;
  signal \^phy_mdc_o\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50006971, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of mii_rx_clk : signal is "xilinx.com:signal:clock:1.0 mii_rx_clk CLK";
  attribute X_INTERFACE_MODE of mii_rx_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of mii_rx_clk : signal is "XIL_INTERFACENAME mii_rx_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_MII2RMII_0_0_mii_rx_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of mii_tx_clk : signal is "xilinx.com:signal:clock:1.0 mii_tx_clk CLK";
  attribute X_INTERFACE_MODE of mii_tx_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of mii_tx_clk : signal is "XIL_INTERFACENAME mii_tx_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_MII2RMII_0_0_mii_tx_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_MODE of rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  ETH_MDC <= \^phy_mdc_o\;
  \^eth_crsdv\ <= ETH_CRSDV;
  \^phy_mdc_o\ <= phy_mdc_o;
  mii_col <= \<const0>\;
  mii_crs <= \^eth_crsdv\;
  mii_rx_clk <= \^mii_tx_clk\;
  mii_rx_er <= \<const0>\;
  mii_tx_clk <= \^mii_tx_clk\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_MII2RMII_0_0_MII2RMII
     port map (
      ETH_CRSDV => \^eth_crsdv\,
      ETH_MDIO => ETH_MDIO,
      ETH_REFCLK => ETH_REFCLK,
      ETH_RXD(1 downto 0) => ETH_RXD(1 downto 0),
      ETH_TXD(1 downto 0) => ETH_TXD(1 downto 0),
      ETH_TXEN => ETH_TXEN,
      mii_rx_dv => mii_rx_dv,
      mii_rxd(3 downto 0) => mii_rxd(3 downto 0),
      mii_tx_en => mii_tx_en,
      mii_txd(3 downto 0) => mii_txd(3 downto 0),
      phase_reg_0 => \^mii_tx_clk\,
      phy_mdio_i => phy_mdio_i,
      phy_mdio_o => phy_mdio_o,
      phy_mdio_t => phy_mdio_t,
      rst => rst
    );
end STRUCTURE;
