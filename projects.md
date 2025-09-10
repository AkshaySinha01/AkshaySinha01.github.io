---
layout: page
title: "Projects"
permalink: /projects/
---

<h2>My Projects</h2>

<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 20px;">

  {% for project in site.projects %}
  <div style="border: 1px solid #ddd; border-radius: 10px; padding: 20px; box-shadow: 0 2px 6px rgba(0,0,0,0.1);">
    <h3 style="margin-top: 0;">{{ project.title }}</h3>
    <p>{{ project.description }}</p>
    <a href="{{ project.url }}" style="display: inline-block; padding: 10px 15px; background: #0073e6; color: white; text-decoration: none; border-radius: 5px;">View Project</a>
  </div>
  {% endfor %}

</div>
