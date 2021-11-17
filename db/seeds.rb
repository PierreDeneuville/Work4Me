# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  name = Faker::GreekPhilosophers.name
  localisation = Faker::Space.planet
  email = Faker::Internet.email
  password = "azerty"
  user = User.new(email: email, name: name, localisation: localisation, password: password)
  metier = Faker::Job.title
  prix = rand(100)
  offre = Offre.new(métier: metier, prix: prix)
  offre.user = User.all.sample
  user.save!
  offre.save!
end
