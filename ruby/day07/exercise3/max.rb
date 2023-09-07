def linear_search(arr)
  max = arr[0]
  i = 0
  arr.each_with_index do |value, index|
    if value > max
      max = value
      i = index
    end
  end
  { max: max, i: i }
end

array = [1, 4, 2, 6, 8, 13, 10, 15]
max_num = linear_search(array)
puts "Maximum number of the array is #{max_num[:max]} at index #{max_num[:i]}"
