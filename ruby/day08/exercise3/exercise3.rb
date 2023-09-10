require 'csv'
require 'json'

file = File.read('exercise3.json')
hash_data = JSON.parse(file)

hash_data.each do |_key, value|
  puts "Name: #{value['name']}, Salary: #{value['salary']}, Married: #{value['married']}"
end
