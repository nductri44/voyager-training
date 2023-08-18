module Converter
  def time_format(time)
    Time.strptime(time, "%I%P").strftime("%H: %M")
  end
end

class MyClass
  include Converter
  def print(time)
    puts "#{time}"
  end
end

time1 = MyClass.new
time1.print()
