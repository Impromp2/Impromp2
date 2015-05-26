# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all

Category.create({category: "big data"})
Category.create({category: "fitness"})
Category.create({category: "user experience"})
Category.create({category: "startups"})
Category.create({category: "animals"})
Category.create({category: "artificial intelligence"})
Category.create({category: "innovation"})
Category.create({category: "photography"})
Category.create({category: "food"})
Category.create({category: "ruby"})
Category.create({category: "programming"})
Category.create({category: "javascript"})