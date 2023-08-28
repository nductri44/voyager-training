# frozen_string_literal: true

# ruby
def main
  puts 'Lựa chọn phép tính bạn muốn:'
  puts '1. Cộng'
  puts '2. Trừ'
  puts '3. Nhân'
  puts '4. Chia'
  option = gets.chomp

  case option
  when '1'
    phepcong
  when '2'
    pheptru
  when '3'
    phepnhan
  when '4'
    phepchia
  end
end

main

def phepcong
  puts
  puts 'Thực hiện phép cộng'
  puts
  puts 'Nhập số thứ nhất:'
  a = gets.chomp.to_i
  puts 'Nhập số thứ hai:'
  b = gets.chomp.to_i
  puts "Kết quả: #{a + b}"
end

def pheptru
  puts
  puts 'Thực hiện phép trừ'
  puts
  puts 'Nhập số thứ nhất:'
  a = gets.chomp.to_i
  puts 'Nhập số thứ hai:'
  b = gets.chomp.to_i
  puts "Kết quả: #{a - b}"
end

def phepnhan
  puts
  puts 'Thực hiện phép nhân'
  puts
  puts 'Nhập số thứ nhất:'
  a = gets.chomp.to_i
  puts 'Nhập số thứ hai:'
  b = gets.chomp.to_i
  puts "Kết quả: #{a * b}"
end

def phepchia
  puts
  puts 'Thực hiện phép chia'
  puts
  puts 'Nhập số thứ nhất:'
  a = gets.chomp.to_i
  puts 'Nhập số thứ hai:'
  b = gets.chomp.to_i
  if b.negative
    puts 'Không thể chia cho một số nhỏ hơn 0'
  elsif b.zero
    puts 'Không thể chia cho số 0'
  else
    puts "Kết quả: #{a / b}"
  end
end
