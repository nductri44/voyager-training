class Shape
  # Prints the area.
  def get_area(area)
    puts("Area = #{area}")
  end
end

class Rectangle < Shape
  # Initializes a new object with the given length and width.
  def initialize(length, width)
    @length = length
    @width = width
  end

  # Calculates the area of the rectangle.
  def calculate_area
    @length * @width
  end

  # Prints the area.
  def get_area
    super(calculate_area)
  end
end

class Circle < Shape
  # Initializes a new object with the given radius.
  def initialize(radius)
    @radius = radius
  end

  # Calculates the area of the circle.
  def calculate_area
    Math::PI * (@radius**2)
  end

  # Prints the area
  def get_area
    super(calculate_area)
  end
end

class Triangle < Shape
  # Initializes a new object with the given base and height.
  def initialize(base, height)
    @base = base
    @height = height
  end

  # Calculates the area of the triangle.
  def calculate_area
    0.5 * @base * @height
  end

  # Prints the area
  def get_area
    super(calculate_area)
  end
end

rectangle1 = Rectangle.new(2, 3)
rectangle1.get_area

circle1 = Circle.new(2)
circle1.get_area

triangle1 = Triangle.new(2, 8)
triangle1.get_area
