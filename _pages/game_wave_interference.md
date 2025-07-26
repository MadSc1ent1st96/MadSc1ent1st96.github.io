---
layout: page
title: Wave Interference Constructor
permalink: /game/wave-interference/
nav: false
---

<style>
/* Improve visual hierarchy */
h3 {
    font-size: 1.3em;
    margin-top: 1.5em;
    margin-bottom: 0.5em;
    color: #0076df;
    border-bottom: 2px solid #0076df;
    padding-bottom: 0.3em;
}

h4 {
    font-size: 1.1em;
    margin-top: 1em;
    margin-bottom: 0.3em;
    color: #666;
    font-weight: 600;
}

/* Mobile optimizations */
@media (max-width: 768px) {
    h3 {
        font-size: 1.2em;
    }
    h4 {
        font-size: 1em;
    }
}
</style>

Explore wave superposition and interference patterns in real-time! This interactive simulation demonstrates fundamental wave physics concepts.

<div style="max-width: 900px; margin: auto; text-align: center;">
  <div style="position: relative; width: 100%; max-width: 900px; margin: 0 auto;">
    <iframe
      src="/assets/games/wave_interference/index.html"
      style="width: 100%; height: 700px; border: none; border-radius: 12px; box-shadow: 0 4px 16px rgba(0,0,0,0.15);"
      title="Wave Interference Constructor"
      allowfullscreen>
    </iframe>
  </div>
</div>

---

## How this works

### Wave Interference
When two or more waves meet, they combine according to the principle of superposition. The resulting wave is the sum of the individual waves at each point in space and time.

### Mathematical Foundation
The simulation uses the wave equation:
```
y(x,t) = A₁·sin(k₁x - ω₁t + φ₁) + A₂·sin(k₂x - ω₂t + φ₂)
```

Where:
- **A₁, A₂**: Amplitudes of the two waves
- **k₁, k₂**: Wave numbers (related to frequency)
- **ω₁, ω₂**: Angular frequencies
- **φ₁, φ₂**: Phase angles
- **x**: Position
- **t**: Time

### Types of Interference

**Constructive Interference**
- When waves add up to create larger amplitude
- Peaks align with peaks, troughs align with troughs
- Results in a wave with amplitude equal to the sum of individual amplitudes

**Destructive Interference**
- When waves cancel each other out
- Peaks align with troughs
- Results in reduced or zero amplitude

**Beat Frequency**
- When two waves have slightly different frequencies
- Creates a "beating" pattern with amplitude modulation
- Beat frequency = |f₁ - f₂|

---

## Features
- Adjust amplitude, frequency, and phase of two waves
- Observe constructive and destructive interference
- Real-time visualization of wave superposition
- Educational physics concepts and formulas

---

## Physics Concepts
- **Wave Interference**: When two or more waves meet, they combine according to the principle of superposition.
- **Constructive Interference**: When waves add up to create larger amplitude (peaks align with peaks).
- **Destructive Interference**: When waves cancel each other out (peaks align with troughs).
- **Beat Frequency**: When two waves have slightly different frequencies, you can hear a "beating" pattern.
- **Real Physics Equations**: Uses actual wave equations from physics. 