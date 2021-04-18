# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# # Users
# User.create!(email: "fili@user.com", password: "password")
# User.create!(email: "sammy@user.com", password: "password")

# # Cryptos
# Crypto.create!(name: "Bitcoin", price: 1000)
# Crypto.create!(name: "Ethereum", price: 500)
# Crypto.create!(name: "Tron", price: 200)
# Crypto.create!(name: "Litecoin", price: 300)

# # Fili's default coins in portfolio
# Portfolio.create!(user_id: 1, crypto_id: 1)
# Portfolio.create!(user_id: 1, crypto_id: 2)
# Portfolio.create!(user_id: 1, crypto_id: 3)

# # Sammy's default coins in portfolio
# Portfolio.create!(user_id: 2, crypto_id: 1)
# Portfolio.create!(user_id: 2, crypto_id: 3)
# Portfolio.create!(user_id: 2, crypto_id: 4)

# API Crypto Scraper

require "open-uri"
require "httparty"

response = HTTParty.get("https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=#{ENV['CMC_API_KEY']}")
filepath = File.join(__dir__, 'crypto.csv')

CSV.open(filepath, "wb") do |csv|

    csv << %w[name price volume market_cap circulating_supply]

    response["data"].each do |crypto|
      csv << [crypto["name"], crypto["quote"]["USD"]["price"], crypto["volume"], crypto["market_cap"], crypto["circulating_supply"]]
    end

  end
