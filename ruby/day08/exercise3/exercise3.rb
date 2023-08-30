require 'csv'
require 'json'

file = File.read('exercise3.json')
data_hash = JSON.parse(file)
hashes = data_hash.values
column_names = hashes.first.keys
s =
  CSV.generate do |csv|
    csv << column_names
    hashes.each do |x|
      csv << x.values
    end
  end

File.write('exercise3.csv', s)

colon = proc { |header| header + ': ' }
info = CSV.parse(File.open('exercise3.csv'), headers: true, header_converters: colon)
puts info
