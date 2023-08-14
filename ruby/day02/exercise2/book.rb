require './document.rb'

class Book < Document
  attr_accessor :author, :page

  def initialize(id, publisher, release, price, author, page)
    super(id, publisher, release, price)
    @author = author
    @page = page
  end

  def fee(rent_hour)
    super
  end

  def print
    super
    puts "#{author}"
    puts "#{page}"
  end
end