# Pre- and Post-Synthesis Evaluation of a Designs: Functional Verification, Area, Timing, and Power Analysis

This project involves analyzing circuit functionality before and after synthesis, and examining various design parameters using industry-standard tools.

1. **Functionality and Bench-Test**
   - Analyze the provided circuit code and determine its **functionality**.
   - Write a **bench-test** to verify the correct behavior of the circuit.
     
**Answer:**

- The project consists of a module `file_1_0` used inside `file_1_1`.
- `file_1_0` takes `requests` as input and generates `grants` and `grant_valid` as outputs.
- It uses a `grant_temp` register to combine and assign outputs.
- Based on the bit pattern in `requests`, the correct output is selected.
- If no `request` bit is active, the output remains zero.

The module `file_1_1` uses **two instances** of `file_1_0`.  
An `if` statement controlled by `sel_valid_u` decides which instance output to forward.

A **ModelSim** testbench was created to verify multiple test conditions.  
✅ Simulation results matched the expected logic.

---
2. **Synthesis using Design Compiler (DC)**
   - Use the **DC tool** with a provided sample script (modify as needed).
   - Understand each command in the script and what result it produces.

3. **Synthesis Output Requirements**
   The output must include:
   - Circuit reports
   - A synthesized **netlist** for post-synthesis simulation

   The reports must cover:
   - ✅ Cell report  
   - ✅ Power report  
   - ✅ Area report  
   - ✅ Timing report

4. **PVT Corner Analysis**
   Synthesize the circuit under various PVT (Process-Voltage-Temperature) corners using the provided libraries (Slow, Typical, Fast). Fill out and analyze the table below:

   | Corner | nMOS | pMOS | Wire | VDD | Temp | Purpose                                              |
   |--------|------|------|------|-----|------|------------------------------------------------------|
   | T      | T    | T    | S    | S   | S    | Timing specs (binned parts)                          |
   | T      | S    | S    | S    | S   | S    | Timing specs (conservative)                         |
   | S      | S    | S    | S    | S   | F    | Race conditions, hold time issues, noise             |
   | S      | S    | S    | S    | F   | F    | Dynamic power                                        |
   | S      | S    | S    | F    | F   | F    | Subthreshold leakage, noise, etc.                    |
   | S      | S    | F    | F    | F   | F    | Race of gates against wires                          |
   | S      | F    | F    | F    | F   | F    | Race of wires against gates                          |
   | F      | F    | F    | F    | F   | F    | Pseudo-nMOS, noise margin, read/write issues         |
   | F      | F    | F    | F    | F   | F    | Ratioed circuits, race conditions                    |

5. **Optimization Constraint Evaluation**
   - Analyze the effect of constraints (at least on **speed** and **area**) during synthesis.

6. **Post-Synthesis Simulation**
   - Use **ModelSim** to simulate the post-synthesis netlist.
   - Demonstrate that **pre-synthesis (RTL)** and **post-synthesis** simulations match.
   - Discuss what this output similarity proves about the design.
