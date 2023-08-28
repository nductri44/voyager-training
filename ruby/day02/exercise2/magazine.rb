# frozen_string_literal: true

require './document'

# ruby
class Magazine < Document
  attr_accessor :issue, :month

  def initialize(id, publisher, release, price, issue, month)
    super(id, publisher, release, price)
    @issue = issue
    @month = month
  end

  def fee(rent_hour)
    super + 10_000
  end

  def print
    super
    puts "#{issue}"
    puts "#{month}"
  end
end
