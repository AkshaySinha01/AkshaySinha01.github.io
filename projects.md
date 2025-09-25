---
layout: page
title: "Projects"
permalink: /projects/
---

<div style="background: #3B3838; min-height: 100vh; padding: 40px;">

  <!-- Header with Title + Home Button -->
  <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px;">
    <h2 style="margin: 0; color: #ffffff;">My Projects</h2>
    <a href="/" class="back-btn">Home</a>
  </div>

  <style>
    /* Home Button */
    .back-btn {
      padding: 10px 18px;
      background: #ff9500;
      color: white;
      text-decoration: none;
      border-radius: 6px;
      font-weight: 500;
      transition: background 0.3s ease, transform 0.2s ease;
    }
    .back-btn:hover {
      background: #e67e22;
      transform: scale(1.05);
    }

    /* Project Card */
    .project-card {
      background: #767171;
      border-radius: 15px;
      padding: 30px;
      box-shadow: 0 6px 12px rgba(0,0,0,0.4);
      transition: transform 0.3s ease, box-shadow 0.3s ease, background 0.3s ease;
    }
    .project-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 10px 20px rgba(0,0,0,0.6);
      background: #8a8585;
    }

    /* View Project Button */
    .project-btn {
      display: inline-block;
      padding: 10px 15px;
      background: #20c997;
      color: white;
      text-decoration: none;
      border-radius: 6px;
      transition: background 0.3s ease, transform 0.2s ease;
    }
    .project-card:hover .project-btn {
      background: #1abc9c;
    }
    .project-btn:hover {
      transform: scale(1.05);
    }
  </style>

  <!-- Project Cards Grid -->
  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(400px, 1fr)); gap: 20px;">

    {% for project in site.projects %}
    <div class="project-card">
      <h3 style="margin-top: 0; color: #ffffff;">{{ project.title }}</h3>
      <p style="color: #e0e0e0;">{{ project.description }}</p>
      <a href="{{ project.url }}" class="project-btn">View Project</a>
    </div>
    {% endfor %}

  </div>
</div>
