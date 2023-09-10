class Item
  attr_accessor :name, :price, :quantity, :available_quantity

  def initialize(name, price, quantity, available_quantity)
    @name = name
    @price = price
    @quantity = quantity
    @available_quantity = available_quantity
  end

  def price_each_quantity              
    @price * @quantity
  end

  def not_available?
    @available_quantity < @quantity
  end
end
