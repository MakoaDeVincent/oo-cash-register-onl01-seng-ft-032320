class CashRegister

  attr_accessor :items, :total, :discount

  def initialize(discount=0)
    @items = []
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(name, price, quantity=1)
    @price = price
    @quantity = quantity
    quantity.times do
      @items << name
    end
    @total += price * quantity
  end

  def apply_discount
    if @discount != 0
      @total -= (@total * @discount.to_f / 100)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @quantity.times do
      @items.pop
    end
    @total -= @price * @quantity
  end


end
