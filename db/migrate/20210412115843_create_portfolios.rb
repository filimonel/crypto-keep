class CreatePortfolios < ActiveRecord::Migration[6.1]
  def change
    create_table :portfolios do |t|
      t.references :user, null: false, foreign_key: true
      t.references :crypto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
