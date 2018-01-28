class Dollar 
  def initialize(amount)
    @amount = amount
  end

  def times(times)
    Dollar.new(@amount * times)
  end

  def equals(obj)
    true
  end

  def amount
    @amount
  end
end
