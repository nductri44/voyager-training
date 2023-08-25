arr = [1, 2, 3, 4, 5]
a = []
len = arr.length
n = 0
while n < len
  a << arr.pop
  n += 1
end
puts a.inspect
puts 'Độ phức tạp bài toán: O(n)'
