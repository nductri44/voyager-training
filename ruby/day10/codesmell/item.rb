class Item
  attr_accessor :name, :price, :quantity, :available_quantity

  def initialize(name, price, quantity, available_quantity)
    @name = name
    @price = price
    @quantity = quantity
    @available_quantity = available_quantity
  end

  def check_quantity
    @items.each do |item|
      raise "Không đủ hàng trong kho cho #{item.name}" if items.available_quantity < item.quantity
    end
  end
end
