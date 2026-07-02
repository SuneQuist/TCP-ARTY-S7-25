`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2026 06:51:04 PM
// Design Name: 
// Module Name: MII2RMII
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


module MII2RMII(
    input  wire        clk,      // can be same as ETH_REFCLK
    input  wire        rst,      // active-high reset

    // MII side: connect to AXI EthernetLite
    input  wire [3:0]  mii_txd,
    input  wire        mii_tx_en,
    output wire        mii_tx_clk,

    output reg  [3:0]  mii_rxd,
    output reg         mii_rx_dv,
    output wire        mii_rx_er,
    output wire        mii_rx_clk,
    output wire        mii_crs,
    output wire        mii_col,

    // RMII side: connect to PHY pins
    input  wire [1:0]  ETH_RXD,
    input  wire        ETH_CRSDV,
    input  wire        ETH_REFCLK,   // 50 MHz RMII clock

    output reg  [1:0]  ETH_TXD,
    output reg         ETH_TXEN
    );
    
    assign mii_rx_er = 1'b0;
    
    // RMII 50MHz REFCLK
    reg phase;
    
    always @(posedge ETH_REFCLK) begin
        if (rst)
            phase <= 1'b0;
        else
            phase <= ~phase;
    end
    
    // 25 MHz Ethernet Lite (each)
    assign mii_tx_clk = phase;
    assign mii_rx_clk = phase;
    
    // -----------------------------
    // MII TX -> RMII TX
    // -----------------------------
    reg [3:0] tx_latch;
    reg       tx_en_latch;
    
    always @(posedge ETH_REFCLK) begin
        if (rst) begin    
            tx_latch    <= 4'b0;
            tx_en_latch <= 1'b0;
            ETH_TXD     <= 2'b0;
            ETH_TXEN    <= 1'b0;
        end else begin
            if (phase == 1'b0) begin
                tx_latch    <= mii_txd;
                tx_en_latch <= mii_tx_en;
                
                ETH_TXD     <= mii_txd[1:0];
                ETH_TXEN    <= mii_tx_en;
            end else begin
                ETH_TXD     <= tx_latch[3:2];
                ETH_TXEN    <= tx_en_latch;
            end
         end
    end
    
    reg [1:0] rx_latch;
    reg       crsdv_latch;
    
    always @(posedge ETH_REFCLK) begin
        if (rst) begin
            rx_latch    <= 2'b0;
            crsdv_latch <= 1'b0;
            mii_rxd     <= 4'b0;
            mii_rx_dv   <= 1'b0;
        end else begin
            if (phase == 1'b0) begin
                rx_latch    <= ETH_RXD;
                crsdv_latch <= ETH_CRSDV;
            end else begin
                mii_rxd   <= {ETH_RXD, rx_latch};
                mii_rx_dv <= crsdv_latch & ETH_CRSDV;
            end
        end
    end
    
    assign mii_crs   = ETH_CRSDV;
    assign mii_col   = 1'b0; // no collision in RMII full-duplex/simple use
        
endmodule
