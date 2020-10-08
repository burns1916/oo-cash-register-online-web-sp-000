
class CashRegister

  attr_accessor :total, :discount, :items, :price


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item_array = []
  end

  def add_item(item, price, quantity = 0)
    @price = price
    if quantity != 0
      self.total += price*quantity
      @item_array << item.split(",")*quantity
    else
      self.total += price
      @item_array << item
    end
  end

  def apply_discount
    if discount > 0
      @total = self.total - (self.total * self.discount/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @item_array.flatten
  end

  def void_last_transaction
    binding.pry
    @total -= @price
    
  end

end
