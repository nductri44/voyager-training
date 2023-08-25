arr = [10, 5, 7, 3, 2, 2, 1]
arr1 = [1, 2, 3]
arr2 = [4, 5, 6]

def find_min_max(array)
  puts("Maximum number of array is: #{array.max}")
  puts("Minimum number of array is: #{array.min}")
end

find_min_max(arr)

def reverse_array(array)
  puts("Reversed array: #{array.reverse}")
end

reverse_array(arr)

def non_duplicate(array)
  non_dup = []
  array.map do |n|
    non_dup << n
  end
  non_dup.each do |i|
    non_dup.delete(i) if non_dup.count(i) > 1
  end
  puts("Array without duplicate elements: #{non_dup}")
end

non_duplicate(arr)

def even_array(array)
  arr3 = []
  array.map do |n|
    arr3 << n
  end
  even_arr = []
  arr3.each do |i|
    even_arr << i if i.even?
  end
  puts("Array with even numbers: #{even_arr}")
end

even_array(arr)

def merge_array(array1, array2)
  arr4 = array1 + array2
  puts("New array: #{arr4}")
end

merge_array(arr1, arr2)
