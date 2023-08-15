require './document.rb'
require './book.rb'
require './magazine.rb'
require './newspaper.rb'

document_1 = Document.new("0", "abc", "10", 1000)
book_1 = Book.new("1", "NXB Kim Dong", "150", 20000, "Kim Lan", "100")
magazine_1 = Magazine.new("2", "NXB Thanh Nien", "200", 40000, "20", "8")
newspaper_1 = Newspaper.new("3", "Tuoi Tre", "10000", 1000, "14")

$documents = [document_1, book_1, magazine_1, newspaper_1]

def display_doc
  $documents.each do |doc|
    puts doc.print
  end
end

display_doc()

def totalfee
  sum = 0
  $documents.each do |doc|
    sum += doc.fee(2)
  end
    puts "Tổng tiền phải trả là: #{sum}"
end 

totalfee()