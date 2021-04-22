# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# # Users
User.create!(email: "fili@user.com", password: "password")
User.create!(email: "sammy@user.com", password: "password")
User.create!(email: "filimone.leaaetoa@gmail.com", password: "password", admin: true)

# Calling API Crypto Scraper.
CryptoApiJob.perform_now

# Portfolio dummy data
# Fili's default coins in portfolio
Portfolio.create!(user_id: 1, crypto_id: 1)
Portfolio.create!(user_id: 1, crypto_id: 2)
Portfolio.create!(user_id: 1, crypto_id: 3)
Portfolio.create!(user_id: 1, crypto_id: 10)
Portfolio.create!(user_id: 1, crypto_id: 22)
Portfolio.create!(user_id: 1, crypto_id: 31)
Portfolio.create!(user_id: 1, crypto_id: 12)
Portfolio.create!(user_id: 1, crypto_id: 26)
Portfolio.create!(user_id: 1, crypto_id: 39)

# # Sammy's default coins in portfolio
Portfolio.create!(user_id: 2, crypto_id: 1)
Portfolio.create!(user_id: 2, crypto_id: 3)
Portfolio.create!(user_id: 2, crypto_id: 4)
Portfolio.create!(user_id: 2, crypto_id: 16)
Portfolio.create!(user_id: 2, crypto_id: 33)
Portfolio.create!(user_id: 2, crypto_id: 46)
Portfolio.create!(user_id: 2, crypto_id: 10)
Portfolio.create!(user_id: 2, crypto_id: 34)
Portfolio.create!(user_id: 2, crypto_id: 47)

Portfolio.create!(user_id: 3, crypto_id: 1)
Portfolio.create!(user_id: 3, crypto_id: 3)
Portfolio.create!(user_id: 3, crypto_id: 4)
Portfolio.create!(user_id: 3, crypto_id: 16)
Portfolio.create!(user_id: 3, crypto_id: 33)
Portfolio.create!(user_id: 3, crypto_id: 46)
Portfolio.create!(user_id: 3, crypto_id: 10)
Portfolio.create!(user_id: 3, crypto_id: 34)
Portfolio.create!(user_id: 3, crypto_id: 47)