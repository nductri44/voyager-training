puts "enter a"
a = gets.chomp.to_i
puts "enter b"
b = gets.chomp.to_i
puts "choose method"
method = gets.chomp

case method
when "+"
  puts "Answer: #{a + b}"
when "-"
  puts "Answer: #{a - b}"
when "*"
  puts "Answer: #{a * b}"
when "/"
  if b < 0
    puts "Khong the chia cho so nho hon 0"
  elsif b == 0
    puts "Khong the chia cho so 0"
  else
    puts "Answer: #{a / b}"
  end
end