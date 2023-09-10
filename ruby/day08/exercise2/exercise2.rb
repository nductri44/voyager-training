require 'csv'

CSV.open('contacts.csv', 'w+') do |csv|
  csv << %w[Name Email Phone]
  csv << ['John', 'john@example.com', '555-1234']
  csv << ['Alice', 'alice@example.com', '555-5678']
  csv << ['Bob', 'bob@example.com', '555-9876']
end

CSV.foreach('contacts.csv', headers: true) do |row|
  name = row['Name']
  email = row['Email']
  phone = row['Phone']

  puts "Name: #{name}, Email: #{email}, Phone: #{phone}"
end
