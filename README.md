# Systemhalted Theme [![Gem Version](https://badge.fury.io/rb/jekyll-theme-systemhalted.svg)](https://badge.fury.io/rb/jekyll-theme-systemhalted) 
A Jekyll theme for personal blogs with a bold homepage grid, archive views, tags/categories, a search overlay, theme toggle, and optional Disqus comments.

## Features
- Responsive post grid with featured images.
- Search overlay powered by elasticlunr (no external services).
- Archives, categories, tags, and featured posts pages.
- Light/dark theme toggle.
- Optional Disqus comments and share buttons.
- Sidebar navigation driven by `_config.yml`.

## Requirements
- Ruby and Bundler installed locally.
- Jekyll (installed via Bundler).

## Using the theme gem
1) Add the theme to your site's `Gemfile`:
   `gem "jekyll-theme-systemhalted"`
2) Update your site's `_config.yml`:
   - `theme: jekyll-theme-systemhalted`
   - Update `title`, `tagline`, `description`, `url`, `baseurl`, `sidebar.items`
   - Plugins:
     ```yaml
     plugins:
       - jekyll-paginate
       - jekyll-gist
       - jekyll-seo-tag
       - jekyll-sitemap
       - jekyll-feed
     ```
3) Install and run:
   `bundle install`
   `bundle exec jekyll serve --livereload`

## Theme development / demo site
The demo site lives in `example/`. To preview the theme locally:
1) Install dependencies:
   `bundle config set --local path vendor/bundle`
   `bundle install`
2) Run the demo site:
   `bundle exec jekyll serve --source example --destination example/_site --livereload`

Jekyll outputs to `_site/` in the source directory. Do not edit generated files directly.

## Tests
Run the test suite:
`bundle exec ruby -Itest -Ilib test/*_test.rb`

## Writing posts
In the demo site, posts live in `example/collections/_posts/` and use the filename format `YYYY-MM-DD-title.md`.
In your own site, follow your configured `collections_dir`.

Front matter example:
```
---
layout: post
title: Sample Post
date: 2025-12-31
categories: [Tech]
tags: [jekyll, notes]
comments: true
featured: true
featured_image: assets/images/2025-12-hero.jpg
featured_image_alt: Brief alt text for the image
featured_image_caption: Photo credit or context
description: One-line summary for previews.
---
```

Drafts live in `example/collections/_drafts/` for the demo site. Preview drafts with:
`bundle exec jekyll serve --source example --destination example/_site --livereload --drafts`

## Pages
The demo site's pages live under `example/`. In your own site, create pages at your site root.
Use `layout: page` for standard content pages or `layout: default` if you want a fully custom layout.

Key pages included in the demo site (copy these into your own site if you want them):
- `index.html`: paginated home grid.
- `archives.html`: year-grouped archive with client-side sorting.
- `categories.html`: category taxonomy grouped by theme.
- `tags.html`: tag archive.
- `featured.html`: posts with `featured: true`.
- `about.md`, `404.md`: static pages.

## Collections
Collections live under `example/collections/` in the demo site (see `collections_dir` in `example/_config.yml`).
To add a collection:
1) Define it in your site's `_config.yml` under `collections:` with `output: true`.
2) Add docs in `collections/_<name>/` (relative to your `collections_dir`).
3) Create a listing page using `layout: collections` and `collection_name: <name>`.

Any collection with `output: true` is included in search (see Search below).

## Search
Search is fully client-side and uses elasticlunr.
- `assets/js/search-data.js` is generated at build time via Liquid.
- `assets/js/script.js` builds the elasticlunr index in the browser.
- Data includes posts and any output collections (excluding `/404.html`).

To exclude a document from search, add this to its front matter:
```
search_exclude: true
```

If you change which fields should be indexed or displayed, edit:
- `assets/js/search-data.js` (document fields and snippets)
- `assets/js/script.js` (elasticlunr fields and rendering)

## Sidebar navigation
Edit `sidebar.items` in your site's `_config.yml`:
```
sidebar:
  items:
    - title: "Home"
      url: "/"
```

The sidebar also includes an "Annotate me" toggle that loads Hypothes.is on demand. Remove it from `_includes/sidebar.html` if you do not want annotation support.

## Categories and tags
Category themes are defined in `_data/taxonomy.yml` and used on `categories.html` and in related-post logic.
Tags are generated from post front matter and listed on `tags.html`.

## Comments and analytics
Disqus comments are supported:
- Set `disqus_shortname` in `_config.yml`.
- Enable per post with `comments: true`.

Google Analytics:
- Set `google_analytics_id` in `_config.yml` to enable `gtag.js`.

## Assets and styling
- Main CSS: `assets/css/nord.css`
- JS bundle: `assets/js/script.js`
- Search data: `assets/js/search-data.js`
- Fonts and icons are loaded in `_includes/head.html` (Google Fonts and Font Awesome CDN).
- Favicons live in `assets/`

## Deployment
Build the site:
`JEKYLL_ENV=production bundle exec jekyll build`

For the demo site:
`JEKYLL_ENV=production bundle exec jekyll build --source example --destination example/_site`

Then deploy the `_site/` folder to any static host.

If deploying to GitHub Pages:
- For `username.github.io`, set `url: https://username.github.io` and `baseurl: ""`.
- For `username.github.io/repo`, set `url: https://username.github.io` and `baseurl: "/repo"`.

## Notes
- Use relative URLs (`| relative_url`) for internal links and assets.
- Keep filenames kebab-case and asset names short.
