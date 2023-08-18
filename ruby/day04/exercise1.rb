module Trig
  PI = 3.141592654
  def self.sin(x)
    puts("Calculate sin(#{x}): #{Math.sin(x)}")
  end

  def self.cos(x)
    puts("Calculate cos(#{x}): #{Math.cos(x)}")
  end
end
Trig.cos(5)
Trig.sin(5)