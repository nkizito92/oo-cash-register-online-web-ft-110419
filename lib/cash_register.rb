require 'pry'
class CashRegister
   attr_accessor :total, :discount, :items, :void_last_transaction, :priced
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @priced = []
  end 
  
  def add_item(title,price, quantity=1)
    @total += price*quantity
    quantity.times do 
      @items.push(title)
    end
    quantity.times do 
      @priced.push(price)
    end
  end 
  
  def apply_discount 
     @total -= (@total*(@discount/100.00)).to_i
     @total != (@total*(@discount/100.00)).to_i ? "After the discount, the total comes to $#{self.total}." : "There is no discount to apply."
  end 
  def item 
    @items
  end 
  
  def void_last_transaction
  # find last item's prices 
    @total -= @priced.last
    #  return 0.0 if all items have been removed 
  end 
end 
