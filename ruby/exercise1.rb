puts "enter a:"
a = gets.chomp.to_i
puts "enter b:"
b = gets.chomp.to_i
puts "choose method:"
method = gets.chomp


case method
when "+"
  puts "Answer: #{a + b}"
when "-"
  puts "Answer: #{a - b}"
when "*"
  puts "Answer: #{a * b}"
when "/"
  puts "Answer: #{a / b}"

end