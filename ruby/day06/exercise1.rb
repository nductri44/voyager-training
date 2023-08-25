a = '12345'
b = a.chars
c = []
n = 0
d = b.length
while n < d
  c << b.pop
  n += 1
end
puts c.join
puts 'Độ phức tạp bài toán: O(n)'
