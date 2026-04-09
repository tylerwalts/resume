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
The resume content is **entirely defined in `_data/` directory** as individual YAML files. This allows Jekyll to watch for changes and auto-reload without requiring server restarts.

All resume sections are in separate data files:
- `_data/profile.yml` - Name, title, contact info, summary, avatar flag, social links
- `_data/experiences.yml` - Current/recent work experience (Claritas Rx)
- `_data/employment.yml` - Prior employment (Roar Social, Amazon, Nike)
- `_data/consulting.yml` - Consulting experience (Slalom, Hitachi, WitMatix)
- `_data/clients.yml` - Past client engagements
- `_data/educations.yml` - Education history
- `_data/projects.yml` - Side projects
- `_data/skills.yml` - Skill categories and ratings
- `_data/certifications.yml` - Professional certifications
- `_data/publications.yml` - Publications and case studies
- `_data/recognitions.yml` - Awards and recognition
- `_data/interests.yml` - Personal interests
- `_data/sections.yml` - Section visibility flags (e.g., `experience: true`)

The `_config.yml` file now contains only Jekyll build configuration (markdown, sass, theme settings).

**Important**: Changes to data files in `_data/` are automatically detected by Jekyll and **do not** require restarting the server. Changes to `_config.yml` still require a restart.

### Template Structure
- `index.html` - Entry point, references the resume layout
- `_layouts/resume.html` - Single layout that renders all resume sections using Liquid templating (references `site.data.*`)
- `_includes/` - Reusable components (head, icon-links, social icons)
- `_sass/` - Modular Sass stylesheets compiled into `css/main.scss`
  - `_resume.scss` - Resume-specific styles
  - `_layout.scss` - Layout and grid
  - `_base.scss` - Base styles
  - `_normalize.scss` - CSS reset
  - `_variables.scss` - Color and sizing variables
  - `_mixins.scss` - Reusable Sass mixins

## Making Content Changes

To update resume content:
1. Edit the appropriate YAML file in `_data/` directory
2. Save the file - Jekyll will automatically detect the change
3. Refresh browser to see changes (no server restart needed!)

To change Jekyll configuration (theme, build settings):
1. Edit `_config.yml`
2. Restart Jekyll server: `Ctrl+C` then `bundle exec jekyll serve`

## Deployment

The site is deployed to GitHub Pages from the `gh-pages` branch. Push commits to `gh-pages` to deploy changes.

Custom domain configured via `CNAME` file pointing to `resume.tylerwalts.com`.

## Styling

Sass styles are organized modularly in `_sass/`. The `css/main.scss` file imports all partials and compiles to CSS.

The layout includes print-specific styles for generating PDF versions of the resume.
