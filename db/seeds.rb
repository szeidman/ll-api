# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
first_products = Product.create([{name: 'First', description: '1st', price: 1.25}, {name: 'Second', description: '2nd', price: 2.25}, {name: 'Third', description: '3rd', price: 3.25}])

User.create(first_name: 'Ted', last_name: 'Nelson', email: 'ted@ted.ted', password: "whoa", authentication_token: "8X8xB43QQ4Am53mCpUiu", products: first_products)
