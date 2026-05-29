---
layout: post
title: "Writing Posts: Markdown, Code & Typography"
type: post
published: true
featured: false
comments: false
categories:
  - Writing
tags:
  - markdown
  - code
featured_image: assets/images/example.png
featured_image_alt: 'A notebook, pen, and laptop on a writing desk'
featured_image_caption: "Everything kramdown and Rouge can render"
description: A reference post that exercises the theme's typography — syntax-highlighted code, tables, blockquotes, lists, and images all styled for light and dark mode.
---

You write in plain Markdown (kramdown), and System Halted styles the result for both
light and dark mode. This post doubles as a reference — it exercises the elements
you'll reach for most.

## Code, highlighted

Fenced code blocks are syntax-highlighted by [Rouge](https://github.com/rouge-ruby/rouge).
Here's a little Ruby:

```ruby
class Greeter
  def initialize(name)
    @name = name
  end

  def greet
    "Hello, #{@name}!"
  end
end

Greeter.new("world").greet
```

And some YAML, the language your front matter speaks:

```yaml
layout: post
title: "My First Post"
categories:
  - Writing
tags:
  - hello
```

You can also use `inline code` mid-sentence.

## Tables

| Feature      | Powered by        | Needs a server? |
| ------------ | ----------------- | --------------- |
| Search       | elasticlunr       | No              |
| Feed         | jekyll-feed       | No              |
| SEO tags     | jekyll-seo-tag    | No              |
| Comments     | Disqus (optional) | Hosted service  |

## Blockquotes and lists

> Good typography is invisible. You notice it only when it's missing.

An ordered list:

1. Write the post in Markdown.
2. Add front matter (title, categories, tags).
3. Run `bundle exec jekyll serve`.

And an unordered one:

- Headings, **bold**, and *italic* all just work.
- Links are styled to match the active theme.
- Images get rounded corners automatically:

![A sample featured image used across this demo](assets/images/example1.png)

That's the full toolkit — drop in your words and the theme handles the rest.
