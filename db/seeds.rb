require 'faker'

10.times do
  User.create(username: Faker::Internet.user_name, password: "1234")
end

User.all.each do |user|
  user.albums << Album.create(user_id: user.id, name: Faker::Address.city)
  user.albums << Album.create(user_id: user.id, name: Faker::Address.city)
end






