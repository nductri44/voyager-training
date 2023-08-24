person = { 'name' => 'John', 'age' => 30, 'city' => 'New York' }
sales = { 'product_A' => 100, 'product_B' => 200, 'product_C' => 150 }

puts 'Cau 1:'
puts "Name: #{person['name']}"
puts "Age: #{person['age']}"
puts "City: #{person['city']}"
puts

puts 'Cau 2'
puts "Total of key-value: #{sales.length}"
sum = 0
sales.each do |_k, v|
  sum += v
end
puts "Sum of products: #{sum}"
