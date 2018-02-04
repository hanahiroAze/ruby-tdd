require 'minitest/autorun'
require './lib/money.rb'

class MoneyTest < Minitest::Test
  def test_equals
    assert_equal(true, Money.dollar(5).equals(Money.dollar(5)))
    assert_equal(false, Money.dollar(5).equals(Money.dollar(6)))
    assert_equal(false, Money.franc(5).equals(Money.dollar(5)))
    assert_equal(true, Money.new(5, "USD").equals(Money.new(5, "USD")))
    assert_equal(true, Money.new(5, "CHF").equals(Money.new(5, "CHF")))
  end

  def test_currency
    assert_equal("USD", Money.dollar(5).currency)
    assert_equal("CHF", Money.franc(5).currency)
  end
end

