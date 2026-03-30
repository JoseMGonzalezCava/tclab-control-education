# TCLab Control Education

MATLAB templates for Control Engineering education using TCLab.

## Associated publication

This repository supports the work presented in the following article:

**"Cerrando la brecha teoría-práctica: itinerario de aprendizaje activo para la enseñanza de Ingeniería de Control"**, currently under review in *Revista Iberoamericana de Automática e Informática Industrial (RIAI)*.

The code and templates included in this repository are intended to enhance the reproducibility of the proposed learning itinerary and to support its adoption by the academic community.

## Contents

The repository is organized following the workflow of a typical control engineering project, allowing a progressive learning experience from modelling to advanced control strategies:

### 1. TCLab hardware interface
- Arduino-based communication with the TCLab setup
- Sensor acquisition and actuator command functions

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

Each block includes MATLAB scripts designed to support both simulation and real-time implementation on the TCLab platform.

## Folder structure

- `Identification/`: identification scripts
- `Discretization/`: discrete-time model generation
- `TCLabConnection/`: Arduino communication and sensor/actuator functions
- `Control/`: control design and implementation scripts

## Requirements

- MATLAB
- MATLAB Support Package for Arduino Hardware
- Arduino Uno and TCLab-compatible setup

## Purpose

These materials were developed to support practical learning activities in Control Engineering courses using a low-cost real experimental setup.

## Authors

[José M. Gonzalez-Cava]
[Santiago Torres Álvarez]
[Juan Albino Méndez Pérez]
[Alberto Hamilton Castro]
[Rafael Herrero Álvarez]

[Departamento de Ingeniería Informática y de Sistemas]
[Universidad de La Laguna]

## License

MIT License
