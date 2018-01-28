require 'minitest/autorun'
require './lib/dollar.rb'

class DollarTest < Minitest::Test
  def test_times
    five = Dollar.new(5)
    product = five.times(2) 
    assert_equal 10, product.amount
    product =five.times(3) 
    assert_equal 15, product.amount
  end
end

