# frozen_string_literal: true

require './document'

# ruby
class Newspaper < Document
  attr_accessor :day

  def initialize(id, publisher, release, price, day)
    super(id, publisher, release, price)
    @day = day
  end

  def fee(rent_hour)
    rent_hour + 20_000
  end

  def print
    super
    puts("#{price}")
    puts("#{day}")
  end
end
