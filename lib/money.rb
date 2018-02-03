class Money
 def equals(obj)
   obj.amount == @amount && obj.class == self.class
 end

 def amount
   @amount
 end

 def ==(target)
   self.equals(target)
 end
 
 def dollar(amount)
   Dollar.new(amount)
 end
end

class Dollar < Money 
  def initialize(amount)
    @amount = amount
  end
  
  def times(times)
    Dollar.new(@amount * times)
  end
end

class Franc < Money
  def initialize(amount)
    @amount = amount
  end

  def times(times)
    Franc.new(@amount * times)
  end
end
