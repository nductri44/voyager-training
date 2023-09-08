class Item
  attr_accessor :name, :price, :quantity, :available_quantity

  def initialize(name, price, quantity, available_quantity)
    @name = name
    @price = price
    @quantity = quantity
    @available_quantity = available_quantity
  end

  def check_quantity
    @items.each do |_item|
      raise("Không đủ hàng trong kho cho #{@name}") if @available_quantity < @quantity
    end
  end
end
