# Lab 01 – NAND Logic & Timing Analysis

This laboratory focused on analyzing the static and dynamic behavior of the 7400 NAND gate.

The objective was to investigate real timing effects in digital circuits and understand how propagation delays influence signal integrity.

---

## 🔧 Hardware Used

- 7400 Series NAND IC
- SSI Evaluation Board
- Function Generator
- Oscilloscope
- MODSYS 2.0 Evaluation Board

---

## 📌 Experiments Performed

- Verification of NAND truth table
- Measurement of rise and fall times
- Propagation delay measurement
- Cascaded gate delay analysis
- Glitch (hazard) observation

---

## 📷 7400 NAND Pin Assignment

<p align="center">
  <img src="../images/lab01/7400-pin-assignment.png" width="500">
</p>

Correct identification of pins (Vcc, GND, inputs and outputs) is essential before powering the IC.

---

## 📷 SSI Evaluation Board – Correct IC Alignment

<p align="center">
  <img src="../images/lab01/pin-assignment-on-ic-evaluation-board.png" width="650">
</p>

The IC must be aligned with the socket marking. Incorrect placement can permanently damage the device.

---

## 📷 Signal Propagation Measurement Setup

<p align="center">
  <img src="../images/lab01/signal-propagation-setup.png" width="650">
</p>

This setup was used to measure propagation delay through cascaded NAND gates.

---

## 📷 Glitch Measurement Setup

<p align="center">
  <img src="../images/lab01/glitch-measurement-setup.png" width="650">
</p>

Unequal propagation delays in different signal paths cause short transient pulses (glitches) during switching transitions.

---

## ⚙️ Core Concepts

- CMOS voltage levels
- Propagation delay (t<sub>pd</sub>)
- Rise time (t<sub>r</sub>) and fall time (t<sub>f</sub>)
- Static hazards (glitches)
- Delay accumulation in cascaded logic

---

## 🎯 Learning Outcome

This lab demonstrated that digital systems are not ideal.  
Signal transitions require finite time, and timing mismatches can introduce unintended behavior.

Understanding propagation delay and hazard effects is fundamental for reliable hardware design.
