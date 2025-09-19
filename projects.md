---
layout: page
title: "Projects"
permalink: /projects/
---

<div style="background: #3B3838; min-height: 100vh; padding: 40px;">

  <h2 style="margin-top: 0; margin-left: 10px; color: #ffffff;">My Projects</h2>

  <!-- Back to Home Button -->
  <a href="/" class="back-btn">← Back to Home</a>

  <style>
    /* Back Button */
    .back-btn {
      display: inline-block;
      margin: 10px 0 25px 10px;
      padding: 10px 18px;
      background: #28a745;
      color: white;
      text-decoration: none;
      border-radius: 6px;
      transition: background 0.3s ease, transform 0.2s ease;
    }
    .back-btn:hover {
      background: #1e7e34;
      transform: scale(1.05);
    }

    /* Project Card */
    .project-card {
      background: #767171;
      border-radius: 15px;
      padding: 20px;
      box-shadow: 0 6px 12px rgba(0,0,0,0.4);
      transition: transform 0.3s ease, box-shadow 0.3s ease, background 0.3s ease;
    }
    .project-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 10px 20px rgba(0,0,0,0.6);
      background: #8a8585; /* Slightly brighter */
    }

    /* View Project Button */
    .project-btn {
      display: inline-block;
      padding: 10px 15px;
      background: #28a745;
      color: white;
      text-decoration: none;
      border-radius: 6px;
      transition: background 0.3s ease, transform 0.2s ease;
    }
    .project-card:hover .project-btn {
      background: #1e7e34; /* Darker green when card hovered */
    }
    .project-btn:hover {
      transform: scale(1.05);
    }
  </style>

  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 20px; margin-top: 20px;">

    {% for project in site.projects %}
    <div class="project-card">
      <h3 style="margin-top: 0; color: #ffffff;">{{ project.title }}</h3>
      <p style="color: #e0e0e0;">{{ project.description }}</p>
      <a href="{{ project.url }}" class="project-btn">View Project</a>
    </div>
    {% endfor %}

  </div>
</div>
