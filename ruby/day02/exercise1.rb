class BankAccount
attr_accessor :id, :name, :balance

  def initialize(id, name, balance)
    @id = id
    @name = name
    @balance = balance
  end

  def deposit(amout)
    @balance += amount
    puts "Your balance: #{balance}"
  end

  def withdraw(amount)
    if amount > @balance
      puts "Your balance is not enough"
    else
      @balance -= amount
      puts "Your balance: #{balance}"
    end
  end

  def display(id, name)
  
  end

  def findAccount()

  end

  def updateName()

  end

end