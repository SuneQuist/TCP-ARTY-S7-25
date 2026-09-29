\# TCP over Ethernet on the Arty S7-25



Implementation of TCP/IP networking on a \*\*Digilent Arty S7-25 FPGA\*\* using an external \*\*LAN8720 Ethernet PHY\*\*.



The project uses a \*\*MicroBlaze soft processor\*\* for the software/networking side and \*\*AXI EthernetLite\*\* as the Ethernet MAC. Because EthernetLite exposes an MII interface while the LAN8720 uses RMII, I implemented a custom \*\*MII ↔ RMII bridge in Verilog\*\* to connect the two.



The resulting system is capable of transmitting and receiving TCP traffic and can also be used for UDP communication.



\## Hardware



\- Digilent Arty S7-25

\- Xilinx Spartan-7 FPGA

\- External LAN8720 Ethernet PHY

\- On-board DDR3 memory



Board information:  

\[Digilent Arty S7-25](https://digilent.com/shop/arty-s7-spartan-7-fpga-development-board/)



\## Architecture



At a high level, the design consists of:



```text

&#x20;                  Arty S7-25 FPGA

┌───────────────────────────────────────────────┐

│                                               │

│   MicroBlaze                                  │

│       │                                       │

│       ├──────── DDR3 / MIG                    │

│       │                                       │

│       ├──────── UART / Timer                  │

│       │                                       │

│       └──────── AXI EthernetLite              │

│                     │                         │

│                    MII                        │

│                     │                         │

│             ┌───────▼────────┐                │

│             │ Custom Verilog │                │

│             │   MII ↔ RMII   │                │

│             │     Bridge     │                │

│             └───────┬────────┘                │

│                     │                         │

└─────────────────────┼─────────────────────────┘

&#x20;                     │ RMII

&#x20;                     ▼

&#x20;                  LAN8720

&#x20;                     │

&#x20;                     ▼

&#x20;                  Ethernet

```



\### MicroBlaze



A MicroBlaze soft processor handles the C software used by the system, including the networking application.



Rather than relying only on the limited local BRAM available to the processor, the software is stored and executed using the board's \*\*DDR3 memory\*\*.



\### DDR3 / Clocking



The DDR3 controller is generated using the Xilinx Memory Interface Generator (MIG).



The design uses the MIG `ui\_clk` as the main system clock so that the relevant components operate from a common clock domain. The corresponding `ui\_clk\_sync\_rst` signal is used for reset synchronization.



Using DDR3 also provides enough memory for the MicroBlaze software and networking code without being constrained by the relatively small amount of FPGA block RAM.



\### Ethernet



The Ethernet path is:



```text

MicroBlaze

&#x20;   │

&#x20;   ▼

AXI EthernetLite

&#x20;   │

&#x20;  MII

&#x20;   │

&#x20;   ▼

Custom MII ↔ RMII bridge

&#x20;   │

&#x20;  RMII

&#x20;   │

&#x20;   ▼

LAN8720 PHY

&#x20;   │

&#x20;   ▼

Ethernet

```



AXI EthernetLite communicates using \*\*MII\*\*, while the LAN8720 PHY used for this project communicates using \*\*RMII\*\*.



Rather than replacing the PHY or Ethernet subsystem, I implemented the conversion logic myself in Verilog. The bridge handles the interface differences between MII and RMII so that EthernetLite can communicate correctly with the external PHY.



This custom bridge is the main HDL component written specifically for the project.



\## Vivado Block Design



The image below shows an overview of the complete Vivado block design, including the MicroBlaze processor, DDR3/MIG subsystem, AXI peripherals, EthernetLite controller, and the custom MII/RMII interface.



<img width="979" height="502" alt="Vivado block design overview for the Arty S7-25 Ethernet project" src="https://github.com/user-attachments/assets/65c8c9a0-0a2e-4a7d-9b98-048390093e1a" />



\## What I Learned



The project was primarily an exercise in combining several layers of a system that normally remain fairly separate:



\- FPGA and Verilog development

\- Xilinx Vivado block design

\- MicroBlaze soft-CPU configuration

\- DDR3 memory integration through MIG

\- AXI peripherals

\- Ethernet MAC/PHY communication

\- MII and RMII signalling

\- TCP/IP networking in C

\- Hardware/software debugging across multiple abstraction layers



One of the more interesting problems was discovering that the Ethernet PHY I had available used RMII while the Ethernet MAC exposed MII. Solving that incompatibility required implementing the interface conversion logic rather than simply connecting existing IP blocks together.



\## Repository Notes



Some generated Vivado directories retain an early internal project name from development. The directory name has no technical significance to the design.



The FPGA pin constraints were based on available Arty S7 reference material and the board schematics.



\## Status



The design can communicate over Ethernet through the external LAN8720 PHY and has been used to send and receive TCP traffic. The same networking setup can also be used for UDP.

