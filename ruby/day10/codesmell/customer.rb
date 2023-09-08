class Customer
  attr_accessor :has_discount, :discount_percent

  def initialize(has_discount, discount_percent)
    @has_discount = has_discount
    @discount_percent = discount_percent
  end

  def has_discount?
    has_discount
  end
end
