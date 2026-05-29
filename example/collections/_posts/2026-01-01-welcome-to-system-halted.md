---
layout: post
title: "Welcome to System Halted"
type: post
published: true
featured: true
comments: false
categories:
  - Getting Started
tags:
  - jekyll
  - getting-started
featured_image: assets/images/example.png
featured_image_alt: 'A tidy writing desk with a notebook and pen'
featured_image_caption: "Start here — a quick tour of the theme"
description: A guided tour of System Halted — the card grid, Nord palette, built-in search, and everything else this Jekyll theme ships with.
---

**System Halted** is a Jekyll theme for people who want a polished, fast blog
without standing up a single backend service. This post is a quick tour of what you
get out of the box. The other posts on this demo site go deeper on each feature.

## What you get

- **A responsive card grid** on the home page — featured images, excerpts, and
  author bylines, laid out in columns that adapt from phone to desktop.
- **Built-in search** powered by [elasticlunr](https://github.com/weixsong/elasticlunr.js).
  It runs entirely in the browser, so there's no server to host and no third-party
  service to sign up for. Press <kbd>/</kbd> to try it.
- **Light and dark themes** based on the [Nord](https://www.nordtheme.com/) palette.
  The toggle remembers your choice and respects your system preference on first visit.
- **Organized content** through categories, tags, sortable archives, and a Featured
  Posts page — categories are grouped into themed sections you control.
- **SEO, a sitemap, and an RSS feed**, generated automatically via
  `jekyll-seo-tag`, `jekyll-sitemap`, and `jekyll-feed`.
- **Accessibility baked in** — ARIA labels, a focus trap in the search dialog, a skip
  link, and full keyboard navigation.

## Getting started

Add the theme to your `Gemfile`:

```ruby
gem "jekyll-theme-systemhalted"
```

Then point your `_config.yml` at it and set your own title, tagline, and author:

```yaml
theme: jekyll-theme-systemhalted
title: Your Site Name
tagline: A short, memorable line
author:
  name: Your Name
```

Run `bundle exec jekyll serve`, open the local URL, and you're publishing. Read on to
see each feature in action.
