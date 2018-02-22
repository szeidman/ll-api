# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
first_products = Product.create([{name: 'First', description: '1st', price: 1.25}, {name: 'Second', description: '2nd', price: 2.25}, {name: 'Third', description: '3rd', price: 3.25}])

second_products = Product.create([{name: 'Uno', description: 'Un', price: 1.35}, {name: 'Dos', description: 'Deux', price: 2.35}, {name: 'Tres', description: 'Trois', price: 3.35}])

User.create(first_name: 'Ted', last_name: 'Nelson', email: 'ted@ted.ted', password: "whoa", authentication_token: "8X8xB43QQ4Am53mCpUiu", products: first_products)

User.create(first_name: 'Bill', last_name: 'Billson', email: 'bill@bill.bill', password: "whoo", authentication_token: "8X8xB43QQ4Am53mCpPiu", products: second_products)

User.create(first_name: 'Chet', last_name: 'Chetson', email: 'chet@chet.chet', password: "who", authentication_token: "8X8xB43QQ4Am53mCpIiu")

User.create(first_name: 'Andy', last_name: 'Anderson', email: 'andy@andy.andy', password: "woa", authentication_token: "8X8xB43QQ4Am53mCpUuu")

User.create(first_name: 'Pat', last_name: 'Nelson', email: 'pat@pat.pat', password: "wow", authentication_token: "8X8xB43QQ4Am53mCpUii")
