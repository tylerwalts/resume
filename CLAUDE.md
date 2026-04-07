# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

A Jekyll-based static resume site hosted on GitHub Pages. Single-page responsive design that renders a complete resume with sections for experience, education, skills, projects, publications, and certifications.

## Development Setup

### Prerequisites
- Ruby 2.3 (managed via rvm)
- bundler gem

### Setup Commands
```bash
rvm use 2.3
bundle install
```

### Running Locally
```bash
bundle exec jekyll serve
```
Site will be available at `http://localhost:4000`

## Architecture

### Data-Driven Content Model
The resume content is **entirely defined in `_config.yml`**, not in `_data/` files. This is the key architectural decision that differs from typical Jekyll sites.

All resume sections are configured as YAML structures in `_config.yml`:
- `resume_experiences` - Current/recent work experience
- `resume_consulting` - Consulting experience section
- `resume_clients` - Past client engagements
- `resume_educations` - Education history
- `resume_projects` - Side projects
- `resume_skills` - Skill categories and ratings
- `resume_certifications` - Professional certifications
- `resume_publications` - Publications and case studies
- `resume_recognitions` - Awards and recognition
- `resume_interests` - Personal interests

Section visibility is controlled via boolean flags (e.g., `resume_section_experience: true`).

**Important**: Changes to `_config.yml` require restarting the Jekyll server to take effect.

### Template Structure
- `index.html` - Entry point, references the resume layout
- `_layouts/resume.html` - Single layout that renders all resume sections using Liquid templating
- `_includes/` - Reusable components (head, icon-links, social icons)
- `_sass/` - Modular Sass stylesheets compiled into `css/main.scss`
  - `_resume.scss` - Resume-specific styles
  - `_layout.scss` - Layout and grid
  - `_base.scss` - Base styles
  - `_normalize.scss` - CSS reset
  - `_variables.scss` - Color and sizing variables
  - `_mixins.scss` - Reusable Sass mixins

### Note on `_data/` Directory
The `_data/` directory contains template files from the original resume template but is **not actively used**. All actual resume data is in `_config.yml`.

## Making Content Changes

To update resume content:
1. Edit `_config.yml` with the desired changes
2. Restart Jekyll server: `Ctrl+C` then `bundle exec jekyll serve`
3. Refresh browser to see changes

## Deployment

The site is deployed to GitHub Pages from the `gh-pages` branch. Push commits to `gh-pages` to deploy changes.

Custom domain configured via `CNAME` file pointing to `resume.tylerwalts.com`.

## Styling

Sass styles are organized modularly in `_sass/`. The `css/main.scss` file imports all partials and compiles to CSS.

The layout includes print-specific styles for generating PDF versions of the resume.
