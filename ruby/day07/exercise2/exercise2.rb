def binary_search(arr, target)
  left = 0
  right = arr.length - 1

  while left <= right
    mid = (left + right) / 2
    if arr[mid] == target
      return mid
    elsif arr[mid] < target
      right = mid - 1
    else
      left = mid + 1
    end
  end

  -1
end

sorted_array = [18, 15, 9, 8, 3, 1]
target = 18
index = binary_search(sorted_array, target)
if index == -1
  puts "#{targer} not found in the array"
else
  puts "#{target} found at index #{index}"
end
