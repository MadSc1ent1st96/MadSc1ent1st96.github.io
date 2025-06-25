---
layout: post
title: Inside the Heart of a Star - Simulating Stellar Evolution with MESA
date: 2025-06-23 01:00:00
description: A hands-on exploration of stellar structure, theory, and MESA-based simulations
tags: astrophysics stellar-evolution simulation MESA
categories: research-projects
thumbnail: assets/img/Stellar_thumbnail.png
---

This post summarizes my project on simulating stellar evolution using [MESA](http://mesa.sourceforge.net). It connects theoretical astrophysics with practical modeling, particularly for solar-mass stars.

---

## What Defines a Star?

A star is:
1. A massive ball of gas held together by gravity.
2. A luminous object radiating energy from nuclear fusion in its core.

The evolution of a star is dictated by how long these two conditions hold.

---

## Hydrostatic Equilibrium and Energy Balance

Hydrostatic equilibrium maintains a balance between:
- Inward gravitational force
- Outward pressure from thermal motion

\[
\frac{dP}{dr} = -\frac{Gm\rho}{r^2}
\]

The energy production inside stars is governed by:

\[
\dot{u} + P \cdot \dot{\left(\frac{1}{\rho}\right)} = q - \frac{\partial F}{\partial m}
\]

---

## My MESA Simulation: HR Diagrams

Here’s a visual result from my simulation using MESA on a 1 M☉ star.

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/hr_model_290.png" class="img-fluid rounded z-depth-1" zoomable=true %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/hr_model_750.png" class="img-fluid rounded z-depth-1" zoomable=true %}
    </div>
</div>

<div class="caption">
Left: Simulation halted when core hydrogen dropped below 10⁻⁴.  
Right: Full evolution through pre-main sequence, main sequence, and red giant branch.
</div>

---

## Interpreting the HR Diagram

1. **Pre-Main Sequence** – The track starts at low temp and luminosity.
2. **Main Sequence** – A horizontal phase indicating stable hydrogen burning.
3. **Subgiant and Red Giant** – Sharp luminosity increase and temperature drop.

---

## Code & Dataset

- MESA Version: `24.08.1`
- Dataset: [Zenodo Record 15571157](https://zenodo.org/records/15571157)
- My GitHub repo: _(add your link if public)_

---

## Final Thoughts

Modeling stellar structure with MESA helped me bridge textbook theory with dynamic simulations. Understanding HR diagrams and energy balance through actual simulation output was an extremely valuable learning experience.

---

## References

1. Tablizer, *Sun Life*. [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:Sun_Life.png)  
2. Prialnik, *Stellar Structure and Evolution*, 2nd ed., Cambridge University Press (2009)  
3. Paxton et al., *MESA Paper*, [DOI](https://doi.org/10.1088/0067-0049/192/1/3)  
4. Mishra, A. (2025), [Zenodo Record](https://doi.org/10.5281/zenodo.15571157)

---

