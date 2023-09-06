class Animal
  def run
    raise(NoMethodError)
  end
end

class Cat < Animal
  def run
    puts('Cat runs')
  end
end

class Dog < Animal
  def run
    puts('Dog runs')
  end
end

a = Cat.new
a.run

b = Dog.new
b.run
