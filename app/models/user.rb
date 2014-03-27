class User < ActiveRecord::Base
  include BCrypt
  validates :username, uniqueness: true
  has_many :albums
  has_many :comments


  def password
    Password.new(hashword)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.hashword = @password
  end

  def authenticate(password)
    self.password == password
  end
end
