# encoding: utf-8
# The tests are written using the standard Ruby library Test::Unit.

require_relative '../1.7.rb'
require 'test/unit'

class TestDistance < Test::Unit::TestCase
  def test_0
    assert_in_delta(5, distance(3, 4), 0.0001)
  end

  def test_1
    assert_in_delta(25.9422, distance(23, 12), 0.0001)
  end

  def test_2
    assert_in_delta(7.2801, distance(2, 7), 0.0001)
  end
end
