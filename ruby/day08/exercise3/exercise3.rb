require 'csv'
require 'json'

file = File.read('exercise3.json')
data_hash = JSON.parse(file)

data_hash.each do |_key, value|
  puts "Name: #{value['name']}, Salary: #{value['salary']}, Married: #{value['married']}"
end
