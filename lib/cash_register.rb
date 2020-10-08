
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = nil)
    @total = 0
  end

  def discount
    @discount = 20
  end

  def add_item(item, price, quantity = 0)
    if quantity != 0
      self.total += price*quantity
    else
      self.total += price
    end
  end

  def apply_discount
    @total = self.total - (self.total * self.discount/100)
    if @discount == nil
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total}."
    end
  end

end
