# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
I18n.reload!

Book.delete_all
  100.times do
    free = Book.create(
      title: Faker::Book.title,
      author: Faker::Book.author,
      genre: Faker::Book.genre,
      publisher: Faker::Book.publisher,
      published_on: Faker::Date.in_date_period,
      price: Faker::Number.decimal(l_digits: 2),
      isbn: Faker::Number.number(digits: 10)
    )
    free.file.attach(
    io: File.open('C:/rby/Bookstore/app/assets/images/treasure_island.pdf'),
    filename: 'treasure_island.pdf'
  )
  end