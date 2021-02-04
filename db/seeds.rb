# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Strolldog.destroy_all
Strolldogsitter.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all


4.times do
  City.create(
    name: Faker::Address.city
  )
end
puts "4 city ok"

5.times do
  Dogsitter.create(
    first_name: Faker::Name.first_name,
    city_id: City.all.sample.id
  )
end
puts "5 dogsitter ok"

5.times do
  Dog.create(
    name: Faker::Creature::Animal.name,
    city_id: City.all.sample.id
    )
  end
puts "5 dog ok"

10.times do
  Stroll.create(
    date: Faker::Date.between(from: '2020-01-01', to: '2021-02-05')
    )
  end
puts "10 stroll ok"

5.times do
  Strolldog.create(
    dog_id: Dog.all.sample.id, 
    stroll_id: Stroll.all.sample.id
    )
  end
puts "5 strolldog ok"

5.times do
  Strolldogsitter.create(
    dogsitter_id: Dogsitter.all.sample.id, 
    stroll_id: Stroll.all.sample.id
    )
  end
puts "5 strolldogsitter ok"