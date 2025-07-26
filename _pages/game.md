---
layout: page
title: Game Room
permalink: /game/
nav: true
nav_order: 8
---

Welcome to the Game Room! Enjoy these interactive games and simulations.

<div class="projects-grid">
  <div class="project-card">
    <a href="/game/infinite-runner/">
      <img src="/assets/games/mario/img/player.png" alt="Infinite Runner" style="width:100px;height:100px;object-fit:contain;margin:1em auto;display:block;"/>
      <h2>Infinite Runner</h2>
      <p>A fun and engaging platformer! Jump, dodge obstacles, collect power-ups, and try to beat your high score.</p>
    </a>
  </div>
  <div class="project-card">
    <a href="/game/wave-interference/">
      <img src="/assets/img/wave_interference_thumbnail.png" alt="Wave Interference Constructor" style="width:100px;height:100px;object-fit:contain;margin:1em auto;display:block;"/>
      <h2>Wave Interference Constructor</h2>
      <p>Explore wave superposition and interference patterns in real-time!</p>
    </a>
  </div>
</div>

<style>
.projects-grid {
  display: flex;
  flex-wrap: wrap;
  gap: 2em;
  justify-content: flex-start;
}
.project-card {
  background: linear-gradient(135deg, #232323 60%, #1c1c1d 100%);
  border-radius: 18px;
  box-shadow: 0 4px 24px rgba(0,0,0,0.18);
  border: 2px solid transparent;
  padding: 2em 1.2em 1.5em 1.2em;
  width: 340px;
  min-height: 340px;
  text-align: center;
  transition: box-shadow 0.2s, border-color 0.2s, transform 0.18s;
  position: relative;
  overflow: hidden;
}
.project-card:hover {
  box-shadow: 0 8px 32px rgba(0,118,223,0.18), 0 2px 8px rgba(0,0,0,0.18);
  border-color: #0076df;
  transform: translateY(-6px) scale(1.03);
}
.project-card h2 {
  margin: 0.5em 0 0.2em 0;
  font-size: 1.5em;
  font-weight: 700;
  letter-spacing: 0.5px;
  color: #fff;
  transition: color 0.2s;
}
.project-card:hover h2 {
  color: #0076df;
}
.project-card p {
  color: #bfc9d1;
  font-size: 1.08em;
  margin-bottom: 0.5em;
}
.project-card a {
  color: inherit;
  text-decoration: none;
  display: block;
  height: 100%;
}
.project-card img {
  width: 110px;
  height: 110px;
  object-fit: contain;
  margin: 1em auto 0.5em auto;
  display: block;
  border-radius: 12px;
  box-shadow: 0 2px 12px rgba(0,118,223,0.10);
  background: #181818;
  border: 1.5px solid #232323;
  transition: box-shadow 0.2s, border-color 0.2s;
}
.project-card:hover img {
  box-shadow: 0 4px 24px rgba(0,118,223,0.18);
  border-color: #0076df;
}
@media (max-width: 900px) {
  .projects-grid {
    flex-direction: column;
    align-items: center;
    gap: 1.5em;
  }
  .project-card {
    width: 98vw;
    min-width: unset;
    min-height: 220px;
    padding: 1.2em 0.5em 1em 0.5em;
  }
  .project-card img {
    width: 80px;
    height: 80px;
  }
}
</style>
