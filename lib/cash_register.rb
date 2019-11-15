require 'pry'
class CashRegister
   attr_accessor :total, :discount, :items, :void_last_transaction
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items
  end 
  
  def add_item(title,price, quantity=1)
    @total += price*quantity
    quantity.times do 
      @items.push(title)
    end
  end
  
  def apply_discount 
     @total -= (@total*(@discount/100.00)).to_i
     @total != (@total*(@discount/100.00)).to_i ? "After the discount, the total comes to $#{self.total}." : "There is no discount to apply."
  end 
  
  def items
<<<<<<< HEAD
    @items
  end 
  def void_last_transaction
    
=======
    add_item.each do |produ|
      # add all items to an array 
      @items.push(produ)
    end 
    #return the array 
    @items
>>>>>>> 5341d210d38021cfff8b1e673c2504fd93fc3d78
  end 
end 
