
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'string'

class UniqueStringTest < Minitest::Unit::TestCase

  def test_it_finds_unique_characters
    u = UniqueString.new("sassy")
    assert_equal ["s", "a", "y"], u.unique_characters 
  end

  def test_it_returns_false_for_non_unique_string
    u = UniqueString.new("sassy")
    assert_equal false, u.unique_string? 
  end

  def test_it_returns_true_for_unique_string
    u = UniqueString.new("pithy")
    assert_equal true, u.unique_string?
  end
end

