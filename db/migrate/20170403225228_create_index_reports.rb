class CreateIndexReports < ActiveRecord::Migration[5.0]
  def change
    create_table :index_reports, {:primary_key => :false} do |t|
      t.references :ism_report, foreign_key: true
      t.references :index, foreign_key: true
      t.decimal :index_reading

      t.timestamps
    end
  end
end
