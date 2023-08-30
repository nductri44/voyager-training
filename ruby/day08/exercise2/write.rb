require 'csv'

CSV.open('contacts.csv', 'w+') do |csv|
  csv << %w[Name Email Phone]
  csv << ['John', 'john@example.com', '555-1234']
  csv << ['Alice', 'alice@example.com', '555-5678']
  csv << ['Bob', 'bob@example.com', '555-9876']
end

colon = proc { |header| header + ": " }
info = CSV.parse(File.open('contacts.csv'), headers: true, header_converters: colon)
puts info
