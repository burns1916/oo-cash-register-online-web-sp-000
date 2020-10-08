
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = nil)
    @total = 0
  end

  def discount
    @discount = 20
  end

  def add_item(item, price, quantity = 0)
    @item_array = []
    @item_array << item
    if quantity != 0
      self.total += price*quantity
    else
      self.total += price
    end
  end

  def apply_discount

    if discount != nil
      @total = self.total - (self.total * self.discount/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @item_array
  end

end
