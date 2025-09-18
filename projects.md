---
layout: page
title: "Projects"
permalink: /projects/
---

<h2 style="margin-top: 40px; margin-left: 20px;">My Projects</h2>

<div style="padding: 30px; background: linear-gradient(135deg, #e0f7fa, #e8f5e9); border-radius: 12px;">

<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 20px;">

  {% for project in site.projects %}
  <div style="background: white; border: 1px solid #ddd; border-radius: 12px; padding: 20px; box-shadow: 0 4px 10px rgba(0,0,0,0.1);">
    <h3 style="margin-top: 0; color: #2c3e50;">{{ project.title }}</h3>
    <p style="color: #555;">{{ project.description }}</p>
    <a href="{{ project.url }}" style="display: inline-block; padding: 10px 15px; background: #0073e6; color: white; text-decoration: none; border-radius: 5px; transition: 0.3s;">View Project</a>
  </div>
  {% endfor %}

</div>
