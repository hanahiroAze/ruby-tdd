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

 def currency
  @currency
 end

 def ==(target)
   self.equals(target)
 end
 
 def self.dollar(amount)
   Dollar.new(amount, nil)
 end

 def self.franc(amount)
   Franc.new(amount, nil)
 end
end

class Dollar < Money 
  def initialize(amount, currency)
    super(amount)
    @currency = "USD"
  end

  def times(times)
    Dollar.new(@amount * times, nil)
  end
end

class Franc < Money
  def initialize(amount, currency)
    super(amount)
    @currency = "CHF"
  end

  def times(times)
    Franc.new(@amount * times, nil)
  end
end
