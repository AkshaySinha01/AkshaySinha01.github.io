---
layout: page
title: "Projects"
permalink: /projects/
---

<div style="background: #3B3838; min-height: 100vh; padding: 40px;">

  <h2 style="margin-top: 0; margin-left: 10px; color: #ffffff;">My Projects</h2>

  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 20px; margin-top: 20px;">

    {% for project in site.projects %}
    <div style="background: #767171; border-radius: 15px; padding: 20px; box-shadow: 0 6px 12px rgba(0,0,0,0.4);">
      <h3 style="margin-top: 0; color: #ffffff;">{{ project.title }}</h3>
      <p style="color: #e0e0e0;">{{ project.description }}</p>
      <a href="{{ project.url }}" style="display: inline-block; padding: 10px 15px; background: #0073e6; color: white; text-decoration: none; border-radius: 6px; transition: 0.3s;">
        View Project
      </a>
    </div>
    {% endfor %}

  </div>
</div>
