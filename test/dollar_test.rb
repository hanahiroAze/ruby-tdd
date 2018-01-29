require 'minitest/autorun'
require './lib/dollar.rb'

class DollarTest < Minitest::Test
  def test_times
    five = Dollar.new(5)
    assert_equal Dollar.new(10), five.times(2)
    assert_equal Dollar.new(15), five.times(3)
  end

  def test_equals
    assert_equal(true, Dollar.new(5).equals(Dollar.new(5)))
    assert_equal(false, Dollar.new(5).equals(Dollar.new(6)))
  end
end

