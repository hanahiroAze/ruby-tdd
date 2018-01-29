class Money
 def initialize(amount)
   @amount = amount
 end
end

class Dollar < Money 
  def times(times)
    Dollar.new(@amount * times)
  end

  def equals(obj)
    obj.amount == @amount
  end

  def amount
    @amount
  end

  def ==(target)
    self.equals(target)
  end
end

class Franc < Money
  def times(times)
    Franc.new(@amount * times)
  end

  def equals(obj)
    obj.amount == @amount
  end

  def amount
    @amount
  end

  def ==(target)
    self.equals(target)
  end
end
