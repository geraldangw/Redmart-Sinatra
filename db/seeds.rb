
require './models/users'
require './models/products'
require './models/purchases'
require 'Faker'

# seeds.rb is a way of automating the population of the database with testing data.

(0..20).each do |i|
    Users.create(name: Faker::Superhero.name, email: Faker::Internet.email, address: Faker::Address.zip_code, password: Faker::Internet.password, cc_number: Faker::Address.zip_code , date_joined: Faker::Date.between(50.days.ago, Date.today) )
end

(0..30).each do |x|
    Products.create(name: Faker::Commerce.product_name, brand_id: Faker::Address.zip_code, category_id: Faker::Address.zip_code, price: Faker::Address.zip_code )
end

(0..25).each do |v|
    Purchases.create(user_id: Faker::Address.zip_code, product_id: Faker::Address.zip_code, purchase_date: Faker::Date.between(50.days.ago, Date.today), status: Faker::Boolean.boolean )
end
