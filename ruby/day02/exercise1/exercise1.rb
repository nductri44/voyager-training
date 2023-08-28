# frozen_string_literal: true

# ruby
class Account
  attr_accessor :id, :name, :balance

  def initialize(id, name, balance)
    @id = id
    @name = name
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
    puts "#{@name}'s account balance now after deposit is: #{@balance}"
  end

  def withdraw(amount)
    if amount > @balance
      puts 'Your balance is not enough'
    else
      @balance -= amount
      puts "#{@name}'s account balance now after withdraw is: #{@balance}"
    end
  end

  def display(id, name)
    if check_account(id, name)
      print_balance
    else
      puts 'Invalid input'
    end
  end

  def update_name(id, old_name, new_name)
    if check_account(id, old_name)
      @name = new_name
      print_balance
    else
      puts 'Invalid input'
    end
  end

  private

  def check_account(id, name)
    @id == id && @name == name
  end

  def print_balance
    puts "Balance of #{@name}'s account now is: #{@balance}"
  end
end

nam1 = Account.new('1', 'Nam', 2000)

nam1.deposit(500)
nam1.withdraw(200)

nam1.display('1', 'Nam')
nam1.update_name('1', 'Nam', 'Tri')
