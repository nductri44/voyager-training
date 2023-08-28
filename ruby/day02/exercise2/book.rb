# frozen_string_literal: true

require './document'

# ruby
class Book < Document
  attr_accessor :author, :page_number

  def initialize(id, publisher, release, price, author, page_number)
    super(id, publisher, release, price)
    @author = author
    @page_number = page_number
  end

  def print
    super
    puts("#{author}")
    puts("#{page_number}")
  end
end
