class CreateValueChains < ActiveRecord::Migration[5.0]
  def change
    create_table :value_chains do |t|
      t.string :name
      t.references :industry, foreign_key: true

      t.timestamps
    end
  end
end
