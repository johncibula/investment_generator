class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :ticker
      t.references :value_chain, foreign_key: true
      t.references :industry, foreign_key: true

      t.timestamps
    end
  end
end
