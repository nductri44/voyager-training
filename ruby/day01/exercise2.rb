def main()
  puts "1. Dien tich tam giac"
  puts "2. Dien tich hinh tron"
  puts "3. Dien tich hinh chu nhat"

  puts "Lua chon:"
  option = gets.chomp

  case option
  when "1"
    HinhTamGiac()
  when "2"
    HinhTron()
  when "3"
    HinhChuNhat()
  end

end

def HinhTamGiac()
  puts
  puts "Tinh dien tich tam giac:"
  puts
  puts "Nhap chieu cao:"
  a = gets.chomp.to_f
  puts "Nhap canh day:"
  h = gets.chomp.to_f
  puts "Dien tich: #{(0.5) * a * h}"
end

def HinhTron()
  puts
  puts "Tinh dien tich hinh tron:"
  puts
  puts "Nhap ban kinh:"
  r = gets.chomp.to_f
  puts "Dien tich: #{(3.14) * r * r}"
end

def HinhChuNhat()
  puts
  puts "Tinh dien tich hinh chu nhat:"
  puts
  puts "Nhap chieu dai:"
  a = gets.chomp.to_f
  puts "Nhap canh rong:"
  b = gets.chomp.to_f
  puts "Dien tich: #{a * b}"
end
  
main()