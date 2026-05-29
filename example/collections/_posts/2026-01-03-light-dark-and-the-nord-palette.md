---
layout: post
title: "Light, Dark, and the Nord Palette"
type: post
published: true
featured: false
comments: false
categories:
  - Theming
tags:
  - design
  - dark-mode
featured_image: assets/images/example.png
featured_image_alt: 'A desk lit softly, half in light and half in shadow'
featured_image_caption: "One palette, two moods"
description: System Halted dresses your blog in the Nord palette with a light/dark toggle that remembers the reader's choice and respects their system preference.
---

System Halted is built around the [Nord](https://www.nordtheme.com/) palette — a calm,
arctic-inspired set of colors that reads well in both light and dark modes.

## The toggle

There's a theme toggle in the masthead. When a reader flips it:

- The choice is saved to `localStorage`, so it sticks across visits.
- On a reader's **first** visit, the theme follows their operating system via
  `prefers-color-scheme` — dark if their system is dark, light otherwise.
- The switch is applied before paint, so there's no flash of the wrong theme.

## Typography

The palette is paired with a typographic system that scales fluidly across screen
sizes:

- **Rubik** for body and headings.
- **Source Code Pro** for `inline code` and code blocks.

Because the colors are defined as theme variables, both modes stay consistent across
cards, tables, blockquotes, code blocks, and the search overlay — you don't have to
restyle anything to support dark mode.
