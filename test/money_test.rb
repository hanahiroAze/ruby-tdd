require 'minitest/autorun'
require './lib/money.rb'

class MoneyTest < Minitest::Test
  def test_times
    money = Money.new(5)
    assert_equal 10, money.times(2).amount
    money = Money.new(5)
    assert_equal 15, money.times(3).amount
  end
end

