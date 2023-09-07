class Address
  attr_accessor :city, :street

  def initialize(city, street)
    @city = city
    @street = street
  end

  def print_info(user)
    if user
      puts("#{user.print_account(user.email)}City: #{city}, Street: #{street}")
    end
  end
end
