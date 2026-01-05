# frozen_string_literal: true

require "test_helper"

class VersionTest < Minitest::Test
  def test_version_is_defined
    refute_nil JekyllThemeSystemhalted::VERSION
  end

  def test_version_format
    assert_match(/\A\d+\.\d+\.\d+/, JekyllThemeSystemhalted::VERSION)
  end
end
