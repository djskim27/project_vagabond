# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.destroy_all


atlanta = City.create(name: 'Atlanta', country: "United States", img_url: "http://www.marketoneinstitutional.com/wp-content/uploads/2015/04/M1-background.jpg")
sanfrancisco = City.create(name: 'San Francisco', country: "United States", img_url: "http://www.twitrcovers.com/wp-content/uploads/2013/12/Oakland-Bay-San-Francisco-l.jpg")
london = City.create(name: 'London', country: "United Kingdom", img_url: "http://www.centrallondonrents.com/wp-content/uploads/2015/02/london_background.jpg")
losangeles = City.create(name: 'Los Angeles', country: "United States", img_url: "http://pacpet.com/wp-content/uploads/2016/10/Los-Angeles-background.jpg")
sydney = City.create(name: 'Sydney', country: "Australia", img_url: "http://www.remotetraveler.com/wp-content/gallery/sydney-harbour-bridge/Sydney-Harbour-Bridge-in-the-background.jpg")

atl_post_1 = Post.create(title: 'Met Some Dude Named Dirty Mike', content: 'He would not stop talking about his lizards and tropical frogs.')
atl_post_2 = Post.create(title: 'Got Some Lemon Pepper Wings', content: 'They were DANK. 10/10 would bang.')
atlanta.posts = [
    atl_post_1,
    atl_post_2
]

