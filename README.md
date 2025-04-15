# Smart Traffic Light Controller Chip

## 🚦 Introduction

This is a simulation-based Verilog design for a **Smart Traffic Light Controller**, created to model real-time traffic management logic using **Xilinx Vivado**. The design showcases digital design principles such as finite state machines and clock-driven behavior.

---

## 💡 What It Is

A behavioral model of a traffic light controller written in **Verilog HDL**, verified entirely using Vivado’s built-in simulator. It emulates how a smart traffic signal would work based on a timed control scheme or traffic-based input logic.

---

## ❓ Why Use This?

- Simulate smart signal control in real time.
- Practice FSM, Verilog syntax, and simulation workflows.
- No need for hardware—entirely testable via Vivado.
- Serves as a building block for advanced traffic or embedded systems design.

---

## 🧰 Requirements

- [Xilinx Vivado Design Suite](https://www.xilinx.com/products/design-tools/vivado.html)  
  (Any version supporting behavioral simulation)

---

## ⚙️ Setup Instructions

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/MuraliKrishna-git/Smart_Traffic_Light_Controller_Chip.git
   cd Smart_Traffic_Light_Controller_Chip
   ```

2. **Launch Vivado:**
   - Open Vivado GUI
   - Create a new **project** (RTL Project, don’t add sources yet)
   - Add `Verilog` source files from `srcs/` directory
   - Add testbench files from `sim/` directory

3. **Set the Top Module:**
   - Mark your testbench file as the top module for simulation

---

## ▶️ How to Simulate

1. **Run Behavioral Simulation** in Vivado:
   - Go to **Flow Navigator** → **Simulation** → **Run Simulation** → **Run Behavioral Simulation**
   - Observe waveform and test output
   - Use `Simulation Settings` to adjust run time or simulation resolution

---

## 🚀 Future Enhancements

- Add real-time inputs for emergency and pedestrian systems  
- Simulate adaptive timing using mock sensors  
- Extend to four-way or multi-lane junction logic  
- Model traffic density-based control with counters or AI logic

---

## 📄 License

Licensed under the [GNU General Public License v3.0](https://github.com/MuraliKrishna-git/Smart_Traffic_Light_Controller_Chip/blob/main/LICENSE).

---
