class CreateCryptos < ActiveRecord::Migration[6.1]
  def change
    create_table :cryptos do |t|
      t.string :name
      t.float :price
      t.integer :volume
      t.integer :market_cap
      t.integer :circulating_supply

      t.timestamps
    end
  end
end
