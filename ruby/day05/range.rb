puts '1. In ra tất cả các số từ 1 đến 10'
(1..10).each do |i|
  print "#{i} "
end
puts
puts
puts '2. In ra tất cả các số chẵn từ 2 đến 20'
(2..20).each do |i|
  print "#{i} " if i.even?
end
puts
puts
puts "3. In ra tất cả các chữ cái từ 'a' đến 'z'"
('a'..'z').each do |i|
  print "#{i} "
end
puts
puts
puts '5. Kiểm tra xem một số có nằm trong một phạm vi hay không'
range = (1..100)
number_to_check = 42
if range.include?(number_to_check)
  puts 'số cần kiểm tra nằm trong phạm vi từ 1 đến 100.'
else
  puts 'số cần kiểm tra không nằm trong phạm vi từ 1 đến 100.'
end
