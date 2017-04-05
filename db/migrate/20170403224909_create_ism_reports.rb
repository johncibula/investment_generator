class CreateIsmReports < ActiveRecord::Migration[5.0]
  def change
    create_table :ism_reports do |t|
      t.date :published_at

      t.timestamps
    end
  end
end
