require 'minitest/autorun'
require './lib/money.rb'

class MoneyTest < Minitest::Test
  def test_mulriplication
    money = Money.new(5)
    assert_equal 10, money.multiplication(2) 
    assert_equal 15, money.multiplication(3) 
  end
end

