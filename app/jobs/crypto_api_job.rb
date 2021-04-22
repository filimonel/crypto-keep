require "open-uri"
require "httparty"

# Update crypto data

class CryptoApiJob < ApplicationJob
  queue_as :default

  def perform()

    Crypto.destroy_all
    # Reset Crypto table id so that it starts from 1 again, crytpo showpage won't error because crypto id won't be reassigned to new id number.
    Crypto.reset_pk_sequence

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

    # csv_options = { headers: :first_row, header_converters: :symbol }

    CSV.foreach(filepath, headers: :first_row, header_converters: :symbol) do |row|
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

  end
end
