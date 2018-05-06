# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_1 = User.create(name: 'Francisco', lastName: 'Borie', email: 'fjborie@miuandes.cl', password: 'password123', isAdmin: true)
user_2 = User.create(name: 'Diego', lastName: 'Beckdorf', email: 'dbeckdorf@miuandes.cl', password: 'password123', isAdmin: true)
user_3 = User.create(name: 'Maximiliano', lastName: 'Garcia', email: 'mrgarcia1@miuandes.cl', password: 'password123', isAdmin: true)
category_1 = Category.create(name: 'Games')
category_2 = Category.create(name: 'Clothes')
Product.create(category_id: category_2, user_id: user_1, title: "Product 1", description: "General", goal: '12345',
               finishDate: DateTime.new(2019, 05, 15), mainImage: "bleh.jpg", mainVideo: "bleh.mp4", rating: 0)
Product.create(category_id: category_1, user_id: user_2, title: "Product 2", description: "General", goal: '12345',
               finishDate: DateTime.new(2019, 05, 15), mainImage: "bleh.jpg", mainVideo: "bleh.mp4", rating: 0)
Product.create(category_id: category_2, user_id: user_3, title: "Product 3", description: "General", goal: '12345',
               finishDate: DateTime.new(2019, 05, 15), mainImage: "bleh.jpg", mainVideo: "bleh.mp4", rating: 0)