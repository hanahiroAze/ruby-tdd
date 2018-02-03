require 'minitest/autorun'
require './lib/money.rb'

class MoneyTest < Minitest::Test
  def test_times
    five = Money.dollar(5)
    assert_equal Money.dollar(10), five.times(2)
    assert_equal Money.dollar(15), five.times(3)
    five = Money.franc(5)
    assert_equal Money.franc(10), five.times(2)
    assert_equal Money.franc(15), five.times(3)
  end

  def test_equals
    assert_equal(true, Money.dollar(5).equals(Money.dollar(5)))
    assert_equal(false, Money.dollar(5).equals(Money.dollar(6)))
    assert_equal(true, Money.franc(5).equals(Money.franc(5)))
    assert_equal(false, Money.franc(5).equals(Money.franc(6)))
    assert_equal(false, Money.franc(5).equals(Money.dollar(5)))
  end
end

