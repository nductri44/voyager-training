arr = [3, 5, 7, 1, 9, 2, 8]
m = arr.length - 1
n = m - 1
i = 0
while i <= n
  j = i + 1
  while j <= m
    arr[i], arr[j] = arr[j], arr[i] if arr[j] < arr[i]
    j += 1
  end
  i += 1
end

puts arr.inspect
puts 'Độ phức tạp bài toán: O(n^2)'
