# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.destroy_all

Movie.create title: "Apollo 13", year: 1995
Movie.create title: "Toy Story", year: 1995
Movie.create title: "Star Wars", year: 1977
Movie.create title: "Raiders of the Lost Ark", year: 1981
