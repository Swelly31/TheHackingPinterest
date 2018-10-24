# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

10.times do |index|
    users = User.create!(name: Faker::Book.title)
end

10.times do |index|
    pins = Pin.create!(url: "http://www.#{Faker::Book.author}.beer.com", user_id: "#{rand(1..10)}")
end

10.times do |index|
    comments = Comment.create!(content: Faker::Book.genre, user_id: "#{rand(1..10)}", pin_id: "#{rand(1..10)}")
end