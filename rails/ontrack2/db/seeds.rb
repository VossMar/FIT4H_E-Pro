# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Project.create( title: "E-Pro", description: "Mit Bogner", start_date: Date.today )
Project.create( title: "Ko-A", description: "Mit Bogner", start_date: Date.today )
Project.create( title: "Pl-I", description: "Mit Bender", start_date: Date.today )