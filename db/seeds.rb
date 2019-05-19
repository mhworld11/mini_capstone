# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Supplier.create!([
{name: "Big Bob", email: "bigbob@gmail.com", phone_number: "415444444"},
{name: "James Supplies", email: "james@gmail.com", phone_number: "4157777444"}
])

Product.create!([
{name: "Sony", price: 999.00, description: "32' LCD New Age Television", supplier_id: 1},
{name: "Samsung", price: 1999.00, description: "52' LCD World Famous Screen Quality", supplier_id: 2},
{name: "Vizeo", price: 899.00, description: "27' LCD With Smart Features", supplier_id: 1}
])

Image.create!([
{url: "https://images-na.ssl-images-amazon.com/images/I/81oa9MlP9XL._SL1500_.jpg", product_id: 1 },
{url: "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/1305/1305133_sa.jpg", product_id: 2},
{url: "http://images.highspeedbackbone.net/skuimages/large/Vizio-GV52L-Main.jpg", product_id: 3}
])
