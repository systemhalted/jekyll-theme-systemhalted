---
layout: post
title: "Organize with Categories, Tags & Archives"
type: post
published: true
featured: false
comments: false
categories:
  - Organization
tags:
  - taxonomy
  - archives
featured_image: assets/images/example1.png
featured_image_alt: 'Labeled folders arranged neatly in a row'
featured_image_caption: "Group, sort, and surface your best work"
description: Categories grouped into themes, a tag archive, sortable year-by-year archives, and a Featured Posts page — System Halted gives your readers several ways in.
---

A blog is only as good as its navigation. System Halted gives readers several ways to
find what they're after.

## Categories grouped into themes

Categories aren't a flat list — you group them into **themes** in
`_data/taxonomy.yml`. This demo defines one theme, "Theme Features", that gathers the
five categories used across these posts:

```yaml
themes:
  - id: features
    title: "Theme Features"
    description: "Everything System Halted can do, one post at a time."
    categories:
      - "Getting Started"
      - "Search"
      - "Theming"
      - "Organization"
      - "Writing"
```

The [Categories](/jekyll-theme-systemhalted/categories/) page renders each theme as a
section. Any category you use that isn't listed simply falls under "Other categories",
so nothing gets lost.

## Tags and archives

- **[Tags](/jekyll-theme-systemhalted/tags/)** give you a finer-grained, free-form way
  to cross-link posts, with quick links to jump to any tag.
- **[Archives](/jekyll-theme-systemhalted/archives/)** group posts by year and can be
  sorted by year or post count, ascending or descending — all client-side.

## Featuring your best

Add `featured: true` to a post's front matter and it appears on the
[Featured Posts](/jekyll-theme-systemhalted/featured/) page:

```yaml
featured: true
```

The "Welcome" and "Search" posts on this site are featured — that's why they show up
there.
