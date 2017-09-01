# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.destroy_all
User.destroy_all



atlanta = City.create(name: 'atlanta', country: "United States", img_url: "http://i.imgur.com/7MjzoVY.jpg?1")
sanfrancisco = City.create(name: 'san francisco', country: "United States", img_url: "http://i.imgur.com/6klIdGQ.jpg?1")
london = City.create(name: 'london', country: "United Kingdom", img_url: "http://i.imgur.com/rvMchBY.jpg")
losangeles = City.create(name: 'los angeles', country: "United States", img_url: "http://i.imgur.com/9A83klc.jpg?1")
sydney = City.create(name: 'sydney', country: "Australia", img_url: "http://i.imgur.com/KTSo2w5.jpg?1")



