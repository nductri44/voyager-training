class CoffeeMachineOptions
  def select_drink_type
    'Cappuccino'
  end

  def select_portion; end

  def select_sugar_amount; end

  def brew_coffee; end
end

class CoffeeMachineServices
  def clean_coffee_machine
    'Clean coffee machine'
  end

  def fill_coffee_beans; end

  def fill_water_supply; end

  def fill_sugar_supply; end
end

class Person < CoffeeMachineOptions
  def initialize
    @coffee_options = CoffeeMachineOptions.new
  end

  def make_coffee
    @coffee_options.select_drink_type
    @coffee_options.select_portion
    @coffee_options.select_sugar_amount
    @coffee_options.brew_coffee
  end
end

class Staff < CoffeeMachineServices
  def initialize
    @coffee_services = CoffeeMachineServices.new
  end

  def serve
    @coffee_services.clean_coffee_machine
    @coffee_services.fill_coffee_beans
    @coffee_services.fill_water_supply
    @coffee_services.fill_sugar_supply
  end
end

person1 = Person.new
puts person1.select_drink_type
staff1 = Staff.new
puts staff1.clean_coffee_machine
