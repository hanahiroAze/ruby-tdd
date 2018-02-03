require 'minitest/autorun'
require './lib/money.rb'

class MoneyTest < Minitest::Test
  def test_times
    five = Money.dollar(5)
    assert_equal Dollar.new(10), five.times(2)
    assert_equal Dollar.new(15), five.times(3)
    five = Franc.new(5)
    assert_equal Franc.new(10), five.times(2)
    assert_equal Franc.new(15), five.times(3)
  end

  def test_equals
    assert_equal(true, Dollar.new(5).equals(Dollar.new(5)))
    assert_equal(false, Dollar.new(5).equals(Dollar.new(6)))
    assert_equal(true, Franc.new(5).equals(Franc.new(5)))
    assert_equal(false, Franc.new(5).equals(Franc.new(6)))
    assert_equal(false, Franc.new(5).equals(Dollar.new(5)))
  end
end

