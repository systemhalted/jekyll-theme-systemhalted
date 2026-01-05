# frozen_string_literal: true

require "test_helper"

class ThemeFilesTest < Minitest::Test
  def test_gemspec_metadata
    refute_nil SPEC
    assert_equal "theme", SPEC.metadata["plugin_type"]
  end

  def test_theme_files_exist
    required_paths = %w[
      _layouts/default.html
      _layouts/page.html
      _layouts/post.html
      _includes/head.html
      _includes/sidebar.html
      assets/css/nord.css
      assets/js/script.js
      _data/taxonomy.yml
    ]

    required_paths.each do |path|
      assert File.exist?(File.join(ROOT, path)), "Expected #{path} to exist"
    end
  end

  def test_gemspec_includes_core_files
    assert_includes SPEC.files, "_layouts/default.html"
    assert_includes SPEC.files, "_includes/head.html"
    assert_includes SPEC.files, "assets/css/nord.css"
    assert_includes SPEC.files, "lib/jekyll-theme-systemhalted/version.rb"
  end
end
