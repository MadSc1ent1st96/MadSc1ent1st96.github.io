---
layout: page
title: Game Room
permalink: /game/
nav: true
nav_order: 8
---

Welcome to the Physics Game Room! Explore interactive physics games and simulations. Click a game to play!

<div class="projects-grid">
  <div class="project-card">
    <a href="/game/infinite-runner/">
      <img src="/assets/games/mario/img/player.png" alt="Infinite Runner" style="width:100px;height:100px;object-fit:contain;margin:1em auto;display:block;"/>
      <h2>Infinite Runner</h2>
      <p>A classic platformer with a physics twist! Jump, dodge obstacles, and collect power-ups.</p>
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
  background: #232323;
  border-radius: 12px;
  box-shadow: 0 2px 8px rgba(0,0,0,0.15);
  padding: 1.5em 1em;
  width: 320px;
  min-height: 320px;
  text-align: center;
  transition: box-shadow 0.2s;
}
.project-card:hover {
  box-shadow: 0 4px 16px rgba(0,0,0,0.25);
}
.project-card h2 {
  margin: 0.5em 0 0.2em 0;
  font-size: 1.4em;
}
.project-card p {
  color: #aaa;
  font-size: 1em;
}
.project-card a {
  color: inherit;
  text-decoration: none;
  display: block;
  height: 100%;
}
</style>
