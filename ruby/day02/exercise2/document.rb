class Document
  attr_accessor :id, :publisher, :release, :price, :rent_hour

  def initialize(id, publisher, release, price)
    @id = id
    @publisher = publisher
    @release = release
    @price = price
  end

  def fee(rent_hour)
    fee = 0
    fee += rent_hour * @price
  end

  def print_info
    puts "#{id}"
    puts "#{publisher}"
    puts "#{release}"
    puts "#{price}"
  end

end
    