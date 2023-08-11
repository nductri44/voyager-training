puts "1. Dien tich tam giac"
puts "2. Dien tich hinh tron"
puts "3. Dien tich hinh chu nhat"

puts "Lua chon:"
op = gets.chomp

case op
when "1"
  puts "Tinh dien tich tam giac:"
  puts "Nhap chieu cao:"
  a = gets.chomp.to_f
  puts "Nhap canh day:"
  h = gets.chomp.to_f
  puts "Dien tich: #{(0.5)*a*h}"
when "2"
  puts "Tinh dien tich hinh tron:"
  puts "Nhap ban kinh:"
  a = gets.chomp.to_f
  puts "Dien tich: #{(3.14)*r*r}"
when "3"
  puts "Tinh dien tich hinh chu nhat:"
  puts "Nhap chieu dai:"
  a = gets.chomp.to_f
  puts "Nhap canh rong:"
  b = gets.chomp.to_f
  puts "Dien tich: #{a*b}"
end