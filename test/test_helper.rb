# frozen_string_literal: true

require "bundler/setup"
require "minitest/autorun"

ROOT = File.expand_path("..", __dir__)
lib = File.join(ROOT, "lib")
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "jekyll-theme-systemhalted"

SPEC_PATH = File.join(ROOT, "jekyll-theme-systemhalted.gemspec")
SPEC = Gem::Specification.load(SPEC_PATH)
