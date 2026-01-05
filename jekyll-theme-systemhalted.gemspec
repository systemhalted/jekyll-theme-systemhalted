# frozen_string_literal: true

require_relative "lib/jekyll-theme-systemhalted/version"

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-systemhalted"
  spec.version       = JekyllThemeSystemhalted::VERSION
  spec.authors       = ["Palak Mathur"]
  spec.email         = ["insanethoughts@live.com"]

  spec.summary       = "Systemhalted theme for Jekyll."
  spec.description   = "A Jekyll theme with a bold homepage grid, archives, tags, search, and theming."
  spec.homepage      = "https://github.com/systemhalted/jekyll-theme-systemhalted"
  spec.license       = "MIT"
  spec.metadata      = {
    "plugin_type" => "theme",
    "documentation_uri" => "https://rubydoc.info/gems/jekyll-theme-systemhalted",
    "source_code_uri" => "https://github.com/systemhalted/jekyll-theme-systemhalted",
    "changelog_uri" => "https://github.com/systemhalted/jekyll-theme-systemhalted/blob/main/CHANGELOG.md"
  }
  spec.required_ruby_version = ">= 2.7"

  spec.files = Dir.glob("{assets,_includes,_layouts,_sass,_data,lib}/**/*", File::FNM_DOTMATCH)
                  .select { |f| File.file?(f) } +
               %w[CHANGELOG.md LICENSE.md README.md]

  spec.add_runtime_dependency "jekyll", "~> 4.3"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.15"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-gist", "~> 1.5"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8"

  spec.require_paths = ["lib"]
end
