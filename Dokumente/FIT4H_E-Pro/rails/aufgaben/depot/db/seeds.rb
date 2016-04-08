# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Product.create(description: 'Ruby on Rails ist seit Jahren als modernes, agiles Webframework bekannt', image_url: 'rails_exp.jpg', title: 'Rails. Expertenwissen', price: '12.99')
Product.create(description: 'Das erste und umfassende Handbuch zu Ruby on Rails3! Einiges hat sich getan seit der letzten Version', image_url: 'rails_gal.jpg', title: 'Rails. Galileo', price: '5.99')
Product.create(description: 'Mit diesem Buch beweist Stefan Wintermeyer, dass Ruby on Rails 3.2 auf für Einsteiger geeignet ist.', image_url: 'rails_op.jpg', title: 'Rails. Openbook', price: '9.99')
