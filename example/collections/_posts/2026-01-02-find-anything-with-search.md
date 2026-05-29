---
layout: post
title: "Find Anything with Built-in Search"
type: post
published: true
featured: true
comments: false
categories:
  - Search
tags:
  - search
  - navigation
featured_image: assets/images/example1.png
featured_image_alt: 'A magnifying glass resting on an open notebook'
featured_image_caption: "Search runs entirely in the reader's browser"
description: System Halted ships with fast, client-side search powered by elasticlunr — no server, no third-party index, and a keyboard shortcut to open it.
---

Most static-site search needs an external service or a hosted index. System Halted
doesn't. Search here is **client-side**, built on
[elasticlunr](https://github.com/weixsong/elasticlunr.js), with the index generated
at build time from your posts.

## Try it

- Press <kbd>/</kbd> anywhere to open the search overlay.
- Start typing — results appear live as you go.
- Use <kbd>Tab</kbd> to move through results; focus stays trapped inside the dialog
  for keyboard users.
- Press <kbd>Esc</kbd> to close.

## Why client-side

- **Nothing to host.** The search index is a static file shipped with your site, so
  there's no API to run or pay for.
- **Private.** Queries never leave the reader's browser.
- **Fast.** Results come back instantly, with no network round-trip.

If you'd like to keep a page out of the index, add `search_exclude: true` to its front
matter. Everything else is searchable the moment you publish it.
