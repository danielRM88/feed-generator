# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  User.create(name: Faker::Name)
end

100.times do
  Author.create(name: Faker::Book.author)
end

1000.times do
  author_id = rand(100) + 1
  Book.create(title: Faker::Book.title, 
    author_id: author_id, 
    published_on: Faker::Date.between(from: 200.years.ago, to: Date.today))
end

1000.times do
  user_id = rand(10) + 1
  book_id = rand(1000) + 1
  Upvote.create(user_id: user_id, book_id: book_id)
end

1000.times do
  user_id = rand(10) + 1
  author_id = rand(100) + 1
  Follow.create(user_id: user_id, author_id: author_id)
end
