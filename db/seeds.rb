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
MerchGroup.destroy_all


pics = ["https://images.unsplash.com/photo-1578768079052-aa76e52ff62e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3334&q=80", "https://images.unsplash.com/photo-1556821840-3a63f95609a7?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80", "https://images.unsplash.com/photo-1585431414144-7e4dd9343fb1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1300&q=80", "https://images.unsplash.com/photo-1542406775-ade58c52d2e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjU2MDh9&auto=format&fit=crop&w=934&q=80"]

black_hoodie = MerchGroup.create(
  title: "Black Hoodie")
black_hoodie.save!

pink_hoodie = MerchGroup.create(
  title: "Pink Hoodie")
pink_hoodie.save!

white_hoodie = MerchGroup.create(
  title: "White Hoodie")
white_hoodie.save!

hoodies = [black_hoodie, white_hoodie, pink_hoodie]

hoodies.each do |hoodie|
  small_merch = Merch.create(
    merch_group: hoodie,
    title: "small #{hoodie.title}",
    price: 10,
    description: "Limited edition #{hoodie.title} with logo on the front",
    size: "Small",
    quantity: 10)
    photo = URI.open(pics.sample)
    small_merch.photos.attach(io: photo, filename: "#{small_merch.title}.jpg", content_type: "image/jpg")
    small_merch.save!

    medium_merch = Merch.create(
    merch_group: hoodie,
    title: "medium #{hoodie.title}",
    price: 10,
    description: "Limited edition #{hoodie.title} with logo on the front",
    size: "medium",
    quantity: 10)
    photo = URI.open(pics.sample)
    medium_merch.photos.attach(io: photo, filename: "#{medium_merch.title}.jpg", content_type: "image/jpg")
    medium_merch.save!

    large_merch = Merch.create(
    merch_group: hoodie,
    title: "large #{hoodie.title}",
    price: 10,
    description: "Limited edition #{hoodie.title} with logo on the front",
    size: "large",
    quantity: 10)
    photo = URI.open(pics.sample)
    large_merch.photos.attach(io: photo, filename: "#{large_merch.title}.jpg", content_type: "image/jpg")
    large_merch.save!
end


puts "LETS GET IT"

# puts "admin created"

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
