def linear_search(arr)
  min = arr[0]
  i = 0
  arr.each_with_index do |value, index|
    if value < min
      min = value
      i = index
    end
  end
  { min: min, i: i }
end

array = [1, 4, 2, 6, 8, 13, 10]
min_num = linear_search(array)
puts "Minimum number of the array is #{min_num[:min]} at index #{min_num[:i]}"
