# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
MerchLineItem.destroy_all
Song.destroy_all
Merch.destroy_all


pics = ["https://images.unsplash.com/photo-1578768079052-aa76e52ff62e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3334&q=80", "https://images.unsplash.com/photo-1556821840-3a63f95609a7?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80", "https://images.unsplash.com/photo-1585431414144-7e4dd9343fb1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1300&q=80", "https://images.unsplash.com/photo-1542406775-ade58c52d2e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjU2MDh9&auto=format&fit=crop&w=934&q=80"]

counter = 0

10.times do
  counter += 1
  merch = Merch.create(
    title: "merch#{counter}",
    price: 2,
    description: "lit",
    size: "Large",
    quantity: 10)
    photo = URI.open(pics.sample)
    merch.photos.attach(io: photo, filename: "#{merch.title}.jpg", content_type: "image/jpg")
  merch.save!
end

puts "admin created"

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
