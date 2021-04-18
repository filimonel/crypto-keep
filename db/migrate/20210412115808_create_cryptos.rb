class CreateCryptos < ActiveRecord::Migration[6.1]
  def change
    create_table :cryptos do |t|
      t.integer :cmc_rank
      t.string :name
      t.float :price
      t.integer :volume_24h
      t.integer :market_cap
      t.integer :circulating_supply
      t.integer :max_supply
      
      t.timestamps
    end
  end
end
