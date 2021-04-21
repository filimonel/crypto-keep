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

# API Crypto Scraper

require "open-uri"
require "httparty"

response = HTTParty.get("https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=#{ENV['CMC_API_KEY']}")
filepath = File.join(__dir__, 'crypto.csv')

CSV.open(filepath, "wb") do |csv|
    # Adding header names first into csv vile
    csv << %w[cmc_rank name price volume_24h market_cap circulating_supply max_supply]

    # Adding data from the json file to csv file
    response["data"].each do |crypto|
        csv << [crypto["cmc_rank"], crypto["name"], crypto["quote"]["USD"]["price"], crypto["quote"]["USD"]["volume_24h"], crypto["quote"]["USD"]["market_cap"], crypto["circulating_supply"], crypto["max_supply"]]
    end
end

csv_options = { headers: :first_row, header_converters: :symbol }

CSV.foreach(filepath, csv_options) do |row|
    Crypto.create!(
        cmc_rank: row[:cmc_rank].to_i,
        name: row[:name],
        price: row[:price].to_i,
        volume_24h: row[:volume_24h],
        market_cap: row[:market_cap].to_i,
        circulating_supply: row[:circulating_supply].to_i,
        max_supply: row[:max_supply].to_i
    )
end

# # Fili's default coins in portfolio
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