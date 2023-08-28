def foo
  puts('Captain')
  yield('Moby-Dick')
  puts('Ahab')
end
foo { |i| puts "#{i}" }
