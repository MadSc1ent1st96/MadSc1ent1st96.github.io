---
layout: page
title: Hysteresis Loop Study
description: A computational micromagnetic study of hysteresis behavior using Ubermag and OOMMF
img: assets/img/Hysteresis-cube-thumbnail.png
importance: 2
category: work
---

<h1 style="color:#00c3ff; font-size:2.7rem; font-weight:700; margin-bottom:0.5em;">Hysteresis Loop Study</h1>

<p style="font-size:1.15rem; color:#f0f0f0; background:#111827; padding:1rem 1.5rem; border-left:5px solid #9333ea; border-radius:8px;">
This project investigates how the shape and area of magnetic hysteresis loops are influenced by spatial variations in exchange energy within nanoscale magnetic systems. Using <strong>Ubermag</strong> and <strong>OOMMF</strong>, we modeled cubic materials under cyclic magnetic fields and explored different energy terms, geometric configurations, and system parameters to analyze magnetic behavior.
</p>

<hr style="border: none; border-top: 2px dashed #00c3ff; margin: 2rem 0;">

<h2 style="color:#9333ea;">Project Team</h2>

**Supervisor:** Dr. Bheemalingam Chittari - [Website](https://bheemalingam.com/) \
Assistant Professor, Department of Physical Sciences, IISER Kolkata  
Expertise: Computational Physics, Condensed Matter Physics, Nano Science of Materials

**Contributors:**  
Aniket Mishra (23MS096)  
Aditya Chaku (23MS095)  
BS-MS Students, IISER Kolkata

---

<h2 style="color:#9333ea;">Scientific Background</h2>

Magnetic hysteresis loops reflect how a material's magnetization changes in response to an external magnetic field. These loops provide critical insights into material properties like coercivity, remanence, and energy loss. Their shape is influenced by:

- Exchange interactions between magnetic moments  
- Anisotropy constants and orientation  
- DM interaction (Dzyaloshinskii–Moriya)  
- Saturation magnetization  
- External field strength and direction

Ubermag, a Python interface to OOMMF, enables high-resolution micromagnetic modeling using scripts and parameterized simulations.

---

<h2 style="color:#9333ea;">Project Objectives</h2>

- Simulate hysteresis loops across different spatial exchange energy distributions  
- Explore parameter sensitivity in micromagnetic systems  
- Visualize magnetization reversal mechanisms  
- Develop computational modeling and data analysis skills  
- Present loop characteristics under realistic constraints

---

<h2 style="color:#9333ea;">Default Simulation Setup</h2>

- Geometry: Cube of edge length 100 nm  
- Mesh: 5 nm × 5 nm × 5 nm  
- Exchange Constant (A): 1e-12 J/m  
- Uniaxial Anisotropy: K = 4e5, u = (0, 0, 1)  
- DM Constant: D = 1e-3 J/m²  
- Saturation Magnetization: Ms = 1e6 A/m  
- Magnetic Field: Hmin = –1/μ₀ to Hmax = +1/μ₀ over 21 steps

<div style="text-align:center; margin:2rem 0;">
  <img src="/assets/img/Hysteresis-cube.png" alt="Cube Geometry" style="width:70%; border-radius:12px; box-shadow:0 0 25px #00c3ff;">
  <p style="font-style:italic; font-size:0.95rem; color:#d1d5db;">Figure 1. Cubic magnetic system with a mesh size of 5 nm and total size of 100 nm.</p>
</div>

---

<h2 style="color:#9333ea;">Sample Output</h2>

<div style="text-align:center; margin:2rem 0;">
  <img src="/assets/img/Hysteresis-plot.png" alt="Hysteresis Plot" style="width:70%; border-radius:12px; box-shadow:0 0 25px #9333ea;">
  <p style="font-style:italic; font-size:0.95rem; color:#d1d5db;">Figure 2. Hysteresis loop from the base configuration showing magnetization vs applied field.</p>
</div>

---

<h2 style="color:#9333ea;">Simulation Variations</h2>

<h3 style="color:#00c3ff;">1. Geometry and Mesh</h3>

- Increasing cube size beyond 80 nm had minimal effect  
- Reducing size below 45 nm distorted the loop  
- Finer mesh (2 nm) improved resolution; coarser mesh (10 nm) caused loss of detail

<h3 style="color:#00c3ff;">2. Energy Parameters</h3>

- **Exchange Energy:** Higher A led to wider loops and sharper transitions  
- **Anisotropy:** Higher K increased coercivity; misaligned u changed loop symmetry  
- **DM Interaction:** High D disrupted loop stability (>2.7e-3 J/m²)  
- **Saturation Magnetization:** Low Ms (<0.3 A/m) caused S-shaped or vanishing loops

<h3 style="color:#00c3ff;">3. External Magnetic Field</h3>

- Adjusting Hmin and Hmax changed loop span  
- Equal but opposite Hmax = –Hmin maintained symmetry  
- Directional fields tilted or skewed loop shapes

<h3 style="color:#00c3ff;">4. Number of Steps</h3>

- More steps gave smoother loops  
- Fewer steps produced coarse, stepped plots  
- Step size also impacted angular deviation from vertical

---

<h2 style="color:#9333ea;">Spatial Configurations</h2>

- **Layered Cubes**: Gradual or alternating exchange energy layers  
- **Pillared Cubes**: 5×5 grids of 20 nm pillars with varying A values  
- **Subdivided Cubes**: 3×3×3 inner cubes of 30 nm with descending energy  
- **Layered Thickness**: Variable volume distribution with fixed A, B  
- **Cube-in-Cube**: Core with high A, shell with low A, showing edge–core dynamics

---

<h2 style="color:#9333ea;">Key Findings</h2>

- Spatial distribution of exchange energy alters coercivity and loop structure  
- DM interaction can dominate and destroy hysteresis shape at high D  
- Magnetic behavior is not solely dependent on size or volume  
- External field orientation modifies remanent states  
- Loops are highly sensitive to both spatial geometry and field sequence

---

<h2 style="color:#9333ea;">Conclusion</h2>

This study demonstrates how micromagnetic simulations offer insight into complex magnetic interactions in nanoscale systems. By exploring a broad space of energy configurations using Ubermag and OOMMF, the project bridges computational modeling and physical understanding of hysteresis.

---

<h2 style="color:#9333ea;">Acknowledgments</h2>

We thank Dr. Bheemalingam Chittari for his mentorship and deep insight throughout this project. His guidance helped shape both the theoretical framework and computational strategies employed in this work.

---

<p style="font-size:1rem; font-style:italic; color:#a0aec0; margin-top:2rem;">
This project highlights the use of modern computational tools in micromagnetics to understand fundamental physical phenomena in a highly visual, data-driven way.
</p>
