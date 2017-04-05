class CreateRespondentQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :respondent_quotes, :id => false do |t|
      t.references :ism_report, foreign_key: true
      t.references :industry, foreign_key: true
      t.string :quote

      t.timestamps
    end
  end
end
