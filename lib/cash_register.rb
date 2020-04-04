class CashRegister

  attr_accessor :items, :total, :discount

  def initialize(discount=0)
    @items = []
    @total = total
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
    if @discount != 0
      @total -= (@total * @discount.to_f / 100)
      puts "After the discount, the total comes to $#{@total}"
    else
      puts "There is no discount to apply."
    end
  end

  def items
    list
  end

  def void_last_transaction

  end


end
