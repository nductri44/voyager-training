def binary_search(arr, target)
  left = 0
  right = arr.length - 1

  while left <= right
    mid = (left + right) / 2
    if arr[mid] == target
      return mid
    elsif arr[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end

  -1
end

sorted_array = [1, 3, 8, 9, 15, 18]
target = 9
index = binary_search(sorted_array, target)
if index == -1
  puts "#{target} not found in the array"
else
  puts "#{target} found at index #{index}"
end
