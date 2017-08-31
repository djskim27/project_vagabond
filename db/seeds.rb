# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.destroy_all


atlanta = City.create(name: 'atlanta', country: "United States", img_url: "http://i.imgur.com/Q0K2rZq.png")
sanfrancisco = City.create(name: 'san francisco', country: "United States", img_url: "http://i.imgur.com/vmYvcZs.png")
london = City.create(name: 'london', country: "United Kingdom", img_url: "https://www.bestwestern.co.uk/images/default-source/Breaks/london-city-breaks-headerabb13b7b8ce469abb38eff010092c40e.jpg?sfvrsn=0")
losangeles = City.create(name: 'los angeles', country: "United States", img_url: "http://i.imgur.com/MEh5yqR.png")
sydney = City.create(name: 'sydney', country: "Australia", img_url: "http://www.remotetraveler.com/wp-content/gallery/sydney-harbour-bridge/Sydney-Harbour-Bridge-in-the-background.jpg")

atl_post_1 = Post.create(title: 'Met Some Dude Named Dirty Mike', content: 'He would not stop talking about his lizards and tropical frogs.')
atl_post_2 = Post.create(title: 'Got Some Lemon Pepper Wings', content: 'They were DANK. 10/10 would bang.')
atlanta.posts = [
    atl_post_1,
    atl_post_2
]

