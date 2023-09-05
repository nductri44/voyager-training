module Operation
  def results
    puts('OK')
  end
end

class Add
  include Operation

  def initialize(a, b)
    @a = a
    @b = b
  end

  def results
    add_number
  end

  private

  def add_number
    @a + @b
  end
end

class Subtract
  include Operation

  def initialize(a, b)
    @a = a
    @b = b
  end

  def results
    subtract_number
  end

  private

  def subtract_number
    @a - @b
  end
end

class Print
  include Operation

  def print_results(operation)
    operation.results
  end
end

add1 = Add.new(9, 9)
print1 = Print.new
puts print1.print_results(add1)
