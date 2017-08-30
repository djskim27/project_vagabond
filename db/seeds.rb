# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.destroy_all
Post.destroy_all

atlanta = City.create(name: 'Atlanta', country: "United States", img_url: "http://www.marketoneinstitutional.com/wp-content/uploads/2015/04/M1-background.jpg")
sanfrancisco = City.create(name: 'San Francisco', country: "United States", img_url: "http://www.twitrcovers.com/wp-content/uploads/2013/12/Oakland-Bay-San-Francisco-l.jpg")
london = City.create(name: 'London', country: "United Kingdom", img_url: "http://www.centrallondonrents.com/wp-content/uploads/2015/02/london_background.jpg")