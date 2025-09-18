---
layout: page
title: "Projects"
permalink: /projects/
---

<h2 style="color: white;">My Projects</h2>

<div style="padding: 30px; background: #3B3838; min-height: 100vh;">

<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 20px;">

  {% for project in site.projects %}
  <div style="background: #767171; border-radius: 12px; padding: 20px; box-shadow: 0 4px 10px rgba(0,0,0,0.3);">
    <h3 style="margin-top: 0; color: #ffffff;">{{ project.title }}</h3>
    <p style="color: #e0e0e0;">{{ project.description }}</p>
    <a href="{{ project.url }}" style="display: inline-block; padding: 10px 15px; background: #0073e6; color: white; text-decoration: none; border-radius: 5px; transition: 0.3s;">View Project</a>
  </div>
  {% endfor %}

</div>
