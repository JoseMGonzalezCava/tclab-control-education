# TCLab Control Education

MATLAB templates for Control Engineering education using a TCLab-compatible experimental platform.

---

## Associated publication

This repository supports the work presented in the following article:

**"Cerrando la brecha teoría-práctica: itinerario de aprendizaje activo para la enseñanza de Ingeniería de Control"**, currently under review in *Revista Iberoamericana de Automática e Informática Industrial (RIAI)*.

The materials provided in this repository are intended to enhance the reproducibility of the proposed learning itinerary and to facilitate its adoption by the academic community.

---

## Hardware description

The experimental setup is based on a TCLab-compatible platform developed at the Universidad de La Laguna. A high-level diagram of the system architecture is available in the `hardware/` folder. This diagram illustrates the main components and signal flow without detailing proprietary hardware design.

---

## Contents

The repository is organized following the workflow of a typical control engineering project, enabling a progressive learning experience from modelling to advanced control strategies.

### 1. TCLab hardware interface
- Arduino-based communication with the experimental setup
- Sensor acquisition and actuator command functions
- Real-time interaction with the system

### 2. System identification
- Step response analysis and model extraction
- Recursive Least Squares (RLS) identification

### 3. Model discretization
- Conversion of continuous-time models into discrete-time representations for digital control implementation

### 4. Control design and implementation

A collection of control strategies implemented and validated on the real system:

- **PI control**: classical feedback control design and tuning
- **Feedforward control (FF)**: disturbance compensation strategies
- **Model Predictive Control (MPC)**: constrained optimal control approach
- **Discrete Kalman Filter (DKF)**: state estimation under noise
- **Pole assignment**: state-feedback control design

Each block includes MATLAB scripts designed for both simulation and real-time implementation.

---

## Folder structure

- `Identification/`
  - `Step Response/`
    - `StepInput.m`
    - `SystemIdentification.m`
  - `RLS/`
    - `RLS.m`
- `Discretization/`
  - `Discretization.m`
- `TCLabConnection/`
  - `tclab_ull.m`
- `Control/`
  - `PI/`
    - `PI.m`
    - `PISimu.m`
  - `MPC/`
    - `MPC.m`
    - `simu.m`
    - `FC.m`
  - `FF/`
    - `FFIdentification.m`
    - `FFControl.m`
  - `DKF/`
    - `DKFEstimation.m`
  - `PoleAssignment/`
    - `PoleAssignment.m`
- `hardware/`
  - `Diagram.pdf`

---

## Requirements

- MATLAB
- MATLAB Support Package for Arduino Hardware
- Arduino Uno
- TCLab-compatible experimental setup

---

## Purpose

These materials have been developed to support active learning methodologies in Control Engineering courses, combining simulation and real-time experimentation on a low-cost physical system.

---

## Authors

José M. Gonzalez-Cava
Santiago Torres Álvarez
Juan Albino Méndez Pérez
Alberto Hamilton Castro
Rafael Herrero Álvarez

Departamento de Ingeniería Informática y de Sistemas
Universidad de La Laguna

---

## License

This project is licensed under the MIT License.

---

## Citation

If you use this material in academic work, please cite the associated publication.
## Citation

If you use this repository, please cite the associated article:
"Cerrando la brecha teoría-práctica: itinerario de aprendizaje activo para la enseñanza de Ingeniería de Control"
(under review in Revista Iberoamericana de Automática e Informática Industrial (RIAI))

