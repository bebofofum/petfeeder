# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user2 = User.find_or_create_by(name: "Kelp", email: "this@that.com", password: "password")

pet1 = Pet.find_or_create_by(name: "Fin", species: "Bearded Dragon")
pet2 = Pet.find_or_create_by(name: "Zuhl", species: "Bearded Dragon")
pet3 = Pet.find_or_create_by(name: "Zilla", species: "Axolotl")
pet4 = Pet.find_or_create_by(name: "Monsta", species: "Gecko")

feed1 = pet1.feedings.find_or_create_by(
  user: user1,
  category: "Evening",
  completed: "false"
)

feed2 = pet3.feedings.find_or_create_by(
  user: user1,
  category: "Morning",
  description: "Gave it 3 worms, cut in half",
  completed: "true"
)



