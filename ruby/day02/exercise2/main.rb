# frozen_string_literal: true

# main file
require './book'
require './document'
require './magazine'
require './newspaper'
require './renter'

documents = []

document1 = Document.new('1', 'abc', '10', 1000)
book1 = Book.new('2', 'NXB Kim Dong', '150', 20_000, 'Kim Lan', '100')
magazine1 = Magazine.new('3', 'NXB Thanh Nien', '200', 40_000, '20', '8')
newspaper1 = Newspaper.new('4', 'Tuoi Tre', '10000', 1000, '14')

documents << document1
documents << book1
documents << magazine1
documents << newspaper1

rent_hour = 2

# display documents infomation
def display_doc(documents)
  documents.each do |doc|
    puts(doc.print)
  end
end

display_doc(documents)

# sum of fee need to pay
def total_fee(documents, rent_hour)
  sum = 0
  documents.each do |doc|
    sum += doc.fee(rent_hour)
  end
  puts("Total rent money needs to pay: #{sum}")
end

total_fee(documents, rent_hour)

def display_renter_info(renters)
  renters.each do |renter|
    puts(renter.print)
  end
end

renter1 = Renter.new('David', 'david123@gmail.com', '0123456789', documents)

book2 = Book.new('5', 'abc', '150', 20_000, 'J.K.Rowling', '100')
book3 = Book.new('6', 'xyz', '150', 20_000, 'Hikaru Murakami', '100')

renter1.add_documents(book2)
renter1.add_documents(book3)
puts
puts 'Updated documents list:'
display_doc(documents)
puts
puts 'Updated total rent money:'
total_fee(documents, rent_hour)
