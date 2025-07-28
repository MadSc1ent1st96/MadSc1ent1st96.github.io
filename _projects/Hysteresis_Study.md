---
layout: page
title: Hysteresis Loop Study
description: A computational micromagnetic study of hysteresis behavior using Ubermag and OOMMF
img: assets/img/Hysteresis-cube-thumbnail.png
importance: 2
category: work
---

The Hysteresis Loop Study is a comprehensive computational physics project that explores the behavior of magnetic hysteresis loops in micromagnetic systems using Ubermag and OOMMF. The focus of the study lies in understanding how spatial variations in exchange energy influence magnetic properties such as coercivity, remanence, and loop area. A variety of configurations, simulations, and parameter explorations were conducted to investigate these effects.

This project was carried out as part of academic coursework under the guidance of Dr. Bheemalingam Chittari at IISER Kolkata.

---

## Project Team

**Supervisor:** Dr. Bheemalingam Chittari  
Assistant Professor, Department of Physical Sciences, IISER Kolkata  
Expertise: Computational Physics, Condensed Matter Physics, Nano Science of Materials

**Team members:**  
Aniket Mishra (23MS096)  
Aditya Chaku (23MS095)

---

## Scientific Background

Magnetic hysteresis loops represent how a material's magnetization responds to an applied magnetic field. The shape of the loop provides information about key material characteristics such as coercivity, remanence, energy dissipation, and magnetic memory. These properties are influenced by:

- Exchange interaction between magnetic moments
- Magnetic anisotropy and its orientation
- Dzyaloshinskii–Moriya (DM) interaction
- Saturation magnetization
- The strength and direction of the applied magnetic field

Ubermag, a Python interface for OOMMF, enables advanced micromagnetic simulations with accessible scripting and high control over parameter space. This study uses it extensively for simulation design and analysis.

---

## Objectives

- Simulate hysteresis loops under various spatially varying exchange energy conditions
- Analyze the effect of system geometry and mesh resolution
- Investigate the influence of energy terms on magnetic behavior
- Examine how parameter gradients affect loop shape, area, and coercivity
- Develop computational and visualization skills in micromagnetism

---

## Tools and Configuration

**Software and Frameworks:**
- [Ubermag](https://ubermag.github.io): Micromagnetic simulations in Python  
- [OOMMF](https://math.nist.gov/oommf/): Magnetic solver engine  
- Python for automation, analysis, and plotting

**Default System Setup:**
- Geometry: Cube with edge length of 100 nm
- Mesh: 5 nm in x, y, and z directions
- Exchange Constant A: 1e-12 J/m
- Anisotropy Constant K: 4e5 J/m³; axis u = (0, 0, 1)
- DM Constant D: 1e-3 J/m²
- Saturation Magnetization Ms: 1e6 A/m
- Magnetic Field: From Hmin = –1/μ₀ to Hmax = 1/μ₀, over 21 steps

---

## Simulation Study

### Variation of Region Size
- Changing cube edge length showed no effect beyond 80 nm.
- Reduction below 45 nm introduced distortions in the loop shape due to inadequate space for domain formation.

### Mesh Resolution
- Finer meshes captured sharper transitions.
- Coarser meshes lost details in the magnetization reversal process.

### Energy Term Modulation
- **Exchange Energy:** Increasing A increased the loop area and saturation sharpness.
- **Anisotropy (K and u):** Higher K values increased coercivity. Altering the anisotropy axis introduced asymmetries.
- **DM Interaction (D):** Low D preserved loop shape, while high D (> 2.7e-3 J/m²) caused structural breakdown of the loop.
- **Saturation Magnetization (Ms):** Higher Ms values enhanced the area; reducing it below 0.3 A/m led to loss of hysteresis behavior.

### Magnetic Field Parameters
- Varying Hmin and Hmax symmetrically expanded the loop area.
- Hysteresis loops retained symmetry when Hmax = –Hmin and the number of steps was proportionally adjusted.
- Adding external magnetic fields (Zeeman energy) in different directions altered loop inclination and coercivity.

### Number of Field Steps
- Increasing steps smoothed the curve and reduced angular distortion.
- Fewer steps caused jagged transitions and increased vertical angle deviation.

---

## Configurations Explored

### 1. Spatially Layered Cubes
- Cube divided into 5 horizontal layers (20 nm each).
- Exchange energy in each layer followed a geometric or alternating pattern (e.g., A, A/2, A/4, ...).
- Investigated both symmetric and asymmetric profiles by swapping high and low exchange energy layers.

### 2. Pillar-Based Cubes
- Cube divided into 25 vertical pillars (each 20 nm).
- Exchange energy assigned per pillar with gradients across rows and layers.
- Patterns ranged from linearly decreasing to checkerboard alternations.

### 3. Subdivided Cube Structures
- Cube further divided into 3×3×3 inner cubes of 30 nm.
- Each inner cube assigned a halved exchange energy from its neighbor.
- Helped study local magnetic behavior and domain interactions at sub-volumes.

### 4. Layered Structures with Varying Thickness
- Alternating layers with fixed A and B values, while thicknesses of layers were changed.
- Demonstrated how spatial volume of high/low exchange energy impacts loop properties.

### 5. Cube-in-Cube System
- A smaller cube with higher exchange energy was embedded inside a larger cube with lower exchange energy.
- Captured the influence of core-shell-like spatial modulation on magnetic reversal.

---

## Key Observations

- Spatial modulation of exchange energy significantly alters coercivity and loop symmetry.
- Anisotropy direction influences loop alignment and energy dissipation.
- DM interactions can destabilize coherent magnetization reversal if too strong.
- External field components in x, y, z directions tilt loops and change switching thresholds.
- Loop area is not purely dependent on volume; domain dynamics and local interactions play a larger role.

---

## Conclusion

This project demonstrates the complex relationship between magnetic energy terms and hysteresis behavior in structured magnetic systems. By exploring a wide range of configurations and parameter variations using Ubermag and OOMMF, it highlights the power of computational micromagnetics in visualizing and predicting material behavior. The methodology developed here can be extended to analyze more complex materials and geometries.

---

## Acknowledgments

We thank Dr. Bheemalingam Chittari for his valuable guidance throughout this study. His expertise in condensed matter physics and computational methods was crucial to both the theoretical grounding and technical execution of this project.

---

This project highlights the fusion of theoretical physics with computational modeling and showcases the power of simulations in understanding emergent magnetic behavior at the nanoscale.
