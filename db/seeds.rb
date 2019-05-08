# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.create(name: "Sony", price: 999.00, image_url: "", description: "32' LCD" )
product = Product.create(name: "Samsung", price: 1999.00, image_url: "", description: "52' LCD" )
product = Product.create(name: "Viveo", price: 899.00, image_url: "", description: "27' LCD" )
