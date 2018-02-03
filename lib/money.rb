class Money
 def initialize(amount)
    @amount = amount
 end

 def equals(obj)
   obj.amount == @amount && obj.class == self.class
 end

 def amount
   @amount
 end

 def ==(target)
   self.equals(target)
 end
 
 def self.dollar(amount)
   Dollar.new(amount)
 end

 def self.franc(amount)
   Franc.new(amount)
 end
end

class Dollar < Money 
  def times(times)
    Dollar.new(@amount * times)
  end

  def currency 
    "USD"
  end
end

class Franc < Money
  def times(times)
    Franc.new(@amount * times)
  end

  def currency
    "CHF"
  end
end
