class CreateCryptos < ActiveRecord::Migration[6.1]
  def change
    create_table :cryptos do |t|
      t.integer :cmc_rank
      t.string :name
      t.integer :price
      t.bigint :volume_24h
      t.bigint :market_cap
      t.bigint :circulating_supply
      t.bigint :max_supply
      
      t.timestamps
    end
  end
end
