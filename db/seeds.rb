# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Song.destroy_all
Merch.destroy_all

counter = 1

10.times do
  counter += 1
  song = Song.create(
    title: "Song#{counter}",
    price: 2,
    length: 1.5,
    description: "lit")
  song.save!
end

10.times do
  counter += 1
  merch = Merch.create(
    title: "merch#{counter}",
    price: 2,
    description: "lit",
    size: "Large",
    quantity: 10)
  merch.save!
end
