
require"pry"
class CashRegister
  # attr_reader :total
 attr_accessor :discount , :total , :newArr, :lastPrice
  def initialize (val = 0)
    @total = 0
    @discount = val
    @newArr = []
    @lastPrice = 0
  end

def add_item(item, price, quantity=1)
  newval = quantity
  while newval >= 1 do
  self.newArr << item
  newval -=1
  end
self.lastPrice= price*quantity

self.total += price*quantity
# self.total
end

def apply_discount
if self.discount  == 0
  "There is no discount to apply."
else
  puts self.total
  self.total -= ((self.discount*1000 )/100)
  "After the discount, the total comes to $#{@total}."
end

end

def items
@newArr
end

def void_last_transaction
  self.newArr.pop
  if self.newArr.length == 0
  end
self.total = self.total - self.lastPrice

end
end
#  binding.pry