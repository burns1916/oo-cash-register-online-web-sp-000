
class CashRegister

  attr_accessor :total, :discount, :last_transaction


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item_array = []
  end

  def add_item(item, price, quantity = 0)
    if quantity != 0
      self.total += price*quantity
      @item_array << item.split(",")*quantity
    else
      self.total += price
      @item_array << item
    end
  end

  def apply_discount
    if discount != nil
      @total = self.total - (self.total * self.discount/100)
      "After the discount, the total comes to $#{@total}."
    else
      @total
      "There is no discount to apply."
    end
  end

  def items
    @item_array.flatten
  end

  def void_last_transaction


  end

end
