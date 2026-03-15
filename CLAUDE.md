# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

Personal GitHub Pages site (`wrightbr.github.io`) hosting multiple independent static web applications. No build system, package manager, or CI/CD pipeline — all projects are self-contained HTML files deployed automatically via GitHub Pages.

## Development

No build steps needed. Open HTML files directly in a browser, or run a local server:

```bash
python -m http.server 8000
```

## Project Structure

Each subdirectory is an independent, self-contained application:

| Directory | Description | Tech |
|-----------|-------------|------|
| `finlit/` | Financial literacy educational app | React 18 (CDN), Babel, Lucide icons |
| `haulouts/` | Oregon pinniped haulout location quiz | Vanilla JS, fuzzy matching |
| `quiz/` | Oregon coast N/S directional quiz | Vanilla JS |
| `predation/` | Predation sampling visualization | Vanilla JS, Canvas API |
| `mckenna/` | Personal page with separate CSS | HTML/CSS |
| `thunder/` | Personal page | HTML |
| `DS9_Project/` | Legacy R/Slidify presentation framework | (rarely touched) |

## Architecture Patterns

- **No shared code**: Each project is fully self-contained — CSS, JS, and data all inline within a single `index.html`
- **Data storage**: Hardcoded JSON arrays in `<script>` tags (haulouts, quiz, predation)
- **Dependencies**: Loaded via CDN only (React, Babel, Lucide in `finlit/`)
- **`finlit/`** is the most complex project — a single 26K+ line React app with JSX transpiled by Babel in-browser
- **`haulouts/`** has multiple versioned files (`index_v1.html` through `index_v3.html`); `index.html` is the current version
