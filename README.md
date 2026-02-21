# Digital Circuits (DI)

This repository contains my laboratory work for the course **Digital Circuits (DI)** at HAW Hamburg.

The course focuses on practical digital system design using **VHDL**, FPGA implementation, timing analysis, and programmable processor architectures.

---

## 🔧 Technologies & Tools

- VHDL
- Vivado Design Suite
- FPGA: Artix-7 (XC7A100T / XC7A35T)
- MODSYS 2.0 Evaluation Board
- Basys 3 Board
- Behavioral Simulation & Timing Analysis

---

# 🧪 Laboratory Overview

---

## 🔹 Lab 01 – NAND Logic & Timing Analysis

This lab focused on fundamental digital logic behavior using the 7400 NAND IC.

Topics covered:
- Static truth table verification
- Rise and fall time measurement
- Propagation delay
- Glitch (hazard) analysis
- Signal timing behavior

<p align="center">
  <img src="images/lab01/glitch-measurement-setup.png" width="650">
</p>

This experiment introduced real-world timing effects and demonstrated how propagation delays influence digital systems.

---

## 🔹 Lab 02 – 8-Bit Adder & Add/Sub Unit

In this lab, an 8-bit ripple carry adder was designed and extended to an Add/Sub module including status flags:

- Carry (C)
- Overflow (V)
- Negative (N)
- Zero (Z)

The design was synthesized and implemented on the MODSYS FPGA board.

<p align="center">
  <img src="images/lab02/addsub-architecture.png" width="650">
</p>

This lab strengthened understanding of structural VHDL, arithmetic logic units, and hardware mapping constraints.

---

## 🔹 Lab 03 – 7-Segment Display & FSM

This lab implemented a multi-digit 7-segment display system on the Basys 3 board.

Topics included:
- Segment encoding (0–9)
- Common-anode configuration
- Digit multiplexing
- Finite State Machine (FSM) control
- FPGA pin constraint mapping

<p align="center">
  <img src="images/lab03/7segment-pin-mapping.png" width="650">
</p>

This lab demonstrated the interaction between sequential logic, combinational logic, and real hardware peripherals.

---

## 🔹 Lab 04 – DI-RISC Processor Architecture

The final lab implemented a simplified **Register-Load-Store (RISC) architecture**.

Features:
- 16-bit data path
- Program memory & data memory
- Register file
- ALU
- Instruction decoder
- Memory-mapped IO

<p align="center">
  <img src="images/lab04/di-risc-architecture.png" width="650">
</p>

This project integrated all previous knowledge into a complete programmable processing unit implemented on FPGA.

---

# 📈 Learning Outcomes

Through these labs, I developed practical experience in:

- Digital logic timing analysis
- FPGA synthesis and implementation flow
- Structural and behavioral VHDL design
- Finite State Machine design
- Arithmetic logic unit construction
- Processor architecture fundamentals
- Hardware/software interaction via memory-mapped IO

---

# 👤 Author

Robin Faizul Ahmed  
B.Sc. Information Engineering  
HAW Hamburg
