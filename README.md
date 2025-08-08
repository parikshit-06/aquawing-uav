## AquaWing UAV: Dual-Medium VTOL Aircraft

## Overview

This repository documents the complete theoretical and computational development of an amphibious unmanned aerial vehicle (UAV), focusing on:

* **Dual-environment operation**: Efficient flight and water maneuvering
* **Airfoil optimization**: Eppler, NACA, Clark Y, Selig profiles evaluated
* **Wing design**: Based on performance metrics like CL/CD, stall behavior, and hydrodynamic drag
* **Propeller adaptation**: Two-blade system with redesign for matching air and water advance ratios
* **Transition analysis**: Smooth switch from water takeoff to flight

---

## Key Features

* **VTOL-ready design** with low stall speeds and stable handling in both environments
* **Validated airfoil selection** for 10–20 m/s (air) and 0.5 m/s (water) cruise regimes
* **Hydrodynamic and aerodynamic modeling** using VLM2 and simulation-based plots
* **Optimized propeller design** with modified pitch angle to balance thrust in water and air
* **Final matched advance ratio (J)** between air and water: ΔJ ≈ 0.004

---

## Technical Highlights

### Airfoil & Wing Design

* Best performing airfoil: **NACA 4412**
* Cruise velocity (air): **15 m/s**, drag: **1.2 N**
* Lift-to-drag ratio (air): **CL/CD ≈ 22**
* Cruise velocity (water): **0.5 m/s**, drag: **1.0 N**
* Lift-to-drag ratio (water): **CL/CD ≈ 18**

### Propeller Design

* Diameter: 0.26 m | Chord: 0.2 m | Blades: 2
* Optimized RPMs:

  * Air: 8216 RPM (J ≈ 0.421)
  * Water: 272 RPM (J ≈ 0.425)

### Transition Handling

* Analysis of hydrodynamic drag, porpoising, and spray effects
* Center of gravity placement for positive static margin during takeoff/landing

---

## Folder Structure Suggestion

```
📦 amquawing-uav/
├── 📁 airfoils/                    # Airfoil data and configurations
├── 📁 wing/                        # Wing geometry and aerodynamic analysis
├── 📁 wing_performance_logs/      # Wing performance results and plots
├── 📁 propeller_performance_logs/ # Propeller performance results and logs
├── 📄 Amphibious_Aircraft.pdf     # Full project report (includes theory, methodology, and results)
├── 📄 LICENSE                     # License info
└── 📄 README.md                   # Project documentation (this file)
```

---

## Tools & Dependencies

* MATLAB / Python for simulation and analysis
* XFLR5 or VLM2 for aerodynamic predictions
* Standard plotting libraries (matplotlib, seaborn)
* PDF report written in LaTeX

---

## Authors

* **Parikshit Sonwane** – AE22B042
* **Devang Patwardhan** – AE22B043
* **Advisor**: Prof. Ranjith Mohan
  **Department of Aerospace Engineering, IIT Madras**

---

## License

This project is part of an academic submission. For reuse or further development, please contact the authors for permission.

---
