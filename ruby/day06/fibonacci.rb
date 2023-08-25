def fibonacci(n)
  return n if n <= 1
    fibonacci(n-1) + fibonacci(n-2)
end

(0..20).each do |n|
  puts "So fibonacci thu #{n} la: #{fibonacci(n)}"
end
