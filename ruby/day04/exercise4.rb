require 'digest'

module Authentication
  def login(password, password_confirm)
    return { error: 'mismatch' } if password != password_confirm
    return { error: 'too short' } if password.length < 8

    top25_passwd = %w[
      123456
      password
      12345678
      qwerty
      12345
      123456789
      football
      1234
      1234567
      baseball
      welcome
      1234567890
      abc123
      111111
      1qaz2wsx
      dragon
      master
      monkey
      letmein
      login
      princess
      qwertyuiop
      solo
      passw0rd
      starwars
    ]

    top25_passwd.each do |passwd|
      return { error: 'common password' } if password == passwd
    end

    hasher = Digest::SHA256.digest(password)
    password_hash = Digest::SHA256.hexdigest(hasher)

    { ok: password_hash }
  end

  def logout
    'User logged out'
  end
end

class User
  attr_reader :username

  include Authentication

  def initialize(username)
    @username = username
  end
end

class Admin
  attr_reader :username

  include Authentication

  def initialize(username)
    @username = username
  end
end

user1 = User.new('Tri')
p user1.login('voyagerinc', 'voyagerinc')
