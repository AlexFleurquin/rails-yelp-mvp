# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: Faker::Restaurant.name, address: Faker::Address.street_address, phone_number: Faker::Number.number(digits: 10), category: "chinese" }
pizza_east = { name: Faker::Restaurant.name, address: Faker::Address.street_address, phone_number: Faker::Number.number(digits: 10), category: "italian" }
popolare = { name: Faker::Restaurant.name, address: Faker::Address.street_address, phone_number: Faker::Number.number(digits: 10), category: "chinese" }
mcdo = { name: Faker::Restaurant.name, address: Faker::Address.street_address, phone_number: Faker::Number.number(digits: 10), category: "chinese" }
vietviet = { name: Faker::Restaurant.name, address: Faker::Address.street_address, phone_number: Faker::Number.number(digits: 10), category: "chinese" }

[dishoom, pizza_east, popolare, mcdo, vietviet].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
