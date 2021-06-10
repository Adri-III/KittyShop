# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#destroy_all
Item.destroy_all
JoinTableItemsOrder.destroy_all
JoinTableCartsItem.destroy_all
Order.destroy_all
Cart.destroy_all 
User.destroy_all

10.times do |i|
    Item.create(
      title:       Faker::Creature::Cat.name,
      description: Faker::Lorem.sentence(word_count: rand(10..20)),
      price:       Faker::Number.decimal(l_digits: 2),
      image_url:   Faker::LoremFlickr.image(size: "50x60", search_terms: ['cats'])
    )
    puts "#{i} item(s) created"
    puts "*"*(i+1)
end