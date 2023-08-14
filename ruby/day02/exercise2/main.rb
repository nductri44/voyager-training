require './document.rb'
require './book.rb'
require './magazine.rb'
require './newspaper.rb'


$document = []
book = Book.new("1", "NXB Kim Dong", "150", "20000", "Kim Lan", "100")
magazine = Magazine.new("2", "NXB Thanh Nien", "200", "40000", "20", "8")
newspaper = Newspaper.new("3", "Tuoi Tre", "10000", "1000", "14")

array = []
array.push["books"]