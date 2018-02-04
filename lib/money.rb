class Money
 def initialize(amount, currency)
    @amount = amount
    @currency = currency
 end

 def equals(obj)
   obj.amount == @amount && self.currency == obj.currency 
 end

 def times(times)
    Money.new(@amount * times, @currency)
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
   Money.new(amount, "USD")
 end

 def self.franc(amount)
   Money.new(amount, "CHF")
 end
end

