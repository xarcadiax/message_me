# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Richie", password: "password")
User.create(username: "Kelly", password: "password")
User.create(username: "Lili", password: "password")
User.create(username: "Salem", password: "password")
User.create(username: "Cool Ted", password: "password")
User.create(username: "Gandalf", password: "password")

Message.create(body: "Hi, im another message", user: User.find(2))