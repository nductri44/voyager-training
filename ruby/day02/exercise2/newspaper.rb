require './document.rb'

class Newspaper < Document
  attr_accessor :day

  def initialize(id, publisher, release, price, day)
    super(id, publisher, release, price)
    @day = day
  end

  def fee(rent_hour)
    rent_hour + 20000
  end

  def print_info
    super
    puts "#{price}"
    puts "#{day}"
  end
end