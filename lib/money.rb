class Money
  def initialize(amount)
    @amount = amount
  end

  def times(times)
    @amount *= times
    Money.new(@amount)
  end

  def amount
    @amount
  end
end
