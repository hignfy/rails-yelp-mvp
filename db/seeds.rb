# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

bristol = Restaurant.new(name: "Epicure", category: "french", address: "75008 Paris")  # Should return true
bristol.save                # Insert into DB and set id
yummy = Review.new(content: "yummy yummy", rating: 4)
yummy.restaurant = bristol  # Set foreign key restaurant_id
yummy.save
bristol.reviews             # Should contain the yummy review
yummy.restaurant

tesla = Restaurant.new(name: "Tesla", category: "italian")
tesla.valid?              # Should return false
tesla.address = "1160 Vienna"
tesla.valid?              # Should return true
tesla.save                # Insert into DB and set id
bread = Review.new(content: "great bread", rating: 5)
bread.restaurant = tesla  # Set foreign key restaurant_id
bread.save
tesla.reviews             # Should contain the bread review
bread.restaurant

belfast = Restaurant.new(name: "Six by Nico", category: "french")
belfast.valid?              # Should return false
belfast.address = "BT1 Belfast"
belfast.valid?              # Should return true
belfast.save                # Insert into DB and set id
mix = Review.new(content: "good mix", rating: 4)
mix.restaurant = belfast  # Set foreign key restaurant_id
mix.save
belfast.reviews             # Should contain the mix review
mix.restaurant

palermo = Restaurant.new(name: "Pop! Sushi", category: "japanese")
palermo.valid?              # Should return false
palermo.address = "Palermo BA"
palermo.valid?              # Should return true
palermo.save                # Insert into DB and set id
okay = Review.new(content: "only okay", rating: 3)
okay.restaurant = palermo  # Set foreign key restaurant_id
okay.save
palermo.reviews             # Should contain the okay review
okay.restaurant

london = Restaurant.new(name: "ChinaTown", category: "chinese", address: "Covent Garden")           # Should return true
london.save # Insert into DB and set id
feet = Review.new(content: "chicken feet", rating: 3)
feet.restaurant = london # Set foreign key restaurant_id
feet.save
london.reviews             # Should contain the feet review
feet.restaurant
