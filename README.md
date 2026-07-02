# TCP-ARTY-S7-25
TCP via a peripheral LAN8720 Ethernet PHY, connected to an ARTY S7-25

The board was purchased here: [Digilent Arty S7-25])(https://digilent.com/shop/arty-s7-spartan-7-fpga-development-board/?srsltid=AfmBOornTBsLNbepYy2efL5BQzIKqldvGaThCWyWqHwHFii0hJ2TapPj)

The board is a "cheap" FPGA starter board. It has all the necessary basics to let you start learning HDL/Verilog.

The only thing written in Verilog in this project is the MII/RMII bit/Hz converter, since no AXI or ETH PHY apparently supports RMII..
Anyway, MicroBlaze handles the C code. The clock and reset processor runs on the ui_clk from mig7 (DDR3 user interface output clock), and then the ui_clk_sync_rst clock.
The reason for using the DDR3 clock is that it makes everything run on one clock Hz, and also makes us able to store the C code in the DDR3 memory; otherwise, our little 125Kb max local memory given to us by the MicroBlaze is not nearly enough to store a full TCP server written in C.
The rest is basically just the essentials, such as a timer and UART (or any interface) for the DDR3 to work.
Finally, we have the AXI EthernetLite module, which connects to the "custom" MII to RMII converter.

### Board Layout:
<img width="979" height="502" alt="image" src="https://github.com/user-attachments/assets/65c8c9a0-0a2e-4a7d-9b98-048390093e1a" />



The pinout is just taken from the open source github, otherwise, just take a look at their schematics for the 25 series.
This can send and receive TCP packets, and can of course also do UDP.
The Ethernet PHY was a random one I bought online, which turned out to be using RMII (which I did not notice, my fault) and hence the MII to RMII IP.
