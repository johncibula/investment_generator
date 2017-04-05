class CreateRankings < ActiveRecord::Migration[5.0]
  def change
    create_table :rankings, {:primary_key => :false} do |t|
      t.references :industry, foreign_key: true
      t.references :ism_report, foreign_key: true
      t.references :index, foreign_key: true
      t.integer :place
      t.boolean :growth

      t.timestamps
    end
  end
end
