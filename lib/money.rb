class Money
 def initialize(amount, currency)
    @amount = amount
    @currency = currency
 end

 def equals(obj)
   obj.amount == @amount && obj.class == self.class
 end

 def amount
   @amount
 end

 def currency
   @currency
 end

 def ==(target)
   self.equals(target)
 end
 
 def self.dollar(amount)
   Dollar.new(amount, "USD")
 end

 def self.franc(amount)
   Franc.new(amount, "CHF")
 end
end

class Dollar < Money 
  def times(times)
    Money.dollar(@amount * times)
  end
end

class Franc < Money
  def times(times)
    Money.franc(@amount * times)
  end
end
