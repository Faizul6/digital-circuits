# Lab 01 — Digital Building Block Measurements (7400 NAND)

## Objective
Measure the behavior and timing characteristics of basic digital logic using an SSI IC (7400: four 2-input NAND gates), a function generator, and an oscilloscope.  
(Short protocol required, 1–3 pages + front page.)  

## Hardware / Tools
- 7400 NAND IC on evaluation board
- Power supply: **Vcc = 3.3 V**, GND = 0 V
- Function generator (square wave)
- Oscilloscope (CH1 = input, CH2 = output)
- Terminated coax cable (50 Ω) for function generator

## Important Safety / Setup Notes
- Do **NOT** exceed **Vmin = 0 V** and **Vmax = Vcc = 3.3 V** on CMOS inputs.
- Function generator output can appear different than the display (termination + voltage divider effects).
- Always verify the real voltage with the oscilloscope before connecting to the circuit.

---

## Tasks Completed

### Task 1.1 — NAND gate behavior (static inputs)
**Setup:** One NAND gate with 2 switch inputs and LED at output.  
**Goal:** Determine and record the NAND truth table.

Truth table (expected):
| A | B | Y = NAND(A,B) |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

---

### Task 2 — Timing characteristics of a gate

#### Task 2.1 — Configure function generator (no circuit yet)
- Frequency: 10–100 kHz
- Amplitude: 3.3 Vpp
- Offset so that the signal alternates between **0 V and 3.3 V**
- Verify on oscilloscope CH1

#### Task 2.2 — Measure NAND timing
**Setup:** Function generator → one NAND input, other input controlled by switch.  
Oscilloscope:
- CH1: input signal (generator)
- CH2: NAND output

**Measurements:**
- Output rise time `tr` (10% → 90%)
- Output fall time `tf` (90% → 10%)
- Propagation delay `tpd` for a rising edge (input → output reference at 50%)

(Insert your measured values here.)

---

### Task 2.3 — Propagation delay of multi-gate circuit
**Setup:** Extended circuit (multiple NAND gates in series).  
**Goal:** Measure propagation delay of the full circuit and compare with expectation  
(Should increase compared to a single gate.)

(Insert results + short comment: “as expected / not as expected”)

---

### Task 3.1 — Glitch observation
**Setup:** Modified NAND circuit for glitch measurement.  
**Goal:** Observe output glitches on oscilloscope and explain:
- What is observed?
- Difference between rising vs falling edges?
- Explanation (different path delays cause short pulses/glitches)

(Insert screenshot / notes)

---

### Task 4.1 — Combinational feedback (oscillator)
**Setup:** Combinational feedback loop using NAND gates (no function generator).  
**Goal:** Observe oscillation and measure oscillator frequency on oscilloscope.

(Insert frequency result + short note)

---

## Files in this folder
- `src/` → (optional) VHDL files if you modeled the circuits
- `report/` → protocol PDF
- `images/` → oscilloscope screenshots