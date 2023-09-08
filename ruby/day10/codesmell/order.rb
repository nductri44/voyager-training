class Order
  attr_accessor :customer, :items

  def initialize(customer, items)
    @customer = customer
    @items = items
  end
end
