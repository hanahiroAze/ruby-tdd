class Money
  def initialize(amount)
    @amount = amount
  end

  def multiplication(times)
    @amount *= times
    Money.new(@amount)
  end
end
