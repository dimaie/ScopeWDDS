# Saxo-Q Dual DDS USB-2 Controller

This project implements a Dual Direct Digital Synthesizer (DDS) on the KNJN Saxo-Q FPGA board. The board interfaces with a USB host over the Cypress FX2 USB-2.0 controller.

## Hardware Configuration
- **FPGA:** Altera Cyclone II (EP2C5T144C8)
- **DAC Clocks:** Shared input clock on `PIN_88` (`DAC_clk_in`), shared inverted output clock on `PIN_126` (`DAC_clk_out`)
- **DDS Output 1:** 10-bit output on pins 112 through 125
- **DDS Output 2:** 10-bit output on pins 129 through 142

## USB Communication Protocol

To configure the DDS cores from your UI client, you must send a **24-byte payload** containing frequency, phase, and amplitude updates via a USB Bulk Transfer to the FX2 interface. 

The FPGA registers this data via a shift register and waits for a short USB timeout to denote the end of the packet before crossing clock domains and updating the DDS phase accumulators.

### 24-Byte Command Structure

To ensure both channels are perfectly synchronized, we use an atomic 24-byte transfer that updates both channels simultaneously.

| Byte Index | Description |
| :--- | :--- |
| **Bytes 0-3** | **DDS 1 Phase Increment** (32-bit, Little Endian) |
| **Bytes 4-7** | **DDS 1 Phase Offset** (32-bit, Little Endian) |
| **Bytes 8-11** | **DDS 1 Amplitude** (32-bit, Little Endian, 0-65535) |
| **Bytes 12-15** | **DDS 2 Phase Increment** (32-bit, Little Endian) |
| **Bytes 16-19** | **DDS 2 Phase Offset** (32-bit, Little Endian) |
| **Bytes 20-23** | **DDS 2 Amplitude** (32-bit, Little Endian, 0-65535) |

*Note: Byte 0 is transmitted first, shifting through the 192-bit FPGA FIFO, and Byte 23 is transmitted last. This guarantees both channels update on the exact same clock edge.*