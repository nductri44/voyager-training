def ascending(arr)
  n = arr.length
  j = 0
  while j < n - 1
    i = 0
    while i < n - j - 1
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i + 1] < arr[i]
      i += 1
    end
    j += 1
  end
  print(arr.inspect)
end

def descending(arr)
  n = arr.length
  j = 0
  while j < n - 1
    i = 0
    while i < n - j - 1
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i + 1] > arr[i]
      i += 1
    end
    j += 1
  end
  print(arr.inspect)
end

array = [4, 1, 7, -2, 100, 25, 200, 43, -12]
ascending(array)
puts
descending(array)
