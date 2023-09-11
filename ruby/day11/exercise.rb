class Shape
  #In diện tích
  def get_area(area)
    puts "Area = #{area}"
  end
end

class Rectangle
  #Nhập vào chiều dài, chiều rộng và khởi tạo object của class Shape 
  def initialize(length, width)
    @length = length
    @width = width
    @get_area = Shape.new
  end

  #Tính diện tích hình chữ nhật
  def calculate_area
    @length * @width
  end

  #In diện tích
  def get_area
    @get_area.get_area(calculate_area)
  end
end

class Circle
  #Nhập vào bán kính và khởi tạo object của class Shape 
  def initialize(radius)
    @radius = radius
    @get_area = Shape.new
  end

  #Tính diện tích hình tròn
  def calculate_area
    Math::PI * @radius**2
  end

 #In diện tích
  def get_area
    @get_area.get_area(calculate_area)
  end
end

class Triangle
  #Nhập vào cạnh đáy, chiều cao và khởi tạo object của class Shape
  def initialize(base, height)
    @base = base
    @height = height
    @get_area = Shape.new
  end

  #Tính diện tích hình tam giác
  def calculate_area
    0.5 * @base * @height
  end

  #In diện tích
  def get_area
    @get_area.get_area(calculate_area)
  end
end

rectangle1 = Rectangle.new(2, 3)
rectangle1.get_area

circle1 = Circle.new(2)
circle1.get_area

triangle1 = Triangle.new(2, 8)
triangle1.get_area
