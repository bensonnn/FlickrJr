class User < ActiveRecord::Base
  include BCrypt
  validates :username, uniqueness: true
  has_many :albums
  has_many :comments
  after_create :add_default_album
 
  def add_default_album
    Album.create!(name: "default", user_id: self.id)
  end 

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
