def main()
  puts "Lựa chọn phép tính bạn muốn:"
  puts "1. Cộng"
  puts "2. Trừ"
  puts "3. Nhân"
  puts "4. Chia"
  
  method = gets.chomp

  case method
  when "1"
    PhepCong()
  when "2"
    PhepTru()
  when "3"
    PhepNhan()
  when "4"
    PhepChia()
  end

end

def PhepCong()
  puts
  puts "Thực hiện phép cộng"
  puts
  puts "Nhập số thứ nhất:"
  a = gets.chomp.to_i
  puts "Nhập số thứ hai:"
  b = gets.chomp.to_i
  puts "Kết quả: #{a + b}"
end

def PhepTru()
  puts
  puts "Thực hiện phép trừ"
  puts
  puts "Nhập số thứ nhất:"
  a = gets.chomp.to_i
  puts "Nhập số thứ hai:"
  b = gets.chomp.to_i
  puts "Kết quả: #{a - b}"
end

def PhepNhan()
  puts
  puts "Thực hiện phép nhân"
  puts
  puts "Nhập số thứ nhất:"
  a = gets.chomp.to_i
  puts "Nhập số thứ hai:"
  b = gets.chomp.to_i
  puts "Kết quả: #{a * b}"
end

def PhepChia()
  puts
  puts "Thực hiện phép chia"
  puts
  puts "Nhập số thứ nhất:"
  a = gets.chomp.to_i
  puts "Nhập số thứ hai:"
  b = gets.chomp.to_i
  if b < 0
    puts "Không thể chia cho một số nhỏ hơn 0"
  elsif b == 0
    puts "Không thể chia cho số 0"
  else
    puts "Kết quả: #{a / b}"
  end

end

main()