def testing(n)
  return 1 if n <= 1
  n * testing(n - 1)
end

puts testing(3)
