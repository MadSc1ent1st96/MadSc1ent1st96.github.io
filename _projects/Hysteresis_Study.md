---
layout: page
title: Hysteresis Loop Study
description: A computational study of hysteresis loops using Ubermag and OOMMF
img: assets/img/Hysteresis-cube.png
importance: 2
category: work
---

The **Hysteresis Loop Study** is a computational physics project that explores magnetic hysteresis behavior using Ubermag, a Python interface to OOMMF (Object Oriented MicroMagnetic Framework). This collaborative project investigates how different exchange energy configurations affect hysteresis loops in cubic magnetic systems through micromagnetic simulations.

---

## Project Team

**Supervisor:** Dr. Bheemalingam Chittari  
*Assistant Professor, Department of Physical Sciences, IISER Kolkata*  
*Expertise: Computational Physics, Condensed Matter Physics, Nano Science of Materials*

**Collaborator:** Aditya Chaku (23MS095)  
*Fellow BS-MS Student, IISER Kolkata*

---

## Scientific Background

Hysteresis loops are fundamental to understanding magnetic materials and their applications in data storage, sensors, and other magnetic devices. The shape and characteristics of these loops depend on various factors including:

- **Exchange Energy**: Determines how neighboring magnetic moments interact
- **Material Properties**: Crystal structure, anisotropy, and composition
- **External Conditions**: Temperature, applied field strength, and field direction

Ubermag provides a powerful interface to OOMMF, allowing for sophisticated micromagnetic simulations with high accuracy.

---

## Project Goals

The main objectives of this study were:

- To simulate hysteresis loops under different exchange energy configurations
- To understand the relationship between exchange energy and magnetic behavior
- To develop computational skills in micromagnetic modeling
- To analyze the effects of material parameters on hysteresis characteristics
- To collaborate effectively in computational physics research

---

## Technical Implementation

**Tools Used:**
- **Ubermag**: Python interface for micromagnetic simulations
- **OOMMF**: Object Oriented MicroMagnetic Framework
- **Python**: For data analysis and visualization
- **Cubic System**: Simulated magnetic material geometry

**Key Features:**
- Multiple exchange energy configurations tested
- Systematic parameter variation
- Quantitative analysis of loop characteristics
- Comparison with theoretical predictions
- Collaborative code development and analysis

---

## Simulation Setup

The study employed a cubic magnetic system with carefully chosen parameters to investigate hysteresis behavior. The simulation setup included:

- **Geometry**: Cubic magnetic material with defined dimensions
- **Exchange Energy**: Varied systematically to study its effects
- **Applied Field**: Cyclic magnetic field to generate hysteresis loops
- **Boundary Conditions**: Periodic boundary conditions for realistic behavior

{% include figure.html path="assets/img/Hysteresis-cube.png" class="img-fluid rounded z-depth-1" caption="Cubic magnetic system geometry used in the hysteresis simulation. The cube represents the magnetic material with defined exchange energy configurations and boundary conditions." %}

---

## Results and Analysis

The study revealed how exchange energy configurations influence:
- **Coercivity**: The field strength required to reverse magnetization
- **Remanence**: Residual magnetization after field removal
- **Loop Shape**: Symmetry and saturation behavior
- **Energy Loss**: Area enclosed by the hysteresis loop

{% include figure.html path="assets/img/Hysteresis-plot.png" class="img-fluid rounded z-depth-1" caption="Hysteresis loop showing magnetization vs. applied field. The loop demonstrates the characteristic magnetic behavior with coercivity, remanence, and saturation regions clearly visible." %}

---

## Key Findings

The computational analysis revealed several important insights:

1. **Exchange Energy Effects**: Higher exchange energy led to more cooperative magnetic behavior
2. **Loop Characteristics**: The shape of hysteresis loops varied significantly with exchange energy
3. **Coercivity Dependence**: Coercive field strength showed systematic variation with exchange energy
4. **Material Response**: The cubic system exhibited well-defined magnetic domains

---

## Status

This project was completed as part of coursework under the guidance of Dr. Bheemalingam Chittari and demonstrates:
- Computational physics skills
- Understanding of magnetic materials
- Ability to work with complex simulation frameworks
- Data analysis and visualization capabilities
- Collaborative research experience

The results were presented in academic settings and contributed to understanding of magnetic material behavior.

---

## Acknowledgments

We would like to thank Dr. Bheemalingam Chittari for his guidance and supervision throughout this project. His expertise in computational physics and condensed matter physics, particularly in the areas of nano science and materials properties, was invaluable to the success of this study. Dr. Chittari's research experience in graphene and moiré superlattices provided valuable insights into computational approaches for studying material properties.

---

*This project showcases the application of computational methods to fundamental physics problems, bridging theoretical concepts with numerical simulations through collaborative research.* 