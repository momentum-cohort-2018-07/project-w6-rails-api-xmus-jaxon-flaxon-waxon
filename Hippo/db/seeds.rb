# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Toot.delete_all
User.delete_all

100.times do
  User.create!(
    username: Faker::Internet.username,
    password: '123'
  )
end

200.times do
  Toot.create!(
    body: Faker::FamousLastWords.last_words,
    user: User.all.sample
  )
end
