---
layout: page
title: Hysteresis Loop Study
description: A computational micromagnetic study of hysteresis behavior using Ubermag and OOMMF
img: assets/img/Hysteresis-cube-thumbnail.png
importance: 2
category: work
---

<h1 style="color:#004d99; font-size:2.5rem; font-weight:700;">Hysteresis Loop Study</h1>

<p style="font-size:1.2rem;">
This project investigates how the shape and area of magnetic hysteresis loops are influenced by spatial variations in exchange energy within nanoscale magnetic systems. Using <strong>Ubermag</strong> and <strong>OOMMF</strong>, we modeled cubic materials under cyclic magnetic fields and explored different energy terms, geometric configurations, and system parameters to analyze magnetic behavior.
</p>

<hr>

<h2 style="color:#0a3d62;">Project Team</h2>

**Supervisor:** Dr. Bheemalingam Chittari  
Assistant Professor, Department of Physical Sciences, IISER Kolkata  
Expertise: Computational Physics, Condensed Matter Physics, Nano Science of Materials

**Contributors:**  
Aniket Mishra (23MS096)  
Aditya Chaku (23MS095)  
BS-MS Students, IISER Kolkata

<hr>

<h2 style="color:#0a3d62;">Scientific Background</h2>

Magnetic hysteresis loops reflect how a material's magnetization changes in response to an external magnetic field. These loops provide critical insights into material properties like coercivity, remanence, and energy loss. Their shape is influenced by:

- Exchange interactions between magnetic moments  
- Anisotropy constants and orientation  
- DM interaction (Dzyaloshinskii–Moriya)  
- Saturation magnetization  
- External field strength and direction

**Ubermag**, a Python interface to **OOMMF**, enables high-resolution micromagnetic modeling using scripts and parameterized simulations.

<hr>

<h2 style="color:#0a3d62;">Project Objectives</h2>

- Simulate hysteresis loops across different spatial exchange energy distributions  
- Explore parameter sensitivity in micromagnetic systems  
- Visualize magnetization reversal mechanisms  
- Develop computational modeling and data analysis skills  
- Present loop characteristics under realistic constraints

---

<h2 style="color:#0a3d62;">Default Simulation Setup</h2>

The base configuration used for most simulations:

- Geometry: Cube of edge length 100 nm  
- Mesh: 5 nm × 5 nm × 5 nm  
- Exchange Constant (A): 1e-12 J/m  
- Uniaxial Anisotropy: K = 4e5, u = (0, 0, 1)  
- DM Constant: D = 1e-3 J/m²  
- Saturation Magnetization: Ms = 1e6 A/m  
- Applied Field: Hmin = –1/μ₀ to Hmax = +1/μ₀ over 21 steps

<center>
  <img src="/assets/img/Hysteresis-cube.png" alt="Cube Geometry" style="width:70%; border-radius:12px; box-shadow:0 4px 8px rgba(0,0,0,0.1); margin-top:20px;">
  <p style="font-style:italic; font-size:0.95rem;">Figure 1. Cubic magnetic system used for the simulation. The mesh shown is 5 nm per cell within a 100 nm cube.</p>
</center>

---

<h2 style="color:#0a3d62;">Sample Output</h2>

The default setup generates the following hysteresis loop, showing key characteristics:

- Coercivity  
- Remanence  
- Saturation  
- Symmetry under cyclic magnetic fields

<center>
  <img src="/assets/img/Hysteresis-plot.png" alt="Hysteresis Plot" style="width:70%; border-radius:12px; box-shadow:0 4px 8px rgba(0,0,0,0.1); margin-top:20px;">
  <p style="font-style:italic; font-size:0.95rem;">Figure 2. Simulated hysteresis loop for the reference configuration.</p>
</center>

---

<h2 style="color:#0a3d62;">Simulation Variations</h2>

<h3 style="color:#2c3e50;">1. Geometry and Mesh</h3>

- Increasing cube size beyond 80 nm had minimal effect  
- Reducing size below 45 nm distorted the loop  
- Finer mesh (2 nm) improved resolution; coarser mesh (10 nm) caused loss of detail

<h3 style="color:#2c3e50;">2. Energy Parameters</h3>

- **Exchange Energy**: Higher A led to wider loops and sharper transitions  
- **Anisotropy**: Higher K increased coercivity; misaligned u changed loop symmetry  
- **DM Interaction**: High D disrupted loop stability (>2.7e-3 J/m²)  
- **Saturation Magnetization**: Low Ms (<0.3 A/m) caused S-shaped or vanishing loops

<h3 style="color:#2c3e50;">3. External Magnetic Field</h3>

- Adjusting Hmin and Hmax changed loop span  
- Equal but opposite Hmax = –Hmin maintained symmetry  
- Directional fields tilted or skewed loop shapes

<h3 style="color:#2c3e50;">4. Number of Steps</h3>

- More steps gave smoother loops  
- Fewer steps produced coarse, stepped plots  
- Step size also impacted angular deviation from vertical

---

<h2 style="color:#0a3d62;">Special Configurations Explored</h2>

- **Layered Cubes**: Gradual or alternating exchange energy layers  
- **Pillared Cubes**: 5×5 grids of 20 nm pillars with varying A values  
- **Subdivided Cubes**: 3×3×3 arrangement of smaller cubes with energy gradient  
- **Layered Thickness**: Volume fraction of each layer varied with fixed energy values  
- **Cube-in-Cube**: Inner high-A cube embedded in outer low-A shell

These setups allowed investigation into spatial heterogeneity in magnetic response.

---

<h2 style="color:#0a3d62;">Key Insights</h2>

- Magnetic behavior is highly sensitive to spatial distribution of exchange energy  
- DM interaction can override other effects when dominant  
- Saturation and remanence are controlled by both energy terms and geometry  
- External bias direction can guide or distort domain alignment  
- Loop area depends more on domain dynamics than overall volume

---

<h2 style="color:#0a3d62;">Conclusion</h2>

This study demonstrates how micromagnetic simulations can uncover the subtle interplay between geometry, field dynamics, and energy interactions in nanoscale systems. Using Ubermag and OOMMF, this project bridges theory and computation to provide a deeper understanding of magnetic hysteresis behavior.

---

<h2 style="color:#0a3d62;">Acknowledgments</h2>

We thank Dr. Bheemalingam Chittari for his expert mentorship and guidance throughout this project. His insight into computational techniques and magnetic systems helped shape the core design and analysis strategy of this study.

---

<p style="font-size:1rem; font-style:italic; color:#555;">
This project demonstrates the application of computational micromagnetics to study fundamental physical behavior in magnetic systems, integrating Python-based modeling with physical insight and research collaboration.
</p>
