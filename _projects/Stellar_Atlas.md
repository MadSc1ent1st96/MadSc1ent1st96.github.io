---
layout: page
title: Stellar Atlas
description: A simulation-based study of stellar evolution using MESA
img: assets/img/Stellar_thumbnail.png # Optional – used for preview cards, can be replaced later
importance: 1
category: work
---

The **Stellar Atlas** is an ongoing personal project that explores the life cycles of stars through computational simulations using [MESA](http://mesa.sourceforge.net) (Modules for Experiments in Stellar Astrophysics). The project aims to visualize how stars of different initial masses and metallicities evolve over time—tracking their paths through the Hertzsprung–Russell diagram, changes in internal structure, and core conditions.

This atlas is organized as a grid of stellar models, each simulated under consistent physical assumptions. Stars are evolved from the pre-main sequence phase to key terminal stages, such as hydrogen or helium exhaustion, depending on the case.

---

## Scientific Background

Stellar evolution is primarily governed by a star’s **initial mass** and **chemical composition** (metallicity). These two factors influence the duration of nuclear burning stages, the types of elements synthesized in the core, and the ultimate fate of the star—whether it becomes a white dwarf, neutron star, or black hole.

- **Low-mass stars** (≲ 2 M☉) burn hydrogen slowly and typically end their lives as white dwarfs after ascending the red giant branch.
- **Massive stars** (≳ 8 M☉) proceed through multiple stages of nuclear burning, synthesizing heavier elements up to iron before collapsing in a supernova.
- **Metallicity** affects opacities, mass loss rates, and the balance of radiation pressure, further influencing the evolutionary path.

MESA provides a detailed and modular framework to simulate these processes with high physical fidelity.

---

## Project Goals

The main goals of the Stellar Atlas are:

- To simulate a range of stellar masses and metallicities using MESA.
- To document and compare the evolution of various stars through structured outputs.
- To provide visualizations and data that can support both learning and research.
- To eventually make this dataset and report publicly available via Zenodo and a personal website.

---

## Status

The first phase—running and analyzing solar-metallicity stars across a mass range of 0.8–100 M☉—is complete. The project is currently being documented in a formal report written in Typst, and the data will be archived on [Zenodo](https://zenodo.org/) with open access.

Future phases will include stars of varying metallicities and enhancements to the web presentation.

---

_Stay tuned as the Stellar Atlas evolves into a complete digital reference of stellar lifetimes, structures, and fates._



---



---
layout: page
title: Stellar Atlas
description: A comprehensive digital atlas of stellar evolution using MESA simulations
img: assets/img/Stellar_thumbnail.png
importance: 1
category: work
---

# Stellar Atlas

**Stellar Atlas** is a finished, research-driven digital project that systematically explores the life cycles of stars through large-scale simulations using [MESA](http://mesa.sourceforge.net) (Modules for Experiments in Stellar Astrophysics). The project delivers an interactive, data-rich resource for understanding how stars of different masses and chemical compositions evolve from birth to their final fate.

> **Live Atlas:** [stellar-atlas-vercel.vercel.app](https://stellar-atlas.vercel.app/)

---

## Overview

- **Extensive Simulations:**
  - 2,300+ stellar models spanning 0–100 M☉ (plus select high-mass outliers) and six metallicities (Z = 0.0001–0.04)
  - Each model evolved to hydrogen or helium exhaustion under consistent, physically motivated assumptions

- **Interactive Visualization:**
  - Explore evolutionary tracks, Hertzsprung–Russell diagrams, core temperature-density relations, and more
  - All visualizations are interactive, downloadable, and validated against Gaia DR3 observations

- **Open Science:**
  - Complete dataset available on [Zenodo](https://doi.org/10.5281/zenodo.15571157)
  - Detailed project report and methodology provided for transparency and reproducibility

---

## Scientific Motivation

Stellar evolution is governed by a star’s **initial mass** and **metallicity**. These parameters determine the star’s structure, nuclear burning stages, and final fate (white dwarf, neutron star, or black hole).

**Stellar Atlas** leverages MESA’s state-of-the-art simulation capabilities to:
- Quantify the effects of mass and metallicity on stellar lifetimes and evolutionary paths
- Compare theoretical models with real data from the Gaia mission
- Provide a reference grid for both education and research

---

## Key Features

- **Simulation Parameters:**
  - Mass range: 0–100 M☉ (step 0.5), plus 0.6, 0.7, 0.8, 0.9, 200, 350, 600, 800, 900 M☉ (for Z=0.04, up to 60 M☉)
  - Metallicities: Z = 0.0001, 0.001, 0.006, 0.014, 0.02, 0.04
  - Stopping conditions: Hydrogen & Helium exhaustion

- **Core Outputs:**
  - Hertzsprung–Russell Diagrams (HRDs)
  - Core temperature vs. density (Tc–ρc) tracks
  - Age vs. radius and luminosity
  - Central hydrogen fraction evolution
  - Animated evolutionary tracks

- **Validation:**
  - Gaia DR3 overlays for HRDs
  - Main sequence and post-main sequence analysis
  - Metallicity effects on stellar structure

---

## Access & Resources

- **Explore the Atlas:** [stellar-atlas-vercel.vercel.app/atlas](https://stellar-atlas-vercel.app/atlas)
- **Download the Dataset:** [Zenodo DOI: 10.5281/zenodo.15571157](https://doi.org/10.5281/zenodo.15571157)
- **Read the Full Report:** [PDF Download](https://stellar-atlas.vercel.app/Assets/Stellar-Atlas-Final-Report.pdf)

---

## About

Developed and maintained by **Aniket Mishra** (BS-MS, IISER Kolkata), with a focus on scientific rigor, open data, and accessible science communication.  
For more information, visit the [About](https://stellar-atlas.vercel.app/about) page or contact: mas23ms096@iiserkol.ac.in

---

> “To understand stars is to glimpse the engines of the universe.”

