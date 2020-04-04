class CashRegister

  attr_accessor :items, :total

  def initialize(discount=0)
    @items = []
    @total = total
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(name, price, quantity=1)
    quantity.times do
      @items << name
    end
    @total += price * quantity
  end

  def apply_discount
    @total -= (@total * @discount.to_f / 100)
    
  end

  def items
    list
  end

  def void_last_transaction

  end


end
