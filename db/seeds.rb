# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# actor = Actor.new({ first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock" })
# actor.save

# actor = Actor.create({ first_name: "Colin", last_name: "Farrel", known_for: "In Bruges" })
# actor = Actor.create({ first_name: "Kermit", last_name: "the Frog", known_for: "Muppet Babies" })
# actor = Actor.create({ first_name: "Toni", last_name: "Collete", known_for: "Muriel's Wedding", movie_id: 4, age: 48 })
actor = Actor.create({ first_name: "Franka", last_name: "Potente", known_for: "Run Lola Run", movie_id: 2, age: 46 })
actor = Actor.create({ first_name: "Keira", last_name: "Knightly", known_for: "Atonement", movie_id: 3, age: 35 })
actor = Actor.create({ first_name: "Kate", last_name: "Winslet", known_for: "Eternal Sunshine of the Spotless Mind", movie_id: 4, age: 45 })

# movie = Movie.create({ title: "Priscilla, Queen of the Desert", year: 1994, plot: "Three drag queens from Sydney drive on an epic road trip across the Australian outback to get out of the city and perform a residency in Alice Springs... along the way hilarity ensues." })
# movie = Movie.create({ title: "Run Lola Run", year: 1998, plot: "Fiery, red-haired Lola has only 20 minutes to rescue her boyfriend after a botched deal. The entire city of Berlin plays host to her desperate race against the clock." })
# movie = Movie.create({ title: "Atonement", year: 2007, plot: "Two sisters find themselves embittered after a bit of hearsay unravels a tightly knit family in WWII era England." })
# movie = Movie.create({ title: "Eternal Sunshine of the Spotless Mind", year: 2004, plot: "When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories." })
# movie = Movie.create({ title: "Muriels Wedding", year: 1994, plot: "Socially inept Muriel navigates adulthood, a strong appreciation for ABBA, and an all-consuming desire to get married." })
movie = Movie.create({ title: "In Bruges", year: 2008, plot: "Two assassins find themselves in quite a pickle in the magical city of Bruges" })
