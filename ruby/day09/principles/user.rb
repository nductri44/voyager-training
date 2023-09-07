require './database'
require 'bcrypt'

class User
  attr_accessor :email, :password, :first_name, :last_name

  def initialize(email, password, first_name, last_name, database_name = 'development_database.db')
    @email = email
    @password = password
    @first_name = first_name
    @last_name = last_name
    @database_name = database_name
    @find = Database.new(@database_name).find
  end

  def format_account
    formated_email = email.downcase
    hashed_password = BCrypt::Password.create(password)
    name = "#{first_name} #{last_name}"
    user_params = { email: formated_email, password: hashed_password, name: name }
  end

  def check_account
    @find.execute('SELECT * FROM users WHERE email = :email', email: format_account[:email]).first
  end

  def database_action(action)
    @find.execute(action, format_account)
    @find.close
  end

  def create_account
    return puts('Email already exists, please choose another!') unless check_account.nil?

    database_action('INSERT INTO users (email, password, name) VALUES (:email, :password, :name)')
  end

  def update_account
    return puts('Email does not exists!') if check_account.nil?

    database_action('UPDATE users SET password = :password, name = :name WHERE email = :email')
  end

  def print_account(email)
    users = @find.execute('SELECT * FROM users WHERE email = :email', email: email)
    user = users.first

    if user != nil
      puts("Email: #{user[1]}, Name: #{user[3]}")
    end
  end
end
