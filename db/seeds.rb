# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Product.create(name: "seed-generated product", description: "I also created this product without using the HTML form!")
Order.create(user_id: 1, product_id: 4, total: 10.0)
Order.create(user_id: 1, product_id: 3, total: 5.0)
